package android.ext;

import android.content.Context;
import android.fix.LinearLayout;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import catch_.me_.if_.you_.can_.R;
import java.util.Locale;

/* compiled from: src */
/* loaded from: classes.dex */
public class MemoryRange extends LinearLayout implements View.OnClickListener {
    private Runnable a;
    private int b;
    private Button c;
    private View d;
    private EditText e;
    private EditText f;
    private View g;
    private EditText h;
    private CheckBox i;
    private CheckBox j;
    private EditText k;

    public MemoryRange(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.a = null;
        this.b = 0;
        this.c = null;
    }

    public MemoryRange(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = null;
        this.b = 0;
        this.c = null;
    }

    public MemoryRange(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = null;
        this.b = 0;
        this.c = null;
    }

    public MemoryRange(Context context) {
        super(context);
        this.a = null;
        this.b = 0;
        this.c = null;
    }

    public void a() {
        if (this.c == null) {
            android.fix.i.a((int) R.layout.memory_range, this);
            this.c = (Button) findViewById(R.id.range);
            this.d = findViewById(R.id.range_row);
            this.e = (EditText) findViewById(R.id.memory_from);
            this.e.setDataType(1);
            findViewById(R.id.region_from).setTag(this.e);
            this.f = (EditText) findViewById(R.id.memory_to);
            this.f.setDataType(1);
            findViewById(R.id.region_to).setTag(this.f);
            this.e.setText(d.b(Config.d, 4));
            this.f.setText(d.b(Config.e, 4));
            this.g = findViewById(R.id.nearby_row);
            this.h = (EditText) findViewById(R.id.address);
            this.h.setDataType(1);
            this.i = (CheckBox) findViewById(R.id.before);
            this.j = (CheckBox) findViewById(R.id.after);
            this.k = (EditText) findViewById(R.id.distance);
            this.k.setDataType(1);
            this.k.setText(Long.toHexString(Config.f).toUpperCase(Locale.US));
            this.c.setOnClickListener(this);
            InternalKeyboard.a(this.e, 1);
            b();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        setType((this.b + 1) % 3);
    }

    private void b() {
        int i;
        int i2 = this.b;
        Button button = this.c;
        if (i2 == 1) {
            i = R.string.only_memory;
        } else {
            i = i2 == 2 ? R.string.nearby : R.string.all_memory;
        }
        button.setText(qk.a(i));
        this.d.setVisibility(i2 == 1 ? 0 : 8);
        this.g.setVisibility(i2 != 2 ? 8 : 0);
    }

    public void setTypeChangeListener(Runnable runnable) {
        this.a = runnable;
    }

    public int getType() {
        return this.b;
    }

    public void setType(int i) {
        int i2 = this.b;
        this.b = i;
        b();
        Runnable runnable = this.a;
        if (i2 == i || runnable == null) {
            return;
        }
        runnable.run();
    }

    public void setAddress(String str) {
        this.h.setText(str);
    }

    public long a(int i) {
        if (this.b == 1) {
            long a = a(i, this.e, "0", this.f, "-1");
            if (i == 0) {
                Config.d = a;
            } else {
                Config.e = a;
            }
            Config.c();
            return a;
        } else if (this.b != 2) {
            return i == 0 ? 0 : -1;
        } else {
            String c = re.c(this.h.getText().toString().trim());
            try {
                long a2 = ps.a(c, 16);
                iw.a(c, 1);
                if ((i == 0 ? this.i : this.j).isChecked()) {
                    String c2 = re.c(this.k.getText().toString().trim());
                    try {
                        long a3 = ps.a(c2, 16);
                        iw.a(c2, 1);
                        Config.f = a3;
                        Config.c();
                        if (i == 0) {
                            a3 = -a3;
                        }
                        return a3 + a2;
                    } catch (NumberFormatException e) {
                        this.k.requestFocus();
                        throw e;
                    }
                }
                return a2;
            } catch (NumberFormatException e2) {
                this.h.requestFocus();
                throw e2;
            }
        }
    }

    public static long a(int i, EditText editText, String str, EditText editText2, String str2) {
        if (i == 0) {
            editText2 = editText;
        }
        String c = re.c(editText2.getText().toString().trim());
        if (c.length() != 0) {
            str = c;
        } else if (i != 0) {
            str = str2;
        }
        String c2 = re.c(editText.getText().toString().trim());
        boolean contains = c2.contains("?");
        if (contains) {
            str = c2.replace("?", i == 0 ? "0" : "F");
            if (i != 0) {
                editText2.setText(str);
            }
        }
        try {
            long a = ps.a(str, 16);
            if (i == 0 && contains) {
                iw.a(c2, 1);
            }
            iw.a(str, 1);
            return a;
        } catch (NumberFormatException e) {
            editText2.requestFocus();
            throw e;
        }
    }
}
