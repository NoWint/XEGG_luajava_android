package android.lang;

import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* compiled from: src */
/* loaded from: classes.dex */
class d implements Iterator {
    Iterator a;
    final /* synthetic */ c b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(c cVar) {
        Set set;
        this.b = cVar;
        set = cVar.a;
        this.a = set.iterator();
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.a.hasNext();
    }

    @Override // java.util.Iterator
    /* renamed from: a */
    public Map.Entry next() {
        return new b((Map.Entry) this.a.next());
    }

    @Override // java.util.Iterator
    public void remove() {
        this.a.remove();
    }
}
