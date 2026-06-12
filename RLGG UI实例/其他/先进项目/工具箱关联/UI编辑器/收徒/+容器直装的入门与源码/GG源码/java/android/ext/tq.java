package android.ext;

/* compiled from: src */
/* loaded from: classes.dex */
class tq {
    private static final ThreadLocal a = new tr();

    private tq() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ tq(tq tqVar) {
        this();
    }

    public boolean a(int i) {
        int intValue = ((Integer) a.get()).intValue();
        if ((intValue & i) == 0) {
            a.set(Integer.valueOf(intValue | i));
            return true;
        }
        return false;
    }

    public void b(int i) {
        a.set(Integer.valueOf(((Integer) a.get()).intValue() & (i ^ (-1))));
    }
}
