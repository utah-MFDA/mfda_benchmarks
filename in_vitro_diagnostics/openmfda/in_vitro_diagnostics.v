module in_vitro_diagnostics (input i1, i2, i3, i4, i5, i6, i7, i8, i9, i10, i11, i12, output nop);
  wire dt1, dt2, dt3, dt4, dt5, dt6, dt7, dt8, dt9;
  mixer mix1(.a(i1), .b(i7), .y(dt1));
  mixer mix2(.a(i2), .b(i8), .y(dt2));
  mixer mix3(.a(i3), .b(i9), .y(dt3));
  mixer mix4(.a(i4), .b(i10), .y(dt4));
  mixer mix5(.a(i5), .b(i11), .y(dt5));
  mixer mix6(.a(i6), .b(i12), .y(dt6));
  detector det1(.in(dt1), .out(nop));
  detector det2(.in(dt2), .out(nop));
  detector det3(.in(dt3), .out(nop));
  detector det4(.in(dt4), .out(nop));
  detector det5(.in(dt5), .out(nop));
  detector det6(.in(dt6), .out(nop));
endmodule
