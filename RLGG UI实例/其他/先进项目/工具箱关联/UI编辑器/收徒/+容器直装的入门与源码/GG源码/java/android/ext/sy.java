package android.ext;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.fix.ScrollView;
import android.text.SpannableString;
import android.text.style.BackgroundColorSpan;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.TextView;
import catch_.me_.if_.you_.can_.R;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class sy implements Runnable {
    private final /* synthetic */ String a;
    private final /* synthetic */ int b;
    private final /* synthetic */ String c;
    private final /* synthetic */ DialogInterface.OnClickListener d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public sy(String str, int i, String str2, DialogInterface.OnClickListener onClickListener) {
        this.a = str;
        this.b = i;
        this.c = str2;
        this.d = onClickListener;
    }

    @Override // java.lang.Runnable
    public void run() {
        int indexOf;
        View a = android.fix.i.a((int) R.layout.logcat, (ViewGroup) null);
        TextView textView = (TextView) a.findViewById(R.id.logcat_text);
        textView.setText(this.a);
        if ((this.b & 4) != 0 && (indexOf = this.a.indexOf(8291)) >= 0) {
            SpannableString spannableString = new SpannableString(this.a);
            spannableString.setSpan(new BackgroundColorSpan(-7864320), indexOf, indexOf + 4, 33);
            textView.setText(spannableString);
        }
        ScrollView scrollView = (ScrollView) a.findViewById(R.id.logcat_page);
        scrollView.setFastScrollEnabled(true);
        AlertDialog.Builder view = i.c().setPositiveButton(qk.a((int) R.string.ok), (DialogInterface.OnClickListener) null).setView(a);
        if ((this.b & 2) == 0) {
            view.setNegativeButton(R.string.copy, new sz(this, textView));
        }
        if (this.c != null) {
            view.setNeutralButton(this.c, this.d);
        }
        AlertDialog create = view.create();
        if ((this.b & 1) != 0) {
            i.a(create, new ta(this, scrollView));
        }
        i.c(create);
        Window window = create.getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.width = -1;
        window.setAttributes(attributes);
    }
}
