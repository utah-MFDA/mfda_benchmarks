module Planar_Synthetic_2(
input Source1,
output Out1
);
wire Source1-Mixer1;
wire Out1-Heater4;
wire Mixer2-Filter1;
wire Mixer2-Heater1;
wire Mixer1-Filter1;
wire Heater1-Heater3;
wire Heater3-Mixer3;
wire Heater2-Filter2;
wire Heater2-Mixer4;
wire Mixer3-Filter2;
wire Mixer4-Heater4;
assign Source1-Mixer1 = Source1;
assign Out1 = Out1-Heater4;
Mixer Mixer1(.port0(Source1-Mixer1),.port1(Mixer1-Filter1));
Mixer Mixer2(.port0(Mixer2-Filter1),.port1(Mixer2-Heater1));
Mixer Mixer3(.port0(Heater3-Mixer3),.port1(Mixer3-Filter2));
Mixer Mixer4(.port0(Heater2-Mixer4),.port1(Mixer4-Heater4));
Heater Heater1(.port0(Heater1-Heater3),.port1(Mixer2-Heater1));
Heater Heater2(.port0(Heater2-Mixer4),.port1(Heater2-Filter2));
Heater Heater3(.port0(Heater3-Mixer3),.port1(Heater1-Heater3));
Heater Heater4(.port0(Out1-Heater4),.port1(Mixer4-Heater4));
Filter Filter1(.port0(Mixer1-Filter1),.port1(Mixer2-Filter1));
Filter Filter2(.port0(Mixer3-Filter2),.port1(Heater2-Filter2));
endmodule
