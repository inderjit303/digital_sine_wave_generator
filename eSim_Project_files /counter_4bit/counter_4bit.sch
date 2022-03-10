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
LIBS:counter_4bit-cache
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
L inderjit_4bitcounter U1
U 1 1 622376EB
P 2650 4750
F 0 "U1" H 5500 6550 60  0000 C CNN
F 1 "inderjit_4bitcounter" H 5500 6750 60  0000 C CNN
F 2 "" H 5500 6700 60  0000 C CNN
F 3 "" H 5500 6700 60  0000 C CNN
	1    2650 4750
	1    0    0    -1  
$EndComp
$Comp
L adc_bridge_2 U4
U 1 1 62237795
P 4250 2900
F 0 "U4" H 4250 2900 60  0000 C CNN
F 1 "adc_bridge_2" H 4250 3050 60  0000 C CNN
F 2 "" H 4250 2900 60  0000 C CNN
F 3 "" H 4250 2900 60  0000 C CNN
	1    4250 2900
	1    0    0    -1  
$EndComp
$Comp
L dac_bridge_4 U5
U 1 1 62237934
P 6750 3050
F 0 "U5" H 6750 3050 60  0000 C CNN
F 1 "dac_bridge_4" H 6750 3350 60  0000 C CNN
F 2 "" H 6750 3050 60  0000 C CNN
F 3 "" H 6750 3050 60  0000 C CNN
	1    6750 3050
	1    0    0    -1  
$EndComp
$Comp
L pulse v1
U 1 1 62237EB5
P 2600 3300
F 0 "v1" H 2400 3400 60  0000 C CNN
F 1 "pulse" H 2400 3250 60  0000 C CNN
F 2 "R1" H 2300 3300 60  0000 C CNN
F 3 "" H 2600 3300 60  0000 C CNN
	1    2600 3300
	1    0    0    -1  
$EndComp
$Comp
L pulse v2
U 1 1 62237ED2
P 3000 4150
F 0 "v2" H 2800 4250 60  0000 C CNN
F 1 "pulse" H 2800 4100 60  0000 C CNN
F 2 "R1" H 2700 4150 60  0000 C CNN
F 3 "" H 3000 4150 60  0000 C CNN
	1    3000 4150
	1    0    0    -1  
$EndComp
$Comp
L resistor R1
U 1 1 62238033
P 3050 2900
F 0 "R1" H 3100 3030 50  0000 C CNN
F 1 "1k" H 3100 2850 50  0000 C CNN
F 2 "" H 3100 2880 30  0000 C CNN
F 3 "" V 3100 2950 30  0000 C CNN
	1    3050 2900
	1    0    0    -1  
$EndComp
$Comp
L resistor R2
U 1 1 62238096
P 3500 3350
F 0 "R2" H 3550 3480 50  0000 C CNN
F 1 "1k" H 3550 3300 50  0000 C CNN
F 2 "" H 3550 3330 30  0000 C CNN
F 3 "" V 3550 3400 30  0000 C CNN
	1    3500 3350
	0    1    1    0   
$EndComp
$Comp
L resistor R3
U 1 1 6223813E
P 8300 2900
F 0 "R3" H 8350 3030 50  0000 C CNN
F 1 "1k" H 8350 2850 50  0000 C CNN
F 2 "" H 8350 2880 30  0000 C CNN
F 3 "" V 8350 2950 30  0000 C CNN
	1    8300 2900
	1    0    0    -1  
$EndComp
$Comp
L capacitor C1
U 1 1 622381B5
P 8750 3400
F 0 "C1" H 8775 3500 50  0000 L CNN
F 1 "1u" H 8775 3300 50  0000 L CNN
F 2 "" H 8788 3250 30  0000 C CNN
F 3 "" H 8750 3400 60  0000 C CNN
	1    8750 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 2850 8200 2850
Wire Wire Line
	8500 2850 8950 2850
Wire Wire Line
	8750 2850 8750 3250
$Comp
L GND #PWR4
U 1 1 62238417
P 8750 3800
F 0 "#PWR4" H 8750 3550 50  0001 C CNN
F 1 "GND" H 8750 3650 50  0000 C CNN
F 2 "" H 8750 3800 50  0001 C CNN
F 3 "" H 8750 3800 50  0001 C CNN
	1    8750 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 2850 3250 2850
Wire Wire Line
	2950 2850 2600 2850
Wire Wire Line
	3000 3700 3000 2950
Wire Wire Line
	2800 2950 3650 2950
Wire Wire Line
	8750 3550 8750 3800
Wire Wire Line
	3550 2850 3550 3250
Connection ~ 3550 2850
$Comp
L GND #PWR2
U 1 1 62238F22
P 3000 4800
F 0 "#PWR2" H 3000 4550 50  0001 C CNN
F 1 "GND" H 3000 4650 50  0000 C CNN
F 2 "" H 3000 4800 50  0001 C CNN
F 3 "" H 3000 4800 50  0001 C CNN
	1    3000 4800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR1
