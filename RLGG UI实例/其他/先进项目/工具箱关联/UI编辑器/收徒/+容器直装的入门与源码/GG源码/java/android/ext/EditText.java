package android.ext;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import catch_.me_.if_.you_.can_.R;
import java.lang.reflect.Field;

/* compiled from: src */
/* loaded from: classes.dex */
public class EditText extends android.fix.EditText implements ha {
    private static volatile gz[] b = new gz[0];
    private int a;

    @Override // android.ext.ha
    public int getDataType() {
        return this.a;
    }

    @Override // android.ext.ha
    public void setDataType(int i) {
        this.a = i;
    }

    @TargetApi(21)
    public EditText(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.a = -1;
        if (!isInEditMode()) {
            setInputType((Config.B & 8) != 0 ? 1 : 524289);
        }
        setSingleLine(true);
        setSelectAllOnFocus(true);
        setMinEms(10);
        setCursorVisible(true);
        setFocusableInTouchMode(true);
        try {
            Field declaredField = TextView.class.getDeclaredField("mCursorDrawableRes");
            declaredField.setAccessible(true);
            declaredField.set(this, 0);
        } catch (Exception e) {
        }
        if (isInEditMode()) {
            return;
        }
        a(this);
    }

    public EditText(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = -1;
        if (!isInEditMode()) {
            setInputType((Config.B & 8) != 0 ? 1 : 524289);
        }
        setSingleLine(true);
        setSelectAllOnFocus(true);
        setMinEms(10);
        setCursorVisible(true);
        setFocusableInTouchMode(true);
        try {
            Field declaredField = TextView.class.getDeclaredField("mCursorDrawableRes");
            declaredField.setAccessible(true);
            declaredField.set(this, 0);
        } catch (Exception e) {
        }
        if (isInEditMode()) {
            return;
        }
        a(this);
    }

