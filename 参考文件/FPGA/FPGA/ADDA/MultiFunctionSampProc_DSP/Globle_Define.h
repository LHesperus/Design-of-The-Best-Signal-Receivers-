/*----------------------------------------------------------------------------------
 *�Ϻ���־ͨ�ż������޹�˾  www.caspl.cn
 *----------------------------------------------------------------------------------
 *�๦���ź�Դȫ�ֺ궨��
 *----------------------------------------------------------------------------------*/
/*--------------------------------- ��ѧ������غ궨�� -----------------------------*/
#define		light_speed						299792458.0			//����
#define 	pi 								3.1415926535898		//PI	
#define		sizeofdouble					8
#define		sizeofdoublex					4
#define		pow2Func(a)						((a)*(a))
#define		pow3Func(a)						((a)*(a)*(a))
#define		sqrtFunc(a,b)					sqrt(((a)*(a))+((b)*(b)))
#define		sqrt3Func(a,b,c)				sqrt(((a)*(a))+((b)*(b))+((c)*(c)))
#define		squareFunc(a,b)					(((a)*(a))+((b)*(b)))
#define		eps								1e-16

/*------------------------------ Ӳ��������غ궨��---------------------------------*/
#define		EMIF_Clock						50000000.0			//EMIF���߹�����ʱ��Ƶ�ʶ���
#define		Main_Clock						125000000.0			//FPGA ������ʱ��Ƶ�ʶ���
#define		CHANNEL_COUNT					12					//��ϵͳ���ͨ������
#define		UART_BaudRate					115200				//UART����������
#define		UART_REV_BUF_SIZE				32
#define		UART_REV_FRAME_SIZE				16
#define		INT_Period						0.1					//�ж�����
