module comparator(input [3:0] a,b, output reg Y);

  always @(a or b)
  begin
    Y = 0;
    if( a == b)
      Y = 1;
  end
  endmodule
