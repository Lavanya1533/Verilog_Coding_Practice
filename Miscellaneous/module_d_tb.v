module module_d_tb();
	wire OUT;
	reg A, B, C;
	
	module_d d1(.out(OUT), .a(A), .b(B), .c(C));
	
	initial
	begin
			A = 1'b0;	B = 1'b0;	C = 1'b0;
		#10 A = 1'b1;	B = 1'b1;	C = 1'b1;
		#10 A = 1'b1;	B = 1'b1;	C = 1'b0;
		#20 $stop;
	end
	
	initial
		$monitor($time, "A = %b, B = %b, C = %b, OUT = %b", A, B, C, OUT);
endmodule
		
