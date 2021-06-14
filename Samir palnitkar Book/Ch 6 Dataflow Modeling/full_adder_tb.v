
module full_adder_tb();
  reg [3:0] A, B;
  reg CIN;
  wire [3:0] SUM;
  wire COUT;

  //Module Instantiations
  //full_adder_dataflow f1 (.a(A), .b(B), .cin(CIN), .sum(SUM), .cout(COUT));
   full_adder_carry_lookahead f2(.a(A), .b(B), .cin(CIN), .sum(SUM), .cout(COUT));

  initial begin
        A = 4'b0; B = 4'b0; CIN = 1'b0;
    #5  A = 4'd3; B = 4'd0; CIN = 1'd1;
    #5  A = 4'd3; B = 4'd4; CIN = 1'd1;
    #5  A = 4'd15; B = 4'd15; CIN = 1'd0;
    #5  A = 4'd15; B = 4'd15; CIN = 1'd1;
  end

  initial begin
    $monitor($time, "A = %d, B = %d, CIN = %d, SUM = %d, COUT = %d", A, B, CIN, SUM, COUT);
  end
endmodule
