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

from mypaths import *
sys.path.insert(1, '/home/UFAD/kshamsi/Development/eclipse/neos/script/')
import circuit
import vparse


def perform_sim(in_maps, num_steps, cir, run_name, sim_type):
    
    tech = '45nm'
    ckt_name = cir.circuit_name
    # translate verilog to spice_file
    subckts_file = ''
    if tech == '45nm':
        subckts_file = '/home/UFAD/kshamsi/stdclibs/NanGate45nm/Back_End/spice/NangateOpenCellLibrary.spi'
    elif tech == '15nm':
        subckts_file = '/home/UFAD/kshamsi/stdclibs/NanGate15nm/back_end/spice/cell/Nangate15nm_cells.sp'
        
    spice_file = './spice/{0}.sp'.format(ckt_name)
    cmd = 'python3 vlogtospice.py {0} {1} {2}'.format(subckts_file, vlog_file, spice_file)
    print(cmd)
    os.system(cmd)
    with open(spice_file, 'r') as fn:
        spice_str = fn.read()
    
    num_ins = cir.num_ins_and_keys()
    
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
    for xid in cir.allins():
        vecheader += ' {0}'.format(cir.name(xid).lower())

    #period = 0.1 # in nanoseconds
    vecheader += '\nTUNIT 1ns\n'
    #vecheader += 'PERIOD {0}\n'.format(period)
    vecheader += 'SLOPE 0.02\n'
    vecheader += 'VIH 1.05\n'
    vecheader += 'VOH 1.05\n'
    vecstr = ''
    
    assert(num_steps == len(in_maps))
    
    time_stamps = [0.0, 0.1]
    for s in range(num_steps):
        vecstr += '{0} '.format(time_stamps[s])
        for xid in cir.allins():
            vecstr += '{0}'.format(in_maps[s][xid])
        vecstr += '\n'
        
    vec_file = './vec/{0}.vec'.format(run_name)
    
    with open(vec_file, 'w') as fn:
        fn.write(vecheader + vecstr)
    
    # create run file

    # spef_file = './spef/{0}.spef.min'.format(ckt_name)
    # verilog_lib = '/home/apps/syn/32nm/SAED32_EDK/lib/stdcell_lvt/hspice/saed32nm_lvt.spf'
    cfg_file = './cfg/{0}.cfg'.format(run_name)
    out_file = './out/{0}.out'.format(run_name)
    sim_time = 0.5

   
    outstr = '.GLOBAL VDD VSS \n'
    outstr += spice_str
    if tech == '45nm':
        outstr += '.include \"/home/UFAD/kshamsi/projects/scadobf/nanosim/models/ptm45.inc\"\n'    
