package com.yf.yfcolb.UI;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;

import com.yf.yfcolb.CustomizeView.vLinearLayout;
import com.yf.yfcolb.封装库.Packaging;
import com.yf.yfcolb.工具库.Resource;
import com.yf.yfcolb.配置;

/**
 * @author: 远方哥哥
 * 留下版权谢谢
 * @date: 2024/4/25
 */

public class 右菜单UI extends LinearLayout {

    public  static LinearLayout 右功能1;

    public  static LinearLayout 右功能2;

    public  static LinearLayout 右功能5;
    public 右菜单UI(Context context) {
        super(context);
        init(context);
    }

    public 右菜单UI(Context context, AttributeSet attrs) {
        super(context, attrs);
        init(context);
    }

    public 右菜单UI(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        init(context);
    }

    private void init(Context mContext) {
        LinearLayout 右布局 = Packaging.右视图(Viewpor.下视图);
        LinearLayout 右视图 = Packaging.背景视图(右布局,LinearLayout.VERTICAL, LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.MATCH_PARENT);
        LinearLayout 右菜单 = Packaging.Layout视图(右视图,LinearLayout.VERTICAL);

        右功能1 = Packaging.根视图(右菜单,LinearLayout.HORIZONTAL,LinearLayout.LayoutParams.MATCH_PARENT,LinearLayout.LayoutParams.WRAP_CONTENT);
        右功能1.setOrientation(LinearLayout.VERTICAL);
        右功能1.setVisibility(View.VISIBLE);
        右功能1.setPadding(20, 10, 20, 10);

        Packaging.滑动(右功能1, "延迟发包[毫秒]:",配置.字体颜色,"","",1,100);
        Packaging.小数点滑动(右功能1, "发包完整性:",配置.字体颜色,"", "", 100, 100);

        final vLinearLayout 按钮功能 = Packaging.Button(
                //普通按钮属性配置🛠️
                右功能1,
                "地铁跑酷进程", 11, 0xFFFFFFFF, Resource.typeface2,//按钮文本，文本大小，文本颜色，文本字体
                2,//按钮圆角半径
                0xFF3F51B5,//按钮背景颜色
                0, 0xff000000,//按钮描边大小，描边颜色
                LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT
        );
        按钮功能.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                按钮功能.startAnimation(Packaging.getScaleAnimation());
            }
        });

        final vLinearLayout 按钮一 = Packaging.Button(
                //普通按钮属性配置🛠️
                右功能1,
                "九游服初始化", 11, 0xFFFFFFFF, Resource.typeface2,//按钮文本，文本大小，文本颜色，文本字体
                2,//按钮圆角半径
                0xFF3F51B5,//按钮背景颜色
                0, 0xff000000,//按钮描边大小，描边颜色
                LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT
        );
        按钮一.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                按钮一.startAnimation(Packaging.getScaleAnimation());
            }
        });

        final vLinearLayout 按钮二 = Packaging.Button(
                //普通按钮属性配置🛠️
                右功能1,
                "九游服防闪", 11, 0xFFFFFFFF, Resource.typeface2,//按钮文本，文本大小，文本颜色，文本字体
                2,//按钮圆角半径
                0xFF3F51B5,//按钮背景颜色
                0, 0xff000000,//按钮描边大小，描边颜色
                LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT
        );
        按钮二.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                按钮二.startAnimation(Packaging.getScaleAnimation());
            }
        });

        final vLinearLayout 按钮三 = Packaging.Button(
                //普通按钮属性配置🛠️
                右功能1,
                "加载AC安全™️引擎", 11, 0xFFFFFFFF, Resource.typeface2,//按钮文本，文本大小，文本颜色，文本字体
                2,//按钮圆角半径
                0xFF3F51B5,//按钮背景颜色
                0, 0xff000000,//按钮描边大小，描边颜色
                LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT
        );
        按钮三.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                按钮三.startAnimation(Packaging.getScaleAnimation());
            }
        });

        final vLinearLayout 按钮四 = Packaging.Button(
                //普通按钮属性配置🛠️
                右功能1,
                "退出游戏", 11, 0xFFFFFFFF, Resource.typeface2,//按钮文本，文本大小，文本颜色，文本字体
                2,//按钮圆角半径
                0xFF3F51B5,//按钮背景颜色
                0, 0xff000000,//按钮描边大小，描边颜色
                LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT
        );
        按钮四.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                按钮四.startAnimation(Packaging.getScaleAnimation());
            }
        });
		Packaging.Switch(右功能1, "伪装安全环境",12,配置.字体颜色, new Packaging.SwitchStatusListener() {
				@Override
				public void onSwitchChanged(boolean isOn) {
					if (isOn) {
						// 开关打开时的处理逻辑
					} else {
						// 开关关闭时的处理逻辑
					}
				}
			});
        右功能2 = Packaging.根视图(右菜单,LinearLayout.HORIZONTAL,LinearLayout.LayoutParams.MATCH_PARENT,LinearLayout.LayoutParams.WRAP_CONTENT);
        右功能2.setOrientation(LinearLayout.VERTICAL);
        右功能2.setVisibility(View.GONE);
        右功能2.setPadding(20, 10, 20, 10);

        Packaging.滑动(右功能2, "数值:",配置.字体颜色,"","",1,100);
        Packaging.小数点滑动(右功能2, "数值:",配置.字体颜色,"", "", 1, 100);


    }

}
