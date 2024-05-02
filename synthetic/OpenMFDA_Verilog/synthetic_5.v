module Synthetic_5(
input Source,
output Out
);

mixer m1(.a(), .b(), .out());
chamber o1(.in(Source), .out(w1));

//first row and a half
chamber o1(.in(Source), .out(w1));
chamber o2(.in(Source), .out(w2));
chamber o3(.in(Source), .out(w2));
chamber o4(.in(Source), .out(w3));
chamber o5(.in(Source), .out(w4));
chamber o6(.in(Source), .out(w4));
chamber o7(.in(Source), .out(w5));
chamber o8(.in(Source), .out(w6));
chamber o9(.in(Source), .out(w6));
chamber o10(.in(Source), .out(w7));
chamber o11(.in(Source), .out(w7));
chamber o12(.in(Source), .out(w8));
chamber o13(.in(Source), .out(w8));
chamber o14(.in(Source), .out(w9));
chamber o15(.in(Source), .out(w10));
chamber o16(.in(Source), .out(w11));
chamber o17(.in(Source), .out(w11));


//Second row
chamber o18(.in(w1), .out(w12));
mixer m19(.a(w2), .b(w2), .out(w12));
chamber o20(.in(w3), .out(w13));
mixer m21(.a(w4), .b(w4), .out(w13));
chamber o22(.in(w5), .out(w14));
mixer m23(.a(w6), .b(w6), .out(w15));
mixer m24(.a(w7), .b(w7), .out(w16));
mixer m25(.a(w8), .b(w8), .out(w17);
chamber o26(.in(w9), .out(w18));
chamber o27(.in(w10), .out(w19));
mixer m28(.a(w11), .b(w11), .out(w20));


//Third row
mixer m29(.a(w12), .b(w12), .out(w21));
mixer m30(.a(w13), .b(w13), .out(w21));
chamber o31(.in(w14), .out(w22));
chamber o32(.in(w15), .out(w22));
chamber o33(.in(w16), .out(w23));
chamber o34(.in(w17), .out(w23));
chamber o35(.in(w18), .out(w24));
chamber o36(.in(w19), .out(w25));
chamber o37(.in(w20), .out(w25));


//Fourth row
mixer m38(.a(w21), .b(w21), .out(w26));
mixer m39(.a(w22), .b(w22), .out(w27));
mixer m40(.a(w23), .b(w23), .out(w28));
chamber o41(.in(w24), .out(w29));
mixer m42(.a(w25), .b(w25), .out(w29));



//Fifth row
chamber o43(.in(w26), .out(w30));
chamber o44(.in(w27), .out(w30));
mixer m45(.a(w29), .b(w29), .out(w31));

//Sixth row 
mixer m46(.a(w30), .b(w30), .out(w32));
mixer m47(.a(w28), .b(w31), .out(w33));

//Seventh row
chamber o48(.in(w33), .out(w32));

//Eighth row 
mixer m49(.a(w32), .b(w32), .out(w34));

//Ninth row
chamber o50(.in(w34), .out(Out));


endmodule








