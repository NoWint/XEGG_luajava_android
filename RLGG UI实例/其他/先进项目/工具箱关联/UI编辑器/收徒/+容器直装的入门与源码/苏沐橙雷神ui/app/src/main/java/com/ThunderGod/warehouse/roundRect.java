package com.ThunderGod.warehouse;
import android.graphics.drawable.GradientDrawable;
import android.graphics.Color;
import android.view.OrientationListener;
import android.graphics.drawable.GradientDrawable.Orientation;
import java.sql.Array;
import android.graphics.drawable.Drawable;

public class roundRect {

	//算法来自于Answer
	public static GradientDrawable roundBG(Object hex,Object round, String f, Object s) {
		if (isArray(hex)) {
			String[] hex2=(String[])hex;
			return  roundRect(new int[]{Color.parseColor(hex2[0]),Color.parseColor(hex2[1])},round,f,0);
		} else {
			return  roundRect(Color.parseColor((String)(hex)), round, f, s);
		}
	}
    public static GradientDrawable roundBGS(Object hex, Object round, String f, Object s) {
		return roundRect(hex,round,f,s);
		}
    public static GradientDrawable roundRect(Object arr, Object arr2, String f, Object s) {

		int[] arrs=null;
		float[] arrs2=null;
		GradientDrawable.Orientation jb = null;
		int type = 0;
		GradientDrawable background =new GradientDrawable();
		if (!isArray(arr)) {
			arrs = new int[]{arr,arr,arr};
			background.setColors(arrs);
		} else {
		    background.setColors((int[])(arr));
		}
		if (!isArray(arr2)) {
			arrs2 = new float[]{Float.valueOf(arr2 + ""),Float.valueOf(arr2 + ""),Float.valueOf(arr2 + ""),Float.valueOf(arr2 + ""),Float.valueOf(arr2 + ""),Float.valueOf(arr2 + ""),Float.valueOf(arr2 + ""),Float.valueOf(arr2 + "")};
			background.setCornerRadii(arrs2);
		} else {
			int[] arr2s=(int[])(arr2);
			arrs2 = new float[]{Float.valueOf(arr2s[0] + ""),Float.valueOf(arr2s[0] + ""),Float.valueOf(arr2s[1] + ""),Float.valueOf(arr2s[1] + ""),Float.valueOf(arr2s[2] + ""),Float.valueOf(arr2s[2] + ""),Float.valueOf(arr2s[3] + ""),Float.valueOf(arr2s[3] + "")};
			background.setCornerRadii(arrs2);
		}
		if (arr2 == null) {
			float[] arr2s=new float[]{10,10,10,10,10,10,10,10};
            background.setCornerRadii(arr2s);     
		}
		if (f == "TB" || f == null) {
			jb = GradientDrawable.Orientation.TOP_BOTTOM;//左右
		} else if (f == "LR") {
			jb = GradientDrawable.Orientation.LEFT_RIGHT;//右上
		} else if (f == "RT") {
			jb = GradientDrawable.Orientation.BL_TR;//右下
		} else if (f == "RB") {
			jb = GradientDrawable.Orientation.TL_BR;
		}
		if (s == 0 || s == null) {
			type = GradientDrawable.LINEAR_GRADIENT;
		} else if (s == 1) {
			type = GradientDrawable.RADIAL_GRADIENT;
		} else if (s == 2) {
			type = GradientDrawable.SWEEP_GRADIENT;
		}
		background.setShape(GradientDrawable.RECTANGLE);
		background.setGradientType(type);
		background.setOrientation(jb);
		return background;}


	public static int hexColor(String c) {
		return android.graphics.Color.parseColor(c);
	};  

	public static boolean isArray(Object obj) {
		if (obj == null) {
			return false;
		}
		return obj.getClass().isArray();
	}

}
