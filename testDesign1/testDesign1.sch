EESchema Schematic File Version 4
LIBS:testDesign1-cache
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
L Device:R_POT_TRIM_US RV1
U 1 1 5C3D0672
P 1950 5300
F 0 "RV1" H 1882 5346 50  0000 R CNN
F 1 "R_POT_TRIM_US" H 1882 5255 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3299W_Vertical" H 1950 5300 50  0001 C CNN
F 3 "~" H 1950 5300 50  0001 C CNN
	1    1950 5300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5C3D07AE
P 1950 5600
F 0 "#PWR0101" H 1950 5350 50  0001 C CNN
F 1 "GND" H 1955 5427 50  0000 C CNN
F 2 "" H 1950 5600 50  0001 C CNN
F 3 "" H 1950 5600 50  0001 C CNN
	1    1950 5600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5C3D07D2
P 2550 5150
F 0 "#PWR0102" H 2550 4900 50  0001 C CNN
F 1 "GND" H 2555 4977 50  0000 C CNN
F 2 "" H 2550 5150 50  0001 C CNN
F 3 "" H 2550 5150 50  0001 C CNN
	1    2550 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 5600 1950 5450
$Comp
L Device:Thermistor TH1
U 1 1 5C3D0A76
P 1900 4300
F 0 "TH1" H 2005 4346 50  0000 L CNN
F 1 "Thermistor" H 2005 4255 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1900 4300 50  0001 C CNN
F 3 "~" H 1900 4300 50  0001 C CNN
	1    1900 4300
	1    0    0    -1  
$EndComp
$Comp
L pspice:CAP C2
U 1 1 5C3D0C04
P 3900 3650
F 0 "C2" H 4078 3696 50  0000 L CNN
F 1 "1nF" H 4078 3605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3900 3650 50  0001 C CNN
F 3 "" H 3900 3650 50  0001 C CNN
	1    3900 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5C3D0C75
P 3900 4100
F 0 "#PWR0103" H 3900 3850 50  0001 C CNN
F 1 "GND" H 3905 3927 50  0000 C CNN
F 2 "" H 3900 4100 50  0001 C CNN
F 3 "" H 3900 4100 50  0001 C CNN
	1    3900 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 3900 3900 4100
Wire Wire Line
	1950 5150 1950 5100
Wire Wire Line
	2550 5150 2550 5100
Wire Wire Line
	2750 3600 2750 3400
Wire Wire Line
	2750 3400 3900 3400
$Comp
L pspice:CAP C4
U 1 1 5C463E78
P 5150 5300
F 0 "C4" H 5328 5346 50  0000 L CNN
F 1 "9pF" H 5328 5255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5150 5300 50  0001 C CNN
F 3 "" H 5150 5300 50  0001 C CNN
	1    5150 5300
	1    0    0    -1  
$EndComp
$Comp
L pspice:CAP C1
U 1 1 5C463EC6
P 3750 5300
F 0 "C1" H 3928 5346 50  0000 L CNN
F 1 "9pF" H 3928 5255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3750 5300 50  0001 C CNN
F 3 "" H 3750 5300 50  0001 C CNN
	1    3750 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal_GND24 Y1
U 1 1 5C463FC7
P 4400 5050
F 0 "Y1" H 4591 5096 50  0000 L CNN
F 1 "Crystal_GND24" H 4591 5005 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_SeikoEpson_TSX3225-4Pin_3.2x2.5mm_HandSoldering" H 4400 5050 50  0001 C CNN
F 3 "~" H 4400 5050 50  0001 C CNN
	1    4400 5050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5C4645E4
P 4400 5800
F 0 "#PWR0104" H 4400 5550 50  0001 C CNN
F 1 "GND" H 4405 5627 50  0000 C CNN
F 2 "" H 4400 5800 50  0001 C CNN
F 3 "" H 4400 5800 50  0001 C CNN
	1    4400 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 5550 4100 5550
Wire Wire Line
	4550 5050 4750 5050
Wire Wire Line
	4400 5550 4400 5800
Connection ~ 4400 5550
Wire Wire Line
	4400 5550 5150 5550
Wire Wire Line
	4100 4850 4100 5550
