package android.ext;

import catch_.me_.if_.you_.can_.R;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class mc implements Runnable {
    @Override // java.lang.Runnable
    public void run() {
        if ((Config.c & 8) == 0) {
            StringBuilder sb = new StringBuilder();
            String[] a = ho.a();
            for (int i = 2; i < a.length; i += 2) {
                String str = a[i];
                if (Tools.e(a[i + 1])) {
                    sb.append('\n');
                    sb.append(str);
                    sb.append(" (");
                    sb.append(a[i + 1]);
                    sb.append(')');
                }
            }
            if (sb.length() != 0) {
                sb.append('\n');
                rx.a(lh.a(ar.f, Tools.a(qk.a((int) R.string.killers_found), sb.toString()), 8L, false));
            }
        }
    }
}
