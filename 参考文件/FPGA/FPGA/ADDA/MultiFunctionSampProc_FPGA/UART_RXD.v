`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////////////////////
// �ļ����ԣ�		ģ���ļ�
// �ļ����ܣ�		���ڽ���ģ��
// ��˾: 			�Ϻ���־ͨ�ż������޹�˾
// ����ʦ: 	   		XLX
// ��������:        2009��5��22�� 
// ģ����:    		UART_RXD 
// ��Ŀ��:   		GNSS_Receiver
// Ŀ������: 		EP2C70F672C8
// ���߰汾:  		QII6.0
// ����汾��		V2.0
// �����ע: 
//////////////////////////////////////////////////////////////////////////////////

module UART_RXD
(	
	clock,
	reset,
	BaudRate,
	RXD,
	fifo_rdreq,
	fifo_data8,
	RXD_DATA_VALID_STATUS
);

//////////////////////////////////////////////////////////////////////////////////
//�������IO���Ŷ���//
//////////////////////////////////////////////////////////////////////////////////
input									clock;
input									reset;
input	[12:0]							BaudRate;
input									RXD;
input									fifo_rdreq;
output	[7:0]							fifo_data8;
output									RXD_DATA_VALID_STATUS;
//////////////////////////////////////////////////////////////////////////////////
//�źű�������//
//////////////////////////////////////////////////////////////////////////////////
reg										fifo_wrreq;
wire									fifo_empty;
reg										RXD_DEL1,RXD_DEL2;
reg		[12:0]							cnt_for_divBaudRate;
reg										clken_divBaudRate;
reg		[3:0]							CNT_FOR_RECEIVE;
reg		[7:0]							table_data;

/*********************************************************************************/
/************************************����ο�ʼ***********************************/
/*********************************************************************************/
FIFO8x2048 FIFO8x2048_UART_RXD
(
	.aclr(reset),
	.clock(clock),
	.data(table_data),
	.rdreq(fifo_rdreq),
	.wrreq(fifo_wrreq),
	.empty(fifo_empty),
	.full(),
	.q(fifo_data8)
);

	always @(posedge clock)
begin
	RXD_DEL1 <= RXD;
	RXD_DEL2 <= RXD_DEL1;
	/////////////////////////////////////////////
	if(reset==1'b1)
		begin
			cnt_for_divBaudRate <= 0;
			clken_divBaudRate	<= 1'b0;
		end
	else
		begin
			if((RXD_DEL1==1'b0)&&(RXD_DEL2==1'b1))
				begin
					cnt_for_divBaudRate <= BaudRate/2;
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
end

	always @(posedge clock)
begin
	if(reset==1'b1)
		begin
			CNT_FOR_RECEIVE <= 4'd10;
			table_data		<= 8'd0;
			fifo_wrreq		<= 1'b0;
		end
	else
		begin
			if((RXD_DEL1==1'b0)&&(RXD_DEL2==1'b1)&&(CNT_FOR_RECEIVE==4'd10))
				begin
					CNT_FOR_RECEIVE <= 4'd0;
					table_data		<= 8'd0;
					fifo_wrreq		<= 1'b0;
				end
			else
				begin
					if(clken_divBaudRate==1'b1)
						begin
							if(CNT_FOR_RECEIVE==4'd10)
								begin
									CNT_FOR_RECEIVE <= CNT_FOR_RECEIVE;
									table_data		<= 8'd0;
									fifo_wrreq		<= 1'b0;
								end
							else if(CNT_FOR_RECEIVE==4'd0)
								begin
									CNT_FOR_RECEIVE <= CNT_FOR_RECEIVE + 1;
									table_data		<= 8'd0;
									fifo_wrreq		<= 1'b0;
								end
							else if(CNT_FOR_RECEIVE<4'd9)
								begin
									CNT_FOR_RECEIVE <= CNT_FOR_RECEIVE + 1;
									table_data		<= {RXD_DEL2,table_data[7:1]};
									fifo_wrreq		<= 1'b0;
								end
							else if(CNT_FOR_RECEIVE==4'd9)
								begin
									CNT_FOR_RECEIVE <= CNT_FOR_RECEIVE + 1;
									table_data		<= table_data;
									fifo_wrreq		<= 1'b1;
								end
							else 
								begin
									CNT_FOR_RECEIVE <= CNT_FOR_RECEIVE + 1;
									table_data		<= table_data;
									fifo_wrreq		<= 1'b0;
								end
						end
					else
						begin
							CNT_FOR_RECEIVE <= CNT_FOR_RECEIVE;
							table_data		<= table_data;
							fifo_wrreq		<= 1'b0;
						end
				end
		end
end

assign	RXD_DATA_VALID_STATUS = ~fifo_empty;
/*********************************************************************************/
/************************************����ν���***********************************/
/*********************************************************************************/
endmodule