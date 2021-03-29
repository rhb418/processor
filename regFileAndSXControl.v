module regFileAndSXControl(FDIR, DXIR, MWIR, PWIR, multOrDivReady, readA, readB, writeD, wE, SXin);

input [31:0] FDIR, DXIR, MWIR, PWIR; 
input multOrDivReady; 
output [4:0] readA, readB, writeD; 
output [16:0] SXin; 
output wE; 

wire [4:0] MWOP, FDOP, PWOP;
assign MWOP = MWIR[31:27];
assign FDOP = FDIR[31:27];
assign PWOP = PWIR[31:27]; 


assign readA = FDIR[21:17];
assign readB = (FDOP == 7) || (FDOP ==8) ? FDIR[26:22] : FDIR[16:12];
assign SXin = DXIR[16:0];
assign wE = (MWOP == 0)  || ((PWOP == 0) && multOrDivReady) || (MWOP == 5) || (MWOP == 8); 
assign writeD = multOrDivReady ? PWIR[26:22] : MWIR[26:22];

endmodule