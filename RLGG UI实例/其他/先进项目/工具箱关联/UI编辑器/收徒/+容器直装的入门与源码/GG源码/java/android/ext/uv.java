package android.ext;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.view.ActionMode;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.SearchEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;

/* compiled from: src */
/* loaded from: classes.dex */
public class uv implements Window.Callback {
    Window.Callback a;
    private InternalKeyboard b = null;
    private boolean c = false;
    private boolean d = false;
    private boolean e = false;

    public uv(Window.Callback callback) {
        this.a = callback;
    }

    @Override // android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        try {
            return this.a.dispatchKeyEvent(keyEvent);
        } catch (Throwable th) {
            la.a(th);
            return false;
        }
    }

    @Override // android.view.Window.Callback
    @TargetApi(11)
    public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
        try {
            return this.a.dispatchKeyShortcutEvent(keyEvent);
        } catch (Throwable th) {
            la.a(th);
            return false;
        }
    }

    @Override // android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        try {
            return this.a.dispatchTouchEvent(motionEvent);
        } catch (Throwable th) {
            la.a(th);
            return false;
        }
    }

    @Override // android.view.Window.Callback
    public boolean dispatchTrackballEvent(MotionEvent motionEvent) {
        return this.a.dispatchTrackballEvent(motionEvent);
    }

    @Override // android.view.Window.Callback
    @TargetApi(12)
    public boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        try {
            return this.a.dispatchGenericMotionEvent(motionEvent);
        } catch (Throwable th) {
            la.a(th);
            return false;
        }
    }

    @Override // android.view.Window.Callback
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return this.a.dispatchPopulateAccessibilityEvent(accessibilityEvent);
    }

    @Override // android.view.Window.Callback
    public View onCreatePanelView(int i) {
        return this.a.onCreatePanelView(i);
    }

    @Override // android.view.Window.Callback
    public boolean onCreatePanelMenu(int i, Menu menu) {
        return this.a.onCreatePanelMenu(i, menu);
    }

    @Override // android.view.Window.Callback
    public boolean onPreparePanel(int i, View view, Menu menu) {
        return this.a.onPreparePanel(i, view, menu);
    }

    @Override // android.view.Window.Callback
    public boolean onMenuOpened(int i, Menu menu) {
        return this.a.onMenuOpened(i, menu);
    }

    @Override // android.view.Window.Callback
    public boolean onMenuItemSelected(int i, MenuItem menuItem) {
        return this.a.onMenuItemSelected(i, menuItem);
    }

    @Override // android.view.Window.Callback
    public void onWindowAttributesChanged(WindowManager.LayoutParams layoutParams) {
        try {
            this.a.onWindowAttributesChanged(layoutParams);
        } catch (IllegalArgumentException e) {
            la.a(e);
        }
    }

    @Override // android.view.Window.Callback
    public void onContentChanged() {
        this.a.onContentChanged();
    }

    public void a(InternalKeyboard internalKeyboard) {
        this.b = internalKeyboard;
    }

    @Override // android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        try {
            this.a.onWindowFocusChanged(z);
        } catch (IllegalArgumentException e) {
            la.a(e);
        }
        if (this.b != null) {
            this.b.b();
        }
    }

    @Override // android.view.Window.Callback
    public void onAttachedToWindow() {
        this.a.onAttachedToWindow();
    }

    @Override // android.view.Window.Callback
    @SuppressLint({"MissingSuperCall"})
    public void onDetachedFromWindow() {
        this.a.onDetachedFromWindow();
    }

    @Override // android.view.Window.Callback
    public void onPanelClosed(int i, Menu menu) {
        this.a.onPanelClosed(i, menu);
    }

    @Override // android.view.Window.Callback
    public boolean onSearchRequested() {
        return this.a.onSearchRequested();
    }

    @Override // android.view.Window.Callback
    @TargetApi(11)
    public ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
        Throwable th;
        a aVar = null;
        if (!this.c) {
            this.c = true;
            try {
                ActionMode onWindowStartingActionMode = this.a.onWindowStartingActionMode(callback);
                if (onWindowStartingActionMode == null) {
                    try {
                        aVar = new a(callback);
                        if (callback.onCreateActionMode(aVar, aVar.getMenu())) {
                            aVar.invalidate();
                            aVar.a();
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        aVar = onWindowStartingActionMode;
                        try {
                            la.c("Fail on onWindowStartingActionMode", th);
                            return aVar;
                        } finally {
                            this.c = false;
                        }
                    }
                } else {
                    aVar = onWindowStartingActionMode;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
        return aVar;
    }

    @Override // android.view.Window.Callback
    @TargetApi(11)
    public void onActionModeStarted(ActionMode actionMode) {
        if (!this.d) {
            this.d = true;
            try {
                this.a.onActionModeStarted(actionMode);
            } finally {
                this.d = false;
            }
        }
    }

    @Override // android.view.Window.Callback
    @TargetApi(11)
    public void onActionModeFinished(ActionMode actionMode) {
        if (!this.e) {
            this.e = true;
            try {
                this.a.onActionModeFinished(actionMode);
                actionMode.finish();
            } finally {
                this.e = false;
            }
        }
    }

    @Override // android.view.Window.Callback
    @TargetApi(23)
    public boolean onSearchRequested(SearchEvent searchEvent) {
        return this.a.onSearchRequested(searchEvent);
    }

    @Override // android.view.Window.Callback
    @TargetApi(23)
    public ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i) {
        try {
            ActionMode onWindowStartingActionMode = this.a.onWindowStartingActionMode(callback, i);
            if (onWindowStartingActionMode == null && i == 0) {
                return onWindowStartingActionMode(callback);
            }
            return onWindowStartingActionMode;
        } catch (Throwable th) {
            la.c("Fail on onWindowStartingActionMode", th);
            return null;
        }
    }
}
