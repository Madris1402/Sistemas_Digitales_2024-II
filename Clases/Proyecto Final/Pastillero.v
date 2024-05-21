module Pastillero (x, w, y, z, AB, clk, RST, E);

input x, w, y, z, clk, RST;
output [3:0] AB;
output [10:0] E;
reg [10:0] E;
reg [3:0] state;
reg [25:0] c = 26'b0;
parameter S0 = 4'b0000, S1 = 4'b0001, S2 = 4'b0010, S3 = 4'b0011, S4 = 4'b0100, S5 = 4'b0101, S6 = 4'b0110, S7 = 4'b0111, S8 = 4'b1000, S9 = 4'b1001, S10 = 4'b1010;


always @ (posedge clk)
	begin
		if (c == (50 - 1)) 
			begin
					c <= 0;
					if (~RST) state = S0;
					else 
						case (state)
							S0: 
								begin
									state = S1;
									E = 11'b00000000001;
								end
							S1: 
								if (w)
									begin
										state = S2;
										E = 11'b00000000010;
									end	
								else 
									begin
										state = S0;
										E = 11'b00000000010;
									end
							S2:
								begin
									state = S3;
									E = 11'b00000000100;
								end
							S3:
								begin
									state = S4;
									E = 11'b00000001000;
								end
							S4: 
								begin
									state = S5;
									E = 11'b00000010000;
								end
							S5: 
								begin
									state = S6;
									E = 11'b00000100000;
								end
							S6: 
								begin
									state = S7;
									E = 11'b00001000000;
								end
							S7: 
								begin
									state = S8;
									E = 11'b00010000000;
								end
							S8: 
								if (x)
									begin
										state = S9;
										E = 11'b00100000000;
									end	
								else 
									begin
										state = S7;
										E = 11'b00100000000;
									end
							S9: 
								if (y)
									begin
										state = S10;
										E = 11'b01000000000;
									end	
								else 
									begin
										state = S5;
										E = 11'b01000000000;
									end
							S10: 
								if (z)
									begin
										state = S0;
										E = 11'b10000000000;
									end	
								else 
									begin
										state = S2;
										E = 11'b10000000000;
									end
						endcase
			end
		else 
			begin
				c <= c + 1;
			end
	end
	assign AB = state;
endmodule 