Connection ~ 4100 5550
Wire Wire Line
	4100 5550 4400 5550
Wire Wire Line
	4400 5250 4400 5550
$Comp
L Connector:Conn_01x05_Male J1
U 1 1 5C466B1D
P 9100 3000
F 0 "J1" H 9073 2930 50  0000 R CNN
F 1 "Conn_01x05_Male" H 9073 3021 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 9100 3000 50  0001 C CNN
F 3 "~" H 9100 3000 50  0001 C CNN
	1    9100 3000
	-1   0    0    1   
$EndComp
Wire Wire Line
	8300 3250 8900 3250
Wire Wire Line
	8900 3250 8900 3200
Wire Wire Line
	8900 3050 8900 3100
Wire Wire Line
	8300 2650 8650 2650
Wire Wire Line
	8650 2650 8650 3000
Wire Wire Line
	8650 3000 8900 3000
Wire Wire Line
	8300 3050 8900 3050
Wire Wire Line
	8900 2850 8900 2900
Wire Wire Line
	8300 2850 8900 2850
$Comp
L power:GND #PWR0105
U 1 1 5C4699B4
P 8800 2500
F 0 "#PWR0105" H 8800 2250 50  0001 C CNN
F 1 "GND" H 8805 2327 50  0000 C CNN
F 2 "" H 8800 2500 50  0001 C CNN
F 3 "" H 8800 2500 50  0001 C CNN
	1    8800 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 2500 8900 2500
Wire Wire Line
	8900 2500 8900 2800
Wire Wire Line
	8300 3850 8400 3850
Wire Wire Line
	8300 4050 8400 4050
Wire Wire Line
	7600 4500 7600 4450
Wire Wire Line
	7400 4500 7400 4450
Wire Wire Line
	7200 4500 7200 4450
Wire Wire Line
	7000 2350 7000 2300
Wire Wire Line
	6800 2350 6800 2300
Wire Wire Line
	6600 2350 6600 2300
Wire Wire Line
	6400 2350 6400 2300
Wire Wire Line
	6200 2350 6200 2300
$Comp
L Connector:TestPoint_2Pole TP6
U 1 1 5C4741E5
P 4250 3400
F 0 "TP6" H 4650 3400 50  0000 C CNN
F 1 "." H 4250 3266 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4250 3400 50  0001 C CNN
F 3 "~" H 4250 3400 50  0001 C CNN
	1    4250 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 3400 4050 3400
Connection ~ 3900 3400
$Comp
L Device:Battery_Cell BT1
U 1 1 5C474DED
P 9150 1400
F 0 "BT1" H 9268 1496 50  0000 L CNN
F 1 "Battery_Cell" H 9268 1405 50  0000 L CNN
F 2 "Battery:BatteryHolder_Keystone_103_1x20mm" V 9150 1460 50  0001 C CNN
F 3 "~" V 9150 1460 50  0001 C CNN
	1    9150 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5C474EA3
P 9150 1500
F 0 "#PWR0106" H 9150 1250 50  0001 C CNN
F 1 "GND" H 9155 1327 50  0000 C CNN
F 2 "" H 9150 1500 50  0001 C CNN
F 3 "" H 9150 1500 50  0001 C CNN
	1    9150 1500
	1    0    0    -1  
$EndComp
Text GLabel 9150 1200 1    50   Input ~ 0
BATT
Text GLabel 2200 3600 1    50   Input ~ 0
BATT
Text GLabel 7800 2200 1    50   Input ~ 0
BATT
Text GLabel 5100 3250 0    50   Input ~ 0
BATT
Text GLabel 8300 3650 2    50   Input ~ 0
BATT
$Comp
L pspice:CAP C9
U 1 1 5C4753D3
P 8750 1500
F 0 "C9" H 8928 1546 50  0000 L CNN
F 1 "10uF" H 8928 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8750 1500 50  0001 C CNN
F 3 "" H 8750 1500 50  0001 C CNN
	1    8750 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5C476384
