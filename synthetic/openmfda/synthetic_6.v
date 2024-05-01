module Planar_Synthetic_6(
input Source1,
input Source2,
input Source3,
input Source4,
input Source5,
input Source6,
input Source7,
input Source8,
input Source9,
input Source10,
input Source11,
input Source12,
output Out1
);
wire flow_switch3_1_Source1;
wire flow_switch3_1_Source2;
wire flow_switch3_1_flow_switch4_1;
wire flow_switch3_2_Source3;
wire flow_switch3_2_Source4;
wire flow_switch3_2_flow_switch4_2;
wire flow_switch3_3_Source5;
wire flow_switch3_3_Source6;
wire flow_switch3_3_flow_switch4_3;
wire flow_switch3_4_Source7;
wire flow_switch3_4_Source8;
wire flow_switch3_4_flow_switch4_4;
wire flow_switch4_1_Mixer1;
wire flow_switch4_1_Mixer2;
wire flow_switch4_1_flow_switch3_5;
wire flow_switch4_2_Mixer3;
wire flow_switch4_2_Mixer4;
wire flow_switch4_2_flow_switch3_6;
wire flow_switch4_3_Mixer5;
wire flow_switch4_3_Mixer6;
wire flow_switch4_3_flow_switch3_7;
wire flow_switch4_4_Mixer7;
wire flow_switch4_4_Mixer8;
wire flow_switch4_4_flow_switch3_8;
wire flow_switch3_5_Source9;
wire flow_switch3_5_Mixer9;
wire flow_switch3_6_Source10;
wire flow_switch3_6_Mixer10;
wire flow_switch3_7_Source11;
wire flow_switch3_7_Mixer11;
wire flow_switch3_8_Source12;
wire flow_switch3_8_Mixer12;
wire flow_switch3_9_Mixer9;
wire flow_switch3_9_Mixer13;
wire flow_switch3_9_flow_switch3_10;
wire flow_switch3_10_Mixer10;
wire flow_switch3_10_flow_switch3_11;
wire flow_switch3_11_Mixer14;
wire flow_switch3_11_flow_switch3_12;
wire flow_switch3_12_Mixer11;
wire flow_switch3_12_flow_switch3_13;
wire flow_switch3_13_Mixer12;
wire flow_switch3_13_Mixer15;
wire Mixer13_Heater1;
wire Mixer14_Heater2;
wire Mixer15_Heater3;
wire Heater1_Filter1;
wire Heater2_Filter2;
wire Heater3_Filter3;
wire Filter2_flow_switch3_14;
wire flow_switch3_14_flow_switch3_15;
wire flow_switch3_14_flow_switch3_16;
wire flow_switch3_15_Filter1;
wire flow_switch3_15_Mixer16;
wire flow_switch3_16_Filter3;
wire flow_switch3_16_Mixer17;
wire Mixer16_Filter4;
wire Mixer17_Filter5;
wire Filter4_flow_switch3_17;
wire Filter5_flow_switch3_17;
wire flow_switch3_17_flow_switch4_5;
wire flow_switch4_5_Filter6;
wire flow_switch4_5_Filter7;
wire flow_switch4_5_Out1;
assign flow_switch3_1_Source1 = Source1;
assign flow_switch3_1_Source2 = Source2;
assign flow_switch3_2_Source3 = Source3;
assign flow_switch3_2_Source4 = Source4;
assign flow_switch3_3_Source5 = Source5;
assign flow_switch3_3_Source6 = Source6;
assign flow_switch3_4_Source7 = Source7;
assign flow_switch3_4_Source8 = Source8;
assign flow_switch3_5_Source9 = Source9;
assign flow_switch3_6_Source10 = Source10;
assign flow_switch3_7_Source11 = Source11;
assign flow_switch3_8_Source12 = Source12;
chamber Mixer1(.port1(flow_switch4_1_Mixer1));
chamber Mixer2(.port1(flow_switch4_1_Mixer2));
chamber Mixer3(.port1(flow_switch4_2_Mixer3));
chamber Mixer4(.port1(flow_switch4_2_Mixer4));
chamber Mixer5(.port1(flow_switch4_3_Mixer5));
chamber Mixer6(.port1(flow_switch4_3_Mixer6));
chamber Mixer7(.port1(flow_switch4_4_Mixer7));
chamber Mixer8(.port1(flow_switch4_4_Mixer8));
chamber Mixer9(.port0(flow_switch3_5_Mixer9),.port1(flow_switch3_9_Mixer9));
chamber Mixer10(.port0(flow_switch3_6_Mixer10),.port1(flow_switch3_10_Mixer10));
chamber Mixer11(.port0(flow_switch3_7_Mixer11),.port1(flow_switch3_12_Mixer11));
chamber Mixer12(.port0(flow_switch3_8_Mixer12),.port1(flow_switch3_13_Mixer12));
chamber Mixer13(.port0(flow_switch3_9_Mixer13),.port1(Mixer13_Heater1));
chamber Mixer14(.port0(flow_switch3_11_Mixer14),.port1(Mixer14_Heater2));
chamber Mixer15(.port0(Mixer15_Heater3),.port1(flow_switch3_13_Mixer15));
chamber Mixer16(.port0(Mixer16_Filter4),.port1(flow_switch3_15_Mixer16));
chamber Mixer17(.port0(Mixer17_Filter5),.port1(flow_switch3_16_Mixer17));
heater Heater1(.port0(Heater1_Filter1),.port1(Mixer13_Heater1));
heater Heater2(.port0(Heater2_Filter2),.port1(Mixer14_Heater2));
heater Heater3(.port0(Mixer15_Heater3),.port1(Heater3_Filter3));
filter Filter1(.port0(Heater1_Filter1),.port1(flow_switch3_15_Filter1));
filter Filter2(.port0(Heater2_Filter2),.port1(Filter2_flow_switch3_14));
filter Filter3(.port0(flow_switch3_16_Filter3),.port1(Heater3_Filter3));
filter Filter4(.port0(Mixer16_Filter4),.port1(Filter4_flow_switch3_17));
filter Filter5(.port0(Filter5_flow_switch3_17),.port1(Mixer17_Filter5));
filter Filter6(.port1(flow_switch4_5_Filter6));
filter Filter7(.port1(flow_switch4_5_Filter7));
assign Out1 = flow_switch4_5_Out1;
junction3 flow_switch3_1(.port1(flow_switch3_1_Source2),.port2(flow_switch3_1_flow_switch4_1),.port3(flow_switch3_1_Source1));
junction3 flow_switch3_2(.port1(flow_switch3_2_Source4),.port2(flow_switch3_2_flow_switch4_2),.port3(flow_switch3_2_Source3));
junction3 flow_switch3_3(.port0(flow_switch3_3_Source5),.port1(flow_switch3_3_flow_switch4_3),.port3(flow_switch3_3_Source6));
junction3 flow_switch3_4(.port0(flow_switch3_4_Source7),.port1(flow_switch3_4_flow_switch4_4),.port3(flow_switch3_4_Source8));
junction3 flow_switch3_5(.port0(flow_switch4_1_flow_switch3_5),.port2(flow_switch3_5_Mixer9),.port3(flow_switch3_5_Source9));
junction3 flow_switch3_6(.port0(flow_switch4_2_flow_switch3_6),.port2(flow_switch3_6_Mixer10),.port3(flow_switch3_6_Source10));
junction3 flow_switch3_7(.port1(flow_switch4_3_flow_switch3_7),.port2(flow_switch3_7_Mixer11),.port3(flow_switch3_7_Source11));
junction3 flow_switch3_8(.port1(flow_switch4_4_flow_switch3_8),.port2(flow_switch3_8_Mixer12),.port3(flow_switch3_8_Source12));
junction3 flow_switch3_9(.port0(flow_switch3_9_Mixer9),.port2(flow_switch3_9_Mixer13),.port3(flow_switch3_9_flow_switch3_10));
junction3 flow_switch3_10(.port0(flow_switch3_10_Mixer10),.port1(flow_switch3_9_flow_switch3_10),.port3(flow_switch3_10_flow_switch3_11));
junction3 flow_switch3_11(.port1(flow_switch3_11_Mixer14),.port2(flow_switch3_10_flow_switch3_11),.port3(flow_switch3_11_flow_switch3_12));
junction3 flow_switch3_12(.port0(flow_switch3_12_Mixer11),.port2(flow_switch3_11_flow_switch3_12),.port3(flow_switch3_12_flow_switch3_13));
junction3 flow_switch3_13(.port0(flow_switch3_13_Mixer15),.port2(flow_switch3_12_flow_switch3_13),.port3(flow_switch3_13_Mixer12));
junction3 flow_switch3_14(.port0(Filter2_flow_switch3_14),.port1(flow_switch3_14_flow_switch3_15),.port3(flow_switch3_14_flow_switch3_16));
junction3 flow_switch3_15(.port0(flow_switch3_15_Filter1),.port2(flow_switch3_15_Mixer16),.port3(flow_switch3_14_flow_switch3_15));
junction3 flow_switch3_16(.port0(flow_switch3_16_Filter3),.port2(flow_switch3_14_flow_switch3_16),.port3(flow_switch3_16_Mixer17));
junction3 flow_switch3_17(.port0(flow_switch3_17_flow_switch4_5),.port2(Filter5_flow_switch3_17),.port3(Filter4_flow_switch3_17));
junction4 flow_switch4_1(.port0(flow_switch3_1_flow_switch4_1),.port1(flow_switch4_1_Mixer2),.port2(flow_switch4_1_flow_switch3_5),.port3(flow_switch4_1_Mixer1));
junction4 flow_switch4_2(.port0(flow_switch3_2_flow_switch4_2),.port1(flow_switch4_2_Mixer4),.port2(flow_switch4_2_flow_switch3_6),.port3(flow_switch4_2_Mixer3));
junction4 flow_switch4_3(.port0(flow_switch4_3_Mixer6),.port1(flow_switch3_3_flow_switch4_3),.port2(flow_switch4_3_flow_switch3_7),.port3(flow_switch4_3_Mixer5));
junction4 flow_switch4_4(.port0(flow_switch4_4_Mixer7),.port1(flow_switch3_4_flow_switch4_4),.port2(flow_switch4_4_flow_switch3_8),.port3(flow_switch4_4_Mixer8));
junction4 flow_switch4_5(.port0(flow_switch4_5_Filter7),.port1(flow_switch3_17_flow_switch4_5),.port2(flow_switch4_5_Out1),.port3(flow_switch4_5_Filter6));
endmodule
