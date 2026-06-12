package load.tencent.lib.ku;
import android.content.Context;
import android.content.DialogInterface;
import android.provider.Settings;
import android.text.InputType;
import android.widget.EditText;
import android.widget.Toast;
import android.widget.LinearLayout;
import load.tencent.lib.BoolData;
import load.tencent.lib.yz;
public class Login {
    public static void show(final Context context) {
        LinearLayout layout = new LinearLayout(context);
        layout.setOrientation(1);
		final EditText inputServer =new EditText(context);
        inputServer.setHint("激活码");
        inputServer.setHintTextColor(0xFF000000);
        layout.addView(inputServer);
        AinAlertDialog.LayoutAlertDialog(context, "激活码:", new DialogInterface.OnClickListener(){
                @Override
                public void onClick(DialogInterface dia, int which) {
                     yz.登录(inputServer.getText().toString(),context);
                }
            }, layout);
    }
}
