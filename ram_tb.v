
module Lab5Memory_tb(e,r);
input e;
output r;

reg [7:0] Addy;
reg [31:0] In;
//reg [3:0] CS;
reg write, clock;
wire [31:0] Out;








toplevel dut0(.Address(Addy), .clk(clock), .Write(write), .In(In), .Dout(Out));

//Lab5Memory (Address,clk, Write, In, Dout,doutsig0, doutsig1,doutsig2, doutsig3);




initial begin
clock =1'd0;
Addy  = 8'b00000000;
In = 32'd0;
write = 0;
//CS = 0;
end

always begin

#5 clock = ~clock;
end


initial begin

Addy = 8'd01000011;
In = 32'd12;
write = 1'd1;
//CS = 0;

#10

Addy = 8'd01000011;
In = 32'd12;
write = 1'd0;
//CS = 0;

#10

Addy = 8'd01000011;
In = 32'd15;
write = 1'd0;
//CS = 0;

#10

Addy = 8'd01000011;
In = 32'd15;
write = 1'd1;
//CS = 0;

#10


Addy = 8'd10000011;
In = 32'd20;
write = 1'd1;
//CS = 1;

#10

Addy = 8'd11000011;
In = 32'd20;
write = 1'd0;
//CS = 1;

#10

Addy = 8'd11000011;
In = 32'd20;
write = 1'd1;
//CS = 1;

#10

Addy = 8'd01000011;
In = 32'd14;
write = 1'd0;
//CS = 0;

#10

Addy = 8'd01000011;
In = 32'd14;
write = 1'd0;
//CS = 0;

#10

Addy = 8'd11000011;
In = 32'd20;
write = 1'd1;
//CS = 1;

#10

$stop;

end


endmodule
