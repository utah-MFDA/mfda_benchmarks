module NOT (inout a, y, flush, vss, vdd);
  valve_20px_1 valve (.in_fluid(vdd), .out_fluid(y), .in_air(a), .out_air(flush));
  serpentine_50px_0 pulldown (.in_fluid(y), .out_fluid(vss));
endmodule

module NAND (inout a, b, y, flush, vss, vdd);
  wire c;
  valve_20px_1 valve_a (.in_fluid(vdd), .out_fluid(c), .in_air(a), .out_air(flush));
  valve_20px_1 valve_b (.in_fluid(c), .out_fluid(y), .in_air(b), .out_air(flush));
  serpentine_50px_0 pulldown (.in_fluid(y), .out_fluid(vss));
endmodule

module NOR (inout a, b, y, flush, vss, vdd);
  valve_20px_1 valve_a (.in_fluid(vdd), .out_fluid(y), .in_air(a), .out_air(flush));
  valve_20px_1 valve_b (.in_fluid(vdd), .out_fluid(y), .in_air(b), .out_air(flush));
  serpentine_50px_0 pulldown (.in_fluid(y), .out_fluid(vss));
endmodule

module XOR (inout a, b, y, flush, vss, vdd);
  wire an, bn, c, d;
  valve_20px_1 valve_a (.in_fluid(vdd), .out_fluid(c), .in_air(a), .out_air(flush));
  valve_20px_1 valve_bn (.in_fluid(vdd), .out_fluid(y), .in_air(bn), .out_air(flush));
  valve_20px_1 valve_b (.in_fluid(vdd), .out_fluid(d), .in_air(b), .out_air(flush));
  valve_20px_1 valve_an (.in_fluid(vdd), .out_fluid(y), .in_air(an), .out_air(flush));

  valve_20px_1 valve_a_inv (.in_fluid(vdd), .out_fluid(an), .in_air(a), .out_air(flush));
  valve_20px_1 valve_b_inv (.in_fluid(vdd), .out_fluid(bn), .in_air(b), .out_air(flush));
  serpentine_50px_0 pulldown_an (.in_fluid(an), .out_fluid(vss));
  serpentine_50px_0 pulldown_bn (.in_fluid(bn), .out_fluid(vss));
  serpentine_50px_0 pulldown (.in_fluid(y), .out_fluid(vss));
endmodule
