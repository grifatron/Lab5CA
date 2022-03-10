
module ram_tb(i, o);

input i;
output o;

reg [7:0] din;
reg [5:0] adr;
reg chp, wrt, clk;
wire [7:0] out;


Lab5RAM dut0(.In(din), .Address(adr), .ChipSelect(chp), .Write(wrt), .clk(clk), .Out(out));

initial begin
din = 8'd0;
adr = 6'd0;
chp = 0;
wrt = 0;
clk = 0;
end 



always begin

#5 clk = ~clk;
end

initial begin
din = 8'd1;
adr = 6'd1;
chp = 1;
wrt = 1;
#10

din = 8'd2;
adr = 6'd2;
chp = 1;
wrt = 1;
#10

din = 8'd3;
adr = 6'd3;
chp = 1;
wrt = 1;
#10

din = 8'd4;
adr = 6'd4;
chp = 1;
wrt = 0;
#10

din = 8'd4;
adr = 6'd4;
chp = 0;
wrt = 1;
#10

$stop;
end
endmodule


