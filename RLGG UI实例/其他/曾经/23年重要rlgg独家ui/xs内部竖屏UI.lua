F={ }
F.controlFlip2 = function(control,time)
	luajava.runUiThread(function()
  import "android.view.animation.Animation"
  import "android.animation.ObjectAnimator"
  xuanzhuandonghua = ObjectAnimator:ofFloat(control, "rotationY", {0, 360})
  xuanzhuandonghua:setRepeatCount(0)
  xuanzhuandonghua:setRepeatMode(Animation.REVERSE)
  xuanzhuandonghua:setDuration(time)
  xuanzhuandonghua:start()
end)end
F.controlRotation2 = function(control, time)
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
F.controlWater = function(control,time)
	luajava.runUiThread(function()
  import "android.animation.ObjectAnimator"
  ObjectAnimator():ofFloat(control,"scaleX",{1, 0.8, 0.9, 1}):setDuration(time):start()
  ObjectAnimator():ofFloat(control,"scaleY",{1,0.8,0.9,1}):setDuration(time):start()
end) end
F.controlSmall = function(control,time)
	luajava.runUiThread(function()
  import "android.animation.ObjectAnimator"
  ObjectAnimator():ofFloat(control,"scaleX",{1, 0.7, 0.4, 0}):setDuration(time):start()
  ObjectAnimator():ofFloat(control,"scaleY",{1, 0.7, 0.4, 0}):setDuration(time):start()
end) end
F.controlBig = function(control,time)
	luajava.runUiThread(function()
  import "android.animation.ObjectAnimator"
  ObjectAnimator():ofFloat(control,"scaleX",{0, 0.4, 0.7, 1}):setDuration(time):start()
  ObjectAnimator():ofFloat(control,"scaleY",{0, 0.4, 0.7, 1}):setDuration(time):start()
end) end
F.controlFlip = function(control,time)
	luajava.runUiThread(function()
  import "android.view.animation.Animation"
  import "android.animation.ObjectAnimator"
  xuanzhuandonghua = ObjectAnimator:ofFloat(control, "rotationY", {0, 360})
  xuanzhuandonghua:setRepeatCount(0)
  xuanzhuandonghua:setRepeatMode(Animation.REVERSE)
  xuanzhuandonghua:setDuration(time)
  xuanzhuandonghua:start()
end) end
WS = {}
local WS = WS
local android = import('android.*')
function write(fileName, content)
if file.write(fileName, content) == false then gg.alert("请给框架和修改器 文件储存权限\n否则无法正常运行") os.exit() end
end
function panduan(rec) fille,err = io.open(rec) if fille == nil then return false else return true end end
function 获取图片(txt)
ntxt = string.sub(string.gsub(txt,"/","-"),-10,-1)
if string.find(tostring(txt),"http") ~= nil then
if panduan("/sdcard/冷/图片/"..ntxt) == false then
download(txt,"/sdcard/冷/图片/"..ntxt)
end
txt = "/sdcard/冷/图片/"..ntxt
end
return luajava.getBitmapDrawable(txt)
end
function panduan(rec) fille,err = io.open(rec) if fille == nil then return false else return true end end
function pdcf(lujing) rec = "/sdcard/冷/配置文件/"..lujing fille,err = io.open(rec) if fille == nil then return false else return true end end
sleep = gg.sleep
--if gg.isHTTPdump()==true and panduan("/sdcard/冷/配置文件/vpn.txt") == false then gg.alert("\n抓包？") os.exit() end
function read(fileName) f = assert(io.open(fileName, 'r')) content = f:read("*all") f:close() return content end
function wtcf(lujing,neirong)
write("/sdcard/冷/配置文件/"..lujing,neirong)
end
function rdcf(lujing)
return read("/sdcard/冷/配置文件/"..lujing)
end
开 = "开" 关 = "关"
function checkimg(tmp)
if panduan("/sdcard/冷/图片/"..tmp) ~= true then
gg.toast("正在下载资源"..tmp.."\n请耐心等待")
download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..tmp,"/sdcard/冷/图片/"..tmp)
else
	if file.length("/sdcard/冷/图片/"..tmp) <= 1 then
gg.toast("正在下载资源"..tmp.."\n请耐心等待")
download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..tmp,"/sdcard/冷/图片/"..tmp)
end
end
end
ckimg = {
    "sj",
    "hsj",
	"quarksun",
	"quarkmoon",
	"quarkcheckon",
	"quarkcheckoff",
	"rw1",
}
for i = 1,#ckimg do
jindu = i
checkimg(ckimg[i])
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

function getseekgra()
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(15)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({0x66000000,0x66000000})
jianbians:setStroke(2,"0xdd000000")--边框宽度和颜色

return jianbians
end


function getseekgra1()
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(15)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({0x66000000,0x66000000})
jianbians:setStroke(2,"0x44000000")--边框宽度和颜色

return jianbians
end

function getseekgra2()
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(12)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({0xaaa000000,0xaaa000000})
jianbians:setStroke(2,"0xdd000000")--边框宽度和颜色

return jianbians
end

function getseekgra3()
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(12)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({0xbbbfff,0xbbbfff})
jianbians:setStroke(3,"0xdd000000")--边框宽度和颜色

return jianbians
end

