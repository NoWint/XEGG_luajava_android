package android.ext;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.Handler;
import android.util.Base64;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;
import catch_.me_.if_.you_.can_.ActivityMain;
import catch_.me_.if_.you_.can_.AnalyticsService;
import catch_.me_.if_.you_.can_.Application;
import catch_.me_.if_.you_.can_.FileProvider;
import catch_.me_.if_.you_.can_.Instrumentation;
import catch_.me_.if_.you_.can_.MainActivity;
import catch_.me_.if_.you_.can_.R;
import catch_.me_.if_.you_.can_.Receiver;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintStream;
import java.io.RandomAccessFile;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.DigestInputStream;
import java.security.DigestOutputStream;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.PrivateKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PKCS8EncodedKeySpec;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.Map;
import java.util.Random;
import java.util.jar.Attributes;
import java.util.jar.Manifest;
import java.util.zip.Adler32;
import java.util.zip.CRC32;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipInputStream;
import java.util.zip.ZipOutputStream;

/* compiled from: src */
/* loaded from: classes.dex */
public class jp {
    static jp e;
    File d;
    private final File o;
    private final String p;
    private final String q;
    private Manifest u;
    private byte[] y;
    private static final String[] m = {"classes.dex", "AndroidManifest.xml", "resources.arsc", "META-INF/MANIFEST.MF", "META-INF/CERT.SF", "META-INF/CERT.RSA"};
    static byte a = 0;
    static byte[][] b = null;
    static final boolean[] c = {false, true, false, true, true, true};
    static volatile ko g = null;
    public static volatile WeakReference h = new WeakReference(null);
    private static final Runnable v = new jq();
    public static volatile WeakReference i = new WeakReference(null);
    public static volatile WeakReference j = new WeakReference(null);
    public static volatile WeakReference k = new WeakReference(null);
    private static volatile int w = 0;
    private static volatile boolean x = false;
    static volatile int l = 0;
    private static volatile WeakReference z = new WeakReference(null);
    private static String A = null;
    private static final Object B = new Object();
    private final RandomAccessFile[] n = new RandomAccessFile[m.length];
    private final kj[] r = new kj[m.length];
    volatile AlertDialog f = null;
    private final MessageDigest s = MessageDigest.getInstance("SHA1");
    private final MessageDigest t = MessageDigest.getInstance("SHA1");

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(ko koVar) {
        g = koVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ko a() {
        if (g == null) {
            ko koVar = new ko();
            koVar.a = b();
            g = koVar;
        }
        return g;
    }

    public static boolean b() {
        boolean z2;
        h();
        try {
            z2 = !new File(Tools.removeNewLinesChars("2gdwd2JJ1vnls1lqvwdoo")).exists();
        } catch (Throwable th) {
            la.a(th);
            z2 = true;
        }
        return z2 && y.b.equals(Tools.g()) && !b("installer.fail").exists();
    }

    public static void a(Runnable runnable) {
        boolean z2 = false;
        Intent intent = ar.d.getIntent();
        if (intent != null && intent.getBooleanExtra(String.valueOf(y.b) + ".fromInstaller", false)) {
            z2 = true;
        }
        la.a("removeInstaller: " + z2 + " + " + ar.c);
        if (ar.c || z2) {
            ar.c = true;
            la.a(runnable + ": 30");
            ty.a(y.b, runnable);
            la.a(runnable + ": 40");
            return;
        }
        runnable.run();
    }

    private static void h() {
        try {
            File b2 = b(Tools.removeNewLinesChars("yhuvlrq1jj"));
            byte[] bytes = (String.valueOf(Integer.toString((int) (((16439.9f * 1) - 297.9f) + 0.5f))) + ':' + ((107.0f * 1) - 5.9f)).getBytes();
            if (b2.exists()) {
                FileInputStream fileInputStream = new FileInputStream(b2);
                byte[] bArr = new byte[bytes.length];
                if (fileInputStream.read(bArr) != bArr.length || !Arrays.equals(bArr, bytes)) {
                    b("installer.fail").delete();
                    File l2 = Tools.l();
                    String[] list = l2.list();
                    if (list != null) {
                        for (String str : list) {
                            if ((str.startsWith("lib") && str.endsWith(".so")) || "gr".equals(str)) {
                                new File(l2, str).delete();
                            }
                        }
                    }
                }
                fileInputStream.close();
            }
            FileOutputStream fileOutputStream = new FileOutputStream(b2);
            Tools.a(b2, 384);
            fileOutputStream.write(bytes);
            fileOutputStream.close();
        } catch (Throwable th) {
            la.c("Fail set version", th);
        }
    }

    public static void c() {
        k();
        new hx(new ju(), "Installer").start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void d() {
        b = new byte[m.length];
        try {
            e = new jp();
            e.l();
            rx.a(new jv());
        } catch (Throwable th) {
            la.c("Failed install", th);
            String message = th.getMessage();
            if (message != null && (message.contains("ENOSPC") || message.contains("o space left"))) {
                rx.a(new jw(message));
                return;
            }
            if (!(th instanceof ki)) {
                ho.a(Thread.currentThread(), th, false);
            }
            a(false);
            rx.a(new jy(th));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(boolean z2) {
        try {
            b("installer.fail").createNewFile();
        } catch (IOException e2) {
            la.c("Failed set install flag", e2);
        }
        if (z2) {
            rx.a(new kb());
        }
    }

    private static void a(String str, int i2, int i3, Intent[] intentArr) {
        rx.a(new kc(i3, str, i2, intentArr));
    }

    public static void a(int i2, int i3, Intent intent) {
        ko koVar = g;
        la.a("instance: " + e + "; " + koVar);
        if (koVar != null) {
            koVar.h = String.valueOf(koVar.h) + "\nget: " + i3 + " for: " + i2 + " with: " + intent;
            if (e != null) {
                switch (i2) {
                    case 1:
                        if (Tools.e(e.p)) {
                            koVar.g &= i2 ^ (-1);
                            return;
                        } else {
                            a(String.valueOf(qk.a((int) R.string.failed_install)) + "\n\n" + Tools.c((int) R.string.manual_install) + ":\n" + e.d.getAbsolutePath(), i2, i3, e.p());
                            return;
                        }
                    case 2:
                        a(qk.a((int) R.string.failed_uninstall), i2, i3, a(y.b));
                        return;
                    default:
                        return;
                }
            }
        }
    }

    private jp() {
        File b2 = b(true);
        b2.mkdirs();
        this.o = b2;
        la.a("Int dir: " + b2.getAbsolutePath());
        if (g.c == null) {
            File b3 = b(false);
            b3.mkdirs();
            g.c = new File(b3, "temp.apk").getAbsolutePath();
        }
        this.d = new File(g.c);
        la.a("Apk: " + this.d.getAbsolutePath());
        if (g.d == null) {
            g.d = j();
        }
        if (g.e == null) {
            g.e = b(1);
        }
        this.p = g.d;
        this.q = g.e;
        la.a("package: " + y.b + " -> " + this.p);
    }

    private static PrivateKey i() {
        PKCS8EncodedKeySpec pKCS8EncodedKeySpec = new PKCS8EncodedKeySpec(Base64.decode("MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQDWkxkE3sYLJLHtx2Lg2dglPj7NbOsd4v8GjKjovKjNa9N4bqcKp2zmDrsPmTVZ/9k+d6lD5+g9S2S45P6i0+ZW8eJnqBu/sjC1eMIEQ75Mchi4RvUhFYbwOKFOicK+OH+Ovs+PysPaHuMwyeqT0KfD3ErzUCINUAgHMuCAlxfuagUzWeamlOwss/KEoKRmyHqU2DsxCTpnNy4vZBLAbm1C8VgY3/4DgcwM1ETabN3DuCRYGUgBsyVkE0+/3pjJKHdI2/VnalQNgVTIu8oHueJHVTMRxGua92/e7MyOaefIotCOeCYglD+Zcn08BP5ymR2Z35uuOKCyF3+jHVtq/ukfAgEDAoIBAQCPDLtYlIQHbcvz2kHrO+VuKX8znfIT7KoEXcXwfcXeR+JQScSxxPNECdIKZiORVTt++nDX7/Ao3O3QmKnB4pmPS+xFGr0qdssjpdatgn7doWXQL04WDln1exY0W9cpev+0fzUKhy08FJd12/G34G/X6DH3isFeNVqvd0BVug/0RXWihnmONcUztAJ25E5YNqHadWSt+vU4pJOpvxDyE6ZXrBIpHBvlaZf8atJ7maf8iXfSZUzrqnx1O5zaTGRnGo7o/UdrfuLDfpVXnXBEHm+rk6QTq2ZKyZj6JZQ/K1LB+cXqZO9KG8oBSecXohQBeJYIDEikB9xHdsvelr1MoYR7AoGBAOrAmRccm5UnjAe/npdFGIVXkXaep7Ur9rqT4NaoSMSnDRim6Kii2lNoZ2szvvKYuxRNmvi1u60iRvQsLM10duqyG+FKdx+S5632ALWTKvdH97l3VYcRCrDYAyMYdotYavF8bcT9QKgYHoWHb18KLL27A4afIXmrVXCnWXp1e2GbAoGBAOn+9xk0qK83mecSq5edXgJ1lq2NaRVmSZYc5KKtCC8YYiQ0TSuIiRSpzJ3tR28wLtxO5lvqd72R8vBMPzS6CbY5RCj7tOBVW8bPTuwOYUN+AAN87csZvlmPsUsXMmBNQTYycvo0Keh/ZR0RIoFmN37SyagZC1ybj90t4cUCkUDNAoGBAJyAZg9oZ7jFCAUqabouEFjlC6RpxSNypHxileRwMIMaCLsZ8HBskYzwRPIif0xl0g2JEfsj0nNsL01yyIj4T0chZ+uG+hUMmnP5Vc5iHKTapSZPjloLXHXlV2y6+bI68fZS89io1cVlaa5aSj9cHdPSAlm/a6ZyOPXE5lGjp5ZnAoGBAJv/T2YjGx96ZpoMcmUTlAGjuckI8Lju27lomGxzWsoQQW14M3JbBg3GiGlI2kogHz2J7ufxpSkL90rdf3h8Bnl7gsX9I0A459nfifK0QNepVVeonodmfuZfy4dkzEAzgM7MTKbNcUWqQ2i2FwDuz6nh28VmB5MSX+jJQS4BtiszAoGAYyqt2RrdpGLZlaZyYlsFzalGIfTpWXPuj5ot63Ghwawb0xoN1qKJdYcbanvrblVhtKEsYKOkae96d1grNcf4Vbm3bMrPwHdIRf6pRS+x46mMBfuap1JoGcXESY4NwdsbpYo71PuBgykeNHaO2nq0BYcm/RyNFHuJZd+PFfOevDc=", 0));
        try {
            return KeyFactory.getInstance("RSA").generatePrivate(pKCS8EncodedKeySpec);
        } catch (InvalidKeySpecException e2) {
            return KeyFactory.getInstance("DSA").generatePrivate(pKCS8EncodedKeySpec);
        }
    }

    @SuppressLint({"SdCardPath"})
    @TargetApi(19)
    private File b(boolean z2) {
        ArrayList arrayList = new ArrayList();
        if (z2) {
            arrayList.add(Tools.i());
            arrayList.add(Tools.h());
        }
        try {
            arrayList.add(ar.f.getExternalCacheDir());
        } catch (Throwable th) {
            la.c("Fail get path", th);
        }
        if (Build.VERSION.SDK_INT >= 19) {
            try {
                for (File file : ar.f.getExternalCacheDirs()) {
                    arrayList.add(file);
                }
            } catch (Throwable th2) {
                la.c("Fail get path", th2);
            }
        }
        try {
            arrayList.add(ar.f.getExternalFilesDir(null));
        } catch (Throwable th3) {
            la.c("Fail get path", th3);
        }
        if (Build.VERSION.SDK_INT >= 19) {
            try {
                for (File file2 : ar.f.getExternalFilesDirs(null)) {
                    arrayList.add(file2);
                }
            } catch (Throwable th4) {
                la.c("Fail get path", th4);
            }
        }
        try {
            arrayList.add(Environment.getExternalStorageDirectory());
        } catch (Throwable th5) {
            la.c("Fail get path", th5);
        }
        try {
            arrayList.add(new File("/sdcard/Android/data/" + Tools.g() + "/files"));
            arrayList.add(new File("/mnt/sdcard/Android/data/" + Tools.g() + "/files"));
            arrayList.add(new File("/sdcard/Android/data/" + Tools.g() + "/cache"));
            arrayList.add(new File("/mnt/sdcard/Android/data/" + Tools.g() + "/cache"));
        } catch (Throwable th6) {
            la.c("Fail get path", th6);
        }
        arrayList.add(new File("/sdcard"));
        arrayList.add(new File("/mnt/sdcard"));
        arrayList.add(new File("/data/local/tmp"));
        arrayList.add(Tools.h());
        arrayList.add(Tools.i());
        StringBuilder sb = new StringBuilder();
        sb.append("Failed getDir: ");
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            File file3 = (File) it.next();
            String b2 = b(file3);
            if (b2 == null) {
                return file3;
            }
            if (file3 != null) {
                sb.append(file3.getAbsolutePath());
                sb.append(": ");
                sb.append(b2);
                sb.append("; ");
            }
        }
        throw new RuntimeException(sb.toString());
    }

    private String b(File file) {
        String str;
        if (file == null) {
            la.a("path: " + file + " - null");
            return "is null";
        }
        file.mkdirs();
        try {
            File file2 = new File(file, "temp.apk");
            file2.delete();
            byte[] bytes = "We need test read/write to this file".getBytes();
            byte[] bArr = new byte[bytes.length];
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            Tools.a(file2, 384);
            fileOutputStream.write(bytes);
            fileOutputStream.close();
            FileInputStream fileInputStream = new FileInputStream(file2);
            int read = fileInputStream.read(bArr);
            fileInputStream.close();
            if (read != bytes.length) {
                str = "Length mismatch: " + read + " != " + bytes.length;
            } else if (!Arrays.equals(bArr, bytes)) {
                str = "Data mismatch: '" + new String(bArr) + "' != '" + new String(bytes) + '\'';
            } else {
                file2.delete();
                la.a("path: " + file + " - success");
                str = null;
            }
            return str;
        } catch (IOException e2) {
            la.a("path: " + file + " - fail: " + e2.getMessage());
            return e2.getMessage();
        }
    }

    private String j() {
        String b2;
        do {
            b2 = b(0);
        } while (Tools.e(b2));
        return b2;
    }

    private static String b(int i2) {
        String str;
        boolean z2;
        char[] cArr = i2 == 2 ? new char[]{'.', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9'} : new char[]{'.', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'};
        StringBuilder sb = new StringBuilder();
        if (i2 == 0) {
            sb.append("com.");
        }
        Random random = Tools.a;
        String sb2 = new StringBuilder().append((116.299995f * 1) - 15.2f).toString();
        if (i2 == 1) {
            str = y.c;
        } else {
            str = i2 == 0 ? y.b : sb2;
        }
        int length = str.length() - sb.length();
        if (i2 != 2) {
            length = random.nextInt((length + 1) - 3) + 3;
        }
        boolean z3 = true;
        int i3 = 0;
        while (i3 < length) {
            if (i2 == 2 && sb2.charAt(i3) == '.') {
                sb.append('.');
                z2 = z3;
            } else {
                int i4 = (i2 == 2 || z3) ? 1 : 0;
                int length2 = cArr.length;
                if (i3 == 0 && i2 != 1) {
                    i4 = 2;
                }
                if (i3 == length - 1 && i4 == 0) {
                    i4 = 1;
                }
                int nextInt = random.nextInt(length2 - i4) + i4;
                char c2 = cArr[nextInt];
                if (i2 == 1) {
                    if (nextInt == 0) {
                        c2 = ' ';
                    } else if (z3) {
                        c2 = Character.toUpperCase(c2);
                    }
                }
                sb.append(c2);
                z2 = nextInt == 0;
            }
            i3++;
            z3 = z2;
        }
        return sb.toString();
    }

    private static void k() {
        Button button = (Button) h.get();
        if (button != null) {
            button.setOnClickListener(new ke());
        }
        ProgressBar progressBar = (ProgressBar) i.get();
        if (progressBar != null) {
            progressBar.setIndeterminate(false);
        }
        v.run();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void e() {
        int i2 = g.b + w;
        int i3 = i2 > 1000 ? 1000 : i2;
        ProgressBar progressBar = (ProgressBar) i.get();
        if (progressBar != null) {
            progressBar.setMax(1000);
            progressBar.setProgress(i3);
        }
        TextView textView = (TextView) j.get();
        if (textView != null) {
            textView.setText(Tools.a("%.1f %%", Double.valueOf((100.0d * i3) / 1000.0d)));
        }
        if (w < 199) {
            w++;
        }
        if (g.b == 600) {
            if (w == 60) {
                TextView textView2 = (TextView) k.get();
                String str = g.c;
                if (textView2 != null && str != null) {
                    textView2.setText(String.valueOf(qk.a((int) R.string.installing)) + "\n\n" + Tools.c((int) R.string.manual_install) + ":\n" + str);
                }
            }
            if (w == 198 && e != null) {
                a(String.valueOf(qk.a((int) R.string.failed_install)) + "\n\n" + Tools.c((int) R.string.manual_install) + ":\n" + e.d.getAbsolutePath(), 1, -123, e.p());
            }
        }
    }

    private static void c(int i2) {
        if (g.b != i2) {
            w = 0;
        }
        g.b = i2;
    }

    private boolean l() {
        if (Tools.e(this.p)) {
            c(800);
        }
        if (g.b < 600) {
            c(0);
            x();
            c(200);
            y();
            c(400);
            u();
            c(600);
        }
        if (g.b < 800) {
            c(600);
            z();
            ko koVar = g;
            koVar.h = String.valueOf(koVar.h) + q();
            c(800);
        }
        if (!Tools.e(this.p)) {
            throw new ki("package not installed: " + this.p + '\n' + g.h);
        }
        if (g.b < 1000) {
            c(800);
            m();
            try {
                n();
            } catch (Throwable th) {
                la.a(th);
            }
            c(1000);
        }
        try {
            o();
            return true;
        } catch (Throwable th2) {
            la.a(th2);
            return true;
        }
    }

    private void m() {
        if (Build.VERSION.SDK_INT >= 11) {
            try {
                Tools.m().setInstallerPackageName(this.p, null);
            } catch (Throwable th) {
                la.a(th);
            }
        }
    }

    private void n() {
        Intent a2 = Tools.a(ar.f, this.p, ar.b().replace(Tools.g(), this.p));
        if (!ty.a()) {
            la.a("removeInstaller: just installer");
            a2.putExtra(String.valueOf(y.b) + ".fromInstaller", true);
        }
        ar.f.startActivity(a2);
    }

    @TargetApi(14)
    public static Intent[] a(String str) {
        int i2 = 1;
        boolean z2 = Build.VERSION.SDK_INT >= 14;
        Intent[] intentArr = new Intent[z2 ? 2 : 1];
        if (z2) {
            Intent intent = new Intent("android.intent.action.UNINSTALL_PACKAGE");
            intent.setData(Uri.fromParts("package", str, null));
            intent.putExtra("android.intent.extra.RETURN_RESULT", true);
            intent.putExtra("android.intent.extra.UNINSTALL_ALL_USERS", true);
            intentArr[0] = intent;
        } else {
            i2 = 0;
        }
        Intent intent2 = new Intent("android.intent.action.DELETE");
        intent2.setData(Uri.fromParts("package", str, null));
        int i3 = i2 + 1;
        intentArr[i2] = intent2;
        return intentArr;
    }

    @TargetApi(14)
    private void o() {
        if (!ty.a()) {
            i.a(i.a(ar.f).setMessage(qk.a((int) R.string.need_uninstall)).setPositiveButton(qk.a((int) R.string.ok), new kg(this)));
        } else {
            i.a(i.a(ar.f).setMessage(qk.a((int) R.string.install_finished)).setPositiveButton(qk.a((int) R.string.ok), new ib(1600)));
        }
    }

    private static Intent a(Intent intent, boolean z2) {
        if (z2) {
            Context e2 = Tools.e();
            try {
                for (ResolveInfo resolveInfo : Tools.m().queryIntentActivities(intent, 65536)) {
                    e2.grantUriPermission(resolveInfo.activityInfo.packageName, intent.getData(), 1);
                }
            } catch (Throwable th) {
                la.b("Failed grant 1 " + intent, th);
            }
            try {
                e2.grantUriPermission("com.android.packageinstaller", intent.getData(), 1);
            } catch (Throwable th2) {
                la.b("Failed grant 2 " + intent, th2);
            }
        }
        return intent;
    }

    private Intent[] p() {
        return a(this.d);
    }

    @TargetApi(14)
    public static Intent[] a(File file) {
        int i2;
        boolean z2 = Build.VERSION.SDK_INT >= 14;
        Intent[] intentArr = new Intent[z2 ? 4 : 2];
        boolean z3 = Build.VERSION.SDK_INT >= 24;
        boolean z4 = x;
        int i3 = 0;
        int i4 = 0;
        while (i3 < 2) {
            boolean z5 = (i3 == 0) ^ z3;
            Uri fromFile = z5 ? Uri.fromFile(file) : FileProvider.a(Tools.e(), y.d, file);
            if (z2) {
                Intent intent = new Intent("android.intent.action.INSTALL_PACKAGE");
                intent.setDataAndType(fromFile, "application/vnd.android.package-archive");
                intent.addFlags(1);
                intent.putExtra("android.intent.extra.NOT_UNKNOWN_SOURCE", true);
                intent.putExtra("android.intent.extra.RETURN_RESULT", true);
                int i5 = i4 + 1;
                intentArr[i4] = a(intent, (z4 || z5) ? false : true);
                i2 = i5;
            } else {
                i2 = i4;
            }
            Intent intent2 = new Intent("android.intent.action.VIEW");
            intent2.setDataAndType(fromFile, "application/vnd.android.package-archive");
            intent2.addFlags(1);
            i4 = i2 + 1;
            intentArr[i2] = a(intent2, (z4 || z5) ? false : true);
            i3++;
        }
        x = true;
        return intentArr;
    }

    private String q() {
        String absolutePath = this.d.getAbsolutePath();
        String[] strArr = absolutePath.contains("/emulated/0") ? new String[]{absolutePath.replace("/emulated/0", "/emulated/legacy"), absolutePath} : new String[]{absolutePath};
        for (String str : strArr) {
            try {
                Tools.a(new File(str), 493);
            } catch (Throwable th) {
                la.b("Failed allow execute 1: " + str, th);
            }
            try {
                Tools.a(str, "0755");
            } catch (Throwable th2) {
                la.b("Failed allow execute 2: " + str, th2);
            }
        }
        String str2 = "Install:";
        int length = strArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            try {
                str2 = String.valueOf(str2) + '\n' + qt.a(String.valueOf(Tools.removeNewLinesChars("h{hf#sp#lqvwdoo#0i#")) + strArr[i2], 45);
            } catch (Throwable th3) {
                la.c("run cmd fail", th3);
                str2 = String.valueOf(str2) + '\n' + th3.getMessage();
            }
            if (Tools.e(this.p)) {
                break;
            }
        }
        if (!Tools.e(this.p)) {
            g.f = true;
            Intent[] p = p();
            l = 0;
            for (Intent intent : p) {
                l++;
                str2 = String.valueOf(str2) + "\nManual: " + intent;
                try {
                    a(intent, 1);
                    break;
                } catch (Throwable th4) {
                    str2 = String.valueOf(str2) + '\n' + th4.getMessage();
                }
            }
        }
        return str2;
    }

    private void a(Intent intent, int i2) {
        g.g |= i2;
        Handler a2 = rx.a();
        jr jrVar = new jr(this, i2);
        a2.postDelayed(jrVar, 300000L);
        ar.d.startActivityForResult(intent, i2);
        while ((g.g & i2) == i2) {
            try {
                Thread.sleep(500L);
                if (i2 == 1 && Tools.e(this.p)) {
                    g.g &= i2 ^ (-1);
                }
            } catch (InterruptedException e2) {
                la.c("Interrupted wait", e2);
            }
        }
        a2.removeCallbacks(jrVar);
        rx.a(new js(this));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f() {
        if (this.f != null) {
            try {
                Tools.a((DialogInterface) this.f);
                this.f = null;
            } catch (Throwable th) {
                la.b("Exception on dismiss", th);
            }
        }
    }

    private void a(ZipEntry zipEntry, ZipInputStream zipInputStream, ZipOutputStream zipOutputStream) {
        int a2 = a(zipEntry);
        ZipEntry zipEntry2 = new ZipEntry(zipEntry);
        if (a2 != -1) {
            b(zipEntry2, a2);
            if (this.r[a2] == null) {
                la.b("List: " + a2 + " is null!");
                return;
            }
            this.r[a2].c = a(zipEntry2, zipOutputStream, a2);
            return;
        }
        b(zipEntry2, zipInputStream, zipOutputStream);
    }

    private static int a(ZipEntry zipEntry) {
        String name = zipEntry.getName();
        for (int i2 = 0; i2 < m.length; i2++) {
            if (m[i2].equals(name)) {
                return i2;
            }
        }
        return -1;
    }

    private String a(ZipEntry zipEntry, ZipOutputStream zipOutputStream, int i2) {
        zipOutputStream.putNextEntry(zipEntry);
        this.s.reset();
        DigestInputStream digestInputStream = new DigestInputStream(d(i2), this.s);
        long j2 = 0;
        try {
            byte[] r = r();
            while (true) {
                int read = digestInputStream.read(r);
                if (read != -1) {
                    if (read != 0) {
                        zipOutputStream.write(r, 0, read);
                        j2 += read;
                    }
                } else {
                    digestInputStream.close();
                    String encodeToString = Base64.encodeToString(this.s.digest(), 2);
                    la.a("put " + zipEntry.getName() + ": " + encodeToString + "; " + j2);
                    zipOutputStream.flush();
                    zipOutputStream.closeEntry();
                    return encodeToString;
                }
            }
        } catch (Throwable th) {
            digestInputStream.close();
            la.a("put " + zipEntry.getName() + ": " + Base64.encodeToString(this.s.digest(), 2) + "; " + j2);
            throw th;
        }
    }

    private byte[] r() {
        byte[] bArr = this.y;
        if (bArr == null) {
            byte[] bArr2 = new byte[65536];
            this.y = bArr2;
            return bArr2;
        }
        return bArr;
    }

    private InputStream d(int i2) {
        if (c[i2]) {
            if (b == null || b[i2] == null) {
                throw new ki("memCache is null 1: " + i2 + ' ' + b);
            }
            return new ByteArrayInputStream(b[i2]);
        }
        la.a("getInputStream: " + i2);
        return new kl(a(i2), null);
    }

    private long e(int i2) {
        if (c[i2]) {
            if (b == null || b[i2] == null) {
                throw new ki("memCache is null 2: " + i2 + ' ' + b);
            }
            return b[i2].length;
        }
        return a(i2).length();
    }

    private OutputStream f(int i2) {
        km kmVar;
        int i3 = 75000;
        boolean z2 = c[i2];
        if (z2) {
            kmVar = null;
        } else {
            try {
                la.a("getOutputStream: " + i2);
                kmVar = new km(a(i2), null);
            } catch (Throwable th) {
                la.a(th);
                kmVar = null;
            }
            if (kmVar == null) {
                la.a("Use mem cache for " + i2);
                c[i2] = true;
                z2 = true;
            }
        }
        if (z2) {
            if (i2 == 1) {
                i3 = 9000;
            } else if (i2 != 3 && i2 != 4) {
                i3 = i2 == 5 ? 2000 : 8192;
            }
            return new jt(this, i3, i2);
        }
        return kmVar;
    }

    private void a(ZipEntry zipEntry, int i2, String str, String str2) {
        this.s.reset();
        DigestInputStream digestInputStream = new DigestInputStream(d(i2), this.s);
        try {
            do {
            } while (digestInputStream.read(r()) != -1);
            digestInputStream.close();
            String encodeToString = Base64.encodeToString(this.s.digest(), 2);
            la.a("check hash for " + zipEntry.getName() + " [" + i2 + "]: " + encodeToString + " : " + str2 + " -> " + str);
            if (!str.equals(encodeToString)) {
                throw new ki("check hash for " + zipEntry.getName() + " [" + i2 + "]: " + encodeToString + " != " + str2 + " -> " + str);
            }
        } catch (Throwable th) {
            digestInputStream.close();
            la.a("check hash for " + zipEntry.getName() + " [" + i2 + "]: " + Base64.encodeToString(this.s.digest(), 2) + " : " + str2 + " -> " + str);
            throw th;
        }
    }

    private void b(ZipEntry zipEntry, ZipInputStream zipInputStream, ZipOutputStream zipOutputStream) {
        if (zipEntry.getMethod() != 0) {
            zipEntry.setCompressedSize(-1L);
        }
        if (a != 0) {
            String name = zipEntry.getName();
            String str = null;
            if ("res/raw/ydw3a".equals(name)) {
                str = a == 1 ? "lib/armeabi/libAndroid.so" : "lib/arm64-v8a/libAndroid.so";
            }
            if ("res/raw/ydw3x".equals(name)) {
                str = a == 1 ? "lib/x86/libAndroid.so" : "lib/x86_64/libAndroid.so";
            }
            if (str != null) {
                try {
                    Field declaredField = ZipEntry.class.getDeclaredField("name");
                    declaredField.setAccessible(true);
                    declaredField.set(zipEntry, str);
                } catch (Throwable th) {
                    la.a(th);
                }
            }
        }
        zipOutputStream.putNextEntry(zipEntry);
        byte[] r = r();
        while (true) {
            int read = zipInputStream.read(r);
            if (read != -1) {
                zipOutputStream.write(r, 0, read);
            } else {
                zipOutputStream.flush();
                zipOutputStream.closeEntry();
                return;
            }
        }
    }

    private String a(ZipEntry zipEntry, ZipInputStream zipInputStream, int i2) {
        this.s.reset();
        DigestOutputStream digestOutputStream = new DigestOutputStream(f(i2), this.s);
        this.t.reset();
        DigestInputStream digestInputStream = new DigestInputStream(zipInputStream, this.t);
        try {
            byte[] r = r();
            while (true) {
                int read = digestInputStream.read(r);
                if (read != -1) {
                    digestOutputStream.write(r, 0, read);
                } else {
                    digestOutputStream.flush();
                    digestOutputStream.close();
                    String encodeToString = Base64.encodeToString(this.s.digest(), 2);
                    String encodeToString2 = Base64.encodeToString(this.t.digest(), 2);
                    la.a("extract " + zipEntry.getName() + ": " + encodeToString2 + " -> " + encodeToString);
                    a(zipEntry, i2, encodeToString, encodeToString2);
                    return encodeToString;
                }
            }
        } catch (Throwable th) {
            digestOutputStream.close();
            la.a("extract " + zipEntry.getName() + ": " + Base64.encodeToString(this.t.digest(), 2) + " -> " + Base64.encodeToString(this.s.digest(), 2));
            throw th;
        }
    }

    private void a(Manifest manifest, OutputStream outputStream) {
        outputStream.write("Signature-Version: 1.0\r\n".getBytes());
        outputStream.write("Created-By: 1.0 (Android SignApk)\r\n".getBytes());
        this.s.reset();
        PrintStream printStream = new PrintStream(new DigestOutputStream(new kk(null), this.s), true, "UTF-8");
        manifest.write(printStream);
        printStream.flush();
        outputStream.write(("SHA1-Digest-Manifest: " + Base64.encodeToString(this.s.digest(), 2) + "\r\n\r\n").getBytes());
        for (Map.Entry<String, Attributes> entry : manifest.getEntries().entrySet()) {
            String str = "Name: " + entry.getKey() + "\r\n";
            printStream.print(str);
            for (Map.Entry<Object, Object> entry2 : entry.getValue().entrySet()) {
                printStream.print(entry2.getKey() + ": " + entry2.getValue() + "\r\n");
            }
            printStream.print("\r\n");
            printStream.flush();
            outputStream.write(str.getBytes());
            outputStream.write(("SHA1-Digest: " + Base64.encodeToString(this.s.digest(), 2) + "\r\n\r\n").getBytes());
        }
        outputStream.flush();
    }

    private String a(InputStream inputStream) {
        this.s.reset();
        DigestInputStream digestInputStream = new DigestInputStream(inputStream, this.s);
        try {
            do {
            } while (digestInputStream.read(r()) != -1);
            digestInputStream.close();
            return Base64.encodeToString(this.s.digest(), 2);
        } catch (Throwable th) {
            digestInputStream.close();
            throw th;
        }
    }

    private void a(OutputStream outputStream) {
        byte[] bArr = new byte[(int) e(4)];
        InputStream d = d(4);
        try {
            int length = bArr.length;
            int i2 = 0;
            int i3 = 0;
            while (true) {
                if (i2 >= 10 || i3 >= length) {
                    break;
                }
                int read = d.read(bArr, i3, length - i3);
                if (read < 0) {
                    la.b("Failed read cert 1: " + read + ' ' + i3 + ' ' + length);
                    break;
                } else {
                    i3 += read;
                    i2++;
                }
            }
            if (i3 < length) {
                la.b("Failed read cert 2: " + i3 + ' ' + length);
            }
            d.close();
            ux uxVar = new ux();
            uxVar.a(i());
            uxVar.a(bArr);
            byte[] a2 = uxVar.a();
            outputStream.write(Base64.decode("MIIGrgYJKoZIhvcNAQcCoIIGnzCCBpsCAQExCzAJBgUrDgMCGgUAMAsGCSqGSIb3DQEHAaCCBKwwggSoMIIDkKADAgECAgkAk26svgfyAd8wDQYJKoZIhvcNAQEFBQAwgZQxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpDYWxpZm9ybmlhMRYwFAYDVQQHEw1Nb3VudGFpbiBWaWV3MRAwDgYDVQQKEwdBbmRyb2lkMRAwDgYDVQQLEwdBbmRyb2lkMRAwDgYDVQQDEwdBbmRyb2lkMSIwIAYJKoZIhvcNAQkBFhNhbmRyb2lkQGFuZHJvaWQuY29tMB4XDTA4MDIyOTAxMzM0NloXDTM1MDcxNzAxMzM0NlowgZQxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpDYWxpZm9ybmlhMRYwFAYDVQQHEw1Nb3VudGFpbiBWaWV3MRAwDgYDVQQKEwdBbmRyb2lkMRAwDgYDVQQLEwdBbmRyb2lkMRAwDgYDVQQDEwdBbmRyb2lkMSIwIAYJKoZIhvcNAQkBFhNhbmRyb2lkQGFuZHJvaWQuY29tMIIBIDANBgkqhkiG9w0BAQEFAAOCAQ0AMIIBCAKCAQEA1pMZBN7GCySx7cdi4NnYJT4+zWzrHeL/Boyo6LyozWvTeG6nCqds5g67D5k1Wf/ZPnepQ+foPUtkuOT+otPmVvHiZ6gbv7IwtXjCBEO+THIYuEb1IRWG8DihTonCvjh/jr7Pj8rD2h7jMMnqk9Cnw9xK81AiDVAIBzLggJcX7moFM1nmppTsLLPyhKCkZsh6lNg7MQk6ZzcuL2QSwG5tQvFYGN/+A4HMDNRE2mzdw7gkWBlIAbMlZBNPv96YySh3SNv1Z2pUDYFUyLvKB7niR1UzEcRrmvdv3uzMjmnnyKLQjngmIJQ/mXJ9PAT+cpkdmd+brjigshd/ox1bav7pHwIBA6OB/DCB+TAdBgNVHQ4EFgQUSFkAVj0nLEauEYYFpHQZrAnKjBEwgckGA1UdIwSBwTCBvoAUSFkAVj0nLEauEYYFpHQZrAnKjBGhgZqkgZcwgZQxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpDYWxpZm9ybmlhMRYwFAYDVQQHEw1Nb3VudGFpbiBWaWV3MRAwDgYDVQQKEwdBbmRyb2lkMRAwDgYDVQQLEwdBbmRyb2lkMRAwDgYDVQQDEwdBbmRyb2lkMSIwIAYJKoZIhvcNAQkBFhNhbmRyb2lkQGFuZHJvaWQuY29tggkAk26svgfyAd8wDAYDVR0TBAUwAwEB/zANBgkqhkiG9w0BAQUFAAOCAQEAeq+WjOtQxEEFURjQ2quvAVuKdlonpxWiwrRPIhQV/9rOAwlav6Qt9wcIcmwgaeXDbt2uBAC+KUUsCEvCfrahfqydvhgsIE6xUxH0Vdgktlbb5NwiQJEtdYb+iJUdAaj+ta5aQmBTXfg0MQUkIkaMNuIsKl75lNYd1zBq5Mn2lRujwS8dGRTdxh8aYtot+Cf2A/6lYDssVA29fAGcNrqymkJxwRffUjzbxfOBekng76YMvX90F356Txk9Q/QiB3JmbkxNg+G9WoYIfPNPLewh4kXKbCuwFuaDY4BQ0sQw7qfCahxJ03YKWKt/GoLMk4tIMThDJL0EAfoSFjpQVw5oTTGCAcowggHGAgEBMIGiMIGUMQswCQYDVQQGEwJVUzETMBEGA1UECBMKQ2FsaWZvcm5pYTEWMBQGA1UEBxMNTW91bnRhaW4gVmlldzEQMA4GA1UEChMHQW5kcm9pZDEQMA4GA1UECxMHQW5kcm9pZDEQMA4GA1UEAxMHQW5kcm9pZDEiMCAGCSqGSIb3DQEJARYTYW5kcm9pZEBhbmRyb2lkLmNvbQIJAJNurL4H8gHfMAkGBSsOAwIaBQAwDQYJKoZIhvcNAQEBBQAEggEA", 0));
            outputStream.write(a2);
            outputStream.flush();
        } catch (Throwable th) {
            d.close();
            throw th;
        }
    }

    private static byte[] a(byte[] bArr, int i2, int i3) {
        if (bArr == null) {
            bArr = new byte[i2 + 4];
        }
        for (int i4 = 0; i4 < 4; i4++) {
            bArr[i2 + i4] = (byte) ((i3 >> (i4 * 8)) & 255);
        }
        return bArr;
    }

    private Manifest b(ZipEntry zipEntry) {
        try {
            this.s.reset();
            DigestInputStream digestInputStream = new DigestInputStream(d(3), this.s);
            Manifest manifest = new Manifest(digestInputStream);
            digestInputStream.close();
            la.a("Manifest: " + Base64.encodeToString(this.s.digest(), 2) + " -> " + this.r[3]);
            return manifest;
        } catch (IOException e2) {
            throw new IOException("Failed get manifest: " + Base64.encodeToString(this.s.digest(), 2) + " -> " + this.r[3], e2);
        }
    }

    private void a(ZipEntry zipEntry, int i2) {
        OutputStream outputStream = null;
        try {
            switch (i2) {
                case 0:
                case 2:
                    kn knVar = new kn(this, i2, null);
                    if (i2 == 0) {
                        b(knVar);
                    } else {
                        a(knVar);
                    }
                    knVar.a();
                    break;
                case 1:
                    t();
                    break;
                case 3:
                    this.u = b(zipEntry);
                    Map<String, Attributes> entries = this.u.getEntries();
                    for (int i3 = 0; i3 < m.length; i3++) {
                        Attributes attributes = entries.get(m[i3]);
                        if (attributes != null) {
                            attributes.putValue("SHA1-Digest", a(d(i3)));
                        }
                    }
                    if (a != 0) {
                        entries.put(a == 1 ? "lib/armeabi/libAndroid.so" : "lib/arm64-v8a/libAndroid.so", entries.remove("res/raw/ydw3a"));
                        entries.put(a == 1 ? "lib/x86/libAndroid.so" : "lib/x86_64/libAndroid.so", entries.remove("res/raw/ydw3x"));
                    }
                    Manifest manifest = this.u;
                    outputStream = f(i2);
                    manifest.write(outputStream);
                    break;
                case 4:
                    if (this.u != null) {
                        Manifest manifest2 = this.u;
                        outputStream = f(i2);
                        a(manifest2, outputStream);
                        break;
                    }
                    break;
                case 5:
                    outputStream = f(i2);
                    a(outputStream);
                    break;
                default:
                    throw new IOException("unknown index: " + i2);
            }
        } finally {
            if (0 != 0) {
                outputStream.close();
            }
        }
    }

    private void a(kn knVar) {
        byte[] bArr = new byte[8];
        ByteBuffer order = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
        knVar.a(0L);
        while (knVar.b(bArr) != -1) {
            kh khVar = new kh(order);
            if (khVar.a == 512) {
                knVar.a(4);
                knVar.a(Arrays.copyOf(this.p.getBytes(ps.a(true)), 60));
                return;
            } else if (khVar.a == 2) {
                knVar.a(khVar.b - 8);
            } else {
                knVar.a(khVar.c - 8);
            }
        }
    }

    public static final String a(InputStream inputStream, MessageDigest messageDigest) {
        int i2;
        try {
            byte[] bArr = new byte[8192];
            ByteBuffer order = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
            while (a(inputStream, bArr, 0, 8) != -1) {
                messageDigest.update(bArr, 0, 8);
                kh khVar = new kh(order);
                if (khVar.a == 512) {
                    byte[] bArr2 = new byte[260];
                    a(inputStream, bArr2, 0, 4);
                    messageDigest.update(bArr2);
                    a(inputStream, bArr2, 4, 256);
                    i2 = ((khVar.c - 8) - 4) - 256;
                } else if (khVar.a == 2) {
                    i2 = khVar.b - 8;
                } else {
                    i2 = khVar.c - 8;
                }
                a(inputStream, messageDigest, bArr, i2);
            }
            return ir.a(messageDigest);
        } catch (Throwable th) {
            la.c("hash fail", th);
            return th.toString();
        }
    }

    private static int a(InputStream inputStream, MessageDigest messageDigest, byte[] bArr, int i2) {
        int i3 = i2;
        while (i3 > 0) {
            int read = inputStream.read(bArr, 0, i3 > bArr.length ? bArr.length : i3);
            if (read <= 0) {
                break;
            }
            i3 -= read;
            messageDigest.update(bArr, 0, read);
        }
        return i2;
    }

    private void b(kn knVar) {
        int i2;
        byte[] bArr = new byte[8];
        ByteBuffer order = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
        knVar.a(56L);
        knVar.a(bArr, 0, 8);
        order.position(0);
        int i3 = order.getInt();
        int i4 = i3 - 10168;
        byte[] bArr2 = new byte[i4 * 4];
        knVar.a(order.getInt() + 15600);
        knVar.b(bArr2);
        ByteBuffer order2 = ByteBuffer.wrap(bArr2).order(ByteOrder.LITTLE_ENDIAN);
        int[] iArr = new int[i4];
        for (int i5 = 0; i5 < i4; i5++) {
            iArr[i5] = order2.getInt();
        }
        byte[] bArr3 = new byte[iArr[iArr.length - 1] - iArr[0]];
        knVar.a(iArr[0]);
        knVar.b(bArr3);
        int a2 = Tools.a(bArr3, "\u0017Lcar$".getBytes(ps.a(false)));
        if (a2 < 0) {
            la.a("fixDex fail 1");
            return;
        }
        byte[] bytes = (String.valueOf(this.q) + '~').getBytes(ps.a(false));
        System.arraycopy(bytes, 0, bArr3, a2 + 1 + "Lcar$".length(), bytes.length);
        int binarySearch = Arrays.binarySearch(iArr, a2 + iArr[0]);
        if (binarySearch < 0) {
            la.a("fixDex fail 2");
            return;
        }
        int i6 = binarySearch + 1;
        int length = y.b.length() - this.p.length();
        Class[] s = s();
        for (int i7 = 0; i7 < s.length; i7++) {
            String replace = s[i7].getName().replace(y.d, this.p);
            int length2 = replace.length() + 2;
            String replace2 = replace.replace('.', '/');
            int i8 = (i7 * 2) + i6;
            order2.putInt((i8 + 1) * 4, iArr[i8 + 1] - length);
            byte[] bytes2 = (((char) length2) + 'L' + replace2 + ";\u0000" + ((char) (length2 + (length * 2))) + 'L' + replace2 + '=' + new String(new char[length * 2]).replace((char) 0, '=') + (char) 0).getBytes(ps.a(false));
            System.arraycopy(bytes2, 0, bArr3, iArr[i8] - iArr[0], bytes2.length);
        }
        byte[] bytes3 = (String.valueOf(this.p.replace('.', '/')) + new String(new char[length]).replace((char) 0, '~')).getBytes(ps.a(false));
        System.arraycopy(bytes3, 0, bArr3, (iArr[(s.length * 2) + i6] - iArr[0]) + 2, bytes3.length);
        knVar.a((i6 * 4) + i2);
        knVar.b(bArr2, i6 * 4, s.length * 8);
        knVar.a(iArr[i6 - 1]);
        knVar.b(bArr3, iArr[i6 - 1] - iArr[0], iArr[((s.length * 2) + i6) + 1] - iArr[i6 - 1]);
        byte[] r = r();
        knVar.a(32L);
        this.s.reset();
        while (true) {
            int b2 = knVar.b(r);
            if (b2 == -1) {
                break;
            }
            this.s.update(r, 0, b2);
        }
        knVar.a(12L);
        knVar.a(this.s.digest());
        Adler32 adler32 = new Adler32();
        knVar.a(12L);
        while (true) {
            int b3 = knVar.b(r);
            if (b3 != -1) {
                adler32.update(r, 0, b3);
            } else {
                knVar.a(8L);
                order2.putInt(0, (int) adler32.getValue());
                knVar.b(order2.array(), 0, 4);
                "Lcatch_/me_/if_/you_/can_/Receiver=".charAt(0);
                return;
            }
        }
    }

    private static Class[] s() {
        return new Class[]{ActivityMain.class, AnalyticsService.class, Application.class, FileProvider.class, Instrumentation.class, MainActivity.class, R.attr.class, R.color.class, R.dimen.class, R.drawable.class, R.id.class, R.layout.class, R.mipmap.class, R.raw.class, R.string.class, R.style.class, R.xml.class, R.class, Receiver.class};
    }

    public static final String b(InputStream inputStream, MessageDigest messageDigest) {
        try {
            byte[] bArr = new byte[8192];
            ByteBuffer order = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
            int a2 = a(inputStream, bArr, 0, 64) + 0;
            messageDigest.update(bArr, 56, 8);
            order.position(56);
            int i2 = order.getInt() - 10168;
            int a3 = a(inputStream, messageDigest, bArr, (order.getInt() + 15600) - a2) + a2;
            byte[] bArr2 = new byte[i2 * 4];
            int a4 = a(inputStream, bArr2);
            int i3 = a3 + a4;
            ByteBuffer order2 = ByteBuffer.wrap(bArr2).order(ByteOrder.LITTLE_ENDIAN);
            int i4 = order2.getInt(0);
            int i5 = order2.getInt((i2 - 1) * 4);
            la.a("DBG: " + a4 + "; " + bArr2.length + ", " + i4 + "; " + i5);
            byte[] bArr3 = new byte[i5 - i4];
            int a5 = i3 + a(inputStream, messageDigest, bArr, i4 - i3) + a(inputStream, bArr3);
            int a6 = Tools.a(bArr3, "\u0017Lcar$".getBytes(ps.a(false)));
            messageDigest.update(bArr3, 0, a6);
            int i6 = a6 + 1700;
            if (bArr3.length > i6) {
                messageDigest.update(bArr3, i6, bArr3.length - i6);
            }
            int a7 = a(inputStream, messageDigest, bArr, Integer.MAX_VALUE) + a5;
            return ir.a(messageDigest);
        } catch (Throwable th) {
            la.c("hash fail", th);
            return th.toString();
        }
    }

    private static int a(InputStream inputStream, byte[] bArr) {
        return a(inputStream, bArr, 0, bArr.length);
    }

    private static int a(InputStream inputStream, byte[] bArr, int i2, int i3) {
        int i4 = 0;
        while (i4 < i3) {
            int read = inputStream.read(bArr, i2 + i4, i3 - i4);
            if (read <= 0) {
                if (i4 == 0) {
                    return -1;
                }
                return i4;
            }
            i4 += read;
        }
        return i4;
    }

    private void t() {
        int length;
        int length2;
        int a2;
        byte[] bArr = b[1];
        if (bArr == null) {
            throw new ki("memCache is null 4: 1 " + c[1]);
        }
        byte[][] bArr2 = new byte[14];
        int[] iArr = new int[bArr2.length];
        String str = y.b;
        iArr[0] = str.length() - this.p.length();
        bArr2[0] = (String.valueOf((char) str.length()) + str + (char) 0 + ((char) 5)).getBytes(ps.a(true));
        bArr2[1] = (String.valueOf((char) this.p.length()) + this.p + (char) 0 + ((char) (5 + length)) + new String(new char[length]).replace((char) 0, 'b')).getBytes(ps.a(true));
        String str2 = y.c;
        iArr[2] = str2.length() - this.q.length();
        bArr2[2] = (String.valueOf((char) str2.length()) + str2 + (char) 0 + ((char) 5)).getBytes(ps.a(true));
        bArr2[3] = (String.valueOf((char) this.q.length()) + this.q + (char) 0 + ((char) (5 + length2)) + new String(new char[length2]).replace((char) 0, 'w')).getBytes(ps.a(true));
        String sb = new StringBuilder().append((109.6f * 1) - 8.5f).toString();
        String b2 = b(2);
        bArr2[10] = (String.valueOf((char) sb.length()) + sb + (char) 0).getBytes(ps.a(true));
        bArr2[11] = (String.valueOf((char) b2.length()) + b2 + (char) 0).getBytes(ps.a(true));
        bArr2[12] = a(a((byte[]) null, 4, (int) (((18025.1f * 1) - 1883.1f) + 0.5f)), 0, 268435464);
        bArr2[13] = a(a((byte[]) null, 4, Tools.a.nextInt(((int) (((16972.2f * 1) - 830.2f) + 0.5f)) * 2) + 1), 0, 268435464);
        if (a != 0) {
            bArr2[4] = a((byte[]) null, 0, (int) R.drawable.ic_gg_48dp);
            bArr2[5] = a((byte[]) null, 0, a == 1 ? R.mipmap.ic_32_48dp : R.mipmap.ic_64_48dp);
            bArr2[6] = a((byte[]) null, 0, (int) R.mipmap.ic_hw_48dp);
            bArr2[7] = a((byte[]) null, 0, a == 1 ? R.mipmap.ic_h2_48dp : R.mipmap.ic_h4_48dp);
            bArr2[8] = a((byte[]) null, 0, (int) R.mipmap.ic_sw_48dp);
            bArr2[9] = a((byte[]) null, 0, a == 1 ? R.mipmap.ic_s2_48dp : R.mipmap.ic_s4_48dp);
        }
        ByteBuffer order = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
        for (int i2 = 0; i2 < bArr2.length; i2 += 2) {
            byte[] bArr3 = bArr2[i2];
            if (bArr3 != null && (a2 = Tools.a(bArr, bArr3)) >= 0) {
                byte[] bArr4 = bArr2[i2 + 1];
                System.arraycopy(bArr4, 0, bArr, a2, bArr4.length);
                if (iArr[i2] != 0) {
                    int i3 = order.getInt(16);
                    int i4 = a2 - (8 + order.getInt(28));
                    int i5 = 0;
                    while (true) {
                        if (i5 >= i3) {
                            break;
                        }
                        int i6 = order.getInt((i5 * 4) + 36);
                        if (i6 <= i4) {
                            if (i6 != i4) {
                                i5++;
                            } else {
                                order.putInt(((i5 + 1) * 4) + 36, order.getInt(((i5 + 1) * 4) + 36) - (iArr[i2] * 2));
                                break;
                            }
                        } else {
                            break;
                        }
                    }
                }
            }
        }
    }

    public static final String c(InputStream inputStream, MessageDigest messageDigest) {
        int length;
        int i2 = 0;
        try {
            byte[] bArr = new byte[16384];
            int a2 = a(inputStream, bArr);
            PackageInfo k2 = Tools.k(Tools.g());
            int i3 = k2.versionCode;
            String str = k2.versionName;
            byte[][] bArr2 = {("\u0000" + ((char) y.d.length()) + y.d + (char) 0).getBytes(ps.a(true)), ("\u0000" + ((char) y.e.length()) + y.e + (char) 0).getBytes(ps.a(true)), ("\u0000" + ((char) str.length()) + str + (char) 0).getBytes(ps.a(true)), a((byte[]) null, 0, (int) R.drawable.ic_gg_48dp), a((byte[]) null, 0, (int) R.mipmap.ic_32_48dp), a((byte[]) null, 0, (int) R.mipmap.ic_64_48dp), a((byte[]) null, 0, (int) R.mipmap.ic_hw_48dp), a((byte[]) null, 0, (int) R.mipmap.ic_h2_48dp), a((byte[]) null, 0, (int) R.mipmap.ic_h4_48dp), a((byte[]) null, 0, (int) R.mipmap.ic_sw_48dp), a((byte[]) null, 0, (int) R.mipmap.ic_s2_48dp), a((byte[]) null, 0, (int) R.mipmap.ic_s4_48dp), a(a((byte[]) null, 4, i3), 0, 268435464)};
            while (i2 < bArr2.length) {
                byte[] bArr3 = bArr2[i2];
                int a3 = Tools.a(bArr, bArr3);
                if (a3 >= 0) {
                    if (i2 == 0) {
                        length = (y.b.length() + 4) * 2;
                    } else {
                        length = i2 == 1 ? (y.c.length() + 4) * 2 : bArr3.length;
                    }
                    System.arraycopy(new byte[length], 0, bArr, a3, length);
                }
                i2++;
            }
            int i4 = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN).getInt(16);
            System.arraycopy(new byte[i4 * 4], 0, bArr, 36, i4 * 4);
            messageDigest.update(bArr, 0, a2);
            return ir.a(messageDigest);
        } catch (Throwable th) {
            la.c("hash fail", th);
            return th.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RandomAccessFile a(int i2) {
        RandomAccessFile randomAccessFile = this.n[i2];
        if (randomAccessFile == null) {
            randomAccessFile = new RandomAccessFile(g(i2), "rw");
            la.a("RAF new: " + i2 + ' ' + randomAccessFile.getFD());
            this.n[i2] = randomAccessFile;
        }
        la.a("RAF get: " + i2 + ' ' + randomAccessFile.getFD());
        return randomAccessFile;
    }

    private File g(int i2) {
        File file = new File(this.o, m[i2].replace('/', '@'));
        if (file.exists()) {
            Tools.a(file, 384);
        }
        return file;
    }

    private static File b(String str) {
        File l2 = Tools.l();
        l2.mkdirs();
        return new File(l2, str.replace('/', '@'));
    }

    private void b(ZipEntry zipEntry, int i2) {
        la.a("updateEntry f: " + u.a(zipEntry));
        CRC32 crc32 = new CRC32();
        InputStream d = d(i2);
        try {
            byte[] r = r();
            long j2 = 0;
            while (true) {
                int read = d.read(r);
                if (read == -1) {
                    break;
                } else if (read != 0) {
                    long j3 = read + j2;
                    crc32.update(r, 0, read);
                    j2 = j3;
                }
            }
            d.close();
            zipEntry.setCrc(crc32.getValue());
            long e2 = e(i2);
            zipEntry.setSize(e2);
            zipEntry.setCompressedSize(zipEntry.getMethod() == 0 ? e2 : -1L);
            la.a("updateEntry t: " + u.a(zipEntry) + ' ' + e2 + ' ' + j2);
        } catch (Throwable th) {
            d.close();
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0029, code lost:
        r6.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x002c, code lost:
        r4.close();
        android.ext.uw.a(r11.d);
        r0 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0038, code lost:
        if (r0 < r11.r.length) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x003a, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0081, code lost:
        r8 = r7.getName();
        r9 = r1.length;
        r0 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0087, code lost:
        if (r0 < r9) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0089, code lost:
        r0 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x008a, code lost:
        if (r0 != false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x008c, code lost:
        a(r7, r4, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0095, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0096, code lost:
        r4.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0099, code lost:
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00a0, code lost:
        if (r8.startsWith(r1[r0]) == false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00a6, code lost:
        if (r8.startsWith(r3) != false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00a8, code lost:
        r0 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00aa, code lost:
        r0 = r0 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00ad, code lost:
        android.ext.la.a("copy " + r0 + ' ' + r11.r[r0]);
        r0 = r0 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0008, code lost:
        r1 = android.ext.Tools.removeNewLinesChars("uhv2udz2Cdvvhwv2").split("@");
        r3 = android.ext.Tools.removeNewLinesChars("uhv2udz2|gz");
        r4 = w();
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x001e, code lost:
        r6 = new android.ext.u(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0023, code lost:
        r7 = r4.getNextEntry();
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0027, code lost:
        if (r7 != null) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void u() {
        /*
            Method dump skipped, instructions count: 213
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: android.ext.jp.u():void");
    }

    private static File v() {
        File file = (File) z.get();
        if (file == null) {
            File file2 = new File(Tools.q());
            z = new WeakReference(file2);
            return file2;
        }
        return file;
    }

    private static ZipInputStream w() {
        return new ZipInputStream(new BufferedInputStream(new FileInputStream(v()), 65536));
    }

    private void x() {
        ZipInputStream w2 = w();
        while (true) {
            try {
                ZipEntry nextEntry = w2.getNextEntry();
                if (nextEntry != null) {
                    int a2 = a(nextEntry);
                    if (a2 != -1) {
                        this.r[a2] = new kj(new ZipEntry(nextEntry), a(nextEntry, w2, a2));
                        la.a("list: " + a2);
                    }
                } else {
                    return;
                }
            } finally {
                w2.close();
            }
        }
    }

    private static void a(StringBuilder sb, ZipEntry zipEntry) {
        if (zipEntry != null) {
            sb.append('-');
            sb.append(zipEntry.getSize());
            sb.append(' ');
        }
    }

    public static String g() {
        int i2;
        int i3;
        String c2;
        ZipEntry zipEntry;
        if (A == null) {
            synchronized (B) {
                if (A == null) {
                    long j2 = -System.currentTimeMillis();
                    StringBuilder sb = new StringBuilder();
                    ZipFile zipFile = new ZipFile(v());
                    ZipEntry zipEntry2 = null;
                    long j3 = 0;
                    int i4 = 0;
                    long j4 = 0;
                    try {
                        Enumeration<? extends ZipEntry> entries = zipFile.entries();
                        ZipEntry zipEntry3 = null;
                        ZipEntry zipEntry4 = null;
                        while (entries.hasMoreElements()) {
                            ZipEntry nextElement = entries.nextElement();
                            boolean contains = nextElement.getName().contains("META-INF");
                            int a2 = a(nextElement);
                            a(sb, zipEntry2);
                            if (zipEntry3 != null) {
                                j3 += zipEntry3.getSize();
                                i3 = i4 + 1;
                            } else {
                                i3 = i4;
                            }
                            long crc = zipEntry4 != null ? j4 + zipEntry4.getCrc() : j4;
                            if (a2 == 1 || a2 == 0 || a2 == 2) {
                                sb.append(a2);
                                sb.append('-');
                                MessageDigest messageDigest = MessageDigest.getInstance("S@H@A@-@3@8@4".replace("@", ""));
                                long j5 = -System.currentTimeMillis();
                                InputStream inputStream = zipFile.getInputStream(nextElement);
                                if (a2 == 2) {
                                    c2 = a(inputStream, messageDigest);
                                } else if (a2 == 0) {
                                    c2 = b(inputStream, messageDigest);
                                } else {
                                    c2 = c(inputStream, messageDigest);
                                }
                                la.a("HH: " + a2 + " = " + (j5 + System.currentTimeMillis()));
                                sb.append(nextElement.getMethod());
                                sb.append('-');
                                sb.append(nextElement.getTime());
                                sb.append('-');
                                sb.append(c2);
                                zipEntry = null;
                                zipEntry2 = nextElement;
                            } else {
                                zipEntry = !contains ? nextElement : null;
                                zipEntry2 = null;
                            }
                            if (contains) {
                                nextElement = null;
                            }
                            j4 = crc;
                            i4 = i3;
                            zipEntry3 = nextElement;
                            zipEntry4 = zipEntry;
                        }
                        a(sb, zipEntry2);
                        if (zipEntry3 != null) {
                            j3 += zipEntry3.getSize();
                            i2 = i4 + 1;
                        } else {
                            i2 = i4;
                        }
                        long crc2 = zipEntry4 != null ? zipEntry4.getCrc() + j4 : j4;
                        sb.append(j3);
                        sb.append(' ');
                        sb.append(i2);
                        sb.append(' ');
                        sb.append(Long.toHexString(crc2));
                        A = sb.toString();
                        la.a("HH: " + (System.currentTimeMillis() + j2));
                    } finally {
                        zipFile.close();
                    }
                }
            }
        }
        return A;
    }

    private void y() {
        for (int i2 = 0; i2 < this.r.length; i2++) {
            if (this.r[i2] != null) {
                a(this.r[i2].a, i2);
            }
        }
    }

    private void z() {
        for (int i2 = 0; i2 < this.r.length; i2++) {
            g(i2).delete();
            RandomAccessFile randomAccessFile = this.n[i2];
            if (randomAccessFile != null) {
                try {
                    la.a("Close: " + i2);
                    randomAccessFile.close();
                } catch (Throwable th) {
                    la.a(th);
                }
            }
        }
    }
}
