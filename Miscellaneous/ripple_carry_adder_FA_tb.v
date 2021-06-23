
module ripple_carry_adder_tb();
	reg [3:0] A, B;
  reg C_IN;
	wire [3:0] SUM;
  wire C_OUT;

	ripple_adder f1(.sum(SUM), .cout(C_OUT), .a(A), .b(B), .cin(C_IN));

	initial
	begin
			   A = 4'd0;	B = 4'd0;	C_IN = 1'b1;
		#1 	 A = 4'd1;	B = 4'd10;	C_IN = 1'b0;
    #1 	 A = 4'd0;	B = 4'd15;	C_IN = 1'b0;
    #1 	 A = 4'd15;	B = 4'd15;	C_IN = 1'b0;
    #1 	 A = 4'd9;	B = 4'd4;	C_IN = 1'b1;
	end

	initial
		$monitor($time, "A = %d, B = %d, CIN = %b, SUM = %d, COUT = %b", A, B, C_IN, SUM, C_OUT);
endmodule
