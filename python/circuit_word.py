#!/usr/bin/python


import sys
import os
import re

import graphviz
import circuit
import copy

class CirWord:
    def __init__(self, cir, wordids):
        self._cir = circuit.Circuit()
        self._wordids = list(coll)

    def __len__(self):
        return len(self._wordids)

    def apply_binary_op(self, word2, fun):
        assert(len(word2) == len(self))
        wouts = []
        for i, wid in enumerate(self._wordids):
            wo = self._cir.add_wire(circuit.ntype.INTER)
            self._cir.add_gate_wids(fun, [wid, word2[i]], wo)
            wouts.append(wo)
        return CirWord(self._cir, wouts)

    def apply_uni_op(self, fun):
        assert(len(word2) == len(self))
        assert(fun == circuit.gfun.NOT)
        wouts = []
        for i, wid in enumerate(self._wordids):
            wo = self._cir.add_wire(circuit.ntype.INTER)
            self._cir.add_gate_wids(fun, [wid], wo)
            wouts.append(wo)
        return CirWord(self._cir, wouts)

    def apply_reduce_op(self, fun):
        assert(len(word2) == len(self))
        wouts = []
        for i, wid in enumerate(self._wordids):
            wo = self._cir.add_wire(circuit.ntype.INTER)
            self._cir.add_gate_wids(fun, [wid], wo)
            wouts.append(wo)
        return CirWord(self._cir, wouts)

    def __and__(self, w2):
        return self.apply_binary_op(w2, circuit.gfun.AND)

    def __xor__(self, w2):
        return self.apply_binary_op(w2, circuit.gfun.XOR)

    def __add__(self, w2):
        return self.apply_binary_op(w2, circuit.gfun.SUM)

    def __ne__(self, w2):
        return self.apply_uni_op(w2, circuit.gfun.NOT)

    def sum(self):
        return self.apply_reduce_op()