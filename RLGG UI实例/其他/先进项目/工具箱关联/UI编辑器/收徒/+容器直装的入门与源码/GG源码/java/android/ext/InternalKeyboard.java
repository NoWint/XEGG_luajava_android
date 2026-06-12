package android.ext;

import android.content.Context;
import android.content.res.Resources;
import android.inputmethodservice.Keyboard;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ScrollView;
import catch_.me_.if_.you_.can_.R;
import java.lang.ref.WeakReference;

/* compiled from: src */
/* loaded from: classes.dex */
public class InternalKeyboard extends android.fix.g {
    private boolean b;
    private boolean c;
    private boolean d;
    private boolean e;
    private int f;
    private WeakReference g;
    private boolean h;
    private int i;

    public InternalKeyboard(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.d = true;
        this.e = false;
        this.f = 0;
        this.g = new WeakReference(null);
        this.h = false;
        this.i = -1;
        a(context);
    }

    public InternalKeyboard(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.d = true;
        this.e = false;
        this.f = 0;
        this.g = new WeakReference(null);
        this.h = false;
        this.i = -1;
        a(context);
    }

    public InternalKeyboard(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.d = true;
        this.e = false;
        this.f = 0;
        this.g = new WeakReference(null);
        this.h = false;
        this.i = -1;
        a(context);
    }

    public void setAllowUseInternal(boolean z) {
        this.d = z;
    }

    public void setFlags(int i) {
        this.f = i;
    }

    public int getFlags() {
        return this.f;
    }

