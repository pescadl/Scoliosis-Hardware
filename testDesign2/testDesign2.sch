EESchema Schematic File Version 4
LIBS:testDesign2-cache
EELAYER 26 0
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
L testDesign2-rescue:Battery_Cell-Device BT1
U 1 1 5C9730AD
P 1250 1100
F 0 "BT1" H 1368 1196 50  0000 L CNN
F 1 "Battery_Cell" H 1368 1105 50  0000 L CNN
F 2 "testDesign:BatteryHolder_Keystone_120_118_CR1616" V 1250 1160 50  0001 C CNN
F 3 "~" V 1250 1160 50  0001 C CNN
	1    1250 1100
	1    0    0    -1  
$EndComp
$Comp
L testDesign2:CC2640R2FRSM U1
U 1 1 5C973158
P 4150 5000
F 0 "U1" H 4150 5000 50  0000 L CNN
F 1 "CC2640R2FRSM" H 3900 5100 50  0000 L CNN
F 2 "Package_DFN_QFN:QFN-32-1EP_4x4mm_P0.4mm_EP2.9x2.9mm_ThermalVias" H 4150 4900 50  0001 C CNN
F 3 "" H 4150 4900 50  0001 C CNN
	1    4150 5000
	1    0    0    -1  
$EndComp
Text GLabel 4100 4050 1    50   Input ~ 0
GND
Text GLabel 5450 5100 2    50   Input ~ 0
GND
Text GLabel 5450 5550 2    50   Input ~ 0
GND
Text GLabel 2950 5400 0    50   Input ~ 0
GND
Text GLabel 2950 4800 0    50   Input ~ 0
GND
Text GLabel 1250 900  1    50   Input ~ 0
VDDS
Text GLabel 1000 1350 0    50   Input ~ 0
GND
Text GLabel 2300 950  1    50   Input ~ 0
VDDS
$Comp
L testDesign2-rescue:C-Device C5
U 1 1 5C9734F9
P 2700 1250
F 0 "C5" H 2815 1296 50  0000 L CNN
F 1 "100nF" H 2815 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2738 1100 50  0001 C CNN
F 3 "~" H 2700 1250 50  0001 C CNN
	1    2700 1250
	1    0    0    -1  
$EndComp
$Comp
L testDesign2-rescue:C-Device C7
U 1 1 5C97354F
P 3200 1250
F 0 "C7" H 3315 1296 50  0000 L CNN
F 1 "100nF" H 3315 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3238 1100 50  0001 C CNN
F 3 "~" H 3200 1250 50  0001 C CNN
	1    3200 1250
	1    0    0    -1  
$EndComp
$Comp
L testDesign2-rescue:C-Device C9
U 1 1 5C973573
P 3700 1250
F 0 "C9" H 3815 1296 50  0000 L CNN
F 1 "10uF" H 3815 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3738 1100 50  0001 C CNN
F 3 "~" H 3700 1250 50  0001 C CNN
	1    3700 1250
	1    0    0    -1  
$EndComp
$Comp
L testDesign2-rescue:C-Device C12
U 1 1 5C9735E6
P 4200 1250
F 0 "C12" H 4315 1296 50  0000 L CNN
F 1 "100nF" H 4315 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4238 1100 50  0001 C CNN
F 3 "~" H 4200 1250 50  0001 C CNN
	1    4200 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 1500 2700 1400
$Comp
L testDesign2-rescue:C-Device C11
U 1 1 5C973BE3
P 4100 6500
F 0 "C11" H 4215 6546 50  0000 L CNN
F 1 "1uF" H 4215 6455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4138 6350 50  0001 C CNN
F 3 "~" H 4100 6500 50  0001 C CNN
	1    4100 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 5950 4100 6350
$Comp
L testDesign2-rescue:GND-power #PWR01
U 1 1 5C9740CF
P 1250 1500
F 0 "#PWR01" H 1250 1250 50  0001 C CNN
F 1 "GND" H 1255 1327 50  0000 C CNN
F 2 "" H 1250 1500 50  0001 C CNN
F 3 "" H 1250 1500 50  0001 C CNN
	1    1250 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 1200 1250 1350
Wire Wire Line
	1000 1350 1250 1350
