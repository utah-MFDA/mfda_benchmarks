module Planar_Synthetic_4(
input Source1,
output Out1
);
wire flow_switch3_0-Out1;
wire flow_switch3_0-flow_switch4_10;
wire flow_switch4_9-flow_switch4_7;
wire flow_switch4_9-Filter1;
wire flow_switch4_9-Filter2;
wire flow_switch4_10-flow_switch4_8;
wire flow_switch4_10-Filter3;
wire flow_switch4_10-Filter4;
wire flow_switch4_7-flow_switch4_5;
wire flow_switch4_7-Heater1;
wire flow_switch4_7-Heater2;
wire flow_switch4_8-flow_switch4_6;
wire flow_switch4_8-Heater3;
wire flow_switch4_8-Heater4;
wire flow_switch4_5-flow_switch4_3;
wire flow_switch4_5-Mixer9;
wire flow_switch4_5-Mixer10;
wire flow_switch4_6-flow_switch4_4;
wire flow_switch4_6-Mixer11;
wire flow_switch4_6-Mixer12;
wire flow_switch4_3-flow_switch4_1;
wire flow_switch4_3-Mixer5;
wire flow_switch4_3-Mixer6;
wire flow_switch4_4-flow_switch4_2;
wire flow_switch4_4-Mixer7;
wire flow_switch4_4-Mixer8;
wire flow_switch4_1-Mixer1;
wire flow_switch4_1-Mixer2;
wire flow_switch4_2-Mixer3;
wire flow_switch4_2-Mixer4;
wire flow_switch3_1-Source1;
wire flow_switch3_1-flow_switch4_1;
wire flow_switch3_1-flow_switch4_2;
assign flow_switch3_1-Source1 = Source1;
assign Out1 = flow_switch3_0-Out1;
Mixer Mixer1(.port0(None),.port1(flow_switch4_1-Mixer1));
Mixer Mixer2(.port0(None),.port1(flow_switch4_1-Mixer2));
Mixer Mixer3(.port0(flow_switch4_2-Mixer3),.port1(None));
Mixer Mixer4(.port0(flow_switch4_2-Mixer4),.port1(None));
Mixer Mixer5(.port0(None),.port1(flow_switch4_3-Mixer5));
Mixer Mixer6(.port0(None),.port1(flow_switch4_3-Mixer6));
Mixer Mixer7(.port0(flow_switch4_4-Mixer7),.port1(None));
Mixer Mixer8(.port0(None),.port1(flow_switch4_4-Mixer8));
Mixer Mixer9(.port0(None),.port1(flow_switch4_5-Mixer9));
Mixer Mixer10(.port0(None),.port1(flow_switch4_5-Mixer10));
Mixer Mixer11(.port0(flow_switch4_6-Mixer11),.port1(None));
Mixer Mixer12(.port0(None),.port1(flow_switch4_6-Mixer12));
Heater Heater1(.port0(flow_switch4_7-Heater1),.port1(None));
Heater Heater2(.port0(flow_switch4_7-Heater2),.port1(None));
Heater Heater3(.port0(None),.port1(flow_switch4_8-Heater3));
Heater Heater4(.port0(flow_switch4_8-Heater4),.port1(None));
Filter Filter1(.port0(flow_switch4_9-Filter1),.port1(None));
Filter Filter2(.port0(flow_switch4_9-Filter2),.port1(None));
Filter Filter3(.port0(flow_switch4_10-Filter3),.port1(None));
Filter Filter4(.port0(flow_switch4_10-Filter4),.port1(None));
Switch flow_switch3_0(.port0(None),.port1(flow_switch3_0-flow_switch4_10),.port2(None),.port3(flow_switch3_0-Out1));
Switch flow_switch3_1(.port0(flow_switch3_1-flow_switch4_2),.port1(None),.port2(flow_switch3_1-Source1),.port3(flow_switch3_1-flow_switch4_1));
Switch flow_switch4_1(.port0(flow_switch4_1-Mixer2),.port1(flow_switch4_3-flow_switch4_1),.port2(flow_switch3_1-flow_switch4_1),.port3(flow_switch4_1-Mixer1));
Switch flow_switch4_2(.port0(flow_switch4_4-flow_switch4_2),.port1(flow_switch4_2-Mixer4),.port2(flow_switch4_2-Mixer3),.port3(flow_switch3_1-flow_switch4_2));
Switch flow_switch4_3(.port0(flow_switch4_3-Mixer6),.port1(flow_switch4_5-flow_switch4_3),.port2(flow_switch4_3-flow_switch4_1),.port3(flow_switch4_3-Mixer5));
Switch flow_switch4_4(.port0(flow_switch4_6-flow_switch4_4),.port1(flow_switch4_4-flow_switch4_2),.port2(flow_switch4_4-Mixer7),.port3(flow_switch4_4-Mixer8));
Switch flow_switch4_5(.port0(flow_switch4_7-flow_switch4_5),.port1(flow_switch4_5-Mixer9),.port2(flow_switch4_5-flow_switch4_3),.port3(flow_switch4_5-Mixer10));
Switch flow_switch4_6(.port0(flow_switch4_8-flow_switch4_6),.port1(flow_switch4_6-flow_switch4_4),.port2(flow_switch4_6-Mixer11),.port3(flow_switch4_6-Mixer12));
Switch flow_switch4_7(.port0(flow_switch4_7-Heater2),.port1(flow_switch4_9-flow_switch4_7),.port2(flow_switch4_7-flow_switch4_5),.port3(flow_switch4_7-Heater1));
Switch flow_switch4_8(.port0(flow_switch4_10-flow_switch4_8),.port1(flow_switch4_8-flow_switch4_6),.port2(flow_switch4_8-Heater3),.port3(flow_switch4_8-Heater4));
Switch flow_switch4_9(.port0(flow_switch4_9-Filter2),.port1(None),.port2(flow_switch4_9-Filter1),.port3(flow_switch4_9-flow_switch4_7));
Switch flow_switch4_10(.port0(flow_switch3_0-flow_switch4_10),.port1(flow_switch4_10-flow_switch4_8),.port2(flow_switch4_10-Filter3),.port3(flow_switch4_10-Filter4));
endmodule