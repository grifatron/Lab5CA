
module tri_state_buffer (in, enable, out);

input [31:0] in;
input enable;
output reg [31:0] out;


always @ (*) begin
case (enable)
1'b0: out = 1'dz;
1'b1: out = in;



endcase
end

endmodule




