package android.ext;

import android.annotation.TargetApi;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Build;
import android.os.Handler;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.ListView;
import catch_.me_.if_.you_.can_.R;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: src */
/* loaded from: classes.dex */
public class i {
    static final Runnable a = new j();
    private static volatile int b = 0;
    private static final List c = new ArrayList();
    private static final List d = new ArrayList();
    private static ArrayList e = new ArrayList();

    private static boolean e() {
        return MainService.instance == null;
    }

    @TargetApi(11)
    private static void e(AlertDialog alertDialog) {
        Window window = alertDialog.getWindow();
        if (Build.VERSION.SDK_INT >= 11) {
            window.setCallback(new uv(window.getCallback()));
        }
        if (e()) {
            window.clearFlags(16777216);
            return;
        }
        window.setType(rv.a());
        Tools.a(window);
        if ((Config.B & 2) != 0) {
            window.addFlags(16777216);
        } else {
            window.clearFlags(16777216);
        }
    }

    private static void f(AlertDialog alertDialog) {
        ListView listView = null;
        try {
            listView = alertDialog.getListView();
        } catch (Throwable th) {
            la.a(th);
        }
        if (listView != null) {
            try {
                AdapterView.OnItemClickListener onItemClickListener = listView.getOnItemClickListener();
                if (onItemClickListener != null && !(onItemClickListener instanceof t)) {
                    listView.setOnItemClickListener(new t(alertDialog, onItemClickListener, null));
                }
            } catch (Throwable th2) {
                la.a(th2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(AlertDialog alertDialog) {
        int i;
        a(alertDialog, (DialogInterface.OnShowListener) null);
        alertDialog.show();
        if (!e()) {
            f(alertDialog);
            Window window = alertDialog.getWindow();
            View decorView = window.getDecorView();
            InternalKeyboard internalKeyboard = (InternalKeyboard) decorView.findViewById(R.id.keyboard);
            if (internalKeyboard != null) {
                internalKeyboard.a(window);
            }
            if (Tools.c(decorView) && (internalKeyboard == null || (Config.B & 1) == 0)) {
                i = 5;
            } else {
                i = 2;
            }
            window.setSoftInputMode(i | 16);
            Tools.l(decorView);
            ShowApp.a(window);
            Handler a2 = rx.a();
            a2.removeCallbacks(a);
            a2.postDelayed(a, 100L);
            if (b <= 0) {
                b = 1;
            } else {
                b++;
            }
            a(alertDialog, (DialogInterface.OnDismissListener) null);
            d(alertDialog);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a() {
        if (MainService.instance != null) {
            MainService.instance.Z.g();
            if (MainService.instance.X != MainService.instance.W) {
                MainService.instance.Z.h();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b() {
        if (MainService.instance != null) {
            b--;
            if (b <= 0) {
                rx.a().removeCallbacks(a);
                MainService.instance.Z.i();
                b = 0;
            }
        }
    }

    public static void a(AlertDialog alertDialog, DialogInterface.OnShowListener onShowListener) {
        int i;
        int i2 = 0;
        r rVar = null;
        while (i2 < c.size()) {
            r rVar2 = (r) c.get(i2);
            if (rVar2 == null) {
                c.remove(i2);
                i = i2 - 1;
            } else {
                AlertDialog alertDialog2 = (AlertDialog) rVar2.a.get();
                if (alertDialog2 == null) {
                    c.remove(i2);
                    i = i2 - 1;
                } else if (alertDialog2 == alertDialog) {
                    i = i2;
                    rVar = rVar2;
                } else {
                    i = i2;
                }
            }
            i2 = i + 1;
        }
        if (rVar == null) {
            s sVar = new s(null);
            alertDialog.setOnShowListener(sVar);
            rVar = new r(alertDialog, sVar);
            c.add(rVar);
        }
        ((s) rVar.b.get()).a(onShowListener);
    }

    public static void a(AlertDialog alertDialog, DialogInterface.OnDismissListener onDismissListener) {
        int i;
        int i2 = 0;
        p pVar = null;
        while (i2 < d.size()) {
            p pVar2 = (p) d.get(i2);
            if (pVar2 == null) {
                d.remove(i2);
                i = i2 - 1;
            } else {
                AlertDialog alertDialog2 = (AlertDialog) pVar2.a.get();
                if (alertDialog2 == null) {
                    d.remove(i2);
                    i = i2 - 1;
                } else if (alertDialog2 == alertDialog) {
                    i = i2;
                    pVar = pVar2;
                } else {
                    i = i2;
                }
            }
            i2 = i + 1;
        }
        if (pVar == null) {
            q qVar = new q(null);
            alertDialog.setOnDismissListener(qVar);
            pVar = new p(alertDialog, qVar);
            d.add(pVar);
        }
        ((q) pVar.b.get()).a(onDismissListener);
    }

    public static void b(AlertDialog alertDialog) {
        try {
            alertDialog.show();
        } catch (WindowManager.BadTokenException e2) {
            c(alertDialog);
        }
    }

    public static void a(AlertDialog alertDialog, Runnable runnable, boolean z) {
        a(alertDialog, new k(runnable));
        if (z) {
            a(alertDialog, new l(runnable));
        }
        rx.a().postDelayed(runnable, 3000L);
        la.a(runnable + ": 10_");
        c(alertDialog);
        la.a(runnable + ": 20_");
    }

    public static AlertDialog c(AlertDialog alertDialog) {
        a(alertDialog, (android.widget.EditText) null);
        return alertDialog;
    }

    public static AlertDialog a(AlertDialog alertDialog, android.widget.EditText editText) {
        if (editText != null) {
            editText.setOnEditorActionListener(new EditorActionListener(alertDialog));
        }
        e(alertDialog);
        rx.a(new m(alertDialog));
        return alertDialog;
    }

    public static void a(AlertDialog.Builder builder, Context context) {
        a(builder, (EditText) null);
    }

    public static void a(AlertDialog.Builder builder) {
        a(builder, (EditText) null);
    }

    public static void b(AlertDialog.Builder builder) {
        ex.a(new n(builder));
    }

    public static void a(AlertDialog.Builder builder, EditText editText) {
        rx.a(new o(builder, editText));
    }

    public static AlertDialog.Builder c() {
        return a(Tools.e());
    }

    public static AlertDialog.Builder a(Context context) {
        return new AlertDialog.Builder(context);
    }

    public static void d(AlertDialog alertDialog) {
        if (alertDialog.getWindow().getAttributes().type >= 2000) {
            ArrayList arrayList = e;
            ArrayList arrayList2 = new ArrayList();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                WeakReference weakReference = (WeakReference) it.next();
                AlertDialog alertDialog2 = (AlertDialog) weakReference.get();
                if (alertDialog2 != null && alertDialog2 != alertDialog) {
                    arrayList2.add(weakReference);
                }
            }
            arrayList2.add(new WeakReference(alertDialog));
            e = arrayList2;
            arrayList.clear();
            arrayList.trimToSize();
        }
    }

    public static void d() {
        for (WeakReference weakReference : e) {
            AlertDialog alertDialog = (AlertDialog) weakReference.get();
            if (alertDialog != null) {
                try {
                    if (alertDialog.isShowing()) {
                        Tools.a((DialogInterface) alertDialog);
                    }
                } catch (Throwable th) {
                    la.b("Failed dismiss dialog: " + alertDialog, th);
                }
            }
        }
        if (MainService.instance != null) {
            MainService.instance.g();
        }
    }
}
