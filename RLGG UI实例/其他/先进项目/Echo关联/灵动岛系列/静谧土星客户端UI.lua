import("android.renderscript.RenderScript")
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

tcbTouch = function(v, event)
local Action = event:getAction()
if Action == MotionEvent.ACTION_DOWN then
isMove = false
RawY = event:getRawY()
elseif Action == MotionEvent.ACTION_UP then
	if tox<0 then
		if tox<-120 then tox=-120 end
	canMove=false
	changebg()
	luajava.newThread(function()
		--vibra:vibrate(16)
		for i=1,-(tox/6) do
			luajava.runUiThread(function()
				tcbar:scrollBy(0,6)
			end)
			gg.sleep(10)
		end
	end):start()
	
	canMove=true
	end
elseif Action == MotionEvent.ACTION_MOVE then
isMove = true
tox=-(event:getRawY() - RawY)
if canMove then
if tox>-120 and tox<0 then
tcbar:scrollTo(0,tox)
end
end

end
end
if (rlgg.VERSION < 2.09) then
	gg.alert('请使用大于等于2.09版本的RLGG')
	os.exit()
end
local typeface = import("android.graphics.Typeface")
local FontPath = "/storage/emulated/0/云烛/配置文件/GoogleSans-Bold.otf"--字体路径
local font = typeface:createFromFile(FontPath)


local baseWindow = require 'floatingWindowManager2'

if not baseWindow.getContext then
	gg.alert('请重启一下RLGG')
	app.exit()
end

function 设置控件宽(控件,宽度)
  local linearParams = 控件.getLayoutParams()
  linearParams.width=宽度
  控件.setLayoutParams(linearParams)
end
function 设置控件高(控件,高度)
  local linearParams = 控件.getLayoutParams()
  linearParams.height=高度
  控件.setLayoutParams(linearParams)
end

local context = baseWindow:getContext()
local path = '/storage/emulated/0/长安/配置文件/tagcloud'
local dexloader = dex.loadfile(path)

---@type com.moxun.tagcloudlib.view.TagCloudView
local TagCloudView = dexloader:loadClass('com.moxun.tagcloudlib.view.TagCloudView')
local MyTagsAdapter = dexloader:loadClass('cn.rlyun.a3dtagcloudandroid.MyTagsAdapter')
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
local context = baseWindow:getContext()
import "android.view.animation.TranslateAnimation"
import "android.view.animation.Animation"
import "android.animation.ArgbEvaluator"
import "android.animation.LayoutTransition"
import "android.graphics.drawable.GradientDrawable"
import "android.graphics.drawable.ClipDrawable"
import "android.media.MediaPlayer"
MediaPlayer=MediaPlayer()
import "java.io.File"
import "android.graphics.Typeface"
import "android.animation.LayoutTransition"
layoutTransition=LayoutTransition()
  layoutTransition:setDuration(500)
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




--Snackbar:make(ckou,"启动进程结束 欢迎使用",Snackbar.LENGTH_SHORT):setBackgroundTint("0xff161616"):show()
-- 浅色模式
baseWindow:darkMode()





if tonumber(device.width)==nil then
	dwidth=1340
	dheight=2300
	else
	dwidth=device.width
	dheight=device.height
end

luajava.setFloatingWindowHide(true)
switch颜色=0xff6750A4

Yunzhu = {} huiz = function() end
window = context:getSystemService("window") -- 获取窗口管理器
function panduan(rec) fille,err = io.open(rec) if fille == nil then return false else return true end end
function checkimg(tmp,ii)
if panduan("/sdcard/云烛/图片/"..tmp) ~= true then
gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
luajava.download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..tmp,"/sdcard/云烛/图片/"..tmp)
else
if file.length("/sdcard/云烛/图片/"..tmp) <= 1 then
gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
luajava.download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..tmp,"/sdcard/云烛/图片/"..tmp)
end
end
if panduan("/sdcard/云烛/图片/"..tmp) ~= true then
gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
luajava.download("https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/"..tmp,"/sdcard/云烛/图片/"..tmp)
else
	if file.length("/sdcard/云烛/图片/"..tmp) <= 1 then
gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
luajava.download("https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/"..tmp,"/sdcard/云烛/图片/"..tmp)
		end
		end
if panduan("/sdcard/云烛/图片/"..tmp) ~= true then
gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
luajava.download("http://pan.rlyun.asia/api/v3/file/get/79178/quarkconf?sign=r6mgkVej0pkVkN-Vv75-HOpfhI_wzrLjoswLo_F96xc%3D%3A0"..tmp,"/sdcard/云烛/图片/"..tmp)
else
	if file.length("/sdcard/云烛/图片/"..tmp) <= 1 then
gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
luajava.download("http://pan.rlyun.asia/api/v3/file/get/79179/xz_gg?sign=B0Q8xeg27Qu0k7ynARcbgdDengKcaU1stXtNbhFEksw%3D%3A0"..tmp,"/sdcard/云烛/图片/"..tmp)
end
	end
end
ckimg = {
	--"WB/yzf_coR",
	"heix",
	"heis",
	"heisuo",
	"heic",
	"heir",
	"quarkcheckon",
	"quarkcheckoff",
	"hei_right",
	"heiraon",
	"heiraoff",
	"quarkconf",
	"xz_gg",
	"sscoR",
	
}

for i = 1,#ckimg do
	jindu = i
	checkimg(ckimg[i],i)
	gg.toast("正在加载资源")
end
YoYoImpl = luajava.getYoYoImpl()
vibra = context:getSystemService(Context.VIBRATOR_SERVICE)
import'android.hardware.*';
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
if mainLayoutParams.x<=0 then
	mainLayoutParams.x=0
end
mainLayoutParams.y = tonumber(y) + (event:getRawY() - RawY)
window:updateViewLayout(floatWindow, mainLayoutParams)
elseif Action == MotionEvent.ACTION_UP then
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
	if not gtvb4 then gtvb4 = 0 gtvb5 = 0xffffffff end
	local jianbians = luajava.new(GradientDrawable)
	jianbians:setCornerRadius(gtvb3)
	jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
	jianbians:setColors(gtvb1)
	jianbians:setStroke(gtvb4,gtvb5)--边框宽度和颜色
	jianbians:setCornerRadii({g1,g1,g2,g2,g3,g3,g4,g4})
	return jianbians
