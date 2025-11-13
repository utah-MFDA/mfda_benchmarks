module mnacidpro_reactor(
  (* type="ctrl" *) input vertical_ctrl, horiz_ctrl, waste_ctrl, bead_ctrl,
  loop_exit_ctrl, bead_trap_ctrl, collect_ctrl,
  (* type="ctrl" *) input [2:0] pump,
  (* type="flush" *) output vertical_flush, horiz_flush, waste_flush, bead_flush,
  loop_exit_flush, bead_trap_flush, collect_flush,
  (* type="flush" *) output [2:0] pump_flush,
  (* type="flow" *) input drive, bead_in, buffer_in, cell_in,
  (* type="flow" *) output collect, waste, bead_out, buffer_out, cell_out);

  (* type="flow" *) wire r1,r2,r3,r4,r5, j1, j2;

  (* type="ctrl" *) wire c1, c2, c3;
  valve v1(.fluid_in(drive), .fluid_out(r3), .air_in(vertical_ctrl), .air_out(c1));
  valve v2(.fluid_in(r3), .fluid_out(r2), .air_in(c1), .air_out(c2));
  valve v3(.fluid_in(r2), .fluid_out(r1), .air_in(c2), .air_out(vertical_flush));

  (* type="ctrl" *) wire d1,d2,d3,d5;
  valve v4(.fluid_in(buffer_in), .fluid_out(r3), .air_in(horiz_ctrl), .air_out(d1));
  valve v5(.fluid_in(r3), .fluid_out(buffer_out), .air_in(d1), .air_out(d2));
  valve v6(.fluid_in(cell_in), .fluid_out(r2), .air_in(d2), .air_out(d3));
  valve v7(.fluid_in(r2), .fluid_out(cell_out), .air_in(d3), .air_out(horiz_flush));
  valve v8(.fluid_in(bead_in), .fluid_out(r4), .air_in(bead_ctrl), .air_out(d5));
  valve v9(.fluid_in(r4), .fluid_out(bead_out), .air_in(d5), .air_out(bead_flush));
  pump_valve p0(.fluid_in(r1), .fluid_out(j1), .air_in(pump[0]), .air_out(pump_flush[0]));
  pump_valve p1(.fluid_in(r1), .fluid_out(j2), .air_in(pump[1]), .air_out(pump_flush[1]));
  pump_valve p2(.fluid_in(j2), .fluid_out(r1), .air_in(pump[2]), .air_out(pump_flush[2]));
  (* type="ctrl" *) wire e1;
  valve v10(.fluid_in(r1), .fluid_out(r4), .air_in(loop_exit_ctrl), .air_out(loop_exit_flush));
  valve v11(.fluid_in(r4), .fluid_out(r5), .air_in(bead_trap_ctrl), .air_out(bead_trap_flush));
  valve v12(.fluid_in(r5), .fluid_out(waste), .air_in(waste_ctrl), .air_out(waste_flush));
  valve v13(.fluid_in(r5), .fluid_out(collect), .air_in(collect_ctrl), .air_out(collect_flush));

endmodule

