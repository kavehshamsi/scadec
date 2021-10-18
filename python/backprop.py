
import os
import sys

if __name__ == '__main__':
    if len(sys.argv) != 4:
        print('usage: backprop.py <sim_cir> <enc_cir> <num_epochs>')
        exit(1)

from circuit import *

import theano
import theano.tensor as T
from theano import function, printing

import numpy
import numpy.random as rng

def build_enc2sim_map(sim_cir, enc_cir):
    enc2sim = dict()
    # build cir mappings
    for xenc in enc_cir.inputs():
        print(xenc, enc_cir.name(xenc))
        xsim = sim_cir.find_wire(enc_cir.name(xenc))
        if xsim == None:
            print('input ', enc_cir.name(xenc), ' not in sim_cir')
            exit(1)
        enc2sim[xenc] = xsim
        
    for yenc in enc_cir.outputs():
        ysim = sim_cir.find_wire(enc_cir.name(yenc))
        if ysim == None:
            print('output ', enc_cir.name(yenc), ' not in sim_cir')
            exit(1) 
        enc2sim[yenc] = ysim

    return enc2sim



if __name__ == '__main__':
    # readin circuits
    sim_cir = Circuit(sys.argv[1])
    enc_cir = Circuit(sys.argv[2])
    num_epochs = int(sys.argv[3])

    enc2sim = build_enc2sim_map(sim_cir, enc_cir)
    
    # symbolic vars
    x = T.dvector('x') # theano.shared(rng.rand(enc_cir.num_ins()), name='x')
    y = T.dvector('y') # theano.shared(rng.rand(enc_cir.num_outs()), name='y')
    k = theano.shared(rng.rand(enc_cir.num_keys()), name='k')

    print(x)
    print(y)
    print(k)

    # build neural net
    ind = 0
    wid2var = dict()
    for xenc in enc_cir.inputs():
        wid2var[xenc] = x[ind]
        ind += 1

    ind = 0
    for kenc in enc_cir.keys():
        wid2var[kenc] = k[ind]
        ind += 1

    ind = 0
    wid2yind = dict()
    for yenc in enc_cir.outputs():
        wid2var[yenc] = y[ind]
        wid2yind[yenc] = ind
        ind += 1
        
#    w = list()
#    ind = 0
#    for wenc in enc_cir.inters():
#        w.append(T.dscalar('w{0}'.format(ind)))
#        wid2var[wenc] = w[-1]
#        ind += 1

    costs = []

    pred_list = [] * enc_cir.num_outs()
    #print(wid2var)
    enc_cir.topsort()
    for gid in enc_cir.topsorted_gates:
    #for gid in enc_cir.gates():
        # print(' gate ', enc_cir.name(gid))
        gout = enc_cir.fanout(gid)
        if enc_cir.gatefun(gid) == gfun.AND:
            acc = 1
            for fanin in enc_cir.fanins(gid):            
                acc = acc * wid2var[fanin]
        elif enc_cir.gatefun(gid) == gfun.NOT:
            acc = 1 - wid2var[enc_cir.fanin(gid)]
        elif enc_cir.gatefun(gid) == gfun.BUF:
            acc = wid2var[enc_cir.fanin(gid)]
        
        else:
            print('gate function', enc_cir.gatefun(gid), 'not supported')
            exit(1)
        
        print(acc, gout)
        if enc_cir.is_output(gout):
            costs.append((y[wid2yind[gout]] - acc))
            preds[wid2yind[gout]] = acc
            wid2var[gout] = acc
        else:
            v = T.dscalar('w{0}'.format(ind))
            wid2var[gout] = acc
        # print(wid2var[gout])
        # wid2var[gout] = T.nnet.sigmoid(wid2var[gout])
    
    cost = T.sum(costs)
   
    
    alpha = 0.1
    
    gfk = T.grad(cost, k)
    print(gfk)
    gfk = 0.1 * gfk
    
    f = function(inputs=[x, y],
        outputs=[cost, preds],
        updates=((k, k -  0.1 * gfk),),
        on_unused_input='warn', mode='FAST_COMPILE')

    p = function(inputs=[x], outputs=preds, mode='FAST_COMPILE')
    
    printing.debugprint(f)
    
    # train loop
    for epoch in range(num_epochs):
        x_patt = rng.randint(2, size=enc_cir.num_ins())
        y_patt = numpy.zeros(enc_cir.num_outs())
        print('x :', x_patt)
        
        # get y_patt
        i = 0
        sim_map = dict()
        for xenc in enc_cir.inputs():
            xsim = enc2sim[xenc]
            sim_map[xsim] = x_patt[i]
            i += 1
        
        i = 0
        # simulate circuit
        sim_cir.simulate(sim_map)
        for yenc in enc_cir.outputs():
            ysim = enc2sim[yenc]
            y_patt[i] = sim_map[ysim]
            
        # train with x_patt, y_patt
        res = f(x_patt, y_patt)        
        print(res)
        print('k: ', k.get_value())
        
