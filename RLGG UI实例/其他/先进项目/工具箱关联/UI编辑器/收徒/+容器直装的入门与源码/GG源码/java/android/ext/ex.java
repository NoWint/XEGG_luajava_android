package android.ext;

import android.content.DialogInterface;
import android.os.Process;
import catch_.me_.if_.you_.can_.R;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Exchanger;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class ex {
    public static volatile boolean a = false;
    public static volatile boolean b = false;
    public static volatile boolean c = false;
    static gq g = null;
    private static final List t = new ArrayList();
    private static boolean u = true;
    static volatile String k = null;
    private static volatile String C = null;
    gq d = null;
    Exchanger f = new Exchanger();
    private volatile boolean n = false;
    volatile int h = -1;
    volatile int i = -1;
    volatile String j = "???";
    private volatile int o = 0;
    private volatile int p = 0;
    private volatile long q = 0;
    private volatile long r = -1;
    private volatile long s = 0;
    Thread l = new ey(this, "mReaderThread");
    private volatile int v = 1;
    private volatile int w = 1;
    private volatile long x = 0;
    private final ArrayList y = new ArrayList();
    private final ArrayList z = new ArrayList();
    private final ArrayList A = new ArrayList();
    long m = 0;
    private Integer B = null;
    final InOut e = new InOut();

    public static void a(Runnable runnable) {
        synchronized (t) {
            if (u) {
                t.add(runnable);
            } else {
                new gr(runnable, "runAfterDaemonStart").start();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a() {
        synchronized (t) {
            u = false;
            for (Runnable runnable : t) {
                new gr(runnable, "waitForDaemonStart").start();
            }
        }
    }

    private static boolean a(InputStream inputStream, String str) {
        byte[] bytes = str.getBytes();
        byte[] bArr = new byte[4096];
        la.a("Start: " + str);
        int i = 0;
        int i2 = 0;
        while (true) {
            int read = inputStream.read();
            if (read == -1) {
                break;
            }
            byte b2 = (byte) read;
            if (i >= bArr.length) {
                break;
            }
            int i3 = i + 1;
            bArr[i] = b2;
            if (b2 == bytes[i2]) {
                i2++;
                if (i2 == bytes.length) {
                    la.a("Good: " + str);
                    return true;
                }
            } else {
                i2 = 0;
            }
            if (inputStream.available() == 0) {
                for (int i4 = 0; i4 < 30; i4++) {
                    try {
                        Thread.sleep(100L);
                    } catch (InterruptedException e) {
                    }
                    if (inputStream.available() != 0) {
                        break;
                    }
                }
            }
            if (inputStream.available() == 0) {
                qt.a = String.valueOf(qt.a) + "No more data: " + i3 + '\n';
                i = i3;
                break;
            }
            i = i3;
        }
        String str2 = "Fail: '" + str + "' " + i + " '" + new String(bArr, 0, i) + '\'';
        qt.a = String.valueOf(qt.a) + str2 + '\n';
        la.a(str2);
        return false;
    }

    private static boolean a(gq gqVar, File file) {
        if (gqVar == null || gqVar.a == null) {
            return false;
        }
        InputStream inputStream = gqVar.c;
        boolean z = a(gqVar.d, "android-daemon err") && a(inputStream, "android-daemon out");
        if (!Config.C && z) {
            new qw().putInt("root-ok", (int) (((16325.7f * 1) - 183.7f) + 0.5f)).commit();
        }
        if (z) {
            int read = inputStream.read();
            if (read == 49 || read == 48) {
                inputStream.read();
            }
            if (read == 49) {
                try {
                    OutputStream outputStream = gqVar.b;
                    la.a("IF 0");
                    FileInputStream fileInputStream = new FileInputStream(new File(file, "o"));
                    la.a("IF 1");
                    FileInputStream fileInputStream2 = new FileInputStream(new File(file, "e"));
                    la.a("IF 2");
                    FileOutputStream fileOutputStream = new FileOutputStream(new File(file, "i"));
                    la.a("IF 3");
                    gqVar.b = fileOutputStream;
                    gqVar.c = fileInputStream;
                    gqVar.d = fileInputStream2;
                    outputStream.write(1 != 0 ? 89 : 78);
                    outputStream.write(10);
                    outputStream.flush();
                    InOut.c = true;
                } catch (Throwable th) {
                    la.c("Fifo fail 2", th);
                }
            } else if (read != 48) {
                la.b("Odd fifo: " + read);
            }
        }
        return z;
    }

    public static String b() {
        return ir.a(gs.f(), "S!H!A!-!3!8!4".replace("!", ""));
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x0339 A[Catch: Throwable -> 0x0318, TRY_ENTER, TryCatch #3 {Throwable -> 0x0318, blocks: (B:3:0x0001, B:5:0x000e, B:9:0x0016, B:51:0x0126, B:53:0x012f, B:55:0x0159, B:102:0x0339, B:104:0x0343, B:105:0x0347, B:107:0x0352, B:109:0x0358, B:111:0x0364, B:95:0x02dd, B:97:0x02e7, B:98:0x02eb), top: B:122:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x02dd A[Catch: Throwable -> 0x0318, TRY_ENTER, TryCatch #3 {Throwable -> 0x0318, blocks: (B:3:0x0001, B:5:0x000e, B:9:0x0016, B:51:0x0126, B:53:0x012f, B:55:0x0159, B:102:0x0339, B:104:0x0343, B:105:0x0347, B:107:0x0352, B:109:0x0358, B:111:0x0364, B:95:0x02dd, B:97:0x02e7, B:98:0x02eb), top: B:122:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String a(java.lang.String r26) {
        /*
            Method dump skipped, instructions count: 884
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: android.ext.ex.a(java.lang.String):java.lang.String");
    }

    private String[] a(boolean z, String str, File file) {
        String[] strArr = new String[5];
        strArr[0] = str;
        strArr[1] = Tools.g();
        strArr[2] = file.getAbsolutePath();
        strArr[3] = b();
        strArr[4] = Config.C ? "1" : "0";
        if (z) {
            return strArr;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("exec");
        for (String str2 : strArr) {
            sb.append(' ');
            sb.append(str2);
        }
        return new String[]{sb.toString()};
    }

    public gq b(String str) {
        Process a2;
        String a3;
        try {
            boolean z = Config.C;
            File l = Tools.l();
            boolean z2 = false;
            boolean z3 = false;
            String[] a4 = a(z, str, l);
            boolean z4 = z;
            while (true) {
                for (String str2 : new String[]{"i", "o", "e"}) {
                    new File(l, str2).delete();
                }
                if (z4) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("try: direct");
                    for (String str3 : a4) {
                        sb.append(' ');
                        sb.append(str3);
                    }
                    la.a(sb.toString());
                }
                a2 = z4 ? Tools.a(a4) : qt.a(a4[0], (String) null, true);
                la.a("Daemon process: " + a2 + "; pid=" + (a2 == null ? "n/a" : Integer.valueOf(Tools.a(a2))));
                gq gqVar = new gq();
                gqVar.a = a2;
                if (a2 != null) {
                    gqVar.b = a2.getOutputStream();
                    gqVar.c = a2.getInputStream();
                    gqVar.d = a2.getErrorStream();
                }
                if (!a(gqVar, l)) {
                    if (!z3) {
                        String removeNewLinesChars = Tools.removeNewLinesChars("h{hf#lg");
                        la.a("Test 1 start");
                        qt.a(z4 ? "id" : removeNewLinesChars, 45, z4 ? "" : null);
                        qt.a = "";
                        la.a("Test 1 end");
                        Tools.a(new File(str), 493);
                        Tools.a(str, "0755");
                        z3 = true;
                    } else if (Config.C) {
                        if (!z4) {
                            break;
                        }
                        a4 = a(false, str, l);
                        z4 = false;
                    } else if (z2 || (a3 = a(str)) == null) {
                        break;
                    } else {
                        z2 = true;
                        a4 = a(z4, a3, l);
                    }
                } else {
                    g = gqVar;
                    this.i = Tools.a(a2);
                    if (c()) {
                        rx.b(new fx(this));
                        return gqVar;
                    }
                    return null;
                }
            }
            a(str, z3);
            Thread.sleep(1000L);
            qt.a = String.valueOf(qt.a) + qt.a(a2);
            la.a(qt.a);
            ar.a = true;
            la.c("Show error alert");
            i.a(i.c().setCustomTitle(Tools.d((int) R.string.daemon_failed)).setMessage(String.valueOf(qk.a((int) R.string.failed_run_daemon)) + "\n\n" + qt.a).setPositiveButton(qk.a((int) R.string.exit), new ib(400)).setNeutralButton("SU", new fl(this)).setNegativeButton(qk.a((int) R.string.skip), (DialogInterface.OnClickListener) null));
            return null;
        } catch (go e) {
            throw e;
        } catch (Exception e2) {
            la.c(e2.getMessage(), e2);
            Tools.b(e2.getMessage());
            return null;
        }
    }

    public boolean c() {
        Process process;
        Integer num;
        String str;
        String outOfMemoryError;
        gq gqVar = g;
        if (gqVar != null && (process = gqVar.a) != null) {
            try {
                num = Integer.valueOf(process.exitValue());
            } catch (IllegalThreadStateException e) {
                num = null;
            }
            if (num == null && C == null && k == null) {
                return true;
            }
            if (!ar.a && !lh.b) {
                if (num == null || (!(num.intValue() == 9 || num.intValue() == 15 || num.intValue() == 137) || Config.h == 0)) {
                    str = null;
                } else {
                    Config.a((int) R.id.config_ram).d = 0;
                    Config.c();
                    str = "Found SIGKILL/SIGTERM/SIGKILL_OOM: " + num;
                }
                if (str != null) {
                    la.c(str);
                    rx.a(new gg(this));
                }
                StringBuilder sb = new StringBuilder();
                int a2 = Tools.a(process);
                sb.append('\n');
                sb.append(this.j);
                sb.append(" ( ");
                sb.append(Process.myPid());
                sb.append(" / ");
                sb.append(a2);
                sb.append(" / ");
                sb.append(this.h);
                sb.append(" )\n");
                sb.append(num);
                sb.append(" / ");
                sb.append(C);
                sb.append(" / ");
                sb.append(k);
                sb.append('\n');
                sb.append(MainService.instance.ad / 1024);
                sb.append(" / ");
                sb.append(Tools.n());
                sb.append(" / ");
                sb.append(MainService.instance.ac / 1024);
                sb.append('\n');
                String a3 = eu.a();
                sb.append(a3);
                sb.append('\n');
                sb.append(ir.a(a3, "S$H$A$-$3$8$4".replace("$", "")));
                sb.append('\n');
                File file = new File(a3);
                sb.append(file.length());
                sb.append('\n');
                sb.append(ir.a(file, "S#H#A#-#3#8#4".replace("#", "")));
                if (num != null) {
                    sb.append("\nOutput:\n");
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(gqVar.d));
                    while (true) {
                        try {
                            try {
                                String readLine = bufferedReader.readLine();
                                if (readLine == null) {
                                    break;
                                }
                                try {
                                    sb.append(readLine);
                                    sb.append('\n');
                                } catch (OutOfMemoryError e2) {
                                    la.b("Failed get err for daemon exit", e2);
                                    sb.append(e2);
                                    sb.append('\n');
                                }
                            } catch (IOException e3) {
                                la.c("checkProcess", e3);
                            }
                        } catch (OutOfMemoryError e4) {
                            la.b("Failed get err for daemon exit", e4);
                            sb.append(e4);
                            sb.append('\n');
                        }
                    }
                }
                sb.append("\nDEBUG:\n");
                sb.append(gs.a(false));
                try {
                    outOfMemoryError = sb.toString();
                } catch (OutOfMemoryError e5) {
                    la.b("Failed get string for daemon exit", e5);
                    outOfMemoryError = e5.toString();
                }
                try {
                    la.c("Daemon closed" + outOfMemoryError);
                } catch (OutOfMemoryError e6) {
                    la.b("Failed out string for daemon exit", e6);
                }
                if (!ho.a(outOfMemoryError) && str == null) {
                    try {
                        if (outOfMemoryError.contains("backtrace:") && outOfMemoryError.contains(this.j) && !outOfMemoryError.contains("SIGPIPE")) {
                            ho.b(outOfMemoryError);
                        }
                    } catch (OutOfMemoryError e7) {
                        la.b("Failed send string for daemon exit", e7);
                    }
                }
                try {
                    outOfMemoryError = String.valueOf(qk.a((int) R.string.daemon_unexpected_closed)) + '\n' + outOfMemoryError;
                } catch (OutOfMemoryError e8) {
                    la.b("Failed out string for daemon exit", e8);
                }
                ar.a = true;
                la.c("Show error alert");
                i.a(i.c().setCustomTitle(Tools.d((int) R.string.daemon_exited)).setMessage(outOfMemoryError).setPositiveButton(qk.a((int) R.string.exit), new ib(500)).setNegativeButton(qk.a((int) R.string.skip), (DialogInterface.OnClickListener) null));
                this.e.b(false);
                MainService.instance.G();
                if (num != null && (num.intValue() == 9 || num.intValue() == 15 || num.intValue() == 137)) {
                    i.a(i.c().setCustomTitle(Tools.d((int) R.string.daemon_exited)).setMessage(qk.a(num.intValue() == 137 ? R.string.daemon_killed_oom : R.string.daemon_killed)).setNegativeButton(qk.a((int) R.string.ok), (DialogInterface.OnClickListener) null));
                }
            }
            return false;
        }
        return false;
    }

    public void d() {
        la.a("messageFailed");
        c();
        MainService.instance.T();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(byte[] bArr) {
        int i;
        TimersEditor timersEditor;
        byte b2 = 0;
        try {
            bk bkVar = new bk(bArr);
            byte a2 = bkVar.a();
            try {
                byte a3 = bkVar.a();
                switch (a2) {
                    case 16:
                        MainService.instance.a(bkVar);
                        return;
                    case 17:
                        long c2 = bkVar.c();
                        long c3 = bkVar.c();
                        int b3 = bkVar.b();
                        if (b3 == 0 && this.o > 0 && a3 == 0) {
                            a(a3, 0L, MainService.a() & 127, 536870912, this.o, this.q, this.r, this.s);
                            return;
                        }
                        MainService.instance.a(a3, c2, c3, b3);
                        if (b3 == 0) {
                            MainService.instance.a(a3, (String) null);
                            return;
                        }
                        return;
                    case 18:
                        l();
                        MainService.instance.Q();
                        return;
                    case 19:
                        l();
                        MainService.instance.f(bkVar.b());
                        return;
                    case 20:
                    default:
                        la.b("Unknown message: " + ((int) a2) + ", size: " + bArr.length);
                        return;
                    case 21:
                        MainService.instance.a(null, bkVar.c(), bkVar.c(), -1, -1, bkVar.c());
                        B();
                        return;
                    case 22:
                        MainService.instance.an.a(bkVar);
                        if (a3 != 0) {
                            Script.a(bkVar);
                            MainService.instance.a(a3, (String) null);
                            return;
                        }
                        return;
                    case 23:
                        g gVar = MainService.instance.ao;
                        new h();
                        boolean z = false;
                        while (true) {
                            int b4 = bkVar.b();
                            if (b4 != 0) {
                                long c4 = bkVar.c();
                                long d = bkVar.d();
                                if ((16777216 & b4) == 0 && gVar.a(c4, b4, d)) {
                                    z = true;
                                }
                            } else if (z) {
                                MainService.instance.L();
                                return;
                            } else {
                                return;
                            }
                        }
                        break;
                    case 24:
                        qf.a(bkVar);
                        return;
                    case 25:
                        ty.a(bkVar, Config.vSpaceReal && !Config.C);
                        return;
                    case 26:
                        MainService.instance.b(bkVar.b(), bkVar.b());
                        return;
                    case 27:
                        MainService.instance.b(bkVar);
                        return;
                    case 28:
                        int b5 = bkVar.b();
                        int a4 = bkVar.a();
                        int[] iArr = a4 > 0 ? new int[a4] : null;
                        for (int i2 = 0; i2 < a4; i2++) {
                            iArr[i2] = bkVar.b();
                        }
                        MainService.instance.a(a3, b5, iArr);
                        if (b5 == 7) {
                            A();
                            return;
                        }
                        return;
                    case 29:
                        RegionList.a(bkVar);
                        return;
                    case 30:
                        if (bkVar.b() == 1) {
                            i = 19;
                            timersEditor = MainService.instance.ag;
                        } else {
                            i = 44;
                            timersEditor = MainService.instance.ae;
                        }
                        int i3 = i * 4;
                        boolean[] zArr = new boolean[i3];
                        for (int i4 = 0; i4 < i3; i4++) {
                            zArr[i4] = bkVar.a() != 0;
                        }
                        timersEditor.a(zArr);
                        MainService.instance.a(a3, (String) null);
                        return;
                    case 31:
                        long c5 = bkVar.c();
                        if (a3 != 0) {
                            Script.a(c5);
                            MainService.instance.a(a3, (String) null);
                            return;
                        }
                        MainService.instance.a(c5);
                        return;
                }
            } catch (BufferUnderflowException e) {
                e = e;
                b2 = a2;
                la.c("Failed process message: " + ((int) b2) + ", size: " + bArr.length, e);
            }
        } catch (BufferUnderflowException e2) {
            e = e2;
        }
    }

    public void a(byte b2, int i, int i2, int i3, long j, long j2, long j3, int i4, long j4, int i5, int i6, int i7, double d, int i8) {
        rx.d(new gh(this, b2, i, i2, i3, j, j2, j3, i4, j4, i5, i6, i7, d, i8));
    }

    public void a(int[] iArr, long[] jArr) {
        a((byte) 0, iArr, jArr);
    }

    public void a(byte b2, int[] iArr, long[] jArr) {
        if (iArr.length != jArr.length) {
            throw new RuntimeException("Size mismatch: " + iArr.length + " != " + jArr.length);
        }
        rx.d(new gi(this, iArr, b2, jArr));
    }

    public long a(long j, int i) {
        return a((byte) 0, j, i);
    }

    public long a(byte b2, long j, int i) {
        bk bkVar;
        if (this.e.g()) {
            rx.d(new gj(this, b2, j, i));
            Exchanger exchanger = this.f;
            while (true) {
                try {
                    bkVar = new bk((byte[]) exchanger.exchange(null, 500L, TimeUnit.MILLISECONDS));
                    bkVar.a(3);
                } catch (InterruptedException e) {
                } catch (TimeoutException e2) {
                    return -1L;
                } catch (Throwable th) {
                    la.c("getMemoryContent failed", th);
                    return -1L;
                }
                if (bkVar.c() == j) {
                    bkVar.a(4);
                    return bkVar.d();
                }
                continue;
            }
        } else {
            return -1L;
        }
    }

    public void a(int i, String str, String str2) {
        a((byte) 0, i, str, str2);
    }

    public void a(byte b2, int i, String str, String str2) {
        rx.d(new gk(this, str, str2, b2, i));
        l(b2);
    }

    public void c(String str) {
        a((byte) 0, str);
    }

    public void a(byte b2, String str) {
        byte[] bytes = str.getBytes();
        if (bytes.length != 0) {
            if (bytes.length > 4000) {
                la.c("path big: " + bytes.length + " > 4000");
            } else {
                rx.d(new gl(this, bytes, b2));
            }
        }
    }

    public void b(long j, int i) {
        b((byte) 0, j, i);
    }

    public void b(byte b2, long j, int i) {
        rx.d(new fb(this, b2, i, j));
    }

    public void a(long j, long j2, int i, String str, String str2) {
        a((byte) 0, j, j2, i, str, str2);
    }

    public void a(byte b2, long j, long j2, int i, String str, String str2) {
        String str3;
        if (str.contains("/emulated/legacy")) {
            str3 = String.valueOf(str) + '|' + str.replace("/emulated/legacy", "/emulated/0");
        } else {
            str3 = str.contains("/emulated/0") ? String.valueOf(str) + '|' + str.replace("/emulated/0", "/emulated/legacy") : str;
        }
        byte[] bytes = str3.getBytes();
        if (bytes.length != 0) {
            if (bytes.length > 4000) {
                la.c("path big: " + bytes.length + " > 4000");
                return;
            }
            byte[] bytes2 = str2.getBytes();
            if (bytes2.length > 4000) {
                la.c("pkg big: " + bytes2.length + " > 4000");
            } else {
                rx.d(new fc(this, bytes, bytes2, b2, j, j2, i, str));
            }
        }
    }

    public void a(long j, long j2, int i) {
        a((byte) 0, j, j2, i);
    }

    public void a(byte b2, long j, long j2, int i) {
        rx.d(new fd(this, b2, j, j2, i));
    }

    public void e() {
        b((byte) 0, (byte) 51);
    }

    public void f() {
        a((byte) 0);
    }

    public void a(byte b2) {
        b(b2, (byte) 49);
    }

    public void a(int i, long j, long j2, double d, double d2) {
        a((byte) 0, i, j, j2, d, d2);
    }

    private void z() {
        MainService.instance.i();
        MainService.instance.j();
    }

    private boolean[] c(int i) {
        return (i == 1 ? MainService.instance.ag : MainService.instance.ae).c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(boolean[] zArr) {
        InOut inOut = this.e;
        for (boolean z : zArr) {
            inOut.a((byte) (z ? 1 : 0));
        }
    }

    public void a(byte b2, int i, long j, long j2, double d, double d2) {
        z();
        rx.d(new fe(this, b2, i, c(1), j, j2, d, d2));
    }

    public void a(long j) {
        a((byte) 0, j);
    }

    public void a(byte b2, long j) {
        this.x += j;
        b(b2);
    }

    public void b(byte b2) {
        a(b2, this.v, this.w);
    }

    public double g() {
        return this.v / this.w;
    }

    public void a(byte b2, int i, int i2) {
        z();
        boolean[] c2 = c(0);
        long j = this.x;
        this.v = i;
        this.w = i2;
        rx.d(new ff(this, b2, c2, i, i2, j));
        this.x = 0L;
    }

    public void a(int i) {
        a((byte) 0, i);
    }

    public void a(byte b2, int i) {
        z();
        rx.d(new fg(this, b2, i, c(i)));
    }

    public void b(int i) {
        b((byte) 0, i);
    }

    public void b(byte b2, int i) {
        z();
        rx.d(new fh(this, b2, i, c(i)));
    }

    public void h() {
        c((byte) 0);
    }

    public void c(byte b2) {
        b(b2, (byte) 56);
    }

    public void i() {
        d((byte) 0);
    }

    public void d(byte b2) {
        b(b2, (byte) 60);
    }

    public void j() {
        e((byte) 0);
    }

    public void e(byte b2) {
        b(b2, (byte) 57);
    }

    public void k() {
        f((byte) 0);
    }

    public void f(byte b2) {
        b(b2, (byte) 58);
    }

    public void c(long j, int i) {
        c((byte) 0, j, i);
    }

    public void c(byte b2, long j, int i) {
        rx.d(new fi(this, b2, j, i));
    }

    public void a(byte b2, int i, int i2, int[] iArr, long[] jArr, long[] jArr2, long j, long j2, long j3) {
        boolean z = (4194304 & i) != 0;
        if (z && i2 != jArr.length) {
            z = false;
        }
        if (z) {
            int length = iArr.length;
            int i3 = 0;
            while (true) {
                if (i3 < length) {
                    if (((iArr[i3] | i) & (-4194306)) == 0) {
                        i3++;
                    } else {
                        z = false;
                        break;
                    }
                } else {
                    break;
                }
            }
        }
        if (z) {
            int length2 = jArr.length;
            byte[] bArr = new byte[length2];
            for (int i4 = 0; i4 < length2; i4++) {
                bArr[i4] = (byte) jArr[i4];
            }
            a(b2, 1, bArr, j, j2, j3);
            return;
        }
        rx.d(new fj(this, iArr, b2, i, i2, j, j2, j3, jArr, jArr2));
        ra.a = null;
    }

    public void a(byte b2, long j, long j2, int i, int i2, long j3, long j4, long j5) {
        CharSequence charSequence = null;
        android.fix.j b3 = d.b();
        if ((33554432 & i2) != 0) {
            i2 &= -33554433;
        }
        for (int i3 = 0; i3 < b3.size(); i3++) {
            int keyAt = b3.keyAt(i3);
            if (keyAt != 0 && (i2 & keyAt) == keyAt) {
                charSequence = (CharSequence) b3.valueAt(i3);
            }
        }
        d dVar = new d(0L, j, i2 & 127);
        d dVar2 = new d(0L, j2, i2 & 127);
        bp bpVar = new bp();
        CharSequence[] charSequenceArr = new CharSequence[3];
        charSequenceArr[0] = qk.a((int) R.string.value);
        charSequenceArr[1] = charSequence;
        Object[] objArr = new Object[4];
        objArr[0] = dVar.h();
        objArr[1] = dVar2.h();
        objArr[2] = i == 0 ? "" : " X" + i;
        objArr[3] = dVar.n();
        charSequenceArr[2] = Tools.a((CharSequence) Tools.a("%s ~ %s%s %s", objArr), dVar.o());
        bpVar.a("%s %s %s", charSequenceArr);
        MainService.instance.a(bpVar.a());
        b(b2, j, j2, i, i2 | 8388608, j3, j4, j5);
    }

    public void a(byte b2, long j, int i, int i2, long j2, long j3, long j4) {
        CharSequence charSequence = null;
        android.fix.j b3 = d.b();
        if ((33554432 & i2) != 0) {
            charSequence = new StringBuilder().append(b3.get(536870912)).append('*').toString();
        } else {
            for (int i3 = 0; i3 < b3.size(); i3++) {
                int keyAt = b3.keyAt(i3);
                if (keyAt != 0 && (i2 & keyAt) == keyAt) {
                    charSequence = (CharSequence) b3.valueAt(i3);
                }
            }
        }
        d dVar = new d(0L, j, i2 & 127);
        bp bpVar = new bp();
        CharSequence[] charSequenceArr = new CharSequence[3];
        charSequenceArr[0] = qk.a((int) R.string.value);
        charSequenceArr[1] = charSequence;
        Object[] objArr = new Object[3];
        objArr[0] = dVar.h();
        objArr[1] = i == 0 ? "" : " X" + i;
        objArr[2] = dVar.n();
        charSequenceArr[2] = Tools.a((CharSequence) Tools.a("%s%s %s", objArr), dVar.o());
        bpVar.a("%s %s %s", charSequenceArr);
        MainService.instance.a(bpVar.a());
        b(b2, j, 0L, i, i2, j2, j3, j4);
    }

    public void a(byte b2, long j, long j2, int i, long j3, long j4, long j5) {
        la.a("searchMask: " + Long.toHexString(j) + ':' + Long.toHexString(j2) + " as " + Integer.toHexString(i) + " in " + Long.toHexString(j3) + '-' + Long.toHexString(j4) + ", " + Long.toString(j5));
        CharSequence charSequence = null;
        android.fix.j b3 = d.b();
        for (int i2 = 0; i2 < b3.size(); i2++) {
            int keyAt = b3.keyAt(i2);
            if (keyAt != 0 && (i & keyAt) == keyAt) {
                charSequence = (CharSequence) b3.valueAt(i2);
            }
        }
        String upperCase = Long.toHexString(j).toUpperCase(Locale.US);
        String upperCase2 = Long.toHexString(j2).toUpperCase(Locale.US);
        if (upperCase.length() < upperCase2.length()) {
            upperCase = String.valueOf(new String(new char[upperCase2.length() - upperCase.length()]).replace((char) 0, '0')) + upperCase;
        } else if (upperCase.length() > upperCase2.length()) {
            upperCase2 = String.valueOf(new String(new char[upperCase.length() - upperCase2.length()]).replace((char) 0, '0')) + upperCase2;
        }
        MainService.instance.a(new bp().a("%s %s %s; %s: %s; %s: %s", Tools.c((int) R.string.address), charSequence, upperCase, Tools.c((int) R.string.mask), upperCase2, Tools.c((int) R.string.type), d.i(i & 127)).a());
        rx.d(new fk(this, b2, j, j2, i, j3, j4, j5));
        ra.a = null;
    }

    public void a(byte b2, short s, int i, long j, long j2, long j3) {
        String hexString = Integer.toHexString(s);
        la.a("searchPointer: " + hexString + " as " + Integer.toHexString(i) + " in " + Long.toHexString(j) + '-' + Long.toHexString(j2) + ", " + Long.toString(j3));
        MainService.instance.a((CharSequence) ("-> " + hexString));
        rx.d(new fm(this, b2, s, i, j, j2, j3));
        ra.a = null;
    }

    public void a(byte b2, int i, byte[] bArr, long j, long j2, long j3) {
        String sb = iu.a(null, i, bArr, bArr.length, true, true, null).toString();
        if (sb.length() > 48) {
            sb = String.valueOf(sb.substring(0, 48)) + "...";
        }
        la.a("searchText: [" + bArr.length + "] = " + sb + " in " + Long.toHexString(j) + '-' + Long.toHexString(j2) + ", " + Long.toString(j3));
        if (bArr.length != 0) {
            if (bArr.length == 1) {
                a(b2, bArr[0], 0, 536870913, j, j2, j3);
                return;
            }
            MainService.instance.a((CharSequence) Tools.a("%s[%d] = %s", Tools.c((int) R.string.text), Integer.valueOf(bArr.length), sb));
            rx.d(new fn(this, b2, i, j, j2, j3, bArr));
            ra.a = null;
        }
    }

    private void b(byte b2, long j, long j2, int i, long j3, long j4, long j5) {
        b(b2, j, j2, 0, i, j3, j4, j5);
    }

    private void b(byte b2, long j, long j2, int i, int i2, long j3, long j4, long j5) {
        long c2 = d.c(j, i2);
        long c3 = d.c(j2, i2);
        la.a("sendSearchNumber: " + c2 + "; " + c3 + " x" + i + " as " + Integer.toHexString(i2) + " in " + Long.toHexString(j3) + '-' + Long.toHexString(j4) + ", " + Long.toString(j5));
        rx.d(new fo(this, b2, c2, c3, i, i2, j3, j4, j5));
        ra.a = null;
    }

    public void a(byte b2, int i, long j, long j2, long j3) {
        MainService.instance.a(new bp().a("%s %s", qk.a((int) R.string.search_unknown_value), d.i(i & 127)).a());
        b(b2, 0L, 0L, i | Integer.MIN_VALUE, j, j2, j3);
    }

    public void l() {
        this.o = 0;
        this.p = 0;
    }

    public void a(long j, long j2, int i, int i2, int i3, long j3, long j4, long j5) {
        a((byte) 0, j, j2, i, i2, i3, j3, j4, j5);
    }

    public void a(byte b2, long j, long j2, int i, int i2, int i3, long j3, long j4, long j5) {
        String a2;
        String str;
        String str2;
        String replace;
        int i4 = i & 127;
        CharSequence i5 = d.i(i4);
        boolean z = false;
        boolean z2 = (8388608 & i) != 0;
        boolean z3 = !z2 && j == 0;
        String a3 = z2 ? String.valueOf(a2) + '~' + d.a(0L, j2, i4) : d.a(0L, j, i4);
        switch (i2) {
            case 67108864:
                str = "N > O+D";
                if (!z3) {
                    str2 = "N > O+D";
                    break;
                } else {
                    str2 = qk.a((int) R.string.fuzzy_larger);
                    break;
                }
            case 134217728:
                str = "N < O+D";
                if (!z3) {
                    str2 = "N < O+D";
                    break;
                } else {
                    str2 = qk.a((int) R.string.fuzzy_smaller);
                    break;
                }
            case 268435456:
                str = "N ≠ O+D";
                if (!z3) {
                    str2 = "N ≠ O+D";
                    break;
                } else {
                    str2 = qk.a((int) R.string.fuzzy_inequal);
                    break;
                }
            default:
                if (this.p == 0) {
                    this.p = i3;
                }
                this.o = i3 - 1;
                this.q = j3;
                this.r = j4;
                this.s = j5;
                z = true;
                str = "N = O+D";
                if (!z3) {
                    str2 = "N = O+D";
                    break;
                } else {
                    str2 = qk.a((int) R.string.fuzzy_equal);
                    break;
                }
        }
        if (z3) {
            replace = String.valueOf(str2) + " (" + str.replace("+D", "") + ')';
        } else {
            replace = str2.replace("+D", " + (" + a3 + ')');
        }
        CharSequence a4 = new bp().a("%s %s", replace, i5).a();
        if (z) {
            MainService.instance.a(a4, -1L, 1L, this.p - this.o, this.p, 0L);
        } else {
            MainService.instance.a(a4);
        }
        b(b2, j, j2, Integer.MIN_VALUE | i | i2, j3, j4, j5);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [android.ext.gn] */
    public void a(d dVar, int i) {
        if (i != 0) {
            dVar = new gn(dVar, i);
        }
        synchronized (this.y) {
            this.y.add(dVar);
        }
    }

    private int o(byte b2) {
        Object[] array;
        ArrayList arrayList = this.y;
        synchronized (arrayList) {
            array = arrayList.toArray(new Object[arrayList.size()]);
            arrayList.clear();
            arrayList.trimToSize();
        }
        int length = array.length;
        if (length != 0) {
            rx.d(new fp(this, array, b2));
        }
        return length;
    }

    public void a(qx qxVar) {
        synchronized (this.z) {
            this.z.add(qxVar);
        }
    }

    private int p(byte b2) {
        qx[] qxVarArr;
        ArrayList arrayList = this.z;
        synchronized (arrayList) {
            qxVarArr = (qx[]) arrayList.toArray(new qx[arrayList.size()]);
            arrayList.clear();
            arrayList.trimToSize();
        }
        int length = qxVarArr.length;
        if (length != 0) {
            rx.d(new fq(this, qxVarArr, b2));
            if ((Config.A & 128) != 0 && !c) {
                c = true;
                rx.a(new fr(this));
            }
        }
        return length;
    }

    public void b(qx qxVar) {
        synchronized (this.A) {
            this.A.add(qxVar);
        }
    }

    private int q(byte b2) {
        qx[] qxVarArr;
        ArrayList arrayList = this.A;
        synchronized (arrayList) {
            qxVarArr = (qx[]) arrayList.toArray(new qx[arrayList.size()]);
            arrayList.clear();
            arrayList.trimToSize();
        }
        int length = qxVarArr.length;
        if (length != 0) {
            rx.d(new ft(this, qxVarArr, b2));
        }
        return length;
    }

    public void m() {
        g((byte) 0);
    }

    public void g(byte b2) {
        if (o(b2) + p(b2) + q(b2) > 0) {
            MainService.instance.y();
        }
    }

    public void n() {
        this.n = true;
        B();
    }

    private void A() {
        this.n = false;
    }

    public int o() {
        return this.h;
    }

    public int p() {
        return this.i;
    }

    private void B() {
        if (this.n && this.h > 0) {
            File file = new File(Tools.l(), "stop.tmp");
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                fileOutputStream.write(ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN).putInt(this.h).array());
                fileOutputStream.close();
                if (!file.renameTo(new File(Tools.l(), "stop"))) {
                    la.b("Failed rename stop file: " + file, new RuntimeException());
                    this.n = false;
                    file.delete();
                }
            } catch (IOException e) {
                la.b("Failed make stop file: " + file, e);
                this.n = false;
            }
        }
    }

    public void q() {
        this.e.b();
        if (this.h > 0) {
            File file = new File(Tools.l(), "OOM.tmp");
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                fileOutputStream.write(ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN).putInt(this.h).array());
                fileOutputStream.close();
                if (!file.renameTo(new File(Tools.l(), "OOM"))) {
                    la.b("Failed rename OOM file: " + file, new RuntimeException());
                    file.delete();
                }
            } catch (IOException e) {
                la.b("Failed make OOM file: " + file, e);
            }
        }
    }

    public void h(byte b2) {
        b(b2, (byte) 44);
        ra.a = null;
    }

    public void r() {
        i((byte) 0);
    }

    public void i(byte b2) {
        b(b2, (byte) 46);
    }

    public void s() {
        j((byte) 0);
    }

    public void j(byte b2) {
        this.v = 1;
        this.w = 1;
        this.x = 0L;
        uf.a();
        this.e.b();
        b(b2, (byte) 42);
        ra.a = null;
    }

    public void a(byte b2, List list) {
        gm b3 = b(list);
        if (b3.a.length != 0) {
            if (b3.c == 0) {
                h(b2);
                return;
            }
            rx.d(new fu(this, b3, b2));
            MainService.a(b3.c, (int) b2);
            ra.a = null;
        }
    }

    public void a(List list) {
        b((byte) 0, list);
    }

    public void b(byte b2, List list) {
        gm b3 = b(list);
        if (b3.a.length != 0) {
            rx.d(new fv(this, b3, b2));
        }
    }

    gm b(List list) {
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i = 0; i < size; i++) {
            d dVar = (d) list.get(i);
            if (dVar != null) {
                arrayList.add(new gp(dVar.b, dVar.d));
            }
        }
        gp[] gpVarArr = (gp[]) arrayList.toArray(new gp[arrayList.size()]);
        Arrays.sort(gpVarArr);
        ArrayList arrayList2 = new ArrayList(gpVarArr.length);
        gp gpVar = null;
        for (gp gpVar2 : gpVarArr) {
            if (gpVar2 != null) {
                if (gpVar == null || gpVar.a != gpVar2.a) {
                    arrayList2.add(gpVar2);
                    gpVar = gpVar2;
                } else {
                    gpVar.b = gpVar2.b | gpVar.b;
                }
            }
        }
        int size2 = arrayList2.size();
        long[] jArr = new long[size2];
        int[] iArr = new int[size2];
        int i2 = 0;
        int i3 = 0;
        while (i2 < size2) {
            gp gpVar3 = (gp) arrayList2.get(i2);
            jArr[i2] = gpVar3.a;
            iArr[i2] = gpVar3.b;
            i2++;
            i3 |= gpVar3.b;
        }
        gm gmVar = new gm(jArr, iArr);
        gmVar.c = i3 & 127;
        return gmVar;
    }

    public void k(byte b2) {
        a((byte) 0, b2);
    }

    public void a(byte b2, byte b3) {
        rx.d(new fw(this, b2, b3));
    }

    public void t() {
        l((byte) 0);
    }

    public void l(byte b2) {
        if (this.B == null || Config.h != this.B.intValue()) {
            if (this.B != null) {
                MainService.instance.h();
            }
            this.B = Integer.valueOf(Config.h);
        }
        String absolutePath = Tools.l().getAbsolutePath();
        rx.d(new fy(this, b2, absolutePath.getBytes(), absolutePath));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void m(byte b2) {
        rx.d(new fz(this, b2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(byte b2, byte b3) {
        rx.d(new ga(this, b2, b3));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void u() {
        InOut inOut = this.e;
        if (C != null) {
            la.c("Last send error: " + C);
            inOut.e();
            return;
        }
        try {
            inOut.c();
            C = null;
        } catch (Throwable th) {
            inOut.e();
            la.c("Send error", th);
            C = th.toString();
            rx.a().post(new gb(this));
        }
    }

    void a(String str, boolean z) {
        int i;
        File file = new File(str);
        if (!file.exists()) {
            i = R.string.file_not_found;
        } else if (!file.isFile()) {
            i = R.string.not_file;
        } else {
            String[] strArr = {"ls", "-l", Tools.n(str)};
            try {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(Tools.a(strArr).getInputStream()));
                la.b("ls for '" + str + "' got: " + bufferedReader.readLine());
                bufferedReader.close();
            } catch (Exception e) {
                la.c("run '" + Arrays.toString(strArr) + "' error", e);
            }
            i = !file.canExecute() ? R.string.not_execute : 0;
        }
        if (i != 0) {
            throw new go(String.valueOf(Tools.c(i)) + ": '" + str + "'\n\n" + qk.a((int) R.string.check_install) + (i == R.string.not_execute ? "\n\n" + qk.a((int) R.string.sdcard_install) : ""));
        }
    }

    public void v() {
        new gc(this, "DaemonLoader").start();
    }

    public void w() {
        n((byte) 0);
    }

    public void n(byte b2) {
        rx.d(new gf(this, b2));
        try {
            Thread.sleep(3L);
        } catch (InterruptedException e) {
        }
    }

    public CharSequence x() {
        String str;
        if (this.e.g()) {
            return Config.C ? Tools.a((CharSequence) "$", Tools.e((int) R.color.daemon_user)) : Config.vSpaceReal ? Tools.a((CharSequence) "@", Tools.e((int) R.color.daemon_vroot)) : Tools.a((CharSequence) "#", Tools.e((int) R.color.daemon_root));
        }
        gq gqVar = this.d;
        if (gqVar != null && gqVar.a != null) {
            return Tools.a((CharSequence) (Config.C ? "V" : Config.vSpaceReal ? "U" : "W"), Tools.e((int) R.color.daemon_wait));
        }
        if (Config.C) {
            str = "!";
        } else {
            str = Config.vSpaceReal ? "I" : "?";
        }
        return Tools.a((CharSequence) str, Tools.e((int) R.color.daemon_bad));
    }

    public boolean y() {
        boolean z = (a || this.e.g()) ? false : true;
        if (z) {
            i.a(i.c().setCustomTitle(Tools.d((int) R.string.daemon_fail)).setMessage(qk.a((int) R.string.wait_daemon)).setNegativeButton(qk.a((int) R.string.ok), (DialogInterface.OnClickListener) null));
        }
        return !z;
    }
}
