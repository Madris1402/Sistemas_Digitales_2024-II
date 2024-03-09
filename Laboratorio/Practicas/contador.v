module contador (clk, sQ);
	
	input 	clk;
	output	[16:0] sQ;
	
	reg		[16:0] Ff = 17'h00008;
	assign 	sQ = Ff; 
	
	always @(negedge clk)
		begin
			if (Ff [3] == 1'b1)
			begin
				if(Ff [13] == 1'b1)
				begin
					Ff = { 4'b0010, Ff[13:4], 3'b000};
				end
				
				else
				begin
					Ff = {3'b000, Ff[12:4], 1'b0, Ff[3:0]};
				end
			end
			
			else if (Ff [14] == 1'b1)
			begin
				if(Ff [4] == 1'b1)
				begin
					Ff ={ 2'b00, Ff[13:3], 4'b1000};
				end
				
				else
				begin
					Ff = {3'b001, 1'b0, Ff[13:5], Ff[3:0]};
				end
			end
				
		end
endmodule
