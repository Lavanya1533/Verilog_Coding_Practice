module ripple_caary_counter_tb();
  reg CLOCK, CLEAR;
  wire [3:0] Q;

  //Module instantiation
  ripple_caary_counter r1(.q(Q), .clock(CLOCK), .clear(CLEAR));

  //Clock generation block
  initial begin
    CLOCK = 1'b0;
    forever #10 CLOCK = ~ CLOCK;
  end

  initial begin
            CLEAR = 1'b1;
      #34   CLEAR = 1'b0;
      #200  CLEAR = 1'b1;
      #50   CLEAR = 1'b0;
      #100 $finish;
  end

  initial begin
    $monitor($time, "CLEAR = %b, Q = %b", CLEAR, Q);
  end
endmodule
