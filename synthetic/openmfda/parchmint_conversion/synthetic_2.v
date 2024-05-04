module Planar_Synthetic_2(
input Source1,
output Out1
);
wire Source1_Mixer1;
wire Out1_Heater4;
wire Mixer2_Filter1;
wire Mixer2_Heater1;
wire Mixer1_Filter1;
wire Heater1_Heater3;
wire Heater3_Mixer3;
wire Heater2_Filter2;
wire Heater2_Mixer4;
wire Mixer3_Filter2;
wire Mixer4_Heater4;
assign Source1_Mixer1 = Source1;
assign Out1 = Out1_Heater4;
chamber Mixer1(.port0(Source1_Mixer1),.port1(Mixer1_Filter1));
chamber Mixer2(.port0(Mixer2_Filter1),.port1(Mixer2_Heater1));
chamber Mixer3(.port0(Heater3_Mixer3),.port1(Mixer3_Filter2));
chamber Mixer4(.port0(Heater2_Mixer4),.port1(Mixer4_Heater4));
heater Heater1(.port0(Heater1_Heater3),.port1(Mixer2_Heater1));
heater Heater2(.port0(Heater2_Mixer4),.port1(Heater2_Filter2));
heater Heater3(.port0(Heater3_Mixer3),.port1(Heater1_Heater3));
heater Heater4(.port0(Out1_Heater4),.port1(Mixer4_Heater4));
filter Filter1(.port0(Mixer1_Filter1),.port1(Mixer2_Filter1));
filter Filter2(.port0(Mixer3_Filter2),.port1(Heater2_Filter2));
endmodule
