module lsr (es, er, SQN, SQ);

	input 			es;
	input 			er;
	output 			SQN;
	output 			SQ;
	
	assign 			SQN = !(es || SQ);
	assign 			SQ	 = !(er || SQN);
	
endmodule
