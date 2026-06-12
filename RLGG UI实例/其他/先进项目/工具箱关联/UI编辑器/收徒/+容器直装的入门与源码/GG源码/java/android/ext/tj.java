package android.ext;

import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.TextWatcher;
import android.widget.TextView;

/* compiled from: src */
/* loaded from: classes.dex */
class tj implements TextWatcher {
    final /* synthetic */ ti a;
    private final /* synthetic */ CharSequence[] b;
    private final /* synthetic */ TextView c;
    private final /* synthetic */ Drawable[] d;
    private final /* synthetic */ int e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public tj(ti tiVar, CharSequence[] charSequenceArr, TextView textView, Drawable[] drawableArr, int i) {
        this.a = tiVar;
        this.b = charSequenceArr;
        this.c = textView;
        this.d = drawableArr;
        this.e = i;
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        try {
            String charSequence2 = charSequence.toString();
            for (int i4 = 0; i4 < this.b.length; i4++) {
                if (this.b[i4].toString().equals(charSequence2)) {
                    Tools.a(this.c, this.d[i4], this.e);
                    return;
                }
            }
        } catch (Throwable th) {
            la.a(th);
        }
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        onTextChanged(editable, 0, 0, 0);
    }
}
