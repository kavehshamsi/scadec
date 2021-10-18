import time
#from pyftdi.ftdi import Ftdi
#ft = Ftdi()
#url = 'ftdi://ftdi:2232:FT2RTNYW/2'
#ft.open_bitbang_from_url(url, 0b00001111)
#print(ft.is_connected)
#print(ft.bitbang_enabled)
#print(ft.device_version)
#print(ft.fifo_sizes)
#print(ft.get_identifiers(url))
#print(ft.has_mpsse)
#print(ft.has_wide_port)
#print(ft.ic_name)
#print('{:08b}'.format(ft.read_pins()))
#time.sleep(5)
#exit(1)

from pyftdi.gpio import GpioController
import sys
sys.path.insert(1, '/home/kaveh/Development/eclipse/neos/script/')
from circuit import *
import vparse
import numpy as np
import os
import serial

SCA_CLK = 0
SCA_DATA = 1
SCA_RESET = 2

BITS = [1, 2, 4, 16, 32, 64, 128, 256]

NUM_INS = 51
WAIT = 0.01

class Controller:
    def __init__(self):
        self.gp = ''
        self.state = 0
        
        import serial.tools.list_ports
        serports = list(serial.tools.list_ports.comports())
        print([port.name for port in serports])
        
        #sp = int(input('select com port for usb2fpga:'))
        
        sp = -1
        for i in range(len(serports)):
            if 'ACM' in serports[i].name:
                sp = i
            
        if sp not in range(0, len(serports)):
            print('invalid port {}'.format(sp))
            exit(1)
        
        self.ser = serial.Serial('/dev/' + serports[sp].name, 115200, timeout=0.1)
        return

    def reset_receiver(self):
        return

    def send_to_device(self, invals, flip_mask):
        assert len(invals) == NUM_INS    
        assert len(flip_mask) == NUM_INS
        
        
#        while True:
#            string = input('input:')
#            self.ser.write(string.encode())
#            print(self.ser.read(10000).decode())
        
        self.ser.write(b'rr')
        time.sleep(0.005)
        string = ''
        #string = self.ser.readline().decode()
        #string += self.ser.readline().decode()
        #string += self.ser.readline().decode()
        
#        print(string)
#        if 'enter bit index' in string:
#            print('Setup success!')
#        else:
#            print('bad response!')
#            exit(1)
        
        #self.ser.write('{}\n'.format(bit_index).encode())
        #string = self.ser.read(100)
        #print('got back: ', string)
        
#        if 'enter input values' in string:
#            print('index success')
#        else:
#            print('bad response!')
#            exit(1)
#        

        #print('end')
        self.ser.write(b'0')
        
        #self.ser.reset_input_buffer()
        
        message = b''
        for b in invals:
            print(b, end='')
            message += '{}'.format(b).encode()

            
        for b in flip_mask:
            print(b, end='')
            message += '{}'.format(b).encode()
        
        self.ser.write(message)
        # self.ser.flush()
#        # time.sleep(1)
        string = b''
        i = 0
        start = time.time()
        
        while b'success' not in string:
            string = self.ser.readline()
            print('got:', string)
            i += 1
            if b'failed' in string or i > 4:
                print('FPGA message not sent properly!')
                self.send_to_device(invals, flip_mask)
    
        print('Ack time: ', time.time() - start)
        
        print('done ', string)
        return           


import copy
import pyvisa
import dill
import matplotlib.pyplot as plt

class Oscope():
    def __init__(self):
        self.rm = pyvisa.ResourceManager()
        self.devices = self.rm.list_resources()
        print(self.devices)
        self.devnum = -1
        for i in range(len(self.devices)):
            if 'USB0' in self.devices[i]:
                self.devnum = i
        #self.devnum = int(input("which device to pick? "))
        self.device_addr = self.devices[self.devnum]
        #device_addr = 'USB0::10893::6039::CN57266229::0::INSTR'
        print("trying to connect to ", self.device_addr)
        self.scope = self.rm.open_resource(self.device_addr) # Connect to the scope using the VISA address (see below)
        #print(scope)
        print(self.scope.query('*IDN?'))
        return
    
    def __del__(self):
        self.scope.close()
        return
    
    def collect_trace(self):
        # Allow plots to appear inline with the IPython notebook
        # scope.read_termination = '\n' # For ascii transfers the read is terminated with a newline character
        start = time.time()
        self.scope.write(':WAVeform:SOURce CHANnel2')
        self.scope.write(':WAVeform:FORMat ASCII')
        self.scope.write(':WAVeform:POINts 1000')
        print('format time: ', time.time() - start)
        
        start = time.time()
        print('Reading SCOPE...')
        wfm_ascii = self.scope.query(':WAVeform:DATA?') 
        print('Done')
        print('query time is: ', time.time() - start)
        #print(wfm_ascii)
        
        #print(wfm_ascii)
        #print('ascii table size: ', len(wfm_ascii))
        x = []
        y = []

        i = 0
        for st in wfm_ascii.split(','):
            i += 1
            if i > 5 or '#' not in st:
                y.append(float(st))
                
        
        print('data width: ', len(y))
        #print(y)
        #exit(1)        
        return y
    
    def plot_trace(self, y):
        x = range(0, len(y))
        plt.plot(x, y)
        plt.show()
        return


