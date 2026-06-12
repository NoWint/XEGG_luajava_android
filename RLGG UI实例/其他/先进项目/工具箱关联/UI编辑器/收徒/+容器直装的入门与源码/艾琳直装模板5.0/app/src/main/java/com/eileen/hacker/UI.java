package com.eileen.hacker;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.util.Base64;
import java.io.IOException;

/**
 * @Author 𝘽𝙮·艾琳  手游逆向学习QQ交流群101640882
 * @Date 2023/07/04 02:31
 * @Describe UI上的图像处理与图像的Base编码 类

 火箭炮!!　发射ーー!!!!
 　 ＿∧_∧＿＿＿/／
 ≡(_ ( ･∀･)＿＿( 三三三三三●
 　　( ニつノ｜｜　＼
 　　ヽ_⌒|　｜｜
 　　し_(＿)   ｜｜
 　　　　　　¯¯¯
 */

public class UI {

    //获取ass文件夹图像的方法
    public static Drawable getAssetsDraw(Context context, String drawFileName) {
        try {

            return Drawable.createFromStream(context.getAssets().open(drawFileName), null);
        } catch (IOException e) {
            e.printStackTrace();

            return null;
        }
    }

    //用于Base64图像解码 并返回解出的位图 通常设置base64编码的图片用到
    public static Bitmap getImageBase64Jie(String base64) {
        // Base64 解码为字节数组
        byte[] Bytes = Base64.decode(base64, Base64.DEFAULT);
        // 解码字节数组为 Bitmap 对象 并返回
        Bitmap bitmap = BitmapFactory.decodeByteArray(Bytes, 0, Bytes.length);
        return bitmap;
    }


    /*
     ⚠警告⚠   ❆　*🔔🎄ᎷᎬᎡᎡᎩ ᏟᎻᎡᎨᏚᎢᎷᎪᏚ🎄🔔*　❆　

     由于base64编码太大 为了防止使用AIDE打开此文件导致AIDE崩溃
     所以 我将UI上所有图标的base64编码 放在了最下面 你需要往下滑才能看见它们！
     请使用MT管理器查看下面base64编码！否则您的AIDE将崩溃，就算重启AIDE你也会卡在启动界面！
     别说我没有警告过你！千万不要使用AIDE查看下面的base64编码！

     <注意：以上警告只针对使用AIDE 手机安卓开发编辑器的用户，如果您是as编辑器请无视此警告！>

     -------------图像的base64编码是什么？--------------
     图像的base64编码是一种将图像数据转换成文本格式的方法。
     在计算机中，图像数据通常以二进制形式存储，而base64编码可以将这些二进制数据转换成由64个不同字符组成的文本字符串。
     为了理解base64编码，我们可以将其比作密码锁。
     就像密码锁要将数字转换成特定的组合才能打开一样，base64编码也是将二进制数据转换成特定的文本组合。
     首先，将图像的二进制数据分割成一系列的小块。
     然后，每个小块会被转换成一个对应的base64字符。
     这些base64字符由大小写字母、数字和特殊符号组成，总共64个字符。
     最后，将这些base64字符拼接在一起，就可以得到一个完整的base64编码的文本字符串，代表着原始图像的内容。
     base64编码的优点是它可以在文本传输协议中使用，例如在网页上嵌入图像或将图像通过电子邮件发送。
     它还可以用于在不支持二进制数据传输的地方传递图像。
     因为base64编码的文本只包含可打印字符，所以它比二进制数据更容易处理和传输。
     例如我们还可以防止一些无所事事别有用心的人替换我们的图像资源文件或者音频资源文件等。
     所以在这套模板里面我使用了图像base64编码进行解出位图并显示图像的方法。
     注意：base64编码并不是一种加密方式！但是使用这种方式可以防止一些小人二改，防不了大佬哦~
     */





























































































//想要替换图标请访问以下网站将自己的图片转换成base64编码并替换下面""中的base64编码！
//https://www.rapidtables.org/zh-CN/web/tools/base64-encode.html
//注意图标大小最好不要超过1MB，否则转换出的base64编码将会非常大，很有可能导致程序崩溃或者显示不全的问题！

//悬浮窗图标的base64编码
    static String base64_Icon = "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";












//UI上普通按钮图标的base64编码
    static String base64_Button = "";
}
