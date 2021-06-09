// 4:1 mux using parameter 

module parameter_mux(a, b, sel, Y);
parameter n = 2;
input [n-1:0] a, b;
input sel;
output Y;
assign sel_bus = {n{sel}};

assign Y= (a & ~sel_bus) | (b & sel_bus);
endmodule
