package android.ext;

import android.content.SharedPreferences;
import java.util.Set;

/* compiled from: src */
/* loaded from: classes.dex */
public class qw implements SharedPreferences.Editor {
    final SharedPreferences.Editor a;

    public qw() {
        this.a = Tools.s().edit();
    }

    public qw(SharedPreferences.Editor editor) {
        this.a = editor;
    }

    public qw a(String str, String str2, String str3) {
        if (str2.equals(str3)) {
            this.a.remove(str);
        } else {
            this.a.putString(str, str2);
        }
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    /* renamed from: a */
    public qw putString(String str, String str2) {
        this.a.putString(str, str2);
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    /* renamed from: a */
    public qw putStringSet(String str, Set set) {
        this.a.putStringSet(str, set);
        return this;
    }

    public qw a(String str, int i, int i2) {
        if (i == i2) {
            this.a.remove(str);
        } else {
            this.a.putInt(str, i);
        }
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    /* renamed from: a */
    public qw putInt(String str, int i) {
        this.a.putInt(str, i);
        return this;
    }

    public qw a(String str, long j, long j2) {
        if (j == j2) {
            this.a.remove(str);
        } else {
            this.a.putLong(str, j);
        }
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    /* renamed from: a */
    public qw putLong(String str, long j) {
        this.a.putLong(str, j);
        return this;
    }

    public qw a(String str, float f, float f2) {
        if (f == f2) {
            this.a.remove(str);
        } else {
            this.a.putFloat(str, f);
        }
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    /* renamed from: a */
    public qw putFloat(String str, float f) {
        this.a.putFloat(str, f);
        return this;
    }

    public qw a(String str, boolean z, boolean z2) {
        if (z == z2) {
            this.a.remove(str);
        } else {
            this.a.putBoolean(str, z);
        }
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    /* renamed from: a */
    public qw putBoolean(String str, boolean z) {
        this.a.putBoolean(str, z);
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    /* renamed from: a */
    public qw remove(String str) {
        this.a.remove(str);
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    /* renamed from: a */
    public qw clear() {
        this.a.clear();
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public boolean commit() {
        return this.a.commit();
    }

    @Override // android.content.SharedPreferences.Editor
    public void apply() {
        this.a.apply();
    }
}
