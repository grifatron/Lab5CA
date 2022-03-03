module RAM(In, Address, ChipSelect, Write, clk, Out);
	input [7:0] In;
	input [4:0] Address;
	input ChipSelect, Write, clk;
	output reg [7:0] Out;

	reg [7:0]MemArray[31:0];

	always @(posedge clk) begin
		if (ChipSelect & Write) begin
			MemArray[Address] = In;
		end
		if (ChipSelect) begin
			Out = MemArray[Address];
		end
		else begin
			Out = 8'b0;
		end
	end

endmodule

  