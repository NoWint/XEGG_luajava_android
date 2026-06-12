package com.eileen.hacker;
import android.app.AlertDialog;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.text.Html;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

/**
 * @Author 𝘽𝙮·艾琳 - 手游逆向交流群101640882
 * @Date 2023/07/24 17:53
 * @Describe 艾琳美化弹窗组件
 */
public class DiaLogs {
    Context mContext;

    //吐司提示相关
    private Toast toast;// 吐司提示
    private LinearLayout toastlayout;// 吐司布局
    GradientDrawable toastBackground;// 吐司背景
    private TextView toastText;// 吐司提示文本

    //弹窗对话框相关
    private AlertDialog aDiaLog;//对话框
    private TextView texties;// 弹窗标题
    private TextView texties1;// 弹窗内容

    private static DiaLogs dialog;

    private DiaLogs(Context context) {
        mContext = context;
        initToast();//初始化吐司提示
        initDialog();//初始化对话框
    }

    //♨️弹窗组件实例 [单例]♨️
    public static DiaLogs getDiaLog(Context context) {
        if (dialog == null) {
            // 加载弹窗
            dialog = new DiaLogs(context);
        } 
        return dialog;

    }

    // —————————————————————————————————————— 艾琳美化吐司提示 ——————————————————————————————————————

    //初始化吐司提示
    private void initToast() {
        toastBackground = new GradientDrawable();
        toastBackground.setColor(0xCEFF8A00);// 吐司背景颜色
        toastBackground.setCornerRadius(Tools.convertDpToPx(mContext, 15));// 吐司圆角幅度
        toastBackground.setStroke(3, 0xFF000000);// 吐司边框厚度与描边颜色

        toast = Toast.makeText(mContext, "艾琳Toast：Loading successful！", Toast.LENGTH_LONG);

        toastlayout = new LinearLayout(mContext.getApplicationContext());
        toastlayout.setOrientation(LinearLayout.VERTICAL);
        toastlayout.setBackgroundDrawable(toastBackground);

        toastText = new TextView(mContext.getApplicationContext());
        toastText.setLayoutParams(new LinearLayout.LayoutParams(
                                      LinearLayout.LayoutParams.MATCH_PARENT,
                                      LinearLayout.LayoutParams.WRAP_CONTENT));
        toastText.setTextColor(Color.WHITE);
        toastText.setGravity(Gravity.CENTER);
        toastText.setPadding(10, 10, 10, 10);
        toastText.setTypeface(Resource.typeface3);
        toastText.setTextSize(TypedValue.COMPLEX_UNIT_PX, Tools.convertDpToPx(mContext, 12f));
        toastlayout.addView(toastText);

        toast.setView(toastlayout);
        // toast.setGravity(Gravity.TOP, 0, 0);弹窗在屏幕上方
    }

    // 显示吐司提示 参数：提示内容 
    // (支持html或css)
    // 例如：
    // toastText.setText(Html.fromHtml("<p><span style='color: #FF0000;'>这是一段红色字体 使用的CSS</span></p>" + str));
    // toastText.setText(Html.fromHtml("<p><font color='#FF0000'>这是一段红色字体 使用的HTML</font></p>" + str));
    public void showToast(String str) {
        if (toast == null) {
            initToast();
        } 
        toastText.setText(Html.fromHtml("<font color='#C0C0C0'>GM：</font>" + str));
        toast.show();

    }
    
    
    

    //———————————————————————————— 艾琳美化提示对话框 ————————————————————————————————————

