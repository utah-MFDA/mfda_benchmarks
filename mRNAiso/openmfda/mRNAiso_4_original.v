// The original design has distinct control lines for each cell stage,
// Each stage also has a distinct waste out port
// Stages 1/2 and 3/4 have separate bead input, bead control, and sieve control.
// Both bead outputs join through valves to a shared output.
module mRNAiso_4_original(input cells_in_1, cells_in_1_ctl, cells_out_1_ctl, collect_ctl_1,
                          output waste_out_1, cells_out_1, collect_1,
                          input cells_in_2, cells_in_2_ctl, cells_out_2_ctl, collect_ctl_2,
                          output waste_out_2, cells_out_2, collect_2,
                          input cells_in_3, cells_in_3_ctl, cells_out_3_ctl, collect_ctl_3,
                          output waste_out_3, cells_out_3, collect_3,
                          input cells_in_4, cells_in_4_ctl, cells_out_4_ctl, collect_ctl_4,
                          output waste_out_4, cells_out_4, collect_4,
                          input lysis_buffer_in, lysis_in_ctl,  lysis_waste_ctl,
                          output lysis_buffer_out,
                          input beads_in_1_2, beads_in_ctl_1_2,
                          input beads_in_3_4, beads_in_ctl_3_4,
                          input bead_waste_ctl,
                          output beads_out,
                          input pump_1, pump_2, pump_3,
                          input push_line, push_ctl,
                          input sep_ctl, sieve_ctl_1_2, seive_ctl_3_4,
                          input waste_ctl);
  wire lysis_in_1, lysis_1_2, lysis_2_3, lysis_3_4, lysis_4_out;
  wire bead_out_1, bead_out_2, bead_out_3, bead_out_4;

  valve vlysis_in(.fluid_in(lysis_buffer_in), .fluid_out(lysis_in_1), .air_in(lysis_in_ctl));
  valve vbead_out_1_2(.fluid_in(bead_out_2), .fluid_out(beads_out), .air_in(bead_waste_ctl));   valve vbead_out_3_4(.fluid_in(bead_out_4), .fluid_out(beads_out), .air_in(bead_waste_ctl));
  mRNAiso one(beads_in_1_2, beads_in_ctl_1_2,
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
  mRNAiso two(beads_out_1, beads_in_ctl_1_2
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
  mRNAiso three(beads_in_3_4, beads_in_ctl_3_4,
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
  mRNAiso four(beads_out_3, beads_ctl_3_4,
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
