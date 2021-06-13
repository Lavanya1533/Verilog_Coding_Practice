module module_d(out, a, b, c);
	output out;
	input a, b, c;
	wire e;
	
	and #(5) a1(e, a, b);
	or #(4) o1(out, e, c);
endmodule
