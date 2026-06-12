package android.ext;

import android.annotation.TargetApi;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.ColorDrawable;
import android.os.DeadObjectException;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import catch_.me_.if_.you_.can_.R;

/* compiled from: src */
/* loaded from: classes.dex */
public class me extends Dialog implements DialogInterface.OnDismissListener {
    private View a;

    public me(Context context, View view) {
        super(context);
        this.a = view;
        requestWindowFeature(1);
        setContentView(Tools.d(view));
        setCanceledOnTouchOutside(false);
        setCancelable(false);
        setOnDismissListener(this);
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        la.a("MainDialog dismiss");
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (super.onKeyDown(i, keyEvent)) {
            return true;
        }
        if (i == 82) {
            keyEvent.startTracking();
            return true;
        }
        return false;
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (super.onKeyUp(i, keyEvent)) {
            return true;
        }
        if (i == 82 && keyEvent.isTracking() && !keyEvent.isCanceled()) {
            a();
            return true;
        }
        return false;
    }

    public void a() {
        la.a("MainDialog menu");
        MainService.instance.e();
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        super.onBackPressed();
        la.a("MainDialog back");
        MainService.instance.g();
    }

    @Override // android.app.Dialog
    public void show() {
        b();
        Tools.a(getWindow());
        try {
            super.show();
            Tools.l(getWindow().getDecorView());
        } catch (Throwable th) {
            Throwable cause = th.getCause();
            if (cause != null && (cause instanceof DeadObjectException)) {
                i.a(i.c().setCustomTitle(Tools.d((int) R.string.failed_add_window)).setMessage(qk.a((int) R.string.system_service_stopped)).setPositiveButton(qk.a((int) R.string.exit), new ib(800)).setNegativeButton(qk.a((int) R.string.skip), (DialogInterface.OnClickListener) null));
            }
            la.c("main show failed", th);
        }
        if (!isShowing()) {
            la.b("main show fail");
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        try {
            super.dismiss();
            Tools.d(this.a);
        } catch (Throwable th) {
            Throwable cause = th.getCause();
            if (cause != null && (cause instanceof DeadObjectException)) {
                i.a(i.c().setCustomTitle(Tools.d((int) R.string.failed_remove_window)).setMessage(qk.a((int) R.string.system_service_stopped)).setPositiveButton(qk.a((int) R.string.exit), new ib(900)).setNegativeButton(qk.a((int) R.string.skip), (DialogInterface.OnClickListener) null));
            }
            la.c("main dismiss failed", th);
        }
        if (isShowing()) {
            la.b("main hide fail");
        }
    }

    @TargetApi(11)
    private void b() {
        this.a.setPadding(0, (Config.B & 16) != 0 ? (int) Tools.a(24.0f) : 0, 0, 0);
        Window window = getWindow();
        window.setAttributes(c());
        window.setBackgroundDrawable(new ColorDrawable(0));
        if ((Config.B & 2) != 0) {
            window.addFlags(16777216);
        } else {
            window.clearFlags(16777216);
        }
        ShowApp.a(window);
    }

    private WindowManager.LayoutParams c() {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        layoutParams.type = rv.a();
        layoutParams.width = -1;
        layoutParams.height = -1;
        layoutParams.format = -2;
        layoutParams.horizontalMargin = 0.0f;
        layoutParams.horizontalWeight = 1.0f;
        layoutParams.verticalMargin = 0.0f;
        layoutParams.verticalWeight = 1.0f;
        layoutParams.dimAmount = 0.0f;
        return layoutParams;
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        try {
            return super.dispatchTouchEvent(motionEvent);
        } catch (Throwable th) {
            la.a(th);
            return false;
        }
    }

    @Override // android.app.Dialog
    public void setContentView(int i) {
        try {
            super.setContentView(i);
        } catch (RuntimeException e) {
            la.a(e);
        }
    }

    @Override // android.app.Dialog
    public void setContentView(View view) {
        try {
            super.setContentView(view);
        } catch (RuntimeException e) {
            la.a(e);
        }
    }

    @Override // android.app.Dialog
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        try {
            super.setContentView(view, layoutParams);
        } catch (RuntimeException e) {
            la.a(e);
        }
    }
}
