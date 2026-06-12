package android.ext;

import catch_.me_.if_.you_.can_.R;
import java.util.GregorianCalendar;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class dp extends gr {
    final /* synthetic */ ConfigListAdapter a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dp(ConfigListAdapter configListAdapter, String str) {
        super(str);
        this.a = configListAdapter;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Tools.a("Logcat: " + qk.a((int) R.string.loading), 0);
        Tools.b(new GregorianCalendar().getTime().toString() + '\n' + gs.a(true), 3);
    }
}
