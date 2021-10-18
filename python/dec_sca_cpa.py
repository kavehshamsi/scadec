import os, sys
from sklearn.datasets.tests.test_openml import currdir

currfile_path = os.path.realpath(__file__)
currfile_dir = os.path.dirname(currfile_path)

pytrace_path = os.path.join(currfile_dir, 'pytrace_dir')
sys.path.append(pytrace_path)
print(pytrace_path)

import circuit
from dec_sca import *

import pytrace

print(pytrace)
pytrace.py_trace_t(0, 0)

from trace_db import Trace_DB

import matplotlib.pyplot as plt
import numpy as np
import math
import scipy
import random

import multiprocessing as mpc

import pickle, re
import time, datetime, resource, argparse, os, logging, psutil, time

def program_fgpa(cir_file, num_copies, ise_dir):
    assert os.path.exists(ise_dir)
    assert os.path.exists(cir_file)
    orig_dir = os.getcwd()
    if input('Do you want to program the FPGA with {}? (yes/no)'.format(cir_file)) == 'yes':
        os.chdir(ise_dir)
        os.system('./program_with_cir.sh {} {}'.format(os.path.join(orig_dir, cir_file), num_copies))
        os.chdir(orig_dir)
    return


def get_random_query(cir, min_flip_weight, max_flip_weight, corrkey = None):
    inputs = [0 for i in range(cir.num_allins())]
    flips = [0 for i in range(cir.num_allins())]

    for i in range(len(inputs)):
        inputs[i] = bool(random.getrandbits(1))

    nonkeyinds = []
    if corrkey is not None:
        for i, kid in enumerate(cir.allins()):
            if not cir.is_key(kid):
                nonkeyinds.append(i)
    else:
        nonkeyinds = range(cir.num_allins())

    flip_weight = random.randint(min_flip_weight, max_flip_weight)
    for i in random.sample(nonkeyinds, flip_weight):
        flips[i] = bool(1)

    if corrkey is not None:
        fix_key_in_query(cir, inputs, flips, corrkey)

    return inputs, flips


def fix_key_in_query(cir, inputs, flips, corrkey):
    j = 0
    for i, xid in enumerate(cir.allins()):
        if cir.is_key(xid):
            inputs[i] = corrkey[j]
            flips[i] = bool(0)
            j += 1


def collect_random_traces(cir, num_traces, corrkey = None):

    tdb = Trace_DB()

    for i in range(num_traces):
        inputs, flips = get_random_query(cir, 1, 3, corrkey)
        tdb.inputvecs.append(inputs)
        tdb.flipvecs.append(flips)

    collect_chosen_traces(cir, tdb)

    return tdb


def collect_chosen_traces(cir, tdb):

    p = pytrace.py_trace_t(cir.num_allins(), cir.num_outs())
    p.arm()
    tdb.traces.clear()

    for i in range(len(tdb.inputvecs)):
        tdb.traces.append( p.get_trace_per_input(tdb.inputvecs[i], tdb.flipvecs[i]) )
        print('collected trace: {}'.format(i))


class pwrMdlHamm0:
    def __init__(self, cir):
        self.cir = cir
        self.allins = cir.allins()
        self.smap1 = dict()
        self.smap2 = dict()

    def power(self, inputs, flips):

        for i, xid in enumerate(self.allins):
            self.smap1[xid] = inputs[i]
            self.smap2[xid] = not inputs[i] if flips[i] else inputs[i]

        self.cir.simulate(self.smap1)
        self.cir.simulate(self.smap2)

        pwr = 0.0
        for xid in self.cir.wires():
            if self.smap1[xid] != self.smap2[xid]:
                pwr += 1

        return pwr


class KeyPartition:
    def __init__(self, cir, corrkey):
        self.max_keypart_size = 8
        self.subkeyids = []
        self.subkeyinds = []
        self.subcorrkeys = []

        for kind, kid in enumerate(cir.keys()):
            if (kind % self.max_keypart_size == 0):
                self.subkeyids.append([])
                self.subkeyinds.append([])
                self.subcorrkeys.append([])

            self.subkeyids[-1].append(kid)
            self.subkeyinds[-1].append(kind)
            self.subcorrkeys[-1].append(corrkey[kind])

    def num_parts(self):
        return len(self.subkeyids)


def correlate_all(tdb, pwrmdl):
    pwrvals = np.zeros(tdb.ntraces())
    for i in range(tdb.ntraces()):
        pwrvals[i] = pwrmdl.power(tdb.inputvecs[i], tdb.flipvecs[i])
        print('done power model for trace {}'.format(i))

    T = tdb.get_trace_matrix()
    corrs = []
    for i in range(tdb.npoints()):
        corrs.append(np.corrcoef(pwrvals, T[:, i])[0, 1])

    plt.plot(range(len(corrs)), corrs)
    plt.show()


