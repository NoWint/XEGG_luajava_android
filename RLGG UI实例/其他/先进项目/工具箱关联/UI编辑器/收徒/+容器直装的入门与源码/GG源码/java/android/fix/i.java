package android.fix;

import android.annotation.TargetApi;
import android.content.Context;
import android.ext.Config;
import android.ext.Tools;
import android.ext.la;
import android.os.Build;
import android.view.ContextThemeWrapper;
import android.view.InflateException;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import catch_.me_.if_.you_.can_.R;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;

/* compiled from: src */
/* loaded from: classes.dex */
public class i extends LayoutInflater {
    private static final int[] c;
    private Context a;
    private LayoutInflater b;

    public static i a() {
        return (i) k.a(from(Tools.e()));
    }

    public static View a(int i, ViewGroup viewGroup) {
        return a().inflate(i, viewGroup);
    }

    public static View a(int i, ViewGroup viewGroup, boolean z) {
        return a().inflate(i, viewGroup, z);
    }

    public i(LayoutInflater layoutInflater) {
        super(layoutInflater, layoutInflater.getContext());
        this.b = null;
        this.b = layoutInflater;
        this.a = layoutInflater.getContext();
    }

    public boolean equals(Object obj) {
        return this.b == null ? super.equals(obj) : this.b.equals(obj);
    }

    @Override // android.view.LayoutInflater
    public LayoutInflater cloneInContext(Context context) {
        return new i(this.b.cloneInContext(context));
    }

    @Override // android.view.LayoutInflater
    public Context getContext() {
        return this.b == null ? super.getContext() : this.b.getContext();
    }

    @Override // android.view.LayoutInflater
    public void setFactory(LayoutInflater.Factory factory) {
        if (this.b == null) {
            super.setFactory(factory);
        } else {
            this.b.setFactory(factory);
        }
    }

    public int hashCode() {
        return this.b == null ? super.hashCode() : this.b.hashCode();
    }

    @Override // android.view.LayoutInflater
    @TargetApi(11)
    public void setFactory2(LayoutInflater.Factory2 factory2) {
        if (this.b == null) {
            super.setFactory2(factory2);
        } else {
            this.b.setFactory2(factory2);
        }
    }

    @Override // android.view.LayoutInflater
    public LayoutInflater.Filter getFilter() {
        return this.b == null ? super.getFilter() : this.b.getFilter();
    }

    @Override // android.view.LayoutInflater
    public void setFilter(LayoutInflater.Filter filter) {
        if (this.b == null) {
            super.setFilter(filter);
        } else {
            this.b.setFilter(filter);
        }
    }

    public String toString() {
        return this.b == null ? super.toString() : this.b.toString();
    }

    @Override // android.view.LayoutInflater
    public View inflate(int i, ViewGroup viewGroup) {
        return inflate(i, viewGroup, viewGroup != null);
    }

    @Override // android.view.LayoutInflater
    public View inflate(XmlPullParser xmlPullParser, ViewGroup viewGroup) {
        return inflate(xmlPullParser, viewGroup, viewGroup != null);
    }

    @Override // android.view.LayoutInflater
    public View inflate(int i, ViewGroup viewGroup, boolean z) {
        return a(i, null, viewGroup, z);
    }

    @Override // android.view.LayoutInflater
    public View inflate(XmlPullParser xmlPullParser, ViewGroup viewGroup, boolean z) {
        return a(0, xmlPullParser, viewGroup, z);
    }

    private View a(int i, XmlPullParser xmlPullParser, ViewGroup viewGroup, boolean z) {
        if (this.b == null) {
            return xmlPullParser == null ? super.inflate(i, viewGroup, z) : super.inflate(xmlPullParser, viewGroup, z);
        }
        try {
            return b(i, xmlPullParser, viewGroup, z);
        } catch (InflateException e) {
            if (Build.VERSION.SDK_INT >= 14 && (a(e, "tab_indicator_holo") || a(e, "tab_selected_holo"))) {
                la.c("Try fix", e);
                return b(R.layout.tab_indicator_holo, null, viewGroup, z);
            }
            throw e;
        }
    }