Connection ~ 1250 1350
Wire Wire Line
	1250 1350 1250 1500
$Comp
L testDesign2-rescue:TestPoint-Connector TP5
U 1 1 5C974A8F
P 4400 5950
F 0 "TP5" H 4450 6200 50  0000 R CNN
F 1 "TP" H 4450 6300 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 4600 5950 50  0001 C CNN
F 3 "~" H 4600 5950 50  0001 C CNN
	1    4400 5950
	-1   0    0    1   
$EndComp
$Comp
L testDesign2-rescue:TestPoint-Connector TP6
U 1 1 5C974AB3
P 4550 5950
F 0 "TP6" H 4600 6200 50  0000 R CNN
F 1 "TP" H 4600 6300 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 4750 5950 50  0001 C CNN
F 3 "~" H 4750 5950 50  0001 C CNN
	1    4550 5950
	-1   0    0    1   
$EndComp
$Comp
L testDesign2-rescue:TestPoint-Connector TP7
U 1 1 5C974AE5
P 4700 5950
F 0 "TP7" H 4750 6200 50  0000 R CNN
F 1 "TP" H 4750 6300 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 4900 5950 50  0001 C CNN
F 3 "~" H 4900 5950 50  0001 C CNN
	1    4700 5950
	-1   0    0    1   
$EndComp
$Comp
L testDesign2-rescue:TestPoint-Connector TP11
U 1 1 5C974DA3
P 5450 4950
F 0 "TP11" H 5500 5200 50  0000 R CNN
F 1 "TP" H 5500 5300 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 5650 4950 50  0001 C CNN
F 3 "~" H 5650 4950 50  0001 C CNN
	1    5450 4950
	0    1    1    0   
$EndComp
$Comp
L testDesign2-rescue:L-Device L2
U 1 1 5C975291
P 2600 4650
F 0 "L2" V 2700 4650 50  0000 C CNN
F 1 "15nH" V 2550 4650 50  0000 C CNN
F 2 "Inductor_SMD:L_0402_1005Metric" H 2600 4650 50  0001 C CNN
F 3 "~" H 2600 4650 50  0001 C CNN
	1    2600 4650
	0    -1   -1   0   
$EndComp
$Comp
L testDesign2-rescue:L-Device L1
U 1 1 5C9753D6
P 2050 4650
F 0 "L1" V 2240 4650 50  0000 C CNN
F 1 "2nH" V 2149 4650 50  0000 C CNN
F 2 "Inductor_SMD:L_0402_1005Metric" H 2050 4650 50  0001 C CNN
F 3 "~" H 2050 4650 50  0001 C CNN
	1    2050 4650
	0    -1   -1   0   
$EndComp
$Comp
L testDesign2-rescue:C-Device C2
U 1 1 5C9754C0
P 1800 4900
F 0 "C2" H 1915 4946 50  0000 L CNN
F 1 "1.2pF" H 1915 4855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1838 4750 50  0001 C CNN
F 3 "~" H 1800 4900 50  0001 C CNN
	1    1800 4900
	1    0    0    -1  
$EndComp
$Comp
L testDesign2-rescue:C-Device C4
U 1 1 5C97559F
P 2300 4900
F 0 "C4" H 2415 4946 50  0000 L CNN
F 1 "1.2pF" H 2415 4855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2338 4750 50  0001 C CNN
F 3 "~" H 2300 4900 50  0001 C CNN
	1    2300 4900
	1    0    0    -1  
$EndComp
$Comp
L testDesign2-rescue:C-Device C1
U 1 1 5C975625
P 1550 4650
F 0 "C1" V 1802 4650 50  0000 C CNN
F 1 "12pF" V 1711 4650 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1588 4500 50  0001 C CNN
F 3 "~" H 1550 4650 50  0001 C CNN
	1    1550 4650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2300 4500 2300 4650
Wire Wire Line
	2200 4650 2300 4650
Connection ~ 2300 4650
Wire Wire Line
	2300 4650 2300 4750
Wire Wire Line
	1900 4650 1800 4650
Wire Wire Line
	1800 4650 1800 4750
Connection ~ 1800 4650
Wire Wire Line
	1800 4650 1700 4650
Wire Wire Line
	1800 5150 2050 5150
