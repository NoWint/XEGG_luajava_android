package load.tencent.lib.MoveButton;
import android.content.Context;
import android.graphics.PixelFormat;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
public class MoveButton extends LinearLayout {
    private Context mContext;
    private WindowManager wManager;
    private int screenWidth;
    private int screenHeight;
    private WindowManager.LayoutParams wParams;
    private boolean moving=false;
    private boolean isView;
	private LinearLayout controlView;
    public MoveButton(Context context,String n,OnClickListener click) {
        super(context);
        mContext = context;
        initView(n,click);
    }
    private void initView(String n,final OnClickListener click) {
		final GradientDrawable buttonBackground = new GradientDrawable();
        buttonBackground.setColor(0xCA1B191A);
		buttonBackground.setCornerRadius(40);
		controlView = new LinearLayout(mContext);
		controlView.setOrientation(1);
		controlView.setBackground(buttonBackground);
		LinearLayout.LayoutParams titleParams = new LinearLayout.LayoutParams(LinearLayout.LayoutParams.WRAP_CONTENT, LinearLayout.LayoutParams.WRAP_CONTENT);
		controlView.setLayoutParams(titleParams);
		addView(controlView);
		LinearLayout layout1_3 = new LinearLayout(mContext);
		LinearLayout.LayoutParams layoutParams1_3 = new LinearLayout.LayoutParams(LayoutParams.WRAP_CONTENT, LayoutParams.WRAP_CONTENT);
        layout1_3.setLayoutParams(layoutParams1_3);
		layout1_3.setPadding(20,20,20,20);
		layout1_3.setGravity(Gravity.CENTER);
		controlView.addView(layout1_3);
		final TextView layout1_3text = new TextView(mContext);
        LinearLayout.LayoutParams layout1_3textParams = new LinearLayout.LayoutParams(LayoutParams.WRAP_CONTENT, LinearLayout.LayoutParams.WRAP_CONTENT);
        layout1_3text.setLayoutParams(layout1_3textParams);
        layout1_3text.setText(" "+n+" ");
		layout1_3text.setTextSize(14);
		layout1_3text.setTextColor(0xFFFFFFFF);
		layout1_3.addView(layout1_3text);
        wManager = (WindowManager) mContext.getSystemService(Context.WINDOW_SERVICE);
        DisplayMetrics metrics = new DisplayMetrics();
        wManager.getDefaultDisplay().getRealMetrics(metrics);
        screenWidth = metrics.widthPixels;
        screenHeight = metrics.heightPixels;
        wParams = new WindowManager.LayoutParams();
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            wParams.type = WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY;
        } else {
            wParams.type = WindowManager.LayoutParams.TYPE_SYSTEM_ALERT;
        }
        wParams.flags = WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE;
        wParams.gravity = Gravity.CENTER | Gravity.CENTER;
        wParams.x = 0;
        wParams.y = 0;
        wParams.width = WindowManager.LayoutParams.WRAP_CONTENT;
        wParams.height = WindowManager.LayoutParams.WRAP_CONTENT;
        wParams.format = PixelFormat.RGBA_8888;
		layout1_3.setOnClickListener(new OnClickListener() {
				@Override
                private boolean iskg1 = false;
				public void onClick(View v) {
					if(click!=null){
						click.onClick(v);
					}
					if (!iskg1) {
						iskg1 = true;
						layout1_3text.setTextColor(0xff0057E5);
					} else {
						iskg1 = false;
						layout1_3text.setTextColor(0xFFFFFFFF);
					}
				}
			});
        layout1_3.setOnLongClickListener(new View.OnLongClickListener() {
                @Override
                public boolean onLongClick(View view) {
                    moving = true;
                    return true;
                }
            });
        layout1_3.setOnTouchListener(new View.OnTouchListener() {
                private float lastX; //上一次位置的X.Y坐标
                private float lastY;
                @Override
                public boolean onTouch(View view, MotionEvent event) {
                    int action = event.getAction();
                    if (action == MotionEvent.ACTION_DOWN) {
                        //点击
                        lastX = (int) event.getRawX();
                        lastY = (int) event.getRawY();
                    } else if (action == MotionEvent.ACTION_MOVE && moving) {
                        //移动
                        //当前移动位置的X.Y坐标
                        float nowX = (int) event.getRawX();
                        float nowY = (int) event.getRawY();
                        // 计算XY坐标偏移量
                        //悬浮窗移动位置的相对值
                        float tranX = (int) (nowX) - (int) (lastX);//*-1/10;
                        float tranY = (int) (nowY) - (int) (lastY);//*-1/10;
                        wParams.x+= tranX;
                        wParams.y += tranY;
                        updateView();
                        lastX = (int) nowX;
                        lastY = (int) nowY;
                    } else if (action == MotionEvent.ACTION_UP) {
                        moving = false;
                    }
                    return false;
                }
            });
            }
	
    public void showView() {
        if (!isView) {
            isView = true;
            wManager.addView(this, wParams);
			}
    }
    public void updateView() {
        wManager.updateViewLayout(this, wParams);
    }
    public void clearView() {
        if (isView) {
            isView = false;
            wManager.removeView(this);
        }
    }
}
