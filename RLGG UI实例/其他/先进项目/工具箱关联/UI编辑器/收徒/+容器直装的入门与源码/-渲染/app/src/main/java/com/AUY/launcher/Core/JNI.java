package com.AUY.launcher.Core;

public class JNI {
    static {
        System.loadLibrary("ECmod");
    }
    public static native String scsj(); //scsj
public static native String backcall(int a); //初始化先执行这个

public static native String jl(); //激流暂时没用

public static native String as(); //暗杀

public static native String as1(); //暗杀模式骑人

public static native String as2(); //暗杀模式锁背

public static native String as3(); //暗杀模式环绕

public static native String zm(); //自瞄

public static native String zm1(); //自瞄模式第三人称

public static native String zm2(); //自瞄模式第一人称

public static native String db(); //暗杀刀爆模式

public static native String ac(); //AC

public static native String cs(); //创手

public static native String ty(); //逃逸暂时没用

public static native String rcps(); //绕cps暂时没用

public static native String hitbox(); //碰撞箱

public static native String tpplayer(); //tp玩家





//以上为攻击区

public static native String yz(); //原子运动

public static native String tzt(); //兔子跳

public static native String fly(); //飞行

public static native String air(); //踏空

public static native String cq(); //穿墙

public static native String fjt(); //反击退

public static native String pq(); //爬墙

public static native String yt(); //远跳

public static native String gt(); //高跳

public static native String js(); //高跳

//以上为移动区

public static native String bystart(); //备用初始化

public static native String bystart2(); //备用初始化2

public static native String bystart3(); //备用初始化3

public static native String bystart4(); //备用初始化4

public static native String bystart5(); //备用初始化5

//以上为初始化区

public static native void aszd(int a); //暗杀最大速度

public static native void hrjl(int a); //环绕距离

public static native void hrsd(int a); //环绕速度

public static native void yzsd(int a); //原子速度

public static native void tzsd(int a); //兔子速度

public static native void pzxx(int a); //碰撞箱x

public static native void pzxy(int a); //碰撞箱y

public static native void gtgd(int a); //高跳高度

public static native void ytcd(int a); //远跳长度

public static native void penqsd(int a); //喷气背包速度

public static native void ccsd(int a); //冲刺速度

public static native void jssd(int a); //加速速度

public static native void asmode(int a); //暗杀模式

public static native void zmmode(int a); //自瞄模式
}
