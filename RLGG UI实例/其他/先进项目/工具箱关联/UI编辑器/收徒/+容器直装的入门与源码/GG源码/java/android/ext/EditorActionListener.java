package android.ext;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import java.lang.ref.WeakReference;

/* compiled from: src */
/* loaded from: classes.dex */
public class EditorActionListener implements TextView.OnEditorActionListener {
    private WeakReference a;

    public EditorActionListener(AlertDialog alertDialog) {
        this.a = new WeakReference(null);
        this.a = new WeakReference(alertDialog);
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        Button button;
        boolean z = false;
        if (i == 6 || i == 3 || i == 4 || i == 2) {
            AlertDialog alertDialog = (AlertDialog) this.a.get();
            if ((alertDialog instanceof AlertDialog) && (button = alertDialog.getButton(-1)) != null && button.getVisibility() == 0) {
                Tools.f(button);
                z = true;
            }
            if (!z && (alertDialog instanceof DialogInterface.OnClickListener)) {
                ((DialogInterface.OnClickListener) alertDialog).onClick(null, -1);
                z = true;
            }
            if (!z && (alertDialog instanceof View.OnClickListener)) {
                ((View.OnClickListener) alertDialog).onClick(textView);
                return true;
            }
        }
        return z;
    }
}
