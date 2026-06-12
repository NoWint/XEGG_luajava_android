package android.ext;

import android.ext.Config;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import android.widget.SeekBar;
import catch_.me_.if_.you_.can_.R;
import java.lang.ref.WeakReference;

/* compiled from: src */
/* loaded from: classes.dex */
class cj extends Config.OptionSeek {
    private WeakReference m;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cj(int i, int i2, int i3, int i4, String str, boolean z, int i5) {
        super(i, i2, i3, i4, str, z, i5);
        this.m = new WeakReference(null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.ext.Config.OptionSeek
    public void b() {
        super.b();
        SeekBar seekBar = (SeekBar) this.l.get();
        if (seekBar != null) {
            ImageView imageView = new ImageView(seekBar.getContext());
            imageView.setImageResource(R.drawable.ic_tooltip_edit_white_24dp);
            this.m = new WeakReference(imageView);
            Config.a(imageView, Config.b(seekBar.getProgress()));
            ViewParent parent = seekBar.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).addView(imageView);
            }
        }
    }

    @Override // android.ext.Config.OptionSeek, android.widget.SeekBar.OnSeekBarChangeListener
    public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
        ImageView imageView = (ImageView) this.m.get();
        if (imageView != null) {
            Config.a(imageView, Config.b(i));
        }
    }
}
