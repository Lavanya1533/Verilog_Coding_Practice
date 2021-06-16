module clk_gen();
	reg clk;
	
	initial
	begin
		clk = 1'b0;
		#200 $finish;
	end
		                                                          
	always
	begin
		#30 clk = 1'b1;
		#10	clk = 1'b0;
	end
endmodule