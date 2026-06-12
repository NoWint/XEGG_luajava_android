package android.ext;

import android.content.SharedPreferences;
import android.fix.ToolbarButton;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;
import java.lang.ref.WeakReference;

/* compiled from: src */
/* loaded from: classes.dex */
public abstract class pj implements View.OnClickListener {
    public static final long[] e = new long[3];
    private int a;
    private WeakReference b;
    private int c;
    protected String f;

    @Override // android.view.View.OnClickListener
    public abstract void onClick(View view);

    public pj(String str) {
        this.a = 0;
        this.b = new WeakReference(null);
        this.c = -1;
        this.f = str;
    }

    public pj(int i, int i2) {
        this.a = 0;
        this.b = new WeakReference(null);
        this.c = -1;
        this.f = qk.a(i);
        this.a = i2;
    }

    public final ImageView c() {
        return a(false);
    }

    public ImageView a(boolean z) {
        ToolbarButton toolbarButton = new ToolbarButton(Tools.e());
        toolbarButton.setIcon(this.a);
        toolbarButton.setOnClickListener(!z ? this : new pk(this));
        toolbarButton.setTag(this);
        return toolbarButton;
    }

    public Drawable d() {
        if (this.a == 0) {
            return null;
        }
        Drawable drawable = (Drawable) this.b.get();
        if (drawable == null) {
            Drawable b = Tools.b(this.a);
            this.b = new WeakReference(b);
            return b;
        }
        return drawable;
    }

    public void a(int i, int i2) {
        this.c = (i * 64) + i2;
    }

    private static void a() {
        qw qwVar = new qw();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < 3) {
                qwVar.a("m-" + i2, e[i2], 0L);
                i = i2 + 1;
            } else {
                qwVar.commit();
                return;
            }
        }
    }

    public static String e() {
        SharedPreferences s = Tools.s();
        SharedPreferences.Editor edit = s.edit();
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < 3; i++) {
            String str = "m-" + i;
            long j = s.getLong(str, 0L);
            edit.remove(str);
            if (j != 0) {
                sb.append("&m");
                sb.append(i);
                sb.append('=');
                sb.append(Long.toHexString(j));
            }
        }
        edit.commit();
        return sb.toString();
    }

    public void a(View view) {
        int i;
        int i2 = this.c;
        if (i2 != -1 && (i = i2 / 64) >= 0 && i < 3) {
            long j = 1 << (i2 % 64);
            if ((e[i] & j) == 0) {
                long[] jArr = e;
                jArr[i] = j | jArr[i];
                a();
            }
        }
        onClick(view);
    }

    public String toString() {
        return this.f;
    }
}
