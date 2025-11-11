module mux((* type="flow" *) input [SIZE-1:0] inlet,
            (* type="flow" *) output outlet,
            (* type="ctrl" *) input [SIZE-1:0] ctrl,
            (* type="flush" *) output [SIZE-1:0] flush);
  parameter SIZE = 2;
  generate
    genvar i;
    for (i = 0; i < SIZE; i = i + 1) begin: valves
      valve vinlet(.fluid_in(inlet[i]), .fluid_out(outlet), .air_in(ctrl[i]), .air_out(flush[i]));
    end
  endgenerate
endmodule

module pump((* type="flow" *) input inlet,
            (* type="flow" *) output outlet,
            (* type="ctrl" *) input [SIZE-1:0] drive,
            (* type="flush" *) output [SIZE-1:0] flush);

  parameter SIZE = 3;
  (* type="flow" *) wire [SIZE:0] j;

  assign j[0] = inlet;
  assign outlet = j[SIZE];
  generate
    genvar i;
    for (i = 0; i < SIZE; i = i + 1) begin: valves
      pump_valve vinlet(.fluid_in(j[i]), .fluid_out(j[i+1]), .air_in(drive[i]), .air_out(flush[i]));
    end
  endgenerate
endmodule

module reaction_chamber((* type="ctrl" *) input ctrl_ring_in,
                        ctrl_ring_out, ctrl_sieve,
                        ctrl_collect,
                        ctrl_inlet, ctrl_outlet, ctrl_bead,
                        (* type="ctrl" *) input [2:0] pump,
                        (* type="flush" *) output flush_ring_in,
                        flush_ring_out, flush_sieve,
                        flush_collect,
                        flush_inlet, flush_outlet, flush_bead,
                        (* type="flush" *) output [2:0] flush_pump,
                        (* type="flow" *) input flow_ring_in, flow_inlet, bead_in,
                        (* type="flow" *) output flow_outlet, collect);
  (* type="flow" *) wire j1, j2, j3, j4, j5;
  valve vring_in(.fluid_in(flow_ring_in), .fluid_out(j1), .air_in(ctrl_ring_in), .air_out(flush_ring_in));
  pump #(1) vpump1 (.inlet(j1), .outlet(j2), .drive(pump[0]), .flush(flush_pump[0]));
  pump #(1) vpump2 (.inlet(j2), .outlet(j3), .drive(pump[1]), .flush(flush_pump[1]));
  pump #(1) vpump3 (.inlet(j3), .outlet(j1), .drive(pump[2]), .flush(flush_pump[2]));
  valve vinlet(.fluid_in(flow_inlet), .fluid_out(j2), .air_in(ctrl_inlet), .air_out(flush_inlet));
  valve voutlet(.fluid_in(flow_outlet), .fluid_out(j3), .air_in(ctrl_outlet), .air_out(flush_outlet));
  valve vbead(.fluid_in(bead_in), .fluid_out(j2), .air_in(ctrl_bead), .air_out(flush_bead));
  valve vring_out(.fluid_in(j1), .fluid_out(j4), .air_in(ctrl_ring_out), .air_out(flush_ring_out));
  sieve_valve vsieve(.fluid_in(j4), .fluid_out(j5), .air_in(ctrl_sieve), .air_out(flush_sieve));
  valve vcollect(.fluid_in(j5), .fluid_out(collect), .air_in(ctrl_collect), .air_out(flush_collect));
endmodule

module prep_chamber((* type="flow" *) input flow_inlet,
                    (* type="ctrl" *) input ctrl_v1, ctrl_v2, ctrl_sv1, ctrl_inlet, ctrl_outlet1, ctrl_outlet2, ctrl_ringout,
                    (* type="flush" *) output flush_v1, flush_v2, flush_sv1, flush_inlet, flush_outlet1, flush_outlet2, flush_ringout,
                    (* type="flow" *) output  flow_outlet1, flow_outlet2, flow_ringout);
  (* type="flow" *) wire j1, j2, j3;
  valve vin(.fluid_in(flow_inlet), .fluid_out(j1), .air_in(ctrl_inlet), .air_out(flush_inlet));
  valve vout1(.fluid_in(j1), .fluid_out(flow_outlet1), .air_in(ctrl_outlet1), .air_out(flush_outlet1));
  valve vout2(.fluid_in(j3), .fluid_out(flow_outlet2), .air_in(ctrl_outlet2), .air_out(flush_outlet2));
  valve v1(.fluid_in(j1), .fluid_out(j2), .air_in(ctrl_v1), .air_out(flush_v1));
  valve v2(.fluid_in(j2), .fluid_out(j3), .air_in(ctrl_v2), .air_out(flush_v2));
  valve sv1(.fluid_in(j2), .fluid_out(j3), .air_in(ctrl_sv1), .air_out(flush_sv1));
  valve vout3(.fluid_in(j3), .fluid_out(flow_ringout), .air_in(ctrl_ringout), .air_out(flush_ringout));
endmodule

