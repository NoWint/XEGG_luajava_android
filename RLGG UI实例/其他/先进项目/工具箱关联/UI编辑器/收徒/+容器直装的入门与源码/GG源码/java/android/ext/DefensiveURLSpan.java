package android.ext;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Parcel;
import android.text.SpannableString;
import android.text.style.URLSpan;
import android.util.AndroidRuntimeException;
import android.view.View;
import android.view.WindowManager;
import android.widget.TextView;

/* compiled from: src */
/* loaded from: classes.dex */
public class DefensiveURLSpan extends URLSpan {
    public DefensiveURLSpan(String str) {
        super(str);
    }

    public DefensiveURLSpan(Parcel parcel) {
        super(parcel);
    }

    @Override // android.text.style.URLSpan, android.text.style.ClickableSpan
    public void onClick(View view) {
        Throwable e = null;
        try {
            try {
                super.onClick(view);
            } catch (AndroidRuntimeException e2) {
                e = e2;
            } catch (WindowManager.BadTokenException e3) {
                e = e3;
            } catch (SecurityException e4) {
                e = e4;
            }
            if (e != null) {
                try {
                    la.b("failed onClick on URLSpan: " + getURL(), e);
                    Uri parse = Uri.parse(getURL());
                    Context context = view.getContext();
                    Intent intent = new Intent("android.intent.action.VIEW", parse);
                    intent.putExtra("com.android.browser.application_id", Tools.g());
                    intent.setFlags(268435456);
                    try {
                        context.startActivity(intent);
                    } catch (Throwable th) {
                        la.b("failed2 onClick on URLSpan: " + getURL(), e);
                    }
                } catch (SecurityException e5) {
                    la.b("failed onClick on URLSpan: " + getURL(), e5);
                    return;
                }
            }
            i.d();
        } catch (ActivityNotFoundException e6) {
            la.b("failed call activity", e6);
        }
    }

    public static void a(TextView textView) {
        a(textView.getText());
    }

    public static void a(CharSequence charSequence) {
        URLSpan[] uRLSpanArr;
        if (charSequence instanceof SpannableString) {
            SpannableString spannableString = (SpannableString) charSequence;
            for (URLSpan uRLSpan : (URLSpan[]) spannableString.getSpans(0, spannableString.length(), URLSpan.class)) {
                int spanStart = spannableString.getSpanStart(uRLSpan);
                int spanEnd = spannableString.getSpanEnd(uRLSpan);
                spannableString.removeSpan(uRLSpan);
                spannableString.setSpan(new DefensiveURLSpan(uRLSpan.getURL()), spanStart, spanEnd, 0);
            }
        }
    }
}
