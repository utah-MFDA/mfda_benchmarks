module reactor(inout in1, in3, in4, in5, in6,
                     input c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,
                     input p1, p2, p3,
                     inout in7, in2, out1, out2);
      wire j1,j2,j3,j4,j5;
      wire jp1, jp2;
      valve v1(.fluid_in(in1), .fluid_out(j1), .air_in(c1));
      valve v2(.fluid_in(in2), .fluid_out(j1), .air_in(c2));
      valve v3(.fluid_in(in3), .fluid_out(j1), .air_in(c3));
      valve v4(.fluid_in(j1), .fluid_out(j2), .air_in(c4));
      valve v5(.fluid_in(in5), .fluid_out(j2), .air_in(c5));
      valve v6(.fluid_in(in6), .fluid_out(j2), .air_in(c6));
      valve v7(.fluid_in(in5), .fluid_out(j5), .air_in(c7));
      valve vp1(.fluid_in(j5), .fluid_out(jp1), .air_in(p1));
      valve vp2(.fluid_in(jp1), .fluid_out(jp2), .air_in(p2));
      valve vp3(.fluid_in(jp2), .fluid_out(j5), .air_in(p3));
      valve v8(.fluid_in(in5), .fluid_out(j3), .air_in(c8));
      valve v9(.fluid_in(in7), .fluid_out(j3), .air_in(c9));
      valve v10(.fluid_in(in6), .fluid_out(j3), .air_in(c10));
      valve v11(.fluid_in(j3), .fluid_out(j4), .air_in(c11));
      valve v12(.fluid_in(j4), .fluid_out(out1), .air_in(c12));
      valve v13(.fluid_in(j4), .fluid_out(out2), .air_in(c13));
    endmodule
    
module nucleic_acid_11(
input lysis_ctl, wash_ctl, elute_ctl, horiz_ctl, dead_end_ctl,
                     loop_exit_ctl, bead_vtl_ctl, wash_ctl, collection_ctl,
                     vertical_ctl, bead_trap_ctl,
                     input pump1, pump2, pump3,
                     input bead_in, buf_in, cell_in,
                     input lysis_in, wash_in, buffer_in,
                     output waste, bead_out, buf_out, cell_out,
collect_0,collect_1,collect_2,collect_3,collect_4,collect_5,collect_6,collect_7,collect_8,collect_9,collect_10
);
wire j1;
      valve lysis(.fluid_in(lysis_in), .fluid_out(j1), .air_in(lysis_ctl));
      valve wash(.fluid_in(wash_in), .fluid_out(j1), .air_in(wash_ctl));
      valve buffer(.fluid_in(buffer_in), .fluid_out(j1), .air_in(elute_ctl));
      assign buf_out = buf_out_10;
      assign buf_in_0 = buf_in;
      assign cell_out = cell_out_10;
      assign cell_in_0 = cell_in;
      assign bead_out = bead_out_10;
      assign bead_in_0 = bead_in;
    
wire buf_out_0, buf_in_0, cell_in_0, cell_out_0, bead_in_0, bead_out_0;
reactor inner_0(.in1(j1),
                           .in2(buf_out_0),
                           .in3(buf_in_0),
                           .in4(cell_in_0),
                           .in5(cell_out_0),
                           .in6(bead_in_0),
                           .in7(bead_out_0),
                           .c1(vertical_ctl), .c4(vertical_ctl), .c7(vertical_ctl),
                           .c2(horiz_ctl), .c3(horiz_ctl),
                           .c5(horiz_ctl), .c6(horiz_ctl),
                           .c8(loop_exit_ctl), .c11(bead_trap_ctl),
                           .c9(bead_vtl_ctl), .c10(bead_vtl_ctl),
                           .c12(collection_ctl),
                           .c13(wash_ctl),
                           .p1(pump1), .p2(pump2), .p3(pump3),
                           .out1(collect_0),
                           .out2(waste));
wire buf_out_1, buf_in_1, cell_in_1, cell_out_1, bead_in_1, bead_out_1;
reactor inner_1(.in1(j1),
                           .in2(buf_out_1),
                           .in3(buf_in_1),
                           .in4(cell_in_1),
                           .in5(cell_out_1),
                           .in6(bead_in_1),
                           .in7(bead_out_1),
                           .c1(vertical_ctl), .c4(vertical_ctl), .c7(vertical_ctl),
                           .c2(horiz_ctl), .c3(horiz_ctl),
                           .c5(horiz_ctl), .c6(horiz_ctl),
                           .c8(loop_exit_ctl), .c11(bead_trap_ctl),
                           .c9(bead_vtl_ctl), .c10(bead_vtl_ctl),
                           .c12(collection_ctl),
                           .c13(wash_ctl),
                           .p1(pump1), .p2(pump2), .p3(pump3),
                           .out1(collect_1),
                           .out2(waste));
