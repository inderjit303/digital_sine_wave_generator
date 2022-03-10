# Mixed signal design of Digital sinewave generator using eSim:
This repository contains an attempt to mixed signal design of a 8-bit Digital Sine wave generator using eSim

# Abstract
Producing and manipulating the sine wave function is a common problem encountered by circuit designers. Sine wave circuits pose a significant design challenge because they represent a constantly controlled linear oscillator. Sine wave circuitry is required in a number of diverse areas, including audio testing, calibration equipment, transducer drives, power conditioning and automatic test equipment (ATE). Control of frequency, amplitude or distortion level is often required and all three parameters must be simultaneously controlled in many applications with analog and digital approaches. This paper presents detailed design of a 8 bit digital sine wave generator with the help of pseudo-random-sequence (PRS) generator, Look-up table (LUT) and analog low pass filter. 

# Reference Circuit Diagram

<p align="center">
<img src="https://user-images.githubusercontent.com/99788755/157652578-c5bfb134-c1a2-4abe-9431-2b881085eb0c.png">
</p> 
<p align="center">
Fig 1. Pseudo-random-sequence (PRS) generator
</p>

<p align="center">
<img src="https://user-images.githubusercontent.com/99788755/157651325-4f1d954d-92be-4244-bfab-5194208e27d0.png">
</p> 
<p align="center">
Fig 2. Analog Block: Second order Sallen Key Low Pass Filter
</p>

<p align="center">
<img src="https://user-images.githubusercontent.com/99788755/157652101-c89aec12-923b-4a05-b98c-f48f9760511a.png">
</p> 
<p align="center">
Fig 3. Digital Sine wave generator block diagram
</p>

# Reference waveform: 

Fig. 4 depicts desired waveforms at the output of analog Low pass filter which is digitally controlled with input clock frequency.  

<p align="center">
<img src="https://user-images.githubusercontent.com/99788755/157652251-52f845f9-a6f5-4633-b26d-20374c6a3c13.png">
</p> 
<p align="center">
Fig 4.  Output of Analog filter
</p>

# Reference circuit details: 
Here, the digital block consists of a 8 bit pseudo-random-sequence (PRS) generator running at clock frequency of fCLK = 1MHz. This structure is called as Fibonacci Linear feedback shift register (LFSR). The bit positions that affect the next state are called the taps. In the Fig 1, the taps are [6,5,4]. The rightmost bit of the LFSR is called the output bit. The taps are XORed sequentially with the output bit and then fed back into the leftmost bit. The sequence of bits in the rightmost position is called the Pseudo random sequence output which is finite stream of numbers in the range 1-255 equally distributed. In addition a compare function is added, which turns one digital output pin high whenever a value in the shift register (SR) is less the value of the compare input. This will create a stream of high pulses proportional to the compare value. 

Next it is fed to Sine wave look up table (LUT), which look-up table method for sine wave generation. This method, involves the synthesis of sine waves with frequencies which are multiples of the fundamental frequency for which the table elements are calculated and used to approximate a sine wave. Digital block will be implemented in Verilog, whereas analog block consisting of analog LPF will be implemented in eSim as shown in Fig 3. The digital output of the PRS generator is then driving a 2nd order low-pass filter build using standard analog components such opamp, resistors and capacitors as shown in Fig 2. Analog block is implemented using 2nd order Sallen key filter Low pass filter designed for a cutoff frequency fOUT = 1 KHz. 
 
# Software Used

## eSim
It is an Open Source EDA developed by FOSSEE, IIT Bombay. It is used for electronic circuit simulation. It is made by the combination of two software namely NgSpice and KiCAD.
For more details refer:
https://esim.fossee.in/home

## NgSpice
It is an Open Source Software for Spice Simulations. For more details refer:
http://ngspice.sourceforge.net/docs.html

## Makerchip
It is an Online Web Browser IDE for Verilog/System-verilog/TL-Verilog Simulation. Refer
https://www.makerchip.com/

## Verilator
It is a tool which converts Verilog code to C++ objects. Refer: https://www.veripool.org/verilator/

# Circuit diagram in esim 

## Circuit (Attempt 1)  
The following is the first version of schematic in eSim is shown in fig 5

<p align="center">
<img src="https://user-images.githubusercontent.com/99788755/157656849-9fb3ed2e-23b5-40e9-98d4-4816fcfcca8d.png">
</p> 
<p align="center">
Fig 5.  Digital sine wave generator circuit (Attempt 1) 
</p>

First attempt was unsecuccesful, so in 2nd attempt 2nd order sallen key Low pass filter was replaced by RLC circuit tuned at 1KHz frequency as shown in fig 6

<p align="center">
<img src="https://user-images.githubusercontent.com/99788755/157664044-19782a8a-0194-42e6-9f13-b9ae4c03c8b5.png">
</p> 
<p align="center">
Fig 6.  Digital sine wave generator circuit (Attempt 1) 
</p>

# Verilog code for PRS generator block 

<p align="center">
<img src="https://user-images.githubusercontent.com/99788755/157664490-5ce19e50-ff39-43f1-bd8a-bfad2ffa3002.png">
</p> 
<p align="center">
Fig 7.  PRS genereator block
</p>

## Verilog code: 



# Verilog code for Sine wave Look up table block 


<p align="center">
<img src="https://user-images.githubusercontent.com/99788755/157664502-b3234cf4-fe05-4875-9bfb-896fa147734f.png">
</p> 
<p align="center">
Fig 8.  Sine wave looktup table block 
</p>


## Verilog code: 
//Verilog code for sinewave lookup table.
module inderjit_digi_sinewave_generator(clk, dsine, data_out);
//declare input and output
    input clk;
    input dsine; 
    output [7:0] data_out;
//8 bit Sine lookup table   
    reg [7:0] sine [0:16];
//Internal signals  
    integer i;  
    reg [7:0] data_out; 
 //Initialize the sine values with samples. 
        initial begin
        i = 0;
        sine[0] = 0;
        sine[1] = 76;
        sine[2] = 141;
        sine[3] = 185;
        sine[4] = 200;
        sine[5] = 185;
        sine[6] = 141;
        sine[7] = 76;
        sine[8] = 0;
        sine[9] = -76;
        sine[10] = -141;
        sine[11] = -185;
        sine[12] = -200;
        sine[13] = -185;
        sine[14] = -141;
        sine[15] = -76;
        sine[16] = 0;
    end
    
    //At every positive edge of the clock, output a sine wave sample.
    always@ (posedge clk)
    begin
        data_out = sine[i];
        i = i+ 1;
        if(i == 16)
            i = 0;
    end
endmodule

# Acknowlegdements
1. FOSSEE Team, IIT Bombay
2. MakerChip, Redwood EDA
3. Sumanto Kar, eSim Team, FOSSEE
4. VLSI System Design (VSD) Corp. Pvt. Ltd India

# References: 
[1] Wolf, R.V., Bilger, R.C. A digital noise and sine-wave generator. Behavior Research Methods & Instrumentation 9, 345–348 (1977). https://doi.org/10.3758/BF03202254 

[2] E. D. Lipson, K. W. Foster and M. P. Walsh, "A versatile pseudo-random noise generator," in IEEE Transactions on Instrumentation and Measurement, vol. IM-25, no. 2, pp. 112-116, June 1976, doi: 10.1109/TIM.1976.6312323.

[3] https://en.wikipedia.org/wiki/Linear-feedback_shift_register

[4] https://www.isotel.eu/mixedsim/intro/prssine.html

[5] https://www.analog.com/en/technical-articles/an-almost-pure-dds-sine-wave-tone-generator.html
