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
public class Hitbox {
    public static void show(final Context context) {
        LinearLayout layout = new LinearLayout(context);
        layout.setOrientation(1);
		final TextView KillauraCPS = new TextView(context);
        KillauraCPS.setText("Hitbox_X_Size:"+IntData.Hitboxx);
        KillauraCPS.setTextColor(0xFF000000);
        KillauraCPS.setTextSize(15);
        layout.addView(KillauraCPS);
        SeekBar seekbar=new SeekBar(context);
        seekbar.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT,LayoutParams.WRAP_CONTENT));
        seekbar.setMin(1);
        seekbar.setMax(10);
        seekbar.setProgress(IntData.Hitboxx);
        seekbar.getThumb().setColorFilter((0xFF9198e5),android.graphics.PorterDuff.Mode.SRC_IN);
		seekbar.getProgressDrawable().setColorFilter((0xFF9198e5), android.graphics.PorterDuff.Mode.SRC_IN);
        layout.addView(seekbar);
        seekbar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
                @Override
                public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
                    Log.e("xyh", "onProgressChanged: " + progress + "");
                    IntData.Hitboxx=progress;
                    KillauraCPS.setText("Hitbox_X_Size:"+IntData.Hitboxx);
                    JNICallBack.setHitboxx(IntData.Hitboxx);
                }
                @Override
                public void onStartTrackingTouch(SeekBar seekBar) {
                }
                @Override
                public void onStopTrackingTouch(SeekBar seekBar) {
                }
            });
        final TextView KillauraCPS1 = new TextView(context);
        KillauraCPS1.setText("Hitbox_Y_Size:"+IntData.Hitboxy);
        KillauraCPS1.setTextColor(0xFF000000);
        KillauraCPS1.setTextSize(15);
        layout.addView(KillauraCPS1);
        SeekBar seekbar1=new SeekBar(context);
        seekbar1.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT,LayoutParams.WRAP_CONTENT));
        seekbar1.setMin(1);
        seekbar1.setMax(10);
        seekbar1.setProgress(IntData.Hitboxy);
        seekbar1.getThumb().setColorFilter((0xFF9198e5),android.graphics.PorterDuff.Mode.SRC_IN);
        seekbar1.getProgressDrawable().setColorFilter((0xFF9198e5), android.graphics.PorterDuff.Mode.SRC_IN);
        layout.addView(seekbar1);
        seekbar1.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
                @Override
                public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
                    Log.e("xyh", "onProgressChanged: " + progress + "");
                    IntData.Hitboxy=progress;
                    KillauraCPS1.setText("Hitbox_Y_Size:"+IntData.Hitboxy);
                  //  JNICallBack.setHitboxy(IntData.Hitboxy);
                }
                @Override
                public void onStartTrackingTouch(SeekBar seekBar) {
                }
                @Override
                public void onStopTrackingTouch(SeekBar seekBar) {
                }
            });
        AinAlertDialog.LayoutAlertDialog(context,"HitBoxSize", new DialogInterface.OnClickListener(){
                @Override
                public void onClick(DialogInterface dia, int which) {
                }
            }, layout);
		}
}
