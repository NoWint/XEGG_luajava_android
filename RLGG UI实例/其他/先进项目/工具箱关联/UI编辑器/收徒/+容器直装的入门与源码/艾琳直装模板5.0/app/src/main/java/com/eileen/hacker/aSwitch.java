package com.eileen.hacker;
import android.content.Context;
import android.graphics.PorterDuff;
import android.util.AttributeSet;
import android.widget.CompoundButton;
import android.widget.Switch;

/**
 * @Author 𝘽𝙮·艾琳 - 手游逆向交流群101640882
 * @Date 2023/10/11 12:34
 * @Describe 重写系统自带Switch类 作为外挂功能专用switch
 */
public class aSwitch extends Switch {

    public static final String TAG = "aSwitch";

    private Context aContext;


    //功能能开能关 有警告弹窗
    //参数：上下文 开启功能二进制文件名 关闭功能二进制文件名 警告弹窗标题 警告弹窗内容
    public aSwitch(Context context, final String onFile, final String offFile, final String title, final String text) {
        super(context);
        aContext = context;

        Tools.writeWriteAssets(context, context.getCacheDir() + "/", onFile);
        Tools.writeWriteAssets(context, context.getCacheDir() + "/", offFile);
        this.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
                @Override
                public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {

                    // 执行二进制文件
                    ExecutionTool.HackerOnOff(aContext, onFile, offFile, isChecked);
                    // 根据不同状态 设置吐司提示不同颜色
                    Resource.dialog.toastBackground.setColor(isChecked ? 0xCE00BA00 : 0xCEBA0000);
                    // 根据不同状态 提示不同开关提示(会自动在开启成功或关闭成功前面加上功能名称)
                    Resource.dialog.showToast(getText() + " " + (isChecked ? "开启成功 ☑" : "关闭成功 ☒"));
                    // 切换开关按钮状态
                    changeSwitch();
                    // 开启功能时弹出警告弹窗
                    if (isChecked) {
                        Resource.dialog.showDiaLog(title, text);         
                    }

                }
            });
    }

    //功能能开能关
    public aSwitch(Context context, final String onFile, final String offFile) {
        super(context);
        aContext = context;

        Tools.writeWriteAssets(context, context.getCacheDir() + "/", onFile);
        Tools.writeWriteAssets(context, context.getCacheDir() + "/", offFile);
        this.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
                @Override
                public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {

                    // 执行二进制文件
                    ExecutionTool.HackerOnOff(aContext, onFile, offFile, isChecked);
                    // 根据不同状态 设置吐司提示不同颜色
                    Resource.dialog.toastBackground.setColor(isChecked ? 0xCE00BA00 : 0xCEBA0000);
                    // 根据不同状态 提示不同开关提示(会自动在开启成功或关闭成功前面加上功能名称)
                    Resource.dialog.showToast(getText() + " " + (isChecked ? "开启成功 ☑" : "关闭成功 ☒"));
                    // 切换开关按钮状态
                    changeSwitch();          

                }
            });
    }

    //功能只能开 有警告弹窗
    public aSwitch(Context context, final String onFile, final String title, final String text) {
        super(context);
        aContext = context;

        Tools.writeWriteAssets(context, context.getCacheDir() + "/", onFile);
        //Tools.writeWriteAssets(context, context.getCacheDir() + "/", offFile);
        this.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
                @Override
                public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {


                    //开启功能时才执行二进制并弹出警告弹窗
                    if (isChecked) {
                        // 执行二进制文件
                        ExecutionTool.gameS(aContext, onFile);
                        //弹出警告弹窗
                        Resource.dialog.showDiaLog(title, text);         
                    } 
                    // 根据不同状态 设置吐司提示不同颜色
                    Resource.dialog.toastBackground.setColor(isChecked ? 0xCE00BA00 : 0xCE0000BA);
                    // 根据不同状态 提示不同开关提示(会自动在开启成功或关闭成功前面加上功能名称)
                    Resource.dialog.showToast(getText() + " " + (isChecked ? "开启成功 ☑" : "无法关闭哦 🚫️"));


                    // 切换开关按钮状态
                    changeSwitch();

                }
            });
    }

    //功能只能开
    public aSwitch(Context context, final String onFile) {
        super(context);
        aContext = context;

        Tools.writeWriteAssets(context, context.getCacheDir() + "/", onFile);
        //Tools.writeWriteAssets(context, context.getCacheDir() + "/", offFile);
        this.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
                @Override
                public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {


                    //开启功能时才执行二进制
                    if (isChecked) {
                        // 执行二进制文件
                        ExecutionTool.gameS(aContext, onFile); 
                    } 
                    // 根据不同状态 设置吐司提示不同颜色
                    Resource.dialog.toastBackground.setColor(isChecked ? 0xCE00BA00 : 0xCE0000BA);
                    // 根据不同状态 提示不同开关提示(会自动在开启成功或关闭成功前面加上功能名称)
                    Resource.dialog.showToast(getText() + " " + (isChecked ? "开启成功 ☑" : "无法关闭哦 🚫️"));


                    // 切换开关按钮状态
                    changeSwitch();

                }
            });
    }


    //自定义开关按钮的开关事件 参数：上下文 函数
    public aSwitch(Context context, final Interfaces function) {
        super(context);
        aContext = context;
        this.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
                @Override
                public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {

                    //执行传递过来的代码
                    function.SwitchFun(isChecked);
                    // 根据不同状态 设置吐司提示不同颜色
                    Resource.dialog.toastBackground.setColor(isChecked ? 0xCE00BA00 : 0xCEBA0000);
                    // 根据不同状态 提示不同开关提示(会自动在开启成功或关闭成功前面加上功能名称)
                    Resource.dialog.showToast(getText() + " " + (isChecked ? "开启成功 ☑" : "关闭成功 ☒"));
                    // 切换开关按钮状态
                    changeSwitch();          

                }
            });
    }



    public aSwitch(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public aSwitch(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }





    // 开关按钮打开或关闭时调用该方法过渡变化状态
    // 参数1当前开关状态 参数2哪个开关按钮 参数3开启功能执行的二进制 参数4关闭功能执行的二进制
    void changeSwitch() {
        // 说明：问号后面第一个参数为开启时的参数 第二个参数为关闭时的参数

        // 根据不同状态 播放不同音效
        Resource.audio.playSoundEffect(this.isChecked() ? "On.ogg" : "Off.ogg");

        // 根据不同状态 设置不同开关按钮颜色 滑块颜色 滑条颜色
        setButtonColor(this.isChecked() ? (GameMenu.isYR ? 0xBF003FFF : 0xFF00FF00) : 0xFFFFFFFF,
                       this.isChecked() ? (GameMenu.isYR ? 0xBF003FFF : 0xFF00FF00) : (GameMenu.isYR ? 0xFF000000 : 0xFFFFFFFF));

    }
    

    // [@] 切换设置开关按钮颜色的方法 参数1要设置的按钮 参数2滑块颜色 参数3滑条颜色
    void setButtonColor(int thumbColor, int trackColor) {
        if (this.getThumbDrawable() != null && this.getTrackDrawable() != null) {
            this.getThumbDrawable().setColorFilter(thumbColor, PorterDuff.Mode.MULTIPLY);
            this.getTrackDrawable().setColorFilter(trackColor, PorterDuff.Mode.MULTIPLY);

        } else {
            // 设置失败时执行的内容
        }

    }



}