wire buf_out_2, buf_in_2, cell_in_2, cell_out_2, bead_in_2, bead_out_2;
reactor inner_2(.in1(j1),
                           .in2(buf_out_2),
                           .in3(buf_in_2),
                           .in4(cell_in_2),
                           .in5(cell_out_2),
                           .in6(bead_in_2),
                           .in7(bead_out_2),
                           .c1(vertical_ctl), .c4(vertical_ctl), .c7(vertical_ctl),
                           .c2(horiz_ctl), .c3(horiz_ctl),
                           .c5(horiz_ctl), .c6(horiz_ctl),
                           .c8(loop_exit_ctl), .c11(bead_trap_ctl),
                           .c9(bead_vtl_ctl), .c10(bead_vtl_ctl),
                           .c12(collection_ctl),
                           .c13(wash_ctl),
                           .p1(pump1), .p2(pump2), .p3(pump3),
                           .out1(collect_2),
                           .out2(waste));
wire buf_out_3, buf_in_3, cell_in_3, cell_out_3, bead_in_3, bead_out_3;
reactor inner_3(.in1(j1),
                           .in2(buf_out_3),
                           .in3(buf_in_3),
                           .in4(cell_in_3),
                           .in5(cell_out_3),
                           .in6(bead_in_3),
                           .in7(bead_out_3),
                           .c1(vertical_ctl), .c4(vertical_ctl), .c7(vertical_ctl),
                           .c2(horiz_ctl), .c3(horiz_ctl),
                           .c5(horiz_ctl), .c6(horiz_ctl),
                           .c8(loop_exit_ctl), .c11(bead_trap_ctl),
                           .c9(bead_vtl_ctl), .c10(bead_vtl_ctl),
                           .c12(collection_ctl),
                           .c13(wash_ctl),
                           .p1(pump1), .p2(pump2), .p3(pump3),
                           .out1(collect_3),
                           .out2(waste));
wire buf_out_4, buf_in_4, cell_in_4, cell_out_4, bead_in_4, bead_out_4;
reactor inner_4(.in1(j1),
                           .in2(buf_out_4),
                           .in3(buf_in_4),
                           .in4(cell_in_4),
                           .in5(cell_out_4),
                           .in6(bead_in_4),
                           .in7(bead_out_4),
                           .c1(vertical_ctl), .c4(vertical_ctl), .c7(vertical_ctl),
                           .c2(horiz_ctl), .c3(horiz_ctl),
                           .c5(horiz_ctl), .c6(horiz_ctl),
                           .c8(loop_exit_ctl), .c11(bead_trap_ctl),
                           .c9(bead_vtl_ctl), .c10(bead_vtl_ctl),
                           .c12(collection_ctl),
                           .c13(wash_ctl),
                           .p1(pump1), .p2(pump2), .p3(pump3),
                           .out1(collect_4),
                           .out2(waste));
wire buf_out_5, buf_in_5, cell_in_5, cell_out_5, bead_in_5, bead_out_5;
reactor inner_5(.in1(j1),
                           .in2(buf_out_5),
                           .in3(buf_in_5),
                           .in4(cell_in_5),
                           .in5(cell_out_5),
                           .in6(bead_in_5),
                           .in7(bead_out_5),
                           .c1(vertical_ctl), .c4(vertical_ctl), .c7(vertical_ctl),
                           .c2(horiz_ctl), .c3(horiz_ctl),
                           .c5(horiz_ctl), .c6(horiz_ctl),
                           .c8(loop_exit_ctl), .c11(bead_trap_ctl),
                           .c9(bead_vtl_ctl), .c10(bead_vtl_ctl),
                           .c12(collection_ctl),
                           .c13(wash_ctl),
                           .p1(pump1), .p2(pump2), .p3(pump3),
                           .out1(collect_5),
                           .out2(waste));
