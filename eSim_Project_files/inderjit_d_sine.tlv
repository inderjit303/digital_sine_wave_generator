\TLV_version 1d: tl-x.org
\SV
/* verilator lint_off UNUSED*/  /* verilator lint_off DECLFILENAME*/  /* verilator lint_off BLKSEQ*/  /* verilator lint_off WIDTH*/  /* verilator lint_off SELRANGE*/  /* verilator lint_off PINCONNECTEMPTY*/  /* verilator lint_off DEFPARAM*/  /* verilator lint_off IMPLICIT*/  /* verilator lint_off COMBDLY*/  /* verilator lint_off SYNCASYNCNET*/  /* verilator lint_off UNOPTFLAT */  /* verilator lint_off UNSIGNED*/  /* verilator lint_off CASEINCOMPLETE*/  /* verilator lint_off UNDRIVEN*/  /* verilator lint_off VARHIDDEN*/  /* verilator lint_off CASEX*/  /* verilator lint_off CASEOVERLAP*/  /* verilator lint_off PINMISSING*/ /* verilator lint_off BLKANDNBLK*/  /* verilator lint_off MULTIDRIVEN*/  /* verilator lint_off WIDTHCONCAT*/  /* verilator lint_off ASSIGNDLY*/  /* verilator lint_off MODDUP*/  /* verilator lint_off STMTDLY*/  /* verilator lint_off LITENDIAN*/  /* verilator lint_off INITIALDLY*/
//Your Verilog/System Verilog Code Starts Here:
module inderjit_d_sine(clk, dsine, data_out);
//declare input and output
    input clk;
    input dsine; 
    output [7:0] data_out;
//8 bit Sine lookup table   
    reg [7:0] sine [0:256];
