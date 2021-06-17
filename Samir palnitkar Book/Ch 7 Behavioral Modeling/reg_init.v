//  Initialise 4-bit register array with 4'b0

module reg_array();
  reg [3:0] cache_var [0:1023];
  integer i;

  initial begin
    for (i = 0; i < 1024; i = i + 1)
      #1 cache_var[i] = 4'b0;
    #2000 $stop;
  end
endmodule
