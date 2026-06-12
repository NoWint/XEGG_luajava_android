#include "Pointer.h"//引用库
JNIEXPORT int JNICALL Java_load_tencent_lib_HUB_JNICallBack_setTP(JNIEnv * env,jclass jclz,int x,int y,int z)
{
setFloat(Self+Posx,x);
setFloat(Self+Posx2,x+0.6);
setFloat(Self+Posx3,x+0.3);
setFloat(Self+Posy,y);
setFloat(Self+Posy2,y+1.8);
setFloat(Self+Posy3,y+1.62);
setFloat(Self+Posz,z);
setFloat(Self+Posz2,z+0.6);
setFloat(Self+Posz3,z+0.3);
}
JNIEXPORT void JNICALL Java_load_tencent_lib_HUB_JNICallBack_setHitbox(JNIEnv * env,jclass jclz)
{
Set(0);
}
JNIEXPORT void JNICALL Java_load_tencent_lib_HUB_JNICallBack_setFly(JNIEnv * env,jclass jclz)
{
Set(1);
}
JNIEXPORT void JNICALL Java_load_tencent_lib_HUB_JNICallBack_setAir(JNIEnv * env,jclass jclz)
{
Set(2);
}
JNIEXPORT void JNICALL Java_load_tencent_lib_HUB_JNICallBack_setKillaura(JNIEnv * env,jclass jclz)
{
Set(3);
}
JNIEXPORT void JNICALL Java_load_tencent_lib_HUB_JNICallBack_setKillauraCPS(JNIEnv * env,jclass jclz,int cps)
{
KillauraCPS=cps;
}
JNIEXPORT void JNICALL Java_load_tencent_lib_HUB_JNICallBack_setHitboxx(JNIEnv * env,jclass jclz,int x)
{
Hitx=x;
}
JNIEXPORT void JNICALL Java_load_tencent_lib_HUB_JNICallBack_setHitboxy(JNIEnv * env,jclass jclz,int y)
{
Hitboxy=y;
}
JNIEXPORT void JNICALL Java_load_tencent_lib_HUB_JNICallBack_setInfiniteAura(JNIEnv * env,jclass jclz)
{
Set(4);
}
JNIEXPORT void JNICALL Java_load_tencent_lib_HUB_JNICallBack_setRide(JNIEnv * env,jclass jclz)
{
Set(5);
}
JNIEXPORT void JNICALL Java_load_tencent_lib_HUB_JNICallBack_setLockBack(JNIEnv * env,jclass jclz)
{
Set(6);
}
JNIEXPORT void JNICALL Java_load_tencent_lib_HUB_JNICallBack_setSurround(JNIEnv * env,jclass jclz)
{
Set(7);
}
JNIEXPORT void JNICALL Java_load_tencent_lib_HUB_JNICallBack_setAimBat(JNIEnv * env,jclass jclz)
{
Set(8);
}
JNIEXPORT void JNICALL Java_load_tencent_lib_HUB_JNICallBack_setFightBack(JNIEnv * env,jclass jclz)
{
Set(9);
}
JNIEXPORT void JNICALL Java_load_tencent_lib_HUB_JNICallBack_setBhop(JNIEnv * env,jclass jclz)
{
Set(10);
}
JNIEXPORT void JNICALL Java_load_tencent_lib_HUB_JNICallBack_setAtom(JNIEnv * env,jclass jclz)
{
Set(11);
}
JNIEXPORT void JNICALL Java_load_tencent_lib_HUB_JNICallBack_setRender(JNIEnv * env,jclass jclz)
{
Set(12);
}
JNIEXPORT void JNICALL Java_load_tencent_lib_HUB_JNICallBack_setSpiderweb(JNIEnv * env,jclass jclz)
{
Set(13);
}
JNIEXPORT void JNICALL Java_load_tencent_lib_HUB_JNICallBack_setTread(JNIEnv * env,jclass jclz)
{
int Myx,Myy,Myz;
Myx=getFloat(Self+Posx);
Myy=getFloat(Self+Posy);
Myz=getFloat(Self+Posz);
if(getDword(Villager)==Biology){
setFloat(Villager+Posx,Myx);
setFloat(Villager+Posx2,Myx);
setFloat(Villager+Posy,Myy);
setFloat(Villager+Posz,Myz);
setFloat(Villager+Posz2,Myz);
attack();
}
}
JNIEXPORT void JNICALL Java_load_tencent_lib_HUB_JNICallBack_setJekBack(JNIEnv * env,jclass jclz)
{
Set(14);
}
JNIEXPORT void JNICALL Java_load_tencent_lib_HUB_JNICallBack_setFallReturn(JNIEnv * env,jclass jclz)
{
Set(15);
}
JNIEXPORT void JNICALL Java_load_tencent_lib_HUB_JNICallBack_setGameMode(JNIEnv * env,jclass jclz)
{
if(Raido[0]==0){
Raido[0]=1;
setDword(Self+Create,1);
}else{
Raido[0]=0;
setDword(Self+Create,0);
}
}
JNIEXPORT void JNICALL Java_load_tencent_lib_HUB_JNICallBack_setFlySpeed(JNIEnv * env,jclass jclz)
{
if(Raido[1]==0){
Raido[1]=1;
setFloat(Self+FlySpeed,0.15);
}else{
Raido[1]=0;
setFloat(Self+FlySpeed,0.05);
}
}
JNIEXPORT void JNICALL Java_load_tencent_lib_HUB_JNICallBack_setScaffold(JNIEnv * env,jclass jclz)
{
Scy=floor(getFloat(Self+Posy))-1;
Set(16);
}
JNIEXPORT void JNICALL Java_load_tencent_lib_HUB_JNICallBack_setThrough(JNIEnv * env,jclass jclz)
{
if(Raido[2]==0){
Raido[2]=1;
setDword(Self+Through,1);
}else{
Raido[2]=0;
setDword(Self+Through,0);
}
}
JNIEXPORT void JNICALL Java_load_tencent_lib_HUB_JNICallBack_setCrawl(JNIEnv * env,jclass jclz)
{
Set(17);
}
JNIEXPORT void JNICALL Java_load_tencent_lib_HUB_JNICallBack_setFlyAura(JNIEnv * env,jclass jclz)
{
if(Raido[3]==0){
Raido[3]=1;
setDword(Self+FlyAura,1);
}else{
Raido[3]=0;
setDword(Self+FlyAura,0);
}
}
JNIEXPORT void JNICALL Java_load_tencent_lib_HUB_JNICallBack_setHightJump(JNIEnv * env,jclass jclz)
{
if(Raido[4]==0){
Raido[4]=1;
setFloat(Self+Hight,1);
}else{
Raido[4]=0;
setFloat(Self+Hight,0.42);
}
}
JNIEXPORT void JNICALL Java_load_tencent_lib_HUB_JNICallBack_setFarJump(JNIEnv * env,jclass jclz)
{
Set(18);
}
JNIEXPORT void JNICALL Java_load_tencent_lib_HUB_JNICallBack_setGodMode(JNIEnv * env,jclass jclz)
{
Set(19);
}
JNIEXPORT void JNICALL Java_load_tencent_lib_HUB_JNICallBack_setClickTP(JNIEnv * env,jclass jclz)
{
Set(20);
}
JNIEXPORT void JNICALL Java_load_tencent_lib_HUB_JNICallBack_setCallBlock(JNIEnv * env,jclass jclz)
{
Set(21);
}
JNIEXPORT void JNICALL Java_load_tencent_lib_HUB_JNICallBack_setLockxyx(JNIEnv * env,jclass jclz)
{
Set(22);
}
JNIEXPORT void JNICALL Java_load_tencent_lib_HUB_JNICallBack_setLockHP(JNIEnv * env,jclass jclz)
{
Set(23);
}
JNIEXPORT void JNICALL Java_load_tencent_lib_HUB_JNICallBack_setWaterBhop(JNIEnv * env,jclass jclz)
{
Set(24);
}
JNIEXPORT void JNICALL Java_load_tencent_lib_HUB_JNICallBack_setExplode(JNIEnv * env,jclass jclz)
{
Set(25);
}
JNIEXPORT void JNICALL Java_load_tencent_lib_HUB_JNICallBack_setLockY(JNIEnv * env,jclass jclz)
{
Set(26);
}
JNIEXPORT void JNICALL Java_load_tencent_lib_HUB_JNICallBack_setdisable(JNIEnv * env,jclass jclz)
{
Set(27);
}
JNIEXPORT void JNICALL Java_load_tencent_lib_HUB_JNICallBack_setblink(JNIEnv * env,jclass jclz)
{
Set(28);
if(Gn[28]==1){
setDword(Self+Blink,0);
}else{
setDword(Self+Blink,256);
}
}
JNIEXPORT void JNICALL Java_load_tencent_lib_HUB_JNICallBack_setOnPos(JNIEnv * env,jclass jclz)
{
Set(29);
if(Gn[29]==1){
setDword(PosAddr,1);
}else{
setDword(PosAddr,0);
}
}
JNIEXPORT void JNICALL Java_load_tencent_lib_HUB_JNICallBack_setFucker(JNIEnv * env,jclass jclz)
{
MyBedx=getDword(Quasi-4);
MyBedy=getDword(Quasi);
MyBedz=getDword(Quasi+4);
across_pos[0]=(-MyBedx);
across_pos[1]=(-MyBedz);
left_pos[0]=(-MyBedz);
left_pos[1]=(MyBedx);
right_pos[0]=(MyBedz);
right_pos[1]=(-MyBedx);
y_pos=MyBedy;
Set(30);
}
JNIEXPORT void JNICALL Java_load_tencent_lib_HUB_JNICallBack_setInfinitYAura(JNIEnv * env,jclass jclz)
{
Set(31);
}
JNIEXPORT void JNICALL Java_load_tencent_lib_HUB_JNICallBack_setAimAssets(JNIEnv * env,jclass jclz)
{
Set(32);
}
JNIEXPORT void JNICALL Java_load_tencent_lib_HUB_JNICallBack_setVillager(JNIEnv * env,jclass jclz)
{
Set(33);
}
JNIEXPORT void JNICALL Java_load_tencent_lib_HUB_JNICallBack_setInfiniY(JNIEnv * env,jclass jclz,int y)
{
ydistance=y;
}
JNIEXPORT void JNICALL Java_load_tencent_lib_HUB_JNICallBack_setInfiniYCPS(JNIEnv * env,jclass jclz,int cps)
{
YdisCPS=cps;
}
JNIEXPORT void JNICALL Java_load_tencent_lib_HUB_JNICallBack_setTimer(JNIEnv * env,jclass jclz,int Speed)
{
setFloat(Timer,20*Speed);
}
JNIEXPORT float JNICALL Java_load_tencent_lib_HUB_JNICallBack_distance(JNIEnv * env,jclass jclz)
{
return distance;
}
JNIEXPORT float JNICALL Java_load_tencent_lib_HUB_JNICallBack_HP(JNIEnv * env,jclass jclz)
{
float xl=getFloat(lsp(lsp(lsp(lsp(Lock+0x6C)+0x0)+0x8)+0x0)+0xA4);
return xl;
}
JNIEXPORT void JNICALL Java_load_tencent_lib_HUB_JNICallBack_setScaffoldY(JNIEnv * env,jclass jclz,bool Y)
{
LockScY=Y;
}
JNIEXPORT jboolean JNICALL Java_load_tencent_lib_HUB_JNICallBack_Attack(JNIEnv * env,jclass jclz)
{
if(getDword(Self+Hand)==1){
return true;
}else if(getDword(Self+Hand)==0){
return false;
}
}