P 7250 1150
F 0 "R1" H 7320 1196 50  0000 L CNN
F 1 "100K" H 7320 1105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 7180 1150 50  0001 C CNN
F 3 "~" H 7250 1150 50  0001 C CNN
	1    7250 1150
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 5C47664A
P 7850 1350
F 0 "SW1" H 7850 1650 50  0000 C CNN
F 1 "SW_Push" H 7850 1544 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 7850 1550 50  0001 C CNN
F 3 "" H 7850 1550 50  0001 C CNN
	1    7850 1350
	1    0    0    -1  
$EndComp
$Comp
L pspice:CAP C7
U 1 1 5C4766F9
P 7350 1700
F 0 "C7" H 7528 1746 50  0000 L CNN
F 1 "100nF" H 7528 1655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7350 1700 50  0001 C CNN
F 3 "" H 7350 1700 50  0001 C CNN
	1    7350 1700
	1    0    0    -1  
$EndComp
Text GLabel 7250 1000 1    50   Input ~ 0
BATT
$Comp
L power:GND #PWR0107
U 1 1 5C47814D
P 7350 1950
F 0 "#PWR0107" H 7350 1700 50  0001 C CNN
F 1 "GND" H 7355 1777 50  0000 C CNN
F 2 "" H 7350 1950 50  0001 C CNN
F 3 "" H 7350 1950 50  0001 C CNN
	1    7350 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 1350 7350 1350
Wire Wire Line
	7250 1300 7250 1350
Wire Wire Line
	7350 1450 7350 1350
Connection ~ 7350 1350
Wire Wire Line
	7350 1350 7250 1350
Wire Wire Line
	8050 1950 7350 1950
Wire Wire Line
	8050 1350 8050 1950
Connection ~ 7350 1950
$Comp
L power:GND #PWR0108
U 1 1 5C47D219
P 5500 4750
F 0 "#PWR0108" H 5500 4500 50  0001 C CNN
F 1 "GND" H 5500 4600 50  0000 C CNN
F 2 "" H 5500 4750 50  0001 C CNN
F 3 "" H 5500 4750 50  0001 C CNN
	1    5500 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 1350 7200 1350
Wire Wire Line
	7200 1350 7200 2350
Connection ~ 7250 1350
$Comp
L pspice:CAP C3
U 1 1 5C48C0BA
P 4850 4500
F 0 "C3" H 5028 4546 50  0000 L CNN
F 1 "10uF" H 5028 4455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4850 4500 50  0001 C CNN
F 3 "" H 4850 4500 50  0001 C CNN
	1    4850 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 3450 4750 3450
Wire Wire Line
	4750 3450 4750 4050
Wire Wire Line
	4750 4050 4850 4050
Wire Wire Line
	4850 4050 4850 4250
Connection ~ 4850 4050
Wire Wire Line
	4850 4050 5500 4050
Wire Wire Line
	4850 4750 5500 4750
Wire Wire Line
	5500 4750 5500 4250
Connection ~ 5500 4750
Wire Wire Line
	3750 5050 4000 5050
Wire Wire Line
	4100 4850 4400 4850
Wire Wire Line
	4000 5050 4000 4500
Wire Wire Line
	4000 4500 4450 4500
Wire Wire Line
	4450 4500 4450 3650
Wire Wire Line
	4450 3650 5500 3650
Connection ~ 4000 5050
Wire Wire Line
	4000 5050 4250 5050
Wire Wire Line
	4750 5050 4750 4650
Wire Wire Line
	4750 4650 4600 4650
Wire Wire Line
	4600 4650 4600 3850
Wire Wire Line
	4600 3850 5500 3850
Connection ~ 4750 5050
Wire Wire Line
	4750 5050 5150 5050
$Comp
L seniorDesign1Lib:CC2640R2FRHB U1
U 1 1 5C463891
P 6850 3350
F 0 "U1" H 7050 3450 50  0000 L CNN
F 1 "CC2640R2FRHB" H 6800 3300 50  0000 L CNN
F 2 "Package_DFN_QFN:QFN-32-1EP_5x5mm_P0.5mm_EP3.1x3.1mm_ThermalVias" H 7350 3100 50  0001 C CNN
F 3 "" H 7350 3100 50  0001 C CNN
	1    6850 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 4550 6200 4450