function getShape8()
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(10)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({
	0xff000000,0xddffffff,
})
jianbians:setOrientation(GradientDrawable.Orientation.BL_TR)
return jianbians
end

function checkbg()
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(45)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({0x0035BE45,0x0035BE45})
jianbians:setStroke(8,0xff856ce1)--边框宽度和颜色
return jianbians
end

function checkbga()
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(45)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({0xffffffff,0xffffffff})
jianbians:setStroke(4,0x00ffffff)--边框宽度和颜色
return jianbians
end

function checkbg1()
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(45)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({0xff856ce1,0xff856ce1})
jianbians:setStroke(7,0xff856ce1)--边框宽度和颜色
return jianbians
end

function checkbg2()
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(45)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({0xff2f88c4,0xff2f88c4})
jianbians:setStroke(7,0xff2f88c4)--边框宽度和颜色
return jianbians
end
slctb=getseekgra1()
slcta = luajava.loadlayout({
	GradientDrawable,
	color = "#000000",
	cornerRadius = 18
})
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
	cornerRadius = 30,
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
    background-color: #hsjjsb;
}
h1{
    /* 文本透明 */
    color: transparent;
    font-size: 20px;
    /* 渐变背景 */
    background-image: -webkit-linear-gradient(92deg, #f35626, #feab3a);
    /* 裁剪掉文字以外的区域 */
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    background-size: 80%;
    background-repeat: repeat;
    background-position: center;
    /* 执行动画：动画名 时长 线性 无线播放 */
    -webkit-animation: hue 3s infinite linear;
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
    <h1>XS内部<h1/>
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

function particle2()
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
    /* 弹性布局 水平+垂直居中 */
    display: flex;
    justify-content: center;
    align-items: center;
    background-color: #hsjjsb;
}
h1{
    /* 文本透明 */
    color: transparent;
    font-size: 9px;
    letter-spacing: 2px;
    /* 渐变背景 */
    background: linear-gradient(to right,#00FFC4,#ffffff,#00FFC4);
    /* 裁剪掉文字以外的区域 */
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    background-size: 80%;
    background-repeat: repeat;
    background-position: center;
    /* 执行动画：动画名 时长 线性 无线播放 */
    animation: move 4s linear infinite;
    position:absolute;
    top:0px
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
</head>

<body>
    <h1>作者:冷</h1>
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

function getrgb(cl )
	if string.sub(cl , 1 , 1 ) == "#" then
		cl = "0x"..string.sub(cl , 2 , -1 )
	end
	cl = {
		tonumber(string.sub(cl , 0 , 4 ) ) , tonumber("0x"..string.sub(cl , 5 , 6 ) ) , tonumber("0x"..string.sub(cl , 7 , 8 ) ) }
	return cl
end

function particle3()
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
    height: 20vw;
    /* 弹性布局 水平+垂直居中 */
    display: flex;
    justify-content: center;
    align-items: center;
    background-color: #hsjjsb;
}
h1{
    /* 文本透明 */
    color: transparent;
    font-size: 25px;
    /* 渐变背景 */
    background-image: -webkit-linear-gradient(#0038FF, #ffffff, #0038FF);
    /* 裁剪掉文字以外的区域 */
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    background-size: 80%;
    background-repeat: repeat;
    background-position: center;
    /* 执行动画：动画名 时长 线性 无线播放 */
    -webkit-animation: hue 3s infinite linear;
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
    <h1>演戏即可奔放<h1/>
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

jianbian = luajava.new(GradientDrawable )
jianbian : setCornerRadius(30 )
jianbian : setGradientType(GradientDrawable.LINEAR_GRADIENT )
local isswitch
YoYoImpl = luajava.getYoYoImpl()
WS.menu = function(stxt , sview )
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
		layout_width = "0dp" ,
		background = {
		GradientDrawable,
		color = "#00ffffff",
		cornerRadius = 10
	},
		orientation = "vertical" ,
	}
	for i = 1 , # stab do
		_ENV["jm"..i]=luajava.loadlayout({
			LinearLayout ,
			--id = "jm"..i ,
			layout_height = "44dp" ,
			layout_width = "0dp" ,	
			onClick = function()
			切换(i )
			luajava.newThread(function()
			pcall(func )end
			) : start()end,
			gravity = "center" ,
			{
				TextView ,
				id = "jm"..i.."tu" ,
				text = stab [ i ] ,
				gravity = "center" ,
				textColor="#ffffff",
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
				layout_width = "245dp" ,
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
			layout_width = "245dp" ,
			layout_height = "40dp" ,
			gravity = "center" ,
{
ImageView,
layout_gravity = "right",
id = "lxkg",
layout_marginRight = "-8dp" ,
background = "/sdcard/冷/图片/quarksun",
onClick = function()
if lx == 1 then
lx = 0
Fan()
lxkg : setBackground(luajava.getBitmapDrawable("/sdcard/冷/图片/quarksun" ) )
else
lx = 1
Fan()
lxkg : setBackground(luajava.getBitmapDrawable("/sdcard/冷/图片/quarkmoon" ) )
end
end,
onTouch = hanshu,
layout_height = "24dp",
layout_width = "24dp",
},{
LinearLayout ,
layout_marginLeft = "50dp" ,
layout_width = "130dp" ,
gravity = "center" ,
orientation="vertical",
{LinearLayout,
id="webv_",
layout_height="fill_parent",
layout_width="fill_parent",
gravity="center",
layout_marginLeft = "-13dp" ,
},{LinearLayout,
id="webv_2",
layout_height="fill_parent",
layout_width="fill_parent",
gravity="center",
layout_marginLeft = "-13dp" ,
},
			},{
				ImageView ,
				id = "exit" ,
				src = "https://out.zxglife.top/view.php/b74229710c5668264d049bf5a3a3924c.png",
				layout_width = "26dp" ,
				layout_height = "26dp" ,
				layout_marginTop = "0dp" ,
				layout_marginLeft = "0dp" ,
				layout_marginRight = "13dp" ,
			}
})
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
			cebian ,
			gnlist ,
		} )
control1=luajava.loadlayout({
					ImageView ,
					id = "control" ,
					background = 悬浮窗图片 ,
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
stitle1=particle()
stitle2=particle2()
local function invoke()
local ok
local RawX , RawY , x , y
mainLayoutParams = getLayoutParams()
local function invoke2()
block('start' )
for k = 1 , # stab do
for i = 1 , # sview [ k ] do
_ENV [ "layoutm"..k ] : addView(sview [ k ] [ i ] )
end
end
window:addView(floatWindow,mainLayoutParams)
webv_:addView(stitle1)		
webv_2:addView(stitle2)	
block('end' )
end
local runnable = luajava.getRunnable(invoke2)
local handler = luajava.getHandler()
handler:post(runnable)
block('join')
control.onClick = function()
隐藏()
end
exit.onClick = function()
隐藏()
end
local isMove
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
motion.onTouch = hanshu
control.onTouch = hanshu
for i = 1,#stab do
_ENV["jm"..i].onTouch = hanshu
end
end

invoke(swib1,swib2)
jm1:setBackground(slcta)
gg.setVisible(false)
luajava.setFloatingWindowHide(true)

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
beij = luajava.new(GradientDrawable)
beij:setCornerRadius(15)
beij:setGradientType(GradientDrawable.LINEAR_GRADIENT)
beij:setColors(({0x66000000,0x66000000}))--背景
beij:setStroke(4,"0xdd000000")--边框宽度和颜色

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
				F.controlBig(floatWindow,500)
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
				F.controlWater(floatWindow,800)
				F.controlFlip2 (floatWindow  , 400 )
			end
		end

	)
end
ms = { }
function setvalue ( add , value , falgs , dj )
	local WY = { } WY [ 1 ] = { } WY [ 1 ].address = add WY [ 1 ].value = value WY [ 1 ].flags = falgs
	if dj == true then
		WY [ 1 ].freeze = true gg.addListItems ( WY )
	else
		gg.setValues ( WY )
	end
end

menu ={}
name ={}
id = 0
play = false
song = ""

_G_ = {
	function()
		local searchMusic = gg.prompt({
			"歌曲•歌手",
			"列表•限制",
		},{"","10"},{
			"text",
			"text",
		})
		if not searchMusic then gg.setVisible(false) Main() elseif
			searchMusic[1] == "" then gg.alert("请输入歌曲/歌手！") _G_[1]()
			else
			local results = gg.makeRequest("http://music.163.com/api/search/get?s="..searchMusic[1].."&type=1&offset=0&total=true&limit="..searchMusic[2])
			if results.code == 200 then
				n=1
				for v,k in results.content:gmatch('"id":(.-),"name":"(.-)"') do
					if n%4 == 1 then
						menu[n/4+1] = v..";"..k
					end
					if n%4 == 2 then
						menu[n/4+1] = menu[n/4+1]..";"..k
					end
					n=n+1
				end
				_G_[2]()
				else
				local s = gg.alert("请求异常，请检查网络……","返回","退出")
				if not s then gg.setVisible(false) Main() end
				if s == 1 then os.exit() end
				if s == 2 then _G_[1]() end
			end
		end
	end,
	function()
		if #menu == 0 then gg.alert("没有搜索记录") Main() else
			for n=1,#menu do
				name[n] = menu[n]:gsub("[0-9]+;",""):gsub(";","\n歌手：")
			end
			local mu = gg.choice(name,0,"歌单")
			if not mu then _G_[1]() else
				song = name[mu]
				local sn=gg.choice({"播放","查看歌词"},nil,"歌曲："..name[mu])
				if not sn then _G_[1]() end
				if sn == 1 then
					id = menu[mu]:match("(.-);")
					gg.toast("正在播放音乐："..name[mu],true)
					gg.playMusic("http://music.163.com/song/media/outer/url?id="..id..".mp3")
					play = true
				end
				if sn == 2 then id = menu[mu]:match("(.-);") song = name[mu] _G_[3]() end
			end
		end
	end,
	function()
		if id == 0 then gg.alert("未有播放记录") Main() else
			local results = gg.makeRequest("http://music.163.com/api/song/media?id="..id).content
			rs = results:match('"lyric":"(.-)","code'):gsub("\\n","\n"):gsub("[[!-z]+]","")
			gg.alert("\n《"..song:gsub("\n","》\n").."\n\n"..rs)
			gg.setVisible(false)
		end
	end,
	function()
		if play then
			play = false
			gg.toast("正在停止播放...")
			for i=1,100 do
				gg.playMusic("stop")
				gg.playMusic("stop")
				gg.playMusic("stop")
				gg.playMusic("stop")
				gg.playMusic("stop")
				gg.playMusic("stop")
			end
			gg.toast("播放已停止")
			else
			gg.toast("无正在播放的音乐")
		end
	end,
	function()
		gg.setVisible(false)
		if play then _G_[4]() end
		LSP()
	end
}
function WTYY()
	local emo = gg.choice({
		"搜索歌曲",
		"搜索列表",
		"显示歌词",
		"暂停播放",
	},nil,"AQ音乐功能")
	if not emo then gg.setVisible(false) end
	if emo then
		_G_[emo]()
	end
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

local function exit()
tuichu = 1
luajava.setFloatingWindowHide(false)

luajava.post(function()
	window:removeView(floatWindow)
	end)
end


setExitEvent(exit)
F.controlWater = function(control,time)
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
qhkai = 0
qiehuan = function()
if qhkai == 0 then
qhkai = 1
luajava.runUiThread(function()
	F.controlSmall(floatWindow,400)
	end)
gg.sleep(400)
luajava.runUiThread(function()
	floatWindow:setVisibility(View.GONE)
	end)
else
	qhkai = 0
luajava.runUiThread(function() floatWindow:setVisibility(View.VISIBLE) end)
luajava.runUiThread(function()
	F.controlBig(floatWindow,400)
	end)

end
end

function WS.text2(txt,color,size)
if not txt then
txt = "未设置文字"
end
if not color then
color = "#ffffff"
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

function WS.line()
return luajava.loadlayout({
	LinearLayout,
	layout_width = "fill_parent",
	layout_height = "3dp",
	background = getShape8(),
})
end
function WS.button(txt , func )
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
				layout_marginTop = "2dp" ,
				layout_marginBottom = "1dp" ,
				background = getseekgra2(),
				onClick = function()
				F.controlWater(_ENV[tid],200)
					luajava.newThread(function()
							pcall(func )
						end

					) : start()
				end

				,
				{
					TextView ,
					text = txt ,
					textSize = "19sp" ,
					layout_width = "wrap_content" ,
				} ,
			} } )
	return _ENV[tid]
