package android.ext;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.ext.Script;
import android.text.SpannableString;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.AdapterView;
import catch_.me_.if_.you_.can_.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: src */
/* loaded from: classes.dex */
class hk implements DialogInterface.OnClickListener, DialogInterface.OnDismissListener, DialogInterface.OnShowListener, View.OnClickListener, AdapterView.OnItemClickListener {
    int a;
    int b;
    final /* synthetic */ EditorListener c;
    private AlertDialog d;
    private boolean e;
    private boolean f;
    private int g;
    private List h;
    private he i;

    private hk(EditorListener editorListener) {
        this.c = editorListener;
        this.f = false;
        this.g = 0;
        this.h = null;
        this.a = 0;
        this.b = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ hk(EditorListener editorListener, hk hkVar) {
        this(editorListener);
    }

    @Override // android.content.DialogInterface.OnShowListener
    public void onShow(DialogInterface dialogInterface) {
        Tools.a(dialogInterface, -1, (Object) null, this, this.i.h());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(d dVar) {
        this.h = null;
        this.a = 0;
        this.b = 0;
        this.g = 0;
        b(dVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(d dVar) {
        int i;
        int i2;
        String a;
        this.e = false;
        this.f = false;
        if (dVar != null) {
            i = 0;
        } else {
            this.e = true;
            Object C = MainService.instance.C();
            if (Tools.a(C) == 0) {
                Tools.a((int) R.string.nothing_selected);
                return;
            }
            if (this.h == null) {
                this.h = new ArrayList();
                if (C instanceof boolean[]) {
                    this.g = 3;
                    if (this.a == 0) {
                        this.h = null;
                        SparseIntArray sparseIntArray = new SparseIntArray();
                        new tu(d.c(MainService.instance.K.a((boolean[]) C, sparseIntArray)), sparseIntArray, "0", qk.a((int) R.string.type_change_request), new hl(this));
                        return;
                    }
                    ow owVar = MainService.instance.K;
                    boolean[] zArr = (boolean[]) C;
                    int length = zArr.length - 1;
                    for (int i3 = 1; i3 < length; i3++) {
                        if (zArr[i3]) {
                            d dVar2 = new d(owVar.a(i3), 0L, this.a);
                            if (dVar2.q()) {
                                dVar2.c = MainService.instance.b(dVar2.b, dVar2.d);
                                this.h.add(dVar2);
                            }
                        }
                    }
                    this.a = 0;
                } else if (C instanceof android.c.e) {
                    this.g = 2;
                    android.c.e eVar = (android.c.e) C;
                    int b = eVar.b();
                    for (int i4 = 0; i4 < b; i4++) {
                        if (eVar.d(i4)) {
                            this.h.add((d) eVar.c(i4));
                        }
                    }
                } else if (C instanceof android.c.a) {
                    this.g = 1;
                    android.c.a aVar = (android.c.a) C;
                    int b2 = aVar.b();
                    for (int i5 = 0; i5 < b2; i5++) {
                        if (aVar.b(i5)) {
                            this.h.add(aVar.a(i5, (d) null));
                        }
                    }
                } else {
                    throw new IllegalArgumentException("Obj is unknown: " + C);
                }
            }
            if (this.h == null) {
                i = 0;
            } else if (this.h.size() == 0) {
                Tools.a((int) R.string.nothing_selected);
                la.a("It must never happen.");
                return;
            } else if (this.b == 0) {
                int i6 = 0;
                SparseIntArray sparseIntArray2 = new SparseIntArray();
                Iterator it = this.h.iterator();
                while (true) {
                    int i7 = i6;
                    if (it.hasNext()) {
                        int i8 = ((d) it.next()).d;
                        i6 = i7 | i8;
                        sparseIntArray2.put(i8, sparseIntArray2.get(i8) + 1);
                    } else {
                        new tu(d.c(i7), sparseIntArray2, "0", qk.a((int) R.string.type_change_request), new hm(this));
                        return;
                    }
                }
            } else {
                int i9 = 0;
                while (true) {
                    int i10 = i9;
                    if (i10 >= this.h.size()) {
                        break;
                    }
                    if (((d) this.h.get(i10)).d != this.b) {
                        this.h.remove(i10);
                        i10--;
                    }
                    i9 = i10 + 1;
                }
                this.b = 0;
                if (this.h.size() == 0) {
                    Tools.a((int) R.string.no_items_for_editing);
                    la.a("It must never happen. " + this.b);
                    return;
                }
                dVar = ((d) this.h.get(0)).a();
                i = this.h.size();
                if (i == 1) {
                    this.e = false;
                }
            }
            if (dVar == null) {
                throw new NullPointerException("Something going wrong");
            }
        }
        if (!this.e) {
            qx a2 = MainService.instance.an.a(dVar.b);
            if (a2 != null && a2.m() == dVar.m()) {
                qx a3 = a2.a();
                a3.c = dVar.c;
                this.f = true;
                dVar = a3;
            } else {
                dVar = new qx(dVar);
            }
        }
        if (this.e) {
            dVar.d = dVar.m();
        }
        if (this.e) {
            i2 = 2;
        } else {
            i2 = this.f ? 0 : 1;
        }
        this.i = new he(i2, dVar);
        if (this.e) {
            String str = ra.a;
            if (str == null || this.g != 1) {
                str = dVar.h();
            }
            this.i.a(str);
            this.i.a(this);
        } else if (this.f) {
            this.i.j();
        }
        CharSequence n = dVar.n();
        he heVar = this.i;
        if (this.e) {
            a = Tools.a(qk.a((int) R.string.edit_all_info), Integer.valueOf(i), n);
        } else {
            a = Tools.a(qk.a((int) R.string.edit_info), dVar.g(), n);
        }
        heVar.a(Tools.a(new SpannableString(a), n, dVar.o()));
        AlertDialog create = i.c().setView(this.i.e()).setPositiveButton(qk.a((int) R.string.yes), this).setNegativeButton(qk.a((int) R.string.no), (DialogInterface.OnClickListener) null).create();
        this.d = create;
        if (!this.e) {
            create.setButton(-3, qk.a((int) R.string.goto1), this);
        }
        i.a(create, (DialogInterface.OnShowListener) this);
        i.a(create, (DialogInterface.OnDismissListener) this);
        i.a(create, this.i.h());
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        boolean z;
        if (i != -1 && i != -2 && i == -3 && !this.e) {
            d i2 = this.i.i();
            MainService mainService = MainService.instance;
            z = this.c.a;
            mainService.a(!z ? null : Long.valueOf(i2.b), i2.g(), String.valueOf(Tools.c((int) R.string.from_item)) + ": (" + i2 + ')');
        }
    }

    private boolean a(View view) {
        int i;
        int i2;
        int i3;
        StringBuilder sb = null;
        switch (view.getId()) {
            case R.id.fill_values /* 2131427577 */:
                StringBuilder sb2 = new StringBuilder();
                int size = this.h.size();
                for (int i4 = 0; i4 < size; i4++) {
                    d dVar = (d) this.h.get(i4);
                    if (i4 != 0) {
                        sb2.append(';');
                    }
                    sb2.append(dVar.h());
                }
                sb = sb2;
                break;
            case R.id.fill_utf8 /* 2131427578 */:
            case R.id.fill_utf16le /* 2131427579 */:
                StringBuilder sb3 = new StringBuilder();
                boolean z = view.getId() == R.id.fill_utf8;
                sb3.append(z ? ':' : ';');
                if (z || this.i.i().d == 1) {
                    long j = 0;
                    int size2 = this.h.size();
                    byte[] bArr = new byte[size2];
                    int i5 = 0;
                    while (true) {
                        if (i5 >= size2) {
                            i = size2;
                        } else {
                            d dVar2 = (d) this.h.get(i5);
                            if (j == 0 || j + 1 == dVar2.b) {
                                j = dVar2.b;
                                bArr[i5] = (byte) dVar2.c;
                                i5++;
                            } else {
                                i = i5;
                            }
                        }
                    }
                    sb3.append(new String(bArr, 0, i, ps.a(!z)));
                    sb = sb3;
                    break;
                } else if (this.i.i().d == 2) {
                    long j2 = 0;
                    int size3 = this.h.size();
                    char[] cArr = new char[size3];
                    int i6 = 0;
                    while (true) {
                        if (i6 >= size3) {
                            i3 = size3;
                        } else {
                            d dVar3 = (d) this.h.get(i6);
                            if (j2 == 0 || j2 + 2 == dVar3.b) {
                                j2 = dVar3.b;
                                cArr[i6] = (char) dVar3.c;
                                i6++;
                            } else {
                                i3 = i6;
                            }
                        }
                    }
                    sb3.append(new String(cArr, 0, i3));
                    sb = sb3;
                    break;
                } else {
                    if (this.i.i().d == 4) {
                        long j3 = 0;
                        int size4 = this.h.size();
                        char[] cArr2 = new char[size4 * 2];
                        int i7 = 0;
                        while (true) {
                            if (i7 >= size4) {
                                i2 = size4;
                            } else {
                                d dVar4 = (d) this.h.get(i7);
                                if (j3 == 0 || j3 + 4 == dVar4.b) {
                                    j3 = dVar4.b;
                                    cArr2[i7 * 2] = (char) dVar4.c;
                                    cArr2[(i7 * 2) + 1] = (char) (dVar4.c >> 16);
                                    i7++;
                                } else {
                                    i2 = i7;
                                }
                            }
                        }
                        sb3.append(new String(cArr2, 0, i2 * 2));
                    }
                    sb = sb3;
                    break;
                }
                break;
            case R.id.fill_hex /* 2131427580 */:
                StringBuilder sb4 = new StringBuilder();
                sb4.append('h');
                long j4 = 0;
                int size5 = this.h.size();
                char[] cArr3 = iu.a;
                int i8 = 0;
                while (true) {
                    if (i8 >= size5) {
                        sb = sb4;
                        break;
                    } else {
                        d dVar5 = (d) this.h.get(i8);
                        if (j4 != 0 && j4 + 1 != dVar5.b) {
                            sb = sb4;
                            break;
                        } else {
                            j4 = dVar5.b;
                            sb4.append(' ');
                            int i9 = (int) dVar5.c;
                            sb4.append(cArr3[(i9 & 240) >> 4]);
                            sb4.append(cArr3[i9 & 15]);
                            i8++;
                        }
                    }
                }
                break;
            case R.id.fill_hex_utf8 /* 2131427581 */:
            case R.id.fill_hex_utf16le /* 2131427582 */:
            case R.id.fill_hex_utf8_utf16le /* 2131427583 */:
                sb = new StringBuilder();
                sb.append('Q');
                sb.append(' ');
                int id = view.getId();
                long j5 = 0;
                int size6 = this.h.size();
                byte[] bArr2 = new byte[size6];
                int i10 = 0;
                while (true) {
                    if (i10 >= size6) {
                        i10 = size6;
                    } else {
                        d dVar6 = (d) this.h.get(i10);
                        if (j5 == 0 || j5 + 1 == dVar6.b) {
                            j5 = dVar6.b;
                            bArr2[i10] = (byte) dVar6.c;
                            i10++;
                        }
                    }
                }
                iu.a(sb, 0, bArr2, i10, id == R.id.fill_hex_utf8 || id == R.id.fill_hex_utf8_utf16le, id == R.id.fill_hex_utf16le || id == R.id.fill_hex_utf8_utf16le, null);
                break;
        }
        if (sb != null) {
            this.i.a(sb.toString());
        }
        return sb != null;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        char[] cArr;
        byte[] bArr;
        String[] strArr;
        long j;
        f fVar;
        int i;
        String str;
        long j2;
        int i2;
        long j3;
        int i3;
        long j4;
        int i4;
        if (view == null || (view.getTag() instanceof pj)) {
            a((d) null);
            return;
        }
        try {
            if (this.e) {
                if (!a(view)) {
                    try {
                        String c = re.c(this.i.b());
                        rd a = ra.a(c, false);
                        int i5 = a != null ? a.b : 0;
                        String str2 = a != null ? a.a : c;
                        boolean k = this.i.k();
                        String c2 = re.c(this.i.c());
                        int size = this.h.size();
                        boolean d = this.i.d();
                        int i6 = this.i.i().d;
                        if (i6 == 1 && ps.d(str2)) {
                            cArr = null;
                            bArr = ps.a((CharSequence) str2);
                            strArr = null;
                        } else if ((i6 & 6) != 0 && ps.d(str2) && str2.charAt(0) == ';') {
                            cArr = str2.substring(1).toCharArray();
                            bArr = null;
                            strArr = null;
                        } else if (str2.indexOf(59) == -1) {
                            cArr = null;
                            bArr = null;
                            strArr = null;
                        } else {
                            String[] split = str2.split(";");
                            if (split.length == 0) {
                                cArr = null;
                                bArr = null;
                                strArr = null;
                            } else {
                                cArr = null;
                                bArr = null;
                                strArr = split;
                            }
                        }
                        SavedListAdapter savedListAdapter = MainService.instance.an;
                        pv pvVar = null;
                        pv[] pvVarArr = strArr == null ? null : new pv[strArr.length];
                        int i7 = 0;
                        int i8 = 0;
                        long j5 = 0;
                        f fVar2 = null;
                        int i9 = 0;
                        while (i8 < size) {
                            d dVar = (d) this.h.get(i8);
                            qx a2 = MainService.instance.an.a(dVar.b);
                            boolean z = a2 != null && a2.m() == dVar.m();
                            qx a3 = this.i.a(dVar);
                            if (d) {
                                if (bArr != null) {
                                    int i10 = 1 + j5 != dVar.b ? 0 : i7;
                                    long j6 = dVar.b;
                                    if (i10 < bArr.length) {
                                        i4 = i10 + 1;
                                        j4 = 255 & bArr[i10];
                                    } else {
                                        j4 = 0;
                                        i4 = i10;
                                    }
                                    a3.c = j4;
                                    j = j6;
                                    i7 = i4;
                                    i = i9;
                                } else if (cArr != null) {
                                    boolean z2 = dVar.d == 2;
                                    int i11 = ((long) (z2 ? 2 : 4)) + j5 != dVar.b ? 0 : i7;
                                    long j7 = dVar.b;
                                    if (i11 < cArr.length) {
                                        i2 = i11 + 1;
                                        j2 = 65535 & cArr[i11];
                                    } else {
                                        j2 = 0;
                                        i2 = i11;
                                    }
                                    a3.c = j2;
                                    if (z2) {
                                        j = j7;
                                        i7 = i2;
                                        i = i9;
                                    } else {
                                        long j8 = a3.c;
                                        if (i2 < cArr.length) {
                                            i3 = i2 + 1;
                                            j3 = (65535 & cArr[i2]) << 16;
                                        } else {
                                            j3 = 0;
                                            i3 = i2;
                                        }
                                        a3.c = j3 | j8;
                                        j = j7;
                                        i7 = i3;
                                        i = i9;
                                    }
                                } else {
                                    if (strArr == null) {
                                        if (pvVar == null) {
                                            pvVar = d.a(null, str2, a3.d, R.string.number_name, dVar.b);
                                            str = str2;
                                            i = i9 + 1;
                                            fVar2 = a3.a(fVar2, pvVar, str, dVar.b, c2, i);
                                            j = j5;
                                            str2 = str;
                                        }
                                    } else {
                                        i7 = i8 % strArr.length;
                                        str2 = strArr[i7];
                                        pvVar = pvVarArr[i7];
                                        if (pvVar == null) {
                                            pvVar = d.a(null, str2, a3.d, R.string.number_name, dVar.b);
                                            pvVarArr[i7] = pvVar;
                                        }
                                    }
                                    str = str2;
                                    i = i9 + 1;
                                    fVar2 = a3.a(fVar2, pvVar, str, dVar.b, c2, i);
                                    j = j5;
                                    str2 = str;
                                }
                                a3.m(i5);
                                fVar = fVar2;
                            } else {
                                j = j5;
                                fVar = fVar2;
                                i = i9;
                            }
                            if (k || z) {
                                savedListAdapter.a(a3, (byte) 0, false);
                            }
                            i8++;
                            j5 = j;
                            fVar2 = fVar;
                            i9 = i;
                        }
                        savedListAdapter.notifyDataSetChanged();
                        MainService.instance.L();
                        Tools.a((DialogInterface) this.d);
                        if (ra.a != null && this.g == 1 && (bArr != null || cArr != null)) {
                            ra.a = c;
                        }
                        a(false, k, c);
                        return;
                    } catch (NumberFormatException e) {
                        re.a(e, this.i.h());
                        return;
                    } catch (Throwable th) {
                        la.c("Exception in EditorListener", th);
                        return;
                    }
                }
                return;
            }
            String c3 = re.c(this.i.b());
            rd a4 = ra.a(c3, false);
            int i12 = a4 != null ? a4.b : 0;
            if (a4 != null) {
                c3 = a4.a;
            }
            qx l = this.i.l();
            l.a(c3);
            l.m(i12);
            boolean k2 = this.i.k();
            if (k2 || this.f) {
                MainService.instance.an.a(l);
            }
            Tools.a((DialogInterface) this.d);
            a(true, k2, c3);
            MainService.instance.L();
        } catch (NumberFormatException e2) {
            re.a(e2, this.i.h());
        } catch (Throwable th2) {
            la.c("Exception in EditorListener", th2);
        }
    }

    private void a(boolean z, boolean z2, String str) {
        qm qmVar;
        String str2;
        if (z) {
            int r = MainService.instance.r();
            if (r == 1 && MainService.instance.aj == 1) {
                this.g = 1;
            } else if (r == 2 && MainService.instance.an.getCount() == 1) {
                this.g = 2;
            } else {
                return;
            }
        }
        if ((this.g == 1 || this.g == 2) && (qmVar = MainService.instance.h) != null) {
            qx l = this.i.l();
            if (this.g == 2 || z2) {
                qmVar.write("\nrevert = ");
                if (this.g == 1) {
                    ek.a(qmVar, true);
                } else {
                    qmVar.write("gg.getListItems()\n");
                }
                qmVar.write("local t = ");
                if (this.g == 1) {
                    ek.a(qmVar, true);
                } else {
                    qmVar.write("gg.getListItems()\n");
                }
                qmVar.write("for i, v in ipairs(t) do\n");
                qmVar.write("\tif v.flags == ");
                Script.Consts.a(qmVar, qmVar.a.b, l.d);
                qmVar.write(" then\n");
                qmVar.write("\t\tv.value = ");
                if ((l.d & 1073741824) == 1073741824) {
                    l.d &= -1073741825;
                    qmVar.write("v.value + ");
                }
                Script.Consts.b(qmVar, str);
                qmVar.write("\n");
                if (this.g == 2 || l.f) {
                    qmVar.write("\t\tv.freeze = ");
                    qmVar.write(Boolean.toString(l.f));
                    qmVar.write("\n");
                    if (this.g == 2 || l.g != 0) {
                        switch (l.g) {
                            case 0:
                                str2 = "gg.FREEZE_NORMAL";
                                break;
                            case 1:
                                str2 = "gg.FREEZE_MAY_INCREASE";
                                break;
                            case 2:
                                str2 = "gg.FREEZE_MAY_DECREASE";
                                break;
                            case 3:
                                str2 = "gg.FREEZE_IN_RANGE";
                                break;
                            default:
                                str2 = Integer.toString(l.g);
                                break;
                        }
                        qmVar.write("\t\tv.freezeType = ");
                        qmVar.write(str2);
                        qmVar.write("\n");
                        if (l.g == 3) {
                            qmVar.write("\t\tv.freezeFrom = ");
                            Script.Consts.b(qmVar, l.a(true));
                            qmVar.write("\n");
                            qmVar.write("\t\tv.freezeTo = ");
                            Script.Consts.b(qmVar, l.a(false));
                            qmVar.write("\n");
                        }
                    }
                }
                qmVar.write("\tend\n");
                qmVar.write("end\n");
                qmVar.write("gg.addListItems(t)\n");
                qmVar.write("t = nil\n\n");
                return;
            }
            qmVar.write("revert = ");
            ek.a(qmVar, true);
            if ((l.d & 1073741824) == 1073741824) {
                l.d &= -1073741825;
                qmVar.write("local t = ");
                ek.a(qmVar, true);
                qmVar.write("for i, v in ipairs(t) do\n");
                qmVar.write("\tif v.flags == ");
                Script.Consts.a(qmVar, qmVar.a.b, l.d);
                qmVar.write(" then\n");
                qmVar.write("\t\tv.value = ");
                qmVar.write("v.value + ");
                Script.Consts.b(qmVar, str);
                qmVar.write("\n");
                qmVar.write("\tend\n");
                qmVar.write("end\n");
                qmVar.write("gg.setValues(t)\n");
                qmVar.write("t = nil\n\n");
                return;
            }
            qmVar.write("gg.editAll(");
            Script.Consts.b(qmVar, str);
            qmVar.write(", ");
            Script.Consts.a(qmVar, qmVar.a.b, l.d);
            qmVar.write(")\n");
        }
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView adapterView, View view, int i, long j) {
        d dVar;
        Object itemAtPosition = adapterView.getItemAtPosition(i);
        if (itemAtPosition instanceof iq) {
            MainService.instance.a(Long.valueOf(((iq) itemAtPosition).b()), ((iq) itemAtPosition).a(), Tools.c((int) R.string.from_boundary));
            return;
        }
        if (!(itemAtPosition instanceof d)) {
            dVar = null;
        } else {
            dVar = (d) itemAtPosition;
        }
        if (dVar != null) {
            if (adapterView.getId() == R.id.mem_listview && ((Config.B & 1024) == 0 || Integer.bitCount(dVar.d) != 1)) {
                new tu(d.a(127, dVar.b), "0", qk.a((int) R.string.type_change_request), new hn(this, dVar));
            } else {
                a(dVar);
            }
        }
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        try {
            this.i.f();
        } catch (Throwable th) {
            la.a(th);
        }
    }
}
