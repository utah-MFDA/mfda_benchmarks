module Synthetic_5(
input Source,
output Out
);

mixer m1(.a(), .b(), .out());
chamber o1(.in(Source), .out(w1));

//first row and a half
chamber o1(.in(Source), .out(w1));
chamber o2(.in(Source), .out(w1));
chamber o3(.in(Source), .out(w2));
chamber o4(.in(Source), .out(w3));
chamber o5(.in(Source), .out(w3));
chamber o6(.in(Source), .out(w4));
chamber o7(.in(Source), .out(w5));
chamber o8(.in(Source), .out(w5));
chamber o9(.in(Source), .out(w6));
chamber o10(.in(Source), .out(w7));
chamber o11(.in(Source), .out(w8));
chamber o12(.in(Source), .out(w9));
chamber o13(.in(Source), .out(w10));
chamber o14(.in(Source), .out(w11));

//Second row
mixer m15(.a(w1), .b(w1), .out(w12));
chamber o16(.in(w2), .out(w12));
mixer m17(.a(w3), .b(w3), .out(w13));
chamber o18(.in(w4), .out(w14));
mixer m19(.a(w1), .b(Source), .out(w14));
chamber o20(.in(w6), .out(w15));
chamber o21(.in(w7), .out(w16));
chamber o22(.in(w8), .out(w17));
chamber o23(.in(w9), .out(w17));
mixer m24(.a(w10), .b(w11), .out(w18));

//Third row
mixer m25(.a(w12), .b(w12), .out(w19));
chamber o26(.in(w13), .out(w19));
mixer m27(.a(w14), .b(w14), .out(w20));
chamber o28(.in(w15), .out(w20));
mixer m29(.a(Source), .b(w16), .out(w21));
mixer m30(.a(w17), .b(w17), .out(w22));
chamber o31(.in(w18), .out(w22));



//Fourth row
mixer m32(.a(w19), .b(w19), .out(w23));
mixer m33(.a(w20), .b(w20), .out(w23));
chamber o34(.in(w21), .out(w24));
mixer m35(.a(w22), .b(w22), .out(w24));


//Fifth row
mixer m36(.a(w23), .b(w23), .out(w25));
mixer m37(.a(w24), .b(w24), .out(w26));

//Sixth row 
chamber o38(.in(w25), .out(w27));
chamber o39(.in(w26), .out(w27));

//Seventh row
mixer m40(.a(w27), .b(w27), .out(Out));

endmodule








