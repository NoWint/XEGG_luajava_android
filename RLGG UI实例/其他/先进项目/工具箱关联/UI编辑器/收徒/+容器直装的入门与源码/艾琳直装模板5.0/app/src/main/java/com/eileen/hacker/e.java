package com.eileen.hacker;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.icu.text.SimpleDateFormat;
import android.os.Looper;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import java.util.GregorianCalendar;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;


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





/**
 * @Author 𝘽𝙮·艾琳 - 手游逆向交流群101640882
 * @Date 2023/10/10 12:21
 * @Describe 
 * 微验网络验证🌐
 * 标注💥符号的注释是必看内容
 */
public class e {

    public static final String TAG = "e";

    Context mContext;

    //💥网络验证使用教程：
    //1.http://app.llua.cn/?ref=939986796 游览器打开这个链接下载微验软件 
    //2.下载之后 注册账号 可能要花12元购买一个注册码才能注册 
    //  这里说一下 有些人肯定会想"还要花钱还是算了" 你怎么不想想你为什么要使用卡密验证
    //  你使用卡密验证无非就是为了赚钱 做收费的科技 12元钱又不多 之后卖一张卡密就回本了
    //  如果你不想花钱 做的是免费的 那么当我没说 你做免费的话就不用阅读使用教程了 直接去下面网络验证总开关的true改为false 也就是关闭网络验证！
    //好了接下来回到正题
    //3.填写注册码之后 邀请码填写939986796可以领一些卡密等福利 其他的自己设置
    //4.注册成功后在软件主界面 点击软件主界面下方的+号 点击创建应用
    //5.创建完应用后可在软件内应用管理中看到刚才创建的应用 打开创建的应用
    //6.开始配置应用 注意除了<应用编辑>栏中的内容自行配置 其它栏目中的内容跟着我一步一步配置(我注释在下方参数后面 )

    //微验网络验证配置 (如果你需要使用网络验证则 必须跟着我配置以下参数)   
    private boolean GM = true;//♨️网络验证总开关♨️ {填true代表开启网络验证 填false代表关闭网络验证}
    private String sd = "填写RC4-2密钥";//💥RC4-2密钥(安全配置-全局数据加密[开启这个]-数据加密类型[选择RC4-2加密]然后下面会生成一个rc4密钥 这里填入这个密钥即可)
    private String by="填写应用版本号";//💥当前版本号(更新配置-应用版本[自己填]然后这里填你微验填的版本就行)
    private String jm = "填写项目ID"; //💥项目id(应用编辑-网页解绑或者网页查卡下方有一个链接的最后面有一串数字就是项目ID 例如：http://llua.cn/?mod=dismissset&id=33045  这串链接里面的33045就是项目ID)
    private String qqs = "填写项目key"; //💥项目key(安全配置-找到APPKEY会看到有一串密文将这串密文填写在这里就行)
    private String hhh="填写登陆成功状态码";//💥登录成功状态码(安全配置-找到登录状态码配置 然后有一个数字 默认的可能是200 为了安全最好自定义一个状态码 然后将状态码填在这里即可)
    //以上参数跟着我配置完成一般就完成配置了 就可以使用卡密登录了
    //然后可以测试是否成功：进入微验点击下方+号 点击添加卡密 添加卡密时归属应用必须是你与上面你刚才填写的参数一致的那个应用 
    //生成完一张卡密 就可以测试打包艾琳直装模板测试网络验证了 如果输入错误卡密显示登录失败 输入正确卡密就登录成功显示了功能菜单那么就成功了

    //下面的不要管 除非你有特殊需求 前提是你得会一定编程基础 否则可能出现各种问题！
    private String ai = "https://wy.llua.cn";//API接口(这是统一的 不要更改！ 除非微验换域名了 一般不会换域名)  
    private String md5;//用于存储卡密
    private String uuid;//用于存储机器码
    private String file="/storage/emulated/0/艾琳卡密";//用于登陆成功后保存卡密到本地指定路径文件中 下一次登录自动显示上一次登录成功的卡密 (必须确保授予了应用读写存储权限)
    public static LinearLayout linearLayouts;
    private static e lin;

