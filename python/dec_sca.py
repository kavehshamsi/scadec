
from circuit import *
from dec_base import *
import z3
import time

class pwrdipObj(dipObj):
    def __init__(self):
        super().__init__()
        self.flips = []
        self.pwrsig = -1
        return

class CirDecryptSca(CirDecrypt):
    def __init__(self, enc_cir, corrkey):
        super().__init__(None, enc_cir, corrkey)
        return

    def query_pwr_di(self, pwdi):
        simmap0 = dict()
        simmap1 = dict()
        ind = 0
        for xid in self.enc_cir.inputs():
            sxid = self.enc2sim[xid]
            simmap0[sxid] = pwdi.inputs[ind]
            simmap1[sxid] = pwdi.inputs[ind] ^ pwdi.flips[ind]
            ind += 1

        ind = 0
        for kid in self.enc_cir.keys():
            simmap0[kid] = self.corrkey[ind]
            simmap1[kid] = self.corrkey[ind]
            ind += 1

        self.enc_cir.simulate(simmap0)
        self.enc_cir.simulate(simmap1)

        pwdi.pwrsig = 0

        for wid in self.enc_cir.wires():
            if self.enc_cir.is_input(wid) or self.enc_cir.is_key(wid):
                continue
            if simmap0[wid] != simmap1[wid]:
                pwdi.pwrsig += 1

        print('dis: pwr={0} '.format(pwdi.pwrsig), end='')
        return


