package load.tencent.lib;

import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.Canvas;
import android.graphics.drawable.GradientDrawable;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.Looper;
import android.os.Process;
import android.provider.Settings;
import android.view.Gravity;
import android.view.SurfaceHolder;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import android.widget.Toast;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.NetworkInterface;
import java.net.URL;
import java.security.MessageDigest;
import java.text.SimpleDateFormat;
import java.util.Collections;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.UUID;


import org.json.JSONException;
import org.json.JSONObject;

import static android.graphics.Typeface.BOLD;
	/*
	本模板仅供学习研究
	本模板仅供学习研究
	界面有特多bug点，推荐自己去写界面
	界面有特多bug点，推荐自己去写界面
	界面有特多bug点，推荐自己去写界面	
	 微云端网络验证官网:https://wy.n8w.cn
	 1.加密选择RC4-2
	 2.记得把登录，解绑的WY_APPKEY ，WY_APPID,WY_RC4KEY替换掉
	 3.开启数据签名开关
	 4.开启(签名放在Data里)
	 */

public class w851af150668a7bc7e1041d56df88fb3f {
	SurfaceHolder holder;
    Canvas canvas;
	static String wy_url = "https://wy.llua.cn";//API接口
	static String WY_APPID = "39914"; // 项目id
	static String WY_APPKEY = "e21215z1vp83Ggmr"; //项目key
	static String WY_RC4KEY = "7aATZ2pZpyhNxMj";//RC4密钥
    static LinearLayout linearLayouts;
    static EditText edittext;
    static  AlertDialog.Builder dialogs,dialogs1;
    static AlertDialog alertDialogs,alertDialogs1;
    static AlertDialog alertDialogss;
    static AlertDialog dialog = null;
	public Intent intent;	
	static String 当前版本号="1.2";
    static String 卡密;
    static boolean test=false;

	public static void Start(final Context context) {
	    更新(context);//检测更新与公告
		Login(context);
    }

	
	public static String 获取机器码(Context context) {
	    return  android.provider.Settings.Secure.getString(context.getContentResolver(), android.provider.Settings.Secure.ANDROID_ID);
    }

	public static boolean isVpnUsed() {//vpn检测
        try {
            List<NetworkInterface> nis = Collections.list(NetworkInterface.getNetworkInterfaces());
            if (nis != null) {
                for (NetworkInterface intf : nis) {
                    if (!intf.isUp() || intf.getInterfaceAddresses().size() == 0) {
                        continue;
                    }
                    if ("tun0".equals(intf.getName()) || "ppp0".equals(intf.getName())) {
                        return true; // The VPN is up
                    }
                }
            }
        } catch (Throwable e) {
			e.printStackTrace();
        }
        return false;
    }
    public static void 更新(final Context context) {
        new Thread(new Runnable() {
                @Override
                public void run() {
					String sign="/api/?app=" + WY_APPID + "&id=ini"; // 公告
					try {
						String content=RC4Util.decryRC4(UrlPost(wy_url + sign, ""), WY_RC4KEY, "UTF-8");
						JSONObject jsonObject = new JSONObject(content);
						String data=jsonObject.getString("msg");
						JSONObject json = new JSONObject(data);						
						String version = json.getString("version"); //最新版本
						String app_update_show = json.getString("app_update_show"); //更新内容
						final String app_update_url = json.getString("app_update_url"); //最新地址
						String app_update_must = json.getString("app_update_must"); //强制更新	
						if (!version.equals(当前版本号)) {
							Looper.prepare();
							linearLayouts = new LinearLayout(context);
							linearLayouts.setOrientation(1);
							linearLayouts.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
							linearLayouts.setPadding(40, 40, 40, 40);
							dialogs = new AlertDialog.Builder(context, 5);

							final TextView texties = new TextView(context);
							texties.setTextColor(0xFF000000);
							texties.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
							texties.setText("有新版本");
							texties.setTextSize(23.0f);
							texties.setGravity(5);
							final TextView textVies = new TextView(context);
							textVies.setTextColor(0xFF000000);
							textVies.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
							textVies.setTextSize(17.0f);	
							textVies.setText("\n" + app_update_show + "\n");
							Button Butts = new Button(context);
							Butts.setText("立即更新");
							Butts.setTextSize(13.0f);
							Butts.setTextColor(0xFFFFFFFF);
							Butts.setBackgroundColor(0xFF00C0FF);
							Butts.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
							Butts.setOnClickListener(new View.OnClickListener() {
									@Override 
									public void onClick(View view) {
										alertDialogs.dismiss();

										Uri uri = Uri.parse(app_update_url);
										Intent intent = new Intent(Intent.ACTION_VIEW, uri);
										context.startActivity(intent);
									}});
							linearLayouts.addView(texties);
							linearLayouts.addView(textVies);
							linearLayouts.addView(Butts);
							if (app_update_must.equals("y")) {
								dialogs.setCancelable(false);
							}
							dialogs.setView(linearLayouts);
							alertDialogs = dialogs.show();
							Looper.loop();
						}else{
							公告(context);
						}
					} catch (Exception e) {
					}
				}
			}).start(); 
    }

