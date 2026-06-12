#include <stdio.h> //c头文件
#include <malloc.h> //malloc头文件
#include <jni.h> //jni头文件
#include <pthread.h> //线程头文件
#include <dirent.h> //文件夹头文件
#include <math.h> //三角函数头文件
#include <sys/socket.h> //打开文件头文件
#include <stdbool.h> //布玛尔头文件
//#include <string>
#define PI 3.141592 //宏定义PI
#define azm 57.3595112167
#define poshead 0xAC
#define motionhead 0xE4
#define hithead 0xC4
struct setoffset
{
	unsigned long posx;
	unsigned long posy;
	unsigned long posz;
	unsigned long motionx;
	unsigned long motiony;
	unsigned long motionz;
	unsigned long hitx;
	unsigned long hity;
	unsigned long fly; //飞行
	unsigned long cq; //穿墙
	unsigned long air; //踏空
	unsigned long hited; //受击
	unsigned long viewx; //视角x
	unsigned long viewy; //视角y
	unsigned long viewx2; //视角x2
	unsigned long attack; //攻击
	unsigned long pq; //爬墙
	unsigned long cs; //创造
};
//创建一个存储偏移的结构体
struct setoffset Offset={poshead,poshead+0x4,poshead+0x8,motionhead,motionhead+0x4,motionhead+0x8,hithead,hithead+0x4,0x944,0x9A4,0x264,0x530,0x300,0x304,0x520,0x604,0x1F8,0x2400};

struct setoffset *offset =&Offset;

char cou[256]="还为获取完"; //数量

int playerNumber;

int countmax;

int playergetthis;

int pid = -1;					// 进程ID

int handle;						// 进程句柄

unsigned long base;				// 模块地址

unsigned long so;//模块地址

unsigned long localplayerAddr;	// 本体地址

unsigned long lockplayerAddr;	// 敌人地址

unsigned long playerkillauraAddr;	// 激流地址

unsigned long playerkeyAddr;	// 视角地址

unsigned long playercpsAddr; //cps地址

unsigned long playerzmAddr; //准星地址

unsigned long localplayerAddrarray[20]; //本体玩家地址数组

struct MAPS
{
	long int startAddr;
	long int endAddr;
	struct MAPS *next; //方便套娃
};
//存储地址的结构体

typedef struct MAPS *PMAPS;    //创建一个结构体类型
typedef int COUNT;
typedef long int OFFSET;


int ResCount=0;//结果数量

#define LEN sizeof(struct MAPS) //宏定义len
PMAPS Res=NULL;//Penggemar global (tempat data disimpan)


int getPID()
{
	int id = -1;
	DIR *dir = 0;
	FILE *file = 0;
	char filename[32] = { 0 };	// 路径
	char cmdline[256] = { 0 };	// 内容
	struct dirent *entry = 0;	// 链表
	dir = opendir("/proc");		// 打开
	if (dir == NULL)
	{
		return -1;
	}							// 防止空指针
	while ((entry = readdir(dir)) != NULL)
	{
		id = atoi(entry->d_name);
		if (id > 0)
		{
			sprintf(filename, "/proc/%d/cmdline", id);
			file = fopen(filename, "r");
			if (file)
			{
				fgets(cmdline, sizeof(cmdline), file);
				fclose(file);
				if (strcmp("com.netease.x19", cmdline) == 0)
				{
					pid = id;
					break;
				}
			}
		}
	}
	closedir(dir);
	return pid;
}

// 获取模块bss
long long int getBssModuleBase()
{
	FILE *fp;
	int cnt = 0;				// 获取成功判断
	long start;					// 地址
	char tmp[256];				// 获取每一行的内容
	fp = NULL;
	char line[1024];
	char fname[128];
	sprintf(fname, "/proc/%d/maps", pid);
	fp = fopen(fname, "r");		// 打开
	while (!feof(fp))
	{
		fgets(tmp, 256, fp);
		if (cnt == 1)
		{
			if (strstr(tmp, "[anon:.bss]") != NULL)
			{
				sscanf(tmp, "%lx-%*lx", &start);
				break;
			}
			else
			{
				cnt = 0;
			}
		}
		if (strstr(tmp, "libminecraftpe.so") != NULL)
		{
			cnt = 1;
		}
	}
	base = start;
	return base;
}

