package load.tencent.lib.ku;
import android.content.Context;
import android.content.DialogInterface;
import android.util.Log;
import android.view.View;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.SeekBar;
import android.widget.TextView;
import load.tencent.lib.BoolData;
import load.tencent.lib.HUB.JNICallBack;
import load.tencent.lib.IntData;
public class KillauraCPS {
    public static void show(final Context context) {
        LinearLayout layout = new LinearLayout(context);
        layout.setOrientation(1);
		final TextView KillauraCPS = new TextView(context);
        KillauraCPS.setText("KillauraCPS:"+IntData.Killauracps);
        KillauraCPS.setTextColor(0xFF000000);
        KillauraCPS.setTextSize(15);
        layout.addView(KillauraCPS);
        SeekBar seekbar=new SeekBar(context);
        seekbar.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT,LayoutParams.WRAP_CONTENT));
        seekbar.setMin(1);
        seekbar.setMax(10);
        seekbar.setProgress(IntData.Killauracps);
        seekbar.getThumb().setColorFilter((0xFF9198e5),android.graphics.PorterDuff.Mode.SRC_IN);
		seekbar.getProgressDrawable().setColorFilter((0xFF9198e5), android.graphics.PorterDuff.Mode.SRC_IN);
        layout.addView(seekbar);
        seekbar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
                @Override
                public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
                    Log.e("xyh", "onProgressChanged: " + progress + "");
                    IntData.Killauracps=progress;
                    KillauraCPS.setText("KillauraCPS:"+IntData.Killauracps);
                    JNICallBack.setKillauraCPS(IntData.Killauracps);
                }
                @Override
                public void onStartTrackingTouch(SeekBar seekBar) {
                }
                @Override
                public void onStopTrackingTouch(SeekBar seekBar) {
                }
            });
        CheckBox check1=new CheckBox(context);
        check1.setText("屏蔽村民");
        check1.setTextColor(0xFF000000);
        check1.setTextSize(15);
        check1.setChecked(BoolData.villager);
        layout.addView(check1);
        check1.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    if(!BoolData.villager){
                        BoolData.villager=true;
                        JNICallBack.setVillager();
                    }else{
                        BoolData.villager=false;
                        JNICallBack.setVillager();
                    }
                }
            });
        AinAlertDialog.LayoutAlertDialog(context,"KillauraCPS", new DialogInterface.OnClickListener(){
                @Override
                public void onClick(DialogInterface dia, int which) {
                }
            }, layout);
		}
}
