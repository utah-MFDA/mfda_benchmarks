module synthetic_3(
input incoming,
output outgoing
);

wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14,w15,w16,w17,w18,w19,w20,w21,w22,w23,w24,w25,w26;

//first row
chamber o1(.in(incoming), .out(w1));
chamber o2(.in(incoming), .out(w2));
heater o3(.in(incoming), .out(w3));
filter o4(.in(incoming), .out(w3));
chamber o5(.in(incoming), .out(w4));
filter o6(.in(incoming), .out(w5));
heater o7(.in(incoming), .out(w5));
heater o8(.in(incoming), .out(w6));
chamber o9(.in(incoming), .out(w6));
chamber o10(.in(incoming), .out(w7));
chamber o11(.in(incoming), .out(w8));

//Second row

mixer o12(.a(w1), .b(incoming), .y(w9));
filter o13(.in(w2), .out(w20));
mixer o14(.a(w3), .b(w3), .y(w10));
filter o15(.in(w4), .out(w11));
mixer o16(.a(w5), .b(w5), .y(w21));
mixer o17(.a(w6), .b(w6), .y(w12));
heater o18(.in(w7), .out(w13));
detector o19(.in(w8), .out(w22));

//Third row

mixer o20(.a(w9), .b(w20), .y(w14));
detector o21(.in(w10), .out(w23));
heater o22(.in(w11), .out(w15));
mixer o23(.a(w12), .b(w21), .y(w24));
mixer o24(.a(w13), .b(w22), .y(w16));

//Fourth row

mixer o25(.a(w14), .b(w23), .y(w17));
mixer o26(.a(w15), .b(w24), .y(w25));
heater o27(.in(w16), .out(w18));

//Fifth row
mixer o28(.a(w17), .b(w25), .y(w26));

//Sixth row
mixer o29(.a(w18), .b(w26), .y(w19));

//Seventh row
heater o30(.in(w19), .out(outgoing));

endmodule
