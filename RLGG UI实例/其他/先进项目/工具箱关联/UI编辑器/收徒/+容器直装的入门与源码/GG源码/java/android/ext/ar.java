package android.ext;

import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.os.Process;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;
import catch_.me_.if_.you_.can_.ActivityMain;
import catch_.me_.if_.you_.can_.MainActivity;
import catch_.me_.if_.you_.can_.R;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.OutputStream;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.GregorianCalendar;

/* compiled from: src */
/* loaded from: classes.dex */
public class ar extends android.fix.a implements View.OnClickListener {
    public static volatile ar d;
    public static volatile Context e;
    public static volatile Context f;
    private static volatile boolean n;
    volatile boolean g = true;
    private volatile boolean i = false;
    private WeakReference j = new WeakReference(null);
    private WeakReference k = new WeakReference(null);
    private WeakReference l = new WeakReference(null);
    private StringBuilder m = new StringBuilder();
    public static volatile boolean a = false;
    public static volatile boolean b = true;
    public static volatile boolean c = false;
    public static volatile boolean h = true;

    static {
        la.a("BaseActivity clinit");
        y.a();
        ho.b();
        n = false;
    }

    public static Bundle a() {
        Bundle bundle = new Bundle();
        bundle.putBoolean("hw", b);
        bundle.putInt("uid", Process.myUid());
        bundle.putBoolean("vspace", Config.C);
        if (c) {
            la.a("removeInstaller: to bundle");
            bundle.putBoolean("reminst", true);
        }
        return bundle;
    }

    public static void a(Bundle bundle) {
        if (bundle != null) {
            if (bundle.containsKey("reminst")) {
                la.a("removeInstaller: from bundle");
                c = true;
            }
            if (bundle.containsKey("hw")) {
                b = bundle.getBoolean("hw");
            }
            if (bundle.containsKey("uid")) {
                int i = bundle.getInt("uid");
                int myUid = Process.myUid();
                if (bundle.getBoolean("vspace") && myUid != i) {
                    la.a("Kill by diff uids: " + myUid + " != " + i);
                    lh.l();
                }
            }
        }
    }

    public static String b() {
        return b ? ActivityMain.class.getName() : MainActivity.class.getName();
    }

