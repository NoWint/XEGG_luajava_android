package android.ext;

import android.text.Editable;

/* compiled from: src */
/* loaded from: classes.dex */
class it implements cv {
    final /* synthetic */ is a;
    private final /* synthetic */ ct b;
    private final /* synthetic */ long c;
    private final /* synthetic */ EditText d;
    private final /* synthetic */ int e;
    private final /* synthetic */ int f;
    private final /* synthetic */ Editable g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public it(is isVar, ct ctVar, long j, EditText editText, int i, int i2, Editable editable) {
        this.a = isVar;
        this.b = ctVar;
        this.c = j;
        this.d = editText;
        this.e = i;
        this.f = i2;
        this.g = editable;
    }

    @Override // android.ext.cv
    public void a(int i) {
        this.b.a((cv) null);
        String a = Tools.a("%,d", Long.valueOf(this.c ^ Config.s));
        try {
            this.d.setSelection(this.e, this.f);
            this.g.replace(this.e, this.f, a);
        } catch (IndexOutOfBoundsException e) {
            la.b("Failed replace text", e);
            this.d.setText(a);
        }
        this.d.requestFocus();
    }
}