module ChIP((* type="flow" *) input [4:0] prep_inlet,
             (* type="flow" *) input [SIZE-1:0] ring_inlet,
             (* type="flow" *) output [1:0] prep_outlet,
             (* type="flow" *) output [SIZE-1:0] ring_outlet,
             (* type="flow" *) output [SIZE-1:0] collect,
            (* type="flow" *) input bead_in,
             (* type="ctrl" *) input [4:0] ctrl_inlet,
             (* type="ctrl" *) input ctrl_prep_inlet,
             ctrl_v1, ctrl_v2, ctrl_sv1,
             ctrl_stage_in,
             ctrl_stage_out, ctrl_sieve,
             ctrl_collect,
             ctrl_stage_inlet, ctrl_stage_outlet, ctrl_bead,
            ctrl_prep_ringout,
             (* type="ctrl" *) input  [1:0] ctrl_prep_outlet,
             (* type="ctrl" *) input [2:0] pump,
             (* type="flush" *) output [4:0] flush_inlet,
             (* type="flush" *) output flush_prep_inlet,
             flush_v1, flush_v2, flush_sv1,
             flush_stage_in,
             flush_stage_out, flush_sieve,
             flush_collect,
             flush_stage_inlet, flush_sage_outlet, flush_bead,
            flush_prep_ringout,
             (* type="flush" *) output [1:0] flush_prep_outlet,
             (* type="flush" *) output [2:0] flush_pump);
  parameter SIZE = 4;

  (* type="ctrl" *) wire inter_stage_in [SIZE:0];
  assign inter_stage_in[0] = ctrl_stage_in;
  assign flush_stage_in = inter_stage_in[SIZE];
  (* type="ctrl" *) wire inter_stage_out [SIZE:0];
  assign inter_stage_out[0] = ctrl_stage_out;
  assign flush_stage_out = inter_stage_out[SIZE];
  (* type="ctrl" *) wire inter_sieve [SIZE:0];
  assign inter_sieve[0] = ctrl_sieve;
  assign flush_sieve = inter_sieve[SIZE];
  (* type="ctrl" *) wire inter_collect [SIZE:0];
  assign inter_collect[0] = ctrl_collect;
  assign flush_collect = inter_collect[SIZE];
  (* type="ctrl" *) wire inter_stage_inlet [SIZE:0];
  assign inter_stage_inlet[0] = ctrl_stage_inlet;
  assign flush_stage_inlet = inter_stage_inlet[SIZE];
  (* type="ctrl" *) wire inter_stage_outlet [SIZE:0];
  assign inter_stage_outlet[0] = ctrl_stage_outlet;
  assign flush_sage_outlet = inter_sage_outlet[SIZE];
  (* type="ctrl" *) wire inter_bead [SIZE:0];
  assign inter_bead[0] = ctrl_bead;
  assign flush_bead = inter_bead[SIZE];
  (* type="ctrl" *) wire [2:0] inter_pump [SIZE:0];
  assign inter_pump[0] = ctrl_pump;
  assign flush_pump = inter_pump[SIZE];



  (* type="flow" *) wire mux_out, prep_to_ring;
  mux #(5) vinlet (.inlet(prep_inlet), .outlet(mux_out), .ctrl(ctrl_inlet), .flush(flush_inlet));

  prep_chamber prep(.flow_inlet(mux_out),
                          .ctrl_v1(ctrl_v1),
                          .ctrl_v2(ctrl_v2),
                          .ctrl_sv1(ctrl_sv1),
                          .ctrl_inlet(ctrl_prep_inlet),
                          .ctrl_outlet1(ctrl_prep_outlet[0]),
                          .ctrl_outlet2(ctrl_prep_outlet[1]),
                          .ctrl_ringout(ctrl_prep_ringout),
                          .flush_v1(flush_v1),
                          .flush_v2(flush_v2),
                          .flush_sv1(flush_sv1),
                          .flush_inlet(flush_prep_inlet),
                          .flush_outlet1(flush_prep_outlet[0]),
                          .flush_outlet2(flush_prep_outlet[1]),
                          .flush_ringout(flush_prep_ringout),
                          .flow_outlet1(prep_outlet[0]),
                          .flow_outlet2(prep_outlet[1]),
                          .flow_ringout(prep_to_ring));


  generate
    genvar i;
    for (i = 0; i < SIZE; i = i + 1) begin: chamber
      reaction_chamber first(.ctrl_ring_in(inter_stage_in[i]),
                                       .ctrl_ring_out(inter_stage_out[i]),
                                       .ctrl_sieve(inter_sieve[i]),
                                       .ctrl_collect(inter_collect[i]),
                                       .ctrl_inlet(inter_stage_inlet[i]),
                                       .ctrl_outlet(inter_stage_outlet[i]),
                                       .ctrl_bead(inter_bead[i]),
                                       .pump(inter_pump[i]),
                                       .flush_ring_in(inter_stage_in[i+1]),
                                       .flush_ring_out(inter_stage_out[i+1]),
                                       .flush_sieve(inter_sieve[i+1]),
                                       .flush_collect(inter_collect[i+1]),
                                       .flush_inlet(inter_stage_inlet[i+1]),
                                       .flush_outlet(inter_stage_outlet[i+1]),
                                       .flush_bead(inter_bead[i+1]),
                                       .flush_pump(inter_pump[i+1]),
                                       .flow_ring_in(prep_to_ring),
                                       .flow_inlet(ring_inlet[i]),
                                       .flow_outlet(ring_outlet[i]),
                                       .collect(collect[i]));
    end
  endgenerate
endmodule
