package android.ext;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.UiAutomation;
import android.content.DialogInterface;
import android.graphics.Color;
import android.os.Build;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import catch_.me_.if_.you_.can_.R;
import java.io.IOException;
import java.util.Random;

/* compiled from: src */
/* loaded from: classes.dex */
public class bq implements DialogInterface.OnClickListener, DialogInterface.OnDismissListener, DialogInterface.OnShowListener, View.OnClickListener, View.OnTouchListener {
    private static volatile boolean b = false;
    private static View[] c = null;
    private static AlertDialog d = null;
    private static boolean e = false;
    Activity a;

    public bq(Activity activity) {
        this.a = activity;
    }

    public void a() {
        new gr(new br(this), "CheckFloatingWindow").start();
    }

    private void a(View view, int i) {
        a(view, i, rv.a(), rv.c() | 256, 0, 0);
    }

    private void a(View view, int i, int i2, int i3, int i4, int i5) {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        layoutParams.type = i2;
        layoutParams.width = i;
        layoutParams.height = i;
        layoutParams.format = -2;
        layoutParams.flags = i3;
        layoutParams.alpha = 1.0f;
        layoutParams.x = i4;
        layoutParams.y = i5;
        layoutParams.gravity = 51;
        bs bsVar = new bs(this, view, layoutParams);
        synchronized (bsVar) {
            rx.a(bsVar);
            bsVar.wait();
        }
    }

    @TargetApi(12)
    public void a(int i, int i2) {
        try {
            Tools.a(Tools.a(new String[]{"input", "tap", Integer.toString(i), Integer.toString(i2)}), 15);
        } catch (IOException e2) {
            la.b("sendClick", e2);
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 0, i, i2, 0);
        MotionEvent obtain2 = MotionEvent.obtain(uptimeMillis, uptimeMillis, 1, i, i2, 0);
        if (Build.VERSION.SDK_INT >= 12) {
            obtain.setSource(4098);
            obtain2.setSource(4098);
        }
        a(obtain, true);
        a(obtain2, true);
        obtain.recycle();
        obtain2.recycle();
    }

    @TargetApi(18)
    private void a(MotionEvent motionEvent, boolean z) {
        UiAutomation uiAutomation;
        if (bi.b != null) {
            bi.b.sendPointerSync(motionEvent);
            if (Build.VERSION.SDK_INT >= 18 && (uiAutomation = bi.b.getUiAutomation()) != null) {
                uiAutomation.injectInputEvent(motionEvent, z);
            }
        }
    }

