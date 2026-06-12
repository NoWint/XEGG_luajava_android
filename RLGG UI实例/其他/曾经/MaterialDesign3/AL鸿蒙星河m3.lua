
if (rlgg.VERSION < 2.09) then
	gg.alert('请使用大于等于2.09版本的RLGG')
	os.exit()
end

local baseWindow = require 'floatingWindowManager2'

if not baseWindow.getContext then
	gg.alert('请重启一下RLGG')
	app.exit()
end

local context = baseWindow:getContext()

--[[

floatingWindowManager2 是基于RLGG开发的悬浮窗模块,帮助开发者高效实现UI

目前模块尚未完成开发,还有大量工作需要完成
暂时提供一个示例简单,具体自己探索实现 (后期逐步更新更多示例)

文档目前没写,如有疑惑可咨询我QQ507522729
]]

import 'com.google.android.material.imageview.ShapeableImageView'
import 'com.google.android.material.shape.CornerFamily'
import 'com.google.android.material.materialswitch.MaterialSwitch'
import 'com.google.android.material.button.MaterialButton'
import 'com.google.android.material.dialog.MaterialAlertDialogBuilder'
import 'com.google.android.material.slider.Slider'
import 'com.google.android.material.snackbar.Snackbar'
import 'com.google.android.material.sidesheet.SideSheetDialog'
import 'com.google.android.material.bottomsheet.BottomSheetDialog'
import 'com.google.android.material.bottomsheet.BottomSheetBehavior'
import 'androidx.coordinatorlayout.widget.CoordinatorLayout'
import 'com.google.android.material.progressindicator.LinearProgressIndicator'
import 'com.google.android.material.progressindicator.CircularProgressIndicator'
import 'com.google.android.material.checkbox.MaterialCheckBox'
import 'androidx.core.widget.NestedScrollView'
import 'android.widget.ScrollView'
import 'com.google.android.material.chip.ChipGroup'
import 'com.google.android.material.chip.Chip'
import 'android.widget.CompoundButton'
import 'android.graphics.drawable.Icon'
import 'com.google.android.material.radiobutton.MaterialRadioButton'

import 'android.widget.LinearLayout'
import 'android.widget.Button'
import 'android.widget.TextView'


function f1()
	gg.alert('功能1')
end

-- 浅色模式
--baseWindow:lightMode()

-- 深色模式
baseWindow:darkMode()


local info = {
	    example_version = '1.0.3',
		name = '云烛',
		appid = '70316',
		appkey = 'VoXbOQzNQBxNqneL',
		rc4key = '20WkZ1fG6MK2600W',
		version = '1.0',
		mi_type = '3'
	}




rlyunyz = getrlyunyz(info)
local json = json
homepage=true
channel=''
local MediaRecorder = luajava.bindClass("android.media.MediaRecorder")
local AudioSource = luajava.bindClass("android.media.MediaRecorder$AudioSource")
local OutputFormat = luajava.bindClass("android.media.MediaRecorder$OutputFormat")
local AudioEncoder = luajava.bindClass("android.media.MediaRecorder$AudioEncoder")
-- 获取录音管理器实例
local audioManager = context:getSystemService(context.AUDIO_SERVICE)
-- 获取录音源类型常量值
local sourceType = AudioSource.MIC

流光=true
摇一摇=true
if tonumber(device.width)==nil then
dwidth=1340
dheight=2300
else
dwidth=device.width
dheight=device.height
end
colorvs={}
Yunzhu = {} huiz = function() end
window = context:getSystemService("window") -- 获取窗口管理器
local function panduan(rec) fille,err = io.open(rec) if fille == nil then return false else return true end end
local function checkimg(tmp,ii)
if panduan("/sdcard/Yunzhu/图片/"..tmp) ~= true then
gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
luajava.download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..tmp,"/sdcard/Yunzhu/图片/"..tmp)
else
if file.length("/sdcard/Yunzhu/图片/"..tmp) <= 1 then
gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
luajava.download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..tmp,"/sdcard/Yunzhu/图片/"..tmp)
end
end
if panduan("/sdcard/Yunzhu/图片/"..tmp) ~= true then
gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
luajava.download("https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/"..tmp,"/sdcard/Yunzhu/图片/"..tmp)
else
	if file.length("/sdcard/Yunzhu/图片/"..tmp) <= 1 then
gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
luajava.download("https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/"..tmp,"/sdcard/Yunzhu/图片/"..tmp)
end
end
end
ckimg = {
'cc99d42e9d7b70',
'quarksearchw',
'ca_hm'
}

for i = 1,#ckimg do
jindu = i
checkimg(ckimg[i],i)
gg.toast("正在加载资源")
end
if panduan("/sdcard/Yunzhu/图片/tagcloud")~=true then
	file.unzip("/sdcard/Yunzhu/图片/cc99d42e9d7b70","/sdcard/Yunzhu/图片/")
end
BxCb =io.open('/sdcard/AS/图片/717620.png','r') 
 if BxCb == nil then 
download("https://vip.kyun.top/view.php/2219fcd7a3a7f4620152e30a6b18e2f9.png", "/sdcard/AS/图片/18e2f9.png") 
 download("https://vip.kyun.top/view.php/efeb3b942f9d9cde72421eae53717620.png", "/sdcard/AS/图片/717620.png") 
else 

--不用添加
end 
ByYxPink = io.open('/sdcard/AS/图片2.zip','r') --文件名判断是否有此文件
if ByYxPink == nil then --关键判断
file.mkdir("/sdcard/AS/")
gg.alert("检测到你还未下载资源,正在帮你下载请耐心等待,注意，如果卡在下载界面点空白处即可取消")
download("https://vip.kyun.top/down.php/5d12a31c929768184dfaddff060d0fa3.com","/sdcard/AS/图片2.zip")--检测未下载文件后 执行的内容
file.mkdir("/sdcard/AS/图片/")
file.mkdir("/sdcard/AS/配置文件/")
unzip("/sdcard/AS/图片2.zip","/sdcard/AS/图片/")---解压
else
--检测到已下载文件后 执行的内容
end


shimmer=dex.loadfile('/sdcard/Yunzhu/图片/Shimmer2.dex')
import "com.romainpiel.shimmer.Shimmer"
import "com.romainpiel.shimmer.ShimmerTextView"
local path = '/sdcard/Yunzhu/图片/tagcloud'
local dexloader = dex.loadfile(path)
local TagCloudView = dexloader:loadClass('com.moxun.tagcloudlib.view.TagCloudView')
local MyTagsAdapter = dexloader:loadClass('cn.rlyun.a3dtagcloudandroid.MyTagsAdapter')
local function newTagsAdapter(impl)
	local adapter = MyTagsAdapter()
	luajava.setInterface(adapter, 'setProxy', impl)
	return adapter
end

local function simpleTagCloudView(data)

	---@type ArrayList
	local items = ArrayList()
	for i, v in ipairs(data) do
		items:add(v)
	end

	local tagCloudView = TagCloudView(context)

	local adapter = newTagsAdapter({
		getCount = function()
			return items:size()
		end,
		getView = function(context, position, parent)
			return items:get(position)
		end,
		getItem = function(position)
			return items:get(position):getText()
		end,
		getPopularity = function()
			return 0
		end,
		onThemeColorChanged = function()
			
		end
	})
	tagCloudView:setAdapter(adapter)
	tagCloudView:setScrollSpeed(3)
	tagCloudView:setRadiusPercent(0.6)
	tagCloudView:setAutoScrollMode(0)
	
	return tagCloudView
end



local function newbg(gtvb1,gtvb4,gtvb5,g1,g2,g3,g4)
local jianbians = luajava.loadlayout({
GradientDrawable,
color = 0xff000000,
gradientType = GradientDrawable.LINEAR_GRADIENT,
orientation = GradientDrawable.Orientation.TOP_BOTTOM ,
})
jianbians:setColors(gtvb1)
jianbians:setStroke(gtvb4,gtvb5)--边框宽度和颜色
jianbians:setCornerRadii({g1,g1,g2,g2,g3,g3,g4,g4})
return jianbians
end
function newbg2(gtvb1,gtvb4,gtvb5,g1,g2,g3,g4)
local jianbians = luajava.loadlayout({
GradientDrawable,
color = 0xff000000,
gradientType = GradientDrawable.LINEAR_GRADIENT,
orientation = GradientDrawable.Orientation.TR_BL ,
})
jianbians:setColors(gtvb1)
jianbians:setStroke(gtvb4,gtvb5)--边框宽度和颜色
jianbians:setCornerRadii({g1,g1,g2,g2,g3,g3,g4,g4})
return jianbians
end

