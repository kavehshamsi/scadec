#!/usr/bin/python

import os
import sys
import re

tribuf_instname = 'camvia'
tribuf_cell = 'otpvia_m2m3'



if __name__ == "__main__":
    if len(sys.argv) != 3 :
        print('usage : prepar <input_vfile> <output_vfile>')
        exit()

    f = open(sys.argv[1], 'r')
    fstr = f.read()
    rx = re.sub(r"(,[ \n\r]*keyinput[0-9_]*)", '', fstr),
    # rx = re.sub(r"keyinput[0-9_\n]*,\n", '', rx[0]),
    # rx = re.sub(r"keyinput[0-9_\n]*", '', rx[0]),
    f.close()
    
    fout = open(sys.argv[2], 'w')
    
    for ln in rx[0].split('\n'):
        if 'tribuf' in ln:
            g = [_f for _f in re.split("[, ,\(\);\n]+", ln) if _f]
            # print g
            ln = '{0} {1} (.A({2}), .B({3}));'.format(tribuf_cell, g[1], g[2], g[3])
        fout.write(ln + '\n')
        
    fout.close()
