package android.ext;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import catch_.me_.if_.you_.can_.R;

/* compiled from: src */
/* loaded from: classes.dex */
class mt extends ArrayAdapter {
    final /* synthetic */ ms a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public mt(ms msVar, Context context, pj[] pjVarArr) {
        super(context, pjVarArr);
        this.a = msVar;
    }

    @Override // android.ext.ArrayAdapter, android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View view2 = super.getView(i, view, viewGroup);
        TextView textView = (TextView) view2.findViewById(16908308);
        if (textView != null) {
            Tools.a(textView, (int) R.style.SmallText);
        }
        return view2;
    }
}