    private Window getWindow() {
        return (Window) this.g.get();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i, int[] iArr) {
        this.h = true;
        try {
            a(i);
        } finally {
            this.h = false;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    void a(int i) {
        int i2;
        Window window = getWindow();
        if (window != null) {
            View currentFocus = window.getCurrentFocus();
            if (currentFocus instanceof android.widget.EditText) {
                android.widget.EditText editText = (android.widget.EditText) currentFocus;
                int max = Math.max(editText.getSelectionStart(), 0);
                int max2 = Math.max(editText.getSelectionEnd(), 0);
                String str = null;
                if (i < 5000) {
                    str = String.valueOf((char) i);
                    i2 = 0;
                } else {
                    switch (i) {
                        case 5000:
                            i2 = 67;
                            break;
                        case 5001:
                            i2 = 112;
                            break;
                        case 5002:
                            str = ps.a;
                            i2 = 0;
                            break;
                        case 5003:
                            str = String.valueOf(ps.b);
                            i2 = 0;
                            break;
                        case 5004:
                        case 5005:
                            if (!(max == max2 && ((max == 0 && i == 5004) || (max == editText.getText().length() && i == 5005)))) {
                                i2 = i == 5004 ? 21 : 22;
                                break;
                            }
                            i2 = 0;
                            break;
                        case 5006:
                            e();
                            i2 = 0;
                            break;
                        case 5007:
                            iw.a(editText);
                            i2 = 0;
                            break;
                        case 5008:
                            Tools.a(editText);
                            i2 = 0;
                            break;
                        case 5009:
                            d();
                            i2 = 0;
                            break;
                        case 5010:
                            f();
                            i2 = 0;
                            break;
                        default:
                            i2 = 0;
                            break;
                    }
                }
                if (str != null) {
                    editText.getText().replace(Math.min(max, max2), Math.max(max, max2), str, 0, str.length());
                    editText.setSelection(Math.max(editText.getSelectionStart(), editText.getSelectionEnd()));
                }
                if (i2 != 0) {
                    try {
                        editText.dispatchKeyEvent(new KeyEvent(0, i2));
                        editText.dispatchKeyEvent(new KeyEvent(1, i2));
                    } catch (Throwable th) {
                        la.c("Failed send key to app", th);
                    }
                }
            }
        }
    }

    private void d() {
        boolean z = (Config.B & 64) == 0;
        Config.a((int) R.id.config_kbd_small).d = z ? 1 : 0;
        Config.c();
        g();
    }

    private void e() {
        this.b = !this.b;
        g();
    }

    private void f() {
        this.c = !this.c;
        g();
    }

    private void a(Context context) {
        this.b = false;
        this.c = false;
        if (!isInEditMode()) {
            try {
                setPreviewEnabled(false);
                setOnKeyboardActionListener(new kq(this));
            } catch (Throwable th) {
                la.c("Failed init internal keyboard", th);
            }
        }
    }

    private void g() {
        setKeyboard(this.d && (Config.B & 1) != 0);
    }

    public void setHideKeyboard(boolean z) {
        boolean z2 = this.e;
        this.e = z;
        if (z2 != z) {
            g();
        }
    }

    private int a(boolean z, boolean z2, boolean z3, boolean z4) {
        return z ? z2 ? R.id.k_hex : z3 ? R.id.k_fn : z4 ? R.id.k_small : R.id.k_num : R.id.k_ext;
    }

    private void a(Keyboard.Key key, String str) {
        key.label = str;
        if (key.codes == null) {
            key.codes = new int[1];
        }
        key.codes[0] = str.charAt(0);
    }

    private void a(Keyboard.Key key) {
        if ((this.f & 1) != 0 && ":".equals(key.label)) {
            a(key, "?");
        }
        if ((this.f & 2) != 0 && ";".equals(key.label)) {
            a(key, "*");
        }
        if ((this.f & 4) != 0 && "~".equals(key.label)) {
            a(key, "^");
        }
        if ((this.f & 8) != 0 && "r".equals(key.label)) {
            a(key, "$");
        }
    }

    private void setKeyboard(boolean z) {
        Keyboard keyboard;
        boolean z2 = this.b;
        boolean z3 = this.c;
        boolean z4 = (Config.B & 64) != 0;
        int i = this.e ? R.xml.empty : R.xml.keyboard;
        Keyboard keyboard2 = new Keyboard(MainService.context, i, a(z, z2, z3, z4));
        if (this.e) {
            keyboard = keyboard2;
        } else {
            if (z2 && keyboard2.getKeys().size() == 0) {
                keyboard2 = new Keyboard(MainService.context, i, a(z, false, z3, z4));
                z2 = false;
            }
            if (z3 && keyboard2.getKeys().size() == 0) {
                keyboard2 = new Keyboard(MainService.context, i, a(z, z2, false, z4));
                z3 = false;
            }
            keyboard = (z4 && keyboard2.getKeys().size() == 0) ? new Keyboard(MainService.context, i, a(z, z2, z3, false)) : keyboard2;
        }
        SparseIntArray sparseIntArray = new SparseIntArray();
        for (Keyboard.Key key : keyboard.getKeys()) {
            if (key != null) {
                sparseIntArray.put(key.y, sparseIntArray.get(key.y, 0) + 1);
                if (!z3) {
                    a(key);
                }
                if (key.codes != null && key.codes.length != 0) {
                    if (key.codes[0] == 5002) {
                        key.label = ps.a;
                    }
                    if (key.codes[0] == 5003) {
                        key.label = String.valueOf(ps.b);
                    }
                }
            }
        }
        Resources resources = getContext().getResources();
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams != null && sparseIntArray.size() > 0) {
            layoutParams.width = Math.round(resources.getDimension(R.dimen.key_width) * sparseIntArray.valueAt(0));
            layoutParams.height = Math.round(resources.getDimension(R.dimen.key_height) * sparseIntArray.size());
            setLayoutParams(layoutParams);
            la.a("Kbd: " + sparseIntArray.valueAt(0) + " x " + sparseIntArray.size() + "; " + layoutParams.width + 'x' + layoutParams.height + "; " + keyboard.getMinWidth() + 'x' + keyboard.getHeight());
        }
        if (this.h) {
            post(new kr(this, keyboard));
        } else {
            setKeyboard(keyboard);
        }
    }

    public void a(Window window) {
        this.g = new WeakReference(window);
        if (this.d && (Config.B & 1) != 0) {
            window.addFlags(131072);
        } else {
            window.clearFlags(131072);
        }
        g();
        View decorView = window.getDecorView();
        Window.Callback callback = window.getCallback();
        if ((callback instanceof uv) && decorView.getWidth() == 0) {
            ((uv) callback).a(this);
        } else {
            b();
        }
    }

    public static void a(View view, boolean z) {
        InternalKeyboard internalKeyboard = (InternalKeyboard) view.getRootView().findViewById(R.id.keyboard);
        if (internalKeyboard != null) {
            internalKeyboard.b(view, z);
            if (!z) {
                Tools.e(view);
            }
        }
    }

    public void b(View view, boolean z) {
        if (view != null) {
            try {
                Window window = getWindow();
                if (window != null) {
                    Tools.a(window, view, z);
                }
                if (z) {
                    setKeyboard(false);
                } else {
                    g();
                }
            } catch (Throwable th) {
                la.c("Failed show/hide kbd: " + z, th);
            }
        }
    }

    public void a() {
        g();
        b();
    }

    public void b() {
        int i;
        Window window = getWindow();
        if (window != null && this.i != (i = MainService.context.getResources().getConfiguration().orientation)) {
            this.i = i;
            a(window, i != 1);
        }
    }

    private void a(Window window, boolean z) {
        int i;
        WindowManager.LayoutParams attributes = window.getAttributes();
        View decorView = window.getDecorView();
        int width = decorView.getWidth();
        try {
            decorView.measure(-2, -2);
            i = Math.max(width, decorView.getMeasuredWidth());
        } catch (Throwable th) {
            la.a(th);
            i = width;
        }
        if (z) {
            int width2 = getWidth();
            try {
                measure(-2, -2);
                i += Math.max(width2, getMeasuredWidth());
            } catch (Throwable th2) {
                la.a(th2);
            }
        } else {
            i += Tools.b();
        }
        attributes.width = i;
        if (attributes.width >= MainService.context.getResources().getDisplayMetrics().widthPixels) {
            attributes.width = -1;
        }
        window.setAttributes(attributes);
    }

    public static View a(View view) {
        return c(view, true);
    }

    public static View c(View view, boolean z) {
        if (c()) {
            KeyboardLayout keyboardLayout = (KeyboardLayout) android.fix.i.a((int) R.layout.keyboard, (ViewGroup) null);
            ViewGroup viewGroup = (ViewGroup) keyboardLayout.findViewById(view instanceof ScrollView ? R.id.kbd_frame : R.id.kbd_scroll);
            viewGroup.addView(view);
            viewGroup.setVisibility(0);
            InternalKeyboard internalKeyboard = (InternalKeyboard) keyboardLayout.findViewById(R.id.keyboard);
            internalKeyboard.setAllowUseInternal(z);
            Object tag = view.getTag();
            if (tag instanceof kt) {
                internalKeyboard.setFlags(((kt) tag).a);
            }
            keyboardLayout.a();
            return keyboardLayout;
        }
        return view;
    }

    public static boolean c() {
        try {
            return android.fix.i.a((int) R.layout.keyboard, (ViewGroup) null) != null;
        } catch (Throwable th) {
            la.c("Check internal keyboard fail", th);
            return false;
        }
    }

    @Override // android.view.View
    public void playSoundEffect(int i) {
        try {
            super.playSoundEffect(i);
        } catch (Throwable th) {
            la.a(th);
        }
    }

    @Override // android.view.View, android.view.accessibility.AccessibilityEventSource
    public void sendAccessibilityEvent(int i) {
        try {
            super.sendAccessibilityEvent(i);
        } catch (Throwable th) {
            la.a(th);
        }
    }

    public static void a(View view, int i) {
        Tools.a(view, new ks(i));
    }
}
