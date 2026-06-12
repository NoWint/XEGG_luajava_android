package android.ext;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.ext.Script;
import android.fix.TextView;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import catch_.me_.if_.you_.can_.R;
import java.util.ArrayList;
import java.util.Arrays;

/* compiled from: src */
/* loaded from: classes.dex */
class c implements DialogInterface.OnClickListener, DialogInterface.OnDismissListener, DialogInterface.OnShowListener, TextWatcher, View.OnClickListener, CompoundButton.OnCheckedChangeListener {
    private static String a = "0";
    private static boolean b = true;
    private final String c;
    private final int[] d = new int[3];
    private final int[] e = new int[4];
    private AlertDialog f;
    private EditText g;
    private CheckBox h;
    private CheckBox i;
    private TextView j;
    private SystemSpinnerType k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(String str) {
        this.c = str;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        a();
        if (i == -1) {
            onClick(((AlertDialog) dialogInterface).getButton(i));
        }
    }

    @Override // android.content.DialogInterface.OnShowListener
    public void onShow(DialogInterface dialogInterface) {
        Tools.a(dialogInterface, -1, (Object) null, this, this.g);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        char c;
        Object C = MainService.instance.C();
        if (Tools.a(C) == 0) {
            Tools.a((int) R.string.nothing_selected);
        } else if (C instanceof android.c.e) {
            if (view == null || (view.getTag() instanceof pj)) {
                View a2 = android.fix.i.a((int) R.layout.service_address_editor, (ViewGroup) null);
                EditText editText = (EditText) a2.findViewById(R.id.mem_edit_addr);
                this.g = editText;
                this.h = (CheckBox) a2.findViewById(R.id.make_copy);
                CheckBox checkBox = (CheckBox) a2.findViewById(R.id.hex);
                this.i = checkBox;
                checkBox.setChecked(b);
                checkBox.setOnCheckedChangeListener(this);
                this.j = (TextView) a2.findViewById(R.id.align_warn);
                SystemSpinnerType systemSpinnerType = (SystemSpinnerType) a2.findViewById(R.id.type);
                this.k = systemSpinnerType;
                systemSpinnerType.setData(d.a(127, true));
                systemSpinnerType.setSelected(127);
                systemSpinnerType.setOnItemSelectedListener(this);
                android.c.e eVar = (android.c.e) C;
                int b2 = eVar.b();
                int[] iArr = this.d;
                Arrays.fill(iArr, 0);
                int[] iArr2 = this.e;
                Arrays.fill(iArr2, 0);
                for (int i = 0; i < b2; i++) {
                    if (eVar.d(i)) {
                        qx qxVar = (qx) eVar.c(i);
                        if (qxVar instanceof qx) {
                            int e = qxVar.e();
                            if (e == 1) {
                                c = 0;
                            } else {
                                c = e == 2 ? (char) 1 : (char) 2;
                            }
                            iArr[c] = iArr[c] + 1;
                            int i2 = (int) (qxVar.b & 3);
                            iArr2[i2] = iArr2[i2] + 1;
                        }
                    }
                }
                editText.setDataType(1);
                editText.addTextChangedListener(this);
                if (this.c != null) {
                    ((LinearLayout) a2.findViewById(R.id.group)).setOrientation(1);
                    ((TextView) a2.findViewById(R.id.name)).setText(String.valueOf(Tools.c((int) R.string.new_address)) + ":");
                    checkBox.setVisibility(8);
                } else {
                    editText.setText(a);
                }
                a();
                AlertDialog create = i.c().setView(InternalKeyboard.a(a2)).setPositiveButton(qk.a((int) R.string.ok), this).setNegativeButton(qk.a((int) R.string.cancel), (DialogInterface.OnClickListener) null).create();
                this.f = create;
                i.a(create, (DialogInterface.OnDismissListener) this);
                i.a(create, (DialogInterface.OnShowListener) this);
                i.a(create, editText);
                return;
            }
            try {
                if (this.g != null) {
                    long a3 = a(true);
                    ArrayList<qx> arrayList = new ArrayList();
                    android.c.e eVar2 = (android.c.e) C;
                    int b3 = eVar2.b();
                    for (int i3 = 0; i3 < b3; i3++) {
                        if (eVar2.d(i3)) {
                            qx qxVar2 = (qx) eVar2.c(i3);
                            if (qxVar2 instanceof qx) {
                                arrayList.add(qxVar2.a());
                            }
                        }
                    }
                    MainService.instance.d(0);
                    boolean isChecked = this.h.isChecked();
                    SavedListAdapter savedListAdapter = MainService.instance.an;
                    if (!isChecked) {
                        savedListAdapter.a(arrayList);
                    }
                    int selected = this.k.getSelected();
                    for (qx qxVar3 : arrayList) {
                        qx a4 = qxVar3.a();
                        if (isChecked) {
                            a4.e = String.valueOf(a4.t()) + " #2";
                        }
                        if (selected != 127) {
                            a4.d = selected;
                        }
                        a4.b += a3;
                        if (!a4.q()) {
                            a4.d = d.a(a4.b, true);
                        }
                        savedListAdapter.a(a4, (byte) 1, false);
                    }
                    savedListAdapter.notifyDataSetChanged();
                    savedListAdapter.d();
                    qm qmVar = MainService.instance.h;
                    if (qmVar != null) {
                        qmVar.write("\nlocal copy = ");
                        qmVar.write(isChecked ? "true" : "false");
                        qmVar.write("\n");
                        qmVar.write("local t = gg.getListItems()\n");
                        qmVar.write("if not copy then gg.removeListItems(t) end\n");
                        qmVar.write("for i, v in ipairs(t) do\n");
                        qmVar.write("\tv.address = v.address + ");
                        if (this.c != null || this.i.isChecked()) {
                            Script.Consts.a(qmVar, a3);
                        } else {
                            qmVar.write(Long.toString(a3));
                        }
                        qmVar.write("\n");
                        qmVar.write("\tif copy then v.name = v.name..' #2' end\n");
                        qmVar.write("end\n");
                        qmVar.write("gg.addListItems(t)\n");
                        qmVar.write("t = nil\n");
                        qmVar.write("copy = nil\n\n");
                    }
                }
                Tools.a((DialogInterface) this.f);
            } catch (NumberFormatException e2) {
                re.a(e2, this.g);
            }
        }
    }