    private void a(boolean z) {
        AlertDialog alertDialog;
        View[] viewArr = c;
        if (viewArr != null) {
            for (View view : viewArr) {
                if (view != null) {
                    Tools.b(view);
                }
            }
            c = null;
        }
        if (z && (alertDialog = d) != null) {
            Tools.a((DialogInterface) alertDialog);
            d = null;
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        la.a("TestButton: onClick for " + view, new RuntimeException());
        if (view instanceof bz) {
            bz bzVar = (bz) view;
            la.a("onClick for " + bzVar.a);
            Config.a((int) R.id.config_float_type).d = bzVar.b;
            Config.a((int) R.id.config_float_flags).d = bzVar.c;
            Config.c();
            a(true);
            ar.h();
            return;
        }
        b = true;
    }

    public void b() {
        AlertDialog create = i.a(this.a).setNegativeButton(qk.a((int) R.string.cancel), this).setCancelable(true).create();
        create.setOnDismissListener(this);
        create.setCanceledOnTouchOutside(false);
        create.setCancelable(true);
        create.setOnShowListener(this);
        d = create;
        rx.a(new bt(this, create));
    }

    @Override // android.content.DialogInterface.OnShowListener
    public void onShow(DialogInterface dialogInterface) {
        new gr(new bu(this), "ChangeFloatingWindow").start();
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        a(true);
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        a(true);
    }

    private int a(Random random) {
        return Color.rgb(random.nextInt(127) + 64, random.nextInt(127) + 64, random.nextInt(127) + 64);
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        la.a("dbg: " + view + ' ' + motionEvent, new RuntimeException());
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        View[] viewArr;
        try {
            Random random = Tools.a;
            DisplayMetrics displayMetrics = new DisplayMetrics();
            ((WindowManager) Tools.e().getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
            int b2 = Tools.b();
            int i = ((displayMetrics.widthPixels / b2) / 2) * 2;
            int i2 = (displayMetrics.heightPixels / b2) * i;
            int i3 = i2 > 100 ? 100 : i2;
            la.a("checkAll: " + b2 + "; " + i + "; " + i3 + "; " + b2 + "; " + displayMetrics);
            int i4 = i3 / 2;
            int i5 = i / 2;
            View[] viewArr2 = new View[i3];
            for (int i6 = 0; i6 < i3; i6++) {
                try {
                    boolean z = i6 / i4 == 0;
                    int i7 = (i6 % i4) + 2000;
                    int i8 = (z ? 0 : 32) | 8;
                    int a = a(random);
                    bz bzVar = new bz(MainService.context.getApplicationContext(), String.valueOf(Integer.toString(i6 % i4)) + (z ? "" : "'"), i7, i8);
                    bzVar.setBackgroundColor(a);
                    bzVar.setOnClickListener(this);
                    a(bzVar, b2, i7, i8, ((z ? 0 : i5) + (i6 % i5)) * b2, ((i6 % i4) / i5) * b2);
                    viewArr2[i6] = bzVar;
                } catch (Throwable th) {
                    th = th;
                    viewArr = viewArr2;
                    la.c("Failed checkAll floating window", th);
                    a(false);
                    c = viewArr;
                }
            }
            viewArr = viewArr2;
        } catch (Throwable th2) {
            th = th2;
            viewArr = null;
        }
        a(false);
        c = viewArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d() {
        try {
            int a = a(Tools.a);
            int a2 = (int) Tools.a(128.0f);
            View view = new View(MainService.context);
            view.setBackgroundColor(a);
            view.setOnClickListener(this);
            a(view, a2);
            Thread.sleep(1000L);
            int[] iArr = new int[2];
            view.getLocationOnScreen(iArr);
            int i = a2 >> 1;
            a(iArr[0] + i, iArr[1] + i);
            Thread.sleep(1000L);
            Tools.b(view);
            if (b) {
                Tools.a((int) R.string.check_success);
            } else {
                f();
            }
        } catch (Throwable th) {
            la.c("Failed check floating window", th);
        }
    }

    public static AlertDialog.Builder a(AlertDialog.Builder builder) {
        String a = Config.vSpaceReal ? Config.F : qk.a((int) R.string.app_name);
        return builder.setCustomTitle(Tools.d((int) R.string.floating_window_fail)).setMessage(String.valueOf(Tools.a(Tools.c((int) R.string.float_prompt), a, a, a, a)) + ":\nhttps://productforums.google.com/forum/#!topic/translate/1Pywh5vI1kE\n\n" + Tools.c((int) R.string.without_float) + ":\n" + Tools.removeNewLinesChars("kwws=22jdphjxdugldq1qhw2y0573")).setNegativeButton(qk.a((int) R.string.ok), (DialogInterface.OnClickListener) null);
    }

    private void f() {
        AlertDialog.Builder a = a(i.a(this.a));
        a.setPositiveButton(qk.a((int) R.string.site), new be("kwws=22jdphjxdugldq1qhw2iruxp2wrslf2:7360nqrzq0sureohpv2Bgr@ilqgFrpphqw)frpphqw@76<88"));
        if (Build.VERSION.SDK_INT >= 23) {
            a.setNeutralButton(qk.a((int) R.string.fix_it), new bv(this));
        }
        rx.a(new bw(this, a));
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00ca  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static boolean a(android.content.Context r10) {
        /*
            r5 = 1
            r4 = 0
            boolean r3 = android.ext.Tools.a(r10)
            if (r3 == 0) goto Lcc
            boolean r1 = android.ext.Config.vSpaceReal
            if (r1 == 0) goto Lcc
            int r6 = android.os.Process.myUid()
            java.lang.Class<android.provider.Settings> r1 = android.provider.Settings.class
            java.lang.String r2 = "isCallingPackageAllowedToDrawOverlays"
            r7 = 4
            java.lang.Class[] r7 = new java.lang.Class[r7]     // Catch: java.lang.Throwable -> La7
            r8 = 0
            java.lang.Class<android.content.Context> r9 = android.content.Context.class
            r7[r8] = r9     // Catch: java.lang.Throwable -> La7
            r8 = 1
            java.lang.Class r9 = java.lang.Integer.TYPE     // Catch: java.lang.Throwable -> La7
            r7[r8] = r9     // Catch: java.lang.Throwable -> La7
            r8 = 2
            java.lang.Class<java.lang.String> r9 = java.lang.String.class
            r7[r8] = r9     // Catch: java.lang.Throwable -> La7
            r8 = 3
            java.lang.Class r9 = java.lang.Boolean.TYPE     // Catch: java.lang.Throwable -> La7
            r7[r8] = r9     // Catch: java.lang.Throwable -> La7
            java.lang.reflect.Method r1 = r1.getDeclaredMethod(r2, r7)     // Catch: java.lang.Throwable -> La7
            r2 = 1
            r1.setAccessible(r2)     // Catch: java.lang.Throwable -> La7
            r2 = 0
            r7 = 4
            java.lang.Object[] r7 = new java.lang.Object[r7]     // Catch: java.lang.Throwable -> La7
            r8 = 0
            r7[r8] = r10     // Catch: java.lang.Throwable -> La7
            r8 = 1
            java.lang.Integer r9 = java.lang.Integer.valueOf(r6)     // Catch: java.lang.Throwable -> La7
            r7[r8] = r9     // Catch: java.lang.Throwable -> La7
            r8 = 2
            java.lang.String r9 = android.ext.Config.E     // Catch: java.lang.Throwable -> La7
            r7[r8] = r9     // Catch: java.lang.Throwable -> La7
            r8 = 3
            r9 = 0
            java.lang.Boolean r9 = java.lang.Boolean.valueOf(r9)     // Catch: java.lang.Throwable -> La7
            r7[r8] = r9     // Catch: java.lang.Throwable -> La7
            java.lang.Object r2 = r1.invoke(r2, r7)     // Catch: java.lang.Throwable -> La7
            boolean r1 = r2 instanceof java.lang.Boolean     // Catch: java.lang.Throwable -> La7
            if (r1 == 0) goto L61
            r0 = r2
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch: java.lang.Throwable -> La7
            r1 = r0
            boolean r1 = r1.booleanValue()     // Catch: java.lang.Throwable -> La7
            if (r1 != 0) goto L61
            r3 = r4
        L61:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> La7
            java.lang.String r7 = "canDrawOverlays extended 1: "
            r1.<init>(r7)     // Catch: java.lang.Throwable -> La7
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch: java.lang.Throwable -> La7
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> La7
            android.ext.la.a(r1)     // Catch: java.lang.Throwable -> La7
        L73:
            java.lang.String r1 = "appops"
            java.lang.Object r1 = r10.getSystemService(r1)     // Catch: java.lang.Throwable -> Lc0
            android.app.AppOpsManager r1 = (android.app.AppOpsManager) r1     // Catch: java.lang.Throwable -> Lc0
            java.lang.String r2 = "android:system_alert_window"
            java.lang.String r7 = android.ext.Config.E     // Catch: java.lang.Throwable -> Lc0
            int r6 = r1.checkOpNoThrow(r2, r6, r7)     // Catch: java.lang.Throwable -> Lc0
            switch(r6) {
                case 0: goto Lae;
                case 1: goto L86;
                case 2: goto L86;
                case 3: goto Lb0;
                default: goto L86;
            }
        L86:
            r2 = r4
        L87:
            if (r2 != 0) goto Lca
            r1 = r4
        L8a:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lc8
            java.lang.String r4 = "canDrawOverlays extended 2: "
            r3.<init>(r4)     // Catch: java.lang.Throwable -> Lc8
            java.lang.StringBuilder r2 = r3.append(r2)     // Catch: java.lang.Throwable -> Lc8
            r3 = 32
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch: java.lang.Throwable -> Lc8
            java.lang.StringBuilder r2 = r2.append(r6)     // Catch: java.lang.Throwable -> Lc8
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> Lc8
            android.ext.la.a(r2)     // Catch: java.lang.Throwable -> Lc8
        La6:
            return r1
        La7:
            r1 = move-exception
            java.lang.String r2 = "Failed check canDrawOverlays"
            android.ext.la.b(r2, r1)
            goto L73
        Lae:
            r2 = r5
            goto L87
        Lb0:
            android.content.pm.PackageManager r1 = android.ext.Tools.m()     // Catch: java.lang.Throwable -> Lc0
            java.lang.String r2 = "android.permission.SYSTEM_ALERT_WINDOW"
            java.lang.String r7 = android.ext.Config.E     // Catch: java.lang.Throwable -> Lc0
            int r1 = r1.checkPermission(r2, r7)     // Catch: java.lang.Throwable -> Lc0
            if (r1 != 0) goto L86
            r2 = r5
            goto L87
        Lc0:
            r2 = move-exception
            r1 = r3
        Lc2:
            java.lang.String r3 = "Failed check canDrawOverlays"
            android.ext.la.b(r3, r2)
            goto La6
        Lc8:
            r2 = move-exception
            goto Lc2
        Lca:
            r1 = r3
            goto L8a
        Lcc:
            r1 = r3
            goto La6
        */
        throw new UnsupportedOperationException("Method not decompiled: android.ext.bq.a(android.content.Context):boolean");
    }

    @TargetApi(23)
    public static void e() {
        if (Build.VERSION.SDK_INT >= 23) {
            ar arVar = ar.d;
            try {
                boolean a = a(arVar);
                la.a("canDrawOverlays: " + a);
                if (!a) {
                    e = true;
                    AlertDialog.Builder a2 = i.a(arVar);
                    a2.setCustomTitle(Tools.d((int) R.string.floating_window_fail)).setMessage(R.string.enable_draw_perm).setNegativeButton(qk.a((int) R.string.skip), (DialogInterface.OnClickListener) null).setPositiveButton(qk.a((int) R.string.ok), new bx(arVar));
                    rx.a(new by(a2));
                } else if (e) {
                    e = false;
                    ConfigListAdapter.c();
                }
            } catch (Throwable th) {
                la.a(th);
            }
        }
    }
}
