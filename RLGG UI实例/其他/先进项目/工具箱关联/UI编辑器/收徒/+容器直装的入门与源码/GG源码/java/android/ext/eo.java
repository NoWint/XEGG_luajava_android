package android.ext;

import android.content.DialogInterface;
import android.view.View;
import catch_.me_.if_.you_.can_.R;

/* compiled from: src */
/* loaded from: classes.dex */
public class eo extends pj {
    public eo() {
        super(R.string.copy_as_search, R.drawable.ic_content_copy_white_24dp);
    }

    @Override // android.ext.pj, android.view.View.OnClickListener
    public void onClick(View view) {
        CharSequence[] charSequenceArr = {qk.a((int) R.string.format_hex), qk.a((int) R.string.format_rhex), qk.a((int) R.string.add_types), qk.a((int) R.string.add_size), "UTF-8", "UTF-16LE", "HEX", "HEX + UTF-8", "HEX + UTF-16LE", "HEX + UTF-8 + UTF-16LE"};
        int i = Config.y;
        boolean[] zArr = new boolean[charSequenceArr.length];
        for (int i2 = 0; i2 < charSequenceArr.length; i2++) {
            zArr[i2] = ((1 << i2) & i) != 0;
        }
        i.a(i.a(Tools.o()).setCustomTitle(Tools.d((int) R.string.copy_as_search)).setMultiChoiceItems(charSequenceArr, zArr, new eq(this, zArr)).setPositiveButton(qk.a((int) R.string.yes), new ep(this, zArr)).setNegativeButton(qk.a((int) R.string.no), (DialogInterface.OnClickListener) null));
    }

