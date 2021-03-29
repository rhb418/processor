module MW(ins, O, D, clk, reset, en, outins, outO, outD);

input [31:0] ins, O, D; 
input clk, reset, en; 

output [31:0] outins, outO, outD; 

reg32 IR(ins, outins, clk, en, reset);
reg32 OReg(O, outO, clk, en, reset);
reg32 DReg(D, outD, clk, en, reset);


endmodule