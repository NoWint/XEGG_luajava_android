package android.ext;

import catch_.me_.if_.you_.can_.MainActivity;

/* compiled from: src */
/* loaded from: classes.dex */
public class y {
    static float a = (113.2f * 1) - 12.1f;
    static final String b = "catch_#me_#if_#you_#can_".replace('#', '.').intern();
    static final String c = "@ame@uardian".replace('@', 'G').intern();
    static final String d;
    static final String e;

    static {
        String replace;
        String substring;
        try {
            substring = MainActivity.class.getPackage().getName();
        } catch (Throwable th) {
            substring = "Lcatch_/me_/if_/you_/can_;".replace('/', '.').substring(1, replace.length() - 1);
            la.a(th);
        }
        d = substring.intern();
        e = "Lcar$GameGuardian~Lcar$".replace("Lcar$", "").split("~", 2)[0].intern();
    }

    public static final void a() {
    }
}
