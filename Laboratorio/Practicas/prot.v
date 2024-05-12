module prot (ck, cmd, MF, Mtbt, Tx, Rx);

	input 			ck;
	input  [3:0]   cmd;
	output 			MF;
	output 			Mtbt;
	output 			Tx;
	input 			Rx;
	
	reg 	[47:0] 	rbuff = 48'h0;
	reg 	[9:0]		rtx = 10'h001;
	assign 		Tx = rtx[0];
	reg 	[3:0] 	rcnt = 4'h0;
	reg 	[2:0] 	rcByt = 3'h0;
	
	wire 				wckd;
	assign 		Mtbt = wckd;
	wire 				wf;
	
	tbt igtb1( .ck(ck), .sT(1'b0), .f(wf), .ckd(wckd) );
	
	assign 			wf = ( (|rbuff) || (|rtx[9:1]) || (|rcnt) || (|cmd) || (|rcByt) );
	assign 			MF = wf;
	
	wire 				wrbuff = |rbuff;
	
	always @(negedge wckd)
	begin
	
		if (cmd)
		begin
		
			if (!wrbuff)
			begin
			
				if (cmd == 4'h9)
				begin
				
					rbuff = 48'hAA0D00000000;
					rcByt = 3'h6;
				end
				
			end
			
		end
		
	//	if ( (!(|rtx[9:1])) && (|rbuff) )
		if ( (!(|rtx[9:1])) && (|rcByt) )
		begin
		
			rtx = { 1'b1, rbuff[47:40], 1'b0 };
			rcnt = 4'hA;
			rbuff = { rbuff[39:0], 8'h00 };
			rcByt = rcByt - 1;
			
		end
		else
		
			if ( (|rtx[9:1]) || (|rcnt) )
			begin
			
				rcnt = rcnt - 1;
				
				if (|rtx[9:1]) rtx = { 1'b0, rtx[9:1] };
				
			end

	end
	
endmodule
	