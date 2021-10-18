#!/usr/bin/python

import os
import sys
import re
import vparse
import circuit

def parse_subckt_file(fsub):

    parser_state = 0
    subckts = dict()
    internal_nets = dict()
    subckt_devices = list()
    for ln in fsub:
        if parser_state == 0 and ( ('.SUBCKT' in ln) or ('.subckt' in ln) ):
            parser_state = 1
            lnsplt = ln.split()
            subckt_name = lnsplt[1]
            #print(ln.split())
            #print('{0} : ( {1} )'.format(lnsplt[1], lnsplt[2:]))
            subckt_ports = lnsplt[2:]
        
        elif parser_state == 1:
            if ('.ENDS' in  ln) or ('.ends' in ln):
                subckts[subckt_name] = (subckt_ports, subckt_devices)
                #print(subckts[subckt_name])
                subckt_name = ''
                subckt_devices = list()
                parser_state = 0
            elif ('M' == ln[0]):
                lnsplt = ln.split()
                device_name = lnsplt[0]
                device_nets_params = lnsplt[1:]
                subckt_devices.append((device_name, device_nets_params))
    
    #print(subckts)
    
    return subckts
    

def vlog2spice(spice_subckt_file, vlog_file):

    with open(spice_subckt_file, 'r') as fsub, open(vlog_file, 'r') as vlog_fn:
        
        subckts = parse_subckt_file(fsub)
        
        # open verilog file and read

        cirlist = vparse.parse_2_circuit_list(vlog_file)
        #for cir in cirlist:
        #    print(cir)

        ports = list()
        gates = list()

        cir = cirlist[0]
        #print(cir.to_verilog())
        #spstr = '# spice netlist\n\n'
        spstr = str()
        spstr += '\n\n.SUBCKT {0}'.format(cir.circuit_name)
        for port in cir.ports():
            spstr += ' {0} '.format(cir.name(port).lower())

        spstr += '\n\n'

        device_num = 0
        internal_net_num = 0
        for instid in cir.instances():
            inst = cir.gp.nodes[instid]
            inst_name = cir.name(instid)
            #print(inst)
            cell_name = inst[circuit.ndattr.CELL_NAME]
            subckt = subckts[cell_name]
            subckt_ports = subckt[0]
            subckt_devices = subckt[1]
            sub2sup_name = dict()
            cell_obj = cir.cell_mgr.cell_dict[cell_name]
            for i, wid in enumerate(inst[circuit.ndattr.PORT_WIDS]):
                port_name = cell_obj.port_names[i]
                #print(subckt_ports)
                port_ind = subckt_ports.index(port_name)
                sub2sup_name[subckt_ports[port_ind]] = cir.name(wid).lower()
            
            #print(sub2sup_name)
            
            subset_nets = dict()
            
            spstr += '* instance {0}\n'.format(inst_name)
            for device in subckt_devices:
                spstr += '{0}_dev{1} '.format(device[0], device_num)
                device_num += 1
                for net in device[1][0:-3]:
                    if net == 'VDD' or net == 'VSS':
                        spstr += '{0} '.format(net)                        
                    elif net in sub2sup_name:
                        spstr += '{0} '.format(sub2sup_name[net])
                    else:
                        if not net in subset_nets:
                            subset_nets[net] = '{0}_w{1} '.format(net, internal_net_num)
                            spstr += subset_nets[net]
                            internal_net_num += 1
                        else:
                            spstr += subset_nets[net]
                for param in device[1][-3:]:
                    spstr += '{0} '.format(param)
                spstr += '\n'
            
            
            spstr += '\n\n'
            
        spstr += '.ENDS\n\n'

        spstr += 'XTOP '
        for port in cir.ports():
            spstr += ' {0} '.format(cir.name(port).lower())

        spstr += ' {0}\n\n'.format(cir.circuit_name)

        spstr += '\n\n'
        
    return spstr
        

if __name__ == '__main__':

    if len(sys.argv) != 4 :
        print('usage : vlogtospice <spice_subckt_file> <verilog_file> <spice_file>')
        exit(1)


    spice_subckt = sys.argv[1]
    vlog_file = sys.argv[2]
    spice_file = sys.argv[3]

    spice_str = vlog2spice(spice_subckt, vlog_file)
    #print('spice string is ', spice_str)
    
    with open(spice_file, 'w') as spice_fn:
        spice_fn.write(spice_str)





