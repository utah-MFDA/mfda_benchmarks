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
wire flow_switch3_1-Source1;
wire flow_switch3_1-Source2;
wire flow_switch3_1-flow_switch4_1;
wire flow_switch3_2-Source3;
wire flow_switch3_2-Source4;
wire flow_switch3_2-flow_switch4_2;
wire flow_switch3_3-Source5;
wire flow_switch3_3-Source6;
wire flow_switch3_3-flow_switch4_3;
wire flow_switch3_4-Source7;
wire flow_switch3_4-Source8;
wire flow_switch3_4-flow_switch4_4;
wire flow_switch4_1-Mixer1;
wire flow_switch4_1-Mixer2;
wire flow_switch4_1-flow_switch3_5;
wire flow_switch4_2-Mixer3;
wire flow_switch4_2-Mixer4;
wire flow_switch4_2-flow_switch3_6;
wire flow_switch4_3-Mixer5;
wire flow_switch4_3-Mixer6;
wire flow_switch4_3-flow_switch3_7;
wire flow_switch4_4-Mixer7;
wire flow_switch4_4-Mixer8;
wire flow_switch4_4-flow_switch3_8;
wire flow_switch3_5-Source9;
wire flow_switch3_5-Mixer9;
wire flow_switch3_6-Source10;
wire flow_switch3_6-Mixer10;
wire flow_switch3_7-Source11;
wire flow_switch3_7-Mixer11;
wire flow_switch3_8-Source12;
wire flow_switch3_8-Mixer12;
wire flow_switch3_9-Mixer9;
wire flow_switch3_9-Mixer13;
wire flow_switch3_9-flow_switch3_10;
wire flow_switch3_10-Mixer10;
wire flow_switch3_10-flow_switch3_11;
wire flow_switch3_11-Mixer14;
wire flow_switch3_11-flow_switch3_12;
wire flow_switch3_12-Mixer11;
wire flow_switch3_12-flow_switch3_13;
wire flow_switch3_13-Mixer12;
wire flow_switch3_13-Mixer15;
wire Mixer13-Heater1;
wire Mixer14-Heater2;
wire Mixer15-Heater3;
wire Heater1-Filter1;
wire Heater2-Filter2;
wire Heater3-Filter3;
wire Filter2-flow_switch3_14;
wire flow_switch3_14-flow_switch3_15;
wire flow_switch3_14-flow_switch3_16;
wire flow_switch3_15-Filter1;
wire flow_switch3_15-Mixer16;
wire flow_switch3_16-Filter3;
wire flow_switch3_16-Mixer17;
wire Mixer16-Filter4;
wire Mixer17-Filter5;
wire Filter4-flow_switch3_17;
wire Filter5-flow_switch3_17;
wire flow_switch3_17-flow_switch4_5;
wire flow_switch4_5-Filter6;
wire flow_switch4_5-Filter7;
wire flow_switch4_5-Out1;
assign flow_switch3_1-Source1 = Source1;
assign flow_switch3_1-Source2 = Source2;
assign flow_switch3_2-Source3 = Source3;
assign flow_switch3_2-Source4 = Source4;
assign flow_switch3_3-Source5 = Source5;
assign flow_switch3_3-Source6 = Source6;
assign flow_switch3_4-Source7 = Source7;
assign flow_switch3_4-Source8 = Source8;
assign flow_switch3_5-Source9 = Source9;
assign flow_switch3_6-Source10 = Source10;
assign flow_switch3_7-Source11 = Source11;
assign flow_switch3_8-Source12 = Source12;
Mixer Mixer1(.port0(None),.port1(flow_switch4_1-Mixer1));
Mixer Mixer2(.port0(None),.port1(flow_switch4_1-Mixer2));
Mixer Mixer3(.port0(None),.port1(flow_switch4_2-Mixer3));
Mixer Mixer4(.port0(None),.port1(flow_switch4_2-Mixer4));
Mixer Mixer5(.port0(None),.port1(flow_switch4_3-Mixer5));
Mixer Mixer6(.port0(None),.port1(flow_switch4_3-Mixer6));
Mixer Mixer7(.port0(None),.port1(flow_switch4_4-Mixer7));
Mixer Mixer8(.port0(None),.port1(flow_switch4_4-Mixer8));
Mixer Mixer9(.port0(flow_switch3_5-Mixer9),.port1(flow_switch3_9-Mixer9));
Mixer Mixer10(.port0(flow_switch3_6-Mixer10),.port1(flow_switch3_10-Mixer10));
Mixer Mixer11(.port0(flow_switch3_7-Mixer11),.port1(flow_switch3_12-Mixer11));
Mixer Mixer12(.port0(flow_switch3_8-Mixer12),.port1(flow_switch3_13-Mixer12));
Mixer Mixer13(.port0(flow_switch3_9-Mixer13),.port1(Mixer13-Heater1));
Mixer Mixer14(.port0(flow_switch3_11-Mixer14),.port1(Mixer14-Heater2));
Mixer Mixer15(.port0(Mixer15-Heater3),.port1(flow_switch3_13-Mixer15));
Mixer Mixer16(.port0(Mixer16-Filter4),.port1(flow_switch3_15-Mixer16));
Mixer Mixer17(.port0(Mixer17-Filter5),.port1(flow_switch3_16-Mixer17));
Heater Heater1(.port0(Heater1-Filter1),.port1(Mixer13-Heater1));
Heater Heater2(.port0(Heater2-Filter2),.port1(Mixer14-Heater2));
Heater Heater3(.port0(Mixer15-Heater3),.port1(Heater3-Filter3));
Filter Filter1(.port0(Heater1-Filter1),.port1(flow_switch3_15-Filter1));
Filter Filter2(.port0(Heater2-Filter2),.port1(Filter2-flow_switch3_14));
Filter Filter3(.port0(flow_switch3_16-Filter3),.port1(Heater3-Filter3));
Filter Filter4(.port0(Mixer16-Filter4),.port1(Filter4-flow_switch3_17));
Filter Filter5(.port0(Filter5-flow_switch3_17),.port1(Mixer17-Filter5));
Filter Filter6(.port0(None),.port1(flow_switch4_5-Filter6));
Filter Filter7(.port0(None),.port1(flow_switch4_5-Filter7));
assign Out1 = flow_switch4_5-Out1;
Switch flow_switch3_1(.port0(None),.port1(flow_switch3_1-Source2),.port2(flow_switch3_1-flow_switch4_1),.port3(flow_switch3_1-Source1));
Switch flow_switch3_2(.port0(None),.port1(flow_switch3_2-Source4),.port2(flow_switch3_2-flow_switch4_2),.port3(flow_switch3_2-Source3));
Switch flow_switch3_3(.port0(flow_switch3_3-Source5),.port1(flow_switch3_3-flow_switch4_3),.port2(None),.port3(flow_switch3_3-Source6));
Switch flow_switch3_4(.port0(flow_switch3_4-Source7),.port1(flow_switch3_4-flow_switch4_4),.port2(None),.port3(flow_switch3_4-Source8));
Switch flow_switch3_5(.port0(flow_switch4_1-flow_switch3_5),.port1(None),.port2(flow_switch3_5-Mixer9),.port3(flow_switch3_5-Source9));
Switch flow_switch3_6(.port0(flow_switch4_2-flow_switch3_6),.port1(None),.port2(flow_switch3_6-Mixer10),.port3(flow_switch3_6-Source10));
Switch flow_switch3_7(.port0(None),.port1(flow_switch4_3-flow_switch3_7),.port2(flow_switch3_7-Mixer11),.port3(flow_switch3_7-Source11));
Switch flow_switch3_8(.port0(None),.port1(flow_switch4_4-flow_switch3_8),.port2(flow_switch3_8-Mixer12),.port3(flow_switch3_8-Source12));
Switch flow_switch3_9(.port0(flow_switch3_9-Mixer9),.port1(None),.port2(flow_switch3_9-Mixer13),.port3(flow_switch3_9-flow_switch3_10));
Switch flow_switch3_10(.port0(flow_switch3_10-Mixer10),.port1(flow_switch3_9-flow_switch3_10),.port2(None),.port3(flow_switch3_10-flow_switch3_11));
Switch flow_switch3_11(.port0(None),.port1(flow_switch3_11-Mixer14),.port2(flow_switch3_10-flow_switch3_11),.port3(flow_switch3_11-flow_switch3_12));
Switch flow_switch3_12(.port0(flow_switch3_12-Mixer11),.port1(None),.port2(flow_switch3_11-flow_switch3_12),.port3(flow_switch3_12-flow_switch3_13));
Switch flow_switch3_13(.port0(flow_switch3_13-Mixer15),.port1(None),.port2(flow_switch3_12-flow_switch3_13),.port3(flow_switch3_13-Mixer12));
Switch flow_switch3_14(.port0(Filter2-flow_switch3_14),.port1(flow_switch3_14-flow_switch3_15),.port2(None),.port3(flow_switch3_14-flow_switch3_16));
Switch flow_switch3_15(.port0(flow_switch3_15-Filter1),.port1(None),.port2(flow_switch3_15-Mixer16),.port3(flow_switch3_14-flow_switch3_15));
Switch flow_switch3_16(.port0(flow_switch3_16-Filter3),.port1(None),.port2(flow_switch3_14-flow_switch3_16),.port3(flow_switch3_16-Mixer17));
Switch flow_switch3_17(.port0(flow_switch3_17-flow_switch4_5),.port1(None),.port2(Filter5-flow_switch3_17),.port3(Filter4-flow_switch3_17));
Switch flow_switch4_1(.port0(flow_switch3_1-flow_switch4_1),.port1(flow_switch4_1-Mixer2),.port2(flow_switch4_1-flow_switch3_5),.port3(flow_switch4_1-Mixer1));
Switch flow_switch4_2(.port0(flow_switch3_2-flow_switch4_2),.port1(flow_switch4_2-Mixer4),.port2(flow_switch4_2-flow_switch3_6),.port3(flow_switch4_2-Mixer3));
Switch flow_switch4_3(.port0(flow_switch4_3-Mixer6),.port1(flow_switch3_3-flow_switch4_3),.port2(flow_switch4_3-flow_switch3_7),.port3(flow_switch4_3-Mixer5));
Switch flow_switch4_4(.port0(flow_switch4_4-Mixer7),.port1(flow_switch3_4-flow_switch4_4),.port2(flow_switch4_4-flow_switch3_8),.port3(flow_switch4_4-Mixer8));
Switch flow_switch4_5(.port0(flow_switch4_5-Filter7),.port1(flow_switch3_17-flow_switch4_5),.port2(flow_switch4_5-Out1),.port3(flow_switch4_5-Filter6));
endmodule