def plot_list_highlight(ys, highlight_index, ax):
    t = range(len(ys[0]))
    for i, y in enumerate(ys):
        if i != highlight_index:
            ax.plot(t, y, 'lightgray', linewidth=0.5)

    ax.plot(t, ys[highlight_index], 'red', linewidth=0.5)


def print_bin(vec):
    for b in vec:
        print(int(b), end='')
    print()


def subplot_matrix(num_plots):
    nrows = int(np.sqrt(num_plots))
    ncols = nrows if (nrows * nrows == num_plots) else nrows + 1
    return nrows, ncols, plt.subplots(nrows, ncols)


class CirDecryptScaCPA(CirDecryptSca):
    def __init__(self, enc_cir, corrkey):
        super().__init__(enc_cir, corrkey)

    def run_attack_cpa(self, num_traces):

        tdb = Trace_DB()

        trace_file = 'data/{}_cpa_{}.txt'.format(self.enc_cir.circuit_name, num_traces)
        if os.path.exists(trace_file):
            print('reading trace database {}'.format(trace_file))
            tdb.read_from_file(trace_file)
        else:
            tdb = collect_random_traces(self.enc_cir, num_traces, self.corrkey)
            tdb.write_to_file(trace_file)

        #tdb.plot_all_traces()

        pwrmdl = pwrMdlHamm0(self.enc_cir)
        #correlate_all(tdb, pwrmdl)

        self.kpart = KeyPartition(self.enc_cir, self.corrkey)

        self.final_key = [bool(random.getrandbits(1)) for i in range(self.enc_cir.num_keys())]
        print(self.final_key)
        self.num_cpa_iters = 1
        for i in range(self.num_cpa_iters):
            cpa_round(self.enc_cir, self.kpart, tdb, pwrmdl, self.final_key)

    @staticmethod
    def cpa_analyze_keypart(cir, kpart, tdb, pwrmdl, final_key, kpn):
        T = tdb.get_trace_matrix()
        print('working on key partition {}/{}...'.format(kpn + 1, kpart.num_parts()))
        skids = kpart.subkeyids[kpn]
        skinds = kpart.subkeyinds[kpn]
        sklen = len(skids)
        num_hyps = int(pow(2, sklen))
        corrs = [[0 for i in range(tdb.npoints())] for i in range(num_hyps)]
        hyppwrs = [0.0 for i in range(tdb.ntraces())]

        for hkn in range(num_hyps):
            for i in range(sklen):
                final_key[skinds[i]] = hkn >> i & 1
            #print_bin(final_key)
            for i in range(tdb.ntraces()):
                inputs = list(tdb.inputvecs[i])
                flips = list(tdb.flipvecs[i])
                fix_key_in_query(cir, inputs, flips, final_key)
                #print_bin(inputs)
                hyppwrs[i] = (pwrmdl.power(inputs, flips))

            for p in range(tdb.npoints()):
                corrs[hkn][p] = np.corrcoef(T[:, p], hyppwrs)[0, 1]

            print(' done with key hyp {}/{}...'.format(hkn, num_hyps))

        print('done with key partition {}/{}...'.format(kpn + 1, kpart.num_parts()))

        return corrs


def cpa_round(cir, kpart, tdb, pwrmdl, final_key):

    pool = mpc.Pool(12)

    pltnrows, pltncols, subplt = subplot_matrix(kpart.num_parts())
    fig, axes = subplt
    if kpart.num_parts() == 1:
        axes = [axes]
    procs = []
    for kpn in range(kpart.num_parts()):
        final_key_copy = list(final_key)
        res = pool.apply_async(func=CirDecryptScaCPA.cpa_analyze_keypart, args=(cir, kpart, tdb, pwrmdl, final_key_copy, kpn))
        procs.append(res)

    pool.close()
    pool.join()

    for kpn in range(kpart.num_parts()):
        corrs = procs[kpn].get()
        #print(corrs)
        print(kpart.subcorrkeys[kpn])
        corrkeyval = sum([b << i for i, b in enumerate(kpart.subcorrkeys[kpn])])
        print(corrkeyval)
        plot_list_highlight(corrs, corrkeyval, axes[kpn])

    plt.show()


if __name__ == '__main__':
    if len(sys.argv) != 4:
        print('usage: dec_sca_cpa.py <enc_cir> <corrkey> <num_traces>')
        exit(1)

    enc_cir = Circuit(sys.argv[1])
    corrkey = parse_key_arg(sys.argv[2])
    if (len(corrkey) != enc_cir.num_keys()):
        print('corrkey size mismatch {} != {}'.format(len(corrkey), enc_cir.num_keys()))
        exit(1)
    num_traces = int(sys.argv[3])

    ise_dir = os.path.join(currfile_dir, '../platform/ise/xl9_cw/')
    print('using ise_dir: ', ise_dir)
    program_fgpa(sys.argv[1], 1, ise_dir)

    dcpa = CirDecryptScaCPA(enc_cir, corrkey)
    dcpa.run_attack_cpa(num_traces)