end
function getVerticalBG(gtvb1,gtvb3,gtvb4,gtvb5)
	if not gtvb4 then gtvb4 = 0 gtvb5 = 0xffffffff end
	local jianbians = luajava.new(GradientDrawable)
	jianbians:setCornerRadius(gtvb3)
	jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
	jianbians:setColors(gtvb1)
	jianbians:setStroke(gtvb4,gtvb5)--边框宽度和颜色
	return jianbians
end
function newbg(gtvb1,gtvb3,gtvb4,gtvb5)
	if not gtvb4 then gtvb4 = 0 gtvb5 = 0xffffffff end
	local jianbians = luajava.loadlayout({
		GradientDrawable,
		color = {背景颜色},
		cornerRadius=15,
		gradientType = GradientDrawable.LINEAR_GRADIENT,
		orientation = GradientDrawable.Orientation.TOP_BOTTOM ,
		strokeWidth = 10,
		strokeColor = gtvb5
	})
	return jianbians
end
function getHorizontalBG(gtvb1,gtvb3,gtvb4,gtvb5)
	if not gtvb4 then gtvb4 = 0 gtvb5 = 0xffffffff end
	local jianbians = luajava.new(GradientDrawable)
	jianbians:setCornerRadius(gtvb3)
	jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
	jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
	jianbians:setColors(gtvb1)
	jianbians:setStroke(gtvb4,gtvb5)--边框宽度和颜色
	return jianbians
end
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
Yunzhu.controlFlip = function(control,time)
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