$Comp
L Connector:TestPoint TP11
U 1 1 5C4AC484
P 6200 4550
F 0 "TP11" V 6395 4624 50  0000 C CNN
F 1 "TestPoint" V 6304 4624 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 6400 4550 50  0001 C CNN
F 3 "~" H 6400 4550 50  0001 C CNN
	1    6200 4550
	0    -1   -1   0   
$EndComp
$Comp
L pspice:CAP C11
U 1 1 5C4AC698
P 9100 3700
F 0 "C11" H 9278 3746 50  0000 L CNN
F 1 "1uF" H 9278 3655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9100 3700 50  0001 C CNN
F 3 "" H 9100 3700 50  0001 C CNN
	1    9100 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 3450 8300 3450
$Comp
L power:GND #PWR0109
U 1 1 5C4B8298
P 9100 3950
F 0 "#PWR0109" H 9100 3700 50  0001 C CNN
F 1 "GND" H 9105 3777 50  0000 C CNN
F 2 "" H 9100 3950 50  0001 C CNN
F 3 "" H 9100 3950 50  0001 C CNN
	1    9100 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 4450 6400 4750
Wire Wire Line
	6200 4550 6200 4650
Wire Wire Line
	6200 4650 5800 4650
Connection ~ 6200 4550
$Comp
L Connector:TestPoint TP13
U 1 1 5C4BC1AA
P 6400 4750
F 0 "TP13" V 6595 4824 50  0000 C CNN
F 1 "TestPoint" V 6504 4824 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 6600 4750 50  0001 C CNN
F 3 "~" H 6600 4750 50  0001 C CNN
	1    6400 4750
	0    -1   -1   0   
$EndComp
Connection ~ 6400 4750
Wire Wire Line
	6600 4450 6600 4950
$Comp
L Connector:TestPoint TP15
U 1 1 5C4C0009
P 6600 4950
F 0 "TP15" V 6795 5024 50  0000 C CNN
F 1 "TestPoint" V 6704 5024 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 6800 4950 50  0001 C CNN
F 3 "~" H 6800 4950 50  0001 C CNN
	1    6600 4950
	0    -1   -1   0   
$EndComp
Connection ~ 6600 4950
Wire Wire Line
	6600 4950 6600 5050
Wire Wire Line
	6400 4850 6200 4850
Wire Wire Line
	6400 4750 6400 4850
Wire Wire Line
	6200 4850 6200 5050
$Comp
L pspice:CAP C5
U 1 1 5C4C9434
P 6200 5950
F 0 "C5" H 6378 5996 50  0000 L CNN
F 1 "1.2pF" H 6378 5905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6200 5950 50  0001 C CNN
F 3 "" H 6200 5950 50  0001 C CNN
	1    6200 5950
	1    0    0    -1  
$EndComp
$Comp
L pspice:CAP C6
U 1 1 5C4CA192
P 7100 5900
F 0 "C6" H 7278 5946 50  0000 L CNN
F 1 "1.2pF" H 7278 5855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7100 5900 50  0001 C CNN
F 3 "" H 7100 5900 50  0001 C CNN
	1    7100 5900
	1    0    0    -1  
$EndComp
$Comp
L pspice:CAP C8
U 1 1 5C4CA30A
P 7450 5650
F 0 "C8" V 7135 5650 50  0000 C CNN
F 1 "12pF" V 7226 5650 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7450 5650 50  0001 C CNN
F 3 "" H 7450 5650 50  0001 C CNN
	1    7450 5650
	0    1    1    0   
$EndComp
$Comp
L pspice:INDUCTOR L2
U 1 1 5C4CA476
P 6750 5650
F 0 "L2" H 6750 5472 50  0000 C CNN
F 1 "2 nH" H 6750 5563 50  0000 C CNN
F 2 "Inductor_SMD:L_0402_1005Metric" H 6750 5650 50  0001 C CNN
F 3 "" H 6750 5650 50  0001 C CNN
	1    6750 5650
	-1   0    0    1   
$EndComp
$Comp
L pspice:INDUCTOR L1
U 1 1 5C4CA506
P 6200 5300
F 0 "L1" V 6154 5378 50  0000 L CNN
F 1 "15nH" V 6245 5378 50  0000 L CNN
F 2 "Inductor_SMD:L_0402_1005Metric" H 6200 5300 50  0001 C CNN
F 3 "" H 6200 5300 50  0001 C CNN
	1    6200 5300
	0    1    1    0   
