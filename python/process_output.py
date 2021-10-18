#!python

import hspicefile
import os
import sys
import dill

import matplotlib.pyplot as plt
from collections import defaultdict

sys.path.insert(1, '/home/UFAD/kshamsi/Development/eclipse/neos/script/')
import circuit
import vparse


if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("usage: perform_sca.py <dill_trace_file> <circuit_verilog>")
        exit(1)
            
    with open(sys.argv[1], 'rb') as fn:
        d = dill.loads(fn.read())
    
    x = d['c432'][36][0][0]
    y = d['c432'][36][0][1]
    plt.plot(x, y, c='blue', label='i(vdd)')
    plt.show()
    
