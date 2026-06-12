#include "memory.h"
pthread_t ECmod;
pthread_t ECmod2;
pthread_t player;
pthread_t cps;
pthread_t AC;
pthread_t AC2;
int asMode = 1;
int zmMode = 1;

int getplayert=0;
int CPS=0;
int jl,count2;
float asMAX=1; //暗杀最大速度
float asDistance=1; //环绕距离
float asSpeed=1; //环绕速度
float actionNUM=1; //原子速度
float tztNUM=1; //兔子跳速度
float hitxNUM=1; //碰撞箱x
float hityNUM=2; //碰撞箱y
float jsNUM=1; //加速倍数
float ytNUM=1; //远跳倍数
float gtNUM=1; //高跳倍数
float hitbox,zm1,zm2,zm3,zm4,zm5,dbnum;
int loadfunction[] = {
	0,							// 0 AC
	0,							// 1 hitbox
	0,							// 2 反击退
	0,                          // 3 绕cps
	0, // 4 fly
	0, // 5 激流
	0, // 6 创手
	0, // 7 暗杀刀爆
	0, // 8 踏空
	0, // 9 骑人
	0, // 10 锁背
	0, // 11 环绕
	0, // 12 第三自瞄
	0, // 13 第一自瞄
	0, // 14 原子运动
	0, // 15 穿墙
	0, // 16 兔子跳
	0, // 17 爬墙
	0, // 18 ECmod
	0, // 19 自瞄开关
	0, // 20 暗杀开关
	0, // 21 暗杀刀爆
	0, // 22 高跳
	0, // 23 远跳
	0, // 24 喷气背包
	0 // 25 加速
};

//设置功能
char *setStart(int id, char *isStart1, char *isStart2)
{
	char *temp = "失败";
	if (loadfunction[id] == 0)
	{
		loadfunction[id] = 1;
		temp = isStart1;
	}
	else if (loadfunction[id] = 1)
	{
		loadfunction[id] = 0;
		temp = isStart2;
	}
	return temp;
}

float maxmotion(float motion)
{
	float motionvalue;
	if (motion > asMAX || motion < -asMAX)
	{
		if (motion > 0)
		{
			motionvalue = asMAX;
		}
		if (motion < 0)
		{
			motionvalue = -asMAX;
		}
	}
	else
	{
		motionvalue = motion;
	}
	return motionvalue;
}

