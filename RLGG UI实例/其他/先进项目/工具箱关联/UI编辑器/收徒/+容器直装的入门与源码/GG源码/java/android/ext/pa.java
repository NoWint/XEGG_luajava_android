package android.ext;

import android.content.DialogInterface;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.TextView;
import catch_.me_.if_.you_.can_.R;
import java.lang.ref.WeakReference;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class pa extends pj implements DialogInterface.OnClickListener, TextWatcher, CompoundButton.OnCheckedChangeListener {
    boolean a;
    final /* synthetic */ ow b;
    private WeakReference c;
    private WeakReference d;
    private WeakReference g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public pa(ow owVar) {
        super(R.string.filter, R.drawable.ic_filter_white_24dp);
        this.b = owVar;
        this.c = new WeakReference(null);
        this.d = new WeakReference(null);
        this.g = new WeakReference(null);
        this.a = false;
    }

    @Override // android.ext.pj, android.view.View.OnClickListener
    public void onClick(View view) {
        if (view != null && view.getId() == R.id.message) {
            i.a(i.c().setMessage(String.valueOf(qk.a((int) R.string.examples)) + ":\n" + qk.a((int) R.string.memory_filter_examples)).setPositiveButton(qk.a((int) R.string.help), new pb(this)).setNegativeButton(qk.a((int) R.string.cancel), (DialogInterface.OnClickListener) null));
            return;
        }
        View a = android.fix.i.a((int) R.layout.memory_filter, (ViewGroup) null);
        TextView textView = (TextView) a.findViewById(R.id.message);
        Tools.j(textView);
        textView.setOnClickListener(this);
        CheckBox checkBox = (CheckBox) a.findViewById(R.id.external);
        checkBox.setChecked(this.a);
        checkBox.setText(qk.a((int) R.string.keyboard_external));
        checkBox.setOnCheckedChangeListener(this);
        CheckBox checkBox2 = (CheckBox) a.findViewById(R.id.starts);
        checkBox2.setOnCheckedChangeListener(this);
        this.d = new WeakReference(checkBox2);
        CheckBox checkBox3 = (CheckBox) a.findViewById(R.id.ends);
        checkBox3.setOnCheckedChangeListener(this);
        this.g = new WeakReference(checkBox3);
        String str = this.b.a;
        String str2 = str == null ? "" : str;
        pc pcVar = new pc(this);
        EditText editText = (EditText) a.findViewById(R.id.filter);
        editText.setText(str2);
        editText.setDataType(3);
        Tools.a(editText, pcVar);
        editText.addTextChangedListener(this);
        this.c = new WeakReference(editText);
        afterTextChanged(editText.getText());
        ((HexConverter) a.findViewById(R.id.number_converter)).setTag(editText);
        a.setTag(new kt(15));
        i.a(i.c().setView(InternalKeyboard.a(a)).setPositiveButton(R.string.ok, this).setNegativeButton(R.string.cancel, (DialogInterface.OnClickListener) null).setNeutralButton(R.string.clear, this).create(), editText);
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        String str;
        if (i == -1) {
            EditText editText = (EditText) this.c.get();
            if (editText != null) {
                String editable = editText.getText().toString();
                if (editable.length() > 0) {
                    iw.a(editable, this.a ? 2 : 1);
                    str = editable;
                } else {
                    str = editable;
                }
            } else {
                return;
            }
        } else {
            str = "";
        }
        this.b.a = str;
        MainService.instance.t.setText(str.length() > 0 ? String.valueOf(Tools.c((int) R.string.filter)) + ": " + str : qk.a((int) R.string.no_filter));
        this.b.notifyDataSetChanged();
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        EditText editText;
        if (compoundButton != null && (editText = (EditText) this.c.get()) != null) {
            switch (compoundButton.getId()) {
                case R.id.starts /* 2131427395 */:
                    String editable = editText.getText().toString();
                    if (editable.contains("^") != z) {
                        if (z) {
                            editText.getText().replace(0, 0, "^");
                            return;
                        }
                        int indexOf = editable.indexOf("^");
                        editText.getText().replace(indexOf, "^".length() + indexOf, "");
                        return;
                    }
                    return;
                case R.id.ends /* 2131427396 */:
                    String editable2 = editText.getText().toString();
                    if (editable2.contains("$") != z) {
                        if (z) {
                            editText.getText().replace(editable2.length(), editable2.length(), "$");
                            return;
                        }
                        int indexOf2 = editable2.indexOf("$");
                        editText.getText().replace(indexOf2, "$".length() + indexOf2, "");
                        return;
                    }
                    return;
                case R.id.external /* 2131427397 */:
                    this.a = z;
                    View.OnFocusChangeListener onFocusChangeListener = editText.getOnFocusChangeListener();
                    if (onFocusChangeListener != null) {
                        onFocusChangeListener.onFocusChange(editText, true);
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        String editable2 = editable.toString();
        CheckBox checkBox = (CheckBox) this.d.get();
        if (checkBox != null) {
            checkBox.setChecked(editable2.indexOf(94) != -1);
            CheckBox checkBox2 = (CheckBox) this.g.get();
            if (checkBox2 != null) {
                checkBox2.setChecked(editable2.indexOf(36) != -1);
            }
        }
    }
}
