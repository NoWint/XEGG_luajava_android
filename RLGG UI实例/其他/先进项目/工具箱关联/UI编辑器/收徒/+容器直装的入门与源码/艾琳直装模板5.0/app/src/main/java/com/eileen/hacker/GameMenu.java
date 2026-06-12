package com.eileen.hacker;

//s
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PixelFormat;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.WindowManager;
import android.view.animation.AlphaAnimation;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import java.util.ArrayList;

/* ⚠︎使用此模板前必看以下内容⚠︎ (不看的话 你不会使用别怪我！)

 ➤ ♨艾琳直装模板 (支持64位游戏和32位游戏 暂时不支持x86模拟器)
 ➤ 版本：5.0
 ➤ 作者：艾琳 ©
 ➤ 作者QQ：3353484607 (定制模板联系作者QQ)
 ➤ 作者b站：https://b23.tv/t9DYCRt (有模板视频教程)
 ➤ 手游逆向学习交流QQ群：101640882(以后模板统一在此群更新 有问题也请反馈至此群)

 ➤ 开源模板只提供于学习请勿买卖！
 ➤ 开源模板禁止盗卖，发现者均属于侵权！
 ➤ 此模板为免费开源模板 如果你是买来的那么你被骗了！

 ➤ 模板开发直装教程在MainActivity.java文件中🔥

 ➤ 模板卡密系统文字教程在模板源码中e.java文件内
 ➤ 模板开关功能说明在模板源码中GameMenu.java文件内
 ➤ 只要配置好以上两个文件中的内容就能正常使用了"

 ➤ 请保留以上信息，发现删除以上信息均属于侵权！

 5.0 更新时间2023/10/12 5:50 
 5.0 更新内容(下面只展示大更新内容)：                                
 自动处理了 悬浮布局自适应机型以及文字自适应机型，作者亲测在所有设备显示悬浮窗菜单样式一致不会被挤压或拉伸应该没什么问题了
 重构所有代码 尽量做到了代码最小化且简洁 可读性强 容易管理 适合学习哦ε٩(๑> ₃ <)۶з
 修复了 所有的bug (太多了就不细说了)
 修复了 执行二进制文件无效的问题 (可能鸿蒙系统的设备没有效果哦 鸿蒙架构不了解 暂时无法解决 因为我也没有鸿蒙系统的设备来调试)
 修复了 悬浮球拖动时会误判打开悬浮窗的问题
 优化了 所有可能会引发内存泄露的代码
 优化了 所有可能会引发空指针异常的代码
 优化了 所有可能会堵塞进程的代码
 增加了 悬浮窗口自动缩放布局
 增加了 开发者模式以及开发人员菜单(目前还没写多少功能 处于测试阶段) [📄详细源码在DeveloperLayout.java文件中]
 增加了 网络验证系统 [📄详细源码在e.java文件中]
 增加了 功能分类菜单控件 [📄详细源码在GameMenu.java文件中]
 增加了 艾琳美化弹窗 [📄详细源码在DiaLogs.java文件中]
 增加了 将开关按钮和按钮执行的二进制一体化了，并增加四种开关按钮模式，现在边创建开关按钮就能边设置此按钮开启或关闭后执行的二进制文件了，更加人性化 [📄详细源码在GameMenu.java文件中]
 增加了 jni函数在Java中实现，目前可在Java中进行特征码内存修改(不影响性能，增强拓展性，适合不会自定义修改的小伙伴)
 增加了 悬浮窗右下角长按拖动可动态拉拽调节悬浮窗口宽高 或单击则恢复悬浮窗默认宽高  并保存宽高
 增加了 折叠式悬浮窗可拖动并保存窗口坐标
 增加了 动态悬浮球
 去除了 悬浮球图片颜色变化功能 (因为此功能会导致悬浮球图片只能使用纯色图片 使用其他图片会显示异常 所以去除了此功能)
 去除了 执行二进制时需要自定义arm位数模式 改为了64位游戏和32位游戏通用二进制执行器 现在无需选择arm位数了

 5.0大更新 最大的优化 就是模板目前使用起来更加简单了 更加人性化 拓展性极强

 请保留以上信息，发现删除以上信息均属于侵权！

 注意：不要亻至    (¦3[▓▓]    ＺZz...(¦3ꇤ[▓▓]     (¦3[▓▓]੭ु⁾⁾  

 感谢您仔细看到了这里 您的支持是我们前进的动力!

 感谢大家的支持！(有缘更新)

 */







/*
 * @Author 𝘽𝙮·艾琳 - 手游逆向学习QQ交流群101640882
 * @Date 2023/07/04 01:56
 * @Describe 主悬浮窗布局
 */
public class GameMenu  {

    //————————————————————————————————————————成员变量————————————————————————————————————————
    private Context mContext;// 上下文
    private static GameMenu menu;// 单例模式

    public static boolean isYR = false;// 日夜模式切换标识
    public static boolean isView=false;// 悬浮窗是否添加了布局的标识

    // 悬浮窗口
    public static WindowManager mainWindow;//悬浮窗
    public static WindowManager.LayoutParams wParams;//窗口参数
    private int windowW=WindowManager.LayoutParams.WRAP_CONTENT;//用于保存窗口宽
    private int windowH=WindowManager.LayoutParams.WRAP_CONTENT;//用于保存窗口高

    // 动画
    private AlphaAnimation anim;//渐变动画

