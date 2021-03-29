module XM(ins, O, B, clk, reset, en, outins, outO, outB);

input [31:0] ins, O, B; 
input clk, reset, en; 

output [31:0] outins, outO, outB; 

reg32 IR(ins, outins, clk, en, reset);
reg32 OReg(O, outO, clk, en, reset);
reg32 BReg(B,outB, clk, en, reset);

endmodule