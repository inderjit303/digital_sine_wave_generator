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

# PRS generator block 

<p align="center">
<img src="https://user-images.githubusercontent.com/99788755/157664490-5ce19e50-ff39-43f1-bd8a-bfad2ffa3002.png">
</p> 
<p align="center">
Fig 7.  PRS generator block
</p>

## Verilog code: 
```
module inderjit_prs8bit_generator (clk, rst, out);
    input clk, rst;
    reg [8:1] compare;
    output reg out;
    reg [8:1] sr;
    //reg [8:1] compare;
    always @(posedge clk)
    begin
        if (rst) begin
            sr  <= 8'b10101010;     // initial non-zero value
            out <= 0;
        end
        else begin
            sr[8:2] <= sr[7:1];
            sr[1]   <= sr[4] ^ sr[5] ^ sr[6] ^ sr[8];
	    compare = 8'h80;
            out     <= (compare >= sr);    
        end
    end
endmodule
```

## Makerchip code: 
```
\TLV_version 1d: tl-x.org
\SV
/* verilator lint_off UNUSED*/  /* verilator lint_off DECLFILENAME*/  /* verilator lint_off BLKSEQ*/  /* verilator lint_off WIDTH*/  /* verilator lint_off SELRANGE*/  /* verilator lint_off PINCONNECTEMPTY*/  /* verilator lint_off DEFPARAM*/  /* verilator lint_off IMPLICIT*/  /* verilator lint_off COMBDLY*/  /* verilator lint_off SYNCASYNCNET*/  /* verilator lint_off UNOPTFLAT */  /* verilator lint_off UNSIGNED*/  /* verilator lint_off CASEINCOMPLETE*/  /* verilator lint_off UNDRIVEN*/  /* verilator lint_off VARHIDDEN*/  /* verilator lint_off CASEX*/  /* verilator lint_off CASEOVERLAP*/  /* verilator lint_off PINMISSING*/ /* verilator lint_off BLKANDNBLK*/  /* verilator lint_off MULTIDRIVEN*/  /* verilator lint_off WIDTHCONCAT*/  /* verilator lint_off ASSIGNDLY*/  /* verilator lint_off MODDUP*/  /* verilator lint_off STMTDLY*/  /* verilator lint_off LITENDIAN*/  /* verilator lint_off INITIALDLY*/
//Your Verilog/System Verilog Code Starts Here:

module inderjit_prs8bit_generator (clk, rst, out);
    input clk, rst;
    reg [8:1] compare;
    output reg out;
    reg [8:1] sr;
    //reg [8:1] compare;
    always @(posedge clk)
    begin
        if (rst) begin
            sr  <= 8'b10101010;     // initial non-zero value
            out <= 0;
        end
        else begin
            sr[8:2] <= sr[7:1];
            sr[1]   <= sr[4] ^ sr[5] ^ sr[6] ^ sr[8];
	    compare = 8'h80;
            out     <= (compare >= sr);    
        end
    end
endmodule


//Top Module Code Starts here:
	module top(input logic clk, input logic reset, input logic [31:0] cyc_cnt, output logic passed, output logic failed);
		logic  rst;//input
		logic  out;//output
//The $random() can be replaced if user wants to assign values
		assign rst = reset;
		inderjit_prs8bit_generator inderjit_prs8bit_generator(.clk(clk), .rst(rst), .out(out));
	
\TLV
//Add \TLV here if desired                                     
\SV
endmodule
```

## Makerchip plots
<p align="center">
<img src="https://user-images.githubusercontent.com/99788755/157675138-d0c3ee30-9377-4740-b1a1-d2958eeb0f2a.png">
</p> 
<p align="center">
Fig 8.  Makerchip plots for PRS generator (Compressed version: Compare value 11111110) 
</p>

