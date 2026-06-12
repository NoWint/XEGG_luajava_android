package load.tencent.lib;
import android.widget.PopupWindow;
import android.content.Context;
import android.widget.LinearLayout;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.view.WindowManager;
import android.view.Gravity;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import android.view.View;
import load.tencent.lib.HUB.JNICallBack;
public class Name extends PopupWindow {
    private Context mContext;
	public static LinearLayout layout;
    public static TextView title1_1;
    public static TextView title2;
    public static LinearLayout layoutl;
    public Name(Context context) {
        super(context);
        this.mContext = context;
        initView();
    }
    private void initView() {
        setAnimationStyle(android.R.style.Animation_Dialog);
        layoutl = new LinearLayout(mContext);
        layoutl.setPadding(20,20,20,20);
		layout = new LinearLayout(mContext);
        layoutl.addView(layout);
        layout.setOrientation(LinearLayout.VERTICAL);
        layout.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.WRAP_CONTENT, LayoutParams.WRAP_CONTENT));
        title1_1 = new TextView(mContext);
        title1_1.setText("HP: 0");
        title1_1.setPadding(20,20,20,10);
        title1_1.setTextColor(0xFFFFFFFF);
        title1_1.setTextSize(15);
        layout.addView(title1_1);
        title2 = new TextView(mContext);
        title2.setText("Distance: 0");
        title2.setPadding(20,0,20,20);
        title2.setTextColor(0xFFFFFFFF);
        title2.setTextSize(15);
        layout.addView(title2);
		GradientDrawable background = new GradientDrawable();
        background.setColor(0xEE1B191A);
        background.setCornerRadius(30);
		layout.setBackground(background);
        setContentView(layoutl);
		setBackgroundDrawable(new ColorDrawable(0x00000000));
		setWidth(LayoutParams.WRAP_CONTENT);
		setHeight(LayoutParams.WRAP_CONTENT);
		setFocusable(false);
        setTouchable(false);
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            setWindowLayoutType(WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY);
        } else {
            setWindowLayoutType(WindowManager.LayoutParams.TYPE_SYSTEM_ALERT);
        }
		}
        
    public void showView() {
        this.showAtLocation(this.getContentView(), Gravity.CENTER|Gravity.RIGHT, 200, 0);
	}
    public void dis() {
        dismiss();
	}
}
