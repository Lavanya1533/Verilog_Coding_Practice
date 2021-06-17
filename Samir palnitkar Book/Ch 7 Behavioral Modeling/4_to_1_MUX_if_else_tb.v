
module mux_tb();
  wire OUT;
  reg I0, I1, I2, I3;
  reg S0, S1;

//Top-lvel module instantiation
  mux m1(  .out(OUT), .i0(I0), .i1(I1), .i2(I2), .i3(I3), .s0(S0), .s1(S1));

  initial begin
  I0 = 1'b1;  I1 = 1'b0;  I2 = 1'b1;  I3 = 1'b1;

  #10 {S1, S0} = 2'b00;
  #10 {S1, S0} = 2'b01;
  #10 {S1, S0} = 2'b10;
  #10 {S1, S0} = 2'b11;
  #10 {S1, S0} = 2'bx0;
  #10 {S1, S0} = 2'bxx;
  end

  initial begin
    $monitor($time, "S1 = %b, S0 = %b, OUTPUT = %b", S1, S0, OUT);
  end
endmodule
