#!/usr/bin/ptyhon

import os
import sys
import re
import random
import hspicefile

import dill

import matplotlib.pyplot as plt
from collections import defaultdict
import multiprocessing as mp
import numpy as np

from mypaths import *
sys.path.insert(1, '/home/UFAD/kshamsi/Development/eclipse/neos/pyneos/')
import circuit
import vparse
import vlogtospice_flat as vlgsp

nanoseconds_per_patt = 0.6

def write_vec_file(cir, inputs_vec, flips_vec, vec_file, nanoseconds_per_patt):
    
    all_ins = list(cir.ins_and_keys())
    num_ins = len(all_ins)
    num_patts = len(inputs_vec)
    
    # radix line
    vecheader = 'radix '
    vecheader += '1' * num_ins
    vecheader += '\n'

    # io line
    vecheader += 'io '
    vecheader += 'i' * num_ins
    vecheader += '\n'

    # vname line
    vecheader += 'vname '
    for xid in all_ins:
        vecheader += ' {0}'.format(cir.name(xid).lower())
    #period = 0.1 # in nanoseconds
    vecheader += '\nTUNIT 1ns\n'
    #vecheader += 'PERIOD {0}\n'.format(period)
    vecheader += 'SLOPE 0.02\n'
    vecheader += 'VIH 1.05\n'
    vecheader += 'VOH 1.05\n'
    vecstr = ''
    
    
    time_stamps = np.arange(0.0, num_patts * 2 * nanoseconds_per_patt, nanoseconds_per_patt)
    
    si = 0
    while si < len(inputs_vec):
        vecstr += '{0:f} '.format(time_stamps[2*si])
        for i in range(num_ins):
            vecstr += '{0:d}'.format(inputs_vec[si][i])
        vecstr += '\n'
        
        vecstr += '{0:f} '.format(time_stamps[2*si + 1])
        for i in range(num_ins):
            vecstr += '{0:d}'.format(inputs_vec[si][i] ^ flips_vec[si][i])
        vecstr += '\n'
        si += 1
    
    vec_str = vecheader + vecstr
    
    with open(vec_file, 'w') as fn:
        fn.write(vec_str)
    
    return