    // 初始化提示对话框
    private void initDialog() {

        // 创建AlertDialog.Builder对象
        AlertDialog.Builder builder = new AlertDialog.Builder(mContext);

        GradientDrawable Background1 = new GradientDrawable();
        Background1.setCornerRadius(Tools.convertDpToPx(mContext, 20));// 圆角幅度
        Background1.setColor(0xCEFF8A00);

        LinearLayout linearLayouts = new LinearLayout(mContext);
        linearLayouts.setOrientation(1);
        linearLayouts.setLayoutParams(new LinearLayout.LayoutParams(
                                          LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT));
        linearLayouts.setBackground(Background1);     
        linearLayouts.setPadding(40, 40, 40, 40);

        //标题
        texties = new TextView(mContext);
        texties.setTypeface(Resource.typeface3);
        texties.setAllCaps(false); // 禁用大写字母 否则不支持html
        texties.setTextColor(0xFFFFFFFF);
        texties.setLayoutParams(new LinearLayout.LayoutParams(
                                    LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT));

        texties.setText(Html.fromHtml("艾琳美化弹窗"));
        texties.setTextSize(TypedValue.COMPLEX_UNIT_PX, Tools.convertDpToPx(mContext, 20f));
        texties.setGravity(Gravity.CENTER_HORIZONTAL);
        texties.setPadding(0, 0, 0, 10);


        //信息
        texties1 = new TextView(mContext);
        texties1.setTypeface(Resource.typeface3);
        texties1.setAllCaps(false); // 禁用大写字母 否则不支持html
        texties1.setTextColor(0xFFEFEFEF);
        texties1.setLayoutParams(new LinearLayout.LayoutParams(
                                     LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT));

        texties1.setText(Html.fromHtml("内容"));
        texties1.setTextSize(TypedValue.COMPLEX_UNIT_PX, Tools.convertDpToPx(mContext, 15f));
        texties1.setGravity(Gravity.CENTER_HORIZONTAL);
        texties1.setPadding(0, 0, 0, 30);




        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT,
                                                                               Tools.convertDpToPx(mContext, 40f));//高LinearLayout.LayoutParams.WRAP_CONTENT
        GradientDrawable Background2= new GradientDrawable();
        Background2.setCornerRadius(Tools.convertDpToPx(mContext, 10));// 圆角幅度
        Background2.setColor(Color.parseColor("#1C262D"));//好看的红色 #BC262D

        Button button2 = new Button(mContext);       
        layoutParams.setMargins(7, 5, 7, 5);
        button2.setLayoutParams(layoutParams);
        button2.setTextColor(Color.parseColor("#FFFFFF"));
        button2.setAllCaps(false); // 禁用大写字母 否则不支持html
        button2.setBackground(Background2);

        button2.setTypeface(Resource.typefaceXS);
        button2.setTextSize(TypedValue.COMPLEX_UNIT_PX, Tools.convertDpToPx(mContext, 14f));
        button2.setText("我知道了");


        // 将按钮添加到LinearLayout中
        linearLayouts.addView(texties);//添加标题
        linearLayouts.addView(texties1);//添加信息
        linearLayouts.addView(button2);//添加我知道了按钮

        // 设置对话框的自定义视图
        builder.setView(linearLayouts);



        // 创建对话框
        aDiaLog = builder.create();
        //设置对话框背景透明
        aDiaLog.getWindow().setBackgroundDrawable(new ColorDrawable(Color.TRANSPARENT));

        aDiaLog.getWindow().setType(Build.VERSION.SDK_INT >= 26 ? 2038 : 2002);


        //我知道了按钮点击事件
        button2.setOnClickListener(new View.OnClickListener() {
                @Override 
                public void onClick(View view) {    
                    SoundEffectPlayer.getAudio(mContext);
                    Resource.audio.playSoundEffect("KaTong.ogg");
                    aDiaLog.dismiss();
                }});
    }

    //显示提示对话框 参数：对话框标题 对话框内容 (支持html或css)
    public void showDiaLog(String title, String message) {
        if (aDiaLog == null) {
            initDialog();
        }
        //设置对话框标题
        texties.setText(Html.fromHtml(title));
        //设置对话框内容
        texties1.setText(Html.fromHtml(message));
        //显示对话框
        aDiaLog.show();


    }

}
