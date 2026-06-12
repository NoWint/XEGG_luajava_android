


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


vibra = context:getSystemService(Context.VIBRATOR_SERVICE)
Yunzhu = {}
local Yunzhu = Yunzhu
local android = import('android.*')
write=file.write
function panduan(rec) fille,err = io.open(rec) if fille == nil then return false else return true end end
read=file.read
function checkimg(tmp)
if panduan("/sdcard/云烛/图片/"..tmp) ~= true then
gg.toast("正在加载资源"..tmp)
download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..tmp,"/sdcard/云烛/图片/"..tmp)
end
end
function 获取图片(txt)
ntxt=string.sub(string.gsub(txt,"/","."),-10,-1)
if string.find(tostring(txt),"http")~=nil then
    if panduan("/sdcard/云烛/图片/"..ntxt)==false then
    download(txt,"/sdcard/云烛/图片/"..ntxt)
    end
    txt="/sdcard/云烛/图片/"..ntxt
end
return luajava.getBitmapDrawable(txt)
end
ckimg = {
	"blackx",
}
for i = 1,#ckimg do
checkimg(ckimg[i])
end
context = app.context
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
layoutParams.flags = LayoutParams.FLAG_NOT_FOCUSABLE -- 焦点设置Finish
layoutParams.gravity = Gravity.TOP|Gravity.LEFT -- 重力设置
layoutParams.width = LayoutParams.WRAP_CONTENT -- 布局宽度
layoutParams.height = LayoutParams.WRAP_CONTENT -- 布局高度
return layoutParams
end
function getj6()
jianbian6 = luajava.new(GradientDrawable)
jianbian6:setCornerRadius(20)
jianbian6:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbian6:setColors({0xffffffff,0xffffffff})
jianbian6:setStroke(0,"0xdd000000")--边框宽度和颜色
return jianbian6
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
slctb1 = luajava.loadlayout({
	GradientDrawable,
	color = "#661E1C27",
	cornerRadius = 20
})
slcta1 = luajava.loadlayout({
	GradientDrawable,
	color = "#331E1C27",
	cornerRadius = 20
})
function getSelector3()
selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, slcta1) -- 点击时候的背景
selector:addState({
	-android.R.attr.state_pressed
}, slctb1) -- 没点击的背景
return selector
end
slctb = luajava.loadlayout({
	GradientDrawable,
	color = "#001E1C27",
	cornerRadius = 0
})
slcta = luajava.loadlayout({
	GradientDrawable,
	color = "0xff0086F1",
	cornerRadius = 4
})
slctc = luajava.loadlayout {
	GradientDrawable,
	color = "#ffffffff",
	cornerRadius = 16
}
slctd = luajava.loadlayout {
	GradientDrawable,
	color = "#ddE0E0E0",
	cornerRadius = 16
}
slcte = luajava.loadlayout {
	GradientDrawable,
	color = "#11ffffff",
	cornerRadius = 12
}
slctf = luajava.loadlayout {
	GradientDrawable,
	color = "#aa1E1C27",
	cornerRadius = 12
}
Yunzhu.controlFlip = function(control,time)
	luajava.runUiThread(function()
  import "android.view.animation.Animation"
  import "android.animation.ObjectAnimator"
  xuanzhuandonghua = ObjectAnimator:ofFloat(control, "rotationY", {0, 360})
  xuanzhuandonghua:setRepeatCount(0)
  xuanzhuandonghua:setRepeatMode(Animation.REVERSE)
  xuanzhuandonghua:setDuration(time)
  xuanzhuandonghua:start()
end) end
function getSelector()
selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, slcta) -- 点击时候的背景
selector:addState({
	-android.R.attr.state_pressed
}, slctb) -- 没点击的背景
return selector
end
function getSelector2()
selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, slctd) -- 点击时候的背景
selector:addState({
	-android.R.attr.state_pressed
}, slctc) -- 没点击的背景
return selector
end