    private boolean a(Throwable th, String str) {
        if (str == null || th == null) {
            return false;
        }
        String message = th.getMessage();
        if (message == null || !message.contains(str)) {
            return a(th.getCause(), str);
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* JADX WARN: Type inference failed for: r0v21 */
    /* JADX WARN: Type inference failed for: r0v22 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v8 */
    private View b(int i, XmlPullParser xmlPullParser, ViewGroup viewGroup, boolean z) {
        Throwable th = null;
        int[] iArr = c;
        int length = iArr.length;
        int i2 = 0;
        while (i2 < length) {
            int i3 = iArr[i2];
            LayoutInflater layoutInflater = this.b;
            try {
                layoutInflater = this.b;
                a(i3);
                th = xmlPullParser == null ? this.b.inflate(i, viewGroup, z) : this.b.inflate(xmlPullParser, viewGroup, z);
            } catch (Exception e) {
                if (th == null) {
                    th = e instanceof RuntimeException ? (RuntimeException) e : new RuntimeException(e);
                }
                if (!(e instanceof InflateException) && !(e instanceof InvocationTargetException)) {
                    break;
                }
                la.c("Exception on inflate with theme: " + i3, e);
                if (Config.vSpaceReal) {
                    if (getContext().getPackageName().equals(Config.E)) {
                        continue;
                    } else {
                        this.b = this.b.cloneInContext(Config.a(this.b.getContext()));
                        try {
                            th = xmlPullParser == null ? this.b.inflate(i, viewGroup, z) : this.b.inflate(xmlPullParser, viewGroup, z);
                        } catch (InflateException e2) {
                            la.c("Exception on inflate with theme: " + i3, e2);
                            this.b = layoutInflater;
                            i2++;
                            th = th;
                        }
                    }
                }
                this.b = layoutInflater;
                i2++;
                th = th;
            }
            return th;
        }
        throw th;
    }

    private void a(int i) {
        if (i != 0 && a(this.b.getContext()) != i) {
            this.b = this.b.cloneInContext(b(i));
        }
    }

    private Context b(int i) {
        if (i == 1) {
            return this.a;
        }
        return new ContextThemeWrapper(this.a, i);
    }

    private int a(Context context) {
        if (context == this.a) {
            return 1;
        }
        if (context instanceof ContextThemeWrapper) {
            try {
                Object invoke = ContextThemeWrapper.class.getDeclaredMethod("getThemeResId", new Class[0]).invoke(context, new Object[0]);
                if (invoke instanceof Integer) {
                    return ((Integer) invoke).intValue();
                }
            } catch (Throwable th) {
                la.c("getThemeResId failed call", th);
            }
        }
        return 0;
    }

    static {
        Field[] fields;
        ArrayList arrayList = new ArrayList();
        arrayList.add(0);
        arrayList.add(1);
        if (Build.VERSION.SDK_INT >= 14) {
            arrayList.add(16974120);
        }
        if (Build.VERSION.SDK_INT >= 21) {
            arrayList.add(16974372);
        }
        if (Build.VERSION.SDK_INT >= 11) {
            arrayList.add(16973931);
        }
        arrayList.add(16973829);
        arrayList.add(16973832);
        for (Field field : android.R.class.getFields()) {
            int modifiers = field.getModifiers();
            if (Modifier.isStatic(modifiers) && Modifier.isFinal(modifiers) && field.getName().startsWith("Theme") && field.getType().equals(Integer.TYPE)) {
                try {
                    arrayList.add(Integer.valueOf(field.getInt(null)));
                } catch (IllegalAccessException e) {
                } catch (IllegalArgumentException e2) {
                }
            }
        }
        c = new int[arrayList.size()];
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            c[i] = ((Integer) arrayList.get(i)).intValue();
        }
    }
}