    // 信息
    private String titleString="艾琳直装模板";//直装菜单标题 (如果对接了微验那么标题最后会自带当前版本)
    private String subtitleString="作者：艾琳  │  学习群：101640882";//直装菜单副标题

    // {布局层次结构}
    public static FrameLayout main;// 根布局
    private aScrollView mainScroll;// 副根滚动布局
    public static GradientDrawable mainBackground;// 根布局背景
    LinearLayout mainLayout;// 主布局
    private LinearLayout titleLayout;// 主标题布局
    private TextView title;// 主标题文本
    private LinearLayout titleLayout1;// 副标题布局
    private TextView title1;// 副标题文本
    private LinearLayout textTitleLayout;// 日夜模式切换与时间文本视图布局
    private TextView button0;// 日夜模式切换按钮
    public static TextView button1;// 时间文本视图
    private ScrollView scroll;// 滚动视图
    public static LinearLayout layout;// 滚动视图布局(功能菜单)
    private View touchView;//悬浮窗右下角三角形的父容器
    private Path path;//悬浮窗右下角三角形画笔
    private Paint paint;// 悬浮窗右下角三角触摸视图

    // 用于存储所有开关按钮的动态数组容器
    private ArrayList<aSwitch> switchs = new ArrayList<aSwitch>();
    // 用于存储所有展开菜单的文本视图的动态数组容器
    private ArrayList<TextView> textViews2 = new ArrayList<TextView>();






    //————————————————————————————————————————成员方法————————————————————————————————————————

    //♨️悬浮窗菜单实例 [单例]♨️
    public static GameMenu getMenu(Context context) {
        if (menu == null) {
            menu = new GameMenu(context);
        } 
        return menu;
    }



    //构造悬浮窗
    private GameMenu(Context context) {
        this.mContext = context;

        Tools.Reversal();//进行安全验证
        Resource.initResource(context);//加载所有资源
        initView();
    }