//Internal signals  
    integer i;  
    reg [7:0] data_out; 
 //Initialize the sine values with samples. 

        initial begin
        i = 0;
        sine[0] = 0;
        sine[1] = 2;
        sine[2] = 5;
        sine[3] = 7;
        sine[4] = 10;
        sine[5] = 12;
        sine[6] = 15;
        sine[7] = 17;
        sine[8] = 19;
        sine[9] = 22;
        sine[10] = 24;
        sine[11] = 27;
        sine[12] = 29;
        sine[13] = 31;
        sine[14] = 34;
        sine[15] = 36;
        sine[16] = 39;
         sine[17] = 40;
        sine[18] = 43;
        sine[19] = 45;
        sine[20] = 47;
        sine[21] = 49;
        sine[22] = 51;
        sine[23] = 53;
        sine[24] = 55;
        sine[25] = 57;
        sine[26] = 59;
        sine[27] = 61;
        sine[28] = 63;
        sine[29] = 65;
        sine[30] = 67;
        sine[31] = 69;
        sine[32] = 70;
        sine[33] = 72;
         sine[34] = 74;
        sine[35] = 75;
        sine[36] = 77;
        sine[37] = 79;
        sine[38] = 80;
        sine[39] = 82;
        sine[40] = 83;
        sine[41] = 84;
        sine[42] = 86;
        sine[43] = 87;
        sine[44] = 88;
        sine[45] = 89;
        sine[46] = 90;
        sine[47] = 91;
        sine[48] = 92;
        sine[49] = 93;
        sine[50] = 94;
         sine[51] = 95;
        sine[52] = 96;
        sine[53] = 96;
        sine[54] = 97;
        sine[55] = 97;
        sine[56] = 98;
        sine[57] = 98;
        sine[58] = 99;
        sine[59] = 99;
        sine[60] = 99;
        sine[61] = 99;
        sine[62] = 100;
        sine[63] = 100;
        sine[64] = 100;
        sine[65] = 100;
        sine[66] = 100;
        sine[67] = 99;
         sine[68] = 99;
        sine[69] = 99;
        sine[70] = 99;
        sine[71] = 98;
        sine[72] = 98;
        sine[73] = 97;
        sine[74] = 97;
        sine[75] = 96;
        sine[76] = 96;
        sine[77] = 95;
        sine[78] = 94;
        sine[79] = 93;
        sine[80] = 92;
        sine[81] = 91;
        sine[82] = 90;
        sine[83] = 89;
        sine[84] = 88;
         sine[85] = 87;
        sine[86] = 86;
        sine[87] = 84;
        sine[88] = 83;
        sine[89] = 81;
        sine[90] = 80;
        sine[91] = 78;
        sine[92] = 77;
        sine[93] = 75;
        sine[94] = 74;
        sine[95] = 72;
        sine[96] = 70;
        sine[97] = 68;
        sine[98] = 67;
        sine[99] = 65;
        sine[100] = 63;
        sine[101] = 61;
         sine[102] = 59;
        sine[103] = 57;
        sine[104] = 55;
        sine[105] = 53;
        sine[106] = 51;
        sine[107] = 49;
        sine[108] = 47;
        sine[109] = 45;
        sine[110] = 42;
        sine[111] = 40;
        sine[112] = 38;
        sine[113] = 36;
        sine[114] = 34;
        sine[115] = 31;
        sine[116] = 29;
        sine[117] = 27;
        sine[118] = 24;
         sine[119] = 22;
        sine[120] = 19;
        sine[121] = 17;
        sine[122] = 15;
        sine[123] = 12;
        sine[124] = 10;
        sine[125] = 7;
        sine[126] = 5;
           sine[127] = 2;
           sine[128] = 0;
        sine[129] = -2;
        sine[130] = -5;
        sine[131] = -7;
        sine[132] = -10;
        sine[133] = -12;
        sine[134] = -15;
        sine[135] = -17;
        sine[136] = -19;
        sine[137] = -22;
        sine[138] = -24;
        sine[139] = -27;
        sine[140] = -29;
        sine[141] = -31;
        sine[142] = -34;
        sine[143] = -36;
        sine[144] = -39;
         sine[145] = -40;
        sine[146] = -43;
        sine[147] = -45;
        sine[148] = -47;
        sine[149] = -49;
        sine[150] = -51;
        sine[151] = -53;
        sine[152] = -55;
        sine[153] = -57;
        sine[154] = -59;
        sine[155] = -61;
        sine[156] = -63;
        sine[157] = -65;
        sine[158] = -67;
        sine[159] = -69;
        sine[160] = -70;
        sine[161] = -72;
         sine[162] = -74;
        sine[163] = -75;
        sine[164] = -77;
        sine[165] = -79;
        sine[166] = -80;
        sine[167] = -82;
        sine[168] = -83;
        sine[169] = -84;
        sine[170] = -86;
        sine[171] = -87;
        sine[172] = -88;
        sine[173] = -89;
        sine[174] = -90;
        sine[175] = -91;
        sine[176] = -92;
        sine[177] = -93;
        sine[178] = -94;
         sine[179] = -95;
        sine[180] = -96;
        sine[181] = -96;
        sine[182] = -97;
        sine[183] = -97;
        sine[184] = -98;
        sine[185] = -98;
        sine[186] = -99;
        sine[187] = -99;
        sine[188] = -99;
        sine[189] = -99;
        sine[190] = -100;
        sine[191] = -100;
        sine[192] = -100;
        sine[193] = -100;
        sine[194] = -100;
        sine[195] = -99;
         sine[196] = -99;
        sine[197] = -99;
        sine[198] = -99;
        sine[199] = -98;
        sine[200] = -98;
        sine[201] = -97;
        sine[202] = -97;
        sine[203] = -96;
        sine[204] = -96;
        sine[205] = -95;
        sine[206] = -94;
        sine[207] = -93;
        sine[208] = -92;
        sine[209] = -91;
        sine[210] = -90;
        sine[211] = -89;
        sine[212] = -88;
         sine[213] = -87;
        sine[214] = -86;
        sine[215] = -84;
        sine[216] = -83;
        sine[217] = -81;
        sine[218] = -80;
        sine[219] = -78;
        sine[220] = -77;
        sine[221] = -75;
        sine[222] = -74;
        sine[223] = -72;
        sine[224] = -70;
        sine[225] = -68;
        sine[226] = -67;
        sine[227] = -65;
        sine[228] = -63;
        sine[229] = -61;
         sine[230] = -59;
        sine[231] = -57;
        sine[232] = -55;
        sine[233] = -53;
        sine[234] = -51;
        sine[235] = -49;
        sine[236] = -47;
        sine[237] = -45;
        sine[238] = -42;
        sine[239] = -40;
        sine[240] = -38;
        sine[241] = -36;
        sine[242] = -34;
        sine[243] = 31;
        sine[244] = -29;
        sine[245] = -27;
        sine[246] = -24;
         sine[247] = -22;
        sine[248] = -19;
        sine[249] = -17;
        sine[250] = -15;
        sine[251] = -12;
        sine[252] = -10;
        sine[253] = -7;
        sine[254] = -5;
           sine[255] = -2;
           sine[256] = 0;
        
    end

    
    //At every positive edge of the clock, output a sine wave sample.
    always@ (posedge clk)
    begin
        data_out = sine[i];
        i = i+ 1;
        if(i == 256)
            i = 0;
    end

endmodule




//Top Module Code Starts here:
	module top(input logic clk, input logic reset, input logic [31:0] cyc_cnt, output logic passed, output logic failed);
		logic  dsine;//input
		logic  [7:0] data_out;//output
//The $random() can be replaced if user wants to assign values
		assign dsine = $random();
		inderjit_d_sine inderjit_d_sine(.clk(clk), .dsine(dsine), .data_out(data_out));
	
\TLV
//Add \TLV here if desired                                     
\SV
endmodule