//获取模块so
long long int getBssModuleSo() {
    FILE *fp;
    long start;//地址
    char tmp[256];//获取每一行的内容
    fp = NULL;
    char line[1024];
    char fname[128];
    sprintf(fname, "/proc/%d/maps", pid);
    fp = fopen(fname, "r");//打开
    while (!feof(fp)){
        fgets(tmp, 256, fp);
            if (strstr(tmp, "libminecraftpe.so") != NULL){
                sscanf(tmp, "%lx-%*lx", &start);
                break;
            }
            }
    so = start;
    return so;
}

// 初始化
void injectModule()
{
	FILE *fp;
	char lj[64];
	sprintf(lj, "/proc/%d/mem", getPID());
	handle = open(lj, O_RDWR);
	lseek(handle, 0, SEEK_SET);
	getBssModuleBase();
	getBssModuleSo();
	while (true)
	{
		if (base < 0L)
		{
			getBssModuleBase();
			getBssModuleSo();
		}
		if (base == 0L)
		{
			getBssModuleBase();
			getBssModuleSo();
		}
		if (base > 0L)
		{
			break;
		}
	}
}

//写入D类型
int WriteAddress_DWORD(long int addr,int value) {
	pwrite64(handle, &value, 4, addr);
	return 0;
}
//写入F类型
float WriteAddress_FLOAT(long int addr, float value) {
	pwrite64(handle, &value, 4, addr);
	return 0;
}
//写入B类型
int8_t WriteAddress_BYTE(long int addr, int value)
{
	pwrite64(handle, &value, 1, addr);
	return 0;
}
//得到F类型
float getFloat(long int addr)
{
	float var = 0;
	pread64(handle, &var, 4, addr);
	return var;
}
//得到D类型
int getDword(long int addr)
{
	int var = 0;
	pread64(handle, &var, 4, addr);
	return var;
}
//得到B类型
int8_t getByte(long int addr)
{
	int var = 0;
	pread64(handle, &var, 4, addr);
	return var;
}
//64位跳指针
long int lsp64(long int addr)
{
	long int var = 0;
	pread64(handle, &var, 8, addr);
	return var;
}
void getlocalplayerAddr()
{
	long long int nowgetaddr;
	pread64(handle, &nowgetaddr, 8, (unsigned long)(base + 0x3A2060));
	pread64(handle, &nowgetaddr, 8, (unsigned long)(nowgetaddr + 0xCA8));
	pread64(handle, &nowgetaddr, 8, (unsigned long)(nowgetaddr + 0x3F8));
	pread64(handle, &nowgetaddr, 8, (unsigned long)(nowgetaddr + 0x38));
	localplayerAddr = (unsigned long)(nowgetaddr + 0x42C);
	if(getDword(localplayerAddr)!=7497081)
	{
	pread64(handle, &nowgetaddr, 8, (unsigned long)(base + 0x3A2060));
	pread64(handle, &nowgetaddr, 8, (unsigned long)(nowgetaddr + 0x9A0));
	pread64(handle, &nowgetaddr, 8, (unsigned long)(nowgetaddr + 0x1368));
	pread64(handle, &nowgetaddr, 8, (unsigned long)(nowgetaddr + 0x38));
	localplayerAddr = (unsigned long)(nowgetaddr + 0x42C);
	if(getDword(localplayerAddr)!=7497081)
	{
	pread64(handle, &nowgetaddr, 8, (unsigned long)(base + 0x3A2060));
	pread64(handle, &nowgetaddr, 8, (unsigned long)(nowgetaddr + 0x10B0));
	pread64(handle, &nowgetaddr, 8, (unsigned long)(nowgetaddr + 0x38));
	pread64(handle, &nowgetaddr, 8, (unsigned long)(nowgetaddr + 0x1C88));
	localplayerAddr = (unsigned long)(nowgetaddr + 0x42C);
	if(getDword(localplayerAddr)!=7497081)
	{
	pread64(handle, &nowgetaddr, 8, (unsigned long)(base + 0x3A2060));
	pread64(handle, &nowgetaddr, 8, (unsigned long)(nowgetaddr + 0x58));
	pread64(handle, &nowgetaddr, 8, (unsigned long)(nowgetaddr + 0x478));
	pread64(handle, &nowgetaddr, 8, (unsigned long)(nowgetaddr + 0x650));
	localplayerAddr = (unsigned long)(nowgetaddr + 0x42C);
	if(getDword(localplayerAddr)!=7497081)
	{
	pread64(handle, &nowgetaddr, 8, (unsigned long)(base + 0x3A2060));
	pread64(handle, &nowgetaddr, 8, (unsigned long)(nowgetaddr + 0x9A0));
	pread64(handle, &nowgetaddr, 8, (unsigned long)(nowgetaddr + 0x1368));
	pread64(handle, &nowgetaddr, 8, (unsigned long)(nowgetaddr + 0x38));
	localplayerAddr = (unsigned long)(nowgetaddr + 0x42C);
	if(getDword(localplayerAddr)!=7497081)
	{
	pread64(handle, &nowgetaddr, 8, (unsigned long)(base + 0x3A2060));
	pread64(handle, &nowgetaddr, 8, (unsigned long)(nowgetaddr + 0x17C8));
	pread64(handle, &nowgetaddr, 8, (unsigned long)(nowgetaddr + 0x478));
	pread64(handle, &nowgetaddr, 8, (unsigned long)(nowgetaddr + 0x650));
	localplayerAddr = (unsigned long)(nowgetaddr + 0x42C);
	if(getDword(localplayerAddr)!=7497081)
	{
	pread64(handle, &nowgetaddr, 8, (unsigned long)(base + 0x3A2060));
	pread64(handle, &nowgetaddr, 8, (unsigned long)(nowgetaddr + 0xCC0));
	pread64(handle, &nowgetaddr, 8, (unsigned long)(nowgetaddr + 0x3E0));
	pread64(handle, &nowgetaddr, 8, (unsigned long)(nowgetaddr + 0x38));
	localplayerAddr = (unsigned long)(nowgetaddr + 0x42C);
	if(getDword(localplayerAddr)!=7497081)
    {
	pread64(handle, &nowgetaddr, 8, (unsigned long)(base + 0xB2B10));
	pread64(handle, &nowgetaddr, 8, (unsigned long)(nowgetaddr + 0x6C8));
	localplayerAddr = (unsigned long)(nowgetaddr + 0x42C);
	if(getDword(localplayerAddr)!=7497081)
    {
	pread64(handle, &nowgetaddr, 8, (unsigned long)(base + 0xB2B10));
	pread64(handle, &nowgetaddr, 8, (unsigned long)(nowgetaddr + 0x6D0));
	localplayerAddr = (unsigned long)(nowgetaddr + 0x42C);
	if(getDword(localplayerAddr)!=7497081)
    {
	pread64(handle, &nowgetaddr, 8, (unsigned long)(base + 0xB2B10));
	pread64(handle, &nowgetaddr, 8, (unsigned long)(nowgetaddr + 0x6F0));
	localplayerAddr = (unsigned long)(nowgetaddr + 0x42C);
	if(getDword(localplayerAddr)!=7497081)
    {
	pread64(handle, &nowgetaddr, 8, (unsigned long)(base + 0xB2B10));
	pread64(handle, &nowgetaddr, 8, (unsigned long)(nowgetaddr + 0x30));
	pread64(handle, &nowgetaddr, 8, (unsigned long)(nowgetaddr + 0x6C8));
	localplayerAddr = (unsigned long)(nowgetaddr + 0x42C);
	if(getDword(localplayerAddr)!=7497081)
    {
	pread64(handle, &nowgetaddr, 8, (unsigned long)(base + 0xB2B10));
	pread64(handle, &nowgetaddr, 8, (unsigned long)(nowgetaddr + 0x38));
	pread64(handle, &nowgetaddr, 8, (unsigned long)(nowgetaddr + 0x6C8));
	localplayerAddr = (unsigned long)(nowgetaddr + 0x42C);
	if(getDword(localplayerAddr)!=7497081)
    {
	pread64(handle, &nowgetaddr, 8, (unsigned long)(base + 0xB2B10));
	pread64(handle, &nowgetaddr, 8, (unsigned long)(nowgetaddr + 0x40));
	pread64(handle, &nowgetaddr, 8, (unsigned long)(nowgetaddr + 0x6D0));
	localplayerAddr = (unsigned long)(nowgetaddr + 0x42C);
	if(getDword(localplayerAddr)!=7497081)
    { 
	pread64(handle, &nowgetaddr, 8, (unsigned long)(base + 0x23E110));
	pread64(handle, &nowgetaddr, 8, (unsigned long)(nowgetaddr + 0x18));
	pread64(handle, &nowgetaddr, 8, (unsigned long)(nowgetaddr + 0x78));
	pread64(handle, &nowgetaddr, 8, (unsigned long)(nowgetaddr + 0x2768));
	localplayerAddr = (unsigned long)(nowgetaddr + 0x42C);
	if(getDword(localplayerAddr)!=7497081)
	{ 
	pread64(handle, &nowgetaddr, 8, (unsigned long)(base + 0x23E110));
	pread64(handle, &nowgetaddr, 8, (unsigned long)(nowgetaddr + 0x18));
	pread64(handle, &nowgetaddr, 8, (unsigned long)(nowgetaddr + 0xA8));
	pread64(handle, &nowgetaddr, 8, (unsigned long)(nowgetaddr + 0x2E48));
	localplayerAddr = (unsigned long)(nowgetaddr + 0x42C);
	if(getDword(localplayerAddr)!=7497081)
	{ 
	pread64(handle, &nowgetaddr, 8, (unsigned long)(base + 0x23E110));
	pread64(handle, &nowgetaddr, 8, (unsigned long)(nowgetaddr + 0x20));
	pread64(handle, &nowgetaddr, 8, (unsigned long)(nowgetaddr + 0x98));
	pread64(handle, &nowgetaddr, 8, (unsigned long)(nowgetaddr + 0x2768));
	localplayerAddr = (unsigned long)(nowgetaddr + 0x42C);
	if(getDword(localplayerAddr)!=7497081)
	{ 
	pread64(handle, &nowgetaddr, 8, (unsigned long)(base + 0x23E110));
	pread64(handle, &nowgetaddr, 8, (unsigned long)(nowgetaddr + 0x20));
	pread64(handle, &nowgetaddr, 8, (unsigned long)(nowgetaddr + 0xC8));
	pread64(handle, &nowgetaddr, 8, (unsigned long)(nowgetaddr + 0x2E48));
	localplayerAddr = (unsigned long)(nowgetaddr + 0x42C);
	if(getDword(localplayerAddr)!=7497081)
    {   
	pread64(handle, &nowgetaddr, 8, (unsigned long)(base + 0x23E110));
	pread64(handle, &nowgetaddr, 8, (unsigned long)(nowgetaddr + 0x20));
	pread64(handle, &nowgetaddr, 8, (unsigned long)(nowgetaddr + 0xC8));
	pread64(handle, &nowgetaddr, 8, (unsigned long)(nowgetaddr + 0x2E48));
	localplayerAddr = (unsigned long)(nowgetaddr + 0x42C);
	if(getDword(localplayerAddr)!=7497081)
	{ 
	pread64(handle, &nowgetaddr, 8, (unsigned long)(base + 0x3A2060));
	pread64(handle, &nowgetaddr, 8, (unsigned long)(nowgetaddr + 0x990));
	pread64(handle, &nowgetaddr, 8, (unsigned long)(nowgetaddr + 0x168));
	pread64(handle, &nowgetaddr, 8, (unsigned long)(nowgetaddr + 0x5B0));
	localplayerAddr = (unsigned long)(nowgetaddr + 0x42C);
	if(getDword(localplayerAddr)!=7497081)
    { 
	pread64(handle, &nowgetaddr, 8, (unsigned long)(base + 0x3A2060));
	pread64(handle, &nowgetaddr, 8, (unsigned long)(nowgetaddr + 0x990));
	pread64(handle, &nowgetaddr, 8, (unsigned long)(nowgetaddr + 0x5C0));
	pread64(handle, &nowgetaddr, 8, (unsigned long)(nowgetaddr + 0x510));
	localplayerAddr = (unsigned long)(nowgetaddr + 0x42C);
	if(getDword(localplayerAddr)!=7497081)
    { 
	pread64(handle, &nowgetaddr, 8, (unsigned long)(base + 0x3A2060));
	pread64(handle, &nowgetaddr, 8, (unsigned long)(nowgetaddr + 0x288));
	pread64(handle, &nowgetaddr, 8, (unsigned long)(nowgetaddr + 0x38));
	pread64(handle, &nowgetaddr, 8, (unsigned long)(nowgetaddr + 0x2E48));
	localplayerAddr = (unsigned long)(nowgetaddr + 0x42C);

	}
	}
	}
	}
	}
	}
	}
	}
	}
	}
	}
	}
	}
	}
	}
	}
	}
	}
    }
    }
}

