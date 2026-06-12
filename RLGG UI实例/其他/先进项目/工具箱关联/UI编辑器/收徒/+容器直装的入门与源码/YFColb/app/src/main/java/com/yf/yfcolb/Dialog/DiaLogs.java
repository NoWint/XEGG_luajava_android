package com.yf.yfcolb.Dialog;

import android.app.AlertDialog;
import android.content.Context;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.text.Html;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

import com.yf.yfcolb.FileOperation;
import com.yf.yfcolb.data.BubbleNotification;
import com.yf.yfcolb.data.ViewTool;
import com.yf.yfcolb.封装库.Packaging;
import com.yf.yfcolb.工具库.Resource;
import com.yf.yfcolb.工具库.TOOL;

public class DiaLogs {
    static Context mContext;

    //吐司提示相关
    private Toast toast;// 吐司提示
    private LinearLayout toastlayout;// 吐司布局
    GradientDrawable toastBackground;// 吐司背景
    private TextView toastText;// 吐司提示文本

    //弹窗对话框相关
    private AlertDialog aDiaLog;//对话框
    private TextView texties;// 弹窗标题
    private TextView texties1;// 弹窗内容

    //弹窗对话框修改相关
    private static AlertDialog bDiaLog;//对话框
    private static TextView btexties;// 弹窗标题
    private static TextView btexties1;// 弹窗内容

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

    // —————————————————————————————————————— 美化吐司提示 ——————————————————————————————————————

    //初始化吐司提示
    private void initToast() {
        toastBackground = new GradientDrawable();
        toastBackground.setColor(0xFFEBF2EB);// 吐司背景颜色
        toastBackground.setCornerRadius(ViewTool.convertDpToPx(mContext, 10));// 吐司圆角幅度
        toastBackground.setStroke(3, 0xFF000000);// 吐司边框厚度与描边颜色

        toast = Toast.makeText(mContext, "Toast：Loading successful！", Toast.LENGTH_LONG);

        toastlayout = new LinearLayout(mContext.getApplicationContext());
        toastlayout.setOrientation(LinearLayout.VERTICAL);
        toastlayout.setBackgroundDrawable(toastBackground);
        toastlayout.setPadding(10, 0, 10, 0);

        toastText = new TextView(mContext.getApplicationContext());
        toastText.setLayoutParams(new LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT));
        toastText.setTextColor(0xFF424242);
        toastText.setGravity(Gravity.CENTER);
        toastText.setPadding(10, 15, 10, 15);
        toastText.setTypeface(Resource.typeface3);
        toastText.setTextSize(TypedValue.COMPLEX_UNIT_PX, ViewTool.convertDpToPx(mContext, 15f));
        toastlayout.addView(toastText);

