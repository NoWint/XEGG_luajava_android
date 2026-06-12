package android.fix;

import android.content.Context;
import android.content.res.Configuration;
import android.ext.la;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;

/* compiled from: src */
/* loaded from: classes.dex */
public class WrapLayout extends ViewGroup {
    private int[] a;
    private int b;

    public WrapLayout(Context context) {
        super(context);
        this.a = android.c.b.d;
        this.b = -1;
    }

    public WrapLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = android.c.b.d;
        this.b = -1;
    }

    public WrapLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = android.c.b.d;
        this.b = -1;
    }

    public WrapLayout(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.a = android.c.b.d;
        this.b = -1;
    }

    public void setFill(int i) {
        int i2 = this.b;
        this.b = i;
        if (i2 != i) {
            requestLayout();
            postInvalidate();
        }
    }

    private int a(boolean z, int i, int i2) {
        int[] iArr;
        int paddingRight;
        int paddingLeft;
        int makeMeasureSpec;
        int i3;
        int i4;
        int i5;
        int i6;
        int childCount = getChildCount();
        if (!z && this.a.length == childCount * 2) {
            return 0;
        }
        boolean z2 = this.b == 0;
        boolean z3 = this.b > 0;
        int[] iArr2 = new int[childCount * 2];
        int[] iArr3 = new int[childCount];
        if (!z3) {
            iArr = null;
        } else {
            iArr = new int[childCount];
        }
        if (z3) {
            paddingRight = getPaddingLeft();
            paddingLeft = getPaddingRight();
        } else {
            paddingRight = getPaddingRight();
            paddingLeft = getPaddingLeft();
        }
        int i7 = (i - paddingRight) - paddingLeft;
        int i8 = i - paddingRight;
        int paddingTop = getPaddingTop();
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        int i15 = paddingLeft;
        while (i14 < childCount) {
            View view = null;
            try {
                view = getChildAt(i14);
            } catch (ArrayIndexOutOfBoundsException e) {
            }
            if (view == null) {
                i6 = i13;
                i4 = i12;
                i5 = i11;
            } else if (view.getVisibility() == 8) {
                if (view instanceof ToolbarButton) {
                    ((ToolbarButton) view).setIcon(false);
                    i6 = i13;
                    i4 = i12;
                    i5 = i11;
                } else {
                    i6 = i13;
                    i4 = i12;
                    i5 = i11;
                }
            } else {
                ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                if (layoutParams.width == -1) {
                    makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i7, 1073741824);
                } else {
                    makeMeasureSpec = layoutParams.width > 0 ? View.MeasureSpec.makeMeasureSpec(layoutParams.width, 1073741824) : View.MeasureSpec.makeMeasureSpec(i7, Integer.MIN_VALUE);
                }
                view.measure(makeMeasureSpec, layoutParams.height > 0 ? View.MeasureSpec.makeMeasureSpec(layoutParams.height, 1073741824) : View.MeasureSpec.makeMeasureSpec(i2, 0));
                int measuredWidth = view.getMeasuredWidth();
                int measuredHeight = view.getMeasuredHeight();
                if (i15 <= paddingLeft || i15 + measuredWidth <= i8) {
                    if (i9 < measuredHeight) {
                        i3 = i13;
                        i4 = i12;
                        i5 = i11;
                        i9 = measuredHeight;
                    } else {
                        i3 = i13;
                        i4 = i12;
                        i5 = i11;
                    }
                } else {
                    while (i10 < i14) {
                        int i16 = childCount + i10;
                        iArr2[i16] = iArr2[i16] + ((i9 - iArr3[i10]) / 2);
                        if (z2) {
                            iArr2[i10] = iArr2[i10] + ((((i7 - i15) / 2) + paddingLeft) - i11);
                        }
                        i10++;
                    }
                    paddingTop += i9;
                    i3 = i13 + 1;
                    i4 = 0;
                    i5 = 0;
                    i10 = i14;
                    i9 = measuredHeight;
                    i15 = paddingLeft;
                }
                if (z2) {
                    if ((i14 - i10) % 2 != 0) {
                        iArr2[i14] = i4;
                        i4 += measuredWidth;
                    } else {
                        i5 -= measuredWidth;
                        iArr2[i14] = i5;
                    }
                } else {
                    iArr2[i14] = i15;
                }
                iArr2[childCount + i14] = paddingTop;
                iArr3[i14] = measuredHeight;
                if (z3) {
                    iArr[i14] = measuredWidth;
                }
                int i17 = i15 + measuredWidth;
                if (view instanceof ToolbarButton) {
                    ((ToolbarButton) view).setIcon(i3 == 0);
                }
                i6 = i3;
                i15 = i17;
            }
            i14++;
            i13 = i6;
            i12 = i4;
            i11 = i5;
        }
        while (i10 < childCount) {
            int i18 = childCount + i10;
            iArr2[i18] = iArr2[i18] + ((i9 - iArr3[i10]) / 2);
            if (z2) {
                iArr2[i10] = iArr2[i10] + ((((i7 - i15) / 2) + paddingLeft) - i11);
            }
            i10++;
        }
        if (z3) {
            for (int i19 = 0; i19 < childCount; i19++) {
                iArr2[i19] = (i - iArr2[i19]) - iArr[i19];
            }
        }
        this.a = iArr2;
        return paddingTop + i9 + getPaddingBottom();
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int a = a(true, size, size2);
        if (View.MeasureSpec.getMode(i2) != 0 && (View.MeasureSpec.getMode(i2) != Integer.MIN_VALUE || a > size2)) {
            a = size2;
        }
        setMeasuredDimension(size, a);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.LayoutParams(-2, -2);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.LayoutParams;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        a(false, i3 - i, i4 - i2);
        int[] iArr = this.a;
        for (int i5 = 0; i5 < childCount; i5++) {
            try {
                View childAt = getChildAt(i5);
                if (childAt != null && childAt.getVisibility() != 8) {
                    int measuredWidth = childAt.getMeasuredWidth();
                    int measuredHeight = childAt.getMeasuredHeight();
                    int i6 = iArr[i5];
                    int i7 = iArr[childCount + i5];
                    childAt.layout(i6, i7, measuredWidth + i6, measuredHeight + i7);
                }
            } catch (ArrayIndexOutOfBoundsException e) {
            }
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

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        boolean z;
        super.onConfigurationChanged(configuration);
        int childCount = getChildCount();
        int i = 0;
        boolean z2 = false;
        while (i < childCount) {
            View view = null;
            try {
                view = getChildAt(i);
            } catch (ArrayIndexOutOfBoundsException e) {
            }
            if (view == null) {
                z = z2;
            } else if (view instanceof ToolbarButton) {
                ((ToolbarButton) view).setIcon(false);
                z = true;
            } else {
                z = z2;
            }
            i++;
            z2 = z;
        }
        if (z2) {
            requestLayout();
        }
    }
}
