EESchema Schematic File Version 2
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:power
LIBS:eSim_Plot
LIBS:transistors
LIBS:conn
LIBS:eSim_User
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:eSim_Analog
LIBS:eSim_Devices
LIBS:eSim_Digital
LIBS:eSim_Hybrid
LIBS:eSim_Miscellaneous
LIBS:eSim_Power
LIBS:eSim_Sources
LIBS:eSim_Subckt
LIBS:eSim_Nghdl
LIBS:eSim_Ngveri
LIBS:digital_sine_wave-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L inderjit_prs8bit_generator U1
U 1 1 622715C1
P 0 5100
F 0 "U1" H 2850 6900 60  0000 C CNN
F 1 "inderjit_prs8bit_generator" H 2850 7100 60  0000 C CNN
F 2 "" H 2850 7050 60  0000 C CNN
F 3 "" H 2850 7050 60  0000 C CNN
	1    0    5100
	1    0    0    -1  
$EndComp
$Comp
L adc_bridge_2 U3
U 1 1 6227191A
P 1600 3250
F 0 "U3" H 1600 3250 60  0000 C CNN
F 1 "adc_bridge_2" H 1600 3400 60  0000 C CNN
F 2 "" H 1600 3250 60  0000 C CNN
F 3 "" H 1600 3250 60  0000 C CNN
	1    1600 3250
	1    0    0    -1  
$EndComp
$Comp
L dac_bridge_8 U6
U 1 1 62271A49
P 5550 3150
F 0 "U6" H 5550 3150 60  0000 C CNN
F 1 "dac_bridge_8" H 5550 3300 60  0000 C CNN
F 2 "" H 5550 3150 60  0000 C CNN
F 3 "" H 5550 3150 60  0000 C CNN
	1    5550 3150
	1    0    0    -1  
$EndComp
$Comp
L pulse v1
U 1 1 62271E32
P 850 4050
F 0 "v1" H 650 4150 60  0000 C CNN
F 1 "pulse" H 650 4000 60  0000 C CNN
F 2 "R1" H 550 4050 60  0000 C CNN
F 3 "" H 850 4050 60  0000 C CNN
	1    850  4050
	1    0    0    -1  
$EndComp
$Comp
L pulse v2
U 1 1 62271E90
P 1450 4050
F 0 "v2" H 1250 4150 60  0000 C CNN
F 1 "pulse" H 1250 4000 60  0000 C CNN
F 2 "R1" H 1150 4050 60  0000 C CNN
F 3 "" H 1450 4050 60  0000 C CNN
	1    1450 4050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 62271FB9
P 850 4600
F 0 "#PWR01" H 850 4350 50  0001 C CNN
F 1 "GND" H 850 4450 50  0000 C CNN
F 2 "" H 850 4600 50  0001 C CNN
F 3 "" H 850 4600 50  0001 C CNN
	1    850  4600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 62272065
P 1450 4600
F 0 "#PWR02" H 1450 4350 50  0001 C CNN
F 1 "GND" H 1450 4450 50  0000 C CNN
F 2 "" H 1450 4600 50  0001 C CNN
F 3 "" H 1450 4600 50  0001 C CNN
	1    1450 4600
	1    0    0    -1  
$EndComp
Text GLabel 750  3000 0    60   Input ~ 0
clk
Text GLabel 1300 3450 0    60   Input ~ 0
reset
$Comp
L GND #PWR03
U 1 1 62273E93
P 5750 2650
F 0 "#PWR03" H 5750 2400 50  0001 C CNN
F 1 "GND" H 5750 2500 50  0000 C CNN
F 2 "" H 5750 2650 50  0001 C CNN
F 3 "" H 5750 2650 50  0001 C CNN
	1    5750 2650
	1    0    0    -1  
$EndComp
$Comp
L resistor R1
U 1 1 62274D0F
P 7700 3000
F 0 "R1" H 7750 3130 50  0000 C CNN
F 1 "130" H 7750 2950 50  0000 C CNN
F 2 "" H 7750 2980 30  0000 C CNN
F 3 "" V 7750 3050 30  0000 C CNN
	1    7700 3000
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U7
U 1 1 62277BB3
P 7450 3050
F 0 "U7" H 7450 3550 60  0000 C CNN
F 1 "plot_v1" H 7650 3400 60  0000 C CNN
F 2 "" H 7450 3050 60  0000 C CNN
F 3 "" H 7450 3050 60  0000 C CNN
	1    7450 3050
	1    0    0    -1  
$EndComp
Text GLabel 7450 3200 3    60   Output ~ 0
dac_out
$Comp
L plot_v1 U8
U 1 1 62277FEC
P 8600 3000
F 0 "U8" H 8600 3500 60  0000 C CNN
F 1 "plot_v1" H 8800 3350 60  0000 C CNN
F 2 "" H 8600 3000 60  0000 C CNN
F 3 "" H 8600 3000 60  0000 C CNN
	1    8600 3000
	1    0    0    -1  
