package luaj.lib;

import java.io.ByteArrayOutputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.PrintStream;
import java.io.RandomAccessFile;
import luaj.Globals;
import luaj.LuaString;
import luaj.LuaTable;
import luaj.LuaValue;
import luaj.ap;
import luaj.n;
import luaj.o;

/* compiled from: src */
/* loaded from: classes.dex */
public class IoLib extends TwoArgFunction {
    LuaTable d;
    public Globals e;
    private static final LuaValue h = m("stdout");
    private static final LuaValue i = m("stderr");
    private static final LuaValue j = m("file");
    private static final LuaValue k = m("closed file");
    public static final String[] b = {"close", "flush", "input", "lines", "open", "output", "popen", "read", "tmpfile", "type", "write"};
    public static final String[] c = {"close", "flush", "lines", "read", "seek", "setvbuf", "write"};
    private File a = null;
    private File f = null;
    private File g = null;

    /* compiled from: src */
    /* loaded from: classes.dex */
    public abstract class File extends LuaValue {
        public abstract void S();

        public abstract boolean T();

        public abstract void U();

        public abstract boolean V();

        public abstract int W();

        public abstract int X();

        public abstract int a(byte[] bArr, int i, int i2);

        public abstract int af();

        public abstract int c(String str, int i);

        public abstract void d(String str, int i);

        public abstract void e(LuaString luaString);

        protected File() {
        }

        public boolean ag() {
            try {
                return X() < 0;
            } catch (EOFException e) {
                return true;
            }
        }

        @Override // luaj.LuaValue
        public LuaValue i() {
            return IoLib.this.d;
        }

        @Override // luaj.LuaValue
        public LuaValue w(LuaValue luaValue) {
            return IoLib.this.d.w(luaValue);
        }

        @Override // luaj.LuaValue
        public int e_() {
            return 7;
        }

        @Override // luaj.LuaValue
        public String f_() {
            return "userdata";
        }

        @Override // luaj.LuaValue, luaj.ap
        public String d_() {
            return "file: " + Integer.toHexString(hashCode());
        }

        public void finalize() {
            if (!V()) {
                try {
                    U();
                } catch (IOException e) {
                }
            }
        }
    }

    private File U() {
        return new StdoutFile(this, 1, null);
    }

