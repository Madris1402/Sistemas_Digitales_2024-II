module compuerta_and (e1, e2, s1);
	
	input 	e1;
	input 	e2;
	output 	s1;
	
	assign s1 = ((!e1) && (!e2));
	
endmodule 