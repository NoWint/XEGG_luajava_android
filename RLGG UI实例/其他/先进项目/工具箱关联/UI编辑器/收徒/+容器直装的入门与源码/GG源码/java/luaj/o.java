package luaj;

import android.ext.la;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.InputStreamReader;

/* compiled from: src */
/* loaded from: classes.dex */
public class o extends RuntimeException {
    protected int d;
    protected String e;
    protected String f;
    protected int g;
    protected String h;
    protected Throwable i;
    LuaValue j;
    protected String k;
    public String l;

    @Override // java.lang.Throwable
    public String getMessage() {
        if (this.h != null) {
            return (this.l == null || this.h.startsWith(this.l)) ? this.h : String.valueOf(this.l) + this.h;
        }
        String message = this.k == null ? super.getMessage() : this.k;
        if (message == null) {
            return null;
        }
        if (this.e != null) {
            return String.valueOf((this.l == null || message.startsWith(this.l)) ? "" : this.l) + c() + '\n' + message;
        }
        return (this.l == null || message.startsWith(this.l)) ? message : String.valueOf(this.l) + message;
    }

    private String a(String str) {
        return (str == null || str.length() <= 124) ? str : String.valueOf(str.substring(0, 124)) + "...";
    }

    private String c() {
        String str;
        InputStream byteArrayInputStream;
        int i = 1;
        if (this.f == null || this.g < 0) {
            return String.valueOf(this.e) + '\n';
        }
        try {
            String str2 = this.f;
            String substring = (str2.length() <= 0 || str2.charAt(0) != '@') ? str2 : str2.substring(1);
            File file = new File(substring);
            if (file.exists()) {
                byteArrayInputStream = new BufferedInputStream(new FileInputStream(file));
            } else {
                byteArrayInputStream = new ByteArrayInputStream(substring.getBytes());
            }
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(byteArrayInputStream));
            while (i < this.g && bufferedReader.readLine() != null) {
                i++;
            }
            str = i == this.g ? a(bufferedReader.readLine()) : "failed read line";
        } catch (Throwable th) {
            la.c("Failed read source", th);
            str = "failed read source";
        }
        return String.valueOf(this.e) + "\n`" + str + '`';
    }

    public LuaValue a() {
        if (this.j != null) {
            return this.j;
        }
        String message = getMessage();
        if (message != null) {
            return LuaValue.m(message);
        }
        return null;
    }

    public o(Throwable th) {
        super("vm error: " + th);
        this.l = null;
        this.i = th;
        this.d = 1;
    }

    public o(String str) {
        super(str);
        this.l = null;
        this.d = 1;
    }

    public o(String str, int i, String str2) {
        super(str2);
        this.l = null;
        this.d = 1;
        this.f = str;
        this.g = i;
        b();
    }

    public void b() {
        this.e = String.valueOf(a(this.f)) + ":" + this.g;
    }

    public o(String str, Throwable th) {
        super(str);
        this.l = null;
        this.i = th;
        this.d = 1;
    }

    public o(String str, int i) {
        super(str);
        this.l = null;
        this.d = i;
    }

    public o(LuaValue luaValue) {
        super(luaValue.d_());
        this.l = null;
        this.j = luaValue;
        this.d = 1;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.i;
    }
}
