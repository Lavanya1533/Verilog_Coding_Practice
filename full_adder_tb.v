module full_adder_tb();
	reg A, B, C_IN;
	wire SUM, C_OUT;
	
	full_adder f1(.sum(SUM), .c_out(C_OUT), .a(A), .b(B), .c_in(C_IN));
	
	initial
	begin
			A = 1'b0;	B = 1'b0;	C_IN = 1'b0;
		#1 	A = 1'b0;	B = 1'b0;	C_IN = 1'b1;
		#1 	A = 1'b0;	B = 1'b1;	C_IN = 1'b0;
		#1 	A = 1'b0;	B = 1'b1;	C_IN = 1'b1;
		#1 	A = 1'b1;	B = 1'b0;	C_IN = 1'b0;
		#1 	A = 1'b1;	B = 1'b0;	C_IN = 1'b1;
		#1 	A = 1'b1;	B = 1'b1;	C_IN = 1'b0;
		#1 	A = 1'b1;	B = 1'b1;	C_IN = 1'b1;
	end
	
	initial
		$monitor($time, "A = %b, B = %b, CIN = %b, SUM = %b, COUT = %b", A, B, C_IN, SUM, C_OUT);
endmodule
		
