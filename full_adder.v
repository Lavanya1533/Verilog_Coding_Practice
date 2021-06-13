module full_adder(sum, c_out, a, b, c_in);
	input a, b, c_in;
	output sum, c_out;
	wire a_not, b_not, c_not;
	wire andout_1, andout_2, andout_3, andout_4, andout_5, andout_6, andout_7;
	
	not n1(a_not, a);
	not n2(b_not, b);
	not n3(c_not, c_in);
	
	and a1(andout_1, a, b, c_in);
	and a2(andout_2, a_not, b, c_not);
	and a3(andout_3, a_not, b_not, c_in);
	and a4(andout_4, a, b_not, c_not);
	
	and a5(andout_5, a, b);
	and a6(andout_6, b, c_in);
	and a7(andout_7, a, c_in);
	
	or o1(sum, andout_1, andout_2, andout_3, andout_4);
	or o2(c_out, andout_5, andout_6, andout_7);
endmodule
	
	
	
