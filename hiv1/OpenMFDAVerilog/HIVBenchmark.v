//HIV Immunoassay OpenMFDA design
module hiv1_p24_immunoassay(input Source1, Source2, Source3, Source4, Source5, 
M, Controlin, c1, c2, c3, c4, c5, c6, c7, c8, output SampleOut);
//junctions
wire j1;
wire j2;

wire w1;


//internal connections

// Instances of switches
valve v1(.fluid_in(Source1), .fluid_out(j1), .air_in(c1));
valve v2(.fluid_in(Source2), .fluid_out(j1), .air_in(c2));
valve v3(.fluid_in(Source3), .fluid_out(j1), .air_in(c3));
valve v4(.fluid_in(Source4), .fluid_out(j1), .air_in(c4));
valve v5(.fluid_in(Source1), .fluid_out(j1), .air_in(c5));

chamber mix1(.in(j1), .out(w1));

valve v6(.fluid_in(w1), .fluid_out(j2), .air_in(c6));

valve v7(.fluid_in(M), .fluid_out(j2), .air_in(c7));

valve v8(.fluid_in(Controlin), .fluid_out(j2), .air_in(c8));

chamber Sampleout(.in(j2), .out(SampleOut));

endmodule