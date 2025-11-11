module kinase_activity((* type="flow" *) input flow_in_a, flow_in_b, flow_in_c,
                      (* type="flow" *) output flow_out_a, flow_out_b, flow_out_c, flow_out_d,
                       (* type="ctrl" *) input [12:0] ctrl_a,
                       (* type="ctrl" *) input [3:0] ctrl_s,
                       (* type="ctrl" *) input [2:0] pump_a,
                       (* type="ctrl" *) input [1:0] pump_b,
                       (* type="flush" *) output [12:0] flush_ctrl_a,
                       (* type="flush" *) output [3:0] flush_ctrl_s,
                       (* type="flush" *) output [2:0] flush_pump_a,
                       (* type="flush" *) output [1:0] flush_pump_b);

  (* type="flow" *) wire j1, j2, j3, j4, j5;
  (* type="flow" *) wire v1o, v2o, v3o, v4o, v5o, v6o, v7o, v9o, v10o, v11o;
  (* type="flow" *) wire vs1o, vs2o, vs3o, vs4o;
  (* type="flow" *) wire vp1o, vp2o, vp3o, vp4o, vp5o;
  (* type="flow" *) wire circ1o, circ2o;
  (* type="flow" *) wire cuo, clo;
  valve v0(.fluid_in(vs4o), .fluid_out(flow_out_d), .air_in(ctrl_a[0]), .air_out(flush_ctrl_a[0]));
  valve v1(.fluid_in(flow_in_a), .fluid_out(j4), .air_in(ctrl_a[1]), .air_out(flush_ctrl_a[1]));
  valve v2(.fluid_in(flow_in_b), .fluid_out(j4), .air_in(ctrl_a[2]), .air_out(flush_ctrl_a[2]));
  valve v3(.fluid_in(flow_in_c), .fluid_out(j4), .air_in(ctrl_a[3]), .air_out(flush_ctrl_a[3]));
  valve v4(.fluid_in(j4), .fluid_out(j1), .air_in(ctrl_a[4]), .air_out(flush_ctrl_a[4]));
  valve v5(.fluid_in(j1), .fluid_out(v5o), .air_in(ctrl_a[5]), .air_out(flush_ctrl_a[5]));
  valve v6(.fluid_in(j1), .fluid_out(v6o), .air_in(ctrl_a[6]), .air_out(flush_ctrl_a[6]));
  valve v7(.fluid_in(j5), .fluid_out(j2), .air_in(ctrl_a[7]), .air_out(flush_ctrl_a[7]));
  valve v8(.fluid_in(j5), .fluid_out(flow_out_b), .air_in(ctrl_a[8]), .air_out(flush_ctrl_a[8]));
  valve v9(.fluid_in(j2), .fluid_out(j3), .air_in(ctrl_a[9]), .air_out(flush_ctrl_a[9]));
  valve v10(.fluid_in(j3), .fluid_out(v10o), .air_in(ctrl_a[10]), .air_out(flush_ctrl_a[10]));
  valve v11(.fluid_in(j3), .fluid_out(flow_out_c), .air_in(ctrl_a[11]), .air_out(flush_ctrl_a[11]));
  valve v12(.fluid_in(vs4o), .fluid_out(flow_out_a), .air_in(ctrl_a[12]), .air_out(flush_ctrl_a[12]));

  chamber circulate1(.in(vp3o), .out(j5));
  chamber circulate2(.in(v5o), .out(circ2o));
  chamber column_upper(.in(vp4o), .out(cuo));
  chamber column_lower(.in(vs3o), .out(clo));
  sieve_valve vs0(.fluid_in(clo), .fluid_out(vs4o), .air_in(ctrl_s[0]), .air_out(flush_ctrl_s[0]));
  sieve_valve vs1(.fluid_in(v6o), .fluid_out(vs1o), .air_in(ctrl_s[1]), .air_out(flush_ctrl_s[1]));
  sieve_valve vs2(.fluid_in(vp5o), .fluid_out(j2), .air_in(ctrl_s[2]), .air_out(flush_ctrl_s[2]));
  sieve_valve vs3(.fluid_in(v10o), .fluid_out(vs3o), .air_in(ctrl_s[3]), .air_out(flush_ctrl_s[3]));
  pump_valve vp0(.fluid_in(circ2o), .fluid_out(vp1o), .air_in(pump_a[0]), .air_out(flush_pump_a[0]));
  pump_valve vp1(.fluid_in(vp1o), .fluid_out(vp2o), .air_in(pump_a[1]), .air_out(flush_pump_a[1]));
  pump_valve vp2(.fluid_in(vp2o), .fluid_out(vp3o), .air_in(pump_a[2]), .air_out(flush_pump_a[2]));
  pump_valve vp3(.fluid_in(vs1o), .fluid_out(vp4o), .air_in(pump_b[0]), .air_out(flush_pump_b[0]));
  pump_valve vp4(.fluid_in(cuo), .fluid_out(vp5o), .air_in(pump_b[1]), .air_out(flush_pump_b[1]));
