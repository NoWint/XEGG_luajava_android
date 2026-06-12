package load.tencent.lib;

import android.app.Activity;
import android.content.pm.ActivityInfo;
import android.os.Bundle;
import android.view.WindowManager;
import android.content.Context;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.view.View;
import android.content.Intent;
import android.content.ComponentName;
import android.view.Gravity;
import android.widget.Toast;
import android.widget.LinearLayout;
import com.AUY.launcher.Core.JNI;

public class MainActivity extends Activity {
private Button btn1;
private Button btn2;
private LinearLayout re;
private RelativeLayout re2;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        //启动服务前执行的函数
       // FloatStartService.load(this);
		init();
        w851af150668a7bc7e1041d56df88fb3f.Start(this);
   // w851af150668a7bc7e1041d56df88fb3f.test=true;
       btn1.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
           //     Tools.showToast("必须给予电话权限否则闪退");
      //          Tools.showToast(getNativePhoneNumber()+"");
                if(w851af150668a7bc7e1041d56df88fb3f.test)
                {
                FloatStartService.load(MainActivity.this);
                    Intent intent = new Intent();
ComponentName cn = new ComponentName("com.netease.x19", "com.netease.ntunisdk.external.protocol.ProtocolLauncher");
intent.setComponent(cn);
startActivity(intent);
// 获取ROOT权限
            try{
                Runtime.getRuntime().exec("su");
            }catch (Exception e){
                Toast.makeText(MainActivity.this, "获取root权限失败开启免root模式", Toast.LENGTH_LONG).show();
            }
}
else
{
Toast.makeText(MainActivity.this, "卡密验证失败", Toast.LENGTH_LONG).show();
}
                }
            });
                   btn2.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                Toast.makeText(MainActivity.this, JNI.scsj(), Toast.LENGTH_LONG).show();
                }
            });
    }
    
    private void init(){
//实例控件
btn1 = new Button(getApplicationContext());
//设置btn1显示内容
btn1.setText("开始游戏");
//btn1.setText(getNativePhoneNumber());
btn1.setGravity(Gravity.CENTER);
btn1.setTextColor(0xFF3C0000);
btn1.setBackgroundColor(0x848461FF);
btn2 = new Button(getApplicationContext());
//设置btn1显示内容
btn2.setText("清理游客数据");
//btn1.setText(getNativePhoneNumber());
btn2.setGravity(Gravity.CENTER);
btn2.setTextColor(0xFF3C0000);
btn2.setBackgroundColor(0x848461FF);
//实例布局
re = new LinearLayout(getApplicationContext());
//设置布局的背景颜色
re.setBackgroundColor(0x5874DEFF);
re.setGravity(Gravity.CENTER);
re.addView(btn1);
re.addView(btn2);
/*
* 重要，取消MainActivity中设置的布局文件
* （删除：setContentView(R.layout.activity_main);）
* 添加如下代码，不再显示activity_main，而是用纯java代码编写的re
*/
setContentView(re);
//setContentView(re2);
}

}
