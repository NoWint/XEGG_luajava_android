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

-- 浅色模式
baseWindow:lightMode()

-- 深色模式
---baseWindow:darkMode()

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
--------------------------------------------------------------------------------------------云烛制作
Yunzhu={}

function panduan(rec )
	fille , err = io.open(rec )
	if fille == nil then
		return false
	else
		return true
	end
end

function pdcf(lujing )
	rec = "/storage/emulated/0/云烛/配置文件/"..lujing fille , err = io.open(rec )
	if fille == nil then
		return false
	else
		return true
	end
end

sleep = gg.sleep
-- if gg.isHTTPdump()==true and panduan("/storage/emulated/0/云烛/配置文件/vpn.txt") == false then gg.alert("\n抓包？") os.exit() end
--function read(fileName )
--	f = assert(io.open(fileName , 'r' ) ) content = f : read("*all" ) f : close() return content
--end

function wtcf(lujing , neirong )
	write("/storage/emulated/0/云烛/配置文件/"..lujing , neirong )
end

function rdcf(lujing )
	return read("/storage/emulated/0/云烛/配置文件/"..lujing )
end

function checkimg(tmp )

	if panduan("/sdcard/云烛/图片/"..tmp ) ~= true then
		gg.toast("正在下载资源"..tmp.."\n请耐心等待" )
		download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..tmp , "/sdcard/云烛/图片/"..tmp )
	end
end


Yunzhu = { }
local Yunzhu = Yunzhu
local android = import('android.*' )
function write(fileName , content )
	-- f = assert( io.open( fileName, 'w'))   f:write( content )     f:close()
	if file.write(fileName , content ) == false then
		gg.alert("请给框架和修改器 文件储存权限\n否则无法正常运行" ) os.exit()
	end
end

function panduan(rec )
	fille , err = io.open(rec )
	if fille == nil then
		return false
	else
		return true
	end
end

function pdcf(lujing )
	rec = "/sdcard/云烛/配置文件/"..lujing fille , err = io.open(rec )
	if fille == nil then
		return false
	else
		return true
	end
end

sleep = gg.sleep
-- if gg.isHTTPdump()==true and panduan("/sdcard/云烛/配置文件/vpn.txt") == false then gg.alert("\n抓包？") os.exit() end
--function read(fileName )
--	f = assert(io.open(fileName , 'r' ) ) content = f : read("*all" ) f : close() return content
--end

function wtcf(lujing , neirong )
	write("/sdcard/云烛/配置文件/"..lujing , neirong )
end

function rdcf(lujing )
	return read("/sdcard/云烛/配置文件/"..lujing )
end

function pmusic(x )
	if audiokg == "开" then
		tmp1 = 0 gg.playMusic(x ) tmp1 = 1
	end
end

if pdcf("audio" ) ~= true then
	wtcf("audio" , "开" )
end
audiokg = rdcf("audio" )
function camusic(ress )
	tmp1 = 0
	if audiokg == "开" then
		if panduan("/sdcard/云烛/音频/"..ress ) == true then
			pmusic("/sdcard/云烛/音频/"..ress )
			tmp1 = 1
		else
			download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..ress , "/sdcard/云烛/音频/"..ress )
			pmusic("/sdcard/云烛/音频/"..ress )
			tmp1 = 1
		end
	end
end

function checkimg(tmp )

	if panduan("/sdcard/云烛/图片/"..tmp ) ~= true then
		gg.toast("正在下载资源"..tmp.."\n请耐心等待" )
		download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..tmp , "/sdcard/云烛/图片/"..tmp )
	end
end

ckimg = {
    "113.css",
    "113ht",
    "arbackg",
	"arlogo" ,
	"arblue" ,
	"sj" ,
	"hsj",
	"arbluex" ,
	"rswitch1" ,
	"rswitchblue" ,
	"checkonblue" ,
	"checkoffblue" ,
}
for i = 1 , # ckimg do
	jindu = i
	checkimg(ckimg [ i ] )
end
local context = app.context
local window = context : getSystemService("window" ) -- 获取窗口管理器
function getLayoutParams()
	LayoutParams = WindowManager.LayoutParams
	layoutParams = luajava.new(LayoutParams )
	if(Build.VERSION.SDK_INT >= 26 ) then
		-- 设置悬浮窗方式
		layoutParams.type = LayoutParams.TYPE_APPLICATION_OVERLAY
	else
		layoutParams.type = LayoutParams.TYPE_PHONE
	end

	layoutParams.format = PixelFormat.RGBA_8888 -- 设置背景
	layoutParams.flags = LayoutParams.FLAG_NOT_FOCUSABLE
	layoutParams.gravity = Gravity.TOP | Gravity.LEFT -- 重力设置
	layoutParams.width = LayoutParams.WRAP_CONTENT -- 布局宽度
	layoutParams.height = LayoutParams.WRAP_CONTENT -- 布局高度

	return layoutParams
