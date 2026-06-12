package android.ext;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import catch_.me_.if_.you_.can_.R;

/* compiled from: src */
/* loaded from: classes.dex */
public class TimeJumpPanel extends FloatPanel implements View.OnClickListener {
    Button e;
    Button f;

    private static long getLast() {
        return (long) ((Config.v / 1000.0d) * 1.0E9d);
    }

    public void j() {
        long last = getLast();
        this.e.setVisibility(last == 0 ? 8 : 0);
        this.e.setText(Tools.a(last / 1.0E9d));
    }

    public static void a(boolean z) {
        TimeJumpPanel timeJumpPanel = MainService.instance.m;
        boolean z2 = (Config.B & 128) != 0;
        if (z && z2) {
            if (timeJumpPanel == null) {
                timeJumpPanel = (TimeJumpPanel) android.fix.i.a((int) R.layout.time_jump_panel, (ViewGroup) null);
                timeJumpPanel.k();
                MainService.instance.m = timeJumpPanel;
            }
            timeJumpPanel.d();
        } else if (timeJumpPanel != null) {
            timeJumpPanel.f();
            if (!z2) {
                MainService.instance.m = null;
            }
        }
    }

    private void k() {
        rx.a(new sd(this));
    }

    public void setMinSize(int i) {
        if (this.e != null) {
            this.e.setMinWidth(i);
            this.e.setMinHeight(i);
            this.f.setMinWidth(i);
            this.f.setMinHeight(i);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view != null) {
            switch (view.getId()) {
                case R.id.time_jump /* 2131427654 */:
                    rz rzVar = rz.b;
                    if (rzVar != null) {
                        rzVar.onClick(null);
                        return;
                    }
                    return;
                case R.id.time_jump_last /* 2131427655 */:
                    long last = getLast();
                    rz.a(last);
                    double d = last / 1.0E9d;
                    Tools.a(String.valueOf(Tools.c((int) R.string.time_jump)) + ": " + Tools.a(d) + " (" + Double.toString(d).replaceFirst("\\D?0+$", "") + ')', 0);
                    return;
                default:
                    la.a("Unknown id: " + Integer.toHexString(view.getId()), new RuntimeException());
                    return;
            }
        }
    }

    public TimeJumpPanel(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    public TimeJumpPanel(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public TimeJumpPanel(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public TimeJumpPanel(Context context) {
        super(context);
    }

    @Override // android.ext.FloatPanel
    protected String getPrefName() {
        return "time-jump";
    }
}
