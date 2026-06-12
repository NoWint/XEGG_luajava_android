package luaj;

/* compiled from: src */
/* loaded from: classes.dex */
public class n extends o {
    public final int a;
    public final String b;
    public final String c;

    private String c() {
        if (this.c == null) {
            return String.valueOf(this.a == 0 ? "calling method on bad self" : "bad argument #" + this.a + ": ") + this.b;
        }
        return String.valueOf(this.a == 0 ? "calling '" + this.c + "' on bad self" : "bad argument #" + this.a + " to '" + this.c + "'") + " (" + this.b + ")";
    }

    private String a(String str) {
        StackTraceElement[] stackTrace;
        if (str == null && (stackTrace = getStackTrace()) != null) {
            int length = stackTrace.length;
            for (int i = 1; i < length; i++) {
                String className = stackTrace[i].getClassName();
                if (className != null) {
                    if (!className.endsWith("LuaClosure")) {
                        if (className.contains("Lib$")) {
                            return LuaFunction.e(className);
                        }
                    } else {
                        return str;
                    }
                }
            }
            return str;
        }
        return str;
    }

    public n(int i, String str, String str2) {
        super((String) null);
        this.a = i;
        this.b = str2;
        this.c = a(str);
        this.k = c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(n nVar) {
        super((String) null, nVar);
        this.a = nVar.a - 1;
        this.b = nVar.b;
        this.c = nVar.c;
        this.k = c();
    }
}
