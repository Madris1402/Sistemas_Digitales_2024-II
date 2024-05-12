module rx 	(ck, rx, MF, Mckd, Mrc, dat, stb);

	input 			ck;
	input 			rx;
	output 			MF;
	output  			Mckd;
	output [9:0]	Mrc;
	output [7:0] 	dat;
	output 			stb;
	
	wire 				wf;
	assign 			MF = wf;
	wire 				wckd;
	assign 			Mckd = wckd;
	
	lsr il1(.es(!rx), .er( rx && (!rc[0]) ), .SQN(), .SQ(wf));
	tbt id1(.ck(ck), .sT(1'b0), .f(wf), .ckd(wckd));
	
	reg	[9:0] 	rc = 10'h000;
	assign 			Mrc = rc;
	
	always @(posedge wckd)
	begin
		
		if (rc[0] == 1'b0)
		begin
			rc = { rx, 9'h1ff };
		end
		else
		begin
			rc = { rx, rc[9:1] };
		end
		
	end 

	reg	[19:0] 	rstb;
	assign 			stb = |rstb[3:1];
	
	always @(posedge ck)
	begin
		if (wf)
		begin
			rstb = 20'h00001;
		end
		else
		begin
			rstb = { rstb[18:0], 1'b0 };
		end
	end
	
	reg 	[7:0] 	rdat;
	assign 			dat = rdat;
	
	always @(posedge stb)
	begin
		rdat = rc[8:1];
	end
endmodule
