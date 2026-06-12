package android.ext;

import android.view.View;

/* compiled from: src */
/* loaded from: classes.dex */
class eh implements View.OnClickListener {
    final /* synthetic */ ConfigListAdapter a;
    private final /* synthetic */ EditTextSpeeds b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public eh(ConfigListAdapter configListAdapter, EditTextSpeeds editTextSpeeds) {
        this.a = configListAdapter;
        this.b = editTextSpeeds;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.b.setText(ky.a());
    }
}
