module Line_Buffer	//depth = 7
#(
	parameter DATA_WIDTH = 8,
	parameter ADDR_WIDTH = 3
)
(
	input clk,
	input [DATA_WIDTH-1:0] Din,
	output [DATA_WIDTH-1:0] Dout	
);
	reg [ADDR_WIDTH-1:0] addr;


always @(posedge clk) begin
	if(addr == 3'b000) begin
		addr = 3'b001;
	end
	addr = addr + 3'b001;
end


	BRAM BRAM_inst  (	.clk(clk),
							.we(1'b1),
							.addr(addr),
							.Din(Din),
							.Dout(Dout)
						 );

endmodule
