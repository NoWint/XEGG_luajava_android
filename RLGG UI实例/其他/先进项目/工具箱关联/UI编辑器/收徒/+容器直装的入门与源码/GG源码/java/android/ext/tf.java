package android.ext;

import android.os.Build;
import android.widget.ImageView;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class tf implements Runnable {
    private final /* synthetic */ ImageView a;
    private final /* synthetic */ float b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public tf(ImageView imageView, float f) {
        this.a = imageView;
        this.b = f;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            if (Build.VERSION.SDK_INT < 16) {
                this.a.setAlpha((int) this.b);
            } else {
                try {
                    this.a.setImageAlpha((int) this.b);
                } catch (NoSuchMethodError e) {
                    la.b("setImageAlpha 1", e);
                    this.a.setAlpha((int) this.b);
                }
            }
        } catch (NoSuchMethodError e2) {
            la.b("setImageAlpha 2", e2);
        }
    }
}
