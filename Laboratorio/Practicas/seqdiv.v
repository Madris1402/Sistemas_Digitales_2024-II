module seqdiv (ck, sQ);

	input 			ck;
	output [9:0] 	sQ;
	
	wire 			wckd;
	wire [16:0] wsq;
	
	divisor dv1(.ck(ck), .ckd(wckd));
	contador sq1 (.clk(wckd), .sQ(wsq));
	
	assign 	sQ = wsq[13:4];
	
endmodule
