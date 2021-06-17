
module ALU_tb();
  reg [3:0] A, B;
  reg [2:0] SEL;
  wire [4:0] OUT;

  //Top-Level module instantiation
  ALU a1( .a(A), .b(B), .sel(SEL), .out(OUT));

  initial begin
        A = 4'd3; B = 4'd2;
        SEL = 3'b000;
    #1  SEL = 3'b001;
    #1  SEL = 3'b010;
    #1  SEL = 3'b011;
    #1  SEL = 3'b100;
    #1  SEL = 3'b101;
    #1  SEL = 3'b110;
    #1  SEL = 3'b111;
    #1  SEL = 3'b0x1;
  end

  initial begin
    $monitor($time, "SEL = %d, A = %d, B = %d, OUTPUT = %b ", SEL, A, B, OUT);
  end
endmodule
