module synthetic_5(
input incoming,
output outgoing
);

wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14,w15,w16,w17,w18,w19,w20,w21,w22,w23,w24,w25,w26,w27,w28,w29,w30,w31,w32,w33,w34,w35,w36,w37,w38,w39,w40,w41,w42,w43,w44,w45,w46,w47,w48;

//first row and a half
chamber o1(.in(incoming), .out(w1));
heater o2(.in(incoming), .out(w2));
filter o3(.in(incoming), .out(w35));
chamber o4(.in(incoming), .out(w3));
chamber o5(.in(incoming), .out(w4));
chamber o6(.in(incoming), .out(w36));
chamber o7(.in(incoming), .out(w5));
heater o8(.in(incoming), .out(w6));
filter o9(.in(incoming), .out(w37));
heater o10(.in(incoming), .out(w7));
filter o11(.in(incoming), .out(w38));
heater o12(.in(incoming), .out(w8));
chamber o13(.in(incoming), .out(w39));
chamber o14(.in(incoming), .out(w9));
chamber o15(.in(incoming), .out(w10));
chamber o16(.in(incoming), .out(w11));
chamber o17(.in(incoming), .out(w40));


//Second row
heater o18(.in(w1), .out(w12));
mixer o19(.a(w2), .b(w35), .y(w41));
heater o20(.in(w3), .out(w13));
mixer o21(.a(w4), .b(w36), .y(w42));
heater o22(.in(w5), .out(w14));
mixer o23(.a(w6), .b(w37), .y(w15));
mixer o24(.a(w7), .b(w38), .y(w16));
mixer o25(.a(w8), .b(w39), .y(w17));
heater o26(.in(w9), .out(w18));
filter o27(.in(w10), .out(w19));
mixer o28(.a(w11), .b(w40), .y(w20));


//Third row
mixer o29(.a(w12), .b(w41), .y(w21));
mixer o30(.a(w13), .b(w42), .y(w43));
filter o31(.in(w14), .out(w22));
heater o32(.in(w15), .out(w44));
filter o33(.in(w16), .out(w23));
detector o34(.in(w17), .out(w45));
detector o35(.in(w18), .out(w24));
detector o36(.in(w19), .out(w25));
detector o37(.in(w20), .out(w46));

//Fourth row
mixer o38(.a(w21), .b(w43), .y(w26));
mixer o39(.a(w22), .b(w44), .y(w27));
mixer o40(.a(w23), .b(w45), .y(w28));
heater o41(.in(w24), .out(w29));
mixer o42(.a(w25), .b(w46), .y(w29));



//Fifth row
heater o43(.in(w26), .out(w47));
filter o44(.in(w27), .out(w30));
mixer o45(.a(w29), .b(w29), .y(w31));

//Sixth row
mixer o46(.a(w30), .b(w47), .y(w32));
mixer o47(.a(w28), .b(w31), .y(w33));

//Seventh row
heater o48(.in(w33), .out(w48));

//Eighth row
mixer o49(.a(w48), .b(w32), .y(w34));

//Ninth row
detector o50(.in(w34), .out(outgoing));


endmodule
