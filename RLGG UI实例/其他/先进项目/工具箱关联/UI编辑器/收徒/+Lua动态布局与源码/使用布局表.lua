使用布局表须导入android.view与android.widget包。
require "import"
import "android.widget.*"
import "android.view.*"
布局表格式
layout={
  控件类名称,
  id=控件名称,
  属性=值,
  {
    子控件类名称,
    id=控件名称,
    属性=值,
  }
}

例如：
layout={
  LinearLayout,--视图类名称
  id="linear",--视图ID，可以在loadlayout后直接使用
  orientation="vertical",--属性与值
  {
    TextView,--子视图类名称
    text="hello AndroLua+",--属性与值
    layout_width="fill"--布局属性
  },
}
使用loadlayout函数解析布局表生成布局。
activity.setContentView(loadlayout(layout))
也可以简化为：
activity.setContentView(layout)
如果使用单独文件布局(比如有个layout.aly布局文件)也可以简写为：
activity.setContentView("layout")
此时不用导入布局文件。

布局表支持大全部安卓控件属性，
与安卓XML布局文件的不同点：
id表示在Lua中变量的名称，而不是安卓的可以findbyid的数字id。
ImageView的src属性是当前目录图片名称或绝对文件路径图片或网络上的图片，
layout_width与layout_height的值支持fill与wrap简写，
onClick值为lua函数或java onClick接口或他们的全局变量名称，
背景background支持背景图片，背景色与LuaDrawable自绘制背景，背景图片参数为是当前目录图片名称或绝对文件路径图片或网络上的图片，颜色同backgroundColor，自绘制背景参数为绘制函数或绘制函数的全局变量名称，
控件背景色使用backgroundColor设置，值为"十六进制颜色值"。
尺寸单位支持 px，dp，sp，in，mm，%w，%h。
其他参考loadlayout与loadbitmap