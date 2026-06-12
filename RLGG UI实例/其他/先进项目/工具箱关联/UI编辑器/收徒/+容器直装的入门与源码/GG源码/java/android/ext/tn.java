package android.ext;

import java.lang.reflect.Method;

/* compiled from: src */
/* loaded from: classes.dex */
class tn {
    Class a;
    String b;
    Class[] c;
    Object d;
    Object[] e;
    Method f = null;

    public tn(Class cls, String str, Class[] clsArr, Object obj, Object[] objArr) {
        this.a = cls;
        this.b = str;
        this.c = clsArr;
        this.d = obj;
        this.e = objArr;
    }

    public tn a() {
        this.f = this.a.getMethod(this.b, this.c);
        return this;
    }

    public Object b() {
        return this.f.invoke(this.d, this.e);
    }
}
