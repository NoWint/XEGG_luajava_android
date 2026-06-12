package android.ext;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.AlertDialog;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.fix.FrameLayout;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.lang.ProcessBuilder;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.IBinder;
import android.os.Process;
import android.provider.Settings;
import android.system.Os;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.format.Formatter;
import android.text.style.ForegroundColorSpan;
import android.util.StateSet;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.AbsListView;
import android.widget.Button;
import android.widget.HorizontalScrollView;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ScrollView;
import android.widget.TextView;
import catch_.me_.if_.you_.can_.R;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Random;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: src */
/* loaded from: classes.dex */
public class Tools {
    public static final Random a = new Random(System.currentTimeMillis());
    static volatile int b;
    static InputMethodManager c;
    static volatile String[] d;
    private static int e;
    private static float f;
    private static volatile int g;
    private static Pattern h;
    private static String i;
    private static String j;
    private static String k;
    private static volatile PackageManager l;
    private static volatile String m;
    private static String n;
    private static final tq o;
    private static int[] p;
    private static volatile Object q;
    private static volatile WeakReference r;
    private static int s;
    private static WeakReference t;
    private static volatile boolean u;
    private static volatile byte v;
    private static volatile int w;

    static {
        e = Build.VERSION.SDK_INT >= 23 ? -1 : 1;
        f = 0.0f;
        g = -1;
        b = -1;
        h = Pattern.compile("(\\d+)");
        i = null;
        j = null;
        k = null;
        l = null;
        m = null;
        n = null;
        o = new tq(null);
        p = new int[]{R.string.unit_seconds_short, 60, R.string.unit_minutes_short, 60, R.string.unit_hours_short, 24, R.string.unit_days_short, 365, R.string.unit_years_short, -1};
        q = null;
        r = new WeakReference(null);
        s = 0;
        t = new WeakReference(null);
        u = false;
        v = (byte) 0;
        d = null;
        w = -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @TargetApi(23)
    public static void a() {
        if (Build.VERSION.SDK_INT >= 23) {
            try {
                if (!a(e())) {
                    la.b("canDrawOverlays = false");
                }
            } catch (Throwable th) {
                la.a(th);
            }
        }
    }

    public static boolean a(Context context) {
        if (Build.VERSION.SDK_INT >= 23) {
            try {
                return Settings.canDrawOverlays(context);
            } catch (Throwable th) {
                la.a(th);
            }
        }
        return true;
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    public final class ViewWrapper extends FrameLayout {
        public ViewWrapper(Context context) {
            super(context);
        }
    }

    public static void a(View view, WindowManager.LayoutParams layoutParams) {
        rx.a(new sk(layoutParams, view));
    }

    public static void a(View view) {
        rx.a(new su(view));
    }

    public static void b(View view, WindowManager.LayoutParams layoutParams) {
        la.a("dbg2: " + view + ' ' + layoutParams);
        a(view, layoutParams, true);
    }

    public static void a(Window window) {
        window.setAttributes(a(window.getAttributes()));
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x008c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.view.WindowManager.LayoutParams a(android.view.WindowManager.LayoutParams r4) {
        /*
            r1 = 0
            int r0 = android.ext.Config.B
            r0 = r0 & 2
            if (r0 == 0) goto L81
            int r0 = r4.flags
            r2 = 16777216(0x1000000, float:2.3509887E-38)
            r0 = r0 | r2
            r4.flags = r0
        Le:
            boolean r2 = android.ext.rv.a
            if (r2 == 0) goto Lb8
            int r0 = android.ext.Tools.e
            r3 = -1
            if (r0 != r3) goto L24
            android.content.Context r0 = e()
            boolean r0 = a(r0)
            if (r0 == 0) goto L8a
            r0 = 1
        L22:
            android.ext.Tools.e = r0
        L24:
            int r0 = android.ext.Tools.e
            if (r0 != 0) goto Lb8
            java.lang.String r0 = "canDrawOverlays = false; fixed"
            android.ext.la.a(r0)
        L2d:
            if (r1 != 0) goto L8c
            r0 = 2
            r4.type = r0
            android.ext.ar r0 = android.ext.ar.d
            android.view.Window r0 = r0.getWindow()
            android.view.WindowManager$LayoutParams r0 = r0.getAttributes()
            android.os.IBinder r0 = r0.token
            if (r0 != 0) goto L52
            android.ext.ar r0 = android.ext.ar.d
            android.view.Window r0 = r0.getWindow()
            android.view.View r0 = r0.getDecorView()
            android.view.View r0 = r0.getRootView()
            android.os.IBinder r0 = r0.getWindowToken()
        L52:
            r4.token = r0
        L54:
            boolean r0 = android.ext.Config.vSpaceReal
            if (r0 == 0) goto L80
            boolean r0 = android.ext.Config.D
            if (r0 != 0) goto L80
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "Use 10 "
            r0.<init>(r1)
            java.lang.String r1 = android.ext.Config.E
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r1 = " instead of "
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r1 = r4.packageName
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r0 = r0.toString()
            android.ext.la.a(r0)
            java.lang.String r0 = android.ext.Config.E
            r4.packageName = r0
        L80:
            return r4
        L81:
            int r0 = r4.flags
            r2 = -16777217(0xfffffffffeffffff, float:-1.7014117E38)
            r0 = r0 & r2
            r4.flags = r0
            goto Le
        L8a:
            r0 = r1
            goto L22
        L8c:
            int r0 = r4.type
            int r1 = android.ext.rv.a()
            if (r0 == r1) goto L9c
            int r0 = r4.type
            int r1 = android.ext.rv.b()
            if (r0 != r1) goto L54
        L9c:
            android.os.IBinder r0 = r4.token
            if (r0 == 0) goto L54
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "token: null "
            r0.<init>(r1)
            android.os.IBinder r1 = r4.token
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r0 = r0.toString()
            android.ext.la.a(r0)
            r0 = 0
            r4.token = r0
            goto L54
        Lb8:
            r1 = r2
            goto L2d
        */
        throw new UnsupportedOperationException("Method not decompiled: android.ext.Tools.a(android.view.WindowManager$LayoutParams):android.view.WindowManager$LayoutParams");
    }

    private static void a(View view, WindowManager.LayoutParams layoutParams, boolean z) {
        a(layoutParams);
        rx.a(new td(z, layoutParams, view));
    }

    public static void c(View view, WindowManager.LayoutParams layoutParams) {
        ViewParent parent = view.getParent();
        a(parent instanceof ViewWrapper ? (ViewWrapper) parent : view, layoutParams, false);
    }

    public static void b(View view) {
        rx.a(new te(view));
    }

    @TargetApi(16)
    public static void a(ImageView imageView, float f2) {
        rx.a(new tf(imageView, f2));
    }

    public static String a(String[] strArr, String str) {
        StringBuilder sb = new StringBuilder();
        for (String str2 : strArr) {
            if (sb.length() != 0) {
                sb.append(str);
            }
            sb.append(str2);
        }
        return sb.toString();
    }

    public static String removeNewLinesChars(String str) {
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < str.length(); i2++) {
            char charAt = str.charAt(i2);
            boolean z = false;
            for (int i3 = 0; i3 < 2; i3++) {
                z = z || charAt == '\n';
                if (i3 != 1) {
                    charAt = (char) (charAt - 3);
                }
            }
            if (z) {
                sb.append("");
            }
            sb.append(charAt);
        }
        return sb.toString();
    }

    public static int a(Process process) {
        try {
            Field declaredField = process.getClass().getDeclaredField("pid");
            declaredField.setAccessible(true);
            int i2 = declaredField.getInt(process);
            declaredField.setAccessible(false);
            return i2;
        } catch (Throwable th) {
            return -1;
        }
    }

    public static float a(float f2) {
        Context e2;
        float f3 = f;
        if (f3 == 0.0f && (e2 = e()) != null) {
            f3 = e2.getResources().getDisplayMetrics().density;
        }
        if (f3 == 0.0f) {
            f3 = 1.0f;
        }
        return f3 * f2;
    }

    public static int b() {
        if (g < 0) {
            g = (int) a(48.0f);
        }
        return g;
    }

    public static void a(TextView textView, Drawable drawable, int i2) {
        if (textView != null) {
            rx.a(new tg(drawable, i2, textView));
        }
    }

    public static void a(ListView listView, int i2) {
        listView.setOnHierarchyChangeListener(new th(i2));
    }

    public static void a(ListView listView, CharSequence[] charSequenceArr, Drawable[] drawableArr, int i2, int i3) {
        try {
            listView.setOnHierarchyChangeListener(new ti(i3, charSequenceArr, drawableArr, i2));
        } catch (Throwable th) {
            la.a(th);
        }
    }

    public static void a(String str) {
        a(str, true);
    }

    @TargetApi(11)
    public static void a(String str, boolean z) {
        if (str != null) {
            rx.a(new sl(str, z));
        }
    }

    public static void a(String str, int i2) {
        rx.a(new sm(str, i2));
    }

    public static void a(int i2, int i3) {
        a(qk.a(i2), i3);
    }

    public static void b(String str) {
        a(str, 1);
    }

    public static void a(int i2) {
        a(qk.a(i2), 1);
    }

    public static boolean c(View view) {
        if (view != null && view.getVisibility() == 0) {
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    try {
                        View childAt = viewGroup.getChildAt(i2);
                        if (childAt != null && childAt.getVisibility() == 0) {
                            if (childAt instanceof android.widget.EditText) {
                                return true;
                            }
                            if ((childAt instanceof ViewGroup) && c(childAt)) {
                                return true;
                            }
                        }
                    } catch (ArrayIndexOutOfBoundsException e2) {
                    }
                }
                return false;
            } else if (view instanceof android.widget.EditText) {
                return true;
            }
        }
        return false;
    }

