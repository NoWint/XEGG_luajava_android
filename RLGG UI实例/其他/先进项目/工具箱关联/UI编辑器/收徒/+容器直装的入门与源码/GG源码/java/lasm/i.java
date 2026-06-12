package lasm;

import java.io.Serializable;

/* compiled from: src */
/* loaded from: classes.dex */
public class i implements Serializable {
    public int a;
    public int b;
    public int c;
    public int d;
    public int e;
    public String f;
    public i g;
    public i h;

    public i() {
    }

    public i(int i, String str) {
        this.a = i;
        this.f = str;
    }

    public String toString() {
        return this.f;
    }

    public static i a(int i, String str) {
        return new i(i, str);
    }
}
