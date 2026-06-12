package load.tencent.lib;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.graphics.PixelFormat;
import android.graphics.Typeface;
import android.os.Build;
import android.os.IBinder;
import android.view.Gravity;
import android.view.WindowManager;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import android.widget.LinearLayout;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import com.relax.mix.newlibrary.OpenModBth;
import load.tencent.lib.Menu.Player;

public class FloatServiceView extends Service {
    private Context mContext;
    public static Name n;
	public static Player Player;
    public static FloatControlView floatControlView;
    public static LinearLayout layout;
    public static WindowManager wManager;
    public static android.view.WindowManager.LayoutParams wParams;
    @Override
    public IBinder onBind(Intent Intent) {
        return null;
    }
    @Override
    public void onCreate() {
        super.onCreate();
        this.mContext = this;
        Load.Load(mContext);
        floatControlView = new FloatControlView(mContext);
        floatControlView.showView();
        n = new Name(mContext);
	//	new GaussianBlur(mContext).showView();
		
    }
    @Override
    public void onDestroy() {
        super.onDestroy();
        if (floatControlView != null) {
            floatControlView.clearView();
        }
    }

}
