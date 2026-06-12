package android.ext;

import java.util.Arrays;

/* compiled from: src */
/* loaded from: classes.dex */
public class ky {
    private int b = 0;
    private double c = 1.0d;
    double[] a = {1.0d};

    public ky() {
        a(ps.b(Tools.s().getString("list-speeds", "0.000000001;0.00000001;0.0000001;0.000001;0.00001;0.0001;0.001;0.002;0.005;0.01;0.02;0.05;0.1;0.2;0.5;0.6;0.75;0.9;1;1.2;1.3;1.5;2;3;4;5;6;9;12;15;20;30;60;120;180;300;600;1200;2400;3600")), false);
    }

    public static String a() {
        return ps.b("0.000000001;0.00000001;0.0000001;0.000001;0.00001;0.0001;0.001;0.002;0.005;0.01;0.02;0.05;0.1;0.2;0.5;0.6;0.75;0.9;1;1.2;1.3;1.5;2;3;4;5;6;9;12;15;20;30;60;120;180;300;600;1200;2400;3600");
    }

    public void b() {
        a(1.0d);
    }

    public void a(double d) {
        d(d);
    }

    private void d(double d) {
        int i = 0;
        double d2 = Double.MAX_VALUE;
        int i2 = 0;
        while (true) {
            int i3 = i;
            if (i2 < this.a.length) {
                double abs = Math.abs(d - this.a[i2]);
                if (abs < d2) {
                    d2 = abs;
                    i = i2;
                } else {
                    i = i3;
                }
                i2++;
            } else {
                this.b = i3;
                this.c = this.a[i3];
                return;
            }
        }
    }

    public double c() {
        return this.c;
    }

    public void d() {
        a(1);
    }

    public void e() {
        a(-1);
    }

    private void a(int i) {
        int i2 = this.b + i;
        if (i2 < 0) {
            i2 = 0;
        }
        if (i2 >= this.a.length) {
            i2 = this.a.length - 1;
        }
        this.b = i2;
        this.c = this.a[i2];
    }

    public String f() {
        double[] dArr;
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        for (double d : this.a) {
            if (z) {
                z = false;
            } else {
                sb.append(';');
            }
            sb.append(b(d));
        }
        return sb.toString();
    }

    public static String b(double d) {
        int min = 9 - Math.min(Math.max((int) Math.log10(d), 0), 9);
        String a = Tools.a("%,." + min + 'f', Double.valueOf(d));
        String str = "[" + ps.b + "]?0*$";
        if (min != 0) {
            return a.replaceAll(str, "");
        }
        return a;
    }

    public void a(String str) {
        a(str, true);
    }

    private void a(String str, boolean z) {
        int i;
        if (str.length() == 0) {
            str = a();
        }
        String[] split = str.split(";");
        double[] dArr = new double[split.length + 1];
        int i2 = 0;
        boolean z2 = false;
        int length = split.length;
        int i3 = 0;
        while (i3 < length) {
            String str2 = split[i3];
            try {
                Double valueOf = Double.valueOf(Tools.f(str2));
                if (valueOf.doubleValue() < 1.0E-9d || valueOf.doubleValue() > 1.0E9d) {
                    la.b("Speed outside range: " + valueOf + " (1.0E-9; 1.0E9)");
                    i = i2;
                } else {
                    if (!z2 && valueOf.doubleValue() == 1.0d) {
                        z2 = true;
                    }
                    i = i2 + 1;
                    dArr[i2] = valueOf.doubleValue();
                }
            } catch (NumberFormatException e) {
                la.b("Failed parse speed: '" + str2 + '\'', e);
                i = i2;
            }
            i3++;
            i2 = i;
        }
        if (!z2) {
            dArr[i2] = 1.0d;
            i2++;
        }
        double[] copyOf = dArr.length > i2 ? Arrays.copyOf(dArr, i2) : dArr;
        if (Config.l != 0) {
            Arrays.sort(copyOf);
            if (Config.l == 2) {
                double d = 0.0d;
                int i4 = 0;
                int i5 = 0;
                while (true) {
                    int i6 = i5;
                    if (i6 >= copyOf.length) {
                        break;
                    }
                    double d2 = copyOf[i6];
                    if (i6 > 0 && d2 == d) {
                        la.b("Speed duplicate: " + d2 + " (" + i6 + ')');
                    } else {
                        if (i6 != i4) {
                            copyOf[i4] = d2;
                        }
                        i4++;
                        d = d2;
                    }
                    i5 = i6 + 1;
                }
                if (copyOf.length > i4) {
                    copyOf = Arrays.copyOf(copyOf, i4);
                }
            }
        }
        this.a = copyOf;
        d(this.c);
        if (z) {
            new qw().a("list-speeds", ps.a(f()), "0.000000001;0.00000001;0.0000001;0.000001;0.00001;0.0001;0.001;0.002;0.005;0.01;0.02;0.05;0.1;0.2;0.5;0.6;0.75;0.9;1;1.2;1.3;1.5;2;3;4;5;6;9;12;15;20;30;60;120;180;300;600;1200;2400;3600").commit();
        }
    }

    public static kz c(double d) {
        int pow = (int) (Math.pow(10.0d, 9 - Math.max(0, (int) Math.ceil(Math.log10(d)))) * 2.0d);
        int i = (int) (pow * d);
        if (i == 0) {
            i = 1;
        }
        int b = Tools.b(i, pow);
        return new kz(i / b, pow / b);
    }
}
