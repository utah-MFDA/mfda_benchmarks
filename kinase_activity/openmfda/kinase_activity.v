module kinase_activity(input [2:0] flow_in,
                      output [3:0] flow_out,
                       input [12:0] ctrl_a,
                       input [3:0] ctrl_s,
                       input [2:0] pump_a,
                       input [1:0] pump_b,
                       output [21:0] flush);

  wire j1, j2, j3, j4, j5;
  wire v1o, v2o, v3o, v4o, v5o, v6o, v7o, v9o, v10o, v11o;
  wire vs1o, vs2o, vs3o, vs4o;
  wire vp1o, vp2o, vp3o, vp4o, vp5o;
  wire circ1o, circ2o;
  wire cuo, clo;
  valve v0(.fluid_in(vs4o), .fluid_out(flow_out[3]), .air_out(flush[0]), .air_in(ctrl_a[0]));
  valve v1(.fluid_in(flow_in[0]), .fluid_out(j4), .air_out(flush[1]), .air_in(ctrl_a[1]));
  valve v2(.fluid_in(flow_in[1]), .fluid_out(j4), .air_out(flush[2]), .air_in(ctrl_a[2]));
  valve v3(.fluid_in(flow_in[2]), .fluid_out(j4), .air_out(flush[3]), .air_in(ctrl_a[3]));
  valve v4(.fluid_in(j4), .fluid_out(j1), .air_out(flush[4]), .air_in(ctrl_a[4]));
  valve v5(.fluid_in(j1), .fluid_out(v5o), .air_out(flush[5]), .air_in(ctrl_a[5]));
  valve v6(.fluid_in(j1), .fluid_out(v6o), .air_out(flush[6]), .air_in(ctrl_a[6]));
  valve v7(.fluid_in(j5), .fluid_out(j2), .air_out(flush[7]), .air_in(ctrl_a[7]));
  valve v8(.fluid_in(j5), .fluid_out(flow_out[1]), .air_out(flush[8]), .air_in(ctrl_a[8]));
  valve v9(.fluid_in(j2), .fluid_out(j3), .air_out(flush[9]), .air_in(ctrl_a[9]));
  valve v10(.fluid_in(j3), .fluid_out(v10o), .air_out(flush[10]), .air_in(ctrl_a[10]));
  valve v11(.fluid_in(j3), .fluid_out(flow_out[2]), .air_out(flush[11]), .air_in(ctrl_a[11]));
  valve v12(.fluid_in(vs4o), .fluid_out(flow_out[0]), .air_out(flush[12]), .air_in(ctrl_a[12]));

  chamber circulate1(.in(vp3o), .out(j5));
  chamber circulate2(.in(v5o), .out(circ2o));
  chamber column_upper(.in(vp4o), .out(cuo));
  chamber column_lower(.in(vs3o), .out(clo));
  sieve_valve vs0(.fluid_in(clo), .fluid_out(vs4o), .air_out(flush[13]), .air_in(ctrl_s[0]));
  sieve_valve vs1(.fluid_in(v6o), .fluid_out(vs1o), .air_out(flush[14]), .air_in(ctrl_s[1]));
  sieve_valve vs2(.fluid_in(vp5o), .fluid_out(j2), .air_out(flush[15]), .air_in(ctrl_s[2]));
  sieve_valve vs3(.fluid_in(v10o), .fluid_out(vs3o), .air_out(flush[16]), .air_in(ctrl_s[3]));
  pump_valve vp0(.fluid_in(circ2o), .fluid_out(vp1o), .air_out(flush[17]), .air_in(pump_a[0]));
  pump_valve vp1(.fluid_in(vp1o), .fluid_out(vp2o), .air_out(flush[18]), .air_in(pump_a[1]));
  pump_valve vp2(.fluid_in(vp2o), .fluid_out(vp3o), .air_out(flush[19]), .air_in(pump_a[2]));
  pump_valve vp3(.fluid_in(vs1o), .fluid_out(vp4o), .air_out(flush[20]), .air_in(pump_b[0]));
  pump_valve vp4(.fluid_in(cuo), .fluid_out(vp5o), .air_out(flush[21]), .air_in(pump_b[1]));
endmodule
