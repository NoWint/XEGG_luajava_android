--Android中常用的5大布局方式有以下几种：
--线性布局（LinearLayout）：按照垂直或者水平方向布局的组件。
--帧布局（FrameLayout）：组件从屏幕左上方布局组件。
--表格布局（TableLayout）：按照行列方式布局组件。
--相对布局（RelativeLayout）：相对其它组件的布局方式。
--绝对布局（AbsoluteLayout）：按照绝对坐标来布局组件。

1.线性布局(LinearLayout)
线性布局是Android开发中最常见的一种布局方式，它是按照垂直或者水平方向来布局，通过orientation属性可以设置线性布局的方向。属性值有垂直（vertical）和水平（horizontal）两种。
常用的属性：
orientation：可以设置布局的方向
gravity:用来控制组件的对齐方式
layout_weight控制各个控件在布局中的相对大小,layout_weight的属性是一个非负整数值。
线性布局会根据该控件layout_weight值与其所处布局中所有控件layout_weight值之和的比值为该控件分配占用的区域
--[[例如，在水平布局的LinearLayout中有两个Button，这两个Button的layout_weight属性值都为1,那么这两个按钮都会被拉伸到整个屏幕宽度的一半。如果layout_weight指为0，控件会按原大小显示，不会被拉伸.
对于其余layout_weight属性值大于0的控件，系统将会减去layout_weight属性值为0的控件的宽度或者高度,再用剩余的宽度或高度按相应的比例来分配每一个控件显示的宽度或高度]]

2.帧布局(FrameLayout)
帧布局是从屏幕的左上角（0,0）坐标开始布局，多个组件层叠排列，第一个添加的组件放到最底层，最后添加到框架中的视图显示在最上面。上一层的会覆盖下一层的控件。

3.表格布局（TableLayout）
表格布局是一个ViewGroup以表格显示它的子视图（view）元素，即行和列标识一个视图的位置。
表格布局常用的属性如下：
collapseColumns：隐藏指定的列
shrinkColumns：收缩指定的列以适合屏幕，不会挤出屏幕
stretchColumns：尽量把指定的列填充空白部分
layout_column:控件放在指定的列
layout_span:该控件所跨越的列数=

4.相对布局（RelativeLayout）
相对布局是按照组件之间的相对位置来布局，比如在某个组件的左边，右边，上面和下面等。

5.绝对布局(AbsoluteLayout)
采用坐标轴的方式定位组件，左上角是（0，0）点，往右x轴递增，往下Y轴递增,组件定位属性为layout_x 和layout_y来确定坐标。