Wire Wire Line
	2300 5150 2300 5050
Wire Wire Line
	1800 5050 1800 5150
Wire Wire Line
	2050 5250 2050 5150
Connection ~ 2050 5150
Wire Wire Line
	2050 5150 2300 5150
$Comp
L testDesign2-rescue:GND-power #PWR02
U 1 1 5C97679F
P 2050 5250
F 0 "#PWR02" H 2050 5000 50  0001 C CNN
F 1 "GND" H 2055 5077 50  0000 C CNN
F 2 "" H 2050 5250 50  0001 C CNN
F 3 "" H 2050 5250 50  0001 C CNN
	1    2050 5250
	1    0    0    -1  
$EndComp
$Comp
L testDesign2-rescue:GND-power #PWR08
U 1 1 5C976913
P 4100 6650
F 0 "#PWR08" H 4100 6400 50  0001 C CNN
F 1 "GND" H 4105 6477 50  0000 C CNN
F 2 "" H 4100 6650 50  0001 C CNN
F 3 "" H 4100 6650 50  0001 C CNN
	1    4100 6650
	1    0    0    -1  
$EndComp
$Comp
L testDesign2-rescue:Antenna-Device AE1
U 1 1 5C976E8B
P 1000 4450
F 0 "AE1" H 1080 4441 50  0000 L CNN
F 1 "Antenna" H 1080 4350 50  0000 L CNN
F 2 "testDesign:TestDesign2_Antenna" H 1000 4450 50  0001 C CNN
F 3 "~" H 1000 4450 50  0001 C CNN
	1    1000 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 4650 1400 4650
$Comp
L testDesign2-rescue:Crystal_GND24-Device Y2
U 1 1 5C977932
P 3700 2900
F 0 "Y2" H 3300 2950 50  0000 L CNN
F 1 "24MHz" H 3150 3050 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_SeikoEpson_TSX3225-4Pin_3.2x2.5mm" H 3700 2900 50  0001 C CNN
F 3 "~" H 3700 2900 50  0001 C CNN
	1    3700 2900
	-1   0    0    1   
$EndComp
$Comp
L testDesign2-rescue:C-Device C10
U 1 1 5C9779C8
P 3950 2650
F 0 "C10" H 3750 2600 50  0000 L CNN
F 1 "9pF" H 3700 2700 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3988 2500 50  0001 C CNN
F 3 "~" H 3950 2650 50  0001 C CNN
	1    3950 2650
	-1   0    0    1   
$EndComp
$Comp
L testDesign2-rescue:C-Device C8
U 1 1 5C977AE2
P 3450 2650
F 0 "C8" H 3550 2600 50  0000 L CNN
F 1 "9pF" H 3550 2700 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3488 2500 50  0001 C CNN
F 3 "~" H 3450 2650 50  0001 C CNN
	1    3450 2650
	-1   0    0    1   
$EndComp
$Comp
L testDesign2-rescue:GND-power #PWR07
U 1 1 5C9783AD
P 3700 2350
F 0 "#PWR07" H 3700 2100 50  0001 C CNN
F 1 "GND" H 3705 2177 50  0000 C CNN
F 2 "" H 3700 2350 50  0001 C CNN
F 3 "" H 3700 2350 50  0001 C CNN
	1    3700 2350
	-1   0    0    1   
$EndComp
Wire Wire Line
	3700 2700 3700 2400
Wire Wire Line
	3450 2800 3450 2900
Wire Wire Line
	3450 2900 3550 2900
Wire Wire Line
	3950 2800 3950 2900
Wire Wire Line
	3950 2900 3850 2900
Wire Wire Line
	3950 2400 3950 2500
Wire Wire Line
	3950 2400 3700 2400
Wire Wire Line
	3450 2400 3450 2500
Connection ~ 3700 2400
Wire Wire Line
	3700 2400 3700 2350
Wire Wire Line
	3700 2400 3450 2400
Wire Wire Line
	3700 3100 3700 2700
Connection ~ 3700 2700
Wire Wire Line
	3950 4050 3950 2900
Connection ~ 3950 2900
Wire Wire Line
	3800 4050 3800 3250
Wire Wire Line
	3800 3250 3450 3250
