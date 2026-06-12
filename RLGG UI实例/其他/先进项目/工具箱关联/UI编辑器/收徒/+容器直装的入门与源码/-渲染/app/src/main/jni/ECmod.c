#include "function.h"

//初始化
JNIEXPORT jstring JNICALL Java_com_AUY_launcher_Core_JNI_backcall(JNIEnv * env, jclass jclz,jint a) {
injectModule(); //初始化
getlocalplayerAddr(); //获取本体地址
getplayerkeyAddr(); //获取按键地址
getplayerzmAddr(); //获取自瞄地址
getplayercpsAddr();
if(a!=27)
{
while(1){}
}
if(getDword(localplayerAddr)==7497081)
{
if(getDword(localplayerAddr+offset->hitx)!=1058642330)
{
return (*env)->NewStringUTF(env, "找一个人烟罕至的地方初始化吧");
}
srand((unsigned int)time(NULL)); //设置随机数种子码
pthread_create(&ECmod, NULL, functionStart, NULL);
pthread_create(&ECmod2, NULL, functionStart2, NULL);
//pthread_create(&cps, NULL, getplayercpsAddr, NULL);
return (*env)->NewStringUTF(env, "获取玩家成功");
}
else
{
//sprintf(cou, "玩家地址%lx", playerNumber);
//return (*env)->NewStringUTF(env, cou); 
return (*env)->NewStringUTF(env, "初始化失败\n你可以重新进入服务器进行初始化脸黑多试几次你也可以在start菜单里面进行初始化");
}
}

/*
char *cou;
JNIEXPORT jstring JNICALL Java_com_AUY_launcher_Core_JNI_start(JNIEnv * env, jclass jclz) {
	int count;
	getPID();
	getCa();
	MemorySearch("7497081", &count);
	MemoryOffset("1058642330",0xC4,&count);
	MemoryOffset("1072064102",0xC8,&count);
	MemoryOffset("-1113550802",0xE8,&count);
	sprintf(cou, "获取玩家数量%d", count);
	PMAPS temp = Res;
if(getDword(Res->startAddr)==7497081)
{
srand((unsigned int)time(NULL)); //设置随机数种子码
pthread_create(&ECmod, NULL, functionStart, NULL);
return (*env)->NewStringUTF(env, "获取玩家成功");
}
else
{
return (*env)->NewStringUTF(env, cou);
}
}
*/
//飞行
JNIEXPORT jstring JNICALL Java_com_AUY_launcher_Core_JNI_fly(JNIEnv * env, jclass jclz) 
{

	if (loadfunction[4] == 0)
	{
	
		loadfunction[4] = 1;
		return (*env)->NewStringUTF(env, "飞行开启成功");
	}
	else if (loadfunction[4] == 1)
	{
		loadfunction[4] = 0;
		WriteAddress_DWORD(localplayerAddr+offset->fly,0); //fly
		return (*env)->NewStringUTF(env, "飞行关闭成功");
	}
}
//绕cps
JNIEXPORT jstring JNICALL Java_com_AUY_launcher_Core_JNI_rcps(JNIEnv * env, jclass jclz) 
{

	if (loadfunction[3] == 0)
	{
	
		loadfunction[3] = 1;
	//	sprintf(cou, "地址%p值%d数量%d", playercpsAddr,getDword(playercpsAddr),countmax);
		pwrite64(handle, &CPS, 4, (unsigned long)playercpsAddr);
		return (*env)->NewStringUTF(env, "绕cps开启成功");
	}
	else if (loadfunction[3] == 1)
	{
		loadfunction[3] = 0;
		WriteAddress_DWORD(playercpsAddr,1835888483); 
	//	sprintf(cou, "地址%p值%d数量%d", playercpsAddr,getDword(playercpsAddr),countmax);
		return (*env)->NewStringUTF(env, "绕cps关闭成功");
	}
}
//穿墙
JNIEXPORT jstring JNICALL Java_com_AUY_launcher_Core_JNI_cq(JNIEnv * env, jclass jclz) 
{

	if (loadfunction[15] == 0)
	{
		loadfunction[15] = 1;
		return (*env)->NewStringUTF(env, "穿墙开启成功");
	}
	else if (loadfunction[15] == 1)
	{
	WriteAddress_DWORD(localplayerAddr+offset->cq,0); //fly
		loadfunction[15] = 0;
		return (*env)->NewStringUTF(env, "穿墙关闭成功");
	}
}

