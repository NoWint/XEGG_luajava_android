函数有两个用途
1.完成指定功能，函数作为调用语句使用
2.计算并返回值，函数作为赋值语句的表达式使用


实例1:
function 读取文件(路径)
  文件内容=io.open(路径):read("*a")
  return 文件内容--return用来返回值
end



实例2:
require "import"
import "android.widget.EditText"
import "android.widget.LinearLayout"
function 编辑框()
  return EditText(activity)
end
layout={
  LinearLayout;
  id="父布局",
  {编辑框,
    id="edit",
    text="文本",
  },
};
activity.setContentView(loadlayout(layout))
--把这段代码放到调试里面去测试