Wire Wire Line
	3450 3250 3450 2900
Connection ~ 3450 2900
$Comp
L testDesign2-rescue:Crystal-Device Y1
U 1 1 5C981F5D
P 2450 6150
F 0 "Y1" H 2450 6418 50  0000 C CNN
F 1 "32.768kHz" H 2450 6327 50  0000 C CNN
F 2 "Crystal:Crystal_SMD_3215-2Pin_3.2x1.5mm" H 2450 6150 50  0001 C CNN
F 3 "~" H 2450 6150 50  0001 C CNN
	1    2450 6150
	1    0    0    -1  
$EndComp
$Comp
L testDesign2-rescue:C-Device C3
U 1 1 5C982484
P 2200 6400
F 0 "C3" H 1900 6450 50  0000 L CNN
F 1 "12pF" H 1900 6350 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2238 6250 50  0001 C CNN
F 3 "~" H 2200 6400 50  0001 C CNN
	1    2200 6400
	1    0    0    -1  
$EndComp
$Comp
L testDesign2-rescue:C-Device C6
U 1 1 5C9833EC
P 2700 6400
F 0 "C6" H 2815 6446 50  0000 L CNN
F 1 "12pF" H 2815 6355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2738 6250 50  0001 C CNN
F 3 "~" H 2700 6400 50  0001 C CNN
	1    2700 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 6550 2450 6550
$Comp
L testDesign2-rescue:GND-power #PWR03
U 1 1 5C983B87
P 2450 6650
F 0 "#PWR03" H 2450 6400 50  0001 C CNN
F 1 "GND" H 2455 6477 50  0000 C CNN
F 2 "" H 2450 6650 50  0001 C CNN
F 3 "" H 2450 6650 50  0001 C CNN
	1    2450 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 6650 2450 6550
Connection ~ 2450 6550
Wire Wire Line
	2450 6550 2700 6550
Wire Wire Line
	2200 6250 2200 6150
Wire Wire Line
	2200 6150 2300 6150
Wire Wire Line
	2600 6150 2700 6150
Wire Wire Line
	2700 6150 2700 6250
Wire Wire Line
	2950 5250 2700 5250
Connection ~ 2700 6150
Wire Wire Line
	2950 5100 2550 5100
Wire Wire Line
	2550 5700 2200 5700
Wire Wire Line
	2200 5700 2200 6150
Connection ~ 2200 6150
Wire Wire Line
	2550 5100 2550 5700
Wire Wire Line
	2700 5250 2700 6150
$Comp
L testDesign2-rescue:GND-power #PWR04
U 1 1 5C9910BE
P 2700 1500
F 0 "#PWR04" H 2700 1250 50  0001 C CNN
F 1 "GND" H 2705 1327 50  0000 C CNN
F 2 "" H 2700 1500 50  0001 C CNN
F 3 "" H 2700 1500 50  0001 C CNN
	1    2700 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 1100 3200 1100
Wire Wire Line
	3200 1100 3700 1100
Connection ~ 3200 1100
Wire Wire Line
	3700 1100 4200 1100
Connection ~ 3700 1100
Text Notes 2550 1050 0    50   ~ 0
Pin 11
Text Notes 3050 1050 0    50   ~ 0
Pin 27
$Comp
L testDesign2-rescue:GND-power #PWR05
U 1 1 5C99B964
P 3200 1500
F 0 "#PWR05" H 3200 1250 50  0001 C CNN
F 1 "GND" H 3205 1327 50  0000 C CNN
F 2 "" H 3200 1500 50  0001 C CNN
F 3 "" H 3200 1500 50  0001 C CNN
	1    3200 1500
	1    0    0    -1  
$EndComp
$Comp
L testDesign2-rescue:GND-power #PWR06
U 1 1 5C99B9A5
P 3700 1500
F 0 "#PWR06" H 3700 1250 50  0001 C CNN
F 1 "GND" H 3705 1327 50  0000 C CNN
F 2 "" H 3700 1500 50  0001 C CNN
F 3 "" H 3700 1500 50  0001 C CNN
	1    3700 1500
	1    0    0    -1  