    //🌐 卡密验证系统实例 [单例] 🌐
    public static e getLin(Context context) {
        if (lin == null) {
            // 加载网络验证
            lin = new e(context);
        } 
        return lin;
    }

    private e(final Context context) {
        mContext = context;

        Tools.Reversal();//进行安全验证
        Resource.initResource(context);//加载所有资源
        //获取系统机器码
        uuid = Tools.getJOB(context);
        //机器码写入本地文件 
        Tools.Writefile("/storage/emulated/0/艾琳系统机器码", uuid);

        //自定义直装唯一标识 写入至本地文件
        // 主要用于CPP中有微验 有防止偷功能的需求 cpp中读取此文件的内容也就是读取直装唯一标识符
        //‼️如果你cpp没有防止偷功能的需求 不要管
        // cpp中防止偷功能逻辑：
        // 如果直装唯一标识符相等 则代表此cpp是在正版直装运行的 就执行修改相关代码 
        // 否则的话就是cpp功能被偷了 是在别的应用执行的此cpp那么不让执行修改相关的代码！
        Tools.Writefile("/storage/emulated/0/文件名自己取", "填写直装唯一标识符");

    }

    //获取网络验证主开关状态
    public boolean getGm() {
        return GM;
    }

    //获取网络验证应用版本号
    public String getBy() {
        return by;
    }



    //启动方法
    void Start() {
        //安全验证
        Tools.Reversal();

        GradientDrawable Background1 = new GradientDrawable();
        Background1.setCornerRadius(Tools.convertDpToPx(mContext, 5));
        Background1.setColor(0xCEFF8A00);

        linearLayouts = new LinearLayout(mContext);
        linearLayouts.setOrientation(1);
        linearLayouts.setLayoutParams(new LinearLayout.LayoutParams(
                                          LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT));
        linearLayouts.setBackground(Background1);     
        linearLayouts.setPadding(40, 40, 40, 40);

        final TextView texties = new TextView(mContext);
        texties.setTypeface(Resource.typeface3);
        texties.setTextColor(0xFFFFFFFF);
        texties.setLayoutParams(new LinearLayout.LayoutParams(
                                    LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT));

        texties.setText("艾琳安全警报");
        texties.setTextSize(TypedValue.COMPLEX_UNIT_PX, Tools.convertDpToPx(mContext, 13f));
        texties.setGravity(Gravity.CENTER_HORIZONTAL);



        final TextView textVies = new TextView(mContext);
        textVies.setTypeface(Resource.typeface3);
        textVies.setTextColor(0xFF000000);
        textVies.setLayoutParams(new LinearLayout.LayoutParams(
                                     LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT));

        textVies.setTextSize(TypedValue.COMPLEX_UNIT_PX, Tools.convertDpToPx(mContext, 11f));
        textVies.setText("艾琳卡密验证系统连接失败 X_X\n\n可能触发此警报的原因：\n➤ 未正确连接网络\n➤ 开发人员未正确配置网络验证\n➤ 网络验证配置失效\n➤ 验证服务商跑路\n\n如果你是开发人员并且还没有配置网络验证 想测试功能页面 请使用模板中开发人员菜单中的关闭卡密验证系统功能 直接进入功能页面");

        linearLayouts.addView(texties);
        linearLayouts.addView(textVies);

        GameMenu.layout.addView(linearLayouts);

        //开始网络验证从检测程序更新开始 嵌套流程执行 检测程序更新→展示公告→展示登录界面
        UI(mContext);
    }


