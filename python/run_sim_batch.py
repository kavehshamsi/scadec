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
import random

from mypaths import *
sys.path.insert(1, '/home/kaveh/Development/eclipse/neos/pyneos/')
import circuit
import vparse
import vlogtospice_flat as vlgsp

nanoseconds_per_patt = 1
run_num = 0

def write_vec_file(cir, inputs, flips, vec_file, nanoseconds_per_patt):
    
    all_ins = list(cir.allins())
    num_ins = len(all_ins)
    
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
    vecheader += 'SLOPE 0.05\n'
    vecheader += 'VIH 1.1\n'
    vecheader += 'VOH 1.1\n'
    vecstr = ''
    

    vecstr += '{0:f} '.format(0)
    for i in range(num_ins):
        vecstr += '{0:d}'.format(inputs[i])
    vecstr += '\n'
    
    vecstr += '{0:f} '.format(nanoseconds_per_patt * (0.3))
    for i in range(num_ins):
        vecstr += '{0:d}'.format(inputs[i] ^ flips[i])
    vecstr += '\n'
    
    vec_str = vecheader + vecstr
    
    with open(vec_file, 'w') as fn:
        fn.write(vec_str)
    
    return

def write_spice_sim_file(cir, inputs, flips, vec_file, spice_file):

    # write vec file    
    # Generating vec file
    sim_time = 2 * nanoseconds_per_patt
    num_points = 1000

    subckts_file = '/cad/stdclibs/NanGate45nm/Back_End/spice/NangateOpenCellLibrary.spi'
    #subckts_file = '/home/UFAD/kshamsi/stdclibs/NanGate15nm/back_end/spice/cell/Nangate15nm_cells.sp'
    spice_str = vlgsp.vlog2spice(subckts_file, vlog_file)
   
    outstr = spice_str
    #    outstr += '.param vth0_pmoded=UNIF(-0.3021, 1)\n' +\
    #              '.param vth0_nmoded=UNIF(0.322, 1)\n'
    #    outstr += '.param vth0_pmoded=UNIF(-0.3021, 0.1)\n' +\
    #              '.param vth0_nmoded=UNIF(0.322, 0.1)\n'
        #outstr += '.param vth0_pmoded=-0.3021 vth0_pmoded=-0.3021\n'
    outstr += '.include \"/home/kaveh/Misc/ptm45.inc\"\n'
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
    outstr += 'VDD VDD 0 1.1\n'
    outstr += 'Ccap VDD 0 100u IV=1.1\n'
    outstr += 'VSS VSS 0 0\n'
    outstr += '.include \"{0}\" \n'.format(subckts_file)
    outstr += '.OPTION post=1\n'.format(sim_time)    
    outstr += '.OPTION PROBE\n'
    outstr += '.OPTION METHOD=BDF\n'
    #outstr += '.OPTION ACCURATE=1\n'
    #outstr += '.PRINT TRAN V(*)\n'
    outstr += '.OPTION RUNLVL=3\n'
    outstr += '.OPTION INGOLD=1\n'
    #outstr += '.TRAN 1e-15 {0}ns sweep MONTE=10\n'.format(sim_time)    
    sim_step = float(sim_time / num_points) * 1e-9
    outstr += '.TRAN {0} {1}e-9\n'.format(sim_step, sim_time)
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
    outstr +=  'set_sim_tres   1e-13\n'
    outstr +=  'set_print_tres 1e-13\n'
    outstr +=  'set_print_vres 1e-14\n'
    outstr +=  'set_print_ires 1e-14\n'
    outstr +=  'set_sim_esv    1e-14\n'
    outstr +=  'set_sim_spd    1e-14\n'
    
    with open(cfg_file, 'w') as cfg_fn:
        cfg_fn.write(outstr)
    
    return


def sim_worker(cmd):
    print('calling ', cmd)
    os.system(cmd)
    print('done with ', cmd)
    
CPU_NUM = 90
pool = mp.Pool(CPU_NUM)


