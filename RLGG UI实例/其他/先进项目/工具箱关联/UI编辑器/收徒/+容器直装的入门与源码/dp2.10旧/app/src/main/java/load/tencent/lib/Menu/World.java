package load.tencent.lib.Menu;

import android.app.Instrumentation;
import android.content.Context;
import android.graphics.PixelFormat;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.TextView;
import load.tencent.lib.HUB.JNICallBack;
import load.tencent.lib.Load;
import load.tencent.lib.MoveButton.MoveButton;
import load.tencent.lib.TData;
import load.tencent.lib.Text;
import load.tencent.lib.ThunderUI;
public final class World extends LinearLayout {
    private Context mContext;
    private MoveButton m1,m2,m3,m4,m5;
    private WindowManager wManager;
    private int screenWidth;
    private int screenHeight;
    private WindowManager.LayoutParams wParams;
    private boolean moving=false;
    private boolean isView;
	public static LinearLayout controlView;
    public World(Context context) {
        super(context);
        mContext = context;
        initView();
    }
    private void initView() {
        m1 = new MoveButton(mContext,"Fucker",new OnClickListener() {
                @Override
                public void onClick(View v) {
                    if (!TData.World1) {
                        TData.World1= true;
                        Load.mod.AddText("Fucker",null);
                    } else {
                        TData.World1 = false;
                        Load.mod.RemoveText("Fucker",null);
                    }
                    JNICallBack.setFucker();
                    Load.notice.make("Fucker", TData.World1);
                }
			});
        m2 = new MoveButton(mContext,"RemoteStop",new OnClickListener() {
                @Override
                public void onClick(View v) {
                    if (!TData.World2) {
                        TData.World2= true;
                        Load.mod.AddText("RemoteStop",null);
                    } else {
                        TData.World2 = false;
                        Load.mod.RemoveText("RemoteStop",null);
                    }
                    JNICallBack.setTread();
                    Load.notice.make("RemoteStop", TData.World2);
                }
			});
        m3 = new MoveButton(mContext,"GameMode",new OnClickListener() {
                @Override
                public void onClick(View v) {
                    if (!TData.World3) {
                        TData.World3= true;
                        Load.mod.AddText("GameMode",null);
                    } else {
                        TData.World3 = false;
                        Load.mod.RemoveText("GameMode",null);
                    }
                    JNICallBack.setGameMode();
                    Load.notice.make("GameMode", TData.World3);
                }
			});
        m4 = new MoveButton(mContext,"AutoClick",new OnClickListener() {
                @Override
                public void onClick(View v) {
                    if (!TData.World4) {
                        TData.World4= true;
                        Load.mod.AddText("AutoClick",null);
                    } else {
                        TData.World4 = false;
                        Load.mod.RemoveText("AutoClick",null);
                    }
                    Load.notice.make("AutoClick", TData.World4);
                    final Instrumentation inst = new Instrumentation();
                    new Thread(new Runnable(){
                            @Override
                            public void run() {
                                while (TData.World4) {
                                    inst.sendKeySync(new KeyEvent(0, KeyEvent.KEYCODE_Q));
                                }
                            }
						}).start();
                }
			});
        m5 = new MoveButton(mContext,"AimAssets",new OnClickListener() {
                @Override
                public void onClick(View v) {
                    if (!TData.World5) {
                        TData.World5= true;
                        Load.mod.AddText("AimAssets",null);
                        JNICallBack.setAimAssets();
                    } else {
                        TData.World5 = false;
                        Load.mod.RemoveText("AimAssets",null);
                        JNICallBack.setAimAssets();
                    }
                    Load.notice.make("AimAssets", TData.World5);
                }
			});
		GradientDrawable buttonBackground1 = new GradientDrawable();
        buttonBackground1.setColor(0xCA1B191A);
		buttonBackground1.setCornerRadius(25);
		controlView = new LinearLayout(mContext);
		controlView.setOrientation(1);
		controlView.setBackground(buttonBackground1);
		LinearLayout.LayoutParams titleParams = new LinearLayout.LayoutParams(LinearLayout.LayoutParams.WRAP_CONTENT, LinearLayout.LayoutParams.WRAP_CONTENT);
		controlView.setLayoutParams(titleParams);
		addView(controlView);
		LinearLayout layout1_3 = new LinearLayout(mContext);
		if(W()<H()){
            LinearLayout.LayoutParams layoutParams1_3 = new LinearLayout.LayoutParams((int)(H()/5 -(int)(H()*0.02)), (int)(H() * 0.04));
            layout1_3.setLayoutParams(layoutParams1_3);
        }else{
            LinearLayout.LayoutParams layoutParams1_3 = new LinearLayout.LayoutParams((int)(W()/5 -(int)(W()*0.02)), (int)(W() * 0.04));
            layout1_3.setLayoutParams(layoutParams1_3);
        }
		layout1_3.setOrientation(0);
		layout1_3.setGravity(Gravity.CENTER);
		controlView.addView(layout1_3);
		final TextView layout1_3text = new TextView(mContext);
        LinearLayout.LayoutParams layout1_3textParams = new LinearLayout.LayoutParams(LayoutParams.WRAP_CONTENT, LinearLayout.LayoutParams.WRAP_CONTENT);
        layout1_3text.setLayoutParams(layout1_3textParams);
        layout1_3text.setText("WORLD");
		layout1_3text.setTextSize(13);
        layout1_3text.setTextColor(0xFFFFFFFF);
		layout1_3text.setTypeface(Typeface.defaultFromStyle(Typeface.NORMAL));
		layout1_3.addView(layout1_3text);
		final LinearLayout layout1_2 = new LinearLayout(mContext);
		LinearLayout.LayoutParams layoutParams1_2 = new LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT);
        layout1_2.setLayoutParams(layoutParams1_2);
		layout1_2.setOrientation(LinearLayout.VERTICAL);
		controlView.addView(layout1_2);
        new Text(mContext,"Fucker",new OnClickListener() {
                @Override    
                public void onClick(View v) {
                    if (!TData.World1) {
                        TData.World1 = true;
                        Load.mod.AddText("Fucker",null);
                    } else {
                        TData.World1= false;
                        Load.mod.RemoveText("Fucker",null);
                    }
                    JNICallBack.setFucker();
                    Load.notice.make("Fucker", TData.World1);
                }
                
            },layout1_2,new View.OnLongClickListener() {
                @Override
                private boolean a;
                public boolean onLongClick(View view) {
                    if(!a){
                        a=true;
                        m1.showView();
                    }else{
                        a=false;
                        m1.clearView();
                    }
                    return true;
                }
            });
        new Text(mContext,"RemoteStop",new OnClickListener() {
                @Override    
                public void onClick(View v) {
                    if (!TData.World2) {
                        TData.World2= true;
                        Load.mod.AddText("RemoteStop",null);
                    } else {
                        TData.World2 = false;
                        Load.mod.RemoveText("RemoteStop",null);
                    }
                    JNICallBack.setTread();
                    Load.notice.make("RemoteStop", TData.World2);
                }
            },layout1_2,new View.OnLongClickListener() {
                @Override
                private boolean a;
                public boolean onLongClick(View view) {
                    if(!a){
                        a=true;
                        m2.showView();
                    }else{
                        a=false;
                        m2.clearView();
                    }
                    return true;
                }
            });
        new Text(mContext,"GameMode",new OnClickListener() {
                @Override    
                public void onClick(View v) {
                    if (!TData.World3) {
                        TData.World3= true;
                        Load.mod.AddText("GameMode",null);
                    } else {
                        TData.World3 = false;
                        Load.mod.RemoveText("GameMode",null);
                    }
                    JNICallBack.setGameMode();
                    Load.notice.make("GameMode", TData.World3);
                }
            },layout1_2,new View.OnLongClickListener() {
                @Override
                private boolean a;
                public boolean onLongClick(View view) {
                    if(!a){
                        a=true;
                        m3.showView();
                    }else{
                        a=false;
                        m3.clearView();
                    }
                    return true;
                }
            });
        new Text(mContext,"AutoClick",new OnClickListener() {
                @Override    
                public void onClick(View v) {
                    if (!TData.World4) {
                        TData.World4= true;
                        Load.mod.AddText("AutoClick",null);
                    } else {
                        TData.World4 = false;
                        Load.mod.RemoveText("AutoClick",null);
                    }
                    Load.notice.make("AutoClick", TData.World4);
                    final Instrumentation inst = new Instrumentation();
                    new Thread(new Runnable(){
                            @Override
                            public void run() {
                                while (TData.World4) {
                                    inst.sendKeySync(new KeyEvent(0, KeyEvent.KEYCODE_Q));
                                }
                            }
						}).start();
                }
            },layout1_2,new View.OnLongClickListener() {
                @Override
                private boolean a;
                public boolean onLongClick(View view) {
                    if(!a){
                        a=true;
                        m4.showView();
                    }else{
                        a=false;
                        m4.clearView();
                    }
                    return true;
                }
            });
        new Text(mContext,"AimAssets",new OnClickListener() {
                @Override    
                public void onClick(View v) {
                    if (!TData.World5) {
                        TData.World5= true;
                        Load.mod.AddText("AimAssets",null);
                        JNICallBack.setAimAssets();
                    } else {
                        TData.World5 = false;
                        Load.mod.RemoveText("AimAssets",null);
                        JNICallBack.setAimAssets();
                        }
                    Load.notice.make("AimAssets", TData.World5);
                }
            },layout1_2,new View.OnLongClickListener() {
                @Override
                private boolean a;
                public boolean onLongClick(View view) {
                    if(!a){
                        a=true;
                        m5.showView();
                    }else{
                        a=false;
                        m5.clearView();
                    }
                    return true;
                }
            });
        
        
            
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
        wParams.gravity = Gravity.LEFT | Gravity.CENTER;
        if(W()<H()){
        wParams.x = (int)(H()/5);
        wParams.y = -350;
        }else{
        wParams.x = (int)(W()/5);
        wParams.y = -350;
        }
        wParams.width = WindowManager.LayoutParams.WRAP_CONTENT;
        wParams.height = WindowManager.LayoutParams.WRAP_CONTENT;
        wParams.format = PixelFormat.RGBA_8888;
		layout1_3.setOnClickListener(new OnClickListener() {
                private  boolean iskg1 = false;
                @Override    
                public void onClick(View v) {
                    if (!iskg1) {
                        iskg1 = true;
                        ThunderUI.collapse(layout1_2,200);
                    } else {
                        iskg1 = false;
                        ThunderUI.expand(layout1_2,200);
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
    public void showView(){
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
	private int W() {
        return (int) (mContext.getResources().getDisplayMetrics().widthPixels);
    }
    private int H() {
        return (int) (mContext.getResources().getDisplayMetrics().heightPixels);
    }

}
