package com.yf.yfcolb.UI;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;

import android.widget.LinearLayout;

import com.yf.yfcolb.FileOperation;
import com.yf.yfcolb.封装库.Packaging;
import com.yf.yfcolb.配置;

/**
 * @author: 远方哥哥
 * 留下版权谢谢
 * @date: 2024/4/25
 */
public class 左菜单UI extends LinearLayout {

    public  static LinearLayout 左功能1;

    public  static LinearLayout 左功能2;
    
    public  static LinearLayout 左功能3;

    public  static LinearLayout 左功能5;

    public 左菜单UI(Context context) {
        super(context);
        init(context);
    }

    public 左菜单UI(Context context, AttributeSet attrs) {
        super(context, attrs);
        init(context);
    }

    public 左菜单UI(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        init(context);
    }

    private void init(final Context mContext) {

        LinearLayout 左布局 = Packaging.中视图(Viewpor.下视图);
        LinearLayout 左视图 = Packaging.背景视图(左布局,LinearLayout.VERTICAL, LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.MATCH_PARENT);
        LinearLayout 左菜单 = Packaging.Layout视图(左视图,LinearLayout.VERTICAL);

        左功能1 = Packaging.根视图(左菜单,LinearLayout.HORIZONTAL,LinearLayout.LayoutParams.MATCH_PARENT,LinearLayout.LayoutParams.WRAP_CONTENT);
        左功能1.setOrientation(LinearLayout.VERTICAL);
        左功能1.setVisibility(View.VISIBLE);
        左功能1.setPadding(20, 10, 20, 10);

        Packaging.Switch(左功能1, "自动环境",12,配置.字体颜色, new Packaging.SwitchStatusListener() {
            @Override
            public void onSwitchChanged(boolean isOn) {
                if (isOn) {

                } else {

                }
            }
        });

        Packaging.Switch(左功能1, "过Ace",12,配置.字体颜色, new Packaging.SwitchStatusListener() {
            @Override
            public void onSwitchChanged(boolean isOn) {
                if (isOn) {
                    // 开关打开时的处理逻辑
                } else {
                    // 开关关闭时的处理逻辑
                }
            }
        });

        Packaging.Switch(左功能1, "防追封",12,配置.字体颜色, new Packaging.SwitchStatusListener() {
            @Override
            public void onSwitchChanged(boolean isOn) {
                if (isOn) {
                    // 开关打开时的处理逻辑
                } else {
                    // 开关关闭时的处理逻辑
                }
            }
        });

        Packaging.Switch(左功能1, "绕过封号弹窗",12,配置.字体颜色, new Packaging.SwitchStatusListener() {
            @Override
            public void onSwitchChanged(boolean isOn) {
                if (isOn) {
                    // 开关打开时的处理逻辑
                } else {
                    // 开关关闭时的处理逻辑
                }
            }
        });

        Packaging.Switch(左功能1, "启动地铁跑酷",12,配置.字体颜色, new Packaging.SwitchStatusListener() {
            @Override
            public void onSwitchChanged(boolean isOn) {
                if (isOn) {
                    // 开关打开时的处理逻辑
                } else {
                    // 开关关闭时的处理逻辑
                }
            }
        });

        Packaging.Switch(左功能1, "Ac登录防",12,配置.字体颜色, new Packaging.SwitchStatusListener() {
            @Override
            public void onSwitchChanged(boolean isOn) {
                if (isOn) {
                    // 开关打开时的处理逻辑
                } else {
                    // 开关关闭时的处理逻辑
                }
            }
        });

        Packaging.Switch(左功能1, "千万金币",12,配置.字体颜色, new Packaging.SwitchStatusListener() {
            @Override
            public void onSwitchChanged(boolean isOn) {
                if (isOn) {
                    // 开关打开时的处理逻辑
                } else {
                    // 开关关闭时的处理逻辑
                }
            }
        });

Packaging.Switch(左功能1, "十万钥匙",12,配置.字体颜色, new Packaging.SwitchStatusListener() {
            @Override
            public void onSwitchChanged(boolean isOn) {
                if (isOn) {
                    // 开关打开时的处理逻辑
                } else {
                    // 开关关闭时的处理逻辑
                }
            }
        });
        Packaging.Switch(左功能1, "十抽宝物",12,配置.字体颜色, new Packaging.SwitchStatusListener() {
            @Override
            public void onSwitchChanged(boolean isOn) {
                if (isOn) {
                    // 开关打开时的处理逻辑
                } else {
                    // 开关关闭时的处理逻辑
                }
            }
        });
        Packaging.Switch(左功能1, "荣耀之路",12,配置.字体颜色, new Packaging.SwitchStatusListener() {
            @Override
            public void onSwitchChanged(boolean isOn) {
                if (isOn) {
                    // 开关打开时的处理逻辑
                } else {
                    // 开关关闭时的处理逻辑
                }
            }
        });
        Packaging.Switch(左功能1, "双倍金币",12,配置.字体颜色, new Packaging.SwitchStatusListener() {
            @Override
            public void onSwitchChanged(boolean isOn) {
                if (isOn) {
                    // 开关打开时的处理逻辑
                } else {
                    // 开关关闭时的处理逻辑
                }
            }
        });
        Packaging.Switch(左功能1, "自动聚能",12,配置.字体颜色, new Packaging.SwitchStatusListener() {
            @Override
            public void onSwitchChanged(boolean isOn) {
                if (isOn) {
                    // 开关打开时的处理逻辑
                } else {
                    // 开关关闭时的处理逻辑
                }
            }
        });
        Packaging.Switch(左功能1, "无限聚能",12,配置.字体颜色, new Packaging.SwitchStatusListener() {
            @Override
            public void onSwitchChanged(boolean isOn) {
                if (isOn) {
                    // 开关打开时的处理逻辑
                } else {
                    // 开关关闭时的处理逻辑
                }
            }
        });
		Packaging.Switch(左功能1, "人物高跳",12,配置.字体颜色, new Packaging.SwitchStatusListener() {
				@Override
				public void onSwitchChanged(boolean isOn) {
					if (isOn) {
						// 开关打开时的处理逻辑
					} else {
						// 开关关闭时的处理逻辑
					}
				}
			});
        Packaging.Switch(左功能1, "幽灵悬浮",12,配置.字体颜色, new Packaging.SwitchStatusListener() {
				@Override
				public void onSwitchChanged(boolean isOn) {
					if (isOn) {
						// 开关打开时的处理逻辑
					} else {
						// 开关关闭时的处理逻辑
					}
				}
			});
		Packaging.Switch(左功能1, "量子移动[无视墙体]",12,配置.字体颜色, new Packaging.SwitchStatusListener() {
				@Override
				public void onSwitchChanged(boolean isOn) {
					if (isOn) {
						// 开关打开时的处理逻辑
					} else {
						// 开关关闭时的处理逻辑
					}
				}
			});
		Packaging.Switch(左功能1, "上帝视角",12,配置.字体颜色, new Packaging.SwitchStatusListener() {
				@Override
				public void onSwitchChanged(boolean isOn) {
					if (isOn) {
						// 开关打开时的处理逻辑
					} else {
						// 开关关闭时的处理逻辑
					}
				}
			});
        左功能2 = Packaging.根视图(左菜单,LinearLayout.HORIZONTAL,LinearLayout.LayoutParams.MATCH_PARENT,LinearLayout.LayoutParams.WRAP_CONTENT);
        左功能2.setOrientation(LinearLayout.VERTICAL);
        左功能2.setVisibility(View.GONE);
        左功能2.setPadding(20, 10, 20, 10);

        Packaging.Switch(左功能2, "开关文本",12,配置.字体颜色, new Packaging.SwitchStatusListener() {
            @Override
            public void onSwitchChanged(boolean isOn) {
                if (isOn) {

                } else {

                }
            }
        });

        左功能5 = Packaging.根视图(左菜单,LinearLayout.HORIZONTAL,LinearLayout.LayoutParams.MATCH_PARENT,LinearLayout.LayoutParams.WRAP_CONTENT);
        左功能5.setOrientation(LinearLayout.VERTICAL);
        左功能5.setVisibility(View.GONE);
        左功能5.setPadding(20, 10, 20, 10);

        Packaging.Switch(左功能5, "音效开关",12,配置.字体颜色, new Packaging.SwitchStatusListener() {
            @Override
            public void onSwitchChanged(boolean isOn) {
                if (isOn) {
                    FileOperation.写入文件(mContext.getFilesDir() + "/Audio/开关","1");
                } else {
                    FileOperation.写入文件(mContext.getFilesDir() + "/Audio/开关","0");
                }
            }
        });
        Packaging.Switch(左功能5, "byYunzhu",12,配置.字体颜色, new Packaging.SwitchStatusListener() {
            @Override
            public void onSwitchChanged(boolean isOn) {
                if (isOn) {
                    // 开关打开时的处理逻辑
                } else {
                    // 开关关闭时的处理逻辑
                }
            }
        });
        左功能3 = Packaging.根视图(左菜单,LinearLayout.HORIZONTAL,LinearLayout.LayoutParams.MATCH_PARENT,LinearLayout.LayoutParams.WRAP_CONTENT);
        左功能3.setOrientation(LinearLayout.VERTICAL);
        左功能3.setVisibility(View.GONE);
        左功能3.setPadding(20, 10, 20, 10);

        Packaging.Switch(左功能3, "音效开关",12,配置.字体颜色, new Packaging.SwitchStatusListener() {
            @Override
            public void onSwitchChanged(boolean isOn) {
                if (isOn) {
                    FileOperation.写入文件(mContext.getFilesDir() + "/Audio/开关","1");
                } else {
                    FileOperation.写入文件(mContext.getFilesDir() + "/Audio/开关","0");
                }
            }
        });

    }
}
