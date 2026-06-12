package com.yf.yfcolb.UI;

import android.content.Context;
import android.util.AttributeSet;

import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;

import com.yf.yfcolb.FloatContentView;
import com.yf.yfcolb.data.ViewTool;
import com.yf.yfcolb.封装库.Packaging;
import com.yf.yfcolb.工具库.TOOL;
import com.yf.yfcolb.配置;

/**
 * @author: 远方哥哥
 * 留下版权谢谢
 * @date: 2024/4/25
 */
public class 菜单功能 extends LinearLayout {

    public 菜单功能(Context context) {
        super(context);
        init(context);
    }

    public 菜单功能(Context context, AttributeSet attrs) {
        super(context, attrs);
        init(context);
    }

    public 菜单功能(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        init(context);
    }

    private void init(Context mContext) {

        // 初始化左边窄布局
        LinearLayout 菜单功能 = Packaging.左视图(Viewpor.layout);

        ImageView imageView = new ImageView(mContext);
        LinearLayout.LayoutParams imageParams = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, ViewTool.dip2px(mContext,70));
        imageParams.setMargins(5,0,5,0);
        imageView.setImageBitmap(TOOL.getImageBitmap(mContext, 配置.用户图片));
        菜单功能.addView(imageView, imageParams);

        imageView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                FloatContentView.initWindownow();
                FloatContentView.updateView();
            }
        });

        // 添加背景视图
        LinearLayout 左视图 = Packaging.背景视图(菜单功能,LinearLayout.VERTICAL, LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.MATCH_PARENT);

        // 添加滑动视图
        LinearLayout 菜单栏 = Packaging.Layout视图(左视图,LinearLayout.VERTICAL);

        final Button 菜单一 = Packaging.Button("AC功能", "CD1.png", 配置.buttonParams);
        菜单栏.addView(菜单一);

        final Button 菜单二 = Packaging.Button("AC绕过", "CD2.png", 配置.buttonParams);
        菜单栏.addView(菜单二);

        final Button 菜单三 = Packaging.Button("AC竞赛", "CD3.png", 配置.buttonParams);
        菜单栏.addView(菜单三);

        final Button 菜单四 = Packaging.Button("AC杂类", "CD4.png", 配置.buttonParams);
        菜单栏.addView(菜单四);

        final Button 菜单五 = Packaging.Button("AC设置", "CD5.png", 配置.buttonParams);
        菜单栏.addView(菜单五);


        final Button[] buttons = {菜单一, 菜单二, 菜单三, 菜单四, 菜单五};

        for (int i = 0; i < buttons.length; i++) {
            final int index = i;
            buttons[i].setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    Packaging.setButtonEffect(buttons[index]);
                    buttons[index].setBackground(配置.truebuttonParams);
                    Packaging.changeOtherButtonsBackground(buttons[index], buttons);

                    if (index == 0) {
                        // 点击了"菜单一"
                        左菜单UI.左功能1.setVisibility(View.VISIBLE);
                        右菜单UI.右功能1.setVisibility(View.VISIBLE);
                        左菜单UI.左功能2.setVisibility(View.GONE);
                        右菜单UI.右功能2.setVisibility(View.GONE);

                        左菜单UI.左功能5.setVisibility(View.GONE);
                    } else if (index == 1) {
                        // 点击了"菜单二"
                        左菜单UI.左功能1.setVisibility(View.GONE);
                        右菜单UI.右功能1.setVisibility(View.GONE);
                        左菜单UI.左功能2.setVisibility(View.GONE);
                        右菜单UI.右功能2.setVisibility(View.GONE);

                        左菜单UI.左功能5.setVisibility(View.GONE);
                    } else if (index == 2) {
                        // 点击了"菜单三"
                        左菜单UI.左功能1.setVisibility(View.GONE);
                        右菜单UI.右功能1.setVisibility(View.GONE);
                        左菜单UI.左功能2.setVisibility(View.GONE);
                        右菜单UI.右功能2.setVisibility(View.GONE);

                        左菜单UI.左功能5.setVisibility(View.GONE);
                    } else if (index == 3) {
                        // 点击了"菜单四"
                        左菜单UI.左功能1.setVisibility(View.GONE);
                        右菜单UI.右功能1.setVisibility(View.GONE);
                        左菜单UI.左功能2.setVisibility(View.GONE);
                        右菜单UI.右功能2.setVisibility(View.GONE);

                        左菜单UI.左功能5.setVisibility(View.GONE);
                    } else if (index == 4) {
                        // 点击了"菜单五"
                        左菜单UI.左功能1.setVisibility(View.GONE);
                        右菜单UI.右功能1.setVisibility(View.GONE);
                        左菜单UI.左功能2.setVisibility(View.GONE);
                        右菜单UI.右功能2.setVisibility(View.GONE);

                        左菜单UI.左功能5.setVisibility(View.VISIBLE);
                    }
                }
            });
        }
    }

}
