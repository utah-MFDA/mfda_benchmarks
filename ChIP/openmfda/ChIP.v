module reaction_chamber(input ctrl_ring_in,
                        ctrl_ring_out, ctrl_sieve,
                        ctrl_collect,
                        ctrl_inlet, ctrl_outlet, ctrl_bead,
                        pump_p1, pump_p2, pump_p3,
                        output flush_ring_in,
                        flush_ring_out, flush_sieve,
                        flush_collect,
                        flush_inlet, flush_outlet, flush_bead,
                        flush_p1, flush_p2, flush_p3,
                        input flow_ring_in, flow_inlet, bead_in,
                        output flow_outlet, collect);
  wire j1, j2, j3, j4, j5;
  valve vring_in(.fluid_in(flow_ring_in), .fluid_out(j1), .air_in(ctrl_ring_in), .air_out(flush_ring_in));
  valve vpump_p1(.fluid_in(j1), .fluid_out(j2), .air_in(pump_p1), .air_out(flush_p1));
  valve vpump_p2(.fluid_in(j2), .fluid_out(j3), .air_in(pump_p2), .air_out(flush_p2));
  valve vpump_p3(.fluid_in(j3), .fluid_out(j1), .air_in(pump_p3), .air_out(flush_p3));
  valve vinlet(.fluid_in(flow_inlet), .fluid_out(j2), .air_in(ctrl_inlet), .air_out(flush_inlet));
  valve voutlet(.fluid_in(flow_outlet), .fluid_out(j3), .air_in(ctrl_outlet), .air_out(flush_outlet));
  valve vbead(.fluid_in(bead_in), .fluid_out(j2), .air_in(ctrl_bead), .air_out(flush_bead));
  valve vring_out(.fluid_in(j1), .fluid_out(j4), .air_in(ctrl_ring_out), .air_out(flush_ring_out));
  valve vsieve(.fluid_in(j4), .fluid_out(j5), .air_in(ctrl_sieve), .air_out(flush_sieve));
  valve vcollect(.fluid_in(j5), .fluid_out(collect), .air_in(ctrl_collect), .air_out(flush_collect));

endmodule

module prep_chamber(input flow_inlet,
                    input ctrl_v1, ctrl_v2, ctrl_sv1, ctrl_inlet, ctrl_outlet1, ctrl_outlet2, ctrl_ringout,
                    output flush_v1, flush_v2, flush_sv1, flush_inlet, flush_outlet1, flush_outlet2, flush_ringout,
                    output  flow_outlet1, flow_outlet2, flow_ringout);
  wire j1, j2, j3;
  valve vin(.fluid_in(flow_inlet), .fluid_out(j1), .air_in(ctrl_inlet), .air_out(flush_inlet));
  valve vout1(.fluid_in(j1), .fluid_out(flow_outlet1), .air_in(ctrl_outlet1), .air_out(flush_outlet1));
  valve vout2(.fluid_in(j3), .fluid_out(flow_outlet2), .air_in(ctrl_outlet2), .air_out(flush_outlet2));
  valve v1(.fluid_in(j1), .fluid_out(j2), .air_in(ctrl_v1), .air_out(flush_v1));
  valve v2(.fluid_in(j2), .fluid_out(j3), .air_in(ctrl_v2), .air_out(flush_v2));
  valve sv1(.fluid_in(j2), .fluid_out(j3), .air_in(ctrl_sv1), .air_out(flush_sv1));
  valve vout3(.fluid_in(j3), .fluid_out(flow_ringout), .air_in(ctrl_ringout), .air_out(flush_ringout));
endmodule
