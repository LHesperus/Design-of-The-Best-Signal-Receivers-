module XCY (
clk,
reset_n,
d_in,
d_out
);
input clk;
input [13:0] d_in;
input reset_n;
output [13:0] d_out;
reg [13:0] d_out;
reg cnt;

always@(posedge clk)
begin
if(!reset_n)
cnt<=1'b0;
else if(cnt==1'b1)
begin
cnt<=1'b0;
d_out<=d_in;
end
else
cnt<=cnt+1;

end 


endmodule 