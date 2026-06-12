
if (rlgg.VERSION < 2.09) then
	gg.alert('请使用大于等于2.09版本的RLGG')
	os.exit()
end
local typeface = import("android.graphics.Typeface")
local FontPath = "/storage/emulated/0/云烛/配置文件/huopo.ttf"--字体路径
local font = typeface:createFromFile(FontPath)


local baseWindow = require 'floatingWindowManager2'
setTheme(R.style.Theme_Material3_Pink)

if not baseWindow.getContext then
	gg.alert('请重启一下RLGG')
	app.exit()
end

local context = baseWindow:getContext()
local path = '/storage/emulated/0/长安/配置文件/tagcloud'
local dexloader = dex.loadfile(path)

---@type com.moxun.tagcloudlib.view.TagCloudView
local TagCloudView = dexloader:loadClass('com.moxun.tagcloudlib.view.TagCloudView')
local MyTagsAdapter = dexloader:loadClass('cn.rlyun.a3dtagcloudandroid.MyTagsAdapter')

--[[

floatingWindowManager2 是基于RLGG开发的悬浮窗模块,帮助开发者高效实现UI

目前模块尚未完成开发,还有大量工作需要完成
暂时提供一个示例简单,具体自己探索实现 (后期逐步更新更多示例)


]]
material={"animation","appbar","badge","behavior","bottomappbar","bottomnavigation","bottomsheet","button","canvas","card","checkbox","chip","circularreveal","color","datepicker","dialog","divider","drawable","elevation","expandable","floatingactionbutton","imageview","internal","math","navigation","navigationrail","progressindicator","radiobutton","resources","ripple","shadow","shape","slider","snackbar","stateful","switchmaterial","tabs","textfield","textview","theme","timepicker","tooltip","transformation","transition",}
local path="com.google.android.material."
import (path.."*")
for _,v in pairs(material) do
  import(path..v..".*")
end

import "android.graphics.Color"
import "android.content.res.ColorStateList"
function SliderColor(id,color1,color2,color3)
  id:setTrackActiveTintList(ColorStateList({{}},{"0xff"..color1}))
  id:setTrackInactiveTintList(ColorStateList({{}},{"0x50"..color2}))
  id:setThumbTintList(ColorStateList({{}},{"0xff"..color3}))
  end
  function SwitchColor(id,color1,color2)
  id:setTrackTintList(ColorStateList({{android.R.attr.state_checked},{}},{color1,color2}))
  end
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
import 'com.google.android.material.progressindicator.LinearProgressIndicator'
import 'com.google.android.material.progressindicator.CircularProgressIndicator'
import 'com.google.android.material.chip.ChipGroup'
import 'com.google.android.material.chip.Chip'
import 'com.google.android.material.radiobutton.MaterialRadioButton'
import 'com.google.android.material.checkbox.MaterialCheckBox'

import 'androidx.coordinatorlayout.widget.CoordinatorLayout'
import 'androidx.core.widget.NestedScrollView'

import 'android.graphics.drawable.Icon'

import 'android.widget.LinearLayout'
import 'android.widget.Button'
import 'android.widget.TextView'
import 'android.widget.ScrollView'
import 'android.widget.RadioGroup'


import 'java.lang.CharSequence'
import 'java.lang.Boolean'
import 'java.lang.reflect.Array'
--import 'androidx.compose.material3.ColorScheme'  
--import 'androidx.compose.ui.graphics.Color'  
  
--[[local colorScheme = ColorScheme{
    primary = '0xFF6200EE', 
    onPrimary = '0xFfffffff', 
    
}]]
--SwitchMaterial switchMaterial = findViewById(R.id.switchMaterial);



function f1()
	gg.alert('功能1')
end
--Snackbar:make(ckou,"启动进程结束 欢迎使用",Snackbar.LENGTH_SHORT):setBackgroundTint("0xff161616"):show()
-- 浅色模式
baseWindow:lightMode()

-- 深色模式
--baseWindow:darkMode()

local t = {}
function t:addCardDemo(className, layout)
				self:addLayout({
					MaterialCardView,
					layout_width = 'match_parent',
					layout_height = 'wrap_content',
					layout_margin = "12dp",
					elevation = '8dp',
					{
						LinearLayout,
						layout_margin = "8dp",
						layout_width = 'match_parent',
						layout_height = 'wrap_content',
						orientation = 'vertical',
						{
							TextView,
							layout_width = 'match_parent',
							layout_height = 'wrap_content',
							text = className,
						},
						layout
					}
				})
			end
		
		

function hexTo255(rgbHex)
local rgbHex = string.format("%x", rgbHex)
local red = tonumber(rgbHex:sub(3, 4), 16)
local green = tonumber(rgbHex:sub(5, 6), 16)
local blue = tonumber(rgbHex:sub(7, 8), 16)
return {red,green,blue}
end


