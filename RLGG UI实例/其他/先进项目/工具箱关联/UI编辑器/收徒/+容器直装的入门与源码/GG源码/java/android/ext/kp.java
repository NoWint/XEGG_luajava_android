package android.ext;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: src */
/* loaded from: classes.dex */
class kp implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public ko createFromParcel(Parcel parcel) {
        return new ko(parcel);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public ko[] newArray(int i) {
        return new ko[i];
    }
}