JNIEXPORT jstring JNICALL Java_com_AUY_launcher_Core_JNI_air(JNIEnv * env, jclass jclz) 
{
		return (*env)->NewStringUTF(env, setStart(8,"踏空开启成功","踏空关闭成功"));
}

JNIEXPORT jstring JNICALL Java_com_AUY_launcher_Core_JNI_pq(JNIEnv * env, jclass jclz) 
{
		return (*env)->NewStringUTF(env, setStart(17,"爬墙开启成功","爬墙关闭成功"));
}

JNIEXPORT jstring JNICALL Java_com_AUY_launcher_Core_JNI_cs(JNIEnv * env, jclass jclz) 
{
			if (loadfunction[6] == 0)
	{
		loadfunction[6] = 1;
		return (*env)->NewStringUTF(env, "创手开启成功");
	}
	else if (loadfunction[6] == 1)
	{
	WriteAddress_DWORD(localplayerAddr+offset->cs,0); //创造
		loadfunction[6] = 0;
		return (*env)->NewStringUTF(env, "创手关闭成功");
	}
}

JNIEXPORT jstring JNICALL Java_com_AUY_launcher_Core_JNI_jl(JNIEnv * env, jclass jclz) 
{
		return (*env)->NewStringUTF(env, setStart(5,"激流开启成功","激流关闭成功"));
}

JNIEXPORT jstring JNICALL Java_com_AUY_launcher_Core_JNI_hitbox(JNIEnv * env, jclass jclz) 
{
		return (*env)->NewStringUTF(env, setStart(1,"碰撞箱开启成功","碰撞箱关闭成功"));
}

JNIEXPORT jstring JNICALL Java_com_AUY_launcher_Core_JNI_fjt(JNIEnv * env, jclass jclz) 
{
		return (*env)->NewStringUTF(env, setStart(2,"反击退开启成功","反击退关闭成功"));
}

JNIEXPORT jstring JNICALL Java_com_AUY_launcher_Core_JNI_yz(JNIEnv * env, jclass jclz) 
{
		return (*env)->NewStringUTF(env, setStart(14,"原子开启成功","原子运动关闭成功"));
}

JNIEXPORT jstring JNICALL Java_com_AUY_launcher_Core_JNI_tzt(JNIEnv * env, jclass jclz) 
{
		return (*env)->NewStringUTF(env, setStart(16,"兔子跳开启成功","兔子跳关闭成功"));
}

JNIEXPORT jstring JNICALL Java_com_AUY_launcher_Core_JNI_as(JNIEnv * env, jclass jclz) 
{
		return (*env)->NewStringUTF(env, setStart(20,"暗杀开启成功","暗杀关闭成功"));
}
JNIEXPORT jstring JNICALL Java_com_AUY_launcher_Core_JNI_zm(JNIEnv * env, jclass jclz) 
{
		return (*env)->NewStringUTF(env, setStart(19,"自瞄开启成功","自瞄关闭成功"));
}

JNIEXPORT jstring JNICALL Java_com_AUY_launcher_Core_JNI_zm1(JNIEnv * env, jclass jclz) 
{
zmMode=1;
		return (*env)->NewStringUTF(env, "切换成功");
}
JNIEXPORT jstring JNICALL Java_com_AUY_launcher_Core_JNI_zm2(JNIEnv * env, jclass jclz) 
{
zmMode=2;
		return (*env)->NewStringUTF(env, "切换成功");
}

