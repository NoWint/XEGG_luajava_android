package android.ext;

import android.widget.Button;
import catch_.me_.if_.you_.can_.R;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class sd implements Runnable {
    final /* synthetic */ TimeJumpPanel a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public sd(TimeJumpPanel timeJumpPanel) {
        this.a = timeJumpPanel;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.a.e = (Button) this.a.findViewById(R.id.time_jump_last);
        this.a.f = (Button) this.a.findViewById(R.id.time_jump);
        this.a.e.setOnClickListener(this.a);
        this.a.f.setOnClickListener(this.a);
        this.a.j();
        HotPoint hotPoint = MainService.instance.l;
        this.a.setLayoutAlpha(hotPoint.getLayoutAlpha());
        this.a.setMinSize(hotPoint.getSizePx());
    }
}
