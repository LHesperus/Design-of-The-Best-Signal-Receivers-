module XCY1 (
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
reg [1:0] cnt;

always@(posedge clk)
begin
if(!reset_n)
cnt<=2'b00;
else if(cnt==2'b11)
begin
cnt<=2'b00;
d_out<=d_in;
end
else
cnt<=cnt+1;

end 


endmodule 