module mRNAiso(input beads_in, beads_ctl,
                    output beads_out,
                    input cells_in, cells_in_ctl, cells_out_ctl,
                    output cells_out,
                    input collect_ctl,
                    output collect,
                    input lysis_buffer_in, lysis_in_ctl, lysis_out_ctl,
                    output lysis_buffer_out,
                    input push_line, push_ctl,
                    input pump1, pump2, pump3,
                    input sep_ctl,
                    input sieve_ctl,
                    input waste_ctl,
                    output waste_out);
  wire j1,j2,j3,j4,j5;

  valve vcollect(.fluid_in(j5), .fluid_out(collect), .air_in(collect_ctl));
  valve vwaste(.fluid_in(j5), .fluid_out(waste_out), .air_in(waste_ctl));
  valve vcell_in(.fluid_in(cells_in), .fluid_out(j1), .air_in(cells_in_ctl));
  valve vpush(.fluid_in(push_line), .fluid_out(j1), .air_in(push_ctl));
  valve vpump1(.fluid_in(j3), .fluid_out(j1), .air_in(pump1));
  valve vpump2(.fluid_in(j1), .fluid_out(j2), .air_in(pump1));
  valve vpump3(.fluid_in(j2), .fluid_out(j3), .air_in(pump1));
  valve vcell_out(.fluid_in(j1), .fluid_out(cells_out), .air_in(cells_out_ctl));
  valve vlysis_in(.fluid_in(lysis_buffer_in), .fluid_out(j3), .air_in(lysis_in_ctl));
  valve vlysis_out(.fluid_in(j2), .fluid_out(lysis_buffer_out), .air_in(lysis_out_ctl));
  valve vsep(.fluid_in(j3), .fluid_out(j4), .air_in(sep_ctl));
  valve vbead_in(.fluid_in(beads_in), .fluid_out(j4), .air_in(beads_ctl));
  valve vbead_in(.fluid_in(j4), .fluid_out(beads_out), .air_in(beads_ctl));
  valve vsieve(.fluid_in(j4), .fluid_out(j5), .air_in(sieve_ctl));
endmodule
