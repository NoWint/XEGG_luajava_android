#include "Tool.h"
unsigned long Self,Lock,Lock2,Villager,Aim,Key,Rad,Quasi,Organism,Timer,RadSort,PosAddr,Arc,temp;
float HP,Login=0,Hitx=5,count2=-180,jl,zm1,zm2,zm3,zm4,zm5,fally,Recordy,distance,maxdistance,mindistance,cx,cy,cz,cx2,cy2,cz2,AssetsXZ,AssetsY,GmY,LockingX,LockingY,LockingZ,Dby,Yy,Ey,Infinitex,Infinitey,Infinitez,Enemyx,Enemyy,Enemyz,Qx,Qy,Qz,RNum=-1,otherx2, othery2, otherz2,selfx2, selfy2, selfz2,otherx, othery, otherz, selfx, selfy, selfz,Sortotherx, Sortothery, Sortotherz, Sortselfx, Sortselfy, Sortselfz, Sortcx, Sortcy,Sortcz,motionx, motiony, motionz, otherview, sby, sbxz, sbzz;
Bool=true,LockScY=false;
int Scy,MyBedx,MyBedy,MyBedz,KillauraCPS=1,YdisCPS=1,Hitboxy=1,Callx,Ly,ydistance=10,list=0,i,distance1,distance2,distance3,Size=0,across_pos[]={0,0},left_pos[]={0,0},right_pos[]={0,0},y_pos;
long int Gn[]={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
long int Raido[]={0,0,0,0,0};
char *Set(int id)
{
Strat();char *temp = "失败";if(Gn[id]==0){Gn[id] = 1;}else if(Gn[id]=1){Gn[id]=0;}return temp;
}
void GetPointer(){
    Self=lsp(lsp(lsp(lsp(lsp(lsp(lsp(base+0x641870)+0x78)+0x60)+0x400)+0x48)+0x0)+0x0)+0x42C;
    Aim=lsp(lsp(lsp(lsp(lsp(lsp(lsp(lsp(lsp(lsp(lsp(lsp(base+0x641870)+0x78)+0x60)+0x400)+0x48)+0x0)+0x0)+0x8)+0x60)+0xA0)+0x168)+0x0)+0x4;
    Key=lsp(lsp(lsp(base+0x641870)+0x70)+0xD8)+0x5C;
    Rad=lsp(lsp(lsp(lsp(base+0x641870)+0x20)+0x7F8)+0x618)+0x6AC;
    Quasi=lsp(lsp(lsp(base+0x641870)+0x58)+0x618)+0x6B4;
    Timer=lsp(lsp(lsp(lsp(base+0x641870)+0x70)+0xA0)+0xD0)+0x0;
    RadSort=lsp(lsp(lsp(lsp(lsp(Self-0x424)+0x60)+0xA0)+0x48)+0x0)+0x234;
    PosAddr=lsp(lsp(lsp(lsp(base+0x641870)+0x20)+0x7F8)+0x600)+0x7E4;
    Arc=lsp(lsp(lsp(lsp(lsp(lsp(base+0x641870)+0x78)+0x60)+0x220)+0x48)+0x0)+0x1C;
}
void Action(){
long int Rtaddress = Key-0xB;
int8_t Wvalue=getByte(Key);
int8_t Svalue=getByte(Key+1);
int8_t Avalue=getByte(Key+2);
int8_t Dvalue=getByte(Key+3);
int8_t Airvalue=getByte(Key-5);
float Rotx=getFloat(Self-Viewx);
	float viewxzvalue=getFloat(Aim-0x4);
	if (viewxzvalue > 0)
	{
		viewxzvalue=-(viewxzvalue/PI-1)*180;
	}
	else
	{
		viewxzvalue=-(viewxzvalue/PI+1)*180;
	}
	float viewyvalue = getFloat(Key)*Azm;
	float viewxz = viewxzvalue*PI/180;
	float viewy = viewyvalue*PI/180;
	float Motionxvalue=sin(viewxz);
	float Motionzvalue=cos(viewxz);
	float Motionxvalue2=cos(viewxz);
	float Motionzvalue2=sin(viewxz);
	float Motionyvalue=-sin(viewy)*0.25;
	float Tzmotionxvalue=sin(viewxz)*0.48;
	float Tzmotionzvalue=cos(viewxz)*0.48;
	float Tzmotionxvalue2=cos(viewxz)*0.48;
	float Tzmotionzvalue2=sin(viewxz)*0.48;
	float Tzmotionyvalue=-sin(viewy)*0.48;
	if(Gn[16]==1){
	if (Rotx > 135.0f || Rotx < -135.0f){
	setDword(Rad,2);
	}
	if (Rotx > -45.0f && Rotx < 45.0f){
	setDword(Rad,3);
	}
	if (Rotx > 45.0f && Rotx < 135.0f){
	setDword(Rad,4);
	}
	if (Rotx > -135.0f && Rotx < -45.0f){
	setDword(Rad,5);
	}
	setDword(Rad-0x4,0);
	setDword(Quasi-0x4,floor(getFloat(Self+Posx)));
    if(LockScY==false){
	setDword(Quasi,floor(getFloat(Self+Posy))-1);
    }else if(LockScY==true){
    setDword(Quasi,Scy);
    }
	setDword(Quasi+0x4,floor(getFloat(Self+Posz)));
	}
	if(Gn[10]==1){
		if (Wvalue==1)
		{
			setFloat(Self+Motionx,-Tzmotionxvalue);
			setFloat(Self+Motionz,Tzmotionzvalue);
		}
		if (Svalue==1)
		{
			setFloat(Self+Motionx,Tzmotionxvalue);
			setFloat(Self+Motionz,-Tzmotionzvalue);
		}
		if (Avalue==1)
		{
			setFloat(Self+Motionx,Tzmotionxvalue2);
			setFloat(Self+Motionz,Tzmotionzvalue2);
		}
		if (Dvalue==1)
		{
			setFloat(Self+Motionx,-Tzmotionxvalue2);
			setFloat(Self+Motionz,-Tzmotionzvalue2);
		}
		if (Wvalue==0&&Svalue==0&&Avalue==0&&Dvalue==0)
		{
			setByte(Rtaddress,0);
		}
		else
		{
			setByte(Rtaddress,1);
		}
	}
	if(Gn[11]==1){
		if (Wvalue==1)
		{
			setFloat(Self+Motionx,-Motionxvalue);
			setFloat(Self+Motionz,Motionzvalue);
		}
		if (Svalue==1)
		{
			setFloat(Self+Motionx,Motionxvalue);
			setFloat(Self+Motionz,-Motionzvalue);
		}
		if (Avalue==1)
		{
			setFloat(Self+Motionx,Motionxvalue2);
			setFloat(Self+Motionz,Motionzvalue2);
		}
		if (Dvalue==1)
		{
			setFloat(Self+Motionx,-Motionxvalue2);
			setFloat(Self+Motionz,-Motionzvalue2);
		}
        if(Wvalue==0&&Svalue==0&&Avalue==0&&Dvalue==0&&Airvalue==0){
            setDword(Self+Blink,256);
        }else{
            setDword(Self+Blink,0);
        }
        if(Airvalue==1){
            setFloat(Self+Motiony,0.4);
        }else{
        setFloat(Self+Motiony,0);
        }
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
void Fjt(){
	float Jt,JtNum = 0;
	Jt = getFloat(Self+Hurt);
	if(Jt!=0){
		setFloat(Self+Motionx,JtNum);
		setFloat(Self+Motiony,JtNum);
		setFloat(Self+Motionz,JtNum);
	}
}
void ReservegetPlayer(){
    for (i = 1; i < 50; i++)
    {
        temp = lsp(lsp(lsp(lsp(base + 0x641870) + 0x980) + 0xC8) + 0x8 * i) + SelfValue;
        if (getDword(temp) == Play && temp != Self)
        {
            Lock = temp;
        }
        if (getDword(temp) == Biology)
        {
            Villager = temp;
            }
  }
  }
void getPlayer()
{
        if (getDword(temp) == Play && temp != Self)
        {
            Lock2 = temp;
            otherx2=getFloat(Lock2+0xAC);
            othery2=getFloat(Lock2+0xB0);
            otherz2=getFloat(Lock2+0xB4);
            selfx2=getFloat(Self+0xAC);
            selfy2=getFloat(Self+0xB0);
            selfz2=getFloat(Self+0xB4);
            cx2 = otherx2 - selfx2;
            cy2 = othery2 - selfy2;
            cz2 = otherz2 - selfz2;
            maxdistance = sqrt(cx2 * cx2 + cy2 * cy2 + cz2 * cz2);
            if(maxdistance<distance){
                Lock2=Lock;
                maxdistance=distance;
            }
        }
        
    otherx = getFloat(Lock + Posx) + ((getFloat(Lock + Hit) - 0.6) / 2);
    othery = getFloat(Lock + Posy);
    otherz = getFloat(Lock + Posz) + ((getFloat(Lock + Hit) - 0.6) / 2);
    selfx = getFloat(Self + Posx);
    selfy = getFloat(Self + Posy);
    selfz = getFloat(Self + Posz);
    cx = otherx - selfx;
    cy = othery - selfy;
    cz = otherz - selfz;
    distance = sqrt(cx * cx + cy * cy + cz * cz);
    if (Gn[0] == 1)
    {
        setFloat(Lock + Hit, Hitx);
    }
    else
    {
        setFloat(Lock + Hit, 0.6);
    }
    if (Gn[8] == 1 && getDword(Lock) == Play)
    {
        zm1 = asin(cy / distance);
        zm2 = -atan2(cx, cz) * (180 / PI);
        if (zm3 > 0)
        {
            zm3 = PI * (1 - zm2 / 180.0);
        }
        else
        {
            zm3 = -PI * (1 + zm2 / 180.0);
        }
        setFloat(Aim - 0x4, zm3);
        setFloat(Aim, zm1);
    }

    if (Gn[5] == 1 && getDword(Lock) == Play)
    {
        motionx = maxmotion((otherx - selfx) / 2.2);
        motiony = maxmotion((othery + 1.9 - selfy) / 5.8);
        motionz = maxmotion((otherz - selfz) / 2.2);
        pwrite64(handle, &motionx, 4, (unsigned long)(Self + Motionx));
        pwrite64(handle, &motiony, 4, (unsigned long)(Self + Motiony));
        pwrite64(handle, &motionz, 4, (unsigned long)(Self + Motionz));
    }
    if (Gn[6] == 1 && getDword(Lock) == Play)
    {
        otherview = getFloat(Lock - Viewx);
        sby = otherview * (PI / 180);
        sbxz = sin(sby) * 1.5;
        sbzz = cos(sby) * 1.5;
        otherx = otherx + sbxz;
        otherz = otherz - sbzz;
        motionx = maxmotion((otherx - selfx) / 2.2);
        motiony = maxmotion((othery + 1 - selfy) / 5.8);
        motionz = maxmotion((otherz - selfz) / 2.2);
        pwrite64(handle, &motionx, 4, (unsigned long)(Self + Motionx));
        pwrite64(handle, &motiony, 4, (unsigned long)(Self + Motiony));
        pwrite64(handle, &motionz, 4, (unsigned long)(Self + Motionz));
    }
    if(getDword(Lock) == Play && Gn[32]==1){
        AssetsXZ=-PI/2 -atan2(cx, cz);
        setFloat(Arc-4,AssetsXZ);
        AssetsY=asin(cy/distance);
        setFloat(Arc,PI/2+AssetsY);
    }
    if (Gn[7] == 1 && getDword(Lock) == Play)
    {
        if (count2 >= 180 + 40)
        {
            count2 = -180;
        }
        sby = count2 * (PI / 180);
        sbxz = sin(sby) * PI;
        sbzz = cos(sby) * PI;
        otherx = otherx - sbxz;
        otherz = otherz + sbzz;
        motionx = maxmotion((otherx - selfx) / 2.2);
        motiony = maxmotion((othery + 1.5 - selfy) / 5.8);
        motionz = maxmotion((otherz - selfz) / 2.2);
        pwrite64(handle, &motionx, 4, (unsigned long)(Self + Motionx));
        pwrite64(handle, &motiony, 4, (unsigned long)(Self + Motiony));
        pwrite64(handle, &motionz, 4, (unsigned long)(Self + Motionz));
        if (jl == 10)
        {
            count2 = count2 + 40;
            jl = 0;
        }
        jl = jl + 1;
    }
}
void *GodModeArgs(void *args)
{
while(1){
if(Gn[19]==1){
setFloat(Self+Posy,100000);
setFloat(Self+Posy2,100000+1.8);
usleep(600000);
setFloat(Self+Posy,GmY);
setFloat(Self+Posy2,GmY+1.8);
}
usleep(600000);
}
}
void *Func(void *args)
{
	while(1){
        float Rotx=getFloat(Self-Viewx);
        if(getFloat(Self+Posy)<99900){
            GmY=getFloat(Self+Posy);
        }
        if(Gn[16]==1){
    if (Rotx > 135.0f || Rotx < -135.0f){
    setDword(Rad,2);
    }
    if (Rotx > -45.0f && Rotx < 45.0f){
    setDword(Rad,3);
    }
    if (Rotx > 45.0f && Rotx < 135.0f){
    setDword(Rad,4);
    }
    if (Rotx > -135.0f && Rotx < -45.0f){
    setDword(Rad,5);
    }
    setDword(Rad-0x4,0);
    setDword(Quasi-0x4,floor(getFloat(Self+Posx)));
    if(LockScY==false){
    setDword(Quasi,floor(getFloat(Self+Posy))-1);
    }else if(LockScY==true){
    setDword(Quasi,Scy);
    }
    setDword(Quasi+0x4,floor(getFloat(Self+Posz)));
	}
        if(Gn[31]==1){
            setFloat(RadSort,Yy+1.62);
        }
        if(Gn[30]==1){
            int GotDataMyselfposx=getFloat(Self+Posx);
            int GotDataMyselfposz=getFloat(Self+Posz);
            distance1=sqrt((across_pos[0]-GotDataMyselfposx)^2+(across_pos[1]-GotDataMyselfposz)^2);
            distance2=sqrt((left_pos[0]-GotDataMyselfposx)^2+(left_pos[1]-GotDataMyselfposz)^2);
            distance3=sqrt((right_pos[0]-GotDataMyselfposx)^2+(right_pos[1]-GotDataMyselfposz)^2);
            int Dis[]={distance1,distance2,distance3};
            Size=Min(Dis,3);
            if(Size<7){
                if(Size==distance1){
                setDword(Quasi-4,across_pos[0]);
                setDword(Quasi,y_pos);
                setDword(Quasi+4,across_pos[1]);
                }
                if(Size==distance2){
                setDword(Quasi-4,left_pos[0]);
                setDword(Quasi,y_pos);
                setDword(Quasi+4,left_pos[1]);
                }
                if(Size==distance3){
                setDword(Quasi-4,right_pos[0]);
                setDword(Quasi,y_pos);
                setDword(Quasi+4,right_pos[1]);
                }
            }
        }
		if(Gn[19]==1){
		setFloat(RadSort,GmY+1.62);
		}
        if(Gn[25]==1){
            setFloat(Self+VideoCameray,Dby+1.62);
            setFloat(Self+Motiony,-0.1);
            setByte(Key-0xB,1);
        }else{
            Dby=getFloat(Self+Posy);
        }
		if(Gn[12]==1){
			setFloat(so+RenderValue,-4);
			setFloat(Self+Visual,1);
		}else{
			setFloat(so+RenderValue,-1);
			setFloat(Self+Visual,0.1);
		}
		if(Gn[20]==1){
			if(getDword(Self+Hand)==1 && getDword(Quasi-0x4)+getDword(Quasi+0x4)!=0){
			Qx=getDword(Quasi-0x4);
			Qy=1+getDword(Quasi);
			Qz=getDword(Quasi+0x4);
			usleep(500000);
			setFloat(Self+Posx,Qx);
			setFloat(Self+Posx2,Qx+0.6);
			setFloat(Self+Posx3,Qx+0.3);
			setFloat(Self+Posy,Qy);
			setFloat(Self+Posy2,Qy+1.8);
			setFloat(Self+Posy3,Qy+1.62);
			setFloat(Self+Posz,Qz);
			setFloat(Self+Posz2,Qz+0.6);
			setFloat(Self+Posz3,Qz+0.3);
			}
		}
	}
}
void attack(){
setDword(lsp(lsp(lsp(lsp(Self+0x8C)+0xA8)+0x168)+0x0)+0x14,8486926);
}
void *Other(void *args){
    while(1){
        float Rotx=getFloat(Self-Viewx);
        if(Gn[16]==1){
    if (Rotx > 135.0f || Rotx < -135.0f){
    setDword(Rad,2);
    }
    if (Rotx > -45.0f && Rotx < 45.0f){
    setDword(Rad,3);
    }
    if (Rotx > 45.0f && Rotx < 135.0f){
    setDword(Rad,4);
    }
    if (Rotx > -135.0f && Rotx < -45.0f){
    setDword(Rad,5);
    }
    setDword(Rad-0x4,0);
    setDword(Quasi-0x4,floor(getFloat(Self+Posx)));
    if(LockScY==false){
    setDword(Quasi,floor(getFloat(Self+Posy))-1);
    }else if(LockScY==true){
    setDword(Quasi,Scy);
    }
    setDword(Quasi+0x4,floor(getFloat(Self+Posz)));
	}
        if(Gn[31]==1){
            setFloat(RadSort,Yy+1.62);
        }
        if(Gn[19]==1){
        setFloat(RadSort,GmY+1.62);
		}
        if(Gn[30]==1){
            int GotDataMyselfposx=getFloat(Self+Posx);
            int GotDataMyselfposz=getFloat(Self+Posz);
            distance1=sqrt((across_pos[0]-GotDataMyselfposx)^2+(across_pos[1]-GotDataMyselfposz)^2);
            distance2=sqrt((left_pos[0]-GotDataMyselfposx)^2+(left_pos[1]-GotDataMyselfposz)^2);
            distance3=sqrt((right_pos[0]-GotDataMyselfposx)^2+(right_pos[1]-GotDataMyselfposz)^2);
            int Dis[]={distance1,distance2,distance3};
            Size=Min(Dis,3);
            if(Size<7){
                if(Size==distance1){
                setDword(Quasi-4,across_pos[0]);
                setDword(Quasi,y_pos);
                setDword(Quasi+4,across_pos[1]);
                }
                if(Size==distance2){
                setDword(Quasi-4,left_pos[0]);
                setDword(Quasi,y_pos);
                setDword(Quasi+4,left_pos[1]);
                }
                if(Size==distance3){
                setDword(Quasi-4,right_pos[0]);
                setDword(Quasi,y_pos);
                setDword(Quasi+4,right_pos[1]);
                }
            }
        }
        
        
        
        
        
    }
}
void *Killaura(void *args){
    while(1){
        if(Gn[3]==1){
        attack();
        }
        usleep(1000000-KillauraCPS*100000);
    }
}
void *Yaura(void *args){
    while(1){
        if(Gn[31]==1){
            if(cy<ydistance){
            setFloat(Self+Posy,Ey);
            setFloat(Self+Posy2,Ey+1.8);
            attack();
            usleep(500000);
            setFloat(Self+Posy,Yy);
            setFloat(Self+Posy2,Yy+1.8);
            }
        }else{
            Yy=getFloat(Self+Posy);
        }
        usleep(1000000-YdisCPS*100000);
    }
}
void *Move(void *args)
{
	while(1){
	getPlayer();
		Action();
		ReservegetPlayer();
        Ey=getFloat(Lock+Posy);
        if(Gn[31]==1){
            setFloat(RadSort,Yy+1.62);
        }
        float Rotx=getFloat(Self-Viewx);
        if(Gn[16]==1){
    if (Rotx > 135.0f || Rotx < -135.0f){
    setDword(Rad,2);
    }
    if (Rotx > -45.0f && Rotx < 45.0f){
    setDword(Rad,3);
    }
    if (Rotx > 45.0f && Rotx < 135.0f){
    setDword(Rad,4);
    }
    if (Rotx > -135.0f && Rotx < -45.0f){
    setDword(Rad,5);
    }
    setDword(Rad-0x4,0);
    setDword(Quasi-0x4,floor(getFloat(Self+Posx)));
    if(LockScY==false){
    setDword(Quasi,floor(getFloat(Self+Posy))-1);
    }else if(LockScY==true){
    setDword(Quasi,Scy);
    }
    setDword(Quasi+0x4,floor(getFloat(Self+Posz)));
	}
        if(Gn[30]==1){
            int GotDataMyselfposx=getFloat(Self+Posx);
            int GotDataMyselfposz=getFloat(Self+Posz);
            distance1=sqrt((across_pos[0]-GotDataMyselfposx)^2+(across_pos[1]-GotDataMyselfposz)^2);
            distance2=sqrt((left_pos[0]-GotDataMyselfposx)^2+(left_pos[1]-GotDataMyselfposz)^2);
            distance3=sqrt((right_pos[0]-GotDataMyselfposx)^2+(right_pos[1]-GotDataMyselfposz)^2);
            int Dis[]={distance1,distance2,distance3};
            Size=Min(Dis,3);
            if(Size<7){
                if(Size==distance1){
                setDword(Quasi-4,across_pos[0]);
                setDword(Quasi,y_pos);
                setDword(Quasi+4,across_pos[1]);
                }
                if(Size==distance2){
                setDword(Quasi-4,left_pos[0]);
                setDword(Quasi,y_pos);
                setDword(Quasi+4,left_pos[1]);
                }
                if(Size==distance3){
                setDword(Quasi-4,right_pos[0]);
                setDword(Quasi,y_pos);
                setDword(Quasi+4,right_pos[1]);
                }
            }
        }
        if(Gn[19]==1){
        setFloat(RadSort,GmY+1.62);
		}
		if(Gn[1]==1){
			setDword(Self+Fly,1);
		}
		if(Gn[2]==1){
			setDword(Self-Air,1);
		}
		if(Gn[3]==1){
			setFloat(Villager+Posy,256);
		}
		if(Gn[9]==1){
			Fjt();
		}
		if(Gn[13]==1){
			setFloat(Self-Spiderwebx,0);
			setFloat(Self-Spiderweby,0);
			setFloat(Self-Spiderwebz,0);
		}
		if(Gn[14]==1){
			setFloat(Self+Motionx,-sin(getFloat(Aim-0x4))*0.5);
			setFloat(Self+Motiony,sin(getFloat(Aim))*0.5);
			setFloat(Self+Motionz,-cos(getFloat(Aim-0x4))*0.5);
		}
		if(Gn[15]==1){
			if(getByte(Self-Air)==1){
				fally=getFloat(Self+Posy);
			}else{
				if(fally-getFloat(Self+Posy)>5){
					setFloat(Self+Motiony,1);
				}
			}
		}
		if(Gn[17]==1){
			setFloat(Self-Crawl,999);
		}else{
			setFloat(Self-Crawl,-1);
		}
		if(Gn[18]==1){
			setFloat(Self+Far,2);
		}
		if(Gn[21]==1){
	    setDword(Quasi,floor(getFloat(Self+Posy)));
		setDword(Quasi,-1+floor(getFloat(Self+Posy)));
		setDword(Quasi,-2+floor(getFloat(Self+Posy)));
		setDword(Quasi,-3+floor(getFloat(Self+Posy)));
		setDword(Quasi,-4+floor(getFloat(Self+Posy)));
		setDword(Quasi,-5+floor(getFloat(Self+Posy)));
	    }
		if(Gn[22]==1){
		setFloat(Self+VideoCamerax,LockingX+0.3);
		setFloat(Self+VideoCameray,LockingY+1.62);
		setFloat(Self+VideoCameraz,LockingZ+0.3);
		}else{
		LockingX=getFloat(Self+Posx);
		LockingY=getFloat(Self+Posy);
		LockingZ=getFloat(Self+Posz);
		}
		if(Gn[23]==1){
			setFloat(lsp(lsp(lsp(lsp(Self+0x6C)+0x0)+0x8)+0x0)+0xA4,HP);
		}else{
			HP=getFloat(lsp(lsp(lsp(lsp(Self+0x6C)+0x0)+0x8)+0x0)+0xA4);
		}
		if(Gn[24]==1){
			setFloat(Self-Water,0);
		}
		if(Gn[26]==1){
            setDword(Quasi,Ly);
        }else{
            Ly=floor(getFloat(Self+Posy));
        }
        if(Gn[27]==1){
            
        }
        if(Gn[4]==0){
            Infinitex=getFloat(Self+Posx);
            Infinitey=getFloat(Self+Posy);
            Infinitez=getFloat(Self+Posz);
        }
        if(Gn[4]==1){
            if(getDword(Lock)==Play){
            Enemyx=getFloat(Lock+Posx) + ((getFloat(Lock + Hit) - 0.6) / 2);
            Enemyy=getFloat(Lock+Posy);
            Enemyz=getFloat(Lock+Posz) + ((getFloat(Lock + Hit) - 0.6) / 2);
            setFloat(Self+Posx,Enemyx);
            setFloat(Self+Posx2,Enemyx+0.6);
            setFloat(Self+Posy,Enemyy);
            setFloat(Self+Posy2,Enemyy+1.8);
            setFloat(Self+Posz,Enemyz);
            setFloat(Self+Posz2,Enemyz+0.6);
            attack();
            setFloat(RadSort-0x4,Infinitex+0.3);
            setFloat(RadSort,Infinitey+1.62);
            setFloat(RadSort+0x4,Infinitez+0.3);
            if(getFloat(Lock+Hurt)>0){
            setFloat(Self+Posx,Infinitex);
            setFloat(Self+Posx2,Infinitex+0.6);
            setFloat(Self+Posy,Infinitey);
            setFloat(Self+Posy2,Infinitey+1.8);
            setFloat(Self+Posz,Infinitez);
            setFloat(Self+Posz2,Infinitez+0.6);
            Gn[4]=0;
            }
            }
            
    }
	}}
JNIEXPORT jint JNICALL JNI_OnLoad(JavaVM * vm, void *reserved){
    injectModule();
	setDword(so+Killrepair,KillNum1);//杀戮模型
	setDword(so+KillDown1,KillNum1);//杀戮不减速
	setDword(so+KillDown2,KillNum1);//杀戮不减速
	setDword(so+KillSize1,KillNum2);//杀戮大小
	setDword(so+KillSize2,KillNum3);//杀戮大小
	setDword(so+KillSize3,KillNum4);//杀戮大小
	setDword(so+KillSize4,KillNum5);//杀戮大小
	setDword(so+Killhs,KillNum6);//杀戮挥手
	Strat();
    pthread_create(&Circuit, NULL, Func, NULL);
    pthread_create(&Circuit2, NULL,Move,NULL);
    pthread_create(&MContext, NULL,GodModeArgs,NULL);
    pthread_create(&Mod, NULL,Other,NULL);
    pthread_create(&Mod1, NULL,Killaura,NULL);
    pthread_create(&YInf, NULL,Yaura,NULL);
    pthread_create(&Pla, NULL,ReservegetPlayer,NULL);
	return JNI_VERSION_1_6;
}
void Strat(){
	if(getDword(Self)!=Play){
		GetPointer();
	}
}
