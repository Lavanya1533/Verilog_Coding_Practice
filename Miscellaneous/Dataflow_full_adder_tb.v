module full_adder_tb();
  reg A, B, CIN;
  wire SUM, COUT;

  //Top-level module instantiation
  full_adder h1(.a(A), .b(B), .cin(CIN), .sum(SUM), .cout(COUT));

  initial begin
        A = 1'b0; B = 1'b0;	CIN = 1'b0;
    #10 A = 1'b0; B = 1'b0; CIN = 1'b1;
    #10 A = 1'b0; B = 1'b1; CIN = 1'b0;
    #10 A = 1'b0; B = 1'b1; CIN = 1'b1;
    #10 A = 1'b1; B = 1'b0; CIN = 1'b0;
    #10 A = 1'b1; B = 1'b0; CIN = 1'b1;
    #10 A = 1'b1; B = 1'b1; CIN = 1'b0;
    #10 A = 1'b1; B = 1'b1; CIN = 1'b1;
  end

  initial begin
    $monitor($time, "A = %b, B = %b, CIN = %b, SUM = %b, COUT = %b", A, B, CIN, SUM, COUT);
  end
endmodule
