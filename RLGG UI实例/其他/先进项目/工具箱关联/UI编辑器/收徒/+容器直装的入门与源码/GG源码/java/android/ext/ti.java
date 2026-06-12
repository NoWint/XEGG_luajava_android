package android.ext;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class ti implements ViewGroup.OnHierarchyChangeListener {
    private final /* synthetic */ int a;
    private final /* synthetic */ CharSequence[] b;
    private final /* synthetic */ Drawable[] c;
    private final /* synthetic */ int d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ti(int i, CharSequence[] charSequenceArr, Drawable[] drawableArr, int i2) {
        this.a = i;
        this.b = charSequenceArr;
        this.c = drawableArr;
        this.d = i2;
    }

    @Override // android.view.ViewGroup.OnHierarchyChangeListener
    public void onChildViewRemoved(View view, View view2) {
    }

    @Override // android.view.ViewGroup.OnHierarchyChangeListener
    public void onChildViewAdded(View view, View view2) {
        try {
            View findViewById = view2.findViewById(16908308);
            if (findViewById instanceof TextView) {
                TextView textView = (TextView) findViewById;
                if (this.a != 0) {
                    Tools.a(textView, this.a);
                }
                if (textView.getTag() == null) {
                    tj tjVar = new tj(this, this.b, textView, this.c, this.d);
                    textView.addTextChangedListener(tjVar);
                    textView.setTag(tjVar);
                    tjVar.onTextChanged(textView.getText(), 0, 0, 0);
                }
            }
        } catch (Throwable th) {
            la.a(th);
        }
    }
}
