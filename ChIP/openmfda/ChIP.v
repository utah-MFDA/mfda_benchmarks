module chamber(inout ring_in_ctrl
               ring_out_ctrl, sieve_ctrl,
               collect_ctrl,
               inlet_ctrl, outlet_ctrl, bead_ctrl,
               pump1, pump2. pump3,
               inout ring_in, inlet, bead_in, outlet, collect);
  wire j1, j2, j3, j4, j5;
  valve vring_in(.fluid_in(ring_in), .fluid_out(j1), .air_in(ring_in_ctrl));
  valve vpump1(.fluid_in(j1), .fluid_out(j2), .air_in(pump1));
  valve vpump2(.fluid_in(j2), .fluid_out(j3), .air_in(pump2));
  valve vpump3(.fluid_in(j3), .fluid_out(j1), .air_in(pump3));
  valve vinlet(.fluid_in(inlet), .fluid_out(j2), .air_in(inlet_ctrl));
  valve voutlet(.fluid_in(outlet), .fluid_out(j3), .air_in(outlet_ctrl));
  valve vbead(.fluid_in(bead_in), .fluid_out(j2), .air_in(bead_ctrl));
  valve vring_out(.fluid_in(j1), .fluid_out(j4), .air_in(ring_out_ctrl));
  valve vsieve(.fluid_in(j4), .fluid_out(j5), .air_in(sieve_ctrl));
  valve vcollect(.fluid_in(j5), .fluid_out(collect), .air_in(collect_ctrl));

endmodule

module prep_chamber(input inlet, v1_ctrl, v2_ctrl, sv1_ctrl, inlet_ctrl, outlet1_ctrl, outlet2_ctrl, output outlet1, outlet2, ringout);
  wire j1, j2, j3;
  valve vin(.fluid_in(inlet), .fluid_out(j1), .air_in(inlet_ctrl));
  valve vout1(.fluid_in(j1), .fluid_out(outlet1), .air_in(outlet1_ctrl));
  valve vout2(.fluid_in(j3), .fluid_out(outlet2), .air_in(outlet2_ctrl));
  valve v1(.fluid_in(j1), .fluid_out(j2), .air_in(v1_ctrl));
  valve v2(.fluid_in(j2), .fluid_out(j1), .air_in(v2_ctrl));
  valve sv1(.fluid_in(j2), .fluid_out(j3), .air_in(sv1_ctrl));
endmodule