	public static void 公告(final Context context) {
        new Thread(new Runnable() {
                @Override
                public void run() {
					String sign="/api/?app=" + WY_APPID + "&id=notice"; // 公告
					try {
						String content=RC4Util.decryRC4(UrlPost(wy_url + sign, ""), WY_RC4KEY, "UTF-8");
						JSONObject jsonObject = new JSONObject(content);
						String data=jsonObject.getString("msg");
						JSONObject json = new JSONObject(data);						
						String appgg=json.optString("app_gg");
						Looper.prepare();
						linearLayouts = new LinearLayout(context);
						linearLayouts.setOrientation(1);
						linearLayouts.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
						linearLayouts.setPadding(40, 40, 40, 40);
						dialogs = new AlertDialog.Builder(context, 5);

						final TextView texties = new TextView(context);
						texties.setTextColor(0xFF000000);
						texties.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
						texties.setText("公告");
						texties.setTextSize(23.0f);
						texties.setGravity(5);
						final TextView textVies = new TextView(context);
						textVies.setTextColor(0xFF000000);
						textVies.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
						textVies.setTextSize(17.0f);	
						textVies.setText("\n" + appgg + "\n");
						Button Butts = new Button(context);
						Butts.setText("确定");
						Butts.setTextSize(13.0f);
						Butts.setTextColor(0xFFFFFFFF);
						Butts.setBackgroundColor(0xFF00C0FF);
						Butts.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
						Butts.setOnClickListener(new View.OnClickListener() {
								@Override 
								public void onClick(View view) {
									alertDialogs.dismiss();
									System.out.println("已确定公告");
								}});
						linearLayouts.addView(texties);
						linearLayouts.addView(textVies);
						linearLayouts.addView(Butts);
						dialogs.setCancelable(false);
						dialogs.setView(linearLayouts);
						alertDialogs = dialogs.show();
						Looper.loop();
					} catch (Exception e) {
					}
				}
			}).start(); 
    }

	

	static void Login(final Context context) {
        final AlertDialog.Builder builder = new AlertDialog.Builder(context, 5);

        GradientDrawable background = new GradientDrawable();
        background.setColor(0xFFF6F6F6);

        LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(LinearLayout.LayoutParams.WRAP_CONTENT, LayoutParams.WRAP_CONTENT, 20);
        params.leftMargin = 0;

        GradientDrawable buttonBackground = new GradientDrawable();
        buttonBackground.setStroke(2, 0xFFDCDCDC);
        buttonBackground.setColor(0xFFF6F6F6);

        LinearLayout layout = new LinearLayout(context);
        layout.setOrientation(LinearLayout.VERTICAL);
        layout.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        layout.setBackground(background);

        LinearLayout layout2 = new LinearLayout(context);
        layout2.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        layout2.setPadding(0, 0, 0, 0);

        LinearLayout layout3 = new LinearLayout(context);
        layout3.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        layout3.setPadding(25, 25, 25, 25);   

        TextView title = new TextView(context);
        title.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        title.setGravity(Gravity.CENTER);
        title.setText("ECmod");
        title.setTextColor(0xFF000000);
		title.setPadding(30, 30, 30, 30);
        title.setTextSize(20);
        title.setBackground(buttonBackground);
        layout.addView(title);
        layout.addView(layout3);
        layout.addView(layout2);

        Button button1 = new Button(context);
        button1.setLayoutParams(params);
        button1.setText("登录");
        button1.setTextColor(0xFF1278E7);
        button1.setPadding(30, 30, 30, 30);
        button1.setTextSize(15);
        button1.setBackground(buttonBackground);
        layout2.addView(button1);

        Button button2 = new Button(context);
        button2.setLayoutParams(params);
        button2.setText("解绑");
        button2.setTextColor(0xFF1278E7);
        button2.setPadding(30, 30, 30, 30);
        button2.setTextSize(15);
        button2.setBackground(buttonBackground);
        layout2.addView(button2);

        final EditText editext = new EditText(context);
		editext.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        editext.setHint("请输入卡密");
		editext.setText(读取文件("/storage/emulated/0/km"));
        editext.setTextColor(0xFF1278E7);
        editext.setPadding(10, 10, 10, 10);
        editext.setTextSize(15);
        editext.setBackgroundColor(0xFFF6F6F6);
        

    public static void 创建文件夹(String path) {
        //新建一个File，传入文件夹目录
        File file = new File(path);
        //判断文件夹是否存在，如果不存在就创建，否则不创建
        if (!file.exists()) {
            //通过file的mkdirs()方法创建目录中包含却不存在的文件夹
            file.mkdirs();
        }

    }

	public static void 写入(String Files, String content) {
		try {
			FileWriter utf = new FileWriter(Files);
			utf.write(content);
			utf.close();
		} catch (IOException e) {}
	}

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
	public static String 读取文件(String path) {
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
}

	