    //初始化悬浮窗
    private void initView() {

        // 初始化设置————————————————————————————————————————————————————————————————————————————

        //设置渐变动画
        anim = new AlphaAnimation(0f, 1f);// 渐变透明度
        anim.setDuration(500); // 设置动画持续时间

        //初始化悬浮窗口
        initWindow();
        //初始化悬浮窗布局
        initLayout();

        // 在滚动视图上增加控件————————————————————————————————————————————————————————————————————————————

        // (必看💥)
        // 小白来说只需要在下面这里配置好你自己的每一个游戏功能 并去e.java文件中按照教程配置好网络验证 就能正常使用了！
        // 如果还是自己不会配置 那么去b站搜索"艾琳直装教程" 然后找到b站昵称叫 EndlessApril艾琳 的账号 进入主页就有各种教程 自己看自己需要的教程即可！

        // 下面这种写法可能很多人不熟悉 因为我将按钮创建和按钮点击后执行的内容一体化了 也就是下面这种既创建了按钮又顺便设置了执行的二进制文件名

        // 注意：制作直装时 需要将所有功能二进制文件放在 游戏安装包的📁arm64-v8a 📁armeabi-v7a 📁assets 这三个文件夹都必须放一次二进制文件！
        // 执行功能二进制文件 支持64和32位游戏通用！就差x86了


        //第一个菜单————————————————————
        //创建一个展开菜单 变量名字为controlsLayou0
        LinearLayout controlsLayou0=addCollapse(layout, "人物功能");
        //创建一个开关按钮 将此按钮绑定在变量名字为controlsLayou0的展开菜单中
        //参数：父布局 开关按钮名称 开关按钮名称大小 开启功能二进制文件名 关闭功能二进制文件名 功能警告弹窗标题 功能警告弹窗内容
        addSwitch(controlsLayou0, "功能名称", 11f, "开启功能二进制文件名", "关闭功能二进制文件名", "功能说明", "说明内容");
        addSwitch(controlsLayou0, "功能名称", 11f, "开启功能二进制文件名", "关闭功能二进制文件名", "功能说明", "说明内容");
        addSwitch(controlsLayou0, "功能名称", 11f, "开启功能二进制文件名", "关闭功能二进制文件名", "功能说明", "说明内容");
        addSwitch(controlsLayou0, "功能名称", 11f, "开启功能二进制文件名", "关闭功能二进制文件名", "功能说明", "说明内容");





        //第二个菜单————————————————————
        //创建一个展开菜单 变量名字为controlsLayou1
        LinearLayout controlsLayou1=addCollapse(layout, "枪械功能");
        //创建一个开关按钮 将此按钮绑定在变量名字为controlsLayou1的展开菜单中
        //🔥下面是四种不同的开关按钮演示🔥
        //1️⃣能开能关 并且带功能说明的开关按钮演示
        addSwitch(controlsLayou1, "功能名称", 11f, "开启功能二进制文件名", "关闭功能二进制文件名", "功能说明", "说明内容");
        //2️⃣能开能关 的开关按钮演示
        addSwitch(controlsLayou1, "功能名称", 11f, "开启功能二进制文件名", "关闭功能二进制文件名");
        //️3️⃣只能开并且带功能说明 的开关按钮演示
        addSwitch(controlsLayou1, "功能名称", 11f, "开启功能二进制文件名", "功能说明", "说明内容");
        //️4️⃣只能开不能关 的开关按钮演示
        addSwitch(controlsLayou1, "功能名称", 11f, "开启功能二进制文件名");




        //⬇下面是实战演示⬇





        //第三个菜单————————————————————
        //创建一个展开菜单 变量名字为controlsLayou2
        LinearLayout controlsLayou2=addCollapse(layout, "稳定功能");
        //创建一个开关按钮 将此按钮绑定在变量名字为controlsLayou2的展开菜单中
        addSwitch(controlsLayou2, "人物遁地", 11f, "libdd.so", "libddg.so", "人物遁地-说明", "➤ 遁地后不能跳跃！跳跃可能会异常！<br>➤ 此功能关闭后跳跃就能回到地面");
        addSwitch(controlsLayou2, "枪械无后", 11f, "libwh.so", "libwhg.so");
        addSwitch(controlsLayou2, "人物上色", 11f, "libss.so", "人物上色-说明", "➤ 此功能无法关闭！<br>➤ 重进对局会自动恢复");
        addSwitch(controlsLayou2, "隐藏动作", 11f, "libyc.so");




        //第四个菜单————————————————————
        //创建一个展开菜单 变量名字为controlsLayou3
        LinearLayout controlsLayou3=addCollapse(layout, "危险功能");
        //创建一个开关按钮 将此按钮绑定在变量名字为controlsLayou3的展开菜单中
        addSwitch(controlsLayou3, "人物无敌 (能开能关 带弹窗)", 11f, "libwd.so", "libwdg.so", "功能说明", "说明内容");
        addSwitch(controlsLayou3, "人物无敌 (能开能关)", 11f, "libwd.so", "libwdg.so");
        addSwitch(controlsLayou3, "人物无敌 (只能开 带弹窗)", 11f, "libwd.so", "功能说明", "➤ 此功能无法关闭！<br>➤ 重进对局会自动恢复");
        addSwitch(controlsLayou3, "人物无敌 (只能开)", 11f, "libwd.so");

        //不够的话自己像上面这样加 
        //注意：不能重名 比如上面已经有了controlsLayou3 那么增加一个新的展开菜单的变量名字就要改一下比如取名为controlsLayou4
        // 例如：LinearLayout controlsLayou4=addCollapse(layout, "人物功能"); 
        //注意：开关按钮千万要注意括号中第一个代表你要将这个按钮放在哪个展开菜单中 
        // 例如：addSwitch(controlsLayou4, "隐藏动作", 11f, "libyc"); 这个代码中controlsLayou2就是这个按钮所在的展开菜单名称









        //💥️下面是可以直接进行特征码内存修改的开关按钮演示💥
        LinearLayout controlsLayou4=addCollapse(layout, "JNI-Memory");
        addSwitch(controlsLayou4, "地形平坦", 11f, new Interfaces(){       
                @Override
                public void SwitchFun(boolean isChecked) {

                    if (isChecked) {
                        //开关开启执行的内容
                        C.clearResult();//清空搜索结果
                        C.setRange(C.RANGE_ANONYMOUS);//设置内存
                        C.setPackageName("com.yodo1.SkiSafari.yodo1");//设置包名
                        C.RangeMemorySearch("-50", C.TYPE_FLOAT);//主特征码
                        C.MemoryOffset("1000", C.TYPE_FLOAT, -12);//副特征码
                        C.MemoryOffset("-10", C.TYPE_FLOAT, 4);//副特征码
                        C.MemoryOffset("90", C.TYPE_FLOAT, 12);//副特征码
                        //副特征码如果不够就像上面这样添加
                        C.MemoryWrite("0", C.TYPE_FLOAT, 8);//修改值
                        //修改值不够就像上面这样添加
                        C.clearResult();//清空搜索结果       
                    } else {
                        //开关关闭执行的内容

                    }
                }
            });
        addSwitch(controlsLayou4, "人物飞天", 11f, new Interfaces(){       
                @Override
                public void SwitchFun(boolean isChecked) {

                    if (isChecked) {
                        //开关开启执行的内容
                        C.clearResult();//清空搜索结果
                        C.setRange(C.RANGE_ANONYMOUS);//设置内存
                        C.setPackageName("com.yodo1.SkiSafari.yodo1");//设置包名
                        C.RangeMemorySearch("-50", C.TYPE_FLOAT);//主特征码
                        C.MemoryOffset("1000", C.TYPE_FLOAT, -12);//副特征码
                        C.MemoryOffset("-10", C.TYPE_FLOAT, 4);//副特征码
                        C.MemoryOffset("90", C.TYPE_FLOAT, 12);//副特征码
                        C.MemoryWrite("0", C.TYPE_FLOAT, 8);//修改值
                        C.clearResult();//清空搜索结果       
                    } else {
                        //开关关闭执行的内容

                    }
                }
            });
        addSwitch(controlsLayou4, "无限子弹", 11f, new Interfaces(){       
                @Override
                public void SwitchFun(boolean isChecked) {

                    if (isChecked) {
                        //开关开启执行的内容
                        C.clearResult();//清空搜索结果
                        C.setRange(C.RANGE_ANONYMOUS);//设置内存
                        C.setPackageName("com.yodo1.SkiSafari.yodo1");//设置包名
                        C.RangeMemorySearch("-50", C.TYPE_FLOAT);//主特征码
                        C.MemoryOffset("1000", C.TYPE_FLOAT, -12);//副特征码
                        C.MemoryOffset("-10", C.TYPE_FLOAT, 4);//副特征码
                        C.MemoryOffset("90", C.TYPE_FLOAT, 12);//副特征码
                        C.MemoryWrite("0", C.TYPE_FLOAT, 8);//修改值
                        C.clearResult();//清空搜索结果       
                    } else {
                        //开关关闭执行的内容

                    }
                }
            });
        addSwitch(controlsLayou4, "无限食物", 11f, new Interfaces(){       
                @Override
                public void SwitchFun(boolean isChecked) {

                    if (isChecked) {
                        //开关开启执行的内容
                        C.clearResult();//清空搜索结果
                        C.setRange(C.RANGE_ANONYMOUS);//设置内存
                        C.setPackageName("com.yodo1.SkiSafari.yodo1");//设置包名
                        C.RangeMemorySearch("-50", C.TYPE_FLOAT);//主特征码
                        C.MemoryOffset("1000", C.TYPE_FLOAT, -12);//副特征码
                        C.MemoryOffset("-10", C.TYPE_FLOAT, 4);//副特征码
                        C.MemoryOffset("90", C.TYPE_FLOAT, 12);//副特征码
                        C.MemoryWrite("0", C.TYPE_FLOAT, 8);//修改值
                        C.clearResult();//清空搜索结果       
                    } else {
                        //开关关闭执行的内容

                    }
                }
            });









        //在屏幕上绘制一个文字 参数：上下文 x位置 y位置 文字颜色 文字大小 文字内容（支持html）
        Tools.drawText(mContext, 60f, 0f, 0xFFFF0000, 12f, "<font color='#33FF33'>➤ 作者：艾琳 游戏逆向群101640882 模板免费倒卖死妈</font><br>➤ Game：ɢᴀᴍᴇ-ᴋɪʟʟᴳᴳɢɢᵍᵍ ⚔ " + mContext.getPackageName() + " ⚔");
        //Tools.drawText(mContext, 200f, 50f, 0xFFFF0000, 12f, "By艾琳");




        // 自动任务————————————————————————————————————————————————————————————————————————————
        // 根据当前现实中是白天或者夜晚自动切换为不同模式
        dayNight(Resource.isDaytime);
        Resource.dialog.showToast("检测到当前是" + (TimeTool.isDaytime() ? "白天" : "晚上") + "\n已自动将直装菜单主题为您切换为" + (Resource.isDaytime ? "日间模式" : "夜间模式") + "！");
        // 切换日夜标识
        isYR = Resource.isDaytime;
    }



































