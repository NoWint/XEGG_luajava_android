package android.ext;

import android.os.Build;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import catch_.me_.if_.you_.can_.R;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class jh implements Runnable {
    final /* synthetic */ HotPoint a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public jh(HotPoint hotPoint) {
        this.a = hotPoint;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.a.h = this.a.findViewById(R.id.hot_frame);
        this.a.h.setOnClickListener(MainService.instance);
        this.a.g = (ImageView) this.a.findViewById(R.id.hot_point_icon);
        this.a.i = this.a.findViewById(R.id.progress_layout);
        this.a.j = (TextView) this.a.findViewById(R.id.progress_bar_text);
        this.a.k = (ProgressBar) this.a.findViewById(R.id.progress_bar);
        this.a.l = (ProgressBar) this.a.findViewById(R.id.progress_bar_stage);
        this.a.m = (TextView) Tools.d(this.a.findViewById(R.id.speed_text));
        this.a.n = (ImageView) this.a.findViewById(R.id.speed_inc);
        this.a.o = (ImageView) this.a.findViewById(R.id.speed_dec);
        this.a.n.setOnClickListener(this.a);
        this.a.o.setOnClickListener(this.a);
        this.a.m.setOnLongClickListener(this.a);
        if (Build.VERSION.SDK_INT >= 11) {
            this.a.m.addOnLayoutChangeListener(new ji(this));
        }
        this.a.a((byte) 2, -1L, 1L, 0, 1, "");
        this.a.j();
        this.a.k();
    }
}
