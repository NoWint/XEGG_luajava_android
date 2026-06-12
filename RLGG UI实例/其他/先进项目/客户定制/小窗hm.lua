if (rlgg.VERSION < 2.09) then
	gg.alert('请使用大于等于2.09版本的RLGG')
	os.exit()
end


local baseWindow = require 'floatingWindowManager2'

if not baseWindow.VERSION or baseWindow.VERSION < '1.0.3' then
	gg.alert('请重启一下RLGG')
	app.exit()
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
layoutTransitions=LayoutTransition()
  layoutTransitions:setDuration(900)
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
import "android.view.animation.ScaleAnimation"
import "android.view.animation.AnimationSet"
import "android.view.animation.AlphaAnimation"
import "android.view.animation.TranslateAnimation"
import "android.animation.ObjectAnimator"
import "android.view.animation.Animation"
import "android.graphics.Typeface"
import "java.io.File"
import "android.animation.ObjectAnimator"
import "android.media.MediaPlayer"
import "android.view.animation.DecelerateInterpolator"
import "android.renderscript.Element"
import "android.renderscript.ScriptIntrinsicBlur"
import "android.renderscript.Allocation"
import "android.content.Context"
import "android.net.Uri"
import "android.view.animation.ScaleAnimation"
import "android.net.Uri"
import "android.graphics.drawable.ClipDrawable"
import "android.media.AudioManager"
import "android.content.Context"
import "android.media.AudioManager"
import "android.text.style.ClickableSpan"
import "android.text.method.LinkMovementMethod"
import "android.text.SpannableString"
import "android.text.Spanned"
import "android.text.style.BackgroundColorSpan"
import "android.graphics.drawable.GradientDrawable"
import "android.animation.AnimatorSet"
import "android.view.animation.ScaleAnimation"
import "android.view.animation.Animation"
import "android.provider.MediaStore"
import "java.lang.Integer"
import "android.graphics.drawable.ColorDrawable"
import "android.graphics.*"
import "android.content.*"
import "android.text.SpannableString"
import "android.text.style.ForegroundColorSpan"
import "android.text.Spannable"
import "android.graphics.Color"
import "java.io.*"
import "android.view.animation.LayoutAnimationController"
import "android.media.MediaPlayer"
import "android.view.animation.AlphaAnimation"
import "android.provider.Settings"

import 'java.lang.CharSequence'
import 'java.lang.Boolean'
import 'java.lang.reflect.Array'

layoutTransitiond=LayoutTransition()

layoutTransitiond:enableTransitionType(LayoutTransition.CHANGING)
--layoutTransitiond:setDuration(LayoutTransition.CHANGE_APPEARING,900)
--layoutTransitiond:setDuration(LayoutTransition.CHANGE_DISAPPEARING,900)
layoutTransitiond:setDuration(900)

缩放动画=ScaleAnimation(0,1,0,1,Animation.RELATIVE_TO_SELF,-1.5,Animation.RELATIVE_TO_SELF,-1.5)
缩放动画:setDuration(800)--设置动画时间
缩放动画:setFillAfter(true)--设置动画后停留位置
缩放动画:setRepeatCount(0)--设置无限循环
baseWindow:darkMode()


function getTimeStamp(t)
  local str = os.date("%m-%d-%H:%M:%S", t)
  return str
end
缩放=true
YC = {}
colorvs = {}
local YC = YC
local android = import("android.*")
write=file.write
function panduan(rec) fille,err = io.open(rec) if fille == nil then return false else return true end end
read=file.read
function panduan(rec) fille,err = io.open(rec) if fille == nil then return false else return true end end
function checkimg(tmp,ii)
if panduan("/sdcard/余词/图片/"..tmp) ~= true then
gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
luajava.download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..tmp,"/sdcard/余词/图片/"..tmp)
else
if file.length("/sdcard/余词/图片/"..tmp) <= 1 then
gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
luajava.download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..tmp,"/sdcard/余词/图片/"..tmp)
end
end
if panduan("/sdcard/余词/图片/"..tmp) ~= true then
gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
luajava.download("https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/"..tmp,"/sdcard/余词/图片/"..tmp)
else
	if file.length("/sdcard/余词/图片/"..tmp) <= 1 then
gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
luajava.download("https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/"..tmp,"/sdcard/余词/图片/"..tmp)
end
end
end
ckimg = {
	"heir",
	"hei_right",
	"heix",
	"heic",
	"heik",
	"arlogo",
	"classes3.dex","CircleImageView.dex",
	'heis','heisuo',
	'quarkcheckoff','quarkcheckon',
}

