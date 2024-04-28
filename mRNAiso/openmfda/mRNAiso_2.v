module mRNAiso_2(input cells_in_1, output cells_out_1, collect_1,
                 input cells_in_2, output cells_out_2, collect_2,
                 input cells_in_ctl, cells_out_ctl, collect_ctl,
                 output waste_out,
                 input lysis_buffer_in, lysis_in_ctl,  lysis_waste_ctl,
                 output lysis_buffer_out,
                 input beads_in, beads_in_ctl, bead_waste_ctl,
                 output beads_out,
                 input pump_1, pump_2, pump_3,
                 input push_line, push_ctl,
                 input sep_ctl, sieve_ctl,
                 input waste_ctl);
  wire lysis_in_1, lysis_1_2, lysis_2_out;
  wire beads_out_1, beads_out_2;

  valve vlysis_in(.fluid_in(lysis_buffer_in), .fluid_out(lysis_in_1), .air_in(lysis_in_ctl));
  valve vbead_out(.fluid_in(bead_out_2), .fluid_out(beads_out), .air_in(bead_waste_ctl));
  mRNAiso one(beads_in, beads_in_ctl,
              beads_out_1,
              cells_in_1, cells_in_ctl, cells_out_ctl,
              cells_out_1,
              collect_ctl,
              collect_1,
              lysis_in_1, lysis_in_ctl, lysis_in_ctl,
              lysis_1_2,
              push_line, push_ctl,
              pump_1, pump_2, pump_3,
              sep_ctl,
              sieve_ctl,
              waste_ctl,
              waste_out);
  mRNAiso two(beads_out_1, beads_in_ctl,
              beads_out_2,
              cells_in_2, cells_in_ctl, cells_out_ctl,
              cells_out_2,
              collect_ctl,
              collect_2,
              lysis_1_2, lysis_in_ctl, lysis_in_ctl,
              lysis_2_out,
              push_line, push_ctl,
              pump_1, pump_2, pump_3,
              sep_ctl,
              sieve_ctl,
              waste_ctl,
              waste_out);
  valve vlysis_out(.fluid_in(lysis_2_out), .fluid_out(lysis_buffer_out), .air_in(lysis_waste_ctl));

endmodule
