module mux_tb();
  reg [1:0] SEL;
  reg [3:0] IN;
  wire OUT;

//Module instantiation
  //mux_logic m1(.sel(SEL), .in(IN), .out(OUT));
  mux_cond m2(.sel(SEL), .in(IN), .out(OUT));

  initial
  begin
    IN = 4'b1011;
        SEL[1] = 1'b0;  SEL[0] = 1'b0;
    #5  SEL[1] = 1'b0;  SEL[0] = 1'b1;
    #5  SEL[1] = 1'b1;  SEL[0] = 1'b0;
    #5  SEL[1] = 1'b1;  SEL[0] = 1'b1;
  end

  initial begin
    $monitor($time, "SEL[1] = %b, SEL[0] = %b, OUT = %b", SEL[1], SEL[0], OUT);
  end
endmodule
