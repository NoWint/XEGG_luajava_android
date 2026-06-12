package load.tencent.lib.ku;
import android.content.Context;
import android.content.DialogInterface;
import android.provider.Settings;
import android.text.InputType;
import android.widget.EditText;
import android.widget.Toast;
import android.widget.LinearLayout;
import load.tencent.lib.HUB.JNICallBack;
public class TP {
    public static void show(final Context context) {
        LinearLayout layout = new LinearLayout(context);
        layout.setOrientation(1);
		final EditText inputServer =new EditText(context);
        inputServer.setHint("X:");
        inputServer.setHintTextColor(0xFF000000);
        layout.addView(inputServer);
        final EditText inputServer1 =new EditText(context);
        inputServer1.setHint("Y:");
        inputServer1.setHintTextColor(0xFF000000);
        layout.addView(inputServer1);
        final EditText inputServer2 =new EditText(context);
        inputServer2.setHint("Z:");
        inputServer2.setHintTextColor(0xFF000000);
        layout.addView(inputServer2);
        AinAlertDialog.LayoutAlertDialog(context,"Teleport", new DialogInterface.OnClickListener(){
                @Override
                public void onClick(DialogInterface dia, int which) {
                String x=inputServer.getText().toString();
                String y=inputServer1.getText().toString();
                String z=inputServer2.getText().toString();
                if(!x.equals("") && !y.equals("") && !z.equals("")){
                    int xnum = Integer.parseInt(x);
                    int ynum = Integer.parseInt(y);
					int znum = Integer.parseInt(z);
                    JNICallBack.setTP(xnum,ynum,znum);
                }
                }
            }, layout);
		}
}
