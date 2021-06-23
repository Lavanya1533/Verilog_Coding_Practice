module half_adder_tb();
  reg A, B;
  wire SUM, COUT;

  //Top-level module instantiation
  half_adder h1(.a(A), .b(B), .sum(SUM), .cout(COUT));

  initial begin
        A = 1'b0; B = 1'b0;
    #10 A = 1'b0; B = 1'b1;
    #10 A = 1'b1; B = 1'b0;
    #10 A = 1'b1; B = 1'b1;
  end

  initial begin
    $monitor($time, "A = %b, B = %b, SUM = %b, COUT = %b", A, B, SUM, COUT);
  end
endmodule
