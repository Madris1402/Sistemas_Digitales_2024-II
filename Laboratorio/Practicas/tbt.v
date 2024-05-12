module tbt (ck, sT, f, ckd);

	input 	ck;
	input 	f;
	input 	sT;
	output 	ckd;
	
	reg	[21:0]	rc;
	reg 				rckd;
	reg 				rf;
	
	
	assign 	ckd = rckd;
	
always @(posedge ck)
	begin
		rf = f;
	end
	
	always @(negedge ck)
	begin
	
		if (f == 1'b1)
		begin
		
			if (rc == 22'h000000)
			begin
			// rc = 22'h0000D9 - 1;
			
				if (sT)
				begin
				
					rc = 22'h00000A -1;
					
				end
				else
				begin
				
					rc = 22'h000005 -1;
					
				end
				
				rckd = !rckd;
				
			end
			else
			begin
			
				rc = rc - 1;
				
			end
		end
		else
		begin
		
			rc = 22'h000000;
			rckd = 1'b1;
			
		end
		
	end
		
endmodule
