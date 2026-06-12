package android.ext;

/* compiled from: src */
/* loaded from: classes.dex */
class lx implements Runnable {
    final /* synthetic */ lw a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public lx(lw lwVar) {
        this.a = lwVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x006f  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void run() {
        /*
            r7 = this;
            r6 = 0
            r2 = 1
            r1 = 0
            boolean r0 = android.ext.Config.vSpaceReal     // Catch: java.lang.Throwable -> L7f
            if (r0 != 0) goto L7a
            int r0 = android.ext.Config.z     // Catch: java.lang.Throwable -> L7f
            if (r0 != 0) goto L7a
            android.content.ComponentName r0 = android.ext.lh.m()     // Catch: java.lang.Throwable -> L7f
            if (r0 == 0) goto L7d
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L7f
            java.lang.String r4 = "Try instr: "
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L7f
            int r4 = android.os.Process.myUid()     // Catch: java.lang.Throwable -> L7f
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch: java.lang.Throwable -> L7f
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> L7f
            android.ext.la.a(r3)     // Catch: java.lang.Throwable -> L7f
            r3 = 0
            android.ext.lh.a(r3)     // Catch: java.lang.Throwable -> L7f
            android.content.Context r3 = android.ext.ar.f     // Catch: java.lang.Throwable -> L86
            r4 = 0
            android.os.Bundle r5 = android.ext.ar.a()     // Catch: java.lang.Throwable -> L86
            boolean r0 = r3.startInstrumentation(r0, r4, r5)     // Catch: java.lang.Throwable -> L86
            r3 = 1
            android.ext.lh.a(r3)     // Catch: java.lang.Throwable -> L86
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L7f
            java.lang.String r4 = "Fail instr: "
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L7f
            int r4 = android.os.Process.myUid()     // Catch: java.lang.Throwable -> L7f
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch: java.lang.Throwable -> L7f
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> L7f
            android.ext.la.a(r3)     // Catch: java.lang.Throwable -> L7f
        L50:
            r3 = 3
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L7f
            r4.<init>()     // Catch: java.lang.Throwable -> L7f
            java.lang.StringBuilder r0 = r4.append(r0)     // Catch: java.lang.Throwable -> L7f
            r4 = 32
            java.lang.StringBuilder r0 = r0.append(r4)     // Catch: java.lang.Throwable -> L7f
            int r4 = android.ext.Config.z     // Catch: java.lang.Throwable -> L7f
            java.lang.StringBuilder r0 = r0.append(r4)     // Catch: java.lang.Throwable -> L7f
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> L7f
            android.ext.lh.a(r3, r0)     // Catch: java.lang.Throwable -> L7f
        L6d:
            if (r1 == 0) goto L72
            android.ext.lh.a(r2)
        L72:
            r0 = 6
            android.ext.lh.a(r0, r6)
            android.ext.lh.d()
            return
        L7a:
            android.ext.lh.f()     // Catch: java.lang.Throwable -> L7f
        L7d:
            r0 = r1
            goto L50
        L7f:
            r0 = move-exception
        L80:
            java.lang.String r3 = "Failed load Instrumentation"
            android.ext.la.c(r3, r0)
            goto L6d
        L86:
            r0 = move-exception
            r1 = r2
            goto L80
        */
        throw new UnsupportedOperationException("Method not decompiled: android.ext.lx.run():void");
    }
}