jianbian = luajava.new(GradientDrawable)
jianbian:setCornerRadius(30)
jianbian:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbian2 = luajava.new(GradientDrawable)
jianbian2:setCornerRadius(30)
jianbian2:setGradientType(GradientDrawable.LINEAR_GRADIENT)

local isswitch
YoYoImpl = luajava.getYoYoImpl()
Yunzhu.menu = function(sview)
if isswitch then
return false
end
for i=1,#stab do
	_ENV["jmb"..i]=getSelector()
end
isswitch = true
cebian = {
	LinearLayout,
	id = "侧边",
	gravity = "center",
	visibility = "gone",
	layout_height = "wrap_content",
	layout_width = "match_parent",
}
gund = {
	LinearLayout,
	background=getblue(),
	gravity = "center",
	orientation = "horizontal",
	layout_height = "wrap_content",
	layout_width = "wrap_content",
}
for i = 1,#stab do
_ENV["jm"..i]=luajava.loadlayout({
	LinearLayout,
	id = "jm"..i,
	layout_height = "28dp",
	layout_width = "68dp",
	gravity = "center",
	layout_marginTop = "2dp",
	layout_marginBottom = "2dp",
	background = _ENV["jmb"..i],
	onClick=function() 
	--Yunzhu.controlFlip(_ENV["jm"..i],500)
	切换(i) end,
	{
		TextView,
		id="jm"..i.."t",
		gravity = "center",
		textColor="#0086F1",
		text = stab[i],
		--onClick = function() 切换(i) end
	}})
gund[#gund+1] = _ENV["jm"..i]
if i< #stab then
	gund[#gund+1] = luajava.loadlayout({
		LinearLayout,
		layout_height="match_parent",
		layout_width="1.3dp",
		background="#0086F1"
	})
end
end
cebian[#cebian+1] = {
	HorizontalScrollView,
	gravity = "center",
	fillViewport = "true",
	layout_height = "wrap_content",
	layout_width = "wrap_content",
	gund,
}
cebian = luajava.loadlayout(cebian)
for i = 1,#stab do
_ENV["layout"..i] = luajava.loadlayout(
	{
		ScrollView,
		--background = getj6(),
		fillViewport = "true",
		padding = "3dp",
		id = "layout"..i,
		visibility = "gone",
		padding="10dp",
		layout_width = "wrap_content",
		layout_height = "280dp",
		orientation = "vertical",
			{
			LinearLayout,
			--background = getj6(),
			id = "layoutm"..i,
			gravity = "top",
			layout_width = "250dp",
			orientation = "vertical",
			gravity = "center_horizontal",
		},
	
	})