end
Yunzhu.controlRotation2 = function(control, time)
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
Yunzhu.controlRotation3 = function(control, time,jd1,jd2)
    luajava.runUiThread(function()
        import "android.view.animation.Animation"
        import "android.animation.ObjectAnimator"
        xuanzhuandonghua = ObjectAnimator:ofFloat(control, "rotation", {
            jd1, jd2  
        })
        xuanzhuandonghua:setRepeatCount(0)
        xuanzhuandonghua:setRepeatMode(Animation.RESTART)
        xuanzhuandonghua:setDuration(time)
        xuanzhuandonghua:start()
    end)
end
slctb = luajava.loadlayout {
	GradientDrawable ,
	color = "#00000000" ,
	cornerRadius = 0
}
jianbian6 = luajava.new(GradientDrawable)
jianbian6:setCornerRadius(10)
jianbian6:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbian6:setColors({0xff4F378B,0xff4F378B})--侧边背景颜色
jianbian6:setStroke(0.2,"0xddffffff")--边框宽度和颜色
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
Yunzhu.controlWater = function(control,time)
	luajava.runUiThread(function()
  import "android.animation.ObjectAnimator"
  ObjectAnimator():ofFloat(control,"scaleX",{1, 0.8, 0.9, 1}):setDuration(time):start()
  ObjectAnimator():ofFloat(control,"scaleY",{1,0.8,0.9,1}):setDuration(time):start()
end) end
Yunzhu.controlSmall = function(control,time)
	luajava.runUiThread(function()
  import "android.animation.ObjectAnimator"
  ObjectAnimator():ofFloat(control,"scaleX",{1, 0.7, 0.4, 0}):setDuration(time):start()
  ObjectAnimator():ofFloat(control,"scaleY",{1, 0.7, 0.4, 0}):setDuration(time):start()
end) end
Yunzhu.controlBig = function(control,time)
	luajava.runUiThread(function()
  import "android.animation.ObjectAnimator"
  ObjectAnimator():ofFloat(control,"scaleX",{0, 0.4, 0.7, 1}):setDuration(time):start()
  ObjectAnimator():ofFloat(control,"scaleY",{0, 0.4, 0.7, 1}):setDuration(time):start()
end) end
Yunzhu.controlWater2 = function ( control , time )
	luajava.runUiThread ( function ( )
			import "android.animation.ObjectAnimator"
			ObjectAnimator ( ) : ofFloat ( control , "scaleX" , { 1 , 1.1 , 0.9 , 1 } ) : setDuration ( time ) : start ( )
			ObjectAnimator ( ) : ofFloat ( control , "scaleY" , { 1 , 0.9 , 1.1 , 1 } ) : setDuration ( time ) : start ( )
		end

	)
end

slcta = jianbian6
slctc = luajava.loadlayout {
	GradientDrawable ,
	color = "#11ffffff" ,
	cornerRadius = 30
}
slctd = luajava.loadlayout {
	GradientDrawable ,
	color = "#55ffffff" ,
	cornerRadius = 30
}
slcte = luajava.loadlayout {
	GradientDrawable ,
	color = "#11ffffff" ,
	cornerRadius = 30
}
slctf = luajava.loadlayout {
	GradientDrawable ,
	color = "#dd000000" ,
	cornerRadius = 30
}
function getSelector3()
	selector = luajava.getStateListDrawable()
	selector : addState({
			android.R.attr.state_pressed
		} , slcte ) -- 点击时候的背景
	selector : addState({
			- android.R.attr.state_pressed
		} , slctf ) -- 没点击的背景
	return selector
end

function getSelector4()
	selector = luajava.getStateListDrawable()
	selector : addState({
			android.R.attr.state_checked
		} , slcte ) -- 点击时候的背景
	selector : addState({
			- android.R.attr.state_checked
		} , slctf ) -- 没点击的背景
	return selector
end

function getSelector()
	selector = luajava.getStateListDrawable()
	selector : addState({
			android.R.attr.state_pressed
		} , slcta ) -- 点击时候的背景
	selector : addState({
			- android.R.attr.state_pressed
		} , slctb ) -- 没点击的背景
	return selector
end

function getSelector2()
	selector = luajava.getStateListDrawable()
	selector : addState({
			android.R.attr.state_pressed
		} , slctd ) -- 点击时候的背景
	selector : addState({
			- android.R.attr.state_pressed
		} , slctc ) -- 没点击的背景
	return selector
end

function getcolor(cl )
	cl [ 1 ] = tonumber(math.ceil(cl [ 1 ] * 2.6 , 0 , 5 ) )

	if cl [ 1 ] > 255 then
		cl [ 1 ] = "0xff"
	else
		cl [ 1 ] = "0x"..string.format("%x" , cl [ 1 ] )
	end
	for i = 1 , 3 do
		cl [ i + 1 ] = string.format("%x" , cl [ i + 1 ] )
		if string.len(cl [ i + 1 ] ) == 1 then
			cl [ i + 1 ] = "0"..cl [ i + 1 ]
		end
	end
	cl = cl [ 1 ]..cl [ 2 ]..cl [ 3 ]..cl [ 4 ]
	return cl
end