end

function WS.Fbutton(txt,func )
	if not txt then
		txt = "未设置"
	end
	local tid=guid()..guid()
	_ENV[tid]=luajava.loadlayout (
		{
			LinearLayout ,
			layout_width = 'fill_parent' ,
			layout_hight = "wrap_content" , 
			{
				LinearLayout,
				layout_width = 'fill_parent',
				layout_height = "38dp",
				gravity = "center_horizontal" ,
				layout_marginTop = "1dp" ,
				layout_marginBottom = "3dp" ,
				background = getseekgra2(),
				onClick = function()
				F.controlWater(_ENV[tid],200)
				luajava.newThread(function()
				pcall(func )end) : start()
				end,
				{
					TextView ,
					text = txt ,
					textSize = "21sp" ,
					layout_marginTop = "3dp" ,
				},
			} } )
	return _ENV[tid]
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
luajava.runUiThread(function()
	luajava.getIdValue(nid.."g"):setText("关闭")
	luajava.getIdValue(nid.."g"):setTextColor(0xffA11322)
--luajava.getIdValue(nid):setBackground(switchsbga)
	end)
_ENV[name] = "开"
pcall(func1)
else
luajava.runUiThread(function()
	luajava.getIdValue(nid.."g"):setText("开启")
	luajava.getIdValue(nid.."g"):setTextColor(0xff44cef6)
--luajava.getIdValue(nid):setBackground(switchsbg)
	end)
