package android.ext;

import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class th implements ViewGroup.OnHierarchyChangeListener {
    private final /* synthetic */ int a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public th(int i) {
        this.a = i;
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
            }
        } catch (Throwable th) {
            la.a(th);
        }
    }

    @Override // android.view.ViewGroup.OnHierarchyChangeListener
    public void onChildViewRemoved(View view, View view2) {
    }
}
