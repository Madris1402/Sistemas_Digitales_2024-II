module flipflop_d (clk, sQ);
	
	input 	clk;
	output	[16:0] sQ;
	
	assign 	sQ = Ff; 
	
	always @(negedge clk)
		begin
			Ff = Ff;
		end
	
endmodule