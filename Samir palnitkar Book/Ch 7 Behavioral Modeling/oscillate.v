`timescale 1ns/1ps

module osci();
	reg oscillate;
	initial
	begin
		oscillate = 1'b0;
		forever #30 oscillate = ~ oscillate;
	end
endmodule
