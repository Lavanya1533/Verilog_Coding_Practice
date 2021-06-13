module nand_gate(out, a, b);
	output out;
	input a, b;
	wire w1,w2;
	wire a_bar, b_bar;
	
	and a1(w1, a, a);
	and a2(w2, b, b);
	not n1(a_bar, w1);
	not n2(b_bar, w2);
	or o1(out, a_bar, b_bar);
endmodule
