package android.lang;

import java.util.Map;

/* compiled from: src */
/* loaded from: classes.dex */
class b implements Map.Entry {
    private final Map.Entry a;

    public b(Map.Entry entry) {
        this.a = entry;
    }

    @Override // java.util.Map.Entry
    /* renamed from: a */
    public String getKey() {
        return ((l) this.a.getKey()).toString();
    }

    @Override // java.util.Map.Entry
    /* renamed from: b */
    public String getValue() {
        return ((k) this.a.getValue()).toString();
    }

    @Override // java.util.Map.Entry
    /* renamed from: a */
    public String setValue(String str) {
        return ((k) this.a.setValue(k.b(str))).toString();
    }

    public String toString() {
        return String.valueOf(getKey()) + '=' + getValue();
    }

    @Override // java.util.Map.Entry
    public boolean equals(Object obj) {
        return (obj instanceof b) && this.a.equals(((b) obj).a);
    }

    @Override // java.util.Map.Entry
    public int hashCode() {
        return this.a.hashCode();
    }
}
