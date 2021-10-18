import pyvisa
import dill
import numpy as np
import matplotlib.pyplot as plt

import os

wfm_ascii = ''
if not os.path.exists('dill.txt'):
    rm = pyvisa.ResourceManager()
    devices = rm.list_resources()
    print(devices)
    devnum = int(input("which device to pick? "))
    device_addr = devices[devnum]
    #device_addr = 'USB0::10893::6039::CN57266229::0::INSTR'
    print("trying to connect to ", device_addr)
    scope = rm.open_resource(device_addr) # Connect to the scope using the VISA address (see below)
    #print(scope)
    print(scope.query('*IDN?'))




    # Allow plots to appear inline with the IPython notebook
    # scope.read_termination = '\n' # For ascii transfers the read is terminated with a newline character
    scope.write(':WAVeform:SOURce CHANnel1')
    scope.write(':WAVeform:FORMat ASCII')
    scope.write(':WAVeform:POINts 10000')
    wfm_ascii = scope.query(':WAVeform:DATA?') # Get the first 1000 points of waveform data
    #print(wfm_ascii)

    with open('dill.txt', 'wb') as dill_file:
        dill.dump(wfm_ascii, dill_file)
    scope.close()        

else:
    with open('dill.txt', 'rb') as dill_file:
        wfm_ascii = dill.load(dill_file)

#print(wfm_ascii)
x = []
y = []

for st in wfm_ascii.split(','):
    if '#' not in st:
        y.append(float(st))

#print(y)
x = range(0, len(y))
plt.plot(x, y)
plt.show()

#wfm_ascii = wfm_ascii[:-1] # Remove a trailing ','
#wfm = [float(s) for s in wfm_ascii.split(',')] # Convert the ascii list of strings to a list of floats
#x_inc = float(scope.query(":WAV:XINC?")) # Get the waveform's X increment
#x_or = float(scope.query(":WAV:XOR?")) # Get the waveform's X origin
##mem_depth = float(scope.query(":ACQ:POIN?")) # Get the current memory depth
##t = np.linspace(-mem_depth/sa_rate,mem_depth/sa_rate, len(wfm)) # Calculate the sample times of the waveform
#t = np.linspace(x_or, x_or+1001*x_inc, 1000) # Calculate the sample times of the waveform
#plt.plot(t,wfm) # Plot the waveform vs sample times
