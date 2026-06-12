package android.ext;

import android.graphics.drawable.Drawable;
import android.os.Build;
import android.widget.TextView;
import catch_.me_.if_.you_.can_.R;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class tg implements Runnable {
    private final /* synthetic */ Drawable a;
    private final /* synthetic */ int b;
    private final /* synthetic */ TextView c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public tg(Drawable drawable, int i, TextView textView) {
        this.a = drawable;
        this.b = i;
        this.c = textView;
    }

    @Override // java.lang.Runnable
    public void run() {
        Drawable[] drawableArr;
        if (Tools.b == -1) {
            Tools.b = (int) (Tools.a(12.0f) + 0.5f);
        }
        if (this.a != null) {
            int a = (int) Tools.a(this.b);
            try {
                this.a.setBounds(0, 0, a, a);
            } catch (Throwable th) {
                la.a(th);
            }
        }
        try {
            Object tag = this.c.getTag(R.id.icon);
            int intValue = tag instanceof Integer ? ((Integer) tag).intValue() : 0;
            Drawable[] drawableArr2 = null;
            if (intValue == 0) {
                Drawable[] compoundDrawables = this.c.getCompoundDrawables();
                if (Build.VERSION.SDK_INT >= 17) {
                    drawableArr2 = this.c.getCompoundDrawablesRelative();
                    if (drawableArr2[0] != null) {
                        intValue = 4;
                    } else if (compoundDrawables[0] != null) {
                        drawableArr2 = compoundDrawables;
                        intValue = 2;
                    } else if (Build.VERSION.SDK_INT < 18) {
                        drawableArr2 = compoundDrawables;
                        intValue = 1;
                    } else {
                        intValue = 3;
                    }
                } else if (compoundDrawables[0] != null) {
                    drawableArr2 = compoundDrawables;
                    intValue = 2;
                } else {
                    drawableArr2 = compoundDrawables;
                    intValue = 1;
                }
                this.c.setTag(R.id.icon, Integer.valueOf(intValue));
            }
            int i = intValue;
            boolean z = i == 1 || i == 2;
            if (drawableArr2 == null) {
                drawableArr = z ? this.c.getCompoundDrawables() : this.c.getCompoundDrawablesRelative();
            } else {
                drawableArr = drawableArr2;
            }
            drawableArr[(i == 1 || i == 3) ? (char) 0 : (char) 2] = this.a;
            if (z) {
                this.c.setCompoundDrawables(drawableArr[0], drawableArr[1], drawableArr[2], drawableArr[3]);
            } else {
                this.c.setCompoundDrawablesRelative(drawableArr[0], drawableArr[1], drawableArr[2], drawableArr[3]);
            }
        } catch (StringIndexOutOfBoundsException e) {
            la.a(e);
        }
        this.c.setCompoundDrawablePadding(Tools.b);
    }
}
