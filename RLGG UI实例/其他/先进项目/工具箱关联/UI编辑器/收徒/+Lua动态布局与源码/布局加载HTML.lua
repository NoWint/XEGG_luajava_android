require "import"
import "android.app.*"
import "android.os.*"
import "android.text.method.*"
import "android.text.Html"
import "android.widget.*"
import "android.view.*"
layout={--主布局
  LinearLayout;
  gravity="center";
  orientation="vertical";
  {
    TextView;
    layout_width="wrap_content";
    textSize="18sp";
    text="hello AndroLua+";
    id="t1";
  };
};

activity.setTitle('AndroLua+')
activity.setTheme(android.R.style.Theme_DeviceDefault_Light)--设置md主题

activity.setContentView(loadlayout(layout))


nr1=[[<a href='http://www.baidu.com' target="_blank" >百度一下</a> ]]
t1.setText(Html.fromHtml(nr1))
t1.setMovementMethod(LinkMovementMethod.getInstance())