$EndComp
Text GLabel 9100 3400 3    60   Output ~ 0
analog_out
$Comp
L plot_v1 U4
U 1 1 622784A2
P 1850 4050
F 0 "U4" H 1850 4550 60  0000 C CNN
F 1 "plot_v1" H 2050 4400 60  0000 C CNN
F 2 "" H 1850 4050 60  0000 C CNN
F 3 "" H 1850 4050 60  0000 C CNN
	1    1850 4050
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U5
U 1 1 62278B87
P 1600 2500
F 0 "U5" H 1600 3000 60  0000 C CNN
F 1 "plot_v1" H 1800 2850 60  0000 C CNN
F 2 "" H 1600 2500 60  0000 C CNN
F 3 "" H 1600 2500 60  0000 C CNN
	1    1600 2500
	1    0    0    -1  
$EndComp
$Comp
L inductor L1
U 1 1 6229B836
P 6250 3500
F 0 "L1" H 8200 4000 50  0000 C CNN
F 1 "10mH" H 8200 4150 50  0000 C CNN
F 2 "" V 8200 4050 60  0000 C CNN
F 3 "" V 8200 4050 60  0000 C CNN
	1    6250 3500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 6227594A
P 8550 3450
F 0 "#PWR04" H 8550 3200 50  0001 C CNN
F 1 "GND" H 8550 3300 50  0000 C CNN
F 2 "" H 8550 3450 50  0001 C CNN
F 3 "" H 8550 3450 50  0001 C CNN
	1    8550 3450
	1    0    0    -1  
$EndComp
$Comp
L capacitor C2
U 1 1 62275224
P 8550 3200
F 0 "C2" H 8575 3300 50  0000 L CNN
F 1 "2.5u" H 8575 3100 50  0000 L CNN
F 2 "" H 8588 3050 30  0000 C CNN
F 3 "" H 8550 3200 60  0000 C CNN
	1    8550 3200
	1    0    0    -1  
$EndComp
$Comp
L 10bitDAC X1
U 1 1 62272E94
P 6800 3300
F 0 "X1" H 6800 3350 60  0000 C CNN
F 1 "10bitDAC" H 6750 3250 60  0000 C CNN
F 2 "" H 6800 3350 60  0001 C CNN
F 3 "" H 6800 3350 60  0001 C CNN
	1    6800 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  3200 1000 3200
Wire Wire Line
	850  2700 850  3600
Wire Wire Line
	1000 3300 950  3300
Wire Wire Line
	950  3300 950  3600
Wire Wire Line
	950  3600 1450 3600
Wire Wire Line
	850  4500 850  4600
Wire Wire Line
	1450 4500 1450 4600
Wire Wire Line
	3450 2700 3450 3100
Wire Wire Line
	3450 3100 3550 3100
Connection ~ 850  3200
Wire Wire Line
	750  3000 850  3000
Connection ~ 850  3000
Wire Wire Line
	1400 3450 1400 3600
Wire Wire Line
	1400 3450 1300 3450
Connection ~ 1400 3600
Wire Wire Line
	6100 2550 6100 3000
Wire Wire Line
	6100 2550 5750 2550
Wire Wire Line
	5750 2550 5750 2650
Wire Wire Line
	8550 2950 8550 3050
Connection ~ 8550 2950
Wire Wire Line
	7450 2850 7450 3200
Wire Wire Line
	9100 2950 9100 3400
Wire Wire Line
	1400 3500 1650 3500
Wire Wire Line
	1650 3500 1650 3850
Wire Wire Line
	1650 3850 1850 3850
Connection ~ 1400 3500
Wire Wire Line
	1600 2300 1600 2700
Connection ~ 1600 2350
Wire Wire Line
	3450 2700 3150 2700
Wire Wire Line
	850  2700 2000 2700
Connection ~ 1600 2700
Wire Wire Line
	8600 2950 8600 2800
Wire Wire Line
	7400 2950 7600 2950
Connection ~ 7450 2950
Wire Wire Line
	8500 2950 9100 2950
Connection ~ 8600 2950
Wire Wire Line
	8550 3350 8550 3450
$Comp
L adc_bridge_1 U9
U 1 1 6227B359
P 2600 2750
F 0 "U9" H 2600 2750 60  0000 C CNN
F 1 "adc_bridge_1" H 2600 2900 60  0000 C CNN
F 2 "" H 2600 2750 60  0000 C CNN
F 3 "" H 2600 2750 60  0000 C CNN
	1    2600 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 2900 6100 2800
Connection ~ 6100 2800
Connection ~ 6100 2900
$Comp
L inderjit_d_sine U2
U 1 1 622A374D
P 1400 5000
F 0 "U2" H 4250 6800 60  0000 C CNN
F 1 "inderjit_d_sine" H 4250 7000 60  0000 C CNN
F 2 "" H 4250 6950 60  0000 C CNN
F 3 "" H 4250 6950 60  0000 C CNN
	1    1400 5000
	1    0    0    -1  
$EndComp
$EndSCHEMATC
