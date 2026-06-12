package android.ext;

import android.view.View;
import catch_.me_.if_.you_.can_.R;

/* compiled from: src */
/* loaded from: classes.dex */
public class uf extends pj {
    static volatile boolean a = false;
    static volatile long b = 0;
    static volatile boolean c = false;
    static volatile long d = 1;
    static volatile boolean g = false;
    static volatile double h = 0.0d;
    static volatile boolean i = false;
    static volatile double j = 0.01d;
    static volatile uf k = null;

    public static void a() {
        a = false;
        c = false;
        g = false;
        i = false;
    }

    public static void a(int i2, long j2, long j3, double d2, double d3) {
        MainService.instance.k.a(i2, j2, j3, d2, d3);
    }

    public uf() {
        super(R.string.unrandomizer, R.drawable.ic_dice_multiple_white_24dp);
        k = this;
    }

    @Override // android.ext.pj, android.view.View.OnClickListener
    public void onClick(View view) {
        new ug(this, null).onClick(view);
    }
}
