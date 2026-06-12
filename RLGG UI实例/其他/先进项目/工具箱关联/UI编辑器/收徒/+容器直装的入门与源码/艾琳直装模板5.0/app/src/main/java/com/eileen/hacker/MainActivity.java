package com.eileen.hacker;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.Window;
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
public class MainActivity extends Activity {




    //以下是艾琳游戏MOD直装模板嵌入游戏开发游戏内置菜单文字教学 (>▽<) 
    //[ 如果文字教学还是不会 可以游览器打开此链接观看作者录制的视频教程https://b23.tv/t9DYCRt ]
    //⚠️注意：以下教程必看！不看的话你可能会遇到闪退，卡顿，无反应，外挂功能无效果，各种问题⚠️

    //由于此模板支持启动器直装和普通直装，所以下面附带两种不同的开发教程

    //♨️首先开始教程前请确保配置了以下内容！
    //你是否在e.java文件内配置了网络验证？如果无需网络验证请在e.java文件中将总开关设置为false！
    //你是否在GameMenu.java文件内配置了外挂功能？

    //♨️一般配置好以上两个文件中的内容，就可以正常使用此模板了



    //———————————————————————————— 普通直装文字教程 ———————————————————————————— 
    //实现游戏入口处植入外挂悬浮窗菜单 跟着以下步骤开发即可！

    //0.AIDE打包安装此模板，然后使用MT管理器提取直装模板安装包，然后提取游戏安装包，之后找到这两个安装包
    //  将模板安装包内的classes.dex根据游戏安装包的classes.dex有几个进行改名再移动否则将会覆盖
    //  比如游戏安装包有classes.dex classes2.dex 那么就将模板安装包的classes.dex的名字改成classes3.dex 然后移动进游戏安装包
    //  再将模板安装包assets文件夹移动进游戏安装包
    //  最后打开模板安装包的lib文件夹 再打开游戏安装包的lib文件夹
    //  如果游戏lib文件夹中只有armeabi-v7a 那么你就只能将模板安装包的armeabi-v7a文件夹移动过去 否则闪退
    //  如果游戏lib文件夹中只有arm64-v8a 那么你就将模板的arm64-v8a文件夹移动过去 
    //  如果游戏lib文件夹有armeabi-v7a也有arm64-v8a文件夹 那么将模板的armeabi-v7a和arm64-v8a都移动过去

    //1.使用特定工具获取游戏入口Activity 例如：可以使用MT管理器的activity记录功能 这里不做教程
    //  打开游戏安装包 打开所有dex文件 点击搜索 搜索类型改为"类名" 查找内容就是你获取到的游戏入口Activity 例如com.epicgames.ue4.SplashActivity
    //  点击确定开始搜索 搜到后点击进去 点击MT管理器上方的指南针 搜索onCreate然后点击它 一般游戏入口都有 如果你没有代表你找错入口了
    //  在onCreate下方粘贴 invoke-static {p0}, Lcom/eileen/hacker/Main;->init(Landroid/content/Context;)V
    //  一路保存返回

    //2.在直装模板中的AndroidManifest.xml文件中复制所有权限 
    //  例如：<uses-permission android:name="android.permission.SYSTEM_ALERT_WINDOW" />这就是一个权限
    //  将模板所有权限复制 粘贴进 游戏AndroidManifest.xml中第一个权限的上方

    //3.复制 android:debuggable="true" 这串代码 粘贴到游戏AndroidManifest.xml中的<application下面
    //  注意：此代码必须放入 否则外挂功能将会无效果


    //4.打开游戏AndroidManifest.xml文件在最后一行找到</application> 将下面的代码粘贴在</application>上方即可
    /*



     <service
     android:name="com.eileen.hacker.WindowService" />



     */ 

    //5.如果你开发的直装使用到了二进制调用 那么将二进制移动进游戏安装包的 arm64-v8a文件夹(如果存在) 和 armeabi-v7a文件夹(如果存在) 和 assets文件夹
    //  注意：二进制必须移动进以上所有文件夹 当然某些游戏可能没有arm64-v8a或者没有armeabi-v7a文件夹 那么就无需放入

    //6.点击游戏安装包 依次点击-> 功能 -> APK签名 ->确定   直装制作完成 安装运行即可

    //7.检查以上步骤是否都跟着做了，如果跟着我做了，启动游戏后你将得到一个悬浮菜单！

    //制作完成后 如果游戏发生了闪退 可能是以下原因导致的！
    //  1.未正确跟着我的步骤开发直装或不听劝
    //  2.游戏存在签名校验或apk资源校验 (如果你是小白，你可能植入的是大型游戏，那么我建议你不要一上来就去搞大型游戏！因为没你想的这么简单！推荐你从小游戏慢慢练习进阶，例如：登山赛车，滑雪大冒险，正义枪战，枪战英雄...)
    //  3.修改或删除了模板内部分关键代码 
    //  4.游戏自身问题
    //请排查以上错误！
