_ENV[name] = "关"
pcall(func2)
end
end
end
end
function WS.switchs(cklist)
local rest = {
	GridLayout,
	columnCount = '3',
	layout_width = 'fill_parent',
	layout_height = "wrap_content",
	layout_marginLeft = "0dp",
	layout_marginRight = "0dp",
	gravity = "center"

}
for i = 1,#cklist do
local name = cklist[i][1]
local func1 = cklist[i][2]
local func2 = cklist[i][3]
if not name then name = "未设置" end
rstt = WS.intswitchs(name,func1,func2)
rest[#rest+1] = rstt
end
return luajava.loadlayout({
	LinearLayout,rest
})
end
function WS.intswitchs(name,func1,func2)
nid = name..guid()
local func = 开关5(name,func1,func2,nid)
if not name then name = "未设置" end
local rest = luajava.loadlayout({
	LinearLayout,
	layout_width = '115dp',
	layout_height = "30dp",
	layout_marginTop = "1dp",
	layout_marginBottom = "1dp",
	padding = "1dp",
	{
		LinearLayout,
		onClick = function() luajava.newThread(function() func() end):start() end,
		layout_width = 'fill_parent',
		layout_height = "fill_parent",
		gravity = "center_vertical",
		background = getseekgra3(),
		{
			TextView,
			gravity = "left",
			text = name,
textColor="#ffffff",
			textSize = "12sp",
layout_marginLeft="3dp",
			layout_width = '60dp',
		},
		{
				TextView,
				id = luajava.newId(nid.."g"),
				text = "开启",
				textColor="#ff44cef6",
				textSize="14sp",
				gravity="center",
				layout_width = 'wrap_content',
				layout_height = 'fill_parent',
				layout_marginLeft="4dp",
			}} 
})

return rest
end

function WS.text(txt,color,size)
if not txt then txt = "未设置文字" end
if not color then color = "#ffffff" end
if not size then size = "17sp" end
return luajava.loadlayout(
	{
		TextView,
		text = txt,
		textSize = size,
		textColor = color,
		layout_width = "match_parent",
		gravity = "left",
	})
end

switches = {}
function WS.switch(name,func1,func2,miaoshu)
nid = name..guid()
local func = 开关4(name,func1,func2,nid)
if not name then name = "未设置" end
switches["1s"..nid] = luajava.loadlayout {
	FrameLayout,
	layout_width = '45dp',
	layout_marginRight = "10dp",
	layout_marginLeft = "-10dp",
	layout_height = '24dp',
	gravity = "center_vertical",
	padding = {
		"6dp","0dp","6dp","0dp"
	},
	{
		LinearLayout,
		layout_gravity = "left|center_vertical",
		id = luajava.newId(nid.."k"),
		background = checkbg1(),
		onClick = function() luajava.newThread(function() func() end):start() end,
		layout_width = '14dp',
		layout_height = '5dp',
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
		"6dp","0dp","6dp","0dp"
	}
	, {
		LinearLayout,
		visibility = "gone",
		layout_gravity = "right|center_vertical",
		id = luajava.newId(nid.."g"),
		background = checkbg2(),
		onClick = function() luajava.newThread(function() func() end):start() end,
		layout_width = '14dp',
		layout_height = '5dp',

		elevation = "10dp",
	}
}
rest = luajava.loadlayout({
	LinearLayout,
	elevation = "5dp",
	layout_width = 'fill_parent',
	layout_height = "38dp",
	gravity = "center_vertical",
	{
		LinearLayout,
		layout_width = 'fill_parent',
		layout_height = "35dp",
		gravity = "center_vertical",
		background = getseekgra(),
		{
			TextView,
			gravity = "top",
			text = name,
			textColor = "#ffffff",
			textSize = "17sp",
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
			layout_width = "130dp",
			layout_marginLeft = "-80dp",
			layout_weight = 1,
			textColor = "#A5A5A5",
		},
		{
			FrameLayout,
			background = checkbg(),
			elevation = "10dp",
			onClick = function() luajava.newThread(function() func() end):start() end,
			layout_width = '45dp',
			layout_height = '24dp',
			gravity = "center",
			switches["1s"..nid],switches["2s"..nid]
		}}
})
return rest
end

 = luajava.loadlayout({

		({"https://cccimg.com/view.php/34c14758b5f120a20a63652dda43a723.png",
						"地铁跑酷（4399服）",
						{
							"地铁跑路启动",
							"xxx"
						},
						function()
							launch("")
						end
					}),
					({"https://cccimg.com/view.php/34c14758b5f120a20a63652dda43a723.png",
						"地铁跑酷（好游服）",
						{
							"说明",
						},
						function()
							launch("")
						end
					}),
					({"https://cccimg.com/view.php/34c14758b5f120a20a63652dda43a723.png",
						"地铁跑酷（应用服）",
						{
								"说明",
						},
						function()
						launch("")
						end
					}),
					({"https://cccimg.com/view.php/34c14758b5f120a20a63652dda43a723.png",
						"地铁跑酷（中国城）",
						{
							"说明",
						},
						function()
						launch("")
						end
					})
	}})

