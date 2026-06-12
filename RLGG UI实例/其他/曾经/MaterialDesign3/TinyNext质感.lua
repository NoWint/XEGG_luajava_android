
import("android.renderscript.ScriptIntrinsicBlur")
import("android.renderscript.Allocation")
import("android.renderscript.Element")
import("android.graphics.Bitmap")
import("android.graphics.Canvas")
import("android.graphics.Paint")
import("android.graphics.drawable.BitmapDrawable")
function Blur(view, radius)--radius大于0小于25
  view:measure(View.MeasureSpec:makeMeasureSpec(0, View.MeasureSpec.UNSPECIFIED), View.MeasureSpec:makeMeasureSpec(0, View.MeasureSpec.UNSPECIFIED))
  view:layout(0, 0, view:getMeasuredWidth(), view:getMeasuredHeight())  
  local width, height = view:getMeasuredWidth(), view:getMeasuredHeight()
  local bitmap = Bitmap:createBitmap(width, height, Bitmap.Config.ARGB_8888) 
  local canvas = Canvas(bitmap)
  view:draw(canvas)
  local renderScript = RenderScript:create(context)
  local input = Allocation:createFromBitmap(renderScript, bitmap)
  local output = Allocation:createTyped(renderScript, input:getType())
  local blurScript = ScriptIntrinsicBlur:create(renderScript, Element:U8_4(renderScript))
  blurScript:setRadius(radius)
  blurScript:setInput(input)
  blurScript:forEach(output)
  output:copyTo(bitmap)
  view:setBackgroundDrawable(BitmapDrawable(context:getResources(), bitmap))
  renderScript:destroy()
  input:destroy()
  output:destroy()
  blurScript:destroy()
end


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
    onPrimary = '0xffB8B8B8', 
    
}]]
--SwitchMaterial switchMaterial = findViewById(R.id.switc
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
		
		
----md3配置--


Tiny = {} huiz = function() end
window = context:getSystemService("window") -- 获取窗口管理器
function panduan(rec) fille,err = io.open(rec) if fille == nil then return false else return true end end
function checkimg(tmp)
if panduan("/sdcard/云烛/图片/"..tmp) ~= true then
gg.toast("正在下载资源"..tmp.."\n请耐心等待")
luajava.download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..tmp,"/sdcard/云烛/图片/"..tmp)
end
end
ckimg = {
	"pubgT",
	"pubgG",
	"pubgY",
	"pubgR",
	"WB/yzf_coR",
	"quarkx",
	"ins1",
	"quarksuofang",
	"quarklock",
	"appear"
}

for i = 1,#ckimg do
jindu = i
checkimg(ckimg[i])
gg.toast("正在加载资源")
end
YoYoImpl = luajava.getYoYoImpl()
vibra = context:getSystemService(Context.VIBRATOR_SERVICE)

function getTimeStamp(t)
local str = os.date("%Y年%m月%d日%H:%M:%S",t)
return str
end
function panduan(rec) fille,err = io.open(rec) if fille == nil then return false else return true end end
function 获取图片(txt)
txt = string.url(txt,"de")
ntxt = string.sub(string.gsub(txt,"/","-"),-10,-1)
if string.find(tostring(txt),"http") ~= nil then
if panduan("/sdcard/云烛/图片/"..ntxt) == false then
file.download(txt,"/sdcard/云烛/图片/"..ntxt)
else
	if file.length("/sdcard/云烛/图片/"..ntxt) <= 1 then
file.download(txt,"/sdcard/云烛/图片/"..ntxt)
end
end
txt = "/sdcard/云烛/图片/"..ntxt
end
return luajava.getBitmapDrawable(txt)
end
function getRes(x)
return 获取图片("/sdcard/云烛/图片/"..x)
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
window = context:getSystemService("window") -- 获取窗口管理器
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
function getVerticalBG(gtvb1,gtvb3,gtvb4,gtvb5)
if not gtvb4 then gtvb4 = 0 gtvb5 = 0xff000000 end
local jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(gtvb3)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors(gtvb1)
jianbians:setStroke(gtvb4,gtvb5)--边框宽度和颜色
return jianbians
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
Tiny.controlBig = function(control,time)
luajava.runUiThread(function()
	import "android.animation.ObjectAnimator"
	ObjectAnimator():ofFloat(control,"scaleX", {
		0, 0.4, 0.7, 1
	}):setDuration(time):start()
	ObjectAnimator():ofFloat(control,"scaleY", {
		0, 0.4, 0.7, 1
	}):setDuration(time):start()
	end) end
Tiny.controlFlip = function(control,time)
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
Tiny.controlWater = function(control,time)
luajava.runUiThread(function()
	import "android.animation.ObjectAnimator"
	ObjectAnimator():ofFloat(control,"scaleX", {
		1, 0.8, 0.9, 1
	}):setDuration(time):start()
	ObjectAnimator():ofFloat(control,"scaleY", {
		1,0.8,0.9,1
	}):setDuration(time):start()
	end) end
