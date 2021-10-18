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
        
        self.gp = GpioController()
        self.gp.open_from_url('ftdi://ftdi:2232:FT2RTNYW/2')
        print(self.gp.is_connected)
        print('{:08b}'.format(self.gp.pins))
        print('{:08b}'.format(self.gp.direction))
        self.gp.set_direction(0b11111111, 0b11111111)
        print('after config')
        print('{:08b}'.format(self.gp.pins))
        print('{:08b}'.format(self.gp.direction))
        
        self.state |= (BITS[SCA_CLK] | BITS[SCA_DATA] | BITS[SCA_RESET])
        self.commit_state()        
        return

    def close(self):
        self.gp.set_direction(0b11111111, 0b00000000)
        return
    
    def __del__(self):
        self.gp.set_direction(0b11111111, 0b00000000)
        return
    
    def commit_state(self):
        self.gp.write(self.state)        
        return

    def set_pin_val(self, pin_num, val):
        bit_mask = 1 << pin_num
        print(bin(self.state))
        if val:
            self.state |= bit_mask
        else:
            self.state &= (bit_mask ^ 0xFF)
        self.commit_state()
        return
        
    def bitbang_send(self, byte):
        self.set_pin_val(SCA_CLK, 1)
        for i in range(0, 8):
            self.set_pin_val(SCA_DATA, (byte >> i))
            time.sleep(WAIT)
            self.set_pin_val(SCA_CLK, 0)
            print('state: ', bin(self.state))
            time.sleep(WAIT)
            self.set_pin_val(SCA_CLK, 1)
        
        self.set_pin_val(SCA_CLK, 1)
        time.sleep(WAIT)
        self.set_pin_val(SCA_DATA, 1)
        return

    def reset_receiver(self):
        self.set_pin_val(SCA_RESET, 1)
        time.sleep(WAIT)
        self.set_pin_val(SCA_RESET, 0)
        time.sleep(WAIT)
        self.set_pin_val(SCA_RESET, 1)
        time.sleep(WAIT)
        return

    def send_to_device(self, bit_index, invals):
        assert len(invals) == NUM_INS    
        
        self.reset_receiver()
        
        num_bytes = int(NUM_INS / 8)
        bytes = []
        for nb in range(0, num_bytes):
            byte2send = 0
            for i in range(0, 8):
                bit = int(invals[nb*8 + i] != 0)
                byte2send += (bit << i)
            print(bin(byte2send)[2:].zfill(8))
            bytes.append(byte2send)
        
        for nb in bytes:
            self.bitbang_send(nb)
    

class ScaUnlock():
    def __init__(self, enc_cir_filename, sim_cir_filename):
        self.enc_cir = Circuit(enc_cir_filename)
        self.sim_cir = Circuit(sim_cir_filename)
    
    
import pyvisa
import dill
import matplotlib.pyplot as plt

class Oscope():
    def __init__(self):    
        self.rm = pyvisa.ResourceManager()
        self.devices = self.rm.list_resources()
        print(self.devices)
        self.devnum = int(input("which device to pick? "))
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
        self.scope.write(':WAVeform:SOURce CHANnel1')
        self.scope.write(':WAVeform:FORMat ASCII')
        self.scope.write(':WAVeform:POINts 10000')
        wfm_ascii = self.scope.query(':WAVeform:DATA?') # Get the first 1000 points of waveform data
        #print(wfm_ascii)

        with open('dill.txt', 'wb') as dill_file:
            dill.dump(wfm_ascii, dill_file)
        
        #print(wfm_ascii)
        x = []
        y = []

        for st in wfm_ascii.split(','):
            if '#' not in st:
                y.append(float(st))
                
        return y
    
    def plot_trace(self, y):
        x = range(0, len(y))
        plt.plot(x, y)
        plt.show()
        return

    
    
if len(sys.argv) != 3:
    print('usage: sca_unlock.py <enc_cir> <sim_cir>')
    exit(1)   
 
cnt = Controller()    
unl = ScaUnlock(sys.argv[1], sys.argv[2])
osc = Oscope()
#unl.enc_cir.write_bench()
NUM_INS = unl.enc_cir.num_ins_and_keys()
print('NUM_INS:', NUM_INS)


while True:
    instr = input('enter character to roll ')
    if instr == 'q':
        cnt.close()
        exit(1)
    invals = np.random.randint(2, size=NUM_INS)
    bit_index = np.random.randint(0, NUM_INS - 1)
    print('bit index: {}'.format(bit_index))
    print('invals: ', end='')
    for b in invals:
        print(b, end='')
    print()
    
    cnt.send_to_device(bit_index, invals)
    time.sleep(1)
    #trace = osc.collect_trace()
    #osc.plot_trace(trace)
        
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
            

