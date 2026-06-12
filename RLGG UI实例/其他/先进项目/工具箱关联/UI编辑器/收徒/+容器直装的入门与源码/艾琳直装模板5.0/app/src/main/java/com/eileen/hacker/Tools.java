package com.eileen.hacker;
import android.Manifest;
import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import android.graphics.PixelFormat;
import android.net.Uri;
import android.os.Build;
import android.provider.Settings;
import android.text.Html;
import android.text.method.LinkMovementMethod;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.WindowManager;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.NetworkInterface;
import java.net.URL;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * @Author 𝘽𝙮·艾琳 - 手游逆向交流群101640882
 * @Date 2023/08/19 17:34
 * @Describe 杂项工具箱
 */
public class Tools {

    //用于存储所有屏幕绘制文本的动态数组容器
    public static ArrayList<TextView> drawTexts = new ArrayList<TextView>();





    //检查并申请所有权限  上下文  活动
    public static void initPermission(Context mContext, Activity mActivity) {

        boolean isGranted = true;

        if (android.os.Build.VERSION.SDK_INT >= 23) {
            if (mContext.checkSelfPermission(Manifest.permission.WRITE_EXTERNAL_STORAGE) != PackageManager.PERMISSION_GRANTED) {
                isGranted = false;
            }
            if (mContext.checkSelfPermission(Manifest.permission.READ_EXTERNAL_STORAGE) != PackageManager.PERMISSION_GRANTED) {
                isGranted = false;
            }
            if (mContext.checkSelfPermission(Manifest.permission.RECORD_AUDIO) != PackageManager.PERMISSION_GRANTED) {
                isGranted = false;
            }
            if (mContext.checkSelfPermission(Manifest.permission.RESTART_PACKAGES) != PackageManager.PERMISSION_GRANTED) {
                isGranted = false;
            }
            if (mContext.checkSelfPermission(Manifest.permission.REQUEST_COMPANION_RUN_IN_BACKGROUND) != PackageManager.PERMISSION_GRANTED) {
                isGranted = false;
            }
            if (mContext.checkSelfPermission(Manifest.permission.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS) != PackageManager.PERMISSION_GRANTED) {
                isGranted = false;
            }
            if (mContext.checkSelfPermission(Manifest.permission.SYSTEM_ALERT_WINDOW) != PackageManager.PERMISSION_GRANTED) {
                isGranted = false;
            }

            if (!isGranted) {
                mActivity.requestPermissions(
                    new String[]{Manifest.permission.ACCESS_COARSE_LOCATION, Manifest.permission
                        .ACCESS_FINE_LOCATION,
                        Manifest.permission.READ_EXTERNAL_STORAGE,
                        Manifest.permission.RECORD_AUDIO,
                        Manifest.permission.RESTART_PACKAGES,
                        Manifest.permission.REQUEST_COMPANION_RUN_IN_BACKGROUND,
                        Manifest.permission.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS,
                        Manifest.permission.SYSTEM_ALERT_WINDOW,
                        Manifest.permission.WRITE_EXTERNAL_STORAGE},
                    102);
            }
        }

        if (!Settings.canDrawOverlays(mContext)) {
            mActivity.startActivityForResult(new Intent(Settings.ACTION_MANAGE_OVERLAY_PERMISSION, Uri.parse("package:" + mContext.getPackageName())), 0);
        }
    }

    //申请储存权限
    public static void initSave(Context context, Activity ac) {
        boolean isGranted = true;
        if (android.os.Build.VERSION.SDK_INT >= 23) {
            if (context.checkSelfPermission(Manifest.permission.WRITE_EXTERNAL_STORAGE) != PackageManager.PERMISSION_GRANTED) {
                isGranted = false;
            }
            if (context.checkSelfPermission(Manifest.permission.READ_EXTERNAL_STORAGE) != PackageManager.PERMISSION_GRANTED) {
                isGranted = false;
            }
            if (!isGranted) {
                ac.requestPermissions(new String[]{Manifest.permission.ACCESS_COARSE_LOCATION, Manifest.permission.ACCESS_FINE_LOCATION,Manifest.permission.READ_EXTERNAL_STORAGE,Manifest.permission.WRITE_EXTERNAL_STORAGE}, 102);
            }
        }
    }