if tonumber(device.width)==nil then
dwidth=1340
dheight=2300
else
dwidth=device.width
dheight=device.height
end
function hytext(text1,text2,text3,color)
local webView = luajava.webView(function(webView)
	webView:loadData([[
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <title>]]..text1..[[</title>
 
    <style>
      html,
      *{
    /* 初始化 */
    margin: 0;
    padding: 0;
}
body{
    height: 2vw;
    /* 弹性布局 水平+垂直居中 */
    display: flex;
    justify-content: center;
    align-items: center;
    background-color: 0x33000000;
}
h1{
    /* 文本透明 */
    color: transparent;
    font-size: 18px;
    letter-spacing: 5px;
    /* 渐变背景 */
    background: linear-gradient(to right,]]..color[1]..[[,]]..color[2]..[[,]]..color[3]..[[);
    /* 裁剪掉文字以外的区域 */
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    background-size: 80%;
    background-repeat: repeat;
    background-position: center;
    /* 执行动画：动画名 时长 线性 无线播放 */
    animation: move 5s linear infinite;
    position:absolute;
    top:1px
}
p{
  color: white;
  font-size: 5px;
  align-items: center;
  }
/* 定义动画 */
@keyframes move {
    0%{
        background-position: -400%;
    }
    100%{
        background-position: 400%;
    }
}
    </style>
  </head>
  <body>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">

    <title>纯CSS实现文本背景扫光效果</title>
    <link rel="stylesheet" href="113.css">
</head>

<body>
    <h1>]]..text2..[[<br>  <p>]]..text3..[[</p></h1>
    

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
-----------

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
parti=particle(
	"rgba(103,80,164,0.1)",
	"rgba(103,80,164,1)",
	"#6750A4")
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
changan = {} huiz = function() end
window = context:getSystemService("window") -- 获取窗口管理器
local function panduan(rec) fille,err = io.open(rec) if fille == nil then return false else return true end end

function checkimg2(tmp,ii)
if panduan("/sdcard/浪子/图片/"..tmp) ~= true then
gg.toast("正在下载资源"..ii.."/"..#ckimg2.."\n请耐心等待")
luajava.download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..tmp,"/sdcard/浪子/图片/"..tmp)
else
if file.length("/sdcard/浪子/图片/"..tmp) <= 1 then
gg.toast("正在下载资源"..ii.."/"..#ckimg2.."\n请耐心等待")
luajava.download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..tmp,"/sdcard/浪子/图片/"..tmp)
end
end
if panduan("/sdcard/浪子/图片/"..tmp) ~= true then
gg.toast("正在下载资源"..ii.."/"..#ckimg2.."\n请耐心等待")
luajava.download("https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/"..tmp,"/sdcard/浪子/图片/"..tmp)
else
if file.length("/sdcard/浪子/图片/"..tmp) <= 1 then
gg.toast("正在下载资源"..ii.."/"..#ckimg2.."\n请耐心等待")
luajava.download("https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/"..tmp,"/sdcard/浪子/图片/"..tmp)
end
end
end
ckimg2 = {
	"heir",
	"hei_right",
	"heir",
	"heic",
	'heis','heisuo',
	"heiraon",
	"heiraoff",
	'quarkcheckoff','quarkcheckon',
	'sscoR',
	"heix",
	"opo",
	"opou",
	"opoback",

}
for i = 1,#ckimg2 do
jindu = i
checkimg2(ckimg2[i],i)
gg.toast("正在加载资源")
end

if panduan("/sdcard/浪子/图片/opo1")~=true then
	file.unzip("/sdcard/浪子/图片/opo","/sdcard/浪子/图片/")
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
local function 获取图片2(txt)
txt = string.url(txt,"de")
ntxt = string.sub(string.gsub(txt,"/","-"),-10,-1)
if string.find(tostring(txt),"http") ~= nil then
if panduan("/sdcard/浪子/图片/"..ntxt) == false then
file.download(txt,"/sdcard/浪子/图片/"..ntxt)
else
	if file.length("/sdcard/浪子/图片/"..ntxt) <= 1 then
file.download(txt,"/sdcard/浪子/图片/"..ntxt)
end
end
txt = "/sdcard/浪子/图片/"..ntxt
end
return luajava.getBitmap(txt)
end
local function getBit(x)
return 获取图片2("/sdcard/浪子/图片/"..x)
end
local reso=context:getResources()
local function getP(bitm,radi)
local lixin = RoundedBitmapDrawableFactory:create(reso,获取图片2(bitm))
lixin:setCornerRadius(radi)
lixin:setAntiAlias(true)
return lixin
end
local function getrp(bitm,radi)
local lixin = RoundedBitmapDrawableFactory:create(reso,getBit(bitm))
lixin:setCornerRadius(radi)
lixin:setAntiAlias(true)
return lixin
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


local function 获取图片(txt)
txt = string.url(txt,"de")
ntxt = string.sub(string.gsub(txt,"/","-"),-10,-1)
if string.find(tostring(txt),"http") ~= nil then
if panduan("/sdcard/浪子/图片/"..ntxt) == false then
file.download(txt,"/sdcard/浪子/图片/"..ntxt)
else
	if file.length("/sdcard/浪子/图片/"..ntxt) <= 1 then
file.download(txt,"/sdcard/浪子/图片/"..ntxt)
end
end
txt = "/sdcard/浪子/图片/"..ntxt
end
return luajava.getBitmapDrawable(txt)
end
local function getRes(x)
return 获取图片("/sdcard/浪子/图片/"..x)
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
gg.toast("隐藏")
end):start()
			
		end
	end,500)
})

摇一摇=false
dexloader=dex.loadfile('/sdcard/长安/图片/classes3.dex')
MySensorManager = dexloader:loadClass('yaocn.rlyun.yaoyiyao.MySensorManager')


luajava.runOnUiThread(function()
	MySensorManager(context, sensor)
end)
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
changan.controlRotation1 = function(control, time)
	luajava.runUiThread(function()
		import "android.view.animation.Animation"
		import "android.animation.ObjectAnimator"
		xuanzhuandonghua = ObjectAnimator:ofFloat(control, "rotation", {
			0, -360
		})
		xuanzhuandonghua:setRepeatCount(0)
		xuanzhuandonghua:setRepeatMode(Animation.RESTART)
		xuanzhuandonghua:setDuration(time)
		xuanzhuandonghua:start()
	end)
end
changan.controlRotation3 = function(control, to1,to2)
	luajava.runUiThread(function()
		import "android.view.animation.Animation"
		import "android.animation.ObjectAnimator"
		xuanzhuandonghua = ObjectAnimator:ofFloat(control, "rotation", {
			to1, to2
		})
		xuanzhuandonghua:setRepeatCount(0)
		xuanzhuandonghua:setRepeatMode(Animation.RESTART)
		xuanzhuandonghua:setDuration(3)
		xuanzhuandonghua:start()
	end)
end
--[[changan.controlBig = function(control,time)
	luajava.runUiThread(function()
		import "android.animation.ObjectAnimator"
		ObjectAnimator():ofFloat(control,"scaleX", {
			0, 0.4, 0.7, 1
		}):setDuration(time):start()
		ObjectAnimator():ofFloat(control,"scaleY", {
			0, 0.4, 0.7, 1
		}):setDuration(time):start()
	end) end--]]

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
  ObjectAnimator():ofFloat(control,"scaleX",{0, 0.4, 0.7, 1}):setDuration(time):start()
  ObjectAnimator():ofFloat(control,"scaleY",{0, 0.4, 0.7, 1}):setDuration(time):start()
end) end 


changan.controlSmallX = function(control,time)
luajava.runUiThread(function()
	import "android.animation.ObjectAnimator"
	ObjectAnimator():ofFloat(control,"scaleX", {
		1, 0.7, 0.4, 0
	}):setDuration(time):start()
end) end


changan.controlBigX = function(control,time)
luajava.runUiThread(function()
	import "android.animation.ObjectAnimator"
	ObjectAnimator():ofFloat(control,"scaleX", {
		0, 0.4, 0.7, 1
	}):setDuration(time):start()
	end) end

        	
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

xiaoyi={ }
xiaoyi.controlFlip2 = function(control,time)
	luajava.runUiThread(function()
  import "android.view.animation.Animation"
  import "android.animation.ObjectAnimator"
  xuanzhuandonghua = ObjectAnimator:ofFloat(control, "rotationY", {0, 360})
  xuanzhuandonghua:setRepeatCount(1)
  xuanzhuandonghua:setRepeatMode(Animation.REVERSE)
  xuanzhuandonghua:setDuration(time)
  xuanzhuandonghua:start()
end
 )
 end

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
changan.controlWater2 = function ( control , time )
	luajava.runUiThread ( function ( )
			import "android.animation.ObjectAnimator"
			ObjectAnimator ( ) : ofFloat ( control , "scaleX" , { 1 , 1.1 , 0.9 , 1 } ) : setDuration ( time ) : start ( )
			ObjectAnimator ( ) : ofFloat ( control , "scaleY" , { 1 , 0.9 , 1.1 , 1 } ) : setDuration ( time ) : start ( )
		end

	)
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

function getJMselect()
local selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, getRes('jian'))
selector:addState({
	-android.R.attr.state_pressed
}, getVerticalBG({0x00ffffff,0x00ffffff},20,2,0xffE8AC3E))
return selector
end
local isswitch
YoYoImpl = luajava.getYoYoImpl()
changan.menu = function(views)

