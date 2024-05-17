module synthetic_4(
input incoming,
output outgoing
);

wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14,w15,w16,w17,w18,w19,w20,w21,w22,w23,w24,w25,w26,w27,w28,w29,w30,w31,w32,w33,w34,w35,w36,w37,w38,w39;
//first row and a half
chamber o1(.in(incoming), .out(w1));
chamber o2(.in(incoming), .out(w28));
chamber o3(.in(incoming), .out(w2));
chamber o4(.in(incoming), .out(w3));
heater o5(.in(incoming), .out(w29));
heater o6(.in(incoming), .out(w4));
filter o7(.in(incoming), .out(w5));
filter o8(.in(incoming), .out(w30));
chamber o9(.in(incoming), .out(w6));
chamber o10(.in(incoming), .out(w7));
chamber o11(.in(incoming), .out(w8));
detector o12(.in(incoming), .out(w9));
detector o13(.in(incoming), .out(w10));
detector o14(.in(incoming), .out(w11));

//Second row
mixer o15(.a(w1), .b(w28), .y(w12));
heater o16(.in(w2), .out(w31));
mixer o17(.a(w3), .b(w29), .y(w13));
filter o18(.in(w4), .out(w14));
mixer o19(.a(w5), .b(w30), .y(w32));
heater o20(.in(w6), .out(w15));
heater o21(.in(w7), .out(w16));
heater o22(.in(w8), .out(w17));
heater o23(.in(w9), .out(w33));
mixer o24(.a(w10), .b(w11), .y(w18));

//Third row
mixer o25(.a(w12), .b(w31), .y(w19));
heater o26(.in(w13), .out(w34));
mixer o27(.a(w14), .b(w32), .y(w20));
filter o28(.in(w15), .out(w35));
mixer o29(.a(incoming), .b(w16), .y(w21));
mixer o30(.a(w17), .b(w33), .y(w22));
filter o31(.in(w18), .out(w36));

//Fourth row
mixer o32(.a(w19), .b(w34), .y(w23));
mixer o33(.a(w20), .b(w35), .y(w37));
detector o34(.in(w21), .out(w24));
mixer o35(.a(w22), .b(w36), .y(w38));


//Fifth row
mixer o36(.a(w23), .b(w37), .y(w25));
mixer o37(.a(w24), .b(w38), .y(w26));

//Sixth row
filter o38(.in(w25), .out(w27));
heater o39(.in(w26), .out(w39));

//Seventh row
mixer o40(.a(w27), .b(w39), .y(outgoing));

endmodule
