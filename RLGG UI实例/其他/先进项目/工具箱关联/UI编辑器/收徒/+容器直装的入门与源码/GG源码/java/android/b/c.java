package android.b;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

/* compiled from: src */
/* loaded from: classes.dex */
public class c extends a implements SubMenu {
    Drawable c;
    Drawable d;
    View e;
    MenuItem f;
    a g;
    private CharSequence h;

    public c(Context context, a aVar, MenuItem menuItem) {
        super(context);
        this.h = "";
        this.c = null;
        this.d = null;
        this.e = null;
        this.f = menuItem;
        this.g = aVar;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(int i) {
        return setHeaderTitle(this.b.getString(i));
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(CharSequence charSequence) {
        this.h = charSequence;
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(int i) {
        return setHeaderIcon(this.b.getDrawable(i));
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(Drawable drawable) {
        this.c = drawable;
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderView(View view) {
        this.e = view;
        return this;
    }

    @Override // android.view.SubMenu
    public void clearHeader() {
        this.e = null;
        this.h = "";
        this.c = null;
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(int i) {
        return setIcon(this.b.getDrawable(i));
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(Drawable drawable) {
        this.d = drawable;
        return this;
    }

    @Override // android.view.SubMenu
    public MenuItem getItem() {
        return this.f;
    }
}
