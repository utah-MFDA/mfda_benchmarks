module pcr_mixing_tree(input tris_hcl, kcl, bovine_serum_albumin, gelatin, primer, beosynucletide_triphosphate, amplitag_dna, lambda_dna, output result);

  wire m1_out, m2_out, m3_out, m4_out, m5_out, m6_out;

  mixer m1(.a(tris_hcl), .b(kcl), .y(m1_out));
  mixer m2(.a(bovine_serum_albumin), .b(gelatin), .y(m2_out));
  mixer m4(.a(primer), .b(beosynucletide_triphosphate), .y(m4_out));
  mixer m5(.a(amplitag_dna), .b(lambda_dna), .y(m5_out));
  mixer m3(.a(m1_out), .b(m2_out), .y(m3_out));
  mixer m6(.a(m4_out), .b(m5_out), .y(m6_out));
  mixer m7(.a(m3_out), .b(m6_out), .y(result));
endmodule