    public static View d(View view) {
        ViewParent parent;
        if (view != null && (parent = view.getParent()) != null && (parent instanceof ViewGroup)) {
            try {
                ((ViewGroup) parent).removeView(view);
            } catch (Throwable th) {
                la.a(th);
            }
        }
        return view;
    }

    public static void a(TextView textView) {
        try {
            ViewTreeObserver viewTreeObserver = textView.getViewTreeObserver();
            if (viewTreeObserver != null) {
                viewTreeObserver.removeOnPreDrawListener(textView);
            }
        } catch (Throwable th) {
            la.a(th);
        }
    }

    public static void a(Window window, View view, boolean z) {
        InputMethodManager inputMethodManager = (InputMethodManager) e().getSystemService("input_method");
        int i2 = window.getAttributes().softInputMode & (-16);
        if (z) {
            window.clearFlags(131072);
            window.setSoftInputMode(i2 | 5);
            inputMethodManager.showSoftInput(view, 0);
            return;
        }
        inputMethodManager.hideSoftInputFromWindow(view.getWindowToken(), 0);
        window.addFlags(131072);
        window.setSoftInputMode(i2 | 2);
        inputMethodManager.hideSoftInputFromWindow(view.getWindowToken(), 0);
    }

    public static AlertDialog a(AlertDialog alertDialog) {
        try {
            TextView textView = (TextView) alertDialog.findViewById(16908299);
            if (textView != null) {
                a(textView, textView.getText().toString());
            }
        } catch (Throwable th) {
            la.a(th);
        }
        return alertDialog;
    }

    public static void a(TextView textView, String str) {
        rx.a(new sn(textView, str));
    }

    public static String c(String str) {
        String trim = str.trim();
        int length = trim.length();
        for (int i2 = length - 1; i2 > 0 && trim.charAt(i2) == '/'; i2--) {
            length--;
        }
        if (length < trim.length()) {
            return trim.substring(0, length);
        }
        return trim;
    }

