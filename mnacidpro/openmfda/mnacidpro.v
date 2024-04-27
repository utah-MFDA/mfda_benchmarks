module mnacidpro(input in1, in2, in3, in4, in5, in6, in7,
                 input c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,
                 input p1, p2, p3,
                 output out1, out2);
  wire j1,j2,j3,j4,j5;
  wire jp1, jp2;
  valve v1(.fluid_in(in1), .fluid_out(j1), .air_in(c1));
  valve v2(.fluid_in(in2), .fluid_out(j1), .air_in(c2));
  valve v3(.fluid_in(in3), .fluid_out(j1), .air_in(c3));
  valve v4(.fluid_in(j1), .fluid_out(j2), .air_in(c4));
  valve v5(.fluid_in(in5), .fluid_out(j2), .air_in(c5));
  valve v6(.fluid_in(in6), .fluid_out(j2), .air_in(c6));
  valve v7(.fluid_in(in5), .fluid_out(j5), .air_in(c7));
  valve vp1(.fluid_in(j5), .fluid_out(jp1), .air_in(p1));
  valve vp2(.fluid_in(jp1), .fluid_out(jp2), .air_in(p2));
  valve vp3(.fluid_in(jp2), .fluid_out(j5), .air_in(p3));
  valve v8(.fluid_in(in5), .fluid_out(j3), .air_in(c8));
  valve v9(.fluid_in(in7), .fluid_out(j3), .air_in(c9));
  valve v10(.fluid_in(in6), .fluid_out(j3), .air_in(c10));
  valve v11(.fluid_in(j3), .fluid_out(j4), .air_in(c11));
  valve v12(.fluid_in(j4), .fluid_out(out1), .air_in(c12));
  valve v13(.fluid_in(j4), .fluid_out(out2), .air_in(c13));
endmodule
