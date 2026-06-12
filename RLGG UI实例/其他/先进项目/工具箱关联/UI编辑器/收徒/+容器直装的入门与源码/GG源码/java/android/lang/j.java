package android.lang;

import java.util.Collection;
import java.util.Iterator;

/* compiled from: src */
/* loaded from: classes.dex */
class j implements Iterator {
    Iterator a;
    final /* synthetic */ i b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(i iVar) {
        Collection collection;
        this.b = iVar;
        collection = iVar.a;
        this.a = collection.iterator();
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.a.hasNext();
    }

    @Override // java.util.Iterator
    /* renamed from: a */
    public String next() {
        return ((k) this.a.next()).toString();
    }

    @Override // java.util.Iterator
    public void remove() {
        this.a.remove();
    }
}
