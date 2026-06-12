package android.ext;

import catch_.me_.if_.you_.can_.R;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class pt extends NumberFormatException {
    private ArrayList a;
    private String b;

    public pt(String str) {
        super(str);
        this.a = null;
        this.b = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str) {
        ArrayList arrayList = this.a;
        if (arrayList == null) {
            arrayList = new ArrayList();
            this.a = arrayList;
        }
        arrayList.add(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(long j) {
        a(Tools.a(qk.a("__d__"), Long.valueOf(j)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Object obj) {
        a(Tools.a(qk.a("__d__"), obj));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        String message;
        boolean z;
        boolean z2;
        if (this.b == null && (message = getMessage()) != null) {
            int indexOf = message.indexOf(qk.a((int) R.string.locale_ui));
            if (indexOf > 0) {
                message = message.substring(0, indexOf);
                z = true;
            } else {
                z = false;
            }
            ArrayList arrayList = this.a;
            if (arrayList != null) {
                Collections.sort(arrayList, new pu(this));
                Iterator it = arrayList.iterator();
                z2 = z;
                while (it.hasNext()) {
                    String str = (String) it.next();
                    if (str != null) {
                        String a_ = Script.a_(str);
                        if (!str.equals(a_) && message.indexOf(str) >= 0) {
                            message = message.replace(str, a_);
                            z2 = true;
                        }
                    }
                }
            } else {
                z2 = z;
            }
            String str2 = indexOf > 0 ? String.valueOf(message) + qk.a((int) R.string.locale_script) + " (en_US):\n" + Tools.a(ps.a((int) R.string.locale_desc), '.', ',') : message;
            if (z2) {
                this.b = str2;
            }
        }
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        String str = this.b;
        return str != null ? str : super.getMessage();
    }
}
