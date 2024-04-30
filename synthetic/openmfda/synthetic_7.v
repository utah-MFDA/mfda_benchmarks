module Planar_Synthetic_7(
input Source1,
input Source2,
output Out1
);
wire flow_switch4_1-Source1;
wire flow_switch4_1-Mixer1;
wire flow_switch4_1-Mixer2;
wire flow_switch4_2-flow_switch4_1;
wire flow_switch4_2-Mixer3;
wire flow_switch4_2-Mixer4;
wire flow_switch4_3-flow_switch4_2;
wire flow_switch4_3-Mixer5;
wire flow_switch4_3-Mixer6;
wire flow_switch4_4-flow_switch4_3;
wire flow_switch4_4-Mixer7;
wire flow_switch4_4-Mixer8;
wire flow_switch4_5-flow_switch4_4;
wire flow_switch4_5-Mixer9;
wire flow_switch4_5-Mixer10;
wire flow_switch4_6-flow_switch4_5;
wire flow_switch4_6-Heater1;
wire flow_switch4_6-Heater2;
wire flow_switch4_7-flow_switch4_6;
wire flow_switch4_7-Heater3;
wire flow_switch4_7-Heater4;
wire flow_switch4_8-flow_switch4_7;
wire flow_switch4_8-Filter1;
wire flow_switch4_8-Filter2;
wire flow_switch4_9-flow_switch4_8;
wire flow_switch4_9-Filter3;
wire flow_switch4_9-Filter4;
wire flow_switch4_10-Source2;
wire flow_switch4_10-Mixer11;
wire flow_switch4_10-Mixer12;
wire flow_switch4_11-flow_switch4_10;
wire flow_switch4_11-Mixer13;
wire flow_switch4_11-Mixer14;
wire flow_switch4_12-flow_switch4_11;
wire flow_switch4_12-Mixer15;
wire flow_switch4_12-Mixer16;
wire flow_switch4_13-flow_switch4_12;
wire flow_switch4_13-Mixer17;
wire flow_switch4_13-Mixer18;
wire flow_switch4_14-flow_switch4_13;
wire flow_switch4_14-Mixer19;
wire flow_switch4_14-Mixer20;
wire flow_switch4_15-flow_switch4_14;
wire flow_switch4_15-Heater5;
wire flow_switch4_15-Heater6;
wire flow_switch4_16-flow_switch4_15;
wire flow_switch4_16-Heater7;
wire flow_switch4_16-Heater8;
wire flow_switch4_17-flow_switch4_16;
wire flow_switch4_17-Filter5;
wire flow_switch4_17-Filter6;
wire flow_switch4_18-flow_switch4_17;
wire flow_switch4_18-Filter7;
wire flow_switch4_18-Filter8;
wire flow_switch3_1-flow_switch4_9;
wire flow_switch3_1-flow_switch4_18;
wire Filter9-flow_switch3_1;
wire Mixer21-Filter9;
wire Heater9-Mixer21;
wire Filter10-Heater9;
wire Out1-Filter10;
assign flow_switch4_1-Source1 = Source1;
assign flow_switch4_10-Source2 = Source2;
Mixer Mixer1(.port0(flow_switch4_1-Mixer1),.port1(None));
Mixer Mixer2(.port0(None),.port1(flow_switch4_1-Mixer2));
Mixer Mixer3(.port0(None),.port1(flow_switch4_2-Mixer3));
Mixer Mixer4(.port0(None),.port1(flow_switch4_2-Mixer4));
Mixer Mixer5(.port0(None),.port1(flow_switch4_3-Mixer5));
Mixer Mixer6(.port0(None),.port1(flow_switch4_3-Mixer6));
Mixer Mixer7(.port0(None),.port1(flow_switch4_4-Mixer7));
Mixer Mixer8(.port0(None),.port1(flow_switch4_4-Mixer8));
Mixer Mixer9(.port0(None),.port1(flow_switch4_5-Mixer9));
Mixer Mixer10(.port0(None),.port1(flow_switch4_5-Mixer10));
Mixer Mixer11(.port0(flow_switch4_10-Mixer11),.port1(None));
Mixer Mixer12(.port0(None),.port1(flow_switch4_10-Mixer12));
Mixer Mixer13(.port0(None),.port1(flow_switch4_11-Mixer13));
Mixer Mixer14(.port0(None),.port1(flow_switch4_11-Mixer14));
Mixer Mixer15(.port0(None),.port1(flow_switch4_12-Mixer15));
Mixer Mixer16(.port0(None),.port1(flow_switch4_12-Mixer16));
Mixer Mixer17(.port0(None),.port1(flow_switch4_13-Mixer17));
Mixer Mixer18(.port0(None),.port1(flow_switch4_13-Mixer18));
Mixer Mixer19(.port0(None),.port1(flow_switch4_14-Mixer19));
Mixer Mixer20(.port0(None),.port1(flow_switch4_14-Mixer20));
Mixer Mixer21(.port0(Heater9-Mixer21),.port1(Mixer21-Filter9));
Heater Heater1(.port0(flow_switch4_6-Heater1),.port1(None));
Heater Heater2(.port0(flow_switch4_6-Heater2),.port1(None));
Heater Heater3(.port0(flow_switch4_7-Heater3),.port1(None));
Heater Heater4(.port0(flow_switch4_7-Heater4),.port1(None));
Heater Heater5(.port0(flow_switch4_15-Heater5),.port1(None));
Heater Heater6(.port0(flow_switch4_15-Heater6),.port1(None));
Heater Heater7(.port0(flow_switch4_16-Heater7),.port1(None));
Heater Heater8(.port0(flow_switch4_16-Heater8),.port1(None));
Heater Heater9(.port0(Filter10-Heater9),.port1(Heater9-Mixer21));
Filter Filter1(.port0(flow_switch4_8-Filter1),.port1(None));
Filter Filter2(.port0(flow_switch4_8-Filter2),.port1(None));
Filter Filter3(.port0(flow_switch4_9-Filter3),.port1(None));
Filter Filter4(.port0(flow_switch4_9-Filter4),.port1(None));
Filter Filter5(.port0(flow_switch4_17-Filter5),.port1(None));
Filter Filter6(.port0(flow_switch4_17-Filter6),.port1(None));
Filter Filter7(.port0(flow_switch4_18-Filter7),.port1(None));
Filter Filter8(.port0(flow_switch4_18-Filter8),.port1(None));
Filter Filter9(.port0(Mixer21-Filter9),.port1(Filter9-flow_switch3_1));
Filter Filter10(.port0(Filter10-Heater9),.port1(Out1-Filter10));
assign Out1 = Out1-Filter10;
Switch flow_switch4_1(.port0(flow_switch4_2-flow_switch4_1),.port1(flow_switch4_1-Source1),.port2(flow_switch4_1-Mixer1),.port3(flow_switch4_1-Mixer2));
Switch flow_switch4_2(.port0(flow_switch4_2-Mixer4),.port1(flow_switch4_3-flow_switch4_2),.port2(flow_switch4_2-flow_switch4_1),.port3(flow_switch4_2-Mixer3));
Switch flow_switch4_3(.port0(flow_switch4_3-Mixer6),.port1(flow_switch4_3-flow_switch4_2),.port2(flow_switch4_4-flow_switch4_3),.port3(flow_switch4_3-Mixer5));
Switch flow_switch4_4(.port0(flow_switch4_4-Mixer8),.port1(flow_switch4_5-flow_switch4_4),.port2(flow_switch4_4-flow_switch4_3),.port3(flow_switch4_4-Mixer7));
Switch flow_switch4_5(.port0(flow_switch4_6-flow_switch4_5),.port1(flow_switch4_5-Mixer9),.port2(flow_switch4_5-flow_switch4_4),.port3(flow_switch4_5-Mixer10));
Switch flow_switch4_6(.port0(flow_switch4_6-Heater2),.port1(flow_switch4_7-flow_switch4_6),.port2(flow_switch4_6-flow_switch4_5),.port3(flow_switch4_6-Heater1));
Switch flow_switch4_7(.port0(flow_switch4_7-Heater4),.port1(flow_switch4_7-flow_switch4_6),.port2(flow_switch4_8-flow_switch4_7),.port3(flow_switch4_7-Heater3));
Switch flow_switch4_8(.port0(flow_switch4_8-Filter2),.port1(flow_switch4_9-flow_switch4_8),.port2(flow_switch4_8-flow_switch4_7),.port3(flow_switch4_8-Filter1));
Switch flow_switch4_9(.port0(flow_switch4_9-Filter4),.port1(flow_switch4_9-flow_switch4_8),.port2(flow_switch3_1-flow_switch4_9),.port3(flow_switch4_9-Filter3));
Switch flow_switch4_10(.port0(flow_switch4_11-flow_switch4_10),.port1(flow_switch4_10-Source2),.port2(flow_switch4_10-Mixer11),.port3(flow_switch4_10-Mixer12));
Switch flow_switch4_11(.port0(flow_switch4_11-Mixer14),.port1(flow_switch4_12-flow_switch4_11),.port2(flow_switch4_11-flow_switch4_10),.port3(flow_switch4_11-Mixer13));
Switch flow_switch4_12(.port0(flow_switch4_12-Mixer16),.port1(flow_switch4_12-flow_switch4_11),.port2(flow_switch4_13-flow_switch4_12),.port3(flow_switch4_12-Mixer15));
Switch flow_switch4_13(.port0(flow_switch4_13-Mixer18),.port1(flow_switch4_14-flow_switch4_13),.port2(flow_switch4_13-flow_switch4_12),.port3(flow_switch4_13-Mixer17));
Switch flow_switch4_14(.port0(flow_switch4_14-Mixer20),.port1(flow_switch4_14-flow_switch4_13),.port2(flow_switch4_15-flow_switch4_14),.port3(flow_switch4_14-Mixer19));
Switch flow_switch4_15(.port0(flow_switch4_15-Heater6),.port1(flow_switch4_16-flow_switch4_15),.port2(flow_switch4_15-flow_switch4_14),.port3(flow_switch4_15-Heater5));
Switch flow_switch4_16(.port0(flow_switch4_16-Heater8),.port1(flow_switch4_16-flow_switch4_15),.port2(flow_switch4_17-flow_switch4_16),.port3(flow_switch4_16-Heater7));
Switch flow_switch4_17(.port0(flow_switch4_17-Filter6),.port1(flow_switch4_18-flow_switch4_17),.port2(flow_switch4_17-flow_switch4_16),.port3(flow_switch4_17-Filter5));
Switch flow_switch4_18(.port0(flow_switch4_18-flow_switch4_17),.port1(flow_switch4_18-Filter8),.port2(flow_switch3_1-flow_switch4_18),.port3(flow_switch4_18-Filter7));
Switch flow_switch3_1(.port0(flow_switch3_1-flow_switch4_9),.port1(None),.port2(flow_switch3_1-flow_switch4_18),.port3(Filter9-flow_switch3_1));
endmodule
