module bypassControl(DXIR, XMIR, MWIR, aSelect, bSelect, memSelect);

input [31:0] DXIR, XMIR, MWIR; 
output[1:0] aSelect, bSelect; 
output memSelect;

wire [4:0] XMRD, XMRS, MWRD, DXRS, DXRT, DXOP, XMOP, MWOP, DXRD; 

assign XMRD = XMIR[26:22];
assign MWRD = MWIR[26:22]; 
assign XMRS = XMIR[21:17]; 

assign XMOP = XMIR[31:27]; 
assign MWOP = MWIR[31:27]; 

assign DXRS = DXIR[21:17];
assign DXRT = DXIR[16:12];
assign DXOP = DXIR[31:27]; 
assign DXRD = DXIR[26:22]; 

wire aSelect2, aSelect1, aSelect0, bSelect2, bSelect1, bSelect0, XMWriteReg, MWWriteReg; 


assign XMWriteReg = (XMOP == 0) || (XMOP == 5) || (XMOP ==8); 
assign MWWriteReg = (MWOP == 0) || (MWOP == 5) || (MWOP ==8); 

assign aSelect1 = (DXRS == XMRD) && XMWriteReg; 
assign aSelect2 = (DXRS == MWRD) && MWWriteReg && !aSelect1; 


assign aSelect[0] = aSelect1; 
assign aSelect[1] = aSelect2; 


assign bSelect1 = ((DXOP == 5'b0) && (DXRT == XMRD) && XMWriteReg) || (((DXOP == 7) || (DXOP ==8)) && (DXRD==XMRD) && XMWriteReg);
assign bSelect2 = (((DXOP == 5'b0) && (DXRT == MWRD) && MWWriteReg) || (((DXOP == 7) || (DXOP ==8)) && (DXRD==MWRD) && MWWriteReg)) && !bSelect1;

assign bSelect[0] = bSelect1; 
assign bSelect[1] = bSelect2; 

assign memSelect = (MWOP == 8) && (XMOP == 7) &&(MWRD == XMRD); 

endmodule