// 玩家获取函数
void getplayer(float hitx , float hity)
{
	long long int nowgetaddr, temp2;
	unsigned long temp4;
	int temp, temp3, i, num,ca,player;
	float otherx, othery, otherz, myselfx, myselfy, myselfz,cx,cy,cz,mindistance,distance,motionx,motiony,motionz,jotherx,jotherz;
	float otherview,sby,sbxz,sbzz;
	float hitboxx = hitx;
	float hitboxy = hity;
	pread64(handle, &nowgetaddr, 8, (unsigned long)(base + 0x23E0D0));	// 数组头
	nowgetaddr = nowgetaddr + 0x4;	// 数组头下方
	num = 0;
	ca=0;
	for (i = 0; i < 0x666; i++)
	{
		pread64(handle, &temp, 4, (unsigned long)(nowgetaddr + 0x8 * i));
		if (temp > 180 || temp < -180 && temp != 0)
		{
			break;
		}
		else
		{
			pread64(handle, &temp2, 8, (unsigned long)(nowgetaddr + 0x8 * i - 0x4));
			pread64(handle, &temp2, 8, (unsigned long)(temp2 + 0x18));
			pread64(handle, &temp2, 8, (unsigned long)(temp2 + 0xA8));
			temp4 = (unsigned long)(temp2 + 0x42C);
			pread64(handle, &temp3, 4, (unsigned long)(temp2 + 0x42C));
			if (temp3 == 7497081 && temp4 != localplayerAddr)
			{
				pread64(handle, &otherx, 4, (unsigned long)(temp4 + offset->posx));
				pread64(handle, &othery, 4, (unsigned long)(temp4 + offset->posy));
				pread64(handle, &otherz, 4, (unsigned long)(temp4 + offset->posz));
				pread64(handle, &myselfx, 4, (unsigned long)(localplayerAddr + offset->posx));
				pread64(handle, &myselfy, 4, (unsigned long)(localplayerAddr + offset->posy));
				pread64(handle, &myselfz, 4, (unsigned long)(localplayerAddr + offset->posz));
					if(loadfunction[1]==1) //碰撞箱开关
					{
				if (fabs(otherx - myselfx) < 6 && fabs(othery - myselfy) < 6
					&& fabs(otherz - myselfz) < 6)
				{
					pwrite64(handle, &hitboxx, 4, (unsigned long)(temp4 + offset->hitx));
					pwrite64(handle, &hitboxy, 4, (unsigned long)(temp4 + offset->hity));
				}
				}
				if(getplayert==0) //获取
				{
				  count2=-180;
    			jl=0;
				cx=otherx-myselfx;
				cy=othery-myselfy;
				cz=otherz-myselfz;
				distance=sqrt(cx*cx+cy*cy+cz*cz);
				if (distance<30)
				{
				num=num+1;
			    if(ca==0)
			    {
			    lockplayerAddr=temp4;
			    mindistance=distance;
			    ca=1;
			    }
			    else if(distance<mindistance)
			    {
			    mindistance=distance;
			    lockplayerAddr=temp4;
			    }
				}
				}
				
			}
		}
		
	}
					if(loadfunction[19] == 1 || loadfunction[20] == 1) //暗杀的进行
				{
				if(num != 0) //如果有玩家就设置
				{
				getplayert=1;
				}
				if(getplayert==1) //开始自瞄暗杀
				{
				pread64(handle, &player, 4, (unsigned long)(lockplayerAddr));
if(player!=7497081)
{
getplayert=0;
}
				pread64(handle, &hitbox, 4, (unsigned long)(lockplayerAddr + offset->hitx));
				pread64(handle, &jotherx, 4, (unsigned long)(lockplayerAddr + offset->posx));
				pread64(handle, &othery, 4, (unsigned long)(lockplayerAddr + offset->posy));
				pread64(handle, &jotherz, 4, (unsigned long)(lockplayerAddr + offset->posz));
				pread64(handle, &myselfx, 4, (unsigned long)(localplayerAddr + offset->posx));
				pread64(handle, &myselfy, 4, (unsigned long)(localplayerAddr + offset->posy));
				pread64(handle, &myselfz, 4, (unsigned long)(localplayerAddr + offset->posz));
				otherx=jotherx+((hitbox-0.6)/2.0);
				otherz=jotherz+((hitbox-0.6)/2.0);
				dbnum = (rand() % 100 + 1)/100.0;
				othery=othery+0.6-dbnum;
				//刀爆
				cx=otherx-myselfx;
				cy=othery-myselfy;
				cz=otherz-myselfz;
				distance=sqrt(cx*cx+cy*cy+cz*cz);
				if(distance>30)
				{
			   getplayert=0;
				}
				if(loadfunction[19]==1 && getplayert==1) //自瞄
				{
				if(zmMode==1)
				{
			zm1=cy/distance;
			zm2 = -asin(zm1)*180/PI;
			zm4 = -atan2(otherx - myselfx, otherz - myselfz) * (180 / PI);
			pwrite64(handle, &zm4, 4, (unsigned long)(localplayerAddr - offset->viewx));	// 水平
			pwrite64(handle, &zm4, 4, (unsigned long)(localplayerAddr + offset->viewx2));	// 水平
	        pwrite64(handle, &zm2, 4, (unsigned long)(localplayerAddr - offset->viewy));	// 垂直
				}
				if(zmMode==2)
				{
				zm1=cy/distance;
			zm2 = asin(zm1)*180/PI;
           if (zm2>0){
			zm3=PI*zm2/90.0/2;
			}
			else
			{
			zm3=PI*zm2/90.0/2;
			}
		//	cg=fy/aimp;
			zm4 = -atan2(otherx - myselfx, otherz - myselfz) * (180 / PI);
			if(zm5>0)
			{
			zm5=PI*(1-zm4/180.0);
			}
			else
			{
			zm5=-PI*(1+zm4/180.0);
			}
			pwrite64(handle, &zm5, 4, (unsigned long)(playerzmAddr-0x4));	// 水平
	        pwrite64(handle, &zm3, 4, (unsigned long)(playerzmAddr));	// 垂直
	}
				}
				if(loadfunction[20]==1 && getplayert==1) //暗杀
				{
				if(asMode==1)
				{
				motionx=maxmotion((otherx-myselfx)/2.2);
				motiony=maxmotion((othery+1.9-myselfy)/5.8);
				motionz=maxmotion((otherz-myselfz)/2.2);
	pwrite64(handle, &motionx, 4, (unsigned long)(localplayerAddr + offset->motionx));	// x
	pwrite64(handle, &motiony, 4, (unsigned long)(localplayerAddr + offset->motiony));	// y
	pwrite64(handle, &motionz, 4, (unsigned long)(localplayerAddr + offset->motionz));	// z
	}
	if(asMode==2)
	{
	
			otherview = getFloat(lockplayerAddr - offset->viewx);
			sby = otherview * (PI / 180);
			sbxz = sin(sby) * 2;
			sbzz = cos(sby) * 2;
			otherx = otherx+sbxz;	// x的值
			otherz = otherz-sbzz;	// z的值
		motionx=maxmotion((otherx-myselfx)/2.2);
	motiony=maxmotion((othery+1.0-myselfy)/5.8);
	motionz=maxmotion((otherz-myselfz)/2.2);
	pwrite64(handle, &motionx, 4, (unsigned long)(localplayerAddr + offset->motionx));	// x
	pwrite64(handle, &motiony, 4, (unsigned long)(localplayerAddr + offset->motiony));	// y
	pwrite64(handle, &motionz, 4, (unsigned long)(localplayerAddr + offset->motionz));	// z
	}
	if(asMode==3)
	{
			if(count2>=180+asSpeed)
			{
			count2=-180;
			}
			sby = count2 * (PI / 180);
			sbxz = sin(sby) * asDistance;
			sbzz = cos(sby) * asDistance;
			otherx = otherx-sbxz;	// x的值
			otherz = otherz+sbzz;	// z的值
		motionx=maxmotion((otherx-myselfx)/2.2);
	motiony=maxmotion((othery+1.0-myselfy)/5.8);
	motionz=maxmotion((otherz-myselfz)/2.2);
	pwrite64(handle, &motionx, 4, (unsigned long)(localplayerAddr + offset->motionx));	// x
	pwrite64(handle, &motiony, 4, (unsigned long)(localplayerAddr + offset->motiony));	// y
	pwrite64(handle, &motionz, 4, (unsigned long)(localplayerAddr + offset->motionz));	// z
			if(jl==10)
			{
			count2=count2+asSpeed;
			jl=0;
			}
			jl=jl+1;
	}
				}
				}
				}
			   if(loadfunction[19] == 0 && loadfunction[20] == 0) //暗杀的进行
				{
				getplayert=0;
				}
}

