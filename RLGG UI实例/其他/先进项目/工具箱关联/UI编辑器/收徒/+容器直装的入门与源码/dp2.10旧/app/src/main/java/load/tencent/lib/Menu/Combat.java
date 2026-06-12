package load.tencent.lib.Menu;

import android.content.Context;
import android.graphics.PixelFormat;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.TextView;
import load.tencent.lib.Load;
import load.tencent.lib.MoveButton.MoveButton;
import load.tencent.lib.TData;
import load.tencent.lib.Text;
import load.tencent.lib.HUB.JNICallBack;
import load.tencent.lib.ku.KillauraCPS;
import load.tencent.lib.ku.Hitbox;
import com.relax.vapev4.library.local;
import load.tencent.lib.IntData;
import load.tencent.lib.ThunderUI;
public final class Combat extends LinearLayout {
    private Context mContext;
    private WindowManager wManager;
    private int screenWidth;
    private int screenHeight;
    private WindowManager.LayoutParams wParams;
    private boolean moving=false;
    private boolean isView;
	public static LinearLayout controlView;
    private MoveButton m1,m2,m3,m4,m5,m6;
    public Combat(Context context) {
        super(context);
        mContext = context;
        initView();
    }
    private void initView() {
        m1 = new MoveButton(mContext, "HitBox", new OnClickListener() {
                @Override
                public void onClick(View v) {
                    if (!TData.Combat1) {
                        TData.Combat1 = true;
                        Load.mod.AddText("HitBox",null);
                    } else {
                        TData.Combat1 = false;
                        Load.mod.RemoveText("HitBox",null);
                    }
                    JNICallBack.setHitbox();
                    Load.notice.make("HitBox", TData.Combat1);
                }
			});
        m2 = new MoveButton(mContext, "InfinitAura", new OnClickListener() {
                @Override
                public void onClick(View v) {
                    if (!TData.Combat2) {
                        TData.Combat2 = true;
                        Load.mod.AddText("InfinitAura",null);
                    } else {
                        TData.Combat2 = false;
                        Load.mod.RemoveText("InfinitAura",null);
                    }
                    Load.notice.make("InfinitAura", TData.Combat2);
                    JNICallBack.setInfiniteAura();
                }
			});
        m3 = new MoveButton(mContext, "Killaura", new OnClickListener() {
                @Override
                public void onClick(View v) {
                    if (!TData.Combat3) {
                        TData.Combat3 = true;
                        Load.mod.AddText("Killaura",null);
                    } else {
                        TData.Combat3 = false;
                        Load.mod.RemoveText("Killaura",null);
                    }
                    JNICallBack.setKillaura();
                    Load.notice.make("Killaura", TData.Combat3);
                }
			});
        m4 = new MoveButton(mContext, "FightBot", new OnClickListener() {
                @Override
                public void onClick(View v) {
                    if (!TData.Combat4) {
                        TData.Combat4 = true;
                        Load.mod.AddText("FightBot",null);
                    } else {
                        TData.Combat4 = false;
                        Load.mod.RemoveText("FightBot",null);
                    }
                    JNICallBack.setFightBack();
                    Load.notice.make("FightBot", TData.Combat4);
                }
			});
        m5 = new MoveButton(mContext, "Ride", new OnClickListener() {
                @Override
                public void onClick(View v) {
                    if (!TData.Combat5) {
                        TData.Combat5 = true;
                        Load.mod.AddText("Ride",null);
                    } else {
                        TData.Combat5 = false;
                        Load.mod.RemoveText("Ride",null);
                    }
                    JNICallBack.setRide();
                    Load.notice.make("Ride", TData.Combat5);
                }
			});
        m6 = new MoveButton(mContext, "LockBack", new OnClickListener() {
                @Override
                public void onClick(View v) {
                    if (!TData.Combat6) {
                        TData.Combat6 = true;
                        Load.mod.AddText("LockBack",null);
                    } else {
                        TData.Combat6 = false;
                        Load.mod.RemoveText("LockBack",null);
                    }
                    JNICallBack.setLockBack();
                    Load.notice.make("LockBack", TData.Combat6);
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
        layout1_3text.setText("COMBAT");
		layout1_3text.setTextSize(13);
        layout1_3text.setTextColor(0xFFFFFFFF);
		layout1_3text.setTypeface(Typeface.defaultFromStyle(Typeface.NORMAL));
		layout1_3.addView(layout1_3text);
		final LinearLayout layout1_2 = new LinearLayout(mContext);
		LinearLayout.LayoutParams layoutParams1_2 = new LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT);
        layout1_2.setLayoutParams(layoutParams1_2);
		layout1_2.setOrientation(LinearLayout.VERTICAL);
		controlView.addView(layout1_2);
        new Text(mContext, "HitBox", new OnClickListener() {
                @Override    
                public void onClick(View v) {
                    if (!TData.Combat1) {
                        TData.Combat1 = true;
                        Load.mod.AddText("HitBox",null);
                    } else {
                        TData.Combat1 = false;
                        Load.mod.RemoveText("HitBox",null);
                    }
                    JNICallBack.setHitbox();
                    Load.notice.make("HitBox", TData.Combat1);
                }
			}, layout1_2, new View.OnLongClickListener() {
                @Override
                private boolean a;
                public boolean onLongClick(View view) {
                    if (!a) {
                        a = true;
                        m1.showView();
                    } else {
                        a = false;
                        m1.clearView();
                    }
                    return true;
                }
            });
        new Text(mContext, "HitBoxSize", new OnClickListener() {
                @Override    
                public void onClick(View v) {
                    Hitbox.show(mContext);
                    Load.notice.make("HitBoxSize",true);
                }
            }, layout1_2, null);
        new Text(mContext, "InfinitAura", new OnClickListener() {
                @Override    
                public void onClick(View v) {
                    if (!TData.Combat2) {
                        TData.Combat2 = true;
                        Load.mod.AddText("InfinitAura",null);
                    } else {
                        TData.Combat2 = false;
                        Load.mod.RemoveText("InfinitAura",null);
                    }
                    JNICallBack.setInfiniteAura();
                    Load.notice.make("InfinitAura", TData.Combat2);
                }
            }, layout1_2, new View.OnLongClickListener() {
                @Override
                private boolean a;
                public boolean onLongClick(View view) {
                    if (!a) {
                        a = true;
                        m2.showView();
                    } else {
                        a = false;
                        m2.clearView();
                    }
                    return true;
                }
            });
        new Text(mContext, "Killaura", new OnClickListener() {
                @Override    
                public void onClick(View v) {
                    if (!TData.Combat3) {
                        TData.Combat3 = true;
                        Load.mod.AddText("Killaura",null);
                    } else {
                        TData.Combat3 = false;
                        Load.mod.RemoveText("Killaura",null);
                    }
                    JNICallBack.setKillaura();
                    Load.notice.make("Killaura", TData.Combat3);
                }
            }, layout1_2, new View.OnLongClickListener() {
                @Override
                private boolean a;
                public boolean onLongClick(View view) {
                    if (!a) {
                        a = true;
                        m3.showView();
                    } else {
                        a = false;
                        m3.clearView();
                    }
                    return true;
                }
            });
        new Text(mContext, "KillauraCPS", new OnClickListener() {
                @Override    
                public void onClick(View v) {
                    KillauraCPS.show(mContext);
                    Load.notice.make("KillauraCPS",true);
                }
                }, layout1_2, null);
        new Text(mContext, "FightBot", new OnClickListener() {
                @Override    
                public void onClick(View v) {
                    if (!TData.Combat4) {
                        TData.Combat4 = true;
                        Load.mod.AddText("FightBot",null);
                    } else {
                        TData.Combat4 = false;
                        Load.mod.RemoveText("FightBot",null);
                    }
                    JNICallBack.setFightBack();
                    Load.notice.make("FightBot", TData.Combat4);
                }
            }, layout1_2, new View.OnLongClickListener() {
                @Override
                private boolean a;
                public boolean onLongClick(View view) {
                    if (!a) {
                        a = true;
                        m4.showView();
                    } else {
                        a = false;
                        m4.clearView();
                    }
                    return true;
                }
            });
        new Text(mContext, "Ride", new OnClickListener() {
                @Override    
                public void onClick(View v) {
                    if (!TData.Combat5) {
                        TData.Combat5 = true;
                        Load.mod.AddText("Ride",null);
                    } else {
                        TData.Combat5 = false;
                        Load.mod.RemoveText("Ride",null);
                    }
                    JNICallBack.setRide();
                    Load.notice.make("Ride", TData.Combat5);
                }
            }, layout1_2, new View.OnLongClickListener() {
                @Override
                private boolean a;
                public boolean onLongClick(View view) {
                    if (!a) {
                        a = true;
                        m5.showView();
                    } else {
                        a = false;
                        m5.clearView();
                    }
                    return true;
                }
            });
        new Text(mContext, "LockBack", new OnClickListener() {
                @Override    
                public void onClick(View v) {
                    if (!TData.Combat6) {
                        TData.Combat6 = true;
                        Load.mod.AddText("LockBack",null);
                    } else {
                        TData.Combat6 = false;
                        Load.mod.RemoveText("LockBack",null);
                    }
                    JNICallBack.setLockBack();
                    Load.notice.make("LockBack", TData.Combat6);
                }
            }, layout1_2, new View.OnLongClickListener() {
                @Override
                private boolean a;
                public boolean onLongClick(View view) {
                    if (!a) {
                        a = true;
                        m6.showView();
                    } else {
                        a = false;
                        m6.clearView();
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
        wParams.gravity = Gravity.CENTER | Gravity.LEFT;
        if(W()<H()){
            wParams.x = (int)(H()/5)*3;
            wParams.y = -350;
        }else{
            wParams.x = (int)(W()/5)*3;
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
	private int W() {
        return (int) (mContext.getResources().getDisplayMetrics().widthPixels);
    }
    private int H() {
        return (int) (mContext.getResources().getDisplayMetrics().heightPixels);
    }

}
