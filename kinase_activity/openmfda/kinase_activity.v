module kinase_activity(input in1, in2, in3,
                       c1, c2, c3, c4, c5, c6,
                       c7, c8, c9, c10, c11, c12, c13,
                       s1, s2, s3, s4,
                       p1, p2, p3, p4, p5,
                       output out1, out2, out3, out4);

  wire j1, j2, j3, j4, j5;
  wire v1o, v2o, v3o, v4o, v5o, v6o, v7o, v9o, v10o, v11o;
  wire vs1o, vs2o, vs3o, vs4o;
  wire vp1o, vp2o, vp3o, vp4o, vp5o;
  wire circ1o, circ2o;
  wire cuo, clo;
  valve v1(.fluid_in(in1), .fluid_out(j4), .air_in(c1));
  valve v2(.fluid_in(in2), .fluid_out(j4), .air_in(c2));
  valve v3(.fluid_in(in3), .fluid_out(j4), .air_in(c3));
  valve v4(.fluid_in(j4), .fluid_out(j1), .air_in(c4));
  valve v5(.fluid_in(j1), .fluid_out(v5o), .air_in(c5));
  valve v6(.fluid_in(j1), .fluid_out(v6o), .air_in(c6));
  valve v7(.fluid_in(j5), .fluid_out(j2), .air_in(c7));
  valve v8(.fluid_in(j5), .fluid_out(out1), .air_in(c8));
  valve v9(.fluid_in(j2), .fluid_out(j3), .air_in(c9));
  valve v10(.fluid_in(j3), .fluid_out(v10o), .air_in(c10));
  valve v11(.fluid_in(j3), .fluid_out(out2), .air_in(c11));
  valve v12(.fluid_in(vs4o), .fluid_out(out3), .air_in(c12));
  valve v13(.fluid_in(vs4o), .fluid_out(out4), .air_in(c13));
  chamber circulate1(.in(vp3o), .out(j5));
  chamber circulate2(.in(v5o), .out(circ2o));
  chamber column_upper(.in(vp4o), .out(cuo));
  chamber column_lower(.in(vs3o), .out(clo));
  valve vs1(.fluid_in(v6o), .fluid_out(vs1o), .air_in(s1));
  valve vs2(.fluid_in(vp5o), .fluid_out(j2), .air_in(s2));
  valve vs3(.fluid_in(v10o), .fluid_out(vs3o), .air_in(s3));
  valve vs4(.fluid_in(clo), .fluid_out(vs4o), .air_in(s4));
  valve vp1(.fluid_in(circ2o), .fluid_out(vp1o), .air_in(p1));
  valve vp2(.fluid_in(vp1o), .fluid_out(vp2o), .air_in(p2));
  valve vp3(.fluid_in(vp2o), .fluid_out(vp3o), .air_in(p3));
  valve vp4(.fluid_in(vs1o), .fluid_out(vp4o), .air_in(p4));
  valve vp5(.fluid_in(cuo), .fluid_out(vp5o), .air_in(p5));
endmodule
