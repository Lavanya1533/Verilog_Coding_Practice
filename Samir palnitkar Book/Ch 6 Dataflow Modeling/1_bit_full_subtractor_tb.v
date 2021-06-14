module full_subtractor_tb();
  reg P, Q, R;
  wire D, B;

//Top-level module instantiation
full_subtractor f1(.d(D), .b(B), .p(P), .q(Q), .r(R));

  initial begin
        P = 1'b0; Q = 1'b0; R = 1'b0;
    #10 P = 1'b0; Q = 1'b0; R = 1'b1;
    #10 P = 1'b0; Q = 1'b1; R = 1'b0;
    #10 P = 1'b0; Q = 1'b1; R = 1'b1;
    #10 P = 1'b1; Q = 1'b0; R = 1'b0;
    #10 P = 1'b1; Q = 1'b0; R = 1'b1;
    #10 P = 1'b1; Q = 1'b1; R = 1'b0;
    #10 P = 1'b1; Q = 1'b1; R = 1'b1;
    #10 $stop;
  end

  initial begin
    $monitor($time, " P = %b, Q = %b, R = %b, Diff = %b, Borrow = %b", P, Q, R, D, B);
  end
endmodule
