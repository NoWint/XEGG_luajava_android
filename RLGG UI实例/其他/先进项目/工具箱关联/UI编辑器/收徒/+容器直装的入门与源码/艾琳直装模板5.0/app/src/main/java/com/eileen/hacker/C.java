package com.eileen.hacker;

/**
 * @Author 𝘽𝙮·艾琳 - 手游逆向学习QQ交流群101640882
 * @Date 2023/10/18 14:47
 * @Describe 内存修改方法
 */
public class C {

    public static final String TAG = "C_Method";

    //以下是内存类型 (最好不要修改它的值！)
    public static int  RANGE_ALL = 0;//全部内存
    public static int  RANGE_C_HEAP = 2;//ch内存
    public static int  RANGE_C_ALLOC = 3;//ca内存
    public static int  RANGE_ANONYMOUS = 7;//a内存
    public static int  RANGE_VIDEO = 11;//v内存
    public static int  TYPE_DWORD = 1;//d类型
    public static int  TYPE_FLOAT = 2;//f类型
    public static int  TYPE_DOUBLE = 3;//e类型

    //自动加载本地库
    static {
        System.loadLibrary("Modification");
    }

    public static native void clearResult();//清空搜索结果
    public static native void setRange(int memory);//设置内存范围
    public static native void setPackageName(String packageName);//设置包名
    public static native void RangeMemorySearch(String value,int type);//内存搜索
    public static native void MemoryOffset(String value,int type,long offset);//内存偏移搜索
    public static native void MemoryWrite(String value,int type,long offset);//内存写入
    
    public static native int getPackageNamePid(String packageName)//获取包名pid (pid=进程ID)
    public static native int getResultCount();//获取搜索结果数量
    public static native void startFreeze();//开启冻结线程
    public static native void stopFreeze();//关闭冻结线程

}
