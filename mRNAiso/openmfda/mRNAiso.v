module mRNAiso((* type="flow" *)input beads_in,
               (* type="flow" *) output beads_out,
               (* type="flow" *)input cells_in,
               (* type="flow" *) output cells_out,
               (* type="flow" *) output collect,
               (* type="flow" *) input lysis_buffer_in,
               (* type="flow" *) output lysis_buffer_out,
               (* type="flow" *) input push_line,
               (* type="flow" *) output waste_out,
               (* type="ctrl" *) input collect_ctrl,
               lysis_in_ctrl, lysis_out_ctrl,
               push_ctrl,
               pump1, pump2, pump3,
               sep_ctrl,
               sieve_ctrl,
               waste_ctrl,
               beads_ctrl, cells_in_ctrl, cells_out_ctrl,
               (* type="flush" *) output collect_flush,
               lysis_in_flush, lysis_out_flush,
               push_flush,
               pump1_flush, pump2_flush, pump3_flush,
               sep_flush,
               sieve_flush,
               waste_flush,
               beads_flush, cells_in_flush, cells_out_flush);
  wire j1,j2,j3,j4,j5;

  valve vcollect(.fluid_in(j5), .fluid_out(collect), .air_in(collect_ctrl), .air_out(collect_flush));
  valve vwaste(.fluid_in(j5), .fluid_out(waste_out), .air_in(waste_ctrl), .air_out(waste_flush));
  valve vcell_in(.fluid_in(cells_in), .fluid_out(j1), .air_in(cells_in_ctrl), .air_out(cells_in_flush));
  valve vpush(.fluid_in(push_line), .fluid_out(j1), .air_in(push_ctrl), .air_out(push_flush));
  valve vpump1(.fluid_in(j3), .fluid_out(j1), .air_in(pump1), .air_out(pump1_flush));
  valve vpump2(.fluid_in(j1), .fluid_out(j2), .air_in(pump2), .air_out(pump2_flush));
  valve vpump3(.fluid_in(j2), .fluid_out(j3), .air_in(pump3), .air_out(pump3_flush));
  valve vcell_out(.fluid_in(j1), .fluid_out(cells_out), .air_in(cells_out_ctrl), .air_out(cells_out_flush));
  valve vlysis_in(.fluid_in(lysis_buffer_in), .fluid_out(j3), .air_in(lysis_in_ctrl), .air_out(lysis_in_flush));
  valve vlysis_out(.fluid_in(j2), .fluid_out(lysis_buffer_out), .air_in(lysis_out_ctrl), .air_out(lysis_out_flush));
  valve vsep(.fluid_in(j3), .fluid_out(j4), .air_in(sep_ctrl), .air_out(sep_flush));
  valve vbead_in(.fluid_in(beads_in), .fluid_out(j4), .air_in(beads_ctrl), .air_out(beads_flush));
  valve vbead_out(.fluid_in(j4), .fluid_out(beads_out), .air_in(beads_ctrl), .air_out(beads_flush));
  valve vsieve(.fluid_in(j4), .fluid_out(j5), .air_in(sieve_ctrl), .air_out(sieve_flush));
endmodule


module mRNAiso_bank((* type="flow" *)input [SIZE-1:0] beads_in,
               (* type="flow" *) output [SIZE-1:0]beads_out,
               (* type="flow" *)input [SIZE-1:0]cells_in,
               (* type="flow" *) output[SIZE-1:0] cells_out,
               (* type="flow" *) output [SIZE-1:0]collect,
               (* type="flow" *) input [SIZE-1:0]lysis_buffer_in,
               (* type="flow" *) output [SIZE-1:0]lysis_buffer_out,
               (* type="flow" *) input [SIZE-1:0]push_line,
               (* type="flow" *) output [SIZE-1:0]waste_out,
               (* type="ctrl" *) input collect_ctrl,
               lysis_in_ctrl, lysis_out_ctrl,
               push_ctrl,
               pump1, pump2, pump3,
               sep_ctrl,
               sieve_ctrl,
               waste_ctrl,
               beads_ctrl, cells_in_ctrl, cells_out_ctrl,
               (* type="flush" *) output collect_flush,
               lysis_in_flush, lysis_out_flush,
               push_flush,
               pump1_flush, pump2_flush, pump3_flush,
               sep_flush,
               sieve_flush,
               waste_flush,
               beads_flush, cells_in_flush, cells_out_flush);
