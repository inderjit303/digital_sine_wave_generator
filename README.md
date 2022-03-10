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
Here, the digital block consists of a 8 bit pseudo-random-sequence (PRS) generator running at clock frequency of fCLK = 1MHz. This structure is called as Fibonacci Linear feedback shift register (LFSR). The bit positions that affect the next state are called the taps. In the Fig 1, the taps are [6,5,4]. The rightmost bit of the LFSR is called the output bit. The taps are XORed sequentially with the output bit and then fed back into the leftmost bit. The sequence of bits in the rightmost position is called the Pseudo random sequence output which is finite stream of numbers in the range 1-255 equally distributed. In addition a compare function is added, which turns one digital output pin high whenever a value in the shift register (SR) is less the value of the compare input. This will create a stream of high pulses proportional to the compare value. Next it is fed to Sine wave look up table (LUT), which look-up table method for sine wave generation. This method, involves the synthesis of sine waves with frequencies which are multiples of the fundamental frequency for which the table elements are calculated and used to approximate a sine wave. Digital block will be implemented in Verilog, whereas analog block consisting of analog LPF will be implemented in eSim as shown in Fig 3.

The digital output of the PRS generator is then driving a 2nd order low-pass filter build using standard analog components such opamp, resistors and capacitors as shown in Fig 2. Analog block is implemented using 2nd order Sallen key filter Low pass filter designed for a cutoff frequency fOUT = 1 KHz. 
 


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
