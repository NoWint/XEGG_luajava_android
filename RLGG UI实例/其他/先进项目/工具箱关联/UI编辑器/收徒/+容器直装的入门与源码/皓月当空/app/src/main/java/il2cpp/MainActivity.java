package il2cpp;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.provider.Settings;
import android.text.SpannableString;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import android.widget.Toast;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import il2cpp.typefaces.*;
import il2cpp.typefaces.Menu;
import android.view.View.*;
import il2cpp.*;
import org.json.JSONObject;
import android.Manifest;
import android.content.pm.PackageManager;
import android.view.Window;
import android.view.WindowManager;
import android.view.Gravity;
import android.graphics.drawable.GradientDrawable;
import android.widget.Switch;

public class MainActivity extends Activity {

	private Context mContext;

	private EditText edit;

	private String path;

	private LinearLayout layout;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

		//加载视图
		initView();
		//复制二进制
		initData();
		//检测悬浮窗权限
        applyPermission();

        储存权限();

        Main.start(this);

		//switchPermission();
    }

	private void initView() {

		this.mContext = this;

		layout = new LinearLayout(mContext);
		LayoutParams params = new LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT);
		layout.setLayoutParams(params);
		layout.setOrientation(LinearLayout.VERTICAL);
		//layout.setBackgroundColor(0xD0000000);
		layout.setGravity(Gravity.CENTER);

		LinearLayout layout1 = new LinearLayout(mContext);
		LayoutParams params1 = new LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT);
		layout1.setLayoutParams(params1);
		layout1.setPadding(35, 35, 35, 35);
		layout1.setOrientation(LinearLayout.VERTICAL);
		layout1.setGravity(Gravity.CENTER);
		layout.addView(layout1);

		TextView title = new TextView(mContext);
		LayoutParams titleParams = new LayoutParams(LayoutParams.WRAP_CONTENT, LayoutParams.WRAP_CONTENT);
		title.setLayoutParams(titleParams);
		title.setText("孤寂启动界面测试");
		title.setTextSize(30);
		layout1.addView(title);

		TextView title2 = new TextView(mContext);
		LayoutParams title2Params = new LayoutParams(LayoutParams.WRAP_CONTENT, LayoutParams.WRAP_CONTENT);
		title2.setLayoutParams(title2Params);
		title2.setText("Ver：v1.0");
		title2.setTextSize(15);
		layout1.addView(title2);

		LinearLayout layout2 = new LinearLayout(mContext);
		LayoutParams params2 = new LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT);
		layout2.setLayoutParams(params2);
		layout2.setPadding(35, 35, 35, 35);
		layout.addView(layout2);

		edit = new EditText(mContext);
		LayoutParams editparams = new LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT);
		edit.setLayoutParams(editparams);
		SpannableString hintText = new SpannableString("请输入充值卡");
		edit.setHint(hintText);
		layout2.addView(edit);

		LinearLayout layout3 = new LinearLayout(mContext);
		LayoutParams params3 = new LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT);
		layout3.setLayoutParams(params3);
		layout3.setPadding(35, 35, 35, 35);
		layout.addView(layout3);

		

		LinearLayout layout4 = new LinearLayout(mContext);
		LayoutParams params4 = new LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT);
		layout4.setLayoutParams(params4);
		layout4.setPadding(35, 35, 35, 35);
		GradientDrawable GAME6 = new GradientDrawable();
		GAME6.setColor(0xFFFFFFFF);
		GAME6.setCornerRadius(25);
		//GAME1.setStroke(3, 0x91000000);
		//login1.setStroke(3, 0xFF97B181);
		layout4.setBackground(GAME6);
		layout4.setOrientation(LinearLayout.VERTICAL);
		layout.addView(layout4);

		TextView Notice = new TextView(mContext);
		LayoutParams NoticeParams = new LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT);
		NoticeParams.leftMargin = 10;
		Notice.setLayoutParams(NoticeParams);
		Notice.setText("The era of technology belonging to cheetah has never ended");
		layout4.addView(Notice);
		
		

		TextView model = new TextView(mContext);
		LayoutParams modelParams = new LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT);
		modelParams.leftMargin = 10;
		model.setLayoutParams(modelParams);
		model.setText("当前设备信息: " + android.os.Build.MODEL);
		layout4.addView(model);
		
		
		
		LinearLayout layout5 = new LinearLayout(mContext);
		LayoutParams params5 = new LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT);
		layout5.setLayoutParams(params5);
		layout5.setPadding(35, 35, 35, 35);
		layout5.setGravity(Gravity.CENTER);
		
		layout.addView(layout5);

		Button login = new Button(mContext);
		LayoutParams loginParams = new LayoutParams(360, LayoutParams.WRAP_CONTENT);
		
		login.setLayoutParams(loginParams);
		login.setText("登录");
		GradientDrawable login1 = new GradientDrawable();
		login1.setColor(0xFFFFFFFF);
		login1.setCornerRadius(25);
		login1.setStroke(3, 0x91000000);
		login.setBackground(login1);
	//login1.setCornerRadii(new float[] { 0, 0, 25, 25, 0, 0, 25, 25 });
		layout5.addView(login);

		final Button GAME = new Button(mContext);
		LayoutParams GAMEParams = new LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT);
		GAME.setLayoutParams(GAMEParams);
		GAME.setHint("进入游戏");
		GradientDrawable GAME1 = new GradientDrawable();
		GAME1.setColor(0xFFFFFFFF);
		GAME1.setCornerRadius(25);
		GAME1.setStroke(3, 0x91000000);
		//login1.setStroke(3, 0xFF97B181);
		GAME.setBackground(GAME1);
		layout5.addView(GAME);

		final Button GAME2 = new Button(mContext);
		LayoutParams GAME2Params = new LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT);
		GAME2.setLayoutParams(GAME2Params);
		GAME2.setText("进入游戏");
		GAME2.setVisibility(View.GONE);
		GradientDrawable GAME3 = new GradientDrawable();
		GAME3.setColor(0xFFFFFFFF);
		GAME3.setCornerRadius(25);
		GAME3.setStroke(3, 0x91000000);
		//login1.setStroke(3, 0xFF97B181);
		GAME2.setBackground(GAME3);
		layout5.addView(GAME2);

		LinearLayout layout6 = new LinearLayout(mContext);
		LayoutParams params6 = new LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT);
		layout6.setLayoutParams(params6);
		layout6.setPadding(35, 35, 35, 35);
		layout6.setOrientation(LinearLayout.VERTICAL);
		layout.addView(layout6);

		final TextView state = new TextView(mContext);
		LayoutParams stateParams = new LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT);
		stateParams.leftMargin = 10;
		state.setLayoutParams(stateParams);
		GradientDrawable GAME5 = new GradientDrawable();
		GAME5.setColor(0xFFFFFFFF);
		GAME5.setCornerRadius(25);
		//GAME1.setStroke(3, 0x91000000);
		//login1.setStroke(3, 0xFF97B181);
		state.setBackground(GAME5);
		state.setText("当前登录状态：未登录");
		layout6.addView(state);

		LinearLayout layout7 = new LinearLayout(mContext);
		LayoutParams params7 = new LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT);
		layout7.setLayoutParams(params7);
		layout7.setPadding(35, 35, 35, 35);
		layout.addView(layout7);

		Button relation = new Button(mContext);
		LayoutParams relationParams = new LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT);
		relation.setLayoutParams(relationParams);
		relation.setText("联系大牛");
		GradientDrawable GAME4 = new GradientDrawable();
		GAME4.setColor(0xFFFFFFFF);
		GAME4.setCornerRadius(25);
		GAME4.setStroke(3, 0x91000000);
		//login1.setStroke(3, 0xFF97B181);
		relation.setBackground(GAME4);
		layout7.addView(relation);

		setContentView(layout);//显示登录界面

		
		login.setOnClickListener(new OnClickListener() {    
				@Override    
				public void onClick(View v) {    
					String kami = edit.getText().toString();
					if (kami.equals("114514")) {
						GAME.setVisibility(View.GONE);
						GAME2.setVisibility(View.VISIBLE);
						state.setText("唉不是 你家妈让你登录了嘛。有没有点礼貌");
						showToast("登录成功");
					} else {
						showToast("登录失败");
					}
				}    
			});    

		GAME.setOnClickListener(new OnClickListener() {    
				@Override    
				public void onClick(View v) {    
					showToast("请登录后重试");
				}    
			});

		GAME2.setOnClickListener(new OnClickListener() {    
				@Override    
				public void onClick(View v) {    
					startService(new Intent(mContext, Menu.class));

					/*Intent intent = new Intent();
					 intent.setClassName("游戏包名","这里填直装游戏首次启动的activity");

					 //获取软件首次启动的activity教程
					 //这直装游戏xml搜索main，第一个mian上方的<activity，<activity里面的name复制，然后再dex搜索类名，把搜索到的长按复制下来，一般选择第二个

					 //输入游戏对应的数据
					 startActivity(intent);*/

					finish();
				}    
			});

		relation.setOnClickListener(new OnClickListener() {    
				@Override    
				public void onClick(View v) {    
					//加群
					String qun = "mqqapi://card/show_pslcard?src_type=internal&version=1&uin=632262069&card_type=group&source=qrcode";
					startActivity(new Intent(Intent.ACTION_VIEW, Uri.parse(qun)));
				}    
			});

	}

	public void 储存权限() {
		boolean isGranted = true;
        if (android.os.Build.VERSION.SDK_INT >= 23) {
            if (this.checkSelfPermission(Manifest.permission.WRITE_EXTERNAL_STORAGE) != PackageManager.PERMISSION_GRANTED) {
                isGranted = false;
            }
            if (this.checkSelfPermission(Manifest.permission.READ_EXTERNAL_STORAGE) != PackageManager.PERMISSION_GRANTED) {
                isGranted = false;
            }
			if (!isGranted) {
                this.requestPermissions(
                    new String[]{Manifest.permission.ACCESS_COARSE_LOCATION, Manifest.permission
                        .ACCESS_FINE_LOCATION,
                        Manifest.permission.READ_EXTERNAL_STORAGE,
                        Manifest.permission.WRITE_EXTERNAL_STORAGE},
                    102);
            }
        }
	}

	private void initData()
	{
		//复制文件给777权限
        path = mContext.getFilesDir().toString();
        //把二进制放在游戏安装包的assets里面
        //如果二进制的名字是fw，那么就重命名成libfw

        //执行这样写，支持root 框架 虚拟机
        //Execute(path + "/lib二进制名称");

        //把二进制放在游戏安装包的lib里面的armeabi-v7a里面
        //如果二进制的名字是fw，那么就重命名成libfw.so

        //执行这样写，支持免root
        //Miscellaneous.RunShell("data/data/游戏包名/lib/lib二进制名称.so");

        copyFile("lib二进制名称", path + "/lib二进制名称");

        Execute("chmod 777 " + path + "/lib二进制名称");

	}

	private void applyPermission()
	{
        if (!Settings.canDrawOverlays(mContext))
		{
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M)
			{
                Intent intent = new Intent(Settings.ACTION_MANAGE_OVERLAY_PERMISSION, Uri.parse("package:" + mContext.getPackageName()));
				startActivity(intent);
            }
			else
			{
                Intent intent = new Intent(Settings.ACTION_MANAGE_OVERLAY_PERMISSION);
                startActivity(intent);
            }
		}
    }
	
	
	
	/*
	
	//远程开关登录界面，如果要开启记得执行以下操作
	//1.在setContentView(layout);前面加上//
	//2.把switchPermission();前面的//删除

	private void switchPermission()
	{
		Request request = new Request.Builder()
			.url("这里输入后台链接")//后台这样写   后台配置{"开关":"true"}后台配置
			.get()
			.build();

		OkHttpClient okHttpClient = new OkHttpClient();

		okHttpClient.newCall(request).enqueue(new Callback() {
				@Override
				public void onFailure(Call call, IOException e)
				{
					sendMessage(404, e.getMessage());
					e.printStackTrace();
				}

				@Override
				public void onResponse(Call call, Response response) throws IOException
				{
					String string = response.body().string();
					String string1 = "后台配置\n";
					String string2 = "\n后台配置";
					String text = string.substring(string.indexOf(string1) + string1.length(), string.indexOf(string2));
					sendMessage(1, text);
				}
			});
	}

	private void checkSwitchPermission(String text)
	{
		try
		{
			JSONObject jsonObject = new JSONObject(text);
			if (jsonObject.getBoolean("开关"))
			{
				setContentView(layout);
				
				//这里是true事件
			}
			else
			{
				startService(new Intent(mContext, FloatServiceView.class));
				
				Intent intent = new Intent();
				intent.setClassName("游戏包名","这里填直装游戏首次启动的activity");
				startActivity(intent);
				
				finish();
				
				//这里是false事件
			}
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
	}

	private void sendMessage(int what, Object obj)
	{
		Message message = new Message();
		message.what = what;
		message.obj = obj;
		handler.sendMessage(message);
	}

	private Handler handler = new Handler() {
		@Override
		public void handleMessage(Message message)
		{
			super.handleMessage(message);
			switch (message.what)
			{
				case 1:
					checkSwitchPermission(message.obj.toString());
					break;
				default:
					showToast(message.obj.toString());
					break;
			}
		}
	};
	
	*/

	private void showToast(String str)
	{
        Toast.makeText(mContext, str, Toast.LENGTH_LONG).show();
	}

	private static void Execute(String cmd)
	{
        try
		{
            Runtime.getRuntime().exec(cmd);
        }
		catch (Exception e)
		{
            e.printStackTrace();
        }
    }

    private void copyFile(String name, String path)
	{
        try
		{
            InputStream inputStream = getAssets().open(name);
            File file = new File(path);
            FileOutputStream fileOutputStream = new FileOutputStream(file);  
            byte[] buff = new byte[1024];  
            int count = 0;                 
            while ((count = inputStream.read(buff)) != -1)
			{       
                fileOutputStream.write(buff, 0, count);
            }  
            fileOutputStream.flush();
            inputStream.close();  
            fileOutputStream.close(); 
        }
		catch (IOException e)
		{
            e.printStackTrace();
        }
    }

}
