#!/usr/bin/python

import os
import sys
import mypaths
import shutil
import os

def capitalize(outfile):
    f = open(outfile, 'r')
    ftemp = open('./_rename_tmp', 'w')
    for line in f:
        newline = line.replace(' not', 'NOT')
        newline = newline.replace(' nand', 'NAND')
        newline = newline.replace(' nor', 'NOR')
        newline = newline.replace(' and', 'AND')
        newline = newline.replace(' or', 'OR')
        newline = newline.replace(' xor', 'XOR')
        newline = newline.replace(' xnor', 'XNOR')
        newline = newline.replace(' buf', 'BUF')
        ftemp.write(newline)

    f.close()
    ftemp.close()

    shutil.copy('./_rename_tmp', outfile)
    cmd = 'rm _rename_tmp'
    os.system(cmd)

    return

def decapitalize(outfile):
    f = open(outfile, 'r')
    ftemp = open('_rename_tmp', 'w')
    for line in f:
        newline = line.replace(' NOT', ' not')
        newline = newline.replace(' NAND', ' nand')
        newline = newline.replace(' NOR', ' nor')
        newline = newline.replace(' AND', ' and')
        newline = newline.replace(' OR', ' or')
        newline = newline.replace(' XOR', ' xor')
        newline = newline.replace(' XNOR', ' xnor')
        newline = newline.replace(' BUF', ' buf')
        ftemp.write(newline)

    f.close()
    ftemp.close()

    shutil.copy('_rename_tmp', outfile)
    cmd = 'rm _rename_tmp'
    os.system(cmd)

    return


def interpret_LUT(outfile):
    f = open(outfile, 'r')
    ftemp = open('_interpret_tmp_lut', 'w')
    for line in f:
        newline = line.replace(', gnd, gnd, gnd, gnd )', ' )');
        newline = newline.replace(' DFFRSE', ' dff')
        newline = newline.replace('LUT 0x7 ', 'nand')
        newline = newline.replace('LUT 0x7f ', 'nand')
        newline = newline.replace('LUT 0x1 ', 'nor') if (',' in line) else line.replace('LUT 0x1 ', 'not')
        newline = newline.replace('LUT 0x01 ', 'nor')
        newline = newline.replace('LUT 0x8 ', 'and')
        newline = newline.replace('LUT 0xe ', 'or')
        newline = newline.replace('LUT 0x6 ', 'xor')
        newline = newline.replace('LUT 0x9 ', 'xnor')
        newline = newline.replace('LUT 0x2 ', 'buf')
        ftemp.write(newline)

    f.close()
    ftemp.close()

    shutil.copy('_interpret_tmp_lut', outfile)
    cmd = 'rm _interpret_tmp_lut'
    os.system(cmd)

    return

def resynthesize(in_file, out_file, synlib = mypaths.abclib_path):
    """ resynthesize in_file to out_file. needs complete path."""

    shutil.copy(in_file, out_file)
    capitalize(out_file)

    cmd =  "read_library {0}\n".format(synlib)
    cmd += "read_bench  " + out_file
    cmd += "\nstrash"
    cmd += "\nbalance; rewrite; refactor; rewrite -z; balance;\n"
    # cmd += "\ncollapse"
    # cmd += "\nsweep"
    cmd += "\nmap\n"
    cmd += "write_bench " + out_file
    # cmd += "\nwrite_verilog " + out_file + ".v"
    cmd += "\nquit"

    scrpt = open('abc_script_gennet', 'w')
    scrpt.write(cmd)
    scrpt.close()

    os.system("{0} < abc_script_gennet ".format(mypaths.abc_cmd))
    cmd = 'rm abc_script_gennet'
    os.system(cmd)

    interpret_LUT(out_file)

    return


if __name__ == "__main__":
    if len(sys.argv) != 4 :
        print('usage : resynth <input_file> <output_file> [simp/and]')
        exit()

    if sys.argv[3] == 'simp':
        resynthesize(sys.argv[1], sys.argv[2], mypaths.abclib_path)
    elif sys.argv[3] == 'and':
        resynthesize(sys.argv[1], sys.argv[2], mypaths.xorlib_path)
# getlazyrandstring(64, 40)


