package android.ext;

import catch_.me_.if_.you_.can_.R;

/* compiled from: src */
/* loaded from: classes.dex */
class ny implements Runnable {
    final /* synthetic */ nx a;
    private final /* synthetic */ String b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ny(nx nxVar, String str) {
        this.a = nxVar;
        this.b = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        String str;
        try {
            Process b = qt.b(String.valueOf(Tools.removeNewLinesChars("h{hf#sp#lqvwdoo#0u#00del#{;9#")) + this.b);
            if (b == null) {
                str = String.valueOf(qk.a((int) R.string.reinstall_failed)) + "\nnull";
            } else {
                int waitFor = b.waitFor();
                str = waitFor == 0 ? qk.a((int) R.string.reinstall_ended) : String.valueOf(qk.a((int) R.string.reinstall_failed)) + "\ncode: " + waitFor;
            }
        } catch (InterruptedException e) {
            la.a("Reinstall failed", e);
            str = String.valueOf(qk.a((int) R.string.reinstall_failed)) + "\n" + e.getMessage();
        }
        Tools.a(str, 1);
    }
}