def write_spice_sim_file(cir, inputs_vec, flips_vec, run_name, spice_file):

    # write vec file    
    # Generating vec file
    num_patts = len(inputs_vec)
    sim_time = num_patts * 2 * nanoseconds_per_patt
    
    vec_file = './vec/{0}.vec'.format(run_name)
    write_vec_file(cir, inputs_vec, flips_vec, vec_file, nanoseconds_per_patt)

    subckts_file = '/home/UFAD/kshamsi/stdclibs/NanGate45nm/Back_End/spice/NangateOpenCellLibrary.spi'
    #subckts_file = '/home/UFAD/kshamsi/stdclibs/NanGate15nm/back_end/spice/cell/Nangate15nm_cells.sp'
    spice_str = vlgsp.vlog2spice(subckts_file, vlog_file)
   
    outstr = spice_str
    #    outstr += '.param vth0_pmoded=UNIF(-0.3021, 1)\n' +\
    #              '.param vth0_nmoded=UNIF(0.322, 1)\n'
    #    outstr += '.param vth0_pmoded=UNIF(-0.3021, 0.1)\n' +\
    #              '.param vth0_nmoded=UNIF(0.322, 0.1)\n'
        #outstr += '.param vth0_pmoded=-0.3021 vth0_pmoded=-0.3021\n'
    outstr += '.include \"/home/UFAD/kshamsi/projects/scadobf/nanosim/models/ptm45.inc\"\n'
    #    outstr += '''
    #    .include "/home/UFAD/kshamsi/stdclibs/FreePDK45/ncsu_basekit/models/hspice/tran_models/models_nom/NMOS_THKOX.inc"
    #    .include "/home/UFAD/kshamsi/stdclibs/FreePDK45/ncsu_basekit/models/hspice/tran_models/models_nom/NMOS_VTG.inc"
    #    .include "/home/UFAD/kshamsi/stdclibs/FreePDK45/ncsu_basekit/models/hspice/tran_models/models_nom/NMOS_VTH.inc"
    #    .include "/home/UFAD/kshamsi/stdclibs/FreePDK45/ncsu_basekit/models/hspice/tran_models/models_nom/NMOS_VTL.inc"
    #    .include "/home/UFAD/kshamsi/stdclibs/FreePDK45/ncsu_basekit/models/hspice/tran_models/models_nom/PMOS_THKOX.inc"
    #    .include "/home/UFAD/kshamsi/stdclibs/FreePDK45/ncsu_basekit/models/hspice/tran_models/models_nom/PMOS_VTG.inc"
    #    .include "/home/UFAD/kshamsi/stdclibs/FreePDK45/ncsu_basekit/models/hspice/tran_models/models_nom/PMOS_VTH.inc"
    #    .include "/home/UFAD/kshamsi/stdclibs/FreePDK45/ncsu_basekit/models/hspice/tran_models/models_nom/PMOS_VTL.inc"
    #    '''
    #outstr += ".lib \"/home/UFAD/kshamsi/stdclibs/FreePDK15/hspice/models/fet.inc\" CMG\n"
    outstr += '.GLOBAL VDD VSS \n'
    outstr += '.VEC {0}\n'.format(vec_file)
    outstr += 'VDD VDD 0 1.05\n'
    outstr += 'VSS VSS 0 0\n'
    outstr += '.include \"{0}\" \n'.format(subckts_file)
    outstr += '.OPTION post=1\n'.format(sim_time)    
    outstr += '.OPTION PROBE\n'
    #outstr += '.PRINT TRAN V(*)\n'
    #outstr += '.OPTION RUNLVL=6\n'
    #outstr += '.TRAN 1e-15 {0}ns sweep MONTE=10\n'.format(sim_time)    
    outstr += '.TRAN 1e-12 {0}ns\n'.format(sim_time)    
    outstr += '.PRINT TRAN i(VDD)\n'.format(sim_time)    
    outstr += '\n .end \n'
   
    with open(spice_file, 'w') as spice_fn:
        spice_fn.write(outstr)

    return outstr

def write_cfg_file(cir, inputs_vec, flips_vec, cfg_file):
    
    # create cfg file
    outstr = 'set_print_format for=tr0\n'
    outstr += 'use_sim_case\n'
    outstr += 'set_node_vdd VDD \n'
    outstr += 'print_node_i VDD\n'
    #outstr +=  'print_node_v level=0 *\n'
    outstr +=  'set_sim_tres   1e-12\n'
    outstr +=  'set_print_tres 1e-12\n'
    outstr +=  'set_print_vres 1e-12\n'
    outstr +=  'set_print_ires 1e-12\n'
    outstr +=  'set_sim_esv    1e-12\n'
    outstr +=  'set_sim_spd    1e-12\n'
    
    with open(cfg_file, 'w') as cfg_fn:
        cfg_fn.write(outstr)
    
    return