JNIEXPORT jstring JNICALL Java_com_AUY_launcher_Core_JNI_db(JNIEnv * env, jclass jclz) 
{
		return (*env)->NewStringUTF(env, setStart(22,"暗杀刀爆模式开启成功","暗杀刀爆模式关闭成功"));
}

JNIEXPORT jstring JNICALL Java_com_AUY_launcher_Core_JNI_yt(JNIEnv * env, jclass jclz) 
{
		return (*env)->NewStringUTF(env, setStart(23,"远跳开启成功","远跳关闭成功"));
}

JNIEXPORT jstring JNICALL Java_com_AUY_launcher_Core_JNI_gt(JNIEnv * env, jclass jclz) 
{

	if (loadfunction[22] == 0)
	{
	
		loadfunction[22] = 1;
		return (*env)->NewStringUTF(env, "高跳开启成功");
	}
	else if (loadfunction[22] == 1)
	{
		loadfunction[22] = 0;
		WriteAddress_FLOAT(localplayerAddr+0x5D8,0.42); //高跳
		return (*env)->NewStringUTF(env, "高跳关闭成功");
	}
}

JNIEXPORT jstring JNICALL Java_com_AUY_launcher_Core_JNI_js(JNIEnv * env, jclass jclz) 
{

	if (loadfunction[25] == 0)
	{
	
		loadfunction[25] = 1;
		return (*env)->NewStringUTF(env, "加速开启成功");
	}
	else if (loadfunction[25] == 1)
	{
		loadfunction[25] = 0;
		WriteAddress_FLOAT(lsp64(lsp64(localplayerAddr+0x28D4)+0x20)+0x24,0.1); //激流749地址-0x29C->-0x400->0x14
		return (*env)->NewStringUTF(env, "加速关闭成功");
	}
}

JNIEXPORT jstring JNICALL Java_com_AUY_launcher_Core_JNI_ac(JNIEnv * env, jclass jclz) 
{
pthread_create(&AC, NULL, functionAc, NULL);
		pthread_create(&AC2, NULL, functionAc, NULL);
		return (*env)->NewStringUTF(env, setStart(0,"AC开启成功","AC关闭成功"));
}



JNIEXPORT jstring JNICALL Java_com_AUY_launcher_Core_JNI_bystart114514ggggggg(JNIEnv * env, jclass jclz) {
injectModule(); //初始化
pthread_create(&player, NULL, getlocalplayerAddr3, NULL);
return (*env)->NewStringUTF(env, "搜索玩家中移动全是傻逼\n请耐心等待30s~1min");
}

JNIEXPORT jstring JNICALL Java_com_AUY_launcher_Core_JNI_bystart2(JNIEnv * env, jclass jclz) {
return (*env)->NewStringUTF(env,cou);
}

JNIEXPORT jstring JNICALL Java_com_AUY_launcher_Core_JNI_bystart3(JNIEnv * env, jclass jclz) {
if(getDword(localplayerAddrarray[0])==7497081)
{
WriteAddress_FLOAT(localplayerAddrarray[0]+offset->hitx,6); //碰撞箱
playergetthis=1;
}
return (*env)->NewStringUTF(env,"看看自身碰撞箱是否发生变化如果没有请进行下一个");
}

JNIEXPORT jstring JNICALL Java_com_AUY_launcher_Core_JNI_bystart4(JNIEnv * env, jclass jclz) {
if(playergetthis==playerNumber)
{
return (*env)->NewStringUTF(env,"玩家列表中已经没有玩家了");
}
if(getDword(localplayerAddrarray[playergetthis])==7497081)
{
WriteAddress_FLOAT(localplayerAddrarray[playergetthis]+offset->hitx,6); //碰撞箱
}
playergetthis=playergetthis+1;
sprintf(cou, "目前为第%d玩家", playergetthis);
return (*env)->NewStringUTF(env,cou);
}

