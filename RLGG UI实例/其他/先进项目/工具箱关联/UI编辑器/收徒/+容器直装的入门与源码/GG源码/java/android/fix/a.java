package android.fix;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.ext.MainService;
import android.ext.Tools;
import android.ext.la;
import android.ext.qv;
import android.ext.rx;
import android.os.Build;
import android.os.Bundle;
import android.os.PersistableBundle;
import android.view.View;
import android.view.ViewGroup;
import java.io.File;

/* compiled from: src */
/* loaded from: classes.dex */
public class a extends Activity {
    private View a = null;
    private AlertDialog b = null;
    private Context c = null;

    @Override // android.app.Activity
    public void startActivityForResult(Intent intent, int i) {
        try {
            super.startActivityForResult(intent, i);
        } catch (ActivityNotFoundException e) {
            la.a(e);
        } catch (SecurityException e2) {
            if (intent.getAction().equals("android.intent.action.UNINSTALL_PACKAGE")) {
                intent.setAction("android.intent.action.DELETE");
                startActivityForResult(intent, i);
            } else if (intent.getAction().equals("android.intent.action.INSTALL_PACKAGE")) {
                intent.setAction("android.intent.action.VIEW");
                startActivityForResult(intent, i);
            } else {
                throw e2;
            }
        } catch (RuntimeException e3) {
            String message = e3.getMessage();
            if (!rx.c() && message != null && message.contains("Looper.prepare()")) {
                rx.a(new b(this, intent, i));
                return;
            }
            throw e3;
        }
    }

    @Override // android.app.Activity, android.content.ContextWrapper, android.content.Context
    public void startActivity(Intent intent) {
        try {
            super.startActivity(intent);
        } catch (ActivityNotFoundException e) {
            la.a(e);
        } catch (SecurityException e2) {
            if (intent.getAction().equals("android.intent.action.UNINSTALL_PACKAGE")) {
                intent.setAction("android.intent.action.DELETE");
                startActivity(intent);
            } else if (intent.getAction().equals("android.intent.action.INSTALL_PACKAGE")) {
                intent.setAction("android.intent.action.VIEW");
                startActivity(intent);
            } else {
                throw e2;
            }
        } catch (RuntimeException e3) {
            if (!d.a(e3, this, intent)) {
                throw e3;
            }
        }
    }

    @Override // android.app.Activity
    public View findViewById(int i) {
        return this.a == null ? super.findViewById(i) : this.a.findViewById(i);
    }

