module tbt (ck, f, ckd);
// Tasa de Baulios Transmisión

	input 	ck;
	input 	f;
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
				rc = 22'h000005 -1;
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