Tiny.controlSmall = function(control,time)
luajava.runUiThread(function()
	import "android.animation.ObjectAnimator"
	ObjectAnimator():ofFloat(control,"scaleX", {
		1, 0.7, 0.4, 0
	}):setDuration(time):start()
	ObjectAnimator():ofFloat(control,"scaleY", {
		1, 0.7, 0.4, 0
	}):setDuration(time):start()
	end) end
mainLayoutParams = getLayoutParams()


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

suofang = function(v, event)
if isLocked then hanshu(v,event) return 0 end
local Action = event:getAction()
if Action == MotionEvent.ACTION_DOWN then
isMove = false
RawX = event:getRawX()
RawY = event:getRawY()
x = mainLayoutParams.height
y = mainLayoutParams.width
if x == 0 or x==-2 then x = 810 y = 1150 end
elseif Action == MotionEvent.ACTION_MOVE then
isMove = true
mubx = tonumber(x) + (event:getRawY() - RawY)
if mubx >= 250 and mubx <= 11100 then
mainLayoutParams.height = mubx
end
muby = tonumber(y) + (event:getRawX() - RawX)
if muby >= 250 and muby <= 24500 then
mainLayoutParams.width = muby
end
if muby<=250 and mubx<=250 then muby=250 mubx=250
--隐藏()
return 0 end
window:updateViewLayout(floatWindow, mainLayoutParams)
end
end
setOnExitListener(function()
	luajava.post(function()
	return window:removeView(floatWindow)
	end)
	tuichu=1
	luajava.setFloatingWindowHide(false)
end)
function getCard(tmp)
local x=tmp[1]
if string.find(x,"http")==nil then x="/sdcard/云烛/图片/"..x end
local xx=tmp[2]
local xxx=tmp[3]
local func=function() 
--if type(ret)~="table" then log_init() return 0 end
xxx() end
return {
	LinearLayout,
	padding = "2dp",
	layout_height = "fill_parent",
	layout_width = "fill_parent",
	layout_weight = 1,
	{
		LinearLayout,
		layout_height = "fill_parent",
		layout_width = "fill_parent",
		background = getVerticalBG({0xaa161616,0xaa161616},25),
		gravity = "center_vertical",
		onClick=function() luajava.newThread(func):start() end,
		onTouch=hanshu,
		{
			ImageView,
			layout_height = "match_parent",
			layout_width = "wrap_content",
			src = 获取图片(x),
			padding = "1dp",
			layout_marginRight = "2dp",
			layout_marginLeft = "2dp",
		},
		{
			TextView,
			textColor = "#B8B8B8",
			text = xx,
			textSize = "10sp",
			layout_width = "fill_parent"
		}
	}
}
end
function particle()
local webView = luajava.webView(function(webView)
	webView:loadData([[
	<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=20vw,initial-scale=1,maximum-scale=1,user-scalable=no">

    <title></title>
    <style>
    *{
    /* 初始化 */
    margin: 0;
    padding: 0;
}
body{
    height: 10vw;
    width:100vw;
    /* 弹性布局 水平+垂直居中 */
    display: flex;
    justify-content: center;
    align-items: center;
    background-color: #00000000;
}
h1{
    /* 文本透明 */
    color: transparent;
    font-size: 14px;
    letter-spacing: 5px;
    /* 渐变背景 */
    background: linear-gradient(to right,#EDDA39,#FFEB3D,#B8B8B8,#DAC362,#FFE65B);
    /* 裁剪掉文字以外的区域 */
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    background-size: 80%;
    background-repeat: repeat;
    background-position: center;
    /* 执行动画：动画名 时长 线性 无线播放 */
    animation: move 3s linear infinite;
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
    <h1>云烛全防-特别版</h1>
</body>

</html>]], 'text/html', 'UTF-8')
	webView:setBackgroundColor(0x0)
	end)
return webView
end
function Cmenu(sview)
huiz()
nei1 = {
--1内
	LinearLayout,
	layout_marginTop = "3dp",
	layout_height = "fill_parent",
	layout_width = "fill_parent",
	layout_weight = 1,
	background = getVerticalBG({控件颜色,控件颜色},25),
	{
		LinearLayout,
		layout_height = "fill_parent",
		layout_width = "fill_parent",
		layout_weight = 1,
		gravity = "center",
		orientation = "vertical",
		getCard(games[1]),
		getCard(games[2]),
	},
	{
		LinearLayout,
		layout_height = "fill_parent",
		layout_width = "fill_parent",
		layout_weight = 1,
		orientation = "vertical",
		getCard(games[3]),
		getCard(games[4]),
	}
}
nei2 = {
--2内
	LinearLayout,
	layout_marginTop = "3dp",
	layout_height = "fill_parent",
	layout_width = "fill_parent",
	layout_weight = 1,
	background = getVerticalBG({控件颜色,控件颜色},25),
	{
		LinearLayout,
		layout_height = "fill_parent",
		layout_width = "fill_parent",
		layout_weight = 1,
		gravity = "center",
		orientation = "vertical",
		getCard(games[5]),
		getCard(games[6]),
	},
	{
		LinearLayout,
		layout_height = "fill_parent",
		layout_width = "fill_parent",
		layout_weight = 1,
		orientation = "vertical",
		getCard(games[7]),
		getCard(games[8]),
	}
}
launcher=luajava.loadlayout({
			LinearLayout,--主页
			orientation = "vertical",
			layout_height = "fill_parent",
			layout_width = "fill_parent",
			gravity = "center_horizontal",
			padding = "10dp",
			onClick = function() end,
			onTouch = hanshu,
			{
				ImageView,
			--	layout_height = "wrap_content",
			--	layout_width = "match_parent",
			layout_height = "120dp",
				layout_width = "120dp",
				src = 获取图片(主页logo),
				padding = "1dp",
				layout_marginRight = "2dp",
				layout_marginLeft = "2dp",
				onClick = HomePage,
				onTouch = hanshu,
			},
			{LinearLayout,
			id="web_",
			layout_width="fill_parent",
			layout_height="wrap_content",
			gravity="center",
			padding={"0dp","0dp","0dp","0dp"},
			},
			{TextView,
			textSize="13sp",
			gravity="center",
			textColor="#B8B8B8",
			layout_width="match_parent",
			text=主页标题1,
			},nei1,
			{LinearLayout,
			layout_height="2dp",
			layout_marginTop="2dp",
			layout_width="match_parent",
			background="#0095FF",
			layout_marginLeft="1dp",
			layout_marginRight="1dp",
			},
			{TextView,
			gravity="center",
			textSize="13sp",
			textColor="#B8B8B8",
			layout_width="match_parent",
			text=主页标题2,
			},
			nei2,
		})
topbar={LinearLayout,
	layout_height="40dp",
	layout_width="wrap_content",
	gravity="center|top",
	orientation="horizontal",
}
jmbg={}
for i=1,#stab do
	jmbg[i]=getJMBG()
	_ENV["jm"..i]=luajava.loadlayout({
		LinearLayout,
		onClick=function() 切换(i) end,
		{TextView,
		id="jmt"..i,
		background=jmbg[i],
		layout_marginLeft="5dp",
		layout_marginRight="5dp",
		textSize="14sp",
		textColor="#272C3A",
		text=stab[i],
		padding={"10dp","5dp","10dp","5dp"},
	}})
topbar[#topbar+1]=_ENV["jm"..i]
local tmp={
LinearLayout,
orientation="vertical",
layout_width="match_parent",
layout_height="wrap_content",
}
for k=1,#sview[i] do
	tmp[#tmp+1]=sview[i][k]
end
_ENV["layout"..i]=luajava.loadlayout({
	ScrollView,
	visibility="gone",
	layout_width="match_parent",
	layout_height="wrap_content",
	tmp})

end
topbar={
	LinearLayout,
	layout_width="fill_parent",
	layout_height="wrap_content",
	{
			ImageView,
			padding = "2dp",
			src = "https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/bm_hm",
			layout_width = "30dp",
			layout_height = "30dp",
			layout_marginRight = "5dp",
			onClick = HomePage,
			onTouch = hanshu,
		},
	{HorizontalScrollView,
		layout_width="fill_parent",
		layout_weight=1,
		topbar},
	{LinearLayout,
	layout_width="35dp",
	}
}
menui=luajava.loadlayout({
	LinearLayout,--菜单
		visibility="gone",
			orientation = "vertical",
			layout_height = "fill_parent",
			layout_width = "fill_parent",
			gravity = "center_horizontal",
			padding = "10dp",
			onClick = function() end,
			onTouch = hanshu,
			topbar,
			{LinearLayout,
			id="menubar",
			layout_height = "fill_parent",
			layout_width = "fill_parent",
			layout_weight=1,
			}
		})
ckou=luajava.loadlayout({
		FrameLayout,
		id = "ckou",
		background = getVerticalBG(背景颜色,背景圆角,背景边框粗细,背景边框颜色),
		layout_height = "fill_parent",
		layout_width = "fill_parent",
		gravity="top",
		launcher,
		menui,
		{
			ImageView,
			padding = "2dp",
			src = getRes("quarkx"),
			layout_width = "30dp",
			layout_height = "30dp",
			layout_marginRight = "5dp",
			layout_marginTop = "5dp",
			layout_gravity = "right|top",
			onClick = 隐藏,
			onTouch = hanshu,
		},{
			ImageView,
			padding = "4dp",
			id="lockui",
			src = getRes("quarksuofang"),
			layout_width = "30dp",
			layout_height = "30dp",
			layout_marginRight = "5dp",
			layout_marginTop = "40dp",
			layout_gravity = "right|top",
			onClick = uiLock,
			onTouch = hanshu,
		},
		{
			ImageView,
			padding = "2dp",
			src = getRes("WB/yzf_coR"),
			layout_width = "30dp",
			layout_height = "30dp",
			layout_marginRight = "3dp",
			layout_marginBottom = "5dp",
			layout_gravity = "right|bottom",
			onClick = function() end,
			onTouch = suofang,
		}
	})
control2=luajava.loadlayout{
		ImageView,
		visibility="gone",
		background = 获取图片(悬浮窗图标),
		layout_width = "35dp",
		layout_height = "35dp",
		onTouch = hanshu,
		onClick = 隐藏,
	}
floatWindow = luajava.loadlayout({
	FrameLayout,
	visibility="gone",
	ckou,
	control2,
})
muby=650
mubx=850
bnzz=particle()
_ENV["卡密"]="卡密"
local function invoke()
mainLayoutParams.x = device.width/4-150
mainLayoutParams.y = device.height/8
mainLayoutParams.height = mubx
mainLayoutParams.width = muby
for i=1,#stab do
	menubar:addView(_ENV["layout"..i])
end
window:addView(floatWindow,mainLayoutParams)
web_:addView(bnzz)
end
luajava.post(invoke)
切换(1)
luajava.runUiThread(function()
		YoYoImpl:with("FadeIn"):duration(800):playOn(floatWindow)
		floatWindow:setVisibility(View.VISIBLE)
end)
setOnExitListener(function()
	tuichu = 1
	luajava.setFloatingWindowHide(false)
	end)
qhkai = 0

显示 = 1
qiehuan = function()
if qhkai == 0 then
yinll = 0
qhkai = 1
draw.remove()
luajava.runUiThread(function()
	YoYoImpl:with("FadeOut"):duration(300):playOn(floatWindow)
	end)
gg.sleep(400)
luajava.runUiThread(function()
	floatWindow:setVisibility(View.GONE)
	end)
else
	qhkai = 0
yinll = 1
huiz()
luajava.runUiThread(function()
	floatWindow:setVisibility(View.VISIBLE)
	YoYoImpl:with("FadeIn"):duration(300):playOn(floatWindow)
	end)
end
end
end
function 切换(x)
当前ui = x
luajava.runUiThread(function()
	for i = 1,#stab do
	_ENV["jmt"..i]:setTextColor(0xffB8B8B8)
	_ENV["jmt"..i]:setBackground(jmbg[i])
	_ENV["layout"..i]:setVisibility(View.GONE)
	end
	_ENV["jmt"..当前ui]:setTextColor(0xffB8B8B8)
	_ENV["jmt"..当前ui]:setBackground(slcta)
	_ENV["layout"..当前ui]:setVisibility(View.VISIBLE)
	YoYoImpl:with("FadeIn"):duration(800):playOn(_ENV["layout"..当前ui])
	end)
end
function 隐藏()
vibra:vibrate(6)
luajava.runUiThread (function ()
	if tonumber (tostring (ckou: getVisibility ())) == 8.0 then
		显示 = 1
		control2:setVisibility(View.GONE)
		mainLayoutParams.flags = LayoutParams.FLAG_NOT_TOUCH_MODAL
		mainLayoutParams.height = mubx
		mainLayoutParams.width = muby
		window : updateViewLayout (floatWindow , mainLayoutParams)
		luajava.newThread(function()
		--gg.playMusic("/sdcard/长安/图片/bbk")
		end):start()
		ckou:setVisibility(View.VISIBLE)
		YoYoImpl:with("FadeIn"):duration(400):playOn(ckou)
	else
		显示=0
		luajava.newThread(function()
			--gg.playMusic("/sdcard/长安/图片/bbg")
			luajava.runUiThread(function()
			YoYoImpl:with("FadeOut"):duration(200):playOn(floatWindow)
			--Tiny.controlSmall(floatWindow,300)
			end)
			gg.sleep(210)
			luajava.runUiThread(function()
				--Tiny.controlBig(floatWindow,200)
				YoYoImpl:with("FadeIn"):duration(200):playOn(floatWindow)
				control2:setVisibility(View.VISIBLE)
				ckou:setVisibility(View.GONE)
				mainLayoutParams.flags = LayoutParams.FLAG_NOT_FOCUSABLE
				mainLayoutParams.width = LayoutParams.WRAP_CONTENT -- 布局宽度
				mainLayoutParams.height = LayoutParams.WRAP_CONTENT -- 布局高度
				window : updateViewLayout (floatWindow , mainLayoutParams)
			end)
		end):start()
	end
end)
end
function launch(pkg)
local loadBox = getLoadingBox('正在启动游戏')
gg.setProcess(pkg)
gg.sleep(500)
if tostring(gg.getTargetPackage()) == pkg then
gg.toast("进程已选择:"..pkg)
return 0
end
gg.toast("正在启动游戏...")
loadBox['显示']()
print(gg.isPackageInstalled(pkg))
app.start(pkg)
jci=0
--gg.sleep(5000)
while true do
	gg.setProcess(pkg)
	gg.sleep(400)
	if tostring(gg.getTargetPackage()) == pkg then
		gg.alert("启动成功")
		loadBox['关闭']()
		break
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

function HomePage()
--if type(ret)~="table" then log_init() return 0 end
vibra:vibrate(6)
luajava.runUiThread (function ()
	if tonumber (tostring (menui: getVisibility ())) == 8.0 then
		menu显示 = 1
		luajava.newThread(function()
			luajava.runUiThread(function()
			YoYoImpl:with("FadeOut"):duration(200):playOn(launcher)
			end)
			gg.sleep(210)
			luajava.runUiThread(function()
				YoYoImpl:with("FadeIn"):duration(400):playOn(menui)
				menui:setVisibility(View.VISIBLE)
				launcher:setVisibility(View.GONE)
			end)
		end):start()
	else
		menu显示=0
		luajava.newThread(function()
			luajava.runUiThread(function()
			YoYoImpl:with("FadeOut"):duration(200):playOn(menui)
			end)
			gg.sleep(210)
			luajava.runUiThread(function()
				YoYoImpl:with("FadeIn"):duration(400):playOn(launcher)
				launcher:setVisibility(View.VISIBLE)
				menui:setVisibility(View.GONE)
			end)
		end):start()
	end
end)
end
function Tiny.setedit(name,txt)
txt = tostring(txt)
luajava.runUiThread(function()
	luajava.getIdValue(_ENV[name]):setText(txt)
	end)
end

function Tiny.getedit(name)
--gg.alert(edit)
edit = tostring(luajava.getIdValue(_ENV[name]):getText())
return edit
end
isLocked=false
inlock=getRes("quarklock")
uiunlock=getRes("quarksuofang")
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
function Tiny.text(text,color,size,isjz)
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
checkbg = getShape2(
	45,
	{
		0xff232323,0xff232323
	},
	4,0x00B8B8B8)
checkbg0 = getShape2(
	45,
	{
		0xff232323,0xff232323
	},
	4,0x00B8B8B8)
checkbga = getShape2(
	45,
	{
		0xffB8B8B8,0xffB8B8B8
	},
	4,0x00B8B8B8)
checkbg1 = getShape(
	45,
	{
		0xffB8B8B8,0xffB8B8B8
	},
	4,0xffB8B8B8)
checkbg2 = getShape(
	45,
	{
		0xffB8B8B8,0xffB8B8B8
	},
	4,0xffB8B8B8)
switches = {}
function 开关3(name,func1,func2,nid)
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
	luajava.getIdValue(nid.."k"):setVisibility(View.GONE)
	YoYoImpl:with("ZoomInLeft"):duration(600):playOn(switches["2s"..sname])
	luajava.getIdValue(nid.."g"):setVisibility(View.VISIBLE)
--luajava.getIdValue(nid):setBackground(checkbga)
	end)
_ENV[name] = "开"

pcall(func1)
else
	vibra:vibrate(9)
luajava.runUiThread(function()
	luajava.getIdValue(nid.."g"):setVisibility(View.GONE)
	YoYoImpl:with("ZoomInRight"):duration(600):playOn(switches["1s"..sname])
	luajava.getIdValue(nid.."k"):setVisibility(View.VISIBLE)
--luajava.getIdValue(nid):setBackground(checkbg)
	end)
_ENV[name] = "关"
pcall(func2)
end
end
end
end

function Tiny.switch(name,func1,func2,miaoshu)
nid = name..guid()
local func = 开关3(name,func1,func2,nid)
if not name then name = "未设置" end
switches["1s"..nid] = luajava.loadlayout {
	FrameLayout,
	layout_width = '45dp',
	layout_height = '24dp',
	gravity = "center_vertical",
	padding = {
		"1dp","0dp","1dp","0dp"
	},
	{
		LinearLayout,
		layout_gravity = "left|center_vertical",
		id = luajava.newId(nid.."k"),
		background = checkbg1,
		onClick = function() luajava.newThread(function() func() end):start() end,
		layout_width = '20dp',
		layout_height = '20dp',
		elevation = "10dp",
	},
}
switches["2s"..nid] = luajava.loadlayout {
	FrameLayout,
	onClick = function() luajava.newThread(function() func() end):start() end,
	layout_width = '45dp',
	layout_marginRight = "10dp",
	layout_marginLeft = "-10dp",
	layout_height = '24dp',
	gravity = "center_vertical",
	padding = {
		"1dp","0dp","1dp","0dp"
	}
	, {
		LinearLayout,
		visibility = "gone",
		layout_gravity = "right|center_vertical",
		id = luajava.newId(nid.."g"),
		background = checkbg2,
		onClick = function() luajava.newThread(function() func() end):start() end,
		layout_width = '20dp',
		layout_height = '20dp',

		elevation = "10dp",
	}
}
rest = luajava.loadlayout({
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
			color = 控件颜色 ,
			cornerRadius = 20
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
				id=nid,
					layout_width = 'match_parent',
					layout_height = 'wrap_content',
					text = name,
					Typeface=font,
					textSize = "13sp",
       -- setTrackTintList('0xff000000'),
--mddd3:setTrackTintList(ColorStateList({{android.R.attr.state_checked},{}},{0xff2000ff,0xffd7d7d7})),
---setThumbTintList('0xff000000'),

        layout_marginLeft = "10dp",
        layout_weight = 1,
        textColor = "0xffB8B8B8",
        --setThumbTintList='0xff000000',
        onClick = function() luajava.newThread(function() func() end):start() end,
        
		},
			
		
			}}
})
SwitchColor(_ENV[nid],背景边框颜色,控件颜色)
return rest
end
function getButtonBG()
local selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, getVerticalBG({0x55B8B8B8,0x55B8B8B8},25,6,0xff181B2E))
selector:addState({
	-android.R.attr.state_pressed
}, getVerticalBG({控件颜色,控件颜色},25,6,button边框颜色))
return selector
end
buts={}
function Tiny.button(txt,func)
if not txt then txt = "未设置" end
local tid="Tiny.button"..guid()
buts[tid]=luajava.loadlayout(
	{
		LinearLayout,
		layout_width = 'match_parent',
		layout_height = "wrap_content", {
			LinearLayout,
			layout_width = "fill_parent",
			gravity = "center_horizontal",
			layout_marginTop = "5dp",
			layout_marginBottom = "5dp",
			background = getButtonBG(),
			onClick = function() 
				Tiny.controlWater(buts[tid],300)
			luajava.newThread(func):start() end,
			{
				TextView,
--id = luajava.newId(tid),
				textColor = "#B8B8B8",
				text = txt,
				textSize = "16sp",
				layout_width = "wrap_content",
			},
		}})
