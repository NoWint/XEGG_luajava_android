package com.eileen.hacker;

import android.icu.text.SimpleDateFormat;
import android.icu.util.Calendar;
import android.os.Handler;
import android.widget.TextView;
import java.util.Date;

/**
 * @Author 𝘽𝙮·艾琳 - 手游逆向交流群101640882
 * @Date 2023/10/10 09:59
 * @Describe 时间工具
 */
public class TimeTool {

    public static final String TAG = "TimeTool";
    public static Runnable transparentTask;// 任务接口
    public static Handler handler = new Handler();// 处理程序

    /**
     * 获取当前时间
     * 
     * @param timeFormat 时间格式 yyyy/MM/dd(年月日) HH:mm:ss(时分秒) EEEE(星期几) EE(周几)
     * @return 时间文本
     */
    public static String getNowDay(String timeFormat) {
        /**
         * SimpleDateFormat 是一个以与语言环境有关的方式来格式化和解析日期的具体类（java.text.SimpleDateFormat)。
         * 它允许进行格式化（日期 -> 文本）、解析（文本 -> 日期）和规范化。
         */
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(timeFormat);
        String dateString = simpleDateFormat.format(new Date()); // 将给定的 Date 格式化为日期/时间字符串
        return dateString;
    }

    // 获取当前现实中是白天还是晚上 返回true则是白天否则为晚上
    public static boolean isDaytime() {
        Calendar calendar = Calendar.getInstance();
        int currentHour = calendar.get(Calendar.HOUR_OF_DAY);
        return currentHour >= 6 && currentHour < 18;
    }

    // 时间段问候
    public static String timeGreeting() {
        Calendar calendar = Calendar.getInstance();
        int currentHour = calendar.get(Calendar.HOUR_OF_DAY);
        if (currentHour >= 24 || currentHour < 6) {
            return "晚安！";
        } else if (currentHour >= 6 && currentHour < 12) {
            return "早上好！";
        } else if (currentHour == 12) {
            return "中午好！";
        } else if (currentHour > 12 && currentHour <= 18) {
            return "下午好！";
        } else {
            return "晚上好！";
        }
    }

    // 更新当前时间 参数：传入你要显示时间的文本视图控件
    public static void updateTime(final TextView text) {
        // 递归更新当前时间
        /*
         * button1.setText(timeGreeting() + "Time：" +
         * getNowDay("yyyy/MM/dd HH:mm:ss EE"));
         * 
         * handler.postDelayed(new Runnable() {
         * 
         * @Override
         * public void run() {
         * updateTime();
         * }
         * }, 1000); //延迟1秒后再次更新时间
         */
        transparentTask = new Runnable() {
            @Override
            public void run() {
                text.setText(timeGreeting() + "Time：" + getNowDay("yyyy/MM/dd HH:mm:ss EE"));
                handler.postDelayed(transparentTask, 1000);// 每秒执行一次该任务
            }
        };
    }

}
