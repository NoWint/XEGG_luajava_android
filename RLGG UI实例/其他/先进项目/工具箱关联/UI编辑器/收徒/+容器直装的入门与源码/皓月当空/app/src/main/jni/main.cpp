#include <list>
#include <vector>
#include <string.h>
#include <pthread.h>
#include <cstring>
#include <jni.h>
#include <unistd.h>
#include <fstream>
#include <iostream>
#include <string>
#include <pthread.h>
#include <jni.h>
#include <Includes/Utils.h>
#include <Substrate/SubstrateHook.h>
#include "KittyMemory/MemoryPatch.h"
#include "KittyMemory/MemoryHack.h"
#include <Icon.h>
#include <Chams.h>


//     #########
//    ##	   ##
//	  #			
//	  #
//	  #			
//	  ##	   ##
//	   #########

extern "C" {
const char *libName = "libil2cpp.so";

// ---------- 偏移 ---------- //

namespace Offsets{
	enum Ofssets {
		血量= 0x2C6797C,
		护甲= 0x2C67024,
		蓝量= 0x2C67FB4,
		攻速= 0x2C61404,
		子弹速度= 0x2C695F8,
		移速= 0x2C677E0,
		多持= 0x1546EBC,
		自瞄= 0x2C67C34,
		技能= 0x2C68BF8,
		无怪= 0x162E538,
		不关门= 0x1E3C080,
		无墙体= 0x242A70C,
		删房间= 0x1A21FE8,
		无敌= 0xF55474,
		怪物无视= 0x19D69A4,
		伤害= 0x1E50854,
		自动攻击= 0xF1C278,
		无限试炼= 0x19D6C10,
		无限蓝币= 0x1E33344,
		无限鱼干= 0x1D89614,
		无限扭蛋= 0x1E32E44,
		初始金币= 0x1E33E84,
		激光= 0x2155CB0,
		激光大小= 0x215176C,
		子弹大小= 0x2CD7A10,//更新
	};
}

//---------------结构-----------------//
struct My_Patches {MemoryPatch 无怪, 不关门, 无墙体, 删房间;} hexPatches;
//---------------开关----------------//
bool wu怪 = false;
bool bu关门 = false;
bool wu墙体 = false;
bool shan房间 = false;
bool 无敌 = false;
bool 血量 = false;
bool 护甲 = false;
bool 蓝量 = false;
bool 自瞄 = false;
bool 技能 = false;
bool 怪物无视 = false;
bool 自动攻击 = false;
bool 无限试炼 = false;
bool 无限蓝币 = false;
bool 无限鱼干 = false;
bool 无限扭蛋 = false;
bool 初始金币 = false;
bool 激光 = false;
int 攻速 = 1;
int 子弹速度 = 1;
int 移速 = 6;
int 多持 = 2;
int 伤害 = 0;
int 激光大小 = 1;
int 子弹大小 = 1;

std::string to_string(int param)
{
    std::string str = "";
    for(str = ""; param ; param /= 10)
        str += (char)('0' + param % 10);
    reverse(str.begin(), str.end());
	if (str == "") str = "0";
    return str;
}

std::string newPage (std::string name, std::string icon) {
	return ("NEWPAGE`" + name + "`" + icon);
}
std::string newText (int pageid, int featureid, std::string text) {
	return ("TEXT`" + to_string(pageid) + "`" + to_string(pageid) + "`" + text);
}
std::string newLink (int pageid, std::string text, std::string link) {
	return ("LINK`" + to_string(pageid) + "`" + text + "`" + link);
}	
std::string newSwitch (int pageid, int featureid, std::string text) {
	return ("SWITCH`" + to_string(pageid) + "`" + to_string(featureid) + "`" + text);
}
std::string newSlider (int pageid, int featureid, std::string text, int min, int max, int progress) {
	return ("SLIDER`" + to_string(pageid) + "`" + to_string(featureid) + "`" + text + "`" + to_string(min) + "`" + to_string(max) + "`" + to_string(progress));
}
std::string newInputStr (int pageid, int featureid, std::string text ) {
	return ("INPUT_STR`" + to_string(pageid) + "`" + to_string(featureid) + "`" + text);
}

//-------------------钩子----------------------//

int (*old_HP)(void *instance);//血量P
int HP(void *instance) {
    if (instance != NULL && 血量) {
        return 1000;
    }
    return old_HP(instance);
}
int (*old_EP)(void *instance);//护甲
int EP(void *instance) {
    if (instance != NULL && 护甲) {
        return 1000;
    }
    return old_EP(instance);
}
int (*old_MP)(void *instance);//蓝量
int MP(void *instance) {
    if (instance != NULL && 蓝量) {
        return 1000;
    }
    return old_MP(instance);
}
float (*old_ATKSPEED)(void *instance);//攻速
float ATKSPEED(void *instance) {
    if (instance != NULL && 攻速 >= 1) {
        return (float) 攻速;
    }
    return old_ATKSPEED(instance);
}
float (*old_ZDSPEED)(void *instance);//子弹速度
float ZDSPEED(void *instance) {
    if (instance != NULL && 子弹速度 >= 1) {
        return (float) 子弹速度;
    }
    return old_ZDSPEED(instance);
}
float (*old_SPEED)(void *instance);//攻速
float SPEED(void *instance) {
    if (instance != NULL && 移速 >= 1) {
        return (float) 移速;
    }
    return old_SPEED(instance);
}

int (*old_DUOCHI)(void *instance);//多持
int DUOCHI(void *instance) {
    if (instance != NULL && 多持 >= 1) {
        return (int) 多持;
    }
    return old_DUOCHI(instance);
}
float (*old_ZM)(void *instance);//自瞄
float ZM(void *instance) {
    if (instance != NULL && 自瞄) {
        return 0;
    }
    return old_ZM(instance);
}
bool (*old_JN)(void *instance);//无限技能
bool JN(void *instance) {
    if (instance != NULL && 技能) {
        return 1;
    }
    return old_JN(instance);
}
bool (*old_WD)(void *instance);//无敌
bool WD(void *instance) {
    if (instance != NULL && 无敌) {
        return 1;
    }
    return old_WD(instance);
}
bool (*old_WS)(void *instance);//怪物无视
bool WS(void *instance) {
    if (instance != NULL && 怪物无视) {
        return 1;
    }
    return old_WS(instance);
}
int (*old_ATTACK)(void *instance);//伤害
int ATTACK(void *instance) {
    if (instance != NULL && 伤害 >= 1) {
        return (int) 伤害;
    }
    return old_ATTACK(instance);
}
bool (*old_GJ)(void *instance);//自动攻击
bool GJ(void *instance) {
    if (instance != NULL && 自动攻击) {
        return 1;
    }
    return old_GJ(instance);
}
bool (*old_SL)(void *instance);//无限试炼
bool SL(void *instance) {
    if (instance != NULL && 无限试炼) {
        return 0;
    }
    return old_SL(instance);
}
int (*old_GEM)(void *instance);//蓝币
int GEM(void *instance) {
    if (instance != NULL && 无限蓝币) {
        return 366636361000;
    }
    return old_GEM(instance);
}
int (*old_YG)(void *instance);//鱼干
int YG(void *instance) {
    if (instance != NULL && 无限鱼干) {
        return 366636361000;
    }
    return old_YG(instance);
}
int (*old_ND)(void *instance);//扭蛋
int ND(void *instance) {
    if (instance != NULL && 无限扭蛋) {
        return 366636361000;
    }
    return old_ND(instance);
}
int (*old_GOLD)(void *instance);//初始金币
int GOLD(void *instance) {
    if (instance != NULL && 初始金币) {
        return 361000;
    }
    return old_GOLD(instance);
}
bool (*old_JG)(void *instance);//激光
bool JG(void *instance) {
    if (instance != NULL && 激光) {
        return 1;
    }
    return old_JG(instance);
}
void (*old_JGDX)(void *instance);//激光大小
void JGDX(void *instance) {
    if (instance != NULL) {
        if (激光大小 >= 1) {
            *(float *) ((uint32_t) instance + 0x310) = 激光大小;
        }
    }
    return old_JGDX(instance);      
}



/*void (*old_Update)(void *instance);
void Update(void *instance){
    if(instance != NULL) {
    void *AccessCharacterController = *(void**)((uint64_t)instance + 0x32); // 使用该字段并创建一个指针来访问 CharacterController
    if(AccessCharacterController != NULL) // 由于我们使用字段0x32的指针来访问 CharacterController 类，因此我们必须检查它是否不为 null。
    {
    bool IsBot = *(bool*)((uint64_t)AccessCharacterController + 0x24); // 使用它来访问类 CharacterController 中的字段 isBot
    if(!IsBot) // 检查它是否不是机器人
    {
     return 99999; // 现在只有你得到 99999 弹药
    }
    }
    }
    return old_Update(instance); // 返回机器人的原始值
}
*/
void (*old_Update)(void *instance);
void Update(void *instance) {
if(instance != NULL ) {
void *DelayBulletCreator = *(void**)((uint64_t)instance + 0x144);
if(DelayBulletCreator != NULL){
if(子弹大小 >=1)
*(float *) ((uint64_t) DelayBulletCreator + 0x10) = 子弹大小;
    }
  }

  return old_Update(instance);
}



JNIEXPORT jobjectArray JNICALL Java_il2cpp_Main_getFeatures(JNIEnv *env, jobject activityObject) {
	jobjectArray ret;
	const char *features[] = {
		newPage("人物类", "icon1.png").c_str(),
		newPage("速度类", "icon2.png").c_str(),
		newPage("功能类", "icon3.png").c_str(),
		newPage("资源类", "icon4.png").c_str(),
		newPage("机甲类", "icon5.png").c_str(),	
		newPage("气宗", "icon6.png").c_str(),
		// 人物类 0
		newText(0, 0, "菜单").c_str(),
		newSwitch(0, 1, "锁定血量").c_str(),
		newSwitch(0, 2, "锁定护甲").c_str(),
		newSwitch(0, 3, "锁定蓝量").c_str(),
		newSwitch(0, 14, "人物无敌").c_str(),
		newSwitch(0, 15, "怪物无视").c_str(),
		// 速度类 1		
		newText(1, 0, "菜单").c_str(),
		newSlider(1, 4, "攻击速度",1,50,1).c_str(),
		newSlider(1, 5, "子弹速度",1,10,1).c_str(),
		newSlider(1, 6, "移动速度",6,50,6).c_str(),
		newSlider(1, 7, "武器多持",1,100,1).c_str(),
		newSlider(1, 16, "武器伤害",1,10000,1).c_str(),
	    //功能类2
	    newText(2, 0, "菜单").c_str(),
	    newSwitch(2, 8, "自瞄偏差").c_str(),
	    newSwitch(2, 9, "无限技能").c_str(),
	    newSwitch(2, 10, "全图无怪<大厅开启>").c_str(),
	    newSwitch(2, 11, "不会关门").c_str(),
	    newSwitch(2, 12, "无墙体").c_str(),
	    newSwitch(2, 13, "删除房间<大厅开启>").c_str(),
	    newSwitch(2, 17, "自动攻击").c_str(),
	    //资源类3
		newText(3, 0, "菜单").c_str(),
	    newSwitch(3, 18, "无限试炼").c_str(),
	    newSwitch(3, 19, "无限蓝币").c_str(),
	    newSwitch(3, 20, "无限鱼干").c_str(),
	    newSwitch(3, 21, "无限扭蛋").c_str(),
	    newSwitch(3, 22, "初始金币<进入游戏再退出>").c_str(),
	    //机甲类4
	    newText(4, 0, "机械狂潮部分，累了暂时不写\n哪天心情好了再找功能更新!\n有什么功能想法找我提，能实现尽量实现!").c_str(),
	    newText(4, 0, "有会画像素图的小伙伴有兴趣想加入自己做的皮肤联系我!").c_str(),
	    newText(4, 0, "游侠的原始皮肤我已经改为ikun了，有兴趣的小黑子去做个🏀\n看看厉不厉害你坤哥。").c_str(),
	    newLink(4, "支持我（这是原作的支持链接）", "https://afdian.net/a/zyh143/plan").c_str(),
	    //气宗5
	    newText(5, 0, "菜单").c_str(),
	    newSwitch(5, 23, "气功波").c_str(),
	    newSlider(5, 24, "气功波大小",1,10,1).c_str(),
	    newSlider(5, 25, "子弹大小",1,10,1).c_str(),
	    
	};

	int Total_Feature = (sizeof features / sizeof features[0]); 
	ret = (jobjectArray) env->NewObjectArray(Total_Feature, env->FindClass("java/lang/String"), env->NewStringUTF(""));
	int i;
	for (i = 0; i < Total_Feature; i++)
		env->SetObjectArrayElement(ret, i, env->NewStringUTF(features[i]));
	return (ret);
} 

void hexChange(bool &var, MemoryPatch &patch) {
	var = !var;
	if (var) {
		patch.Modify();
	} else {
		patch.Restore();
	}
}

JNIEXPORT void JNICALL Java_il2cpp_Main_onSwitchTap(JNIEnv *env, jobject activityObject, jint page, jint feature, jint checked, jboolean boolean, jstring str) {
    // 开关 //
	switch (feature) {
		case 1:
			血量 =! 血量;
			break;
		case 2:
            护甲 =! 护甲;
			break;
		case 3:
			蓝量 =! 蓝量;
			break;
		case 8:
		    自瞄 =! 自瞄;
			break;
		case 9:
            技能 =! 技能;
			break;
		case 10:
			hexChange(wu怪, hexPatches.无怪);
			hexChange(bu关门, hexPatches.不关门);
			break;
		case 11:
			hexChange(bu关门, hexPatches.不关门);
			break;
	    case 12:
	        hexChange(wu墙体, hexPatches.无墙体);
	        break;
	    case 13:
	        hexChange(shan房间, hexPatches.删房间);
	        break;
	    case 14:
            无敌 =! 无敌;
			break;
        case 15:
            怪物无视 =! 怪物无视;
			break;
		case 17:
            自动攻击 =! 自动攻击;
			break;
        case 18:
            无限试炼 =! 无限试炼;
			break;
	    case 19:
            无限蓝币 =! 无限蓝币;
			break;
		case 20:
            无限鱼干 =! 无限鱼干;
			break;
		case 21:
            无限扭蛋 =! 无限扭蛋;
			break;
		case 22:
            初始金币 =! 初始金币;
			break;
		case 23:
            激光 =! 激光;
			break;
	}
}

JNIEXPORT void JNICALL Java_il2cpp_Main_onSliderChange(JNIEnv *env, jobject activityObject, jint page, jint feature, jint value) {
    // 滑块 //
	switch (feature) {
		case 4:
			攻速 = value;
			break;
		case 5:
	        子弹速度 = value;
			break;
		case 6:
		    移速 = value;
			break;
        case 7:
            多持 = value;
            break;
	    case 16:
            伤害 = value;
            break;
        case 24:
            激光大小 = value;
            break;
        case 25:
            子弹大小 = value;
            break;
	}
}
void *hack_thread(void *) {
    
    ProcMap il2cppMap;
    do {
        il2cppMap = KittyMemory::getLibraryMap(libName);
        sleep(1);
    } while (!isLibraryLoaded(libName) && mlovinit());
		sleep(2);
	
    // ---------- Hook ---------- //
    
    MSHookFunction((void *) getAbsoluteAddress(libName, Offsets::血量), (void *) HP, (void **) &old_HP);	        
    MSHookFunction((void *) getAbsoluteAddress(libName, Offsets::护甲), (void *) EP, (void **) &old_EP);	
    MSHookFunction((void *) getAbsoluteAddress(libName, Offsets::蓝量), (void *) MP, (void **) &old_MP);	
    MSHookFunction((void *) getAbsoluteAddress(libName, Offsets::攻速), (void *) ATKSPEED, (void **) &old_ATKSPEED);	
    MSHookFunction((void *) getAbsoluteAddress(libName, Offsets::子弹速度), (void *) ZDSPEED, (void **) &old_ZDSPEED);	
    MSHookFunction((void *) getAbsoluteAddress(libName, Offsets::移速), (void *) SPEED, (void **) &old_SPEED);	
    MSHookFunction((void *) getAbsoluteAddress(libName, Offsets::多持), (void *) DUOCHI, (void **) &old_DUOCHI);	
    MSHookFunction((void *) getAbsoluteAddress(libName, Offsets::自瞄), (void *) ZM, (void **) &old_ZM);	
    MSHookFunction((void *) getAbsoluteAddress(libName, Offsets::技能), (void *) JN, (void **) &old_JN);	
    hexPatches.无怪 = MemoryPatch::createWithHex("libil2cpp.so", Offsets::无怪, "1E FF 2F E1");
    hexPatches.不关门 = MemoryPatch::createWithHex("libil2cpp.so", Offsets::不关门, "1E FF 2F E1");
    hexPatches.无墙体 = MemoryPatch::createWithHex("libil2cpp.so", Offsets::无墙体, "1E FF 2F E1");
    hexPatches.删房间 = MemoryPatch::createWithHex("libil2cpp.so", Offsets::删房间, "1E FF 2F E1");
    MSHookFunction((void *) getAbsoluteAddress(libName, Offsets::无敌), (void *) WD, (void **) &old_WD);	
    MSHookFunction((void *) getAbsoluteAddress(libName, Offsets::怪物无视), (void *) WS, (void **) &old_WS);	
    MSHookFunction((void *) getAbsoluteAddress(libName, Offsets::伤害), (void *) ATTACK, (void **) &old_ATTACK);	
    MSHookFunction((void *) getAbsoluteAddress(libName, Offsets::自动攻击), (void *) GJ, (void **) &old_GJ);	
    MSHookFunction((void *) getAbsoluteAddress(libName, Offsets::无限试炼), (void *) SL, (void **) &old_SL);	
    MSHookFunction((void *) getAbsoluteAddress(libName, Offsets::无限蓝币), (void *) GEM, (void **) &old_GEM);	
    MSHookFunction((void *) getAbsoluteAddress(libName, Offsets::无限鱼干), (void *) YG, (void **) &old_YG);	
    MSHookFunction((void *) getAbsoluteAddress(libName, Offsets::无限扭蛋), (void *) ND, (void **) &old_ND);	
    MSHookFunction((void *) getAbsoluteAddress(libName, Offsets::初始金币), (void *) GOLD, (void **) &old_GOLD);	
    MSHookFunction((void *) getAbsoluteAddress(libName, Offsets::激光), (void *) JG, (void **) &old_JG);	
    MSHookFunction((void *) getAbsoluteAddress(libName, Offsets::激光大小), (void *) JGDX, (void **) &old_JGDX);	
    MemoryPatch::createWithHex("libil2cpp.so", 0x2140288 + 116, "00 F0 20 E3", 4).Modify(); //1.90
    MSHookFunction((void *) getAbsoluteAddress(libName, Offsets::子弹大小), (void *) Update, (void **) &old_Update);	
    
	//void (*AddRuby)(void *instance) = (void (*)(void*))reBase(address);括号内没有函数的viod
    return NULL;
}

JNIEXPORT jint JNICALL
JNI_OnLoad(JavaVM *vm, void *reserved) {
    JNIEnv *globalEnv;
    vm->GetEnv((void **) &globalEnv, JNI_VERSION_1_6);

    pthread_t ptid;
    pthread_create(&ptid, NULL, hack_thread, NULL);

    return JNI_VERSION_1_6;
}

JNIEXPORT void JNICALL
JNI_OnUnload(JavaVM *vm, void *reserved) {}
}