function particle()
local webView = luajava.webView(function(webView)
	webView:loadData([[
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <title>冷光YYDS</title>
 
    <style>
      html,
      *{
    /* 初始化 */
    margin: 0;
    padding: 0;
}
body{
    height: 20vw;
    /* 弹性布局 水平+垂直居中 */
    display: flex;
    justify-content: center;
    align-items: center;
    background-color: #f2f3f5;
}
h1{
    /* 文本透明 */
    color: transparent;
    font-size: 18px;
    letter-spacing: 5px;
    /* 渐变背景 */
    background: linear-gradient(to right,#4F378B,#000000,#4F378B);
    /* 裁剪掉文字以外的区域 */
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    background-size: 80%;
    background-repeat: repeat;
    background-position: center;
    /* 执行动画：动画名 时长 线性 无线播放 */
    animation: move 4s linear infinite;
    position:absolute;
    top:10px
}
p{
  color: white;
  font-size: 6px;
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
    <h1>TINY<br>  <p></p></h1>
    

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
function getrgb(cl )
	if string.sub(cl , 1 , 1 ) == "#" then
		cl = "0x"..string.sub(cl , 2 , -1 )
	end
	cl = {
		tonumber(string.sub(cl , 0 , 4 ) ) , tonumber("0x"..string.sub(cl , 5 , 6 ) ) , tonumber("0x"..string.sub(cl , 7 , 8 ) ) }
	return cl
end

jianbian = luajava.new(GradientDrawable )
jianbian : setCornerRadius(30 )
jianbian : setGradientType(GradientDrawable.LINEAR_GRADIENT )
local isswitch
YoYoImpl = luajava.getYoYoImpl()
Yunzhu.menu = function(stxt , sview )
	if # sview < # stab then
		gg.alert("错误：菜单配置表少于菜单导航栏数量" )
		return false
	end
	isswitch = true
	cebian = {
		LinearLayout ,
		id = "侧边" ,
		visibility = "gone" ,
		layout_height = "wrap_content" ,
		layout_width = "54dp" ,
		padding = "2dp" ,
		orientation = "vertical" ,
	}
	for i = 1 , # stab do
		_ENV["jm"..i]=luajava.loadlayout({
			LinearLayout ,
			--id = "jm"..i ,
			layout_height = "48dp" ,
			layout_width = "48dp" ,
			onClick = function()
				切换(i )
				Yunzhu.controlFlip(_ENV["jm"..i],800)
			end
			,
			gravity = "center" ,
			{
				TextView ,
				id = "jm"..i.."tu" ,
				text = stab [ i ] ,
				gravity = "center" ,
				layout_height = "wrap_content" ,
				layout_width = "wrap_content" ,

			} })
		cebian [ # cebian + 1 ] = _ENV["jm"..i]
	end
	cebian = luajava.loadlayout(cebian )
	for i = 1 , # stab do
		_ENV [ "layout"..i ] = luajava.loadlayout({
				ScrollView ,
				fillViewport = "true" ,
				id = "layout"..i ,
				visibility = "gone" ,
				layout_width = "250dp" ,
				layout_height = "wrap_content" ,
				orientation = "horizontal" ,
				{
					LinearLayout ,
					id = "layoutm"..i ,
					gravity = "top" ,
					padding = "8dp" ,
					layout_width = 'fill_parent' ,
					layout_height = "wrap_content" ,
					orientation = "vertical" ,
				}
			} )
	end
	title = luajava.loadlayout({
			LinearLayout ,
			id = "titl" ,
			visibility = "gone" ,
			layout_width = "wrap_content" ,
			layout_height = "55dp" ,
			gravity = "center" ,
			{
				LinearLayout ,
				layout_marginLeft = "60dp" ,
				layout_marginTop = "-1dp" ,
				layout_width = "82dp" ,
				gravity = "center" ,
				orientation="vertical",
				{LinearLayout,
id="webv_",
layout_height="fill_parent",
layout_width="fill_parent",
gravity="center",
layout_marginTop = "-1dp" ,
},
				{TextView,
				text = stxt ,
				gravity = "center" ,
				layout_marginTop = "-1dp" ,
				textSize = "10sp" ,
				} ,
				{TextView,
				text = stxt2 ,
				gravity = "center" ,
				layout_marginTop = "-1dp" ,
				textSize = "10sp" ,
				} ,
				
			}, {
				ImageView ,
				id = "exit" ,
				src = 悬浮窗图片 ,
				layout_width = "20dp" ,
				layout_height = "20dp" ,
				layout_marginTop = "0dp" ,
				layout_marginLeft = "75dp" ,
			} } )
	gnlist = {
		LinearLayout , orientation = "vertical" ,
		title ,
	}
	for i = 1 , # stab do
		gnlist [ # gnlist + 1 ] = _ENV [ "layout"..i ]
	end
	ckou = luajava.loadlayout({
			LinearLayout ,
			id = "chuangk" ,
			visibility = "gone" ,
			layout_width = "match_parent" ,
			layout_height = "match_parent" ,
			orientation = "horizontal" ,
			background = {
				GradientDrawable ,
				color = "#fff2f3f5" ,
				cornerRadius = 10
			} ,
			cebian ,
			gnlist ,
		} )
control1=luajava.loadlayout({
					ImageView ,
					id = "control" ,
					background = 悬浮窗图片 ,----arlogo
					layout_width = "44dp" ,
					layout_height = "44dp" ,
				})
	floatWindow = {
		LinearLayout ,
		id = "motion" ,
		layout_width = "250dp" ,
		orientation = "vertical" ,
		gravity = "center_vertical" ,
		layout_height = "wrap_content" ,
		{
			LinearLayout ,
			layout_width = "match_parent" ,
			layout_height = "48dp" ,
			id = "xfc" ,
			orientation = "horizontal" ,
			-- background = jianbian2,
			gravity = "center_vertical" ,
			{
				LinearLayout ,
				layout_width = "48dp" ,
				layout_height = "48dp" ,
				gravity = "center" , control1 } ,

		} ,
		ckou
	}
	floatWindow = luajava.loadlayout(floatWindow )
    stitle2=particle()
	local function invoke()
		local ok
		local RawX , RawY , x , y
		mainLayoutParams = getLayoutParams()
		-- floatWindow = luajava.loadlayout(floatWindow)
		local function invoke2()
			block('start' )
			for k = 1 , # stab do
				for i = 1 , # sview [ k ] do
					_ENV [ "layoutm"..k ] : addView(sview [ k ] [ i ] )
				end
			end
			mainLayoutParams.x = device.width/4
mainLayoutParams.y = device.height/2
window:addView(floatWindow,mainLayoutParams)
webv_:addView(stitle2)
			
			block('end' )
		end

		local runnable = luajava.getRunnable(invoke2 )
		local handler = luajava.getHandler()
		handler : post(runnable )
		block('join' )
		control.onClick = function()
			隐藏()
		end

		exit.onClick = function()
			隐藏()
		end

		local isMove

		control.onLongClick = function(v )
			if isMove then
				return false
			end
			gg.toast("悬浮窗已退出" )
			window : removeView(floatWindow )
			isswitch = nil
		end

		hanshu = function(v , event )
			local Action = event : getAction()
			if Action == MotionEvent.ACTION_DOWN then
				isMove = false
				RawX = event : getRawX()
				RawY = event : getRawY()
				x = mainLayoutParams.x
				y = mainLayoutParams.y
			elseif Action == MotionEvent.ACTION_MOVE then
				isMove = true
				mainLayoutParams.x = tonumber(x ) +(event : getRawX() - RawX )
				mainLayoutParams.y = tonumber(y ) +(event : getRawY() - RawY )
				window : updateViewLayout(floatWindow , mainLayoutParams )
			end
		end

		motion.onTouch = hanshu
		control.onTouch = hanshu
		exit.onTouch = hanshu
		for i = 1 , # stab do
			_ENV [ "jm"..i ].onTouch = hanshu
		end
	end

	return invoke(swib1 , swib2 )
end

当前ui = 1
function 切换(x )
	当前ui = x
	luajava.runUiThread(function()
			for i = 1 , # stab do
				_ENV [ "jm"..i ] : setBackground(slctb )
				_ENV [ "layout"..i ] : setVisibility(View.GONE )
			end
			_ENV [ "layout"..当前ui ] : setVisibility(View.VISIBLE )
			_ENV [ "jm"..当前ui ] : setBackground(slcta )
			YoYoImpl : with("FadeIn" ) : duration(600 ) : playOn(_ENV [ "layout"..当前ui ] )
		end

	)
end

显示 = 0
beij = luajava.loadlayout({
		GradientDrawable ,
		color = "#00000000" ,
		cornerRadius = 30
	} )
beij2 = luajava.loadlayout({
		GradientDrawable ,
		color = "#00000000" ,
		cornerRadius = 30
	} )
显示=0
function 隐藏()
	luajava.runUiThread(function()
			if tonumber(tostring(cebian : getVisibility() ) ) == 8.0 then
				显示=1
				chuangk : setVisibility(View.VISIBLE )
				cebian : setVisibility(View.VISIBLE )
				xfc : setVisibility(View.GONE )
				mainLayoutParams.flags = LayoutParams.FLAG_NOT_TOUCH_MODAL
				window : updateViewLayout(floatWindow , mainLayoutParams )
				title : setVisibility(View.VISIBLE )
				_ENV [ "layout"..当前ui ] : setVisibility(View.VISIBLE )
				floatWindow : setBackground(beij )
				
				--[[Yunzhu.controlRotation3(layout1,1000,-78,0)
				Yunzhu.controlRotation3(layout2,1000,-78,0)
				Yunzhu.controlRotation3(layout3,1000,-78,0)
				Yunzhu.controlRotation3(layout4,1000,-78,0)
				Yunzhu.controlRotation3(layout5,1000,-78,0)]]
				Yunzhu.controlBig(floatWindow,100)
			else
				显示=0
				mainLayoutParams.flags = LayoutParams.FLAG_NOT_FOCUSABLE
				window : updateViewLayout(floatWindow , mainLayoutParams )
				titl : setVisibility(View.GONE )
				floatWindow : setBackground(beij2 )
				chuangk : setVisibility(View.GONE )
				cebian : setVisibility(View.GONE )
				_ENV [ "layout"..当前ui ] : setVisibility(View.GONE )
				xfc : setVisibility(View.VISIBLE )
				Yunzhu.controlFlip(floatWindow,400)
				
			end
		end

	)
end

function guid()
	seed = {
		'e' , '1' , '2' , '3' , '4' , '5' , '6' , '7' , '8' , '9' , 'a' , 'b' , 'c' , 'd' , 'e' , 'f'
	}
	tb = { }
	for i = 1 , 32 do
		table.insert(tb , seed [ math.random(1 , 16 ) ] )
	end
	sid = table.concat(tb )
	return string.format('%s%s%s%s%s' ,
		string.sub(sid , 1 , 8 ) ,
		string.sub(sid , 10 , 12 ) ,
		string.sub(sid , 21 , 22 ) )
..	string.format('%s%s%s%s%s' ,
		string.sub(sid , 1 , 6 ) ,
		string.sub(sid , 21 , 25 )
	)
end

function Yunzhu.radio(radio )
	firadio = {
		LinearLayout ,
		layout_width = 'fill_parent' ,
		layout_height = "wrap_content" ,
		orientation = "vertical"
	}
	if type(radio [ 1 ] ) == "string" or type(radio [ 1 ] ) == "number" then
		firadio [ # firadio + 1 ] = {
			TextView , text = radio [ 1 ] , textColor = "#000000" ,
			textSize = "16sp" ,
		}
	end
	radios = {
		RadioGroup , background = luajava.loadlayout({
				GradientDrawable ,
				color = "#11000000" ,
				cornerRadius = 30
			} ) , layout_width = 'fill_parent' , layout_height = "wrap_content" ,
	}
	for i = 2 , # radio do
		radios [ # radios + 1 ] = {
			RadioButton ,
			layout_width = 'fill_parent' ,
			text = radio [ i ] [ 1 ] ,
			textColor = "#000000" ,
			textSize = "16sp" ,
			onClick = function()
				luajava.newThread(function()
						radio [ i ] [ 2 ]()
					end

				) : start()
			end

			,
		}
	end
	firadio [ # firadio + 1 ] = radios
	return luajava.loadlayout(firadio )
end

function Yunzhu.button(txt , func )
	if not txt then
		txt = "未设置"
	end
	local tid=guid()..guid()
	_ENV[tid]=luajava.loadlayout (
		{
			LinearLayout ,
			layout_width = 'fill_parent' ,
			layout_hight = "fill_parent" , {
				LinearLayout ,
				layout_width = "fill_parent" ,
				gravity = "center_horizontal" ,
				layout_marginTop = "5dp" ,
				layout_marginBottom = "5dp" ,
				background = luajava.loadlayout {
					GradientDrawable ,
					color = "#ff191A1D" ,
					cornerRadius = 8
				} ,
				onClick = function()
					Yunzhu.controlWater(_ENV[tid],200)
					luajava.newThread(function()
							pcall(func )
						end

					) : start()
				end

				,
				{
					TextView ,
					text = txt ,
					textSize = "20sp" ,
					layout_width = "wrap_content" ,
				} ,
			} } )
	return _ENV[tid]
end

function Yunzhu.text(txt , color , size )
	if not txt then
		txt = "未设置文字"
	end
	if not color then
		color = "#000000"
	end
	if not size then
		size = "18sp"
	end
	return luajava.loadlayout (
		{
			TextView ,
			text = txt ,
			textSize = size ,
			gravity = "center" ,
			textColor = color ,
			layout_width = "fill_parent" ,
		} )
end

function Yunzhu.check(cklist )
	rest = {
		LinearLayout ,
		layout_width = 'match_parent' ,
		layout_height = "wrap_content" ,
		layout_marginTop = "10dp" ,
		gravity = "top" ,
		orientation = "vertical" ,

	}
	if type(cklist [ 1 ] ) == "string" then
		rest [ # rest + 1 ] = {
			TextView ,
			gravity = "left" ,
			text = cklist [ 1 ] ,
			textSize = "16sp" ,
			textColor = "#000000" ,
			layout_width = 'wrap_content' ,
			layout_height = 'wrap_content' ,
			layout_marginLeft = "4dp" ,
			layout_marginRight = "5dp" ,
			layout_marginTop = "0dp" ,
			layout_marginBottom = "0dp" ,
		}
	end

	for i = 2 , # cklist do
		local name = cklist [ i ] [ 1 ]
		local func1 = cklist [ i ] [ 2 ]
		local func2 = cklist [ i ] [ 3 ]
		local nid = cklist [ i ] [ 4 ]
		if type(func1 ) == "table" then
		os.exit()
		end
		if not name then
			name = "未设置"
		end
		nid = name..guid()
		local func = 开关3(nid , func1 , func2 , nid )
		 local tid=nid..guid()
		_ENV[tid] = luajava.loadlayout({
				LinearLayout ,
				layout_width = '250dp' ,
				layout_height = "30dp" ,
				layout_marginTop = "5dp" ,
				layout_marginBottom = "15dp" ,
				layout_marginLeft = "4dp" ,
				layout_marginRight = "10dp" ,
				gravity = "center_vertical" ,
				onClick = function()
					Yunzhu.controlWater(_ENV[tid],200)
					luajava.newThread(function()
							func()
						end

					) : start()
				end

				,
				{
					ImageView ,
					id = luajava.newId(nid ) ,
					layout_width = '20dp' ,
					layout_height = "20dp" ,
					layout_marginLeft = "10dp" ,
					layout_marginRight = "10dp" ,
					background = "/sdcard/云烛/图片/checkoffblue" ,
					ColorFilter= "4F378B",
				} , {
					TextView ,
					gravity = "top" ,
					text = name ,
					textColor = "#000000" ,
					layout_width = 'wrap_content' ,
					layout_height = 'wrap_content' ,
					layout_marginLeft = "4dp" ,
					layout_marginRight = "5dp" ,
				} } )
		rest [ # rest + 1 ] = _ENV[tid]
	end
	return luajava.loadlayout(rest )
end
function Yunzhu.switch(name , func1 , func2 )
	nid = name..guid()
	local func = 开关2(name , func1 , func2 , nid )
	if not name then
		name = "未设置"
	end
	rest = luajava.loadlayout({
			LinearLayout ,
			layout_width = 'fill_parent' ,
			layout_height = "50dp" ,
			layout_marginTop = "2dp" ,
			layout_marginBottom = "2dp" ,
			
			{
				LinearLayout ,
				layout_width = 'fill_parent' ,
				layout_height = "45dp" ,
				gravity = "center_vertical" ,
				elevation='2dp',
				background = luajava.loadlayout {
					GradientDrawable ,
					color = "#ffffffff" ,
					cornerRadius = 8
				} ,
				{
					ImageView ,
					layout_marginLeft = "0dp" ,
				--	background = "/sdcard/云烛/图片/arblue" ,
					layout_height = "0dp" ,
					layout_width = "0dp" ,
					ColorFilter= "4F378B",
				} ,
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
			
		
			} }
		} )
	return rest
end

function 开关(name , func1 , func2 )
	if func1 == nil then
		func1 = ""
	end
	if func2 == nil then
		func2 = ""
	end
	if type(func1 ) == "function" then
		return function()
			namers = _ENV [ name ]
			if namers ~= "开" then
				_ENV [ name ] = "开"
				pcall(func1 )
			else
				_ENV [ name ] = "关"
				pcall(func2 )
			end

		end

	end
end

function 开关2(name , func1 , func2 , nid )
	_ENV [ name ] = "关"
	if func1 == nil then
		func1 = ""
	end
	if func2 == nil then
		func2 = ""
	end
	if type(func1 ) == "function" then
		return function()
			namers = _ENV [ name ]
			if namers ~= "开" then
				luajava.runUiThread(function()
						luajava.getIdValue(nid ) : setBackground(luajava.getBitmapDrawable("/sdcard/云烛/图片/rswitchblue" ) )
					end

				)
				_ENV [ name ] = "开"
				pcall(func1 )
			else
				luajava.runUiThread(function()
						luajava.getIdValue(nid ) : setBackground(luajava.getBitmapDrawable("/sdcard/云烛/图片/rswitch1" ) )
					end

				)
				_ENV [ name ] = "关"
				pcall(func2 )
			end

		end

	end
end

function 开关3(name , func1 , func2 , nid )
	_ENV [ name ] = "关"
	if func1 == nil then
		func1 = ""
	end
	if func2 == nil then
		func2 = ""
	end
	if type(func1 ) == "function" then
		return function()
			namers = _ENV [ name ]
			if namers ~= "开" then
				luajava.runUiThread(function()
						luajava.getIdValue(nid ) : setBackground(luajava.getBitmapDrawable("/sdcard/云烛/图片/checkonblue" ) )
					end

				)
				_ENV [ name ] = "开"
				pcall(func1 )
			else
				luajava.runUiThread(function()
						luajava.getIdValue(nid ) : setBackground(luajava.getBitmapDrawable("/sdcard/云烛/图片/checkoffblue" ) )
					end

				)
				_ENV [ name ] = "关"
				pcall(func2 )
			end

		end

	end
end

jianbian2 = luajava.new(GradientDrawable )
jianbian2 : setCornerRadius(30 )
jianbian2 : setGradientType(GradientDrawable.LINEAR_GRADIENT )
jianbian2 : setColors({
		0xdd20FF9B , 0xdd32A2FF
	} )
function Yunzhu.edit(name , hint )
	if not hint then
		local hint = ""
	end
	_ENV [ name ] = name..guid()
	if not name then
		name = "点击输入文字"
	end
	rest = luajava.loadlayout({
			LinearLayout ,
			layout_width = 'fill_parent' ,
			layout_hight = "fill_parent" ,
			{
				LinearLayout ,
				layout_width = 'fill_parent' ,
				layout_hight = "fill_parent" ,
				layout_marginTop = "5dp" ,
				layout_marginBottom = "5dp" ,
				layout_marginLeft = "0dp" ,
				layout_marginRight = "0dp" ,
				gravity = "center_vertical" ,
				background = luajava.loadlayout {
					GradientDrawable ,
					color = "#ff191A1D" ,
					cornerRadius = 12
				} ,
				{
					EditText ,
					gravity = "top" ,
					hint = hint ,
					id = luajava.newId(_ENV [ name ] ) ,
					layout_width = 'fill' ,
					layout_marginLeft = "10dp" ,
					layout_marginRight = "10dp" ,
				} }
		} )

	return rest
end

function Yunzhu.getedit(name )
	edit = tostring(luajava.getIdValue(_ENV [ name ] ) : getText() )
	return edit
end

function Yunzhu.setedit(name , txt )
	txt = tostring(txt )
	luajava.runUiThread(function()
			luajava.getIdValue(_ENV [ name ] ) : setText(txt )
		end

	)
end

chazhi = { } chajv = { }
function Yunzhu.seek(name , bian , smin , smax , nows )
	_ENV [ bian ] = nows
	smin = tonumber(smin ) smax = tonumber(smax )
	chajv [ bian ] = smax - smin
	chazhi [ bian ] = 1 - smin
	if smin == nil then
		smin = 1 smax = 10
	end
	truesmin = 1
	truesmax = truesmin + chajv [ bian ]
	if not nows then
		nows = smin tnows =(smin - nows )
	else
		tnows =(nows - smin ) + 1
	end
	if _ENV [ bian ] == nil then
		_ENV [ bian ] = nows
	end
	if not name then
		name = "未设置"
	end
	local names = name..guid()
	rest = luajava.loadlayout({
			LinearLayout ,
			layout_width = 'fill_parent' ,
			gravity = "center" ,
			layout_height = "wrap_content" ,
			{
				LinearLayout ,
				layout_width = 'fill_parent' ,

				layout_height = "fill_parent" ,
				layout_marginTop = "5dp" ,
				layout_marginBottom = "5dp" ,
				layout_marginLeft = "0dp" ,
				layout_marginRight = "0dp" ,
				gravity = "center_vertical" ,
				background = luajava.loadlayout {
					GradientDrawable ,
					color = "#ff191A1D" ,
					cornerRadius = 8
				} ,
				{
					TextView ,
					gravity = "top" ,
					text = name..":"..nows ,
					id = luajava.newId(names ) ,
					layout_width = '70dp' ,
					layout_marginLeft = "5dp" ,
					layout_marginRight = "0dp" ,
				} ,
				{
					SeekBar ,
					layout_width = '140dp' ,
					min = truesmin ,
					max = truesmax ,
					progress = tnows ,
					onSeekBarChange = {
						onProgressChanged = function(SeekBar , var2 , var3 )
							if not var3 then
								return
							end
							local resultvar = tonumber(string.sub(var2 , 0 , -3 ) ) - chazhi [ bian ]
							luajava.runUiThread(function()
									luajava.getIdValue(names ) : setText(name..":"..resultvar )
								end

							)
							_ENV [ bian ] = resultvar
						end

					} }
			} } )

	return rest
end

function visi(tid , ttid )
	local tview = luajava.getIdValue(tid )
	local ttview = luajava.getIdValue(ttid )
	if not tview then
		return 0
	end
	if tonumber(tostring(tview : getVisibility() ) ) == 8.0 then
		tview : setVisibility(View.VISIBLE )
		ttview : setBackground(luajava.getBitmapDrawable("/sdcard/云烛/图片/hsj" ) )
	else
		tview : setVisibility(View.GONE )
		ttview : setBackground(luajava.getBitmapDrawable("/sdcard/云烛/图片/sj" ) )
	end
end

function Yunzhu.box(views )
	local tid = "box"..guid()
	local ttid = tid.."6"
	local t1id=guid()
	firadio = {
		LinearLayout ,
		layout_width = 'fill_parent' ,
		layout_height = "wrap_content" ,
		layout_marginTop = "2dp" ,
		layout_marginBottom = "2dp" ,
		orientation = "vertical" ,
		background = luajava.loadlayout {
			GradientDrawable ,
			color = "#0018191C" ,
			cornerRadius = 8
		} ,
	}
	if type(views [ 1 ] ) == "string" or type(views [ 1 ] ) == "number" then
		firadio [ # firadio + 1 ] = {
			LinearLayout ,
			layout_width = 'fill_parent' ,
			layout_height = "50dp" ,
			gravity = "center_vertical" ,
			layout_marginTop = "2dp" ,
			layout_marginBottom = "4dp" ,
			onClick = function()
				Yunzhu.controlWater(_ENV[t1id],200)
				visi(tid , ttid )
			end

			,
			background = luajava.loadlayout {
				GradientDrawable ,
				color = "#ff191A1D" ,
				cornerRadius = 8
			} ,
			{
				ImageView ,
				layout_marginLeft = "10dp" ,
				id = luajava.newId(ttid ) ,
				background = "/sdcard/云烛/图片/sj" ,
				layout_width = "20dp" ,
				layout_height = "20dp" ,
				layout_marginTop = "0dp" ,
			} ,
			{
				TextView , text = views [ 1 ] ,
				textSize = "16sp" ,
				layout_marginLeft = "15dp" ,
				layout_width = "100dp" ,
				textColor = "#000000" ,
				gravity = "left" ,
			} }
	else
		gg.alert("Yunzhu.box第一个参数必须是string" ) os.exit()
	end
	radios = {
		LinearLayout ,
		layout_marginLeft = "0dp" ,
		layout_marginRight = "0dp" ,
		orientation = "vertical" ,
		visibility = "gone" ,
		id = luajava.newId(tid ) ,
		padding = "0dp" ,
		layout_width = 'fill_parent' ,
	}
	for i = 2 , # views do
		radios [ # radios + 1 ] = views [ i ]
	end
	firadio [ # firadio + 1 ] = radios
	_ENV[t1id]=luajava.loadlayout(firadio )
	return _ENV[t1id]
end


function 悬浮窗图片(txt )
	ntxt = string.sub(string.gsub(txt , "/" , "." ) , -10 , -1 )
	if string.find(tostring(txt ) , "http" ) ~= nil then
		if panduan("/sdcard/云烛/图片/"..ntxt ) == false then
			download(txt , "/sdcard/云烛/图片/"..ntxt )
		end
		txt = "/sdcard/云烛/图片/"..ntxt
	end
	luajava.runUiThread(function()
			control : setBackgroundDrawable(luajava.getBitmapDrawable(txt ) )
		end

	) ---例子
end

function tuichu()
	window : removeView(floatWindow )
	luajava.setFloatingWindowHide(false )
	bloc("end" )
end

---你的功能前置放这里↑↑↑下边调用
---⚠️⚠注意事项⚠️：
---尽量少用运行慢的搜索
---UI支持多线程，但gg本身不支持多线程
---所以搜索慢了又开启下一个搜索容易被打断
---导致功能无效
---结尾bloc不要动
-- 控件类型：
-- Yunzhu.box 套娃
-- Yunzhu.switch 开关
-- Yunzhu.seek 拉条
-- Yunzhu.button 按钮
-- Yunzhu.text 文字
-- Yunzhu.radio 单选
-- Yunzhu.check勾选
-- Yunzhu.edit 输入框
-- (调用TL.getedit 获取输入框内容)
-- (调用TL.setwdit 设置输入框内容)
-- 以上控件在下边全部有对应示例
-- 写的乱 自己看
悬浮窗图片="https://from-phone-20230707-1316542758.cos.ap-nanjing.myqcloud.com/892aef1b6e895b96.jpg"

stab = {
	"主页" ,
	"防封" ,
	"刷号" ,
	"竞赛" ,
	"关于"
}
stxt="群号*********"
stxt2="@ARx32_4.12.0"

Yunzhu.menu(stxt,
{
{---第一页
Yunzhu.text("欢迎使用" , nil , "20sp" ) ,
Yunzhu.text("项目支持：九游" , nil , "15sp" ) ,
Yunzhu.text("项目负责人：清风" , nil , "15sp" ) ,
Yunzhu.text("风雪压我两三年  我心早已无怨言" , nil , "15sp" ) ,
			Yunzhu.button ("选择进程" ,
				function()
				string.toMusic ("请选择地铁跑酷进程")
				gg.setProcessX()
				end),
				Yunzhu.button("加入我们",
function()

end),
} , {--------------以下是列表二
Yunzhu.radio({"防封",--栏目名
{
"防闪[登录界面]",
function()        
end
				},
{
					"防环境[登录界面]",
					function()
		end
						},
{
					"防行为[大厅]",
					function()
		end
						},
{
					"防断网[大厅  尽量别捡能量]",
					function()
	
					end				
},
}),
} , {--------------以下是列表三
Yunzhu.box({"全解项目" ,
Yunzhu.switch("人物全解",
function()
end),
Yunzhu.switch("滑板全解",
function()
end),
Yunzhu.switch("背饰全解",
function()
end),
Yunzhu.switch("相框全解",
function()
end),
}),
Yunzhu.box({"数据修改" ,
Yunzhu.switch("金币",
function()
end),
Yunzhu.switch("钥匙",
function()
end),
Yunzhu.switch("宝物钥匙",
function()
end),
}),
Yunzhu.box({"其他项目" ,
Yunzhu.switch("内购[跑酷币无效]",
function()
end),
Yunzhu.switch("奖励替换奖杯",
function()
end),
}),
} , {--------------以下是列表四
Yunzhu.box({"道具赛" ,
Yunzhu.switch("无宝物聚能[最好隔七秒以上开板]",
function()
end),
Yunzhu.switch("无视道具",
function()
end),
}),
Yunzhu.box({"无尽赛[和分数赛通用]" ,
Yunzhu.switch("无限跳跃",
function()
end),
Yunzhu.switch("滑板跳高",
function()
end),
Yunzhu.switch("无视障碍",
function()

end),
}),
} , {--------------以下是列表五
Yunzhu.text("TINY正在守护您的账号安全" , nil , "15sp" ) ,
			Yunzhu.button ("退出插件" ,
				function ()
				tuichu ()
				end),
		}
	})
function proo()
Yunzhu.controlRotation2(control1,3000)
end
luajava.newThread(function()--更新逻辑
	while true do
		gg.sleep(3000)
		if 显示==0 then
			proo()
		end
	end
end):start()
jm1 : setBackground(slcta )
gg.setVisible(false )
luajava.setFloatingWindowHide(true )
---bloc不要动 动了脚本功能会失效
bloc = luajava.getBlock()
bloc("join" )