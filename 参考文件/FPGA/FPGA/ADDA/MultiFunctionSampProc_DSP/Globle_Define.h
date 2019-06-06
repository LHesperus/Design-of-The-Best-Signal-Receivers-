/*----------------------------------------------------------------------------------
 *上海宇志通信技术有限公司  www.caspl.cn
 *----------------------------------------------------------------------------------
 *多功能信号源全局宏定义
 *----------------------------------------------------------------------------------*/
/*--------------------------------- 数学计算相关宏定义 -----------------------------*/
#define		light_speed						299792458.0			//光速
#define 	pi 								3.1415926535898		//PI	
#define		sizeofdouble					8
#define		sizeofdoublex					4
#define		pow2Func(a)						((a)*(a))
#define		pow3Func(a)						((a)*(a)*(a))
#define		sqrtFunc(a,b)					sqrt(((a)*(a))+((b)*(b)))
#define		sqrt3Func(a,b,c)				sqrt(((a)*(a))+((b)*(b))+((c)*(c)))
#define		squareFunc(a,b)					(((a)*(a))+((b)*(b)))
#define		eps								1e-16

/*------------------------------ 硬件配置相关宏定义---------------------------------*/
#define		EMIF_Clock						50000000.0			//EMIF总线工作主时钟频率定义
#define		Main_Clock						125000000.0			//FPGA 工作主时钟频率定义
#define		CHANNEL_COUNT					12					//单系统最大通道个数
#define		UART_BaudRate					115200				//UART波特率设置
#define		UART_REV_BUF_SIZE				32
#define		UART_REV_FRAME_SIZE				16
#define		INT_Period						0.1					//中断周期
