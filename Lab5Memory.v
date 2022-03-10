module Lab5Memory(Address,clk, Write, In, Dout);

input [7:0] Address;
input clk;
input Write;
input [31:0] In;

output [31:0] Dout;

wire [3:0] cs;
wire [31:0] doutsig0;
wire [31:0] doutsig1;
wire [31:0] doutsig2;
wire [31:0] doutsig3;

Lab5Decoder Dec(Address[7:6], cs);

Lab5RAM Ram0(In[7:0], Address[5:0], cs[0], Write, clk, doutsig0[7:0]);
Lab5RAM Ram1(In[15:8], Address[5:0], cs[0], Write, clk, doutsig0[15:8]);
Lab5RAM Ram2(In[23:16], Address[5:0], cs[0], Write, clk, doutsig0[23:16]);
Lab5RAM Ram3(In[31:24], Address[5:0], cs[0], Write, clk, doutsig0[31:24]);

Lab5RAM Ram4(In[7:0], Address[5:0], cs[1], Write, clk, doutsig1[7:0]);
Lab5RAM Ram5(In[15:8], Address[5:0], cs[1], Write, clk, doutsig1[15:8]);
Lab5RAM Ram6(In[23:16], Address[5:0], cs[1], Write, clk, doutsig1[23:16]);
Lab5RAM Ram7(In[31:24], Address[5:0], cs[1], Write, clk, doutsig1[31:24]);

Lab5RAM Ram8(In[7:0], Address[5:0], cs[2], Write, clk, doutsig2[7:0]);
Lab5RAM Ram9(In[15:8], Address[5:0], cs[2], Write, clk, doutsig2[15:8]);
Lab5RAM Ram10(In[23:16], Address[5:0], cs[2], Write, clk, doutsig2[23:16]);
Lab5RAM Ram11(In[31:24], Address[5:0], cs[2], Write, clk, doutsig2[31:24]);

Lab5RAM Ram12(In[7:0], Address[5:0], cs[3], Write, clk, doutsig3[7:0]);
Lab5RAM Ram13(In[15:8], Address[5:0], cs[3], Write, clk, doutsig3[15:8]);
Lab5RAM Ram14(In[23:16], Address[5:0], cs[3], Write, clk, doutsig3[23:16]);
Lab5RAM Ram15(In[31:24], Address[5:0], cs[3], Write, clk, doutsig3[31:24]);

Lab5TriState buff0(doutsig0[31:0], cs[0], Dout);
Lab5TriState buff1(doutsig1[31:0], cs[1], Dout);
Lab5TriState buff2(doutsig2[31:0], cs[2], Dout);
Lab5TriState buff3(doutsig3[31:0], cs[3], Dout);

//assign Dout = {doutsig0, doutsig1, doutsig2, doutsig3};

endmodule