class ScaUnlock():
    def __init__(self, enc_cir_filename, sim_cir_filename):
        self.enc_cir = Circuit(enc_cir_filename)
        self.sim_cir = Circuit(sim_cir_filename)
        
        return
    
    
    def hamming_model(self, input_vec, flip_mask, hamm_function = 0):
    
        i = 0
        sim_map1 = dict()
        sim_map2 = dict()
        
        for xid in self.enc_cir.ins_and_keys():
            sim_map1[xid] = input_vec[i]
            i += 1

        sim_map2 = copy.deepcopy(sim_map1)

        i = 0
        for xid in self.enc_cir.ins_and_keys():
            if flip_mask[i] == 1:
                sim_map2[xid] = ~sim_map1[xid] & 1
            i += 1
            
        self.enc_cir.simulate(sim_map1)
        self.enc_cir.simulate(sim_map2)
        
        hamming_distance = 0.0

        
        
        if hamm_function == 0:
            inset = set(self.enc_cir.ins_and_keys())
            for xid, val in sim_map1.items():
                if val != sim_map2[xid] and xid not in inset:
                    hamming_distance += 1.0

        elif hamm_function == 1:
            for xid, val in sim_map1.items():
                if val != sim_map2[xid]:
                    hamming_distance += 1.0

        elif hamm_function == 2:
            for b in flip_mask:
                if b == 1:
                    hamming_distance += 1.0
                
        print('Hamm is : ', hamming_distance,  hamming_distance / float(self.enc_cir.num_wires()))
        
        return hamming_distance / float(self.enc_cir.num_wires())
        
        
    def collect_trace(self, invals, flip_mask):
        start = time.time()
        self.cnt.send_to_device(invals, flip_mask)
        print('device send time: ', time.time() - start)
        time.sleep(0.05)
        trace = self.osc.collect_trace()
        print('trace collect time: ', time.time() - start)
        return trace
    
    def run_attack_v1(self):
        self.cnt =  Controller()
        self.osc = Oscope()
        self.num_ins = unl.enc_cir.num_ins_and_keys()
        print('NUM_INS:', self.num_ins)
        
        while True:
            instr = input('enter character to roll ')
            if instr == 'q':
                cnt.close()
                exit(1)
            invals = np.random.randint(2, size=NUM_INS)
            bit_index = np.random.randint(0, NUM_INS - 1)
            flip_mask = np.zeros((NUM_INS,), dtype=int)
            flip_mask[bit_index] = 1
            print('invals: ', end='')
            for b in invals:
                print(b, end='')
            print('\nflipms: ', end='')
            for b in flip_mask:
                print(b, end='')
            print()
            
            trace = self.collect_trace(invals, flip_mask)
            self.osc.plot_trace(trace)    
        return
        


    def run_attack_v2(self):
        self.num_ins = unl.enc_cir.num_ins_and_keys()
        print('NUM_INS:', self.num_ins)
        self.num_traces = 10000
        
        dill_filename = 'traces.dill'
        traces = []
        vectors = []
        pwrmodel_vals = []
        
        if not os.path.isfile(dill_filename):
            if input('Are you sure you want to collect traces? [yes]') != 'yes':
                exit(1)
            
            self.cnt =  Controller()
            self.osc = Oscope()
            traces = []
            vectors = []
            
            for nt in range(self.num_traces):
                invals = np.random.randint(2, size=self.num_ins)
                bit_index = np.random.randint(0, self.num_ins - 1)
                flip_mask = np.random.randint(2, size=self.num_ins)
                #flip_mask = np.zeros((self.num_ins,), dtype=int)
                #flip_mask[bit_index] = 1
                vectors.append((invals, flip_mask))
                
                print('invals: ', end='')
                for b in invals:
                    print(b, end='')
                print('\nflipms: ', end='')
                for b in flip_mask:
                    print(b, end='')
                print()
                
                traces.append(self.collect_trace(invals, flip_mask))
                #osc.plot_trace(trace)
                nt += 1
            
            self.attack_data = (vectors, traces)
            with open('traces.dill', 'wb') as fn:
                dill.dump(self.attack_data, fn)

        else:
            with open('traces.dill', 'rb') as fn:
                self.attack_data = dill.load(fn)
         
        
        # analysis step
        traces = self.attack_data[1]
        vectors = self.attack_data[0]
        self.num_points = len(traces[0])
        print('num_points is: ', self.num_points)
        np_traces = np.asfarray(traces)
        print(np_traces.shape)
        
        pwrmodel_vals = np.zeros((3, self.num_traces))
        i = 0
        for invals, flip_mask in vectors:
            #print(invals, flip_mask)
            for j in range(3):
                hamm = self.hamming_model(invals, flip_mask, j)
                pwrmodel_vals[j][i] = float(hamm)
            i += 1
            
        print(pwrmodel_vals.shape,  np_traces.shape)

        time_x = np.arange(self.num_points)        
        sig_power = np.zeros(self.num_traces, dtype=float)
        sig_power = np.sum(np_traces**2, axis=1)
        print(sig_power.shape)
        maxp = np.argmax(pwrmodel_vals[0])
        minp = np.argmin(pwrmodel_vals[0])
        
        from collections import defaultdict
        avg_dict = dict()
        avg_count = dict()
        for i in range(self.num_traces):
            if pwrmodel_vals[0][i] not in avg_dict:
                avg_dict[pwrmodel_vals[0][i]] = 0
                avg_count[pwrmodel_vals[0][i]] = 0

            avg_dict[pwrmodel_vals[0][i]] += sig_power[i] 
            avg_count[pwrmodel_vals[0][i]] += 1
        
        x = []
        y = []
        for p in sorted(avg_dict):
            x.append(p)
            y.append(avg_dict[p]/avg_count[p])
        
        plt.scatter(pwrmodel_vals[0], sig_power)
        plt.plot(x, y)
        plt.show()
        for i in range(self.num_traces):
            if i == minp:
                plt.plot(time_x, np_traces[i], 'b')                
            elif i == maxp:
                plt.plot(time_x, np_traces[i], 'r')                
            else:
                plt.plot(time_x, np_traces[i], 'gray', linewidth=0.05)                
        #plt.plot(time_x, np_traces[maxp], 'b', time_x, np_traces[minp], 'r')
        plt.show()
    
        import scipy.stats        
        
        x = np.arange(self.num_points)
        y = np.zeros((4, self.num_points), dtype=float)
        
        randvec = np.random.uniform(-1, 1, self.num_traces)

        np_traces = np_traces**2
        
        for xp in x:
            #print(np_traces[:, xp].shape, pwrmodel_vals.shape)
            y[0][xp] = scipy.stats.pearsonr(np_traces[:, xp], pwrmodel_vals[0])[0]
            y[1][xp] = scipy.stats.pearsonr(np_traces[:, xp], pwrmodel_vals[1])[0]
            y[2][xp] = scipy.stats.pearsonr(np_traces[:, xp], pwrmodel_vals[2])[0]
            y[3][xp] = scipy.stats.pearsonr(np_traces[:, xp], np.random.uniform(-1, 1, self.num_traces))[0]
        
        plt.plot(x, y[0], label='y0')
        plt.plot(x, y[1], label='y1')
        plt.plot(x, y[2], label='y2')
        plt.plot(x, y[3], label='y3')
        plt.legend()
        plt.show()
        return
        
    
if __name__ == '__main__':    
    
    if len(sys.argv) != 3:
        print('usage: sca_unlock.py <enc_cir> <sim_cir>')
        exit(1)   

    unl = ScaUnlock(sys.argv[1], sys.argv[2])
    unl.run_attack_v2()
    #unl.enc_cir.write_bench()
        
#    TEST MODE
#while True:
#    instr = input("enter command: ")
#    cnt.bitbang_send(ord(instr[0]))
#    
#    if instr == 'r':
#        cnt.reset_receiver()
#    else:
#        bit_index = int(input("enter input index: "))
#        input_bits = ''
#        while len(input_bits) < NUM_INS:
#            input_bits += input('enter input bits ({0}/{1}): '.format(len(input_bits), NUM_INS)) 
#        input_bits = list(input_bits[0:NUM_INS - 1])
#        
#        num_bytes = int(NUM_INS / 8)
#        bytes = []
#        for nb in range(0, num_bytes):
#            byte2send = 0
#            for i in range(0, 8):
#                bit = int(input_bits[nb*8 + i] == '1')
#                byte2send += (bit << i)
#            print(bin(byte2send))
#            bytes.append(byte2send)

#        for byte in bytes:
#            cnt.bitbang_send(byte)
            

