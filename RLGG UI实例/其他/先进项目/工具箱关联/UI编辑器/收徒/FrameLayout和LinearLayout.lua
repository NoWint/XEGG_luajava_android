by云烛
FrameLayout和LinearLayout是
Android开发中常用的两种布局管理器，
它们在布局方式和应用场景上存在一些区别。
FrameLayout
布局特点：

FrameLayout是最简单的布局容器之一，用于在屏幕上叠加显示多个视图。
它没有为子视图提供特定的定位方式，
所有的子视图默认会被放置在容器的左上角，
并且后一个子视图会覆盖前一个子视图（除非后一个子视图是透明的）。

应用场景：

FrameLayout适合用于需要覆盖显示或者只显示一个子视图的情况，如加载提示框、视频播放器界面等。

使用方法：
在布局文件中定义FrameLayout时，
可以像定义其他布局一样，设置其宽度（layout_width）和高度（layout_height）。
然后，在FrameLayout内部添加子视图，
这些子视图会按照添加的顺序在FrameLayout中显示，
后添加的视图会覆盖前面的视图。



LinearLayout
布局特点：

LinearLayout是一个线性布局容器，用于按照水平或垂直方向排列子视图。
它通过orientation属性来指定排列方向（水平或垂直），
并且可以通过layout_weight属性来分配子视图之间的空白空间。

应用场景：

LinearLayout适用于需要按一定顺序排列子视图的情况，如列表项、表单布局等。

使用方法：
在布局文件中定义LinearLayout时，除了设置宽度和高度外，
还需要通过orientation属性来指定子视图的排列方向。
如果需要分配子视图之间的空白空间，可以使用layout_weight属性。
每个子视图都可以设置layout_weight属性，其值表示该视图在分配额外空间时的权重。
当LinearLayout的宽度或高度设置为match_parent时，
并且子视图的宽度或高度设置为0dp（注意是0dp而不是wrap_content或match_parent），
layout_weight才会生效，此时LinearLayout会根据子视图的权重来分配剩余的空白空间。

总结
FrameLayout和LinearLayout在布局方式和应用场景上存在明显的区别。
FrameLayout适合用于需要覆盖显示或者只显示一个子视图的情况，
而LinearLayout则适用于需要按一定顺序排列子视图的情况。
在使用时，可以根据具体需求选择合适的布局管理器，
并通过设置相应的属性来达到期望的布局效果。