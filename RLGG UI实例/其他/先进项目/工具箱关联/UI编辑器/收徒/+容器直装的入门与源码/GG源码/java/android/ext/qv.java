package android.ext;

import android.content.SharedPreferences;
import java.util.Map;
import java.util.Set;

/* compiled from: src */
/* loaded from: classes.dex */
public class qv implements SharedPreferences {
    final SharedPreferences a;

    public static SharedPreferences a(SharedPreferences sharedPreferences) {
        if (!(sharedPreferences instanceof qv)) {
            return new qv(sharedPreferences);
        }
        return sharedPreferences;
    }

    private qv(SharedPreferences sharedPreferences) {
        this.a = sharedPreferences;
    }

    @Override // android.content.SharedPreferences
    public Map getAll() {
        return this.a.getAll();
    }

    @Override // android.content.SharedPreferences
    public String getString(String str, String str2) {
        try {
            return this.a.getString(str, str2);
        } catch (Throwable th) {
            la.a(th);
            return str2;
        }
    }

    @Override // android.content.SharedPreferences
    public Set getStringSet(String str, Set set) {
        try {
            return this.a.getStringSet(str, set);
        } catch (Throwable th) {
            la.a(th);
            return set;
        }
    }

    @Override // android.content.SharedPreferences
    public int getInt(String str, int i) {
        try {
            return this.a.getInt(str, i);
        } catch (Throwable th) {
            la.a(th);
            return i;
        }
    }

    @Override // android.content.SharedPreferences
    public long getLong(String str, long j) {
        try {
            return this.a.getLong(str, j);
        } catch (Throwable th) {
            la.a(th);
            return j;
        }
    }

    @Override // android.content.SharedPreferences
    public float getFloat(String str, float f) {
        try {
            return this.a.getFloat(str, f);
        } catch (Throwable th) {
            la.a(th);
            return f;
        }
    }

    @Override // android.content.SharedPreferences
    public boolean getBoolean(String str, boolean z) {
        try {
            return this.a.getBoolean(str, z);
        } catch (Throwable th) {
            la.a(th);
            return z;
        }
    }

    @Override // android.content.SharedPreferences
    public boolean contains(String str) {
        try {
            return this.a.contains(str);
        } catch (Throwable th) {
            la.a(th);
            return false;
        }
    }

    @Override // android.content.SharedPreferences
    public SharedPreferences.Editor edit() {
        return this.a.edit();
    }

    @Override // android.content.SharedPreferences
    public void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        try {
            this.a.registerOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
        } catch (Throwable th) {
            la.a(th);
        }
    }

    @Override // android.content.SharedPreferences
    public void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        try {
            this.a.unregisterOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
        } catch (Throwable th) {
            la.a(th);
        }
    }
}