$EndComp
$Comp
L testDesign2-rescue:GND-power #PWR09
U 1 1 5C99B9E6
P 4200 1500
F 0 "#PWR09" H 4200 1250 50  0001 C CNN
F 1 "GND" H 4205 1327 50  0000 C CNN
F 2 "" H 4200 1500 50  0001 C CNN
F 3 "" H 4200 1500 50  0001 C CNN
	1    4200 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 1400 4200 1500
Wire Wire Line
	3700 1400 3700 1500
Wire Wire Line
	3200 1400 3200 1500
Wire Wire Line
	2700 1100 2300 1100
Wire Wire Line
	2300 1100 2300 950 
Connection ~ 2700 1100
Text Notes 3550 1050 0    50   ~ 0
Pin 19
Text GLabel 6350 950  1    50   Input ~ 0
VDDR
$Comp
L testDesign2-rescue:C-Device C14
U 1 1 5C9A033A
P 6750 1250
F 0 "C14" H 6865 1296 50  0000 L CNN
F 1 "100nF" H 6865 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6788 1100 50  0001 C CNN
F 3 "~" H 6750 1250 50  0001 C CNN
	1    6750 1250
	1    0    0    -1  
$EndComp
$Comp
L testDesign2-rescue:C-Device C15
U 1 1 5C9A0341
P 7250 1250
F 0 "C15" H 7365 1296 50  0000 L CNN
F 1 "100nF" H 7365 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7288 1100 50  0001 C CNN
F 3 "~" H 7250 1250 50  0001 C CNN
	1    7250 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 1500 6750 1400
$Comp
L testDesign2-rescue:GND-power #PWR013
U 1 1 5C9A0357
P 6750 1500
F 0 "#PWR013" H 6750 1250 50  0001 C CNN
F 1 "GND" H 6755 1327 50  0000 C CNN
F 2 "" H 6750 1500 50  0001 C CNN
F 3 "" H 6750 1500 50  0001 C CNN
	1    6750 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 1100 7250 1100
Text Notes 6600 1050 0    50   ~ 0
Pin 28
Text Notes 7100 1050 0    50   ~ 0
Pin 32
$Comp
L testDesign2-rescue:GND-power #PWR014
U 1 1 5C9A0364
P 7250 1500
F 0 "#PWR014" H 7250 1250 50  0001 C CNN
F 1 "GND" H 7255 1327 50  0000 C CNN
F 2 "" H 7250 1500 50  0001 C CNN
F 3 "" H 7250 1500 50  0001 C CNN
	1    7250 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 1400 7250 1500
Wire Wire Line
	6750 1100 6350 1100
Wire Wire Line
	6350 1100 6350 950 
Connection ~ 6750 1100
$Comp
L testDesign2-rescue:C-Device C13
U 1 1 5C9A7B8C
P 6000 1250
F 0 "C13" H 6115 1296 50  0000 L CNN
F 1 "10uF" H 6115 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6038 1100 50  0001 C CNN
F 3 "~" H 6000 1250 50  0001 C CNN
	1    6000 1250
	1    0    0    -1  
$EndComp
$Comp
L testDesign2-rescue:GND-power #PWR011
U 1 1 5C9A7D16
P 6000 1500
F 0 "#PWR011" H 6000 1250 50  0001 C CNN
F 1 "GND" H 6005 1327 50  0000 C CNN
F 2 "" H 6000 1500 50  0001 C CNN
F 3 "" H 6000 1500 50  0001 C CNN
	1    6000 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 1400 6000 1500
Wire Wire Line
	6350 1100 6000 1100
Connection ~ 6350 1100
$Comp
L testDesign2-rescue:L-Device L3
U 1 1 5C9AA17D
P 5650 1100
F 0 "L3" V 5840 1100 50  0000 C CNN
F 1 "10uH" V 5749 1100 50  0000 C CNN
F 2 "Inductor_SMD:L_0805_2012Metric" H 5650 1100 50  0001 C CNN
F 3 "~" H 5650 1100 50  0001 C CNN
	1    5650 1100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5800 1100 6000 1100
Connection ~ 6000 1100
Text GLabel 5400 1100 0    50   Input ~ 0
DCDC_SW
Wire Wire Line
	5400 1100 5500 1100
