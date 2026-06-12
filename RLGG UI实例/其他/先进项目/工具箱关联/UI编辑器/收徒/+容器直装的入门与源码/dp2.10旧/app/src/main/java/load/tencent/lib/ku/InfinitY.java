package load.tencent.lib.ku;
import android.content.Context;
import android.content.DialogInterface;
import android.provider.Settings;
import android.text.InputType;
import android.widget.EditText;
import android.widget.Toast;
import android.widget.LinearLayout;
import load.tencent.lib.HUB.JNICallBack;
import android.widget.TextView;
import android.widget.SeekBar;
import android.widget.RelativeLayout.LayoutParams;
import android.util.Log;
import load.tencent.lib.IntData;
public class InfinitY {
    public static void show(final Context context) {
        LinearLayout layout = new LinearLayout(context);
        layout.setOrientation(1);
		final TextView KillauraCPS = new TextView(context);
        KillauraCPS.setText("InfinitY:"+IntData.ydistance);
        KillauraCPS.setTextColor(0xFF000000);
        KillauraCPS.setTextSize(15);
        layout.addView(KillauraCPS);
        SeekBar seekbar=new SeekBar(context);
        seekbar.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT,LayoutParams.WRAP_CONTENT));
        seekbar.setMin(10);
        seekbar.setMax(30);
        seekbar.setProgress(IntData.ydistance);
        seekbar.getThumb().setColorFilter((0xFF9198e5),android.graphics.PorterDuff.Mode.SRC_IN);
		seekbar.getProgressDrawable().setColorFilter((0xFF9198e5), android.graphics.PorterDuff.Mode.SRC_IN);
        layout.addView(seekbar);
        seekbar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
                @Override
                public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
                    Log.e("xyh", "onProgressChanged: " + progress + "");
                    IntData.ydistance=progress;
                    KillauraCPS.setText("InfinitY:"+IntData.ydistance);
                    JNICallBack.setInfiniY(IntData.ydistance);
                }
                @Override
                public void onStartTrackingTouch(SeekBar seekBar) {
                }
                @Override
                public void onStopTrackingTouch(SeekBar seekBar) {
                }
            });
        final TextView KillauraCPS1 = new TextView(context);
        KillauraCPS1.setText("InfinitCPS:"+IntData.InfinitCPS);
        KillauraCPS1.setTextColor(0xFF000000);
        KillauraCPS1.setTextSize(15);
        layout.addView(KillauraCPS1);
        SeekBar seekbar1=new SeekBar(context);
        seekbar1.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT,LayoutParams.WRAP_CONTENT));
        seekbar1.setMin(1);
        seekbar1.setMax(10);
        seekbar1.setProgress(IntData.InfinitCPS);
        seekbar1.getThumb().setColorFilter((0xFF9198e5),android.graphics.PorterDuff.Mode.SRC_IN);
        seekbar1.getProgressDrawable().setColorFilter((0xFF9198e5), android.graphics.PorterDuff.Mode.SRC_IN);
        layout.addView(seekbar1);
        seekbar1.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
                @Override
                public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
                    Log.e("xyh", "onProgressChanged: " + progress + "");
                    IntData.InfinitCPS=progress;
                    KillauraCPS1.setText("InfinitCPS:"+IntData.InfinitCPS);
                    JNICallBack.setInfiniYCPS(IntData.InfinitCPS);
                }
                @Override
                public void onStartTrackingTouch(SeekBar seekBar) {
                }
                @Override
                public void onStopTrackingTouch(SeekBar seekBar) {
                }
            });
        AinAlertDialog.LayoutAlertDialog(context,"Y轴大刀攻击调整", new DialogInterface.OnClickListener(){
                @Override
                public void onClick(DialogInterface dia, int which) {
                }
            }, layout);
		}
}
