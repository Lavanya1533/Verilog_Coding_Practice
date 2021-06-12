module s_r_latch_tb();
  reg S_bar, R_bar;
  wire Q, Q_bar;

  // Instantiate the top level module
  S_R_latch s1(.Sbar(S_bar), .Rbar(R_bar), .Q(Q), .Qbar(Q_bar));

  //Sequential block
  initial begin
        S_bar = 1'b0;
        R_bar = 1'b0;
    #10 R_bar = 1'b1;
    #10 R_bar = 1'b0;
    #10 S_bar = 1'b1;
    #10 S_bar = 1'b0;
    #10 $stop;
  end

  //Monitor the output signals continiously
  initial begin
    $monitor($time,"S = %b, R = %b, Q = %b, Q_bar = %b",S_bar, R_bar, Q, Q_bar);
  end
endmodule
