package com.relax.vapev4.library;
import java.io.File;
import java.util.Properties;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.FileOutputStream;
import android.util.Log;
/*这里是写配置的*/
public class Deploy {
//添加
    public static final String path="/storage/emulated/0/Relax/temp.properties";
    public static Properties properties= new Properties();
    static{
        FileInputStream fis=null;
        try{
            File f=new File(path).getParentFile();
            if(!f.isDirectory())f.mkdirs();
            fis=new FileInputStream(path);
            properties.load(fis);
        }catch(Throwable ignore){Log.e("loadProperty",ignore.toString());}finally{if(fis!=null)try{fis.close();}catch(Throwable e){}}
    }
    static{
        FileInputStream fis=null;
        try{
            File f2=new File(path);
            File f=f2.getParentFile();
            if(!f.isDirectory())f.mkdirs();
            if(!f2.isFile())f2.createNewFile();
            fis=new FileInputStream(path);
            properties.load(fis);
        }catch(Throwable ignore){Log.e("loadProperty",ignore.toString());}finally{if(fis!=null)try{fis.close();}catch(Throwable e){}}
    }
    /*增加配置*/
    /*a是配置名b是变量*/
    public static void deploy(String a, String b) {
        properties.setProperty(a, b);
        FileOutputStream fos=null;
        try {
            fos=new FileOutputStream(path);
            properties.store(fos, "by:ThunderGod");
        } catch (IOException e) {} finally {if (fos != null)try{fos.close();}catch (Throwable e){}
        }

    }
    /*读取配置中的int值*/
    public static int getPropertyint(String c) {
        // Log.d("s",e); 
        return Integer.valueOf(getPropertyString(c));
        //int value=value1;
    }
    /*读取配置中的String值*/
    public static String getPropertyString(String c) {
        return properties.getProperty(c);
    }
    /*读取配置中的布尔值*/
    public static boolean getPropertyboolean(String c) {
        return Boolean.valueOf(getPropertyString(c));
    }
    /*以上所有的c为配置的名*/
}
