`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////////////////////
// �ļ����ԣ�		ģ���ļ�
// �ļ����ܣ�		���ڷ���ģ��
// ��˾: 			�Ϻ���־ͨ�ż������޹�˾
// ����ʦ: 	   		XLX
// ��������:        2009��5��22�� 
// ģ����:    		UART_TXD 
// ��Ŀ��:   		GNSS_Receiver
// Ŀ������: 		EP2C70F672C8
// ���߰汾:  		QII6.0
// ����汾��		V2.0
// �����ע: 
//////////////////////////////////////////////////////////////////////////////////
//���ڷ��ͳ���   ������ͨ������ BaudRate �ı䣬���ڹ�����ʱ��Ϊ39MHz
//�������ò�����Ϊ 115200,�� BaudRateӦ��Ϊ 39000000/115200~=339 ���Ϊ %0.14
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
//�������IO���Ŷ���//
//////////////////////////////////////////////////////////////////////////////////
input									clock;
input									reset;
input	[12:0]							BaudRate;
input	[7:0]							fifo_data8;
input									fifo_wrreq;
output									TXD;
//////////////////////////////////////////////////////////////////////////////////
//�źű�������//
//////////////////////////////////////////////////////////////////////////////////
wire									fifo_empty;
wire	[7:0]							fifo_qout;
reg										fifo_rdreq;
reg		[12:0]							cnt_for_divBaudRate;
reg										clken_divBaudRate;
reg		[3:0]							CNT_FOR_UART_SEND;
reg		[7:0]							table_data;
/*********************************************************************************/
/************************************����ο�ʼ***********************************/
/*********************************************************************************/

///////////////////////////////////////////////////////////////////////////////////
//2048�ֽ�FIFOʵ���������ڻ��洮������//
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
//���ڷ���ʱ�����//
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
/************************************����ν���***********************************/
/*********************************************************************************/
endmodule