// Device H
module logic04 (inout i1, i2, i3, i4, i5, i6, i7, i8, k1, k2, k3, k4, c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20,c21,c22,c23, m1, m2, m3, m4, m5, m6);
  wire j1;
  LOGIC_ARRAY la(j1, k1, k2, k3, k4, c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20,c21,c22,c23);
  MUX8 mux1(i1, i2, i3, i4, i5,i6,i7,i8, m1, m2, m3, m4, m5, m6, j1);
endmodule

module LOGIC_ARRAY(inout i1, i2, i3, i4, i5, c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20,c21,c22,c23);
  valve v1(.fluid_in(i1), .fluid_out(j1), .air_in(c1));
  valve v2(.fluid_in(i1), .fluid_out(j2), .air_in(c2));
  valve v3(.fluid_in(i1), .fluid_out(j3), .air_in(c3));

  LOGIC_CORNER lc1(i2, j1, j3, j5,c4,c5,c6,c7);
  LOGIC_CORNER lc2(i3, j1, j4, j5,c8,c9,c10,c11);
  LOGIC_CORNER lc3(i4, j2, j3, j6,c12,c14,c14,c15);
  LOGIC_CORNER lc4(i5, j2, j4, j6,c16,c17,c18,c19);

  valve v4(.fluid_in(j3), .fluid_out(j7), .air_in(c20));
  valve v5(.fluid_in(j4), .fluid_out(j7), .air_in(c21));
  valve v6(.fluid_in(j5), .fluid_out(j7), .air_in(c22));
  valve v7(.fluid_in(j6), .fluid_out(j7), .air_in(c23));

endmodule

module LOGIC_CORNER(inout i1, i2, i3, i4, c1, c2, c3, c4);
  CELL_TRAP ct(j1, j2, j3, j4);
  valve v1(.fluid_in(i1), .fluid_out(j1), .air_in(c1));
  valve v2(.fluid_in(i2), .fluid_out(j2), .air_in(c2));
  valve v3(.fluid_in(i3), .fluid_out(j3), .air_in(c3));
  valve v4(.fluid_in(i4), .fluid_out(j4), .air_in(c4));
endmodule


module MUX8(inout i1, i2, i3, i4, i5, i6,i7,i8, c1, c2, c3, c4, c5, c6, o1);
  wire j1, j2, j3, j4, j5,j6;
  valve v1(.fluid_in(i1), .fluid_out(j1), .air_in(c1));
  valve v2(.fluid_in(i2), .fluid_out(j1), .air_in(c2));
  valve v3(.fluid_in(i3), .fluid_out(j2), .air_in(c1));
  valve v4(.fluid_in(i4), .fluid_out(j2), .air_in(c2));
  valve v5(.fluid_in(i5), .fluid_out(j3), .air_in(c1));
  valve v6(.fluid_in(i6), .fluid_out(j3), .air_in(c2));
  valve v7(.fluid_in(i7), .fluid_out(j4), .air_in(c1));
  valve v8(.fluid_in(i8), .fluid_out(j4), .air_in(c2));

  valve v9(.fluid_in(j1), .fluid_out(j5), .air_in(c3));
  valve v10(.fluid_in(j2), .fluid_out(j5), .air_in(c4));
  valve v11(.fluid_in(j3), .fluid_out(j6), .air_in(c3));
  valve v12(.fluid_in(j4), .fluid_out(j6), .air_in(c4));

  valve v13(.fluid_in(j5), .fluid_out(o), .air_in(c5));
  valve v14(.fluid_in(j6), .fluid_out(o), .air_in(c6));
endmodule

module CELL_TRAP(inout a,b,c,d);
  trap4 t(a,b,c,d);
endmodule