U 1 1 62239017
P 2600 3950
F 0 "#PWR1" H 2600 3700 50  0001 C CNN
F 1 "GND" H 2600 3800 50  0000 C CNN
F 2 "" H 2600 3950 50  0001 C CNN
F 3 "" H 2600 3950 50  0001 C CNN
	1    2600 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 3750 2600 3950
Wire Wire Line
	3000 4600 3000 4800
$Comp
L GND #PWR3
U 1 1 62239213
P 3550 3750
F 0 "#PWR3" H 3550 3500 50  0001 C CNN
F 1 "GND" H 3550 3600 50  0000 C CNN
F 2 "" H 3550 3750 50  0001 C CNN
F 3 "" H 3550 3750 50  0001 C CNN
	1    3550 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 3550 3550 3750
$Comp
L plot_v1 U7
U 1 1 622395EF
P 7700 3900
F 0 "U7" H 7700 4400 60  0000 C CNN
F 1 "plot_v1" H 7900 4250 60  0000 C CNN
F 2 "" H 7700 3900 60  0000 C CNN
F 3 "" H 7700 3900 60  0000 C CNN
	1    7700 3900
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U8
U 1 1 6223965C
P 8200 4200
F 0 "U8" H 8200 4700 60  0000 C CNN
F 1 "plot_v1" H 8400 4550 60  0000 C CNN
F 2 "" H 8200 4200 60  0000 C CNN
F 3 "" H 8200 4200 60  0000 C CNN
	1    8200 4200
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U3
U 1 1 622396E3
P 3450 2500
F 0 "U3" H 3450 3000 60  0000 C CNN
F 1 "plot_v1" H 3650 2850 60  0000 C CNN
F 2 "" H 3450 2500 60  0000 C CNN
F 3 "" H 3450 2500 60  0000 C CNN
	1    3450 2500
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U6
U 1 1 6223987B
P 7500 2500
F 0 "U6" H 7500 3000 60  0000 C CNN
F 1 "plot_v1" H 7700 2850 60  0000 C CNN
F 2 "" H 7500 2500 60  0000 C CNN
F 3 "" H 7500 2500 60  0000 C CNN
	1    7500 2500
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U2
U 1 1 622398DD
P 2800 2600
F 0 "U2" H 2800 3100 60  0000 C CNN
F 1 "plot_v1" H 3000 2950 60  0000 C CNN
F 2 "" H 2800 2600 60  0000 C CNN
F 3 "" H 2800 2600 60  0000 C CNN
	1    2800 2600
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U9
U 1 1 62239A38
P 8550 2700
F 0 "U9" H 8550 3200 60  0000 C CNN
F 1 "plot_v1" H 8750 3050 60  0000 C CNN
F 2 "" H 8550 2700 60  0000 C CNN
F 3 "" H 8550 2700 60  0000 C CNN
	1    8550 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 2300 3450 2850
Connection ~ 3450 2850
Wire Wire Line
	2800 2400 2800 2950
Connection ~ 3000 2950
Wire Wire Line
	8550 2500 8550 2850
Connection ~ 8550 2850
Wire Wire Line
	7500 2300 7500 2950
Wire Wire Line
	7500 2950 7300 2950
Wire Wire Line
	7700 3700 7700 3800
Wire Wire Line
	7700 3800 7500 3800
Wire Wire Line
	7500 3800 7500 3050
Wire Wire Line
	7500 3050 7300 3050
Wire Wire Line
	7300 3150 7300 4100
Wire Wire Line
	7300 4100 8200 4100
Wire Wire Line
	8200 4100 8200 4000
Text GLabel 8950 2850 2    60   Output ~ 0
o3
Connection ~ 8750 2850
Text GLabel 7800 2400 2    60   Output ~ 0
o2
Wire Wire Line
	7500 2400 7800 2400
Connection ~ 7500 2400
Text GLabel 7700 3150 2    60   Output ~ 0
o1
Wire Wire Line
	7500 3150 7700 3150
Connection ~ 7500 3150
Text GLabel 7500 4000 2    60   Output ~ 0
o0
Wire Wire Line
	7300 4000 7500 4000
Connection ~ 7300 4000
Text GLabel 3200 2500 0    60   Input ~ 0
clk
Wire Wire Line
	3200 2500 3350 2500
Wire Wire Line
	3350 2500 3350 2850
Connection ~ 3350 2850
Text GLabel 3350 3150 0    60   Input ~ 0
reset
Wire Wire Line
	3350 3150 3400 3150
Wire Wire Line
	3400 3150 3400 2950
Connection ~ 3400 2950
$EndSCHEMATC