#        outstr += '''
#        .include "/home/UFAD/kshamsi/stdclibs/FreePDK45/ncsu_basekit/models/hspice/tran_models/models_nom/NMOS_THKOX.inc"
#        .include "/home/UFAD/kshamsi/stdclibs/FreePDK45/ncsu_basekit/models/hspice/tran_models/models_nom/NMOS_VTG.inc"
#        .include "/home/UFAD/kshamsi/stdclibs/FreePDK45/ncsu_basekit/models/hspice/tran_models/models_nom/NMOS_VTH.inc"
#        .include "/home/UFAD/kshamsi/stdclibs/FreePDK45/ncsu_basekit/models/hspice/tran_models/models_nom/NMOS_VTL.inc"
#        .include "/home/UFAD/kshamsi/stdclibs/FreePDK45/ncsu_basekit/models/hspice/tran_models/models_nom/PMOS_THKOX.inc"
#        .include "/home/UFAD/kshamsi/stdclibs/FreePDK45/ncsu_basekit/models/hspice/tran_models/models_nom/PMOS_VTG.inc"
#        .include "/home/UFAD/kshamsi/stdclibs/FreePDK45/ncsu_basekit/models/hspice/tran_models/models_nom/PMOS_VTH.inc"
#        .include "/home/UFAD/kshamsi/stdclibs/FreePDK45/ncsu_basekit/models/hspice/tran_models/models_nom/PMOS_VTL.inc"
#        '''
        outstr += '.include \"{0}\" \n'.format(subckts_file)
        outstr += '.VEC {0}\n'.format(vec_file)
        outstr += 'VDD VDD 0 1.05\n'
        outstr += 'VSS VSS 0 0\n'
        
    elif tech == '15nm':
        outstr += '.lib \"/home/UFAD/kshamsi/projects/scadobf/nanosim/models/fet.inc\" CMG\n'    
        outstr += '.include \"{0}\" \n'.format(subckts_file)
        outstr += '.GLOBAL VDD VSS VPW VNW\n'
        outstr += '.VEC {0}\n'.format(vec_file)
        outstr += 'VDD TVDD 0 0.8\n'
        outstr += 'VSS TVSS 0 0\n'
        

    outstr += '.OPTION post=1\n'.format(sim_time)    
    outstr += '.OPTION probe\n'.format(sim_time)    
    #outstr += '.OPTION RUNLVL=3\n'
    outstr += '.TRAN 1e-15 {0}ns\n'.format(sim_time)    
    outstr += '.PRINT TRAN i(VDD)\n'.format(sim_time)    
    outstr += '\n.END \n'
    
    with open(spice_file, 'w') as fn:
        fn.write(outstr)
    
    # create cfg file
    outstr = 'set_print_format for=tr0\n'
    outstr += 'use_sim_case\n'
    outstr += 'set_node_vdd VDD \n'
    outstr += 'print_node_i VDD\n'
    #outstr += 'print_node_v level=0 *\n'
    outstr +=  'set_sim_tres   1e-14\n'
    outstr +=  'set_print_tres 1e-14\n'
    outstr +=  'set_print_vres 1e-13\n'
    outstr +=  'set_print_ires 1e-16\n'
    outstr +=  'set_sim_esv    1e-13\n'
    outstr +=  'set_sim_spd    1e-13\n'
    with open(cfg_file, 'w') as fn:
        fn.write(outstr)

    # run sh file
    # cmd = 'sh {0}'.format(run_file)
    cmd = ''
    if sim_type == 'hspice':
        cmd = 'hspice {0} -o out/{1}\n'.format(spice_file, run_name)
    else:
        cmd = 'nanosim -n {0} -c {1} -o {2} -t {4}ns\n'.format(spice_file, cfg_file, out_file, ckt_name, sim_time, vec_file)
        
    print(cmd)
    os.system(cmd)
    
    return

def get_xy_from_tr0(tr0_file, sim_type):
    print('reading tr0 file: ', tr0_file)

    h = hspicefile.hspice_read(tr0_file)
    print(h)
    y = []
    if sim_type == 'nanosim':
        y = h[0][0][2][0]['i(vdd)']
    else:
        y = h[0][0][2][0]['i(vdd']
    x = h[0][0][2][0]['TIME']
    print(x, y)
    return x, y


if __name__ == '__main__':

    if len(sys.argv) != 4 :
        print('usage : run_nanosim.py <verilog_netlist> <num_sims_per_bit> <sim_engine>')
        exit(1)       
        
    sim_type = sys.argv[3]
    if sim_type != 'nanosim' and sim_type != 'hspice':
        print('bad sim engine ', sim_type)
        exit(1)
    
    # get input names from verilog file
    vlog_file = sys.argv[1]
    ckt_name = os.path.basename(vlog_file.replace('.v', ''))
    print(('ckt name: {0}'.format(ckt_name)))
    
    cir = vparse.parse_2_circuit_list(vlog_file)[0]
    
    num_sims_per_bit = int(sys.argv[2])
    
    print(cir.circuit_name)
#    cir.link_instances(['ZN', 'Z'])
#    exit()

    inval_maps = [dict() for s in range(2)]
    print(inval_maps)
    flip_xid = list(cir.inputs())[0]
    print('flip_xid is ', flip_xid)
    
    for xid in cir.allins():
        if cir.is_key(xid):
            inval_maps[0][xid] = 0
            inval_maps[1][xid] = 0
        else:
            if flip_xid == xid:
                inval_maps[0][xid] = 0
                inval_maps[1][xid] = 1
            else:
                inval_maps[0][xid] = 0 
                inval_maps[1][xid] = 0 

    run_name = '{0}_b{1}_{2}'.format(cir.circuit_name, flip_xid, 0)
    
    perform_sim(inval_maps, 2, cir, run_name, sim_type)  
    #perform_sim(inval_maps, 2, cir, run_name, 'hspice')

    cir_name = 'c432'
    x, y = get_xy_from_tr0('./out/{0}.tr0'.format(run_name), sim_type)
    
    plt.plot(x, y, c='blue', label='i(vdd)')
    plt.show()


