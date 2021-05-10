//`timescale 1ns/1ps
//
//module FIFO_tb();
//	
//	parameter CLK_period = 40;
//	parameter DATA_WIDTH = 8;
//	
//	integer i;
//
//	//DUT Input regs  
//	reg clk;
//	reg reset;
//	reg en;
//	reg push_pop;
//	reg [DATA_WIDTH-1:0] DATA_IN; 
//	
//	//DUT Output wires  
//	wire [DATA_WIDTH-1:0] DATA_OUT;
//	wire full_signal;
//	wire empty_signal;
//	
//	FIFO FIFO_inst(clk, reset, en, push_pop, DATA_IN, DATA_OUT, full_signal, empty_signal);
//	
//	always #(CLK_period/2) clk = ~clk; 
//	
//	initial begin
//		clk = 0; reset = 1; en = 0; push_pop = 1; DATA_IN = 8'd10;
//		#(CLK_period) 
//		reset = 0; 
//		#(CLK_period) 
//		en = 1;
//		#(CLK_period)
//		
//		for (i = 0; i < 10; i = i + 1) begin: Write
//			#(CLK_period) 
//			push_pop = 1;
//			DATA_IN = DATA_IN + 8'd10;
//		end
//		
//		for (i = 0; i < 10; i = i + 1) begin: Read
//			#(CLK_period) 
//			push_pop = 0;
//		end
//
//		for (i = 0; i < 15; i = i + 1) begin: Write_and_Read
//			#(CLK_period)
//			if (i<4) begin
//				push_pop = 1;
//				DATA_IN = DATA_IN + 8'd2;			
//			end
//			else if (i>3 && i<8) begin
//				push_pop = 0;			
//			end
//			else if (i>7 && i<11) begin
//				push_pop = 1;
//				DATA_IN = DATA_IN + 8'd3;			
//			end
//			else if (i>10) begin
//				push_pop = 0;			
//			end			
//		end
//		#(CLK_period*50) $stop;
//		
//	end
//
//
//	
