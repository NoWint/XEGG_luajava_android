package android.fix;

import android.annotation.TargetApi;
import android.ext.la;
import android.os.Build;
import android.util.SparseArray;
import java.lang.reflect.Field;

/* compiled from: src */
/* loaded from: classes.dex */
public class j extends SparseArray {
    private void a() {
        try {
            Field declaredField = SparseArray.class.getDeclaredField("mKeys");
            declaredField.setAccessible(true);
            Field declaredField2 = SparseArray.class.getDeclaredField("mValues");
            declaredField2.setAccessible(true);
            Field declaredField3 = SparseArray.class.getDeclaredField("mSize");
            declaredField3.setAccessible(true);
            int i = declaredField3.getInt(this);
            int length = ((int[]) declaredField.get(this)).length;
            int length2 = ((Object[]) declaredField2.get(this)).length;
            if (i > length || i > length2) {
                declaredField3.setInt(this, Math.min(Math.min(i, length), length2));
            }
        } catch (Throwable th) {
            la.b("Failed fix", th);
        }
    }

    @Override // android.util.SparseArray
    public void clear() {
        try {
            super.clear();
        } catch (ArrayIndexOutOfBoundsException e) {
            la.a(e);
            a();
            super.clear();
        }
    }

    @Override // android.util.SparseArray
    public int size() {
        try {
            return super.size();
        } catch (ArrayIndexOutOfBoundsException e) {
            la.a(e);
            a();
            return super.size();
        }
    }

    @Override // android.util.SparseArray
    public Object get(int i, Object obj) {
        try {
            return super.get(i, obj);
        } catch (ArrayIndexOutOfBoundsException e) {
            la.a(e);
            a();
            return super.get(i, obj);
        }
    }

    public synchronized Object a(int i) {
        return get(i);
    }

    @Override // android.util.SparseArray
    public void delete(int i) {
        try {
            super.delete(i);
        } catch (ArrayIndexOutOfBoundsException e) {
            la.a(e);
            a();
            super.delete(i);
        }
    }

    @Override // android.util.SparseArray
    public void put(int i, Object obj) {
        try {
            super.put(i, obj);
        } catch (ArrayIndexOutOfBoundsException e) {
            la.a(e);
            a();
            super.put(i, obj);
        }
    }

    public synchronized void a(int i, Object obj) {
        put(i, obj);
    }

    @Override // android.util.SparseArray
    public int indexOfKey(int i) {
        try {
            return super.indexOfKey(i);
        } catch (ArrayIndexOutOfBoundsException e) {
            la.a(e);
            a();
            return super.indexOfKey(i);
        }
    }

    @Override // android.util.SparseArray
    @TargetApi(11)
    public void removeAt(int i) {
        if (Build.VERSION.SDK_INT > 11) {
            super.removeAt(i);
        } else {
            remove(keyAt(i));
        }
    }
}
