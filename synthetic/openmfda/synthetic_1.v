module Planar_Synthetic_1(
input Source1,
input Source2,
output Out1
);
wire flow_switch3_0-Source1;
wire flow_switch3_0-Source2;
wire flow_switch3_0-flow_switch4_1;
wire flow_switch4_1-flow_switch4_2;
wire flow_switch4_1-flow_switch4_4;
wire flow_switch4_2-flow_switch4_5;
wire flow_switch4_2-Mixer1;
wire flow_switch4_2-Mixer2;
wire flow_switch4_4-flow_switch4_7;
wire flow_switch4_4-Mixer3;
wire flow_switch4_4-Mixer4;
wire flow_switch4_5-flow_switch4_8;
wire flow_switch4_5-Heater1;
wire flow_switch4_5-Heater2;
wire flow_switch4_7-flow_switch4_8;
wire flow_switch4_7-Heater3;
wire flow_switch4_7-Heater4;
wire flow_switch4_8-flow_switch4_9;
wire flow_switch4_9-Filter1;
wire flow_switch4_9-Filter2;
wire flow_switch4_9-Out1;
assign flow_switch3_0-Source1 = Source1;
assign flow_switch3_0-Source2 = Source2;
assign Out1 = flow_switch4_9-Out1;
Mixer Mixer1(.port0(None),.port1(flow_switch4_2-Mixer1));
Mixer Mixer2(.port0(None),.port1(flow_switch4_2-Mixer2));
Mixer Mixer3(.port0(flow_switch4_4-Mixer3),.port1(None));
Mixer Mixer4(.port0(None),.port1(flow_switch4_4-Mixer4));
Heater Heater1(.port0(flow_switch4_5-Heater1),.port1(None));
Heater Heater2(.port0(flow_switch4_5-Heater2),.port1(None));
Heater Heater3(.port0(flow_switch4_7-Heater3),.port1(None));
Heater Heater4(.port0(flow_switch4_7-Heater4),.port1(None));
Filter Filter1(.port0(None),.port1(flow_switch4_9-Filter1));
Filter Filter2(.port0(None),.port1(flow_switch4_9-Filter2));
Switch flow_switch3_0(.port0(None),.port1(flow_switch3_0-Source2),.port2(flow_switch3_0-Source1),.port3(flow_switch3_0-flow_switch4_1));
Switch flow_switch4_1(.port0(flow_switch4_1-flow_switch4_4),.port1(flow_switch4_1-flow_switch4_2),.port2(flow_switch3_0-flow_switch4_1),.port3(None));
Switch flow_switch4_2(.port0(flow_switch4_2-Mixer2),.port1(flow_switch4_2-flow_switch4_5),.port2(flow_switch4_1-flow_switch4_2),.port3(flow_switch4_2-Mixer1));
Switch flow_switch4_4(.port0(flow_switch4_4-flow_switch4_7),.port1(flow_switch4_1-flow_switch4_4),.port2(flow_switch4_4-Mixer3),.port3(flow_switch4_4-Mixer4));
Switch flow_switch4_5(.port0(flow_switch4_5-Heater2),.port1(flow_switch4_2-flow_switch4_5),.port2(flow_switch4_5-flow_switch4_8),.port3(flow_switch4_5-Heater1));
Switch flow_switch4_7(.port0(flow_switch4_7-Heater4),.port1(flow_switch4_7-flow_switch4_8),.port2(flow_switch4_4-flow_switch4_7),.port3(flow_switch4_7-Heater3));
Switch flow_switch4_8(.port0(flow_switch4_8-flow_switch4_9),.port1(None),.port2(flow_switch4_7-flow_switch4_8),.port3(flow_switch4_5-flow_switch4_8));
Switch flow_switch4_9(.port0(flow_switch4_9-Filter2),.port1(flow_switch4_8-flow_switch4_9),.port2(flow_switch4_9-Out1),.port3(flow_switch4_9-Filter1));
endmodule
