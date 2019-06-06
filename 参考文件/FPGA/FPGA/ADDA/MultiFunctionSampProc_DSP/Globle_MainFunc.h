/*--------------------------------------------------------------------------------------
 *�Ϻ���־ͨ�ż������޹�˾  www.caspl.cn
 *--------------------------------------------------------------------------------------
 *�๦���ź�Դȫ����ģ�麯������
 *--------------------------------------------------------------------------------------*/

/*-----------------------------------------�ӳٺ�������---------------------------------*/
void delay(Uint32 count)
{
   Uint32 i = count;
   while(i--)
   {
     asm(" NOP 1");
   }
}

/*--------------------------------------�������ݽ��պ���--------------------------------*/
void MFSS_SerioPort_ReseiveData(int CHANNEL_NO)
{
	int 			i,*MFSS_Pointer;
	int 			REG_RXD_DATA_VALID_STATUS;
	int				datacount;
	unsigned char	data[UART_REV_BUF_SIZE];
 
	datacount = 0;
	MFSS_Pointer = (int *)(FPGA_READ_CS + 4*(UART_CHANNEL + CHANNEL_ADDR_FPGA[CHANNEL_NO] + ADDR_RXD_DATA_VALID_STATUS));
   	REG_RXD_DATA_VALID_STATUS = *MFSS_Pointer;
	if(REG_RXD_DATA_VALID_STATUS==1)
	{
		if(UART_DATA_VALID_FLG == 1)
		{
			UART_DATA_VALID_FLG = 0;
			while(REG_RXD_DATA_VALID_STATUS==1)
			{
				MFSS_Pointer = (int *)(FPGA_READ_CS + 4*(UART_CHANNEL + CHANNEL_ADDR_FPGA[CHANNEL_NO] + ADDR_RXBUFF));
				data[datacount] = *MFSS_Pointer;
				datacount++;
				if(datacount == UART_REV_BUF_SIZE)
					datacount = 0;
				MFSS_Pointer = (int *)(FPGA_READ_CS + 4*(UART_CHANNEL + CHANNEL_ADDR_FPGA[CHANNEL_NO] + ADDR_RXD_DATA_VALID_STATUS));
		   		REG_RXD_DATA_VALID_STATUS = *MFSS_Pointer;
			}
			UART_COMMAND_VALID_FLG = 1;
			MFSS_Pointer = (int *)(FPGA_WRITE_CS + 4*(UART_CHANNEL + CHANNEL_ADDR_FPGA[CHANNEL_NO] + ADDR_TXBUFF));
			for(i=0;i<datacount;i++)
			{
				*MFSS_Pointer = data[i];
			}
		}
		else
		{
			UART_DATA_VALID_FLG = 1;
		}
	}
}

