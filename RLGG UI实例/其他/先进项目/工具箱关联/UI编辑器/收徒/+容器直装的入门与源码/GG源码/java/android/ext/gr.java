package android.ext;

/* compiled from: src */
/* loaded from: classes.dex */
public class gr extends Thread {
    public gr(String str) {
        super(str);
        setDaemon(true);
        ho.a(this);
    }

    public gr(Runnable runnable, String str) {
        super(runnable, str);
        setDaemon(true);
        ho.a(this);
    }
}