    public ar() {
        boolean z = this instanceof MainActivity;
        if (z || d == null) {
            d = this;
        }
        if (z || f == null) {
            f = this;
        }
        b = z ? false : true;
        la.a("BaseActivity init: " + this);
        ho.b();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view != null) {
            switch (view.getId()) {
                case R.id.help /* 2131427347 */:
                    ConfigListAdapter.g();
                    return;
                case R.id.language /* 2131427383 */:
                    ConfigListAdapter.k();
                    return;
                case R.id.fix_it /* 2131427384 */:
                    try {
                        a(f).show();
                        return;
                    } catch (Throwable th) {
                        la.a(th);
                        i.c(a(Tools.e()));
                        return;
                    }
                case R.id.btn_stop_service /* 2131427385 */:
                    la.a("Pushed exit");
                    finish();
                    new ib(100).onClick(null, 0);
                    return;
                case R.id.check /* 2131427386 */:
                    new bq(this).a();
                    return;
                case R.id.btn_start_usage /* 2131427387 */:
                    if (rv.a) {
                        try {
                            if (!moveTaskToBack(true)) {
                                finish();
                            }
                        } catch (Throwable th2) {
                            la.a(th2);
                        }
                    }
                    MainService.instance.d();
                    return;
                default:
                    return;
            }
        }
    }

    private AlertDialog a(Context context) {
        AlertDialog.Builder customTitle = i.a(context).setCustomTitle(Tools.d((int) R.string.fix_it));
        String[] strArr = new String[15];
        strArr[0] = qk.a(rv.a ? R.string.disable_floating_windows : R.string.enable_floating_windows);
        strArr[1] = qk.a((Config.A & 4) != 0 ? R.string.work_without_selinux : R.string.work_with_selinux);
        strArr[2] = qk.a((int) R.string.change_float_type);
        strArr[3] = qk.a((int) R.string.reset_float_type);
        strArr[4] = Config.a((int) R.id.config_use_notification).toString();
        strArr[5] = Config.a((int) R.id.config_hot_key).toString();
        strArr[6] = Config.a((int) R.id.config_context_source).toString();
        strArr[7] = qk.a((int) R.string.reset_ignore);
        strArr[8] = qk.a((int) R.string.su_command);
        strArr[9] = qk.a((int) R.string.record_logcat);
        strArr[10] = qk.a((int) R.string.show_debug_info);
        strArr[11] = Config.a((int) R.id.config_prevent_unload).toString();
        strArr[12] = Config.a((int) R.id.config_acceleration).toString();
        strArr[13] = Config.a((int) R.id.config_vspace_root).toString();
        strArr[14] = Config.a((int) R.id.config_number_locale).toString();
        return customTitle.setItems(strArr, new as(this)).setNegativeButton(qk.a((int) R.string.cancel), (DialogInterface.OnClickListener) null).create();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        ct a2 = Config.a((int) R.id.config_context_source);
        a2.a(new av(this, a2));
        a2.d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(OutputStream outputStream, String str, String str2) {
        try {
            outputStream.write(("\n\n" + new GregorianCalendar().getTime().toString() + '\n' + str + '\n' + gs.f() + '\n' + lh.o() + '\n' + Tools.e().getFilesDir().getAbsolutePath() + '\n' + str2 + "\n\n").getBytes());
            outputStream.flush();
        } catch (Throwable th) {
            la.b("Fail write logcat header", th);
        }
    }

    void d() {
        String p = p();
        if (Config.a((int) R.id.record_logcat).d == ((int) (((16480.2f * 1) - 338.2f) + 0.5f))) {
            Config.a((int) R.id.record_logcat).d = 0;
            Config.c();
            new gr(new aw(this, p), "RecordLogcat").start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String e() {
        String str;
        String r = Tools.r();
        StringBuilder sb = new StringBuilder("GG_logcat_");
        if (Config.C) {
            str = "v";
        } else {
            str = Config.vSpaceReal ? "R" : "r";
        }
        return new File(r, sb.append(str).append((115.4f * 1) - 14.3f).append('_').append((int) (((16467.3f * 1) - 325.3f) + 0.5f)).append('_').append(Build.VERSION.RELEASE).append('_').append(Build.VERSION.SDK_INT).append(".log").toString()).getAbsolutePath();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void f() {
        i.a(i.a(f).setMessage(Tools.a(qk.a((int) R.string.record_logcat_info), e())).setPositiveButton(qk.a((int) R.string.ok), new ax()).setNegativeButton(qk.a((int) R.string.cancel), (DialogInterface.OnClickListener) null));
    }

    private static void a(StringBuilder sb, int i) {
        la.a("START: " + i);
        sb.append('\n');
        sb.append(i);
        sb.append(": ");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void g() {
        StringBuilder sb = new StringBuilder();
        a(sb, 1);
        try {
            sb.append(d.getFilesDir());
        } catch (Throwable th) {
            sb.append(th);
        }
        a(sb, 2);
        int myUid = Process.myUid();
        try {
            sb.append(myUid);
        } catch (Throwable th2) {
            sb.append(th2);
        }
        a(sb, 3);
        try {
            sb.append(Arrays.toString(d.getPackageManager().getPackagesForUid(myUid)));
        } catch (Throwable th3) {
            sb.append(th3);
        }
        a(sb, 4);
        try {
            sb.append(Arrays.toString(d.getPackageManager().getPackageGids(d.getPackageName())));
        } catch (Throwable th4) {
            sb.append(th4);
        }
        a(sb, 5);
        try {
            sb.append(d.getPackageManager().getPackageUid(d.getPackageName(), 0));
        } catch (Throwable th5) {
            sb.append(th5);
        }
        a(sb, 6);
        try {
            sb.append(d.checkCallingOrSelfPermission(Tools.removeNewLinesChars("dqgurlg1shuplvvlrq1UHDGbVPV")));
        } catch (Throwable th6) {
            sb.append(th6);
        }
        sb.append(' ');
        sb.append(Tools.s().getInt("odd-vspace", 0));
        a(sb, 7);
        try {
            sb.append(Build.VERSION.SDK_INT);
        } catch (Throwable th7) {
            sb.append(th7);
        }
        a(sb, 8);
        try {
            String str = String.valueOf(Tools.a.nextInt()) + ".txt";
            File file = new File(d.getFilesDir(), str);
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            fileOutputStream.write(new byte[4096]);
            fileOutputStream.flush();
            File file2 = new File("/proc/self/fd/" + android.lang.m.a(fileOutputStream.getFD()));
            sb.append(file2.getPath());
            sb.append(" -> ");
            sb.append(file2.getCanonicalPath());
            FileInputStream fileInputStream = new FileInputStream(file);
            MappedByteBuffer map = fileInputStream.getChannel().map(FileChannel.MapMode.READ_ONLY, 0L, 4096L);
            a(sb, str);
            map.capacity();
            fileInputStream.close();
            sb.append("\nN: '");
            sb.append(Tools.m(file.getAbsolutePath()));
            sb.append('\'');
            fileOutputStream.close();
            file.delete();
        } catch (Throwable th8) {
            sb.append(th8);
        }
        a(sb, 9);
        try {
            a(sb, d.getPackageName());
        } catch (Throwable th9) {
            sb.append(th9);
        }
        a(sb, 10);
        try {
            sb.append(ConfigListAdapter.i());
        } catch (Throwable th10) {
            sb.append(th10);
        }
        a(sb, 11);
        try {
            File file3 = new File("/proc/self/exe");
            sb.append(file3.getPath());
            sb.append(" -> ");
            sb.append(file3.getCanonicalPath());
        } catch (Throwable th11) {
            sb.append(th11);
        }
        a(sb, 12);
        try {
            sb.append(Process.myPid());
        } catch (Throwable th12) {
            sb.append(th12);
        }
        a(sb, 13);
        try {
            FileInputStream fileInputStream2 = new FileInputStream("/proc/self/status");
            byte[] bArr = new byte[65536];
            int read = fileInputStream2.read(bArr);
            sb.append(read);
            sb.append(" -> ");
            if (read > 0) {
                sb.append(new String(bArr, 0, read));
            }
            fileInputStream2.close();
        } catch (Throwable th13) {
            sb.append(th13);
        }
        la.a("FIN");
        Tools.b(sb.toString().trim(), 0);
    }

    private static void a(StringBuilder sb, String str) {
        BufferedReader bufferedReader = new BufferedReader(new FileReader("/proc/self/maps"));
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine != null) {
                int indexOf = readLine.indexOf(str);
                if (indexOf >= 0) {
                    int i = indexOf;
                    while (i > 0 && readLine.charAt(i) > ' ') {
                        i--;
                    }
                    if (i < indexOf) {
                        sb.append("\n'");
                        sb.append(readLine.substring(i, readLine.length()).trim());
                        sb.append('\'');
                    }
                }
            } else {
                bufferedReader.close();
                return;
            }
        }
    }

    private void m() {
        t();
        setContentView(R.layout.main);
        View findViewById = findViewById(R.id.root);
        this.j = new WeakReference(findViewById);
        TextView textView = (TextView) findViewById.findViewById(R.id.installing);
        textView.setText(qk.a((int) R.string.installing));
        jp.i = new WeakReference((ProgressBar) findViewById.findViewById(R.id.progress_bar));
        jp.j = new WeakReference((TextView) findViewById.findViewById(R.id.progress_bar_text));
        jp.k = new WeakReference(textView);
        jp.h = new WeakReference((Button) findViewById.findViewById(R.id.abort_button));
        a(0);
        b(true);
    }

    private void b(boolean z) {
        View view = (View) this.j.get();
        if (view == null) {
            return;
        }
        View findViewById = view.findViewById(R.id.starter);
        if (!z) {
            if (findViewById != null) {
                TextView textView = (TextView) this.k.get();
                if (textView != null) {
                    Tools.a(textView);
                    Tools.d(textView);
                }
                Tools.d(findViewById);
                return;
            }
            return;
        }
        if (findViewById == null) {
            ((ViewGroup) view).addView(Tools.d(((ViewGroup) android.fix.i.a((int) R.layout.main, (ViewGroup) null)).findViewById(R.id.starter)));
        }
        TextView textView2 = (TextView) view.findViewById(R.id.front_text);
        this.k = new WeakReference(textView2);
        for (int i : new int[]{R.id.btn_stop_service, R.id.btn_start_usage, R.id.check, R.id.fix_it, R.id.language, R.id.help}) {
            View findViewById2 = view.findViewById(i);
            if (findViewById2 instanceof TextView) {
                TextView textView3 = (TextView) findViewById2;
                textView3.setText(qk.a(textView3.getText().toString()));
            }
            findViewById2.setOnClickListener(this);
        }
        Tools.l(textView2);
    }

    private void n() {
        TextView textView = (TextView) this.k.get();
        if (textView != null) {
            CharSequence charSequence = (CharSequence) this.l.get();
            if (charSequence != null) {
                textView.setText(charSequence);
                return;
            }
            String str = String.valueOf(qk.a((int) R.string.download)) + Tools.removeNewLinesChars("#kwws=22jdphjxdugldq1qhw2grzqordg") + "\n\n" + qk.a((int) R.string.front_text) + "\n\n";
            String a2 = qk.a("     32. __help_faq_32_q__\r\n        __help_faq_32_b__\r\n\r\n__rtfm__");
            Tools.a(textView, String.valueOf(str) + a2 + ("\n\n" + qk.a((int) R.string.help_front)));
            Tools.a(textView.getText());
            Tools.a(textView.getText(), a2, Tools.e((int) R.color.alert));
            this.l = new WeakReference(textView.getText());
        }
    }

    private void o() {
        TextView textView = (TextView) this.k.get();
        if (textView != null) {
            textView.setText("");
        }
        b(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i) {
        rx.a(new ay(this, i));
    }

    public static void h() {
        try {
            lh.c = 2;
            lh.j();
        } catch (Throwable th) {
            throw new RuntimeException("Failed restart", th);
        }
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        bundle.putParcelable("installer-state", jp.a());
        super.onSaveInstanceState(bundle);
    }

    private String p() {
        StringBuilder sb = this.m;
        this.m = null;
        return sb == null ? "" : sb.toString();
    }

    private void q() {
        StringBuilder sb = this.m;
        try {
            File filesDir = getFilesDir();
            String absolutePath = filesDir.getAbsolutePath();
            sb.append(absolutePath);
            sb.append('\n');
            sb.append(y.d);
            sb.append('\n');
            a(absolutePath);
            if (!Config.C && (d.checkCallingOrSelfPermission(Tools.removeNewLinesChars("dqgurlg1shuplvvlrq1UHDGbVPV")) == 0 || !new File("/proc/self/exe").getCanonicalPath().startsWith("/system/"))) {
                sb.append("? ");
                String str = String.valueOf(Tools.a.nextInt()) + ".txt";
                File file = new File(filesDir, str);
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                fileOutputStream.write(new byte[4096]);
                fileOutputStream.flush();
                fileOutputStream.close();
                String replace = Tools.m(file.getAbsolutePath()).replace(String.valueOf('/') + str, "");
                file.delete();
                sb.append(replace);
                sb.append('\n');
                a(replace);
                if (Config.C) {
                    String str2 = String.valueOf('/') + filesDir.getName();
                    String replace2 = replace.replace(str2, "");
                    String replace3 = absolutePath.replace(str2, "");
                    String str3 = "F2R: [" + replace2.length() + "] " + replace3 + " -> " + replace2;
                    la.b(str3);
                    sb.append(str3);
                    sb.append('\n');
                    Tools.d = new String[]{replace3, replace2};
                } else {
                    String str4 = "Odd vSpace: " + absolutePath + "; " + replace;
                    la.b(str4);
                    sb.append(str4);
                    sb.append('\n');
                    int i = Tools.s().getInt("odd-vspace", 0);
                    sb.append(i);
                    sb.append('\n');
                    if (i == 1) {
                        Config.C = true;
                    } else if (i == 0) {
                        az azVar = new az(this);
                        i.a(i.a(f).setMessage(qk.a((int) R.string.odd_vspace)).setCancelable(false).setPositiveButton(qk.a((int) R.string.yes), azVar).setNegativeButton(qk.a((int) R.string.no), azVar));
                    }
                }
            }
            String str5 = "Files: " + absolutePath + ' ' + y.d;
            la.a(str5);
            sb.append(str5);
            sb.append('\n');
        } catch (Throwable th) {
            la.a(th);
            sb.append(th.toString());
            sb.append('\n');
        }
        Config.vSpaceReal = Config.C;
        if (Config.C && (Config.B & 512) != 0) {
            Config.C = false;
        }
    }

    private void a(String str) {
        StringBuilder sb = this.m;
        String str2 = null;
        if (str.startsWith("/mnt/expand/")) {
            str = str.replace("/mnt/expand/" + str.split("/", -1)[3], "/data");
            n = true;
            sb.append("1\n");
        }
        if (str.startsWith("/data/data/")) {
            str2 = str.split("/", -1)[3];
            sb.append("2\n");
        } else if (str.startsWith("/data/user/")) {
            str2 = str.split("/", -1)[4];
            sb.append("3\n");
        }
        Config.F = "";
        if (str2 != null) {
            sb.append(str2);
            sb.append("\n4\n");
            Config.C = str2.startsWith(y.d) ? false : true;
            Config.E = str2;
            Config.D = str2.contains("vmos");
            try {
                Config.F = Tools.a(Tools.j(str2));
            } catch (Throwable th) {
                la.b("Failed get vSpace name for " + str2, th);
            }
        }
        if (Config.F.length() == 0) {
            Config.F = qk.a((int) R.string.virtual_space);
        }
        sb.append(Config.C);
        sb.append('\n');
    }

    @Override // android.fix.a, android.app.Activity
    public void onCreate(Bundle bundle) {
        String str;
        super.onCreate(bundle);
        ho.b();
        boolean z = this instanceof MainActivity;
        if (z || d == null) {
            d = this;
        }
        if (z || !(f instanceof android.fix.d)) {
            f = android.fix.d.c(this);
        }
        if (z || e == null) {
            e = android.fix.d.c(getApplicationContext());
        }
        try {
            android.fix.Button button = new android.fix.Button(this);
            button.setText("Fix it");
            button.setId(R.id.fix_it);
            button.setOnClickListener(this);
            setContentView(button);
        } catch (Throwable th) {
            la.a(th);
        }
        q();
        android.fix.g.a = false;
        Tools.a((Activity) this);
        Window window = getWindow();
        if (window != null) {
            if (b) {
                window.addFlags(16777216);
            } else {
                window.clearFlags(16777216);
            }
        }
        android.fix.d.d(f);
        ad.d();
        d();
        if (Config.C) {
            str = "$";
        } else {
            str = Config.vSpaceReal ? "@" : "#";
        }
        setTitle(String.valueOf(str) + ' ' + qk.a((int) R.string.app_name) + ' ' + ((104.7f * 1) - 3.6f) + " (" + ((int) (((17058.5f * 1) - 916.5f) + 0.5f)) + ") " + (b ? "HW" : "SW"));
        m();
        Tools.d();
        ba baVar = new ba(this, bundle);
        la.a(baVar + ": 10");
        jp.a(baVar);
        la.a(baVar + ": 20");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(Bundle bundle) {
        boolean z;
        if (Config.vSpaceReal || jp.b() || Tools.s().getInt("root-ok", 0) == ((int) (((17165.5f * 1) - 1023.5f) + 0.5f))) {
            z = true;
        } else {
            try {
                if (qt.a("exec id", 10).contains("uid=0")) {
                    new qw().putInt("root-ok", (int) (((23966.6f * 1) - 7824.6f) + 0.5f)).commit();
                    z = true;
                } else {
                    z = false;
                }
            } catch (Throwable th) {
                z = false;
            }
        }
        if (z) {
            c(bundle);
            return;
        }
        bb bbVar = new bb(this, bundle);
        i.a(i.a(f).setTitle(qk.a((int) R.string.work_mode)).setCancelable(false).setItems(new String[]{qk.a((int) R.string.root), qk.a((int) R.string.no_root), qk.a((int) R.string.exit)}, new bc(this, bbVar)).create(), bbVar, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(Bundle bundle) {
        if (bundle != null) {
            Parcelable parcelable = bundle.getParcelable("installer-state");
            if (parcelable instanceof ko) {
                jp.a((ko) parcelable);
            }
        }
        if (lh.d) {
            a(2);
        } else {
            lh.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void r() {
        if (n) {
            i.a(i.a(f).setMessage(qk.a((int) R.string.mnt_expand)).setNeutralButton(qk.a((int) R.string.ok), (DialogInterface.OnClickListener) null).setPositiveButton(qk.a((int) R.string.fix_it), new at()));
        }
    }

    @Override // android.fix.a, android.app.Activity
    protected void onPostCreate(Bundle bundle) {
        la.a(String.valueOf(this.g ? "Installer: " : "") + "onPostCreate()");
        super.onPostCreate(bundle);
    }

    @Override // android.fix.a, android.app.Activity
    protected void onRestart() {
        la.a(String.valueOf(this.g ? "Installer: " : "") + "onRestart()");
        a(true);
        b(true);
        super.onRestart();
    }

    @Override // android.fix.a, android.app.Activity
    protected void onPostResume() {
        la.a(String.valueOf(this.g ? "Installer: " : "") + "onPostResume()");
        a(true);
        b(true);
        super.onPostResume();
    }

    @Override // android.fix.a, android.app.Activity
    protected void onStart() {
        la.a(String.valueOf(this.g ? "Installer: " : "") + "onStart()");
        a(true);
        b(true);
        n();
        super.onStart();
    }

    @Override // android.fix.a, android.app.Activity
    public void onResume() {
        la.a(String.valueOf(this.g ? "Installer: " : "") + "onResume()");
        a(true);
        b(true);
        super.onResume();
        if (!this.g && MainService.instance != null) {
            if (rv.a) {
                MainService.instance.c();
            } else if (MainService.instance.p == null) {
                s();
            }
        }
    }

    private static void s() {
        rx.a().post(new au());
    }

    @Override // android.fix.a, android.app.Activity
    public void onPause() {
        la.a(String.valueOf(this.g ? "Installer: " : "") + "onPause()");
        a(false);
        if (!this.g && MainService.instance != null && rv.a) {
            MainService.instance.d();
        }
        super.onPause();
    }

    @Override // android.fix.a, android.app.Activity
    public void onStop() {
        la.a(String.valueOf(this.g ? "Installer: " : "") + "onStop()");
        a(false);
        o();
        super.onStop();
    }

    @Override // android.fix.a, android.app.Activity
    public void onDestroy() {
        a(false);
        o();
        super.onDestroy();
        if (!this.g && h) {
            la.a("onDestroy(exit)");
            lh.j();
            return;
        }
        la.a(String.valueOf(this.g ? "Installer: " : "") + "onDestroy()");
    }

    public void a(boolean z) {
        boolean z2 = this.i;
        this.i = z;
        if (z2 != z && MainService.instance != null) {
            MainService.instance.u();
        }
    }

    public boolean i() {
        return this.i;
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        la.a(String.valueOf(this.g ? "Installer: " : "") + "onActivityResult()");
        super.onActivityResult(i, i2, intent);
        if (this.g) {
            jp.a(i, i2, intent);
        } else {
            bq.e();
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        try {
            return super.onKeyUp(i, keyEvent);
        } catch (IllegalStateException e2) {
            la.a(e2);
            return false;
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        try {
            super.onBackPressed();
        } catch (IllegalStateException e2) {
            la.a(e2);
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        try {
            return super.dispatchKeyEvent(keyEvent);
        } catch (IllegalStateException e2) {
            la.a(e2);
            return false;
        }
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (strArr != null && iArr != null) {
            int min = Math.min(strArr.length, iArr.length);
            for (int i2 = 0; i2 < min; i2++) {
                String str = strArr[i2];
                if (str != null) {
                    la.a(String.valueOf(str) + ": " + iArr[i2]);
                }
            }
        }
        super.onRequestPermissionsResult(i, strArr, iArr);
    }

    private static void t() {
        if (Build.VERSION.SDK_INT >= 11) {
            try {
                Field declaredField = ValueAnimator.class.getDeclaredField("sDurationScale");
                declaredField.setAccessible(true);
                Object obj = declaredField.get(null);
                if ((obj instanceof Float) && Float.valueOf(0.0f).equals(obj)) {
                    declaredField.set(null, Float.valueOf(1.0f));
                    la.a("Fix sDurationScale");
                }
            } catch (Throwable th) {
                la.b("failed fix sDurationScale", th);
            }
        }
    }

    public void j() {
        if (!Config.vSpaceReal) {
            StringBuilder sb = new StringBuilder();
            try {
                sb.append("INTERNET: 0~");
                sb.append(Config.vSpaceReal ? '$' : '#');
                sb.append(";1~");
                Context e2 = Tools.e();
                int checkPermission = e2.checkPermission("android.permission.INTERNET", Process.myPid(), Process.myUid());
                sb.append(checkPermission);
                sb.append(";2~");
                sb.append(e2.checkCallingOrSelfPermission("android.permission.INTERNET"));
                sb.append(";3~");
                sb.append(e2.checkCallingPermission("android.permission.INTERNET"));
                la.a(sb.toString());
                if (checkPermission != 0) {
                    ho.a(Thread.currentThread(), (Throwable) new RuntimeException(sb.toString()), false);
                }
            } catch (Throwable th) {
                RuntimeException runtimeException = new RuntimeException(sb.toString(), th);
                la.a(runtimeException);
                ho.a(Thread.currentThread(), (Throwable) runtimeException, false);
            }
        }
        if (Build.VERSION.SDK_INT >= 23) {
            try {
                Context e3 = Tools.e();
                PackageInfo d2 = Tools.d(Tools.g(), 4096);
                if (d2 != null && d2.requestedPermissions != null) {
                    ArrayList arrayList = new ArrayList();
                    PackageManager m = Tools.m();
                    String[] strArr = d2.requestedPermissions;
                    for (String str : strArr) {
                        if (str != null && (e3.checkSelfPermission(str) != 0 || (Config.vSpaceReal && m.checkPermission(str, Config.E) != 0))) {
                            arrayList.add(str);
                        }
                    }
                    if (arrayList.size() > 0) {
                        String[] strArr2 = (String[]) arrayList.toArray(new String[arrayList.size()]);
                        la.a("requestPermissions: " + Arrays.toString(strArr2));
                        requestPermissions(strArr2, 0);
                    }
                }
            } catch (Throwable th2) {
                la.a(th2);
            }
        }
    }
}
