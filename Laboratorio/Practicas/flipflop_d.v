module flipflop_d (clk, sQ);
	
	input 	clk;
	output	[16:0] sQ;
		reg		[16:0] Ff = 17'hF0000;
	assign 	sQ = Ff; 
	
	always @(negedge clk)
		begin
			Ff = Ff;
		end
	
endmodule
