package android.ext;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: src */
/* loaded from: classes.dex */
public class ko implements Parcelable {
    public static final Parcelable.Creator CREATOR = new kp();
    boolean a;
    int b;
    String c;
    String d;
    String e;
    boolean f;
    int g;
    String h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ko() {
        this.a = false;
        this.b = 0;
        this.c = null;
        this.d = null;
        this.e = null;
        this.f = false;
        this.g = 0;
        this.h = "";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ko(Parcel parcel) {
        this.a = false;
        this.b = 0;
        this.c = null;
        this.d = null;
        this.e = null;
        this.f = false;
        this.g = 0;
        this.h = "";
        this.a = parcel.readByte() != 0;
        this.b = parcel.readInt();
        this.c = parcel.readString();
        this.d = parcel.readString();
        this.e = parcel.readString();
        this.f = parcel.readByte() != 0;
        this.g = parcel.readInt();
        this.h = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeByte((byte) (this.a ? 1 : 0));
        parcel.writeInt(this.b);
        parcel.writeString(this.c);
        parcel.writeString(this.d);
        parcel.writeString(this.e);
        parcel.writeByte((byte) (this.f ? 1 : 0));
        parcel.writeInt(this.g);
        parcel.writeString(this.h);
    }
}
