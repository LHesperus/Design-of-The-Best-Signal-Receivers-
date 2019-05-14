module  decimation_2 (
						clk,
						rst_n,
						data_in,
						data_out
					  );
input clk;
input rst_n;
input [15:0] data_in;
output reg [15:0] data_out;

reg cnt;

always @(posedge clk)
begin
	if(!rst_n)
		cnt <= 1'b0;
	else
		cnt <= ~cnt;
end

always @(posedge clk)
begin
	if(!rst_n)
		data_out <= 16'd0;
	else
		if(cnt)
			data_out <= data_in;
end

endmodule 