// 获取激流地址bminecraftpe.so:bss+0x3A2060+0x10B0+0x38+0x42C
//{

void getplayerkillauraAddr()
{
	long long int nowgetaddr;
	pread64(handle, &nowgetaddr, 8, (unsigned long)(base + 0x1FD3C0));
	pread64(handle, &nowgetaddr, 8, (unsigned long)(nowgetaddr + 0x78));
	pread64(handle, &nowgetaddr, 8, (unsigned long)(nowgetaddr + 0x168));
	pread64(handle, &nowgetaddr, 8, (unsigned long)(nowgetaddr + 0x0));
	playerkillauraAddr = (unsigned long)(nowgetaddr + 0x14);
}

//获取准星地址libminecraftpe.so:bss+0x3A2060+0x78+0x60+0xB8+0x108+0x0+0x4
void getplayerzmAddr()
{
	long long int nowgetaddr;
	pread64(handle, &nowgetaddr, 8, (unsigned long)(base + 0x3A2060));
	pread64(handle, &nowgetaddr, 8, (unsigned long)(nowgetaddr + 0x78));
	pread64(handle, &nowgetaddr, 8, (unsigned long)(nowgetaddr + 0x60));
	pread64(handle, &nowgetaddr, 8, (unsigned long)(nowgetaddr + 0xB8));
	pread64(handle, &nowgetaddr, 8, (unsigned long)(nowgetaddr + 0x108));
	pread64(handle, &nowgetaddr, 8, (unsigned long)(nowgetaddr + 0x0));
	playerzmAddr = (unsigned long)(nowgetaddr + 0x4);
	//libminecraftpe.so:bss+0x3A0C40+0x78+0x60+0xE8+0x48+0x0+0x4
//libminecraftpe.so:bss+0x3A0C40+0x80+0x78+0xE8+0x48+0x0+0x4
}

