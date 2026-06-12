package android.ext;

import android.view.View;

/* compiled from: src */
/* loaded from: classes.dex */
class gy extends ku {
    final /* synthetic */ gx a;
    private final /* synthetic */ EditTextPath b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gy(gx gxVar, EditTextPath editTextPath) {
        this.a = gxVar;
        this.b = editTextPath;
    }

    @Override // android.ext.ku
    protected boolean a(View view, boolean z) {
        return view == this.b;
    }
}
