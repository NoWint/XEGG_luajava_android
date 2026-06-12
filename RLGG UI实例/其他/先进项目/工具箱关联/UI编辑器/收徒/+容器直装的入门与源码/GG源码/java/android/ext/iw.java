package android.ext;

import android.content.SharedPreferences;
import android.view.View;
import catch_.me_.if_.you_.can_.R;
import java.util.Iterator;
import java.util.LinkedList;

/* compiled from: src */
/* loaded from: classes.dex */
public class iw {
    static final LinkedList a = new LinkedList();
    static int b = 0;

    public static void a() {
        e();
    }

    private static int a(int i) {
        int i2 = (i >> 1) | i;
        int i3 = i2 | (i2 >> 2);
        int i4 = i3 | (i3 >> 4);
        int i5 = i4 | (i4 >> 8);
        return (i5 | (i5 >> 16)) + 1;
    }

    private static void e() {
        SharedPreferences s = Tools.s();
        if (s != null) {
            LinkedList linkedList = a;
            int i = s.getInt("history-size", 0);
            int i2 = i > Config.x ? Config.x : i;
            boolean[] zArr = new boolean[a(i2)];
            int length = zArr.length - 1;
            for (int i3 = 0; i3 < i; i3++) {
                String string = s.getString("history-" + i3, null);
                if (string != null && string.length() != 0) {
                    int i4 = s.getInt("h-" + i3, 1);
                    if (i4 == 0) {
                        i4 = 1;
                    }
                    je jeVar = new je(string, i4, s.getString("hi-" + i3, "..."));
                    int hashCode = jeVar.hashCode() & length;
                    if (zArr[hashCode]) {
                        if (linkedList.indexOf(jeVar) != -1) {
                            continue;
                        }
                    } else {
                        zArr[hashCode] = true;
                    }
                    linkedList.addLast(jeVar);
                    if (linkedList.size() >= i2) {
                        break;
                    }
                }
            }
            b = s.getInt("history-sticked", 0);
            c();
            f();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b() {
        SharedPreferences s = Tools.s();
        if (s != null) {
            qw qwVar = new qw(s.edit());
            Iterator it = a.iterator();
            int i = 0;
            while (it.hasNext()) {
                je jeVar = (je) it.next();
                qwVar.putString("history-" + i, jeVar.a);
                qwVar.a("h-" + i, jeVar.b, 1);
                qwVar.a("hi-" + i, jeVar.d, "...");
                i++;
            }
            qwVar.a("history-size", i, 0);
            qwVar.a("history-sticked", b, 0);
            qwVar.commit();
        }
    }

    public static void a(String str, int i) {
        a(str, (byte) 0, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void c() {
        int i = b;
        if (i < 0) {
            b = 0;
            return;
        }
        int size = a.size();
        if (i > size) {
            b = size;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0037, code lost:
        r0 = r7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void a(java.lang.String r6, byte r7, int r8) {
        /*
            r2 = 1
            if (r6 == 0) goto L21
            int r0 = r6.length()
            if (r0 == 0) goto L21
            java.lang.String r0 = "0"
            boolean r0 = r0.equals(r6)
            if (r0 != 0) goto L21
            java.lang.String r0 = "-1"
            boolean r0 = r0.equals(r6)
            if (r0 != 0) goto L21
            java.lang.String r0 = "1"
            boolean r0 = r0.equals(r6)
            if (r0 == 0) goto L22
        L21:
            return
        L22:
            android.ext.je r3 = new android.ext.je
            java.lang.String r0 = "..."
            r3.<init>(r6, r8, r0)
            r0 = 0
            java.util.LinkedList r1 = android.ext.iw.a
            java.util.ListIterator r4 = r1.listIterator()
            r1 = r0
        L31:
            boolean r0 = r4.hasNext()
            if (r0 != 0) goto L4f
        L37:
            r0 = r7
        L38:
            if (r0 != 0) goto L3b
            r0 = 2
        L3b:
            if (r0 != r2) goto L74
            java.util.LinkedList r0 = android.ext.iw.a
            r0.addFirst(r3)
            int r0 = android.ext.iw.b
            int r0 = r0 + 1
            android.ext.iw.b = r0
        L48:
            f()
            b()
            goto L21
        L4f:
            java.lang.Object r0 = r4.next()
            android.ext.je r0 = (android.ext.je) r0
            boolean r5 = r0.equals(r3)
            if (r5 == 0) goto L70
            java.lang.String r0 = r0.d
            r3.d = r0
            r4.remove()
            int r0 = android.ext.iw.b
            if (r1 >= r0) goto L37
            int r0 = android.ext.iw.b
            int r0 = r0 + (-1)
            android.ext.iw.b = r0
            if (r7 != 0) goto L37
            r0 = r2
            goto L38
        L70:
            int r0 = r1 + 1
            r1 = r0
            goto L31
        L74:
            c()
            java.util.LinkedList r0 = android.ext.iw.a
            int r1 = android.ext.iw.b
            r0.add(r1, r3)
            goto L48
        */
        throw new UnsupportedOperationException("Method not decompiled: android.ext.iw.a(java.lang.String, byte, int):void");
    }

    private static void f() {
        LinkedList linkedList = a;
        int i = Config.x;
        if (linkedList.size() > i) {
            for (int size = linkedList.size() - i; size > 0; size--) {
                linkedList.removeLast();
            }
            c();
        }
    }

    public static void d() {
        a.clear();
        c();
    }

    public static void a(android.widget.EditText editText) {
        iy iyVar = new iy(Tools.o(), editText instanceof ha ? ((ha) editText).getDataType() : -1);
        if (iyVar.getCount() == 0) {
            Tools.a((int) R.string.history_empty);
            return;
        }
        iy.a = false;
        View b2 = Tools.b(qk.a((int) R.string.history), qk.a((int) R.string.click_edit));
        b2.setOnClickListener(iyVar);
        iyVar.b = i.a(Tools.o()).setCustomTitle(b2).setAdapter(iyVar, new ix(iyVar, editText)).create();
        i.c(iyVar.b);
    }
}