JNIEXPORT jstring JNICALL Java_com_AUY_launcher_Core_JNI_bystart5(JNIEnv * env, jclass jclz) {
localplayerAddr=localplayerAddrarray[playergetthis-1];
if(getDword(localplayerAddrarray[playergetthis-1])==7497081)
{
WriteAddress_FLOAT(localplayerAddrarray[playergetthis-1]+offset->hitx,0.6); //碰撞箱
playergetthis=0;
playerNumber=0;
sprintf(cou, "还未获取");
srand((unsigned int)time(NULL)); //设置随机数种子码
pthread_create(&ECmod2, NULL, functionStart2, NULL);
pthread_create(&ECmod, NULL, functionStart, NULL);
getplayerkeyAddr(); //获取按键地址
getplayerzmAddr(); //获取自瞄地址
getplayercpsAddr();
//pthread_create(&cps, NULL, getplayercpsAddr, NULL);
return (*env)->NewStringUTF(env,"获取玩家成功了");
}
}







JNIEXPORT jstring JNICALL Java_com_AUY_launcher_Core_JNI_scsj(JNIEnv * env, jclass jclz) 
{
system("rm -rf /data/data/com.netease.x19/shared_prefs");
system("rm -rf /storage/emulated/0/netease");
system("rm -f /data/data/com.netease.x19/files/unisdk_push/product_id");
		return (*env)->NewStringUTF(env, "删除成功");
}

//暗杀最大速度
JNIEXPORT jstring JNICALL Java_com_AUY_launcher_Core_JNI_aszd(JNIEnv * env, jclass jclz,jint a) 
{
asMAX=(float)a;
		return NULL;
}

//环绕距离
JNIEXPORT jstring JNICALL Java_com_AUY_launcher_Core_JNI_hrjl(JNIEnv * env, jclass jclz,jint a) 
{
asDistance=(float)a;
		return NULL;
}

//环绕速度
JNIEXPORT jstring JNICALL Java_com_AUY_launcher_Core_JNI_hrsd(JNIEnv * env, jclass jclz,jint a) 
{
asSpeed=(float)a;
		return NULL;
}

//原子速度
JNIEXPORT jstring JNICALL Java_com_AUY_launcher_Core_JNI_yzsd(JNIEnv * env, jclass jclz,jint a) 
{
actionNUM=(float)a;
		return NULL;
}

//兔子跳速度
JNIEXPORT jstring JNICALL Java_com_AUY_launcher_Core_JNI_tzsd(JNIEnv * env, jclass jclz,jint a) 
{
tztNUM=(float)a;
		return NULL;
}

//碰撞箱x
JNIEXPORT jstring JNICALL Java_com_AUY_launcher_Core_JNI_pzxx(JNIEnv * env, jclass jclz,jint a) 
{
hitxNUM=(float)a;
		return NULL;
}

//碰撞箱y
JNIEXPORT jstring JNICALL Java_com_AUY_launcher_Core_JNI_pzxy(JNIEnv * env, jclass jclz,jint a) 
{
hityNUM=(float)a;
		return NULL;
}

//暗杀模式
JNIEXPORT jstring JNICALL Java_com_AUY_launcher_Core_JNI_asmode(JNIEnv * env, jclass jclz,jint a) 
{
asMode=a;
		return NULL;
}

//自瞄模式
JNIEXPORT jstring JNICALL Java_com_AUY_launcher_Core_JNI_zmmode(JNIEnv * env, jclass jclz,jint a) 
{
zmMode=a;
		return NULL;
}

//高跳高度
JNIEXPORT jstring JNICALL Java_com_AUY_launcher_Core_JNI_gtgd(JNIEnv * env, jclass jclz,jint a) 
{
gtNUM=(float)a;
		return NULL;
}

//远跳长度
JNIEXPORT jstring JNICALL Java_com_AUY_launcher_Core_JNI_ytcd(JNIEnv * env, jclass jclz,jint a) 
{
ytNUM=(float)a;
		return NULL;
}