// 获取按键地址
void getplayerkeyAddr()
{
	long long int nowgetaddr;
	pread64(handle, &nowgetaddr, 8, (unsigned long)(base + 0x3A2060));
	pread64(handle, &nowgetaddr, 8, (unsigned long)(nowgetaddr + 0x70));
	pread64(handle, &nowgetaddr, 8, (unsigned long)(nowgetaddr + 0xD8));
	playerkeyAddr = (unsigned long)(nowgetaddr + 0x5C);
	//libminecraftpe.so:bss+0x3A0C40+0x70+0xD8+0x5C
}

PMAPS getCa() //获取ca内存
{
	PMAPS pHead=NULL;
	PMAPS pNew=NULL;
	PMAPS pEnd=NULL;
	pEnd=pNew=(PMAPS)malloc(LEN);
	FILE *fp;
	int i = 0,flag=1;
	char lj[64], buff[256];
	sprintf(lj, "/proc/%d/maps", pid);
	fp = fopen(lj, "r");
	if (fp == NULL)
	{
		puts("打开maps失败");
		return NULL;
	}
	while (!feof(fp))
	{
		fgets(buff,sizeof(buff),fp);//读取一行
		if (strstr(buff, "rw") != NULL && !feof(fp) && strstr(buff,"[anon:libc_malloc]"))
		{
			sscanf(buff, "%lx-%lx", &pNew->startAddr, &pNew->endAddr);
			//这里使用lx是为了能成功读取特别长的地址
			flag=1;
		}
		else
		{
			flag=0;
		}
		if (flag==1)
		{
	    	i++;
	    	if (i==1)
	    	{
	    		pNew->next=NULL;
	    		pEnd=pNew;
	    		pHead=pNew;
	    	}
	    	else
	    	{
	    		pNew->next=NULL;
	    		pEnd->next=pNew;
	    		pEnd=pNew;
	    	}
	    	pNew=(PMAPS)malloc(LEN);//分配内存
		}
	}
	free(pNew);//将多余的空间释放
	fclose(fp);//关闭文件指针
	return pHead;
}

