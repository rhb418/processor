module reg64(in, out, clk, en, reset);
    input [63:0] in; 
    input clk, en, reset; 
    output [63:0] out; 

    dffe dff0(out[0], in[0], clk, en, reset); 
    dffe dff1(out[1], in[1], clk, en, reset); 
    dffe dff2(out[2], in[2], clk, en, reset); 
    dffe dff3(out[3], in[3], clk, en, reset); 
    dffe dff4(out[4], in[4], clk, en, reset); 
    dffe dff5(out[5], in[5], clk, en, reset); 
    dffe dff6(out[6], in[6], clk, en, reset); 
    dffe dff7(out[7], in[7], clk, en, reset); 
    dffe dff8(out[8], in[8], clk, en, reset); 
    dffe dff9(out[9], in[9], clk, en, reset); 
    dffe dff10(out[10], in[10], clk, en, reset); 
    dffe dff11(out[11], in[11], clk, en, reset); 
    dffe dff12(out[12], in[12], clk, en, reset); 
    dffe dff13(out[13], in[13], clk, en, reset); 
    dffe dff14(out[14], in[14], clk, en, reset); 
    dffe dff15(out[15], in[15], clk, en, reset); 
    dffe dff16(out[16], in[16], clk, en, reset); 
    dffe dff17(out[17], in[17], clk, en, reset); 
    dffe dff18(out[18], in[18], clk, en, reset); 
    dffe dff19(out[19], in[19], clk, en, reset); 
    dffe dff20(out[20], in[20], clk, en, reset); 
    dffe dff21(out[21], in[21], clk, en, reset); 
    dffe dff22(out[22], in[22], clk, en, reset); 
    dffe dff23(out[23], in[23], clk, en, reset); 
    dffe dff24(out[24], in[24], clk, en, reset); 
    dffe dff25(out[25], in[25], clk, en, reset); 
    dffe dff26(out[26], in[26], clk, en, reset); 
    dffe dff27(out[27], in[27], clk, en, reset); 
    dffe dff28(out[28], in[28], clk, en, reset); 
    dffe dff29(out[29], in[29], clk, en, reset); 
    dffe dff30(out[30], in[30], clk, en, reset); 
    dffe dff31(out[31], in[31], clk, en, reset); 
    dffe dff32(out[32], in[32], clk, en, reset); 
    dffe dff33(out[33], in[33], clk, en, reset); 
    dffe dff34(out[34], in[34], clk, en, reset); 
    dffe dff35(out[35], in[35], clk, en, reset); 
    dffe dff36(out[36], in[36], clk, en, reset); 
    dffe dff37(out[37], in[37], clk, en, reset); 
    dffe dff38(out[38], in[38], clk, en, reset); 
    dffe dff39(out[39], in[39], clk, en, reset); 
    dffe dff40(out[40], in[40], clk, en, reset); 
    dffe dff41(out[41], in[41], clk, en, reset); 
    dffe dff42(out[42], in[42], clk, en, reset); 
    dffe dff43(out[43], in[43], clk, en, reset); 
    dffe dff44(out[44], in[44], clk, en, reset); 
    dffe dff45(out[45], in[45], clk, en, reset); 
    dffe dff46(out[46], in[46], clk, en, reset); 
    dffe dff47(out[47], in[47], clk, en, reset); 
    dffe dff48(out[48], in[48], clk, en, reset); 
    dffe dff49(out[49], in[49], clk, en, reset); 
    dffe dff50(out[50], in[50], clk, en, reset); 
    dffe dff51(out[51], in[51], clk, en, reset); 
    dffe dff52(out[52], in[52], clk, en, reset); 
    dffe dff53(out[53], in[53], clk, en, reset); 
    dffe dff54(out[54], in[54], clk, en, reset); 
    dffe dff55(out[55], in[55], clk, en, reset); 
    dffe dff56(out[56], in[56], clk, en, reset); 
    dffe dff57(out[57], in[57], clk, en, reset); 
    dffe dff58(out[58], in[58], clk, en, reset); 
    dffe dff59(out[59], in[59], clk, en, reset); 
    dffe dff60(out[60], in[60], clk, en, reset); 
    dffe dff61(out[61], in[61], clk, en, reset); 
    dffe dff62(out[62], in[62], clk, en, reset); 
    dffe dff63(out[63], in[63], clk, en, reset); 
    
endmodule