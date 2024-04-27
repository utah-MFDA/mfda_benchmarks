module kinase_activity_2(input in1_a, in2_a, in3_a,
                         input in1_b, in2_b, in3_b,
                         c1, c2, c3, c4, c5, c6,
                         c7, c8, c9, c10, c11, c12, c13,
                         s1, s2, s3, s4,
                         p1, p2, p3, p4, p5,
                         output out1_a, out2_a, out3_a, out4_a,
                         out1_b, out2_b, out3_b, out4_b);

  kinase_activity one(in1_a, in2_a, in3_a,
                      c1, c2, c3, c4, c5, c6,
                      c7, c8, c9, c10, c11, c12, c13,
                      s1, s2, s3, s4,
                      p1, p2, p3, p4, p5,
                      output out1_a, out2_a, out3_a, out4_a);
  kinase_activity one(in1_b, in2_b, in3_b,
                      c1, c2, c3, c4, c5, c6,
                      c7, c8, c9, c10, c11, c12, c13,
                      s1, s2, s3, s4,
                      p1, p2, p3, p4, p5,
                      output out1_b, out2_b, out3_b, out4_b);
endmodule