    //申请悬浮窗权限
    public static void applyPermission(Context mContext) {
        if (!Settings.canDrawOverlays(mContext)) {
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
                Intent intent = new Intent(Settings.ACTION_MANAGE_OVERLAY_PERMISSION, Uri.parse("package:" + mContext.getPackageName()));
                mContext.startActivity(intent);
            } else {
                Intent intent = new Intent(Settings.ACTION_MANAGE_OVERLAY_PERMISSION);
                mContext.startActivity(intent);
            }
        }
    }

    //将dp屏幕单位值转换为固定单位像素值 的转换器 用于实现在不同机型上 显示的大小一致 例如悬浮球 布局 文字之类的
    static public int convertDpToPx(Context context, float dp) {
        return (int) ((dp * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    /*写出assets资源文件
     *例子:
     *      writeWriteAssets(this,getFilesDir() + "/assets", "文件名");//这里写要写出的二进制文件
     */
    public static boolean writeWriteAssets(Context context, String outPath, String fileName) {
        File file = new File(outPath);
        if (!file.exists()) {
            if (!file.mkdirs()) {

                return false;
            }
        }
        try {
            InputStream inputStream = context.getAssets().open(fileName);
            File outFile = new File(file, fileName);
            FileOutputStream fileOutputStream = new FileOutputStream(outFile);
            byte[] buffer = new byte[1024];
            int byteRead;
            while (-1 != (byteRead = inputStream.read(buffer))) {
                fileOutputStream.write(buffer, 0, byteRead);
            }
            inputStream.close();
            fileOutputStream.flush();
            fileOutputStream.close();
            return true;
        } catch (IOException e) {
            //DeBug.showDebugToast(context, "assets写出文件异常",e.getMessage());
            e.printStackTrace();
            return false;
        }
    }



    /****************
     *
     * 发起添加群流程。群号：无尽的四月 直装主群(368969530) 的 key 为： ehB27JLPZ_hOon6SXKdMj78qe1Wo0AjT
     * 调用 joinQQGroup(ehB27JLPZ_hOon6SXKdMj78qe1Wo0AjT) 即可发起手Q客户端申请加群 无尽的四月 直装主群(368969530)
     *
     * @param key 由官网生成的key
     * @return 返回true表示呼起手Q成功，返回false表示呼起失败
     ******************/
    static public boolean joinQQGroup(Context context, String key, String url) {
        Intent intent = new Intent(Intent.ACTION_VIEW);
        intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
        intent.setData(Uri.parse("mqqopensdkapi://bizAgent/qm/qr?url=http%3A%2F%2Fqm.qq.com%2Fcgi-bin%2Fqm%2Fqr%3Ffrom%3Dapp%26p%3Dandroid%26jump_from%3Dwebapi%26k%3D" + key));
        // 此Flag可根据具体产品需要自定义，如设置，则在加群界面按返回，返回手Q主界面，不设置，按返回会返回到呼起产品界面    //intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
        try {
            context.startActivity(intent);
            return true;
        } catch (Exception e) {
            // 未安装手Q或安装的版本不支持

            tzHTTP(context, url);
            return false;
        }
    }

    //QQ强制聊天会话
    static public boolean joinQQ(Context context, String qq, String url) {
        Intent intent = new Intent(Intent.ACTION_VIEW);
        intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
        intent.setData(Uri.parse("mqqwpa://im/chat?chat_type=wpa&uin=" + qq + "&version=1"));
        try {
            context.startActivity(intent);
            return true;
        } catch (Exception e) {
            // 未安装手Q或安装的版本不支持

            tzHTTP(context, url);
            return false;
        }
    }

    //跳转游览器方法
    static public boolean tzHTTP(Context context, String str) {

        //跳转默认游览器 或指定游览器
        /*Intent intent = new Intent();
         intent.setAction("android.intent.action.VIEW");

         intent.setData(Uri.parse(str));  
         intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
         intent.setClassName("com.android.browser", "com.android.browser.BrowserActivity");
         mContext.startActivity(intent);*/

        //跳转任意游览器
        Intent intent = new Intent();
        intent.setAction("android.intent.action.VIEW");
        intent.setData(Uri.parse(str));

        try {
            context.startActivity(intent);
            return true;
        } catch (Exception e) {
            // DeBug.showDebugToast(context, "游览器跳转失败！", e.getMessage());
            intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            intent.setClassName("com.android.browser", "com.android.browser.BrowserActivity");
            context.startActivity(intent);
            return false;
        }
    }


    //判断assets文件夹下是否存在指定文件
    static public boolean isFileExistsInAssets(Context context, String fileName) {
        AssetManager assetManager = context.getAssets();
        AssetFileDescriptor fileDescriptor = null;

        try {
            fileDescriptor = assetManager.openFd(fileName);
            // 文件存在
            return true;
        } catch (IOException e) {
            // 文件不存在
            return false;
        } finally {
            if (fileDescriptor != null) {
                try {
                    fileDescriptor.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    //vpn检测
    public static boolean isVpnUsed() {
        try {
            List<NetworkInterface> nis = Collections.list(NetworkInterface.getNetworkInterfaces());
            if (nis != null) {
                for (NetworkInterface intf : nis) {
                    if (!intf.isUp() || intf.getInterfaceAddresses().size() == 0) {
                        continue;
                    }
                    if ("tun0".equals(intf.getName()) || "ppp0".equals(intf.getName())) {
                        return true;
                    }
                }
            }
        } catch (Throwable e) {
            e.printStackTrace();
        }
        return false;
    }

    //保护机制安全验证 防逆向 (可在内部自己增加更多检测验证，如签名校验，哈希值等等进一步防止逆向破解)
    public static void Reversal() {
        //是否为VPN环境
        if (isVpnUsed()) {
            System.exit(0);
        }
    }


    //屏幕绘制文字信息方法 参数：上下文 x位置 y位置 文字颜色 文字大小 文字内容（支持html和css）
    public static void drawText(Context context, float x, float y, int color, float size, String text) {
        WindowManager wManager = (WindowManager) context.getSystemService(Context.WINDOW_SERVICE);
        WindowManager.LayoutParams wParams = new WindowManager.LayoutParams();
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            wParams.type = WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY;
        } else {
            wParams.type = WindowManager.LayoutParams.TYPE_SYSTEM_ALERT;
        }
        wParams.flags = WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL | WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE | WindowManager.LayoutParams.FLAG_NOT_TOUCHABLE | WindowManager.LayoutParams.FLAG_LAYOUT_IN_SCREEN | WindowManager.LayoutParams.FLAG_LAYOUT_NO_LIMITS | WindowManager.LayoutParams.FLAG_FULLSCREEN;
        wParams.gravity = Gravity.BOTTOM | Gravity.LEFT;
        wParams.x = Tools.convertDpToPx(context, x);
        wParams.y = Tools.convertDpToPx(context, y);
        wParams.width = WindowManager.LayoutParams.WRAP_CONTENT;
        wParams.height = WindowManager.LayoutParams.WRAP_CONTENT;
        wParams.format = PixelFormat.RGBA_8888;
        TextView WaterMark = new TextView(context);
        LayoutParams params = new LayoutParams(LayoutParams.WRAP_CONTENT, LayoutParams.WRAP_CONTENT);
        WaterMark.setLayoutParams(params);
        WaterMark.setAllCaps(false);
        WaterMark.setMovementMethod(LinkMovementMethod.getInstance());
        WaterMark.setTextSize(TypedValue.COMPLEX_UNIT_PX, Tools.convertDpToPx(context, size));
        WaterMark.setTextColor(color);
        WaterMark.setTypeface(Resource.typeface3);
        WaterMark.setText(Html.fromHtml(text));
        wManager.addView(WaterMark, wParams);
        drawTexts.add(WaterMark);
	}



    //获取机器码
    public static String getJOB(Context context) {
        return  android.provider.Settings.Secure.getString(context.getContentResolver(), android.provider.Settings.Secure.ANDROID_ID);
    }



    //写入文件
    public static void Writefile(String Files, String content) {
        try {
            FileWriter utf = new FileWriter(Files);
            utf.write(content);
            utf.close();
        } catch (IOException e) {}
    }
    //读取文件
    public static String ReadFile(String path) {
        String str = "";
        try {
            File urlFile = new File(path);
            InputStreamReader isr = new InputStreamReader(new FileInputStream(urlFile), "UTF-8");
            BufferedReader br = new BufferedReader(isr);

            String mimeTypeLine = null;
            while ((mimeTypeLine = br.readLine()) != null) {
                str = str + mimeTypeLine;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return str;
    }

    //请求url
    public static String UrlPost(String ur, String byteString) {
        String str="";      
        try {
            URL url=new URL(ur);
            HttpURLConnection HttpURLConnection=(HttpURLConnection) url.openConnection();
            HttpURLConnection.setReadTimeout(9000);
            HttpURLConnection.setRequestMethod("POST");
            OutputStream outputStream = HttpURLConnection.getOutputStream();
            outputStream.write(byteString.getBytes());
            BufferedReader BufferedReader=new BufferedReader(new InputStreamReader(HttpURLConnection.getInputStream()));
            String String="";
            StringBuffer StringBuffer=new StringBuffer();
            while ((String = BufferedReader.readLine()) != null) {
                StringBuffer.append(String);
            }
            str = StringBuffer.toString();
        } catch (IOException e) {}
        return str;
    }


    public static String encodeMD5(String str) {
        try {
            MessageDigest md5 = MessageDigest.getInstance("MD5");
            md5.update(str.getBytes("UTF-8"));
            byte messageDigest[] = md5.digest();
            StringBuilder hexString = new StringBuilder();
            for (byte b : messageDigest) {
                hexString.append(String.format("%02X", b));
            }
            return hexString.toString().toLowerCase();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "";
    }


    //打开隐藏MIUI性能模式
    public static void trueMIUI(Context context) {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName("com.android.settings",
                                              "com.android.settings.fuelgauge.PowerModeSettings"));
        context.startActivity(intent);
    }
}