    private File V() {
        return new StdoutFile(this, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public File a(String str, char c2) {
        return new FileImpl(this, this.e.d(str), c2, null);
    }

    private File W() {
        java.io.File createTempFile = java.io.File.createTempFile(".gg.", ".tmp");
        FileImpl fileImpl = new FileImpl(this, createTempFile, (char) 162, null);
        createTempFile.delete();
        return fileImpl;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: src */
    /* loaded from: classes.dex */
    public final class FileImpl extends File {
        private final RandomAccessFile c;
        private final char d;
        private boolean e;
        private byte[] f;
        private int g;
        private boolean h;

        private FileImpl(java.io.File file, char c) {
            super();
            this.e = false;
            this.f = null;
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, c == 'r' ? "r" : "rw");
            if (c != 'r') {
                IoLib.this.e.a(file.getAbsolutePath());
            }
            if (c == 'a' || c == 140) {
                randomAccessFile.seek(randomAccessFile.length());
            } else if (c == 'w' || c == 162) {
                randomAccessFile.setLength(0L);
            }
            this.c = randomAccessFile;
            this.d = c;
        }

        /* synthetic */ FileImpl(IoLib ioLib, java.io.File file, char c, FileImpl fileImpl) {
            this(file, c);
        }

        @Override // luaj.lib.IoLib.File, luaj.LuaValue, luaj.ap
        public String d_() {
            return "file (" + (this.e ? "closed" : Integer.valueOf(hashCode())) + ')';
        }

        @Override // luaj.lib.IoLib.File
        public boolean T() {
            return false;
        }

        @Override // luaj.lib.IoLib.File
        public void U() {
            S();
            this.e = true;
            this.c.close();
        }

        @Override // luaj.lib.IoLib.File
        public void e(LuaString luaString) {
            c(true);
            IoLib.this.e.a(luaString.d);
            b(luaString.b, luaString.c, luaString.d);
        }

        private void b(byte[] bArr, int i, int i2) {
            int i3;
            int i4;
            int i5;
            int i6;
            int i7 = 0;
            if (this.f == null) {
                c(bArr, i, i2);
            } else if (i2 != 0) {
                byte[] bArr2 = this.f;
                int length = bArr2.length;
                int i8 = this.g;
                if (this.h) {
                    int i9 = (i + i2) - 1;
                    while (true) {
                        if (i9 < i) {
                            i3 = i8;
                            i4 = i2;
                            i5 = i;
                            break;
                        } else if (bArr[i9] != 10) {
                            i9--;
                        } else {
                            if (i8 > 0) {
                                c(bArr2, 0, i8);
                                this.g = 0;
                                i8 = 0;
                            }
                            int i10 = (i9 - i) + 1;
                            c(bArr, i, i10);
                            int i11 = i + i10;
                            int i12 = i2 - i10;
                            i3 = i8;
                            i4 = i12;
                            i5 = i11;
                        }
                    }
                } else {
                    if (i8 > 0 || i2 <= length) {
                        int i13 = length - i8;
                        if (i13 > i2) {
                            i13 = i2;
                        }
                        System.arraycopy(bArr, i, bArr2, i8, i13);
                        i += i13;
                        i2 -= i13;
                        i8 += i13;
                        if (i8 == length) {
                            c(bArr2, 0, i8);
                            i8 = 0;
                        }
                        this.g = i8;
                        if (i2 == 0) {
                            return;
                        }
                    }
                    i3 = i8;
                    i4 = i2;
                    i5 = i;
                }
                int i14 = i3 + i4;
                if (i14 >= length) {
                    int i15 = (i14 / length) * length;
                    if (i3 > 0) {
                        c(bArr2, 0, i3);
                        i15 -= i3;
                        this.g = 0;
                    } else {
                        i7 = i3;
                    }
                    c(bArr, i5, i15);
                    int i16 = i5 + i15;
                    i6 = i4 - i15;
                    i5 = i16;
                } else {
                    i7 = i3;
                    i6 = i4;
                }
                if (i6 > 0) {
                    System.arraycopy(bArr, i5, bArr2, i7, i6);
                    this.g = i6 + i7;
                }
            }
        }

        @Override // luaj.lib.IoLib.File
        public void S() {
            byte[] bArr = this.f;
            int i = this.g;
            if (bArr != null && i > 0) {
                c(bArr, 0, i);
                this.g = 0;
            }
        }

        private void c(byte[] bArr, int i, int i2) {
            RandomAccessFile randomAccessFile = this.c;
            if (this.d == 140) {
                long filePointer = randomAccessFile.getFilePointer();
                randomAccessFile.seek(randomAccessFile.length());
                randomAccessFile.write(bArr, i, i2);
                randomAccessFile.seek(filePointer);
                return;
            }
            randomAccessFile.write(bArr, i, i2);
        }

        @Override // luaj.lib.IoLib.File
        public boolean V() {
            return this.e;
        }

        @Override // luaj.lib.IoLib.File
        public int c(String str, int i) {
            RandomAccessFile randomAccessFile = this.c;
            if ("set".equals(str)) {
                randomAccessFile.seek(i);
            } else if ("end".equals(str)) {
                randomAccessFile.seek(randomAccessFile.length() + i);
            } else {
                randomAccessFile.seek(randomAccessFile.getFilePointer() + i);
            }
            return (int) randomAccessFile.getFilePointer();
        }

        private void ah() {
            if (this.f != null) {
                S();
                this.f = null;
            }
        }

        @Override // luaj.lib.IoLib.File
        public void d(String str, int i) {
            if ("no".equals(str)) {
                ah();
                return;
            }
            boolean equals = "line".equals(str);
            byte[] bArr = this.f;
            if (bArr == null || bArr.length != i) {
                try {
                    ah();
                    this.f = new byte[i];
                    this.g = 0;
                } catch (OutOfMemoryError e) {
                    throw new IOException("Out of memory for create buffer " + i + " bytes", e);
                }
            } else if (this.h != equals) {
                S();
            }
            this.h = equals;
        }

        private void c(boolean z) {
            switch (this.d) {
                case 'a':
                case 'w':
                    if (!z) {
                        throw new IOException("invalid mode for read data: '" + this.d + "'");
                    }
                    return;
                case 'r':
                    if (z) {
                        throw new IOException("invalid mode for write data: '" + this.d + "'");
                    }
                    return;
                default:
                    return;
            }
        }

        @Override // luaj.lib.IoLib.File
        public int W() {
            c(false);
            return (int) (this.c.length() - this.c.getFilePointer());
        }

        @Override // luaj.lib.IoLib.File
        public int X() {
            c(false);
            RandomAccessFile randomAccessFile = this.c;
            long filePointer = randomAccessFile.getFilePointer();
            int read = randomAccessFile.read();
            randomAccessFile.seek(filePointer);
            return read;
        }

        @Override // luaj.lib.IoLib.File
        public int af() {
            c(false);
            return this.c.read();
        }

        @Override // luaj.lib.IoLib.File
        public int a(byte[] bArr, int i, int i2) {
            c(false);
            return this.c.read(bArr, i, i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: src */
    /* loaded from: classes.dex */
    public final class StdoutFile extends File {
        private final int c;

        private StdoutFile(int i) {
            super();
            this.c = i;
        }

        /* synthetic */ StdoutFile(IoLib ioLib, int i, StdoutFile stdoutFile) {
            this(i);
        }

        @Override // luaj.lib.IoLib.File, luaj.LuaValue, luaj.ap
        public String d_() {
            return "file (" + hashCode() + ')';
        }

        private final PrintStream ah() {
            if (this.c == 2) {
                return IoLib.this.e.f;
            }
            return IoLib.this.e.e;
        }

        @Override // luaj.lib.IoLib.File
        public void e(LuaString luaString) {
            ah().write(luaString.b, luaString.c, luaString.d);
        }

        @Override // luaj.lib.IoLib.File
        public void S() {
            ah().flush();
        }

        @Override // luaj.lib.IoLib.File
        public boolean T() {
            return true;
        }

        @Override // luaj.lib.IoLib.File
        public void U() {
        }

        @Override // luaj.lib.IoLib.File
        public boolean V() {
            return false;
        }

        @Override // luaj.lib.IoLib.File
        public int c(String str, int i) {
            return 0;
        }

        @Override // luaj.lib.IoLib.File
        public void d(String str, int i) {
        }

        @Override // luaj.lib.IoLib.File
        public int W() {
            return 0;
        }

        @Override // luaj.lib.IoLib.File
        public int X() {
            return 0;
        }

        @Override // luaj.lib.IoLib.File
        public int af() {
            return 0;
        }

        @Override // luaj.lib.IoLib.File
        public int a(byte[] bArr, int i, int i2) {
            return 0;
        }
    }

    @Override // luaj.lib.TwoArgFunction, luaj.lib.LibFunction, luaj.LuaValue
    public LuaValue a(LuaValue luaValue, LuaValue luaValue2) {
        this.e = luaValue2.c();
        LuaTable luaTable = new LuaTable();
        a(luaTable, IoLibV.class, b);
        this.d = new LuaTable();
        a(this.d, IoLibV.class, c, 11);
        b(luaTable);
        b(this.d);
        this.d.c("__name", "FILE*");
        this.d.a("__index", this.d);
        luaTable.b(h, d(false));
        luaTable.b(i, X());
        luaValue2.a("io", luaTable);
        if (!luaValue2.j("package").F()) {
            luaValue2.j("package").j("loaded").a("io", luaTable);
        }
        return luaTable;
    }

    private void b(LuaTable luaTable) {
        for (LuaValue luaValue : luaTable.T()) {
            ((IoLibV) luaTable.w(luaValue)).a = this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: src */
    /* loaded from: classes.dex */
    public final class IoLibV extends VarArgFunction {
        public IoLib a;
        private File b;
        private boolean c;
        private ap d;

        public IoLibV() {
        }

        public IoLibV(File file, String str, int i, IoLib ioLib, boolean z, ap apVar) {
            this(file, str, i, ioLib);
            this.c = z;
            this.d = apVar.ae();
        }

        public IoLibV(File file, String str, int i, IoLib ioLib) {
            this.b = file;
            this.ak = str;
            this.aj = i;
            this.a = ioLib;
        }

        @Override // luaj.lib.VarArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public ap a_(ap apVar) {
            String str;
            ap a;
            try {
                switch (this.aj) {
                    case 0:
                        a = this.a.y(apVar.g());
                        break;
                    case 1:
                        a = this.a.S();
                        break;
                    case 2:
                        a = this.a.z(apVar.g());
                        break;
                    case 3:
                        a = this.a.b(apVar);
                        break;
                    case 4:
                        a = this.a.e(apVar.r(1), apVar.c(2, "r"));
                        break;
                    case 5:
                        a = this.a.C(apVar.g());
                        break;
                    case 6:
                        a = this.a.a(apVar.r(1), apVar.c(2, "r"));
                        break;
                    case 7:
                        a = this.a.c(apVar);
                        break;
                    case 8:
                        a = this.a.T();
                        break;
                    case 9:
                        a = this.a.D(apVar.g());
                        break;
                    case 10:
                        a = this.a.d(apVar);
                        break;
                    case 11:
                        a = this.a.E(apVar.g());
                        break;
                    case 12:
                        a = this.a.L(apVar.g());
                        break;
                    case 13:
                        a = this.a.e(apVar);
                        break;
                    case 14:
                        a = this.a.c(apVar.g(), apVar.e_(2));
                        break;
                    case 15:
                        a = this.a.b(apVar.g(), apVar.c(2, "cur"), apVar.d(3, 0));
                        break;
                    case 16:
                        a = this.a.a(apVar.g(), apVar.r(2), apVar.d(3, 8192));
                        break;
                    case 17:
                        a = this.a.d(apVar.g(), apVar.e_(2));
                        break;
                    case 18:
                        a = this.a.a((LuaValue) this.b, this.c, this.d);
                        break;
                    default:
                        a = x;
                        break;
                }
                return a;
            } catch (IOException e) {
                if (this.aj == 18) {
                    String message = e.getMessage();
                    if (message == null) {
                        message = e.toString();
                    }
                    a(message, e);
                }
                return IoLib.a(e, this.aj);
            } catch (n e2) {
                if (this.aj < IoLib.b.length) {
                    str = "io." + IoLib.b[this.aj];
                } else if (this.aj < IoLib.b.length + IoLib.c.length) {
                    str = "file:" + IoLib.b[this.aj - IoLib.b.length];
                } else {
                    str = this.aj == 18 ? "(io.lines iterator)" : e2.c;
                }
                n nVar = new n(e2.a, str, e2.b);
                nVar.initCause(e2);
                throw nVar;
            }
        }
    }

    private File c(boolean z) {
        File file = this.a;
        if (file == null) {
            f("stdin not supported");
        }
        if (z && file.V()) {
            f("standard input file is closed");
        }
        return file;
    }

    public ap S() {
        d(true);
        this.f.S();
        return LuaValue.v;
    }

    public ap T() {
        return W();
    }

    public ap y(LuaValue luaValue) {
        File d = luaValue.F() ? d(false) : d("io.close", luaValue);
        d(d);
        return c(d);
    }

    public ap z(LuaValue luaValue) {
        File b2;
        if (luaValue.F()) {
            b2 = c(false);
        } else {
            b2 = luaValue.J() ? b(3, luaValue.y(), "r") : d("io.input", luaValue);
        }
        this.a = b2;
        return this.a;
    }

    public ap C(LuaValue luaValue) {
        File b2;
        if (luaValue.F()) {
            b2 = d(false);
        } else {
            b2 = luaValue.J() ? b(3, luaValue.y(), "w") : d("io.output", luaValue);
        }
        this.f = b2;
        return this.f;
    }

    public ap D(LuaValue luaValue) {
        File M = M(luaValue);
        if (M != null) {
            return M.V() ? k : j;
        }
        return u;
    }

    public ap a(String str, String str2) {
        throw new o("Failed io.popen('" + str + "', '" + str2 + "'): disabled by security reason");
    }

    public ap e(String str, String str2) {
        return c(3, str, str2);
    }

    public ap b(ap apVar) {
        String c2 = apVar.c(1, null);
        File c3 = c2 == null ? c(false) : b(3, c2, "r");
        d(c3);
        return a(c3, c2 != null, apVar.e_(2));
    }

    public ap c(ap apVar) {
        c(true);
        return b(this.a, apVar);
    }

    public ap d(ap apVar) {
        d(true);
        return a(this.f, apVar);
    }

    public ap E(LuaValue luaValue) {
        return c(d("file:close", luaValue));
    }

    public ap L(LuaValue luaValue) {
        d("file:flush", luaValue).S();
        return LuaValue.v;
    }

    public ap a(LuaValue luaValue, String str, int i2) {
        if ("no".equals(str)) {
            i2 = 1;
        } else if (!"full".equals(str) && !"line".equals(str)) {
            a(1, "file:setvbuf", "invalid value: '" + str + "'; must be one of 'no', 'full' or 'line'");
        }
        if (i2 <= 0) {
            a(2, "file:setvbuf", "invalid value '" + i2 + "'; must be positive");
        }
        d("file:setvbuf", luaValue).d(str, i2);
        return LuaValue.v;
    }

    public ap e(ap apVar) {
        return a(d("file:lines", apVar.g()), false, apVar.e_(2));
    }

    public ap c(LuaValue luaValue, ap apVar) {
        return b(d("file:read", luaValue), apVar);
    }

    public ap b(LuaValue luaValue, String str, int i2) {
        if (!"set".equals(str) && !"end".equals(str) && !"cur".equals(str)) {
            a(1, "file:seek", "invalid value: '" + str + "'; must be one of 'set', 'cur' or 'end'");
        }
        return d(d("file:seek", luaValue).c(str, i2));
    }

    public ap d(LuaValue luaValue, ap apVar) {
        return a(d("file:write", luaValue), apVar);
    }

    public ap a(LuaValue luaValue, boolean z, ap apVar) {
        File M = M(luaValue);
        if (M == null) {
            a(1, "lines", "not a file: " + luaValue);
        }
        if (M.V()) {
            f("file is already closed");
        }
        ap b2 = b(M, apVar);
        if (z && b2.f(1) && M.ag()) {
            M.U();
        }
        return b2;
    }

    private File d(boolean z) {
        File file = this.f;
        if (file == null) {
            file = b(1, "-", "w");
            this.f = file;
        }
        if (z && file.V()) {
            f("standard output file is closed");
        }
        return file;
    }

    private File X() {
        if (this.g != null) {
            return this.g;
        }
        File b2 = b(2, "-", "w");
        this.g = b2;
        return b2;
    }

    private File b(int i2, String str, String str2) {
        try {
            return c(i2, str, str2);
        } catch (Exception e) {
            a("io error: " + e.getMessage(), e);
            return null;
        }
    }

    private static ap c(File file) {
        if (file.T()) {
            return c("cannot close standard file", 1000);
        }
        file.U();
        return af();
    }

    private static ap af() {
        return LuaValue.v;
    }

    static ap a(IOException iOException, int i2) {
        String message = iOException.getMessage();
        StringBuilder sb = new StringBuilder("io error: ");
        if (message == null) {
            message = iOException.toString();
        }
        return c(sb.append(message).toString(), i2);
    }

    private static ap c(String str, int i2) {
        return a(u, (LuaValue) m(str), (ap) d(i2));
    }

    private ap a(File file, boolean z, ap apVar) {
        int j_ = apVar.j_();
        if (j_ > 250) {
            if (z) {
                try {
                    file.U();
                } catch (IOException e) {
                }
            }
            f("too many arguments: " + j_ + " max = 250");
        }
        try {
            return new IoLibV(file, "lnext", 18, this, z, apVar);
        } catch (Exception e2) {
            return a("lines: " + e2, e2);
        }
    }

    private static ap a(File file, ap apVar) {
        int j_ = apVar.j_();
        for (int i2 = 1; i2 <= j_; i2++) {
            file.e(apVar.s(i2));
        }
        return file;
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:?, code lost:
        return luaj.lib.IoLib.u;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:?, code lost:
        return a(r5, 0, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0013, code lost:
        if (r0 != 0) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private luaj.ap b(luaj.lib.IoLib.File r11, luaj.ap r12) {
        /*
            r10 = this;
            r9 = 1
            r3 = 0
            int r4 = r12.j_()
            if (r4 != 0) goto Ld
            luaj.LuaValue r0 = a(r11, r3)
        Lc:
            return r0
        Ld:
            luaj.LuaValue[] r5 = new luaj.LuaValue[r4]
            r2 = r3
        L10:
            if (r2 < r4) goto L18
            r0 = r2
        L13:
            if (r0 != 0) goto L8e
            luaj.LuaValue r0 = luaj.lib.IoLib.u
            goto Lc
        L18:
            int r0 = r2 + 1
            luaj.LuaValue r1 = r12.c(r0)
            int r0 = r1.e_()
            switch(r0) {
                case 3: goto L43;
                case 4: goto L57;
                default: goto L25;
            }
        L25:
            int r0 = r2 + 1
            java.lang.String r2 = "read"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            java.lang.String r4 = "invalid format: '"
            r3.<init>(r4)
            java.lang.StringBuilder r1 = r3.append(r1)
            java.lang.String r3 = "'"
            java.lang.StringBuilder r1 = r1.append(r3)
            java.lang.String r1 = r1.toString()
            luaj.LuaValue r0 = a(r0, r2, r1)
            goto Lc
        L43:
            int r0 = r1.p()
            luaj.LuaValue r0 = a(r11, r0)
        L4b:
            int r1 = r2 + 1
            r5[r2] = r0
            boolean r0 = r0.F()
            if (r0 == 0) goto L94
            r0 = r1
            goto L13
        L57:
            luaj.LuaString r6 = r1.z()
            int r0 = r6.d
            if (r0 < r9) goto L25
            byte[] r0 = r6.b
            int r7 = r6.c
            r0 = r0[r7]
            r7 = 42
            if (r0 != r7) goto L76
            int r7 = r6.d
            r8 = 2
            if (r7 < r8) goto L76
            byte[] r0 = r6.b
            int r6 = r6.c
            int r6 = r6 + 1
            r0 = r0[r6]
        L76:
            switch(r0) {
                case 76: goto L7a;
                case 97: goto L89;
                case 108: goto L84;
                case 110: goto L7f;
                default: goto L79;
            }
        L79:
            goto L25
        L7a:
            luaj.LuaValue r0 = a(r11, r9)
            goto L4b
        L7f:
            luaj.LuaValue r0 = b(r11)
            goto L4b
        L84:
            luaj.LuaValue r0 = a(r11, r3)
            goto L4b
        L89:
            luaj.LuaValue r0 = a(r11)
            goto L4b
        L8e:
            luaj.ap r0 = a(r5, r3, r0)
            goto Lc
        L94:
            r2 = r1
            goto L10
        */
        throw new UnsupportedOperationException("Method not decompiled: luaj.lib.IoLib.b(luaj.lib.IoLib$File, luaj.ap):luaj.ap");
    }

    private static File d(String str, LuaValue luaValue) {
        File M = M(luaValue);
        if (M == null) {
            a(1, str, "FILE* expected, got " + luaValue.aa());
        }
        d(M);
        return M;
    }

    private static File M(LuaValue luaValue) {
        if (luaValue instanceof File) {
            return (File) luaValue;
        }
        return null;
    }

    private static File d(File file) {
        if (file.V()) {
            f("attempt to use a closed file");
        }
        return file;
    }

    private File c(int i2, String str, String str2) {
        int length = str2.length();
        for (int i3 = 0; i3 < length; i3++) {
            char charAt = str2.charAt(i3);
            if ((i3 != 0 || "rwa".indexOf(charAt) < 0) && ((i3 != 1 || charAt != '+') && (i3 < 1 || charAt != 'b'))) {
                length = -1;
            }
        }
        if (length <= 0) {
            a(2, "io.open", "invalid mode: '" + str2 + "'");
        }
        switch (i2) {
            case 1:
                return U();
            case 2:
                return V();
            default:
                return a(str, (char) ((str2.indexOf(43) > 0 ? '+' : (char) 0) + str2.charAt(0)));
        }
    }

    public static LuaValue a(File file, int i2) {
        if (i2 == 0) {
            return file.ag() ? u : ad;
        }
        byte[] bArr = new byte[i2];
        int a = file.a(bArr, 0, bArr.length);
        if (a < 0) {
            return u;
        }
        return LuaString.b(bArr, 0, a);
    }

    public static LuaValue a(File file, boolean z, boolean z2) {
        int i2;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            if (z) {
                while (true) {
                    i2 = file.af();
                    if (i2 >= 0) {
                        switch (i2) {
                            case 10:
                                if (z2) {
                                    byteArrayOutputStream.write(i2);
                                    break;
                                }
                                break;
                            case 11:
                            case 12:
                            default:
                                byteArrayOutputStream.write(i2);
                                break;
                            case 13:
                                if (!z2) {
                                    break;
                                } else {
                                    byteArrayOutputStream.write(i2);
                                    break;
                                }
                        }
                    }
                }
            } else {
                while (true) {
                    i2 = file.af();
                    if (i2 < 0) {
                        break;
                    }
                    byteArrayOutputStream.write(i2);
                }
            }
        } catch (EOFException e) {
            i2 = -1;
        }
        if (i2 < 0 && byteArrayOutputStream.size() == 0) {
            return u;
        }
        return LuaString.b(byteArrayOutputStream.toByteArray());
    }

    public static LuaValue a(File file, boolean z) {
        return a(file, true, z);
    }

    public static LuaValue a(File file) {
        int W = file.W();
        if (W >= 0) {
            return W == 0 ? ad : a(file, W);
        }
        return a(file, false, false);
    }

    public static LuaValue b(File file) {
        int i2;
        boolean z;
        int i3;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        a(file, " \t\r\n", (ByteArrayOutputStream) null, 0);
        a(file, "-+", byteArrayOutputStream, 1);
        if (a(file, "0", byteArrayOutputStream, 1) <= 0) {
            i2 = 0;
            z = false;
        } else if (a(file, "xX", byteArrayOutputStream, 1) > 0) {
            i2 = 0;
            z = true;
        } else {
            i2 = 1;
            z = false;
        }
        int a = i2 + a(file, z ? "0123456789abcdefABCDEF" : "0123456789", byteArrayOutputStream, 0);
        if (a(file, ".", byteArrayOutputStream, 1) > 0) {
            i3 = a(file, z ? "0123456789abcdefABCDEF" : "0123456789", byteArrayOutputStream, 0) + a;
        } else {
            i3 = a;
        }
        if (i3 > 0) {
            if (a(file, z ? "pP" : "eE", byteArrayOutputStream, 1) > 0) {
                a(file, "-+", byteArrayOutputStream, 1);
                a(file, "0123456789", byteArrayOutputStream, 0);
            }
        }
        String byteArrayOutputStream2 = byteArrayOutputStream.toString();
        return byteArrayOutputStream2.length() > 0 ? c(byteArrayOutputStream2, u) : u;
    }

    private static int a(File file, String str, ByteArrayOutputStream byteArrayOutputStream, int i2) {
        int i3 = 0;
        while (true) {
            int X = file.X();
            if (str.indexOf(X) >= 0) {
                file.af();
                i3++;
                if (byteArrayOutputStream != null) {
                    if (byteArrayOutputStream.size() >= 200) {
                        byteArrayOutputStream.reset();
                        return 0;
                    }
                    byteArrayOutputStream.write(X);
                }
                if (i2 > 0 && i3 >= i2) {
                    return i3;
                }
            } else {
                return i3;
            }
        }
    }
}
