#!/usr/bin/python

import sys
import os
import re
import random
import matplotlib.pyplot as plt

if __name__ == "__main__":
    if len(sys.argv) != 3:
        print('usage : plot_ylist.py <input_file> <title>')
        exit(1)
        
    input_file = sys.argv[1]
    title = sys.argv[2]
    
    print('title is ', title)
    
    ylist = []
    highlight_index = -1
    
    with open(input_file, 'r') as fn:
        line_num = 0;
        for ln in fn:
            if line_num == 0:
                highlight_index = int(ln.rstrip())
            else:
                ylist.append([])
                tokens = ln.rstrip().split(' ')
                for token in tokens:
                    ylist[-1].append(float(token))
            
            line_num += 1

    assert highlight_index != -1
    
    skip_init = 2
    
    for i in range(len(ylist)):
        if i != highlight_index:
            plt.plot(ylist[i][skip_init:], 'lightgray')
        
    plt.plot(ylist[highlight_index][skip_init:], 'red')
    
    plt.show()