for i = 1,#ckimg do
jindu = i
checkimg(ckimg[i],i)
end
dex.loadfile("/sdcard/余词/图片/CircleImageView.dex")
import("android.widget.CircleImageView")
context = app.context
import'android.hardware.*';
local sensor = luajava.createProxy('android.hardware.SensorEventListener', {
  onSensorChanged = functions.debounce(function()
	if 摇一摇==false then return 0 end
	if qhkai~=0 then
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
dexloader=dex.loadfile('/sdcard/余词/图片/classes3.dex')
MySensorManager = dexloader:loadClass('yaocn.rlyun.yaoyiyao.MySensorManager')
luajava.runOnUiThread(function()
  MySensorManager(context, sensor)
end)

window = context:getSystemService("window") -- 获取窗口管理器
vibra = context:getSystemService(Context.VIBRATOR_SERVICE)
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
function newbg2(gtvb1,gtvb3,gtvb4,gtvb5)
  if not gtvb4 then gtvb4 = 0 gtvb5 = 0xff000000 end
  local jianbians = luajava.loadlayout({
	GradientDrawable,
	color = {gtvb1},
	cornerRadius=gtvb3,
	gradientType = GradientDrawable.LINEAR_GRADIENT,
	orientation = GradientDrawable.Orientation.TOP_BOTTOM ,
	strokeWidth = 10,
	strokeColor = gtvb5
  })
  return jianbians
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
suofang = function(v, event)
  if 缩放 then
	local Action = event:getAction()
	if Action == MotionEvent.ACTION_DOWN then
	  isMove = false
	  RawX = event:getRawX()
	  RawY = event:getRawY()
	  x = mainLayoutParams.height
	  y = mainLayoutParams.width
	  if x==0 or x==-2 then x=1700 y=1300 end
		ckou:setBackground(getVerticalBG({0xffF2F3F5,0xffF2F3F5},30,15,0xff004EFF))	 
	 elseif Action == MotionEvent.ACTION_MOVE then
	  isMove = true
	  mubx=tonumber(x) + (event:getRawY() - RawY)
	  if mubx>=830 and mubx<=11000 then
		mainLayoutParams.height = mubx
	  end
	  muby=tonumber(y) + (event:getRawX() - RawX)
	  if muby>=830 and muby<=11000 then
		mainLayoutParams.width = muby
	  end
	 elseif event:getAction() == MotionEvent.ACTION_UP then
	  ckou:setBackground(getVerticalBG({0xffF2F3F5,0xffF2F3F5},30,0,0xaa232323))

	end
	window:updateViewLayout(floatWindow, mainLayoutParams)
  end
end

YC.controlWater = function(control,time)
  luajava.runUiThread(function()
	import "android.animation.ObjectAnimator"
	ObjectAnimator():ofFloat(control,"scaleX", {
	  1, 0.8, 0.9, 1
	}):setDuration(time):start()
	ObjectAnimator():ofFloat(control,"scaleY", {
	  1,0.8,0.9,1
	}):setDuration(time):start()
end) end
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
for i = 1, #audiotype do
  yinl[i] = {}
  yinl[i].type = audiotype[i]
  yinl[i].min = audi:getStreamMinVolume(audiotype[i])
  yinl[i].max = audi:getStreamMaxVolume(audiotype[i])
  yinl[i].now = audi:getStreamVolume(audiotype[i])
end
yltype = 0
function jianting3(func)
  yinln = {}
  for i = 1, #audiotype do
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
qhkai = 0
qiehuan = function()
  if qhkai == 0 then
	qhkai = 1
	draw.remove()
	luajava.runUiThread(function()
	  YoYoImpl:with("FadeOut"):duration(300):playOn(floatWindow)
	end)
	gg.sleep(300)
	luajava.runUiThread(function()
	  floatWindow:setVisibility(View.GONE)
	end)
   else
	qhkai = 0
	huiz()
	--draw.text('.', -9200,-9200)
	luajava.runUiThread(function()
	  floatWindow:setVisibility(View.VISIBLE)
	  YoYoImpl:with("FadeIn"):duration(500):playOn(floatWindow)
	end)
  end
end
function getRes(x)
  return 获取图片("/sdcard/余词/图片/"..x)
end
function 获取图片(txt)
  ntxt=string.sub(string.gsub(txt,"/","."),-10,-1)
  if string.find(tostring(txt),"http")~=nil then
	if panduan("/sdcard/余词/图片/"..ntxt)==false then
	  download(txt,"/sdcard/余词/图片/"..ntxt)
	end
	txt="/sdcard/余词/图片/"..ntxt
  end
  return luajava.getBitmapDrawable(txt)
end
function setwidth(控件,宽度)
  local linearParams = 控件.getLayoutParams()
  linearParams.width=宽度
  控件.setLayoutParams(linearParams)
end
function setheight(控件,高度)
  local linearParams = 控件.getLayoutParams()
  linearParams.height=高度
  控件.setLayoutParams(linearParams)
end
local isswitch
YoYoImpl = luajava.getYoYoImpl()
YC.menu = function(sview)
  cebian = {
	LinearLayout,
	id = "侧边",
	layout_height = "match_parent",
	layout_width = "wrap_content",
	
	orientation = "horizontal",
	gravity = "center",
	background = {
	  GradientDrawable,
	  color = "#00ffffff",
	  cornerRadius = 10
	}
  }
  function 切换(x)
	当前ui = x
	luajava.runUiThread(function()
	  for i = 1, #stab do
		_ENV["jmt"..i]:setTextColor(0xff201E1E)--未选中的字体颜色
		_ENV["jm"..i]:setBackground(getVerticalBG({0xffffffff,0xffffffff},15))--未选中的颜色
		_ENV["layout"..i]:setVisibility(View.GONE)
	  end
	  _ENV["jmt"..当前ui]:setTextColor(0xffffffff)--选中的字体颜色
	  _ENV["jm"..当前ui]:setBackground(getVerticalBG({0xff004EFF,0xff004EFF},15))--选中后颜色
	  _ENV["layout"..当前ui]:setVisibility(View.VISIBLE)
	  YoYoImpl:with("FadeIn"):duration(400):playOn(_ENV['layout'..当前ui])	  
	end)
  end
  for i = 1,#stab do
	cebian[#cebian+1] = {
	  LinearLayout,
	  id = 'jm'..i,
	  gravity="center",
	  layout_height = "31dp",
	  layout_width = "50dp",
	  layout_marginTop = "3dp",
	  layout_marginBottom = "3dp",
	  layout_marginRight = "3dp",
	  layout_marginLeft = "10dp",
	  background=getVerticalBG({0xffffffff,0xffffffff},15),
	  onClick = function()
		切换(i)
	  end,
	  {
		TextView,
		text = stab[i],
		id="jmt"..i,
		gravity = "center",
		textColor = "#201E1E",
		layout_height = "23dp",
		layout_width = "68dp",
	  }
	}

  end
  ViewList = {
	LinearLayout,
	orientation = "horizontal",
	layout_width = "match_parent",
	layout_height = "match_parent",
  }
  for i = 1,#stab do
	_ENV["layout"..i] =luajava.loadlayout({
	  ScrollView ;
	  layout_height = "match_parent" ;
	  layout_width = "match_parent",
	  layout_marginLeft="5dp",
	  layout_marginRight="5dp",
	  VerticalScrollBarEnabled=false,
	  {
		LinearLayout,
		id ="layoutm"..i,
		layout_height = "match_parent" ;
		orientation = "vertical" ;
		layout_width = "match_parent" ;
		gravity = "center_horizontal",
	  }
	})
	ViewList[#ViewList+1] = _ENV["layout"..i]
  end
  ViewList = luajava.loadlayout(ViewList)
  function UI缩放()
	vibra:vibrate(15)
	if 缩放==false then
	  缩放=true
	  luajava.newThread(function()
		gg.toast("UI缩放已解锁")	  
	  end):start()
	  lockui:setImageDrawable(getRes("heis"))
	 else
	  缩放=false
	  luajava.newThread(function()
		gg.toast("UI缩放已锁定")		
	  end):start()
	  lockui:setImageDrawable(getRes("heisuo"))
	end
  end
  function 隐藏()
	vibra:vibrate(15)
	luajava.runUiThread(function()
	  if tonumber(tostring(menu:getVisibility())) ~= 8.0 then
		显示 = 0
		menu:setVisibility(View.GONE)
		control:setVisibility(View.VISIBLE)
		mainLayoutParams.width = LayoutParams.WRAP_CONTENT -- 布局宽度
		mainLayoutParams.height = LayoutParams.WRAP_CONTENT -- 布局高度
		mainLayoutParams.flags = LayoutParams.FLAG_NOT_FOCUSABLE
		window : updateViewLayout (floatWindow , mainLayoutParams)
		YoYoImpl:with("FadeIn"):duration(600):playOn(floatWindow)
	   else
		显示 = 1
		mainLayoutParams.width = muby -- 布局宽度
		mainLayoutParams.height = mubx -- 布局高度
		mainLayoutParams.flags = LayoutParams.FLAG_NOT_TOUCH_MODAL
		window : updateViewLayout (floatWindow , mainLayoutParams)
		menu:setVisibility(View.VISIBLE)
		control:setVisibility(View.GONE)
		YoYoImpl:with("FadeIn"):duration(600):playOn(floatWindow)
	  end
	end)
  end
  Direction = 1
  topbar = luajava.loadlayout({
	FrameLayout,
	layout_width="match_parent",
	layout_height="35dp",
	background=getCorner({0xffffffff,0xffffffff},15,0,0xff232323,30,30,0,0),
	{LinearLayout,
	  layout_width="match_parent",
	  layout_height="match_parent",
	  gravity="center",
	  {LinearLayout,
		layout_height="match_parent",
		layout_width="110dp",
		--background=topSelect(),
		onClick=function() 
		ldd:setVisibility(View.VISIBLE)
		ldd2:setVisibility(View.GONE)
		end,
		gravity="center",
		onTouch = function(v, event)
		end,
		{LinearLayout,
		  layout_height="25dp",
		  layout_width="100dp",
		  background=getVerticalBG({0xFF000000,0xFF000000},40),
		  
		}
	  }
	},
	{FrameLayout,
	  layout_width="wrap_content",
	  layout_height="match_parent",
	  background=getCorner({0xffffffff,0xffffffff},15,0,0xff232323,45,0,0,0),
	  {FrameLayout,
		layout_gravity="left|center",
		background=getVerticalBG({0xffE6E6E6,0xffE6E6E6},90),
		layout_width = "20dp",
		layout_height = "20dp",
		layout_marginLeft = "9dp",
		onClick = 隐藏,
		onTouch = hanshu,
		{LinearLayout,
		  layout_height="2dp",
		  layout_width="10dp",
		  layout_gravity="center",
		  background=getVerticalBG({0xff2c2c2c,0xff2c2c2c},45),
		},
		{LinearLayout,
		  layout_height="10dp",
		  layout_width="2dp",
		  id="xyc",
		  layout_gravity="center",
		  visibility="gone",
		  background=getVerticalBG({0xff2c2c2c,0xff2c2c2c},45),
		}
	  },
	  {
		ImageView,
		padding = "5dp",
		src = getRes("heic"),
		layout_gravity="left|center",
		layout_marginLeft = "40dp",
		background=getVerticalBG({0xffE6E6E6,0xffE6E6E6},90),
		layout_width = "20dp",
		layout_height = "20dp",
		onClick= function()
		  vibra:vibrate(15)
		  if Direction==0 then
		  Direction = 1
		  elseif Direction==1 then
		  Direction=0
		  end
		  gfz=mainLayoutParams.width
		  kfz=mainLayoutParams.height
		  mainLayoutParams.height=gfz
		  mainLayoutParams.width=kfz
		  window:updateViewLayout(floatWindow, mainLayoutParams)
		end,
		onTouch = hanshu,
	  }
	},
	{FrameLayout,
	  layout_width="wrap_content",
	  background=getCorner({0xffffffff,0xffffffff},15,0,0xff232323,0,45,0,0),
	  layout_height="match_parent",
	  layout_gravity="right|center",
	  {
		ImageView,
		padding = "5dp",
		layout_gravity="right|center",
		src = getRes("heix"),
		background=getVerticalBG({0xffE6E6E6,0xffE6E6E6},90),
		layout_width = "20dp",
		layout_height = "20dp",
		layout_marginRight = "9dp",
		layout_marginLeft="0dp",
		onClick = 隐藏,
		onTouch = hanshu,
	  },
	  {
		ImageView,
		padding = "5dp",
		layout_gravity="right|center",
		src = getRes("heis"),
		id = "lockui",
		background=getVerticalBG({0xffE6E6E6,0xffE6E6E6},90),
		layout_width = "20dp",
		layout_height = "20dp",
		layout_marginRight = "40dp",
		layout_marginLeft="0dp",
		onClick = UI缩放,
		onTouch = hanshu,
	  }
	}
  })
  ckou = {
	FrameLayout,
	id = "chuangk",
	layout_width = "match_parent",
	layout_height = "match_parent",
	orientation = "vertical",
	LayoutTransition=layoutTransitions,
	background = getVerticalBG({0xffF2F3F5,0xffF2F3F5},30),
	topbar,
	{
	  LinearLayout,
	  layout_height = "match_parent",
	  layout_width = "match_parent",
	  layout_marginLeft="5dp",
	  layout_marginTop = "40dp",
	  layout_marginRight="5dp",
	  layout_marginBottom = "42dp",
	  ViewList
	},
	{
	  FrameLayout,
	  layout_height = "42dp",
	  layout_width = "match_parent",
	  layout_gravity = "bottom",
	  gravity="bottom_center",

	},{ImageView,
	  layout_width = "160dp",
	  layout_height = "15dp",
	  id="Ldd2",
	  src=getRes(""),
	  layout_gravity="bottom|center",
	   onClick=function() 
	 ldd_:setVisibility(View.VISIBLE)
		ldd2_:setVisibility(View.GONE)
		Ldd2:setVisibility(View.GONE)
	  end,
	  onTouch = suofang,
  background=getVerticalBG({0xffE6E6E6,0xffE6E6E6},90),
	
	},
  }
  ckou = luajava.loadlayout(ckou)
  motion=luajava.loadlayout({FrameLayout,
	id = "motion1",
	layout_width = "match_parent",
	layout_height="match_parent",
	gravity="center",
	
  })
  floatWindow = {
	LinearLayout,
	id = "motion",	
	orientation="vertical",
	layout_height = "match_parent",
	layout_width = "match_parent",
	LayoutTransition=layoutTransition,
	{FrameLayout,
	  layout_width="match_parent",
	  layout_height='match_parent',
	  id="menu",
	  elevation='2dp',
	  LayoutTransition=layoutTransitions,
	  ckou,
	  motion,	 
	  	 	  {FrameLayout,
	id = "layoutldd",
	layout_width = "match_parent",
	layout_height="match_parent",
	gravity="bottom",
	LayoutTransition = layoutTransitiond,
	{
	LinearLayout,
	layout_width = "match_parent",
	layout_height = "wrap_content",
	LayoutTransition = layoutTransitiond,
	{
	LinearLayout,
	id = "ldd2",
	layout_width = "20dp",
	layout_height = "20dp"
	
	},
	{LinearLayout,
	  layout_width = "match_parent",
	  layout_height = "wrap_content",
	  padding="2dp",
	  background = getVerticalBG({0xFF000000,0xFF000000},30),
	  layout_marginTop = "5dp",
	  layout_marginRight = "40dp",
	  layout_marginLeft = "40dp",
	  id="ldd",
	 LayoutTransition = layoutTransitiond,

	  gravity="top_center",
	  onClick=function() 
	 Ldd1:setVisibility(View.VISIBLE)
	  ldd:setVisibility(View.GONE)
	  ldd2:setVisibility(View.VISIBLE)
	  end,
	  LayoutTransition = layoutTransitiond,
	  {LinearLayout,
	layout_height="wrap_content",
	layout_width="match_parent",
	padding="4dp",
	YC.box({
	"音乐演示",
	YC.box({
	"音乐演示",
getwyyv(),

	}),
	YC.box({
	"box3示例",
	YC.switch("开关",function() gg.alert("开") end,function() gg.alert("关") end),
	YC.switch("开关",function() gg.alert("开") end,function() gg.alert("关") end),
	YC.switch("开关",function() gg.alert("开") end,function() gg.alert("关") end),
	YC.switch("开关",function() gg.alert("开") end,function() gg.alert("关") end),
	})
	}),
	  onClick=function() 
	  ldd:setVisibility(View.GONE)
	  ldd2:setVisibility(View.VISIBLE)
	  end,
	  LayoutTransition = layoutTransitiond,
	},
	}
	}
	},
		{LinearLayout,
	id = "layoutldd_",
	layout_width = "match_parent",
	layout_height="match_parent",
	layout_Bottom = "0dp",
	LayoutTransition = layoutTransitiond,
	
	
	{FrameLayout,
	id = "layoutldd_",
	layout_width = "match_parent",
	layout_height="match_parent",
	layout_marginBottom = "0dp",
	gravity="bottom",
	LayoutTransition = layoutTransitiond,
	{
	LinearLayout,
	layout_width = "match_parent",
	layout_height = "wrap_content",
	LayoutTransition = layoutTransitiond,
	{
	LinearLayout,
	id = "ldd2_",
	layout_width = "20dp",
	layout_height = "20dp",
	gravity="bottom",
	},
	{LinearLayout,
	  layout_width = "match_parent",
	  layout_height = "wrap_content",
	  padding="2dp",
	  background = getVerticalBG({0xffE6E6E6,0xffE6E6E6},30),
	  layout_marginRight = "40dp",
	  layout_marginLeft = "40dp",
	  id="ldd_",
	 LayoutTransition = layoutTransitiond,

	  gravity="bottom",
	  onClick=function() 
	 	 Ldd2:setVisibility(View.VISIBLE)
	  ldd_:setVisibility(View.GONE)
	  ldd2_:setVisibility(View.VISIBLE)
	  end,
	  LayoutTransition = layoutTransitiond,
	  
	  {LinearLayout,
	layout_height="wrap_content",
	layout_width="match_parent",
	padding="4dp",
	YC.box({
	"切换界面",
	{
		HorizontalScrollView,
		layout_height = "55dp",
		layout_gravity="center",
		layout_marginLeft="10dp",
		layout_marginRight="10dp",
		layout_width = "match_parent",
		layout_marginBottom = "3dp",
		HorizontalScrollBarEnabled=false,
		cebian,
	
	  },
	  }),
		  
	},
			
			},},},},},
	{LinearLayout,
	  gravity = "center",
	  LayoutTransition=layoutTransitions,
	  {CircleImageView,
		id = "control",
		visibility="gone",
		onClick = 隐藏,
		src = xfcpic,
		layout_width = "45dp",
		layout_height = "45dp",
	  }
	},
  }
  local function invoke()
	mainLayoutParams = getLayoutParams()
	floatWindow = luajava.loadlayout(floatWindow)
	local function invoke2()  
	for k = 1,#stab do
		for i = 1,#sview[k] do
		  _ENV["layoutm"..k]:addView(sview[k][i])
		end
	  end	
	  ldd:setVisibility(View.GONE)
	  mainLayoutParams.height = mubx
	  mainLayoutParams.width = muby
	  window:addView(floatWindow,mainLayoutParams)	  
	end
	local runnable = luajava.getRunnable(invoke2)
	local handler = luajava.getHandler()	
	handler:post(runnable)	
	local isMove
	luajava.runUiThread(function()YoYoImpl:with("FadeIn"):duration(600):playOn(floatWindow)end)
	motion.onTouch = hanshu
	control.onTouch = hanshu
for i=1,#MSwitch do
SwitchColor(luajava.getIdView(MSwitch[i]),topic[1].switch[1],topic[1].switch[2],topic[1].switch[3],topic[1].switch[4])
end
for i=1,#MSeek do
SliderColor(luajava.getIdView(MSeek[i]),topic[1].seek[1],topic[1].seek[2],topic[1].seek[3],topic[1].seek[4],topic[1].seek[5])
end
--slider的color1是活动轨道颜色，color2是禁止轨道颜色，color3是什么thumb颜色
  end
  invoke(swib1,swib2)
  gg.setVisible(false)
  setOnExitListener(function()
	window:removeView(floatWindow)
	tuichu=1
  end)
  huiz()  
  if ylfunc~=nil then ylfunc() end
  if yyfunc~=nil then yyfunc() end
  切换(1)
  while true do
	if tuichu == 1 then break end
	if 音量键 then
	  jianting3(qiehuan)
	end
	gg.sleep(120)
  end
end
function 退出UI()
  tuichu=1
end
function YC.setedit(name,txt)
  txt = tostring(txt)
  luajava.runUiThread(function()
	luajava.getIdValue(_ENV[name]):setText(txt)
  end)
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

buts={}
function YC.button(txt,func,txtc)
  if not txt then txt = "未设置" end
  if not txtc then txtc="#201E1E" end
  local tid="Cbutton"..guid()
  buts[tid]=luajava.loadlayout({
    LinearLayout,
    layout_width="match_parent",
    layout_height = "47dp",
    gravity = "center",
    {
      LinearLayout,
      layout_width = 'match_parent',
      layout_height = "40dp",
      gravity = "center",
      elevation = "2dp",
      layout_marginRight = "4dp",
	  layout_marginLeft = "4dp",
      background = luajava.loadlayout{GradientDrawable,color=0xffffffff,cornerRadius=20},
	  padding="10dp",
	  onClick = function()		
		YC.controlWater(buts[tid],300)
		vibra:vibrate(10)
		luajava.newThread(func):start() end,
	  {
		TextView,
		--id = luajava.newId(tid),
		textColor = txtc,
		text = txt,
		textSize = "13sp",
		layout_height = "wrap_content",
		layout_width = "match_parent",
		layout_weight=1,
		},{ImageView,
		src=getRes("heir"),
		layout_height="14dp",
		layout_gravity = "center",
		layout_width="14dp",

	  }
  }})

  return buts[tid]
end
function getButtonBG()
  local selector = luajava.getStateListDrawable()
  selector:addState({
	android.R.attr.state_pressed
  }, getVerticalBG({0x34000400,0x34000400},17))
  selector:addState({
	-android.R.attr.state_pressed
  }, getVerticalBG({0xFFFFFFFF,0xFFFFFFFF},17))
  return selector
end


MSwitch = {}
function YC.switch(name,func1,func2) 
ID = name..guid()
MSwitch[#MSwitch+1] = ID
Checked = false
if name=="音量键隐藏UI" then 
音量键 = true
Checked = true
end
if name=="摇一摇隐藏UI" then
摇一摇 = true
Checked = true
end
  rest = luajava.loadlayout({
    LinearLayout,
    layout_width="match_parent",
    layout_height = "47dp",
    gravity = "center",
    {
      LinearLayout,
      layout_width = 'match_parent',
      layout_height = "40dp",
      gravity = "center",
      elevation = "2dp",
      layout_marginRight = "4dp",
	  layout_marginLeft = "4dp",
      background = luajava.loadlayout{GradientDrawable,color=0xffffffff,cornerRadius=20},
      {
        TextView,
        gravity = "top",
        text = name,
        textColor = "0xff161616",
        textSize = "13sp",
        layout_weight = 1,
        layout_width = 'fill_parent',
        layout_marginLeft = "10dp",
        layout_marginRight = "20dp",
      },
      {
        MaterialSwitch,
        id = luajava.newId(ID),
        layout_weight = 1,
        checked = Checked,
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
import "android.graphics.Color"
import "android.content.res.ColorStateList"
function SliderColor(id,color1,color2,color3,color4,color5)
  id:setTrackActiveTintList(ColorStateList({{}},{color1}))
  id:setTrackInactiveTintList(ColorStateList({{}},{color2}))
  id:setThumbTintList(ColorStateList({{}},{color3}))
  id:setTickActiveTintList(ColorStateList({{}},{color4}))
  id:setTickInactiveTintList(ColorStateList({{}},{color5}))
end
function SwitchColor(id,color1,color2,color3,color4)
  id:setTrackTintList(ColorStateList({{android.R.attr.state_checked},{}},{color1,color2}))
  id:setThumbTintList(ColorStateList({{android.R.attr.state_checked},{-android.R.attr.state_checked}},{color3,color4}))
end
function RadioButtonColor(id,color1,color2)
id:setButtonTintList(ColorStateList({{}},{color1}))
id:setBackground(activity.resources.getDrawable(activity.obtainStyledAttributes{android.R.attr.selectableItemBackgroundBorderless}.getResourceId(0,0)).setColor(ColorStateList({{}},{color2})))
end
function CheckBoxColor(id,color1,color2)
id:setButtonTintList(ColorStateList({{}},{color1}))
id:setBackground(activity.resources.getDrawable(activity.obtainStyledAttributes{android.R.attr.selectableItemBackgroundBorderless}.getResourceId(0,0)).setColor(ColorStateList({{}},{color2})))
end

function 开关(name,func1,func2,lname)
if func1 == nil then func1 = "" end
if func2 == nil then func2 = "" end
if type(func1) == "function" then
return function()
namers = _ENV[name]
if namers ~= "开" then
_ENV[name] = "开"
func1()
else
_ENV[name] = "关"
func2()
end
end
end
end
MSeek = {}
function YC.seek(name,minx,bian,minn,now)
ID = name..guid()
MSeek[#MSeek+1] = ID
  rest = luajava.loadlayout({
    LinearLayout,
    layout_width="match_parent",
    layout_height = "47dp",
    gravity = "center",
    {
      LinearLayout,
      layout_width = 'match_parent',
      layout_height = "40dp",
      gravity = "center",
      elevation = "2dp",
      layout_marginRight = "4dp",
	  layout_marginLeft = "4dp",
      background = luajava.loadlayout{GradientDrawable,color=0xffffffff,cornerRadius=20},
      {
        TextView,
        gravity = "top",
        text = name,
        textColor = "0xff161616",
        textSize = "13sp",
        layout_weight = 1,
        layout_width = 'fill_parent',
        layout_marginRight = "20dp",
	    layout_marginLeft = "10dp",
      },
      {
			Slider,
			layout_weight = 1,
			trackHeight=70,
			thumbRadius = 40,
			id = luajava.newId(ID),
			layout_marginRight = "4dp",
			layout_width = '300dp',
			layout_height = 'wrap_content',
			value = now,
			valueTo = minx,
			valueFrom = minn,
			thumb = getVerticalBG({0xffffffff,0xffffffff},4,10,0xFF0000),
			stepSize = 1,
			tickVisible=false,
			addOnChangeListener = function(slider, value, fromUser) -- 如果执行的功能不是修改器的函数,或者不带阻塞的,可以不用 window:threadWraper 包裹,性能更好(属于UI线程)

				-- 如果不是用户触发的,不处理
				if not fromUser then
					return
				end
	_ENV[bian] = value
			end
		}
	}
	})

return rest
end
function YC.check(cklist)
if #cklist==0 then return nil end
local rest = {
	LinearLayout,
	layout_width = 'match_parent',
	layout_height = "wrap_content",
	gravity = "center",
	orientation="vertical",

}

for i = 1, #cklist,2 do
local tempTable = {LinearLayout,
	layout_width = 'match_parent',
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
rstt = YC.intcheck(name,func1,func2)
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
function YC.intcheck(name,func1,func2,size)
nid = name..guid()
lname=name
local func = 开关(nid,func1,func2,lname)
if not name then name = "未设置" end
ID = name..guid()
local rest = {
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
		layout_width = 'fill_parent',
		layout_height = "wrap_content",
		gravity = "center_vertical",
	{
	CheckBox,
	id = luajava.newId(ID),
	layout_height = "32dp",
	layout_width = "32dp",
	onClick=function() 
	luajava.newThread(function() 
	pcall(func)
	end):start() end
	},
	{
	TextView,
	text=name,
	textSize = "13sp",
	textColor="0xff161616",
	layout_width = "match_parent",
	--layout_weight=1,
	}
		}
}

return rest
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
boxes = {} boxpic = {}



function YC.box(views)
local tid = "box"..guid ()
local ttid = tid.."6"
local t1id = guid ()
kgid = views[1].."关"
id = views[1].."id"
local func = 开关(views[1],func1,func2)
ID = views[1].."id"..guid()
boxpic[tid] = luajava.loadlayout {
	MaterialSwitch,
	id = luajava.newId(ID),
    layout_width = 'match_parent',
    layout_height = 'wrap_content',
	onClick = function() visi2 (tid , ttid)  end
}
MSwitch[#MSwitch+1] = ID
firadio = {
    LinearLayout,
    layout_width="match_parent",
    layout_height = "wrap_content" ,
    gravity = "center",
    orientation = "vertical",
    background = luajava.loadlayout{GradientDrawable,color=0xffffffff,cornerRadius=20},
    LayoutTransition=layoutTransition
}
if type (views [1]) == "string" or type (views [1]) == "number" then
firadio [# firadio + 1] = {
      LinearLayout,
      layout_width = 'match_parent',
      layout_height = "40dp",
      gravity = "center",
      elevation = "2dp",
      layout_marginRight = "4dp",
	  layout_marginLeft = "4dp",
	gravity = "center_vertical",
	LayoutTransition=layoutTransition,
	{
	LinearLayout ,
	layout_width = 'fill_parent' ,
	layout_height = "40dp",
	gravity = "center_vertical" ,	
	--onClick = function () visi2 (tid , ttid) end,
	--background = getButtonBG(),
	{
		TextView , text = views [1] ,
		textSize = "13sp" ,
		layout_marginLeft = "15dp" ,
		layout_width = "match_parent" ,
		layout_weight=1,
		textColor = "0xff161616" ,
		gravity = "left" ,
	},{
		LinearLayout ,
		padding={"0dp","0dp","0dp","0dp"},
		layout_width = "60dp" ,
		layout_height = "47dp" ,
		gravity = "center",
		--background = getHorizontalBG({0xffe9e9e9,0xffe9e9e9},25),
		boxpic[tid],
	}
} 
}else
	gg.alert ("YC.box的table内第一个元素必须是string") os.exit ()
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
      background = luajava.loadlayout{GradientDrawable,color=0xffffffff,cornerRadius=20},
      firadio
      }
      })
return _ENV [t1id]
end


function YC.check2(name,func1,func2)
local func = 开关(name,func1,func2)
ID = name..guid()
if not name then name = "未设置" end
rest = luajava.loadlayout({
	LinearLayout,
	layout_width = 'match_parent',
	layout_hight = "fill_parent",
	{
		LinearLayout,
		layout_width = 'fill_parent',
		layout_hight = "fill_parent",
		layout_marginTop = "5dp",
		layout_marginBottom = "5dp",
		layout_marginLeft = "10dp",
		layout_marginRight = "10dp",
		gravity = "center_vertical",
		{
			CheckBox,
			text = name,
			id = luajava.newId(ID),
			textColor = "0xff161616",
			--gravity = "top",
			layout_hight = "10dp",
--id=luajava.newId(tid),
			onCheckedChange = function(Switch,var2,var3)
			if var2 == true then var2 = "开" else var2 = "关" end
			luajava.newThread(function() func() end):start()
			end,

		}
		}
})

return rest
end

function 开关(name,func1,func2,lname)
if func1 == nil then func1 = "" end
if func2 == nil then func2 = "" end
if type(func1) == "function" then
return function()
namers = _ENV[name]
if namers ~= "开" then
_ENV[name] = "开"
func1()
else
_ENV[name] = "关"
func2()
end
end
end
end

nowbg=1
function changetopic()
	luajava.runUiThread(function()
	if nowbg<#topic then
		nowbg=nowbg+1
	else
		nowbg=1
	end
	for i=1,#MSwitch do
SwitchColor(luajava.getIdView(MSwitch[i]),topic[nowbg].switch[1],topic[nowbg].switch[2],topic[nowbg].switch[3],topic[nowbg].switch[4])
end
for i=1,#MSeek do
SliderColor(luajava.getIdView(MSeek[i]),topic[nowbg].seek[1],topic[nowbg].seek[2],topic[nowbg].seek[3],topic[nowbg].seek[4],topic[nowbg].seek[5])
end
	YoYoImpl:with("FadeIn"):duration(600):playOn(floatWindow)
	end)
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
				textColor = "#0062ff",
				layout_marginBottom = "0dp",
				text = musname,
				layout_hight = "10dp",
				layout_width = "match_parent",
				gravity = "center"

			},
			{
				TextView,
				layout_marginTop = "0dp",
				textColor = "#000000",
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
	textColor="#0062ff",
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
	textColor="#000000",
}
jiaz = {
	TextView,
	text = "正在加载歌曲资源...",
	visibility = "gone",
	id = luajava.newId("加载"),
	textSize = "15sp",
	gravity = "center",
	textColor="#000000",
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
					textColor="#000000",
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

function huiz()
end
muby=830
--初始宽度
mubx=1200
--初始高度
stab = {
  "防封",
  "功能",
  "美化",
  "音乐",
  "设置",
  "其他"
}


topic = {
	{
		switch={
	0xff0062FF,0x28FFFFFF,--轨道(开,关)
	0xffE4E4E4,0xFF000000--thumb(开,关)
		},
		seek={
	0xff0062FF,0x28FFFFFF,
	0xFF000000,0xaa44354280,0xff354280
	--活动轨道,禁止轨道,thumb
		}
	},
	{
		switch={
	0xFF00FFFF,0x28FFFFFF,
	0xffE4E4E4,0xFF000000
		},
		seek={
	0xFF00FFFF,0x28FFFFFF,
	0xFF000000,0xaa44354280,0xff354280
		}
	},
	{
		switch={
	0xFFFF97FF,0x28FFFFFF,
	0xffE4E4E4,0xFF000000
		},
		seek={
	0xFFFF97FF,0x28FFFFFF,
	0xFF000000,0xaa44354280,0xff354280
		}
	},
	{
		switch={
	0xff4e5b92,0x28FFFFFF,--轨道(开,关)
     0xffE4E4E4,0xFF000000--thumb(开,关)
		},
		seek={
	0xff4e5b92,0x28FFFFFF,
		0xFF000000,0xaa44354280,0xff354280
	--活动轨道,禁止轨道,thumb
		}
	},
}
颜色="0xffD0BCFF"

xfcpic="/sdcard/余词/图片/arlogo"




YC.menu(
{
  {
	YC.button("变换主题",function()
	changetopic()
	end),
	YC.button("按钮测试",function() gg.alert("余词牛逼") 
	print("h",mainLayoutParams.height)
	print("w",mainLayoutParams.width)
	end),
	YC.button("6",function() gg.alert("6") end),
	YC.switch(
	'音量键隐藏UI',
	function()
	  音量键=true
	end,
	function()
	  音量键=false
	end),
	YC.switch(
	'摇一摇隐藏UI',
	function()
	  摇一摇=true
	end,
	function()
	  摇一摇=false
	end),
	YC.seek("测试",10,"test",1,2),
	YC.button("按钮测试",function() gg.alert(test) end),
	}, {
	YC.switch("测试2",function() gg.alert("开") end,function() gg.alert("关") end),
	YC.switch("开关",function() gg.alert("开") end,function() gg.alert("关") end),
	}, {
	YC.switch("测试",function() 
baseWindow=require 'floatingWindowManager2'
context = baseWindow:getContext()
view={
	LinearLayout,
}
local dialogBuilder = MaterialAlertDialogBuilder(context)
:setTitle('MaterialAlertDialogBuilder')
:setMessage("显示内容")
:setView(luajava.loadlayout(view))
:setPositiveButton('确定')
luajava.showAlert(dialogBuilder)
	end,function() end),
			YC.check({
				{"功能名称",
				function()

				gg.toast("opened")
				end,
				function()
	
				gg.toast("close")
				end
				},    {"功能名称",
				function()

				gg.toast("opened")
				end,
				function()
	
				gg.toast("close")
				end
				},    {"功能名称",
				function()

				gg.toast("opened")
				end,
				function()
	
				gg.toast("close")
				end
				},    {"功能名称",
				function()

				gg.toast("opened")
				end,
				function()
	
				gg.toast("close")
				end
				},    {"功能名称",
				function()

				gg.toast("opened")
				end,
				function()
	
				gg.toast("close")
				end
				},    {"功能名称",
				function()

				gg.toast("opened")
				end,
				function()
	
				gg.toast("close")
				end
				},    {"功能名称",
				function()

				gg.toast("opened")
				end,
				function()
	
				gg.toast("close")
				end
				},    {"功能名称",
				function()

				gg.toast("opened")
				end,
				function()
	
				gg.toast("close")
				end
				},    {"功能名称",
				function()

				gg.toast("opened")
				end,
				function()
	
				gg.toast("close")
				end
				},    {"功能名称",
				function()

				gg.toast("opened")
				end,
				function()
	
				gg.toast("close")
				end
				},    {"功能名称",
				function()

				gg.toast("opened")
				end,
				function()
	
				gg.toast("close")
				end
				},    {"功能名称",
				function()

				gg.toast("opened")
				end,
				function()
	
				gg.toast("close")
				end
				},    {"功能名称",
				function()

				gg.toast("opened")
				end,
				function()
	
				gg.toast("close")
				end
				},    {"功能名称",
				function()

				gg.toast("opened")
				end,
				function()
	
				gg.toast("close")
				end
				},    {"功能名称",
				function()

				gg.toast("opened")
				end,
				function()
	
				gg.toast("close")
				end
				},    {"功能名称",
				function()

				gg.toast("opened")
				end,
				function()
	
				gg.toast("close")
				end
				},    {"功能名称",
				function()

				gg.toast("opened")
				end,
				function()
	
				gg.toast("close")
				end
				},    {"功能名称",
				function()

				gg.toast("opened")
				end,
				function()
	
				gg.toast("close")
				end
				},    {"功能名称",
				function()

				gg.toast("opened")
				end,
				function()
	
				gg.toast("close")
				end
				},    {"功能名称",
				function()

				gg.toast("opened")
				end,
				function()
	
				gg.toast("close")
				end
				},    {"功能名称",
				function()

				gg.toast("opened")
				end,
				function()
	
				gg.toast("close")
				end
				},    {"功能名称",
				function()

				gg.toast("opened")
				end,
				function()
	
				gg.toast("close")
				end
				},    {"功能名称",
				function()

				gg.toast("opened")
				end,
				function()
	
				gg.toast("close")
				end
				},    {"功能名称",
				function()

				gg.toast("opened")
				end,
				function()
	
				gg.toast("close")
				end
				},    {"功能名称",
				function()

				gg.toast("opened")
				end,
				function()
	
				gg.toast("close")
				end
				},    {"功能名称",
				function()

				gg.toast("opened")
				end,
				function()
	
				gg.toast("close")
				end
				},    {"功能名称",
				function()

				gg.toast("opened")
				end,
				function()
	
				gg.toast("close")
				end
				},    {"功能名称",
				function()

				gg.toast("opened")
				end,
				function()
	
				gg.toast("close")
				end
				},    {"功能名称",
				function()

				gg.toast("opened")
				end,
				function()
	
				gg.toast("close")
				end
				},    {"功能名称",
				function()

				gg.toast("opened")
				end,
				function()
	
				gg.toast("close")
				end
				},    {"功能名称",
				function()

				gg.toast("opened")
				end,
				function()
	
				gg.toast("close")
				end
				},    {"功能名称",
				function()

				gg.toast("opened")
				end,
				function()
	
				gg.toast("close")
				end
				},    {"功能名称",
				function()

				gg.toast("opened")
				end,
				function()
	
				gg.toast("close")
				end
				},    {"功能名称",
				function()

				gg.toast("opened")
				end,
				function()
	
				gg.toast("close")
				end
				},
	}),
		YC.switch("1",function()
Snackbar:make(ckou,"开启",Snackbar.LENGTH_SHORT):setBackgroundTint("0xFF161616"):show()
	end,function() end),
	YC.box({
		"m416",
		YC.check2("冰霜M416",
		function()
		end,
		function()
		end),
		YC.check2("冰霜M416",
		function()
		end,
		function()
		end),
		YC.check2("冰霜M416",
		function()
		end,
		function()
		end),
		YC.check2("冰霜M416",
		function()
		end,
		function()
		end),},
		function()
		end,
		function()
		end),
	}, {
	getwyyv(),
	}, {
	YC.box({
	"box3示例",
	YC.switch("开关",function() gg.alert("开") end,function() gg.alert("关") end),
	YC.switch("开关",function() gg.alert("开") end,function() gg.alert("关") end),
	YC.switch("开关",function() gg.alert("开") end,function() gg.alert("关") end),
	YC.switch("开关",function() gg.alert("开") end,function() gg.alert("关") end),
	}),
	YC.button("退出",
	退出UI),
	},{
	YC.box({
	"box3示例",
	YC.box({
	"box3示例",
	YC.switch("开关",function() gg.alert("开") end,function() gg.alert("关") end),
	YC.switch("开关",function() gg.alert("开") end,function() gg.alert("关") end),
	YC.switch("开关",function() gg.alert("开") end,function() gg.alert("关") end),
	YC.switch("开关",function() gg.alert("开") end,function() gg.alert("关") end),
	}),
	YC.box({
	"box3示例",
	YC.switch("开关",function() gg.alert("开") end,function() gg.alert("关") end),
	YC.switch("开关",function() gg.alert("开") end,function() gg.alert("关") end),
	YC.switch("开关",function() gg.alert("开") end,function() gg.alert("关") end),
	YC.switch("开关",function() gg.alert("开") end,function() gg.alert("关") end),
	})
	})
	},{

	},{

	},{

	},{

	},{

  }
})