function particle2(co1,co2,cor)
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
    background-color: #000;
    border-radius: 50%;
    /* 发光效果 */
    box-shadow: 0 0 0 4px ]]..co1..[[,
    0 0 0 8px ]]..co1..[[,
    0 0 20px ]]..co2..[[;
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
    background: linear-gradient(90deg,]]..cor..[[,transparent);
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
parti2=particle2(
	"rgba(0,0,0,0.1)",
	"rgba(0,0,0,1)",
	"#909090")
function 获取图片(txt)
txt = string.url(txt,"de")
ntxt = string.sub(string.gsub(txt,"/","-"),-10,-1)
if string.find(tostring(txt),"http") ~= nil then
if panduan("/sdcard/Yunzhu/图片/"..ntxt) == false then
file.download(txt,"/sdcard/Yunzhu/图片/"..ntxt)
else
	if file.length("/sdcard/Yunzhu/图片/"..ntxt) <= 1 then
file.download(txt,"/sdcard/Yunzhu/图片/"..ntxt)
end
end
txt = "/sdcard/Yunzhu/图片/"..ntxt
end
if getting then gettingp[#gettingp+1]=txt end
return luajava.getBitmapDrawable(txt)
end
function 获取图片3(txt)
txt = string.url(txt,"de")
ntxt = string.sub(string.gsub(txt,"/","-"),-10,-1)
if string.find(tostring(txt),"http") ~= nil then
if panduan("/sdcard/Yunzhu/图片/"..ntxt) == false then
file.download(txt,"/sdcard/Yunzhu/图片/"..ntxt)
else
	if file.length("/sdcard/Yunzhu/图片/"..ntxt) <= 1 then
file.download(txt,"/sdcard/Yunzhu/图片/"..ntxt)
end
end
txt = "/sdcard/Yunzhu/图片/"..ntxt
end
return luajava.getBitmapDrawable(txt)
end
local function getRes(x)
return 获取图片("/sdcard/Yunzhu/图片/"..x)
end
local YoYoImpl = luajava.getYoYoImpl()
local vibra = context:getSystemService(Context.VIBRATOR_SERVICE)
local function getLayoutParams2()
LayoutParams2 = WindowManager.LayoutParams
layoutParams2 = luajava.new(LayoutParams2)
if (Build.VERSION.SDK_INT >= 26) then -- 设置悬浮窗方式
layoutParams2.type = LayoutParams2.TYPE_APPLICATION_OVERLAY
else
	layoutParams2.type = LayoutParams2.TYPE_PHONE
end

layoutParams2.format = PixelFormat.RGBA_8888 -- 设置背景
layoutParams2.flags = LayoutParams2.FLAG_NOT_TOUCH_MODAL -- 焦点设置Finish
layoutParams2.gravity = Gravity.CENTER -- 重力设置
layoutParams2.width = LayoutParams2.MATCH_PARENT -- 布局宽度
layoutParams2.height = LayoutParams2.MATCH_PARENT -- 布局高度

return layoutParams2
end

local function getLayoutParams()
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
local function particle()
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
    height: 130vw;
    /* 弹性布局 水平垂直居中 */
    display: flex;
    justify-content: center;
    align-items: center;
    /* 相对定位 */
    position: relative;
    background-color: #ffffff;
}
.circle{
    /* 绝对定位 */
    position: absolute;
    display: flex;
    justify-content: center;
    align-items: center;
    width: 40px;
    height: 40px;
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
    width: 40px;
    height: 40px;
    border-radius: 50%;
    /* 渐变背景 */
    background: linear-gradient(0deg,
                #FFE79B,
                #FFE186 30%,
                #FFEBAD 60%,
                #FFEBAD 100%);
    /* 模糊 */
    filter: blur(8px);
}
/* 黑圆 */
.circle::after{
    content: "";
    position: absolute;
    width: 34px;
    height: 34px;
    border-radius: 50%;
    background: #eeeeee;
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
parti=particle()
显2=false
function 隐藏2()
显2=true
chuangk:setVisibility(View.GONE)
control2:setVisibility(View.GONE)
smallc:setVisibility(View.VISIBLE)
end
function 显示2()
显2=false
mainLayoutParams.x=20
window:updateViewLayout(floatWindow, mainLayoutParams)

if 显示==1 then
	chuangk:setVisibility(View.VISIBLE)
	smallc:setVisibility(View.GONE)
else
	control2:setVisibility(View.VISIBLE)
	smallc:setVisibility(View.GONE)
	隐藏()
end
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
if mainLayoutParams.x<=0 then
	mainLayoutParams.x=0
end
mainLayoutParams.y = tonumber(y) + (event:getRawY() - RawY)
window:updateViewLayout(floatWindow, mainLayoutParams)
elseif Action == MotionEvent.ACTION_UP then
mainLayoutParams.x = tonumber(x) + (event:getRawX() - RawX)
if mainLayoutParams.x<=0 then
	mainLayoutParams.x=0
	if 显示==0 and 显2==false then 隐藏2() end
end
if mainLayoutParams.x>=20 then
	if 显2==true then 显示2() end
end
mainLayoutParams.y = tonumber(y) + (event:getRawY() - RawY)
window:updateViewLayout(floatWindow, mainLayoutParams)
end
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
import'android.hardware.*';
---@type android.hardware.SensorEventListener
local sensor = luajava.createProxy('android.hardware.SensorEventListener', {
	onSensorChanged = functions.debounce(function()
		if 摇一摇==false then return 0 end
		if qhkai~=0  then
			qhkai=0
			luajava.runUiThread(function()
	floatWindow:setVisibility(View.VISIBLE)
	YoYoImpl:with("FadeIn"):duration(300):playOn(floatWindow)
			end)
			else
			qhkai=1
luajava.newThread(function()
luajava.runUiThread(function()
	YoYoImpl:with("FadeOut"):duration(300):playOn(floatWindow)
	end)
gg.sleep(400)
luajava.runUiThread(function()
	floatWindow:setVisibility(View.GONE)
end)
draw.remove()
gg.toast("HIDE")
end):start()
			
		end
	end,500)
})


dexloader=dex.loadfile('/sdcard/YUNZHU/图片/classes3.dex')
MySensorManager = dexloader:loadClass('yaocn.rlyun.yaoyiyao.MySensorManager')


luajava.runOnUiThread(function()
	MySensorManager(context, sensor)
end)
mainLayoutParams = getLayoutParams()

import("android.media.AudioManager")
audi = context:getSystemService("audio")
mainLayoutParams = getLayoutParams()

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
--AudioManager.STREAM_BLUETOOTH_SCO,
}
yinl = {}
for i = 1,#audiotype do
yinl[i] = {}
yinl[i].type = audiotype[i]
yinl[i].min = audi:getStreamMinVolume(audiotype[i])
yinl[i].max = audi:getStreamMaxVolume(audiotype[i])
yinl[i].now = audi:getStreamVolume(audiotype[i])
end
yltype = 0
function jianting3(func)
yinln = {}
for i = 1,#audiotype do
yinln[i] = {}
yinln[i].type = audiotype[i]
yinln[i].now = audi:getStreamVolume(audiotype[i])
if yinln[i].now > yinl[i].now then
yinl[i].now = yinln[i].now
if yltype == 1 then
yltype = 0
func()
end
elseif yinln[i].now < yinl[i].now then
yinl[i].now = yinln[i].now
if yltype == 0 then
yltype = 1
func()
end
end
end
end
Yunzhu.controlWater = function(control,time)
luajava.runUiThread(function()
	import "android.animation.ObjectAnimator"
	ObjectAnimator():ofFloat(control,"scaleX", {
		1, 0.8, 0.9, 1
	}):setDuration(time):start()
	ObjectAnimator():ofFloat(control,"scaleY", {
		1,0.8,0.9,1
	}):setDuration(time):start()
	end) end
Yunzhu.controlSmall = function(control,time)
luajava.runUiThread(function()
	import "android.animation.ObjectAnimator"
	ObjectAnimator():ofFloat(control,"scaleX", {
		1, 0.7, 0.4, 0
	}):setDuration(time):start()
	ObjectAnimator():ofFloat(control,"scaleY", {
		1, 0.7, 0.4, 0
	}):setDuration(time):start()
	end) end
Yunzhu.controlBig = function(control,time)
luajava.runUiThread(function()
	import "android.animation.ObjectAnimator"
	ObjectAnimator():ofFloat(control,"scaleX", {
		0, 0.4, 0.7, 1
	}):setDuration(time):start()
	ObjectAnimator():ofFloat(control,"scaleY", {
		0, 0.4, 0.7, 1
	}):setDuration(time):start()
	end) end
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
gg.setVisible(false)
function guid()
seed = {
	'e','1','2','3','4','5','6','7','8','9','a','b','c','d','e','f'
}
tb = {}
for i = 1,32 do
table.insert(tb,seed[math.random(1,16)])
end
sid = table.concat(tb)
return string.format('%s%s%s',
	string.sub(sid,1,8),
	string.sub(sid,10,12),
	string.sub(sid,21,22))
end


Yunzhu.menu = function(views)
forsview = views
if isswitch then
return false
end

isswitch = true
local layout = {
		'ui.ViewPager',
		layout_height='match_parent',
		layout_width='match_parent',
		focusable="false",
		focusableInTouchMode="false",
	}
	
	scrollball={LinearLayout,
			layout_width='match_parent',
			gravity='center',
			layout_marginTop='3dp',
			}
	sballl={} cebs={}
	for i=1,#stab do
		cebs[i]=luajava.loadlayout({LinearLayout,
			{
			LinearLayout,
			layout_height='40dp',
			layout_width='60dp',
			background=newbg2({0xdd161616,0xdd161616,0x99232323},0,0x00ffffff,15,15,15,15),
			elevation='2dp',
			layout_marginLeft='3dp',
			layout_marginRight='3dp',
			layout_marginTop='3dp',
			layout_marginBottom='3dp',
			onClick=function() 切换(i) end,
			gravity='center_vertical',
			{ImageView,
			layout_marginLeft='8dp',
			src=getRes('opo'..i),
			layout_height='14dp',
			layout_width='14dp',
			},{TextView,
			text=stab[i],
			textSize='10sp',
			textColor='#ffffff',
			layout_weight=1,
			layout_width='match_parent',
			gravity='center'
				
			}
		}})
		sballl[i]={newbg({0xffffffff,0xffffffff},0,0xff000000,360,360,360,360),newbg({控件颜色,控件颜色},0,0xff000000,360,360,360,360)}
		scrollball[#scrollball+1]={
			LinearLayout,
			id=luajava.newId('sbal'..i),
			layout_height='5dp',
			layout_width='5dp',
			background=sballl[i][1],
			layout_marginLeft='5dp',
			layout_marginRight='5dp',
			onClick=function() 切换(i) end,
			onTouch=hanshu
		}
		tmp={
			LinearLayout,
			layout_height="wrap_content",
			layout_width="match_parent",
			orientation="vertical",
			
		}
		for k=1,#views[i] do
			if type(views[i][k])=='userdata' then
			tmp[#tmp+1]=views[i][k]
			elseif type(views[i][k])=='table' then
			tmp[#tmp+1]=views[i][k].view
			
			end
		end
		_ENV["layout"..i]={
			ScrollView,
			--orientation="vertical",
			layout_height="match_parent",
			layout_width="match_parent",
			tmp,
			--onTouch=Gundong,
			padding={"8dp","3dp","8dp","3dp"},
		}
		layout[#layout + 1] =_ENV["layout"..i]
	end
	tagc=simpleTagCloudView(cebs)
	_ENV["layout"..#stab-1]= {FrameLayout,
		layout_width = "match_parent",
		layout_height = "match_parent",
		orientation = "vertical",
		{ScrollView,
		
		id = "ltslays4",
		layout_width = "match_parent",
		layout_height = "match_parent",
		orientation = "vertical",
		padding={'0dp','0dp','0dp','40dp'},
			{
			LinearLayout,
			id = "ltslaym4",
			gravity = "top",
			layout_width = "match_parent",
			orientation = "vertical",
			gravity = "center_horizontal",
			
			}
		},
		{LinearLayout,
			id="srk",
			layout_height="20dp",
			layout_width="match_parent",
			layout_gravity='bottom',
			layout_marginTop="18dp",
			padding={"8dp","0dp","8dp","0dp"},
			layout_marginBottom='8dp',
			gravity="center",
				{TextView,
				background=getVerticalBG({0xdd161616,0xdd161616},10,2,0xffd7d7d7),
			gravity="center",
			text="长按录音",
			id="recordtext",
			textSize="13sp",
				layout_height="20dp",
				layout_width="80dp",
				
			onTouch = function(view, event)
		        if event:getAction() == MotionEvent.ACTION_DOWN then
		            -- 按下时执行的函数
		            recordtext:setText("正在录音")
		            luajava.newThread(function()
		            vibra:vibrate(30)
		            recorder = MediaRecorder()
-- 设置录音源、输出格式和编码器
					recorder:setAudioSource(sourceType)
					recorder:setOutputFormat(OutputFormat.THREE_GPP)
					recorder:setAudioEncoder(AudioEncoder.AMR_NB)
					-- 设置录音文件存储路径
					savePath = "/sdcard/Yunzhu/test.mp3"
					recorder:setOutputFile(savePath)
		            recorder:prepare()
					recorder:start()
					redstart=os.time()
		            end):start()
		        elseif event:getAction() == MotionEvent.ACTION_UP then
		            -- 松开时执行的函数
		            
		            --
		        end
			end,
			onClick=function()
					recordtext:setText("长按录音")
					luajava.newThread(function()
					vibra:vibrate(50)
		            
		            -- 停止录音
					recorder:stop()
					-- 释放资源
					recorder:release()
					if os.time()-redstart<1 then
						gg.alert("时间太短\n最少要录制1秒")
						return 0
					end
					if os.time()-redstart>40 then
						gg.alert("时间太长\n一条最多录制40秒")
						return 0
					end
					uprec(savePath)
					gg.toast("发送成功")
		            end):start()
			end,
				}
				,{EditText,
				id=luajava.newId("聊天框"),
				background="#ffe6e6e6",
				textSize="13sp",
				inputType="textMultiLine",
				textColor="#000000",
				layout_marginLeft="3dp",
				layout_height="40dp",
				layout_weight=1,
				layout_width="match_parent",
				},
			{TextView,
				background=getVerticalBG({0xdd161616,0xdd161616},10,2,0xffd7d7d7),
			gravity="center",
			text="发送",
			textSize="13sp",
				layout_marginLeft="3dp",
				layout_height="20dp",
				layout_width="40dp",
				onClick=function() luajava.newThread(function() 发送聊天(Yunzhu.getedit2("聊天框")) end):start() end
				},
		}}
	layout[#stab]=_ENV["layout"..#stab-1]
	当前ui=1
	ViewPager = ui.ViewPager(layout)
	luajava.setInterface(ViewPager, 'addOnPageChangeListener', 
		{onPageSelected=function(view)
		view=tonumber(string.sub(view,1,1))
		当前ui=view+1
		for i=1,#stab do
			if i~=当前ui then luajava.getIdView('sbal'..i):setBackground(sballl[i][1]) end
		end
		if 当前ui==1 then
			luajava.getIdView('toleft'):setTextColor(0xff343434)
			luajava.getIdView('toright'):setTextColor(0xffd7d7d7)
		elseif 当前ui==#stab then
			luajava.getIdView('toleft'):setTextColor(0xffd7d7d7)
			luajava.getIdView('toright'):setTextColor(0xff343434)
		else
			luajava.getIdView('toleft'):setTextColor(0xffd7d7d7)
			luajava.getIdView('toright'):setTextColor(0xffd7d7d7)
		end
		luajava.getIdView('sbal'..当前ui):setBackground(sballl[当前ui][2])
		--滚(当前ui)
		end})
stit=luajava.loadlayout{ShimmerTextView,
				textSize="18sp",
				gravity='center_horizontal',
				layout_width='match_parent',
				
				shimmerEnable='true',
				reflectionColor="#33363B";
				textColor="#ffffff",
				text=右上角标题,
	}
	ckou={FrameLayout,
		layout_height='match_parent',
		layout_width='match_parent',
	--	background=newbg({0xffffffff,0xffffffff},0,0xffffffff,25,25,25,25),---主要背景的颜色
	background="https://cdn-community.codemao.cn/47/community/d2ViXzEwMDFfMTAwMTQwOTNfMTAwMTQwOTNfMTcxODI2Nzc3NTUwNl9mODA1M2IyYw.png",
		padding={'0dp','23dp','0dp','0dp'},
		elevation='1dp',
		layout_marginTop='3dp',
		{LinearLayout,
			id='webv_',
			layout_height='match_parent',
		layout_width='match_parent',
		},
		{
		LinearLayout,
		layout_height="match_parent",
		layout_width="match_parent",
		elevation='3dp',
		layout_marginLeft='3dp',
		layout_marginRight='3dp',
		layout_marginBottom='3dp',
		layout_marginTop='3dp',
		{FrameLayout,
		layout_height='match_parent',
		layout_width='match_parent',
		visibility='gone',
		id="parentv",ViewPager},
	}}



extralis={LinearLayout,
	layout_height="wrap_content",
	layout_width="match_parent",
	id=luajava.newId("extralist"),
	orientation="vertical",
	}
for k,v in pairs(ewsv) do
	extralis[#extralis+1]=ewsv[k]
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
topbar = luajava.loadlayout({
	LinearLayout,
	layout_width="fill_parent",
	layout_height="35dp",
--	background=getCorner({0xff242628,0xff111315},15,0,0xff232323,20,20,0,0),
	background="https://cdn-community.codemao.cn/47/community/d2ViXzEwMDFfMTAwMTQwOTNfMTAwMTQwOTNfMTcxODI2Nzc3NTUwNl9mODA1M2IyYw.png",
	onClick=function() end,
	onTouch=hanshu,
	{LinearLayout,
	layout_width="35dp",
	layout_height="match_parent",
	gravity="center",
	onClick = 隐藏,
			onTouch = hanshu,
	{
			LinearLayout,
			gravity="center",
			background=获取图片(悬浮窗图标),
			layout_width = "25dp",
			layout_height = "25dp",
			layout_marginLeft = "5dp",
			
			
		}
	},
	{LinearLayout,
	layout_width="35dp",
	layout_height="match_parent",
	gravity="center",
	onClick = function() 
				if not homepage and type(ret)=='table' then
					homepage=true
					parentv:setVisibility(View.GONE)
					tagcp:setVisibility(View.VISIBLE)
					luajava.getIdView('toleft'):setVisibility(View.GONE)
	luajava.getIdView('toright'):setVisibility(View.GONE)
				end
			end,
			onTouch = hanshu,
	{
			ImageView,
			gravity="center",
			background=getVerticalBG({0x78ffffff,0x78ffffff},90),
			src=getRes('ca_hm'),
			layout_width = "20dp",
			padding='2dp',
			layout_height = "20dp",
			layout_marginLeft = "5dp",
			
			
		}
	},
	{LinearLayout,
		layout_width="fill_parent",
		layout_marginLeft='0dp',
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
		id='tops',
		background=getVerticalBG({控件颜色,控件颜色},20)
		
		}
		}
		},
	{LinearLayout,
	layout_width="35dp",
	layout_height="match_parent",
	gravity="center",
	onClick = uiLock,
			onTouch = hanshu,
	{
			ImageView,
			padding = "5dp",
			id="lockui",
			src = getRes("heis"),
			background=getVerticalBG({0x78ffffff,0x78ffffff},90),
			layout_width = "20dp",
			layout_height = "20dp",
			layout_marginRight = "5dp",
			
		}
	},
	{LinearLayout,
	layout_width="35dp",
	layout_height="match_parent",
	gravity="center",
	onClick = 隐藏,
			onTouch = hanshu,
	{
			ImageView,
			padding = "5dp",
			src = getRes("heix"),
			background=getVerticalBG({0x78ffffff,0x78ffffff},90),
			layout_width = "20dp",
			layout_height = "20dp",
			layout_marginRight = "5dp",
			
		}
	}
})

floatWindow = {
	FrameLayout,
	id = "motion",
	elevation = "10dp",
	onTouch = hanshu,
	onClick = function() end,
	layout_width = "wrap_content",
	orientation = "vertical",
	gravity = "center_vertical",
	layout_height = "wrap_content",
	{
	LinearLayout,
	id = "chuangk",
	visibility = "gone",
	layout_height='match_parent',
	layout_width='match_parent',
	orientation = "vertical",
	elevation='2dp',
		layout_marginLeft='2dp',
		layout_marginRight='2dp',
		layout_marginBottom='2dp',
		layout_marginTop='2dp',
		background=newbg2({0xff232323,0xff232323},0,0xffffffff,25,25,26,26),
		topbar,
		{LinearLayout,
			layout_height='40dp',
			layout_width='match_parent',
			gravity='center',
			orientation='vertical',
			{FrameLayout,
			layout_height='wrap_content',
			layout_width='match_parent',
			layout_marginLeft='0dp',
			layout_marginRight='0dp',
			{LinearLayout,
				layout_height='match_parent',
				layout_width='94dp',
				gravity='left',
				onClick=function() if 当前ui~=1 and not homepage then 切换(当前ui-1) end end,
				onTouch=hanshu,
				{TextView,
				visibility='gone',
				id=luajava.newId('toleft'),
				layout_height='match_parent',
				layout_width='14dp',
				layout_marginLeft='-2dp',
				background=newbg({0x78000000,0x78000000},2,0x88ffffff,0,10,10,0),
				gravity='center',
				text='←',
				textSize='10sp',
				textColor='#343434',
			}},{LinearLayout,
				layout_gravity='right',
				layout_height='match_parent',
				layout_width='94dp',
				gravity='right',
				onClick=function() if 当前ui~=#stab and not homepage then 切换(当前ui+1) end end,
				onTouch=hanshu,
				padding={'0dp','0dp','-2dp','0dp'},
				{TextView,
				visibility='gone',
				id=luajava.newId('toright'),
				layout_gravity='right',
				layout_height='match_parent',
				layout_width='14dp',
				background=newbg({0x78000000,0x78000000},2,0x88ffffff,10,0,0,10),
				gravity='center',
				text='→',
				textSize='10sp',
				textColor='#d7d7d7',
			}},
				stit},
			scrollball
		},
		{LinearLayout,
		elevation='3dp',
		layout_marginTop='3dp',
		
		layout_width='match_parent',
		layout_height='match_parent',
		layout_weight=1,
		orientation='vertical',
		padding={'0dp','7dp','0dp','0dp'},
	ckou,}

},
	{LinearLayout,
	visibility="gone",
	id=luajava.newId("extra"),
	layout_height='match_parent',
	layout_width='match_parent',
	orientation="vertical",
	background=getVerticalBG({0xffffffff,0xffffffff},25,2,0xdd161616),
	
		{LinearLayout,
			layout_width="match_parent",
			layout_height="40dp",
			background=getCorner({0xff161616,0xff161616},25,nil,nil,25,25,0,0),
			onClick=function() end,
			onTouch=hanshu,
			gravity="center_vertical",
			{ImageView,
				id=luajava.newId("backv"),
				layout_height="34dp",
				layout_width="34dp",
				src=getRes("opoback"),
				background=getVerticalBG({0x00ffffff,0x00ffffff},360,10,0xffffffff),
				padding="8dp",
				onClick=关闭窗口,
				layout_marginLeft="10dp",
			},
			{TextView,
				id=luajava.newId("extrat"),
				text="标题",
				layout_height="match_parent",
				layout_width="match_parent",
				layout_weight=1,
				gravity="center",
			},
		{ImageView,
				id=luajava.newId("suov"),
				layout_height="34dp",
				layout_width="34dp",
				src=getRes("heix"),
				background=getVerticalBG({0x00ffffff,0x00ffffff},360,10,0xffffffff),
				padding="10dp",
				onClick=隐藏,
				layout_marginRight="10dp",
			}
		},
	{ScrollView,
	padding="10dp",
	layout_height="match_parent",
	layout_width="match_parent",
	extralis
	}
	},
	{
		ImageView,
		id = "control2",
		background = 获取图片3(悬浮窗图标),
		layout_width = "45dp",
		layout_height = "45dp",
		onTouch = hanshu,
		onClick = 隐藏,
	},{LinearLayout,
	id="smallc",
	visibility="gone",
	onClick=显示2,
	onTouch=hanshu,
	layout_height="56dp",
	layout_width="20dp",
	gravity="center",
	background=getCorner({0x88161616,0x88161616},12,0,0xff232323,0,35,35,0),
		
	},
	
	
	
	{LinearLayout,
		layout_marginTop='65dp',
		layout_marginLeft='10dp',
		layout_marginRight='10dp',
		id='clist',
		elevation='3dp',
				layout_width='match_parent',
				layout_height='wrap_content',
				padding='8dp',
					{LinearLayout,
						layout_weight=1,
							layout_height='34dp',
							layout_marginTop='3dp',
							layout_marginBottom='3dp',
							layout_marginLeft='3dp',
							layout_marginRight='3dp',
							layout_width='match_parent',
							
							background=newbg({0x78000000,0x78000000},0,0xff232323,10,10,10,10),
							padding='3dp',
							elevation='2dp',
							{ScrollView,
								id='ggscro',
								layout_height='match_parent',
								layout_width='match_parent',
								{LinearLayout,
									id='gggscro',
									orientation='vertical',
									layout_width='match_parent',
									layout_height='wrap_content',
								}
							},{EditText,
								visibility='gone',
								id=luajava.newId("tosearch"),
								layout_height='match_parent',
								layout_width='match_parent',
								padding='-8dp',
								hint = "请输入需要搜索的关键词",
								gravity = "center",
								textColor='#000000',
										layout_marginLeft="0dp",
										textSize = "12sp",
										background = getVerticalBG({
											0x00262626,0x00262626
										},15,5,0x00ffffff),
							}
						},{ImageView,
						id='musici',
						layout_width='34dp',
						layout_height='match_parent',
						gravity='center',
						elevation='2dp',
				layout_marginTop='3dp',
						layout_marginBottom='3dp',
						layout_marginLeft='3dp',
						layout_marginRight='3dp',
				background=newbg({0x78000000,0x78000000},0,0xff2d2d2d,10,10,10,10),
						src=getRes('bm_music'),
						padding='4dp',
						onTouch=hanshu,onClick=function() searchmenu(1) end
						
					},{ImageView,
						id='searchi',
						layout_width='34dp',
						layout_height='match_parent',
						gravity='center',
						elevation='2dp',
				layout_marginTop='3dp',
						layout_marginBottom='3dp',
						layout_marginLeft='3dp',
						layout_marginRight='3dp',
				background=newbg({0x78000000,0x78000000},0,0xff2d2d2d,10,10,10,10),
						src=getRes('quarksearchw'),
						padding='4dp',
						onTouch=hanshu,onClick=function() searchmenu(2) end,
						
					}
				--topbar
			},
			
			
	{LinearLayout,
		elevation='4dp',
		layout_marginTop='98dp',
		id='tagcp',
		layout_height='match_parent',
		layout_width='match_parent',
		gravity='center',
		padding='5dp',
		{
		FrameLayout,
		layout_width = '250dp',
		layout_height = '250dp',
		{

			tagc,	
			--background = getVerticalBG({0x55161616,0x55161616},15,8,0xff232323),
			-- layout_width = 'match_parent',
			-- layout_height = 'match_parent',
		}

	}},
	{FrameLayout,
	id='reme',
	layout_height='match_parent',
	layout_width='match_parent',
	elevation='5dp',
	{
			ImageView,
			id="sf",
			padding = "2dp",
			src = getRes("sscoR"),
			layout_width = "30dp",
			layout_height = "30dp",
			layout_marginRight = "0dp",
			layout_marginBottom = "0dp",
			layout_gravity = "right|bottom",
			onClick = function() end,
			onTouch = suofang,
		}}
}
local function invoke()
local ok
local RawX, RawY, x, y
mainLayoutParams = getLayoutParams()
mainLayoutParams.x = 10
mainLayoutParams.y = dheight/4
floatWindow = luajava.loadlayout(floatWindow)
local function invoke2()
window:addView(floatWindow, mainLayoutParams)
webv_:addView(parti2)
end
local runnable = luajava.getRunnable(invoke2)
local handler = luajava.getHandler()
handler:post(runnable)

local isMove


end

invoke(swib1,swib2)
--log_init()
gg.setVisible(false)
musici:setColorFilter(控件颜色)
searchi:setColorFilter(控件颜色)
luajava.getIdView("backv"):setColorFilter(控件颜色)
luajava.getIdView("suov"):setColorFilter(控件颜色)
luajava.getIdView("tosearch"):setHintTextColor(控件颜色)

隐藏()
if 流光 then
shimmer = Shimmer();
luajava.runUiThread(function()
  shimmer:setDuration(2000)
  shimmer:setStartDelay(50)
  shimmer:start(stit)
  
end)
end
setOnExitListener(function()
	
	tuichu=1
	luajava.setFloatingWindowHide(false)
	luajava.post(function()
	window:removeView(floatWindow)
	end)
luajava.setFloatingWindowHide(false)
end)
luajava.setFloatingWindowHide(true)
qhkai = 0
qiehuan = function()
if qhkai == 0 then
qhkai = 1
draw.remove()
luajava.runUiThread(function()
	Yunzhu.controlSmall(floatWindow,400)
	end)
gg.sleep(400)
luajava.runUiThread(function()
	floatWindow:setVisibility(View.GONE)
	end)
else
	qhkai = 0
huiz()
luajava.runUiThread(function() floatWindow:setVisibility(View.VISIBLE) end)
luajava.runUiThread(function()
	Yunzhu.controlBig(floatWindow,400)
	end)

end
end
if loadBox~=nil then loadBox['关闭']() end
huiz()
if ylfunc~=nil then ylfunc() end
if yyfunc~=nil then yyfunc() end
already=true
pcall(shuaxinchat())
shuaxinum=1
while true do
if tuichu==1 then break end
		if already==true and shuaxinum>=4 and 显示==1 and 当前ui==stbs then
			shuaxinum=1
			shuaxinchat()
		end
shuaxinum=shuaxinum+1
if 音量键 then
jianting3(qiehuan)
end gg.sleep(300)
end

end
isLocked=false
inlock=getRes("heisuo")
uiunlock=getRes("heis")
function uiLock()
vibra:vibrate(15)
if isLocked==false then
	isLocked=true
	luajava.newThread(function()
		gg.toast("UI缩放已锁定")
	end):start()
	lockui:setImageDrawable(inlock)
else
	isLocked=false
	luajava.newThread(function()
		gg.toast("UI缩放已解锁")
	end):start()
	lockui:setImageDrawable(uiunlock)
end
end
function tiaose()
if 颜色表==nil then return 0 end
local tt={
	LinearLayout,
	gravity="center_vertical",
	layout_height="wrap_content",
	layout_width='40dp'
}
for i=1,#颜色表 do
	tt[#tt+1]={
		LinearLayout,
		layout_height="33dp",
		layout_width="33dp",
		gravity="center",
		id=luajava.newId("yans"..i),
		onClick=function() xuanse(i) end,
		{LinearLayout,
		layout_width="25dp",
		layout_height="25dp",
		background=getVerticalBG({颜色表[i],颜色表[i]},15)
		}
	}
end
local t=luajava.loadlayout{
	HorizontalScrollView,
	layout_height="40dp",
	layout_width="wrap_content",
	tt
}
return t
end
xze2=getVerticalBG({0x00ffffff,0x00ffffff},15,3,0xff232323)

xze=getVerticalBG({0x00ffffff,0x00ffffff},15,3,0xff232323)
function xuanse(x)
for i=1,#颜色表 do
	luajava.getIdValue("yans"..i):setBackground(empty)
end
luajava.getIdValue("yans"..x):setBackground(xze)
changeColor(颜色表[x])
end

function log_init()
if type(ret) ~= "table" then
if vv ~= nil then return 0 end
luajava.newThread(function()
	draw.remove()
end):start()
tmp = {
	LinearLayout,orientation = "vertical",gravity = "center_horizontal",
}
if panduan("/sdcard/Yunzhu/配置文件/km.lua") ~= false then
dofile("/sdcard/Yunzhu/配置文件/km.lua")
logkapian = {
	LinearLayout,
	orientation = "vertical",
	gravity = "center",
	layout_height = "50dp",
	layout_width = "160dp",
	
	background =  luajava.loadlayout {
					GradientDrawable,
					color = "#ffffff",
					cornerRadius = 20
				},
	elevation = "4dp",
	layout_marginTop='4dp',
	layout_marginBottom='4dp',
	layout_marginLeft='4dp',
	layout_marginRight='4dp',
	onClick = function()
	--Yunzhu.controlFlip(logkapian,2000)
	luajava.newThread(function() logkap = true login(kam) end):start() end,
	{
		TextView,
		gravity = "center",
		textSize = "18sp",
		textColor = "#000000",
		text = "******"..string.sub(kam,-4,-1)
	},{
		TextView,
		gravity = "center",
		textSize = "11sp",
		textColor = "#4E98FF",
		text = "快捷登录"
	}

}
tmp[#tmp+1] = logkapian
tmp[#tmp+1] = {
	LinearLayout,
	layout_height = "10dp",
}
end
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(30)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({
	0xff6B00EC,0xff006AFF,0xff0090FF,0xff6B00EC

})
jianbians:setOrientation(GradientDrawable.Orientation.TL_BR)
--jianbians:setStroke(0,0x55000000)--边框宽度和颜色

luajava.post(function()
	vv = luajava.loadlayout({
		LinearLayout,
		orientation = "vertical",
		visibility = "gone",
		background = getVerticalBG({
			0x78000000,0x78000000
		},25),
		layout_width = "match_parent",
		layout_height = "match_parent",
		gravity = "center",
		onTouch=hanshu,
		onClick = function() end,
		tmp,
		{
			LinearLayout,
			orientation = "vertical",
			gravity='center_horizontal',
			layout_width='match_parent',
			
			{
				LinearLayout,
				layout_height = "60dp",
				{
					EditText,
					id = luajava.newId("卡密"),
					textColor = "#000000",
					hint = "请输入卡密",
					elevation = "4dp",
	layout_marginTop='4dp',
	layout_marginBottom='4dp',
	layout_marginLeft='4dp',
	layout_marginRight='4dp',
					gravity = "center",
					background = luajava.loadlayout {
						GradientDrawable,
						color = "#ffffffff",
						cornerRadius = 20
					},
					layout_height = "50dp",
					layout_width = "160dp",
					layout_marginBottom = "20dp",
				}}, {
				TextView,
				background = getVerticalBG({0xff0072ff,0xff0072ff},20),
				text = "登录",
				textColor = "#ffffff",
				textSize = "16sp",
				gravity = "center",
				elevation = "0dp",
				layout_height = "30dp",
				layout_width = "160dp",
				onClick = function() luajava.newThread(function() login(Yunzhu.getedit("卡密")) end):start() end,
			},{
				TextView,
				background = luajava.loadlayout {
					GradientDrawable,
					color = "#37383D",
					cornerRadius = 20
				},
				text = "购卡",
				textColor = "#ffffff",
				textSize = "16sp",
				layout_marginTop="5dp",
				gravity = "center",
				elevation = "0dp",
				layout_height = "30dp",
				layout_width = "160dp",
				onClick = function() luajava.newThread(function()
					gg.intent(卡网) 隐藏()
				end):start() end,
			},{
				TextView,
				background = luajava.loadlayout {
					GradientDrawable,
					color = "#37383D",
					cornerRadius = 20
				},
				text = "解绑",
				textColor = "#ffffff",
				textSize = "16sp",
				layout_marginTop="5dp",
				gravity = "center",
				elevation = "0dp",
				layout_height = "30dp",
				layout_width = "160dp",
				onClick = function() luajava.newThread(function()
					local t=Yunzhu.getedit("卡密")
					if t~="" and t~=" " then
					rlyunyz.unbind(t)
					end
				end):start() end,
			},{
				TextView,
				background = luajava.loadlayout {
					GradientDrawable,
					color = "#37383D",
					cornerRadius = 20
				},
				text = "退出",
				textColor = "#ffffff",
				textSize = "16sp",
				layout_marginTop="5dp",
				gravity = "center",
				elevation = "0dp",
				layout_height = "30dp",
				layout_width = "160dp",
				onClick = function() tuichu=1 end,
			}}
	})
	addadView(vv)
	luajava.getIdValue("卡密"):setHintTextColor(0xffA2A2A2)
	luajava.runUiThread(function()
		parentv:setVisibility(View.VISIBLE)
		tagcp:setVisibility(View.GONE)
		vv:setVisibility(View.VISIBLE)
	end)
	--huiz()
end)
else
	--luajava.newThread(function() xiugtx() end):start()
end
end
_ENV['卡密']='卡密'
function login(kam)
local loadBox = getLoadingBox('正在校验卡密')

if tostring(kam)=="" or tostring(kam)==" " then return 0 end
loadBox['显示']()
ret = rlyunyz.login(kam)
loadBox['关闭']()
ini = rlyunyz.checkUpdate()
if type(ret) ~= "table" then
--gg.alert(tostring(ret))
else
if vv ~= nil then
luajava.runUiThread(function()
	YoYoImpl:with("FadeOut"):duration(400):playOn(vv)
	end)

luajava.newThread(function()
	gg.sleep(400)
	rmdadView(vv)
	vv = nil
	end):start()
end
ktmp = "kam='"..ret.kami.."'"
luajava.newThread(function()
	file.write("/sdcard/Yunzhu/配置文件/km.lua",ktmp)
end):start()
luajava.runUiThread(function()
	parentv:setVisibility(View.GONE)
	tagcp:setVisibility(View.VISIBLE)
	--luajava.getIdValue("viptime"):setText(getTimeStamp(ret.vip))
end)
end
--if logkap then gg.sleep(100) end

end
function getTimeStamp(t)
local str = os.date("%Y/%m/%d %H:%M:%S",t)
return str
end
function addadView(tmp)
local function invoke()
parentv:addView(tmp)
end
luajava.post(invoke)
end
function rmdadView(tmp)
local function invoke()
parentv:removeView(tmp)
end
luajava.post(invoke)
end
function 切换(x)
窗口=false
homepage=false
if type(ret)~="table" then log_init() return 0 end
luajava.runUiThread(function()
	luajava.getIdView('toleft'):setVisibility(View.VISIBLE)
	luajava.getIdView('toright'):setVisibility(View.VISIBLE)
	tagcp:setVisibility(View.GONE)
	parentv:setVisibility(View.VISIBLE)
	local searchUI = luajava.getIdView("tosearch")
	if x==5 then
		searchUI:setVisibility(View.VISIBLE)
ggscro:setVisibility(View.GONE)
else
	searchUI:setVisibility(View.GONE)
ggscro:setVisibility(View.VISIBLE)

	end
	当前ui=x
	ViewPager:setCurrentItem(x-1)
end)
end
显示=0
function 隐藏()
if 显2==true then return 0 end
luajava.runUiThread(function()
	if 显示 == 0 then
	if homepage then
	tagcp:setVisibility(View.VISIBLE)
	end
	control2:setVisibility(View.GONE)
	sf:setVisibility(View.VISIBLE)
	显示 = 1
	if 窗口 then
	luajava.getIdView("extra"):setVisibility(View.VISIBLE)
	clist:setVisibility(View.GONE)
	else
	chuangk:setVisibility(View.VISIBLE)
	clist:setVisibility(View.VISIBLE)
	end
	YoYoImpl:with("ZoomInLeft"):duration(300):playOn(floatWindow)
	floatWindow:setBackground(beij)
	mainLayoutParams.height = mubx
		mainLayoutParams.width = muby
	mainLayoutParams.flags = LayoutParams.FLAG_NOT_TOUCH_MODAL
	window : updateViewLayout (floatWindow , mainLayoutParams)
	else
		tagcp:setVisibility(View.GONE)
		sf:setVisibility(View.GONE)
		clist:setVisibility(View.GONE)
	if tuichuing then return 0 end
	tuichuing=true
	luajava.newThread(function()
	luajava.runUiThread(function()
		YoYoImpl:with("FadeOut"):duration(300):playOn(floatWindow)
		end)
	gg.sleep(300)
	luajava.runUiThread(function()
	chuangk:setVisibility(View.GONE)
	floatWindow:setBackground(beij2)
	YoYoImpl:with("FadeIn"):duration(200):playOn(floatWindow)
	luajava.getIdView("extra"):setVisibility(View.GONE)
	mainLayoutParams.width = LayoutParams.WRAP_CONTENT -- 布局宽度
	mainLayoutParams.height = LayoutParams.WRAP_CONTENT -- 布局高度
	control2:setVisibility(View.VISIBLE) 显示 = 0
	mainLayoutParams.flags = LayoutParams.FLAG_NOT_FOCUSABLE
	window : updateViewLayout (floatWindow , mainLayoutParams)
	end)
	tuichuing=false
	end):start()
end
	end)
end
function 打开窗口(x)
if ewsv[x]==nil then
	gg.alert("没有窗口“"..x.."”\n请检查是否写错了名字或者没创建")
	return 0
end
luajava.runUiThread(function()
	窗口=true
	chuangk:setVisibility(View.GONE)
	clist:setVisibility(View.GONE)
	luajava.getIdView("extra"):setVisibility(View.VISIBLE)
	for k,v in pairs(ewsv) do
		
		if k~=x then v:setVisibility(View.GONE) end
	end
	luajava.getIdView("extrat"):setText(x)
	ewsv[x]:setVisibility(View.VISIBLE)
end)
end
function 关闭窗口()
	luajava.getIdView("extra"):setVisibility(View.GONE)
	chuangk:setVisibility(View.VISIBLE)
	clist:setVisibility(View.VISIBLE)
	窗口=false
	vibra:vibrate(10)
end
ewsv={} ewsv2={}
function 创建窗口(name,v)
if type(v)~="table" then gg.alert("窗口"..name.."格式错误") end
local t={
	LinearLayout,
	orientation="vertical",
	visibility="gone",
	layout_width="match_parent",
}
local ew={}
	for i=1,#v do
		if type(v[i])=="table" then
		t[#t+1]=v[i].view
		ew[#ew+1]=v[i]
		else
			t[#t+1]=v[i]
			ew[#ew+1]=v[i]
		end
	end
	ewsv2[name]=ew
	ewsv[name]=luajava.loadlayout(t)
	
end
    function getjb()
local jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(15)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({0xff397EF8,0xff25C4FD})
jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
return jianbians
end
tjb1=getjb()
tjb2=luajava.loadlayout {
	GradientDrawable,
	color = "#aa0082FF",
	cornerRadius = 12
}
function getjb()
local jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(15)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({0xff397EF8,0xff25C4FD})
jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
return jianbians
end
do
local path = "/sdcard/.游客信息t.lua" --用户信息
local r = panduan(path)
if r then
qltname = file.read(path)
else
	qltname = "游客" .. math.random(1111111, 9999999)
file.write(path,qltname)
end
qltname=string.gsub(qltname,' ','')
qltname=string.gsub(qltname,'\n','')
local path = "/sdcard/.用户头像t.lua" --用户信息
local r = panduan(path)
if r then
qlticon = file.read(path)
else
	qlticon = ""
file.write(path,qlticon)
end
end
function getu(name)
fs=gg.makeRequest(httpip.."?name="..name.."&mode=get").content
if fs=="00" then return "获取失败" else return fs end
end
function uplo(name,txt)
fs=gg.makeRequest(httpip.."?txt="..txt.."&name="..name.."&mode=set").content
end

function 修改名字(lttext)
if string.len(lttext) <= 0 then return 0 end
if string.len(lttext) >= 400 then
gg.toast("用户名长度上限20字节") return 0
end
local path = "/sdcard/.游客信息t.lua" --用户信息
qltname = lttext
qltname=string.gsub(qltname,' ','')
qltname=string.gsub(qltname,'\n','')
file.write(path,qltname)
--gg.alert("昵称修改成功\n"..lttext)
end
function 修改头像(txt)
if isUrlSafe(txt) then
else
	--gg.alert("头像链接有误 不能使用中文")
	return empty
end
local path2 = "/sdcard/.用户头像t.lua"
if string.find(txt,"emulated/0") ~= nil or string.find(txt,"/sdcard") ~= nil then
gg.alert("暂不支持上传本地图片\n请使用QQ号或直链")
return 0
end
if tonumber(txt) ~= nil then txt = "http://q1.qlogo.cn/g?b=qq&nk="..txt.."&s=100" end
if string.find(txt,"http%%") ~= nil or string.find(txt,"https%%") ~= nil then
gg.alert("格式有误，请重新输入") return 0
end
txt = string.url(txt,"en")
qlticon = txt
file.write(path2,qlticon)
--gg.alert("头像修改成功")
end
function xiuYUNZHU()
tmp=gg.prompt({"昵称","头像(请输入QQ号码或图片直链，暂不支持本地)"},{qltname,qlticon},{"text","text"})
if tmp~=nil then
if tmp[1]~="" then 修改名字(tmp[1]) end
if tmp[2]~="" then 修改头像(tmp[2]) end
end
end
function uprec(imagePath)
local uploadUrl = "http://149.88.75.158/"..channel.."/upload.php?name=jb"
local headers = {["Content-Type"] = "multipart/form-data"}
local response = http.upload(uploadUrl,headers,imagePath)
if response.code == 200 then
    randompic="☂️语音"..response.content.."☂️"
    发送聊天2(randompic)
else
    gg.alert("文件上传失败: " .. response.status)
end
	
end
function uppic(imagePath)
local uploadUrl = "http://149.88.75.158/"..channel.."/upload2.php?name=jb"
local headers = {["Content-Type"] = "multipart/form-data"}
local response = http.upload(uploadUrl,headers,imagePath)
if response.code == 200 then
    randompic="☂️图片"..response.content.."☂️"
    发送聊天2(randompic)
    gg.copyText(randompic)
else
    gg.alert("文件上传失败: " .. response.status)
end
	
end
function Yunzhu.setedit2(name,txt)
txt = tostring(txt)
luajava.runUiThread(function()
	luajava.getIdValue(name):setText(txt)
	end)
end

function Yunzhu.getedit2(name)
--gg.alert(edit)
edit = tostring(luajava.getIdValue(name):getText())
return edit
end
lastlttm = os.time()-3
function 发送聊天(lttext)
if os.time()-lastlttm <= 3 then
gg.alert("聊天冷却"..4 -(os.time()-lastlttm).."秒")
return 0
end
Yunzhu.setedit2("聊天框","")
local server = "http://47.101.220.155/"..channel.."/" --服务器地址
--local chat_log = gg.makeRequest(server .. "lts.php?hq=true").content
local uptime = gg.makeRequest(server .. "lts.php?updat=true").content
if uptime then
--	io.open(path, "w"):write(GT[2])
if string.len(lttext) <= 0 then return 0 end
if string.len(lttext) >= 400 then
gg.toast("文字长度上限400字节")
else
lastlttm = os.time()
lttext = string.gsub(lttext,"·","•")
lttext = string.gsub(lttext,"～","~")
lttext = string.gsub(lttext,"—","-")
lttext = string.gsub(lttext,"…","...")
if not qlticon or qlticon == "" or qlticon == "nil" then qlticon = "https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/defaulticon" qlticon=string.url(qlticon,"en") end
local p = gg.makeRequest(server .. "lts.php?lticon="..qlticon.."&nr=" .. lttext .. "&name=" .. qltname).content
if p ~= "发送成功" then
--gg.alert(qlticon.."\nerror -149: 消息发送失败")
else
	gg.toast("发送成功")
end
end
else
	gg.toast("请检查您的网络是否正常") return 0
end
shuaxinchat()
end
function 发送聊天2(lttext)
if os.time()-lastlttm <= 3 then
gg.alert("聊天冷却"..4 -(os.time()-lastlttm).."秒")
return 0
end
local server = "http://149.88.75.158/yunzhu/" --服务器地址
--local chat_log = gg.makeRequest(server .. "lts.php?hq=true").content
local uptime = gg.makeRequest(server .. "lts.php?updat=true").content
if uptime then
--	io.open(path, "w"):write(GT[2])
if string.len(lttext) <= 0 then return 0 end
if string.len(lttext) >= 400 then
gg.toast("文字长度上限400字节")
else
lastlttm = os.time()
lttext = string.gsub(lttext,"·","•")
lttext = string.gsub(lttext,"～","~")
lttext = string.gsub(lttext,"—","-")
lttext = string.gsub(lttext,"…","...")
if not qlticon or qlticon == "" or qlticon == "nil" then qlticon = "https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/defaulticon" qlticon=string.url(qlticon,"en") end
local p = gg.makeRequest(server .. "lts.php?lticon="..qlticon.."&nr=" .. lttext .. "&name=" .. qltname).content
if p ~= "发送成功" then
--gg.alert(qlticon.."\nerror -149: 消息发送失败")
else
	gg.toast("发送成功")
end
end
else
	gg.toast("请检查您的网络是否正常") return 0
end
shuaxinchat()
end
function FGUtilStringSplit(str,split_char)
local sub_str_tab = {}
while (true) do
local pos = string.find(str, split_char);
if (not pos) then
sub_str_tab[#sub_str_tab + 1] = str;
break
end
local sub_str = string.sub(str, 1, pos - 1).."…"
sub_str_tab[#sub_str_tab + 1] = sub_str;
str = string.sub(str, pos + 1, #str);
end

return sub_str_tab
end
nowtime = 0
localres = {}
function shuaxinchat()
if nolts then return 0 end
	local server = "http://149.88.75.158/yunzhu/" -- 服务器地址
	http.get(server .. "time.txt", nil, function(uptime)
		if not isTable(uptime) or uptime.code ~= 200 then
			gg.toast("请检查您的网络是否正常")
			nolts=true
			addchat(Yunzhu.text("聊天室网络异常，已暂时为你关闭"))
			return 0
		end

		uptime = uptime.content
		if tonumber(uptime) <= tonumber(nowtime) then
			return 0
		else
			nowtime = tonumber(uptime)
			uptime=tonumber(uptime)
			--gg.alert(nowtime..'\n'..uptime)
		end

		http.get(server .. "z2.txt",nil, function(res)
			if not isTable(res) or res.code ~= 200 then
				gg.toast("请检查您的网络是否正常")
			nolts=true
			addchat(Yunzhu.text("聊天室网络异常，已暂时为你关闭"))
			return 0
			end

			local chat_log = res.content
			local newltres = {}
			local ltres = FGUtilStringSplit(chat_log, "…")--分析记录拆分为小段
			
			for i = 1, #ltres do
				--每段一次：
				if string.find(ltres[i], "·") == nil or string.find(ltres[i], "～") == nil then
					--跳过不完整小段
				else
					newltres[#newltres + 1] = {ltname = tostring(ltres[i]:match("·(.-)—")),
					lttext = tostring(ltres[i]:match("～(.-)…")),
					lttime = tostring(ltres[i]:match("—(.-)～")),
					lticon = tostring(ltres[i]:match("㊢(.-)·"))}
					--分割小段给newltres新元素
				end
			end
			
			for i = 1, #newltres do
				--新表处理
				--新表内每个小段一次：
				isnew = true--假设是新的
				--gg.alert(#newltres..'\n'..tostring(newltres[i]))
				if nowtime~=uptime then tuichu=1 end
				for j = 1, #localres do
					--当前小段与local表每一段对比：
					if newltres[i].ltname == localres[j].ltname and newltres[i].lttime == localres[j].lttime and newltres[i].lttext ==localres[j].lttext then
						--判断当前小段i是旧的
						isnew = false
					end
					
				end
				
				if isnew == true then
					--如果当前小段i是新的
					isnew = false
					xuyaoshuaxin = true
					localres[#localres + 1] = newltres[i]
					local t=Yunzhu.chat(localres[#localres])
					if type(t)=="userdata" then
					addchat(t)
					end
				end
			end
			-- gg.alert(tostring(localres))
			if xuyaoshuaxin == true and already == true then
				xuyaoshuaxin = false
				gundong()
			end
	
		end)


	end)

end
function addchat(cha)
if cha==nil then return 0 end
local function invoke2()
ltslaym4:addView(cha)
gundong()
end
luajava.post(invoke2)
end
function gundong()
if already then
local function invoke2()
_ENV["ltslays4"]:fullScroll(_ENV["ltslaym4"].FOCUS_DOWN)
end
local runnable = luajava.getRunnable(invoke2)
local handler = luajava.getHandler()
handler:post(runnable)
end
end
function removechat(cha)
local function invoke2()
_ENV["ltslaym4"]:removeView(cha)
end
local runnable = luajava.getRunnable(invoke2)
local handler = luajava.getHandler()
handler:post(runnable)
end
local MediaRecorder = luajava.bindClass("android.media.MediaRecorder")
local AudioSource = luajava.bindClass("android.media.MediaRecorder$AudioSource")
local OutputFormat = luajava.bindClass("android.media.MediaRecorder$OutputFormat")
local AudioEncoder = luajava.bindClass("android.media.MediaRecorder$AudioEncoder")

-- 获取录音管理器实例
local audioManager = context:getSystemService(context.AUDIO_SERVICE)
-- 获取录音源类型常量值
local sourceType = AudioSource.MIC
-- 创建 MediaRecorder 实例

function Yunzhu.record(txt)
if not txt then txt = "未设置" end
return luajava.loadlayout(
	{
		LinearLayout,
		layout_width = 'fill_parent',
		layout_hight = "wrap_content", {
			LinearLayout,
			layout_width = "fill_parent",
			gravity = "center_horizontal",
			layout_marginRight="10dp",
			layout_marginLeft="10dp",
			layout_marginTop = "5dp",
			layout_marginBottom = "5dp",
			background = getSelector3(),
			onTouch = function(view, event)
		        if event:getAction() == MotionEvent.ACTION_DOWN then
		            -- 按下时执行的函数
		            luajava.newThread(function()
		            gg.toast("开始录音，松手取消")
		            recorder = MediaRecorder()
-- 设置录音源、输出格式和编码器
					recorder:setAudioSource(sourceType)
					recorder:setOutputFormat(OutputFormat.THREE_GPP)
					recorder:setAudioEncoder(AudioEncoder.AMR_NB)
					-- 设置录音文件存储路径
					-- 设置音量增益
					recorder:setAudioEncodingParameters(0, 1, 1)
					local savePath = "/sdcard/Yunzhu/test.mp3"
					recorder:setOutputFile(savePath)
		            recorder:prepare()
					recorder:start()
					redstart=os.time()
					rocordname="audio"..guid()..guid()
		            end):start()
		        elseif event:getAction() == MotionEvent.ACTION_UP then
		            -- 松开时执行的函数
		            
		            --
		        end
			end,
			onClick=function()
					luajava.newThread(function()
		            gg.toast("正在发送")
		            -- 停止录音
					recorder:stop()
					-- 释放资源
					recorder:release()
					if os.time()-redstart<1 then
						gg.alert("时间太短\n最少要录制1秒")
						return 0
					end
					if os.time()-redstart>60 then
						gg.alert("时间太长\n一条最多录制60秒")
						return 0
					end
		            end):start()
			end,
			{
				TextView,
--id = luajava.newId(tid),
				text = tostring(txt),
				textSize = "16sp",
				layout_width = "wrap_content",
			},
		}})
end
function imagee(t)
	luajava.layoutAlert({
	ImageView,
	layout_height="wrap_content",
	layout_width="match_parent",
	src=(t),
})
end
function isUrlSafe(str)
local pattern = "^[a-zA-Z0-9%s%-%._~:/?#%%%[%]@!$&'()*+,;=%@]+$"
local result = string.match(str, pattern)

if result then
return true
else
return false
end
end
function getpic(txt)
txt = string.url(txt,"de")
if isUrlSafe(txt) then
else
	print(txt)
	return ''
end
return 获取图片3(txt)
end
function Yunzhu.chat(ltlist)
ltname = ltlist.ltname
lticon = tostring(ltlist.lticon)
lttext = tostring(ltlist.lttext)
lttime = tostring(ltlist.lttime)
if not lticon or lticon == "" or lticon == "nil" then lticon = "https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/defaulticon" end
if string.find(lticon,"/")==nil then lticon = "https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/defaulticon" end
local bitmap = getpic(lticon)
if not bitmap then bitmap = luajava.getBitmapDrawable("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/defaulticon") end
if not _ENV[lticon] then _ENV[lticon] = bitmap end
if not lttext or lttext == "" then lttext = "  " end
if string.find(lticon,"http%%") ~= nil then lticon = "https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/defaulticon" end
if string.find(lticon,"/sdcard") == nil and string.find(lticon,"emulated") == nil and string.find(lticon,"http:/") == nil and string.find(lticon,"https:/") == nil then lticon = "https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/defaulticon" end
if not lttext then lttext = "   " end
if type(_ENV[lticon])~="userdata" then return 0 end
if ltname~=qltname then
	
	
	
	
	
if string.find(lttext,"☂️")==nil then
local ctbg=chatbg()
	ltresult = luajava.loadlayout(
		{
		LinearLayout,
		padding={"12dp","0dp","0dp","0dp"},
		layout_width = "match_parent",
		layout_height = "wrap_content",
		orientation = "horizontal",
		gravity="left",
		{
			LinearLayout,
			layout_height = "40dp",
			layout_width = "40dp",
			background = _ENV[lticon],
		},
		{
			LinearLayout,
			layout_height = "wrap_content",
			layout_width = "wrap_content",
			layout_marginLeft = "10dp",
			orientation = "vertical",
			{
				TextView,
				textColor="#000000",
				text = tostring(ltname).."\n"..tostring(lttime),
				textSize = "10sp",
				layout_width = "wrap_content",
				layout_height = "wrap_content",
			}, {
				TextView,
				text = tostring(lttext),
				textSize = "14sp",
				background = ctbg,
				padding = "3dp",
				layout_width = "wrap_content",
				layout_height = "wrap_content",
			}
		}})
elseif string.find(lttext,"☂️语音")~=nil then
local ctbg=chatbg2()
	local playPath=lttext:match("☂️语音(.-)☂️")
	ltresult = luajava.loadlayout(
		{
		LinearLayout,
		padding={"12dp","0dp","0dp","0dp"},
		layout_width = "match_parent",
		layout_height = "wrap_content",
		orientation = "horizontal",
		gravity="left",
		{
			LinearLayout,
			layout_height = "40dp",
			layout_width = "40dp",
			background = _ENV[lticon],
		},
		{
			LinearLayout,
			layout_height = "wrap_content",
			layout_width = "160dp",
			layout_marginLeft = "10dp",
			orientation = "vertical",
			gravity="left",
			{
				TextView,
				textColor="#000000",
				text = tostring(ltname).."\n"..tostring(lttime),
				textSize = "10sp",
				layout_width = "240dp",
				layout_height = "wrap_content",
			}, {
				TextView,
				text = "[ 语音 ]ᵒ",
				textSize = "14sp",
				background = ctbg,
				onClick=function()
					playPath=playPath
					luajava.newThread(
					function()
						if panduan("/sdcard/Yunzhu/音频/"..playPath)~=true then
						file.download(tostring("http://149.88.75.158/"..channel.."/".."audio/"..playPath),"/sdcard/Yunzhu/音频/"..playPath)
						end
						gg.playMusic("/sdcard/Yunzhu/音频/"..playPath)
						end):start()
					end,
				padding = "3dp",
				layout_width = "wrap_content",
				layout_height = "wrap_content",
			}
		}})
elseif string.find(lttext,"☂️图片")~=nil then
local ctbg=chatbg()
	local playPath=lttext:match("☂️图片(.-)☂️")
	local tmp=("http://149.88.75.158/"..channel.."/pics/"..playPath)
	ltresult = luajava.loadlayout(
		{
		LinearLayout,
		padding={"12dp","0dp","0dp","0dp"},
		layout_width = "match_parent",
		layout_height = "wrap_content",
		orientation = "horizontal",
		{
			LinearLayout,
			layout_height = "40dp",
			layout_width = "40dp",
			background = _ENV[lticon],
		},
		{
			LinearLayout,
			layout_height = "wrap_content",
			layout_width = "160dp",
			layout_marginLeft = "10dp",
			orientation = "vertical",
			{
				TextView,
				textColor="#000000",
				text = tostring(ltname).."\n"..tostring(lttime),
				textSize = "10sp",
				layout_width = "wrap_content",
				layout_height = "wrap_content",
			}, {
				ImageView,
				src=tmp,
				background = ctbg,
				onClick=function()
					luajava.newThread(
					function()
						imagee("http://149.88.75.158/"..channel.."/pics/"..playPath)
					end):start()
				end,
				padding = "0dp",
				layout_width = "match_parent",
				layout_height = "100dp",
			}
		}})
	
end
else
	
	
	
	
if string.find(lttext,"☂️")==nil then
local ctbg=chatbg()
	ltresult = luajava.loadlayout(
		{
		LinearLayout,
		layout_width = "match_parent",
		layout_height = "wrap_content",
		orientation = "horizontal",
		gravity="right",
		{
			LinearLayout,
			layout_height = "wrap_content",
			layout_width = "160dp",
			layout_marginRight = "10dp",
			orientation = "vertical",
			gravity="right",
			{
				TextView,
				textColor="#000000",
				text = tostring(ltname).."\n"..tostring(lttime),
				textSize = "10sp",
				gravity="right",
				layout_width = "wrap_content",
				layout_height = "wrap_content",
			}, {
				TextView,
				text = tostring(lttext),
				textSize = "14sp",
				background = ctbg,
				gravity="right",
				padding = "3dp",
				layout_width = "wrap_content",
				layout_height = "wrap_content",
			}
		},{
			LinearLayout,
			layout_marginRight = "10dp",
			layout_marginLeft = "10dp",
			layout_height = "40dp",
			layout_width = "40dp",
			background = _ENV[lticon],
			onClick = function()
				luajava.newThread(function() xiuYUNZHU() end):start()
			end,
		},})
elseif string.find(lttext,"☂️语音")~=nil then
local ctbg=chatbg2()
	local playPath=lttext:match("☂️语音(.-)☂️")
	ltresult = luajava.loadlayout(
		{
		LinearLayout,
		layout_width = "match_parent",
		layout_height = "wrap_content",
		orientation = "horizontal",
		gravity="right",
		{
			LinearLayout,
			layout_height = "wrap_content",
			layout_width = "160dp",
			layout_marginLeft = "10dp",
			orientation = "vertical",
			gravity="right",
			{
				TextView,
				textColor="#000000",
				text = tostring(ltname).."\n"..tostring(lttime),
				textSize = "10sp",
				layout_width = "wrap_content",
				layout_height = "wrap_content",
				gravity="right",
			}, {
				TextView,
				text = "[ 语音 ]ᵒ",
				textSize = "14sp",
				background = ctbg,
				onClick=function()
					playPath=playPath
					luajava.newThread(
					function()
						if panduan("/sdcard/Yunzhu/音频/"..playPath)~=true then
						file.download(tostring("http://149.88.75.158/"..channel.."/audio/"..playPath),"/sdcard/Yunzhu/音频/"..playPath)
						end
						gg.playMusic("/sdcard/Yunzhu/音频/"..playPath)
						end):start()
					end,
				padding = "3dp",
				layout_width = "wrap_content",
				layout_height = "wrap_content",
			}
		},{
			LinearLayout,
			layout_marginRight = "10dp",
			layout_marginLeft = "10dp",
			layout_height = "40dp",
			layout_width = "40dp",
			background = _ENV[lticon],
			onClick = function()
				luajava.newThread(function() xiuYUNZHU() end):start()
			end,
		}})
elseif string.find(lttext,"☂️图片")~=nil then
local ctbg=chatbg()
	local playPath=lttext:match("☂️图片(.-)☂️")
	local tmp=("http://149.88.75.158/"..channel.."/pics/"..playPath)
	--gg.copyText(tostring(tmp))
	ltresult = luajava.loadlayout(
		{
		LinearLayout,
		layout_width = "match_parent",
		layout_height = "wrap_content",
		orientation = "horizontal",
		gravity="right", 
		{
			LinearLayout,
			layout_height = "wrap_content",
			layout_width = "160dp",
			layout_marginLeft = "10dp",
			orientation = "vertical",
			gravity="right",
			{
				TextView,
				textColor="#000000",
				text = tostring(ltname).."\n"..tostring(lttime),
				textSize = "10sp",
				layout_width = "wrap_content",
				layout_height = "wrap_content",
			}, {
				ImageView,
				src=tmp,
				background = ctbg,
				onClick=function()
					luajava.newThread(
					function()
						imagee("http://149.88.75.158/"..channel.."/pics/"..playPath)
					end):start()
				end,
				padding = "2dp",
				layout_width = "match_parent",
				layout_height = "100dp",
			}
		},{
			LinearLayout,
			layout_height = "40dp",
			layout_width = "40dp",
			layout_marginRight = "10dp",
			layout_marginLeft = "10dp",
			background = _ENV[lticon],
			onClick = function()
				luajava.newThread(function() xiuYUNZHU() end):start()
			end,
		},})
	
end

end
return ltresult

end
function getjb()
local jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(15)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({0xff397EF8,0xff25C4FD})
jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
return jianbians
end
tjb1=getjb()
tjb2=luajava.loadlayout {
	GradientDrawable,
	color = "#aa0082FF",
	cornerRadius = 12
}
function getjb()
local jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(15)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({0xff397EF8,0xff25C4FD})
jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
return jianbians
end
function chatbg2()
local selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, luajava.loadlayout {
	GradientDrawable,
	color = "#aa2D8BFF",
	cornerRadius = 12
}) -- 点击时候的背景
selector:addState({
	-android.R.attr.state_pressed
}, getjb()) -- 没点击的背景
return selector
end

function panduan(rec) fille,err = io.open(rec) if fille == nil then return false else return true end end
	
function chatbg()
local jb=getVerticalBG({0xee000000,0xee000000},10,2,0xffd8d8d8)
return jb
end
function getShape3()
jianbians = luajava.loadlayout({
	GradientDrawable,
	type = "linear",
	angle = "135",

})
jianbians:setCornerRadius(22)
jianbians:setOrientation(GradientDrawable.Orientation.TL_BR)
jianbians:setColors({
	0x55ffffff,0x55ffffff
})
jianbians:setStroke(5,0xffffffff)--边框宽度和颜色
return jianbians
end
switches = {}
function 开关3(name,func1,func2,nid)
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
colorvs[nid]={true,"switch"}
pcall(func1)
uiadtext(localname.." </font><font color='#0062ff'>已开启.","#161616")

else
	vibra:vibrate(9)
luajava.runUiThread(function()
	luajava.getIdValue(nid.."g"):setVisibility(View.GONE)
	YoYoImpl:with("ZoomInRight"):duration(600):playOn(switches["1s"..sname])
	luajava.getIdValue(nid.."k"):setVisibility(View.VISIBLE)
luajava.getIdValue(nid):setBackground(checkbga)
end)
colorvs[nid]={false,"switch"}
_ENV[name] = "关"
pcall(func2)
uiadtext(localname.." </font><font color='#B9342D'>已关闭.","#545454")

end
end
if localname=="摇一摇隐藏UI" then yyfunc=outfunc end
if localname=="音量键隐藏UI" then ylfunc=outfunc end
return outfunc
end
end
_ENV['tosearch']='tosearch'
function searchInSview(besearch)
	Yunzhu.setedit("tosearch","")
	if besearch=="退出" then
		adtext("<br>确定要退出？请输入“确认退出”","#C5053C")
		luajava.newThread(function()
	gg.sleep(200)
	luajava.post(function()
		ggscro:fullScroll(View.FOCUS_DOWN)
	end)
		end):start()
return 0
	end
	if besearch=="确认退出" then
		tuichu=1
		return 0
	end
	local tobesearch=besearch
	local result={} --print(forsview)
	for z,b in pairs(ewsv2) do
		forsview[z]=b
		
	end
	for i,j in pairs(forsview) do
		
		
		for k=1,#forsview[i] do
			if type(forsview[i][k])=="table" then
			if forsview[i][k].name~=nil then
			if string.find(forsview[i][k].name,tobesearch)~=nil then
				result[#result+1]={i,k}
			end
				if forsview[i][k].type=="BOX" or forsview[i][k].type=="BOX2" then
					--print(forsview[i][k])
					for key,v in pairs(forsview[i][k].vs) do
						if v.name~=nil then
							if string.find(v.name,tobesearch)~=nil then
								result[#result+1]={i,k,key}
							end
							
							if v.type=="BOX" or v.type=="BOX2" then
								--print(forsview[i][k])
								for kk,vv in pairs(v.vs) do
									if vv.name~=nil then
										if string.find(vv.name,tobesearch)~=nil then
											result[#result+1]={i,k,kk,vv}
										end
										
									end
								end
							end
							
						end
					end
				end
			end
			end
		end
	end
	if #result>=1990 then
		adtext("关于“"..besearch.."”的功能超过10个!请输入更详细的关键词.","#8c8c8c")
	elseif #result==0 then
		adtext("<br>未搜索到包含“"..besearch.."”的功能","#8c8c8c")
	else
		adtext("<br>你是否在找:","#6B7EE2")
		for i=1,#result do
			if tonumber(result[i][1])==nil then
				if #result[i]==2 then
			adtext("二级菜单</font><font color=#296BE1>"..result[i][1].."</font><font color=#8c8c8c>页的</font><font color=#F76468>“"..forsview[result[i][1]][result[i][2]].name.."”".."</font><font color=#475FA0>("..forsview[result[i][1]][result[i][2]].type..")","#8c8c8c")
			elseif #result[i]==3 then
			adtext("二级菜单</font><font color=#296BE1>"..result[i][1].."</font><font color=#8c8c8c>页的</font><font color=#F76468>“"..forsview[result[i][1]][result[i][2]].name.."”".."</font><font color=#20934B>中第"..result[i][3].."项：</font><font color=#475FA0>"..forsview[result[i][1]][result[i][2]].vs[result[i][3]].name.."("..forsview[result[i][1]][result[i][2]].vs[result[i][3]].type..")","#8c8c8c")   
			elseif #result[i]==4 then
			--print(result[i])
			--print(forsview[result[i][1]][result[i][2]].vs[1].vs[result[i][3]])
			adtext("二级菜单</font><font color=#296BE1>"..result[i][1]..
				"</font><font color=#8c8c8c>页的:</font><font color=#F76468>“"
				..forsview[result[i][1]][result[i][2]].name..
				"”".."</font><font color=#20934B>中第"..result[i][3]..
				"项：</font><font color=#475FA0>"
				..result[i][4].name
				.."("..result[i][4].type..")","#8c8c8c")   
			end
				
			else
			if #result[i]==2 then
			adtext("第</font><font color=#296BE1>"..result[i][1].."</font><font color=#8c8c8c>页的</font><font color=#F76468>“"..forsview[result[i][1]][result[i][2]].name.."”".."</font><font color=#475FA0>("..forsview[result[i][1]][result[i][2]].type..")","#8c8c8c")
			elseif #result[i]==3 then
			adtext("第</font><font color=#296BE1>"..result[i][1].."</font><font color=#8c8c8c>页的</font><font color=#F76468>“"..forsview[result[i][1]][result[i][2]].name.."”".."</font><font color=#20934B>中第"..result[i][3].."项：</font><font color=#475FA0>"..forsview[result[i][1]][result[i][2]].vs[result[i][3]].name.."("..forsview[result[i][1]][result[i][2]].vs[result[i][3]].type..")","#8c8c8c")   
			elseif #result[i]==4 then
			--print(result[i])
			--print(forsview[result[i][1]][result[i][2]].vs[1].vs[result[i][3]])
			adtext("第</font><font color=#296BE1>"..result[i][1]..
				"</font><font color=#8c8c8c>页的:</font><font color=#F76468>“"
				..forsview[result[i][1]][result[i][2]].name..
				"”".."</font><font color=#20934B>中第"..result[i][3]..
				"项：</font><font color=#475FA0>"
				..result[i][4].name
				.."("..result[i][4].type..")","#8c8c8c")   
			end
			end
		end
		--gg.copyText(tostring(result))
		切换(result[1][1])
	end
	luajava.runUiThread (function ()
	local searchUI = luajava.getIdView("tosearch")
	searchUI:setVisibility(View.GONE)
ggscro:setVisibility(View.VISIBLE)
	end)
	luajava.newThread(function()
	gg.sleep(200)
	luajava.post(function()
		ggscro:fullScroll(View.FOCUS_DOWN)
	end)
	end):start()
	
end
function adtext(txt,color,size)
if not txt then txt = "" end
if not color then color = "#000000" end
if not size then size = "10sp" end
local tmp=luajava.loadlayout(
	{
		TextView,
		text = string.fromHtml("  <font color="..color..">"..txt.."</font>"),
		textSize = size,
		--textColor = color,
		gravity="left",
		layout_width = "wrap_content",
	})
luajava.post(function()
	gggscro:addView(tmp)
end)
end
function uiadtext(txt,color,size)
if not txt then txt = "" end
if not color then color = "#000000" end
if not size then size = "10sp" end
local tmp=luajava.loadlayout(
	{
		TextView,
		text = string.fromHtml(" <font color=#545454>"..getTimeStamp(os.time()).."</font> <font color="..color..">"..txt.."</font>"),
		textSize = size,
		--textColor = color,
		gravity="left",
		layout_width = "wrap_content",
	})
luajava.runUiThread (function ()
	local searchUI = luajava.getIdView("tosearch")
	searchUI:setVisibility(View.GONE)
ggscro:setVisibility(View.VISIBLE)
	end)
luajava.post(function()
	gggscro:addView(tmp)
end)
luajava.newThread(function()
	gg.sleep(100)
	luajava.post(function()
		ggscro:fullScroll(View.FOCUS_DOWN)
	end)
end):start()

end
function searchmenu(x)
if type(ret)~='table' then return 0 end
luajava.runUiThread (function ()
	local searchUI = luajava.getIdView("tosearch")
	if tonumber(tostring(searchUI: getVisibility ())) == 8.0 then
	searchUI:setVisibility(View.VISIBLE)
ggscro:setVisibility(View.GONE)

	else
		if x==1 then 
		luajava.newThread(searchmusic):start()
		else
			besearch=tostring(luajava.getIdView('tosearch'):getText())
			if type(besearch)~='string' then besearch='' end
			if string.len(tostring(besearch)) <= 0 or tostring(besearch) == 'nil' then
	luajava.runUiThread(function()
	luajava.getIdView('tosearch'):setVisibility(View.GONE)
ggscro:setVisibility(View.VISIBLE)
end)
			return 0
	end
			luajava.newThread(function()  searchInSview(besearch) end):start()
		end
	end
	end)
end
function getTimeStamp(t)
local str = os.date("%m-%d %H:%M:%S",t)
return str
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
local ui = require('ui')

function Yunzhu.switch(name,func1,func2,miaoshu)
if not checkbg then
	checkbg = getShape2(
	45,
	{
		控件颜色,控件颜色
	},
	4,控件颜色)
checkbga = getShape2(
	45,
	{
		0xffaaaaaa,0xffaaaaaa
	},
	4,0xffaaaaaa)
switchbg1 = getShape(
	45,
	{
		0xffffffff,0xffffffff
	},
	4,0xffffffff)
switchbg2 = luajava.loadlayout {
			GradientDrawable ,
			color = "#ffffff" ,
			cornerRadius = 360
		}
end
local nid = name..guid()
local func = 开关3(name,func1,func2,nid)
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
local rest = luajava.loadlayout({
	LinearLayout,
	elevation = "5dp",
	layout_width = 'fill_parent',
	layout_height = "48dp",
	gravity = "center_vertical",
	{
		LinearLayout,
		layout_width = 'fill_parent',
		layout_height = "40dp",
		gravity = "center_vertical",
		background = luajava.loadlayout {
			GradientDrawable ,
			color = 0xdd161616 ,
			cornerRadius = 35
		} ,padding = {
		"0dp","0dp","6dp","0dp"
	},
		{
				LinearLayout,
				layout_width = 'match_parent',
				layout_height = 'match_parent',
				orientation = 'vertical',
				{
					MaterialSwitch,
					layout_width = 'match_parent',
					layout_height = 'wrap_content',
					text = name,
					textSize = "13sp",
        
        layout_marginLeft = "10dp",
        layout_weight = 1,
        textColor = "0xffffffff",
					onClick = function() luajava.newThread(function() func() end):start() end,
					
				},
			
		
			}}
})
return {["view"] = rest,
	["name"] = name,
	["func"] = func,
	["type"] = "开关",
}
end
switchs={}

suofang = function(v, event)
if isLocked then hanshu(v,event) return 0 end
local Action = event:getAction()

if Action == MotionEvent.ACTION_DOWN then
isMove = false
RawX = event:getRawX()
RawY = event:getRawY()
hx = mainLayoutParams.height
hy = mainLayoutParams.width
if hx == 0 or hx==-2 then hx = 810 hy = 1150 end
elseif Action == MotionEvent.ACTION_MOVE then
isMove = true
mubx = tonumber(hx) + (event:getRawY() - RawY)
if mubx >= 250 and mubx <= 11100 then
mainLayoutParams.height = mubx
end
muby = tonumber(hy) + (event:getRawX() - RawX)
if muby >= 250 and muby <= 24500 then
mainLayoutParams.width = muby
end
if muby<=250 and mubx<=250 then muby=250 mubx=250
--隐藏()
return 0 end
window:updateViewLayout(floatWindow, mainLayoutParams)
end
end


ckbg=getVerticalBG({0xff3A3A3C,0xff3A3A3C},360)
Yunzhu.controlRotation9 = function(control, time,t)
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
Yunzhu.controlRotation9(boxpic[tid],0,90)
boxpic[tid]:setColorFilter(控件颜色)
colorvs[tid]={true,"box"}
else
	tview : setVisibility (View.GONE)
Yunzhu.controlWater (_ENV [tid.."6"] , 200)
Yunzhu.controlRotation9(boxpic[tid],90,0)
boxpic[tid]:setColorFilter(0xffe6e6e6)
colorvs[tid]={false,"box"}
end
end
boxes = {} boxpic = {}
function Yunzhu.box (views)
local tid = "box"..guid ()
boxpic[tid] = luajava.loadlayout {
	ImageView ,
	src = getRes("hei_right"),
	layout_width = "24dp" ,
	layout_height = "24dp" ,
}
boxpic[tid]:setColorFilter(0xffe6e6e6)
local ttid = tid.."6"
local t1id = guid ()
firadio = {
	LinearLayout ,
	layout_width = 'fill_parent' ,
	layout_height = "wrap_content" ,
	layout_marginTop = "2dp" ,
	layout_marginBottom = "2dp" ,
	orientation = "vertical" ,
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
	gg.alert ("Yunzhu.box的table内第一个元素必须是string") os.exit ()
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
local vs={}
for i = 2,#views do
if type(views[i]) == "userdata" then
radios[#radios+1] = views[i]
else
	radios[#radios+1] = views[i].view
	vs[#vs+1]=views[i]
end
end
boxes[tid] = luajava.loadlayout(radios)
firadio [# firadio + 1] = boxes[tid]
_ENV [t1id] = luajava.loadlayout (firadio)
if views[1]=="" then bxn="BOX" else bxn=views[1] end
return {["view"] = _ENV [t1id],
	["name"] = bxn,
	["type"] = "BOX",
	["vs"]=vs
}
end
buts={}
heir=getRes("heir")
function Yunzhu.button(txt,func,txtc)
if not txt then txt = "未设置" end
if not txtc then txtc="#ffffff" end
local tid="Cbutton"..guid()
buts[tid]=luajava.loadlayout(
	{
		LinearLayout,
		layout_width = 'match_parent',
		layout_height = "wrap_content", {
			LinearLayout,
			layout_width = "fill_parent",
			gravity = "center_vertical",
			layout_marginTop = "5dp",
			layout_marginBottom = "5dp",
			background = getButtonBG(),
			padding="10dp",
			onClick = function() 
				Yunzhu.controlWater(buts[tid],300)
				uiadtext('执行 '..txt,"#161616")
				vibra:vibrate(10)
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
return {["view"]= buts[tid],
["name"] = txt,
	["func1"] = func,
	["type"] = "按钮",
}
end
function getButtonBG()
local selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, getVerticalBG({0x55000000,0x55000000},35))
selector:addState({
	-android.R.attr.state_pressed
}, getVerticalBG({0xdd161616,0xdd161616},35))
return selector
end

radiog={}
function Yunzhu.radio(cklist)
	local vs={}
if not radoff then
radon=getVerticalBG({0xffffffff,0xffffffff},360,20,控件颜色)
radoff=getVerticalBG({0x00ffffff,0x00ffffff},360,8,0xffaaaaaa)

end
local rid=guid()
radiog[rid]={}
rest = {
	LinearLayout ,
	layout_width = 'match_parent' ,
	layout_height = "wrap_content" ,
	layout_marginTop = "10dp" ,
	gravity = "top" ,
	orientation = "vertical" ,

}
if type (cklist [1]) == "string" then
	rds=2
rest [# rest + 1] = {
	TextView ,
	gravity = "left" ,
	padding="5dp",
	text = cklist [1] ,
	textSize = "13sp" ,
	textColor = "#d7d7d7" ,
	layout_width = 'fill_parent' ,
	layout_height = 'wrap_content' ,
	layout_marginLeft = "10dp" ,
	layout_marginRight = "5dp" ,
	layout_marginTop = "0dp" ,
	layout_marginBottom = "0dp" ,
}
else
	rds=1
end
local restt={
	LinearLayout ,
	layout_width = 'match_parent' ,
	layout_height = "wrap_content" ,
	layout_marginTop = "10dp" ,
	gravity = "top" ,
	orientation = "vertical" ,
	background=getVerticalBG({0xdd161616,0xdd161616},45),
	padding={"0dp","14dp","0dp","10dp"},
}
for i = rds , # cklist do
local name = cklist [i] [1]
local func = cklist [i] [2]
if not name then
name = "未设置"
end
nid = name..guid ()
radiog[rid][nid]=false
local func = radin(rid,nid,func)
local tid = nid..guid ()
vs[#vs+1]={
	name=name,
	func=func,
	type="单选",
}
_ENV [tid] = luajava.loadlayout ( {
	LinearLayout ,
	layout_width = '250dp' ,
	layout_height = "30dp" ,
	layout_marginTop = "5dp" ,
	layout_marginBottom = "15dp" ,
	layout_marginLeft = "4dp" ,
	layout_marginRight = "10dp" ,
	gravity = "center_vertical" ,
	onClick = function ()
		uiadtext('执行 '..name,"#161616")
	Yunzhu.controlWater (_ENV [tid] , 200)
	func()
	end

	,
	{
		ImageView ,
		id = luajava.newId (nid) ,
		layout_width = '20dp' ,
		layout_height = "20dp" ,
		layout_marginLeft = "5dp" ,
		layout_marginRight = "0dp" ,
		background =radoff ,
	} , {
		TextView ,
		gravity = "top" ,
		text = name ,
		textSize="13sp",
		textColor = "#d7d7d7" ,
		layout_weight=1,
		layout_width = 'match_parent' ,
		layout_height = 'wrap_content' ,
		layout_marginLeft = "10dp" ,
		layout_marginRight = "5dp" ,
	}
})
restt [# restt + 1] = _ENV [tid]
end
rest [# rest + 1] = restt
 return {["view"] = luajava.loadlayout(rest),
	["name"] = "单选",
	["type"] = "BOX",
	vs=vs,
}
end
function radin(rid,nid,func)
return function()
for k,v in pairs(radiog[rid]) do
	colorvs[k]={false,"rad"}
	luajava.getIdValue(k):setBackground(radoff)
	if k==nid and v~=true then
		luajava.getIdValue(k):setBackground(radon)
		colorvs[k]={true,"rad"}
		v=true
		luajava.newThread(func):start()
	end
end
end
end
当前ui=1
checkbg1 = getRes("quarkcheckoff")
checkbg2 = getRes("quarkcheckon")
switchs={}
function Yunzhu.intcheck(name,func1,func2)
nid = name..guid()
local func = 开关5(name,func1,func2,nid)
if not name then name = "未设置" end
switchs[nid] = {
	LinearLayout,
	layout_width = 'match_parent',
	layout_weight=1,
	layout_height = "42dp",
	layout_marginTop = "1dp",
	layout_marginBottom = "1dp",
	padding = "1dp",
	{
		LinearLayout,
		padding="3dp",
		onClick = function() luajava.newThread(function() func() end):start() end,
		layout_width = 'fill_parent',
		layout_height = "wrap_content",
		gravity = "center_vertical",
		--background=getVerticalBG({0xffFFFDF2,0xddffffff,0xffFFFDF2},15,8,0xffFFDA71),
		{
			FrameLayout,
			id = luajava.newId(nid),
			background = checkbg1,
			layout_width = '32dp',
			layout_height = '32dp',
			padding = "0dp",
		},{
			TextView,
			id=luajava.newId(nid.."t"),
			gravity = "left",
			text = name,
			textColor=0xff232323,
			textSize = "14sp",
--layout_marginLeft="8dp",
			layout_width = 'match_parent',
	layout_weight=1,
		},
		}
}
return {["view"] = switchs[nid],
	["name"] = name,
	["func"] = func,
	["type"] = "勾选",
}
end
function 开关5(name,func1,func2,nid)
local sname = nid
local localname=name
name = name..guid()
_ENV[name] = "关"
if func1 == nil then func1 = "" end
if func2 == nil then func2 = "" end
if type(func1) == "function" then
return function()
namers = _ENV[name]
if namers ~= "开" then
vibra:vibrate(9)
luajava.runUiThread(function()
	luajava.getIdValue(nid):setBackground(checkbg2)
	luajava.getIdValue(nid.."t"):setTextColor(控件颜色)
	colorvs[nid.."t"]={true,"txt"}
	--Yunzhu.controlWater(switchs[nid],300)
	end)
_ENV[name] = "开"
pcall(func1)
uiadtext(localname.." </font><font color='#0062ff'>已开启.","#161616")

else
	vibra:vibrate(9)
luajava.runUiThread(function()
	luajava.getIdValue(nid):setBackground(checkbg1)
	luajava.getIdValue(nid.."t"):setTextColor(0xff232323)
	colorvs[nid.."t"]={false,"txt"}
	--Yunzhu.controlWater(switchs[nid],300)
	end)
_ENV[name] = "关"
pcall(func2)
uiadtext(localname.." </font><font color='#B9342D'>已关闭.","#545454")

end
end
end
end
function Yunzhu.check(cklist)
local vs={}
if #cklist==0 then return nil end
local rest = {
	LinearLayout,
	layout_width = 'fill_parent',
	layout_height = "wrap_content",
	gravity = "center",
	orientation="vertical",

}

for i = 1, #cklist,2 do
local tempTable = {LinearLayout,
	layout_width = 'fill_parent',
	layout_height = "wrap_content",
	gravity = "left",
	orientation="horizontal"
}
for j = 0, 1 do
if cklist[i + j] ~= nil then
local name = cklist[i + j][1]
local func1 = cklist[i + j][2]
local func2 = cklist[i + j][3]
if not name then name = "未设置" end
rstt = Yunzhu.intcheck(name,func1,func2)
table.insert(tempTable, rstt.view)
table.insert(vs,rstt)
else
	table.insert(tempTable, {LinearLayout,
	layout_width = 'match_parent',
	layout_weight=1,})
end
end
table.insert(rest, tempTable)
end
return {
	view=luajava.loadlayout(rest),
	type="BOX",
	vs=vs,
	name="开关合集"
}
end
spics={
}
for i=1,55 do
	spics[i]="opo"..i
end
tcheck=1
function Yunzhu.card(cklist)
if #cklist==0 then return nil end
local vs={}
local rest = {
	LinearLayout,
	layout_width = 'fill_parent',
	layout_height = "wrap_content",
	gravity = "center",
	orientation="vertical",
	layout_marginTop="5dp",
	layout_marginBottom="5dp",
}

for i = 1, #cklist,2 do
local tempTable = {LinearLayout,
	layout_width = 'fill_parent',
	layout_height = "wrap_content",
	gravity = "left",
	orientation="horizontal"
}
for j = 0, 1 do
if cklist[i + j] ~= nil then
local name = cklist[i + j][1]
local func1 = cklist[i + j][2]
local func2 = cklist[i + j][3]
local name2 = cklist[i + j][4]
if not name then name = "未设置" end
local gid=guid()
local rstt = Yunzhu.intcard(name,name2,func1,func2,1,gid).view
vs[#vs+1]=rstt
table.insert(tempTable, rstt)
else
	table.insert(tempTable, {LinearLayout,
	layout_width = 'match_parent',
	layout_weight=1,})
end
end
table.insert(rest, tempTable)
end
return {
	view=luajava.loadlayout(rest),
	type="BOX2",
	vs=vs,
	name="卡片"
}
end

function Yunzhu.intcard(name,name2,func1,func2,ii,gid)
if tcheck==56 then
	tcheck=1
else
	tcheck=tcheck+1
end
tocheck=spics[tcheck]
local func = 开关6(name,func1,func2,gid..ii)
if not name then name = "未设置" end
if not name2 then name2="" end
switchs[gid..ii] = {
	LinearLayout,
	id = luajava.newId(gid..ii),
	layout_width = 'match_parent',
	layout_height = "wrap_content",
	layout_weight=1,
	
	layout_marginTop="5dp",
	layout_marginBottom="5dp",
	layout_marginLeft="3dp",
	layout_marginRight="3dp",
	
	{
		LinearLayout,
		padding="3dp",
		onClick = function() luajava.newThread(function() func() end):start() end,
		layout_width = 'match_parent',
		layout_height = "wrap_content",
		gravity = "left",
		background=getVerticalBG({0xdd161616,0xdd161616},25),
		orientation="vertical",
		padding="5dp",
		--background=getVerticalBG({0xffFFFDF2,0xddffffff,0xffFFFDF2},15,8,0xffFFDA71),
		{
			ImageView,
			id = luajava.newId(gid..ii.."p"),
			src = getRes(tocheck),
			gravity="left",
			layout_width = '30dp',
			layout_height = '30dp',
			padding = "3dp",
		},{
			TextView,
			id=luajava.newId(gid..ii.."t"),
			gravity = "left",
			text = name,
			textColor="#ffffff",
			textSize = "12sp",
			layout_width = 'match_parent',
			layout_weight=1,
		},{
			TextView,
			id=luajava.newId(gid..ii.."t2"),
			gravity = "left",
			text = name2,
			textColor="#aaaaaa",
			textSize = "9sp",
			layout_width = 'match_parent',
			layout_weight=1,
		}
		}
}
colorvs[gid..ii.."p"]={false,"img"}
colorvs[gid..ii.."t"]={false,"txt"}

return {["view"] = switchs[gid..ii],
	["name"] = name,
	["func"] = func,
	["type"] = "卡片",
}
end
shous={}
function 收起ck(gid,ii)
if shous[gid][1]==false then
	shous[gid][1]=true
luajava.runUiThread(function()
	luajava.getIdView(gid..ii.."p"):setColorFilter(控件颜色)
	luajava.getIdView(gid..ii.."t"):setTextColor(控件颜色)
	
	Yunzhu.controlRotation9(_ENV[gid..ii.."p"],0,180)
	for i=1,#shous[gid][2] do
		luajava.getIdView(shous[gid][2][i]):setVisibility(View.VISIBLE)
	end
end)
else
	shous[gid][1]=false
luajava.runUiThread(function()
	luajava.getIdView(gid..ii.."p"):setColorFilter(nil)
	luajava.getIdView(gid..ii.."t"):setTextColor(0xffd7d7d7)
	
	Yunzhu.controlRotation9(_ENV[gid..ii.."p"],180,360)
	for i=1,#shous[gid][2] do
		luajava.getIdView(shous[gid][2][i]):setVisibility(View.GONE)
	end
end)
end
end
opou=getRes("opou")
function Yunzhu.groupbox(gid,ii)
local func = function() 收起ck(gid,ii) end
if not name then name = "未设置" end
_ENV[gid..ii.."p"]=luajava.loadlayout{
			ImageView,
			src = opou,
			id=luajava.newId(gid..ii.."p"),
			background=ckbg,
			gravity="center",
			layout_width = '30dp',
			layout_height = '30dp',
			padding = "8dp",
		}
switchs[gid..ii] = {
	LinearLayout,
	id=luajava.newId(gid..ii),
	layout_width = 'match_parent',
	layout_weight=1,
	layout_height = "wrap_content",
	layout_marginTop = "1dp",
	layout_marginBottom = "1dp",
	padding = "1dp",
	{
		LinearLayout,
		padding="3dp",
		onClick = func,
		layout_width = 'fill_parent',
		layout_height = "wrap_content",
		gravity = "center_horizontal",
		orientation="vertical",
		--background=getVerticalBG({0xffFFFDF2,0xddffffff,0xffFFFDF2},15,8,0xffFFDA71),
		_ENV[gid..ii.."p"],{
			TextView,
			id=luajava.newId(gid..ii.."t"),
			gravity = "center",
			text = "展开",
			textColor="#d7d7d7",
			textSize = "9sp",
--layout_marginLeft="8dp",
			layout_width = 'match_parent',
	layout_weight=1,
		},
		}
}
colorvs[gid..ii.."p"]={false,"img"}
colorvs[gid..ii.."t"]={gid..ii.."t",false,"txt"}
return switchs[gid..ii]
end
function 开关6(name,func1,func2,nid)
local sname = nid
local localname=name
name = name
kgs[name] = "关"
if func1 == nil then func1 = "" end
if func2 == nil then func2 = "" end
if type(func1) == "function" then
return function()
namers = kgs[name]
if namers ~= "开" then
vibra:vibrate(9)
luajava.runUiThread(function()
	luajava.getIdValue(nid.."t"):setTextColor(控件颜色)
	luajava.getIdValue(nid.."t2"):setTextColor(控件颜色)
	luajava.getIdValue(nid.."p"):setColorFilter(控件颜色)
	colorvs[nid.."p"]={true,"img"}
	colorvs[nid.."t"]={true,"txt"}
	colorvs[nid.."t2"]={true,"txt"}
	--Yunzhu.controlWater(switchs[nid],300)
	end)
kgs[name] = "开"
uiadtext(localname.." 已开启.","#000000")

pcall(func1)
else
	vibra:vibrate(9)
luajava.runUiThread(function()
	luajava.getIdValue(nid.."t"):setTextColor(0xffffffff)
	luajava.getIdValue(nid.."p"):setColorFilter(0xffd7d7d7)
	luajava.getIdValue(nid.."t2"):setTextColor(0xffaaaaaa)
	colorvs[nid.."p"]={false,"img"}
	colorvs[nid.."t"]={false,"txt"}
	colorvs[nid.."t2"]={false,"txt"}
	--Yunzhu.controlWater(switchs[nid],300)
	end)
kgs[name] = "关"
uiadtext(localname.." 已关闭.","#545454")

pcall(func2)
end
end
end
end
function Yunzhu.intgroup(name,func1,func2,ii,gid,pic)
if pic~=nil then
	tocheck=获取图片(pic)
else
if tcheck==56 then
	tcheck=1
else
	tcheck=tcheck+1
end
tocheck=getRes(spics[tcheck])
end
local func = 开关group(name,func1,func2,gid..ii)
if not name then name = "未设置" end
switchs[gid..ii] = {
	LinearLayout,
	id = luajava.newId(gid..ii),
	layout_width = "match_parent",
	layout_weight=1,
	layout_height = "wrap_content",
	layout_marginTop = "1dp",
	layout_marginBottom = "1dp",
	padding = "1dp",
	{
		LinearLayout,
		padding="3dp",
		onClick = function() luajava.newThread(function() func() end):start() end,
		layout_width = 'fill_parent',
		layout_height = "wrap_content",
		gravity = "center_horizontal",
		orientation="vertical",
		--background=getVerticalBG({0xffFFFDF2,0xddffffff,0xffFFFDF2},15,8,0xffFFDA71),
		{
			ImageView,
			id = luajava.newId(gid..ii.."p"),
			src=tocheck,
			gravity="center",
			layout_width = '30dp',
			layout_height = '30dp',
			padding = "2dp",
		},{
			TextView,
			id=luajava.newId(gid..ii.."t"),
			gravity = "center",
			text = name,
			textColor="#d7d7d7",
			textSize = "9sp",
--layout_marginLeft="8dp",
			layout_width = 'match_parent',
	layout_weight=1,
		},
		}
}
colorvs[gid..ii.."p"]={false,"img"}
colorvs[gid..ii.."t"]={gid..ii.."t",false,"txt"}
return {["view"] = switchs[gid..ii],
	["name"] = name,
	["func"] = func,
	["type"] = "勾选",
}
end
function 开关group(name,func1,func2,nid)
local sname = nid
local localname=name
name = name
kgs[name] = "关"
if func1 == nil then func1 = "" end
if func2 == nil then func2 = "" end
if type(func1) == "function" then
return function()
namers = kgs[name]
if namers ~= "开" then
vibra:vibrate(9)
luajava.runUiThread(function()
	luajava.getIdValue(nid.."t"):setTextColor(控件颜色)
	luajava.getIdValue(nid.."p"):setColorFilter(控件颜色)
	colorvs[nid.."p"]={true,"img"}
	colorvs[nid.."t"]={true,"txt"}
	--Yunzhu.controlWater(switchs[nid],300)
	end)
kgs[name] = "开"
uiadtext(localname.." 已开启.","#000000")

pcall(func1)
else
	vibra:vibrate(9)
luajava.runUiThread(function()
	luajava.getIdValue(nid.."t"):setTextColor(0xffd7d7d7)
	luajava.getIdValue(nid.."p"):setColorFilter(0xffd7d7d7)
	colorvs[nid.."p"]={false,"img"}
	colorvs[nid.."t"]={false,"txt"}
	--Yunzhu.controlWater(switchs[nid],300)
	end)
kgs[name] = "关"
uiadtext(localname.." 已关闭.","#545454")

pcall(func2)
end
end
end
end
local nulfunc=function() end

function Yunzhu.group(cklist)
	local vs={}
    local gid = guid()
    local parentLayout = {
        LinearLayout,
        layout_width = "match_parent",
        layout_height = "wrap_content",
        gravity = "center",
        orientation = "vertical",
        background=getVerticalBG({0xdd161616,0xdd161616},25),
    }
    for i = 1, #cklist,3 do
    	local tempTable = {LinearLayout,
    		id=luajava.newId(gid..'p'..i),
			layout_width = 'fill_parent',
			layout_height = "wrap_content",
			gravity = "left",
			orientation="horizontal"
		}
		for j = 0, 2 do
			if cklist[i+j]~=nil then
	        local name = cklist[i+j][1] or "未设置"
	        local func1 = cklist[i+j][2] or nulfunc
	        local func2 = cklist[i+j][3] or nulfunc
	        local pic = cklist[i+j][4]
	        local t=Yunzhu.intgroup(name, func1, func2, i+j, gid, pic)
	        local rstt = t.view
	        table.insert(vs,t)
			if i+j >= 9 then
	            -- 当组件数量达到9个时，执行原逻辑
	            if #cklist > 9 then--大于9的整体情况
	            	lastrstt=rstt
	            	if i+j==9 then--第九个
		                local rs = Yunzhu.groupbox(gid,'box')
		                table.insert(tempTable, rs)
		                table.insert(cklist,9,{nil,nil,nil,nil})
		                shous[gid]={false,{}}
	                else
	                	--10以后的情况
	                	--rstt.visibility='gone'
	                	tempTable.visibility='gone'
	                	table.insert(shous[gid][2],gid..'p'..i)
	    				table.insert(tempTable, lastrstt)
	            	end
	            else
	            	table.insert(tempTable, rstt)
	            end
			else
				--正常情况
				table.insert(tempTable, rstt)
			end
			else
				table.insert(tempTable, {LinearLayout,
				layout_width = 'match_parent',
				layout_weight=1,})
			end
		end
		table.insert(parentLayout,tempTable)
	end
    return {
        view = luajava.loadlayout(parentLayout),
        type = "BOX",
        vs = vs,
        name = "开关合集"
    }
end


Yunzhu.controlRotation9 = function(control, time,t)
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
function hexTo255(rgbHex)
local rgbHex = string.format("%x", rgbHex)
local red = tonumber(rgbHex:sub(3, 4), 16)
local green = tonumber(rgbHex:sub(5, 6), 16)
local blue = tonumber(rgbHex:sub(7, 8), 16)
return {red,green,blue}
end
function changeColor(co)
控件颜色=co
for i=1,#stab do
sballl[i][2]=newbg({控件颜色,控件颜色},0,0xff000000,360,360,360,360)
end

if parti2~=nil then
luajava.post(function() webv_:removeView(parti2) parti2:destroy() end)
if parti2~=nil then
parti2=nil
end
local t=hexTo255(控件颜色)
local a,b,c=t[1],t[2],t[3]
parti2=particle2(
	"rgba("..a..","..b..","..c..",0.1)",
	"rgba("..a..","..b..","..c..",1)",
	"#"..string.sub(string.format("%x", 控件颜色),3,-1))
luajava.post(function() webv_:addView(parti2) end)
end
luajava.runUiThread(function()
--_ENV["jm"..当前ui.."t"]:setTextColor(控件颜色)
luajava.getIdView('sbal'..当前ui):setBackground(sballl[当前ui][2])
luajava.getIdView("backv"):setColorFilter(控件颜色)
luajava.getIdView("suov"):setColorFilter(控件颜色)
tops:setBackground(getVerticalBG({控件颜色,控件颜色},30))
checkbg = getShape2(45,{控件颜色,控件颜色},4,控件颜色)
radon=getVerticalBG({0xffffffff,0xffffffff},360,20,控件颜色)
luajava.getIdView("tosearch"):setHintTextColor(控件颜色)
--uiadtext('已刷新控件颜色',控件颜色)
musici:setColorFilter(控件颜色)
searchi:setColorFilter(控件颜色)
for k,v in pairs(colorvs) do
	if v[1]==true then
		if v[2]=="switch" then
			luajava.getIdValue(k):setBackground(checkbg)
		elseif v[2]=="box" then
			boxpic[k]:setColorFilter(控件颜色)
		elseif v[2]=="txt" then
			luajava.getIdValue(k):setTextColor(控件颜色)
		elseif v[2]=="img" then
			luajava.getIdValue(k):setColorFilter(控件颜色)
		elseif v[2]=="rad" then
			luajava.getIdValue(k):setBackground(radon)
		elseif v[2]=="seek" then
			luajava.getIdView(k):setProgressDrawable( getVerticalBG({控件颜色,控件颜色},45))
		end
	end
end
end)
end
currentIndex = 1

-- 定义一个函数来打印当前遍历到的table项，并更新索引位置
function 预置颜色()
-- 获取当前遍历到的项
local currentItem = 颜色表[currentIndex]

-- 打印当前项
changeColor(currentItem)

-- 更新索引位置
currentIndex = currentIndex + 1

-- 如果索引已经达到最大值，则重置为1，回到第一项
if currentIndex > #颜色表 then
currentIndex = 1
end
end
function Yunzhu.image(img,height,width,pad,func)
if not func then func=function() end end
if not pad then pad="0dp" end
if not height then height="80dp" end
if not width then width="80dp" end
return luajava.loadlayout({
	LinearLayout,
	layout_height="wrap_content",
	layout_width="fill_parent",
	gravity="center",
	{
	ImageView,
	layout_height=height,
	layout_width=width,
	padding=pad,
	src=获取图片(img),
	onClick=function() luajava.newThread(func):start() end,
}})

end
function Yunzhu.edit (name , hint)
_ENV [name] = name..guid ()
if not hint then
hint = name
end
rest = luajava.loadlayout ( {
	LinearLayout ,
	layout_width = 'fill_parent' ,
	{
		LinearLayout ,
		layout_width = 'fill_parent' ,
		layout_height = "40dp" ,
		layout_marginTop = "5dp" ,
		layout_marginBottom = "5dp" ,
		layout_marginLeft = "0dp" ,
		layout_marginRight = "0dp" ,
		gravity = "center_vertical" ,
		{
			EditText ,
			background = getButtonBG(),
			gravity = "center" ,
			hint = hint ,
			textColor=ffffff,
			textSize = "13sp",
			layout_height = "40dp" ,
			layout_marginBottom = "-2dp",
			id=luajava.newId(_ENV [name]),
			layout_width = 'fill' ,
			
		}
	}
})
luajava.getIdValue(_ENV [name]):setHintTextColor(0xffd7d7d7)
return rest
end
function Yunzhu.getedit (name)
edit = tostring (luajava.getIdValue (_ENV [name]) : getText ())
return edit
end
function Yunzhu.setedit (name , txt)
txt = tostring (txt)
luajava.runUiThread (function ()
	luajava.getIdValue (_ENV [name]) : setText (txt)
	end

)
end
chazhi={} chajv={}
function Yunzhu.seek(name,bian,smin,smax,nows)
_ENV[bian] =nows
local thum= getVerticalBG({0xffffffff,0xffffffff},4,10,switch颜色)
thum:setSize(30, 40)
smin=tonumber(smin) smax=tonumber(smax)
chajv[bian]=smax-smin
chazhi[bian]=1-smin
if smin==nil then smin=1 smax=10 end
truesmin=1
truesmax=truesmin+chajv[bian]
if not nows then nows = smin tnows=(smin-nows)
else
tnows=(nows-smin)+1
end
if _ENV[bian] == nil then _ENV[bian] = 1.0 end
if not name then name = "未设置" end
local names = name..guid()
rest = luajava.loadlayout({
	LinearLayout,
	layout_width = 'fill_parent',
	layout_hight = "fill_parent",
	{
		LinearLayout,
		layout_width = 'fill_parent',
		layout_hight = "fill_parent",
		layout_marginTop = "5dp",
		layout_marginBottom = "5dp",
		gravity = "center_vertical",
		background = getVerticalBG({0xdd161616,0xdd161616},45),
		{
			TextView,
			padding={"5dp","10dp","0dp","10dp",},
			gravity = "top",
			textColor="#ffffff",
			text = name..":"..nows,
			id = luajava.newId(names),
			layout_width = '100dp',
			--layout_marginLeft = "5dp",
			textSize='13sp',
			layout_marginRight = "0dp",
		},
		{
			SeekBar,
			layout_width = 'fill_parent',
			layout_weight=1,
			id=luajava.newId(name.."seekbar"),
			min = truesmin,
			max = truesmax,
			progress=tnows,
			--paddingStart="0dp",
			--paddingEnd="0dp",
			progressDrawable={ getVerticalBG({控件颜色,控件颜色},45)},
			thumb=thum,
			progressHeight="10dp",
			onSeekBarChange = {
				onProgressChanged = function(SeekBar, var2, var3)
				if not var3 then
				return
				end
		  local resultvar=tonumber(string.sub(var2,0,-3))-chazhi[bian]
				luajava.runUiThread(function()
				luajava.getIdValue(names):setText(name..":".. resultvar)
				end)
				_ENV[bian] = resultvar
				end
			}}
	}})
colorvs[name.."seekbar"]={true,"seek"}
return rest
end
function Yunzhu.text(text,color,size,isjz)
if not color then color="#161616" end
if isjz then
	return {["view"] = luajava.loadlayout(
	{
		TextView,
		text = txt,
		textSize = size,
		textColor = color,
		layout_height='wrap_content',
		gravity='center',
		layout_width = "match_parent",
	}),
	["name"] = txt,
	["type"] = "文本",
}
else
return luajava.loadlayout({
	TextView,
	text=text,
	textColor=color,
	textSize=size,
	layout_height="wrap_content",
	layout_width="match_parent",
	autoSizeTextType="uniform",
})
end
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
jianbians:setStroke(4,"0x33000000")--边框宽度和颜色

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
	
	luajava.runUiThread(function()
	mustxt = luajava.getIdView("tosearch"):getText()
	luajava.getIdView("tosearch"):setText('')
	--searchmenu()
	end)
	if not wryt then
	else
		runnable = luajava.getRunnable(function()
			luajava.getIdView("搜索列表"):removeView(wyr)
		end)
		handler = luajava.getHandler()
		handler:post(runnable)
	end
	if string.len(tostring(mustxt)) <= 0 or tostring(mustxt) == 'nil' then
	luajava.runUiThread(function()
	luajava.getIdView('tosearch'):setVisibility(View.GONE)
ggscro:setVisibility(View.VISIBLE)
end)
			return 0
	end
	if not lasttm then
		lasttm = os.time()
	else
		if os.time() - lasttm <= 5 then
			gg.alert("请在" .. (5 - (os.time() - lasttm)) .. "秒冷却后搜索")
			return 0
		end
	end
	切换(5)
	 gg.sleep(100)
	if string.len(tostring(mustxt)) <= 2 or tostring(mustxt) == 'nil' then
		gg.alert("至少输入2个字符")
		return 0
	end
	mustxt = tostring(mustxt)
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
			layout_width = "match_parent",
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
				layout_width = "match_parent",
				gravity = "center"

			},
			{
				TextView,
				layout_marginTop = "0dp",
				textColor = "#535353",
				textSize = "12sp",
				layout_marginBottom = "5dp",
				text = musart,
				layout_hight = "10dp",
layout_width = "match_parent",
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
	-- gg.alert(tostring(wrfun))
end
function bofang(gqmz, gdmn)
	luajava.runUiThread(function()
		luajava.getIdView("搜索结果"):setVisibility(View.GONE)
		luajava.getIdView("加载"):setVisibility(View.VISIBLE)

	end)

	gg.playMusic("http://music.163.com/song/media/outer/url?id="..gdmn..".mp3" or huoqu(gdmn).data[0].url)
	uiadtext("正在播放 </font><font color='#0062ff'>"..gqmz,"#161616")
	gg.sleep(2000)
	luajava.runUiThread(function()
		luajava.getIdView("加载"):setVisibility(View.GONE)
		luajava.getIdView("搜索结果"):setVisibility(View.VISIBLE)
	end)
end
jiaz = {
	TextView,
	text = "正在加载歌曲资源",
	visibility = "gone",
	id = luajava.newId("加载"),
	textSize = "20sp",
	gravity = "center",
	textColor="#000000",
}
kgs={}
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
			Yunzhu.text('请在上方搜索音乐关键词',0xff245AFF).view
			,
			},
			
			id = luajava.newId("搜索列表"),
			layout_hight = "200dp",
			orientation = "vertical",
			layout_width = "match_parent",
			gravity="center_horizontal",
			jiaz
		}
	}
})

local g = {}
g.file = gg.getFile()
g.sel = nil
gqlb={"请先搜索歌曲",}
idb={"1010"}
SN,gc=1,nil
g.config = gg.getFile():gsub('%lua$', '')..'cfg'
function bei()
g.data = loadfile(g.config)
if g.data ~= nil then
g.sel = g.data()
g.data = nil
end
if g.sel == nil then
g.sel = {"","10"}
end
end
bei()
------
--搜索歌曲
function start(name,sl)
    fw=gg.makeRequest("http://music.163.com/api/search/get?s="..name.."&type=1&offset=0&total=true&limit="..sl)
return fw
end
-----
--歌词
function Lyric(gid)
geci=gg.makeRequest("http://music.163.com/api/song/media?id="..gid).content
geci = string.gsub(geci, "%[%d%d%p%d%d%p%d%d%d%]", "")
geci = string.gsub(geci, "%[%d%d%p%d%d%p%d%d%]", "")
geci = string.gsub(geci, "%[%d%d%p%d%d%p%d%]", "")
geci=zjson(geci)
return geci.lyric
end
--播放音乐
function play(id,name)
gg.toast("正在播放音乐："..name,true)
gg.playMusic("http://music.163.com/song/media/outer/url?id="..id..".mp3")
end
--停止播放
function stop()
gg.toast("正在停止播放...")
for i=1,100 do
gg.playMusic("stop")
end
gg.toast("播放已停止")
end
----
function Play(gqlb,idb)
SN = gg.choice(gqlb,nil,ts)
if SN == nil then YUNZHUCK =-1 else
sn=gg.choice({"播放音乐","查看歌词","下载歌曲"},nil,"歌曲："..gqlb[SN])
if sn == nil then end
if sn == 1 then
play(idb[SN],gqlb[SN])
end
if sn == 2 then
gc=Lyric(idb[SN])
gg.alert(gc)
end
if sn == 3 then
local XEY=gg.makeRequest("http://music.163.com/song/media/outer/url?id="..idb[SN]..".mp3").content
            local XEY1=gg.getFile():gsub("[^/]+$","")..gqlb[SN]..".mp3"
            io.open(XEY1,"w"):write(XEY)
            gg.alert("音乐已成功下载位置:\n\n"..XEY1)
        end
end
YUNZHUCK=-1
end

function zjson(jsonr)
local str = jsonr
-- 匹配Json Key的正则表达式
local pattern = "\"[%w]+\":"
string.gsub(str, pattern, function(v)
    if string.find(str, v) then
        str = string.gsub(str, v, string.gsub(v, "\"", ""))
    end
end)
str = string.gsub(str, ":", "=")
str = string.gsub(str, "%[", "{")
str = string.gsub(str, "%]", "}")
local data = "return " .. str
local res = load(data)()
return res
end


function json(con)
res=zjson(con)
    zd=res.result.songCount
    pd=go3-zd
    if pd <= 0 then else go3=zd end
    ts="《"..go1.."》找到"..zd.."首歌曲，当前显示"..go3.."首"
    gqlb={}
    idb={}

    for i=1,go3 do
        if res.result.songs[i] then
            gqlb[i]=res.result.songs[i].name
            idb[i]=res.result.songs[i].id
        end
    end
    --print(idb)
end

function huiz()
--如果有绘制请写到这里面否则会消失
draw.text('.', -9200,-9200)
	
	
end
huiz()

muby=850
--初始宽度 竖屏建议850 横屏建议1310


mubx=1310
--初始高度 竖屏建议1310 横屏建议850


右上角标题='YUNZHU LIUQUID BOUNCE'

--初始颜色，填写十六进制RGB
--可在功能按钮里调用changeColor()随时自定义切换
--例如：changeColor(0xffFF0023)
--可以在开启某个功能的同时变色，比如开了防封变绿色，开了高危功能变红色
控件颜色=0xffFFB94D

颜色表={--切换颜色的列表
	0xff33AF61,
	0xffFFB94D,
	0xffFF0023,
	0xff008CFF,
	0xffA6FF00,
	0xffFF95F2,
	0xff946AFF,
	0xffffffff,
	0xff545454,
	0xff3eede7,
}

悬浮窗图标="https://cdn-community.codemao.cn/47/community/d2ViXzUwMDFfMTAwMTQwOTNfMTQ2NzVfMTcxODI3NTQ2NDY3OF9lMjdiMzExYQ.png"
卡网="https://916.longpai.hk/links/9F2E8E4C"
stab={
	"公告",
	"防封",
	"刷号",
	"竞赛",
	"音乐",
	"聊天",
	"设置",
}

创建窗口("窗口示例",--窗口名字
	{
		Yunzhu.switch(
			"防封1",
			function()
				
			end,
			function()
				
			end),
		Yunzhu.switch(
			"防封2",
			function()
				
			end,
			function()
				
			end),
		
		
		
	})


Yunzhu.menu({
	{--第一页
	Yunzhu.card({
					{
						"防封",
						function()
							
						end,
						function()
							
						end,
						"防封用法xxx"
					}, {
						"功能",
						function()
							
						end,
						function()
							
						end,
						"功能介绍xxx"
					},{
						"功能",
						function()
							
						end,
						function()
							
						end,
						--"xxxxxxx"--可留空
					},
					
					
			}),
			Yunzhu.edit("输入框例子"),
		Yunzhu.button(
			"调用输入框",
			function()
				local tmp=Yunzhu.getedit("输入框例子")--名字写输入框名字
				gg.alert(tmp)
			end),
		Yunzhu.seek("拉条例子","ltlz",1,100,1),--名字，变量名字，最小，最大，初始
		Yunzhu.button(
			"调用拉条",
			function()
				gg.alert(ltlz)--上边ltlz直接调用
			end),
			Yunzhu.button("打开窗口",
			function()
				打开窗口("窗口示例")
				end
			),
	},{--第2页
	},{--第3页
	},{--第4页
	},{--第5页
		wyylog,--------音乐勿动
						Yunzhu.button("搜索音乐",
                           function ()
                   search = gg.prompt({
								"输入要搜索的歌曲\n可加上歌手名字",
								"设置显示数量(数字)",
							},g.sel,{
								"text",
							})
							if not search then return end
							gg.saveVariable(search,g.config)
							bei()
							go1=search[1]
							go3=search[2]
							jg=start(go1,go3)
							if jg.code == 200 then
								fh=jg.content
								fh=json(fh)
								--print(fh)
								Play(gqlb,idb)
								else
								function inspect()
									gg.alert("访问网络异常，错误代码：\n\n"..jg.code)
								end
								if not pcall(inspect) then print("网络异常，请先连接上网络") os.exit() end
							end
							YUNZHUCK=-1
                    end),
	Yunzhu.button("关闭音乐",
function ()
for i=1,2 do
gg.playMusic("stop")
gg.playMusic("stop")
gg.playMusic("stop")
end
gg.toast("已停止音乐")
end),
Yunzhu.box({"可选音乐",
Yunzhu.card({--栏目名
{"热歌榜",--小功能名
					function()
A="https://api.uomg.com/api/rand.music?sort=热歌榜&format=json"
Obtain=gg.makeRequest(A).content
muchen=Obtain:match('url":"(.-)","picurl')
name=Obtain:match('name":"(.-)","')
gg.alert('开始播放['..name..']')
gg.playMusic(muchen)
					end
				}, {
					"新歌榜",
					function()
A="https://api.uomg.com/api/rand.music?sort=新歌榜&format=json"
Obtain=gg.makeRequest(A).content
muchen=Obtain:match('url":"(.-)","picurl')
name=Obtain:match('name":"(.-)","')
gg.alert('开始播放['..name..']')
gg.playMusic(muchen)
					end
				}, {			"飙升榜",
					function()
A="https://api.uomg.com/api/rand.music?sort=飙升榜&format=json"
Obtain=gg.makeRequest(A).content
muchen=Obtain:match('url":"(.-)","picurl')
name=Obtain:match('name":"(.-)","')
gg.alert('开始播放['..name..']')
gg.playMusic(muchen)
					end
				}, {
					"抖音榜",
					function()
A="https://api.uomg.com/api/rand.music?sort=抖音榜&format=json"
Obtain=gg.makeRequest(A).content
muchen=Obtain:match('url":"(.-)","picurl')
name=Obtain:match('name":"(.-)","')
gg.alert('开始播放['..name..']')
gg.playMusic(muchen)
					end
				},
				{
					"电音榜",
					function()
A="https://api.uomg.com/api/rand.music?sort=电音榜&format=json"
Obtain=gg.makeRequest(A).content
muchen=Obtain:match('url":"(.-)","picurl')
name=Obtain:match('name":"(.-)","')
gg.alert('开始播放['..name..']')
gg.playMusic(muchen)
					end
				},
})
}),
	},{--聊天室
	
	},{--第7页
		tiaose(),
	
		Yunzhu.switch(
			'音量键隐藏UI',
			function()
				音量键=true
			end,
			function()
				音量键=false
			end),
		Yunzhu.switch(
			'摇一摇隐藏UI',
			function()
				摇一摇=true
			end,
			function()
				摇一摇=false
			end),
		Yunzhu.switch(
			'关闭流星',
			function()
				if parti2~=nil then
					luajava.post(function() webv_:removeView(parti2) parti2:destroy() end)
					parti2=nil
				end
			end,
			function()
				if parti2==nil then
					local t=hexTo255(控件颜色)
					local a,b,c=t[1],t[2],t[3]
					parti2=particle2(
						"rgba("..a..","..b..","..c..",0.1)",
						"rgba("..a..","..b..","..c..",1)",
						"#"..string.sub(string.format("%x", 控件颜色),3,-1))
					luajava.post(function() webv_:addView(parti2) end)
				end
			end),
		Yunzhu.button("退出",
			function()
				tuichu=1
			end)
	},
})