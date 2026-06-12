package com.eileen.hacker;
import android.content.Context;
import android.graphics.Typeface;

/**
 * @Author 𝘽𝙮·艾琳 - 手游逆向交流群101640882
 * @Date 2023/08/19 18:26
 * @Describe 资源集合
 */
public class Resource {

    // 字体
    public static Typeface typeface2;
    public static Typeface typeface3;
    public static Typeface typefaceXS;
    // 音频
    public static SoundEffectPlayer audio;
    // 弹窗
    public static DiaLogs dialog;
    // 标识
    public static boolean isDaytime;

    //加载资源
    public static void initResource(Context mContext) {
        try {


            // 加载现实世界昼夜标识
            isDaytime = TimeTool.isDaytime();

            // 加载字体
            typeface2 = Typeface.createFromAsset(mContext.getAssets(), "zt2.ttf");
            typeface3 = Typeface.createFromAsset(mContext.getAssets(), "zt3.ttf");
            typefaceXS = Typeface.createFromAsset(mContext.getAssets(), "xs.ttf");

            // 加载音频
            audio = SoundEffectPlayer.getAudio(mContext);

            // 加载弹窗
            dialog = DiaLogs.getDiaLog(mContext);


        } catch (Exception e) {

        }
    }


}
