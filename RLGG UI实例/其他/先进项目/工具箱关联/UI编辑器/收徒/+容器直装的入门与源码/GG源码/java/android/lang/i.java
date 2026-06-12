package android.lang;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;

/* compiled from: src */
/* loaded from: classes.dex */
class i extends AbstractCollection {
    private final Collection a;

    public i(Collection collection) {
        this.a = collection;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public int size() {
        return this.a.size();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        return this.a.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public void clear() {
        this.a.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public Iterator iterator() {
        return new j(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        return this.a.contains(k.a(obj));
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean remove(Object obj) {
        return this.a.remove(k.a(obj));
    }

    @Override // java.util.Collection
    public boolean equals(Object obj) {
        return (obj instanceof i) && this.a.equals(((i) obj).a);
    }

    @Override // java.util.Collection
    public int hashCode() {
        return this.a.hashCode();
    }
}