module mnacidpro((* type="ctrl" *) input lysis_ctrl, wash_ctrl, elute_ctrl, dead_end_ctrl,
                 vertical_ctrl, horiz_ctrl, waste_ctrl, bead_ctrl, loop_exit_ctrl, bead_trap_ctrl, collect_ctrl,
                 (* type="ctrl" *) input [2:0] pump,
                  (* type="flush" *) output lysis_flush, wash_flush, elute_flush, dead_end_flush,
                 vertical_flush, horiz_flush, waste_flush, bead_flush, loop_exit_flush, bead_trap_flush, collect_flush,
                 (* type="flush" *) output [2:0] pump_flush,
                 (* type="flow" *) input bead_in, buffer_in, cell_in,
                 (* type="flow" *) input lysis_in, wash_in, elute_in,
                 (* type="flow" *) output [SIZE-1:0] collect,
                 (* type="flow" *) output waste, bead_out, buffer_out, cell_out);

  parameter SIZE = 3;
  (* type="flow" *) wire drive;

  (* type="flow" *) wire [SIZE:0] bead_between, cell_between, buffer_between;
  (* type="ctrl" *) wire [SIZE:0]
                 vertical_inter,
                 horiz_inter,
                 waste_inter,
                 bead_inter,
                 loop_exit_inter,
                 bead_trap_inter,
                 collect_inter;
  (* type="ctrl" *) wire [2:0] pump_inter [SIZE:0];

  assign bead_between[0] = bead_in;
  assign cell_between[0] = cell_in;
  assign buffer_between[0] = buffer_in;


  assign vertical_inter[0] = vertical_ctrl;
  assign horiz_inter[0] = horiz_ctrl;
  assign waste_inter[0] = waste_ctrl;
  assign bead_inter[0] = bead_ctrl;
  assign loop_exit_inter[0] = loop_exit_ctrl;
  assign bead_trap_inter[0] = bead_trap_ctrl;
  assign collect_inter[0] = collect_ctrl;
  assign pump_inter[0] = pump;


  assign vertical_flush = vertical_inter[SIZE];
  assign horiz_flush = horiz_inter[SIZE];
  assign waste_flush = waste_inter[SIZE];
  assign bead_flush = bead_inter[SIZE];
  assign loop_exit_flush = loop_exit_inter[SIZE];
  assign bead_trap_flush = bead_trap_inter[SIZE];
  assign collect_flush = collect_inter[SIZE];
  assign pump_flush = pump_inter[SIZE];

  valve lysis(.fluid_in(lysis_in), .fluid_out(drive), .air_in(lysis_ctrl), .air_out(lysis_flush));
  valve wash(.fluid_in(wash_in), .fluid_out(drive), .air_in(wash_ctrl), .air_out(wash_flush));
  valve elute(.fluid_in(elute_in), .fluid_out(drive), .air_in(elute_ctrl), .air_out(elute_flush));

  generate
    genvar i;
    for (i = 0; i < SIZE; i = i + 1) begin: chamber
      mnacidpro_reactor thingy(
        .vertical_ctrl(vertical_inter[i]),
         .horiz_ctrl(horiz_inter[i]),
         .waste_ctrl(waste_inter[i]),
         .bead_ctrl(bead_inter[i]),
         .loop_exit_ctrl(loop_exit_inter[i]),
         .bead_trap_ctrl(bead_trap_inter[i]),
         .collect_ctrl(collect_inter[i]),
         .pump(pump_inter[i]),
         .vertical_flush(vertical_inter[i+1]),
         .horiz_flush(horiz_inter[i+1]),
         .waste_flush(waste_inter[i+1]),
         .bead_flush(bead_inter[i+1]),
         .loop_exit_flush(loop_exit_inter[i+1]),
         .bead_trap_flush(bead_trap_inter[i+1]),
         .collect_flush(collect_inter[i+1]),
         .pump_flush(pump_inter[i+1]),
         .drive(drive),
         .bead_in(bead_between[i]),
         .buffer_in(buffer_between[i]),
         .cell_in(cell_between[i]),
         .collect(collect[i]),
         .waste(waste),
         .bead_out(bead_between[i+1]),
         .buffer_out(buffer_between[i+1]),
         .cell_out(cell_between[i+1]));
    end
  endgenerate


  (* type="ctrl" *) wire e1, e2;
  valve dead_buffer(.fluid_in(buffer_between[SIZE]), .fluid_out(buffer_out), .air_in(dead_end_ctrl), .air_out(e1));
  valve dead_cell(.fluid_in(cell_between[SIZE]), .fluid_out(cell_out), .air_in(e1), .air_out(e2));
  valve dead_bead(.fluid_in(bead_between[SIZE]), .fluid_out(bead_out), .air_in(e2), .air_out(dead_end_flush));
endmodule

