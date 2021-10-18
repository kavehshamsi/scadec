# Circuit Deobfuscation/Learning from Adaptive Side-Channel Queries #

* This is the binary/python-source release for the side-channel-based circuit deobfuscation tool discussed in my paper in ICCAD2021.

The repo includes a binary for the Psuedo-Boolean SAT-based deobfuscation tool, plus some source code and hardware setup description for mounting adaptive side-channel attacks (trace-oracle API), using a PicoScope+XL9 chipwhisperer UFO board setup. 

* Version 1.0

* Contacts: 
    - Kaveh Shamsi : kaveh.shamsi@utdallas.edu

## Software Details ##

The goal in generic adaptive side-channel (digital) circuit deobfuscation/learning/analysis is to given the netlist for ce(k, x) a digital circuit with controllable inputs x, and secret inputs k, to recover the value of a secret key vector k+ from adaptive/chosen (or random) queries of the form x+Dx (input-vector + flip-vector) to a power side-channel oracle of ce(k+, x). Traditional cryptographic side-channel analysis is a special case of this problem, where the circuit ce(k, x) is the cryptographic algorithm's hardware implementation (think of AES with k as the key and x as the plaintext input). 

The repo includes a SAT-based approach in addition to traditional statistical techniques like CPA/DPA. The SAT based approach allows for learning k for generic (arbitrary rather than just cryptographic functions) circuits. As long as the circuit can be represented with a set of basic digital gates and the key and non-key inputs are known it can be fed to the tool presented here. You can try passing a single round of PRESENT, or a generic circuit such as a comparator to a key (ce(k, x) = (x == k)) to it.

For now only the binary of the tool is released. The binary is compiled under ubuntu20 g++9. The tool is based on the [neos project](bitbucket/kavehshm/neos). Whereas neos is a tool for functional deobfuscation (recovering k from functional queries to ce(k+, x)), this project is for deobfuscation from power side-channel queries. 

Since the released binary does include the combinational functional attacks in neos as well. Also simple logic-locking (introducing keys into a digital circuit) routines. 

If you have trouble running the binary please contact me (Kaveh Shamsi).

## License ##

The binary is released free of charge with a lax license that includes the licenses for Glucouse (the SAT solver) and cudd (the BDD package), and ABC (the binary of which is included for circuit simplification).


## Hardware Setup ##

The hardware setup uses a ChipWhisperer UFO board along with the XL9 Spartan FPGA target. A PicoScope 3602D USB3.0 is used to read traces. A Teensy 3.2 is used to configure the FPGA and send the flip-clock (which will toggle chosen bits in the input of the circuit) to the FPGA which is used as the trigger for the scope as well. Support for KeySight scopes with VISA is coming. Although nothing matches the speed of the picoscope and is hence strongly recommended.

A given generic circuit in bench format can be embedded within a wrapper that allows for sending in input+flip (x+Dx) patterns serially and also observe outputs to test for functional correctness. Every wire in the bench is kept alive using synthesis directives in the HDL to keep the FPGA circuit as close to the bench file as possible. 

