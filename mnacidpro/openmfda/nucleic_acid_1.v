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
    
module nucleic_acid_1(
input lysis_ctl, wash_ctl, elute_ctl, horiz_ctl, dead_end_ctl,
                     loop_exit_ctl, bead_vtl_ctl, wash_ctl, collection_ctl,
                     vertical_ctl, bead_trap_ctl,
                     input pump1, pump2, pump3,
                     input bead_in, buf_in, cell_in,
                     input lysis_in, wash_in, buffer_in,
                     output waste, bead_out, buf_out, cell_out,
collect_0
);
wire j1;
      valve lysis(.fluid_in(lysis_in), .fluid_out(j1), .air_in(lysis_ctl));
      valve wash(.fluid_in(wash_in), .fluid_out(j1), .air_in(wash_ctl));
      valve buffer(.fluid_in(buffer_in), .fluid_out(j1), .air_in(elute_ctl));
      assign buf_out = buf_out_0;
      assign buf_in_0 = buf_in;
      assign cell_out = cell_out_0;
      assign cell_in_0 = cell_in;
      assign bead_out = bead_out_0;
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
endmodule