def run_simulation(cir, inputs, flips, run_dir, sim_engine='hspice'):
    
    ckt_name = cir.circuit_name
    # translate verilog to spice_file

    all_ins = list(cir.allins())
    num_ins = len(all_ins)
    
    print(len(inputs), len(flips))
    assert(len(inputs) == len(flips))
    assert(len(inputs) == num_ins)
    
    sim_time = nanoseconds_per_patt
    
    global run_num
    global pool
    
    run_name = '{0}_{1}'.format(ckt_name, run_num)
    run_num += 1

    spice_file = run_dir + './spice/{0}.sp'.format(run_name)    
    tr0_file = run_dir + './out/{0}.tr0'.format(run_name)
    
    #    if os.path.isfile(tr0_file):
    #        print('simulation appears to have been done with file at ', tr0_file)
    #        return
    #    
    
    vec_file = run_dir + './vec/{0}.vec'.format(run_name)
    write_vec_file(cir, inputs, flips, vec_file, nanoseconds_per_patt)
    write_spice_sim_file(cir, inputs, flips, vec_file, spice_file)
    
    # create cfg file
    if sim_engine == 'nanosim':
        cfg_file = run_dir + './cfg/{0}.cfg'.format(run_name)
        write_cfg_file(cir, inputs, flips, cfg_file)
            
    # create run file

    # spef_file = './spef/{0}.spef.min'.format(ckt_name)
    # verilog_lib = '/home/apps/syn/32nm/SAED32_EDK/lib/stdcell_lvt/hspice/saed32nm_lvt.spf'
    out_file = run_dir + './out/{0}.out'.format(run_name)


    # run sh file
    # cmd = 'sh {0}'.format(run_file)
    cmd = ''
    if sim_engine == 'hspice':
        cmd = 'hspice {0} -o {1}./out/{2}\n'.format(spice_file, run_dir, run_name)
    elif sim_engine == 'nanosim':
        cmd = 'nanosim -n {0} -c {1} -o {2} -t {4}ns\n'.format(spice_file, cfg_file, out_file, ckt_name, sim_time, vec_file)
    else:
        raise Exception('bad sim engine', sim_engine)
    #print(cmd)

    pool.apply_async(sim_worker, args=(cmd,))

    return


def plot_all(traces):

    for (x, y) in traces:
        plt.plot(x, y, color='blue')
        
    plt.show()
    
    return



def read_trace_from_tr0(tr0_file, sim_engine):
    print('reading tr0 file: ', tr0_file)

    h = hspicefile.hspice_read(tr0_file)
    #print(h)
    y = []
    if sim_engine == 'nanosim':
        y = h[0][0][2][0]['i(vdd)']
    else:
        y = h[0][0][2][0]['i(vdd']
    x = h[0][0][2][0]['TIME']
    #print('x is', x, len(x))
    #print('y is', y, len(y))
    #plt.plot(x, y, 'b')
    trace = []
    yt = []
    j = 1
    npp = nanoseconds_per_patt * 1e-9
    for i, xt in enumerate(x):
        if (npp * (0.8)) < xt and xt < (npp * (1.6)):
            trace.append(y[i])
            
    #print('got traces', len(trace))
    #print('len ', len(y))
    trace = (x, y)
    return trace

def read_trace_from_lis(lis_file, sim_engine):
    print('reading lis file: ', lis_file)

    x = []
    y = []

    with open(lis_file, 'r') as lis_fn:
        state = 0
        for ln in lis_fn:
            if '   vdd' in ln:
                state = 1
            
            if 'y\n' == ln:
                state = 0
            
            if state == 1 and ('vdd' not in ln) and ('y' not in ln):
                ln = ln.strip()
                lnsplt = list(filter(None, ln.split(' ')))
                #print(lnsplt)
                x.append(float(lnsplt[0]))
                y.append(float(lnsplt[1]))
                
                #print(x, y)
    
    print('trace is len ', len(y))
    return y


