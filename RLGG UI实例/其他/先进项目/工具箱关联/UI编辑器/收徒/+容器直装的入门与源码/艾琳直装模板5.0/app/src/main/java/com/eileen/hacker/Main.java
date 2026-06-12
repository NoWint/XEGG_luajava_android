package com.eileen.hacker;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
/**
 * @Author 𝘽𝙮·艾琳  手游逆向学习QQ交流群101640882
 * @Date 2023/07/04 02:31
 * @Describe 

 pikaへ　　　　　／|
 　　/＼7　　　 ∠＿/
 　 /　│　　 ／　／
 　│　Z ＿,＜　／　　 /`ヽ
 　│　　　　　ヽ　　 /　　〉
 　 Y　　　　　`　 /　　/
 　ｲ●　､　●　　⊂⊃〈　　/
 　()　 へ　　　　|　＼〈
 　　>ｰ ､_　 ィ　 │ ／／
 　 / へ　　 /　ﾉ＜| ＼＼
 　 ヽ_ﾉ　　(_／　 │／／
 　　7　　　　　　　|／
 　　＞―r￣￣`ｰ―＿6


 */
public class Main {
    public static Activity activity;

    public static void init(Context context) {
        activity = (Activity)context;

        Tools.initSave(context, (Activity)context);//申请储存权限
        Tools.initPermission(context, (Activity)context);//检测并申请所有已声明权限

        //启动窗口管理服务
		context.startService(new Intent(context, WindowService.class));

    }
}
