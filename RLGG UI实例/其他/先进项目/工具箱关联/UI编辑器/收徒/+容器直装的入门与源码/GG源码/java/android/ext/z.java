package android.ext;

import android.app.ActivityManager;
import android.content.pm.PackageManager;
import catch_.me_.if_.you_.can_.R;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class z {
    private qh c;
    volatile boolean a = false;
    volatile Runnable b = null;
    private volatile boolean d = false;
    private boolean e = false;
    private String f = null;

    public z(ActivityManager activityManager, PackageManager packageManager) {
        new qf(activityManager, packageManager);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(qh qhVar) {
        qhVar.b();
        qhVar.a();
        this.c = qhVar;
        la.a("used: " + qhVar.d());
        MainService.instance.a(qhVar);
    }

    public void a() {
        this.a = false;
    }

    public boolean b() {
        return this.a;
    }

    public boolean a(boolean z, Runnable runnable) {
        this.b = null;
        if (!this.a) {
            a(true);
            this.b = runnable;
            return false;
        }
        if (z) {
            a(false);
        }
        return true;
    }

    public void a(boolean z) {
        a(z, (String) null);
    }

    public void a(boolean z, String str) {
        if (this.d) {
            if (z && MainService.instance.k.y()) {
                Tools.a((int) R.string.data_collecting_in_progress, 0);
                return;
            }
            return;
        }
        this.d = true;
        this.e = z;
        this.f = str;
        if (z) {
            Tools.a((int) R.string.start_collecting_data, 0);
        }
        c();
    }

    private static void c() {
        rx.a().post(new aa());
    }

    public void a(List list) {
        boolean z;
        boolean z2;
        boolean z3;
        if (this.d) {
            try {
                if (list.size() == 0) {
                    la.b("listProcesses empty");
                    if (this.e || this.c == null) {
                        Tools.a((int) R.string.failed_find_package_name);
                        if (Config.C) {
                            ConfigListAdapter.b(R.string.help_game_not_listed_title);
                        }
                    }
                } else {
                    if (this.c != null) {
                        Iterator it = list.iterator();
                        while (it.hasNext()) {
                            if (((qh) it.next()).f == this.c.f) {
                                z = true;
                                break;
                            }
                        }
                    }
                    z = false;
                    if (this.f != null) {
                        Iterator it2 = list.iterator();
                        while (true) {
                            if (!it2.hasNext()) {
                                z3 = false;
                                z2 = z;
                                break;
                            }
                            qh qhVar = (qh) it2.next();
                            if (qhVar.c.equals(this.f)) {
                                a(qhVar);
                                z3 = true;
                                z2 = true;
                                break;
                            }
                        }
                        if (z3) {
                            this.e = false;
                        }
                    } else {
                        z2 = z;
                    }
                    if (!z2) {
                        a((qh) list.get(0));
                    }
                    if (Config.C && Config.G == 0) {
                        Config.G = (((qh) list.get(0)).n && Config.E.contains("64")) ? (byte) 1 : (byte) 2;
                    }
                    if (this.e) {
                        int size = list.size();
                        qg qgVar = new qg(1, "stub");
                        qgVar.d = qk.a((int) R.string.help_game_not_listed_title);
                        qgVar.h = true;
                        qh qhVar2 = new qh(qgVar, 1, 1, "stub", 0, false, 0);
                        qhVar2.e = Tools.b((int) R.drawable.ic_help_circle_outline_white_24dp);
                        list.add(qhVar2);
                        i.a(i.a(Tools.o()).setCustomTitle(Tools.d((int) R.string.reset)).setAdapter(new ab(this, MainService.context, list, list), new ac(this, size, list)));
                    }
                }
            } finally {
                this.d = false;
            }
        }
    }
}