function 开关4(name,func1,func2,nid)
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
luajava.runUiThread(function()
	luajava.getIdValue(nid.."k"):setVisibility(View.GONE)
	YoYoImpl:with("FadeInLeft"):duration(300):playOn(switches["2s"..sname])
	luajava.getIdValue(nid.."g"):setVisibility(View.VISIBLE)
--luajava.getIdValue(nid):setBackground(checkbga)
	end)
_ENV[name] = "开"
else
luajava.runUiThread(function()
	luajava.getIdValue(nid.."g"):setVisibility(View.GONE)
	YoYoImpl:with("FadeInRight"):duration(300):playOn(switches["1s"..sname])
	luajava.getIdValue(nid.."k"):setVisibility(View.VISIBLE)
--luajava.getIdValue(nid):setBackground(checkbg)
	end)
_ENV[name] = "关"
end
end
end
end

function visi(tid , ttid )
	local tview = luajava.getIdValue(tid )
	local ttview = luajava.getIdValue(ttid )
	if not tview then
		return 0
	end
	if tonumber(tostring(tview : getVisibility() ) ) == 8.0 then
		tview : setVisibility(View.VISIBLE )
		ttview : setBackground(luajava.getBitmapDrawable("/sdcard/冷/图片/hsj" ) )
	else
		tview : setVisibility(View.GONE )
		ttview : setBackground(luajava.getBitmapDrawable("/sdcard/冷/图片/sj" ) )
	end
end

function WS.box(views )
	local tid = "box"..guid()
	local ttid = tid.."6"
	local t1id=guid()
	firadio = {
	LinearLayout,
	layout_width = 'fill_parent',
	layout_height = "wrap_content",
	layout_marginTop = "2dp",
	gravity="center",
	layout_marginBottom = "1dp",
	orientation = "vertical",
	background = luajava.loadlayout {
		GradientDrawable,
		color = "#0018191C",
		cornerRadius = 8
		},
	}
