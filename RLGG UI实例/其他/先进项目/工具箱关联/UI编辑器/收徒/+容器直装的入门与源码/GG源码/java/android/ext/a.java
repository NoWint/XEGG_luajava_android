package android.ext;

import android.annotation.TargetApi;
import android.content.Context;
import android.fix.Button;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.WindowManager;
import android.widget.LinearLayout;

/* compiled from: src */
@TargetApi(11)
/* loaded from: classes.dex */
public class a extends ActionMode implements View.OnClickListener {
    private LinearLayout d;
    private android.b.a e;
    private WindowManager.LayoutParams i;
    private ActionMode.Callback j;
    private CharSequence a = null;
    private CharSequence b = null;
    private View c = null;
    private boolean g = false;
    private boolean h = false;
    private Context f = MainService.context;

    public a(ActionMode.Callback callback) {
        this.d = null;
        this.e = null;
        this.e = new android.b.a(this.f);
        this.d = new android.fix.LinearLayout(this.f);
        this.d.setAlpha(1.0f);
        Drawable background = this.d.getBackground();
        this.d.setBackgroundColor((background instanceof ColorDrawable ? ((ColorDrawable) background).getColor() : 0) | (-16777216));
        this.i = new WindowManager.LayoutParams();
        this.i.type = rv.a();
        this.i.width = -1;
        this.i.height = -2;
        this.i.format = -2;
        this.i.flags = rv.c();
        this.i.gravity = 55;
        this.i.y = 0;
        this.i.alpha = 1.0f;
        this.j = callback;
    }

    @Override // android.view.ActionMode
    public void setTitle(CharSequence charSequence) {
        this.a = charSequence;
    }

    @Override // android.view.ActionMode
    public void setTitle(int i) {
        this.a = qk.a(i);
    }

    @Override // android.view.ActionMode
    public void setSubtitle(CharSequence charSequence) {
        this.b = charSequence;
    }

    @Override // android.view.ActionMode
    public void setSubtitle(int i) {
        this.b = qk.a(i);
    }

    @Override // android.view.ActionMode
    public void setCustomView(View view) {
        this.c = view;
        invalidate();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        MenuItem menuItem = (MenuItem) view.getTag();
        if (menuItem instanceof android.b.b) {
            ((android.b.b) menuItem).a();
        }
        this.j.onActionItemClicked(this, menuItem);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5, types: [int] */
    /* JADX WARN: Type inference failed for: r3v1, types: [android.b.a] */
    @Override // android.view.ActionMode
    @TargetApi(16)
    public void invalidate() {
        try {
            this.j.onPrepareActionMode(this, this.e);
        } finally {
            this.d.removeAllViews();
            int size = this.e.size();
            for (int i = 0; i < size; i++) {
                MenuItem item = this.e.getItem(i);
                Button button = new Button(this.f);
                button.setAlpha(1.0f);
                button.setFocusable(false);
                Drawable icon = item.getIcon();
                Tools.a(button, icon, 32);
                if (icon == null) {
                    button.setText(item.getTitle());
                }
                button.setTag(item);
                button.setOnClickListener(this);
                this.d.addView(button);
            }
            if (this.c != null) {
                this.d.addView(this.c);
            }
            this.d.invalidate();
            la.a("invalidate");
        }
    }

    @Override // android.view.ActionMode
    public void finish() {
        if (!this.h) {
            this.h = true;
            b();
            this.j.onDestroyActionMode(this);
        }
    }

    @Override // android.view.ActionMode
    public Menu getMenu() {
        return this.e;
    }

    @Override // android.view.ActionMode
    public CharSequence getTitle() {
        return this.a;
    }

    @Override // android.view.ActionMode
    public CharSequence getSubtitle() {
        return this.b;
    }

    @Override // android.view.ActionMode
    public View getCustomView() {
        return this.c;
    }

    @Override // android.view.ActionMode
    public MenuInflater getMenuInflater() {
        return new MenuInflater(this.f);
    }

    public void a() {
        if (!this.g) {
            try {
                Tools.b(this.d, this.i);
                this.g = true;
            } catch (Throwable th) {
                la.c("addView failed", th);
            }
        }
    }

    public void b() {
        if (this.g) {
            try {
                Tools.b((View) this.d);
            } catch (Throwable th) {
                la.c("removeView failed", th);
            }
            this.g = false;
        }
    }
}