parameter SIZE = 4;
   (* type="ctrl" *) wire [SIZE:0]
      inter_collect,
      inter_lysis_in,
      inter_lysis_out,
      inter_push,
      inter_pump1,
      inter_pump2,
      inter_pump3,
      inter_sep,
      inter_sieve,
      inter_waste,
      inter_beads,
      inter_cells_in,
      inter_cells_out;

assign inter_collect[0] = collect_ctrl;
assign inter_lysis_in[0] = lysis_in_ctrl;
assign inter_lysis_out[0] = lysis_out_ctrl;
assign inter_push[0] = push_ctrl;
assign inter_pump1[0] = pump1;
assign inter_pump2[0] = pump2;
assign inter_pump3[0] = pump3;
assign inter_sep[0] = sep_ctrl;
assign inter_sieve[0] = sieve_ctrl;
assign inter_waste[0] = waste_ctrl;
assign inter_beads[0] = beads_ctrl;
assign inter_cells_in[0] = cells_in_ctrl;
assign inter_cells_out[0] = cells_out_ctrl;
assign collect_flush = inter_collect[SIZE];
assign lysis_in_flush = inter_lysis_in[SIZE];
assign lysis_out_flush = inter_lysis_out[SIZE];
assign push_flush = inter_push[SIZE];
assign pump1_flush = inter_pump1[SIZE];
assign pump2_flush = inter_pump2[SIZE];
assign pump3_flush = inter_pump3[SIZE];
assign sep_flush = inter_sep[SIZE];
assign sieve_flush = inter_sieve[SIZE];
assign waste_flush = inter_waste[SIZE];
assign beads_flush = inter_beads[SIZE];
assign cells_in_flush = inter_cells_in[SIZE];
assign cells_out_flush = inter_cells_out[SIZE];
  generate
    genvar i;
    for (i = 0; i < SIZE; i = i + 1) begin: devices
        mRNAiso thingy (
        .beads_in(beads_in[i]),
          .beads_out(beads_out[i]),
          .cells_in(cells_in[i]),
          .cells_out(cells_out[i]),
          .collect(collect[i]),
          .lysis_buffer_in(lysis_buffer_in[i]),
          .lysis_buffer_out(lysis_buffer_out[i]),
          .push_line(push_line[i]),
          .waste_out(waste_out[i]),
          .collect_ctrl(inter_collect[i]),
          .lysis_in_ctrl(inter_lysis_in[i]),
          .lysis_out_ctrl(inter_lysis_out[i]),
          .push_ctrl(inter_push[i]),
          .pump1(inter_pump1[i]),
          .pump2(inter_pump2[i]),
          .pump3(inter_pump3[i]),
          .sep_ctrl(inter_sep[i]),
          .sieve_ctrl(inter_sieve[i]),
          .waste_ctrl(inter_waste[i]),
          .beads_ctrl(inter_beads[i]),
          .cells_in_ctrl(inter_cells_in[i]),
          .cells_out_ctrl(inter_cells_out[i]),
          .collect_flush(inter_collect[i+1]),
          .lysis_in_flush(inter_lysis_in[i+1]),
          .lysis_out_flush(inter_lysis_out[i+1]),
          .push_flush(inter_push[i+1]),
          .pump1_flush(inter_pump1[i+1]),
          .pump2_flush(inter_pump2[i+1]),
          .pump3_flush(inter_pump3[i+1]),
          .sep_flush(inter_sep[i+1]),
          .sieve_flush(inter_sieve[i+1]),
          .waste_flush(inter_waste[i+1]),
          .beads_flush(inter_beads[i+1]),
          .cells_in_flush(inter_cells_in[i+1]),
          .cells_out_flush(inter_cells_out[i+1] ));
    end
  endgenerate
endmodule