forsview = views

isswitch = true
local layout = {
		'ui.ViewPager',
		layout_height='match_parent',
		layout_width='match_parent',
		focusable="false",
		focusableInTouchMode="false",
	}
	cebian={
		LinearLayout,
		layout_height="wrap_content",
		layout_width="60dp",
		orientation="horizontal",
		gravity="center_horizontal",
		
		}
		jian=getRes('jian')
		jmselect={}
		slcta={} slctb={}
	for i=1,#stab do
	slcta[i]=getVerticalBG({0xff6750A4,0xff6750A4},10,0,0xaa242937)
		slctb[i]=getVerticalBG({0xFF1D1B20,0xFF1D1B20},10,0,0xaa232323)
		_ENV["jm"..i]=luajava.loadlayout({
			LinearLayout,
			layout_height="50dp",
			layout_width="57dp",
			gravity="center",
			orientation="vertical",
			onClick=function() 
			--xiaoyi.controlFlip2(_ENV["jm"..i]  , 600 )	
			changan.controlWater(_ENV["jm"..i]  , 600 )			
			--changan.controlWater2(_ENV["jm"..i]  , 600 )
		    changan.controlRotation1(_ENV["jm"..i]  , 800 )			
			切换(i) end,
			
			{TextView,
			id="jm"..i.."t",
			text=stab[i],
			textSize="15sp",
			textColor="#1C1C1C",
			background=slctb[i],
			padding={"10dp","6dp","10dp","6dp"},
			}
		})
		cebian[#cebian+1]=_ENV["jm"..i]
		tmp={
			LinearLayout,
			layout_height="wrap_content",
			layout_width="match_parent",
			orientation="vertical",
			
		}
		
	
				
		for k = 1,#views[i] do
if type(views[i][k]) == "userdata" then
tmp[#tmp+1] = views[i][k]
else
	tmp[#tmp+1] = views[i][k]["view"]
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
	
	当前ui=1
	--jm1t:setTextColor(0xffE8AC3E)
--	jm1text:setTextColor(控件颜色)
		
	local ui = require('ui')
	ViewPager = ui.ViewPager(layout)
	luajava.setInterface(ViewPager, 'addOnPageChangeListener', 
		{onPageSelected=function(view)
		for i=1,#stab do
			_ENV["jm"..i .."t"]:setTextColor(0xFFFFFFFF)
			_ENV["jm"..i .."t"]:setBackground(slctb[i])
			
		end
		view=tonumber(string.sub(view,1,1))
		当前ui=view+1
		_ENV["jm"..view+1 .."t"]:setTextColor(0xffffffff)
_ENV["jm"..view+1 .."t"]:setBackground(slcta[view+1])	
		end})
				

	
	ckou={FrameLayout,
		layout_height='match_parent',
		layout_width='match_parent',
		id=luajava.newId("ckbg"),
		background=newbg({0xFF141118,0xFF141118},0,0xffffffff,0,0,35,35),
		{LinearLayout,
			id='webv_',
			layout_height='match_parent',
		layout_width='match_parent',
		},
		{
		LinearLayout,
		layout_height="5dp",
		layout_width="match_parent",
		padding={"2.5dp","0dp","2.5dp","0dp"},
		{
		LinearLayout,
		layout_height="match_parent",
		layout_width="match_parent",
		background=newbg({0xFF141118,0xFF141118},0,0xffffffff,0,0,0,0),
		}
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
		padding={"0dp","0dp","0dp","50dp"},
		ViewPager,
	},
	{FrameLayout,
			layout_height='wrap_content',
		layout_width='match_parent',
		layout_gravity = 'bottom',
			background="#00000000",
			padding={"5dp","0dp","5dp","0dp"},
			orientation = "horizontal",
				{HorizontalScrollView,
			layout_width='wrap_content',
			layout_height='wrap_content',
			background="#00000000",
			cebian,
			}
			
			}
	}



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
}, getVerticalBG({0x22161616,0x22161616},20))
selector:addState({
	-android.R.attr.state_pressed
}, empty)
return selector
end
ckdx=true
topbar = luajava.loadlayout({
	LinearLayout,
	layout_width="fill_parent",
	layout_height="35dp",
	background=getCorner({0xffffffff,0xffffffff},15,0,0xff232323,35,35,0,0),
	onClick=function() end,
	onTouch=hanshu,
	orientation="vertical",
	{LinearLayout,
	layout_width="match_parent",
	layout_height="match_parent",
	
	{LinearLayout,
	layout_width="35dp",
	layout_height="match_parent",
	gravity="center",
	{
			FrameLayout,
			
			background=getVerticalBG({0xffE6E6E6,0xffE6E6E6},90),
			layout_width = "20dp",
			layout_height = "20dp",
	gravity="center",
			onClick = 隐藏,
			onTouch = hanshu,
				{
			LinearLayout,
			layout_gravity="center",
			background=getVerticalBG({0xff2C2C2C,0xff2C2C2C},8),
			layout_width = "11dp",
			layout_height = "2.2dp",
		}
		}
	},
		{LinearLayout,
	layout_width="35dp",
	layout_height="match_parent",
	gravity="center",
	{
			ImageView,
			padding = "5dp",
			src = getRes("heic"),
			id = "lxkg1",
			background=getVerticalBG({0xffE6E6E6,0xffE6E6E6},90),
			layout_width = "20dp",
			layout_height = "20dp",
			layout_marginRight = "5dp",
			onClick = function()
			if ckdx == true then
			ckdx=false
			vibra:vibrate(15)
			mainLayoutParams.width = lzby
			mainLayoutParams.height = lzbx
            window:updateViewLayout(floatWindow, mainLayoutParams)
            else
            ckdx=true
            vibra:vibrate(15)
            mainLayoutParams.width = muby
			mainLayoutParams.height = mubx
            window:updateViewLayout(floatWindow, mainLayoutParams)
            end
			end,
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
			layout_width='80dp',
			layout_height='match_parent',
			gravity="center",
		}
	},
	{LinearLayout,
		layout_width="fill_parent",
		layout_marginLeft='-80dp',
		layout_weight=1,
		layout_height="35dp",
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
		{
			ImageView,
			padding = "5dp",
			id="lockui",
			src = getRes("heis"),
			background=getVerticalBG({0xffE6E6E6,0xffE6E6E6},90),
			layout_width = "20dp",
			layout_height = "20dp",
			layout_marginRight = "5dp",
			onClick = uiLock,
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
	
	},
			
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
	elevation="8dp",
		layout_marginLeft='8dp',
		layout_marginRight='8dp',
		layout_marginBottom='8dp',
		layout_marginTop='8dp',
		background=newbg({0xffffffff,0xffffffff},0,0xffffffff,45,45,45,45),
		topbar,

			
		{
	FrameLayout,
	layout_height='match_parent',
	layout_width='match_parent',
	orientation = "vertical",
	ckou,
	
	}

},
	{LinearLayout,
	visibility="gone",
	id=luajava.newId("extra"),
	layout_height='match_parent',
	layout_width='match_parent',
	orientation="vertical",
	background=getVerticalBG({0xffffffff,0xffffffff},25,2,0xaa161616),
	
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
		background = 获取图片(悬浮窗图标),
		layout_width = "40dp",
		layout_height = "40dp",
		onTouch = hanshu,
		onClick = 隐藏,
	},{FrameLayout,
	id="smallc",
	visibility="gone",
	onClick=显示2,
	onTouch=hanshu,
	layout_height="45dp",
	layout_width="25dp",
	gravity="center",
	background=getCorner({0x88161616,0x88161616},12,0,0xff232323,0,35,35,0),
			{FrameLayout,
	layout_width="match_parent",
	layout_height="match_parent",
	gravity="center",
		{
			ImageView,
			padding = "5dp",
			src = getRes("heir"),
			layout_width = "wrap_content",
			layout_height = "wrap_content",
			layout_marginRight = "5dp",
		},
		{
			ImageView,
			padding = "5dp",
			src = getRes("heir"),
			layout_width = "wrap_content",
			layout_height = "wrap_content",
			layout_marginRight = "8dp",
		}
	},
	},{FrameLayout,
	id='reme',
	layout_height='match_parent',
	layout_width='match_parent',
	elevation='3dp',
	{
			LinearLayout,
			id="sf",
			padding = "2dp",
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
webv_:addView(parti)
end
local runnable = luajava.getRunnable(invoke2)
local handler = luajava.getHandler()
handler:post(runnable)

local isMove


end

invoke(swib1,swib2)
gg.setVisible(false)
for i=1,#stab do
			_ENV["jm"..i .."t"]:setTextColor(0xFFFFFFFF)
			_ENV["jm"..i .."t"]:setBackground(slctb[i])
		end
		_ENV["jm1t"]:setTextColor(0xffffffff)
_ENV["jm1t"]:setBackground(slcta[1])	
	--	_ENV["jm1text"]:setTextColor(控件颜色)
luajava.getIdView("backv"):setColorFilter(控件颜色)
luajava.getIdView("suov"):setColorFilter(控件颜色)
--luajava.getIdView("tosearch"):setHintTextColor(控件颜色)

隐藏()


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
	changan.controlSmall(floatWindow,400)
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
	changan.controlBig(floatWindow,400)
	end)

end
end
if loadingBox~=nil then loadingBox['关闭']() end
huiz()


already=true
while true do
if tuichu==1 then break end
if 音量键 then
jianting3(qiehuan)
end gg.sleep(300)
end
end



function 滚(x)
luajava.runUiThread(function()
local cbsc=luajava.getIdView("cbscro")
local targetLeft = _ENV["jm"..x]:getTop()/2

cbsc:smoothScrollTo(0,targetLeft);
end)
end
function 切换(x)
窗口=false
luajava.runUiThread(function()
	local searchUI = luajava.getIdView("tosearch")

	当前ui=x
	ViewPager:setCurrentItem(x-1)
end)
end
显示=0
function 隐藏()

if 显2==true then return 0 end
luajava.runUiThread(function()
	if 显示 == 0 then
	control2:setVisibility(View.GONE)
	sf:setVisibility(View.VISIBLE)
	显示 = 1
	if 窗口 then
	luajava.getIdView("extra"):setVisibility(View.VISIBLE)
	else
	chuangk:setVisibility(View.VISIBLE)
	end
	YoYoImpl:with("ZoomInLeft"):duration(300):playOn(floatWindow)
	floatWindow:setBackground(beij)
	mainLayoutParams.height = mubx
		mainLayoutParams.width = muby
	mainLayoutParams.flags = LayoutParams.FLAG_NOT_TOUCH_MODAL
	window : updateViewLayout (floatWindow , mainLayoutParams)
	else
		sf:setVisibility(View.GONE)
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
	changan.controlBigX(floatWindow,600)--横向
	--AN.controlBigX1(floatWindow,400)竖向
YoYoImpl:with("FadeIn"):duration(600):playOn(floatWindow)	
	chuangk:setVisibility(View.GONE)
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
	窗口=false
	vibra:vibrate(10)
end
ewsv={}
function 创建窗口(name,v)
if type(v)~="table" then gg.alert("窗口"..name.."格式错误") end
local t={
	LinearLayout,
	orientation="vertical",
	visibility="gone",
	layout_width="match_parent",
}

for i = 1,#v do
if type(v[i]) == "userdata" then
t[#t+1]=v[i]
else
	t[#t+1]=v[i]["view"]
end
end

	ewsv[name]=luajava.loadlayout(t)
	
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
	--luajava.getIdValue(nid.."k"):setVisibility(View.GONE)
	--YoYoImpl:with("ZoomInLeft"):duration(600):playOn(switches["2s"..sname])
	--luajava.getIdValue(nid.."g"):setVisibility(View.VISIBLE)
	luajava.getIdValue(nid):setChecked(true)
--luajava.getIdValue(nid):setBackground(checkbg)
	end)
_ENV[name] = "开"
pcall(func1)

else
	vibra:vibrate(9)
luajava.runUiThread(function()
	--luajava.getIdValue(nid.."g"):setVisibility(View.GONE)
	--YoYoImpl:with("ZoomInRight"):duration(600):playOn(switches["1s"..sname])
	--luajava.getIdValue(nid.."k"):setVisibility(View.VISIBLE)
	luajava.getIdValue(nid):setChecked(false)
--luajava.getIdValue(nid):setBackground(checkbga)
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


function getTimeStamp(t)
local str = os.date("%Y/%m/%d %H:%M:%S",t)
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
function changan.m3switch(name,func1,func2)  
  rest = luajava.loadlayout({
    LinearLayout,
    layout_width = 'fill_parent',
    layout_height = "47dp",
    gravity = "center",
    {
      LinearLayout,
      layout_width = 'fill_parent',
      layout_height = "40dp",
      gravity = "center",
      elevation = "2dp",
      layout_marginRight = "15dp",
      layout_marginLeft = "15dp",
      background = getButtonBG(),
      padding = {"0dp","0dp","6dp","0dp"},
      {
        TextView,
        gravity = "top",
        text = name,
        textColor = "#FFFFFFFF",
        textSize = "13sp",
        layout_weight = 1,
        layout_width = 'fill_parent',
        layout_marginLeft = "10dp",
        layout_marginRight = "20dp",
      },
      {
        MaterialSwitch,
        layout_weight = 1,
        layout_width = 'match_parent',
        layout_height = 'wrap_content',
        onCheckedChange = function(compoundButton, isChecked)
          luajava.newThread(function()
            if isChecked then
              pcall(func1)              
             else
              pcall(func2)
            end
          end):start()
        end
      }
    }
  })  
  return rest
end
function changan.switch(name,func1,func2,miaoshu)
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
		0xffE3E3E3,0xffE3E3E3
	},
	4,0xffE3E3E3)
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
		id = luajava.newId(nid.."bg"),
		background = getButtonBG(),padding = {
		"0dp","0dp","6dp","0dp"
	},
	elevation="2dp",
	layout_marginLeft = "5dp",
			layout_marginRight = "5dp",
		{
			TextView,
			gravity = "top",
			text = name,
			id=luajava.newId(nid.."txt"),
			textColor = "#FFFFFFFF",
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
			MaterialSwitch,
			id=luajava.newId(nid),
			--elevation = "1dp",
			onClick = function() luajava.newThread(function() func() end):start() end,
			layout_width = 'wrap_content',
			layout_height = 'wrap_content',
			gravity = "left",
			padding="4dp",
		}}
})
return {["view"] = rest,
	["name"] = name,
	["func1"] = func1,
	["func2"] = func2,
	["type"] = "开关",
}
end
switchs={}

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

suofang = function(v, event)
if isLocked then hanshu(v,event) return 0 end
local Action = event:getAction()
if Action == MotionEvent.ACTION_DOWN then--0xFF141118,0xFF141118 黑色
luajava.getIdValue("ckbg"):setBackground(newbg({0xFF141118,0xFF141118},6,控件颜色,0,0,35,35))
isMove = false
RawX = event:getRawX()
RawY = event:getRawY()
hx = mainLayoutParams.height
hy = mainLayoutParams.width
if hx == 0 or hx==-2 then hx = 810 hy = 1150 end
elseif Action == MotionEvent.ACTION_UP then
luajava.getIdValue("ckbg"):setBackground(newbg({0xFF141118,0xFF141118},0,0xffffffff,0,0,35,35))
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
boxpic[tid]:setColorFilter(控件颜色)
else
	tview : setVisibility (View.GONE)
changan.controlWater (_ENV [tid.."6"] , 200)
changan.controlRotation9(boxpic[tid],90,0)
boxpic[tid]:setColorFilter(nil)
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
	id=luajava.newId(tid.."bg"),
	background = getButtonBG(),
	layout_marginLeft = "5dp",
			layout_marginRight = "5dp",
			elevation="2dp",
	{
		TextView , text = views [1] ,
		textSize = "13sp" ,
		id=luajava.newId(tid.."txt"),
		layout_marginLeft = "15dp" ,
		layout_width = "match_parent" ,
		layout_weight=1,
		textColor = "#FFFFFFFF" ,
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
return {["view"] = _ENV[t1id],
	["name"] = views[1],
	["type"] = "BOX",
	["vs"]=vs
}
end
buts={}
heir=getRes("heir")
function changan.button(txt,func,txtc)
if not txt then txt = "未设置" end
if not txtc then txtc="#FFFFFFFF" end
local tid="Cbutton"..guid()
buts[tid]=luajava.loadlayout(
	{
		LinearLayout,
		layout_width = 'match_parent',
		layout_height = "wrap_content",
		 {
			LinearLayout,
			layout_width = "fill_parent",
			gravity = "center_vertical",
			layout_marginTop = "5dp",
			layout_marginBottom = "5dp",
			background = getButtonBG(),
			elevation="2dp",
			layout_marginLeft = "5dp",
			layout_marginRight = "5dp",
			id = luajava.newId(tid.."bg"),
			padding="10dp",
			onClick = function() 
				changan.controlWater(buts[tid],300)
				vibra:vibrate(10)
			luajava.newThread(func):start() end,
			{
				TextView,
--id = luajava.newId(tid),
				textColor = txtc,
				text = txt,
				id = luajava.newId(tid.."txt"),
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
	["func"] = func,
	["type"] = "按钮",
}
end




function getButtonBG()
local jianbians = luajava.loadlayout({
GradientDrawable,
color = 0xFFFFFFFF,
gradientType = GradientDrawable.LINEAR_GRADIENT,
orientation = GradientDrawable.Orientation.TOP_BOTTOM ,
})
jianbians:setColors({0xFF1D1B20,0xFF1D1B20})
jianbians:setStroke(0,0xffffffff)--边框宽度和颜色
jianbians:setCornerRadii({20,20,20,20,20,20,20,20})
return jianbians
end

radiog={}
function changan.radio (cklist)
if not radoff then
radon=getVerticalBG({0xffffffff,0xffffffff},360,20,控件颜色)
radoff=getVerticalBG({0x00ffffff,0x00ffffff},360,8,0xffaaaaaa)
--radon=getRes("heiraon")
--radoff=getRes("heiraoff")
end
local rid=guid()
local vs={}
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
	textColor = "#FFFFFFFF" ,
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
	id=luajava.newId (rid.."radiobg") ,
	gravity = "top" ,
	orientation = "vertical" ,
	background=getButtonBG(),
    elevation="3dp",
    layout_marginLeft = "5dp",
	layout_marginRight = "5dp",
	layout_marginTop = "15dp",
	layout_marginBottom = "3dp",
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
	changan.controlWater (_ENV [tid] , 400)
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
		id = luajava.newId (nid.."radiotxt") ,
		text = name ,
		textSize="13sp",
		textColor = "#FFFFFFFF" ,
		layout_width = 'wrap_content' ,
		layout_height = 'wrap_content' ,
		layout_marginLeft = "10dp" ,
		layout_marginRight = "5dp" ,
	}
})
restt [# restt + 1] = _ENV [tid]
vs[#vs+1]={
	view=_ENV[tid],
	name=name,
	func=func,
	type='单选选项'
}
end
rest [# rest + 1] = restt
return {["view"]= luajava.loadlayout (rest),
["name"] = "单选",
	["type"] = "radio",
	["vs"] = vs
}
end
function radin(rid,nid,func)
return function()
for k,v in pairs(radiog[rid]) do
	luajava.getIdValue(k):setBackground(radoff)
	if k==nid and v~=true then
		luajava.getIdValue(k):setBackground(radon)
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
function changan.intcheck(name,func1,func2)
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
			MaterialCheckBox,
			id = luajava.newId(nid),
			onClick = function() luajava.newThread(function() func() end):start() end,
			--background = checkbg1,
			layout_width = '32dp',
			layout_height = '32dp',
			padding = "0dp",
		},{
			TextView,
			id=luajava.newId(nid.."t"),
			gravity = "left",
			text = name,
			textColor=0xffffffff,
			textSize = "14sp",
--layout_marginLeft="8dp",
			layout_width = 'match_parent',
	layout_weight=1,
		},
		}
}
return switchs[nid]
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
	luajava.getIdValue(nid):setChecked(true)
	--luajava.getIdValue(nid.."t"):setTextColor(0xff232323)
	--changan.controlWater(switchs[nid],300)
	end)
_ENV[name] = "开"
pcall(func1)
else
	vibra:vibrate(9)
luajava.runUiThread(function()
	luajava.getIdValue(nid):setChecked(false)
	--luajava.getIdValue(nid.."t"):setTextColor(0xff232323)
	--changan.controlWater(switchs[nid],300)
	end)
_ENV[name] = "关"
pcall(func2)
end
end
end
end
function changan.check(cklist)
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
rstt = changan.intcheck(name,func1,func2)
table.insert(tempTable, rstt)
else
	table.insert(tempTable, {LinearLayout,
	layout_width = 'match_parent',
	layout_weight=1,})
end
end
table.insert(rest, tempTable)
end
return luajava.loadlayout(rest)
end

spics={
}
for i=1,55 do
	spics[i]="opo"..i
end
switchs={}
tcheck=10
function changan.intcard(name,name2,func1,func2)
if tcheck==56 then
	tcheck=1
else
	tcheck=tcheck+1
end
tocheck=spics[tcheck]
gid = name..guid()
local func = 开关6(name,name2,func1,func2,gid)
if not name then name = "未设置" end
if not name2 then name2="" end
switchs[gid] = {
	LinearLayout,
	id = luajava.newId(gid),
	layout_width = 'match_parent',
	layout_weight=1,
	layout_height = "wrap_content",
	layout_marginTop="5dp",
	layout_marginBottom="5dp",
	layout_marginLeft="3dp",
	layout_marginRight="3dp",
	
	{
		LinearLayout,
		padding="3dp",
		onClick = function() luajava.newThread(function() func() end):start() end,
		layout_width = 'fill_parent',
		layout_height = "wrap_content",
		gravity = "left",
		background=getButtonBG(),
		layout_marginLeft = "5dp",
			layout_marginRight = "5dp",
			layout_marginTop = "5dp",
			layout_marginBottom = "5dp",
			elevation="2dp",
		id = luajava.newId(gid.."cardbg"),
		orientation="vertical",
		padding="5dp",
		--background=getVerticalBG({0xffFFFDF2,0xddffffff,0xffFFFDF2},15,8,0xffFFDA71),
		{
			ImageView,
			id = luajava.newId(gid.."p"),
			src = getRes(tocheck),
			gravity="left",
			layout_width = '30dp',
			layout_height = '30dp',
			padding = "3dp",
		},{
			TextView,
			id=luajava.newId(gid.."t"),
			gravity = "left",
			text = name,
			textColor="#d7d7d7",
			textSize = "12sp",
			layout_width = 'match_parent',
			layout_weight=1,
		},{
			TextView,
			id=luajava.newId(gid.."t2"),
			gravity = "left",
			text = name2,
			textColor="#aaaaaa",
			textSize = "9sp",
			layout_width = 'match_parent',
			layout_weight=1,
		}
		}
}
return switchs[gid]
end

function changan.card(cklist)
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
local name2 = cklist[i + j][2]
local func1 = cklist[i + j][3]
local func2 = cklist[i + j][4]
if not name then name = "未设置" end
rstt = changan.intcard(name,name2,func1,func2)
table.insert(tempTable, rstt)
else
	table.insert(tempTable, {LinearLayout,
	layout_width = 'match_parent',
	layout_weight=1,})
end
end
table.insert(rest, tempTable)
end
return luajava.loadlayout(rest)
end


shous={}
function 收起ck(gid,ii)
if shous[gid] ==false then
		shous[gid]=true
		luajava.getIdView(gid.."p"):setRotation(0)
	for i=1,ii-1 do
		if i>=9 then
			luajava.post(function()
			luajava.getIdView(gid):removeView(luajava.getIdView(gid..i))
			end)
		end
	end
	else
		shous[gid]=false
			luajava.post(function()
			luajava.getIdView(gid):removeView(luajava.getIdView(gid))
			for i=1,ii-1 do
				if i>=9 then
					luajava.getIdView(gid):addView(luajava.getIdView(gid..i))
				end
			end
			luajava.getIdView(gid):addView(luajava.getIdView(gid))
			end)
		luajava.getIdView(gid.."p"):setRotation(180)
	end
end
opou=getRes("opou")
function changan.checkbox(gid,ii)
local func = function() 收起ck(gid,ii) end
if not name then name = "未设置" end
switchs[gid] = {
	LinearLayout,
	id=luajava.newId(gid),
	layout_width = '70dp',
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
		{
			ImageView,
			id = luajava.newId(gid.."p"),
			src = opou,
			background=ckbg,
			gravity="center",
			layout_width = '30dp',
			layout_height = '30dp',
			padding = "8dp",
		},{
			TextView,
			id=luajava.newId(gid.."t"),
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
return switchs[gid]
end
function 开关6(name,name2,func1,func2,nid)
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
	luajava.getIdValue(nid.."t"):setTextColor(控件颜色)
	luajava.getIdValue(nid.."t2"):setTextColor(控件颜色)
	luajava.getIdValue(nid.."p"):setColorFilter(控件颜色)
	--changan.controlWater(switchs[nid],300)
	end)
_ENV[name] = "开"
pcall(func1)
else
	vibra:vibrate(9)
luajava.runUiThread(function()
	luajava.getIdValue(nid.."t"):setTextColor(0xffd7d7d7)
	luajava.getIdValue(nid.."p"):setColorFilter(0xffd7d7d7)
	luajava.getIdValue(nid.."t2"):setTextColor(0xffaaaaaa)
	--changan.controlWater(switchs[nid],300)
	end)
_ENV[name] = "关"
pcall(func2)
end
end
end
end









function changan.image(img,height,width,pad,func)
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
function changan.edit (name , hint)
_ENV [name] = name..guid ()
nid = name..guid ()
if not hint then
hint = name
end
rest = luajava.loadlayout ( {
	LinearLayout ,
	layout_width = 'fill_parent' ,
	layout_height = "wrap_content",
	{
		LinearLayout ,
		layout_width = 'fill_parent' ,
		layout_height = "wrap_content" ,
		gravity = "center_vertical" ,
		{
			TextInputEditText ,
			background = getButtonBG(),
			elevation="2dp",
			layout_marginTop = "5dp" ,
		layout_marginBottom = "5dp" ,
		layout_marginLeft = "5dp",
			layout_marginRight = "5dp",
			gravity = "center" ,
			hint = hint ,
			textColor="#FFFFFFFF",
			textSize = "13sp",
			id=luajava.newId(_ENV [name]),
			layout_width = 'match_parent' ,
			layout_height = "wrap_content" ,
		}
	}
})
luajava.getIdValue(_ENV [name]):setHintTextColor(0xFFCCC3DC)
return {["view"] = rest,
	["name"] = name,
	["type"] = "输入框",
}
end
function changan.getedit (name)
edit = tostring (luajava.getIdValue (_ENV [name]) : getText ())
return edit
end
function changan.setedit (name , txt)
txt = tostring (txt)
luajava.runUiThread (function ()
	luajava.getIdValue (_ENV [name]) : setText (txt)
	end

)
end
chazhi={} chajv={}
chazhi={} chajv={}
function changan.seek(name,bian,smin,smax,nows)
_ENV[bian] =nows
local thum= getVerticalBG({0xffffffff,0xffffffff},5,5,控件颜色)
thum:setSize(40, 40)
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
		background = getButtonBG(),
		elevation="2dp",
		layout_marginLeft = "5dp",
			layout_marginRight = "5dp",
		id=luajava.newId(name.."seekbg"),
		{
			TextView,
			padding={"5dp","10dp","0dp","10dp",},
			gravity = "top",
			textColor="#FFFFFFFF",
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
			maxHeight="10dp",
			maxWidth="fill_parent",
			minHeight="10dp",
			minWidth="fill_parent",
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
	
return {["view"] = rest,
	["name"] = name,
	["type"] = "拉条",
}
end




function changan.slider(name,bian,smin,smax,nows,size)
_ENV[bian] =nows
if _ENV[bian] == nil then _ENV[bian] = 1.0 end
if size == nil then size = 1 end
if not name then name = "未设置" end
local names = name..guid()
rest = luajava.loadlayout({
	LinearLayout,
	layout_width = 'fill_parent',
	layout_hight = "fill_parent",
	{
			Slider,
				id=luajava.newId(name.."Slider"),
				layout_width = 'match_parent',
				layout_height = 'wrap_content',
				value = nows,
				valueTo = smax,
				valueFrom = smin,
				stepSize = size,
				addOnChangeListener = function(slider, value, fromUser) -- 如果执行的功能不是修改器的函数,或者不带阻塞的,可以不用 window:threadWraper 包裹,性能更好(属于UI线程)
				-- 如果不是用户触发的,不处理
				if not fromUser then
					return
				end
				Snackbar:make(floatWindow, '拖动条进度 > '..value, Snackbar.LENGTH_SHORT):show()
				_ENV[bian] = value
				
			end
				
	}})
	
return {["view"] = rest,
	["name"] = name,
	["type"] = "拉条",
}
end





function changan.text(text,color,size,isjz)
if not color then color="#161616" end
if isjz then
	return luajava.loadlayout(
	{
	TextView,
	text=text,
	textColor=color,
	textSize=size,
	gravity="center",
	layout_height="wrap_content",
	layout_width="match_parent",
	autoSizeTextType="uniform",
})
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
function changan.alertDialog(title,text,control)
local Tit = {LinearLayout,
			layout_height="wrap_content",
			layout_width="match_parent",
			orientation="vertical",}
    context = baseWindow:getContext()
    if control==nil then
    view={}
    else
    for i, v in ipairs(control) do
    Tit[#Tit+1] = v.view
    end
    view=Tit
    end
local dialogBuilder = MaterialAlertDialogBuilder(context)
        :setTitle(title)
        :setMessage(text)
        :setView(luajava.loadlayout(view))
        :setPositiveButton('确定')
        luajava.showAlert(dialogBuilder)
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


if loadingBox~=nil then loadingBox['关闭']() end

colorvs = {}
kgs = {}




function changan.group(cklist)
	local vs={}
    local gid = guid()
    local parentLayout = {
        LinearLayout,
        layout_width = "match_parent",
        layout_height = "wrap_content",
        gravity = "center",
        orientation = "vertical",
        background=getVerticalBG({0xFF1D1B20,0xFF1D1B20},25),
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
	        local t=changan.intgroup(name, func1, func2, i+j, gid, pic)
	        local rstt = t.view
	        table.insert(vs,t)
			if i+j >= 9 then
	            -- 当组件数量达到9个时，执行原逻辑
	            if #cklist > 9 then--大于9的整体情况
	            	lastrstt=rstt
	            	if i+j==9 then--第九个
		                local rs = changan.groupbox(gid,'box')
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


opou=getRes("opou")
function changan.groupbox(gid,ii)
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




function changan.intgroup(name,func1,func2,ii,gid,pic)
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
	--changan.controlWater(switchs[nid],300)
	end)
kgs[name] = "开"


pcall(func1)
else
	vibra:vibrate(9)
luajava.runUiThread(function()
	luajava.getIdValue(nid.."t"):setTextColor(0xffd7d7d7)
	luajava.getIdValue(nid.."p"):setColorFilter(0xffd7d7d7)
	colorvs[nid.."p"]={false,"img"}
	colorvs[nid.."t"]={false,"txt"}
	--changan.controlWater(switchs[nid],300)
	end)
kgs[name] = "关"


pcall(func2)
end
end
end
end
local nulfunc=function() end

namelist = {}
param1 = {}
floattable = {}
function 打开页面(name)
if _ENV['fenye'..name]==nil then gg.alert(name..'页面未创建') return 0 end
if floattable['fenye'..name]==1 then 关闭页面(name) return end
floattable['fenye'..name]=1
window = context:getSystemService("window") -- 获取窗口管理器
local function invoke(name,func1,func2)
local function invoke2()
window:addView(_ENV['fenye'..name], param1[name])
end

local runnable = luajava.getRunnable(invoke2)
local handler = luajava.getHandler()
handler:post(runnable)

end

invoke(name,func1,func2)
end

function 关闭页面(name)
if _ENV['fenye'..name]==nil then gg.alert(name..'页面未创建') return 0 end
if floattable['fenye'..name]==0 then return 0 end
floattable['fenye'..name]=0
local function invoke2()
window:removeView(_ENV['fenye'..name])
end
local runnable = luajava.getRunnable(invoke2)
local handler = luajava.getHandler()
handler:post(runnable)
end


function 创建页面(name,vs)
	if type(vs)~='table' then gg.alert(name..'创建页面格式错误') os.exit() end
	local tmp={LinearLayout,
				layout_width='match_parent',
				orientation='vertical'
			}
for i=1,#vs do
	table.insert(tmp,vs[i])
end
param1[name] = getLayoutParams2()
_ENV['fenye'..name] = luajava.loadlayout(
	{
		LinearLayout,
		layout_width = "wrap_content",
		layout_height = "wrap_content",
		orientation='vertical',
		gravity='center_horizontal',
		background=luajava.loadlayout({
		GradientDrawable ,
		color = "#aa161616" ,
		cornerRadius = 15
	} ),
		padding={'10dp','5dp','10dp','5dp'},
		{
			TextView,
			text = name,
			textSize='14sp',
			gravity = "center",
			layout_width = "70dp",
			layout_height = "wrap_content",
			
			onClick=function()
				local vis=luajava.getIdView(name)
				if vis:getVisibility()==8.0 then
					vis:setVisibility(View.VISIBLE)
				else
					vis:setVisibility(View.GONE)
				end
			end,
			onTouch=function(v, event)
		local Action = event:getAction()
		if Action == MotionEvent.ACTION_DOWN then
		isMove = false
		RawX = event:getRawX()
		RawY = event:getRawY()
		x = param1[name].x
		y = param1[name].y
		elseif Action == MotionEvent.ACTION_MOVE then
		isMove = true
		param1[name].x = tonumber(x) + (event:getRawX() - RawX)
		param1[name].y = tonumber(y) + (event:getRawY() - RawY)
		window:updateViewLayout(_ENV['fenye'..name], param1[name])
		end
		end,
		},
		{ScrollView,
			visibility='gone',
			id=luajava.newId(name),
			layout_width='120dp',
			layout_height='250dp',
			tmp
		}
	})
if type(_ENV['fenye'..name])~='userdata' then gg.alert(name..'生成失败') os.exit() end
end
paramt = {}
titletable = {}
corb = true
function getLayoutParams2()
local prm = luajava.new(WindowManager.LayoutParams)

layoutParams1 = prm
if (Build.VERSION.SDK_INT >= 26) then -- 设置悬浮窗方式
layoutParams1.type = prm.TYPE_APPLICATION_OVERLAY
else
	layoutParams1.type = prm.TYPE_PHONE
end
layoutParams1.format = PixelFormat.RGBA_8888 -- 设置背景
layoutParams1.flags = prm.FLAG_NOT_FOCUSABLE -- 焦点设置Finish
layoutParams1.gravity = Gravity.CENTER -- 重力设置
layoutParams1.width = prm.WRAP_CONTENT -- 布局宽度
layoutParams1.height = prm.WRAP_CONTENT -- 布局高度
return layoutParams1
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

		
function huiz()
--绘制内容必须写在这里否则会消失
	
end
huiz()

muby=625
--初始宽度


mubx=825
--初始高度

lzby=500
--点击左上角按钮后改变的宽度

lzbx=500
--点击左上角按钮后改变的高度


--初始颜色，填写十六进制RGB
--可在功能按钮里调用changeColor()随时自定义切换
--例如：changeColor(0xffFF0023)
--可以在开启某个功能的同时变色，比如开了防封变绿色，开了高危功能变红色
控件颜色=0xff6750A4

loadingBox = getLoadingBox('HarmonyOS UI加载中...')
loadingBox['显示']()
悬浮窗图标="https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/changan"
stab={
	"公告",
	"防封",
	"功能",
	"设置",
}
创建页面('防封',
	{
	changan.button('选择进程',gg.setProcessX),
	changan.switch(
		"防封1",
		function()
			
		end,
		function()
			
		end),
	changan.switch(
		"防封2",
		function()
			
		end,
		function()
			
		end),
	
	
})

---创建小窗口备用，对照下边菜单里调用打开窗口，不需要的可以删掉
---必须先创建窗口 才能 打开窗口
创建窗口("卡片测试",--窗口名字
	{
		changan.switch(
			"功能",
			function()
			
			end,
			function()
				
			end,
			'功能介绍xxx\nxxx'--switch第四参数是描述
		),
		
 
    changan.switch(
			"功能",
			function()
				
			end,
			function()
				
			end,
			'功能介绍xxx\nxxx'--switch第四参数是描述
		),
		
    changan.switch(
			"功能",
			function()
				
			end,
			function()
				
			end,
			'功能介绍xxx\nxxx'--switch第四参数是描述
		),
		
		
		
	})





---创建小窗口备用，对照下边菜单里调用打开窗口，不需要的可以删掉
---必须先创建窗口 才能 打开窗口
创建窗口("小组测试",--窗口名字
	{

changan.switch(
			"功能",
			function()
			
			end,
			function()
				
			end,
			'功能介绍xxx\nxxx'--switch第四参数是描述
		),
		
 
    changan.switch(
			"功能",
			function()
				
			end,
			function()
				
			end,
			'功能介绍xxx\nxxx'--switch第四参数是描述
		),
		
    changan.switch(
			"功能",
			function()
				
			end,
			function()
				
			end,
			'功能介绍xxx\nxxx'--switch第四参数是描述
		),
				 				
		
	})










changan.menu({
	{---第一页
		changan.text("Material UI",0xFFCABFFA,"20sp"),
		
		changan.text("Powered by Su Ning",0xFFCABFFA,"10sp"),
		changan.button(
			"进程",
			function()
				gg.setProcessX()
			end),
			changan.switch(
					"防封菜单",
					function()
						打开页面('防封')
					end,
					function()
						关闭页面('防封')
					end),
			
		changan.button("卡片测试",
		function()
		打开窗口("卡片测试")
		end),
		
		
		
		changan.button("小组测试",
		function()
		打开窗口("小组测试")
		end),
		
				
		
		
		
		
		
		
		
		
	},{---第二页
		changan.radio({--单选
				{
					"测试" ,
					function ()
changan.alertDialog("by.小月","测试",{
changan.edit("输入框"),	
})
					end
				} , {
					"功能" ,
					function ()

					end
				} , {
					"功能" ,
					function ()

					end
				} , {
					"功能" ,
					function ()

					end
				} ,
			}),
			changan.check({--单选
				{
					"测试" ,
					function ()

					end
				} , {
					"测试" ,
					function ()

					end
				} , {
					"测试" ,
					function ()

					end
				} , {
					"测试" ,
					function ()

					end
				} ,
			}),
	},{---第三页
	
	

		

	
	
		changan.button(
			"语录测试",
			function()
				baseWindow=require 'floatingWindowManager2'
context = baseWindow:getContext()
view={
	LinearLayout,
}
local dialogBuilder = MaterialAlertDialogBuilder(context)
:setTitle('BY.小月-测试')
:setMessage("爱意随风起，风止意难平\n山海知我意，我心无秘密\n可我既追不上风，也等不到你\n日落终归山海，我又怎么不选择遗忘\n风吹哪夜躲夜，谁来爱我我爱谁")
:setView(luajava.loadlayout(view))
:setPositiveButton('确定')
luajava.showAlert(dialogBuilder)
--@ BaseWindow changan
			end),
	
	
	
	
	
		changan.box({
			"XXX区",
			

			
				changan.edit("输入框演示"),
				changan.button(
					"调用输入框",
					function()
						local tmp=changan.getedit("输入框演示")
						gg.alert(tmp)
					end),
		changan.slider("拉条演示","ltxx",1,20,1,0.5),--“ltxx”为此拉条变量名字，使用时每个拉条不可重复
		--Cseek("拉条演示","ltxx",1,20,1),--“ltxx”为此拉条变量名字，使用时每个拉条不可重复 						
				
		}),--box结尾	
		
	    changan.switch(
			"功能",
			function()
			
			end,
			function()
				
			end,
			'功能介绍xxx\nxxx'--switch第四参数是描述
		),
		
 
    changan.switch(
			"功能",
			function()
				
			end,
			function()
				
			end,
			'功能介绍xxx\nxxx'--switch第四参数是描述
		),
		
    changan.switch(
			"功能",
			function()
				
			end,
			function()
				
			end,
			'功能介绍xxx\nxxx'--switch第四参数是描述
		),



		
	},{---第四页
		changan.text("\n"),
		changan.image(
			"https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/quarkphone",
			"60dp","60dp",--图片高度宽度（可省略）
			"10dp",--内边距（可省略）
			function()
				隐藏()
				gg.alert("例子")
				--gg.QQgroup("群号")---qq群
				--gg.intent("链接")--网页（tg群）
			end--点击图片执行的功能（可省略）
			),
		--changan.text("点击加入TG频道",nil,"11sp",true),---第四参数true为居中文字

		changan.switch(
			'摇一摇隐藏UI',
			function()
				摇一摇=true
			end,
			function()
				摇一摇=false
			end),
		changan.switch(
			"音量键隐藏UI",--改名会出错
			function()
				音量键=true
			end,
			function()
				音量键=false
			end
		),
		changan.button(
			"退出",
			function()
				tuichu=1
				
			end),
	},{---第五页
		
	},{---第六页
		
	},
})
