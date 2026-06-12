package android.ext;

import android.widget.ImageView;
import android.widget.SeekBar;
import android.widget.TextView;

/* compiled from: src */
/* loaded from: classes.dex */
class ee implements SeekBar.OnSeekBarChangeListener {
    final /* synthetic */ ConfigListAdapter a;
    private final /* synthetic */ SeekBar b;
    private final /* synthetic */ SeekBar c;
    private final /* synthetic */ SeekBar d;
    private final /* synthetic */ TextView e;
    private final /* synthetic */ ImageView f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ee(ConfigListAdapter configListAdapter, SeekBar seekBar, SeekBar seekBar2, SeekBar seekBar3, TextView textView, ImageView imageView) {
        this.a = configListAdapter;
        this.b = seekBar;
        this.c = seekBar2;
        this.d = seekBar3;
        this.e = textView;
        this.f = imageView;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
        this.a.a((10 - this.b.getProgress()) / 10.0f, this.c.getMax() == this.c.getProgress() ? -1 : this.c.getProgress(), this.e, this.f, this.d.getProgress());
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
    }
}