def collect_trace_sim(cir, inputs_vec, flips_vec, sim_engine='hspice'):
    
    ckt_name = cir.circuit_name
    # translate verilog to spice_file
    spice_file = './spice/{0}.sp'.format(ckt_name)
    
    all_ins = list(cir.ins_and_keys())
    num_ins = len(all_ins)
    
    assert(len(inputs_vec) == len(flips_vec))
    
    num_patts = len(inputs_vec)
    sim_time = num_patts * 2 * nanoseconds_per_patt
    
    for inputs in inputs_vec:
        assert(num_ins == len(inputs))
    
    infhash = hex(abs(hash((str(inputs_vec), str(flips_vec)))))
    print(infhash)
    run_name = '{0}_{1}'.format(ckt_name, infhash)

    tr0_file = './out/{0}.tr0'.format(run_name)
    if os.path.isfile(tr0_file):
        traces = read_traces_from_tr0(tr0_file, sim_engine, num_patts)
        return traces
    
    write_spice_sim_file(cir, inputs_vec, flips_vec, run_name, spice_file)
    
    # create cfg file
    if sim_engine == 'nanosim':
        cfg_file = './cfg/{0}.cfg'.format(run_name)
        write_cfg_file(cir, inputs_vec, flips_vec, cfg_file)
            
    # create run file

    # spef_file = './spef/{0}.spef.min'.format(ckt_name)
    # verilog_lib = '/home/apps/syn/32nm/SAED32_EDK/lib/stdcell_lvt/hspice/saed32nm_lvt.spf'
    out_file = './out/{0}.out'.format(run_name)

    vec_file = './vec/{0}.vec'.format(run_name)

    # run sh file
    # cmd = 'sh {0}'.format(run_file)
    cmd = ''
    if sim_engine == 'hspice':
        cmd = 'hspice {0} -o out/{1}\n'.format(spice_file, run_name)
    elif sim_engine == 'nanosim':
        cmd = 'nanosim -n {0} -c {1} -o {2} -t {4}ns\n'.format(spice_file, cfg_file, out_file, ckt_name, sim_time, vec_file)
    else:
        raise Exception('bad sim engine', sim_engine)
    print(cmd)
    os.system(cmd)
    
    traces = read_traces_from_tr0(tr0_file, sim_engine, num_patts)

    return traces


def plot_all(traces):

    i = 1
    for trace in traces:
        x = range(len(trace))
        plt.plot(x, trace, color='blue')
        i += 1
        
    plt.show()
    
    return



def read_traces_from_tr0(tr0_file, sim_engine, num_patts):
    print('reading tr0 file: ', tr0_file)

    h = hspicefile.hspice_read(tr0_file)
    print(h)
    y = []
    if sim_engine == 'nanosim':
        y = h[0][0][2][0]['i(vdd)']
    else:
        y = h[0][0][2][0]['i(vdd']
    x = h[0][0][2][0]['TIME']
    print('x is', x, len(x))
    print('y is', y, len(y))
    plt.plot(x, y, 'b')
    traces = [list()]
    yt = []
    j = 1
    npp = nanoseconds_per_patt * 1e-9
    for i, xt in enumerate(x):
        if (npp * (j - 0.2)) < xt and xt < (npp * (j + 0.8)):
            traces[-1].append(y[i])
        if xt >= (npp * (j + 0.8)):
            traces.append(list())
            j += 2
            
    print('got traces', len(traces))
    print(x, y)

    return traces


if __name__ == '__main__':

    if len(sys.argv) != 5 :
        print('usage : run_nanosim.py <verilog_netlist> <num_patts> <flip_weight> <sim_engine>')
        exit(1)       
        
    sim_engine = sys.argv[4]
    if sim_engine != 'nanosim' and sim_engine != 'hspice':
        print('bad sim engine ', sim_engine)
        exit(1)
    
    # get input names from verilog file
    vlog_file = sys.argv[1]
    ckt_name = os.path.basename(vlog_file.replace('.v', ''))
    print(('ckt name: {0}'.format(ckt_name)))
    
    cir = vparse.parse_2_circuit_list(vlog_file)[0]
    
    num_patts = int(sys.argv[2])
    flip_weight = int(sys.argv[3])
    
    print(cir.circuit_name)
    
    all_ins = list(cir.ins_and_keys())
    num_ins = len(all_ins)

    inputs_vec = []
    flips_vec = []
    for si in range(num_patts):
        inputs = [bool(random.getrandbits(1)) for i in range(num_ins)]
        flips = [False for i in range(num_ins)]
        idx = np.random.randint(num_ins, size=flip_weight)
        print('idx:', idx)
        for i in idx:
            flips[i] = True
        
        print([int(a) for a in inputs])
        print([int(a) for a in flips])
        
        inputs_vec.append(inputs)
        flips_vec.append(flips)
            
    traces = collect_trace_sim(cir, inputs_vec, flips_vec, sim_engine)

    plot_all(traces)
    
    exit(0)
    
