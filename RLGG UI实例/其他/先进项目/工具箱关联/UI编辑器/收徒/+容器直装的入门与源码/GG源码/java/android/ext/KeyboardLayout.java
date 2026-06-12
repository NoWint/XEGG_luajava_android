package android.ext;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Configuration;
import android.fix.FrameLayout;
import android.fix.LinearLayout;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ScrollView;
import catch_.me_.if_.you_.can_.R;

/* compiled from: src */
/* loaded from: classes.dex */
public class KeyboardLayout extends LinearLayout {
    private ScrollView a;
    private FrameLayout b;
    private InternalKeyboard c;
    private int d;

    public KeyboardLayout(Context context) {
        super(context);
    }

    public KeyboardLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @TargetApi(11)
    public KeyboardLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @TargetApi(21)
    public KeyboardLayout(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    private void b() {
        if (this.a == null) {
            this.d = 0;
            this.a = (ScrollView) findViewById(R.id.kbd_scroll);
            this.b = (FrameLayout) findViewById(R.id.kbd_frame);
            this.c = (InternalKeyboard) findViewById(R.id.keyboard);
        }
    }

    @Override // android.fix.LinearLayout, android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        la.a("KeyboardLayout onConfigurationChanged: " + configuration);
        Configuration a = android.fix.d.a(configuration);
        super.onConfigurationChanged(a);
        a();
        MainService.a(a);
    }

    public void a() {
        Configuration configuration = Tools.e().getResources().getConfiguration();
        int i = configuration.orientation;
        if (i != this.d) {
            this.d = i;
            if (Build.VERSION.SDK_INT >= 13) {
                la.a("Screen: " + configuration.screenWidthDp + "dp x " + configuration.screenHeightDp + "dp");
            }
            b();
            int[] iArr = i == 1 ? new int[]{1, -1} : new int[]{0, -1, -2};
            setOrientation(iArr[0]);
            a(this.a.getVisibility() == 0 ? this.a : this.b, iArr[1], iArr[2]);
            this.c.a();
        }
    }

    private void a(View view, int i, int i2) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.width = i;
        layoutParams.height = i2;
        view.setLayoutParams(layoutParams);
    }
}
