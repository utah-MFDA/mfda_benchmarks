module mRNAiso(input cells_in_1, cells_in_1_ctl, cells_out_1_ctl, collect_ctl_1,
               output waste_out_1, cells_out_1, collect_1,
               input cells_in_2, cells_in_2_ctl, cells_out_2_ctl, collect_ctl_2,
               output waste_out_2, cells_out_2, collect_2,
               input cells_in_3, cells_in_3_ctl, cells_out_3_ctl, collect_ctl_3,
               output waste_out_3, cells_out_3, collect_3,
               input cells_in_4, cells_in_4_ctl, cells_out_4_ctl, collect_ctl_4,
               output waste_out_4, cells_out_4, collect_4,
               input lysis_buffer_in, lysis_in_ctl,  lysis_waste_ctl,
               output lysis_buffer_out,
               input beads_in, beads_in_ctl, bead_waste_ctl,
               output beads_out,
               input pump_1, pump_2, pump_3,
               input push_line, push_ctl,
               input sep_ctl, sieve_ctl,
               input waste_ctl);
  wire lysis_in_1, lysis_1_2, lysis_2_3, lysis_3_4, lysis_4_out;
  wire bead_out_1, bead_out_2, bead_out_3, bead_out_4;

  valve vlysis_in(.fluid_in(lysis_buffer_in), .fluid_out(lysis_in_1), .air_in(lysis_in_ctl));
  valve vbead_out(.fluid_in(bead_out_4), .fluid_out(beads_out), .air_in(bead_waste_ctl));
  inner_module one(beads_in, beads_ctl,
                   beads_out_1,
                   cells_in_1, cells_in_1_ctl, cells_out_1_ctl,
                   cells_out_1,
                   collect_ctl_1,
                   collect_1,
                   lysis_in_1, lysis_in_ctl, lysis_in_ctl,
                   lysis_1_2,
                   push_line, push_ctl,
                   pump1, pump2, pump3,
                   sep_ctl,
                   sieve_ctl_1_2,
                   waste_ctl,
                   waste_out_1);
  inner_module two(beads_out_1, beads_ctl,
                   beads_out_2,
                   cells_in_2, cells_in_2_ctl, cells_out_2_ctl,
                   cells_out_2,
                   collect_ctl_2,
                   collect_2,
                   lysis_1_2, lysis_in_ctl, lysis_in_ctl,
                   lysis_2_3,
                   push_line, push_ctl,
                   pump2, pump2, pump3,
                   sep_ctl,
                   sieve_ctl_1_2,
                   waste_ctl,
                   waste_out_2);
  inner_module three(beads_out_2, beads_ctl,
                     beads_out_3,
                     cells_in_3, cells_in_3_ctl, cells_out_3_ctl,
                     cells_out_3,
                     collect_ctl_3,
                     collect_3,
                     lysis_2_3, lysis_in_ctl, lysis_in_ctl,
                     lysis_3_4,
                     push_line, push_ctl,
                     pump3, pump2, pump3,
                     sep_ctl,
                     sieve_ctl_3_4,
                     waste_ctl,
                     waste_out_3);
  inner_module four(beads_out_3, beads_ctl,
                    beads_out,
                    cells_in_4, cells_in_4_ctl, cells_out_4_ctl,
                    cells_out_4,
                    collect_ctl_4,
                    collect_4,
                    lysis_3_4, lysis_in_ctl, lysis_in_ctl,
                    lysis_4_out,
                    push_line, push_ctl,
                    pump4, pump2, pump3,
                    sep_ctl,
                    sieve_ctl_3_4,
                    waste_ctl,
                    waste_out_4);
  valve vlysis_out(.fluid_in(lysis_4_out), .fluid_out(lysis_buffer_out), .air_in(lysis_waste_ctl));

endmodule
module inner_module(input beads_in, beads_ctl,
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