// 反击退函数
void rjt()
{
	float jt;
	float jtnum = 0;
	pread64(handle, &jt, 4, (unsigned long)(localplayerAddr + offset->hited));	// 受伤地址
	if (jt != 0)
	{
		pwrite64(handle, &jtnum, 4, (unsigned long)(localplayerAddr + offset->motionx));	// x
		pwrite64(handle, &jtnum, 4, (unsigned long)(localplayerAddr + offset->motionz));	// z
	}
}

//运动函数
void action()
{
unsigned long motionxaddress = localplayerAddr+offset->motionx;
unsigned long motionyaddress = localplayerAddr+offset->motiony;
unsigned long motionzaddress = localplayerAddr+offset->motionz;
unsigned long rtaddress = playerkeyAddr-0xB;
		int8_t wvalue = getByte(playerkeyAddr);
		int8_t svalue =getByte(playerkeyAddr+1);
		int8_t avalue=getByte(playerkeyAddr+2);
		int8_t dvalue=getByte(playerkeyAddr+3);
		int8_t airvalue = getByte(playerkeyAddr-5);
		float viewxzvalue = getFloat(localplayerAddr - offset->viewx);
		float viewyvalue = getFloat(localplayerAddr - offset->viewy);
	//float viewxzvalue = getFloat(playerzmAddr-0x4);
	/*
				if(zm5>0)
			{
			zm5=PI*(1-zm4/180.0);
			}
			else
			{
			zm5=-PI*(1+zm4/180.0);
			}
	*/
	//if(viewxzvalue>0)
	//{
	//viewxzvalue=-(viewxzvalue/PI-1)*180.0;
	//}
	//else
	//{
	//viewxzvalue=-(viewxzvalue/PI+1)*180.0;
	//}
	    //float viewyvalue = getFloat(lockplayerAddr - offset->viewx);
		float viewxz = viewxzvalue * PI / 180;
		float viewy = viewyvalue * PI / 180;
		float motionxvalue = sin(viewxz) * actionNUM;
		float motionzvalue = cos(viewxz) * actionNUM;
		float motionxvalue2 = cos(viewxz) * actionNUM;
		float motionzvalue2 = sin(viewxz) * actionNUM;
		float motionyvalue = -sin(viewy) * actionNUM;
		
		float tzmotionxvalue = sin(viewxz) * tztNUM*0.3;
		float tzmotionzvalue = cos(viewxz) * tztNUM*0.3;
		float tzmotionxvalue2 = cos(viewxz) * tztNUM*0.3;
		float tzmotionzvalue2 = sin(viewxz) * tztNUM*0.3;
		float tzmotionyvalue = -sin(viewy) * tztNUM*0.3;
		if(loadfunction[14]==1)
	{
		if (wvalue == 1)
		{
			WriteAddress_FLOAT(motionxaddress, -motionxvalue);	// 修改motionx
			WriteAddress_FLOAT(motionzaddress, motionzvalue);	// z
			WriteAddress_FLOAT(motionyaddress, 0);
		}
		if (svalue == 1)
		{
			WriteAddress_FLOAT(motionxaddress, motionxvalue);	// 修改motionx
			WriteAddress_FLOAT(motionzaddress, -motionzvalue);	// z
			WriteAddress_FLOAT(motionyaddress, 0);
		}
		if (avalue == 1)
		{
			WriteAddress_FLOAT(motionxaddress, motionxvalue2);	// 修改motionx
			WriteAddress_FLOAT(motionzaddress, motionzvalue2);	// z
			WriteAddress_FLOAT(motionyaddress, 0);
		}
		if (dvalue == 1)
		{
			WriteAddress_FLOAT(motionxaddress, -motionxvalue2);	// 修改motionx
			WriteAddress_FLOAT(motionzaddress, -motionzvalue2);	// z
			WriteAddress_FLOAT(motionyaddress, 0);
		}
		if (airvalue == 1)
		{
		WriteAddress_FLOAT(motionyaddress, 0.4);	// y
		} //原子运动的循环
		}
	if(loadfunction[16]==1 && loadfunction[14]!=1)
	{
		if (wvalue == 1)
		{
			WriteAddress_FLOAT(motionxaddress, -tzmotionxvalue);	// 修改motionx
			WriteAddress_FLOAT(motionzaddress, tzmotionzvalue);	// z
		}
		if (svalue == 1)
		{
			WriteAddress_FLOAT(motionxaddress, tzmotionxvalue);	// 修改motionx
			WriteAddress_FLOAT(motionzaddress, -tzmotionzvalue);	// z
		}
		if (avalue == 1)
		{
			WriteAddress_FLOAT(motionxaddress, tzmotionxvalue2);	// 修改motionx
			WriteAddress_FLOAT(motionzaddress, tzmotionzvalue2);	// z
		}
		if (dvalue == 1)
		{
			WriteAddress_FLOAT(motionxaddress, -tzmotionxvalue2);	// 修改motionx
			WriteAddress_FLOAT(motionzaddress, -tzmotionzvalue2);	// z
		}
		if (airvalue == 1)
		{
		WriteAddress_FLOAT(motionyaddress, 0.4);	// y
		}
		if(wvalue == 0 && svalue == 0 && avalue == 0 && dvalue == 0)
		{
		WriteAddress_BYTE(rtaddress,0);
		}
		else
		{
		WriteAddress_BYTE(rtaddress,1);
		}//兔子跳的循环
		}
}

