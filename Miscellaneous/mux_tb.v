module mux_tb();
	reg IN1, IN2;
	reg	SEL;
	wire OUT;
	
	mux m1(.out(OUT), .in1(IN1), .in2(IN2), .sel(SEL));
	
	initial
	begin
			IN1 = 1'b1;	IN2 = 1'b0;
			SEL = 1'b1;
		#20	SEL = 1'b0;
	end
	
	initial
		$monitor($time, "SEL = %b, IN1 = %b, IN2 = %b, OUT = %b", SEL, IN1, IN2, OUT);
endmodule
