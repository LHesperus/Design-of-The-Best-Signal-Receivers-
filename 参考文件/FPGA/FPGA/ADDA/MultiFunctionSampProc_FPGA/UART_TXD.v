`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////////////////////
// 文件属性：		模块文件
// 文件功能：		串口发送模块
// 公司: 			上海宇志通信技术有限公司
// 工程师: 	   		XLX
// 创建日期:        2009年5月22日 
// 模块名:    		UART_TXD 
// 项目名:   		GNSS_Receiver
// 目标器件: 		EP2C70F672C8
// 工具版本:  		QII6.0
// 软件版本：		V2.0
// 额外标注: 
//////////////////////////////////////////////////////////////////////////////////
//串口发送程序   波特率通过设置 BaudRate 改变，串口工作主时钟为39MHz
//举例设置波特率为 115200,则 BaudRate应设为 39000000/115200~=339 误差为 %0.14
//////////////////////////////////////////////////////////////////////////////////

module UART_TXD
(	clock,
	reset,
	BaudRate,
    fifo_data8,
	fifo_wrreq,
	TXD
);
//////////////////////////////////////////////////////////////////////////////////
//输入输出IO引脚定义//
//////////////////////////////////////////////////////////////////////////////////
input									clock;
input									reset;
input	[12:0]							BaudRate;
input	[7:0]							fifo_data8;
input									fifo_wrreq;
output									TXD;
//////////////////////////////////////////////////////////////////////////////////
//信号变量定义//
//////////////////////////////////////////////////////////////////////////////////
wire									fifo_empty;
wire	[7:0]							fifo_qout;
reg										fifo_rdreq;
reg		[12:0]							cnt_for_divBaudRate;
reg										clken_divBaudRate;
reg		[3:0]							CNT_FOR_UART_SEND;
reg		[7:0]							table_data;
/*********************************************************************************/
/************************************程序段开始***********************************/
/*********************************************************************************/

///////////////////////////////////////////////////////////////////////////////////
//2048字节FIFO实例化，用于缓存串口数据//
///////////////////////////////////////////////////////////////////////////////////
FIFO8x2048 FIFO8x2048_UART_TXD
(
	.clock(clock),
	.data(fifo_data8),
	.rdreq(fifo_rdreq),
	.wrreq(fifo_wrreq),
	.empty(fifo_empty),
	.full(),
	.q(fifo_qout)
);
///////////////////////////////////////////////////////////////////////////////////
//串口发送时序控制//
///////////////////////////////////////////////////////////////////////////////////
	always @(posedge clock)
begin
	if(reset==1'b1)
		begin
			cnt_for_divBaudRate <= 0;
			clken_divBaudRate	<= 1'b0;
		end
	else
		begin
			if(cnt_for_divBaudRate==BaudRate)
				begin
					cnt_for_divBaudRate <= 0;
					clken_divBaudRate	<= 1'b1;
				end
			else
				begin
					cnt_for_divBaudRate <= cnt_for_divBaudRate + 1;
					clken_divBaudRate	<= 1'b0;
				end
		end
end

	always @(posedge clock)
begin
	if(reset==1'b1)
		begin
			CNT_FOR_UART_SEND	<= 4'd15;
			table_data			<= 8'hff;
			fifo_rdreq			<= 1'b0;
		end
	else
		begin
			if(clken_divBaudRate==1'b1)
				begin
					if(CNT_FOR_UART_SEND==4'd15)
						begin
							if(fifo_empty==0)
								begin
									CNT_FOR_UART_SEND	<= 4'd0;
									table_data			<= 8'h00;
									fifo_rdreq			<= 1'b1;
								end
							else
								begin
									CNT_FOR_UART_SEND	<= CNT_FOR_UART_SEND;
									table_data			<= 8'hff;
									fifo_rdreq			<= 1'b0;
								end
						end
					else if(CNT_FOR_UART_SEND==4'd0)
						begin
							CNT_FOR_UART_SEND	<= CNT_FOR_UART_SEND + 1;
							table_data			<= fifo_qout;
							fifo_rdreq			<= 1'b0;
						end
					else if(CNT_FOR_UART_SEND<9)
						begin
							CNT_FOR_UART_SEND	<= CNT_FOR_UART_SEND + 1;
							table_data			<= {1'b1,table_data[7:1]};
							fifo_rdreq			<= 1'b0;
						end
					else
						begin
							CNT_FOR_UART_SEND	<= CNT_FOR_UART_SEND + 1;
							table_data			<= table_data;
							fifo_rdreq			<= 1'b0;
						end
				end
			else
				begin
					CNT_FOR_UART_SEND	<= CNT_FOR_UART_SEND;
					table_data			<= table_data;
					fifo_rdreq			<= 1'b0;
				end
		end
end

assign	TXD = table_data[0];
/*********************************************************************************/
/************************************程序段结束***********************************/
/*********************************************************************************/
endmodule