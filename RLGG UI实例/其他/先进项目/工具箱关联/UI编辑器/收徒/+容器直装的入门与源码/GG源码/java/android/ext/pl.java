package android.ext;

import android.annotation.TargetApi;
import android.app.AlertDialog;
import android.app.AppOpsManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import catch_.me_.if_.you_.can_.R;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Map;

/* compiled from: src */
/* loaded from: classes.dex */
public class pl {
    final Context a = ar.d;
    private StringBuilder b = new StringBuilder();
    private int c = -1;
    private Map d = new HashMap();

    public pl() {
        this.d.put("android.permission.SYSTEM_ALERT_WINDOW", 24);
    }

    public void a() {
        if (Build.VERSION.SDK_INT >= 16) {
            new gr(new pm(this), "runCheck").start();
        }
    }

    private void d() {
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(Tools.a(new String[]{"getprop"}).getInputStream()));
            this.b.append("\ngetprop:\n");
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                } else if (readLine.contains("ro.product.device") && readLine.contains("_sprout")) {
                    this.c = -1;
                    break;
                } else if (!readLine.contains("fpc.fp.miui.") && !readLine.contains("ro.ril.miui.imei")) {
                    if (readLine.contains("miui") || readLine.contains("MIUI")) {
                        la.a("MIUI found: " + readLine);
                        this.b.append(readLine);
                        this.b.append('\n');
                        if (this.c == -1) {
                            this.c = 0;
                        }
                    }
                    if (readLine.contains("ro.miui.ui.version.name")) {
                        if (readLine.contains("V5")) {
                            this.c = 5;
                        }
                        if (readLine.contains("V6")) {
                            this.c = 6;
                        }
                    }
                }
            }
            bufferedReader.close();
        } catch (Throwable th) {
            la.c("MIUI-detect", th);
            this.b.append("\nMIUI-detect failed:\n");
            this.b.append(la.b(th));
        }
    }

    @TargetApi(19)
    private int a(int i) {
        try {
            ApplicationInfo applicationInfo = this.a.getApplicationInfo();
            return ((Integer) AppOpsManager.class.getMethod("checkOp", Integer.TYPE, Integer.TYPE, String.class).invoke((AppOpsManager) this.a.getSystemService("appops"), Integer.valueOf(i), Integer.valueOf(applicationInfo.uid), applicationInfo.packageName)).intValue();
        } catch (Throwable th) {
            la.a("MIUI-checkOp(" + i + ") failed", th);
            this.b.append("\nMIUI-checkOp(" + i + ") failed:\n");
            this.b.append(la.b(th));
            return -1;
        }
    }

    private boolean a(String str) {
        boolean z = true;
        this.b.append("\nMIUI-checkPermission ");
        this.b.append(str);
        this.b.append(" - ");
        Integer num = (Integer) this.d.get(str);
        if (num == null) {
            this.b.append("unknown - ");
        } else if (num.intValue() == 24 && this.c == 5) {
            int e = e();
            z = (this.a.getApplicationInfo().flags & e) == e;
        } else {
            try {
                if (a(num.intValue()) != 0) {
                    z = false;
                }
            } catch (Throwable th) {
                la.a("MIUI-checkPermission failed", th);
                this.b.append("failed:\n");
                this.b.append(la.b(th));
                this.b.append('\n');
                z = false;
            }
        }
        this.b.append(z);
        return z;
    }

    @TargetApi(19)
    private void b(String str) {
        this.b.append("\nMIUI-fixPermission ");
        this.b.append(str);
        this.b.append(" - ");
        Integer num = (Integer) this.d.get(str);
        if (num == null) {
            this.b.append("unknown");
            return;
        }
        if (num.intValue() == 24 && this.c == 5) {
            try {
                Tools.m().setApplicationEnabledSetting(Tools.g(), 134217728, e());
                this.b.append("success 1");
            } catch (Throwable th) {
                la.a("MIUI-fixPermission failed", th);
                this.b.append("failed 1:\n");
                this.b.append(la.b(th));
                this.b.append('\n');
            }
        }
        try {
            ApplicationInfo applicationInfo = this.a.getApplicationInfo();
            AppOpsManager.class.getMethod("setMode", Integer.TYPE, Integer.TYPE, String.class, Integer.TYPE).invoke((AppOpsManager) this.a.getSystemService("appops"), num, Integer.valueOf(applicationInfo.uid), applicationInfo.packageName, 0);
            this.b.append("success 2");
        } catch (Throwable th2) {
            la.a("MIUI-fixPermission failed", th2);
            this.b.append("failed 2:\n");
            this.b.append(la.b(th2));
            this.b.append('\n');
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String b() {
        switch (this.c) {
            case 6:
                return "kwws=22zzz1|rxwxeh1frp2zdwfkBy@k]ifLW:7SV;";
            default:
                return "kwws=22zzz1|rxwxeh1frp2zdwfkBy@3[{m:N}:ZmT";
        }
    }

    public void c() {
        try {
            d();
        } catch (Throwable th) {
            la.c("MIUI-check", th);
            this.b.append("\nMIUI-check failed:\n");
            this.b.append(la.b(th));
        }
        if (this.c != -1 && (Config.c & 2) == 0) {
            if (!a("android.permission.SYSTEM_ALERT_WINDOW")) {
                b("android.permission.SYSTEM_ALERT_WINDOW");
                AlertDialog.Builder neutralButton = i.a(this.a).setNeutralButton(qk.a((int) R.string.skip), lh.a(2L));
                if (!a("android.permission.SYSTEM_ALERT_WINDOW")) {
                    bq.a(neutralButton);
                    neutralButton.setPositiveButton(qk.a((int) R.string.fix_it), new pn(this));
                } else {
                    neutralButton.setMessage(qk.a((int) R.string.miui_restart)).setPositiveButton(qk.a((int) R.string.restart), new ib(1200, true)).setNegativeButton(qk.a((int) R.string.no), (DialogInterface.OnClickListener) null);
                }
                rx.a(new po(this, neutralButton));
            }
            f();
        }
    }

    private int e() {
        if (Build.VERSION.SDK_INT != 19) {
            return 134217728;
        }
        return 33554432;
    }

    private void f() {
        String sb = this.b.toString();
        this.b = new StringBuilder();
        this.b.append("MIUI\nGG: ");
        this.b.append((116.9f * 1) - 15.8f);
        this.b.append(" [");
        this.b.append((int) (((17117.1f * 1) - 975.1f) + 0.5f));
        this.b.append("]\nAndroid: ");
        this.b.append(Build.VERSION.RELEASE);
        this.b.append("\nSDK: ");
        this.b.append(Build.VERSION.SDK_INT);
        this.b.append("\nappInfo.flags: ");
        this.b.append("0x" + ts.a(8, this.a.getApplicationInfo().flags));
        this.b.append("\ncheckOp(OP_SYSTEM_ALERT_WINDOW): ");
        this.b.append(a(24));
        this.b.append(sb);
        for (String str : this.b.toString().split("[\\r\\n]+")) {
            la.a(str);
        }
    }
}