    //程序更新
    private int gxIndex=0;//存储递归索引
    private void UI(final Context context) {
        ++gxIndex;//增加一次递归

        //只有当递归次数大于20次那么视为没有正确连接网络或者网络验证没有配置！
        if (gxIndex > 20) {
            //结束递归
            return;
        }
        new Thread(new Runnable() {
                @Override
                public void run() {
                    String sign="/api/?app=" + jm + "&id=ini"; //公告
                    try {
                        String content=RC4Util.decryRC4(Tools.UrlPost(ai + sign, ""), sd, "UTF-8");
                        JSONObject jsonObject = new JSONObject(content);
                        String data=jsonObject.getString("msg");
                        JSONObject json = new JSONObject(data);                     
                        String version = json.getString("version"); //最新版本
                        String app_update_show = json.getString("app_update_show"); //更新内容
                        final String app_update_url = json.getString("app_update_url"); //最新地址
                        String app_update_must = json.getString("app_update_must"); //强制更新  
                        if (!version.equals(by)) {
                            Looper.prepare(); 
                            //进入这里了 代表网络验证成功 所以将上一个安全警报的布局隐藏掉
                            linearLayouts.setVisibility(View.GONE);
                            GradientDrawable Background1 = new GradientDrawable();
                            Background1.setCornerRadius(Tools.convertDpToPx(mContext, 5));
                            Background1.setColor(0xCEFF8A00);

                            linearLayouts = new LinearLayout(context);
                            linearLayouts.setOrientation(1);
                            linearLayouts.setLayoutParams(new LinearLayout.LayoutParams(
                                                              LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT));
                            linearLayouts.setBackground(Background1);     
                            linearLayouts.setPadding(40, 40, 40, 40);


                            final TextView texties = new TextView(context);
                            texties.setTypeface(Resource.typeface3);
                            texties.setTextColor(0xFFFFFFFF);
                            texties.setLayoutParams(new LinearLayout.LayoutParams(
                                                        LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT));

                            texties.setText("发现新版本");
                            texties.setTextSize(TypedValue.COMPLEX_UNIT_PX, Tools.convertDpToPx(mContext, 13f));
                            texties.setGravity(Gravity.CENTER_HORIZONTAL);



                            final TextView textVies = new TextView(context);
                            textVies.setTypeface(Resource.typeface3);
                            textVies.setTextColor(0xFF000000);
                            textVies.setLayoutParams(new LinearLayout.LayoutParams(
                                                         LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT));

                            textVies.setTextSize(TypedValue.COMPLEX_UNIT_PX, Tools.convertDpToPx(mContext, 11f));
                            textVies.setText("\n" + app_update_show + "\n");

                            Button button = new Button(mContext);
                            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT,
                                                                                                   Tools.convertDpToPx(mContext, 30f));

                            GradientDrawable Background = new GradientDrawable();
                            Background.setCornerRadius(Tools.convertDpToPx(mContext, 5));
                            Background.setColor(Color.parseColor("#1C262D"));
                            layoutParams.setMargins(7, 5, 7, 5);
                            button.setLayoutParams(layoutParams);
                            button.setTextColor(Color.parseColor("#FFFFFF"));
                            button.setAllCaps(false);
                            button.setBackground(Background);

                            button.setTypeface(Resource.typefaceXS);
                            button.setTextSize(TypedValue.COMPLEX_UNIT_PX, Tools.convertDpToPx(mContext, 11f));
                            button.setText("立即更新");

                            button.setOnClickListener(new View.OnClickListener() {
                                    @Override 
                                    public void onClick(View view) {
                                        //跳转游览器访问微验后台设置的更新链接
                                        Tools.tzHTTP(mContext, app_update_url);
                                    }});

                            linearLayouts.addView(texties);
                            linearLayouts.addView(textVies);
                            linearLayouts.addView(button);
                            GameMenu.layout.addView(linearLayouts);

                            if (app_update_must.equals("y")) {
                                //强制更新执行的内容
                            }

                            Looper.loop();
                        } else {
                            //进入这里了 代表网络验证成功 将上一个安全警报的布局隐藏掉
                            linearLayouts.setVisibility(View.GONE);

                            //没有检测到新版本则展示公告
                            Validate404(context);
                        }
                    } catch (Exception e) {
                        //异常情况
                        //开始重启检测更新线程
                        UI(context);
                    }
                }
            }).start(); 

    }

    //公告
    private void Validate404(final Context context) {
        new Thread(new Runnable() {
                @Override
                public void run() {
                    String sign="/api/?app=" + jm + "&id=notice"; // 公告
                    try {
                        String content=RC4Util.decryRC4(Tools.UrlPost(ai + sign, ""), sd, "UTF-8");
                        JSONObject jsonObject = new JSONObject(content);
                        String data=jsonObject.getString("msg");
                        JSONObject json = new JSONObject(data);                     
                        String appgg=json.optString("app_gg");
                        Looper.prepare();
                        GradientDrawable Background1 = new GradientDrawable();
                        Background1.setCornerRadius(Tools.convertDpToPx(mContext, 5));
                        Background1.setColor(0xCEFF8A00);

                        linearLayouts = new LinearLayout(context);
                        linearLayouts.setOrientation(1);
                        linearLayouts.setLayoutParams(new LinearLayout.LayoutParams(
                                                          LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT));
                        linearLayouts.setBackground(Background1);     
                        linearLayouts.setPadding(40, 40, 40, 40);


                        final TextView texties = new TextView(context);
                        texties.setTypeface(Resource.typeface3);
                        texties.setTextColor(0xFFFFFFFF);
                        texties.setLayoutParams(new LinearLayout.LayoutParams(
                                                    LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT));

                        texties.setText("官方公告");
                        texties.setTextSize(TypedValue.COMPLEX_UNIT_PX, Tools.convertDpToPx(mContext, 13f));
                        texties.setGravity(Gravity.CENTER_HORIZONTAL);



                        final TextView textVies = new TextView(context);
                        textVies.setTypeface(Resource.typeface3);
                        textVies.setTextColor(0xFF000000);
                        textVies.setLayoutParams(new LinearLayout.LayoutParams(
                                                     LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT));

                        textVies.setTextSize(TypedValue.COMPLEX_UNIT_PX, Tools.convertDpToPx(mContext, 11f));
                        textVies.setText("\n" + appgg + "\n");

                        Button button = new Button(mContext);
                        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT,
                                                                                               Tools.convertDpToPx(mContext, 30f));

                        GradientDrawable Background = new GradientDrawable();
                        Background.setCornerRadius(Tools.convertDpToPx(mContext, 5));
                        Background.setColor(Color.parseColor("#1C262D"));
                        layoutParams.setMargins(7, 5, 7, 5);
                        button.setLayoutParams(layoutParams);
                        button.setTextColor(Color.parseColor("#FFFFFF"));
                        button.setAllCaps(false);
                        button.setBackground(Background);

                        button.setTypeface(Resource.typefaceXS);
                        button.setTextSize(TypedValue.COMPLEX_UNIT_PX, Tools.convertDpToPx(mContext, 11f));
                        button.setText("我知道了");

                        button.setOnClickListener(new View.OnClickListener() {
                                @Override 
                                public void onClick(View view) {
                                    linearLayouts.setVisibility(View.GONE);
                                    //进入登录界面
                                    dp(context);

                                }});


                        linearLayouts.addView(texties);
                        linearLayouts.addView(textVies);
                        linearLayouts.addView(button);
                        GameMenu.layout.addView(linearLayouts);

                        Looper.loop();
                    } catch (Exception e) {
                        //异常情况
                        Validate404(context);
                    }
                }
            }).start(); 
    }



    int log = 670;//是否登录成功标识
    String str="未登录";//存储到期时间
    String sb="登录失败！";
    //登录卡密验证
    private boolean Calculus(final String smwy, final Context context) {

        Thread thread = new Thread(new Runnable() {
                @Override
                public void run() {
                    String sign = ai + "/api/?id=kmlogon"; // 卡密登录
                    String content;
                    String random;


                    Long time = System.currentTimeMillis() / 1000;
                    String signs = Tools.encodeMD5("kami=" + smwy + "&markcode=" + uuid + "&t=" + time + "&" + qqs);
                    String body="&app=" + jm + "&kami=" + smwy + "&markcode=" + uuid + "&t=" + time + "&sign=" + signs;     
                    String init=sign + body;

                    //接口：https://wy.llua.cn/api/?id=kmlogon&app=应用ID&kami=卡密&markcode=f985a21cb6472cde&t=" + time + "&sign=" + signs;
                    random = UUID.randomUUID().toString().replace("-", "") + qqs + uuid;
                    try {
                        String data = "data=" + RC4Util.encryRC4String(body, sd, "UTF-8");
                        content = RC4Util.decryRC4(Tools.UrlPost(init + "&app=" + jm, data + "&value=" + random), sd, "UTF-8");
                        JSONObject jsonObject = new JSONObject(content);
                        String code=jsonObject.getString("code");//是否登录成功
                        String Message=jsonObject.getString("msg");
                        String check=jsonObject.optString("check");//校验密钥
                        Long timee=jsonObject.optLong("time");//服务器时间戳
                        if (check.equals(Tools.encodeMD5(timee.toString() + qqs + uuid))) {
                            sb = "非法操作";
                        } else if (timee - time > 30) {                
                            sb = "数据过期";
                        } else if (timee - time < -30) {           
                            sb = "数据过期";
                        } else if (code.equals(hhh)) {//登录成功
                            log = 67022;
                            JSONObject json = new JSONObject(Message);                      
                            Long vip=json.optLong("vip");
                            GregorianCalendar gc=new GregorianCalendar();
                            gc.setTimeInMillis(vip * 1000);
                            SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd");//到期时间格式：yyyy-MM-dd(年月日) HH:mm:ss(时分秒) EEEE(星期几) EE(周几)
                            str = df.format(gc.getTime());
                        } else {
                            //其他情况
                            sb = Message;
                        }

                    } catch (JSONException e) {
                        //异常情况
                        sb = "错误" + e;
                    } catch (Exception e) {
                        //异常情况
                    }
                }



            });

        thread.start();

        try {
            thread.join();
        } catch (InterruptedException e) {
            Resource.dialog.showToast("登录失败 未知错误 请尝试重进");
        }
        if (log == 67022 && !str.equals("未登录")) {
            Resource.dialog.showToast("登录成功！\n到期时间：" + str);
            GameMenu.getMenu(mContext).Equation(true);//显示主悬浮菜单所有功能
            GameMenu.button1.setText(TimeTool.timeGreeting() + "到期时间：" + str);

            //确保授予了应用读写权限 否则它将无法保存卡密！
            Tools.Writefile(file, smwy);          
            return true;
        } else {
            Resource.dialog.showToast("登录失败\n原因：" + sb);
            return false;
        }


    }

    boolean isdl=false;//是否解绑成功的标识
    String dltoast="null!";
    String dlsbToast = "解绑失败！";
    //登录解绑验证
    private void Triangle(final String cnm, final Context context) {

        Thread thread = new Thread(new Runnable() {         
                @Override
                public void run() {
                    String sign = ai + "/api/?id=kmdismiss"; // 卡密解绑
                    String content;
                    String random;


                    random = UUID.randomUUID().toString().replace("-", "") + qqs + uuid;          
                    Long time = System.currentTimeMillis() / 1000;
                    String signs = Tools.encodeMD5("kami=" + cnm + "&markcode=" + uuid + "&t=" + time + "&" + qqs);
                    String body="&app=" + jm + "&kami=" + cnm + "&markcode=" + uuid + "&t=" + time + "&sign=" + signs;     
                    String init=sign + body;

                    try {
                        String data = "data=" + RC4Util.encryRC4String(body, sd, "UTF-8");
                        content = RC4Util.decryRC4(Tools.UrlPost(init + "&app=" + jm, data + "&value=" + random), sd, "UTF-8");
                        JSONObject jsonObject = new JSONObject(content);
                        String code=jsonObject.getString("code");//是否解绑成功
                        String Message=jsonObject.getString("msg");

                        if (code.equals("200")) {//解绑成功
                            isdl = true;
                            JSONObject json = new JSONObject(Message);                      
                            dltoast = json.getString("num");
                        } else {//解绑失败
                            dlsbToast = Message;
                        }
                    } catch (JSONException e) {

                    } catch (Exception e) {

                    }
                }


            });

        thread.start();

        try {
            thread.join();
        } catch (InterruptedException e) {
            Resource.dialog.showToast("解绑失败 未知错误 请尝试重进");
        }
        if (isdl && !dltoast.equals("null!")) {
            Resource.dialog.showToast("解绑成功！\n当前卡密解绑次数剩余 " + dltoast + " 次");       
        } else {
            Resource.dialog.showToast(dlsbToast);

        }
    }

    //卡密登录界面
    private void dp(final Context context) {
        GradientDrawable Background1 = new GradientDrawable();
        Background1.setCornerRadius(Tools.convertDpToPx(mContext, 5));
        Background1.setColor(0xCEFF8A00);

        linearLayouts = new LinearLayout(context);
        linearLayouts.setOrientation(1);
        linearLayouts.setLayoutParams(new LinearLayout.LayoutParams(
                                          LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT));
        linearLayouts.setBackground(Background1);     
        linearLayouts.setPadding(40, 40, 40, 40);


        final TextView texties = new TextView(context);
        texties.setTypeface(Resource.typeface3);
        texties.setTextColor(0xFFFFFFFF);
        texties.setLayoutParams(new LinearLayout.LayoutParams(
                                    LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT));

        texties.setText("艾琳卡密系统");
        texties.setTextSize(TypedValue.COMPLEX_UNIT_PX, Tools.convertDpToPx(mContext, 15f));
        texties.setGravity(Gravity.CENTER_HORIZONTAL);
        texties.setPadding(0, 0, 0, 10);


        final TextView texties1 = new TextView(context);
        texties1.setTypeface(Resource.typeface3);
        texties1.setTextColor(0xFFEFEFEF);
        texties1.setLayoutParams(new LinearLayout.LayoutParams(
                                     LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT));

        texties1.setText("手游逆向交流学习群101640882");
        texties1.setTextSize(TypedValue.COMPLEX_UNIT_PX, Tools.convertDpToPx(mContext, 10f));
        texties1.setGravity(Gravity.CENTER_HORIZONTAL);
        texties1.setPadding(0, 0, 0, 30);

        GradientDrawable Backgroundss = new GradientDrawable();
        Backgroundss.setCornerRadius(Tools.convertDpToPx(mContext, 5));
        Backgroundss.setColor(0xA8000000);
        Backgroundss.setStroke(3, 0xC1FFFFFF);
        final EditText editext = new EditText(context);
        editext.setLongClickable(true);
        editext.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        editext.setHint("请输入卡密");
        editext.setHintTextColor(0xFFCECECE);
        editext.setTypeface(Resource.typeface3);
        editext.setText(Tools.ReadFile(file));//自动获取上一次登录的正确卡密
        editext.setTextColor(0xC200FF00);
        editext.setPadding(10, 10, 10, 10);
        editext.setTextSize(TypedValue.COMPLEX_UNIT_PX, Tools.convertDpToPx(mContext, 11f));
        editext.setBackground(Backgroundss);
        editext.requestFocus();//获取焦点

        //输入框点击事件
        editext.setOnClickListener(new View.OnClickListener() {
                @Override 
                public void onClick(View view) {     


                }});

        //输入框输入事件
        editext.setOnFocusChangeListener(new View.OnFocusChangeListener() {
                @Override
                public void onFocusChange(View v, boolean hasFocus) {            
                    InputMethodManager imm = (InputMethodManager) mContext.getSystemService(mContext.INPUT_METHOD_SERVICE);
                    if (hasFocus) {
                        imm.toggleSoftInput(InputMethodManager.SHOW_FORCED, InputMethodManager.HIDE_IMPLICIT_ONLY);
                    } else {
                        imm.toggleSoftInput(InputMethodManager.HIDE_IMPLICIT_ONLY, 0);
                    }
                }
            });


        // 设置长按监听器
        editext.setOnLongClickListener(new View.OnLongClickListener() {
                @Override
                public boolean onLongClick(View v) {              
                    return false; // 返回 false 表示事件未处理 系统会继续处理长按事件
                }
            });




        GradientDrawable Background = new GradientDrawable();
        Background.setCornerRadius(Tools.convertDpToPx(mContext, 5));
        Background.setColor(Color.parseColor("#1C262D"));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT,
                                                                               Tools.convertDpToPx(mContext, 30f));

        Button button = new Button(mContext);       
        layoutParams.setMargins(7, 5, 7, 5);
        button.setLayoutParams(layoutParams);
        button.setTextColor(Color.parseColor("#FFFFFF"));
        button.setAllCaps(false);
        button.setBackground(Background);

        button.setTypeface(Resource.typefaceXS);
        button.setTextSize(TypedValue.COMPLEX_UNIT_PX, Tools.convertDpToPx(mContext, 11f));
        button.setText("登录程序");



        button.setOnClickListener(new View.OnClickListener() {
                @Override 
                public void onClick(View view) {     

                    //安全验证
                    Tools.Reversal();
                    //存储卡密用于后面去验证
                    md5 = editext.getText().toString();

                    //卡密为空则提示 否则去验证卡密是否存在
                    if (md5.length() == 0) {
                        //安全验证
                        Tools.Reversal();
                        Resource.dialog.showToast("请输入正确卡密格式");    
                    } else {
                        //卡密开始进行网络验证
                        if (Calculus(md5, context)) {
                            //安全验证
                            Tools.Reversal();
                            //验证成功 为正确卡密
                            linearLayouts.setVisibility(View.GONE);//关闭登录界面
                        } else {
                            //验证失败 为错误卡密
                            //安全验证
                            Tools.Reversal();
                        }

                    }
                }});

        Button button1 = new Button(mContext);       
        layoutParams.setMargins(7, 5, 7, 5);
        button1.setLayoutParams(layoutParams);
        button1.setTextColor(Color.parseColor("#FFFFFF"));
        button1.setAllCaps(false);
        button1.setBackground(Background);

        button1.setTypeface(Resource.typefaceXS);
        button1.setTextSize(TypedValue.COMPLEX_UNIT_PX, Tools.convertDpToPx(mContext, 11f));
        button1.setText("解绑设备");

        button1.setOnClickListener(new View.OnClickListener() {
                @Override 
                public void onClick(View view) {     
                    //安全验证
                    Tools.Reversal();
                    md5 = editext.getText().toString();
                    if (md5.length() == 0) {
                        Resource.dialog.showToast("请输入正确卡密格式");
                    } else {
                        Triangle(md5, context);
                    }
                }});

        Button button2 = new Button(mContext);       
        layoutParams.setMargins(7, 5, 7, 5);
        button2.setLayoutParams(layoutParams);
        button2.setTextColor(Color.parseColor("#FFFFFF"));
        button2.setAllCaps(false);
        button2.setBackground(Background);

        button2.setTypeface(Resource.typefaceXS);
        button2.setTextSize(TypedValue.COMPLEX_UNIT_PX, Tools.convertDpToPx(mContext, 11f));
        button2.setText("联系作者");

        button2.setOnClickListener(new View.OnClickListener() {
                @Override 
                public void onClick(View view) {    
                    Tools.joinQQ(mContext, "3353484607", "https://qm.qq.com/q/jCqjrQIjPq&personal_qrcode_source=3");
                }});

        linearLayouts.addView(texties);
        linearLayouts.addView(texties1);
        linearLayouts.addView(editext);
        linearLayouts.addView(button);
        linearLayouts.addView(button1);
        linearLayouts.addView(button2);
        GameMenu.layout.addView(linearLayouts);



    }



}