    private void a(et etVar, StringBuilder sb, d dVar, int i) {
        if (etVar != null) {
            if (etVar.c == 0) {
                etVar.c = dVar.b;
            }
            int d = dVar.d();
            long j = dVar.c;
            for (int i2 = 0; i2 < d; i2++) {
                long j2 = dVar.b + i2;
                if (etVar.c <= j2) {
                    byte[] bArr = etVar.a;
                    int i3 = etVar.b;
                    etVar.b = i3 + 1;
                    bArr[i3] = (byte) (255 & j);
                    etVar.c = j2;
                }
                j >>= 8;
            }
            return;
        }
        if (sb.length() != 0) {
            sb.append(';');
        }
        if ((i & 2) != 0) {
            sb.append(dVar.j());
            sb.append('r');
        } else if ((i & 1) != 0) {
            sb.append(dVar.k());
            sb.append('h');
        } else {
            sb.append(dVar.h());
        }
        if ((i & 4) != 0) {
            sb.append(dVar.l());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i) {
        long j;
        long j2;
        Object C = MainService.instance.C();
        StringBuilder sb = new StringBuilder();
        int i2 = 0;
        int i3 = 0;
        long j3 = 0;
        long j4 = 0;
        int numberOfTrailingZeros = Integer.numberOfTrailingZeros(i & 1008);
        et etVar = numberOfTrailingZeros != 32 ? new et() : null;
        if (C instanceof android.c.a) {
            android.c.a aVar = (android.c.a) C;
            d dVar = new d();
            int b = aVar.b();
            int i4 = 0;
            long j5 = 0;
            int i5 = 0;
            while (true) {
                if (i4 >= b) {
                    j = j4;
                    j3 = j5;
                    i2 = i5;
                    break;
                }
                if (aVar.b(i4)) {
                    if (i5 < 100) {
                        aVar.a(i4, dVar);
                        a(etVar, sb, dVar, i);
                        j4 = dVar.b;
                        if (i5 == 0) {
                            j5 = j4;
                        }
                        i5++;
                    }
                    i3++;
                    if (i3 > 100) {
                        j = j4;
                        j3 = j5;
                        i2 = i5;
                        break;
                    }
                }
                i4++;
            }
        } else if (C instanceof android.c.e) {
            android.c.e eVar = (android.c.e) C;
            int b2 = eVar.b();
            int i6 = 0;
            long j6 = 0;
            while (true) {
                if (i6 >= b2) {
                    j = j4;
                    j3 = j6;
                    break;
                }
                if (eVar.d(i6)) {
                    qx qxVar = (qx) eVar.c(i6);
                    if (qxVar instanceof qx) {
                        if (i2 < 100) {
                            a(etVar, sb, qxVar, i);
                            j4 = qxVar.b;
                            long j7 = i2 == 0 ? j4 : j6;
                            i2++;
                            j6 = j7;
                        }
                        i3++;
                        if (i3 > 100) {
                            j = j4;
                            j3 = j6;
                            break;
                        }
                    } else {
                        continue;
                    }
                }
                i6++;
                j4 = j4;
            }
        } else if (!(C instanceof boolean[])) {
            j = 0;
        } else {
            ow owVar = MainService.instance.K;
            boolean[] zArr = (boolean[]) C;
            int length = zArr.length - 1;
            int i7 = 1;
            long j8 = 0;
            long j9 = 0;
            while (true) {
                if (i7 >= length) {
                    j = j8;
                    j3 = j9;
                    break;
                }
                if (zArr[i7]) {
                    if (i2 < 100) {
                        d dVar2 = (d) owVar.getItem(i7);
                        a(etVar, sb, dVar2, i);
                        j2 = dVar2.b;
                        long j10 = i2 == 0 ? j2 : j9;
                        i2++;
                        j9 = j10;
                    } else {
                        j2 = j8;
                    }
                    i3++;
                    if (i3 > 100) {
                        j = j2;
                        j3 = j9;
                        break;
                    }
                    j8 = j2;
                }
                i7++;
            }
        }
        int i8 = etVar == null ? 2 : 1;
        if (i2 >= i8) {
            if (i3 > i2) {
                Tools.b(Tools.a(qk.a((int) R.string.used_only_first), Integer.valueOf(i2)));
            }
            if (etVar != null) {
                if (numberOfTrailingZeros == 4 || numberOfTrailingZeros == 5) {
                    boolean z = numberOfTrailingZeros == 5;
                    sb.append(z ? ';' : ':');
                    sb.append(new String(etVar.a, 0, etVar.b, ps.a(z)));
                } else if (numberOfTrailingZeros == 6) {
                    sb.append('h');
                    char[] cArr = iu.a;
                    byte[] bArr = etVar.a;
                    int i9 = etVar.b;
                    for (int i10 = 0; i10 < i9; i10++) {
                        sb.append(' ');
                        byte b3 = bArr[i10];
                        sb.append(cArr[(b3 & 240) >> 4]);
                        sb.append(cArr[b3 & 15]);
                    }
                } else {
                    sb.append('Q');
                    sb.append(' ');
                    iu.a(sb, 0, etVar.a, etVar.b, numberOfTrailingZeros == 7 || numberOfTrailingZeros == 9, numberOfTrailingZeros == 8 || numberOfTrailingZeros == 9, null);
                }
            } else if ((i & 8) != 0) {
                sb.append(':');
                sb.append((1 + j) - j3);
            }
            String sb2 = sb.toString();
            DialogInterface.OnClickListener erVar = new er(this, sb2);
            if (etVar == null && j - j3 >= 65535) {
                i.a(i.c().setMessage(Tools.a(qk.a((int) R.string.too_far), Long.valueOf((1 + j) - j3), 65535)).setPositiveButton(qk.a((int) R.string.ok), new es(this, sb2, erVar)).setNegativeButton(qk.a((int) R.string.cancel), (DialogInterface.OnClickListener) null));
                return;
            } else {
                a(sb2, erVar);
                return;
            }
        }
        Tools.b(Tools.a(qk.a((int) R.string.need_select_more), Integer.valueOf(i8)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str, DialogInterface.OnClickListener onClickListener) {
        i.a(i.c().setMessage(str).setPositiveButton(qk.a((int) R.string.copy), onClickListener).setNeutralButton(qk.a((int) R.string.search), onClickListener).setNegativeButton(qk.a((int) R.string.cancel), (DialogInterface.OnClickListener) null));
    }
}
