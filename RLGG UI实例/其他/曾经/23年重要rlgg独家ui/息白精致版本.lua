
gg.setVisible(false)
luajava.setFloatingWindowHide(true)

changan = {}
window = context:getSystemService("window") -- 获取窗口管理器
function panduan(rec) fille,err = io.open(rec) if fille == nil then return false else return true end end
function checkimg(tmp,ii)
if panduan("/sdcard/长安/图片/"..tmp) ~= true then
gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
luajava.download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..tmp,"/sdcard/长安/图片/"..tmp)
else
if file.length("/sdcard/长安/图片/"..tmp) <= 1 then
gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
luajava.download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..tmp,"/sdcard/长安/图片/"..tmp)
end
end
if panduan("/sdcard/长安/图片/"..tmp) ~= true then
gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
luajava.download("https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/"..tmp,"/sdcard/长安/图片/"..tmp)
else
	if file.length("/sdcard/长安/图片/"..tmp) <= 1 then
gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
luajava.download("https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/"..tmp,"/sdcard/长安/图片/"..tmp)
end
end
end
ckimg = {
	"pubgT","pubgG","pubgY","pubgR","leimu","quarkpic",
	"right","down","xz_gg","yehu",
	"quarkconfw","arwhitex",
	'skin',	"star1","star2","heix",
	'bm_launch','safe','bm_gn',
	'bm_music','bm_sz','mh',
	'heir','hei_right',"zhiyin1","lmx",
	'star1','star2','ringon','ringoff',	'Shimmer2.dex',

}
for i = 1,#ckimg do
jindu = i
checkimg(ckimg[i],i)
gg.toast("正在加载资源")
end
shimmer=dex.loadfile('/sdcard/长安/图片/Shimmer2.dex')
import "com.romainpiel.shimmer.Shimmer"
import "com.romainpiel.shimmer.ShimmerTextView"
YoYoImpl = luajava.getYoYoImpl()
vibra = context:getSystemService(Context.VIBRATOR_SERVICE)
function guid()
seed = {
	'e','1','2','3','4','5','6','7','8','9','a','b','c','d','e','f'
}
tb = {}
for i = 1,32 do
table.insert(tb,seed[math.random(1,16)])
end
sid = table.concat(tb)
return string.format('%s%s%s%s%s',
	string.sub(sid,1,8),
	string.sub(sid,10,12),
	string.sub(sid,21,22))