    public EditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = -1;
        if (!isInEditMode()) {
            setInputType((Config.B & 8) != 0 ? 1 : 524289);
        }
        setSingleLine(true);
        setSelectAllOnFocus(true);
        setMinEms(10);
        setCursorVisible(true);
        setFocusableInTouchMode(true);
        try {
            Field declaredField = TextView.class.getDeclaredField("mCursorDrawableRes");
            declaredField.setAccessible(true);
            declaredField.set(this, 0);
        } catch (Exception e) {
        }
        if (isInEditMode()) {
            return;
        }
        a(this);
    }

    public EditText(Context context) {
        super(context);
        this.a = -1;
        if (!isInEditMode()) {
            setInputType((Config.B & 8) != 0 ? 1 : 524289);
        }
        setSingleLine(true);
        setSelectAllOnFocus(true);
        setMinEms(10);
        setCursorVisible(true);
        setFocusableInTouchMode(true);
        try {
            Field declaredField = TextView.class.getDeclaredField("mCursorDrawableRes");
            declaredField.setAccessible(true);
            declaredField.set(this, 0);
        } catch (Exception e) {
        }
        if (isInEditMode()) {
            return;
        }
        a(this);
    }

    private static int b(android.widget.EditText editText) {
        try {
            if (Build.VERSION.SDK_INT >= 16) {
                return editText.getHighlightColor();
            }
        } catch (Throwable th) {
            la.c("Failed getHighlightColor", th);
        }
        try {
            Field declaredField = TextView.class.getDeclaredField("mHighlightColor");
            declaredField.setAccessible(true);
            return declaredField.getInt(editText);
        } catch (Throwable th2) {
            la.c("Failed getHighlightColor2", th2);
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(android.widget.EditText editText) {
        int[] iArr = View.ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET;
        int i = -16777216;
        Drawable background = editText.getBackground();
        if (background != null) {
            int a = (int) Tools.a(36.0f);
            Rect copyBounds = background.copyBounds();
            int[] state = background.getState();
            background.setBounds(0, 0, a, a);
            background.setState(iArr);
            try {
                Bitmap createBitmap = Bitmap.createBitmap(a, a, Bitmap.Config.ARGB_8888);
                background.draw(new Canvas(createBitmap));
                i = createBitmap.getPixel(a / 2, a / 2);
                background.setBounds(copyBounds);
                background.setState(state);
            } catch (OutOfMemoryError e) {
                la.b("Failed checkContrast", e);
                return;
            }
        }
        if (a(a(editText.getTextColors().getColorForState(iArr, editText.getCurrentTextColor()), i), i, a(b(editText), i))) {
            editText.setTextColor(-1);
            editText.setHighlightColor(-6262672);
            editText.setBackgroundResource(R.drawable.abc_textfield_default_mtrl_alpha);
        }
    }

    private static int a(int i, int i2) {
        int alpha = Color.alpha(i);
        int i3 = -16777216;
        for (int i4 = 0; i4 < 3; i4++) {
            i3 |= (((((i >> (i4 * 8)) & 255) * alpha) + (((i2 >> (i4 * 8)) & 255) * (255 - alpha))) / 255) << (i4 * 8);
        }
        return i3;
    }

    private static boolean a(int i, int i2, int i3) {
        float[] fArr = {2.0f, 50.0f, 150.0f};
        return a(i, i2, new float[]{4.5f, 125.0f, 500.0f}) || a(i, i3, fArr) || a(i3, i2, fArr);
    }

    private static boolean a(int i, int i2, float[] fArr) {
        gz gzVar;
        gz[] gzVarArr = b;
        int length = gzVarArr.length;
        int i3 = 0;
        while (true) {
            if (i3 >= length) {
                gzVar = null;
                break;
            }
            gzVar = gzVarArr[i3];
            if (gzVar.a == i && gzVar.b == i2) {
                break;
            }
            i3++;
        }
        if (gzVar == null) {
            gzVar = new gz();
            gzVar.a = i;
            gzVar.b = i2;
            a(gzVar);
            int length2 = gzVarArr.length;
            gz[] gzVarArr2 = new gz[length2 + 1];
            System.arraycopy(gzVarArr, 0, gzVarArr2, 0, length2);
            gzVarArr2[length2] = gzVar;
            b = gzVarArr2;
        }
        return gzVar.c < fArr[0] || gzVar.d < fArr[1] || gzVar.e < fArr[2];
    }

    private static void a(gz gzVar) {
        int i = gzVar.a;
        int i2 = gzVar.b;
        la.a("checkContrast(fg, bg): " + Integer.toHexString(i) + ' ' + Integer.toHexString(i2));
        gzVar.c = (float) b(i, i2);
        gzVar.d = (float) Math.abs(b(i) - b(i2));
        gzVar.e = (float) c(i, i2);
        try {
            la.a("checkContrast(fg, bg): " + gzVar.c + ", " + gzVar.d + ", " + gzVar.e);
        } catch (Throwable th) {
            la.a(th);
        }
    }

    private static double a(int i) {
        double red = Color.red(i) / 255.0d;
        double green = Color.green(i) / 255.0d;
        double blue = Color.blue(i) / 255.0d;
        double pow = red <= 0.03928d ? red / 12.92d : Math.pow((red + 0.055d) / 1.055d, 2.4d);
        return ((blue <= 0.03928d ? blue / 12.92d : Math.pow((0.055d + blue) / 1.055d, 2.4d)) * 0.0722d) + ((green <= 0.03928d ? green / 12.92d : Math.pow((0.055d + green) / 1.055d, 2.4d)) * 0.7152d) + (pow * 0.2126d);
    }

    private static double b(int i, int i2) {
        double a = a(i) + 0.05d;
        double a2 = a(i2) + 0.05d;
        return a > a2 ? a / a2 : a2 / a;
    }

    private static double b(int i) {
        return (((Color.red(i) * 299) + (Color.green(i) * 587)) + (Color.blue(i) * 114)) / 1000.0d;
    }

    private static double c(int i, int i2) {
        int red = Color.red(i);
        int green = Color.green(i);
        int blue = Color.blue(i);
        int red2 = Color.red(i2);
        int green2 = Color.green(i2);
        int blue2 = Color.blue(i2);
        return (Math.max(red, red2) - Math.min(red, red2)) + (Math.max(green, green2) - Math.min(green, green2)) + (Math.max(blue, blue2) - Math.min(blue, blue2));
    }
}