Text GLabel 5450 5400 2    50   Input ~ 0
DCDC_SW
Text GLabel 4400 4050 1    50   Input ~ 0
VDDS
Text GLabel 3950 5950 3    50   Input ~ 0
VDDS
Text GLabel 5450 5250 2    50   Input ~ 0
VDDS
Text GLabel 4250 4050 1    50   Input ~ 0
VDDR
Text GLabel 3650 4050 1    50   Input ~ 0
VDDR
NoConn ~ 2950 4950
$Comp
L testDesign2-rescue:SW_Push-Switch SW1
U 1 1 5C9B4C12
P 5300 2600
F 0 "SW1" H 5300 2885 50  0000 C CNN
F 1 "SW_Push" H 5300 2794 50  0000 C CNN
F 2 "testDesign:Switch_EVP-BB4A9B000" H 5300 2800 50  0001 C CNN
F 3 "" H 5300 2800 50  0001 C CNN
	1    5300 2600
	1    0    0    -1  
$EndComp
$Comp
L testDesign2-rescue:Thermistor-Device TH1
U 1 1 5C9B4F2F
P 6300 2600
F 0 "TH1" H 6405 2646 50  0000 L CNN
F 1 "Thermistor" H 6405 2555 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" H 6300 2600 50  0001 C CNN
F 3 "~" H 6300 2600 50  0001 C CNN
	1    6300 2600
	1    0    0    -1  
$EndComp
$Comp
L testDesign2-rescue:R-Device R1
U 1 1 5C9B5045
P 6300 3150
F 0 "R1" H 6370 3196 50  0000 L CNN
F 1 "51k" H 6370 3105 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 6230 3150 50  0001 C CNN
F 3 "~" H 6300 3150 50  0001 C CNN
	1    6300 3150
	1    0    0    -1  
$EndComp
$Comp
L testDesign2-rescue:GND-power #PWR010
U 1 1 5C9B68EE
P 5600 2700
F 0 "#PWR010" H 5600 2450 50  0001 C CNN
F 1 "GND" H 5605 2527 50  0000 C CNN
F 2 "" H 5600 2700 50  0001 C CNN
F 3 "" H 5600 2700 50  0001 C CNN
	1    5600 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 2600 5600 2600
Wire Wire Line
	5600 2600 5600 2700
Text GLabel 5450 4650 2    50   Input ~ 0
Button
Text GLabel 5000 2600 0    50   Input ~ 0
Button
Wire Wire Line
	5000 2600 5100 2600
Wire Wire Line
	6300 2800 6300 2900
Text GLabel 6550 2900 2    50   Input ~ 0
ADC0
Wire Wire Line
	6550 2900 6300 2900
Connection ~ 6300 2900
Wire Wire Line
	6300 2900 6300 3000
Text GLabel 5450 4500 2    50   Input ~ 0
ADC0
$Comp
L testDesign2-rescue:GND-power #PWR012
U 1 1 5C9BEA1A
P 6300 3400
F 0 "#PWR012" H 6300 3150 50  0001 C CNN
F 1 "GND" H 6305 3227 50  0000 C CNN
F 2 "" H 6300 3400 50  0001 C CNN
F 3 "" H 6300 3400 50  0001 C CNN
	1    6300 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 3400 6300 3300
Text GLabel 6300 2300 1    50   Input ~ 0
VDDS
Wire Wire Line
	6300 2300 6300 2400
Wire Wire Line
	2450 4650 2300 4650
Wire Wire Line
	2750 4650 2950 4650
Wire Wire Line
	2300 4500 2950 4500
$Comp
L testDesign2-rescue:TestPoint-Connector TP4
U 1 1 5C974CB3
P 4250 5950
F 0 "TP4" H 4300 6200 50  0000 R CNN
F 1 "TP" H 4300 6300 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 4450 5950 50  0001 C CNN
F 3 "~" H 4450 5950 50  0001 C CNN
	1    4250 5950
	-1   0    0    1   
$EndComp
NoConn ~ 4550 4050
NoConn ~ 4700 4050
NoConn ~ 5450 4800
NoConn ~ 3800 5950
NoConn ~ 3650 5950
NoConn ~ 2950 5550
Text GLabel 3500 4050 1    50   Input ~ 0
GND
$EndSCHEMATC
