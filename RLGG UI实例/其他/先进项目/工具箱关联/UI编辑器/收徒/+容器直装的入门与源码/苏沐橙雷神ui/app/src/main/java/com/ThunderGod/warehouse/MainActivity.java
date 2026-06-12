package com.ThunderGod.warehouse;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.PopupWindow;
import com.ThunderGod.warehouse.UI.*;
import android.content.Context;
public class MainActivity extends Activity {
    public static MainActivity activity;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        UIq.ceshikaiq(MainActivity.this);
        setContentView(R.layout.activity_main);
		TGmixed.hideStatusBar(this);
        activity=this;                
		}  
    
}



 