setOnExitListener(function()
	luajava.post(function()
		return window:removeView(floatWindow)
	end)
	tuichu=1
	luajava.setFloatingWindowHide(false)
end)
function Yunzhu.menu(sview)
	sview=sview
	huiz()
	cebian={LinearLayout,
		layout_height="wrap_content",
		layout_width="wrap_content",
		gravity="center_vertical",
		orientation="horizontal",
	}
	jmbg={}
	local ui = require('ui')
	local layout = {
		'ui.ViewPager',
		layout_height = 'match_parent',
		layout_width='match_parent',
		focusable="false",
		focusableInTouchMode="false",
	}
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
		cebian[#cebian+1]=_ENV["jm"..i]
		_ENV["layout"..i]={
			ScrollView,
			--visibility="gone",
			layout_width="match_parent",
			layout_height="wrap_content",
			{
				LinearLayout,
				id=luajava.newId("layoutm"..i),
				orientation="vertical",
				layout_width="match_parent",
				layout_height="wrap_content",
			}}
		layout[#layout+1]=_ENV["layout"..i]
	end

	bottombar={
		LinearLayout,
		layout_width="fill_parent",
		layout_height="40dp",
		padding="6dp",
		{HorizontalScrollView,
			layout_width="fill_parent",
			layout_weight=1,
			cebian},
	}
	topbar={
		LinearLayout,
		layout_width="fill_parent",
		layout_height="35dp",
		background=getCorner({0xff1A1C1E,0xff1A1C1E},15,2,0xff6750a4,15,15,0,0),

		{LinearLayout,
			layout_width="35dp",
			layout_height="match_parent",
			gravity="center",
			{
				LinearLayout,
				gravity="center",
				background=getVerticalBG({按钮颜色,按钮颜色},15),
				layout_width = "20dp",
				layout_height = "20dp",
				layout_marginLeft = "5dp",
				onClick = 隐藏,
				onTouch = hanshu,
				{LinearLayout,
					layout_height="2dp",
					layout_width="10dp",
					background=getVerticalBG({0xff2c2c2c,0xff2c2c2c},45),
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
				src = getRes("xz_gg"),
				background=getVerticalBG({按钮颜色,按钮颜色},15),
				layout_width = "20dp",
				layout_height = "20dp",
				layout_marginRight = "5dp",
				onClick=function() luajava.newThread(function() gg.alert(项目名称) end):start() end,
					onTouch=hanshu,		
					{LinearLayout,
					layout_height="2dp",
					layout_width="10dp",
					background=getVerticalBG({0xff2c2c2c,0xff2c2c2c},45),
					}
					}
					
		},
		{LinearLayout,
			layout_width="fill_parent",
			layout_weight=1,
			layout_height="match_parent",
			gravity="center",
			{LinearLayout,
				layout_height="match_parent",
				layout_width="80dp",
			--	background=topSelect(),
				onClick=function() end,
				gravity="center",
				onTouch=hanshu,
				{LinearLayout,
					layout_height="5dp",
					layout_width="60dp",
					--background=getVerticalBG({0xff0047FF,0xff0047FF},20)

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
			background=getVerticalBG({按钮颜色,按钮颜色},15),
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
				background=getVerticalBG({按钮颜色,按钮颜色},15),
				layout_width = "20dp",
				layout_height = "20dp",
				layout_marginRight = "5dp",
				onClick = 隐藏,
				onTouch = hanshu,
			}
		}
	}
	
	ViewPager = ui.ViewPager(layout)
	luajava.setInterface(ViewPager, 'addOnPageChangeListener',
	{onPageSelected=function(view)
			view=tonumber(string.sub(view,1,1))
			for i=1,#stab do
				_ENV["jmt"..i]:setTextColor(0xff272C3A)
				Typeface=font,
				_ENV["jmt"..i]:setBackground(jmbg[i])

			end
			当前ui=view+1
			--滚(当前ui)
			_ENV["jmt"..view+1]:setTextColor(0xffffffff)
			Typeface=font,
			_ENV["jmt"..view+1]:setBackground(slcta)

		end})
		
		
		
	menui=luajava.loadlayout({
		LinearLayout,--菜单
		orientation = "vertical",
		layout_height = "fill_parent",
		layout_width = "fill_parent",
		gravity = "center_horizontal",
		onClick = function() end,
		onTouch = hanshu,
		topbar,
		{LinearLayout,
			id="menubar",
			padding={"10dp","5dp","10dp","0dp"},
			layout_height = "fill_parent",
			layout_width = "fill_parent",
			layout_weight=1,
			ViewPager
		},
		
		--bottombar
	})
	
	ckou=luajava.loadlayout({
		FrameLayout,
		id = "ckou",
		--background = getVerticalBG(背景颜色,背景圆角,背景边框粗细,背景边框颜色),
		layout_height = 'match_parent',
		layout_width = 'match_parent',
		gravity="top",
		menui,
	})
	control2=luajava.loadlayout{
		ImageView,
		visibility="gone",
		--background = 获取图片(悬浮窗图标),
		background=getHorizontalBG({0xff111111,0xff111111},15,2,0xff6750a4),
		layout_width = "120dp",
		layout_height = "40dp",
		onTouch = hanshu,
		onClick = 隐藏,
	}
	
--	beij=newbg(背景颜色,15)
beij=getHorizontalBG({0xff111111,0xff111111},15,2,0xff6750a4)
	

	
floatWindow = {
		FrameLayout,
		visibility="gone",
		fillViewPort=true,
		elevation = "10dp",
		background=beij,
		onClick = function() end,
		onTouch = hanshu,
		ckou,
		control2,
		{LinearLayout,
			id="smallc",
			visibility="gone",
			onClick=显示2,
			onTouch=hanshu,
			layout_height="36dp",
			layout_width="22dp",
			gravity="center",
			background=getCorner({0x88161616,0x88161616},12,0,0xff232323,0,25,25,0),
				

			{TextView,
				text="»",
				textSize="18sp",
			}

		
		},{FrameLayout,
	id='reme',
	layout_height='match_parent',
	layout_width='match_parent',
	elevation='3dp',
	{
			ImageView,
			id="sf",
			padding = "2dp",
			src = getRes("sscoR"),
			layout_width = "23dp",
			layout_height = "23dp",
			layout_marginRight = "0dp",
			layout_marginBottom = "0dp",
			layout_gravity = "right|bottom",
			onClick = function() end,
			onTouch = suofang,
		}}	,{
    FrameLayout,
    id = "lingdongdaodb",
    layout_width = "match_parent",
    layout_height = "match_parent",
    orientation = "vertical",
    {LinearLayout,
      layout_width="match_parent",
      layout_height="match_parent",
      gravity="center",
      id="ldddb",
      {LinearLayout,
        layout_height="match_parent",
        layout_width="wrap_concert",
        gravity="top",
        padding = "7dp",
        onTouch=hanshu,
        {LinearLayout,
	Yunzhu.lddboxBT2({
	--"                  ",
	项目名称,
	--Yunzhu.text("  "..项目名称,"0xffffffff","13sp",true),
	Yunzhu.text("  Powered By 云烛","0xff6750a4","10sp",true),
	
	Yunzhu.seek("调节音量","lt",1,10,1),--名字，变量名字，最小，最大，初始

    Yunzhu.box({
	"Music",
	getwyyv()
	}),
	--Yunzhu.text("\n\n","0xff6750A4","10sp"),
	}),
          
        }
      }
    },
    },{
    FrameLayout,
    id = "lingdongdaodb",
    layout_width = "match_parent",
    layout_height = "match_parent",
    orientation = "vertical",
    {LinearLayout,
      layout_width="match_parent",
      layout_height="match_parent",
      gravity="center",
      id="ldddb",
      {LinearLayout,
        layout_height="match_parent",
        layout_width="wrap_concert",
        gravity="bottom",
        padding = "5dp",
        onTouch=hanshu,
        {LinearLayout,
	Yunzhu.lddboxBT({
	"                              ",
	Yunzhu.text("  "..项目名称,"0xffffffff","13sp",true),
	--Yunzhu.text("  静谧内部绕过","0xffffffff","10sp"),
	
	Yunzhu.seek("音量设置","lt",1,100,1),--名字，变量名字，最小，最大，初始
	
    Yunzhu.box({
	"切换页面",
	 Yunzhu.button(stab[1],function() luajava.newThread(function() 切换(1)  end):start() end ),
	 Yunzhu.button(stab[2],function() luajava.newThread(function() 切换(2)  end):start()end ),
	 Yunzhu.button(stab[3],function() luajava.newThread(function() 切换(3)  end):start()end ),
	 Yunzhu.button(stab[4],function() luajava.newThread(function() 切换(4)  end):start() end ),
	 Yunzhu.button(stab[5],function() luajava.newThread(function() 切换(5)  end):start() end ),
	Yunzhu.text("  ","0xffffffff","100sp"),
	}),
	bottombar,
	--Yunzhu.text("\n\n","0xff6750A4","10sp"),
	}),
          
        }
      }
    },
    }
}
	--bnzz=particle()
	_ENV["卡密"]="卡密"
	local function invoke()
		mainLayoutParams.x = dwidth/4-150
		mainLayoutParams.y = dheight/8
		切换(1)

		floatWindow=luajava.loadlayout(floatWindow)
		mainLayoutParams.height = mubx
		mainLayoutParams.width = muby
		window:addView(floatWindow,mainLayoutParams)
	end
	luajava.post(invoke)
	loadingBox['关闭']()
	luajava.runUiThread(function()
		--floatWindow:setBackground(beij)
		YoYoImpl:with("FadeIn"):duration(800):playOn(floatWindow)
		floatWindow:setVisibility(View.VISIBLE)
	end)
	setOnExitListener(function()
		tuichu = 1
		luajava.setFloatingWindowHide(false)
	end)
	luajava.post(function()
		for i=1,#stab do
			for k=1,#sview[i] do
				luajava.getIdValue("layoutm"..i):addView(sview[i][k])
			end
		end
	end)
	qhkai = 0
	显示 = 1
	qiehuan = function()
		if qhkai == 0 then
			yinll = 0
			qhkai = 1
			draw.remove()
			gg.toast("HIDE")
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
	if ylfunc~=nil then ylfunc() end

	while true do
		if tuichu == 1 then break end
		if 音量键==true then
			jianting3(qiehuan)
		end
		gg.sleep(120)
	end
	draw.text("",0,0)
	gg.setVisible(false)
	luajava.setFloatingWindowHide(false)

end
function daxiao()
	luajava.runUiThread(function()
		mainLayoutParams.height = mubx
		mainLayoutParams.width = muby
		window:updateViewLayout(floatWindow, mainLayoutParams)
	end) end
function 切换(x)
	x=x-1
	luajava.runUiThread(function()
		当前ui=x
		ViewPager:setCurrentItem(x)
	end)
end
function 隐藏()
	if 显2==true then return 0 end
	vibra:vibrate(6)
	luajava.runUiThread (function ()
		if tonumber (tostring (ckou: getVisibility ())) == 8.0 then
			显示 = 1
		sf:setVisibility(View.VISIBLE)
			control2:setVisibility(View.GONE)
			mainLayoutParams.height = mubx
			mainLayoutParams.width = muby
			mainLayoutParams.flags = LayoutParams.FLAG_NOT_TOUCH_MODAL
			window : updateViewLayout (floatWindow , mainLayoutParams)
			luajava.newThread(function()
				--gg.playMusic("/sdcard/云烛/图片/bbk")
			end):start()
			ckou:setVisibility(View.VISIBLE)
			YoYoImpl:with("FadeIn"):duration(400):playOn(ckou)
			floatWindow:setBackground(beij)
			else
		sf:setVisibility(View.GONE)
			显示=0
			luajava.newThread(function()
				--gg.playMusic("/sdcard/云烛/图片/bbg")
				luajava.runUiThread(function()
					YoYoImpl:with("FadeOut"):duration(200):playOn(floatWindow)
					--Yunzhu.controlSmall(floatWindow,300)
				end)
				gg.sleep(210)
				luajava.runUiThread(function()
					--Yunzhu.controlBig(floatWindow,200)
					YoYoImpl:with("FadeIn"):duration(200):playOn(floatWindow)
					control2:setVisibility(View.VISIBLE)
					mainLayoutParams.width = LayoutParams.WRAP_CONTENT -- 布局宽度
					mainLayoutParams.height = LayoutParams.WRAP_CONTENT -- 布局高度
					ckou:setVisibility(View.GONE)
					mainLayoutParams.flags = LayoutParams.FLAG_NOT_FOCUSABLE
					mainLayoutParams.width = LayoutParams.WRAP_CONTENT -- 布局宽度
					mainLayoutParams.height = LayoutParams.WRAP_CONTENT -- 布局高度
					window : updateViewLayout (floatWindow , mainLayoutParams)
					floatWindow:setBackground(empty)
				end)
			end):start()
		end
	end)
end
显2=false
function 隐藏2()
	显2=true
	ckou:setVisibility(View.GONE)
	control2:setVisibility(View.GONE)
	smallc:setVisibility(View.VISIBLE)
end
function 显示2()
	显2=false
	mainLayoutParams.x=20
	window:updateViewLayout(floatWindow, mainLayoutParams)

	if 显示==1 then
		ckou:setVisibility(View.VISIBLE)
		smallc:setVisibility(View.GONE)
		else
		control2:setVisibility(View.VISIBLE)
		smallc:setVisibility(View.GONE)
		隐藏()
	end
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


function Yunzhu.setedit(name,txt)
	txt = tostring(txt)
	luajava.runUiThread(function()
		luajava.getIdValue(_ENV[name]):setText(txt)
	end)
end

function Yunzhu.getedit(name)
	--gg.alert(edit)
	edit = tostring(luajava.getIdValue(_ENV[name]):getText())
	return edit
end
function Yunzhu.text(text,color,size,isjz)
	if not color then color="#161616" end
	if isjz then
		return luajava.loadlayout(
		{
			TextView,
			text=text,
			textColor=color,
			Typeface=font,
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
			
			Typeface=font,
			layout_height="wrap_content",
			layout_width="match_parent",
			autoSizeTextType="uniform",
		})
	end
end
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
				textColor=check字体颜色,
				textSize = "14sp",
				Typeface=font,
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
					luajava.getIdValue(nid):setBackground(checkbg2)
					luajava.getIdValue(nid.."t"):setTextColor(switch颜色)
					--Yunzhu.controlWater(switchs[nid],300)
				end)
				_ENV[name] = "开"
				pcall(func1)
				else
				vibra:vibrate(9)
				luajava.runUiThread(function()
					luajava.getIdValue(nid):setBackground(checkbg1)
					luajava.getIdValue(nid.."t"):setTextColor(0xff232323)
					--Yunzhu.controlWater(switchs[nid],300)
				end)
				_ENV[name] = "关"
				pcall(func2)
			end
		end
	end
end
function Yunzhu.check(cklist)
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
		else
		tview : setVisibility (View.GONE)
		Yunzhu.controlWater (_ENV [tid.."6"] , 200)
		Yunzhu.controlRotation9(boxpic[tid],90,0)
	end
end
boxes = {} boxpic = {}
function Yunzhu.box (views)
	local tid = "box"..guid ()
	boxpic[tid] = luajava.loadlayout {
		ImageView ,
		background = getRes("hei_right"),
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
		onTouch = function() visi2 (tid , ttid) 
    end,
    LayoutTransition=layoutTransition,
	}
	if type (views [1]) == "string" or type (views [1]) == "number" then
		firadio [# firadio + 1] = {
			LinearLayout ,
	layout_width = 'fill_parent' ,
	layout_height = "40dp" ,
	gravity = "center_vertical" ,
	layout_marginTop = "2dp" ,
	layout_marginLeft='2dp',
	layout_marginRight='2dp',
	elevation='2dp',
	layout_marginBottom = "4dp" ,
	LayoutTransition=layoutTransition,
	onClick = function ()
	visi2 (tid , ttid)
	end
			,
			background = getButtonBG(),
			{
				TextView , text = views [1] ,
				textSize = "13sp" ,
				layout_marginLeft = "10dp" ,
				layout_width = "match_parent" ,
				layout_weight=1,
				textColor = "#ffffff" ,
				gravity = "left" ,
				Typeface=font,
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
		LayoutTransition=layoutTransition,
	}
	for i = 2 , # views do
		radios [# radios + 1] = views [i]
	end
	boxes[tid] = luajava.loadlayout(radios)
	firadio [# firadio + 1] = boxes[tid]
	_ENV [t1id] = luajava.loadlayout (firadio)
	return _ENV [t1id]
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
function visi2 (tid , ttid)
local tview = luajava.getIdValue (tid)
local ttview = luajava.getIdValue (ttid)
if not tview then
return 0
end
if tonumber (tostring (tview : getVisibility ())) == 8.0 then
	tview : setVisibility (View.VISIBLE)
else
	tview : setVisibility (View.GONE)
end
end
function 灵动岛开关(name,func1,func2,nid)
name = name..guid()
_ENV[name] = "关"
if func1 == nil then func1 = function() end end
if func2 == nil then func2 = function() end end
if type(func1) == "function" then
return function()
namers = _ENV[name]
if namers ~= "开" then
luajava.runUiThread(function()	
	luajava.getIdValue(nid.."k"):setBackground(getHorizontalBG({0x00C24C38,0x00F78F5C},5))
	luajava.getIdValue(nid.."g"):setBackground(getHorizontalBG({"0xffff0000","0xffff0000","0xffff0000"},5,3,"0xffff0000"))
	end)
_ENV[name] = "开"
vibra:vibrate(6)
pcall(func1)
else
	luajava.runUiThread(function()
	luajava.getIdValue(nid.."g"):setBackground(getHorizontalBG({0x00C24C38,0x00F78F5C},5))
	luajava.getIdValue(nid.."k"):setBackground(getHorizontalBG({"0xffff0000","0xffff0000","0xffff0000"},5,3,"0xffff0000"))
	end)
_ENV[name] = "关"
vibra:vibrate(6)
pcall(func2)
end
end
end
end
boxes = {} boxpic = {}
function Yunzhu.lddboxBT(views)
local tid = "box"..guid ()
local ttid = tid.."6"
local t1id = guid ()
kgid = views[1].."关"
id = views[1].."id"
local func = 灵动岛开关(views[1],func1,func2)
ID = views[1].."id"..guid()
boxpic[tid] = luajava.loadlayout {
	ImageView ,
	src = getRes("hei_right"),
	layout_width = "0dp" ,
	layout_height = "0dp" ,
	
}
--SwitchColor(_ENV[nid],按钮颜色,"0xff252525")
--MSwitch[#MSwitch+1] = ID
firadio = {
    LinearLayout,
    layout_width="match_parent",
    layout_height = "wrap_content" ,
    gravity = "center",
    orientation = "vertical",
  --background = luajava.loadlayout{GradientDrawable,color=0xffffffff,cornerRadius=20},
    LayoutTransition=layoutTransition,
    onTouch = function() visi2 (tid , ttid) 
    end
}
if type (views [1]) == "string" or type (views [1]) == "number" then
firadio [# firadio + 1] = {
      LinearLayout,
   ---   layout_width = 'match_parent',
     -- layout_height = "40dp",
     ------
    --new灵动岛只加这个 如果要小的就 layout_width = 'wrap_concert',
    layout_width = 'match_parent',
    
     layout_height = "5dp",
      gravity = "center",
      elevation = "2dp",
      layout_marginRight = "4dp",
	  layout_marginLeft = "4dp",
	gravity = "center_vertical",
	LayoutTransition=layoutTransition,
	{
	LinearLayout ,
	layout_width = 'fill_parent' ,
	layout_height = "60dp",
	gravity = "center_vertical" ,	
	--onClick = function () visi2 (tid , ttid) end,
	background = 按钮颜色,
	{
		TextView , text = views [1] ,
		textSize = "13sp" ,
		Typeface=font,
	--	layout_marginLeft = "15dp" ,
		layout_width = "match_parent" ,
		layout_weight=1,
		textColor = "0xffffffff" ,
	Typeface=font,
		gravity = "center" ,
	},{
		LinearLayout ,
		padding={"0dp","0dp","0dp","0dp"},
		layout_width = "0dp" ,
		layout_height = "0dp" ,
		gravity = "center",
	--	background = getHorizontalBG({0xffe9e9e9,0xffe9e9e9},25),
		boxpic[tid],
	}
} 
}else
	gg.alert ("Yunzhu.box的table内第一个元素必须是string") os.exit ()
end
radios = {
	LinearLayout ,
	orientation = "vertical" ,
	visibility = "gone" ,
	id = luajava.newId (tid) ,
	layout_width = 'fill_parent' ,
	elevation = "3dp",
	
}
for i = 2 , # views do
radios [# radios + 1] = views [i]
end
boxes[tid] = luajava.loadlayout(radios)
firadio [# firadio + 1] = boxes[tid]
_ENV [t1id] = luajava.loadlayout ({
    LinearLayout,
    layout_width="match_parent",
    layout_height = "wrap_content",
    gravity = "center",
    {
      LinearLayout,
      layout_width = 'match_parent',
      layout_height = "wrap_content",
      gravity = "center",
      elevation = "2dp",
      layout_marginRight = "4dp",
	  layout_marginLeft = "4dp",
      background = luajava.loadlayout{GradientDrawable,color=按钮颜色,cornerRadius=20},
      firadio
      }
      })
return _ENV [t1id]
end
boxes = {} boxpic = {}
function Yunzhu.lddboxBT2(views)
local tid = "box"..guid ()
local ttid = tid.."6"
local t1id = guid ()
kgid = views[1].."关"
id = views[1].."id"
local func = 灵动岛开关(views[1],func1,func2)
ID = views[1].."id"..guid()
boxpic[tid] = luajava.loadlayout {
	ImageView ,
	src = getRes("hei_right"),
	layout_width = "0dp" ,
	layout_height = "0dp" ,
	
}
--SwitchColor(_ENV[nid],按钮颜色,"0xff252525")
--MSwitch[#MSwitch+1] = ID
firadio = {
    LinearLayout,
    layout_width="match_parent",
    layout_height = "wrap_content" ,
    gravity = "center",
    orientation = "vertical",
  --background = luajava.loadlayout{GradientDrawable,color=0xffffffff,cornerRadius=20},
    LayoutTransition=layoutTransition,
    onTouch = function() visi2 (tid , ttid) 
    end
}
if type (views [1]) == "string" or type (views [1]) == "number" then
firadio [# firadio + 1] = {
      LinearLayout,
   ---   layout_width = 'match_parent',
     -- layout_height = "40dp",
     ------
    --new灵动岛只加这个 如果要小的就 layout_width = 'wrap_concert',
    layout_width = 'match_parent',
    
     layout_height = "20dp",
      gravity = "center",
      elevation = "2dp",
      layout_marginRight = "4dp",
	  layout_marginLeft = "4dp",
	gravity = "center_vertical",
	LayoutTransition=layoutTransition,
	{
	LinearLayout ,
	layout_width = 'fill_parent' ,
	layout_height = "60dp",
	gravity = "center_vertical" ,	
	--onClick = function () visi2 (tid , ttid) end,
	background = 按钮颜色,
	{
		TextView , text = views [1] ,
		textSize = "13sp" ,
		Typeface=font,
	--	layout_marginLeft = "15dp" ,
		layout_width = "match_parent" ,
		layout_weight=1,
		textColor = "0xffffffff" ,
	Typeface=font,
		gravity = "center" ,
	},{
		LinearLayout ,
		padding={"0dp","0dp","0dp","0dp"},
		layout_width = "0dp" ,
		layout_height = "0dp" ,
		gravity = "center",
	--	background = getHorizontalBG({0xffe9e9e9,0xffe9e9e9},25),
		boxpic[tid],
	}
} 
}else
	gg.alert ("Yunzhu.box的table内第一个元素必须是string") os.exit ()
end
radios = {
	LinearLayout ,
	orientation = "vertical" ,
	visibility = "gone" ,
	id = luajava.newId (tid) ,
	layout_width = 'fill_parent' ,
	elevation = "3dp",
	
}
for i = 2 , # views do
radios [# radios + 1] = views [i]
end
boxes[tid] = luajava.loadlayout(radios)
firadio [# firadio + 1] = boxes[tid]
_ENV [t1id] = luajava.loadlayout ({
    LinearLayout,
    layout_width="match_parent",
    layout_height = "wrap_content",
    gravity = "center",
    {
      LinearLayout,
      layout_width = 'match_parent',
      layout_height = "wrap_content",
      gravity = "center",
      elevation = "2dp",
      layout_marginRight = "4dp",
	  layout_marginLeft = "4dp",
      background = luajava.loadlayout{GradientDrawable,color=按钮颜色,cornerRadius=20},
      firadio
      }
      })
return _ENV [t1id]
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
		if localname=="音量键隐藏UI" then ylfunc=outfunc end
		return outfunc
	end
end

function Yunzhu.switch(name,func1,func2,miaoshu)
		if not checkbg then
			checkbg = getShape2(
			15,
			{
				switch颜色,switch颜色
			},
			4,switch颜色)
			checkbg0 = getShape2(
			15,
			{
				0xff232323,0xff232323
			},
			4,0x00ffffff)
			checkbga = getShape2(
			15,
			{
				按钮颜色,按钮颜色
			},
			4,0xffE6E6E6)
			switchbg1 = getShape(
			15,
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
		nid = name..guid()
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
		if not miaoshu then
			rest = luajava.loadlayout({
	LinearLayout,
	layout_width = 'fill_parent',
	layout_height = "wrap_content",
	gravity = "center_vertical",
	{
		LinearLayout,
		layout_width = 'fill_parent',
		layout_height = "40dp",
		gravity = "center_vertical",
		layout_marginLeft='2dp',
		layout_marginRight='2dp',
		layout_marginTop='2dp',
		layout_marginBottom='2dp',
		elevation='2dp',
		background = luajava.loadlayout {
			GradientDrawable ,
			color = 按钮颜色 ,
			cornerRadius = 15
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
        textColor = "0xffffffff",
        Typeface=font,
        --setThumbTintList='0xff000000',
        onClick = function() luajava.newThread(function() func() end):start() end,
        
		},
			
		
			}}
			})
			else
				rest = luajava.loadlayout({
	LinearLayout,
	layout_width = 'fill_parent',
	layout_height = "wrap_content",
	gravity = "center_vertical",
	{
				LinearLayout,
		layout_width = 'fill_parent',
		layout_height = "wrap_content",
		gravity = "center_vertical",
		layout_marginLeft='2dp',
		layout_marginRight='2dp',
		layout_marginTop='2dp',
		layout_marginBottom='2dp',
		elevation='2dp',
		background = luajava.loadlayout {
			GradientDrawable ,
			color = 按钮颜色 ,
			cornerRadius = 15
		} ,padding = {
		"0dp","0dp","6dp","0dp"
					} ,
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
        textColor = "0xffffffff",
        Typeface=font,
        --setThumbTintList='0xff000000',
        onClick = function() luajava.newThread(function() func() end):start() end,
        
		},
			
		
			}}
			})
		end
		return rest
	end
	function getButtonBG()
		local selector = luajava.getStateListDrawable()
		selector:addState({
			android.R.attr.state_pressed
		}, getVerticalBG({0x55d7d7d7,0x55d7d7d7},15))
		selector:addState({
			-android.R.attr.state_pressed
		}, getVerticalBG({按钮颜色,按钮颜色},15))
		return selector
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
			layout_marginLeft='3dp',
			layout_marginRight='3dp',
			elevation='2dp',
			background = getButtonBG(),
			padding="10dp",
				onClick = function()
					Yunzhu.controlWater(buts[tid],300)
					luajava.newThread(func):start() end,
				{
					TextView,
					--id = luajava.newId(tid),
					textColor = txtc,
					Typeface=font,
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
			hint = "点击输入文字"
		end
		rest = luajava.loadlayout ( {
			LinearLayout,
			layout_height="wrap_content",
			layout_width="match_parent",
			gravity="center",
			{
				LinearLayout ,
				layout_width = 'match_parent' ,
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
					textColor=check字体颜色,
					Typeface=font,
					textSize = "13sp",
					layout_height = "40dp" ,
					layout_marginBottom = "-2dp",
					id=luajava.newId(_ENV [name]),
					layout_width = 'match_parent' ,

				}
			}
		})
		luajava.getIdValue(_ENV [name]):setHintTextColor(0xff545454)
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
		local thum= getVerticalBG({0xffffffff,0xffffffff},4,10,switch颜色)
		thum:setSize(30, 40)
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
				background = getVerticalBG({按钮颜色,按钮颜色},15),
				{
					TextView,
					padding={"5dp","10dp","0dp","10dp",},
					gravity = "top",
					textColor="#ffffff",
					Typeface=font,
					text = name..":"..nows,
					id = luajava.newId(names),
					layout_width = '100dp',
					--layout_marginLeft = "5dp",
					layout_marginRight = "0dp",
				},
					{
				Slider,
				id=nid,
				thumbHeight='23dp',
			trackHeight='15dp',
			trackStopIndicatorSize='0dp',
				layout_width = 'match_parent',
				layout_height = 'wrap_content',
				padding = {
        "0dp","0dp","0dp","0dp"
      },
				value = nows,
				valueTo = smax,
				valueFrom = smin,
				stepSize = 1,
				thumbSize="2dp",
			
				tickVisible=false,
					onClick = function() luajava.newThread(function() func() end):start() end,
				addOnChangeListener = function(slider, value, fromUser) -- 如果执行的功能不是修改器的函数,或者不带阻塞的,可以不用 window:threadWraper 包裹,性能更好(属于UI线程)

				-- 如果不是用户触发的,不处理
				if not fromUser then
					return
				end

				Snackbar:make(slider, '已选择数值 > '..value, Snackbar.LENGTH_SHORT):show()
			end
				},
			}})
		return rest
	end

	levels={}
	function Yunzhu.seek2(name , bian , smin , smax , nows,level)
		local smin=math.ceil(smin* 10)/10
		local smax=math.ceil(smax* 10)/10
		local nows=math.ceil(nows* 10)/10
		local level=math.ceil(level* 10)/10
		if bian~='mubx' and bian~='muby' then
			if _ENV [bian] == nil then
				_ENV [bian] = nows
				else
				gg.alert("seek控件的变量名称:"..bian.."重复！\n请换一个名称") os.exit()
			end
		end
		if not name then
			name = "未设置"
		end
		local names = name..guid ()
		if not level then level=1 end
		levels[bian]=math.ceil(level* 10)/10
		local shuzhi=luajava.loadlayout({
			TextView ,
			gravity = "center" ,
			text = tostring(nows) ,
			textColor=switch颜色,
			Typeface=font,
			id = luajava.newId (names) ,
			layout_width = '50dp' ,
			layout_marginLeft = "5dp" ,
			layout_marginRight = "0dp" ,
		})
		local tmp1={TextView,
			background=getVerticalBG({0xeeffffff,0xeeffffff},15,2.5,0xff161616),
			layout_height="24dp",
			layout_width="24dp",
			gravity="center",
			elevation="2dp",
			layout_marginTop = "5dp" ,
			layout_marginBottom = "5dp" ,
			layout_marginLeft = "5dp" ,
			layout_marginRight = "5dp" ,
			text="-",
			textColor="#000000",
			Typeface=font,
			onClick=function()
				vibra:vibrate(4)
				if _ENV[bian]>smin then
					_ENV[bian]=_ENV[bian]-levels[bian]
					_ENV[bian]=tonumber(string.format("%.1f", _ENV[bian]))
					if _ENV[bian]<smin then _ENV[bian]=smin end
					_ENV[bian]=math.ceil(_ENV[bian]* 10)/10
					luajava.getIdValue(names):setText(tostring(_ENV[bian]))
					if bian=='mubx' or bian=='muby' then daxiao() end
				end
			end,
		}
		local tmp2={TextView,
			background=getVerticalBG({0xeeffffff,0xeeffffff},15,2.5,0xff161616),
			layout_height="24dp",
			layout_width="24dp",
			gravity="center",
			elevation="2dp",
			layout_marginTop = "5dp" ,
			layout_marginBottom = "5dp" ,
			layout_marginLeft = "5dp" ,
			layout_marginRight = "5dp" ,
			text="+",
			textColor="#000000",
			Typeface=font,
			onClick=function()
				vibra:vibrate(4)
				if _ENV[bian]<smax then
					_ENV[bian]=_ENV[bian]+levels[bian]
					_ENV[bian]=tonumber(string.format("%.1f", _ENV[bian]))
					if _ENV[bian]>smax then _ENV[bian]=smax end
					_ENV[bian]=math.ceil(_ENV[bian]* 10)/10
					luajava.getIdValue(names):setText(tostring(_ENV[bian]))
					if bian=='mubx' or bian=='muby' then daxiao() end
				end
			end,
		}
		rest = luajava.loadlayout ( {
				LinearLayout ,
	layout_width = 'fill_parent' ,
	gravity = "center" ,
	layout_height = "wrap_content" ,
	{
			LinearLayout,
		layout_width = 'fill_parent',
		layout_height = "40dp",
		gravity = "center_vertical",
		layout_marginLeft='2dp',
		layout_marginRight='2dp',
		layout_marginTop='2dp',
		layout_marginBottom='2dp',
		elevation='2dp',
		background = luajava.loadlayout {
			GradientDrawable ,
			color = 按钮颜色 ,
			cornerRadius = 15
		} ,padding = {
		"0dp","0dp","6dp","0dp"
	
		
		},
				{
					TextView ,
					gravity = "top" ,
					text = name ,
					textColor="#ffffff",
					Typeface=font,
					layout_weight=1,
					textSize='12sp',
					layout_width = 'match_parent' ,
					layout_marginLeft = "10dp" ,
					layout_marginRight = "0dp" ,
				},
				tmp1,shuzhi,tmp2
			}
		})
		return rest
	end


	radon=getRes("heiraon")
	radoff=getRes("heiraoff")
	radiog={}
	function Yunzhu.radio (cklist)
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
				textColor = check字体颜色 ,
				Typeface=font,
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
			LinearLayout,
		layout_width = 'match_parent',
		layout_height = "wrap_content",
		gravity = "center_vertical",
		layout_marginLeft='2dp',
		layout_marginRight='2dp',
		layout_marginTop='2dp',
		layout_marginBottom='2dp',
		elevation='2dp',
	orientation = "vertical" ,
	background = luajava.loadlayout {GradientDrawable,color = 按钮颜色,cornerRadius = 26},
		padding = {"0dp","0dp","6dp","0dp"},
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
					textColor = check字体颜色 ,
					Typeface=font,
					layout_width = 'wrap_content' ,
					layout_height = 'wrap_content' ,
					layout_marginLeft = "10dp" ,
					layout_marginRight = "5dp" ,
				}
			})
			restt [# restt + 1] = _ENV [tid]
		end
		rest [# rest + 1] = restt
		return luajava.loadlayout (rest)
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
	function getJMBG()
		local selector = luajava.getStateListDrawable()
		selector:addState({
			android.R.attr.state_pressed
		}, slcta)
		selector:addState({
			-android.R.attr.state_pressed
		}, slctb)
		return selector
	end

function getwyyv()
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
return getButtonBG()
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
		layout_width = "match_parent",
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
			layout_width = "match_parent",
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
				textSize = "13sp",
				textColor = "#6750A4",
				Typeface=font,
				layout_marginBottom = "0dp",
				text = musname,
				layout_hight = "10dp",
				layout_width = "match_parent",
				gravity = "center"

			},
			{
				TextView,
				layout_marginTop = "0dp",
				textColor = "#ffffff",
				Typeface=font,
				textSize = "11sp",
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
	gg.sleep(2000)
	luajava.runUiThread(function()
		luajava.getIdView("加载"):setVisibility(View.GONE)
		luajava.getIdView("搜索结果"):setVisibility(View.VISIBLE)
	end)
end
stxt = {
	TextView,
	text = "搜索",
	textColor="#6750A4",
	Typeface=font,
	background=getbg(),
	layout_height="match_parent",
	visibility = "visible",
	gravity="center",
	layout_marginRight="10dp",
	id = luajava.newId("stxt"),
	layout_marginLeft = "3dp",
	textSize = "13sp",
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
	textSize = "12sp",
	textColor="#ffffff",
	Typeface=font,
}
jiaz = {
	TextView,
	text = "正在加载歌曲资源",
	visibility = "gone",
	id = luajava.newId("加载"),
	textSize = "15sp",
	gravity = "center",
	textColor="#ffffff",
	Typeface=font,
}
wyylog = luajava.loadlayout({
	LinearLayout,
	orientation="vertical",
	layout_width = "match_parent",
	{
		ScrollView,
		layout_hight = "match_parent",
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
				
				{
					EditText,
					hint = "搜索歌曲名称",
					textColor="#ffffff",
					Typeface=font,
					id = luajava.newId("搜索"),
					background = getbg(),
					textSize='13sp',
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
luajava.getIdView('搜索'):setHintTextColor(0xff999999)
return wyylog
end


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











--底部导航栏（未选中）背景
slctb=getVerticalBG({0x99191919,0x99191919},15,0,0xaa232323)



slcta=getVerticalBG({0xff6750A4,0xff6750A4},15,0,0xaa242937)
--底部导航栏（选中）背景

muby=780
	--初始宽度 竖屏建议850 横屏建议1310 （适用于主流分辨率下，低分辨率需要调低）


	mubx=1030
	--初始高度 竖屏建议1310 横屏建议850 （适用于主流分辨率下，低分辨率需要调低）
--初始高度 竖屏建议1310 横屏建议850 （适用于主流分辨率下，低分辨率需要调低）


背景颜色=0xff111111

check字体颜色=0xffffffff

按钮颜色=0xff212224

switch颜色=0xff6750A4

	function huiz()
		--绘制内容必须写在这里否则会消失


	end


	--悬浮窗图标="https://pan.szfx.top/view.php/e6ff94ed928e893fb0988938e9bd05a7.png"
悬浮窗图标=""
stab={
	"公告",
	"防封",
	"功能",
	'音乐',
	"设置",
}


项目名称="SATURN ENGINE"


loadingBox = getLoadingBox('continue')
loadingBox['显示']()

Yunzhu.menu({
	{

		Yunzhu.text("Silence SATURN",switch颜色,"19sp",true),
		Yunzhu.text("Powered by YunZhu",0xff333333,"12sp",true),
		
		Yunzhu.box({
			"XXX区",
				Yunzhu.edit("输入框演示"),
				Yunzhu.button(
					"调用输入框",
					function()
						local tmp=Yunzhu.getedit("输入框演示")
						gg.alert(tmp)
					end,
					0xff0056FF),
				Yunzhu.seek("拉条演示","ltxx",1,20,1),
				--名字，变量名字，最小，最大，初始
				--“ltxx”为此拉条变量名字，使用时每个拉条不可重复
				Yunzhu.seek2("小数演示","ltxx2",0.1,2,0.4,0.1),--注意seek2多了一个参数是每次加减大小
				Yunzhu.button(
					"调用拉条",
					function()
						gg.alert(ltxx)
						gg.alert(ltxx2)
					end,
					0xffE20C30),
				
				
				
				
		}),--box结尾
		Yunzhu.switch(
			"功能",
			function()
				
			end,
			function()
				
			end
		),
		Yunzhu.check({
				{
					"例子",
					function()
						
					end,
					function()
						
					end
				}, {
					"例子",
					function()
						
					end,
					function()
						
					end
				}, {
					"测试1",
					function()
						
					end,
					function()
						
					end
				},
			}),
		Yunzhu.button(
			"彩色字体演示",
			function()
				
			end,
			0xff6750A4),
		Yunzhu.button(
			"进程",
			function()
				gg.setProcessX()
			end),
		
		
		
		
	},
	{---第二页
		Yunzhu.switch(
			"功能",
			function()
				
			end,
			function()
				
			end
		),
		Yunzhu.switch(
			"功能",
			function()
				
			end,
			function()
				
			end
		),
		Yunzhu.button(
			"功能",
			function()
				
			end),
		Yunzhu.radio({--单选
				{
					"防环境 [登录界面必开]" ,
					function ()
						gg.alert(1)
					end
				} , {
					"防行为 [大厅界面必开]" ,
					function ()
						
					end
				} , {
					"防人工一 [大厅界面]" ,
					function ()
						
					end
				} , {
					"防人工二 [大厅界面]" ,
					function ()
						
					end
				} ,
			}),
		
		
		
	},{---第三页
		Yunzhu.switch(
			"功能",
			function()
				
			end,
			function()
				
			end
		),
		Yunzhu.switch(
			"功能",
			function()
				
			end,
			function()
				
			end
		),
		Yunzhu.button(
			"功能",
			function()
				
			end),
		
		
	},{
		getwyyv()
	},{---第五页
		Yunzhu.seek2('窗口宽度','mubx',250,dwidth,mubx,10),
		Yunzhu.seek2('窗口高度','muby',250,dheight,muby,10),
		Yunzhu.switch(
			"音量键隐藏UI",--改名会导致不能自动开启
			function()
				音量键=true
			end,
			function()
				音量键=false
			end
		),
		Yunzhu.button(
			"退出",
			function()
				tuichu=1
			end),
	},{---第六页
		
	},{---第六页
		
	},
})
