module in_vitro_diagnostics (input i1, i2, i3, i4, i5, i6, i7, i8, i9, i10, i11, i12, output dt1, dt2, dt3, dt4, dt5, dt6);
  mixer mix1(.a(i1), .b(i7), .y(dt1));
  mixer mix2(.a(i2), .b(i8), .y(dt1));
  mixer mix3(.a(i3), .b(i9), .y(dt1));
  mixer mix4(.a(i4), .b(i10), .y(dt1));
  mixer mix5(.a(i5), .b(i11), .y(dt1));
  mixer mix6(.a(i6), .b(i12), .y(dt1));
endmodule
