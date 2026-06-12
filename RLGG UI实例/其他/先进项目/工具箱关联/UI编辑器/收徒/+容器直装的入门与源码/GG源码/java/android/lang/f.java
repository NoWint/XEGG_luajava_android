package android.lang;

import java.util.AbstractMap;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* compiled from: src */
/* loaded from: classes.dex */
class f extends AbstractMap {
    private Map a;

    private static String a(k kVar) {
        if (kVar == null) {
            return null;
        }
        return kVar.toString();
    }

    public f(Map map) {
        this.a = map;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.a.size();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean isEmpty() {
        return this.a.isEmpty();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        this.a.clear();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        return this.a.containsKey(l.a(obj));
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsValue(Object obj) {
        return this.a.containsValue(k.a(obj));
    }

    @Override // java.util.AbstractMap, java.util.Map
    /* renamed from: a */
    public String get(Object obj) {
        return a((k) this.a.get(l.a(obj)));
    }

    @Override // java.util.AbstractMap, java.util.Map
    /* renamed from: a */
    public String put(String str, String str2) {
        return a((k) this.a.put(l.b(str), k.b(str2)));
    }

    @Override // java.util.AbstractMap, java.util.Map
    /* renamed from: b */
    public String remove(Object obj) {
        return a((k) this.a.remove(l.a(obj)));
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set keySet() {
        return new g(this.a.keySet());
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set entrySet() {
        return new c(this.a.entrySet());
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Collection values() {
        return new i(this.a.values());
    }

    public byte[] a(int[] iArr) {
        int i;
        int size = this.a.size() * 2;
        Iterator it = this.a.entrySet().iterator();
        while (true) {
            i = size;
            if (!it.hasNext()) {
                break;
            }
            Map.Entry entry = (Map.Entry) it.next();
            size = ((k) entry.getValue()).a().length + ((l) entry.getKey()).a().length + i;
        }
        byte[] bArr = new byte[i];
        int i2 = 0;
        for (Map.Entry entry2 : this.a.entrySet()) {
            byte[] a = ((l) entry2.getKey()).a();
            byte[] a2 = ((k) entry2.getValue()).a();
            System.arraycopy(a, 0, bArr, i2, a.length);
            int length = a.length + i2;
            int i3 = length + 1;
            bArr[length] = 61;
            System.arraycopy(a2, 0, bArr, i3, a2.length);
            i2 = a2.length + 1 + i3;
        }
        iArr[0] = this.a.size();
        return bArr;
    }
}