    private long a(boolean z) {
        String c = re.c(this.g.getText().toString().trim());
        if (c.length() == 0) {
            c = "0";
        }
        long a2 = ps.a(c, this.c != null || this.i.isChecked() ? 16 : 10);
        long a3 = this.c != null ? a2 - ps.a(this.c, 16) : a2;
        if (z) {
            iw.a(c, 1);
        }
        return a3;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        EditText editText;
        if (this.c == null && (editText = this.g) != null) {
            a = editText.getText().toString().trim();
            b = this.i.isChecked();
        }
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        a();
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        a();
    }

    private void a() {
        if (this.g != null) {
            int selected = this.k.getSelected();
            int i = 1;
            int i2 = 0;
            try {
                long a2 = a(false);
                if (selected == 127) {
                    int[] iArr = this.d;
                    i = 1;
                    for (int i3 = 0; i3 < iArr.length; i3++) {
                        if (iArr[i3] != 0 && (((1 << i3) - 1) & a2) != 0) {
                            i = 1 << i3;
                            i2 += iArr[i3];
                        }
                    }
                } else {
                    int[] iArr2 = this.e;
                    i = d.e(selected);
                    for (int i4 = 0; i4 < iArr2.length; i4++) {
                        if (iArr2[i4] != 0 && ((i4 + a2) & (i - 1)) != 0) {
                            i2 += iArr2[i4];
                        }
                    }
                }
            } catch (Throwable th) {
            }
            this.j.setText(Tools.a(qk.a(selected == 127 ? R.string.align_warn_offset : R.string.align_warn_result), Integer.valueOf(i), Integer.valueOf(i2)));
            this.j.setVisibility(i2 > 0 ? 0 : 4);
        }
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        a();
    }
}
