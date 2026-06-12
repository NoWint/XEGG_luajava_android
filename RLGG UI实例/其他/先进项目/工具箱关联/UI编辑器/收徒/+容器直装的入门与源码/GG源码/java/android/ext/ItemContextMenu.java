package android.ext;

import android.content.DialogInterface;
import android.view.View;
import android.widget.AdapterView;
import catch_.me_.if_.you_.can_.R;
import java.util.ArrayList;

/* compiled from: src */
/* loaded from: classes.dex */
public class ItemContextMenu implements AdapterView.OnItemLongClickListener {
    private static final ThreadLocal a = new ThreadLocal();
    private final int b;
    private final int[] c = {0, 4, 16, 64, 2, 1, 32, 8};
    private final String[] d = new String[this.c.length];
    private final String[] e = new String[this.c.length];
    private final String[] f = new String[this.c.length];

    public ItemContextMenu(int i) {
        this.b = i;
    }

    public static long a(long j) {
        a.set(Long.valueOf(j));
        return j;
    }

    @Override // android.widget.AdapterView.OnItemLongClickListener
    public boolean onItemLongClick(AdapterView adapterView, View view, int i, long j) {
        int i2;
        int i3;
        String str;
        String b;
        Object itemAtPosition = adapterView.getItemAtPosition(i);
        if (itemAtPosition instanceof d) {
            d dVar = (d) itemAtPosition;
            qx qxVar = new qx(dVar);
            String g = qxVar.g();
            long j2 = qxVar.b;
            int i4 = qxVar.d & 127;
            long j3 = qxVar.c;
            qh qhVar = MainService.instance.ap;
            int d = this.b == 3 ? 8 : d.d(i4);
            if ((3 & j2) != 0 || d < 4) {
                i2 = 0;
            } else {
                i2 = (qhVar == null || !qhVar.n || d != 8 || ((-4294967296L) & j3) == 0) ? 1 : 2;
            }
            boolean z = (i4 & (-81)) != 0;
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            arrayList.add(g);
            arrayList2.add(qk.a((int) R.string.offset_calculator));
            arrayList3.add(Integer.valueOf((int) R.drawable.ic_calculator_white_24dp));
            arrayList.add(g);
            arrayList2.add(qk.a((int) R.string.help_pointer_search_title));
            arrayList3.add(Integer.valueOf((int) R.drawable.ic_pointer_white_24dp));
            arrayList.add(g);
            arrayList2.add(qk.a((int) R.string.search_nearby));
            arrayList3.add(Integer.valueOf((int) R.drawable.ic_search_nearby_white_24dp));
            if (adapterView != MainService.instance.J) {
                arrayList.add(g);
                arrayList2.add(String.valueOf(qk.a((int) R.string.goto_address)) + ' ' + g);
                arrayList3.add(Integer.valueOf((int) R.drawable.ic_forward_white_24dp));
            }
            int i5 = 0;
            while (i5 < i2) {
                int i6 = i5 == 0 ? 4 : 32;
                String d2 = d.d(j2, j3, i6);
                arrayList.add(d2);
                arrayList2.add(String.valueOf(qk.a((int) R.string.goto_pointer)) + ' ' + d2);
                arrayList3.add(Integer.valueOf((int) R.drawable.ic_forward_white_24dp));
                long j4 = (-4096) & j3;
                if (j4 != 0 && RegionList.b(j4) == null) {
                    String d3 = d.d(j2, j4, i6);
                    arrayList.add(d3);
                    arrayList2.add(String.valueOf(Tools.c((int) R.string.allocate_page)) + ": " + d3);
                    arrayList3.add(Integer.valueOf((int) R.drawable.ic_code_braces_white_24dp));
                }
                i5++;
            }
            long j5 = (-4096) & j2;
            if (j5 != 0 && RegionList.b(j5) == null) {
                String b2 = d.b(j5, 4);
                arrayList.add(b2);
                arrayList2.add(String.valueOf(Tools.c((int) R.string.allocate_page)) + ": " + b2);
                arrayList3.add(Integer.valueOf((int) R.drawable.ic_code_braces_white_24dp));
            }
            arrayList.add(g);
            arrayList2.add(String.valueOf(qk.a((int) R.string.copy_address)) + ' ' + g);
            arrayList3.add(Integer.valueOf((int) R.drawable.ic_content_copy_white_24dp));
            String str2 = null;
            String str3 = null;
            String str4 = null;
            int r = MainService.instance.r();
            if (r == 1) {
                i3 = AddressArrayAdapter.a;
            } else if (r == 3) {
                i3 = MainService.instance.K.c;
            } else {
                i3 = r == 2 ? SavedListAdapter.a : 0;
            }
            if (i3 != 0) {
                int i7 = 0;
                while (i7 < 3) {
                    if (i7 == 0) {
                        if ((3 & j2) == 0) {
                            if ((i3 & 16) == 0) {
                                b = str3;
                                i7++;
                                str3 = b;
                            }
                        }
                        b = str3;
                        i7++;
                        str3 = b;
                    }
                    if (i7 == 1) {
                        if ((1 & j2) == 0) {
                            if ((i3 & 32) == 0) {
                                b = str3;
                                i7++;
                                str3 = b;
                            }
                        }
                        b = str3;
                        i7++;
                        str3 = b;
                    }
                    if (i7 == 2) {
                        if ((3 & j2) == 0) {
                            if ((i3 & 64) == 0) {
                                b = str3;
                                i7++;
                                str3 = b;
                            }
                        }
                        b = str3;
                        i7++;
                        str3 = b;
                    }
                    a.set(0L);
                    if (i7 == 0) {
                        str2 = ai.a((ai) null, j2, j3);
                    }
                    b = i7 == 1 ? ai.b((ai) null, j2, j3) : str3;
                    String sb = i7 == 2 ? ag.a(ag.a(), j2, (int) j3, new StringBuilder()).toString() : str4;
                    long longValue = ((Long) a.get()).longValue();
                    if (longValue != 0) {
                        String str5 = i7 == 0 ? "ARM (x32)" : null;
                        if (i7 == 1) {
                            str5 = "Thumb";
                        }
                        if (i7 == 2) {
                            str5 = "ARM (x64)";
                        }
                        String str6 = String.valueOf(str5) + ": ";
                        String b3 = d.b(longValue, 4);
                        arrayList.add(b3);
                        arrayList2.add(String.valueOf(str6) + qk.a((int) R.string.goto_address) + ' ' + b3);
                        arrayList3.add(Integer.valueOf((int) R.drawable.ic_forward_white_24dp));
                        arrayList.add(b3);
                        arrayList2.add(String.valueOf(str6) + qk.a((int) R.string.copy_address) + ' ' + b3);
                        arrayList3.add(Integer.valueOf((int) R.drawable.ic_content_copy_white_24dp));
                        long j6 = longValue & (-4096);
                        if (j6 != 0 && RegionList.b(j6) == null) {
                            String b4 = d.b(j6, 4);
                            arrayList.add(b4);
                            arrayList2.add(String.valueOf(str6) + Tools.c((int) R.string.allocate_page) + ": " + b4);
                            arrayList3.add(Integer.valueOf((int) R.drawable.ic_code_braces_white_24dp));
                        }
                    }
                    str4 = sb;
                    i7++;
                    str3 = b;
                }
            }
            int i8 = 0;
            int[] iArr = this.c;
            String[] strArr = this.d;
            String[] strArr2 = this.e;
            String[] strArr3 = this.f;
            for (int i9 : iArr) {
                if (i9 == 0 || (i4 & i9) != 0) {
                    if (i9 == 0) {
                        i9 = i4;
                    }
                    String a2 = d.a(j2, j3, i9);
                    boolean z2 = false;
                    int i10 = 0;
                    while (true) {
                        if (i10 < i8) {
                            if (!strArr[i10].equals(a2)) {
                                i10++;
                            } else {
                                z2 = true;
                                break;
                            }
                        } else {
                            break;
                        }
                    }
                    if (!z2) {
                        strArr[i8] = a2;
                        if (z) {
                            strArr2[i8] = (i9 & (-81)) == 0 ? null : d.d(j2, j3, i9);
                            strArr3[i8] = (i9 & (-81)) == 0 ? null : d.c(j2, j3, i9);
                        }
                        i8++;
                    }
                }
            }
            if (i8 > 0) {
                for (int i11 = 0; i11 < i8; i11++) {
                    arrayList.add(strArr[i11]);
                    arrayList2.add(String.valueOf(qk.a((int) R.string.copy_value)) + ' ' + strArr[i11]);
                    arrayList3.add(Integer.valueOf((int) R.drawable.ic_content_copy_white_24dp));
                    if (z && strArr2[i11] != null) {
                        arrayList.add(strArr2[i11]);
                        arrayList2.add(String.valueOf(qk.a((int) R.string.copy_hex_value)) + ' ' + strArr2[i11]);
                        arrayList3.add(Integer.valueOf((int) R.drawable.ic_content_copy_white_24dp));
                        arrayList.add(strArr3[i11]);
                        arrayList2.add(String.valueOf(qk.a((int) R.string.copy_rhex_value)) + ' ' + strArr3[i11]);
                        arrayList3.add(Integer.valueOf((int) R.drawable.ic_content_copy_white_24dp));
                    }
                }
            }
            int i12 = 0;
            while (true) {
                int i13 = i12;
                if (i13 >= 3) {
                    break;
                }
                String str7 = null;
                String str8 = null;
                if (i13 == 0) {
                    str8 = "ARM (x32)";
                    str7 = str2;
                }
                if (i13 == 1) {
                    str8 = "Thumb";
                    str7 = str3;
                }
                if (i13 == 2) {
                    str = "ARM (x64)";
                    str7 = str4;
                } else {
                    str = str8;
                }
                if (str7 != null) {
                    String trim = str7.trim();
                    int indexOf = trim.indexOf(59);
                    if (indexOf != -1) {
                        trim = trim.substring(0, indexOf).trim();
                    }
                    if (trim.length() > 0) {
                        arrayList.add(trim);
                        arrayList2.add(String.valueOf(Tools.a(qk.a((int) R.string.copy_opcode), str)) + ' ' + trim);
                        arrayList3.add(Integer.valueOf((int) R.drawable.ic_content_copy_white_24dp));
                    }
                }
                i12 = i13 + 1;
            }
            if (adapterView == MainService.instance.I) {
                arrayList.add(g);
                arrayList2.add(qk.a((int) R.string.change_address_type));
                arrayList3.add(Integer.valueOf((int) R.drawable.ic_cursor_mover_white_24dp));
            }
            i.a(i.a(Tools.o()).setAdapter(new kv(this, MainService.context, arrayList2, arrayList3), new kw(this, arrayList3, arrayList, dVar)).setNegativeButton(qk.a((int) R.string.cancel), (DialogInterface.OnClickListener) null));
            return true;
        }
        return false;
    }
}
