package android.lang;

import java.util.Map;

/* compiled from: src */
/* loaded from: classes.dex */
class e implements Map.Entry {
    private final /* synthetic */ Object a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(Object obj) {
        this.a = obj;
    }

    @Override // java.util.Map.Entry
    /* renamed from: a */
    public l getKey() {
        return l.a(((Map.Entry) this.a).getKey());
    }

    @Override // java.util.Map.Entry
    /* renamed from: b */
    public k getValue() {
        return k.a(((Map.Entry) this.a).getValue());
    }

    @Override // java.util.Map.Entry
    /* renamed from: a */
    public k setValue(k kVar) {
        throw new UnsupportedOperationException();
    }
}
