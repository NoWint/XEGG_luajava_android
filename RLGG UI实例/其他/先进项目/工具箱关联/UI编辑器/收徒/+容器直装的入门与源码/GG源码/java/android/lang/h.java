package android.lang;

import java.util.Iterator;
import java.util.Set;

/* compiled from: src */
/* loaded from: classes.dex */
class h implements Iterator {
    Iterator a;
    final /* synthetic */ g b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(g gVar) {
        Set set;
        this.b = gVar;
        set = gVar.a;
        this.a = set.iterator();
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.a.hasNext();
    }

    @Override // java.util.Iterator
    /* renamed from: a */
    public String next() {
        return ((l) this.a.next()).toString();
    }

    @Override // java.util.Iterator
    public void remove() {
        this.a.remove();
    }
}
