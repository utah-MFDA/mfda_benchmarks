module Planar_Synthetic_7(
input Source1,
input Source2,
output Out1
);
wire flow_switch4_1_Source1;
wire flow_switch4_1_Mixer1;
wire flow_switch4_1_Mixer2;
wire flow_switch4_2_flow_switch4_1;
wire flow_switch4_2_Mixer3;
wire flow_switch4_2_Mixer4;
wire flow_switch4_3_flow_switch4_2;
wire flow_switch4_3_Mixer5;
wire flow_switch4_3_Mixer6;
wire flow_switch4_4_flow_switch4_3;
wire flow_switch4_4_Mixer7;
wire flow_switch4_4_Mixer8;
wire flow_switch4_5_flow_switch4_4;
wire flow_switch4_5_Mixer9;
wire flow_switch4_5_Mixer10;
wire flow_switch4_6_flow_switch4_5;
wire flow_switch4_6_Heater1;
wire flow_switch4_6_Heater2;
wire flow_switch4_7_flow_switch4_6;
wire flow_switch4_7_Heater3;
wire flow_switch4_7_Heater4;
wire flow_switch4_8_flow_switch4_7;
wire flow_switch4_8_Filter1;
wire flow_switch4_8_Filter2;
wire flow_switch4_9_flow_switch4_8;
wire flow_switch4_9_Filter3;
wire flow_switch4_9_Filter4;
wire flow_switch4_10_Source2;
wire flow_switch4_10_Mixer11;
wire flow_switch4_10_Mixer12;
wire flow_switch4_11_flow_switch4_10;
wire flow_switch4_11_Mixer13;
wire flow_switch4_11_Mixer14;
wire flow_switch4_12_flow_switch4_11;
wire flow_switch4_12_Mixer15;
wire flow_switch4_12_Mixer16;
wire flow_switch4_13_flow_switch4_12;
wire flow_switch4_13_Mixer17;
wire flow_switch4_13_Mixer18;
wire flow_switch4_14_flow_switch4_13;
wire flow_switch4_14_Mixer19;
wire flow_switch4_14_Mixer20;
wire flow_switch4_15_flow_switch4_14;
wire flow_switch4_15_Heater5;
wire flow_switch4_15_Heater6;
wire flow_switch4_16_flow_switch4_15;
wire flow_switch4_16_Heater7;
wire flow_switch4_16_Heater8;
wire flow_switch4_17_flow_switch4_16;
wire flow_switch4_17_Filter5;
wire flow_switch4_17_Filter6;
wire flow_switch4_18_flow_switch4_17;
wire flow_switch4_18_Filter7;
wire flow_switch4_18_Filter8;
wire flow_switch3_1_flow_switch4_9;
wire flow_switch3_1_flow_switch4_18;
wire Filter9_flow_switch3_1;
wire Mixer21_Filter9;
wire Heater9_Mixer21;
wire Filter10_Heater9;
wire Out1_Filter10;
assign flow_switch4_1_Source1 = Source1;
assign flow_switch4_10_Source2 = Source2;
mixer Mixer1(.port0(flow_switch4_1_Mixer1));
mixer Mixer2(.port1(flow_switch4_1_Mixer2));
mixer Mixer3(.port1(flow_switch4_2_Mixer3));
mixer Mixer4(.port1(flow_switch4_2_Mixer4));
mixer Mixer5(.port1(flow_switch4_3_Mixer5));
mixer Mixer6(.port1(flow_switch4_3_Mixer6));
mixer Mixer7(.port1(flow_switch4_4_Mixer7));
mixer Mixer8(.port1(flow_switch4_4_Mixer8));
mixer Mixer9(.port1(flow_switch4_5_Mixer9));
mixer Mixer10(.port1(flow_switch4_5_Mixer10));
mixer Mixer11(.port0(flow_switch4_10_Mixer11));
mixer Mixer12(.port1(flow_switch4_10_Mixer12));
mixer Mixer13(.port1(flow_switch4_11_Mixer13));
mixer Mixer14(.port1(flow_switch4_11_Mixer14));
mixer Mixer15(.port1(flow_switch4_12_Mixer15));
mixer Mixer16(.port1(flow_switch4_12_Mixer16));
mixer Mixer17(.port1(flow_switch4_13_Mixer17));
mixer Mixer18(.port1(flow_switch4_13_Mixer18));
mixer Mixer19(.port1(flow_switch4_14_Mixer19));
mixer Mixer20(.port1(flow_switch4_14_Mixer20));
mixer Mixer21(.port0(Heater9_Mixer21),.port1(Mixer21_Filter9));
heater Heater1(.port0(flow_switch4_6_Heater1));
heater Heater2(.port0(flow_switch4_6_Heater2));
heater Heater3(.port0(flow_switch4_7_Heater3));
heater Heater4(.port0(flow_switch4_7_Heater4));
heater Heater5(.port0(flow_switch4_15_Heater5));
heater Heater6(.port0(flow_switch4_15_Heater6));
heater Heater7(.port0(flow_switch4_16_Heater7));
heater Heater8(.port0(flow_switch4_16_Heater8));
heater Heater9(.port0(Filter10_Heater9),.port1(Heater9_Mixer21));
filter Filter1(.port0(flow_switch4_8_Filter1));
filter Filter2(.port0(flow_switch4_8_Filter2));
filter Filter3(.port0(flow_switch4_9_Filter3));
filter Filter4(.port0(flow_switch4_9_Filter4));
filter Filter5(.port0(flow_switch4_17_Filter5));
filter Filter6(.port0(flow_switch4_17_Filter6));
filter Filter7(.port0(flow_switch4_18_Filter7));
filter Filter8(.port0(flow_switch4_18_Filter8));
filter Filter9(.port0(Mixer21_Filter9),.port1(Filter9_flow_switch3_1));
filter Filter10(.port0(Filter10_Heater9),.port1(Out1_Filter10));
assign Out1 = Out1_Filter10;
junction4 flow_switch4_1(.port0(flow_switch4_2_flow_switch4_1),.port1(flow_switch4_1_Source1),.port2(flow_switch4_1_Mixer1),.port3(flow_switch4_1_Mixer2));
junction4 flow_switch4_2(.port0(flow_switch4_2_Mixer4),.port1(flow_switch4_3_flow_switch4_2),.port2(flow_switch4_2_flow_switch4_1),.port3(flow_switch4_2_Mixer3));
junction4 flow_switch4_3(.port0(flow_switch4_3_Mixer6),.port1(flow_switch4_3_flow_switch4_2),.port2(flow_switch4_4_flow_switch4_3),.port3(flow_switch4_3_Mixer5));
junction4 flow_switch4_4(.port0(flow_switch4_4_Mixer8),.port1(flow_switch4_5_flow_switch4_4),.port2(flow_switch4_4_flow_switch4_3),.port3(flow_switch4_4_Mixer7));
junction4 flow_switch4_5(.port0(flow_switch4_6_flow_switch4_5),.port1(flow_switch4_5_Mixer9),.port2(flow_switch4_5_flow_switch4_4),.port3(flow_switch4_5_Mixer10));
junction4 flow_switch4_6(.port0(flow_switch4_6_Heater2),.port1(flow_switch4_7_flow_switch4_6),.port2(flow_switch4_6_flow_switch4_5),.port3(flow_switch4_6_Heater1));
junction4 flow_switch4_7(.port0(flow_switch4_7_Heater4),.port1(flow_switch4_7_flow_switch4_6),.port2(flow_switch4_8_flow_switch4_7),.port3(flow_switch4_7_Heater3));
junction4 flow_switch4_8(.port0(flow_switch4_8_Filter2),.port1(flow_switch4_9_flow_switch4_8),.port2(flow_switch4_8_flow_switch4_7),.port3(flow_switch4_8_Filter1));
junction4 flow_switch4_9(.port0(flow_switch4_9_Filter4),.port1(flow_switch4_9_flow_switch4_8),.port2(flow_switch3_1_flow_switch4_9),.port3(flow_switch4_9_Filter3));
junction4 flow_switch4_10(.port0(flow_switch4_11_flow_switch4_10),.port1(flow_switch4_10_Source2),.port2(flow_switch4_10_Mixer11),.port3(flow_switch4_10_Mixer12));
junction4 flow_switch4_11(.port0(flow_switch4_11_Mixer14),.port1(flow_switch4_12_flow_switch4_11),.port2(flow_switch4_11_flow_switch4_10),.port3(flow_switch4_11_Mixer13));
junction4 flow_switch4_12(.port0(flow_switch4_12_Mixer16),.port1(flow_switch4_12_flow_switch4_11),.port2(flow_switch4_13_flow_switch4_12),.port3(flow_switch4_12_Mixer15));
junction4 flow_switch4_13(.port0(flow_switch4_13_Mixer18),.port1(flow_switch4_14_flow_switch4_13),.port2(flow_switch4_13_flow_switch4_12),.port3(flow_switch4_13_Mixer17));
junction4 flow_switch4_14(.port0(flow_switch4_14_Mixer20),.port1(flow_switch4_14_flow_switch4_13),.port2(flow_switch4_15_flow_switch4_14),.port3(flow_switch4_14_Mixer19));
junction4 flow_switch4_15(.port0(flow_switch4_15_Heater6),.port1(flow_switch4_16_flow_switch4_15),.port2(flow_switch4_15_flow_switch4_14),.port3(flow_switch4_15_Heater5));
junction4 flow_switch4_16(.port0(flow_switch4_16_Heater8),.port1(flow_switch4_16_flow_switch4_15),.port2(flow_switch4_17_flow_switch4_16),.port3(flow_switch4_16_Heater7));
junction4 flow_switch4_17(.port0(flow_switch4_17_Filter6),.port1(flow_switch4_18_flow_switch4_17),.port2(flow_switch4_17_flow_switch4_16),.port3(flow_switch4_17_Filter5));
junction4 flow_switch4_18(.port0(flow_switch4_18_flow_switch4_17),.port1(flow_switch4_18_Filter8),.port2(flow_switch3_1_flow_switch4_18),.port3(flow_switch4_18_Filter7));
junction3 flow_switch3_1(.port0(flow_switch3_1_flow_switch4_9),.port2(flow_switch3_1_flow_switch4_18),.port3(Filter9_flow_switch3_1));
endmodule