return buts[tid]
end
function Tiny.image(img,height,width,pad,func)
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
	src=获取图片(img)
}})

end
thum= getVerticalBG({0x55B8B8B8,0x55B8B8B8},25,6,0xffB8B8B8)
thum:setSize(60, 60)
chazhi={} chajv={}
function Tiny.seek(name,bian,smin,smax,nows)
_ENV[bian] =nows
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
		background = getVerticalBG({控件颜色,控件颜色},25),
		{
			TextView,
			padding={"5dp","10dp","0dp","10dp",},
			gravity = "top",
			text = name..":"..nows,
			id = luajava.newId(names),
			layout_width = '100dp',
			--layout_marginLeft = "5dp",
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
			progressDrawable={ getVerticalBG({0xff232323,0xff232323},45)},
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
return rest
end
function log_init()
if type(ret) ~= "table" then
if vv ~= nil then return 0 end
tmp = {
	LinearLayout,orientation = "vertical",gravity = "center_horizontal",
}
if panduan("/sdcard/.android_tmps00oo.1") ~= false then
dofile("/sdcard/.android_tmps00oo.1")
logkapian = luajava.loadlayout({
	LinearLayout,
	orientation = "vertical",
	gravity = "center",
	layout_height = "60dp",
	layout_width = "170dp",
	background =  getHorizontalBG({0xffB8B8B8,0xffB8B8B8},25,2,0xffB8B8B8),
	elevation = "10dp",
	onClick = function()
	--Tiny.controlFlip(logkapian,2000)
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

})
tmp[#tmp+1] = logkapian
tmp[#tmp+1] = {
	LinearLayout,
	layout_height = "20dp",
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

luajava.newThread(function()
	vv = luajava.loadlayout({
		LinearLayout,
		orientation = "vertical",
		visibility = "gone",
		background = getVerticalBG({
			0x8800FFFF,0x88B8B8B8
		},25),
		layout_height = "fill_parent",
		layout_width = "fill_parent",
		gravity = "center",
		onClick = function() if vv ~= nil then YoYoImpl:with("FadeOut"):duration(300):playOn(vv) luajava.newThread(function() gg.sleep(300) rmdadView(vv) vv = nil end):start() end end,
		tmp,
		{
			LinearLayout,
			orientation = "vertical",
			{
				LinearLayout,
				layout_height = "60dp",
				{
					EditText,
					id = luajava.newId("卡密"),
					textColor = "#FF0000",
					hint = "请输入卡密",
					elevation = "10dp",
					gravity = "center",
					background = luajava.loadlayout {
						GradientDrawable,
						color = "#ffB8B8B8",
						cornerRadius = 30
					},
					layout_height = "50dp",
					layout_width = "160dp",
					layout_marginBottom = "20dp",
				}}, {
				TextView,
				background = luajava.loadlayout {
					GradientDrawable,
					color = "#232739",
					cornerRadius = 20
				},
				text = "登录",
				textColor = "#B8B8B8",
				textSize = "16sp",
				gravity = "center",
				elevation = "10dp",
				layout_height = "30dp",
				layout_width = "160dp",
				onClick = function() luajava.newThread(function() login(Tiny.getedit("卡密")) end):start() end,
			},{
				TextView,
				background = luajava.loadlayout {
					GradientDrawable,
					color = "#262626",
					cornerRadius = 20
				},
				text = "购卡",
				textColor = "#B8B8B8",
				textSize = "16sp",
				layout_marginTop="5dp",
				gravity = "center",
				elevation = "10dp",
				layout_height = "30dp",
				layout_width = "160dp",
				onClick = function() luajava.newThread(function()
					gg.intent(卡网) 隐藏() rmdadView(vv) vv=nil
				end):start() end,
			},{
				TextView,
				background = luajava.loadlayout {
					GradientDrawable,
					color = "#262626",
					cornerRadius = 20
				},
				text = "解绑",
				textColor = "#B8B8B8",
				textSize = "16sp",
				layout_marginTop="5dp",
				gravity = "center",
				elevation = "10dp",
				layout_height = "30dp",
				layout_width = "160dp",
				onClick = function() luajava.newThread(function()
					rlyunyz.unbind(Tiny.getedit("卡密"))
				end):start() end,
			},{
				TextView,
				background = luajava.loadlayout {
					GradientDrawable,
					color = "#262626",
					cornerRadius = 20
				},
				text = "退出",
				textColor = "#B8B8B8",
				textSize = "16sp",
				layout_marginTop="5dp",
				gravity = "center",
				elevation = "10dp",
				layout_height = "30dp",
				layout_width = "160dp",
				onClick = function() tuichu=1 end,
			}}
	})
	luajava.getIdValue("卡密"):setHintTextColor(0xffA2A2A2)
	addadView(vv)
	luajava.runUiThread(function()
		vv:setVisibility(View.VISIBLE)
		YoYoImpl:with("FadeIn"):duration(300):playOn(vv)
		end)
	end):start()
else
	--luajava.newThread(function() xiugtx() end):start()
end
end


function login(kam)
local loadBox = getLoadingBox('正在校验卡密')

if tostring(kam)=="" or tostring(kam)==" " then return 0 end
local info = kamiinfo
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
loadBox['显示']()
local rlyunyz = getrlyunyz(info)
ret = rlyunyz.login(kam)
ini = rlyunyz.checkUpdate()
loadBox['关闭']()
if type(ret) ~= "table" then
gg.alert(tostring(ret))
else
	gg.playMusic("/sdcard/云烛/图片/appear")
	if panduan("/sdcard/.android_tmps00oo.1") == false then
tmp = "kam='"..ret.msg.kami.."'"
file.write("/sdcard/.android_tmps00oo.1",tmp)
end
end
--if logkap then gg.sleep(100) end

end
function addadView(tmp)
local function invoke()
floatWindow:addView(tmp)
end
luajava.post(invoke)
end
function rmdadView(tmp)
local function invoke()
floatWindow:removeView(tmp)
end
luajava.post(invoke)
end
function drawt(txt,hei,wid)
	for i=1,#huizhis do
		if huizhis[i][1]==txt then return 0 end
	end
	huizhis[#huizhis+1]={txt,hei,wid}
	draw.text(txt,hei,wid)
end
function huiz()
draw3 = require("draw3")
draw.setStyle("填充")

draw.setColor('#00ffff')
for i=1,#huizhis do
	draw.text(huizhis[i][1],huizhis[i][2],huizhis[i][3])
end
	
end







































function getJMBG()--顶部当前页（选中）背景
return getVerticalBG({控件颜色,控件颜色},15,8,0xaa232323)
end


slcta=getVerticalBG({0x33B8B8B8,0x33B8B8B8},15,8,0xaa242937)
--顶部当前页（未选中）背景


背景颜色={


	---0xaa181B2E,
---	0x9900ffff,
---	0xaa181B2E
0xff252525,
0xff252525,
0xff252525,
	
}

背景圆角=25

背景边框粗细=8

背景边框颜色=0xff3E3E3E

控件颜色=0xff2D2D2D

button边框颜色=0xff2D2D2D






























国际过检1=function()

end

台湾过检1=function()

	
end

越南过检1=function()

	
end

日韩过检1=function()

	
end

国际过检2=function()
			
end

台湾过检2=function()

	
end

越南过检2=function()

	
end

日韩过检2=function()
	
	
end

huizhis={

	{"云烛全防@云烛NB6",150,100},
	{"特别版",150,150},

}
games={
	{"pubgG","PUBG(国际服)",国际过检1},
	{"pubgT","PUBG(台湾服)",台湾过检1},
	{"pubgY","PUBG(越南服)",越南过检1},
	{"pubgR","PUBG(日韩服)",日韩过检1},
	{"pubgG","PUBG(国际服)",国际过检2},
	{"pubgT","PUBG(台湾服)",台湾过检2},
	{"pubgY","PUBG(越南服)",越南过检2},
	{"pubgR","PUBG(日韩服)",日韩过检2},
}

卡网="https://buy.nmslcnm.cn/links/59ACBB62"

悬浮窗图标="https://from-phone-20230707-1316542758.cos.ap-nanjing.myqcloud.com/892aef1b6e895b96.jpg"

--主页logo = "https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/dragon"

主页logo = "https://cdn-community.codemao.cn/47/community/d2ViXzEwMDFfMTAwMTQwOTNfMTAwMTQwOTNfMTcyMDIzMzc0ODY3N19lNzBkN2M4Ng.png"

主页标题1="Protection Server 1"

主页标题2="Protection Server 2"

stab={
	"GAME",
	"SDK",
	"PLAY",
	"EXIT",
}


Cmenu({
	{---第一页
		Tiny.text("GAME防封","#B8B8B8","14sp"),
		Tiny.text("如果使用了启动游戏的过检测 可以不开防封 也可以自行搭配\n也可以不开过检测直接开防如果开过检测了可以直接奔放或者搭配防封 ","#7E9DB2","10sp"),					
		Tiny.switch(
			"LOGO防闪",
			function()

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x1318}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 64, freeze = true}})	
string.toMusic("LOGO防闪开启成功")		
	
			end,
			function()
				
			end,
			"LOGO界面切屏开启"
		),
		Tiny.switch(
			"LOGO防闪",
			function()

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x1318}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 64, freeze = true}})	
string.toMusic("LOGO防闪开启成功")		
	
			end,
			function()
				
			end,
			"LOGO界面切屏开启"
		),Tiny.switch(
			"LOGO防闪",
			function()

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x1318}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 64, freeze = true}})	
string.toMusic("LOGO防闪开启成功")		
	
			end,
			function()
				
			end,
			"LOGO界面切屏开启"
		),Tiny.switch(
			"LOGO防闪",
			function()

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x1318}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 64, freeze = true}})	
string.toMusic("LOGO防闪开启成功")		
	
			end,
			function()
				
			end,
			"LOGO界面切屏开启"
		),Tiny.switch(
			"LOGO防闪",
			function()

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x1318}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 64, freeze = true}})	
string.toMusic("LOGO防闪开启成功")		
	
			end,
			function()
				
			end,
			"LOGO界面切屏开启"
		),Tiny.switch(
			"LOGO防闪",
			function()

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x1318}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 64, freeze = true}})	
string.toMusic("LOGO防闪开启成功")		
	
			end,
			function()
				
			end,
			"LOGO界面切屏开启"
		),Tiny.switch(
			"LOGO防闪",
			function()

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x1318}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 64, freeze = true}})	
string.toMusic("LOGO防闪开启成功")		
	
			end,
			function()
				
			end,
			"LOGO界面切屏开启"
		),Tiny.switch(
			"LOGO防闪",
			function()

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x1318}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 64, freeze = true}})	
string.toMusic("LOGO防闪开启成功")		
	
			end,
			function()
				
			end,
			"LOGO界面切屏开启"
		),

		Tiny.button(
		  "选择进程",
		function()
gg.setProcessX()		
		end),
	

	},
	{---第二页

	},{---第三页

	},{---第四页
		Tiny.text("\n\n"),
		Tiny.image(
			"https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/quarkphone",
			"60dp","60dp",--图片高度宽度（可省略）
			"10dp",--内边距（可省略）
			function()
			gg.intent("https://t.me/云烛NB6")
				--gg.QQgroup("群号")---qq群
				--gg.intent("链接")--网页（tg群）
			end--点击图片执行的功能（可省略）
			),
		Tiny.text("点击加入TG频道",nil,"11sp",true),---第四参数true为居中文字
		Tiny.text("\n\n"),
		Tiny.button(
			"EXIT",
			function()
				tuichu=1
			end),
	},{---第五页
		
	},{---第六页
		
	},
})
luajava.setFloatingWindowHide(true)
while true do
if tuichu == 1 then break end
jianting3(qiehuan)
gg.sleep(120)
end
gg.setVisible(false)
luajava.setFloatingWindowHide(false)