<p align="center">
<img src="https://user-images.githubusercontent.com/99788755/157675162-61685b52-6ee3-4d8a-bf16-16d07941b3d7.png">
</p> 
<p align="center">
Fig 9.  Makerchip plots for PRS generator (Compare value 11111110) 
</p>


<p align="center">
<img src="https://user-images.githubusercontent.com/99788755/157675195-5fbe69cf-504c-4653-906b-82803f48b3b5.png">
</p> 
<p align="center">
Fig 10.  Makerchip plots for PRS generator (Compare value 10000000) 
</p>


# Sine wave Look up table block 

<p align="center">
<img src="https://user-images.githubusercontent.com/99788755/157664502-b3234cf4-fe05-4875-9bfb-896fa147734f.png">
</p> 
<p align="center">
Fig 8.  Sine wave looktup table block 
</p>


## Verilog code: 
```
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
```

## Makerchip code: 
```
\TLV_version 1d: tl-x.org
\SV
/* verilator lint_off UNUSED*/  /* verilator lint_off DECLFILENAME*/  /* verilator lint_off BLKSEQ*/  /* verilator lint_off WIDTH*/  /* verilator lint_off SELRANGE*/  /* verilator lint_off PINCONNECTEMPTY*/  /* verilator lint_off DEFPARAM*/  /* verilator lint_off IMPLICIT*/  /* verilator lint_off COMBDLY*/  /* verilator lint_off SYNCASYNCNET*/  /* verilator lint_off UNOPTFLAT */  /* verilator lint_off UNSIGNED*/  /* verilator lint_off CASEINCOMPLETE*/  /* verilator lint_off UNDRIVEN*/  /* verilator lint_off VARHIDDEN*/  /* verilator lint_off CASEX*/  /* verilator lint_off CASEOVERLAP*/  /* verilator lint_off PINMISSING*/ /* verilator lint_off BLKANDNBLK*/  /* verilator lint_off MULTIDRIVEN*/  /* verilator lint_off WIDTHCONCAT*/  /* verilator lint_off ASSIGNDLY*/  /* verilator lint_off MODDUP*/  /* verilator lint_off STMTDLY*/  /* verilator lint_off LITENDIAN*/  /* verilator lint_off INITIALDLY*/
//Your Verilog/System Verilog Code Starts Here:

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
        i = i + 1;
        if(i == 16)
            i = 0;
    end

endmodule


//Top Module Code Starts here:
	module top(input logic clk, input logic reset, input logic [31:0] cyc_cnt, output logic passed, output logic failed);
		logic  dsine;//input
		logic  [7:0] data_out;//output
//The $random() can be replaced if user wants to assign values
		assign dsine = reset;
		inderjit_digi_sinewave_generator inderjit_digi_sinewave_generator(.clk(clk), .dsine(dsine), .data_out(data_out));
	
\TLV
//Add \TLV here if desired                                     
\SV
endmodule

```
## Makerchip plots

<p align="center">
<img src="https://user-images.githubusercontent.com/99788755/157673803-95fc1c13-526d-46d0-9ed6-d3d2b123e52f.png">
</p> 
<p align="center">
Fig 11.  Makerchip plots for Sine Wave LUT 
</p>