$EndComp
Wire Wire Line
	5800 5650 6200 5650
Wire Wire Line
	5800 4650 5800 5650
Wire Wire Line
	6200 5700 6200 5650
Connection ~ 6200 5650
Wire Wire Line
	6200 5650 6500 5650
Wire Wire Line
	6200 5650 6200 5550
Wire Wire Line
	6200 6200 6650 6200
Wire Wire Line
	7100 6200 7100 6150
$Comp
L power:GND #PWR0110
U 1 1 5C4DBE87
P 6650 6200
F 0 "#PWR0110" H 6650 5950 50  0001 C CNN
F 1 "GND" H 6655 6027 50  0000 C CNN
F 2 "" H 6650 6200 50  0001 C CNN
F 3 "" H 6650 6200 50  0001 C CNN
	1    6650 6200
	1    0    0    -1  
$EndComp
Connection ~ 6650 6200
Wire Wire Line
	6650 6200 7100 6200
$Comp
L Device:Antenna AE1
U 1 1 5C4DBFEA
P 7700 5450
F 0 "AE1" H 7780 5441 50  0000 L CNN
F 1 "Antenna" H 7780 5350 50  0000 L CNN
F 2 "RF_Antenna:Texas_SWRA117D_2.4GHz_Left" H 7700 5450 50  0001 C CNN
F 3 "~" H 7700 5450 50  0001 C CNN
	1    7700 5450
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 5C4DD8E9
P 8850 4850
F 0 "SW2" H 8850 5150 50  0000 C CNN
F 1 "SW_Push" H 8850 5044 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 8850 5050 50  0001 C CNN
F 3 "" H 8850 5050 50  0001 C CNN
	1    8850 4850
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP25
U 1 1 5C4DD9BB
P 8650 5350
F 0 "TP25" V 8845 5424 50  0000 C CNN
F 1 "TestPoint" V 8754 5424 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 8850 5350 50  0001 C CNN
F 3 "~" H 8850 5350 50  0001 C CNN
	1    8650 5350
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP26
U 1 1 5C4DDA5F
P 9050 4850
F 0 "TP26" V 9004 5038 50  0000 L CNN
F 1 "TestPoint" V 9095 5038 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 9250 4850 50  0001 C CNN
F 3 "~" H 9250 4850 50  0001 C CNN
	1    9050 4850
	0    1    1    0   