wire buf_out_6, buf_in_6, cell_in_6, cell_out_6, bead_in_6, bead_out_6;
reactor inner_6(.in1(j1),
                           .in2(buf_out_6),
                           .in3(buf_in_6),
                           .in4(cell_in_6),
                           .in5(cell_out_6),
                           .in6(bead_in_6),
                           .in7(bead_out_6),
                           .c1(vertical_ctl), .c4(vertical_ctl), .c7(vertical_ctl),
                           .c2(horiz_ctl), .c3(horiz_ctl),
                           .c5(horiz_ctl), .c6(horiz_ctl),
                           .c8(loop_exit_ctl), .c11(bead_trap_ctl),
                           .c9(bead_vtl_ctl), .c10(bead_vtl_ctl),
                           .c12(collection_ctl),
                           .c13(wash_ctl),
                           .p1(pump1), .p2(pump2), .p3(pump3),
                           .out1(collect_6),
                           .out2(waste));
wire buf_out_7, buf_in_7, cell_in_7, cell_out_7, bead_in_7, bead_out_7;
reactor inner_7(.in1(j1),
                           .in2(buf_out_7),
                           .in3(buf_in_7),
                           .in4(cell_in_7),
                           .in5(cell_out_7),
                           .in6(bead_in_7),
                           .in7(bead_out_7),
                           .c1(vertical_ctl), .c4(vertical_ctl), .c7(vertical_ctl),
                           .c2(horiz_ctl), .c3(horiz_ctl),
                           .c5(horiz_ctl), .c6(horiz_ctl),
                           .c8(loop_exit_ctl), .c11(bead_trap_ctl),
                           .c9(bead_vtl_ctl), .c10(bead_vtl_ctl),
                           .c12(collection_ctl),
                           .c13(wash_ctl),
                           .p1(pump1), .p2(pump2), .p3(pump3),
                           .out1(collect_7),
                           .out2(waste));
wire buf_out_8, buf_in_8, cell_in_8, cell_out_8, bead_in_8, bead_out_8;
reactor inner_8(.in1(j1),
                           .in2(buf_out_8),
                           .in3(buf_in_8),
                           .in4(cell_in_8),
                           .in5(cell_out_8),
                           .in6(bead_in_8),
                           .in7(bead_out_8),
                           .c1(vertical_ctl), .c4(vertical_ctl), .c7(vertical_ctl),
                           .c2(horiz_ctl), .c3(horiz_ctl),
                           .c5(horiz_ctl), .c6(horiz_ctl),
                           .c8(loop_exit_ctl), .c11(bead_trap_ctl),
                           .c9(bead_vtl_ctl), .c10(bead_vtl_ctl),
                           .c12(collection_ctl),
                           .c13(wash_ctl),
                           .p1(pump1), .p2(pump2), .p3(pump3),
                           .out1(collect_8),
                           .out2(waste));
wire buf_out_9, buf_in_9, cell_in_9, cell_out_9, bead_in_9, bead_out_9;
reactor inner_9(.in1(j1),
                           .in2(buf_out_9),
                           .in3(buf_in_9),
                           .in4(cell_in_9),
                           .in5(cell_out_9),
                           .in6(bead_in_9),
                           .in7(bead_out_9),
                           .c1(vertical_ctl), .c4(vertical_ctl), .c7(vertical_ctl),
                           .c2(horiz_ctl), .c3(horiz_ctl),
                           .c5(horiz_ctl), .c6(horiz_ctl),
                           .c8(loop_exit_ctl), .c11(bead_trap_ctl),
                           .c9(bead_vtl_ctl), .c10(bead_vtl_ctl),
                           .c12(collection_ctl),
                           .c13(wash_ctl),
                           .p1(pump1), .p2(pump2), .p3(pump3),
                           .out1(collect_9),
                           .out2(waste));
wire buf_out_10, buf_in_10, cell_in_10, cell_out_10, bead_in_10, bead_out_10;
reactor inner_10(.in1(j1),
                           .in2(buf_out_10),
                           .in3(buf_in_10),
                           .in4(cell_in_10),
                           .in5(cell_out_10),
                           .in6(bead_in_10),
                           .in7(bead_out_10),
                           .c1(vertical_ctl), .c4(vertical_ctl), .c7(vertical_ctl),
                           .c2(horiz_ctl), .c3(horiz_ctl),
                           .c5(horiz_ctl), .c6(horiz_ctl),
                           .c8(loop_exit_ctl), .c11(bead_trap_ctl),
                           .c9(bead_vtl_ctl), .c10(bead_vtl_ctl),
                           .c12(collection_ctl),
                           .c13(wash_ctl),
                           .p1(pump1), .p2(pump2), .p3(pump3),
                           .out1(collect_10),
                           .out2(waste));
endmodule