* You will need ISE 14.7 to synthesize the HDL to the XL9 target. You will need a Xilinx USB programmer too. You can purchase cheap inauthentic ones on Amazon (It's legal... Right?). 

* I used Sloeber to program the Teensy board. You can use an arduino setup compatible with Teensy.


The code for the hardware setup is in `./platform`

`./platform/ise` holds the Xilinx FPGA synthesis directories. `./platform/ise/xl9/` is for the XL9 UFO target (only working solution at the moment. Support for the SAKURAG board is coming).

`./platform/sloeber` has the code for the microcontroller (Teensy).

You need to connect the Teensy and the UFO board according to the following pin map from the Teensy source code.
 
```c
const int LED_PIN = LED_BUILTIN;

const int SCA_CLK = 2; // Teensy PIN2 -> UFO : H1
const int SCA_DATA_IN = 3; // Teensy PIN3 -> UFO : H2
const int SCA_RESET = 4; // Teensy PIN4 -> UFO : H3
const int SCA_DATA_OUT = 5; // Teensy PIN5 -> UFO : H4
const int FLIP_CLK = 6; // Teensy PIN6 -> UFO : H5
const int SHIFT_OUT_DATA = 7; // Teensy PIN7 -> UFO : H7
const int SHIFT_OUT_ENABLE = 8; // Teensy PIN8 -> UFO : H8
const int SHIFT_OUT_CLK = 9; // Teensy PIN9 -> UFO : H9
```


Connect the trigger for the scope to `FLIP_CLK`. The UFO board has two headers for `H5`. You should use one to drive it using the Teensy (PIN6 per the above map), and the other one to hook the trigger probe. The code is set up to read the signal on `Channel-B` of the 3206D. 

## Usage ##

You can run the `./bin/scadec` to run software only attacks. Here the trace-collector is simply the hamming model (count the flips in the circuit resulting from a change Dx applied to an input x).

We first lock the c432 benchmark with 10 XOR key gates (random-insertion):

```text
./bin/scadec -e xor ./bench/testing/c432.bench ./bench/testing/c432_enc.bench 10 1

#width xor: 10
picking key : 1
encryption complete for ./bench/testing/c432.bench
number of inserted key-bits: 10
overhead: 6.2%
corrkey=1111111111
```

We can decrypt the circuit functionally by the `-d ex` flags similar to neos, except rather than using the original circuit, we pass neos the correct key. Note that for side-channel attacks, the structure of the original circuit is not relevant. The device that is under attack is simply the locked circuit with the correct key loaded. Hence, ce(k+, x) is the real oracle. `scadec` hence refuses to accept an original circuit co. Instead you pass it the correct key via `key=`. You have to take my word that the attack is not simply returning this key as the correct key guess! It runs the PB-SAT loop and arrives at a key, and only uses the correct key to enable oracle side-channel queries by simulating the ce(k+, x) circuit and counting its wire flip rate.


Here goes the functional attack:


```text
./bin/scadec -d ex ./bench/testing/c432_enc.bench key=1111111111 100
called combinatonal attack... with arg ex
./bench/testing/c432_enc.bench key=1111111111 100
args 
iteration:    1; variables: 405 clauses: 1144 assignments: 1  propagations: 748
iteration:    2; variables: 763 clauses: 1735 assignments: 153  propagations: 2081
iteration:    3; variables: 1121 clauses: 2303 assignments: 315  propagations: 4255
iteration:    4; variables: 1479 clauses: 2615 assignments: 559  propagations: 16495
iteration:    5; variables: 1837 clauses: 2805 assignments: 849  propagations: 56934
no more dips.

Finished! 
iteration=5
key=1111111111
checking key=1111111111

equivalent

time: 0.033913
```

Now for the PowerSATeq side-channel attack/deobfuscation with ABC-based circuit simplification (much more helpful in side-channel pseudo-boolean instances):


```text
./bin/scadec -d pwrsateq --kc_sweep=3 --flipc=1 ./bench/testing/c432_enc.bench key=1111111111 100
called combinatonal attack... with arg pwrsateq
./bench/testing/c432_enc.bench key=1111111111 100
chosen trace collector: hamm
iteration:    1; variables: 3288 clauses: 10863 assignments: 1  propagations: 1
solving with proplimit: 100000 -> 0
ret 0
found power-di: x=111110110110100000100011010000010101  f=000000000000000000000000000000010000  10001100 != 10010100
dec sat query translate 
querying 1111101101101000001000110100000101011111111111  0000000000000000000000000000000100000000000000
called sim_trace coll
called sim_trace coll
power model: 37
queried power value is 37
   #inputs: 80   #output: 1   #dffs: 0   #keys: 10   #gates: 1373
   #inputs: 0   #output: 1   #dffs: 0   #keys: 10   #gates: 577
calling ABC SIMP...
 abc_simp saved gates: 437/140/577  (76%)
pwr kc stats:    #inputs: 0   #output: 1   #dffs: 0   #keys: 10   #gates: 140
iteration:    2; variables: 3570 clauses: 11740 assignments: 1  propagations: 84334
solving with proplimit: 100000 -> 0
ret 0
found power-di: x=110101111100111000110101011101000011  f=000000000001000000000000000000000000  10100010 != 10111100
dec sat query translate 
querying 1101011111001110001101010111010000111111111111  0000000000010000000000000000000000000000000000
called sim_trace coll
called sim_trace coll
power model: 69
queried power value is 69
   #inputs: 80   #output: 1   #dffs: 0   #keys: 10   #gates: 1373
   #inputs: 0   #output: 1   #dffs: 0   #keys: 10   #gates: 659
calling ABC SIMP...
 abc_simp saved gates: 454/205/659  (69%)
pwr kc stats:    #inputs: 0   #output: 1   #dffs: 0   #keys: 10   #gates: 346
iteration:    3; variables: 3982 clauses: 13054 assignments: 1  propagations: 134066
solving with proplimit: 100000 -> 0
ret 0
found power-di: x=111101111111110110010111011101001101  f=000000000000000000000000000000000100  11110100 != 11001100
dec sat query translate 
querying 1111011111111101100101110111010011011111111111  0000000000000000000000000000000001000000000000
called sim_trace coll
called sim_trace coll
power model: 47
queried power value is 47
   #inputs: 80   #output: 1   #dffs: 0   #keys: 10   #gates: 1373
   #inputs: 0   #output: 1   #dffs: 0   #keys: 10   #gates: 679
calling ABC SIMP...
 abc_simp saved gates: 454/225/679  (67%)
pwr kc stats:    #inputs: 0   #output: 1   #dffs: 0   #keys: 10   #gates: 572
iteration:    4; variables: 4434 clauses: 14456 assignments: 1  propagations: 236831
solving with proplimit: 100000 -> 0
ret 0
found power-di: x=111101011111111011011111011111111101  f=000000000000000100000000000000000000  00100100 != 11001100
dec sat query translate 
querying 1111010111111110110111110111111111011111111111  0000000000000001000000000000000000000000000000
called sim_trace coll
called sim_trace coll
power model: 36
queried power value is 36
   #inputs: 80   #output: 1   #dffs: 0   #keys: 10   #gates: 1373
   #inputs: 0   #output: 1   #dffs: 0   #keys: 10   #gates: 628
calling ABC SIMP...
 abc_simp saved gates: 476/152/628  (76%)
pwr kc stats:    #inputs: 0   #output: 1   #dffs: 0   #keys: 10   #gates: 725
iteration:    5; variables: 4740 clauses: 15402 assignments: 1  propagations: 250092
solving with proplimit: 100000 -> 1
ret 1
no more fun&pwr dips
no more dips
no more functional dips.

Finished! 
iteration=5
key=1111111111
checking key=1111111111

equivalent

time: 1.1
```

You can try the `--flipc=1` flag to make to limit the flip-weight of the attack. This can be helpful in deobfuscating some circuits as the solver ruminates less over flipping many inputs and focuses on flipping a small number of inputs at a time which can have downstream simplification benefits (see the paper).

The `hwscadec` is a binary linked against the hardware setup. i.e. it is linked against `libps3000a` which is picoscope's linux library. You need to download the right picoscope drivers and library for your device. Please visit the picoscope website for this. 

Both binaries require `libboost` and `libarmadillo`.

By passing the `--trcl=pico` to the `hwscadec -d [attack]` you can make the attack use real traces in a hardware-in-the-loop setting. 

This requires that you program the FPGA before hand. For this you can try the following command: 
`hwscadec -m -pf <bench-to-program> <num-copies> <ise-dir>`

Where the `bench-to-program` is the bench file for the circuit to be synthesized/downloaded on to the FPGA. You can raise the `num-copies` of the circuit on the FPGA to improve your SNR. You can copy smaller circuits (say a small comparator) multiple times to increase the power signal strength without having to change the shunt resistor value on the UFO target.

You can also navigate to `platform/ise/xl9`. You can run the `scadec/python/create_dut_verilog.py` script to create to embed the locked circuit into HDL. 


```text
usage: create_dut_verilog.py <enc_cir_bench> <dut_verilog_file> <top_verilog_file_pre> <top_verilog_file_post> <num_instance>
```

Here `enc_cir` is the bench file for the locked circuit. `dut_verilog_file` is the verilog conversion of `enc_cir`. `top_verilog_file_pre` is the template for the embedding. This includes the scan-chains and other logic for communicating with the Teensy. `top_verilog_file_post` is the final synthesizable HDL that will be programmed on the Xl9 FPGA for the side-channel attack. 

Here is an example of running this:

```text
cd ./platform/ise/xl9
python3.9 ../../../python/create_dut_verilog.py ../../bench/testing/c432_enc.bench ./dut.v ./sca_unlock_par.v ./sca_unlock_post.v 1
/opt/Xilinx/14.7/ISE_DS/ISE/bin/lin64/xtclsh ./xl9_cw.tcl run_process
/opt/Xilinx/14.7/ISE_DS/ISE/bin/lin64/impact -batch ./prog.cmd
```

Or you can simply run 


```text
./program_with_cir <bench_cir> <num_copies>
```

which should do the same.

It is highly likely that you will have to open the ISE 14.7 GUI once and try and synthesize and program the generated HDL to make sure the right XST files are generated. Also avoid mismatch between my created project and one on your local machine.


## Python Source Code ##

A python module called `pytrace` which includes the hardware trace collection part in a C++ python embedding can be found under `python/pytrace_dir`.

You can navigate to this directory and run `make` to create the module. The module implements the serial communciation and trace read functionality for the UFO+picoscope setup. 

`scadec/python/dec_sca_cpa.py` uses `pytrace` to run a python version of CPA on a locked circuit. This is much slower than the C++ variant, but is open sourced which can be helpful in building adaptive attacks for the UFO+picoscope setup. 
 