if type(views[1]) == "string" or type(views[1]) == "number" then
firadio[#firadio+1] = {
	FrameLayout,
	layout_width = '226dp',
	layout_height = "38dp",
	gravity = "center_vertical",
	layout_marginTop = "2dp",
	layout_marginBottom = "0.8dp",
			onClick = function()
			F.controlWater(_ENV[t1id],200)
			visi(tid , ttid )
			end,
			background = getseekgra(),
			{
		ImageView,
		layout_gravity="left|center",
		layout_marginLeft = "10dp",
		id = luajava.newId(ttid),
		background = "/sdcard/冷/图片/sj",
		layout_width = "22dp",
		layout_height = "22dp",
		layout_marginTop = "0dp",
			} ,
			{
		TextView,text = views[1],
		textSize = "18sp",
		layout_width = "220dp",
		--textColor = "#0091FE",
		layout_gravity = "center",
		gravity="center"
	}} else
	gg.alert("WS.box第一个参数必须是string") os.exit()
end
	radios = {
		LinearLayout,
	layout_marginLeft = "0dp",
	layout_marginRight = "0dp",
	orientation = "vertical",
	visibility = "gone",
	id = luajava.newId(tid),
	padding = "0dp",
	gravity="center_horizontal",
	layout_width = 'fill_parent',
	}
	for i = 2 , # views do
		radios [ # radios + 1 ] = views [ i ]
	end
	firadio [ # firadio + 1 ] = radios
	_ENV[t1id]=luajava.loadlayout(firadio )
	return _ENV[t1id]
end

function WS.check(cklist )
	rest = {
		LinearLayout ,
		layout_width = 'match_parent' ,
		layout_height = "wrap_content" ,
		layout_marginTop = "15dp" ,
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
				onClick = function()F.controlWater(_ENV[tid],200)
					luajava.newThread(function()
							func()
						end

					) : start()
				end

				,
				{
					ImageView ,
					id = luajava.newId(nid ) ,
					layout_width = '30dp' ,
					layout_height = "30dp" ,
					layout_marginLeft = "10dp" ,
					layout_marginRight = "10dp" ,
					background = "/sdcard/冷/图片/quarkcheckoff" ,
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
						luajava.getIdValue(nid ) : setBackground(luajava.getBitmapDrawable("/sdcard/冷/图片/quarkcheckon" ) )
					end

				)
				_ENV [ name ] = "开"
				pcall(func1 )
			else
				luajava.runUiThread(function()
						luajava.getIdValue(nid ) : setBackground(luajava.getBitmapDrawable("/sdcard/冷/图片/quarkcheckoff" ) )
					end

				)
				_ENV [ name ] = "关"
				pcall(func2 )
			end

		end

	end
end

function tuichu()
luajava.setFloatingWindowHide(false)
tuichu=1
end

nowbg=1
bglist={
	{0x66000000,0x66000000},
	{0xbba1abc9,0xbba1abc9},
}
function Fan()
	if nowbg<#bglist then
		nowbg=nowbg+1
	else
		nowbg=1
	end
	luajava.runUiThread(function()
	beij:setColors(bglist[nowbg])
	floatWindow:setBackground(beij)
	end)
end



stab = {
	"公告" ,
	"主页" ,
	"防封" ,
	"刷号" ,	
	"竞赛" ,
	"音乐" ,
	"关于" ,
}
悬浮窗图片 ="https://cccimg.com/view.php/34c14758b5f120a20a63652dda43a723.png"

WS.menu(stxt,
{
{--首页调用
particle3("原神","模板作者Y","地铁跑酷启动",{"#B5C0C6","#fff","#B5C0C6"}),

WS.Fbutton("主页公告",
function()
切换(2)
end),
WS.Fbutton("防封区域",
function()
切换(3)
end),
WS.Fbutton("刷号区域",
function()
切换(4)
end),
WS.Fbutton("竞赛区域",
function()
切换(5)
end),
WS.Fbutton("音乐区域",
function()
切换(6)
end),
WS.Fbutton("关于我们",
function()
切换(7)
end)
},{
launchui,
},{--第一列表
WS.text("防封区域"),
WS.line(),
WS.button("返回首页",
function()
切换(1)
end),
WS.text(os.date"登录时间:\n%m月%d日%H时%M分%S秒","#ff3eede7","15sp"),
WS.button("选择进程",
function()
gg.setProcessX()
gg.setConfig("隐藏辅助", 23)
gg.setConfig("运行守护", 3)
gg.setConfig("冻结间隔", 0)
string.toMusic("请选择地铁跑酷进程")
local gg=gg
local t={"libtersafe2.so:bss", "Cb"}
local tt={0x49FC}
local ttt=S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = -5, freeze = true}})
end),
WS.text("Tips:防环境 防行为必开,不开秒拉闸","#ff3eede7","13sp"),
WS.switchs({
             {"防闪退",
             function()
             
             end
             },{
             "防环境",
             function()

             end
                 }
}),
WS.switchs({
             {"防行为",
             function()

             end
             },{
             "防ACE",
             function()

             end
                 }
})
},{--第二列表
WS.text("刷号区域"),
WS.line(),
WS.button("返回首页",
function()
切换(1)
end),
WS.box({"主要配置",
WS.button("一键拉满",
function()
gg.alert("暂未开放")
end),
WS.switchs({
             {"替换奖杯",
             function()
             gg.alert("暂未开放")
             end
             },{
             "破解内购",
             function()
             gg.alert("内购已和谐，所以这里就不加了")
             end
                 }
}),
WS.switchs({
             {"修改等级",
             function()
             gg.alert("暂未开放")
             end
             },{
             "调出十倍",
             function()
             gg.alert("暂未开放")
             end
                 }
})
}),
WS.box({"宝物箱子",
WS.switch("十抽宝物",
function()
function heiren(FUNCTIONADD,TYPE,VALUE)
local SOMOD=gg.getRangesList("il2cpp.so")
if SOMOD[1]==nil then _error() else
gg.setValues({{address=SOMOD[1].start+FUNCTIONADD,flags=TYPE,value=VALUE}})
gg.setValues({{address=SOMOD[1].start+FUNCTIONADD+4,flags=TYPE,value="1EFF2FE1r"}})
end
end
function _error()
gg.alert([[
   开启失败


   失败原因：进程存储太小！
   
   
   解决方案：刷新进程后重启开启
]])
end 
heiren(0x1064408 ,4,"~A B +0xB0D0")--十抽宝物

end),
WS.switch("十抽全饰",
function()
function heiren(FUNCTIONADD,TYPE,VALUE)
local SOMOD=gg.getRangesList("il2cpp.so")
if SOMOD[1]==nil then _error() else
gg.setValues({{address=SOMOD[1].start+FUNCTIONADD,flags=TYPE,value=VALUE}})
gg.setValues({{address=SOMOD[1].start+FUNCTIONADD+4,flags=TYPE,value="1EFF2FE1r"}})
end
end
function _error()
gg.alert([[
   开启失败


   失败原因：进程存储太小！
   
   
   解决方案：刷新进程后重启开启
]])
end 
heiren(0x1064408,4,"~A B	 -0x1FF04F4")--十抽全饰
end),
WS.switch("十抽半饰",
function()
function heiren(FUNCTIONADD,TYPE,VALUE)
local SOMOD=gg.getRangesList("il2cpp.so")
if SOMOD[1]==nil then _error() else
gg.setValues({{address=SOMOD[1].start+FUNCTIONADD,flags=TYPE,value=VALUE}})
gg.setValues({{address=SOMOD[1].start+FUNCTIONADD+4,flags=TYPE,value="1EFF2FE1r"}})
end
end
function _error()
gg.alert([[
   开启失败


   失败原因：进程存储太小！
   
   
   解决方案：刷新进程后重启开启
]])
end 
heiren(0x1064408,4,"~A B	 -0x1FEF254")--十抽半饰
end),
WS.switch("十抽备份",
function()
function heiren(FUNCTIONADD,TYPE,VALUE)
local SOMOD=gg.getRangesList("il2cpp.so")
if SOMOD[1]==nil then _error() else
gg.setValues({{address=SOMOD[1].start+FUNCTIONADD,flags=TYPE,value=VALUE}})
gg.setValues({{address=SOMOD[1].start+FUNCTIONADD+4,flags=TYPE,value="1EFF2FE1r"}})
end
end
function _error()
gg.alert([[
   开启失败


   失败原因：进程存储太小！
   
   
   解决方案：刷新进程后重启开启
]])
end 
heiren(0x1064408 ,4,"~A B +0x80F8")--十抽备份
end)}),
WS.box({"全解功能",
WS.switch("人物全解",
function()
function heiren(FUNCTIONADD,TYPE,VALUE)
local SOMOD=gg.getRangesList("il2cpp.so")
if SOMOD[1]==nil then _error() else
gg.setValues({{address=SOMOD[1].start+FUNCTIONADD,flags=TYPE,value=VALUE}})
gg.setValues({{address=SOMOD[1].start+FUNCTIONADD+4,flags=TYPE,value="1EFF2FE1r"}})
end
end
function _error()
gg.alert([[
   开启失败


   失败原因：进程存储太小！
   
   
   解决方案：刷新进程后重启开启
]])
end 
heiren(0xb82e8c,4,"~A MOV R0, #1")--人物
end),
WS.switch("装扮全解",
function()
local il2cppmod=gg.getRangesList('il2cpp.so')
gg.setValues({{address=il2cppmod[1].start+0xb75284,flags=4,value='0100A0E3r'}})
gg.setValues({{address=il2cppmod[1].start+0xb75284+4,flags=4,value='~A bx lr'}})--人物装扮
end),
WS.switch("滑板全解",
function()
function heiren(FUNCTIONADD,TYPE,VALUE)
local SOMOD=gg.getRangesList("il2cpp.so")
if SOMOD[1]==nil then _error() else
gg.setValues({{address=SOMOD[1].start+FUNCTIONADD,flags=TYPE,value=VALUE}})
gg.setValues({{address=SOMOD[1].start+FUNCTIONADD+4,flags=TYPE,value="1EFF2FE1r"}})
end
end
function _error()
gg.alert([[
   开启失败


   失败原因：进程存储太小！
   
   
   解决方案：刷新进程后重启开启
]])
end 
heiren(0xb83ec4,4,"~A MOV R0, #1")--滑板
end),
WS.switch("背饰全解",
function()
function heiren(FUNCTIONADD,TYPE,VALUE)
local SOMOD=gg.getRangesList("il2cpp.so")
if SOMOD[1]==nil then _error() else
gg.setValues({{address=SOMOD[1].start+FUNCTIONADD,flags=TYPE,value=VALUE}})
gg.setValues({{address=SOMOD[1].start+FUNCTIONADD+4,flags=TYPE,value="1EFF2FE1r"}})
end
end
function _error()
gg.alert([[
   开启失败


   失败原因：进程存储太小！
   
   
   解决方案：刷新进程后重启开启
]])
end 
heiren(0xbae298,4,"~A MOV R0, #1")--背饰
end),
})
},{--第三列表
WS.text("竞赛区域"),
WS.line(),
WS.button("返回首页",
function()
切换(1)
end),
WS.box({"道具赛区",
WS.switch("全服第一",
function()
heiren = function ( Address , Value )
	local Somod = gg.getRangesList ( 'il2cpp.so' ) [ 1 ]
	if Somod == nil then
		gg.alert ( '请重新选择地铁跑酷进程' )
	else
		local So = Somod.start
		local Add = So + Address
		gg.processPause ( )
		gg.setValues ( { { address = Add , flags = 4 , value = Value } } )
		gg.setValues ( { { address = Add + 4 , flags = 4 , value = "~A BX	 LR" } } )
		gg.processResume ( )
	end
end

heiren(0xdb757c,'~A MOVW  R0, #'..gg.prompt({"请输入要显示的全服排名"},{"1"},{"text"})[1])
gg.alert("修改成功")
end),
WS.switch("无宝聚能",
function()
heiren = function ( Address , Value )
	local Somod = gg.getRangesList ( 'il2cpp.so' ) [ 1 ]
	if Somod == nil then
		gg.alert ( '请重新选择地铁跑酷进程' )
	else
		local So = Somod.start
		local Add = So + Address
		gg.processPause ( )
		gg.setValues ( { { address = Add , flags = 4 , value = Value } } )
		gg.setValues ( { { address = Add + 4 , flags = 4 , value = "~A BX	 LR" } } )
		gg.processResume ( )
	end
end

heiren(0x1c4b794,4,"~A MOVT R0, #1")--防卡顿
heiren(0x1c4b794,"~A MOVT R0, #1")--防卡顿
heiren(0x1c49740,"~A B	 +0x00001E94")--无限能量
end),
WS.switch("无视道具",
function()
heiren = function ( Address , Value )
	local Somod = gg.getRangesList ( 'il2cpp.so' ) [ 1 ]
	if Somod == nil then
		gg.alert ( '请重新选择地铁跑酷进程' )
	else
		local So = Somod.start
		local Add = So + Address
		gg.processPause ( )
		gg.setValues ( { { address = Add , flags = 4 , value = Value } } )
		gg.setValues ( { { address = Add + 4 , flags = 4 , value = "~A BX	 LR" } } )
		gg.processResume ( )
	end
end


heiren(0x1c4f8d8,4,"~A MOV R0, #0")--无视香蕉
end),
}),
WS.box({"分数赛区",

}),
WS.box({"娱乐功能",

})
},{
WS.text("音乐区域"),
WS.line(),
WS.button("返回首页",
function()
切换(1)
end),
WS.button("搜索音乐",
function()
WTYY()
end),
WS.button("随机热歌",
				function()
	        A="https://api.uomg.com/api/rand.music?sort=热歌榜&format=json"
	Obtain=gg.makeRequest(A).content
	muchen=Obtain:match('url":"(.-)","picurl')
	name=Obtain:match('name":"(.-)","')
	gg.alert('开始播放【'..name..'】')
	gg.playMusic(muchen)
    end),
 WS.button("停止播放",
				function()
	            gg.toast("正在停止播放...")
      for i=1,100 do
        gg.playMusic("stop")
        gg.playMusic("stop")
        gg.playMusic("stop")
        gg.playMusic("stop")
        gg.playMusic("stop")
        gg.playMusic("stop")
      end
      gg.toast("播放已停止")
      gg.toast("无正在播放的音乐")
    end),
WS.switch("Letting Go",--功能名字 不可重复
    function()
gg.playMusic("http://music.163.com/song/media/outer/url?id=2015047009.mp3")
    end,
    function()
        gg.playMusic("stop")
    end),
},{--第四列表
WS.text("关于我们"),
WS.line(),
WS.button("返回首页",
function()
切换(1)
end),
WS.text2("感谢使用AQUI\n作者:冷","#ff3eede7", nil),
WS.button("复制卡网",
function()
local loadingBox = getLoadingBox ('请稍等...')
loadingBox ['显示'] ()
gg.setVisible(false)
gg.sleep(1900)
loadingBox ['关闭'] ()
gg.sleep(0)

end),
WS.button("加入我们",
function ()
end),
WS.button("退出插件",
function()
tuichu()
end)
}
})


function proo()
F.controlRotation2(control1,3000)
end
luajava.newThread(function()--更新逻辑
	while true do
		gg.sleep(3000)
		if 显示==0 then
			proo()
		end
	end
end):start()
while true do
if tuichu == 1 then break end
jianting3(qiehuan)
gg.sleep(120)
end