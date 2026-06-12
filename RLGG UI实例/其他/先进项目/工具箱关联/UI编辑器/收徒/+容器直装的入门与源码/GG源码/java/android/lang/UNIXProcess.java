package android.lang;

import android.ext.la;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.Field;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.util.concurrent.Executor;

/* compiled from: src */
/* loaded from: classes.dex */
final class UNIXProcess extends Process {
    private static final Executor f = (Executor) a(new n());
    private int a;
    private boolean b;
    private OutputStream c;
    private InputStream d;
    private InputStream e;
    private final int pid;

    private static native void destroyProcess(int i);

    private native int forkAndExec(byte[] bArr, byte[] bArr2, int i, byte[] bArr3, int i2, byte[] bArr4, int[] iArr, boolean z);

    private static native void initIDs();

    /* JADX INFO: Access modifiers changed from: private */
    public native int waitForProcessExit(int i);

    public static Object a(PrivilegedAction privilegedAction) {
        return AccessController.doPrivileged(privilegedAction);
    }

    public static Object a(PrivilegedExceptionAction privilegedExceptionAction) {
        return AccessController.doPrivileged(privilegedExceptionAction);
    }

    static {
        initIDs();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public UNIXProcess(byte[] bArr, byte[] bArr2, int i, byte[] bArr3, int i2, byte[] bArr4, int[] iArr, boolean z) {
        this.pid = forkAndExec(bArr, bArr2, i, bArr3, i2, bArr4, iArr, z);
        try {
            a(new o(this, iArr));
        } catch (PrivilegedActionException e) {
            throw ((IOException) e.getException());
        }
    }

    static FileDescriptor a(int i) {
        FileDescriptor fileDescriptor = new FileDescriptor();
        try {
            Field declaredField = FileDescriptor.class.getDeclaredField("descriptor");
            declaredField.setAccessible(true);
            declaredField.set(fileDescriptor, Integer.valueOf(i));
            return fileDescriptor;
        } catch (Throwable th) {
            throw new RuntimeException("Failed set fd", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int[] iArr) {
        OutputStream tVar;
        InputStream sVar;
        InputStream sVar2;
        if (iArr[0] == -1) {
            tVar = r.a;
        } else {
            tVar = new t(iArr[0]);
        }
        this.c = tVar;
        if (iArr[1] == -1) {
            sVar = q.a;
        } else {
            sVar = new s(iArr[1]);
        }
        this.d = sVar;
        if (iArr[2] == -1) {
            sVar2 = q.a;
        } else {
            sVar2 = new s(iArr[2]);
        }
        this.e = sVar2;
        f.execute(new p(this));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(int i) {
        synchronized (this) {
            this.a = i;
            this.b = true;
            notifyAll();
        }
        if (this.d instanceof s) {
            ((s) this.d).a();
        }
        if (this.e instanceof s) {
            ((s) this.e).a();
        }
        if (this.c instanceof t) {
            ((t) this.c).a();
        }
    }

    @Override // java.lang.Process
    public OutputStream getOutputStream() {
        return this.c;
    }

    @Override // java.lang.Process
    public InputStream getInputStream() {
        return this.d;
    }

    @Override // java.lang.Process
    public InputStream getErrorStream() {
        return this.e;
    }

    @Override // java.lang.Process
    public synchronized int waitFor() {
        while (!this.b) {
            wait();
        }
        return this.a;
    }

    @Override // java.lang.Process
    public synchronized int exitValue() {
        if (!this.b) {
            throw new IllegalThreadStateException("process hasn't exited");
        }
        return this.a;
    }

    @Override // java.lang.Process
    public void destroy() {
        synchronized (this) {
            if (!this.b) {
                destroyProcess(this.pid);
            }
        }
        try {
            this.c.close();
        } catch (IOException e) {
        }
        try {
            this.d.close();
        } catch (IOException e2) {
        }
        try {
            this.e.close();
        } catch (IOException e3) {
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Process[pid=");
        sb.append(this.pid);
        if (this.b) {
            sb.append(", hasExited=true, exitcode=");
            sb.append(this.a);
            sb.append(']');
        } else {
            sb.append(", hasExited=false]");
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static FileInputStream e(int i) {
        Field declaredField;
        FileInputStream fileInputStream = new FileInputStream(a(i));
        try {
            try {
                declaredField = FileInputStream.class.getDeclaredField("isFdOwner");
            } catch (NoSuchFieldException e) {
                declaredField = FileInputStream.class.getDeclaredField("shouldClose");
            }
            declaredField.setAccessible(true);
            declaredField.set(fileInputStream, true);
        } catch (Throwable th) {
            la.a("Failed set isFdOwner", th);
        }
        return fileInputStream;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static FileOutputStream f(int i) {
        Field declaredField;
        FileOutputStream fileOutputStream = new FileOutputStream(a(i));
        try {
            try {
                declaredField = FileOutputStream.class.getDeclaredField("isFdOwner");
            } catch (NoSuchFieldException e) {
                declaredField = FileOutputStream.class.getDeclaredField("shouldClose");
            }
            declaredField.setAccessible(true);
            declaredField.set(fileOutputStream, true);
        } catch (Throwable th) {
            la.a("Failed set isFdOwner", th);
        }
        return fileOutputStream;
    }
}
