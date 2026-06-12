package android.lang;

import android.ext.eu;
import java.io.File;
import java.io.IOException;
import java.util.Map;

/* compiled from: src */
/* loaded from: classes.dex */
public final class ProcessBuilder {
    static final /* synthetic */ boolean a;
    private static volatile boolean b;
    private String[] c;
    private File d;
    private Map e;

    public static native boolean loaded();

    static {
        a = !ProcessBuilder.class.desiredAssertionStatus();
        b = false;
    }

    public static Process a(String[] strArr, String[] strArr2, File file) {
        if (!b) {
            b = true;
            eu.e();
        }
        return new ProcessBuilder(strArr).a(strArr2).a(file).a();
    }

    public ProcessBuilder(String... strArr) {
        this.c = strArr;
    }

    ProcessBuilder a(String[] strArr) {
        if (a || this.e == null) {
            if (strArr != null) {
                this.e = ProcessEnvironment.a(strArr.length);
                if (!a && this.e == null) {
                    throw new AssertionError();
                }
                for (String str : strArr) {
                    if (str.indexOf(0) != -1) {
                        str = str.replaceFirst("\u0000.*", "");
                    }
                    int indexOf = str.indexOf(61, 0);
                    if (indexOf != -1) {
                        this.e.put(str.substring(0, indexOf), str.substring(indexOf + 1));
                    }
                }
            }
            return this;
        }
        throw new AssertionError();
    }

    public ProcessBuilder a(File file) {
        this.d = file;
        return this;
    }

    public Process a() {
        String[] strArr = (String[]) this.c.clone();
        for (String str : strArr) {
            if (str == null) {
                throw new NullPointerException();
            }
        }
        String str2 = strArr[0];
        SecurityManager securityManager = System.getSecurityManager();
        if (securityManager != null) {
            securityManager.checkExec(str2);
        }
        String file = this.d == null ? null : this.d.toString();
        for (int i = 1; i < strArr.length; i++) {
            if (strArr[i].indexOf(0) >= 0) {
                throw new IOException("invalid null character in command");
            }
        }
        try {
            return m.a(strArr, this.e, file, false);
        } catch (IOException | IllegalArgumentException e) {
            e = e;
            String str3 = ": " + e.getMessage();
            if ((e instanceof IOException) && securityManager != null) {
                try {
                    securityManager.checkRead(str2);
                } catch (SecurityException e2) {
                    e = e2;
                    str3 = "";
                }
            }
            throw new IOException("Cannot run program \"" + str2 + '\"' + (file == null ? "" : " (in directory \"" + file + "\")") + str3, e);
        }
    }
}
