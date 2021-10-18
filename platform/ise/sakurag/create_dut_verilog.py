

import os
import sys

if __name__ == '__main__':
    if len(sys.argv) != 5:
        print('usage: create_dut_verilog.py <enc_cir_bench> <dut_verilog_file> <top_verilog_file_pre> <top_verilog_file_post>')
        exit(1)
    
    sys.path.insert(1, '/home/kaveh/Development/eclipse/neos/script/')
    from circuit import *
    import vparse
    
    cir = Circuit(sys.argv[1])
    
    
    dut_mod_str = '// DUT verilog module\n'
    dut_mod_str += 'module {0}(dut_inputs, dut_outputs);\n'.format(cir.circuit_name)
    dut_mod_str += 'input wire [{0}:0] dut_inputs;\n'.format(cir.num_ins_and_keys() - 1)
    dut_mod_str += 'output wire [{0}:0] dut_outputs;\n'.format(cir.num_outs() - 1)

    dut_mod_str += '\n\nwire '
    dut_mod_str += cir.list_wirenames(list(cir.wires()), ', ') + ';\n\n\n'
    
    
    i = 0
    for xid in cir.inputs():
        dut_mod_str += 'assign {1} = dut_inputs[{0}];\n'.format(i, cir.name(xid))
        i += 1

    for xid in cir.keys():
        dut_mod_str += 'assign {1} = dut_inputs[{0}];\n'.format(i, cir.name(xid))
        i += 1
    
    i = 0
    for xid in cir.outputs():
        dut_mod_str += 'assign dut_outputs[{0}] = {1};\n'.format(i, cir.name(xid))
        i += 1



    if not cir.link_instances:
        for inst in cir.instances:
            dut_mod_str += cir.instance_str_vlog(inst) + '\n'
    for gid in cir.gates():
        dut_mod_str += cir.gate_str_vlog(gid) + '\n'

    dut_mod_str += '\nendmodule\n'
    
    # print(dut_mod_str)
    with open(sys.argv[2], 'w') as fn:
        fn.write(dut_mod_str)
    
    fnpost = open(sys.argv[4], 'w')
    
    with open(sys.argv[3], 'r') as fn:
        for ln in fn:
            if '#' in ln:
                ln = ln.replace('#NUM_INS', '{0}'.format(cir.num_ins_and_keys()) )
                ln = ln.replace('#NUM_OUTS', '{0}'.format(cir.num_outs()) )
                ln = ln.replace('#CIR_NAME', '{0}'.format(cir.circuit_name) ) 
            fnpost.write(ln)
        
    fnpost.close()
    
    
