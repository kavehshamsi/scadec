#!/usr/bin/python

import os
import sys
import re


def vlog2spice(spice_subckt_file, vlog_file):

    with open(spice_file, 'r') as spice_fn, open(vlog_file) as vlog_fn:
    
        # parse in subckt file and put in pinMap
        with open(spice_subckt, 'r') as fsub:
            pinMaps = dict(list())
            for ln in fsub:
                if ('.SUBCKT' in ln) or ('.subckt' in ln):
                    lnsplt = ln.split()
                    print(ln.split())
                    #print('{0} : ( {1} )'.format(lnsplt[1], lnsplt[2:]))
                    pinMaps[lnsplt[1]] = lnsplt[2:]
                    

        # open verilog file and read

        cirlist = vparse.parse_2_circuit_list(vlog_file)
        #for cir in cirlist:
        #    print(cir)

        ports = list()
        gates = list()

        cir = cirlist[0]

        #spstr = '# spice netlist\n\n'
        spstr = ''
        spstr += '\n\n.SUBCKT {0}'.format(cir.circuit_name)
        for port in cir.ports():
            spstr += ' {0} '.format(cir.name(port).lower())

        spstr += '\n\n'

        for inst in cir.instances:
            pmap = pinMaps[inst.instance_module]
            spstr += 'X{0} '.format(inst.instance_name)
            netids = ['0'] * len(pmap)
            netids[-1] = 'VSS'
            netids[-2] = 'VDD'
            # print(netids, len(pmap),'\n\n')
            for port_name, (wid, port_dir) in inst.portNameDict.items():
                ind = pmap.index(port_name)
                # print(port_name, wid, port_dir, ind)
                netids[ind] = str(cir.name(wid)).lower()
            
            print(netids)
            for nid in netids:
                spstr += '{0} '.format(nid)
                
            spstr += inst.instance_module + '\n'

        spstr += '.ENDS\n\n'

        spstr += 'XTOP '
        for port in cir.ports():
            spstr += ' {0} '.format(cir.name(port).lower())

        spstr += ' {0}\n\n'.format(cir.circuit_name)

        spstr += '\n\n'


        #print(spstr)

    return spstr



if __name__ == '__main__':

    if len(sys.argv) != 4 :
        print('usage : vlogtospice <spice_subckt_file> <verilog_file> <spice_file>')
        exit(1)

    sys.path.insert(1, '/home/UFAD/kshamsi/Development/eclipse/neos/pyneos/')
    import circuit
    import vparse

    spice_subckt = sys.argv[1]
    vlog_file = sys.argv[2]
    spice_file = sys.argv[3]

    spice_str = vlog2spice(spice_subckt, vlog_file)

    with open(spice_file, 'w') as spice_fn:
        spice_fn.write(spice_str)


