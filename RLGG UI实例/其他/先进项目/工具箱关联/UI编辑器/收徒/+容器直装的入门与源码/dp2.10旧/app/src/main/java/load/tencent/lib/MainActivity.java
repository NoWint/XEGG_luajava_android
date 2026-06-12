package load.tencent.lib;
import android.app.Activity;
import android.os.Bundle;
import load.tencent.lib.HUB.JNICallBack;
import com.relax.mix.newlibrary.OpenModBth;
import android.widget.LinearLayout;
import android.view.Gravity;
import android.widget.TextView;
public class MainActivity extends Activity {
    @Override
    public static boolean a=false;
    private LinearLayout layout;
    protected void onCreate(Bundle savedInstanceState) {
        yz.Start(this);
        new Hud(this).showView();
        super.onCreate(savedInstanceState);
        FloatStartService.load(this);
        layout = new LinearLayout(this);
        layout.setGravity(Gravity.CENTER | Gravity.CENTER);
        setContentView(layout);
        TextView title = new TextView(this);
        title.setText("请在元萝卜内打开此软件");
        layout.addView(title);
        new Thread(new Runnable() {
                @Override
                public void run() {
                    while (true) {
                        MainActivity.this.runOnUiThread(new Runnable() {
                                @Override
                                public void run() {
                                    if (TData.Player3) {
                                        Name.title1_1.setText("HP: " + JNICallBack.HP());
                                        Name.title2.setText("Distance: " + JNICallBack.distance());
                                    }
                                }});
                        try {
                            Thread.sleep(250);
                        } catch (InterruptedException e) {
                        }
                    }
                }}).start();
        new Thread(new Runnable() {
                @Override
                public void run() {
                    while (true) {
                        MainActivity.this.runOnUiThread(new Runnable() {
                                @Override
                                public void run() {
                                    Hud.s = Hud.s + 1;
                                }});
                        try {
                            Thread.sleep(1000);
                        } catch (InterruptedException e) {
                        }
                    }
                }}).start();
        new Thread(new Runnable() {
                @Override
                public void run() {
                    while (true) {
                        MainActivity.this.runOnUiThread(new Runnable() {
                                @Override
                                public void run() {
                                    if(Hud.s==60){
                                        Hud.s=0;
                                        Hud.minute=Hud.minute+1;
                                    }
                                    if(Hud.minute==60){
                                        Hud.minute=0;
                                        Hud.hour=Hud.hour+1;
                                    }
                                    if(a==true){
                                    if(JNICallBack.Attack()==true){
                                        Hud.title4.setText("Attacking!");
                                    }else if(JNICallBack.Attack()==false){
                                        Hud.title4.setText("NoAttack.");
                                    }
                                    }
                                    Hud.title3.setText("Played:"+Hud.hour+" Hour "+Hud.minute+" Minute "+Hud.s);
                                }});
                        try {
                            Thread.sleep(100);
                        } catch (InterruptedException e) {
                        }
                    }
                }}).start();

    }
    private int W() {
        return (int) (this.getResources().getDisplayMetrics().widthPixels);
    }
    private int H() {
        return (int) (this.getResources().getDisplayMetrics().heightPixels);
    }
}
