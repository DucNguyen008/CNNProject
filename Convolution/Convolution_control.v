module Convolution_control
#(
	parameter DATA_WIDTH = 8
)
(
	input clk, reset, valid_in,
	output valid_out, oe, pp1, pp2,
	output [] step;
);

	parameter num_step = 
	
	integer i = 0;
	assign step = i;
	
	always @(posedge clk or posedge reset) 
	begin
		if(reset == 1) begin
			i <= 0;
			valid_out <= 0;
			oe <= 0;
			pp1 <= 0;
			pp2 <= 0;
		end
		else if(valid_in == 0) begin
			i <= i;
			valid_out <= 0;
			oe <= 0;
			pp1 <= 0;
			pp2 <= 0;			
		end
		else begin
			if(i<num_step) begin
				i = i + 1;
				
				
				
				if(i == num_step) begin
					i = 0;
				end
			end
			
		end
	end