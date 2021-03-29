module aluControl(DXIR, aluOp, sham, SXmux);
 
input [31:0] DXIR; 
output [4:0] aluOp , sham; 
output SXmux; 

wire [4:0] op1, sham1, opcode; 
wire multOrDiv, cond;




assign opcode = DXIR[31:27];

assign op1 = DXIR[6:2];
assign sham1 = DXIR[11:7]; 
assign multOrDiv = (op1 == 6) || (op1 == 7); 

assign cond = (opcode == 0) && !multOrDiv;

assign aluOp = cond ? op1 : 0; 
assign sham = (opcode ==5'b0 ) ? sham1 :  5'b0;

assign SXmux = (opcode != 5'b0);


endmodule