$EndComp
$Comp
L pspice:CAP C10
U 1 1 5C4DDB8F
P 8650 5100
F 0 "C10" H 8828 5146 50  0000 L CNN
F 1 "100nF" H 8828 5055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8650 5100 50  0001 C CNN
F 3 "" H 8650 5100 50  0001 C CNN
	1    8650 5100
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP7
U 1 1 5C4E0181
P 5500 2650
F 0 "TP7" V 5695 2724 50  0000 C CNN
F 1 "TestPoint" V 5604 2724 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 5700 2650 50  0001 C CNN
F 3 "~" H 5700 2650 50  0001 C CNN
	1    5500 2650
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP8
U 1 1 5C4E0237
P 5500 2850
F 0 "TP8" V 5695 2924 50  0000 C CNN
F 1 "TestPoint" V 5604 2924 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 5700 2850 50  0001 C CNN
F 3 "~" H 5700 2850 50  0001 C CNN
	1    5500 2850
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP9
U 1 1 5C4E02AF
P 5500 3050
F 0 "TP9" V 5695 3124 50  0000 C CNN
F 1 "TestPoint" V 5604 3124 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 5700 3050 50  0001 C CNN
F 3 "~" H 5700 3050 50  0001 C CNN
	1    5500 3050
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP10
U 1 1 5C4E2676
P 6200 2300
F 0 "TP10" H 6100 2500 50  0000 L CNN
F 1 "TestPoint" H 6258 2329 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 6400 2300 50  0001 C CNN
F 3 "~" H 6400 2300 50  0001 C CNN
	1    6200 2300
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP12
U 1 1 5C4E273C
P 6400 2300
F 0 "TP12" H 6350 2500 50  0000 L CNN
F 1 "TestPoint" H 6458 2329 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 6600 2300 50  0001 C CNN
F 3 "~" H 6600 2300 50  0001 C CNN
	1    6400 2300
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP14
U 1 1 5C4E27AC
P 6600 2300
F 0 "TP14" H 6550 2500 50  0000 L CNN
F 1 "TestPoint" H 6658 2329 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 6800 2300 50  0001 C CNN
F 3 "~" H 6800 2300 50  0001 C CNN
	1    6600 2300
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP16
U 1 1 5C4E2826
P 6800 2300
F 0 "TP16" H 6750 2500 50  0000 L CNN
F 1 "TestPoint" H 6858 2329 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 7000 2300 50  0001 C CNN
F 3 "~" H 7000 2300 50  0001 C CNN
	1    6800 2300
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP18
U 1 1 5C4E289A
P 7000 2300
F 0 "TP18" H 6950 2500 50  0000 L CNN
F 1 "TestPoint" H 7058 2329 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 7200 2300 50  0001 C CNN
F 3 "~" H 7200 2300 50  0001 C CNN
	1    7000 2300
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP23
U 1 1 5C4E4D15
P 8400 3850
F 0 "TP23" V 8354 4038 50  0000 L CNN
F 1 "TestPoint" V 8445 4038 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 8600 3850 50  0001 C CNN
F 3 "~" H 8600 3850 50  0001 C CNN
	1    8400 3850
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP24
U 1 1 5C4E4E25
P 8400 4050
F 0 "TP24" V 8354 4238 50  0000 L CNN
F 1 "TestPoint" V 8445 4238 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 8600 4050 50  0001 C CNN
F 3 "~" H 8600 4050 50  0001 C CNN
	1    8400 4050
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP22
U 1 1 5C4E71DE
P 7600 4500
F 0 "TP22" H 7542 4527 50  0000 R CNN
F 1 "TestPoint" H 7542 4618 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 7800 4500 50  0001 C CNN
F 3 "~" H 7800 4500 50  0001 C CNN
	1    7600 4500
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint TP21
U 1 1 5C4E7358
P 7400 4500
F 0 "TP21" H 7342 4527 50  0000 R CNN
F 1 "TestPoint" H 7342 4618 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 7600 4500 50  0001 C CNN
F 3 "~" H 7600 4500 50  0001 C CNN
	1    7400 4500
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint TP20
U 1 1 5C4E73CE
P 7200 4500
F 0 "TP20" H 7142 4527 50  0000 R CNN
F 1 "TestPoint" H 7142 4618 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 7400 4500 50  0001 C CNN
F 3 "~" H 7400 4500 50  0001 C CNN
	1    7200 4500
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint TP19
U 1 1 5C4E97A5
P 7000 4450
F 0 "TP19" H 6942 4477 50  0000 R CNN
F 1 "TestPoint" H 6942 4568 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 7200 4450 50  0001 C CNN
F 3 "~" H 7200 4450 50  0001 C CNN
	1    7000 4450
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint TP17
U 1 1 5C4E98E9
P 6800 4450
F 0 "TP17" H 6742 4477 50  0000 R CNN
F 1 "TestPoint" H 6742 4568 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 7000 4450 50  0001 C CNN
F 3 "~" H 7000 4450 50  0001 C CNN
	1    6800 4450
	-1   0    0    1   
