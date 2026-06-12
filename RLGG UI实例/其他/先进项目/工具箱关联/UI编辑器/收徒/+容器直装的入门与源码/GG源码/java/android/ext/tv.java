package android.ext;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import catch_.me_.if_.you_.can_.R;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class tv extends ArrayAdapter {
    final /* synthetic */ tu a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public tv(tu tuVar, Context context, e[] eVarArr) {
        super(context, eVarArr);
        this.a = tuVar;
    }

    @Override // android.ext.ArrayAdapter, android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View view2 = super.getView(i, view, viewGroup);
        TextView textView = (TextView) view2.findViewById(16908308);
        if (textView != null) {
            Tools.a(textView, (int) R.style.SmallText);
            if (i >= 0 && i < this.a.a.length && this.a.a[i] != null) {
                textView.setTextColor(d.k(this.a.a[i].a));
            }
        }
        return view2;
    }
}
