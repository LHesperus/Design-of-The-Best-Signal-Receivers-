/*------------------------------------------------------------------------------
 *�Ϻ���־ͨ�ż������޹�˾  www.caspl.cn
 *------------------------------------------------------------------------------
 *�๦���ź�Դȫ�ֳ�ʼ����������
 *------------------------------------------------------------------------------*/

extern far void vectors();
/*------------------------------���໷PLL��ʼ��---------------------------------*/
void MFSS_PLL_Init()
{
	*(int *)PLLCSR = 0x00000000;   				// step 1, PLLEN=0, bypass mode
	delay(100);                					// step 2, wait 4 cycles
	*(int *)PLLCSR = 0x00000008;   				// step 3, PLLRST=1, Reset PLL
	*(int *)PLLDIV0= 0x00008000;   				// step 4, Program PLLDIV0 (div=1),
	*(int *)PLLM   = 0x00000008;   				//         PLLM (mul=8),
	*(int *)OSCDIV1= 0x00008009;   				//         OSCDIV1 (div=10)
	*(int *)PLLDIV2= 0x00008001;   				// step 5, Program PLLDIV2 (div=2), set CLKOUT2 =CLKIN*PLLM/2
	*(int *)PLLDIV1= 0x00008000;   				//         Program PLLDIV1 (div=1), set SCLK	=CLKIN*PLLM
	*(int *)PLLDIV3= 0x00008003;   				//         Program PLLDIV3 (div=4),set ECLKOUT	=CLK*PLLM/4
	delay(100);                 				// step 6, waite for PLL to properly reset
	*(int *)PLLCSR = 0x00000000;   				// step 7, PLLRST=0, Bring PLL out of reset
	delay(10000);               				// setp 8, waite PLL to lock
	*(int *)PLLCSR = 0x00000001;   				// step 9, PLLEN=1, Enable PLL mode
}

/*-----------------------------EMIF���߿ռ��ʼ��-------------------------------*/
void MFSS_EMIF_Init()
{
    *(int *)EMIF_GCTL		= 0x00003060;		// EMIF global control register
  	*(int *)EMIF_CE1		= 0xFFFFFF23; 		// CE1 - 32-bit asynch access
  	*(int *)EMIF_CE0		= 0xFFFFFF30; 		// CE0 - SDRAM
  	*(int *)EMIF_CE2		= 0x3233C823;		// CE2 - FPGA 32-bit asynch access
  	*(int *)EMIF_CE3		= 0xFFFFFF23; 		// CE3 - 32-bit asynch on
  	*(int *)EMIF_SDRAMCTL	= 0x57117000;		// SDRAM control register (100 MHz)
  	*(int *)EMIF_SDRAMTIMING= 0x0000061a; 		// SDRAM Timing register
}

/*-------------------------------UART���ó�ʼ��---------------------------------*/
void MFSS_UART_Init()
{
	int *MFSS_Pointer;
	MFSS_Pointer = (int *)(FPGA_WRITE_CS+4*(UART_CHANNEL+CHANNEL_1+ADDR_BaudRate_Config));
	*MFSS_Pointer = (int)(EMIF_Clock/UART_BaudRate);
	MFSS_Pointer = (int *)(FPGA_WRITE_CS+4*(UART_CHANNEL+CHANNEL_2+ADDR_BaudRate_Config));
	*MFSS_Pointer = (int)(EMIF_Clock/UART_BaudRate);
}

/*-----------------------------ϵͳӲ�����ó�ʼ��-------------------------------*/
void MFSS_HardWare_Init()
{
	int *MFSS_Pointer;

	//ʱ��������ʼ������
	MFSS_Pointer = (int *)(FPGA_WRITE_CS+4*(SYSTEM_LEVEL+CHANNEL_SYS+ADDR_PROG_INT)); 
	*MFSS_Pointer = (int)(EMIF_Clock*INT_Period-1);	//�����ж�����
}
/*-------------------------------�ж����ó�ʼ��---------------------------------*/
void MFSS_IRQ_Init()
{
	int *MFSS_Pointer;

	IRQ_setVecs(vectors);                  		// point to the IRQ vector table
	IRQ_nmiEnable();                       		// Enable NMI interrupt
	IRQ_map(IRQ_EVT_EXTINT4,ExternalInt4Number);
	IRQ_reset(IRQ_EVT_EXTINT4);
	IRQ_enable(IRQ_EVT_EXTINT4);
	IRQ_globalEnable();                    		// enable global interrupt request
	MFSS_Pointer = (int*)(FPGA_WRITE_CS + 4*(SYSTEM_LEVEL + CHANNEL_SYS +ADDR_INT_STATUS_CLEAR));
	*MFSS_Pointer = 0;
}

/*-----------------------------ȫ�ֱ�����ʼ������--------------------------------*/
void MFSS_GlobalVar_Init()
{
}

/*----------------------------��ʼ��FPGA�ز�NCO����------------------------------*/
void MFSS_FPGA_CarrNCO_Init()
{

}

/*----------------------------��ʼ��ȫ�ֱ����ܺ���-------------------------------*/
void MFSS_Init_Globle()
{
	//��ʼ�����໷����
	MFSS_PLL_Init();
	//��ʼ��EMIF���߿ռ�
	MFSS_EMIF_Init();
	//��ʼ��ϵͳӲ������
	MFSS_HardWare_Init();
	//UART���ó�ʼ��
	MFSS_UART_Init();
	//ȫ�ֱ�����ʼ��
	MFSS_GlobalVar_Init();
	//��ʼ���ж�����
	MFSS_IRQ_Init();
	//FPGA�ز�NCO��ʼ��
	MFSS_FPGA_CarrNCO_Init();
}