def read_pattern_file(input_file, inputs_vec, flips_vec):
    with open(input_file, 'r') as input_fn:
        for ln in input_fn:
            ln = ln.strip('\n')
            inputs_vec.append([])
            flips_vec.append([])
            lnsplt = ln.split(' ')
            for b in lnsplt[0]:
                inputs_vec[-1].append(int(b))
            for b in lnsplt[1]:
                flips_vec[-1].append(int(b))
    
    print('read inputs: ', inputs_vec)
    print('read flips: ', flips_vec)
    return


def write_traces_to_file(traces, trace_file):
    print(len(traces))
    with open(trace_file, 'w') as trace_fn:
        for trace in traces:
            print('trace length: ', len(trace))
            for i in range(len(trace)):
                trace_fn.write('{0} '.format(trace[i]))
            trace_fn.write('\n')
    return

def moving_average(Y, N):
    X = np.array(Y)
    X = np.convolve(X, np.ones(N,)/N, mode='valid')
    retX = []
    for x in X:
        retX.append(float(x))
    return retX

def average_pooling(Y, toN):
    X = []
    N = int(len(Y)/toN)
    for i in range(0, toN):
        X.append(np.mean(Y[i*N : (i+1)*N]))

    return X

def normalize_traces(traces):

    noise_strength = 0.01
    
    y_max = float('-inf')
    y_min = float('inf')
    for trace in traces:
        for i in range(1, len(trace)):
            y_max = max(y_max, trace[i])
            y_min = min(y_min, trace[i])
    
    y_base = traces[0][-1]
    y_del = (y_max - y_min) / (1 << 15)
    print('y_del is', y_del)
    print('y_base is', y_base)
    for trace in traces:
        for i in range(1, len(trace)):
            trace[i] = int((trace[i] - y_base) / y_del)
        #print(y)
        print('orig trace len', len(trace))
    

    for i in range(len(traces)):
        traces[i] = moving_average(traces[i], 10)
        #traces[i] = average_pooling(traces[i], 500)
        max_trace = max(traces[i])
        min_trace = min(traces[i])

    trace_delta = abs(max_trace - min_trace)

    noise_int = int(noise_strength * float(trace_delta))
    
    for i in range(len(traces)):
        noise_arr = np.random.normal(0, noise_int, len(traces[i]))
        for j in range(len(traces[i])):
            traces[i][j] = traces[i][j] + noise_arr[j]


    print('y_min: {0}, y_max: {1}'.format(y_min, y_max))
    return traces

if __name__ == '__main__':

    if len(sys.argv) != 5 :
        print('usage : run_nanosim.py <verilog_netlist> <input_file> <trace_file> <run_dir>')
        exit(1)       
        
    sim_engine = 'hspice'   
    
    vlog_file = sys.argv[1]
    inputs_file = sys.argv[2]
    trace_file = sys.argv[3]
    run_dir = sys.argv[4]
    
    # get input names from verilog file
    ckt_name = os.path.basename(vlog_file.replace('.v', ''))
    print(('ckt name: {0}'.format(ckt_name)))
    
    cir = vparse.parse_2_circuit_list(vlog_file)[0]
    
    inputs_vec = []
    flips_vec = []
    
    read_pattern_file(sys.argv[2], inputs_vec, flips_vec)
    
    print(cir.circuit_name)
    
    all_ins = list(cir.allins())
    num_ins = len(all_ins)
    
    for i in range(len(inputs_vec)):
        run_simulation(cir, inputs_vec[i], flips_vec[i], run_dir, sim_engine)
    
    pool.close()
    pool.join()
    print('finished ', run_num, ' simulations')
    
    ckt_name = cir.circuit_name

    traces = []
    for i, inputs in enumerate(inputs_vec):
        run_name = '{0}_{1}'.format(ckt_name, i)
        tr0_file = run_dir + './out/{}.tr0'.format(run_name)
        lis_file = run_dir + './out/{}.lis'.format(run_name)
        #traces.append(read_trace_from_tr0(tr0_file, sim_engine))
        traces.append(read_trace_from_lis(lis_file, sim_engine))

    #plot_all(traces)
    traces = normalize_traces(traces)
    #plot_all(traces)
    
    trace_file = sys.argv[3]
    write_traces_to_file(traces, trace_file)
        
    exit(0)
    
