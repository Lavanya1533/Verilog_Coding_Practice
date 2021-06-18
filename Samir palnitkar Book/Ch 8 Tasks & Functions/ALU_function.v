module mod_ALU();
  reg [3:0] a, b;
  reg [4:0] result;
  reg [2:0] sel;

  initial begin
    a = 4'd5; b = 4'd2;
        sel = 3'b000; result = ALU(sel, a, b);
    #1  sel = 3'b001; result = ALU(sel, a, b);
    #1  sel = 3'b010; result = ALU(sel, a, b);
    #1  sel = 3'b011; result = ALU(sel, a, b);
    #1  sel = 3'b100; result = ALU(sel, a, b);
    #1  sel = 3'b101; result = ALU(sel, a, b);
    #1  sel = 3'b110; result = ALU(sel, a, b);
    #1  sel = 3'b111; result = ALU(sel, a, b);
  end

  initial begin
    $monitor($time, "Sel = %d and output = %d", sel, result);
  end

  function automatic [4:0] ALU(input [2:0] SEL, input [3:0] A, B);
  begin
    case (SEL)
      3'b000  : ALU = A;
      3'b001  : ALU = A + B;
      3'b010  : ALU = A - B;
      3'b011  : ALU = A / B;
      3'b100  : ALU = A % 1;
      3'b101  : ALU = A << 1;
      3'b110  : ALU = A >> 1;
      3'b111  : ALU = (A > B);
      default : ALU = 5'b0;
    endcase
    end
    endfunction
  endmodule
