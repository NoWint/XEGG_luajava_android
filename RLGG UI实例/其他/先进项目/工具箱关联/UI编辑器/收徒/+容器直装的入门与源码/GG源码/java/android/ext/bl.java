package android.ext;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;
import catch_.me_.if_.you_.can_.R;

/* compiled from: src */
/* loaded from: classes.dex */
public class bl implements DialogInterface.OnShowListener, View.OnClickListener {
    volatile AlertDialog a;
    long k = -1;
    long l = -1;
    long m = -1;
    final Runnable n = new bm(this);
    final View j = android.fix.i.a((int) R.layout.service_busy_dialog, (ViewGroup) null);
    final TextView b = (TextView) this.j.findViewById(R.id.message);
    final ProgressBar c = (ProgressBar) this.j.findViewById(R.id.progress_bar);
    final TextView d = (TextView) this.j.findViewById(R.id.progress_bar_text);
    final View e = this.j.findViewById(R.id.stage_layout);
    final ProgressBar f = (ProgressBar) this.j.findViewById(R.id.progress_bar_stage);
    final TextView g = (TextView) this.j.findViewById(R.id.progress_bar_stage_text);
    final TextView h = (TextView) this.j.findViewById(R.id.found_count);
    final TextView i = (TextView) this.j.findViewById(R.id.time);

    public bl() {
        this.j.findViewById(R.id.help_speed_up).setOnClickListener(this);
    }

    @Override // android.content.DialogInterface.OnShowListener
    public void onShow(DialogInterface dialogInterface) {
        Tools.a(dialogInterface, -1, Integer.valueOf((int) R.string.hide), MainService.instance);
        Tools.a(dialogInterface, -2, Integer.valueOf((int) R.id.abort_button), MainService.instance);
    }

    public boolean a(boolean z) {
        AlertDialog alertDialog = this.a;
        if (alertDialog != null) {
            i.c(alertDialog);
            if (z) {
                la.a("Show busy dialog not first time", new RuntimeException());
            }
        } else if (z) {
            rx.a(new bn(this));
        }
        return true;
    }

    public void b(boolean z) {
        AlertDialog alertDialog = this.a;
        if (alertDialog != null) {
            rx.a().removeCallbacks(this.n);
            Tools.a((DialogInterface) alertDialog);
            if (z) {
                this.a = null;
            }
        }
    }

    public boolean a() {
        return this.a != null;
    }

    public void a(CharSequence charSequence, long j, long j2, int i, int i2, long j3, String str) {
        if (a()) {
            if (rx.c()) {
                b(charSequence, j, j2, i, i2, j3, str);
            } else {
                rx.a(new bo(this, charSequence, j, j2, i, i2, j3, str));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(CharSequence charSequence, long j, long j2, int i, int i2, long j3, String str) {
        if (charSequence != null) {
            this.b.setText(charSequence);
        }
        if (j < 0 || j2 == 0) {
            this.d.setText(str);
            this.c.setIndeterminate(true);
        } else {
            this.c.setIndeterminate(false);
            this.c.setMax((int) j2);
            this.c.setProgress((int) j);
            this.d.setText(str);
        }
        if (i >= 0) {
            if (i2 <= 1) {
                this.e.setVisibility(8);
            } else {
                this.f.setMax(i2);
                this.f.setProgress(i);
                this.g.setText(Tools.a(qk.a((int) R.string.from), Integer.valueOf(i), Integer.valueOf(i2)));
                this.e.setVisibility(0);
            }
        }
        this.h.setText(Tools.a(qk.a((int) R.string.found_count), Long.valueOf(j3)));
        long currentTimeMillis = System.currentTimeMillis();
        if (j < 0) {
            this.k = -1L;
            this.l = -1L;
            this.m = -1L;
        } else if (this.m != j2) {
            this.k = currentTimeMillis;
            this.l = j;
            this.m = j2;
        }
        long round = (this.k < 0 || currentTimeMillis - this.k < 2000 || j - this.l == 0) ? -1L : Math.round((((currentTimeMillis - this.k) * (j2 - j)) / (j - this.l)) / 1000.0d);
        if (round <= 0) {
            this.i.setText("");
        } else {
            this.i.setText(String.valueOf(Tools.c((int) R.string.time_remaining)) + ": " + Tools.a(round));
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        ConfigListAdapter.b(R.string.help_speed_up);
    }
}
