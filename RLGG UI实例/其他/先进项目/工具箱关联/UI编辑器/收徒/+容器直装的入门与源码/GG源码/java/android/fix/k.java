package android.fix;

import android.view.LayoutInflater;

/* compiled from: src */
/* loaded from: classes.dex */
public class k {
    public static Object a(Object obj) {
        if (obj != null && d.a() && (obj instanceof LayoutInflater) && !(obj instanceof i)) {
            return new i((LayoutInflater) obj);
        }
        return obj;
    }
}