    // —————————————————————————————————————— 折叠控件相关方法 ——————————————————————————————————————

    //增加一个折叠菜单
    //参数： 父布局 折叠菜单名称
    private LinearLayout addCollapse(LinearLayout linLayout, final String text) {

        LinearLayout collapse = new LinearLayout(mContext);
        LinearLayout.LayoutParams layoutParamsLL = new LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.MATCH_PARENT);
        layoutParamsLL.setMargins(0, 5, 0, 0);
        collapse.setLayoutParams(layoutParamsLL);
        collapse.setVerticalGravity(16);
        collapse.setOrientation(LinearLayout.VERTICAL);

        final LinearLayout collapseSub = new LinearLayout(mContext);
        collapseSub.setVerticalGravity(16);
        collapseSub.setPadding(0, 5, 0, 5);
        collapseSub.setOrientation(LinearLayout.VERTICAL);
        collapseSub.setBackgroundColor(0x00000000);
        collapseSub.setVisibility(View.GONE);

        final TextView textView = new TextView(mContext);
        textView.setBackgroundColor(0x00000000);
        textView.setTextSize(TypedValue.COMPLEX_UNIT_PX, Tools.convertDpToPx(mContext, 13f));
        textView.setText("▼ " + text + " ▼");
        textView.setGravity(Gravity.CENTER);
        textView.setTypeface(Resource.typeface3);
        textView.setPadding(0, 20, 0, 20);

        /*if (expanded) {
         collapseSub.setVisibility(View.VISIBLE);
         textView.setText("▲ " + text + " ▲");
         }*/

        textView.setOnClickListener(new View.OnClickListener() {
                boolean isChecked = false;

                @Override
                public void onClick(View v) {

                    boolean z = !isChecked;
                    isChecked = z;
                    if (z) {
                        Resource.audio.playSoundEffect("SliderDecrease.ogg");
                        collapseSub.setVisibility(View.VISIBLE);
                        textView.setText("▲ " + text + " ▲");
                        return;
                    }
                    Resource.audio.playSoundEffect("SliderIncrease.ogg");
                    collapseSub.setVisibility(View.GONE);
                    textView.setText("▼ " + text + " ▼");
                }
            });
        collapse.addView(textView);
        collapse.addView(collapseSub);
        linLayout.addView(collapse);
        //将展开菜单的标题文本加入动态数组容器
        textViews2.add(textView);

