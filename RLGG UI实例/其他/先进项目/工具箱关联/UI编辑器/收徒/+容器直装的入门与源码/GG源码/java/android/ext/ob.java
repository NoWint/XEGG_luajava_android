package android.ext;

import android.content.DialogInterface;
import android.view.View;
import catch_.me_.if_.you_.can_.R;
import java.util.Locale;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class ob extends pj {
    final /* synthetic */ MainService a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ob(MainService mainService) {
        super(R.string.calculate_offset_xor, R.drawable.ic_vector_difference_white_24dp);
        this.a = mainService;
    }

    @Override // android.ext.pj, android.view.View.OnClickListener
    public void onClick(View view) {
        a();
    }

    private void a() {
        Object C = this.a.C();
        long[] jArr = new long[10];
        long[] jArr2 = new long[10];
        int i = 0;
        int i2 = 0;
        if (C instanceof android.c.a) {
            android.c.a aVar = (android.c.a) C;
            d dVar = new d();
            int b = aVar.b();
            int i3 = 0;
            int i4 = 0;
            while (true) {
                if (i3 >= b) {
                    i = i4;
                    break;
                }
                if (aVar.b(i3)) {
                    if (i4 < 10) {
                        aVar.a(i3, dVar);
                        jArr[i4] = dVar.b;
                        jArr2[i4] = dVar.c & d.a[dVar.d()];
                        i4++;
                    }
                    i2++;
                    if (i2 > 10) {
                        i = i4;
                        break;
                    }
                }
                i3++;
            }
        } else if (C instanceof android.c.e) {
            android.c.e eVar = (android.c.e) C;
            int b2 = eVar.b();
            int i5 = 0;
            int i6 = 0;
            while (true) {
                if (i5 >= b2) {
                    i2 = i6;
                    break;
                }
                if (eVar.d(i5)) {
                    qx qxVar = (qx) eVar.c(i5);
                    if (qxVar instanceof qx) {
                        if (i < 10) {
                            jArr[i] = qxVar.b;
                            jArr2[i] = qxVar.c & d.a[qxVar.d()];
                            i++;
                        }
                        i2 = i6 + 1;
                        if (i2 > 10) {
                            break;
                        }
                    } else {
                        i2 = i6;
                    }
                } else {
                    i2 = i6;
                }
                i5++;
                i6 = i2;
            }
        } else if (C instanceof boolean[]) {
            ow owVar = this.a.K;
            boolean[] zArr = (boolean[]) C;
            int length = zArr.length - 1;
            int i7 = 1;
            int i8 = 0;
            while (true) {
                if (i7 >= length) {
                    i2 = i8;
                    break;
                }
                if (zArr[i7]) {
                    if (i < 10) {
                        jArr[i] = owVar.a(i7);
                        d dVar2 = (d) owVar.getItem(i7);
                        jArr2[i] = dVar2.c & d.a[dVar2.d()];
                        i++;
                    }
                    i2 = i8 + 1;
                    if (i2 > 10) {
                        break;
                    }
                } else {
                    i2 = i8;
                }
                i7++;
                i8 = i2;
            }
        }
        if (i >= 2) {
            if (i2 > i) {
                Tools.b(Tools.a(qk.a((int) R.string.used_only_first), Integer.valueOf(i)));
            }
            i.a(i.c().setAdapter(new ArrayAdapter(MainService.context, new String[]{Tools.c((int) R.string.offset), "XOR"}), new oc(this, jArr, jArr2, i)).setNegativeButton(qk.a((int) R.string.cancel), (DialogInterface.OnClickListener) null));
            return;
        }
        Tools.b(Tools.a(qk.a((int) R.string.need_select_more), 2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(long[] jArr, long[] jArr2, int i, int i2) {
        String a;
        String[] strArr = new String[((i - 1) * i) / 2];
        String[] strArr2 = new String[((i - 1) * i) / 2];
        int i3 = 0;
        int i4 = 0;
        while (true) {
            int i5 = i4;
            if (i5 < i - 1) {
                int i6 = i5 + 1;
                while (true) {
                    int i7 = i6;
                    if (i7 >= i) {
                        break;
                    }
                    long j = jArr[i5];
                    long j2 = jArr[i7];
                    if (i2 == 0) {
                        a = Long.toHexString(j2 - j).toUpperCase(Locale.US);
                    } else {
                        a = Tools.a("%,d", Long.valueOf(jArr2[i5] ^ jArr2[i7]));
                    }
                    strArr2[i3] = a;
                    strArr[i3] = String.valueOf(ts.a(8, j)) + " - " + ts.a(8, j2) + ": " + a;
                    i3++;
                    i6 = i7 + 1;
                }
                i4 = i5 + 1;
            } else {
                i.a(i.c().setCustomTitle(Tools.d((int) R.string.select_copy_item)).setAdapter(new ArrayAdapter(MainService.context, strArr), new od(this, strArr2)).setNegativeButton(qk.a((int) R.string.cancel), (DialogInterface.OnClickListener) null));
                return;
            }
        }
    }
}