endmodule


module kinase_activity_bank #(  parameter SIZE = 7)(
  (* type="flow" *) input [SIZE-1:0] flow_in_a,
  (* type="flow" *) input [SIZE-1:0] flow_in_b,
  (* type="flow" *) input [SIZE-1:0] flow_in_c,
  (* type="flow" *) output [SIZE-1:0] flow_out_a,
  (* type="flow" *) output [SIZE-1:0] flow_out_b,
  (* type="flow" *) output [SIZE-1:0] flow_out_c,
  (* type="flow" *) output [SIZE-1:0] flow_out_d,
  (* type="ctrl" *) input [12:0] ctrl_a,
  (* type="ctrl" *) input [3:0] ctrl_s,
  (* type="ctrl" *) input [2:0] pump_a,
  (* type="ctrl" *) input [1:0] pump_b,
  (* type="flush" *) output [12:0] flush_ctrl_a,
  (* type="flush" *) output [3:0] flush_ctrl_s,
  (* type="flush" *) output [2:0] flush_pump_a,
  (* type="flush" *) output [1:0] flush_pump_b);

  (* type="ctrl" *)wire [12:0] serial_ctrl_a [SIZE:0];
  (* type="ctrl" *)wire [3:0] serial_ctrl_s [SIZE:0];
  (* type="ctrl" *)wire [2:0] serial_pump_a [SIZE:0];
  (* type="ctrl" *)wire [1:0] serial_pump_b[SIZE:0];
  assign serial_ctrl_a [0] = ctrl_a;
  assign serial_ctrl_s [0] = ctrl_s;
  assign serial_pump_a [0] = pump_a;
  assign serial_pump_b [0] = pump_b;
  assign flush_ctrl_a = serial_ctrl_a [SIZE];
  assign flush_ctrl_s = serial_ctrl_s [SIZE];
  assign flush_pump_a = serial_pump_a [SIZE];
  assign flush_pump_b = serial_pump_b [SIZE];

  generate
    genvar i;
    for (i = 0; i < SIZE; i = i + 1) begin: devices
      kinase_activity thingy(
            .flow_in_a(flow_in_a[i]), .flow_in_b(flow_in_b[i]), .flow_in_c(flow_in_c[i]),
            .flow_out_a(flow_out_a[i]), .flow_out_b(flow_out_b[i]),
            .flow_out_c(flow_out_c[i]), .flow_out_d(flow_out_d[i]),
            .ctrl_a(serial_ctrl_a[i]), .ctrl_s(serial_ctrl_s[i]),
            .pump_a(serial_pump_a[i]), .pump_b(serial_pump_b[i]),
            .flush_ctrl_a(serial_ctrl_a[i+1]), .flush_ctrl_s(serial_ctrl_s[i+1]),
            .flush_pump_a(serial_pump_a[i+1]), .flush_pump_b(serial_pump_b[i+1]));

    end
  endgenerate
endmodule