$EndComp
$Comp
L Device:Thermistor TH2
U 1 1 5C4F1E7D
P 2600 4300
F 0 "TH2" H 2705 4346 50  0000 L CNN
F 1 "Thermistor" H 2705 4255 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" H 2600 4300 50  0001 C CNN
F 3 "~" H 2600 4300 50  0001 C CNN
	1    2600 4300
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP29
U 1 1 5C503D08
P 2750 3600
F 0 "TP29" H 2692 3627 50  0000 R CNN
F 1 "TestPoint" H 2692 3718 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 2950 3600 50  0001 C CNN
F 3 "~" H 2950 3600 50  0001 C CNN
	1    2750 3600
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint TP4
U 1 1 5C503E96
P 2200 3600
F 0 "TP4" H 2142 3627 50  0000 R CNN
F 1 "TestPoint" H 2142 3718 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 2400 3600 50  0001 C CNN
F 3 "~" H 2400 3600 50  0001 C CNN
	1    2200 3600
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint TP27
U 1 1 5C50406C
P 2600 4100
F 0 "TP27" H 2658 4220 50  0000 L CNN
F 1 "TestPoint" H 2658 4129 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 2800 4100 50  0001 C CNN
F 3 "~" H 2800 4100 50  0001 C CNN
	1    2600 4100
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP1
U 1 1 5C504226
P 1900 4100
F 0 "TP1" H 1958 4220 50  0000 L CNN
F 1 "TestPoint" H 1958 4129 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 2100 4100 50  0001 C CNN
F 3 "~" H 2100 4100 50  0001 C CNN
	1    1900 4100
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP2
U 1 1 5C5042AA
P 1900 4500
F 0 "TP2" H 1958 4620 50  0000 L CNN
F 1 "TestPoint" H 1958 4529 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 2100 4500 50  0001 C CNN
F 3 "~" H 2100 4500 50  0001 C CNN
	1    1900 4500
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint TP28
U 1 1 5C50439C
P 2600 4500
F 0 "TP28" H 2658 4620 50  0000 L CNN
F 1 "TestPoint" H 2658 4529 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 2800 4500 50  0001 C CNN
F 3 "~" H 2800 4500 50  0001 C CNN
	1    2600 4500
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint TP5
U 1 1 5C5044E7
P 2550 5100
F 0 "TP5" H 2608 5220 50  0000 L CNN
F 1 "TestPoint" H 2608 5129 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 2750 5100 50  0001 C CNN
F 3 "~" H 2750 5100 50  0001 C CNN
	1    2550 5100
	1    0    0    -1  
$EndComp
Connection ~ 2550 5100
Wire Wire Line
	2550 5100 2550 5050
$Comp
L Connector:TestPoint TP3
U 1 1 5C50457D
P 1950 5100
F 0 "TP3" H 2008 5220 50  0000 L CNN
F 1 "TestPoint" H 2008 5129 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 2150 5100 50  0001 C CNN
F 3 "~" H 2150 5100 50  0001 C CNN
	1    1950 5100
	1    0    0    -1  
$EndComp
Connection ~ 1950 5100
Wire Wire Line
	1950 5100 1950 5050
$Comp
L power:GND #PWR0111
U 1 1 5C50460B
P 2100 5300
F 0 "#PWR0111" H 2100 5050 50  0001 C CNN
F 1 "GND" H 2105 5127 50  0000 C CNN
F 2 "" H 2100 5300 50  0001 C CNN
F 3 "" H 2100 5300 50  0001 C CNN
	1    2100 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 3250 5150 3250
$Comp
L Connector:TestPoint TP30
U 1 1 5C520DF9
P 5150 3250
F 0 "TP30" H 5208 3370 50  0000 L CNN
F 1 "TestPoint" H 5208 3279 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 5350 3250 50  0001 C CNN
F 3 "~" H 5350 3250 50  0001 C CNN
	1    5150 3250
	1    0    0    -1  
$EndComp
Connection ~ 5150 3250
Wire Wire Line
	5150 3250 5500 3250
$Comp
L Connector:TestPoint TP31
U 1 1 5C521010
P 7600 2200
F 0 "TP31" H 7658 2320 50  0000 L CNN
F 1 "TestPoint" H 7658 2229 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 7800 2200 50  0001 C CNN
F 3 "~" H 7800 2200 50  0001 C CNN
	1    7600 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 2350 7400 2200
Wire Wire Line
	7400 2200 7600 2200
Connection ~ 7600 2200
Wire Wire Line
	7600 2200 7800 2200
Wire Wire Line
	8750 1250 8750 1200
Wire Wire Line
	8750 1200 9150 1200
Wire Wire Line
	8750 1750 9000 1750
Wire Wire Line
	9000 1750 9000 1500
Wire Wire Line
	9000 1500 9150 1500
Connection ~ 9150 1500
Connection ~ 7100 5650
Wire Wire Line
	7100 5650 7200 5650
Wire Wire Line
	7000 5650 7100 5650
$EndSCHEMATC