# side channel z3 attack
class CirDecryptScaZ3(CirDecryptSca, CirDecryptZ3):
    def __init__(self, enc_cir, corrkey, iteration_limit=20):
        super().__init__(None, enc_cir, corrkey)
        self.pwrcir = None
        self.pwr_mitter = None
        self.pwr_iteration = 0
        return

    def build_pwr_mitter(self, enc_cir):

        self.pwrcir = copy.deepcopy(enc_cir)
        added2new = dict()
        for xid in enc_cir.inputs():
            xfliped = self.pwrcir.add_wire(ntype.INTER, enc_cir.name(xid) + '_fl')
            xflipin = self.pwrcir.add_wire(ntype.IN, enc_cir.name(xid) + '_$f')
            self.pwrcir.add_gate_wids(gfun.XOR, [xflipin, xid], xfliped)
            added2new[xid] = xfliped

        for kid in enc_cir.keys():
            added2new[kid] = kid

        self.pwrcir.add_circuit(enc_cir, added2new, '_$f')
        #self.pwrcir.write_bench()

        ind = 0
        for oid in enc_cir.wires():
            if enc_cir.is_input(oid) or enc_cir.is_key(oid):
                continue
            onm1 = enc_cir.name(oid)
            onm2 = onm1 + '_$f'
            oid1 = self.pwrcir.find_wcheck(onm1)
            oid2 = self.pwrcir.find_wcheck(onm2)
            pwrxor = self.pwrcir.add_wire(ntype.INTER, 'pwr_{0}'.format(ind))
            self.pwrcir.add_gate_wids(gfun.XOR, {oid1, oid2}, pwrxor)
            if enc_cir.is_output(oid1):
                self.pwrcir.set_wiretype(oid1, ntype.INTER)
                self.pwrcir.set_wiretype(oid2, ntype.INTER)

            ind += 1

        #self.pwrcir.write_bench()

        self.pwr_mitter = copy.deepcopy(self.pwrcir)
        added2new = dict()

        for xid in self.pwrcir.inputs():
            added2new[xid] = xid

        self.pwr_mitter.add_circuit(self.pwrcir, added2new, '_$1')
        self.pwr_mitter.write_bench()

        # now add to solver and build non-boolean formula
        self.pwrmitt2var = dict()
        for kid in enc_cir.keys():
            knm0 = enc_cir.name(kid)
            knm1 = knm0 + '_$1'
            kid0 = self.pwr_mitter.find_wcheck(knm0)
            kid1 = self.pwr_mitter.find_wcheck(knm1)
            mkid0 = self.mitter.find_wcheck(knm0)
            mkid1 = self.mitter.find_wcheck(knm1)
            self.pwrmitt2var[kid0] = self.mittwid2var[mkid0]
            self.pwrmitt2var[kid1] = self.mittwid2var[mkid1]

        add_circuit_to_solver(self.pwr_mitter, self.solver, self.pwrmitt2var)

        # add accumulator and comparators
        self.pwidvec0 = []
        self.pwidvec1 = []
        ind = 0
        for oid in enc_cir.wires():
            if enc_cir.is_input(oid) or enc_cir.is_key(oid):
                continue
            pwnm0 = 'pwr_{0}'.format(ind)
            pwnm1 = pwnm0 + '_$1'
            pwid0 = self.pwr_mitter.find_wcheck(pwnm0)
            pwid1 = self.pwr_mitter.find_wcheck(pwnm1)
            self.pwidvec0.append(pwid0)
            self.pwidvec1.append(pwid1)
            ind += 1

        print(len(self.pwidvec0), len(self.pwidvec1))
        self.accu0 = add_count_ones_to_solver(self.pwidvec0, self.solver, self.pwrmitt2var)
        self.accu1 = add_count_ones_to_solver(self.pwidvec1, self.solver, self.pwrmitt2var)

        self.pwr_dis_var = (self.accu0 != self.accu1)
        return

    def solve_for_pwr_di(self):
        status = self.solver.check([self.pwr_dis_var, self.pwr_const_var])
        if status == z3.unsat:
            return None
        elif status == z3.sat:
            pwdi = pwrdipObj()

            #print(self.solver.model())
            for xid in self.enc_cir.inputs():
                xid = self.pwr_mitter.find_wcheck(self.enc_cir.name(xid))
                fid = self.pwr_mitter.find_wcheck(self.enc_cir.name(xid) + '_$f')
                xv = self.pwrmitt2var[xid]
                fv = self.pwrmitt2var[fid]
                b = z3.is_true(self.solver.model()[xv])
                fb = z3.is_true(self.solver.model()[fv])
                #print(int(b), end='')
                pwdi.inputs.append(b)
                pwdi.flips.append(fb)

            print('found power dip: ', end='')

            print('x=', end='')
            for x in pwdi.inputs:
                print(int(x), end='')

            print('  f=', end='')
            for x in pwdi.flips:
                print(int(x), end='')
            print()

            print(self.solver.model()[self.accu0], ' != ', self.solver.model()[self.accu1])

            return pwdi
        else:
            assert(False)

    def add_pwr_constraint(self, pwdi):
        varmap = dict()
        for kid in self.pwr_mitter.keys():
            knm = self.pwr_mitter.name(kid)
            mkid = self.mitter.find_wcheck(knm)
            varmap[kid] = self.mittwid2var[mkid]

        ind = 0
        for xid in self.enc_cir.inputs():
            xnm = self.enc_cir.name(xid)
            pwrxid = self.pwr_mitter.find_wcheck(xnm)
            pwrfid = self.pwr_mitter.find_wcheck(xnm + '_$f')
            varmap[pwrxid] = self.solver_one if pwdi.inputs[ind] else self.solver_zero
            varmap[pwrfid] = self.solver_one if pwdi.flips[ind] else self.solver_zero
            ind += 1

        add_circuit_to_solver(self.pwr_mitter, self.solver, varmap)

        pwrsig0 = add_count_ones_to_solver(self.pwidvec0, self.solver, varmap)
        pwrsig1 = add_count_ones_to_solver(self.pwidvec1, self.solver, varmap)

        print('adding power constraint at ', pwdi.pwrsig)
        self.pwr_const_var = z3.And(pwrsig0 == pwdi.pwrsig, pwrsig1 == pwdi.pwrsig, self.pwr_const_var)
        return

    def init_solver_pwr(self):
        self.init_solver()
        self.pwr_const_var = self.solver_one
        return

    def extract_key_pwr(self):
        if not self.solver.check(self.pwr_const_var):
            print('constraints not solvable')
            exit(1)

        extkey = []
        for kid in self.enc_cir.keys():
            knm = self.enc_cir.name(kid)
            mittid = self.mitter.find_wcheck(knm)
            kv = self.mittwid2var[mittid]
            extkey.append(z3.is_true(self.solver.model()[kv]))

        return extkey

    def solve_pwr(self):
        self.build_mitter(self.enc_cir)
        self.build_iocir(self.enc_cir)
        self.init_solver_pwr()
        self.build_pwr_mitter(self.enc_cir)

        while True:
            di = self.solve_for_di()

            if di is None:
                print('functional mitter unsat')
                break

            pwdi = self.solve_for_pwr_di()

            if pwdi is None:
                print('power mitter unsat')
                break

            self.iteration += 1

            if self.iteration_limit != -1 and self.iteration >= self.iteration_limit:
                print('reached iteration limit')
                break

            self.query_pwr_di(pwdi)
            self.add_pwr_constraint(pwdi)

        self.curkey = self.extract_key_pwr()
        print('last key=', end='')
        for kb in self.curkey:
            print(int(kb), end='')
        print()

        self.check_key(self.curkey)


        return


if __name__ == '__main__':
    if len(sys.argv) != 5:
        print('usage: dec_z3.py <sim_cir> <enc_cir> <correct_key> <iterations>')
        exit(1)
    sim_cir = Circuit(sys.argv[1])
    enc_cir = Circuit(sys.argv[2])

    corrkey = [int(x) for x in (sys.argv[3].split('=')[1])]

    cdec = CirDecryptScaZ3(sim_cir, enc_cir, corrkey, int(sys.argv[4]))
    cdec.solve_pwr()