        return collapseSub;
    }















    // —————————————————————————————————————— 开关按钮控件相关方法 ——————————————————————————————————————

    //增加一个开关按钮的方法1 (能开能关 有功能注意事项弹窗)
    // 参数：父布局 开关按钮名称 开关按钮名称大小 开启功能二进制文件名 关闭功能二进制文件名 功能警告弹窗标题 功能警告弹窗内容
    private void addSwitch(LinearLayout layout, String text, float textSize, String onFile, String offFile, String title, String info) {
        aSwitch button1 = new aSwitch(mContext, onFile, offFile, title, info);
        createSwitch(layout, text, textSize, button1);
    }

    //增加一个开关按钮的方法2 (能开能关)
    private void addSwitch(LinearLayout layout, String text, float textSize, String onFile, String offFile) {
        aSwitch button1 = new aSwitch(mContext, onFile, offFile);
        createSwitch(layout, text, textSize, button1);
    }

    //增加一个开关按钮的方法3 (只能开 有功能注意事项弹窗)
    private void addSwitch(LinearLayout layout, String text, float textSize, String onFile, String title, String info) {
        aSwitch button1 = new aSwitch(mContext, onFile, title, info);
        createSwitch(layout, text, textSize, button1);
    }

    //增加一个开关按钮的方法4 (只能开)
    private void addSwitch(LinearLayout layout, String text, float textSize, String onFile) {
        aSwitch button1 = new aSwitch(mContext, onFile);
        createSwitch(layout, text, textSize, button1);
    }

    //增加一个开关按钮的方法5 (可自定义开关按钮的开关事件)
    private void addSwitch(LinearLayout layout, String text, float textSize, Interfaces function) {
        aSwitch button1 = new aSwitch(mContext, function);
        createSwitch(layout, text, textSize, button1);
    }


    //创建一个开关按钮
    private void createSwitch(LinearLayout layout, String text, float textSize, aSwitch button1) {
        LinearLayout layout1 = new LinearLayout(mContext);
        LinearLayout.LayoutParams layoutParams1 = new LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT,
                                                                                LinearLayout.LayoutParams.WRAP_CONTENT);
        layout1.setLayoutParams(layoutParams1);
        layout1.setPadding(30, 3, 5, 3);
        layout.addView(layout1);


        LinearLayout.LayoutParams buttonParams1 = new LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT,
                                                                                LinearLayout.LayoutParams.WRAP_CONTENT);
        button1.setLayoutParams(buttonParams1);

        button1.setText(text);
        button1.setTextSize(TypedValue.COMPLEX_UNIT_PX, Tools.convertDpToPx(mContext, textSize));
        button1.setTypeface(Resource.typefaceXS);

        //button1.setShowText(true);//开关圆片是否显示开关文字
        //button1.setTextOff("☯");//当按钮处于关闭状态圆片上显示的文字
        //button1.setTextOn("☯");//当按钮处于开启状态圆片上显示的文字

        layout1.addView(button1);
        switchs.add(button1);
    }













    // —————————————————————————————————————— 主题方案方法 ——————————————————————————————————————

    // 日夜切换模式 主题方案 为true则切换日间模式否则为夜间模式
    private void dayNight(boolean isDayNight) {
        // 说明 第一个参数是日间主题下的颜色 第二个参数是夜间主题下的
        if (anim != null && main != null) {
            mainLayout.startAnimation(anim);
        }
        DeBug.aLog("开始切换主题样式");

        button0.setText(isDayNight ? "↻" : "↺");// 设置日夜模式切换按钮样式
        button0.setTextColor(isDayNight ? 0xBF003FFF : 0xFFFFFFFF);// 设置日夜模式切换按钮颜色
        button1.setTextColor(isDayNight ? 0xCF0073FF : 0xFFC8C8C8);// 设置时间文本颜色

        title.setTextColor(isDayNight ? 0xBF003FFF : 0xFFFFFFFF);// 设置标题文字颜色

        titleLayout1.setBackgroundColor(isDayNight ? 0x60000000 : 0x60FFFFFF);// 设置副标题布局背景颜色

        mainBackground.setColor(isDayNight ? 0xD3FFFFFF : 0xD3000000);// 设置功能菜单背景颜色
        mainBackground.setStroke(3, isDayNight ? 0xFF000000 : 0xE1C9C9C9);// 设置功能菜单边框厚度与描边颜色

        // 遍历开关按钮动态数组容器 设置所有开关按钮的颜色
        for (aSwitch switchButton : switchs) {
            switchButton.setTextColor(isDayNight ? 0xFF4E83FF : 0xFFFFFFFF);// 开关按钮文本颜色
            // 更新开关颜色
            switchButton.setButtonColor(switchButton.isChecked() ? (isDayNight ? 0xBF003FFF : 0xFF00FF00) : 0xFFFFFFFF,
                                        switchButton.isChecked() ? (isDayNight ? 0xBF003FFF : 0xFF00FF00)
                                        : (isDayNight ? 0xFF000000 : 0xFFFFFFFF));

        }

        // 遍历展开菜单所有文本 并设置相关内容
        for (TextView textView : textViews2) {
            textView.setTextColor(isDayNight ?0xBF003FFF : 0xFFFFFFFF);//设置文字颜色
            //textView.setBackgroundColor(isDayNight ? 0x60000000 : 0x60FFFFFF);// 设置副标题布局背景颜色
        }

        DeBug.aLog("主题样式切换完成");


    }










    // —————————————————————————————————————— 拓展工具 ——————————————————————————————————————


    // 功能列表是否可见
    public void Equation(boolean is) {
        //设置主菜单功能是否可见
        if (textViews2 != null) {
            for (TextView menu:textViews2) {
                if (menu != null) {
                    menu.setVisibility(is ?View.VISIBLE: View.GONE);
                }
            }
        }

    }










    // —————————————————————————————————————— 悬浮窗口设置相关————————————————————————————————————————————————————————————————————————————


    //显示悬浮窗
    public void showView() {
        if (mainWindow == null) {
            initWindow();
        }
        if (!isView) {
            isView = true;
            mainWindow.addView(main, wParams);
        }
    }
    //更新悬浮窗
    public void updateView() {
        if (mainWindow == null) {
            initWindow();
        }
        if (isView) {
            mainWindow.updateViewLayout(main, wParams);    
        }  
    }
    //清除悬浮窗
    public void clearView() {
        if (mainWindow != null) {
            if (isView) {
                isView = false;
                mainWindow.removeView(main);
            }

        }
    }


    //初始化悬浮窗口
    private void initWindow() {

        //系统级别窗口 (需要悬浮窗权限 稳定性强)
        mainWindow = (WindowManager) mContext.getSystemService(Context.WINDOW_SERVICE);
        wParams = new WindowManager.LayoutParams();
        wParams.width = WindowManager.LayoutParams.WRAP_CONTENT;
        wParams.height = WindowManager.LayoutParams.WRAP_CONTENT;
        wParams.gravity = Gravity.TOP | Gravity.LEFT;
        wParams.format = PixelFormat.RGBA_8888;
        wParams.windowAnimations = android.R.style.Animation_Toast;
        wParams.flags = WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL | WindowManager.LayoutParams.FLAG_WATCH_OUTSIDE_TOUCH;
        wParams.type = (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O ?WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY: WindowManager.LayoutParams.TYPE_SYSTEM_ALERT);


        /* 

         //activity上的窗口 (无需悬浮窗权限 不稳定！) 建议不要使用 除非你知道你的游戏只有唯一一个activity 
         //否则某些游戏有多个activity可能悬浮窗只会显示在入口处获取到的第一个activity上！！！！
         //mainWindow = Main.activity.getWindowManager();
         //窗口参数
         wParams =  new WindowManager.LayoutParams(
         WindowManager.LayoutParams.WRAP_CONTENT,
         WindowManager.LayoutParams.WRAP_CONTENT,
         0,//initialX
         0,//initialy
         WindowManager.LayoutParams.TYPE_APPLICATION,
         WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE & ~WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL |
         WindowManager.LayoutParams.FLAG_LAYOUT_IN_OVERSCAN |
         WindowManager.LayoutParams.FLAG_LAYOUT_IN_SCREEN |
         WindowManager.LayoutParams.FLAG_SPLIT_TOUCH,
         PixelFormat.RGBA_8888
         );
         wParams.gravity = 51;//重力在左上角

         */
    }


    //初始化悬浮窗布局
    private void initLayout() {

        //根布局
        main = new FrameLayout(mContext);
        mainBackground = new GradientDrawable();
        mainBackground.setCornerRadius(Tools.convertDpToPx(mContext, 0));
        main.setBackgroundDrawable(mainBackground);

        //主要布局
        mainLayout = new LinearLayout(mContext);
        LinearLayout.LayoutParams mainLayoutParams = new LinearLayout.LayoutParams(
            LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT);
        mainLayout.setLayoutParams(mainLayoutParams);
        mainLayout.setPadding(1, 1, 1, 1);
        mainLayout.setOrientation(LinearLayout.VERTICAL);


        //主标题
        titleLayout = new LinearLayout(mContext);
        LinearLayout.LayoutParams titleLayoutParams = new LinearLayout.LayoutParams(
            LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT);
        titleLayout.setLayoutParams(titleLayoutParams);
        titleLayout.setGravity(Gravity.CENTER);
        titleLayout.setPadding(1, 1, 1, 1);
        titleLayout.setBackgroundColor(0x00000000);
        title = new TextView(mContext);
        title.setText(" ▼ " + titleString + e.getLin(mContext).getBy() + " ▼ ");
        title.setGravity(Gravity.CENTER);
        title.setPadding(0, 20, 0, 20);
        title.setTextSize(TypedValue.COMPLEX_UNIT_PX, Tools.convertDpToPx(mContext, 15f));
        title.setTypeface(Resource.typeface2);
        titleLayout.addView(title);

        //视图滚动 (用来自动改变展开后一些视图的位置)
        mainScroll = new aScrollView(mContext);
        ScrollView.LayoutParams scrollParams0 = new ScrollView.LayoutParams(ScrollView.LayoutParams.MATCH_PARENT,
                                                                            ScrollView.LayoutParams.WRAP_CONTENT);
        mainScroll.setVisibility(View.GONE);//默认不可见
        mainScroll.setScroll(false);//不可滚动
        mainScroll.setLayoutParams(scrollParams0);
        LinearLayout sclayout = new LinearLayout(mContext);
        LinearLayout.LayoutParams layoutParams0 = new LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT,
                                                                                LinearLayout.LayoutParams.WRAP_CONTENT);
        sclayout.setLayoutParams(layoutParams0);
        sclayout.setOrientation(LinearLayout.VERTICAL);
        mainScroll.addView(sclayout);

        //副标题
        titleLayout1 = new LinearLayout(mContext);
        LinearLayout.LayoutParams titleLayoutParams1 = new LinearLayout.LayoutParams(
            LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT);
        titleLayout1.setLayoutParams(titleLayoutParams1);
        titleLayout1.setGravity(Gravity.CENTER);
        titleLayout1.setPadding(0, 0, 0, 0);
        title1 = new TextView(mContext);
        title1.setText(subtitleString);
        title1.setTextSize(TypedValue.COMPLEX_UNIT_PX, Tools.convertDpToPx(mContext, 8f));
        title1.setTextColor(0xFFFFFFFF);
        title1.setTypeface(Resource.typeface3);
        titleLayout1.addView(title1);

        //日夜模式切换按钮和到期时间文本
        textTitleLayout = new LinearLayout(mContext);
        LinearLayout.LayoutParams textTitleLayoutParams = new LinearLayout.LayoutParams(
            LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT);
        textTitleLayout.setLayoutParams(textTitleLayoutParams);
        textTitleLayout.setGravity(Gravity.CENTER_VERTICAL);
        button0 = new TextView(mContext);
        button0.setTextSize(TypedValue.COMPLEX_UNIT_PX, Tools.convertDpToPx(mContext, 20f));
        button0.setTypeface(Resource.typeface2);
        button0.getPaint().setFakeBoldText(true);
        button0.setFocusable(false);
        textTitleLayout.addView(button0);
        button1 = new TextView(mContext);
        button1.setPadding(20, 0, 0, 0);
        button1.setText(TimeTool.timeGreeting() + "到期时间：" + e.getLin(mContext).str);
        button1.setTextSize(TypedValue.COMPLEX_UNIT_PX, Tools.convertDpToPx(mContext, 8f));
        button1.setTypeface(Resource.typefaceXS);
        button1.getPaint().setFakeBoldText(true);
        button1.setFocusable(false);
        textTitleLayout.addView(button1);
        button0.setOnClickListener(new OnClickListener() {
                @Override
                public void onClick(View v) {
                    Resource.audio.playSoundEffect("KaTong.ogg");
                    // 切换日夜模式
                    dayNight(!isYR);
                    isYR = !isYR;
                }

                private void RunShell(String p0) {

                }

                private String getFilesDir() {
                    return null;
                }
            });


        //滚动列表
        scroll = new ScrollView(mContext);
        ScrollView.LayoutParams scrollParams = new ScrollView.LayoutParams(ScrollView.LayoutParams.MATCH_PARENT,
                                                                           ScrollView.LayoutParams.WRAP_CONTENT);
        scrollParams.bottomMargin = 10;
        scroll.setLayoutParams(scrollParams);
        layout = new LinearLayout(mContext);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT,
                                                                               LinearLayout.LayoutParams.WRAP_CONTENT);
        scroll.setVisibility(View.GONE);
        layout.setLayoutParams(layoutParams);
        layout.setOrientation(LinearLayout.VERTICAL);
        layout.setPadding(5, 5, 5, 5);     
        scroll.addView(layout);



        //布局层次结构
        main.addView(mainLayout);//主要布局
        mainLayout.addView(titleLayout);//主标题布局
        mainLayout.addView(mainScroll);//视图滚动   
        sclayout.addView(titleLayout1);//副标题布局
        sclayout.addView(textTitleLayout);//日夜和到期时间布局
        mainLayout.addView(scroll);//滚动功能列表布局



        //悬浮窗外部触摸监听
        main.setOnTouchListener(new View.OnTouchListener() {
                @Override
                public boolean onTouch(View v, MotionEvent event) {
                    // 获取事件类型
                    int action = event.getAction();

                    if (action == MotionEvent.ACTION_OUTSIDE) {
                        //点击了window之外的区域
                        clearView(); //隐藏window
                        SuspendedBall.getSB(mContext).showView();//显示悬浮球
                        return true;
                    }

                    return false;
                }
            });



        // 创建触摸视图(用于拉拽悬浮窗右下角动态调整悬浮窗大小)
        touchView = new View(mContext) {
            @Override
            protected void onDraw(Canvas canvas) {
                super.onDraw(canvas);

                // 绘制三角形
                path = new Path();
                path.moveTo(0, getHeight());
                path.lineTo(getWidth(), getHeight());
                path.lineTo(getWidth(), getHeight() - Tools.convertDpToPx(mContext, 19));
                path.close();

                paint = new Paint();
                paint.setStyle(Paint.Style.FILL);
                paint.setColor(0xBF003FFF);
                canvas.drawPath(path, paint);

            }
        };

        touchView.setBackgroundColor(0);
        touchView.setVisibility(View.GONE);
        touchView.setOnTouchListener(new ResizeViewTouchListener());

        //将触摸视图添加进悬浮窗布局
        main.addView(touchView, new FrameLayout.LayoutParams(Tools.convertDpToPx(mContext, 23),
                                                             Tools.convertDpToPx(mContext, 23), Gravity.END | Gravity.BOTTOM));




        //标题点击事件
        titleLayout.setOnClickListener(new View.OnClickListener() {
                boolean isOne=true;
                int index=0;
                @Override
                public void onClick(View v) {
                    ++index;
                    //第一次点击 更新布局
                    if (isOne) {
                        updateView();
                        updateView();
                        isOne = false;
                    }
                }
            });

        //标题触摸事件
        titleLayout.setOnTouchListener(new OnTouchListener() {
                private int signX;

                private int signY;

                private float downX;

                private float downY;

                private float moveX;

                private float moveY;

                boolean isOne=true;//第一次移动时设置透明度标识
                boolean isMove=false;//当前是否在移动
                int moveThreshold=20;//手指移动的阀值 (灵敏度) 改小更容易触发移动 太小可能导致误判打不开悬浮窗
                boolean isChecked = false;//菜单展开状态标识
                @Override
                public boolean onTouch(View view, MotionEvent event) {

                    switch (event.getActionMasked()) {


                            //手指按下时触发
                        case MotionEvent.ACTION_DOWN:                
                            isOne = true;
                            isMove = false;
                            signX = wParams.x;//记录视图初始位置的横向坐标
                            signY = wParams.y;//记录视图初始位置的竖向坐标
                            downX = event.getRawX();//记录手指按下时的绝对横向坐标
                            downY = event.getRawY();//记录手指按下时的绝对竖向坐标
                            return true;



                            //手指移动时触发
                        case MotionEvent.ACTION_MOVE:
                            float moveDistanceX = Math.abs(event.getRawX() - downX);
                            float moveDistanceY = Math.abs(event.getRawY() - downY);
                            if (moveDistanceX > moveThreshold || moveDistanceY > moveThreshold) {
                                isMove = true;//当前是移动
                            }


                            //第一次移动执行的内容
                            if (isOne) {
                                main.setAlpha(0.3f);//设置菜单透明度 透明度介于0和1之间
                                isOne = false;//不是第一次移动了
                            }


                            if (isMove) {
                                wParams.x = signX + (int) (event.getRawX() - downX);//根据手指移动的距离计算视图新的横向坐标
                                wParams.y = signY + (int) (event.getRawY() - downY);//根据手指移动的距离计算视图新的竖向坐标
                                updateView();//更新视图位置
                            }

                            return true;


                            //手指抬起时触发
                        case MotionEvent.ACTION_UP:
                            //不是移动状态 抬起的 那么执行这些内容
                            if (!isMove) {
                                boolean z = !isChecked;
                                isChecked = z;
                                if (z) {
                                    Resource.audio.playSoundEffect("SliderDecrease.ogg");

                                    mainScroll.setVisibility(View.VISIBLE);
                                    scroll.setVisibility(View.VISIBLE);
                                    touchView.setVisibility(View.VISIBLE);

                                    title.setText(" ▲ " + titleString + e.getLin(mContext).getBy() + " ▲ ");

                                    wParams.width = windowW;
                                    wParams.height = windowH;
                                    updateView();

                                } else {
                                    Resource.audio.playSoundEffect("SliderIncrease.ogg");

                                    mainScroll.setVisibility(View.GONE);
                                    scroll.setVisibility(View.GONE);
                                    touchView.setVisibility(View.GONE);

                                    title.setText(" ▼ " + titleString + e.getLin(mContext).getBy() + " ▼ ");

                                    //设置窗口宽度为默认值
                                    wParams.width = WindowManager.LayoutParams.WRAP_CONTENT;
                                    //设置窗口高度为默认值
                                    wParams.height = WindowManager.LayoutParams.WRAP_CONTENT;
                                    updateView();

                                }
                            }
                            main.setAlpha(1.0f);//设置菜单透明度 透明度介于0和1之间


                            return true;
                    }
                    return false;
                }
            });



    }


    //拉拽悬浮窗右下角 动态调整悬浮窗大小的算法
    private class ResizeViewTouchListener implements View.OnTouchListener {
        private int dx, dy;
        private int minWidthPx = Tools.convertDpToPx(mContext, 30);
        private int minHeightPx = Tools.convertDpToPx(mContext, 30);
        private int initialX,initialY;

        private int initialResizeWidth,initialResizeHeight;
        private boolean isResizing=false;

        boolean isOne=true;//第一次移动时的标识
        boolean isMove=false;//当前是否在移动
        int moveThreshold=10;//手指移动的阀值 (灵敏度) 改小更容易触发移动 太小可能导致误判打不开悬浮窗
        private float downX, downY;
        @Override
        public boolean onTouch(View v, MotionEvent event) {
            switch (event.getAction()) {
                case MotionEvent.ACTION_DOWN:
                    isOne = true;
                    isMove = false;
                    downX = event.getRawX();//记录手指按下时的绝对横向坐标
                    downY = event.getRawY();//记录手指按下时的绝对竖向坐标

                    //记录触摸点的初始位置
                    initialX = wParams.x;
                    initialY = wParams.y;
                    dx = (int) (event.getRawX() - wParams.x);
                    dy = (int) (event.getRawY() - wParams.y);
                    initialResizeWidth = main.getWidth();
                    initialResizeHeight = main.getHeight();
                    isResizing = true;
                    return true;
                case MotionEvent.ACTION_MOVE:
                    float moveDistanceX = Math.abs(event.getRawX() - downX);
                    float moveDistanceY = Math.abs(event.getRawY() - downY);
                    if (moveDistanceX > moveThreshold || moveDistanceY > moveThreshold) {
                        isMove = true;//当前是移动
                    }
                    //第一次移动执行的内容
                    if (isOne) {
                        isOne = false;//不是第一次移动了

                    }
                    if (isMove) {
                        if (isResizing) {
                            // 计算触摸点相对于悬浮窗左上角的偏移量
                            int offsetX = (int) (event.getRawX() - dx - initialX);
                            int offsetY = (int) (event.getRawY() - dy - initialY);

                            // 根据偏移量计算新的悬浮窗大小
                            int newWidth = Math.max(minWidthPx, initialResizeWidth + offsetX);
                            int newHeight = Math.max(minHeightPx, initialResizeHeight + offsetY);

                            wParams.width = newWidth;
                            wParams.height = newHeight;
                            updateView();
                        }
                    }
                    return true;
                case MotionEvent.ACTION_UP:
                    //不是移动状态 抬起的 那么执行这些内容
                    if (!isMove) {
                        //设置窗口宽度为默认值
                        GameMenu.wParams.width = WindowManager.LayoutParams.WRAP_CONTENT;
                        //设置窗口宽度为默认值
                        GameMenu.wParams.height = WindowManager.LayoutParams.WRAP_CONTENT;
                        updateView();
                    }
                    //保存设置的宽高
                    windowW = wParams.width;
                    windowH = wParams.height;


                    isResizing = false;
                    return true;
            }
            return false;
        }
    }


}
