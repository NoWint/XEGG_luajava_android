package android.ext;

import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: src */
/* loaded from: classes.dex */
class tl implements View.OnFocusChangeListener {
    private final ArrayList a;

    private tl() {
        this.a = new ArrayList();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ tl(tl tlVar) {
        this();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(View.OnFocusChangeListener onFocusChangeListener) {
        if (onFocusChangeListener != null && !this.a.contains(onFocusChangeListener)) {
            this.a.add(onFocusChangeListener);
        }
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z) {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((View.OnFocusChangeListener) it.next()).onFocusChange(view, z);
        }
    }
}