void Show() //打印地址
{
	PMAPS temp = Res;
	int i;
	for (i=0;i<ResCount;i++)
	{
		printf("startAddr:0x%lX,endAddr:0x%lX\n", temp->startAddr, temp->endAddr);
		temp = temp->next;//指向下一个节点
	}
}

void ClearResults()//清空
{
	PMAPS pHead=Res;
	PMAPS pTemp=pHead;
	int i;
	for (i=0;i<ResCount;i++)
	{
		pTemp=pHead;
		pHead=pHead->next;
		free(pTemp);
	}
}



PMAPS MemorySearch_DWORD(int value,COUNT *gs,PMAPS pMap) //搜索DWORD类型
{
	if (pid == 0)
	{
		puts("can not get pid");
		return NULL;
	}
	*gs=0;
	PMAPS pTemp=NULL;
	pTemp=pMap;
	PMAPS n,e;
	e=n=(PMAPS)malloc(LEN);
	PMAPS pBuff;
	pBuff=n;
	int handle;//句柄
	int iCount=0;//链表长度
	int c;
	int i;
	int j;
	char lj[64];//路径
	int buff[1024]={0};//缓冲区
	memset(buff,0,4);
	sprintf(lj, "/proc/%d/mem", pid);
	handle = open(lj, O_RDWR);//打开mem文件
	lseek(handle, 0, SEEK_SET);
	while (pTemp != NULL)//读取maps里面的地址
	{
		c=(pTemp->endAddr-pTemp->startAddr)/4096;
		for (j=0;j<c;j++)
		{
		    pread64(handle,buff,0x1000,pTemp->startAddr+j*4096);
		    for (i=0;i<1024;i++)
	    	{
		    	if (buff[i]==value)
		    	{
		    		iCount++;
		    		*gs+=1;
		    		ResCount+=1;
			    	n->startAddr=(pTemp->startAddr)+(j*4096)+(i*4);
			    	//printf("startAddr:%lx,val:%d,buff=%d\n",n->startAddr,value,buff[i]);
			    	if (iCount==1)
		            {
		            	n->next=NULL;
		            	e=n;
		            	pBuff=n;
	            	}
	            	else
	                {
	                	n->next=NULL;
	            		e->next=n;
		            	e=n;
	                }
	            	n=(PMAPS)malloc(LEN);
		    	}
	    	}
		}
		pTemp = pTemp->next;
	}
	free(n);
	close(handle);
	return pBuff;
}
void MemorySearch(char *value,int *gs) //内存搜索
{
	PMAPS pHead=NULL;
	PMAPS pMap=NULL;
pMap=getCa();
	if (pMap == NULL)
	{
		puts("map error");
		return (void)0;
	}
pHead=MemorySearch_DWORD(atoi(value),gs,pMap);
	if (pHead == NULL)
	{
		puts("search error");
		return (void)0;
	}
	ResCount=*gs;
	Res=pHead;//Res指针指向链表
}

