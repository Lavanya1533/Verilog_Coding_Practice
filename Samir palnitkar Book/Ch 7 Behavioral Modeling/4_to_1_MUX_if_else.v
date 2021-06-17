
module mux(  output reg out,
                    input i0, i1, i2, i3,
                    input s0, s1);
                    
// 4:1 mux using if-else statement
    always @ (*)
    begin
      if      ({s1, s0} == 2'b00)   out = i0;
      else if ({s1, s0} == 2'b01)   out = i1;
      else if ({s1, s0} == 2'b10)   out = i2;
      else if ({s1, s0} == 2'b11)   out = i3;
      else                          out = 1'b0;
    end
endmodule
