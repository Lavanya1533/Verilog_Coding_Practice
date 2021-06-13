module nand_gate_tb();
	reg A, B;
	wire OUT;
	
	nand_gate n1(.out(OUT), .a(A), .b(B));
	
	initial
	begin
			A = 1'b0;	B = 1'b0;
		#5	A = 1'b0;	B = 1'b1;
		#5	A = 1'b1;	B = 1'b0;
		#5	A = 1'b1;	B = 1'b1;
	end
	
	initial
		$monitor($time, "A = %b, B = %b, OUT = %b", A, B, OUT);
endmodule