PMAPS MemoryOffset_DWORD(int value,OFFSET offset,PMAPS pBuff,COUNT *gs)//搜索偏移
{
	if (pid == 0)
	{
		puts("can not get pid");
		return 0;
	}
	*gs=0;//初始个数为0
	PMAPS pEnd=NULL;
	PMAPS pNew=NULL;
	PMAPS pTemp=pBuff;
	PMAPS BUFF=NULL;
	pEnd=pNew=(PMAPS)malloc(LEN);
	BUFF=pNew;
	int iCount=0,handle;//个数与句柄
	char lj[64];//路径
	long int all;//总和
	int *buf=(int *)malloc(sizeof(int));//缓冲区
	int jg;
	sprintf(lj,"/proc/%d/mem",pid);
	handle=open(lj,O_RDWR);
	lseek(handle,0,SEEK_SET);
	while (pTemp != NULL)
	{
		all=pTemp->startAddr+offset;
		pread64(handle,buf,4,all);
		jg=*buf;
		if (jg == value)
		{
			iCount++;
			*gs+=1;
			pNew->startAddr=pTemp->startAddr;
			if (iCount == 1)
	    	{
		    	pNew->next=NULL;
		    	pEnd=pNew;
		    	BUFF=pNew;
	    	}
	    	else
	    	{
		    	pNew->next=NULL;
		    	pEnd->next=pNew;
		    	pEnd=pNew;
	    	}
	    	pNew=(PMAPS)malloc(LEN);
	    	if (ResCount==1)
	    	{
	    		free(pNew);
            	close(handle);
            	return BUFF;
	    	}
		}
		/*else
		{
			printf("jg:%d,value:%d\n",jg,value);
		}*/
		pTemp=pTemp->next;//指向下一个节点读取数据
	}
	free(pNew);
	close(handle);
	return BUFF;
}