        toast.setView(toastlayout);
        // toast.setGravity(Gravity.TOP, 0, 0);弹窗在屏幕上方
    }

    public void showToast(String str) {
        if (toast == null) {
            initToast();
        } 
        toastText.setText(Html.fromHtml("<font color='#BC262D'>远方提示您：</font>" + str));
        toast.show();
    }


    //———————————————————————————— 美化提示对话框 ————————————————————————————————————

    // 初始化提示对话框
    private void initDialog() {

        // 创建AlertDialog.Builder对象
        AlertDialog.Builder builder = new AlertDialog.Builder(mContext);

        GradientDrawable Background1 = new GradientDrawable();
        Background1.setCornerRadius(ViewTool.convertDpToPx(mContext, 20));// 圆角幅度
        Background1.setColor(0xCEFAFAFA);

        LinearLayout linearLayouts = new LinearLayout(mContext);
        linearLayouts.setOrientation(LinearLayout.VERTICAL);
        linearLayouts.setLayoutParams(new LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT));
        linearLayouts.setBackground(Background1);
        linearLayouts.setPadding(40, 40, 40, 40);

        //标题
        texties = new TextView(mContext);
        texties.setTypeface(Resource.typeface3);
        texties.setTextColor(0xFFFF1493);
        texties.setLayoutParams(new LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT));
        texties.setText(Html.fromHtml("弹窗"));
        texties.setTextSize(TypedValue.COMPLEX_UNIT_PX, ViewTool.convertDpToPx(mContext, 20f));
        texties.setGravity(Gravity.CENTER_HORIZONTAL);
        texties.setPadding(0, 0, 0, 10);

        //信息
        texties1 = new TextView(mContext);
        texties1.setTypeface(Resource.typeface3);
        texties1.setTextColor(0xFF191970);
        texties1.setLayoutParams(new LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT));
        texties1.setText(Html.fromHtml("内容"));
        texties1.setTextSize(TypedValue.COMPLEX_UNIT_PX, ViewTool.convertDpToPx(mContext, 15f));
        texties1.setGravity(Gravity.CENTER_HORIZONTAL);
        texties1.setPadding(0, 0, 0, 30);

        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, ViewTool.convertDpToPx(mContext, 40f));//高LinearLayout.LayoutParams.WRAP_CONTENT
        GradientDrawable Background2= new GradientDrawable();
        Background2.setCornerRadius(ViewTool.convertDpToPx(mContext, 10));// 圆角幅度
        Background2.setColor(0xFF5492E5);//好看的红色 #BC262D

        Button button2 = new Button(mContext);
        layoutParams.setMargins(7, 5, 7, 5);
        button2.setLayoutParams(layoutParams);
        button2.setTextColor(Color.parseColor("#FFFFFF"));
        button2.setAllCaps(false); // 禁用大写字母 否则不支持html
        button2.setBackground(Background2);
        button2.setTypeface(Resource.typefaceXS);
        button2.setTextSize(TypedValue.COMPLEX_UNIT_PX, ViewTool.convertDpToPx(mContext, 14f));
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
                Resource.audio.playSoundEffect("按钮点击.ogg");
                aDiaLog.dismiss();
            }
        });
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

    //———————————————————————————— 美化提示对话框加冻结修改 ————————————————————————————————————

    // 初始化提示对话框
    public static void Dialogtol(String title, String message, String toastMsg, String fileName) {

        // 创建AlertDialog.Builder对象
        AlertDialog.Builder builder = new AlertDialog.Builder(mContext);

        GradientDrawable Background1 = new GradientDrawable();
        Background1.setCornerRadius(ViewTool.convertDpToPx(mContext, 20));// 圆角幅度
        Background1.setColor(0xCEFAFAFA);

        LinearLayout linearLayouts = new LinearLayout(mContext);
        linearLayouts.setOrientation(LinearLayout.VERTICAL);
        linearLayouts.setLayoutParams(new LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT));
        linearLayouts.setBackground(Background1);     
        linearLayouts.setPadding(40, 40, 40, 40);

        //标题
        btexties = new TextView(mContext);
        btexties.setTypeface(Resource.typeface3);
        btexties.setTextColor(0xFFFF1493);
        //设置对话框标题
        btexties.setText(Html.fromHtml(title));
        btexties.setLayoutParams(new LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT));
        btexties.setTextSize(TypedValue.COMPLEX_UNIT_PX, ViewTool.convertDpToPx(mContext, 20f));
        btexties.setGravity(Gravity.CENTER_HORIZONTAL);
        btexties.setPadding(0, 0, 0, 10);

        //信息
        btexties1 = new TextView(mContext);
        btexties1.setTypeface(Resource.typeface3);
        btexties1.setTextColor(0xFF191970);
        //设置对话框内容
        btexties1.setText(Html.fromHtml(message));
        btexties1.setLayoutParams(new LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT));
        btexties1.setTextSize(TypedValue.COMPLEX_UNIT_PX, ViewTool.convertDpToPx(mContext, 15f));
        btexties1.setGravity(Gravity.CENTER_HORIZONTAL);
        btexties1.setPadding(0, 0, 0, 30);

        // 创建自定义EditText
        EditText customEditText = Packaging.createCustomEditText(
                "请输入数值", // 提示文字
                Color.parseColor("#CECECE"), // 提示文字颜色
                Color.parseColor("#00FF00"), // 文本颜色
                Typeface.DEFAULT, // 字体类型
                5, // 背景圆角
                Color.parseColor("#80000000"), // 背景颜色
                Color.parseColor("#C1FFFFFF"), // 边框颜色
                3, // 边框宽度
                11 // 文本大小
        );

        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, ViewTool.convertDpToPx(mContext, 29f));//高LinearLayout.LayoutParams.WRAP_CONTENT
        layoutParams.setMargins(7, 5, 7, 5);

        GradientDrawable Background2= new GradientDrawable();
        Background2.setCornerRadius(ViewTool.convertDpToPx(mContext, 10));// 圆角幅度
        Background2.setColor(0xFF5492E5);//好看的红色 #BC262D

        Button button2 = new Button(mContext);
        button2.setLayoutParams(layoutParams);
        button2.setTextColor(Color.parseColor("#FFFFFF"));
        button2.setAllCaps(false); // 禁用大写字母 否则不支持html
        button2.setBackground(Background2);
        button2.setTypeface(Resource.typefaceXS);
        button2.setTextSize(TypedValue.COMPLEX_UNIT_PX, ViewTool.convertDpToPx(mContext, 9f));
        button2.setText("确定");

        // 将按钮添加到LinearLayout中
        linearLayouts.addView(btexties);//添加标题
        linearLayouts.addView(btexties1);//添加信息
        linearLayouts.addView(customEditText);//添加输入框
        linearLayouts.addView(button2);//添加我知道了按钮

        // 设置对话框的自定义视图
        builder.setView(linearLayouts);

        // 创建对话框
        bDiaLog = builder.create();
        //设置对话框背景透明
        bDiaLog.getWindow().setBackgroundDrawable(new ColorDrawable(Color.TRANSPARENT));

        bDiaLog.getWindow().setType(Build.VERSION.SDK_INT >= 26 ? 2038 : 2002);
        //显示对话框
        bDiaLog.show();

        //我知道了按钮点击事件
        button2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                // 获取输入框中的文本
                String inputText = customEditText.getText().toString();
                FileOperation.写入文件(mContext.getFilesDir() + "/" + fileName, inputText);
                // 写入文件(mContext.getFilesDir() + "/" + fileName + "开关", "1");
                FileOperation.写入文件(mContext.getFilesDir() + "/验证", toastMsg);
                TOOL.linuxHacker(mContext);//执行二进制
                BubbleNotification.Inform(mContext).showSuccessNotification_Simplicity(null, inputText, "开启成功",1500);
                bDiaLog.dismiss();
            }
        });
    }




}
