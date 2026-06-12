package luaj;

import android.ext.Script;
import java.util.Locale;

/* compiled from: src */
/* loaded from: classes.dex */
public abstract class LuaFunction extends LuaValue {
    private static final String a = Script.class.getName();
    public static LuaValue s;

    @Override // luaj.LuaValue
    public int e_() {
        return 6;
    }

    @Override // luaj.LuaValue
    public String f_() {
        return "function";
    }

    @Override // luaj.LuaValue
    public boolean B() {
        return true;
    }

    @Override // luaj.LuaValue
    public LuaFunction C() {
        return this;
    }

    @Override // luaj.LuaValue
    public LuaFunction a(LuaFunction luaFunction) {
        return this;
    }

    @Override // luaj.LuaValue
    public LuaValue i() {
        return s;
    }

    @Override // luaj.LuaValue, luaj.ap
    public String d_() {
        return "function: " + D();
    }

    @Override // luaj.LuaValue
    public LuaString t() {
        return m(d_());
    }

    public String D() {
        return e(getClass().getName());
    }

    public static String e(String str) {
        int lastIndexOf = str.lastIndexOf(36);
        int lastIndexOf2 = str.lastIndexOf(46);
        int max = Math.max(lastIndexOf2, lastIndexOf) + 1;
        if (str.charAt(max) == '_') {
            max++;
        }
        String substring = str.substring(max);
        String str2 = null;
        if (str.startsWith(a)) {
            str2 = "gg.";
        } else if (lastIndexOf > lastIndexOf2 && str.contains("Lib$") && !str.contains("BaseLib$")) {
            str2 = String.valueOf(str.substring(lastIndexOf2 + 1, lastIndexOf - 3).toLowerCase(Locale.ENGLISH)) + '.';
        }
        return str2 == null ? substring : String.valueOf(str2) + substring;
    }

    public String g_() {
        return D();
    }
}
