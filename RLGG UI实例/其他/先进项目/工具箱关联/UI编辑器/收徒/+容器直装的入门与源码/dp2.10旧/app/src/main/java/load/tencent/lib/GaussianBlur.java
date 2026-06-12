package load.tencent.lib;
import android.animation.Animator;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.view.Gravity;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewAnimationUtils;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.PopupWindow;
import java.util.ArrayList;
import com.relax.vapev4.library.local;
import load.tencent.lib.Menu.Combat;
import load.tencent.lib.Menu.Move;
import load.tencent.lib.Menu.Player;
import load.tencent.lib.Menu.World;
import load.tencent.lib.Menu.Misc;
public class GaussianBlur extends PopupWindow {
    private Context mContext;
	private ViewPager page;
	private String path;

    private LinearLayout layout;
    public GaussianBlur(Context context) {
        super(context);
        this.mContext = context;
        initView();
    }
    private void initView() {
        layout = new LinearLayout(mContext);
		layout.setOrientation(0);
        layout.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.MATCH_PARENT));
        page = new ViewPager(mContext);
        layout.addView(page);
        ArrayList<View> aList = new ArrayList<View>();
        MyPagerAdapter mAdapter = new MyPagerAdapter(aList);
        page.setAdapter(mAdapter);
		path = mContext.getFilesDir().toString();
		GradientDrawable bd1=new GradientDrawable();
        int[] bd1ys1 = {Color.parseColor("#22000000"), Color.parseColor("#22000000")};
        bd1.setShape(GradientDrawable.RECTANGLE);
        bd1.setColors(bd1ys1);
        bd1.setGradientType(android.graphics.drawable.GradientDrawable.LINEAR_GRADIENT);
        bd1.setOrientation(android.graphics.drawable.GradientDrawable.Orientation.TL_BR);
		layout.setBackground(bd1);
        setContentView(layout);
		setBackgroundDrawable(new ColorDrawable(0));
		setWidth(LayoutParams.MATCH_PARENT);
		setHeight(LayoutParams.MATCH_PARENT);
		setOutsideTouchable(false);
        setFocusable(false);
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            setWindowLayoutType(WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY);
        } else {
            setWindowLayoutType(WindowManager.LayoutParams.TYPE_SYSTEM_ALERT);
        }

        layout.setOnLongClickListener(new View.OnLongClickListener() {
                @Override
                public boolean onLongClick(View view) {
                    dismiss();
                    FloatServiceView.floatControlView.showView();
                    local.UIPlumb(Player.controlView, 0, -100, 150);
                    local.UIPlumb(World.controlView, 0, -100, 150);
                    local.UIPlumb(Move.controlView, 0, -100, 150);
                    local.UIPlumb(Combat.controlView, 0, -100, 150);
                    local.UIPlumb(Misc.controlView, 0, -100, 150);
                    new Handler(Looper.getMainLooper()).postDelayed(new Runnable(){
                            @Override
                            public void run() {
                                Load.Player.clearView();
                                Load.Move.clearView();
                                Load.World.clearView();
                                Load.Combat.clearView();
                                Load.Misc.clearView();
                            }
                        }, 140);
                    return true;

                }
			});
    }
    public class MyPagerAdapter extends PagerAdapter {
        private ArrayList<View> aList;
        public MyPagerAdapter() {
        }
        public MyPagerAdapter(ArrayList<View> aList) {
            this.aList = aList;
        }
        @Override
        public int getCount() {
            return aList.size();
        }
        @Override
        public boolean isViewFromObject(View view, Object object) {
            return view == object;
        }
        @Override
        public Object instantiateItem(ViewGroup container, int position) {
            container.addView(aList.get(position));
            return aList.get(position);
        }
        @Override
        public void destroyItem(ViewGroup container, int position, Object object) {
            container.removeView(aList.get(position));
        }
    }
    public static ViewTreeObserver.OnGlobalLayoutListener UIReveal(final LinearLayout view, final int x, final int y, final int startRadius, final int endRadius, final int time) {

        final ViewTreeObserver.OnGlobalLayoutListener layoutListener = new ViewTreeObserver.OnGlobalLayoutListener() {
            @Override
            public void onGlobalLayout() {
                Animator animator = ViewAnimationUtils.createCircularReveal(view, x, y, Float.valueOf(startRadius), Float.valueOf(endRadius));
                animator.setDuration(time);//动画持续的时长
                animator.start();
                view.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            }};
        view.setVisibility(android.view.View.VISIBLE);
        view.getViewTreeObserver().addOnGlobalLayoutListener(layoutListener);
        return layoutListener;
    }
    private int W() {
        return (int) (mContext.getResources().getDisplayMetrics().widthPixels);
    }
    private int H() {
        return (int) (mContext.getResources().getDisplayMetrics().heightPixels);
    }
    public void showView() {
        FloatServiceView.floatControlView.clearView();
        if (W() < H()) {
            UIReveal(layout, (int)(W()), (int)(H() * 0.01), 0, (int)(H() * 1.2), 1000);
        } else {
            UIReveal(layout, (int)(W()), (int)(H() * 0.01), 0, (int)(W() * 1.2), 1000);
        }
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable(){
                @Override
                public void run() {
                    Load.Player.showView();
                    Load.World.showView();
                    Load.Move.showView();
                    Load.Combat.showView();
                    Load.Misc.showView();
                    local.UIPlumb(Player.controlView, -100, 0, 600);
                    local.UIPlumb(World.controlView, -100, 0, 600);
                    local.UIPlumb(Move.controlView, -100, 0, 600);
                    local.UIPlumb(Combat.controlView, -100, 0, 600);
                    local.UIPlumb(Misc.controlView, -100, 0, 600);
                }
            }, 1100);
        this.showAtLocation(this.getContentView(), Gravity.CENTER, 0, 0);
	}

}