    @Override // android.app.Activity
    public void setContentView(int i) {
        RuntimeException runtimeException = new RuntimeException();
        try {
            super.setContentView(i);
        } catch (RuntimeException e) {
            if (runtimeException != e) {
                try {
                    la.c("Failed call super setContentView", e);
                } catch (RuntimeException e2) {
                    try {
                        View a = i.a(i, (ViewGroup) null);
                        this.a = a;
                        AlertDialog create = android.ext.i.a(this).setView(a).setTitle(getTitle()).setCancelable(false).create();
                        create.setOnCancelListener(new c(this));
                        create.setCancelable(true);
                        this.b = create;
                        create.show();
                    } catch (Throwable th) {
                        la.c("Failed fix call setContentView", th);
                        if (Build.VERSION.SDK_INT >= 19) {
                            e2.addSuppressed(th);
                        }
                        throw e2;
                    }
                }
            } else {
                runtimeException = e;
            }
            try {
                getWindow().setContentView(i);
                if (Build.VERSION.SDK_INT >= 11) {
                    try {
                        getActionBar();
                    } catch (RuntimeException e3) {
                        if (runtimeException != e3) {
                            la.c("Failed call setup action bar", e3);
                        } else {
                            runtimeException = e3;
                        }
                    }
                }
            } catch (RuntimeException e4) {
                if (runtimeException != e4) {
                    la.c("Failed fix call setContentView", e4);
                }
                if (Build.VERSION.SDK_INT >= 19) {
                    e.addSuppressed(e4);
                }
                throw e;
            }
        }
        if (la.b(runtimeException).contains(getPackageName())) {
            this.a = null;
            super.setContentView(i - 1);
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public String getPackageName() {
        try {
            return super.getPackageName();
        } catch (NullPointerException e) {
            la.a(e);
            return Tools.g();
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File getFilesDir() {
        try {
            return super.getFilesDir();
        } catch (NullPointerException e) {
            la.a(e);
            return Tools.i();
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File getCacheDir() {
        try {
            return super.getCacheDir();
        } catch (NullPointerException e) {
            la.a(e);
            return Tools.h();
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public PackageManager getPackageManager() {
        try {
            return super.getPackageManager();
        } catch (NullPointerException e) {
            la.a(e);
            return Tools.m();
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File getExternalFilesDir(String str) {
        try {
            return super.getExternalFilesDir(str);
        } catch (ArrayIndexOutOfBoundsException e) {
            la.a(e);
            return null;
        } catch (NullPointerException e2) {
            la.a(e2);
            return null;
        } catch (SecurityException e3) {
            la.a(e3);
            return null;
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File getExternalCacheDir() {
        try {
            return super.getExternalCacheDir();
        } catch (ArrayIndexOutOfBoundsException e) {
            la.a(e);
            return null;
        } catch (NullPointerException e2) {
            la.a(e2);
            return null;
        } catch (SecurityException e3) {
            la.a(e3);
            return null;
        }
    }

    private void a() {
        try {
            if (this.b != null) {
                this.b.dismiss();
            }
        } catch (Throwable th) {
            la.a(th);
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        a();
        try {
            super.onDestroy();
        } catch (Throwable th) {
            la.a(th);
        }
    }

    public void l() {
        try {
            super.finish();
        } catch (Throwable th) {
            la.a(th);
        }
    }

    @Override // android.app.Activity
    public void finish() {
        a();
        l();
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public Object getSystemService(String str) {
        try {
            return k.a(super.getSystemService(str));
        } catch (NullPointerException e) {
            la.a(e);
            return null;
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public boolean startInstrumentation(ComponentName componentName, String str, Bundle bundle) {
        try {
            return super.startInstrumentation(componentName, str, bundle);
        } catch (Throwable th) {
            la.a(th);
            return false;
        }
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(d.c(context));
    }

    private Context b() {
        if (this.c == null) {
            Context baseContext = getBaseContext();
            if (baseContext == null) {
                return null;
            }
            this.c = d.c(baseContext);
        }
        return this.c;
    }

    @Override // android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public AssetManager getAssets() {
        Context b = b();
        return b == null ? super.getAssets() : b.getAssets();
    }

    @Override // android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        Context b = b();
        return b == null ? super.getResources() : b.getResources();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onLowMemory() {
        la.a("Activity onLowMemory");
        super.onLowMemory();
        MainService.b(-1);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
        la.a("Activity onTrimMemory: " + i);
        super.onTrimMemory(i);
        MainService.b(i);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public SharedPreferences getSharedPreferences(String str, int i) {
        return qv.a(super.getSharedPreferences(str, i));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onStart() {
        try {
            super.onStart();
        } catch (Throwable th) {
            la.a(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onRestart() {
        try {
            super.onRestart();
        } catch (Throwable th) {
            la.a(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onResume() {
        try {
            super.onResume();
        } catch (Throwable th) {
            la.a(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onPostResume() {
        try {
            super.onPostResume();
        } catch (Throwable th) {
            la.a(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onPause() {
        try {
            super.onPause();
        } catch (Throwable th) {
            la.a(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onStop() {
        try {
            super.onStop();
        } catch (Throwable th) {
            la.a(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        try {
            super.onCreate(bundle);
        } catch (Throwable th) {
            la.a(th);
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle, PersistableBundle persistableBundle) {
        try {
            super.onCreate(bundle, persistableBundle);
        } catch (Throwable th) {
            la.a(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onPostCreate(Bundle bundle) {
        try {
            super.onPostCreate(bundle);
        } catch (Throwable th) {
            la.a(th);
        }
    }

    @Override // android.app.Activity
    public boolean moveTaskToBack(boolean z) {
        try {
            a();
            return super.moveTaskToBack(z);
        } catch (Throwable th) {
            la.a(th);
            finish();
            return true;
        }
    }
}