    public static int c() {
        int i2 = -1;
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile("/proc/meminfo", "r");
            Matcher matcher = h.matcher(randomAccessFile.readLine());
            String str = "-2";
            while (matcher.find()) {
                str = matcher.group(1);
            }
            randomAccessFile.close();
            i2 = Integer.parseInt(str);
            return i2;
        } catch (Throwable th) {
            la.b("Failed get RAM size", th);
            return i2;
        }
    }

    public static void a(WeakReference weakReference) {
        AlertDialog alertDialog;
        if (weakReference != null && (alertDialog = (AlertDialog) weakReference.get()) != null) {
            b(alertDialog);
        }
    }

    public static void b(AlertDialog alertDialog) {
        rx.a(new so(alertDialog));
    }

    public static void b(Window window) {
        rx.a(new sp(window));
    }

    public static void e(View view) {
        rx.a(new sq(view));
    }

    public static void a(android.widget.EditText editText) {
        if (editText != null) {
            rx.a(new sr(editText));
        }
    }

    public static int a(Object obj) {
        if (obj != null) {
            if (obj instanceof android.c.a) {
                android.c.a aVar = (android.c.a) obj;
                int b2 = aVar.b();
                int i2 = 0;
                for (int i3 = 0; i3 < b2; i3++) {
                    try {
                        if (aVar.b(i3)) {
                            i2++;
                        }
                    } catch (IndexOutOfBoundsException e2) {
                    }
                }
                return i2;
            } else if (obj instanceof android.c.e) {
                android.c.e eVar = (android.c.e) obj;
                int b3 = eVar.b();
                int i4 = 0;
                for (int i5 = 0; i5 < b3; i5++) {
                    if (eVar.d(i5)) {
                        i4++;
                    }
                }
                return i4;
            } else if (obj instanceof boolean[]) {
                boolean[] zArr = (boolean[]) obj;
                int length = zArr.length - 1;
                int i6 = 0;
                for (int i7 = 1; i7 < length; i7++) {
                    if (zArr[i7]) {
                        i6++;
                    }
                }
                return i6;
            } else {
                throw new IllegalArgumentException();
            }
        }
        return 0;
    }

    public static void a(Object obj, int i2) {
        if (obj != null) {
            boolean z = i2 == 1;
            if (obj instanceof android.c.a) {
                android.c.a aVar = (android.c.a) obj;
                int b2 = aVar.b();
                for (int i3 = 0; i3 < b2; i3++) {
                    aVar.a(i3, i2 == 2 ? !aVar.b(i3) : z);
                }
            } else if (obj instanceof android.c.e) {
                android.c.e eVar = (android.c.e) obj;
                int b3 = eVar.b();
                for (int i4 = 0; i4 < b3; i4++) {
                    eVar.a(i4, i2 == 2 ? !eVar.d(i4) : z);
                }
            } else if (obj instanceof boolean[]) {
                boolean[] zArr = (boolean[]) obj;
                int length = zArr.length - 1;
                for (int i5 = 1; i5 < length; i5++) {
                    zArr[i5] = i2 == 2 ? !zArr[i5] : z;
                }
            } else {
                throw new IllegalArgumentException();
            }
        }
    }

    public static boolean d(String str) {
        File file = new File(str);
        if (file.canExecute()) {
            return true;
        }
        String[] strArr = {"chmod", "0755", n(str)};
        try {
            if (!a(a(strArr), 15)) {
                la.b("timeout fail 1: " + Arrays.toString(strArr), new RuntimeException());
            }
        } catch (Exception e2) {
            la.b("exec", e2);
        }
        if (!Config.C) {
            if (file.canExecute()) {
                return true;
            }
            try {
                if (!a(qt.b("exec " + a(strArr, " ")), 15)) {
                    la.b("timeout fail 2: " + Arrays.toString(strArr), new RuntimeException());
                }
            } catch (Exception e3) {
                la.b("root", e3);
            }
        }
        return file.canExecute();
    }

    public static boolean b(Process process) {
        try {
            process.exitValue();
            return true;
        } catch (IllegalThreadStateException e2) {
            return false;
        }
    }

    public static boolean a(Process process, int i2) {
        FutureTask futureTask = new FutureTask(new ss(process));
        new hx(futureTask, "waitForTimeout: " + process).start();
        try {
            return ((Boolean) futureTask.get(i2, TimeUnit.SECONDS)).booleanValue();
        } catch (Exception e2) {
            return b(process);
        }
    }

    public static void a(String str, String str2) {
        try {
            if (Build.VERSION.SDK_INT >= 21) {
                Os.chmod(str, Integer.parseInt(str2, 8));
            } else if (Build.VERSION.SDK_INT >= 12) {
                Class.forName("libcore.io.Os").getMethod("chmod", String.class, Integer.TYPE).invoke(Class.forName("libcore.io.Libcore").getField("os").get(null), str, Integer.valueOf(Integer.parseInt(str2, 8)));
            }
        } catch (Throwable th) {
            la.b("Failed chmod " + str2 + " '" + str + "'", th);
        }
        String[] strArr = {"chmod", str2, n(str)};
        try {
            if (!a(a(strArr), 15)) {
                la.b("timeout fail 1: " + Arrays.toString(strArr), new RuntimeException());
            }
        } catch (Exception e2) {
            la.b("exec", e2);
        }
        try {
            if (!Config.C && !a(qt.b("exec " + a(strArr, " ")), 15)) {
                la.b("timeout fail 2: " + Arrays.toString(strArr), new RuntimeException());
            }
        } catch (Exception e3) {
            la.b("root", e3);
        }
    }

    public static void a(File file, int i2) {
        file.setExecutable((i2 & 64) != 0, (i2 & 9) == 0);
        file.setWritable((i2 & 128) != 0, (i2 & 18) == 0);
        file.setReadable((i2 & 256) != 0, (i2 & 36) == 0);
        if (Build.VERSION.SDK_INT >= 21) {
            try {
                Os.chmod(file.getAbsolutePath(), i2);
            } catch (Throwable th) {
                la.b("Failed chmod " + Integer.toOctalString(i2) + " '" + file + "'", th);
            }
        }
    }

    public static Throwable b(Context context) {
        try {
            context.getPackageName();
            context.getPackageManager();
            context.getCacheDir();
            context.getFilesDir();
            context.getExternalCacheDir();
            context.getExternalFilesDir(null);
            return null;
        } catch (Throwable th) {
            return th;
        }
    }

    public static void d() {
        new gr(new st(), "checkForBadContext").start();
    }

    public static Context c(Context context) {
        Context context2 = context;
        while (context2 instanceof ContextWrapper) {
            context2 = ((ContextWrapper) context2).getBaseContext();
        }
        return context2;
    }

    public static String d(Context context) {
        StringBuilder sb = new StringBuilder();
        sb.append("Context: ");
        sb.append(context);
        Context context2 = context;
        while (context2 != null && (context2 instanceof ContextWrapper)) {
            context2 = ((ContextWrapper) context2).getBaseContext();
            sb.append(", base: ");
            sb.append(context2);
        }
        return sb.toString();
    }

    public static Context e() {
        Context context = MainService.context;
        if (context == null && ar.f != null) {
            if (c(ar.f) == null) {
                return ar.e;
            }
            return ar.f;
        }
        return context;
    }

    public static Drawable b(int i2) {
        if (Build.VERSION.SDK_INT >= 21) {
            try {
                return e().getDrawable(i2);
            } catch (NoSuchMethodError e2) {
                return e().getResources().getDrawable(i2);
            }
        }
        return e().getResources().getDrawable(i2);
    }

    public static boolean e(String str) {
        try {
            c(str, 0);
            return true;
        } catch (PackageManager.NameNotFoundException e2) {
            return false;
        }
    }

    private static tn a(Class cls, tn[] tnVarArr) {
        tn tnVar;
        int i2 = Build.VERSION.SDK_INT > 15 ? 0 : 1;
        tn tnVar2 = null;
        try {
            tnVar2 = tnVarArr[i2].a();
        } catch (NoSuchMethodException e2) {
            int i3 = 0;
            while (i3 < tnVarArr.length) {
                if (i3 == i2) {
                    tnVar = tnVar2;
                } else {
                    try {
                        tnVar = tnVarArr[i3].a();
                    } catch (NoSuchMethodException e3) {
                        tnVar = tnVar2;
                    }
                }
                i3++;
                tnVar2 = tnVar;
            }
        }
        if (tnVar2 == null) {
            la.a("Methods: " + Arrays.toString(cls.getMethods()));
        }
        return tnVar2;
    }

    public static final String a(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b2 : bArr) {
            String upperCase = Integer.toHexString(b2 & 255).toUpperCase(Locale.US);
            while (upperCase.length() < 2) {
                upperCase = String.valueOf('0') + upperCase;
            }
            sb.append(upperCase);
        }
        return sb.toString();
    }

    public static Drawable a(Drawable drawable, int i2) {
        Throwable th;
        Bitmap bitmap;
        try {
            if (!(drawable instanceof BitmapDrawable) || (bitmap = ((BitmapDrawable) drawable).getBitmap()) == null) {
                return drawable;
            }
            if (bitmap.getWidth() > i2 + 4 || bitmap.getHeight() > i2 + 4) {
                long currentTimeMillis = System.currentTimeMillis();
                BitmapDrawable bitmapDrawable = new BitmapDrawable(e().getResources(), Bitmap.createScaledBitmap(bitmap, i2, i2, false));
                try {
                    la.a("getResized: " + bitmap.getWidth() + 'x' + bitmap.getHeight() + " -> " + i2 + 'x' + i2 + " in " + (System.currentTimeMillis() - currentTimeMillis));
                    return bitmapDrawable;
                } catch (Throwable th2) {
                    th = th2;
                    drawable = bitmapDrawable;
                    la.a(th);
                    return drawable;
                }
            }
            return drawable;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static Drawable a(Drawable drawable) {
        if (drawable != null) {
            try {
                Drawable.ConstantState constantState = drawable.getConstantState();
                if (constantState != null) {
                    return constantState.newDrawable();
                }
                return drawable;
            } catch (Throwable th) {
                la.a(th);
                return drawable;
            }
        }
        return drawable;
    }

    public static void e(Context context) {
        try {
            g(context);
        } catch (Throwable th) {
            la.a(th);
        }
    }

    public static void a(Activity activity) {
        try {
            g(activity);
        } catch (Throwable th) {
            la.a(th);
        }
        try {
            g(activity.getApplication());
        } catch (Throwable th2) {
            la.a(th2);
        }
        try {
            g(activity.getApplicationContext());
        } catch (Throwable th3) {
            la.a(th3);
        }
    }

    @SuppressLint({"SdCardPath"})
    private static void g(Context context) {
        if (l == null) {
            try {
                l = context.getPackageManager();
            } catch (Throwable th) {
                la.a(th);
            }
        }
        if (i == null) {
            try {
                i = context.getPackageName();
            } catch (Throwable th2) {
                la.a(th2);
            }
        }
        if (i == null) {
            i = y.d;
        }
        if (j == null) {
            try {
                j = context.getFilesDir().getAbsolutePath();
            } catch (Throwable th3) {
                la.a(th3);
            }
        }
        if (k == null) {
            try {
                k = context.getCacheDir().getAbsolutePath();
            } catch (Throwable th4) {
                la.a(th4);
            }
        }
        if (j == null && i != null) {
            j = String.valueOf(f()) + "/files";
        }
        if (k == null && i != null) {
            k = String.valueOf(f()) + "/cache";
        }
        if (j != null) {
            try {
                File file = new File(j);
                if (!file.exists()) {
                    file.mkdirs();
                }
            } catch (Throwable th5) {
                la.a(th5);
            }
        }
        if (k != null) {
            try {
                File file2 = new File(k);
                if (!file2.exists()) {
                    file2.mkdirs();
                }
            } catch (Throwable th6) {
                la.a(th6);
            }
        }
    }

    public static String f() {
        StringBuilder sb = new StringBuilder();
        sb.append("/data/");
        int myUid = Process.myUid() / 100000;
        if (myUid == 0) {
            sb.append("data");
        } else {
            sb.append("user/");
            sb.append(myUid);
        }
        sb.append('/');
        String str = i;
        if (str == null) {
            str = y.d;
        }
        sb.append(str);
        return sb.toString();
    }

    public static String g() {
        String str = i;
        if (str == null) {
            return y.d;
        }
        return str;
    }

    private static String p(String str) {
        if (m == null) {
            try {
                ApplicationInfo j2 = j(y.d);
                if (j2 != null) {
                    m = j2.dataDir;
                }
            } catch (Throwable th) {
                la.a(th);
            }
        }
        return (m == null || str == null) ? m : String.valueOf(m) + str;
    }

    public static File h() {
        String str = k;
        String p2 = str == null ? p("/cache") : str;
        if (p2 != null) {
            return new File(p2);
        }
        return null;
    }

    public static File i() {
        String str = j;
        String p2 = str == null ? p("/files") : str;
        if (p2 != null) {
            return new File(p2);
        }
        return null;
    }

    public static String j() {
        String str = null;
        if (n == null) {
            try {
                SharedPreferences s2 = s();
                if (!s2.contains("hidden-dir")) {
                    String v2 = v();
                    if (v2 == null) {
                        v2 = u();
                    }
                    s2.edit().putString("hidden-dir", v2).commit();
                }
                try {
                    str = s2.getString("hidden-dir", null);
                } catch (ClassCastException e2) {
                }
                if (str == null) {
                    int i2 = s2.getInt("hidden-dir", 0);
                    if (i2 == 0) {
                        s2.edit().remove("hidden-dir").commit();
                    } else {
                        str = Integer.toString(i2);
                        s2.edit().putString("hidden-dir", str).commit();
                    }
                }
            } catch (Throwable th) {
                la.b("Failed get num", th);
                str = v();
            }
            if (str == null) {
                str = u();
            }
            n = "GG-" + str;
        }
        return n;
    }

    private static String u() {
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < 4; i2++) {
            int nextInt = a.nextInt(63);
            if (nextInt < 10) {
                sb.append((char) (nextInt + 48));
            } else if (nextInt < 36) {
                sb.append((char) ((nextInt + 65) - 10));
            } else {
                sb.append((char) (((nextInt + 97) - 10) - 26));
            }
        }
        return sb.toString();
    }

    private static String v() {
        String[] list;
        try {
            File i2 = i();
            if (i2 == null || (list = i2.list()) == null) {
                return null;
            }
            for (String str : list) {
                if (str != null && str.startsWith("GG-")) {
                    return str.substring("GG-".length());
                }
            }
            return null;
        } catch (Throwable th) {
            la.b("Failed get dir", th);
            return null;
        }
    }

    public static File k() {
        File h2 = h();
        if (h2 != null) {
            File file = new File(h2, j());
            file.mkdirs();
            return file;
        }
        return h2;
    }

    public static File l() {
        File i2 = i();
        if (i2 != null) {
            File file = new File(i2, j());
            file.mkdirs();
            return file;
        }
        return i2;
    }

    public static PackageManager m() {
        if (l == null && o.a(1)) {
            try {
                l = ar.d.getPackageManager();
            } catch (Throwable th) {
                la.a(th);
            }
            o.b(1);
        }
        if (l == null && o.a(2)) {
            try {
                l = ar.d.getApplication().getPackageManager();
            } catch (Throwable th2) {
                la.a(th2);
            }
            o.b(2);
        }
        if (l == null && o.a(4)) {
            try {
                l = ar.d.getApplicationContext().getPackageManager();
            } catch (Throwable th3) {
                la.a(th3);
            }
            o.b(4);
        }
        if (l == null && o.a(8)) {
            try {
                l = MainService.context.getPackageManager();
            } catch (Throwable th4) {
                la.a(th4);
            }
            o.b(8);
        }
        if (l == null && o.a(16)) {
            try {
                l = MainService.context.getApplicationContext().getPackageManager();
            } catch (Throwable th5) {
                la.a(th5);
            }
            o.b(16);
        }
        return l;
    }

    public static void b(WeakReference weakReference) {
        AlertDialog alertDialog;
        if (weakReference != null && (alertDialog = (AlertDialog) weakReference.get()) != null) {
            a((DialogInterface) alertDialog);
        }
    }

    public static void a(DialogInterface dialogInterface) {
        if (dialogInterface == null) {
            throw new NullPointerException();
        }
        rx.a(new sv(dialogInterface));
    }

    public static int b(int i2, int i3) {
        while (i3 != 0) {
            int i4 = i2 % i3;
            i2 = i3;
            i3 = i4;
        }
        return i2;
    }

    public static long n() {
        try {
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            ActivityManager activityManager = (ActivityManager) e().getSystemService("activity");
            if (activityManager != null) {
                activityManager.getMemoryInfo(memoryInfo);
                return memoryInfo.availMem / 1048576;
            }
        } catch (Throwable th) {
            la.c("Failed get free mem", th);
        }
        return -1L;
    }

    public static String a(double d2) {
        long j2;
        StringBuilder sb = new StringBuilder();
        long abs = Math.abs((long) d2);
        int i2 = 0;
        while (i2 < p.length) {
            int i3 = p[i2 + 1];
            if (i3 <= 0) {
                j2 = 0;
            } else {
                j2 = abs / i3;
                abs %= i3;
            }
            if (abs >= 0) {
                if (sb.length() > 0) {
                    sb.insert(0, ":");
                }
                if (i2 == 0) {
                    sb.insert(0, a("%f", Double.valueOf(Math.abs(d2) % i3)).replaceFirst("\\D?0+$", ""));
                } else {
                    sb.insert(0, abs);
                }
            }
            if (j2 == 0) {
                break;
            }
            i2 += 2;
            abs = j2;
        }
        if (sb.length() == 0) {
            sb.insert(0, "0");
        }
        if (d2 < 0.0d) {
            sb.insert(0, "-");
        }
        return sb.toString();
    }

    public static String a(long j2) {
        long j3;
        StringBuilder sb = new StringBuilder();
        long abs = Math.abs(j2);
        int i2 = 0;
        while (i2 < p.length) {
            int i3 = p[i2 + 1];
            if (i3 <= 0) {
                j3 = 0;
            } else {
                j3 = abs / i3;
                abs %= i3;
            }
            if (abs > 0) {
                if (sb.length() > 0) {
                    sb.insert(0, " ");
                }
                sb.insert(0, qk.a(p[i2]));
                sb.insert(0, " ");
                sb.insert(0, abs);
            }
            if (j3 == 0) {
                break;
            }
            i2 += 2;
            abs = j3;
        }
        if (sb.length() == 0) {
            sb.insert(0, qk.a(p[0]));
            sb.insert(0, "0 ");
        }
        if (j2 < 0) {
            sb.insert(0, "-");
        }
        return sb.toString();
    }

    public static double f(String str) {
        String trim = str.trim();
        double d2 = 1.0d;
        if (trim.startsWith("-")) {
            trim = trim.substring(1);
            d2 = -1.0d;
        }
        String[] split = trim.split(":", p.length / 2);
        double d3 = 0.0d;
        pv pvVar = new pv();
        for (int i2 = 0; i2 < split.length; i2++) {
            int length = (((split.length - 1) - i2) * 2) + 1;
            if (length < p.length) {
                d3 = (d3 * p[length]) + Double.longBitsToDouble(ps.a(pvVar, split[i2], trim).a);
            }
        }
        return d2 * d3;
    }

    public static boolean f(View view) {
        if (view == null) {
            return false;
        }
        if (Build.VERSION.SDK_INT < 15) {
            return view.performClick();
        }
        return view.callOnClick();
    }

    public static String a(String str, Object... objArr) {
        String str2;
        String str3;
        try {
            str3 = String.format(ad.a(), str.replace((char) 65292, ','), objArr);
        } catch (Throwable th) {
            la.c("Failed String.format('" + str + "', " + Arrays.toString(objArr) + ") with '" + ad.a() + "' (" + qk.a((int) R.string.lang_code) + ") " + Config.a((int) R.id.config_number_locale).d, th);
            ho.b(String.valueOf(str2) + "\n\n" + la.b(th));
            if (str == null || objArr == null) {
                str3 = str;
            } else {
                String[] split = str.split("%(\\d+\\$)?([\\-#+ 0;\\(])?(\\d+)?(\\.\\d+)?([bBhHsScCdoxXeEfgGaA]|[tT][HIklMSLNpzZsQBbhAaCYyjmdeRTrDFc])", objArr.length + 1);
                StringBuilder sb = new StringBuilder();
                for (int i2 = 0; i2 < objArr.length; i2++) {
                    if (i2 < split.length) {
                        sb.append(split[i2]);
                    }
                    sb.append(objArr[i2]);
                }
                if (objArr.length < split.length) {
                    sb.append(split[objArr.length]);
                }
                str3 = sb.toString().replace("%n", "\n").replace("%%", "%");
            }
        }
        if (str3 == null) {
            return "Failed call String.format";
        }
        return str3;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023 A[ORIG_RETURN, RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String a(java.lang.String r4, java.lang.String r5, java.lang.String r6, java.lang.Object r7) {
        /*
            r1 = 0
            if (r1 != 0) goto L11
            java.util.Locale r0 = android.ext.ad.a()     // Catch: java.lang.Throwable -> L24
            r2 = 1
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch: java.lang.Throwable -> L24
            r3 = 0
            r2[r3] = r7     // Catch: java.lang.Throwable -> L24
            java.lang.String r1 = java.lang.String.format(r0, r4, r2)     // Catch: java.lang.Throwable -> L24
        L11:
            if (r1 != 0) goto L31
            java.util.Locale r0 = android.ext.ad.a()     // Catch: java.lang.Throwable -> L2b
            r2 = 1
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch: java.lang.Throwable -> L2b
            r3 = 0
            r2[r3] = r7     // Catch: java.lang.Throwable -> L2b
            java.lang.String r0 = java.lang.String.format(r0, r5, r2)     // Catch: java.lang.Throwable -> L2b
        L21:
            if (r0 != 0) goto L33
        L23:
            return r6
        L24:
            r0 = move-exception
            java.lang.String r2 = "Format fail 1"
            android.ext.la.b(r2, r0)
            goto L11
        L2b:
            r0 = move-exception
            java.lang.String r2 = "Format fail 2"
            android.ext.la.b(r2, r0)
        L31:
            r0 = r1
            goto L21
        L33:
            r6 = r0
            goto L23
        */
        throw new UnsupportedOperationException("Method not decompiled: android.ext.Tools.a(java.lang.String, java.lang.String, java.lang.String, java.lang.Object):java.lang.String");
    }

    private static void a(ViewGroup viewGroup) {
        if (viewGroup != null) {
            for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                try {
                    View childAt = viewGroup.getChildAt(i2);
                    if (childAt != null) {
                        childAt.setSoundEffectsEnabled(false);
                        if (childAt instanceof ViewGroup) {
                            a((ViewGroup) childAt);
                        }
                    }
                } catch (ArrayIndexOutOfBoundsException e2) {
                }
            }
        }
    }

    public static View g(View view) {
        View rootView = view.getRootView();
        if (rootView != null) {
            return rootView;
        }
        while (true) {
            ViewParent parent = view.getParent();
            if (parent != null && (parent instanceof View)) {
                view = (View) parent;
            } else {
                return view;
            }
        }
    }

    public static void h(View view) {
        if ((Config.B & 32) == 0 && view != null) {
            View g2 = g(view);
            g2.setSoundEffectsEnabled(false);
            if (g2 instanceof ViewGroup) {
                a((ViewGroup) g2);
            }
        }
    }

    public static String c(int i2) {
        return g(qk.a(i2));
    }

    public static String g(String str) {
        return c(str, ":");
    }

    private static String c(String str, String str2) {
        int length;
        if (str != null && (length = str.length()) != 0) {
            if (str2 == null) {
                while (length != 0 && Character.isWhitespace(str.charAt(length - 1))) {
                    length--;
                }
            } else if (!str2.isEmpty()) {
                while (length != 0) {
                    char charAt = str.charAt(length - 1);
                    if (str2.indexOf(charAt) == -1 && !Character.isWhitespace(charAt)) {
                        break;
                    }
                    length--;
                }
            } else {
                return str;
            }
            return str.substring(0, length);
        }
        return str;
    }

    public static Intent a(Context context, String str, String str2) {
        if (context == null) {
            context = e();
        }
        Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(str);
        if (launchIntentForPackage == null) {
            launchIntentForPackage = new Intent("android.intent.action.MAIN");
        }
        launchIntentForPackage.setPackage(str);
        if (str2 != null) {
            launchIntentForPackage.setClassName(str, str2);
        }
        launchIntentForPackage.setFlags(268435456);
        return launchIntentForPackage;
    }

    public static boolean h(String str) {
        Intent intent;
        try {
            Context e2 = e();
            try {
                intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS", Uri.fromParts("package", str, null));
            } catch (ActivityNotFoundException e3) {
                la.b("Failed open app info for: " + str, e3);
                intent = new Intent("android.settings.MANAGE_APPLICATIONS_SETTINGS");
            }
            intent.setFlags(268435456);
            e2.startActivity(intent);
            return true;
        } catch (Throwable th) {
            la.b("Failed open app info for: " + str, th);
            return false;
        }
    }

    public static boolean a(DialogInterface dialogInterface, int i2, Object obj, View.OnClickListener onClickListener) {
        Button button;
        if (!(dialogInterface instanceof AlertDialog) || (button = ((AlertDialog) dialogInterface).getButton(i2)) == null) {
            return false;
        }
        button.setTag(obj);
        button.setOnClickListener(onClickListener);
        return true;
    }

    public static boolean a(DialogInterface dialogInterface, int i2, Object obj, View.OnClickListener onClickListener, EditText editText) {
        if (editText != null) {
            editText.requestFocus();
            a((android.widget.EditText) editText);
        }
        return a(dialogInterface, i2, obj, onClickListener);
    }

    public static View d(int i2) {
        return i(qk.a(i2));
    }

    public static View i(String str) {
        return b(str, (String) null);
    }

    public static View b(String str, String str2) {
        return a(str, str2, -1);
    }

    public static View a(String str, String str2, int i2) {
        View a2 = android.fix.i.a((int) R.layout.dialog_title, (ViewGroup) null);
        TextView textView = (TextView) a2.findViewById(R.id.alertTitle);
        textView.setText(str);
        if (i2 != -1 && i2 != 0) {
            j(textView);
            textView.setOnClickListener(new sw(str, i2));
        }
        if (str2 != null) {
            TextView textView2 = (TextView) a2.findViewById(R.id.subTitle);
            textView2.setText(str2);
            textView2.setVisibility(0);
        }
        return a2;
    }

    public static void c(AlertDialog alertDialog) {
        ViewGroup viewGroup;
        int i2;
        boolean z;
        if (alertDialog != null) {
            Button[] buttonArr = {alertDialog.getButton(-1), alertDialog.getButton(-2), alertDialog.getButton(-3)};
            ViewGroup viewGroup2 = null;
            int length = buttonArr.length;
            int i3 = 0;
            while (true) {
                if (i3 >= length) {
                    viewGroup = viewGroup2;
                    break;
                }
                Button button = buttonArr[i3];
                if (button != null && (viewGroup2 = (ViewGroup) button.getParent()) != null) {
                    viewGroup = viewGroup2;
                    break;
                }
                i3++;
            }
            if (viewGroup != null) {
                int width = viewGroup.getWidth();
                if (width == 0) {
                    viewGroup.requestLayout();
                    width = viewGroup.getWidth();
                    if (width == 0) {
                        width = viewGroup.getMeasuredWidth();
                    }
                    if (width == 0) {
                        viewGroup.measure(-1, -2);
                        i2 = viewGroup.getMeasuredWidth();
                        if (i2 == 0 && !a(i2, viewGroup, 0)) {
                            for (Button button2 : buttonArr) {
                                if (button2 != null && Build.VERSION.SDK_INT >= 14) {
                                    button2.setAllCaps(false);
                                }
                            }
                            if (!a(i2, viewGroup, 5)) {
                                for (Button button3 : buttonArr) {
                                    if (button3 != null) {
                                        ColorStateList textColors = button3.getTextColors();
                                        a((TextView) button3, (int) R.style.SmallText);
                                        button3.setTextColor(textColors);
                                    }
                                }
                                if (!a(i2, viewGroup, 10)) {
                                    String[][] strArr = {new String[]{qk.a((int) R.string.cancel), qk.a((int) R.string.no)}, new String[]{qk.a((int) R.string.save), qk.a((int) R.string.yes), qk.a((int) R.string.ok)}, new String[]{qk.a((int) R.string.new_search), qk.a((int) R.string.new_search_short)}};
                                    int i4 = 0;
                                    while (true) {
                                        int i5 = i4;
                                        if (i5 < strArr.length) {
                                            boolean z2 = false;
                                            String[] strArr2 = strArr[i5];
                                            if (strArr2 != null) {
                                                int i6 = 0;
                                                for (int i7 = 0; i7 < strArr2.length; i7++) {
                                                    if (strArr2[i6].length() >= strArr2[i7].length()) {
                                                        i6 = i7;
                                                    }
                                                }
                                                for (Button button4 : buttonArr) {
                                                    if (button4 != null) {
                                                        String charSequence = button4.getText().toString();
                                                        for (int i8 = 0; i8 < strArr2.length; i8++) {
                                                            if (i8 != i6 && strArr2[i8].equals(charSequence)) {
                                                                button4.setText(strArr2[i6]);
                                                                z2 = true;
                                                            }
                                                        }
                                                    }
                                                }
                                                if (z2 && a(i2, viewGroup, i5 + 20)) {
                                                    return;
                                                }
                                            }
                                            i4 = i5 + 1;
                                        } else {
                                            boolean z3 = false;
                                            for (Button button5 : buttonArr) {
                                                if (button5 != null && button5.getText().toString().indexOf(32) != -1) {
                                                    button5.setText(button5.getText().toString().replace(' ', '\n'));
                                                    z3 = true;
                                                }
                                            }
                                            if (!z3 || !a(i2, viewGroup, 40)) {
                                                if (!(viewGroup instanceof LinearLayout) || ((LinearLayout) viewGroup).getOrientation() != 0) {
                                                    z = false;
                                                } else {
                                                    ((LinearLayout) viewGroup).setOrientation(1);
                                                    z = true;
                                                }
                                                if (!z || !a(i2, viewGroup, 100)) {
                                                    a(i2, viewGroup, -1);
                                                    return;
                                                }
                                                return;
                                            }
                                            return;
                                        }
                                    }
                                } else {
                                    return;
                                }
                            } else {
                                return;
                            }
                        }
                    }
                }
                i2 = width;
                if (i2 == 0) {
                }
            }
        }
    }

    private static boolean a(int i2, ViewGroup viewGroup, int i3) {
        viewGroup.requestLayout();
        viewGroup.measure(-2, -2);
        int measuredWidth = viewGroup.getMeasuredWidth();
        boolean z = measuredWidth <= i2;
        if (i3 != 0 || !z) {
            la.a("fixDialogButtonsSize: " + measuredWidth + " <= " + i2 + " = " + z + " [" + i3 + ']');
        }
        return z;
    }

    public static Context o() {
        return f(e());
    }

    public static Context f(Context context) {
        if (context != null && Build.VERSION.SDK_INT < 11) {
            return new ContextThemeWrapper(context, (int) R.style.DarkFixTheme);
        }
        return context;
    }

    public static void b(String str, int i2) {
        a(str, i2, (String) null, (DialogInterface.OnClickListener) null);
    }

    public static void a(String str, int i2, String str2, DialogInterface.OnClickListener onClickListener) {
        rx.a(new sy(str, i2, str2, onClickListener));
    }

    public static void i(View view) {
        a(view, view.getBackground());
    }

    public static void j(View view) {
        a(view, b((int) R.drawable.ic_information_white_12dp));
    }

    public static void a(View view, Drawable drawable) {
        if (drawable == null) {
            try {
                drawable = new ColorDrawable(0);
            } catch (Throwable th) {
                la.a(th);
                return;
            }
        }
        view.setFocusable(true);
        StateListDrawable stateListDrawable = new StateListDrawable();
        Drawable background = new ImageButton(view.getContext()).getBackground();
        stateListDrawable.addState(android.fix.l.a, background);
        stateListDrawable.addState(android.fix.l.b, background);
        stateListDrawable.addState(android.fix.l.c, background);
        stateListDrawable.addState(StateSet.WILD_CARD, drawable);
        if (Build.VERSION.SDK_INT >= 16) {
            view.setBackground(drawable);
        } else {
            view.setBackgroundDrawable(drawable);
        }
        int paddingLeft = view.getPaddingLeft();
        int paddingRight = view.getPaddingRight();
        int paddingTop = view.getPaddingTop();
        int paddingBottom = view.getPaddingBottom();
        if (Build.VERSION.SDK_INT >= 16) {
            view.setBackground(stateListDrawable);
        } else {
            view.setBackgroundDrawable(stateListDrawable);
        }
        view.setPadding(paddingLeft, paddingTop, paddingRight, paddingBottom);
    }

    public static void a(View view, float f2) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams != null) {
            layoutParams.width = (int) f2;
            view.setLayoutParams(layoutParams);
        }
    }

    public static void b(View view, float f2) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams != null) {
            layoutParams.height = (int) f2;
            view.setLayoutParams(layoutParams);
        }
    }

    public static void a(TextView textView, int i2) {
        try {
            if (Build.VERSION.SDK_INT >= 23) {
                textView.setTextAppearance(i2);
            } else {
                textView.setTextAppearance(textView.getContext(), i2);
            }
        } catch (Throwable th) {
            la.a(th);
        }
    }

    public static Object p() {
        if (q == null) {
            try {
                Method declaredMethod = Class.forName("android.os.ServiceManager").getDeclaredMethod("getIServiceManager", new Class[0]);
                declaredMethod.setAccessible(true);
                Object invoke = declaredMethod.invoke(null, android.c.b.f);
                Method declaredMethod2 = invoke.getClass().getDeclaredMethod("getService", String.class);
                declaredMethod2.setAccessible(true);
                Object invoke2 = declaredMethod2.invoke(invoke, "package");
                Method declaredMethod3 = Class.forName("android.content.pm.IPackageManager$Stub").getDeclaredMethod("asInterface", IBinder.class);
                declaredMethod3.setAccessible(true);
                q = declaredMethod3.invoke(null, invoke2);
            } catch (Throwable th) {
                la.a(th);
            }
        }
        return q;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x001b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x000f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String q() {
        /*
            r2 = 0
            if (r2 != 0) goto L3f
            android.content.Context r0 = e()     // Catch: java.lang.Throwable -> L3b
            if (r0 == 0) goto L3f
            java.lang.String r1 = r0.getPackageCodePath()     // Catch: java.lang.Throwable -> L3b
        Ld:
            if (r1 != 0) goto L19
            java.lang.String r0 = android.ext.y.d     // Catch: java.lang.Throwable -> L41
            android.content.pm.ApplicationInfo r0 = j(r0)     // Catch: java.lang.Throwable -> L41
            if (r0 == 0) goto L19
            java.lang.String r1 = r0.sourceDir     // Catch: java.lang.Throwable -> L41
        L19:
            if (r1 != 0) goto Ld5
            java.io.BufferedReader r3 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> Lce
            java.io.InputStreamReader r0 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> Lce
            java.io.FileInputStream r4 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> Lce
            java.lang.String r5 = "/proc/self/maps"
            r4.<init>(r5)     // Catch: java.lang.Throwable -> Lce
            r0.<init>(r4)     // Catch: java.lang.Throwable -> Lce
            r3.<init>(r0)     // Catch: java.lang.Throwable -> Lce
            r0 = r2
        L2d:
            java.lang.String r2 = r3.readLine()     // Catch: java.lang.Throwable -> Lce
            if (r2 != 0) goto L46
        L33:
            r3.close()     // Catch: java.lang.Throwable -> Lce
            if (r1 != 0) goto Ld5
            if (r0 == 0) goto Ld5
        L3a:
            return r0
        L3b:
            r0 = move-exception
            android.ext.la.a(r0)
        L3f:
            r1 = r2
            goto Ld
        L41:
            r0 = move-exception
            android.ext.la.a(r0)
            goto L19
        L46:
            java.lang.String r4 = android.ext.y.d     // Catch: java.lang.Throwable -> Lce
            boolean r4 = r2.contains(r4)     // Catch: java.lang.Throwable -> Lce
            if (r4 == 0) goto L2d
            java.lang.String r4 = ".apk"
            boolean r4 = r2.contains(r4)     // Catch: java.lang.Throwable -> Lce
            if (r4 == 0) goto L2d
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lce
            java.lang.String r5 = "\\.apk"
            r6 = 2
            java.lang.String[] r2 = r2.split(r5, r6)     // Catch: java.lang.Throwable -> Lce
            r5 = 0
            r2 = r2[r5]     // Catch: java.lang.Throwable -> Lce
            java.lang.String r2 = java.lang.String.valueOf(r2)     // Catch: java.lang.Throwable -> Lce
            r4.<init>(r2)     // Catch: java.lang.Throwable -> Lce
            java.lang.String r2 = ".apk"
            java.lang.StringBuilder r2 = r4.append(r2)     // Catch: java.lang.Throwable -> Lce
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> Lce
            r4 = 64
            int r4 = r2.indexOf(r4)     // Catch: java.lang.Throwable -> Lce
            r5 = -1
            if (r4 == r5) goto Lab
            java.lang.String r0 = r2.trim()     // Catch: java.lang.Throwable -> Lce
            java.lang.String r2 = "/"
            java.lang.String[] r0 = r0.split(r2)     // Catch: java.lang.Throwable -> Lce
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lce
            r4 = 47
            java.lang.String r4 = java.lang.String.valueOf(r4)     // Catch: java.lang.Throwable -> Lce
            r2.<init>(r4)     // Catch: java.lang.Throwable -> Lce
            int r4 = r0.length     // Catch: java.lang.Throwable -> Lce
            int r4 = r4 + (-1)
            r0 = r0[r4]     // Catch: java.lang.Throwable -> Lce
            java.lang.String r0 = r0.trim()     // Catch: java.lang.Throwable -> Lce
            r4 = 64
            r5 = 47
            java.lang.String r0 = r0.replace(r4, r5)     // Catch: java.lang.Throwable -> Lce
            java.lang.StringBuilder r0 = r2.append(r0)     // Catch: java.lang.Throwable -> Lce
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> Lce
            goto L2d
        Lab:
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lce
            r5 = 47
            java.lang.String r5 = java.lang.String.valueOf(r5)     // Catch: java.lang.Throwable -> Lce
            r4.<init>(r5)     // Catch: java.lang.Throwable -> Lce
            java.lang.String r5 = "/"
            r6 = 2
            java.lang.String[] r2 = r2.split(r5, r6)     // Catch: java.lang.Throwable -> Lce
            r5 = 1
            r2 = r2[r5]     // Catch: java.lang.Throwable -> Lce
            java.lang.String r2 = r2.trim()     // Catch: java.lang.Throwable -> Lce
            java.lang.StringBuilder r2 = r4.append(r2)     // Catch: java.lang.Throwable -> Lce
            java.lang.String r1 = r2.toString()     // Catch: java.lang.Throwable -> Lce
            goto L33
        Lce:
            r2 = move-exception
            r0 = r1
            android.ext.la.a(r2)
            goto L3a
        Ld5:
            r0 = r1
            goto L3a
        */
        throw new UnsupportedOperationException("Method not decompiled: android.ext.Tools.q():java.lang.String");
    }

    public static ApplicationInfo j(String str) {
        return c(str, 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x009b A[Catch: Throwable -> 0x00b0, TRY_LEAVE, TryCatch #4 {Throwable -> 0x00b0, blocks: (B:16:0x0039, B:18:0x009b, B:20:0x00a5, B:22:0x00aa, B:23:0x00af, B:43:0x00d4, B:45:0x00d8, B:19:0x00a1), top: B:56:0x0039 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00d8 A[Catch: Throwable -> 0x00b0, TRY_LEAVE, TryCatch #4 {Throwable -> 0x00b0, blocks: (B:16:0x0039, B:18:0x009b, B:20:0x00a5, B:22:0x00aa, B:23:0x00af, B:43:0x00d4, B:45:0x00d8, B:19:0x00a1), top: B:56:0x0039 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.content.pm.ApplicationInfo c(java.lang.String r12, int r13) {
        /*
            Method dump skipped, instructions count: 233
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: android.ext.Tools.c(java.lang.String, int):android.content.pm.ApplicationInfo");
    }

    public static void a(String str, StringBuilder sb) {
        ActivityInfo[] activityInfoArr;
        Field[] fields;
        StringBuilder sb2 = sb == null ? new StringBuilder() : sb;
        sb2.append("\nActivities:\n");
        if (sb == null) {
            la.a(sb2.toString().trim());
            sb2 = new StringBuilder();
        }
        PackageInfo packageInfo = null;
        try {
            packageInfo = d(str, 1);
        } catch (Throwable th) {
        }
        if (packageInfo == null) {
            sb2.append("Null for: " + str);
            if (sb == null) {
                la.a(sb2.toString().trim());
                new StringBuilder();
            }
        } else if (packageInfo.activities == null) {
            sb2.append("Null");
            if (sb == null) {
                la.a(sb2.toString().trim());
                new StringBuilder();
            }
        } else {
            for (ActivityInfo activityInfo : packageInfo.activities) {
                try {
                    sb2.append(activityInfo);
                    if (activityInfo != null) {
                        sb2.append('\n');
                        for (Field field : ActivityInfo.class.getFields()) {
                            int modifiers = field.getModifiers();
                            if (Modifier.isPublic(modifiers) && !Modifier.isStatic(modifiers)) {
                                sb2.append(field.getName());
                                sb2.append(": ");
                                sb2.append(field.get(activityInfo));
                                sb2.append("; ");
                            }
                        }
                    }
                } catch (Throwable th2) {
                    sb2.append(th2);
                }
                try {
                    ComponentName componentName = new ComponentName(str, activityInfo.name);
                    sb2.append("enabled: ");
                    sb2.append(m().getComponentEnabledSetting(componentName));
                    sb2.append("; ");
                } catch (Throwable th3) {
                    sb2.append(th3);
                }
                sb2.append('\n');
                if (sb == null) {
                    la.a(sb2.toString().trim());
                    sb2 = new StringBuilder();
                }
            }
        }
    }

    public static PackageInfo k(String str) {
        return d(str, 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x009b A[Catch: Throwable -> 0x00b0, TRY_LEAVE, TryCatch #4 {Throwable -> 0x00b0, blocks: (B:16:0x0039, B:18:0x009b, B:20:0x00a5, B:22:0x00aa, B:23:0x00af, B:43:0x00d4, B:45:0x00d8, B:19:0x00a1), top: B:56:0x0039 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00d8 A[Catch: Throwable -> 0x00b0, TRY_LEAVE, TryCatch #4 {Throwable -> 0x00b0, blocks: (B:16:0x0039, B:18:0x009b, B:20:0x00a5, B:22:0x00aa, B:23:0x00af, B:43:0x00d4, B:45:0x00d8, B:19:0x00a1), top: B:56:0x0039 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.content.pm.PackageInfo d(java.lang.String r12, int r13) {
        /*
            Method dump skipped, instructions count: 233
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: android.ext.Tools.d(java.lang.String, int):android.content.pm.PackageInfo");
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:31:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String a(android.content.pm.ApplicationInfo r5) {
        /*
            r0 = 0
            android.content.pm.PackageManager r1 = android.ext.Tools.l
            if (r5 == 0) goto L7
            if (r1 != 0) goto L8
        L7:
            return r0
        L8:
            java.lang.String r2 = r5.packageName     // Catch: java.lang.Throwable -> L34
            java.lang.String r3 = "label"
            boolean r3 = android.ext.ca.a(r2, r3)     // Catch: java.lang.Throwable -> L34
            java.lang.CharSequence r2 = r5.loadLabel(r1)     // Catch: java.lang.Throwable -> L2f
            android.ext.ca.a(r3)     // Catch: java.lang.Throwable -> L50
            if (r2 != 0) goto L28
            java.lang.String r3 = r5.packageName     // Catch: java.lang.Throwable -> L50
            java.lang.String r4 = "label2"
            boolean r3 = android.ext.ca.a(r3, r4)     // Catch: java.lang.Throwable -> L50
            java.lang.CharSequence r2 = r1.getApplicationLabel(r5)     // Catch: java.lang.Throwable -> L4b
            android.ext.ca.a(r3)     // Catch: java.lang.Throwable -> L50
        L28:
            if (r2 == 0) goto L7
            java.lang.String r0 = r2.toString()
            goto L7
        L2f:
            r1 = move-exception
            android.ext.ca.a(r3)     // Catch: java.lang.Throwable -> L34
            throw r1     // Catch: java.lang.Throwable -> L34
        L34:
            r1 = move-exception
            r2 = r0
        L36:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            java.lang.String r4 = "Failed load label for: "
            r3.<init>(r4)
            java.lang.String r4 = r5.packageName
            java.lang.StringBuilder r3 = r3.append(r4)
            java.lang.String r3 = r3.toString()
            android.ext.la.c(r3, r1)
            goto L28
        L4b:
            r1 = move-exception
            android.ext.ca.a(r3)     // Catch: java.lang.Throwable -> L50
            throw r1     // Catch: java.lang.Throwable -> L50
        L50:
            r1 = move-exception
            goto L36
        */
        throw new UnsupportedOperationException("Method not decompiled: android.ext.Tools.a(android.content.pm.ApplicationInfo):java.lang.String");
    }

    public static Drawable b(ApplicationInfo applicationInfo) {
        Drawable drawable = null;
        PackageManager packageManager = l;
        if (applicationInfo != null && packageManager != null) {
            try {
                boolean a2 = ca.a(applicationInfo.packageName, "icon");
                drawable = applicationInfo.loadIcon(packageManager);
                ca.a(a2);
                if (drawable == null) {
                    boolean a3 = ca.a(applicationInfo.packageName, "icon2");
                    drawable = packageManager.getApplicationIcon(applicationInfo);
                    ca.a(a3);
                }
            } catch (Throwable th) {
                la.c("Failed load icon for: " + applicationInfo.packageName, th);
            }
        }
        return drawable;
    }

    public static CharSequence a(CharSequence charSequence, CharSequence charSequence2, int i2) {
        try {
            if (charSequence instanceof Spannable) {
                Spannable spannable = (Spannable) charSequence;
                int length = charSequence2.length();
                int i3 = 0;
                String charSequence3 = charSequence.toString();
                String charSequence4 = charSequence2.toString();
                while (true) {
                    int indexOf = charSequence3.indexOf(charSequence4, i3);
                    if (indexOf < 0) {
                        break;
                    }
                    i3 = indexOf + length;
                    spannable.setSpan(new ForegroundColorSpan(i2), indexOf, indexOf + length, 33);
                }
            }
        } catch (Throwable th) {
            la.b("Failed colorize text", th);
        }
        return charSequence;
    }

    public static CharSequence a(CharSequence charSequence) {
        if (charSequence instanceof Spannable) {
            tk[] tkVarArr = (tk[]) r.get();
            if (tkVarArr == null) {
                tkVarArr = new tk[]{new tk(d.i(1), d.k(1)), new tk(d.i(2), d.k(2)), new tk(d.i(4), d.k(4)), new tk(d.i(8), d.k(8)), new tk(d.i(16), d.k(16)), new tk(d.i(32), d.k(32)), new tk(d.i(64), d.k(64)), new tk(qk.a((int) R.string.executable), e((int) R.color.pointer_executable)), new tk(qk.a((int) R.string.writable), e((int) R.color.pointer_writable)), new tk(qk.a((int) R.string.read_only), e((int) R.color.pointer_readable)), new tk(qk.a((int) R.string.writable_and_executable), e((int) R.color.pointer_executable_writable))};
                r = new WeakReference(tkVarArr);
            }
            for (int i2 = 0; i2 < tkVarArr.length; i2++) {
                a(charSequence, tkVarArr[i2].a, tkVarArr[i2].b);
            }
        }
        return charSequence;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [android.text.Spannable] */
    public static CharSequence a(CharSequence charSequence, int i2) {
        SpannableString spannableString;
        try {
            if (charSequence instanceof Spannable) {
                spannableString = (Spannable) charSequence;
            } else {
                spannableString = new SpannableString(charSequence);
                if (!(spannableString instanceof CharSequence)) {
                    la.a(new RuntimeException("Class 'android.text.SpannableString' does not implement interface 'java.lang.CharSequence'"));
                    return charSequence;
                }
            }
            spannableString.setSpan(new ForegroundColorSpan(i2), 0, charSequence.length(), 33);
            return spannableString;
        } catch (Throwable th) {
            la.b("Failed colorize", th);
            return charSequence;
        }
    }

    public static int e(int i2) {
        return c(i2, -1);
    }

    public static int c(int i2, int i3) {
        try {
            Context e2 = e();
            if (Build.VERSION.SDK_INT >= 23) {
                i3 = e2.getColor(i2);
            } else {
                i3 = e2.getResources().getColor(i2);
            }
        } catch (Throwable th) {
            la.a(th);
        }
        return i3;
    }

    public static void a(String str, File file) {
        Resources resources = e().getResources();
        int a2 = qk.a("ydw" + str, R.raw.class);
        if (a2 == 0) {
            la.a("Nothing extract file " + str + ' ' + file.getAbsolutePath());
            throw new RuntimeException("Nothing extract");
        }
        try {
            byte[] bArr = new byte[8192];
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            InputStream openRawResource = resources.openRawResource(a2);
            while (true) {
                int read = openRawResource.read(bArr);
                if (read > 0) {
                    fileOutputStream.write(bArr, 0, read);
                } else {
                    openRawResource.close();
                    fileOutputStream.close();
                    return;
                }
            }
        } catch (IOException e2) {
            la.a("Failed extract file " + str + ' ' + file.getAbsolutePath(), e2);
            throw new RuntimeException(e2);
        }
    }

    public static String r() {
        String str = null;
        try {
            str = Environment.getExternalStorageDirectory().getAbsolutePath();
        } catch (Throwable th) {
            la.c("Fail get sdcard path", th);
        }
        if (str == null) {
            return "/sdcard";
        }
        if (str.startsWith("/storage/emulated/0")) {
            if (s == 0) {
                s = (q(str) || !q(new StringBuilder("/storage/emulated/legacy").append(str.substring("/storage/emulated/0".length())).toString())) ? -1 : 1;
            }
            if (s > 0) {
                return "/storage/emulated/legacy" + str.substring("/storage/emulated/0".length());
            }
        }
        return str;
    }

    private static boolean q(String str) {
        try {
            File file = new File(str);
            String[] list = file.list();
            if (list != null) {
                if (list.length == 0) {
                    File file2 = new File(file, ".gg." + System.nanoTime());
                    file2.createNewFile();
                    list = file.list();
                    file2.delete();
                }
                if (list.length > 0) {
                    return true;
                }
            }
        } catch (Throwable th) {
            la.b("isGoodDir: '" + str + "'", th);
        }
        return false;
    }

    public static ListView k(View view) {
        View view2 = view;
        while (view2 != null) {
            if (view2 instanceof ListView) {
                return (ListView) view2;
            }
            ViewParent parent = view2.getParent();
            if (!(parent instanceof View)) {
                return null;
            }
            view2 = (View) parent;
        }
        return null;
    }

    public static SharedPreferences s() {
        SharedPreferences sharedPreferences = (SharedPreferences) t.get();
        if (sharedPreferences == null) {
            SharedPreferences sharedPreferences2 = e().getSharedPreferences(MainService.a, 0);
            t = new WeakReference(sharedPreferences2);
            return sharedPreferences2;
        }
        return sharedPreferences;
    }

    public static boolean a(long j2, long j3) {
        return (j3 < 0) ^ ((j2 < 0) ^ (j2 < j3));
    }

    public static boolean b(long j2, long j3) {
        return j2 == j3 || a(j2, j3);
    }

    public static void l(View view) {
        View g2 = g(view);
        h(g2);
        m(g2);
    }

    public static void m(View view) {
    }

    private static void n(View view) {
        boolean z = true;
        if (view != null) {
            if (!(view instanceof ScrollView) ? !(view instanceof HorizontalScrollView) ? !(view instanceof AbsListView) || (view instanceof android.fix.ListView) : (view instanceof android.fix.HorizontalScrollView) : (view instanceof android.fix.ScrollView)) {
                z = false;
            }
            if (z) {
                int overScrollMode = view.getOverScrollMode();
                if (overScrollMode != 2) {
                    la.a("Clear OverScrollMode: " + overScrollMode + " for " + view);
                }
                view.setOverScrollMode(2);
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    try {
                        n(viewGroup.getChildAt(i2));
                    } catch (ArrayIndexOutOfBoundsException e2) {
                    }
                }
            }
        }
    }

    public static String l(String str) {
        return Pattern.quote(str).replace("^", "\\E^\\Q").replace("$", "\\E$\\Q").replace("?", "\\E.\\Q").replace("*", "\\E.*\\Q").replace("\\Q\\E", "");
    }

    public static void a(int i2, ComponentName componentName, int i3) {
        try {
            PackageManager m2 = m();
            la.a("hide " + i2 + ": " + i3 + ' ' + componentName);
            a(componentName.getPackageName(), (StringBuilder) null);
            m2.setComponentEnabledSetting(componentName, i3, 1);
            la.a("hide " + (i2 + 1) + ": " + i3 + ' ' + componentName);
            a(componentName.getPackageName(), (StringBuilder) null);
        } catch (Throwable th) {
            la.a(th);
        }
    }

    public static void a(View view, View.OnFocusChangeListener onFocusChangeListener) {
        tl tlVar = (tl) view.getTag(R.layout.memory_range);
        if (tlVar == null) {
            tlVar = new tl(null);
            view.setOnFocusChangeListener(tlVar);
            view.setTag(R.layout.memory_range, tlVar);
        }
        tlVar.a(onFocusChangeListener);
    }

    public static String a(Context context, long j2) {
        try {
            return Formatter.formatFileSize(context, j2);
        } catch (Throwable th) {
            la.a(th);
            try {
                return a(j2, false);
            } catch (Throwable th2) {
                la.a(th2);
                return Long.toString(j2);
            }
        }
    }

    private static String a(long j2, boolean z) {
        String str;
        String a2;
        float f2 = (float) j2;
        String str2 = "B";
        if (f2 > 900.0f) {
            str2 = "KB";
            f2 /= 1024.0f;
        }
        if (f2 > 900.0f) {
            str2 = "MB";
            f2 /= 1024.0f;
        }
        if (f2 > 900.0f) {
            str2 = "GB";
            f2 /= 1024.0f;
        }
        if (f2 > 900.0f) {
            str2 = "TB";
            f2 /= 1024.0f;
        }
        if (f2 > 900.0f) {
            f2 /= 1024.0f;
            str = "PB";
        } else {
            str = str2;
        }
        if (f2 < 1.0f) {
            a2 = a("%.2f", Float.valueOf(f2));
        } else if (f2 < 10.0f) {
            if (z) {
                a2 = a("%.1f", Float.valueOf(f2));
            } else {
                a2 = a("%.2f", Float.valueOf(f2));
            }
        } else if (f2 < 100.0f) {
            if (z) {
                a2 = a("%.0f", Float.valueOf(f2));
            } else {
                a2 = a("%.2f", Float.valueOf(f2));
            }
        } else {
            a2 = a("%.0f", Float.valueOf(f2));
        }
        return String.valueOf(a2) + ' ' + str;
    }

    public static boolean[] a(List list) {
        boolean[] zArr = new boolean[list.size()];
        Iterator it = list.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            zArr[i2] = ((Boolean) it.next()).booleanValue();
            i2++;
        }
        return zArr;
    }

    public static int[] b(List list) {
        int[] iArr = new int[list.size()];
        Iterator it = list.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            iArr[i2] = ((Integer) it.next()).intValue();
            i2++;
        }
        return iArr;
    }

    public static Process a(String[] strArr) {
        return a(strArr, (String[]) null, (File) null);
    }

    public static Process a(String[] strArr, String[] strArr2) {
        return a(strArr, strArr2, (File) null);
    }

    public static Process a(String[] strArr, String[] strArr2, File file) {
        if (!u) {
            try {
                return Runtime.getRuntime().exec(strArr, strArr2, file);
            } catch (Throwable th) {
                String message = th.getMessage();
                if (message.contains("nknown error") || message.contains("xec failed") || message.contains("ead failed")) {
                    la.b("Failed exec: " + Arrays.toString(strArr) + "; " + strArr2 + "; " + file, th);
                } else {
                    throw th;
                }
            }
        }
        Process a2 = ProcessBuilder.a(strArr, strArr2, file);
        u = true;
        return a2;
    }

    public static String m(String str) {
        File file;
        if (v == 0 || v == 1) {
            try {
                String str2 = String.valueOf('/') + file.getName();
                FileInputStream fileInputStream = new FileInputStream(new File(str));
                MappedByteBuffer map = fileInputStream.getChannel().map(FileChannel.MapMode.READ_ONLY, 0L, 4096L);
                BufferedReader bufferedReader = new BufferedReader(new FileReader("/proc/self/maps"));
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    }
                    int indexOf = readLine.indexOf(str2);
                    if (indexOf >= 0) {
                        int i2 = indexOf;
                        while (i2 > 0 && readLine.charAt(i2) > ' ') {
                            i2--;
                        }
                        if (i2 < indexOf) {
                            str = readLine.substring(i2, readLine.length()).trim();
                            if (v == 0) {
                                v = (byte) 1;
                            }
                        }
                    }
                }
                bufferedReader.close();
                if (v == 0) {
                    v = (byte) 2;
                }
                map.capacity();
                fileInputStream.close();
            } catch (IOException e2) {
                la.b("Failed getNativePath: " + str, e2);
            }
        }
        return str;
    }

    public static String n(String str) {
        if (d != null) {
            return str.replace(d[0], d[1]);
        }
        return str;
    }

    public static tp a(ListView listView) {
        int firstVisiblePosition = listView.getFirstVisiblePosition();
        View view = null;
        try {
            view = listView.getChildAt(0);
        } catch (ArrayIndexOutOfBoundsException e2) {
        }
        return new tp(firstVisiblePosition, view != null ? view.getTop() - listView.getPaddingTop() : 0);
    }

    public static void a(ListView listView, tp tpVar) {
        if (tpVar != null) {
            a(listView, tpVar.a, tpVar.b);
        }
    }

    public static void a(ListView listView, int i2, int i3) {
        listView.setSelectionFromTop(i2, i3);
        listView.post(new tc(listView, i2, i3));
    }

    public static boolean o(String str) {
        if (str.length() < 2 || str.charAt(0) != '/') {
            i.a(i.c().setCustomTitle(d((int) R.string.error)).setMessage(String.valueOf(str) + "\n\n" + qk.a((int) R.string.path_must_be)).setPositiveButton(qk.a((int) R.string.ok), (DialogInterface.OnClickListener) null));
            return false;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x009e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean b(java.lang.Object r6) {
        /*
            r3 = 0
            r1 = 0
            boolean r0 = r6 instanceof java.io.File
            if (r0 == 0) goto L52
            r0 = r6
            java.io.File r0 = (java.io.File) r0
        L9:
            boolean r2 = r0.exists()
            if (r2 != 0) goto L5c
            r2 = 2131165687(0x7f0701f7, float:1.7945598E38)
        L12:
            if (r2 == 0) goto L66
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r2 = c(r2)
            java.lang.String r2 = java.lang.String.valueOf(r2)
            r0.<init>(r2)
            java.lang.String r2 = ": "
            java.lang.StringBuilder r0 = r0.append(r2)
            java.lang.StringBuilder r0 = r0.append(r6)
            java.lang.String r0 = r0.toString()
        L2f:
            android.app.AlertDialog$Builder r2 = android.ext.i.c()
            r4 = 2131165358(0x7f0700ae, float:1.794493E38)
            android.view.View r4 = d(r4)
            android.app.AlertDialog$Builder r2 = r2.setCustomTitle(r4)
            android.app.AlertDialog$Builder r0 = r2.setMessage(r0)
            r2 = 2131165341(0x7f07009d, float:1.7944896E38)
            java.lang.String r2 = android.ext.qk.a(r2)
            android.app.AlertDialog$Builder r0 = r0.setPositiveButton(r2, r3)
            android.ext.i.a(r0)
            r0 = r1
        L51:
            return r0
        L52:
            java.io.File r0 = new java.io.File
            java.lang.String r2 = r6.toString()
            r0.<init>(r2)
            goto L9
        L5c:
            boolean r2 = r0.isFile()
            if (r2 != 0) goto Laa
            r2 = 2131165940(0x7f0702f4, float:1.7946111E38)
            goto L12
        L66:
            java.io.FileInputStream r2 = new java.io.FileInputStream     // Catch: java.io.IOException -> L75 java.lang.Throwable -> L9a
            r2.<init>(r0)     // Catch: java.io.IOException -> L75 java.lang.Throwable -> L9a
            r2.read()     // Catch: java.lang.Throwable -> La6 java.io.IOException -> La8
            if (r2 == 0) goto L73
            r2.close()     // Catch: java.io.IOException -> La2
        L73:
            r0 = 1
            goto L51
        L75:
            r0 = move-exception
            r2 = r3
        L77:
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> La6
            r4.<init>()     // Catch: java.lang.Throwable -> La6
            java.lang.StringBuilder r4 = r4.append(r6)     // Catch: java.lang.Throwable -> La6
            java.lang.String r5 = "\n\n"
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch: java.lang.Throwable -> La6
            java.lang.String r0 = r0.getMessage()     // Catch: java.lang.Throwable -> La6
            java.lang.StringBuilder r0 = r4.append(r0)     // Catch: java.lang.Throwable -> La6
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> La6
            if (r2 == 0) goto L2f
            r2.close()     // Catch: java.io.IOException -> L98
            goto L2f
        L98:
            r2 = move-exception
            goto L2f
        L9a:
            r0 = move-exception
            r2 = r3
        L9c:
            if (r2 == 0) goto La1
            r2.close()     // Catch: java.io.IOException -> La4
        La1:
            throw r0
        La2:
            r0 = move-exception
            goto L73
        La4:
            r1 = move-exception
            goto La1
        La6:
            r0 = move-exception
            goto L9c
        La8:
            r0 = move-exception
            goto L77
        Laa:
            r2 = r1
            goto L12
        */
        throw new UnsupportedOperationException("Method not decompiled: android.ext.Tools.b(java.lang.Object):boolean");
    }

    public static int a(byte[] bArr, byte[] bArr2) {
        int i2 = 0;
        if (bArr.length == 0) {
            return -1;
        }
        int[] b2 = b(bArr2);
        int i3 = 0;
        while (true) {
            int i4 = i2;
            if (i3 >= bArr.length) {
                return -1;
            }
            i2 = i4;
            while (i2 > 0 && bArr2[i2] != bArr[i3]) {
                i2 = b2[i2 - 1];
            }
            if (bArr2[i2] == bArr[i3]) {
                i2++;
            }
            if (i2 != bArr2.length) {
                i3++;
            } else {
                return (i3 - bArr2.length) + 1;
            }
        }
    }

    private static int[] b(byte[] bArr) {
        int[] iArr = new int[bArr.length];
        int i2 = 0;
        for (int i3 = 1; i3 < bArr.length; i3++) {
            while (i2 > 0 && bArr[i2] != bArr[i3]) {
                i2 = iArr[i2 - 1];
            }
            if (bArr[i2] == bArr[i3]) {
                i2++;
            }
            iArr[i3] = i2;
        }
        return iArr;
    }

    public static CharSequence a(CharSequence... charSequenceArr) {
        try {
            return TextUtils.concat(charSequenceArr);
        } catch (Throwable th) {
            la.a(th);
            StringBuilder sb = new StringBuilder();
            for (CharSequence charSequence : charSequenceArr) {
                sb.append(charSequence);
            }
            return sb.toString();
        }
    }

    public static void a(Configuration configuration) {
        int i2 = 0;
        if (configuration == null) {
            try {
                configuration = e().getResources().getConfiguration();
            } catch (Throwable th) {
                la.a(th);
            }
        }
        if (configuration.orientation == 2) {
            i2 = 1;
        }
        w = i2;
    }

    public static int t() {
        int i2 = w;
        if (i2 == -1) {
            a((Configuration) null);
            return w;
        }
        return i2;
    }
}