end
ckou = {
	LinearLayout,
	id = "chuangk",
	padding="4dp",
	visibility = "gone",
	layout_width = "wrap_content",
	layout_height = "wrap_content",
	orientation = "vertical",
	cebian,
	
}
for i = 1,#stab do
ckou[#ckou+1] = _ENV["layout"..i]
end
--luajava.newThread(function() develo(ckou) end):start()
ckou = luajava.loadlayout(ckou)
title = luajava.loadlayout({
	TextView,
	id = "title",
	visibility = "gone",
	text = stitle,
	--background="#80FF00",
	textColor="#000000",
	gravity = "center",
	textSize = "19sp",
	layout_marginTop = "20dp",
	layout_width = "280dp",
})
floatWindow = {
	LinearLayout,
	id = "motion",
	orientation="vertical",
	{FrameLayout,
	layout_width="wrap_content",
	--background="#ffffff",
	{
			LinearLayout,
			
			gravity = "center", {
				ImageView,
				id = "control",
				background = 获取图片(xfcpic),
				layout_width = "40dp",
				layout_height = "40dp",
			}},
	{
		ImageView,
		id = "exit",
		layout_gravity="right",
		visibility="gone",
		src = "/sdcard/云烛/图片/blackx",
		layout_width = "20dp",
		layout_height = "20dp",
		layout_marginTop = "10dp",
		layout_marginRight = "20dp",
	},
	{LinearLayout,
	layout_width = "wrap_content",
	orientation = "vertical",
	gravity = "center_vertical",
	layout_height = "wrap_content",
	{
		LinearLayout,
		layout_width = "wrap_content",
		layout_height = "wrap_content",
		orientation = "horizontal",
		gravity = "center",
		title,
	},
	
}},
	ckou
}
local function invoke()
local ok
local RawX, RawY, x, y
mainLayoutParams = getLayoutParams()
floatWindow = luajava.loadlayout(floatWindow)
local function invoke2()
block('start')
for k = 1,#sview do
for i = 1,#sview[k] do
_ENV["layoutm"..k]:addView(sview[k][i])
end
end
window:addView(floatWindow, mainLayoutParams)
block('end')
end

local runnable = luajava.getRunnable(invoke2)
local handler = luajava.getHandler()
handler:post(runnable)
block('join')
control.onClick = 隐藏
exit.onClick = 隐藏

local isMove

motion.onTouch = hanshu
control.onTouch = hanshu
exit.onTouch = hanshu
end

invoke(swib1,swib2)
gg.setVisible(false)
luajava.setFloatingWindowHide(true)
切换(1)
end
function Yunzhu.line()
rest = luajava.loadlayout({
	LinearLayout,
	layout_width = 'fill_parent',
	layout_height = "1dp",
	background = "#C2CAD7",
})
return rest
end
function Yunzhu.line2()
rest = luajava.loadlayout({
	LinearLayout,
	layout_width = '180dp',
	layout_height = "5dp",
	layout_marginLeft="35dp",
	background = "#0087FF",
	layout_marginTop="10dp",
})
return rest
end
function getblue()
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(6)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({0xffffffff,0xffffffff})
jianbians:setStroke(4,"0xff0086F1")--边框宽度和颜色
return jianbians
end
function getShape3()
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(10)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({0xffffffff,0xffffffff})
jianbians:setStroke(4,"0x77000000")--边框宽度和颜色
return jianbians
end
function getShape5()
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(4)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({0xffffffff,0xff007AFF})
jianbians:setOrientation(GradientDrawable.Orientation.TL_BR)
jianbians:setStroke(2,"0x77000000")--边框宽度和颜色
return jianbians
end
function getShape()
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(90)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({0xff49C263,0xff49C263})
jianbians:setStroke(0,"0xffffffff")--边框宽度和颜色

return jianbians
end
function getShape2()
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(10)
jianbians:setShape(GradientDrawable.RECTANGLE)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({0xffffffff,0xffffffff})
jianbians:setStroke(8,"0xff000000")--边框宽度和颜色
return jianbians
end
corbk = true
当前ui = 1
显示 = 0
beij = luajava.new(GradientDrawable)
beij:setCornerRadius(25)
beij:setGradientType(GradientDrawable.LINEAR_GRADIENT)
beij:setColors({0xfeEFEFEF,0xfeEFEFEF,})
beij:setStroke(0,"0x44FFffff")--边框宽度和颜色
--beijw
beij2 = luajava.loadlayout({
	GradientDrawable,
	color = "#001E1C27",
	cornerRadius = 10
})
function visi(tid,ttid)
local tview = luajava.getIdValue(tid)
local ttview = luajava.getIdValue(ttid)
if not tview then return 0 end
if tonumber(tostring(tview:getVisibility())) == 8.0 then
tview:setVisibility(View.VISIBLE)
ttview:setBackground(luajava.getBitmapDrawable("/sdcard/云烛/图片/hsj"))
else
tview:setVisibility(View.GONE)
ttview:setBackground(luajava.getBitmapDrawable("/sdcard/云烛/图片/sj"))
end
end
function Yunzhu.box2(views,boxi)
local tid = "box"..guid()
local ttid = tid.."678"
firadio = {
	LinearLayout,
	layout_width = '250dp',
	layout_height = "wrap_content",
	layout_marginTop = "2dp",
	layout_marginBottom = "2dp",
	orientation = "vertical",
}
if type(views[1]) == "string" or type(views[1]) == "number" then
firadio[#firadio+1] = {
	LinearLayout,
	layout_width = 'fill_parent',
	layout_height = "28dp",
	gravity = "center_vertical",
	layout_marginTop = "2dp",
	layout_marginBottom = "4dp",
	onClick = function() visi(tid,ttid) end,
	background = getSelector3(),
	{
		ImageView,
		layout_marginLeft = "10dp",
		id = luajava.newId(ttid),
		background = "/sdcard/云烛/图片/hsj",
		layout_width = "20dp",
		layout_height = "20dp",
		layout_marginTop = "0dp",
	},
	{
		TextView,text = views[1],
		textSize = "16sp",
		layout_marginLeft = "15dp",
		layout_width = "100dp",
		textColor = "#ffffff",
		gravity = "left",
	}} else
	gg.alert("Yunzhu.box第一个参数必须是string") os.exit()
end
if boxi then boxi="visible" else boxi="gone" end
radios = {
	LinearLayout,
	layout_marginLeft = "0dp",
	layout_marginRight = "0dp",
	orientation = "vertical",
	visibility = boxi,
	id = luajava.newId(tid),
	padding = "0dp",
	layout_width = 'fill_parent',
}

for i = 2,#views do
radios[#radios+1] = views[i]
end
firadio[#firadio+1] = radios
return luajava.loadlayout(firadio)
end

function Yunzhu.box(views)
local tid = "box"..guid()
local ttid = tid.."6"
firadio = {
	LinearLayout,
	gravity = "center",
	layout_width = 'fill_parent',
	layout_height = "wrap_content",
	orientation = "vertical",
}
if type(views[1]) == "string" or type(views[1]) == "number" then
if views[1]~="" then tsiz="14sp" else tsiz="0sp"end
firadio[#firadio+1] = {
	LinearLayout,
	layout_height = "wrap_content",
	layout_width = "fill_parent",
	{
		TextView,
		text = views[1],
		textSize = tsiz,
		layout_width = "match_parent",
		textColor = "#000000",
		gravity = "center",
	}} else

end
radios = {
	LinearLayout,
	layout_marginLeft = "0dp",
	layout_marginRight = "0dp",
	orientation = "vertical",
	padding = "0dp",
	background = getj6(),
	layout_width = 'fill_parent',
}
for i = 2,#views do
radios[#radios+1] = views[i]
if i~=#views then
radios[#radios+1] = Yunzhu.line()
end
end
firadio[#firadio+1] = radios
return luajava.loadlayout(firadio)
end
当前ui = 1
function 切换(x)
当前ui = x
luajava.runUiThread(function()
	for i = 1,#stab do
	_ENV["jm"..i]:setBackground(_ENV["jmb"..i])
	_ENV["jm"..i.."t"]:setTextColor(0xff0086F1)
	_ENV["layout"..i]:setVisibility(View.GONE)
	end
	_ENV["layout"..当前ui]:setVisibility(View.VISIBLE)
	_ENV["jm"..当前ui]:setBackground(slcta)
	_ENV["jm"..当前ui.."t"]:setTextColor(0xffffffff)
	--YoYoImpl:with("FadeIn"):duration(200):playOn(_ENV["layout"..当前ui])
	end)
end
function 隐藏()
luajava.runUiThread(function()
	if tonumber(tostring(exit:getVisibility())) == 8.0 then
		control:setVisibility(View.GONE)
		chuangk:setVisibility(View.VISIBLE)
		exit:setVisibility(View.VISIBLE)
		title:setVisibility(View.VISIBLE)
		cebian:setVisibility(View.VISIBLE)
		mainLayoutParams.flags = LayoutParams.FLAG_NOT_TOUCH_MODAL
		window:updateViewLayout(floatWindow, mainLayoutParams)
		--YoYoImpl:with("FadeIn"):duration(300):playOn(title)
		_ENV["layout"..当前ui]:setVisibility(View.VISIBLE)
		YoYoImpl:with("FadeIn"):duration(200):playOn(floatWindow)
		floatWindow:setBackground(beij)
	else
		control:setVisibility(View.VISIBLE)
		mainLayoutParams.flags = LayoutParams.FLAG_NOT_FOCUSABLE
		window:updateViewLayout(floatWindow, mainLayoutParams)
		title:setVisibility(View.GONE)
		cebian:setVisibility(View.GONE)
		floatWindow:setBackground(beij2)
		chuangk:setVisibility(View.GONE)
		exit:setVisibility(View.GONE)
		YoYoImpl:with("FadeIn"):duration(200):playOn(floatWindow)
		
		_ENV["layout"..当前ui]:setVisibility(View.GONE)
	end
end)
end
function 退出UI()
window:removeView(floatWindow)
luajava.setFloatingWindowHide(false)
bloc("end")
end
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


chazhi={} chajv={}
function Yunzhu.seek(name,bian,smin,smax,nows)
_ENV[bian] =nows
thum=getShape3()
thum:setSize(80, 80)
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
	layout_height = "36dp",
	{
		LinearLayout,
		layout_width = 'fill_parent',
		layout_hight = "fill_parent",
		layout_marginTop = "5dp",
		layout_marginBottom = "5dp",
		gravity = "center_vertical",
		--background = getShape(),
		{
			TextView,
			gravity = "top",
			textColor="#00A4FF",
			textSize="16sp",
			text = name..":"..nows,
			id = luajava.newId(names),
			layout_width = '100dp',
			layout_marginLeft = "10dp",
			layout_marginRight = "0dp",
		},
		{
			SeekBar,
			layout_width = '140dp',
			id=luajava.newId(name.."seekbar"),
			min = truesmin,
			max = truesmax,
			progress=tnows,
			--paddingStart="0dp",
			--paddingEnd="0dp",
			progressDrawable={getShape5()},
			thumb=thum,
			progressHeight="2dp",
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

function getShape(tmp0,tmp1,tmp2,tmp3)
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(tmp0)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors(tmp1)
jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
jianbians:setStroke(4,tmp3)--边框宽度和颜色
return jianbians
end
function getShape2(tmp0,tmp1,tmp2,tmp3)
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(tmp0)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors(tmp1)
jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
jianbians:setStroke(8,tmp3)--边框宽度和颜色
return jianbians
end
checkbg=getShape(
	45,
	{0xffB8B8B8,0xffB8B8B8},
	4,0xffB8B8B8)
checkbga=getShape(
	45,
	{0xff0086F1,0xff0086F1},
	4,0xff0086F1)
checkbg1=getShape2(
	45,
	{0xffffffff,0xffffffff},
	4,0xffffffff)
checkbg2=getShape2(
	45,
	{0xffffffff,0xffffffff},
	4,0xffffffff)

function 开关3(name,func1,func2,nid)
name=name..guid()
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
    luajava.getIdValue(nid):setBackground(checkbga)
    end)
_ENV[name] = "开"
vibra:vibrate(10)
pcall(func1)
else
	luajava.runUiThread(function()
	luajava.getIdValue(nid.."g"):setVisibility(View.GONE)
    luajava.getIdValue(nid.."k"):setVisibility(View.VISIBLE)
    luajava.getIdValue(nid):setBackground(checkbg)
    end)
_ENV[name] = "关"
vibra:vibrate(10)

pcall(func2)
end
end
end
end

function Yunzhu.switch(name,func1,func2,miaoshu)
  rest = luajava.loadlayout({
    LinearLayout,
    layout_width = 'match_parent',
    layout_height = "47dp",
    gravity = "center",
   
    {
      LinearLayout,
      layout_width = 'match_parent',
      layout_height = "40dp",
      layout_gravity = "center",
      gravity = "center",
      layout_marginRight = "4dp",
      layout_marginLeft = "4dp",
      elevation='2dp',
      background = luajava.loadlayout {
        GradientDrawable ,
        color = "0xffffffff" ,
        cornerRadius = 17
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
        textColor = "0xff000000",
        --setThumbTintList='0xff000000',
        onClick = function() luajava.newThread(function() func() end):start() end,
        
		},
			
		
			}}
  })
  

-- SwitchColor(_ENV[nid],"0xff004eff","0000")
  
  return rest
end
function Yunzhu.edit(name)
_ENV[name] = name..guid()
if not name then name = "点击输入文字" end
rest = luajava.loadlayout({
	LinearLayout,
	layout_width = 'fill_parent',
	layout_height = "40dp",
	{
		FrameLayout,
		layout_width = 'fill_parent',
		layout_hight = "fill_parent",
		gravity = "center",
		--orientation="vertical",
		{
			EditText,
			gravity = "top",
			background = getShape(),
			hint = name,
			textColor="#383C3F",
			gravity="center",
			textSize="15sp",
			--layout_marginBottom="-20dp",
			id = luajava.newId(_ENV[name]),
			layout_width = 'fill_parent',
		},
	{
	LinearLayout,
	layout_width = '220dp',
	layout_height = "2dp",
	layout_gravity="center",
	background = "#0087FF",
	layout_marginTop="10dp",
}
	}
})
luajava.getIdValue(_ENV[name]):setHintTextColor(0xff787878)
return rest
end
function Yunzhu.radio(radio)
firadio = {
	LinearLayout,
	layout_width = 'fill_parent',
	layout_hight = "fill_parent",
	padding="10dp",
	orientation = "vertical"
}
if type(radio[1]) == "string" or type(radio[1]) == "number" then
firadio[#firadio+1] = {
	TextView,text = radio[1]} end
radios = {
	RadioGroup,background = getShape(),
	layout_width = 'fill_parent',
}
for i = 2,#radio do
radios[#radios+1] = {
	RadioButton,
	layout_width = 'fill_parent',
	text = radio[i][1],
	onClick = function() luajava.newThread(function() pcall(radio[i][2]) end):start() end,
}
end
firadio[#firadio+1] = radios
return luajava.loadlayout(firadio)
end
function Yunzhu.button(txt,func,yans)
if not yans then yans="#00A4FF" end
if not txt then txt = "未设置" end
return luajava.loadlayout(
    {LinearLayout,
        layout_width = 'fill_parent',
        layout_hight = "30dp",
        background=getSelector2(),
        onClick=function() luajava.newThread(func):start() end,

        {
        LinearLayout,
        layout_width = "fill_parent",
        layout_hight="wrap_content",
        gravity="center_horizontal",
        layout_marginTop = "6dp",
        layout_marginBottom = "6dp",
        {
            TextView,
            textStyle="bold",
            textColor=yans,
            --id = luajava.newId(tid),
            text = txt,
            textSize="15sp",
            layout_width = "wrap_content",
        },
    }})
end

function Yunzhu.text(txt,color,size)
if not txt then txt = "未设置文字" end
if not color then color = "#ffffff" end
if not size then size = "18sp" end
return luajava.loadlayout(
	{
		TextView,
		text = txt,
		textSize = size,
		textColor = color,
		layout_width = "wrap_content",
	})
end
corb = true
function Yunzhu.setedit(name,txt)
txt = tostring(txt)
luajava.runUiThread(function()
	luajava.getIdValue(_ENV[name]):setText(txt)
	end)
end

function Yunzhu.getedit(name)
edit = tostring(luajava.getIdValue(_ENV[name]):getText())
return edit
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






















---↓↓↓你的脚本放在这里，结尾菜单调用














---↑↑↑你的脚本放在这里，下面菜单调用

stitle = "云烛UI"--←大标题

stab = {--←菜单导航栏
	"功能1",
	"功能2",
	"功能3",
	"功能",
	"功能",
	"功能"
--"功能4",--可自行拓展，需要对应下边菜单配置
}

xfcpic = "https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/Yunzhu"
--↑悬浮窗链接或路径↑

--Yunzhu.button   按钮
--Yunzhu.switch   开关
--Yunzhu.box   区域框
--Yunzhu.text   文字
--Yunzhu.seek  拖动条
--Yunzhu.edit  输入框（Yunzhu.getedit和Yunzhu.setedit调用
--以上是本UI模块包含的控件，在下面都有示例参考


Yunzhu.menu(
	{
		{----1
			--Yunzhu.text("欢迎使用云烛UI","#008EFF","20sp"),
			Yunzhu.box2({--如果不需要请删除box2，注意括号的对应。如果需要请注意用box2套box，不然会很丑
				"套娃",
				Yunzhu.box({--box开头
					"",--box名字
					
					Yunzhu.switch("开关1",
						function()
							
						end,
						function()
						gg.alert("已关闭")
						end),
					
					Yunzhu.switch("开关2",
						function()
							
						end,
						function()
						gg.alert("已关闭")
						end,
						"#000000"),--最后一个参数是颜色可以省略，默认蓝
					
					Yunzhu.button("选择进程",
						function()
							gg.setProcessX()
						end),
					
					Yunzhu.button("退出脚本",
						function()
							退出UI()
						end,
						"#DB202C"),--最后一个参数是颜色可以省略，默认蓝
					
					Yunzhu.edit("输入演示"),--括号填的“输入演示”就是当前输入框的ID
					
					Yunzhu.button("调用输入框",
						function()
							tmp=Yunzhu.getedit("输入演示")--传入ID调用内容，返回string类型
							gg.alert(tmp)
						end),
					
					Yunzhu.button("设置输入框",
						function()
							Yunzhu.setedit("输入演示","修改了输入框内容")--传入ID和要改成的内容
						end),
					
				}),--box结尾
			}),
			Yunzhu.box({--box开头
				"美化专区",
				
				Yunzhu.seek("拉条演示","ltys",1,10,6),--名字，变量名字，最小值，最大值，初始值
				
				Yunzhu.button("拉条调用",
					function()
						gg.alert(ltys)--上面生成时写的变量名字，直接拿出来调用即可
					end),
				
				Yunzhu.switch("开关3",
					function()
						
					end,
					function()
					gg.alert("已关闭")
					end),
				
				
			}),--box结尾
		}, {----2
			Yunzhu.box({
				"美化专区",
				Yunzhu.switch("开关1",
					function()
						
					end,
					function()
					gg.alert("已关闭")
					end),
				Yunzhu.switch("开关2",
					function()
						
					end,
					function()
					gg.alert("已关闭")
					end),
				Yunzhu.switch("开关3",
					function()
						
					end,
					function()
					gg.alert("已关闭")
					end),
			}),
		}, {----3
			Yunzhu.box({
				"美化专区",
				Yunzhu.switch("开关1",
					function()
						
					end,
					function()
					gg.alert("已关闭")
					end),
				Yunzhu.switch("开关2",
					function()
						
					end,
					function()
					gg.alert("已关闭")
					end),
				Yunzhu.switch("开关3",
					function()
						
					end,
					function()
					gg.alert("已关闭")
					end),
			}),
			Yunzhu.switch("退出UI",退出UI),--退出键放哪都行
			
		}, {----4

		},--后面可自行拓展，需要对应stab
		{----5

		},{----6

		},{----7

		}
	})


bloc = luajava.getBlock()
bloc('join')
luajava.setFloatingWindowHide(false)