// 功能加载
void *functionStart(void *args)
{
	while(true)
	{
	if(loadfunction[4]==1)
	{
	WriteAddress_DWORD(localplayerAddr+offset->fly,1); //fly
	}
		if(loadfunction[15]==1)
	{
	WriteAddress_DWORD(localplayerAddr+offset->cq,1); //穿墙
	}
			if(loadfunction[8]==1)
	{
	WriteAddress_DWORD(localplayerAddr-offset->air,1); //踏空
	}
			if(loadfunction[17]==1)
	{
	WriteAddress_FLOAT(localplayerAddr-offset->pq,9999); //爬墙
	}
	
				if(loadfunction[23]==1)
	{
	WriteAddress_FLOAT(localplayerAddr+0x614,0.02*ytNUM); //远跳
	}
					if(loadfunction[22]==1)
	{
	WriteAddress_FLOAT(localplayerAddr+0x5D8,0.42*gtNUM); //高跳
	}
	if(loadfunction[25]==1)
	{
	WriteAddress_FLOAT(lsp64(lsp64(localplayerAddr+0x28D4)+0x20)+0x24,0.1*jsNUM);
	}
	if(loadfunction[6]==1)
	{
	WriteAddress_DWORD(localplayerAddr+offset->cs,1); //创手
	}
	
	if(loadfunction[2]==1)
	{
	rjt(); //反击退
	}
	if(loadfunction[3]==1)
	{
//WriteAddress_DWORD(playercpsAddr,0);
pwrite64(handle, &CPS, 4, (unsigned long)playercpsAddr);
	}
	if(loadfunction[5]==1)
	{
	WriteAddress_DWORD(lsp64(lsp64(lsp64(lsp64(localplayerAddr+0x8C)+0xA8)+0x168)+0x0)+0x14,8486920); //激流749地址0x8C -> 0xA8 -> 0x168 -> 0x0 -> 0x14
	}
	WriteAddress_DWORD(so+0x4E27618,-721215457);
	WriteAddress_DWORD(so+0x4E2761C,-721215457);
	WriteAddress_DWORD(so+0x4E27AEC,-721215457);
	int minnum,maxnum;
	for(minnum=0;minnum<1256;minnum++)
	{
	WriteAddress_DWORD(so+0x5000+0x4*minnum,-721215457);
	}
	for(maxnum=0;maxnum<1435;maxnum++)
	{
	WriteAddress_DWORD(so+0x1B61000+0x4*maxnum,-721215457);
	}
	//usleep(200);
	}
	return NULL;
}
void *functionStart2(void *args)
{
	while(true)
	{
	getplayer(hitxNUM,hityNUM);
    action(); //原子运动
	}
	return NULL;
}

//AC函数
void *functionAc(void *args)
{
	while (1)
	{
		if (loadfunction[0] == 0)
		{
			break;
		}
		system("input keyevent 'KEYCODE_Q'");
	}
}