# Netlist 
```
* /home/inderjitsingh/esim_mixed_signal_marathon_2022/digital_sine_wave/digital_sine_wave.cir

.include 10bitDAC.sub
* u1  net-_u1-pad1_ net-_u1-pad2_ net-_u1-pad3_ inderjit_prs8bit_generator
* u2  net-_u2-pad1_ net-_u1-pad3_ net-_u2-pad3_ net-_u2-pad4_ net-_u2-pad5_ net-_u2-pad6_ net-_u2-pad7_ net-_u2-pad8_ net-_u2-pad9_ net-_u2-pad10_ inderjit_digi_sinewave_generator
* u3  clk reset net-_u1-pad1_ net-_u1-pad2_ adc_bridge_2
* u6  net-_u2-pad3_ net-_u2-pad4_ net-_u2-pad5_ net-_u2-pad6_ net-_u2-pad7_ net-_u2-pad8_ net-_u2-pad9_ net-_u2-pad10_ net-_u6-pad9_ net-_u6-pad10_ net-_u6-pad11_ net-_u6-pad12_ net-_u6-pad13_ net-_u6-pad14_ net-_u6-pad15_ net-_u6-pad16_ dac_bridge_8
v1  clk gnd pulse(0 5 500n 50n 50n 488.28n 976.56n)
v2  reset gnd pulse(0 5 0 50n 50n 2u 1000u)
r1  dac_out net-_l1-pad1_ 130
* u7  dac_out plot_v1
* u8  analog_out plot_v1
* u4  reset plot_v1
* u5  clk plot_v1
l1  net-_l1-pad1_ analog_out 10mh
c2  analog_out gnd 2.5u
x1 net-_u6-pad16_ net-_u6-pad15_ net-_u6-pad14_ net-_u6-pad13_ net-_u6-pad12_ net-_u6-pad11_ net-_u6-pad10_ net-_u6-pad9_ gnd gnd dac_out 10bitDAC
* u9  clk net-_u2-pad1_ adc_bridge_1
a1 [net-_u1-pad1_ ] [net-_u1-pad2_ ] [net-_u1-pad3_ ] u1
a2 [net-_u2-pad1_ ] [net-_u1-pad3_ ] [net-_u2-pad3_ net-_u2-pad4_ net-_u2-pad5_ net-_u2-pad6_ net-_u2-pad7_ net-_u2-pad8_ net-_u2-pad9_ net-_u2-pad10_ ] u2
a3 [clk reset ] [net-_u1-pad1_ net-_u1-pad2_ ] u3
a4 [net-_u2-pad3_ net-_u2-pad4_ net-_u2-pad5_ net-_u2-pad6_ net-_u2-pad7_ net-_u2-pad8_ net-_u2-pad9_ net-_u2-pad10_ ] [net-_u6-pad9_ net-_u6-pad10_ net-_u6-pad11_ net-_u6-pad12_ net-_u6-pad13_ net-_u6-pad14_ net-_u6-pad15_ net-_u6-pad16_ ] u6
a5 [clk ] [net-_u2-pad1_ ] u9
* Schematic Name:                             inderjit_prs8bit_generator, NgSpice Name: inderjit_prs8bit_generator
.model u1 inderjit_prs8bit_generator(rise_delay=1.0e-9 fall_delay=1.0e-9 input_load=1.0e-12 instance_id=1 ) 
* Schematic Name:                             inderjit_digi_sinewave_generator, NgSpice Name: inderjit_digi_sinewave_generator
.model u2 inderjit_digi_sinewave_generator(rise_delay=1.0e-9 fall_delay=1.0e-9 input_load=1.0e-12 instance_id=1 ) 
* Schematic Name:                             adc_bridge_2, NgSpice Name: adc_bridge
.model u3 adc_bridge(in_low=1.0 in_high=2.0 rise_delay=1.0e-9 fall_delay=1.0e-9 ) 
* Schematic Name:                             dac_bridge_8, NgSpice Name: dac_bridge
.model u6 dac_bridge(out_low=0.0 out_high=5.0 out_undef=0.5 input_load=1.0e-12 t_rise=1.0e-9 t_fall=1.0e-9 ) 
* Schematic Name:                             adc_bridge_1, NgSpice Name: adc_bridge
.model u9 adc_bridge(in_low=1.0 in_high=2.0 rise_delay=1.0e-9 fall_delay=1.0e-9 ) 
.tran 1e-06 40e-06 0e-00

* Control Statements 
.control
option noopalter
run
print allv > plot_data_v.txt
print alli > plot_data_i.txt
plot v(dac_out)
plot v(analog_out)
plot v(reset)
plot v(clk)
.endc
.end
```


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