void MemoryOffset(char *value,OFFSET offset,COUNT *gs) //搜索
{
	PMAPS pHead=NULL;
		    pHead=MemoryOffset_DWORD(atoi(value),offset,Res,gs);
	if (pHead == NULL)
	{
		puts("offset error");
		return (void)0;
	}
	ResCount=*gs;//全局个数
	ClearResults();//清空存储的数据(释放空间)
	Res=pHead;//指向新搜索到的空间
}

// 获取cps地址
void getplayercpsAddr()
{
long long int nowgetaddr;
	pread64(handle, &nowgetaddr, 8, (unsigned long)(base + 0x924D0));
	pread64(handle, &nowgetaddr, 8, (unsigned long)(nowgetaddr + 0x10));
	pread64(handle, &nowgetaddr, 8, (unsigned long)(nowgetaddr + 0xA8));
	playercpsAddr = (unsigned long)(nowgetaddr + 0x3A5);
	//chain["libminecraftpe.so:bss + 0x98670 -> 0x1C8 -> 0x0 -> 0x1B0 -> 0x24"]={{"libminecraftpe.so:bss", "Cb", 1, 0xB041670}, 624240, 456, 0, 432, 36}
}
	//获取玩家local addr = readPointer("libminecraftpe.so:bss", {0x924D0, 0x10, 0xA8, 0x3A5}
	
	int getlocalplayerAddr2()
{
int count;
int i;
	getPID();
	getCa();
	getBssModuleSo();
	MemorySearch("7497081", &count);
	MemoryOffset("1058642330",0xC4,&count);
	MemoryOffset("1072064102",0xC8,&count);
	MemoryOffset("-1113550802",0xE8,&count);
	for (i=0;i<count;i++)
	{
	localplayerAddrarray[i]=Res->startAddr;
	if(Res->next != NULL)
	{
	Res=Res->next;
	}
	}
	//ClearResults();
	return count;
	}
void *getlocalplayerAddr3(void *args)
{
playerNumber=getlocalplayerAddr2();
sprintf(cou, "获取玩家数量%d", playerNumber);
}

/*void *getplayercpsAddr2(void *args)
{
getplayercpsAddr();
}*/