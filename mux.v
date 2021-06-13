module mux(out, in1, in2, sel);
	input in1, in2;
	input sel;
	output out;
	
	bufif1 #(1:2:3, 3:4:5, 5:6:7) b2(out, in1, sel);
	bufif0 #(1:2:3, 3:4:5, 5:6:7) b1(out, in2, sel);
endmodule
	
