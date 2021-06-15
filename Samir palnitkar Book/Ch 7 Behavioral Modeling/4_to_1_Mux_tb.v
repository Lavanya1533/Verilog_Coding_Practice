module mux_tb();
  reg [1:0] SEL;
  reg [3:0] IN;
  wire OUT;

  //Top level module instantiation
  mux m1(.sel(SEL), .in(IN), .out(OUT));

  initial begin
          IN = 4'b1011;
          SEL = 2'b00;
      #10 SEL = 2'b01;
      #10 SEL = 2'b10;
      #10 SEL = 2'b11;
      #10 $finish;
  end

  initial begin
    $monitor($time, "SEL = %b, OUT = %b", SEL, OUT);
  end
endmodule
