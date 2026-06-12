package load.tencent.lib.ku;
import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import load.tencent.lib.BoolData;
import load.tencent.lib.HUB.JNICallBack;
public class LockY {
    public static void show(final Context context) {
        LinearLayout layout = new LinearLayout(context);
        layout.setOrientation(1);
		CheckBox check1=new CheckBox(context);
        check1.setText("LockY");
        check1.setTextColor(0xFF000000);
        check1.setTextSize(15);
        check1.setChecked(BoolData.LockY);
        layout.addView(check1);
        check1.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    if(!BoolData.LockY){
                        BoolData.LockY=true;
                        JNICallBack.setScaffoldY(BoolData.LockY);
                    }else{
                        BoolData.LockY=false;
                        JNICallBack.setScaffoldY(BoolData.LockY);
                    }
                }
            });
        AinAlertDialog.LayoutAlertDialog(context,"自动搭路调节", new DialogInterface.OnClickListener(){
                @Override
                public void onClick(DialogInterface dia, int which) {
                }
            }, layout);
		}
}
