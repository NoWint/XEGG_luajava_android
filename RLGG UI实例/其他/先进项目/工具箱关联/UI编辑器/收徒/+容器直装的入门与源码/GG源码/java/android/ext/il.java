package android.ext;

import android.widget.SeekBar;
import android.widget.TextView;

/* compiled from: src */
/* loaded from: classes.dex */
class il implements SeekBar.OnSeekBarChangeListener {
    final /* synthetic */ ik a;
    private final /* synthetic */ TextView b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public il(ik ikVar, TextView textView) {
        this.a = ikVar;
        this.b = textView;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
        this.b.setText(new StringBuilder().append(i + 1).toString());
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
    }
}
