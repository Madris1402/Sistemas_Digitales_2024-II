module divisor (ck, ckd);

	input 	ck;
	output 	ckd;
	
	reg	[21:0]	rc;
	reg 				rckd;
	
	assign 	ckd = rckd;
	
	always @(negedge ck)
	begin
	
		if (rc == 22'h000000)
		begin
		// rc = 22'h265A0 - 1;
			rc = 22'h000005 -1;
			rckd = !rckd;
		end
		else
		begin
			rc = rc - 1;
		end
	end
endmodule