    //———————————————————————————— 启动器直装文字教程 ———————————————————————————— 
    //如果你只想更改游戏AndroidManifest.xml文件 而不是更改dex文件 实现启动器直装 那么以下是启动器直装文字教程
    //启动器直装特点：避免修改游戏dex文件 只修改游戏清单文件实现直装 主要防止某些游戏的入口校验


    //0.AIDE打包安装此模板，然后使用MT管理器提取直装模板安装包，然后提取游戏安装包，之后找到这两个安装包
    //  将模板安装包内的classes.dex根据游戏安装包的classes.dex有几个进行改名再移动否则将会覆盖
    //  比如游戏安装包有classes.dex classes2.dex 那么就将模板安装包的classes.dex的名字改成classes3.dex 然后移动进游戏安装包
    //  再将模板安装包assets文件夹移动进游戏安装包
    //  最后打开模板安装包的lib文件夹 再打开游戏安装包的lib文件夹
    //  如果游戏lib文件夹中只有armeabi-v7a 那么你就只能将模板安装包的armeabi-v7a文件夹移动过去 否则闪退
    //  如果游戏lib文件夹中只有arm64-v8a 那么你就将模板的arm64-v8a文件夹移动过去 
    //  如果游戏lib文件夹有armeabi-v7a也有arm64-v8a文件夹 那么将模板的armeabi-v7a和arm64-v8a都移动过去

    //1.这里填写游戏Activity入口 可使用MT管理器的activity记录功能进入游戏之后在mt管理器查看复制第一个activity 
    public String GameActivity = "com.epicgames.ue4.SplashActivity";

    //2.在直装模板中的AndroidManifest.xml文件中复制所有权限 
    //  例如：<uses-permission android:name="android.permission.SYSTEM_ALERT_WINDOW" />这就是一个权限
    //  将模板所有权限复制 粘贴进 游戏AndroidManifest.xml中第一个权限的上方

    //3.复制 android:debuggable="true" 这串代码 粘贴到游戏AndroidManifest.xml中的<application下面
    //  注意：此代码必须放入 否则外挂功能将会无效果


    //4.打开游戏AndroidManifest.xml文件在最后一行找到</application> 将下面的代码粘贴在</application>上方即可
    /*


     <activity
     android:label="启动外挂菜单"
     android:name="com.eileen.hacker.MainActivity"
     android:exported="true">
     <intent-filter>
     <action
     android:name="android.intent.action.MAIN" />
     <category
     android:name="android.intent.category.LAUNCHER" />
     </intent-filter>
     </activity>  
     <service
     android:name="com.eileen.hacker.WindowService" />



     */ 

    //5.如果你开发的直装使用到了二进制调用 那么将二进制移动进游戏安装包的 arm64-v8a文件夹(如果存在) 和 armeabi-v7a文件夹(如果存在) 和 assets文件夹
    //  注意：二进制必须移动进以上所有文件夹 当然某些游戏可能没有arm64-v8a或者没有armeabi-v7a文件夹 那么就无需放入

    //6.点击游戏安装包 依次点击-> 功能 -> APK签名 ->确定   直装制作完成 安装运行即可

    //7.检查以上步骤是否都跟着做了，如果跟着我做了，你将在桌面看到游戏拥有两个图标，那么你从游戏另一个图标启动后将显示一个悬浮菜单！

    //制作完成后 如果游戏发生了闪退 可能是以下原因导致的！
    //  1.未正确跟着我的步骤开发直装或不听劝
    //  2.游戏存在签名校验或apk资源校验 (如果你是小白，你可能植入的是大型游戏，那么我建议你不要一上来就去搞大型游戏！因为没你想的这么简单！推荐你从小游戏慢慢练习进阶，例如：登山赛车，滑雪大冒险，正义枪战，枪战英雄...)
    //  3.修改或删除了模板内部分关键代码 
    //  4.游戏自身问题
    //请排查以上错误！


    public boolean hasLaunched = false;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        //只有当前程序是特点包名时才执行的代码 (别乱改)
        if (this.getPackageName().equals("com.eileen.hacker")) {
            this.requestWindowFeature(Window.FEATURE_NO_TITLE);//去掉标题栏
            this.setContentView(R.layout.activity_main);//设置程序xml布局
            DeBug.aLog("代码当前处于直装模板中");
        } else {
            DeBug.aLog("代码当前处于游戏安装包中");
            if (!hasLaunched) {
                try {
                    hasLaunched = true;
                    //启动游戏
                    MainActivity.this.startActivity(new Intent(MainActivity.this, Class.forName(MainActivity.this.GameActivity)));
                } catch (ClassNotFoundException e) {
                    DeBug.aLog("游戏activity入口不存在！");

                }
            }
        }
        //启动外挂程序
        Main.init(this);      
    }

}