..string.format('%s%s%s%s%s',
	string.sub(sid,1,6),
	string.sub(sid,21,25)
)
end
function particle2(tx)
local webView = luajava.webView(function(webView)
	webView:loadData([[
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <style>
      html,
*{
    /* 初始化 */
    margin: 0;
    padding: 0;
}
body{
    height: 10vw;
    width: 100vw;
    /* 弹性布局 水平+垂直居中 */
    display: flex;
    justify-content: center;
    align-items: center;
    
}
h1{
    /* 文本透明 */
    color: transparent;
    font-size: 16px;
    /* 渐变背景 */
    background-image: -webkit-linear-gradient(92deg, #0050FF, #FF8AED);
    /* 裁剪掉文字以外的区域 */
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    background-size: 80%;
    background-repeat: repeat;
    background-position: center;
    /* 执行动画：动画名 时长 线性 无线播放 */
    -webkit-animation: hue 1s infinite linear;
    position:absolute;
    top:0px
}
/* 定义动画 */
@-webkit-keyframes hue {
from {
-webkit-filter: hue-rotate(0deg);
-moz-filter: hue-rotate(0deg);
}
to {
-webkit-filter: hue-rotate(-360deg);
-moz-filter: hue-rotate(-360deg);
}
}
    </style>
  </head>
  <body>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
</head>

<body>
     <h1>]]..tx..[[</h1>
</body>

    </script>
  </body>
 
</html>
]], 'text/html', 'UTF-8')
	webView:setBackgroundColor(0x0)
	webView:setVerticalScrollBarEnabled(false)
		webView:setHorizontalScrollBarEnabled(false)
		webView:setScrollContainer(false)
end)
return webView
end


function particle(co1,co2,cor)
local webView = luajava.webView(function(webView)
	webView:loadData([[<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">

    <title></title>
    <style>
    *{
    /* 初始化 */
    margin: 0;
    padding: 0;
}
body{
    /* 100%窗口高度 */
    height: 100vh;
    /* 溢出隐藏 */
    overflow: hidden;
}
.container{
    /* 绝对定位 */
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    /* 把背景图像扩展至足够大，以使背景图像完全覆盖背景区域 */
    background-size: cover;
    /* 定位背景图像为正中间 */
    background-position-x: center;
    /* 执行动画：动画名称 时长 线性的 无限次播放 */
    animation: animateBg 5s linear infinite;
}
span{
    position: absolute;
    top: 50%;
    left: 50%;
    width: 4px;
    height: 4px;
    background-color: #ffffff;
    border-radius: 50%;
    /* 发光效果 */
    box-shadow: 0 0 0 4px rgba(255,255,255,0.1),
    0 0 0 8px rgba(255,255,255,0.1),
    0 0 20px rgba(255,255,255,1);
    /* 执行动画 */
    animation: animate 3s linear infinite;
}
/* 拖尾效果 */
span::before{
    content: "";
    position: absolute;
    top: 50%;
    transform: translateY(-50%);
    width: 100px;
    height: 3px;
    background: linear-gradient(90deg,#d7d7d7,transparent);
}
/* 接下来分别为每一个流星设置位置、动画延迟时间、动画时长 */
span:nth-child(1){
    top: 0;
    right: 0;
    /* initial关键字用于设置CSS属性为它的默认值 */
    left: initial;
    /* 动画延迟时间 */
    animation-delay: 0s;
    /* 动画时长 */
    animation-duration: 1s;
}
span:nth-child(2){
    top: 0;
    right: 80px;
    left: initial;
    animation-delay: 0.2s;
    animation-duration: 3s;
}
span:nth-child(3){
    top: 80px;
    right: 0;
    left: initial;
    animation-delay: 0.4s;
    animation-duration: 2s;
}
span:nth-child(4){
    top: 0;
    right: 180px;
    left: initial;
    animation-delay: 0.6s;
    animation-duration: 1.5s;
}
span:nth-child(5){
    top: 0;
    right: 400px;
    left: initial;
    animation-delay: 0.8s;
    animation-duration: 2.5s;
}
span:nth-child(6){
    top: 0;
    right: 600px;
    left: initial;
    animation-delay: 1s;
    animation-duration: 3s;
}
span:nth-child(7){
    top: 300px;
    right: 0;
    left: initial;
    animation-delay: 1.2s;
    animation-duration: 1.75s;
}
span:nth-child(8){
    top: 0;
    right: 700px;
    left: initial;
    animation-delay: 1.4s;
    animation-duration: 1.25s;
}
span:nth-child(9){
    top: 0;
    right: 1000px;
    left: initial;
    animation-delay: 0.75s;
    animation-duration: 2.25s;
}
span:nth-child(10){
    top: 0;
    right: 450px;
    left: initial;
    animation-delay: 2.75s;
    animation-duration: 2.25s;
}

/* 定义动画 */
/* 背景缩放动画 */
@keyframes animateBg {
    0%,100%{
        transform: scale(1);
    }
    50%{
        transform: scale(1.2);
    }
}
/* 流星划过动画 */
@keyframes animate {
    0%{
        transform: rotate(315deg) translateX(0);
        opacity: 1;
    }
    90%{
        opacity: 1;
    }
    100%{
        transform: rotate(315deg) translateX(-400px);
        opacity: 0;
    }
}
    </style>
</head>

<body>
    <div class="container">
        <!-- 10个span -->
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
    </div>
</body>

</html>]], 'text/html', 'UTF-8')
	webView:setBackgroundColor(0x0)
	end)
return webView
end
parti=particle()

local function particle1()
local webView = luajava.webView(function(webView)
	webView:loadData([[<html>

<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">

    <title>炫彩流光圆环加载动画</title>
    <style>
    	
    	*{
    /* 初始化 取消内外边距 */
    margin: 0;
    padding: 0;
}
.container{
    width: 100%;
    /* 100%窗口高度 */
    height: 60vw;
    /* 弹性布局 水平垂直居中 */
    display: flex;
    justify-content: center;
    align-items: center;
    /* 相对定位 */
    position: relative;
    background-color: #00ffffff;
}
.circle{
    /* 绝对定位 */
    position: absolute;
    display: flex;
    justify-content: center;
    align-items: center;
    width: 140px;
    height: 140px;
    border-radius: 50%;
    /* 渐变背景 */
    background: linear-gradient(0deg,
                #DFB43C,
                #ffffff 30%,
                #B18530 60%,
                #D39F36 100%);
    /* 执行动画：动画名 时长 线性的 无限次播放 */
    animation: circleRotate 1s linear infinite;
}
/* 发光效果 */
.circle::before{
    content: "";
    position: absolute;
    width: 140px;
    height: 140px;
    border-radius: 50%;
    /* 渐变背景 */
    background: linear-gradient(0deg,
                #FFE79B,
                #FFE186 30%,
                #FFEBAD 60%,
                #FFEBAD 100%);
    /* 模糊 */
    filter: blur(28px);
}
/* 黑圆 */
.circle::after{
    content: "";
    position: absolute;
    width: 120px;
    height: 120px;
    border-radius: 50%;
    background: #161616;
    
}
span{
    color: #fff;
    position: absolute;
}

/* 定义动画 */
@keyframes circleRotate {
    0%{
        transform: rotate(0deg);
    }
    100%{
        transform: rotate(360deg);
    }
}
    </style>
</head>

<body>
    <div class="container">
        <div class="circle"></div>
        <span></span>
    </div>
</body>

</html>]], 'text/html', 'UTF-8')
	webView:setBackgroundColor(0x0)
	end)
return webView
end
parti2=particle1()

changan.controlFlip1 = function(control,time)
luajava.runUiThread(function()
	import "android.view.animation.Animation"
	import "android.animation.ObjectAnimator"
	xuanzhuandonghua = ObjectAnimator:ofFloat(control, "rotationY", {
		0,90
	})
	xuanzhuandonghua:setRepeatCount(0)
	xuanzhuandonghua:setRepeatMode(Animation.REVERSE)
	xuanzhuandonghua:setDuration(time)
	xuanzhuandonghua:start()
	end) end
changan.controlFlip2 = function(control,time)
luajava.runUiThread(function()
	import "android.view.animation.Animation"
	import "android.animation.ObjectAnimator"
	xuanzhuandonghua = ObjectAnimator:ofFloat(control, "rotationY", {
		-90, 0
	})
	xuanzhuandonghua:setRepeatCount(0)
	xuanzhuandonghua:setRepeatMode(Animation.REVERSE)
	xuanzhuandonghua:setDuration(time)
	xuanzhuandonghua:start()
	end) end
function launch(pkg)
loadingBox = getLoadingBox(pkg..'\n正在启动...')
loadingBox['显示']()
隐藏()
gg.setProcess(pkg)
gg.sleep(500)
if tostring(gg.getTargetPackage()) == pkg then
	loadingBox['关闭']()
gg.toast("进程已选择:"..pkg)
return 0
end
gg.toast("正在启动游戏...")


print(gg.isPackageInstalled(pkg))
app.start(pkg)
jci=0
--gg.sleep(5000)
while true do
	gg.setProcess(pkg)
	gg.sleep(400)
	if tostring(gg.getTargetPackage()) == pkg then
		loadingBox['关闭']()
		gg.alert("启动成功")
		break
	else
		jci=jci+1
		if jci==14 then
			loadingBox['关闭']()
			gg.alert("自动获取进程失败\n请手动选择游戏进程")
			gg.setProcessX()
			break
		end
	end
	gg.sleep(100)
end
end

import("android.media.AudioManager")
audi = context:getSystemService("audio")
audiotype = {
    AudioManager.STREAM_ALARM, --手机闹铃的声音
    AudioManager.STREAM_MUSIC, --手机音乐的声音
    AudioManager.STREAM_NOTIFICATION, --系统提示的通知
    AudioManager.STREAM_RING, --电话铃声的声音
    AudioManager.STREAM_SYSTEM, --手机系统的声音
    AudioManager.STREAM_VOICE_CALL, --语音电话的声音
    AudioManager.STREAM_DTMF, --DTMF音调的声音
}
yinl = {}
for i = 1,#audiotype do
yinl[i] = {}
yinl[i].type = audiotype[i]
yinl[i].min = audi:getStreamMinVolume(audiotype[i])
yinl[i].max = audi:getStreamMaxVolume(audiotype[i])
yinl[i].now = audi:getStreamVolume(audiotype[i])
end
function jianting2()
yinln = {}
for i = 1,#audiotype do
yinln[i] = {}
yinln[i].type = audiotype[i]
yinln[i].min = audi:getStreamMinVolume(audiotype[i])
yinln[i].max = audi:getStreamMaxVolume(audiotype[i])
yinln[i].now = audi:getStreamVolume(audiotype[i])

    if yinln[i].now > yinl[i].now  then
        audi:adjustStreamVolume(yinln[i].type,AudioManager.ADJUST_LOWER,0)
        gg.alert("up")
    elseif yinln[i].now < yinl[i].now  then
        audi:adjustStreamVolume(yinln[i].type,AudioManager.ADJUST_RAISE,0)
        gg.alert("down\n"..yinln[i].now.."\n"..yinl[i].now)
    end
end

end
yltype=0
function jianting3(func)
yinln = {}
for i = 1,#audiotype do
yinln[i] = {}
yinln[i].type = audiotype[i]
yinln[i].now = audi:getStreamVolume(audiotype[i])
    if yinln[i].now > yinl[i].now  then
        yinl[i].now = yinln[i].now
        if yltype==1 then
        yltype=0
        func()
        end
    elseif yinln[i].now < yinl[i].now  then
        yinl[i].now = yinln[i].now
        if yltype==0 then
        yltype=1
        func()
        end
    end
end
end
function jianting(func)
yinln = {}
for i = 1,#audiotype do
yinln[i] = {}
yinln[i].type = audiotype[i]
yinln[i].now = audi:getStreamVolume(audiotype[i])
    if yinln[i].now >= yinl[i].max  then
       audi:adjustStreamVolume(yinln[i].type,AudioManager.ADJUST_LOWER,0)
    end
    if yinln[i].now > yinl[i].now  then
        audi:setStreamVolume(yinln[i].type,yinl[i].now,0)
        func()
    end
end
end
tuic=0
function 获取图片(txt)
ntxt = string.sub(string.gsub(txt,"/","."),-10,-1)
if string.find(tostring(txt),"http") ~= nil then
if panduan("/sdcard/长安/图片/"..ntxt) == false then
luajava.download(txt,"/sdcard/长安/图片/"..ntxt)
end
txt = "/sdcard/长安/图片/"..ntxt
--txt="https://www.baidu.com/img/flexible/logo/pc/result.png"
end
return luajava.getBitmapDrawable(txt)
end
function 获取(txt)
if txt==nil then return nil end
txt = string.url(txt,"de")
ntxt = string.sub(string.gsub(txt,"/","-"),-10,-1)
if string.find(tostring(txt),"http") ~= nil then
if panduan("/sdcard/长安/图片/"..ntxt) == false then
luajava.download(txt,"/sdcard/长安/图片/"..ntxt)
else
	if file.length("/sdcard/长安/图片/"..ntxt) <= 1 then
luajava.download(txt,"/sdcard/长安/图片/"..ntxt)
end
end
txt = "/sdcard/长安/图片/"..ntxt
end
return txt
end
function topSelect()
local selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, getVerticalBG({0x22161616,0x22161616},30))
selector:addState({
	-android.R.attr.state_pressed
}, empty)
return selector
end
function getCorner(gtvb1,gtvb3,gtvb4,gtvb5,g1,g2,g3,g4)
if not gtvb4 then gtvb4 = 0 gtvb5 = 0xff000000 end
local jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(gtvb3)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors(gtvb1)
jianbians:setStroke(gtvb4,gtvb5)--边框宽度和颜色
jianbians:setCornerRadii({g1,g1,g2,g2,g3,g3,g4,g4})
return jianbians
end
function getVerticalBG(gtvb1,gtvb3,gtvb4,gtvb5)
if not gtvb4 then gtvb4 = 0 gtvb5 = 0xff000000 end
local jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(gtvb3)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors(gtvb1)
jianbians:setStroke(gtvb4,gtvb5)--边框宽度和颜色
return jianbians
end
function newbg(gtvb1,gtvb3,gtvb4,gtvb5)
if not gtvb4 then gtvb4 = 0 gtvb5 = 0xff000000 end
local jianbians = luajava.loadlayout({
GradientDrawable,
color = {背景颜色},
cornerRadius=45,
gradientType = GradientDrawable.LINEAR_GRADIENT,
orientation = GradientDrawable.Orientation.TOP_BOTTOM ,
strokeWidth = 10,
strokeColor = gtvb5
})
return jianbians
end
function getRes(x)
return 获取图片("/sdcard/长安/图片/"..x)
end
function 获取(txt)
if txt==nil then return nil end
txt = string.url(txt,"de")
ntxt = string.sub(string.gsub(txt,"/","-"),-10,-1)
if string.find(tostring(txt),"http") ~= nil then
if panduan("/sdcard/长安/图片/"..ntxt) == false then
luajava.download(txt,"/sdcard/长安/图片/"..ntxt)
else
	if file.length("/sdcard/长安/图片/"..ntxt) <= 1 then
luajava.download(txt,"/sdcard/长安/图片/"..ntxt)
end
end
txt = "/sdcard/长安/图片/"..ntxt
end
return txt
end
function getHorizontalBG(gtvb1,gtvb3,gtvb4,gtvb5)
if not gtvb4 then gtvb4 = 0 gtvb5 = 0xff000000 end
local jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(gtvb3)
jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors(gtvb1)
jianbians:setStroke(gtvb4,gtvb5)--边框宽度和颜色
return jianbians
end
hanshu = function(v, event)
local Action = event:getAction()
if Action == MotionEvent.ACTION_DOWN then
isMove = false
RawX = event:getRawX()
RawY = event:getRawY()
x = mainLayoutParams.x
y = mainLayoutParams.y
elseif Action == MotionEvent.ACTION_MOVE then
isMove = true
mainLayoutParams.x = tonumber(x) + (event:getRawX() - RawX)
mainLayoutParams.y = tonumber(y) + (event:getRawY() - RawY)
window:updateViewLayout(floatWindow, mainLayoutParams)
end
end
function getLayoutParams()
LayoutParams = WindowManager.LayoutParams
layoutParams = luajava.new(LayoutParams)
if (Build.VERSION.SDK_INT >= 26) then -- 设置悬浮窗方式
layoutParams.type = LayoutParams.TYPE_APPLICATION_OVERLAY
else
	layoutParams.type = LayoutParams.TYPE_PHONE
end

layoutParams.format = PixelFormat.RGBA_8888 -- 设置背景
layoutParams.flags = LayoutParams.FLAG_NOT_TOUCH_MODAL -- 焦点设置Finish
layoutParams.gravity = Gravity.TOP|Gravity.LEFT -- 重力设置
layoutParams.width = LayoutParams.WRAP_CONTENT -- 布局宽度
layoutParams.height = LayoutParams.WRAP_CONTENT -- 布局高度

return layoutParams
end
mainLayoutParams = getLayoutParams()

local function exit()
tuic=1
luajava.setFloatingWindowHide(false)

end


setExitEvent(exit)
changan.controlWater = function(control,time)
luajava.runUiThread(function()
	import "android.animation.ObjectAnimator"
	ObjectAnimator():ofFloat(control,"scaleX", {
		1, 0.8, 0.9, 1
	}):setDuration(time):start()
	ObjectAnimator():ofFloat(control,"scaleY", {
		1,0.8,0.9,1
	}):setDuration(time):start()
	end) end
changan.controlSmall = function(control,time)
luajava.runUiThread(function()
	import "android.animation.ObjectAnimator"
	ObjectAnimator():ofFloat(control,"scaleX", {
		1, 0.7, 0.4, 0
	}):setDuration(time):start()
	ObjectAnimator():ofFloat(control,"scaleY", {
		1, 0.7, 0.4, 0
	}):setDuration(time):start()
	end) end
changan.controlBig = function(control,time)
luajava.runUiThread(function()
	import "android.animation.ObjectAnimator"
	ObjectAnimator():ofFloat(control,"scaleX", {
		0, 0.4, 0.7, 1
	}):setDuration(time):start()
	ObjectAnimator():ofFloat(control,"scaleY", {
		0, 0.4, 0.7, 1
	}):setDuration(time):start()
	end) end
显示=0
function 隐藏()
luajava.runUiThread(function()
	if tonumber(tostring(ckou:getVisibility())) ~= 8.0 then
	显示 = 0
	ckou:setVisibility(View.GONE)
	control:setVisibility(View.VISIBLE)
	
	mainLayoutParams.flags = LayoutParams.FLAG_NOT_FOCUSABLE
	window : updateViewLayout (floatWindow , mainLayoutParams)
		logvid = luajava.getIdView("video") logvid.pause(logvid)
	else
	显示 = 1
	mainLayoutParams.flags = LayoutParams.FLAG_NOT_TOUCH_MODAL
	window : updateViewLayout (floatWindow , mainLayoutParams)
	
	ckou:setVisibility(View.VISIBLE)
	control:setVisibility(View.GONE)
	changan.controlBig(floatWindow,300)
		logvid = luajava.getIdView("video") logvid.pause(logvid)
	end
	end)
end
function 开关(name,func1,func2)
if func1 == nil then func1 = "" end
if func2 == nil then func2 = "" end
if type(func1) == "function" then
return function()
namers = _ENV[name]
if namers ~= "开" then
_ENV[name] = "开"
pcall(func1)
else
	_ENV[name] = "关"
pcall(func2)
end

end
end
end
function getTextBG(tmp)
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(20)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors(tmp)
jianbians:setOrientation(GradientDrawable.Orientation.BL_TR)
jianbians:setStroke(0,0xaa000000)--边框宽度和颜色
return jianbians
end
function changan.text(txt,color,size)
if not txt then txt = "未设置文字" end
if not color then color = "#ffffff" end
if not size then size = "14sp" end
return luajava.loadlayout(
	{
		TextView,
		text = txt,
		textSize = size,
		textColor = color,
		layout_width = "match_parent",
		gravity = "center",
	})
end
function changan.text2(txt,color,size)
if not txt then txt = "未设置文字" end
if not color then color = "#ffffff" end
if not size then size = "14sp" end
return luajava.loadlayout(
	{
		TextView,
		text = txt,
		textSize = size,
		textColor = color,
		layout_width = "395dp",	
	   layout_height = "wrap_content",
		gravity = "center",
		
		background=getTextBG({
	0xffB395FE,0xff778CFF,0xff61C7FE
})
	})
end
function changan.line()
return luajava.loadlayout({
	LinearLayout,
	layout_width = "match_parent",
	layout_height = "2dp",
	background = "#562780"
})
end
function getSelector()
local selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, slcta)
selector:addState({
	-android.R.attr.state_pressed
}, slctb)
return selector
end
function changan.check2(cklist)
rest = {
	GridLayout,
	background = "#01010000",
	layout_width = '260dp',
	layout_height = "wrap_content",
	columnCount = '3',
	gravity = "center",
}
for i = 1,#cklist do
local name = cklist[i][1]
local func1 = cklist[i][2]
local func2 = cklist[i][3]
local nid = cklist[i][4]
if not name then name = "未设置" end
nid = name..guid()
local func = 开关(nid,func1,func2,nid)
_ENV[nid.."swc"] = luajava.loadlayout({
	LinearLayout,
	layout_width = '86dp',
	layout_height = "35dp",
	layout_marginTop = "4dp",
	layout_marginBottom = "0dp",
	layout_marginLeft = "0dp",
	layout_marginRight = "0dp",
	gravity = "center",
	{
		CheckBox,
		layout_width = '28dp',
		layout_height = "30dp",
		onClick = function()

		luajava.newThread(function() func() end):start() end,

	}, {
		TextView,
		gravity = "center",
		text = name,
		gravity = "center",
		textColor = txtco,
		layout_width = '58dp',
		layout_height = 'wrap_content',
	}})
rest[#rest+1] = _ENV[nid.."swc"]
end
return luajava.loadlayout(rest)
end
blackbg = luajava.loadlayout({
	GradientDrawable,
	color = "#66000000",
	cornerRadius = 40
})
	显示 = 1
nowbg = 0
音量键=true
jmbg={}
function 切换(x)
当前ui = x
--gg.playMusic("/sdcard/LM全防/图片/zhiyin1")
luajava.runUiThread(function()
	if 当前ui==视频在第几页 then vidd:setVisibility(View.VISIBLE) else vidd:setVisibility(View.GONE) end
	for i = 1,#stab do
	_ENV["jm"..i]:setTextColor(0xff232323)
	_ENV["jmbg"..i]:setBackground(jmbg[i])
	_ENV["layout"..i]:setVisibility(View.GONE)
	end
	_ENV["jm"..当前ui]:setTextColor(0xffffffff)
	_ENV["jmbg"..当前ui]:setBackground(slcta)
	_ENV["layout"..当前ui]:setVisibility(View.VISIBLE)
	YoYoImpl:with("FadeIn"):duration(400):playOn(_ENV['layout'..当前ui])
	end)
end
function changan.menu(sview)

for i = 1,#bglist do
if type(bglist[i])=="string" then
bglist[i] = 获取图片(bglist[i])
end
end
if type(huiz) ~= "function" then
huiz = function() end
end

control = luajava.loadlayout({
	ImageView,
	layout_height = "40dp",
	layout_width = "40dp",
	visibility = "gone",
	onClick = 隐藏,onTouch = hanshu,
	background = 获取图片(xfcpic),
})
control2 = luajava.loadlayout({
	ImageView,
	layout_height = "40dp",
	layout_width = "40dp",
	onClick = 隐藏,onTouch = hanshu,
	background = 获取图片(xfcpic),
})
menubar = {
	LinearLayout,
	layout_height = "wrap_content",
	layout_width = "90dp",
	orientation="vertical",
	gravity = "center_horizontal",
	padding = {
		"5dp","10dp","0dp","10dp"
	},
	
}
for i = 1,#stab do
	_ENV['jm'..i]=luajava.loadlayout({ShimmerTextView,
			text=stab[i][1],
			gravity = "center",
			--	layout_gravity="center_vertical",
			textColor="#ffffff",
			textSize='12.5sp',
			reflectionColor='#FFBC42',
			})
	jmbg[i]=getSelector()
menubar[#menubar+1] = {FrameLayout,
	background = jmbg[i],
	layout_height = "34dp",
	layout_width = "wrap_content",
	layout_marginTop = "2dp",
	layout_marginBottom = "2dp",
	id="jmbg"..i,
	onClick = function() 切换(i) end,
	onTouch=hanshu,
	{LinearLayout,
	layout_gravity="center_vertical",
	layout_height = "20dp",
	layout_width = "20dp",
	id="jmb"..i,
	background=获取图片(stab[i][3]),
	layout_marginLeft="7dp",
	},

	{
	LinearLayout,
	layout_height = "30dp",
	layout_marginLeft="7dp",
	layout_width = "70dp",
	padding = {
		"25dp","0dp","15dp","0dp"
	},
	gravity = "center",
	layout_gravity="center_vertical",
	_ENV['jm'..i]
}
	
}
end

topbar = luajava.loadlayout({
	LinearLayout,
	layout_width="fill_parent",
	layout_height="35dp",
	background=getCorner({0xffffffff,0xffffffff},15,0,0xff232323,20,20,0,0),
	onClick=function() end,
	onTouch=hanshu,
	{LinearLayout,
	layout_width="35dp",
	layout_height="match_parent",
	gravity="center",
	
	{
			LinearLayout,
			gravity="center",
			background=获取图片(xfcpic),
			layout_width = "20dp",
			layout_height = "20dp",
			layout_marginLeft = "5dp",
			onClick = 隐藏,
			onTouch = hanshu,
			
		}
	},
	
	{LinearLayout,
	layout_width="wrap_content",
	layout_height="match_parent",
	gravity="center",
	{
			LinearLayout,
			id='cvv',
			layout_width='130dp',
			layout_height='match_parent',
			gravity="center",
		}
	},
	{LinearLayout,
		layout_width="fill_parent",
		layout_marginLeft='-80dp',
		layout_weight=1,
		layout_height="match_parent",
		gravity="center",
		{LinearLayout,
		layout_height="match_parent",
		layout_width="80dp",
		background=topSelect(),
		onClick=function() end,
		gravity="center",
		onTouch=hanshu,
		{LinearLayout,
		layout_height="5dp",
		layout_width="60dp",
		background=getHorizontalBG({0xFF00FF28,0xFFFF00FF},20)
		
		}
		}
		},
	{LinearLayout,
	layout_width="wrap_content",
	layout_height="34dp",
	gravity="center_vertical",
	background=getVerticalBG({0xffE6E6E6,0xffE6E6E6},90),
	padding={'5dp','0dp','5dp','0dp'},
	{
			ImageView,
			padding = "5dp",
			gravity='center',
			src = getRes("skin"),
			layout_width = "28dp",
			layout_height = "20dp",
			onClick = changebg,
			onTouch = hanshu,
		},
	{LinearLayout,
		layout_height='14dp',
		layout_width='1.2dp',
		background='#33232323',
	},
	{
			ImageView,
			id='ylyc',
			padding = "4dp",
			gravity='center',
			src = getRes("ringon"),
			layout_width = "28dp",
			layout_height = "20dp",
			onClick = function() 
				if 音量键 then 
					音量键=false
					ylyc:setImageDrawable(getRes('ringoff'))
					luajava.newThread(function() gg.alert('音量键隐藏已关闭') end):start()
				else
					音量键=true
					ylyc:setImageDrawable(getRes('ringon'))
					luajava.newThread(function() gg.alert('音量键隐藏已开启') end):start()
				end
			end,
			onTouch = hanshu,
		},
	{LinearLayout,
		layout_height='14dp',
		layout_width='1.2dp',
		background='#33232323',
	},
	{
			ImageView,
			padding = "5dp",
			gravity='center',
			id='hardv',
			src = hardv2,
			layout_width = "28dp",
			layout_height = "20dp",
			onClick = hardware,
			onTouch = hanshu,
		}
	},
	{LinearLayout,
	layout_width="35dp",
	layout_height="match_parent",
	gravity="center",
	{
			ImageView,
			padding = "5dp",
			src = getRes("heix"),
			background=getVerticalBG({0xffE6E6E6,0xffE6E6E6},90),
			layout_width = "20dp",
			layout_height = "20dp",
			layout_marginRight = "5dp",
			onClick = 隐藏,
			onTouch = hanshu,
		}
	}
})




for i = 1,#sview do
_ENV["layout"..i] = {
	LinearLayout,
	layout_width = "430dp",
	layout_height = "wrap_content",
	gravity = "center_horizontal",
	orientation = "vertical"
}
for j = 1,#sview[i] do
_ENV["layout"..i][#_ENV["layout"..i]+1] = sview[i][j]
end
_ENV["layout"..i] = luajava.loadlayout(_ENV["layout"..i])
end
lays = {
	LinearLayout,
	gravity = "center_horizontal",
layout_height="match_parent",
layout_width="match_parent",
}
for i = 1,#stab do
lays[#lays+1] = _ENV["layout"..i]
end
lays = luajava.loadlayout({
	ScrollView,
	visibility = "visible",
	fillViewport = true,
	layout_height = "fill_parent",
	padding = "10dp",
	layout_width = "430dp",
	gravity = "center",
	lays
})
luajava.post(function()

	ckou = luajava.loadlayout {
		FrameLayout,
		orientation = "vertical",
		layout_height = "285dp",
		layout_width = "510dp",
		background=bglist[1],
		gravity = "center_horizontal",
		{LinearLayout,
			gravity='center',
			layout_height='match_parent',
			layout_width='match_parent',
			id='canv'
			
		},
				{LinearLayout,
			gravity='center',
			layout_height='match_parent',
			layout_width='match_parent',
			id='canvb'
			
		},
		{
			LinearLayout,
			layout_height = "wrap_content",
			layout_width = "510dp",
			orientation = "vertical",
			gravity = "center_horizontal",
			topbar,
			{LinearLayout,
			
			{
				ScrollView,
				layout_height = "250dp",
				layout_width = "80dp",
				layout_marginTop="2dp",
				layout_gravity = "center",
				{
					LinearLayout,
					layout_height = "40dp",
					layout_width = "wrap_content",
					gravity = "center",
					padding={"80dp","0dp","80dp","0dp"},
					menubar
				}},
			{LinearLayout,
				layout_height='match_parent',
				layout_width='1.5dp',
				background="#545454",
				layout_marginTop='10dp',
				layout_marginBottom='10dp',
				layout_marginLeft='10dp',
			},
			lays,
			},

		},
	}
	
	lmx1=luajava.loadlayout{
	LinearLayout,
	layout_height='40dp',
	layout_width='40dp',
	background=getRes('lmx')
}
lmx2=luajava.loadlayout{
	LinearLayout,
	layout_height='30dp',
	layout_width='30dp',
	background=getRes('lmx')
}
	floatWindow = luajava.loadlayout(
		{
			FrameLayout,
			layout_height = "wrap_content",
			layout_width = "wrap_content",
			orientation = "vertical",
			gravity = "center_horizontal",
			onTouch = hanshu,
			onClick = function() end,
			ckou,
			{
	FrameLayout,
	id='control',
	layout_height='40dp',
	layout_width='40dp',
	onClick=隐藏,
	onTouch=hanshu,
	lmx1,
	{LinearLayout,
		layout_height='40dp',
	layout_width='40dp',
	gravity='center',
		lmx2
	}
},

		})
	end)


if loadingBox~=nil then
	loadingBox['关闭']()
end
local function invoke()
mainLayoutParams.x = device.width/3
mainLayoutParams.y = device.height/3
window:addView(floatWindow,mainLayoutParams)
canvb:addView(parti2)
canv:addView(parti)
cvv:addView(particle2(左上角标题))
end

luajava.post(invoke)

切换(1)
luajava.runUiThread(function()
YoYoImpl:with("FadeIn"):duration(1700):playOn(floatWindow)
end)
changan.controlRotation2 = function(control, time)
luajava.runUiThread(function()
	import "android.view.animation.Animation"
	import "android.animation.ObjectAnimator"
	xuanzhuandonghua = ObjectAnimator:ofFloat(control, "rotation", {
		0, 360
	})
	xuanzhuandonghua:setRepeatCount(0)
	xuanzhuandonghua:setRepeatMode(Animation.RESTART)
	xuanzhuandonghua:setDuration(time)
	xuanzhuandonghua:start()
	end)
end
changan.controlRotation3 = function(control, time)
luajava.runUiThread(function()
	import "android.view.animation.Animation"
	import "android.animation.ObjectAnimator"
	xuanzhuandonghua = ObjectAnimator:ofFloat(control, "rotation", {
		360,0
	})
	xuanzhuandonghua:setRepeatCount(0)
	xuanzhuandonghua:setRepeatMode(Animation.RESTART)
	xuanzhuandonghua:setDuration(time)
	xuanzhuandonghua:start()
	end)
end
luajava.newThread(function()
	while true do
		if 显示==0 then
			changan.controlRotation2(lmx1,1000)
			changan.controlRotation3(lmx2,1000)
		end
		gg.sleep(2000)
	end
end):start()
yinll=1

qhkai=0
zhubj=floatWindow
qiehuan=function()
    if qhkai==0 then
    	yinll=0
        qhkai=1
        draw.remove()
        gg.toast("隐藏")
        luajava.runUiThread(function()
        YoYoImpl:with("FadeOut"):duration(300):playOn(zhubj)
		end)
        gg.sleep(400)
        luajava.runUiThread(function()
        zhubj:setVisibility(View.GONE)
        end)
    else
        qhkai=0
        yinll=1
        huiz()
        luajava.runUiThread(function() zhubj:setVisibility(View.VISIBLE) end)
        luajava.runUiThread(function()
        YoYoImpl:with("FadeIn"):duration(300):playOn(zhubj)
		
        end)
        
    end
end
shimmer = Shimmer();
luajava.runUiThread(function()
  shimmer:setDuration(2000)
  shimmer:setStartDelay(50)
  for i=1,#stab do
  	shimmer:start(_ENV["jm"..i])
  end
end)
while true do
if tuic==1 then break end
if 音量键 then
jianting3(qiehuan)
end
gg.sleep(330)
end


luajava.setFloatingWindowHide(false)
luajava.setFloatingWindowHide(false)

luajava.post(function()
	window:removeView(floatWindow)
	end)
end
hardv1=getRes("star2")
hardv2=getRes("star1")
function hardware()
if hdw then
	hdw=false
	hardv:setImageDrawable(hardv2)
	parti = luajava.post(particle)
	luajava.post(function() canv:addView(parti) end)
else
	hdw=true
	hardv:setImageDrawable(hardv1)
	luajava.post(function() canv:removeView(parti) end)
	parti:destroy()
	parti=nil
end
end

function getButtonBG()
local selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, getVerticalBG({0x55545454,0x55545454},15))
selector:addState({
	-android.R.attr.state_pressed
}, getVerticalBG({0x44ffffff,0x44ffffff},15,4,0xff232323))
return selector
end
buts={}
heir=getRes("heir")
function changan.button(txt,func,txtc)
if not txt then txt = "未设置" end
if not txtc then txtc="#ffffff" end
local tid="Cbutton"..guid()
buts[tid]=luajava.loadlayout(
	{
		LinearLayout,
		layout_width = '400dp',
		layout_height = "wrap_content", {
			LinearLayout,
			layout_width = "fill_parent",
			gravity = "center_vertical",
			layout_marginTop = "5dp",
			layout_marginBottom = "5dp",
			layout_marginLeft='20dp',
			layout_marginRight='20dp',
			background = getButtonBG(),
			padding="10dp",
			onClick = function() 
				changan.controlWater(buts[tid],300)
			luajava.newThread(func):start() end,
			{
				TextView,
--id = luajava.newId(tid),
				textColor = txtc,
				text = txt,
				textSize = "13sp",
				layout_height = "wrap_content",
				layout_width = "fill_parent",
				layout_weight=1,
			},{ImageView,
				src=heir,
				layout_height="14dp",
				layout_width="14dp",
				
			}
		}})
return buts[tid]
end
function getShape3()
jianbians = luajava.loadlayout({
	GradientDrawable,
	type = "linear",
	angle = "135",

})
jianbians:setCornerRadius(12)
jianbians:setOrientation(GradientDrawable.Orientation.TL_BR)
jianbians:setColors({
	0xff000000,0xff000000
})
jianbians:setStroke(0,0xffffffff)--边框宽度和颜色
return jianbians
end
function getShape4()
jianbians = luajava.loadlayout({
	GradientDrawable,
	type = "linear",
	angle = "135",

})
jianbians:setCornerRadius(20)
jianbians:setOrientation(GradientDrawable.Orientation.TL_BR)
jianbians:setColors({
	0x44ffffff,0x44ffffff
})
jianbians:setStroke(0,0xffffffff)--边框宽度和颜色
return jianbians
end

slcta=getCorner({0xaa161616,0xaa161616},15,4,0xffd9d9d9,0,25,0,25)
slctb=getCorner({0x66ffffff,0x66ffffff},15,4,0xff232323,0,25,0,25)
function getShape(tmp0,tmp1,tmp2,tmp3)
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(tmp0)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors(tmp1)
jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
jianbians:setStroke(0,tmp3)--边框宽度和颜色
return jianbians
end
function getShape0(tmp0,tmp1,tmp2,tmp3)
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(tmp0)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({
	tmp1,tmp2
})
jianbians:setOrientation(GradientDrawable.Orientation.TOP_BOTTOM)
jianbians:setStroke(5,tmp3)--边框宽度和颜色
return jianbians
end
function getShape2(tmp0,tmp1,tmp2,tmp3)
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(tmp0)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors(tmp1)
jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
jianbians:setStroke(0,tmp3)--边框宽度和颜色
return jianbians
end
switchs={}
function getShape(tmp0,tmp1,tmp2,tmp3)
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(tmp0)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors(tmp1)
jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
jianbians:setStroke(8,tmp3)--边框宽度和颜色
return jianbians
end
function getShape2(tmp0,tmp1,tmp2,tmp3)
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(tmp0)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors(tmp1)
jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
jianbians:setStroke(32,tmp3)--边框宽度和颜色
return jianbians
end
check1 = getVerticalBG({0xffB3B3B3,0xffB3B3B3},360)
check2 = getVerticalBG({0xff30B341,0xff30B341},360)
checkbg1 = getVerticalBG({0xffffffff,0xffffffff},360,8,0x00ffffff)
checkbg2 = getVerticalBG({0xffffffff,0xffffffff},360,8,0x00ffffff)
function changan.intcheck(name,func1,func2)
nid = name..guid()
_ENV[nid] = luajava.loadlayout({
	FrameLayout,
	id = luajava.newId(nid),
	background = check1,
	layout_width = '40dp',
	layout_height = '20dp',
	padding = "0dp",
	{
		LinearLayout,
		layout_gravity = "left|center",
		id = luajava.newId(nid.."k"),
		background = checkbg1,
		layout_width = '20dp',
		layout_height = '20dp',
	}, {
		LinearLayout,
		visibility = "gone",
		layout_gravity = "right|center",
		id = luajava.newId(nid.."g"),
		background = checkbg2,
		layout_width = '20dp',
		layout_height = '20dp',
	}
})
local func = 开关3(name,func1,func2,nid)
if not name then name = "未设置" end
local rest = luajava.loadlayout({
	LinearLayout,
	layout_width = '105dp',
	layout_height = "42dp",
	layout_marginTop = "1dp",
	layout_marginBottom = "1dp",
	padding = "1dp",
	{
		LinearLayout,
		onClick = function() luajava.newThread(function() func() end):start() end,
		layout_width = 'fill_parent',
		layout_height = "40dp",
		gravity = "center_vertical",
		background = luajava.loadlayout({
			GradientDrawable,
			color = "#0038393D",
			cornerRadius = 13
		}),
		{
			TextView,
			gravity = "center",
			text = name,
			textColor = "#ffffff",
			textSize = "11sp",
--layout_marginLeft="8dp",
			layout_width = '55dp',
		},
		_ENV[nid]}
})

return rest
end

function changan.check(cklist)
local rest = {
	GridLayout,
	columnCount = '3',
	layout_width = 'match_parent',
	layout_height = "wrap_content",
	layout_marginLeft = "1dp",
	layout_marginRight = "1dp",
	gravity = "center"

}
for i = 1,#cklist do
local name = cklist[i][1]
local func1 = cklist[i][2]
local func2 = cklist[i][3]
if not name then name = "未设置" end
rstt = changan.intcheck(name,func1,func2)
rest[#rest+1] = rstt
end
return luajava.loadlayout({
	LinearLayout,rest
})
end
changan.controlRotation9 = function(control, time,t)
luajava.runUiThread(function()
	import "android.view.animation.Animation"
	import "android.animation.ObjectAnimator"
	xuanzhuandonghua = ObjectAnimator:ofFloat(control, "rotation", {
		time,t
	})
	xuanzhuandonghua:setRepeatCount(0)
	xuanzhuandonghua:setRepeatMode(Animation.RESTART)
	xuanzhuandonghua:setDuration(400)
	xuanzhuandonghua:start()
	end)
end
function visi (tid , ttid)
vibra:vibrate(4)
local tview = luajava.getIdValue (tid)
local ttview = luajava.getIdValue (ttid)
if not tview then
return 0
end
if tonumber (tostring (tview : getVisibility ())) == 8.0 then
tview : setVisibility (View.VISIBLE)
YoYoImpl:with("FadeIn"):duration(200):playOn(boxes[tid])
changan.controlRotation9(boxpic[tid],0,90)
else
	tview : setVisibility (View.GONE)
changan.controlWater (_ENV [tid.."6"] , 200)
changan.controlRotation9(boxpic[tid],90,0)
end
end
boxes = {} boxpic = {}
function changan.box (views)
local tid = "box"..guid ()
boxpic[tid] = luajava.loadlayout {
	ImageView ,
	src = getRes("hei_right"),
	layout_width = "24dp" ,
	layout_height = "24dp" ,
}
luajava.runUiThread(function()
	boxpic[tid]:setColorFilter(0xffffffff)
end)
local ttid = tid.."6"
local t1id = guid ()
firadio = {
	LinearLayout ,
	layout_width = '400dp' ,
	layout_height = "wrap_content" ,
	layout_marginTop = "2dp" ,
	layout_marginBottom = "2dp" ,
	orientation = "vertical" ,
	padding={'20dp','0dp','20dp','0dp'}
}
if type (views [1]) == "string" or type (views [1]) == "number" then
firadio [# firadio + 1] = {
	LinearLayout ,
	layout_width = 'fill_parent' ,
	layout_height = "40dp" ,
	gravity = "center_vertical" ,
	layout_marginTop = "2dp" ,
	layout_marginBottom = "4dp" ,
	onClick = function ()
	visi (tid , ttid)
	end
	,
	background = getButtonBG(),
	{
		TextView , text = views [1] ,
		textSize = "13sp" ,
		layout_marginLeft = "15dp" ,
		layout_width = "match_parent" ,
		layout_weight=1,
		textColor = "#ffffff" ,
		gravity = "left" ,
	},{
		LinearLayout ,
		padding={"0dp","0dp","10dp","0dp"},
		layout_width = "30dp" ,
		layout_height = "30dp" ,
		gravity = "center",
		boxpic[tid],
	}
} else
	gg.alert ("changan.box的table内第一个元素必须是string") os.exit ()
end
radios = {
	LinearLayout ,
	layout_marginLeft = "0dp" ,
	layout_marginRight = "0dp" ,
	orientation = "vertical" ,
	visibility = "gone" ,
	id = luajava.newId (tid) ,
	padding = "0dp" ,
	layout_width = 'fill_parent' ,
}
for i = 2 , # views do
radios [# radios + 1] = views [i]
end
boxes[tid] = luajava.loadlayout(radios)
firadio [# firadio + 1] = boxes[tid]
_ENV [t1id] = luajava.loadlayout (firadio)
return _ENV [t1id]
end

chazhi = {} chajv = {}

function changan.seek(name,bian,smin,smax,nows)
_ENV[bian] = nows
thum = getShape2(
	45,
	{
		0xff008BFF,0xffA32CFF
	},
	4,0xffffffff)
thum:setSize(60, 60)
smin = tonumber(smin) smax = tonumber(smax)
chajv[bian] = smax-smin
chazhi[bian] = 1-smin
if smin == nil then smin = 1 smax = 10 end
truesmin = 1
truesmax = truesmin+chajv[bian]
if not nows then nows = smin tnows = (smin-nows)
else
	tnows = (nows-smin)+1
end
if _ENV[bian] == nil then _ENV[bian] = 1.0 end
if not name then name = "未设置" end
local names = name..guid()
rest = luajava.loadlayout({
	LinearLayout,
	layout_width = '400dp',
	layout_height = "30dp",
	layout_marginRight = "2dp",
	background = getShape4(),
	{
		LinearLayout,
		layout_width = '390dp',
		layout_marginTop = "5dp",
		layout_marginBottom = "5dp",
		layout_marginLeft = "10dp",
		layout_marginRight = "10dp",
		gravity = "center_vertical",
		{
			TextView,
			gravity = "top",
			textColor = txtco,
			text = name..":"..nows,
			id = luajava.newId(names),
			layout_width = '110dp',
			layout_marginLeft = "5dp",
			layout_marginRight = "0dp",
		},
		{
			SeekBar,
			layout_weight = 1,
			layout_marginRight = "20dp",
			min = truesmin,
			max = truesmax,
			progress = tnows,
			progressDrawable = {
				getShape3()},
			thumb = thum,
			onSeekBarChange = {
				onProgressChanged = function(SeekBar, var2, var3)
				if not var3 then
				return
				end
				local resultvar = tonumber(string.sub(var2,0,-3))-chazhi[bian]
				luajava.runUiThread(function()
					luajava.getIdValue(names):setText(name..":".. resultvar)
					end)
				_ENV[bian] = resultvar
				end
			}}
	}})

return rest
end

function getShape(tmp0,tmp1,tmp2,tmp3)
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(tmp0)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors(tmp1)
jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
jianbians:setStroke(7,tmp3)--边框宽度和颜色
return jianbians
end
function getShape2(tmp0,tmp1,tmp2,tmp3)
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(tmp0)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors(tmp1)
jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
jianbians:setStroke(24,tmp3)--边框宽度和颜色
return jianbians
end

switches = {}
function 开关swc(name,func1,func2,nid)
local sname = nid
local localname=name
name = name..guid()
_ENV[name] = "关"
if func1 == nil then func1 = "" end
if func2 == nil then func2 = "" end
if type(func1) == "function" then
local outfunc=function()
namers = _ENV[name]
if namers ~= "开" then
vibra:vibrate(9)
luajava.runUiThread(function()
	luajava.getIdValue(nid.."k"):setVisibility(View.GONE)
	YoYoImpl:with("ZoomInLeft"):duration(600):playOn(switches["2s"..sname])
	luajava.getIdValue(nid.."g"):setVisibility(View.VISIBLE)
luajava.getIdValue(nid):setBackground(checkbg)
	end)
_ENV[name] = "开"

pcall(func1)
else
	vibra:vibrate(9)
luajava.runUiThread(function()
	luajava.getIdValue(nid.."g"):setVisibility(View.GONE)
	YoYoImpl:with("ZoomInRight"):duration(600):playOn(switches["1s"..sname])
	luajava.getIdValue(nid.."k"):setVisibility(View.VISIBLE)
luajava.getIdValue(nid):setBackground(checkbga)
	end)
_ENV[name] = "关"
pcall(func2)
end
end
if localname=="摇一摇隐藏UI" then yyfunc=outfunc end
if localname=="音量键隐藏UI" then ylfunc=outfunc end
return outfunc
end
end

function changan.switch(name,func1,func2,miaoshu)
if not checkbg then

checkbga = getVerticalBG({0xffB3B3B3,0xffB3B3B3},360)
checkbg = getVerticalBG({0xff30B341,0xff30B341},360)
switchbg1 = getVerticalBG({0xffffffff,0xffffffff},360,4,0x00ffffff)
switchbg2 = getVerticalBG({0xffffffff,0xffffffff},360,4,0x00ffffff)
end
nid = name..guid()
local func = 开关swc(name,func1,func2,nid)
if not name then name = "未设置" end
switches["1s"..nid] = luajava.loadlayout {
	FrameLayout,
	layout_width = '40dp',
	layout_height = '20dp',
	gravity = "center_vertical",
	padding = {
		"1dp","0dp","1dp","0dp"
	},
	{
		LinearLayout,
		layout_gravity = "left|center_vertical",
		id = luajava.newId(nid.."k"),
		background = switchbg1,
		onClick = function() luajava.newThread(function() func() end):start() end,
		layout_width = '17dp',
		layout_height = '17dp',
		
	},
}
switches["2s"..nid] = luajava.loadlayout {
	FrameLayout,
	onClick = function() luajava.newThread(function() func() end):start() end,
	layout_width = '40dp',
	layout_height = '20dp',
	gravity = "center_vertical",
	padding = {
		"1dp","0dp","1dp","0dp"
	}
	, {
		LinearLayout,
		visibility = "gone",
		layout_gravity = "right|center_vertical",
		id = luajava.newId(nid.."g"),
		background = switchbg2,
		onClick = function() luajava.newThread(function() func() end):start() end,
		layout_width = '17dp',
		layout_height = '17dp',

		
	}
}
rest = luajava.loadlayout({
	LinearLayout,
	elevation = "5dp",
	layout_width = '400dp',
	layout_height = "48dp",
	gravity = "center_vertical",
	padding={'20dp','0dp','20dp','0dp'},
	{
		LinearLayout,
		layout_width = 'fill_parent',
		layout_height = "40dp",
		gravity = "center_vertical",
		background = getButtonBG(),
		padding = {
		"0dp","0dp","6dp","0dp"
	},
		{
			TextView,
			gravity = "top",
			text = name,
			textColor = "#ffffff",
			textSize = "13sp",
			layout_weight = 1,
			layout_width = '80dp',
			layout_marginLeft = "10dp",
			layout_marginRight = "20dp",
		},
		{
			TextView,
			gravity = "center",
			layout_height = "match_parent",
			text = miaoshu,
			textSize = "11sp",
			layout_width = "wrap_content",
			layout_marginLeft = "-50dp",
			layout_weight = 1,
			textColor = "#A5A5A5",
		},
		{
			FrameLayout,
			id=luajava.newId(nid),
			background = checkbga,
			elevation = "1dp",
			onClick = function() luajava.newThread(function() func() end):start() end,
			layout_width = 'wrap_content',
			layout_height = 'wrap_content',
			gravity = "left",
			padding="1dp",
			switches["1s"..nid],switches["2s"..nid]
		}}
})
return rest
end
function 开关3(name,func1,func2,nid)
	local cname=name
name = name..guid()
_ENV[name] = "关"
if func1 == nil then func1 = "" end
if func2 == nil then func2 = "" end
if type(func1) == "function" then
return function()
namers = _ENV[name]
if namers ~= "开" then
luajava.runUiThread(function()
	luajava.getIdValue(nid.."k"):setVisibility(View.GONE)
	luajava.getIdValue(nid.."g"):setVisibility(View.VISIBLE)
	luajava.getIdValue(nid):setBackground(check2)
	end)
_ENV[name] = "开"
vibra:vibrate(10)
pcall(func1)
else
	luajava.runUiThread(function()
	luajava.getIdValue(nid.."g"):setVisibility(View.GONE)
	luajava.getIdValue(nid.."k"):setVisibility(View.VISIBLE)
	luajava.getIdValue(nid):setBackground(check1)
	end)
_ENV[name] = "关"
vibra:vibrate(10)

pcall(func2)
end
end
end
end
function getShape22(tmp0,tmp1,tmp2,tmp3)
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(tmp0)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({
	tmp1,tmp2
})
jianbians:setStroke(3,tmp3)--边框宽度和颜色

return jianbians
end
function getShape00(tmp0,tmp1,tmp2,tmp3)
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(tmp0)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({
	tmp1,tmp2
})
return jianbians
end
function launch(appstart)
local loadBox = getLoadingBox('正在启动游戏\n'..appstart)
loadBox['显示']()
if appstart ~= nil then
gg.setProcess(appstart)
gg.sleep(500)
if tostring(gg.getTargetPackage()) == appstart then
gg.toast("正在启动游戏")
gg.processKill()
tuichu=true
luajava.setFloatingWindowHide(false)
os.exit()
end
gg.toast("正在启动游戏...")
app.startActivity(appstart)
jci=0
--gg.sleep(5000)
while true do
	gg.setProcess(appstart)
	gg.sleep(400)
	if tostring(gg.getTargetPackage()) == appstart then
		loadBox['关闭']()
		gg.alert("启动成功")
	else
		jci=jci+1
		if jci==14 then
			loadBox['关闭']()
			gg.alert("自动获取进程失败\n请手动选择游戏进程")
			gg.setProcessX()
			break
		end
	end
	gg.sleep(100)
end

end
end
function card(cdv)
logo=cdv[1]
name=cdv[2]
tags=cdv[3]
func=cdv[4]
if not x then x = 2 end
tag = {
	LinearLayout,
}
for i = 1,#tags do
tag[#tag+1] = {
	TextView,
	background = getShape22(45,0x00FF9700,0x00FF9700,0xffFF9700),
	layout_height = "20dp",
	padding = "2dp",
	textColor = 0xffFF9700,
	layout_marginLeft = "10dp",
	gravity = "center_vertical",
	text = " "..tags[i].." ",
	textSize = "9sp",
}
end
tags = tag
tmp = luajava.loadlayout(
	{
		FrameLayout,
		layout_height = "wrap_content",
		layout_width = "fill_parent",
		{
			LinearLayout,
			orientation = "vertical",
			layout_height = "100dp",
			layout_marginLeft = "14dp",
			layout_marginRight = "14dp",
			layout_marginTop = "10dp",
			layout_marginBottom = "10dp",
			layout_width = "match_parent",
			background=getVerticalBG({0x22ffffff,0x22ffffff},8,5,0xffffffff),
			{
				LinearLayout,
				layout_marginLeft = "10dp",
				layout_marginRight = "10dp",
				layout_marginTop = "10dp",
				layout_marginBottom = "10dp",
				layout_width = "match_parent",
				layout_height = "40dp",
				{
					ImageView,
					layout_width = "40dp",
					layout_height = "40dp",
					background = 获取图片(logo),
				},
				{
					TextView,
					layout_height = "40dp",
					layout_marginLeft = "10dp",
					gravity = "center_vertical",
					text = "启动",
					textColor="#161616",
					textSize = "13sp",
				}
			},
			tags
		},
		{
			LinearLayout,
			onClick = function()
			luajava.newThread(function() 隐藏() func() end):start() end,
			background = getShape00(90,0xff28FEB9,0xff28FEB9,0xff28FEB9),
			layout_height = "25dp",
			layout_width = "55dp",
			layout_gravity = "right",
			layout_marginRight = "30dp",
			layout_marginTop = "70dp",
			gravity = "center",
			{
				ImageView,
				layout_height = "20dp",
				layout_width = "15dp",
				background = getRes("rw1"),
			},
			{
				TextView,
				textColor = "#000000",
				text = name,
				textSize = "10sp",
				layout_height = "20dp",
				gravity = "center",
				layout_width = "30dp",
			}
		}
	})
return tmp
end
cxk=获取图片("/sdcard/长安/图片/cxk")
launchui = luajava.loadlayout({
	ScrollView,
	layout_height = "match_parent",
	fillViewport=true,
	layout_width = "fill_parent",
	padding={"0dp","0dp","0dp","10dp"},
	{
	LinearLayout,
		layout_height = "wrap_content",
		layout_width = "fill_parent",
		gravity = "center_horizontal",
		orientation="vertical",
		card({"/sdcard/长安/图片/pubgT",
						"PUBG（台湾服）",
						{
							"PUBG🐔启动",
							"🐔台湾服"
						},
						function()
						launch("com.rekoo.pubgm")
						end
					}),
					card({"/sdcard/长安/图片/pubgG",
						"PUBG（全球服）",
						{
							"PUBG🐔启动",
							"🐔全球服"
						},
						function()
						launch("com.tencent.ig")
						end
					}),
					card({"/sdcard/长安/图片/pubgY",
						"PUBG（越南服）",
						{
						    "PUBG🐔启动",
						   	"🐔越南服"
						},
						function()
						launch("com.vng.pubgmobile")
						end
					}),
					card({"/sdcard/长安/图片/pubgR",
						"PUBG（日韩服）",
						{
						    "PUBG🐔启动",
						    "🐔日韩服"
						},
						function()
						launch("com.pubg.krmobile")
						end
					})
	}})


nowbg=1
changan.controlFlip = function(control,time)
luajava.runUiThread(function()
	import "android.view.animation.Animation"
	import "android.animation.ObjectAnimator"
	xuanzhuandonghua = ObjectAnimator:ofFloat(control, "rotationY", {
		0, 360
	})
	xuanzhuandonghua:setRepeatCount(0)
	xuanzhuandonghua:setRepeatMode(Animation.REVERSE)
	xuanzhuandonghua:setDuration(time)
	xuanzhuandonghua:start()
	end) end
	
	hardv1=getRes("star2")
hardv2=getRes("star1")
function hardware()
if hdw then
	hdw=false
	hardv:setImageDrawable(hardv2)
	parti = luajava.post(particle)
	luajava.post(function() canv:addView(parti) end)
else
	hdw=true
	hardv:setImageDrawable(hardv1)
	luajava.post(function() canv:removeView(parti) end)
	parti:destroy()
	parti=nil
end
end
function changebg()
	if nowbg<#bglist then
		nowbg=nowbg+1
	else
		nowbg=1
	end
	luajava.runUiThread(function()
	ckoubg=bglist[nowbg]
	ckou:setBackground(ckoubg)
	YoYoImpl:with("FadeIn"):duration(1000):playOn(floatWindow)
	end)
end
iseng=false
function getTimeStamp(t)
local str = os.date("%m-%d-%H:%M:%S",t)
return str
end

wyyget="http://120.24.160.246:3000/"
function huoqu(txt)
return table.json(gg.makeRequest(wyyget.."song/url/v1?id="..txt.."&level=standard").content)
end
function souyy(txt)
return table.json(gg.makeRequest("http://music.163.com/api/search/get?s="..txt.."&type=1&offset=0&total=true&limit=10").content)
end
function develo(tabb)
gg.alert(tostring(tabb))
end
function develo2(tabb)
gg.copyText(tostring(tabb))
end
function tablekIn(tbl, key)
    if tbl == nil then
        return false
    end
    for k, v in pairs(tbl) do
        if k == key then
            return true
        end
    end
    return false
end
function getbg()
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(15)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({0x11000000,0x11000000})
jianbians:setStroke(4,"0xddffffff")--边框宽度和颜色

selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, luajava.loadlayout {
	GradientDrawable,
	color = "#88000000",
	cornerRadius = 12
}) -- 点击时候的背景
selector:addState({
	-android.R.attr.state_pressed
}, jianbians) -- 没点击的背景
return selector
end
function searchmusic()
	if not lasttm then
		lasttm = os.time()
	else
		if os.time() - lasttm <= 5 then
			gg.alert("请在" .. (5 - (os.time() - lasttm)) .. "秒冷却后搜索")
			return 0
		end
	end
	if not wryt then
	else
		runnable = luajava.getRunnable(function()
			luajava.getIdView("搜索列表"):removeView(wyr)
		end)
		handler = luajava.getHandler()
		handler:post(runnable)
	end
	mustxt = luajava.getIdView("搜索"):getText()
	if string.len(tostring(mustxt)) <= 2 or tostring(mustxt) == nil then
		gg.alert("至少输入2个字符")
		return 0
	end
	mustxt = tostring(mustxt)
	luajava.runUiThread(function()
		luajava.getIdView("jzz"):setVisibility(View.VISIBLE)
		luajava.getIdView("stxt"):setVisibility(View.GONE)
	end)
	lasttm = os.time()
	mustable = souyy(mustxt)
	mustable = mustable.result.songs

	-- print(mustable)

	musnames = {}
	musids = {}
	musarts = {}
	musictable = {}
	for k, v in pairs(mustable) do
		musictable[#musictable + 1] = v
	end
	-- gg.alert(tostring(mustable))
	-- gg.alert(tostring(musictable))
	-- gg.copyText(tostring(mustable))
	-- gg.alert(#musictable)
	wrfun = {}
	wryt = {
		LinearLayout,
		id = luajava.newId("搜索结果"),
		layout_marginTop = "5dp",
		layout_marginBottom = "5dp",
		orientation = "vertical"
	}
	for i = 1, #musictable do
		musid = musictable[i].id
		-- print('musid',musid)

		-- musid = musictable[i].album.id
		-- print('musid',musid)

		musids[#musids + 1] = musid
		musname = musictable[i].name
		if tablekIn(musictable[i], "transNames") ~= false then
			musname = musname .. "\n(" .. musictable[i].transNames[0] .. ")"
		end
		musnames[#musnames + 1] = musname
		musart = musictable[i].artists[0].name
		musarts[#musarts + 1] = musart
		wryt[#wryt + 1] = {
			LinearLayout,
			orientation = "vertical",
			layout_marginTop = "2dp",
			layout_marginBottom = "2dp",
			background = getbg(),
			id = luajava.newId("音" .. musid),
			onClick = function()
				thread = luajava.getThread(function()
					bofang(musname, musid)
				end)
				thread:start()
			end,
			{
				TextView,
				layout_marginTop = "5dp",
				textSize = "15sp",
				textColor = "#EF8A5C",
				layout_marginBottom = "0dp",
				text = musname,
				layout_hight = "10dp",
				layout_width = "228dp",
				gravity = "center"

			},
			{
				TextView,
				layout_marginTop = "0dp",
				textColor = "#ffffff",
				textSize = "12sp",
				layout_marginBottom = "5dp",
				text = musart,
				layout_hight = "10dp",
				layout_width = "200dp",
				gravity = "center"

			}

		}
		-- gg.sleep(50)
		wryt[#wryt].onClick = function()
			-- (function()
			-- 	bofang(musnames[i] .. musarts[i], musids[i])
			-- end):start()
			luajava.startThread(function()
				bofang(musnames[i] .. musarts[i], musids[i])
			end)
		end
	end
	wyr = luajava.loadlayout(wryt)
	runnable = luajava.getRunnable(function()
		luajava.getIdView("搜索列表"):addView(wyr)
	end)
	handler = luajava.getHandler()
	handler:post(runnable)
	luajava.runUiThread(function()
		luajava.getIdView("jzz"):setVisibility(View.GONE)
		luajava.getIdView("stxt"):setVisibility(View.VISIBLE)
	end)
	-- gg.alert(tostring(wrfun))
end
function bofang(gqmz, gdmn)
	luajava.runUiThread(function()
		luajava.getIdView("搜索结果"):setVisibility(View.GONE)
		luajava.getIdView("加载"):setVisibility(View.VISIBLE)

	end)

	gg.playMusic("http://music.163.com/song/media/outer/url?id="..gdmn..".mp3" or huoqu(gdmn).data[0].url)
	-- gg.sleep(2000)
	luajava.runUiThread(function()
		luajava.getIdView("加载"):setVisibility(View.GONE)
		luajava.getIdView("搜索结果"):setVisibility(View.VISIBLE)
	end)
end
stxt = {
	TextView,
	text = "搜索",
	textColor="#ffffff",
	background=getbg(),
	layout_height="match_parent",
	visibility = "visible",
	gravity="center",
	layout_marginRight="10dp",
	id = luajava.newId("stxt"),
	layout_marginLeft = "3dp",
	textSize = "15sp",
	padding={"13.5dp","0dp","13.5dp","0dp"},
	onClick = function()
		thread = luajava.getThread(function()
			searchmusic()
		end)
		thread:start()
	end
}
jzz = {
	TextView,
	text = "加载中",
	visibility = "gone",
	id = luajava.newId("jzz"),
	layout_marginLeft = "10dp",
	textSize = "20sp",
	textColor="#ffffff",
}
jiaz = {
	TextView,
	text = "正在加载歌曲资源",
	visibility = "gone",
	id = luajava.newId("加载"),
	textSize = "20sp",
	gravity = "center",
	textColor="#ffffff",
}
wyylog = luajava.loadlayout({
	LinearLayout,
	orientation="vertical",
	layout_width = "match_parent",
	{
		ScrollView,
		layout_hight = "220dp",
		gravity="center_horizontal",
		layout_width = "match_parent",
		{
			LinearLayout,
			layout_width = "match_parent",
			{LinearLayout,
			padding="4dp",
			gravity="center",
			orientation="vertical",
			id=luajava.newId("固定音乐"),
			},
			
			id = luajava.newId("搜索列表"),
			layout_hight = "300dp",
			orientation = "vertical",
			layout_width = "match_parent",
			gravity="center_horizontal",
			
			{
				LinearLayout,
				orientation = "horizontal",
				layout_width = "match_parent",
				padding={"10dp","0dp","10dp","0dp"},
				{
					EditText,
					hint = "搜索歌曲名称",
					textColor="#ffffff",
					id = luajava.newId("搜索"),
					background = getbg(),
					focusableInTouch = "false",
					focusable = "false",
					selectAllOnFocus = "true",
					singleLine = "true",
					layout_weight=1,
					gravity="center",
					layout_width = "match_parent"
				},
				stxt,
				jzz
			},
			jiaz
		}
	}
})



vidnum=1
function freshurl()
if vidnum>=#视频链接s then
	vidnum=1
else
	vidnum=vidnum+1
end

vidurl=视频链接s[vidnum]
end



颜色表={--切换颜色的列表
	{0xff33AF61,0xff5ADAD7},
	{0xffFFB94D,0xffFF854D},
	{0xffFF0023,0xffAD3ACD},
	{0xff008CFF,0xffFF8AFB},
	{0xff00FF7B,0xff0049FF},
	{0xffFF95F2,0xff514CFF}
}

huiz=function()
--绘制内容写在这里面不然会消失
	
	
	
	
end
bglist = {
---背景图
	getVerticalBG({0xdd161616,0xdd161616},20),
	"https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/sky",
	"http://jiami.guimei.work/a/1710098358.jpg",
	"http://jiami.guimei.work/a/1710072009.jpg",
	getHorizontalBG({0xaa116EFF,0xaaFF94C8},20),
	getHorizontalBG({0x8800D653,0xaa27A3FF},20),
	getHorizontalBG({0xaaDA2C3E,0xaaFF9829},20),
	getHorizontalBG({0xaaA46FFF,0xaaFF7FD4},20),
	getHorizontalBG({0x55161616,0x55161616},20,5,0xffffffff),

	

}

左上角标题='长安息白定制UI'
--悬浮窗
xfcpic = "https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/Picsart_24-02-15_12-38-01-733.png"
视频链接="https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/cxkmp4"
视频在第几页=2

stab = {
	{   
		"启动","LAUNCH","/sdcard/长安/图片/bm_launch"
	},
	{    --主页= HOMEPAGE  公告= PROCLAMATION
	"主页","PROCLAMATION","/sdcard/长安/图片/yehu"
	},
	{   --
		"防封","FANGFENG","/sdcard/长安/图片/safe"
	},
	{
		"功能","FUNCTION","/sdcard/长安/图片/bm_gn"
	},
	{
		"美化","BEAUTIFY","/sdcard/长安/图片/mh"
	},
	{
		"音乐","MUSIC","/sdcard/长安/图片/bm_music"
	},
	{
		"设置","CONFIG","/sdcard/长安/图片/bm_sz"
	},

}


zidong = luajava.newThread(function()
	while true do
	if zdbf and 显示==1 then logvid = luajava.getIdView("video") logvid.start(logvid) end
	gg.sleep(500)
	end
	end)
url="https://api.qqsuu.cn/api/dm-xjj?type=video&apiKey=56ecfa25f1478b202b174b7e871a5a61"
--bloc = luajava.getBlock()
	vidd=luajava.loadlayout({
	VideoView,
	id = luajava.newId('video'),
	videoPath = 获取("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/cxkmp4"),
	layout_width = "300dp",
	layout_height = "120dp",
})

web6 = luajava.loadlayout({FrameLayout,
gravity="top|center_vertical",


}
)
zdbf=true
zidong:start()


视频链接s={---视频列表
	"https://cccimg.com/view.php/2917596247d8f23678432089589c8a49.mp4",
	"https://cccimg.com/view.php/4bb3446e0aa83c54e41cbec80fc4265a.mp4",
	"https://cccimg.com/view.php/bf4c790584f8b8f0dffeea5096bf89e8.mp4",
}

changan.menu({
	{
--第一页	
		launchui,
	},	{
---第二页
vidd,
changan.button("切换播放视频",
		function()
		luajava.runUiThread(function()
						logvid = luajava.getIdView("video")
						freshurl()
					logvid:setVideoPath(vidurl)
					end)
		end),
changan.button("切换背景",changebg),
changan.text("欢迎使用xx全防 TG@XXXXXX"),
	}, 	{
---第三页
	changan.button("选择进程",
		function()
	
		end),
	changan.text2("防闪区"),
		changan.switch(
			"LOGO防闪",
			function()
				
			end,
			function()
				
			end,
			"LOGO闪➕框架防闪"
		),
			changan.switch(
			"防86TP",
			function()
				
			end,
			function()
				
			end,
			"LOGO防86➕tp"
		),
	changan.text2("防封区"),	
		changan.switch(
			"LOGO防",
			function()
				
			end,
			function()
				
			end,
			"LOGO页面切屏开启"
		),
			changan.switch(
			"大厅防①",
			function()
				
			end,
			function()
				
			end,
			"大厅重新选进程开启"
		),
	}, {
---第四页
		changan.switch(
			"功能",
			function()
Rain="赵光义你个人坤 给我低调点 懂没懂 别草我了 你人坤"
gg.playMusic("https://fanyi.baidu.com/gettts?lan=zh&text="..Rain.."&spd=5&source=wise")		
			end,
			function()
		
			end
		),
		changan.box({
			"安全",
			changan.check({
				{
					"功能",
					function()

					end,
					function()

					end
				},
				{
					"功能",
					function()

					end,
					function()

					end
				},
				{
					"功能",
					function()

					end,
					function()

					end
				},

			}),
		}),--box结尾
		changan.box({
			"中危",
			changan.check({
				{
					"功能",
					function()

					end,
					function()

					end
				},
				{
					"功能",
					function()

					end,
					function()

					end
				},
				{
					"功能",
					function()

					end,
					function()

					end
				},

			}),
		}),--box结尾
		changan.box({
			"高危",
			changan.check({
				{
					"功能",
					function()

					end,
					function()

					end
				},
				{
					"功能",
					function()

					end,
					function()

					end
				},
				{
					"功能",
					function()

					end,
					function()

					end
				},

			}),
		}),--box结尾



	}, {
---第五页




	}, {
---第六页
	changan.button("停止播放", function()
				gg.playMusic("stop")
			end),
wyylog,


	}, {
---第七页


		
		changan.text("\n\n"),
		changan.button("切换背景",changebg),
		changan.button("退出",
			function()
			tuic=1
			end),

	},
})