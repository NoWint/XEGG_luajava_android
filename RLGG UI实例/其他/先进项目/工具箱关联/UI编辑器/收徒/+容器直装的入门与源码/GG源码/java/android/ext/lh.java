package android.ext;

import android.app.AlertDialog;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Process;
import android.util.DisplayMetrics;
import android.view.ViewGroup;
import catch_.me_.if_.you_.can_.AnalyticsService;
import catch_.me_.if_.you_.can_.Instrumentation;
import catch_.me_.if_.you_.can_.R;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;

/* compiled from: src */
/* loaded from: classes.dex */
public class lh {
    public static volatile Boolean a = null;
    public static volatile boolean b = false;
    static volatile int c = 0;
    static volatile boolean d = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(int i, String str) {
        la.a("main " + i + ':' + Process.myUid() + ": " + bi.a() + ' ' + (ar.d == null ? null : Boolean.valueOf(ar.d.g)) + ' ' + bi.b + ' ' + bj.a + ' ' + str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(byte b2) {
        File file = new File(Tools.l(), "instr.check");
        int i = (int) (((16245.4f * 1) - 103.4f) + 0.5f);
        if (b2 == 0) {
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                fileOutputStream.write(Integer.toString(i).getBytes());
                fileOutputStream.close();
            } catch (Throwable th) {
                la.c("Fail set instr file", th);
            }
        } else if (b2 == 1) {
            if (!file.exists()) {
                la.c("No instr file: " + file);
            }
            file.delete();
        } else if (file.exists()) {
            try {
                FileInputStream fileInputStream = new FileInputStream(file);
                byte[] bArr = new byte[12];
                int read = fileInputStream.read(bArr);
                if ((read > 0 ? Integer.parseInt(new String(bArr, 0, read)) : 0) == i && Config.z == 0) {
                    Config.a((int) R.id.config_context_source).d = 1;
                    Config.c();
                }
                fileInputStream.close();
            } catch (Throwable th2) {
                la.c("Fail get instr file", th2);
            }
            file.delete();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a() {
        ar.d.a(1);
        jp.c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b() {
        li liVar = new li();
        i.a(i.a(ar.f).setTitle(qk.a((int) R.string.install_mode)).setCancelable(false).setItems(new String[]{qk.a((int) R.string.default_mark), qk.a((int) R.string.for32), qk.a((int) R.string.for64)}, new lv(liVar)).create(), liVar, false);
    }

    public static void c() {
        rx.a(new lw());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void d() {
        Context context;
        Context baseContext;
        try {
            switch (Config.z) {
                case 2:
                    context = ar.d.createPackageContext(ar.d.getPackageName(), 3);
                    break;
                case 3:
                    context = ar.e;
                    break;
                case 4:
                    baseContext = ar.d.getBaseContext();
                    context = baseContext;
                    break;
                default:
                    baseContext = null;
                    context = baseContext;
                    break;
            }
        } catch (Throwable th) {
            la.a(th);
            context = null;
        }
        la.a("setContext: " + Config.z + ' ' + context);
        if (context != null) {
            try {
                ((android.fix.i) android.fix.k.a(android.fix.i.from(context))).inflate(R.layout.service_dialog, (ViewGroup) null);
            } catch (Throwable th2) {
                la.b("Failed use context: " + context, th2);
                context = null;
            }
        }
        if (context != null) {
            Tools.e(context);
            MainService.context = ri.a(context);
            e();
            i();
            return;
        }
        bj.d = true;
        if (!h()) {
            Tools.b(String.valueOf(Tools.c((int) R.string.could_not_use)) + ": " + qk.a((int) R.string.service));
            ar.d.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void e() {
        if (Config.z != 1) {
            if ((Config.B & 256) != 0) {
                h();
            } else {
                v();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static DialogInterface.OnClickListener a(long j) {
        return new ly(j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void f() {
        if (Tools.e("com.chaozhuo.permission.controller") && (Config.c & 4) == 0) {
            rx.a(a(ar.f, String.valueOf(qk.a((int) R.string.need_allow_background)) + "\n\n" + Tools.removeNewLinesChars("kwws=22jdphjxdugldq1qhw2iruxp2jdoohu|2lpdjh25<70krz0wr0uxq0lq0skrhql{rv0jdphjxdugldq2"), 4L, true));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Runnable a(Context context, String str, long j, boolean z) {
        return new lz(context, str, j);
    }

    private static void r() {
        new gr(new ma(), "checkRandomName").start();
    }

    private static void s() {
        if ((Config.c & 128) == 0) {
            try {
                String a2 = Tools.a("%e", Float.valueOf(1.2E34f));
                if (a2.indexOf(101) == -1 && a2.indexOf(69) == -1 && a2.indexOf(1077) == -1 && a2.indexOf(1045) == -1) {
                    rx.a(a(ar.f, Tools.a(qk.a((int) R.string.wrong_float_), Float.toString(1.2E34f), a2), 128L, false));
                }
            } catch (Throwable th) {
                la.a(th);
            }
        }
    }

    private static void t() {
        new gr(new mb(), "checkSlowEmulator").start();
    }

    private static void u() {
        new gr(new mc(), "checkBadApps").start();
    }

    public static boolean g() {
        return a((Context) null, (DialogInterface.OnDismissListener) null);
    }

    public static boolean a(Context context, DialogInterface.OnDismissListener onDismissListener) {
        if (Config.C) {
            if (context == null) {
                context = Tools.e();
            }
            AlertDialog create = i.a(context).setMessage(qk.a((int) R.string.need_root_mode)).setNegativeButton(qk.a((int) R.string.ok), (DialogInterface.OnClickListener) null).create();
            if (onDismissListener != null) {
                i.a(create, onDismissListener);
            }
            i.c(create);
            return false;
        }
        return true;
    }

    static boolean h() {
        bj.b = true;
        try {
            ComponentName startService = ar.f.startService(new Intent().setClassName(Tools.g(), AnalyticsService.class.getName()));
            r0 = startService != null;
            a(10, startService == null ? null : String.valueOf(startService.toString()) + ' ' + startService.toShortString());
        } catch (Throwable th) {
            la.c("Failed load Service", th);
        }
        return r0;
    }

    private static boolean v() {
        boolean z = false;
        try {
            Context e = Tools.e();
            if (e != null) {
                z = e.stopService(new Intent().setClassName(Tools.g(), AnalyticsService.class.getName()));
                a(100, " " + z);
            } else {
                a(101, "");
            }
        } catch (Throwable th) {
            la.c("Failed unload Service", th);
        }
        return z;
    }

    public static void i() {
        ar.d.a(2);
        if (!d) {
            d = true;
            gs.e();
            la.d("GG started: " + ((108.6f * 1) - 7.5f) + " (" + ((int) (((16903.8f * 1) - 761.8f) + 0.5f)) + ") on " + gs.d());
            new ig(false);
            new qx(0L, 0L, 0);
            ar.d.j();
            bq.e();
            bf.a();
            iw.a();
            new pl().a();
            w();
            ho.c();
            a(5, (String) null);
            q();
            t();
            u();
            r();
            s();
            x();
            a(false);
            kx.a();
            sf.a();
            ConfigListAdapter.a(3);
        }
    }

    public static void a(Context context) {
        rx.a(new md(context));
    }

    public static void j() {
        boolean z = false;
        la.a("Main: exit");
        b = true;
        try {
            if (MainService.instance != null) {
                MainService.instance.g(true);
                MainService.instance.R();
            }
        } catch (Throwable th) {
            la.b("Exception on exit", th);
        }
        lg.a("AndroidService", "exit: 1");
        new File(Tools.l(), "sel.txt").delete();
        a(true);
        lg.a("AndroidService", "exit: 2");
        try {
            la.a();
        } catch (Throwable th2) {
            lg.c("AndroidService", "OnExit", th2);
        }
        lg.a("AndroidService", "exit: 3");
        boolean z2 = bj.a != null;
        lj ljVar = new lj();
        lg.a("AndroidService", "wait 1: " + z2);
        if (z2) {
            bj.c = ljVar;
            bj.a.a();
        }
        if (v() || z2) {
            z = true;
        }
        lg.a("AndroidService", "wait 2: " + z);
        if (!z) {
            k();
            return;
        }
        if (bj.c == null) {
            bj.c = ljVar;
        }
        rx.a().postDelayed(ljVar, 3000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void k() {
        try {
            n();
        } catch (Throwable th) {
            lg.c("AndroidService", "OnExit", th);
        }
        lg.a("AndroidService", "exit: 4");
        try {
            rx.d();
        } catch (Throwable th2) {
            lg.c("AndroidService", "OnExit", th2);
        }
        lg.a("AndroidService", "exit: 5");
        try {
            bi.b();
        } catch (Throwable th3) {
            lg.c("AndroidService", "OnExit", th3);
        }
        lg.a("AndroidService", "exit: 6");
        File file = new File(Tools.h(), "skipFinalization");
        lg.a("AndroidService", "exit: 7");
        if (!file.exists()) {
            lg.a("AndroidService", "exit: 8");
            try {
                file.createNewFile();
            } catch (Throwable th4) {
                lg.c("AndroidService", "OnExit", th4);
            }
            lg.a("AndroidService", "exit: 9");
            try {
                System.runFinalization();
            } catch (Throwable th5) {
                lg.c("AndroidService", "OnExit", th5);
            }
            lg.a("AndroidService", "exit: 10");
            try {
                file.delete();
            } catch (Throwable th6) {
                lg.c("AndroidService", "OnExit", th6);
            }
        }
        lg.a("AndroidService", "exit: 11");
        if (!Config.vSpaceReal) {
            try {
                qt.a("exec am force-stop " + Tools.g(), 45);
            } catch (Throwable th7) {
                lg.c("AndroidService", "OnExit", th7);
            }
            lg.a("AndroidService", "exit: 12");
            try {
                qt.a("exec am kill " + Tools.g(), 45);
            } catch (Throwable th8) {
                lg.c("AndroidService", "OnExit", th8);
            }
            lg.a("AndroidService", "exit: 13");
        }
        l();
    }

    public static void l() {
        v();
        lg.a("AndroidService", "Main: die");
        try {
            System.exit(0);
        } catch (Throwable th) {
            lg.c("AndroidService", "OnExit", th);
        }
        lg.a("AndroidService", "exit: 14");
        try {
            Runtime.getRuntime().halt(0);
        } catch (Throwable th2) {
            lg.c("AndroidService", "OnExit", th2);
        }
        lg.a("AndroidService", "exit: 15");
        try {
            Process.killProcess(Process.myPid());
        } catch (Throwable th3) {
            lg.c("AndroidService", "OnExit", th3);
        }
        lg.a("AndroidService", "exit: 16");
        try {
            qt.a("exec kill " + Process.myPid(), 45);
        } catch (Throwable th4) {
            lg.c("AndroidService", "OnExit", th4);
        }
        lg.a("AndroidService", "exit: 17");
        throw new hw("Failed exit from the app normally");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ComponentName m() {
        try {
            return new ComponentName(Tools.g(), Instrumentation.class.getName());
        } catch (Throwable th) {
            la.a(th);
            return null;
        }
    }

    public static void n() {
        if (c != 0) {
            rx.a(new lk());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String o() {
        return Config.C ? Config.E : Config.vSpaceReal ? String.valueOf(qt.a((String) null)) + "@" + Config.E : qt.a((String) null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String p() {
        int i;
        int i2;
        Resources resources;
        DisplayMetrics displayMetrics;
        try {
            resources = Tools.e().getResources();
            Configuration configuration = resources.getConfiguration();
            if (Build.VERSION.SDK_INT >= 13) {
                try {
                    i2 = configuration.screenWidthDp;
                } catch (Throwable th) {
                    th = th;
                    i2 = 0;
                }
                try {
                    i = configuration.screenHeightDp;
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        la.a(th);
                        i = 0;
                        displayMetrics = resources.getDisplayMetrics();
                        if (i2 == 0) {
                            i2 = (int) (displayMetrics.widthPixels / displayMetrics.density);
                        }
                        if (i == 0) {
                            i = (int) (displayMetrics.heightPixels / displayMetrics.density);
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        i = 0;
                        la.a(th);
                        return new StringBuilder().append(i2).append('x').append(i).toString();
                    }
                    return new StringBuilder().append(i2).append('x').append(i).toString();
                }
            } else {
                i = 0;
                i2 = 0;
            }
        } catch (Throwable th4) {
            th = th4;
            i = 0;
            i2 = 0;
        }
        try {
            displayMetrics = resources.getDisplayMetrics();
            if (i2 == 0 && displayMetrics != null && displayMetrics.density != 0.0f) {
                i2 = (int) (displayMetrics.widthPixels / displayMetrics.density);
            }
            if (i == 0 && displayMetrics != null && displayMetrics.density != 0.0f) {
                i = (int) (displayMetrics.heightPixels / displayMetrics.density);
            }
        } catch (Throwable th5) {
            th = th5;
            la.a(th);
            return new StringBuilder().append(i2).append('x').append(i).toString();
        }
        return new StringBuilder().append(i2).append('x').append(i).toString();
    }

    private static void w() {
        new gr(new ll(), "checkNewVersion").start();
    }

    private static void x() {
        File file = new File(Tools.l(), "sel.txt");
        try {
            if (file.exists()) {
                if ((Config.A & 4) != 0 || Build.VERSION.SDK_INT < 17) {
                    file.delete();
                    return;
                }
                a(true);
                i.c(i.c().setCustomTitle(Tools.d((int) R.string.last_run_failed)).setItems(new String[]{qk.a((int) R.string.work_with_selinux), qk.a((int) R.string.skip)}, new ln(file)).create());
            }
        } catch (Throwable th) {
            la.a(th);
        }
    }

    private static void a(boolean z) {
        if ((Config.c & 64) == 0 && (Config.B & 8192) == 0) {
            File file = new File(Tools.l(), "FC.txt");
            if (z) {
                file.delete();
                return;
            }
            int i = (int) (((17358.5f * 1) - 1216.5f) + 0.5f);
            if (file.exists()) {
                try {
                    FileInputStream fileInputStream = new FileInputStream(file);
                    byte[] bArr = new byte[12];
                    int read = fileInputStream.read(bArr);
                    if ((read > 0 ? Integer.parseInt(new String(bArr, 0, read)) : 0) == i) {
                        i.c(i.c().setMessage(qk.a((int) R.string.force_close_)).setPositiveButton(qk.a((int) R.string.fix_it), new lo()).setNegativeButton(qk.a((int) R.string.skip), a(64L)).setNeutralButton(qk.a((int) R.string.help), new lq()).create());
                    }
                    fileInputStream.close();
                } catch (Throwable th) {
                    la.c("Fail get FC file", th);
                }
                file.delete();
            }
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                fileOutputStream.write(Integer.toString(i).getBytes());
                fileOutputStream.close();
            } catch (Throwable th2) {
                la.c("Fail set FC file", th2);
            }
        }
    }

    public static void q() {
        new gr(new lr(), "checkAutoTranslation").start();
    }
}
