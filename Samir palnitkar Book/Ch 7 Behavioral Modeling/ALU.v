// 8 function ALU design

module ALU( input [3:0] a,b,
            input [2:0] sel,
            output reg [4:0] out);

    always @ ( * ) begin
      case (sel)
        3'b000  : out = a;
        3'b001  : out = a + b;
        3'b010  : out = a - b;
        3'b011  : out = a / b;
        3'b100  : out = a % b;
        3'b101  : out = a << 1;
        3'b110  : out = a >> 1;
        3'b111  : out = (a > b);
        default : out = 5'b0;
      endcase
    end
endmodule
