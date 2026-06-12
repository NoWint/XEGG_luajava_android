




                                                                                                                                                                                                                                                 XG = {}
function 获取图片(txt)
ntxt = string.sub(string.gsub(txt,"/","-"),-10,-1)
if string.find(tostring(txt),"http") ~= nil then
if panduan("/sdcard/长安/图片/"..ntxt) == false then
download(txt,"/sdcard/长安/图片/"..ntxt)
end
txt = "/sdcard/长安/图片/"..ntxt
end
return luajava.getBitmapDrawable(txt)
end
function getRes(x)
return 获取图片("/sdcard/长安/图片/"..x)
end

function getTimeStamp(t)
local str = os.date("%Y年%m月%d日%H:%M:%S",t)
return str
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

function panduan(rec) fille,err = io.open(rec) if fille == nil then return false else return true end end

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
function panduan(rec) fille,err = io.open(rec) if fille == nil then return false else return true end end
function pdcf(lujing) rec = "/sdcard/长安/配置文件/"..lujing fille,err = io.open(rec) if fille == nil then return false else return true end end
sleep = gg.sleep
--if gg.isHTTPdump()==true and panduan("/sdcard/长安/配置文件/vpn.txt") == false then gg.alert("\n抓包？") os.exit() end
function read(fileName) f = assert(io.open(fileName, 'r')) content = f:read("*all") f:close() return content end
function wtcf(lujing,neirong)
write("/sdcard/长安/配置文件/"..lujing,neirong)
end
function rdcf(lujing)
return read("/sdcard/长安/配置文件/"..lujing)
end
开 = "开" 关 = "关"
function checkimg(tmp)
if panduan("/sdcard/长安/图片/"..tmp) ~= true then
gg.toast("正在下载资源"..tmp.."\n请耐心等待")
download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..tmp,"/sdcard/长安/图片/"..tmp)
download("https://out.zxglife.top/view.php/4fa962f5833f459360ee4e994c1a5985.png","/sdcard/长安/图片/quarkcheckoff")
download("https://out.zxglife.top/view.php/0f060255af15c70e5758ae34d05c483e.png","/sdcard/长安/图片/quarkcheckon")
else
	if file.length("/sdcard/长安/图片/"..tmp) <= 1 then
gg.toast("正在下载资源"..tmp.."\n请耐心等待")
download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..tmp,"/sdcard/长安/图片/"..tmp)
download("https://out.zxglife.top/view.php/4fa962f5833f459360ee4e994c1a5985.png","/sdcard/长安/图片/quarkcheckoff")
download("https://out.zxglife.top/view.php/0f060255af15c70e5758ae34d05c483e.png","/sdcard/长安/图片/quarkcheckon")
end
end
end
ckimg = {
	"quarkx","quarkcheckon","quarkcheckoff",
	"inktitle","moji","sword","mo_but","taichion"
}
for i = 1,#ckimg do
jindu = i
checkimg(ckimg[i])
end

function particle()
local webView = luajava.webView(function(webView)
	webView:loadData([[
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <title>天天开心</title>
 
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
    background-color: #ffffffff;
}
h1{
    /* 文本透明 */
    color: transparent;
    font-size: 18px;
    letter-spacing: 5px;
    /* 渐变背景 */
    background: linear-gradient(to right,#000000,#ffffff,#000000);
    /* 裁剪掉文字以外的区域 */
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    background-size: 80%;
    background-repeat: repeat;
    background-position: center;
    /* 执行动画：动画名 时长 线性 无线播放 */
    animation: move 4s linear infinite;
    position:absolute;
    top:5px
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
    <h1>XG全防<br>  <p></p></h1>
    

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

empty = luajava.loadlayout {
	GradientDrawable,
	color = "#00dddddd",
	cornerRadius = 30
}
empty2 = luajava.getBitmap("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/jot8z1zy")

function getShape10()
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(15)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({0x94ffffff,0x94ffffff})
jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
jianbians:setStroke(8,"0xff000000")--边框宽度和颜色
return jianbians
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
mainLayoutParams = getLayoutParams()
function XG.menu(stitle,sview)
cebian = {
	LinearLayout,
	layout_height = "wrap_content",
	layout_width = "80dp",
	gravity = "left",
	layout_marginBottom = "5dp",
	padding = "3dp",
	orientation = "vertical",
	onTouch = hanshu,
	onClick = function() end,
	background = luajava.loadlayout {
						GradientDrawable,
						color = "#00ffffff",
						cornerRadius = 30
					},
}
for i = 1,#stab do
_ENV["jm"..i.."bg"] = getSelector()
_ENV["jm"..i] = luajava.loadlayout({
	LinearLayout,
	gravity = "center",
	layout_height = "30dp",
	layout_width = "74dp",
	background = _ENV["jm"..i.."bg"],
	onTouch = hanshu,
	onClick = function() 切换(i) end,
	{
		TextView,
		id = "jmt"..i,
		layout_marginLeft = "0dp",
		textSize = "14sp",
		textColor = "#000000",
		text = stab[i].."",
	}
})

_ENV["jmt"..i]:setTypeface(typeface)

cebian[#cebian+1] = _ENV["jm"..i]

tmp = {
	LinearLayout,
	layout_width = "320dp",
	orientation = "vertical",
	padding = {
		"15dp","0dp","5dp","0dp",
	},
	
}
tmp2 = {
	LinearLayout,
	layout_height = "240dp",
	layout_width = "fill_parent",
	gravity = "center_horizontal",
	padding = "10dp",
	orientation = "vertical",
}
for j = 1, #sview[i] do
tmp2[#tmp2+1] = sview[i][j]
end
_ENV["layout"..i] = luajava.loadlayout {
	LinearLayout,
	layout_height = "wrap_content",
	layout_width = "365dp",
	visibility = "gone",
	{
		LinearLayout,
		layout_height = "wrap_content",
		layout_width = "240dp",
		gravity = "center",
		orientation = "vertical",
		tmp,
		{
			ScrollView,
			layout_height = "wrap_content",
			layout_weight = 1,
			layout_width = "240dp",
			tmp2
		}
	}}



end

topbar = luajava.loadlayout({
	FrameLayout,
	layout_height = "30dp",
	layout_width = "240dp",
	gravity = "center",
	onClick = function() end,
	onTouch = hanshu,
	background = "https://out.zxglife.top/view.php/d63839e088262f66cba29bc2c92b98ce.png",
	{LinearLayout,
id="webv_",
layout_height="fill_parent",
layout_width="fill_parent",
gravity="center",
layout_marginTop = "0dp" ,
},
	{
		ImageView,
		layout_gravity = "right",
		layout_marginRight = "10dp",
		layout_marginTop = "3dp",
		background = "/sdcard/长安/图片",
		onClick = 隐藏,
		onTouch = hanshu,
		background = "http://wp.nydddq.cn/view.php/6d5f0828c2a580dd69d045dcd3f9188a.png",
		layout_height = "25dp",
		layout_width = "25dp",
	}
})

mainbg = {
	LinearLayout,
	orientation = "vertical",
	id = "mainbg",
--padding = "8dp",

	onTouch = hanshu,
	layout_height = "wrap_content",
	layout_width = "240dp",
	topbar,

}
for i = 1,#stab do
mainbg[#mainbg+1] = _ENV["layout"..i]
end
mainbg = luajava.loadlayout(mainbg)
mo_circle = luajava.loadlayout {
	FrameLayout,
	onTouch = hanshu,
	onClick = function()
		XG.controlRotation2(taiji,1000)
		
	end,
	layout_height = "64dp",
	layout_width = "64dp",
	layout_marginTop = "30dp",
	orientation = "vertical",
	padding = {
		"0dp","0dp","0dp","0dp",
	},
	background="https://wp.td88.cyou/view.php/660899c10bbdda98f8689d39e28872b0.png",
}
taiji = luajava.loadlayout {
	FrameLayout,
	onTouch = hanshu,
	onClick = function()
		XG.controlRotation2(taiji,1000)
		
		
	end,
	layout_height = "42dp",
	layout_width = "42dp",
	layout_marginTop = "80dp",
	orientation = "vertical",
	padding = {
		"0dp","0dp","0dp","0dp",
	},
	background="https://wp.td88.cyou/view.php/06ccf0e79874a22d822680e56505414f.png",
}
cebian[#cebian+1] = {
							FrameLayout,
							id = "tjt",
							layout_marginTop = "20dp",
							layout_marginLeft="-5dp",
							layout_height = "wrap_content",
							layout_width = "84dp",
							gravity = "center",
							{LinearLayout,
								layout_gravity="center",
								layout_marginTop="0dp",
								mo_circle},
							{LinearLayout,
								layout_gravity="center",
								taiji}
						}


zidong = luajava.newThread(function()
while true do
if zdbf then logvid = luajava.getIdView("video") logvid.start(logvid) end
gg.sleep(500)
end
end)
function getj7()
jianbian7 = luajava.new(GradientDrawable)
jianbian7:setCornerRadius(30)
jianbian7:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbian7:setColors({0xffffffff,0xffffffff})
return jianbian7
end
zdbf=true
zidong:start()
floatWindow = luajava.loadlayout(
	{
		FrameLayout,
		layout_height = "wrap_content",
		layout_width = "wrap_content",
		padding = "0dp",
		{
			ImageView,
			onTouch = hanshu,
			id = "control2",
			visibility = "gone",
			onClick = 隐藏,
			gravity = "center",
			layout_height = "45dp",
			layout_width = "45dp",
			src = xfcpic
		},
		{
			FrameLayout,
			id = "chuangk",
			elevation = "30dp",
			background = getShape9(),
			layout_height = "365dp",
			{LinearLayout,
			layout_width="80dp",
			layout_height="fill_parent",
			--layout_weight=1,
			background = getj7(),
			layout_gravity="left|center_vertical",
			},
			{LinearLayout,
			layout_marginLeft="75dp",
			layout_width="255dp",
			layout_height="match_parent",
			id="canv",
			logvid
			},
	      {LinearLayout,
			layout_width="180dp",
			layout_height="290dp",
layout_marginLeft="90dp",
layout_marginTop="35dp",
			background = "https://out.zxglife.top/view.php/da98edd6fa36566885be52b0f265c9c8.png",
			},      {LinearLayout,
			layout_width="120dp",
			layout_height="170dp",
layout_marginLeft="210dp",
layout_marginTop="200dp",
			background = "/sdcard/长安/图片",
			},      {LinearLayout,
			layout_width="80dp",
			layout_height="80dp",
layout_marginTop="285dp",
			background = "https://out.zxglife.top/view.php/13a02c8b3d89fe3b28d6c6c5e672afd6.png",
			},
			{
				LinearLayout,
				layout_height = "wrap_content",
				cebian,
				mainbg
			}
		}
	})
luajava.runUiThread(function()
	YoYoImpl:with("RotateOut"):duration(300):playOn(taiji)
	end)
	stitle2=particle()	
local function invoke()
mainLayoutParams.x = device.width/4
mainLayoutParams.y = device.height/2
window:addView(floatWindow,mainLayoutParams)
end
luajava.post(invoke)
--print(os.clock()-tlt)
luajava.runUiThread(function()
	YoYoImpl:with("RotateIn"):duration(3000):playOn(taiji)
	webv_:addView(stitle2)
	end)
setOnExitListener(function()
	bloc("end")
	luajava.setFloatingWindowHide(false)
	end)
切换(1)
显示=1
luajava.newThread(function()
	while true do
		if 显示==1 then
			XG.controlRotation2(taiji,2000)
			XG.controlRotation1(mo_circle,2000)
		end
			gg.sleep(2000)
	end
	end):start()
bloc = luajava.getBlock()
bloc("join")
local function invoke()
return window:removeView(floatWindow)
end
luajava.post(invoke)
luajava.setFloatingWindowHide(false)

end
slcta = 获取图片("/sdcard/长安/图片/moji")
slctb = luajava.loadlayout {
	GradientDrawable,
	color = "#00ffffff",
	cornerRadius = 30
}

function getSelector()
selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, slctb) -- 点击时候的背景
selector:addState({
	-android.R.attr.state_pressed
}, slctb) -- 没点击的背景
return selector
end
XG.controlRotation2 = function(control, time)
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
XG.controlRotation1 = function(control, time)
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
XG.controlRotation3 = function(control, to1,to2)
luajava.runUiThread(function()
	import "android.view.animation.Animation"
	import "android.animation.ObjectAnimator"
	xuanzhuandonghua = ObjectAnimator:ofFloat(control, "rotation", {
		to1, to2
	})
	xuanzhuandonghua:setRepeatCount(0)
	xuanzhuandonghua:setRepeatMode(Animation.RESTART)
	xuanzhuandonghua:setDuration(300)
	xuanzhuandonghua:start()
	end)
end
XG.controlBig = function(control,time)
luajava.runUiThread(function()
	import "android.animation.ObjectAnimator"
	ObjectAnimator():ofFloat(control,"scaleX", {
		0, 0.4, 0.7, 1
	}):setDuration(time):start()
	ObjectAnimator():ofFloat(control,"scaleY", {
		0, 0.4, 0.7, 1
	}):setDuration(time):start()
	end) end
XG.controlFlip = function(control,time)
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
XG.controlWater = function(control,time)
luajava.runUiThread(function()
	import "android.animation.ObjectAnimator"
	ObjectAnimator():ofFloat(control,"scaleX", {
		1, 0.8, 0.9, 1
	}):setDuration(time):start()
	ObjectAnimator():ofFloat(control,"scaleY", {
		1,0.8,0.9,1
	}):setDuration(time):start()
	end) end
XG.controlSmall = function(control,time)
luajava.runUiThread(function()
	import "android.animation.ObjectAnimator"
	ObjectAnimator():ofFloat(control,"scaleX", {
		1, 0.7, 0.4, 0
	}):setDuration(time):start()
	ObjectAnimator():ofFloat(control,"scaleY", {
		1, 0.7, 0.4, 0
	}):setDuration(time):start()
	end) end
YoYoImpl = luajava.getYoYoImpl()
function 隐藏()
luajava.runUiThread (function ()
	if tonumber (tostring (chuangk: getVisibility ())) == 8.0 then
	显示 = 1
	chuangk : setVisibility (View.VISIBLE)
	control2 : setVisibility (View.GONE)
	YoYoImpl:with("RotateIn"):duration(1000):playOn(taiji)
	YoYoImpl:with("FadeIn"):duration(300):playOn(floatWindow)
	mainLayoutParams.flags = LayoutParams.FLAG_NOT_TOUCH_MODAL
	window : updateViewLayout (floatWindow , mainLayoutParams)
	else
		显示 = 0
	mainLayoutParams.flags = LayoutParams.FLAG_NOT_FOCUSABLE
	window : updateViewLayout (floatWindow , mainLayoutParams)
	chuangk : setVisibility (View.GONE)
	control2 : setVisibility (View.VISIBLE)
	XG.controlWater (floatWindow , 300)
	end
	end
)
end
isx = false
function 切换(x)
if 当前ui ~= x then
--luajava.newThread(function()
luajava.runUiThread(function ()
	当前ui = x
	for i = 1,#stab do
	if i ~= x then
	_ENV["layout"..i]:setVisibility(View.GONE)
	_ENV["jm"..i]:setBackground(_ENV["jm"..i.."bg"])
	_ENV["jmt"..i]:setTextColor(0xff545454)
--_ENV["jmt"..i]:setText(stab[i].."")
	end
	end


	_ENV["layout"..当前ui]:setVisibility(View.VISIBLE)
	YoYoImpl:with("FadeIn"):duration(500):playOn(_ENV["layout"..当前ui])
	XG.controlBig(_ENV["jm"..当前ui],100)
	_ENV["jm"..当前ui]:setBackground(slcta)
	_ENV["jmt"..当前ui]:setTextColor(0xffffffff)
--_ENV["jmt"..当前ui]:setText(stab[当前ui].."")
	end)
--end):start()
end
end
function adView(tmp,x)
local function invoke()
_ENV[tmp]:addView(x)
end
luajava.post(invoke)
end
function XG.line()
return luajava.loadlayout ( {
	LinearLayout ,
	layout_width = 'fill_parent' ,
	
	    layout_height = "3dp" ,
		background = pe0,
		
})
end
function getShape9()
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(25)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({0xffc1c1c1,0xf6ffffff,0xffffffff})
jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
jianbians:setStroke(15,"00000000")--边框宽度和颜色
return jianbians
end
function initbg()
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(10)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({
--0x00444444,0x00ffffff
	0xff191A1D,0xff191A1D
})
jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
jianbians:setStroke(0,0xff000000)--边框宽度和颜色
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
pe0 = getShape8()
function getShape(tmp0,tmp1,tmp2,tmp3)
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(tmp0)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors(tmp1)
jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
jianbians:setStroke(0,tmp3)--边框宽度和颜色
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
libai_but=getRes("libai_but")
checkbg = getVerticalBG({0xff828282,0xff828282},95,45,0x00232323)
checkbga = getShape(
	45,
	{
		0xff35BE45,0xff35BE45
	},
	8,0x0035BE45)
checkbg1 = getVerticalBG({0xff545454,0xff545454},95,9,0xff353638)
checkbg2 = "https://out.zxglife.top/view.php/802144621ac872f0e1ec99ca525b8177.png"
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
vibra:vibrate(14)
luajava.runUiThread(function()
	luajava.getIdValue(nid.."k"):setVisibility(View.GONE)
	YoYoImpl:with("FadeInLeft"):duration(300):playOn(switches["2s"..sname])
	luajava.getIdValue(nid.."g"):setVisibility(View.VISIBLE)
--luajava.getIdValue(nid):setBackground(checkbga)
	end)
_ENV[name] = "开"
pcall(func1)
else
	vibra:vibrate(14)
luajava.runUiThread(function()
	luajava.getIdValue(nid.."g"):setVisibility(View.GONE)
	YoYoImpl:with("FadeInRight"):duration(300):playOn(switches["1s"..sname])
	luajava.getIdValue(nid.."k"):setVisibility(View.VISIBLE)
--luajava.getIdValue(nid):setBackground()
	end)
_ENV[name] = "关"
pcall(func2)
end
end
end
end
chazhi = {} chajv = {}
function XG.seek (name , bian , smin , smax , nows)
_ENV [bian] = nows
smin = tonumber (smin) smax = tonumber (smax)
chajv [bian] = smax - smin
chazhi [bian] = 1 - smin
if smin == nil then
smin = 1 smax = 10
end
truesmin = 1
truesmax = truesmin + chajv [bian]
if not nows then
nows = smin tnows = (smin - nows)
else
	tnows = (nows - smin) + 1
end
if _ENV [bian] == nil then
_ENV [bian] = nows
end
if not name then
name = "未设置"
end
local names = name..guid ()
rest = luajava.loadlayout ( {
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
			id = luajava.newId (names) ,
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
				onProgressChanged = function (SeekBar , var2 , var3)
				if not var3 then
				return
				end
				local resultvar = tonumber (string.sub (var2 , 0 , -3)) - chazhi [bian]
				luajava.runUiThread (function ()
					luajava.getIdValue (names) : setText (name..":"..resultvar)
					end

				)
				_ENV [bian] = resultvar
				end

			}
		}
	}
})

return rest
end
function XG.edit (name , hint)
if not hint then
local hint = ""
end
_ENV [name] = name..guid ()
if not name then
name = "点击输入文字"
end
rest = luajava.loadlayout ( {
	LinearLayout ,
	layout_width = 'fill_parent' ,
	{
		LinearLayout ,
		layout_width = 'fill_parent' ,
		layout_height = "30dp" ,
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
			textSize = "15sp",
			layout_height = "45dp" ,
			layout_marginBottom = "-2dp",
			id = luajava.newId (_ENV [name]) ,
			layout_width = 'fill' ,
			layout_marginLeft = "10dp" ,
			layout_marginRight = "10dp" ,
		}
	}
})

return rest
end

function XG.getedit (name)
edit = tostring (luajava.getIdValue (_ENV [name]) : getText ())
return edit
end

function XG.setedit (name , txt)
txt = tostring (txt)
luajava.runUiThread (function ()
	luajava.getIdValue (_ENV [name]) : setText (txt)
	end

)
end

function 开关4(name , func1 , func2 , nid)
_ENV [name] = "关"
if func1 == nil then
func1 = ""
end
if func2 == nil then
func2 = ""
end
if type (func1) == "function" then
return function ()
vibra:vibrate(4)
namers = _ENV [name]
if namers ~= "开" then
luajava.runUiThread (function ()
	luajava.getIdValue (nid) : setBackground (luajava.getBitmapDrawable ("/sdcard/长安/图片/quarkcheckon"))
	end

)
_ENV [name] = "开"
pcall (func1)
else
	luajava.runUiThread (function ()
	luajava.getIdValue (nid) : setBackground (luajava.getBitmapDrawable ("/sdcard/长安/图片/quarkcheckoff"))
	end

)
_ENV [name] = "关"
pcall (func2)
end

end

end
end
function XG.button (txt , func)
if not txt then
txt = "未设置"
end
local tid = guid ()..guid ()
_ENV [tid] = luajava.loadlayout (
	{
		LinearLayout ,
		layout_width = 'fill_parent' ,
	layout_height = "35dp" , {
			LinearLayout ,
			layout_width = "fill_parent" ,
			gravity = "center_horizontal" ,
			layout_marginTop = "2dp" ,
			layout_marginBottom = "2dp" ,
layout_height = "30dp" ,
			background = "https://out.zxglife.top/view.php/93c551d444c6038874d514bc2f64eeca.png",
			onClick = function ()
			XG.controlWater (_ENV [tid] , 200)
			luajava.newThread (function ()
				vibra:vibrate(4)
				pcall (func)
				end

			) : start ()
			end

			,
			{
				TextView ,
				text = txt ,
				padding = "2dp",
				textColor = "#ffffff",
				textSize = "17sp" ,
				layout_width = "wrap_content" ,
			} ,
		}
	})
return _ENV [tid]
end

function visi (tid , ttid)
local tview = luajava.getIdValue (tid)
local ttview = luajava.getIdValue (ttid)
if not tview then
return 0
end
vibra:vibrate(13)
if tonumber (tostring (tview : getVisibility ())) == 8.0 then
tview : setVisibility (View.VISIBLE)
XG.controlRotation3(boxpic[tid],0,-90)
else
	tview : setVisibility (View.GONE)
XG.controlRotation3(boxpic[tid],-90,0)
end
end
boxes = {} boxpic = {}
function XG.box (views)
local tid = "box"..guid ()
boxpic[tid] = luajava.loadlayout {
	ImageView ,
	background = "/sdcard/长安/图片/sword" ,
	layout_width = "20dp" ,
	layout_height = "30dp" , 
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
	layout_height = "30dp" ,
	gravity = "center_vertical" ,
	layout_marginTop = "2dp" ,
	layout_marginBottom = "4dp" ,
	onClick = function ()
	visi (tid , ttid)
	end
	,
	background = "https://out.zxglife.top/view.php/93c551d444c6038874d514bc2f64eeca.png",
	{
		LinearLayout ,
		layout_marginLeft = "10dp" ,
		layout_width = "30dp" ,
		layout_height = "30dp" ,
		gravity = "center",
		boxpic[tid],
	} ,
	{
		TextView , text = views [1] ,
		textSize = "16sp" ,
		layout_width = "100dp" ,
		textColor = "#ffffff" ,
		gravity = "left" ,
	}
} else
	gg.alert ("XG.box第一个参数必须是string") os.exit ()
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

function launch(pkg)
隐藏()
gg.setProcess(pkg)
gg.sleep(500)
if tostring(gg.getTargetPackage()) == pkg then
gg.toast("进程已选择:"..pkg)
return 0
end
gg.toast("正在启动游戏...")
print(gg.isPackageInstalled(pkg))
app.start(pkg)
jci = 0
--gg.sleep(5000)
while true do
gg.setProcess(pkg)
gg.sleep(400)
if tostring(gg.getTargetPackage()) == pkg then
gg.alert("启动成功")
break
else
	jci = jci+1
if jci == 14 then
gg.alert("自动获取进程失败\n请手动选择游戏进程")
gg.setProcessX()
break
end
end
gg.sleep(100)
end
end
switches = {}
function XG.switch(name,func1,func2,miaoshu)
nid = name..guid()
local func = 开关3(name,func1,func2,nid)
if not name then name = "未设置" end
switches["1s"..nid] = luajava.loadlayout {
	FrameLayout,
	layout_width = '220dp',
	layout_height = "40dp",
	layout_marginTop = "5dp" ,
		layout_marginBottom = "5dp" ,
	padding = "1dp",
	
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
	layout_width = '55dp',
	layout_marginRight = "10dp",
	layout_marginLeft = "-10dp",
	layout_height = '25dp',
	gravity = "center_vertical",
	padding = {
		"6dp","0dp","6dp","0dp"
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
	layout_height = "32dp",
	gravity = "center_vertical",
	{
		LinearLayout,
		onClick = function() luajava.newThread(function() func() end):start() end,
		layout_width = 'fill_parent',
		layout_height = "37dp",
		gravity = "center_vertical",
		background = getShape10(),
{LinearLayout,
			layout_width="30dp",
			layout_height="30dp",
layout_marginLeft="5dp",
background = "https://out.zxglife.top/view.php/13a02c8b3d89fe3b28d6c6c5e672afd6.png",
			},
		{
			TextView,
			gravity = "left",
			text = name,
textColor="#ff000000",
			textSize = "14sp",
layout_marginLeft="5dp",
			layout_width = '117dp',
		},
		{

			FrameLayout,
			background = checkbg,
			elevation = "10dp",
			onClick = function() luajava.newThread(function() func() end):start() end,
			layout_width = '58dp',
			layout_height = '20dp',
			padding = "0dp",
			gravity = "center",
			switches["1s"..nid],switches["2s"..nid]
		}}
})
return rest
end
function XG.switch(name,func1,func2,miaoshu)
nid = name..guid()
local func = 开关3(name,func1,func2,nid)
if not name then name = "未设置" end
switches["1s"..nid] = luajava.loadlayout {
	FrameLayout,
	layout_width = '58dp',
	layout_marginRight = "10dp",
	layout_marginLeft = "-10dp",
	layout_height = '20dp',
	gravity = "center_vertical",
	padding = {
		"6dp","0dp","6dp","0dp"
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
	layout_width = '58dp',
	layout_marginRight = "10dp",
	layout_marginLeft = "-10dp",
	layout_height = '20dp',
	gravity = "center_vertical",
	padding = {
		"6dp","0dp","6dp","0dp"
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
	layout_height = "37dp",
	gravity = "center_vertical",
	{
		LinearLayout,
		layout_width = 'fill_parent',
		layout_height = "34dp",
		gravity = "center_vertical",
		background = getShape10(),
	{LinearLayout,
			layout_width="30dp",
			layout_height="30dp",
layout_marginLeft="5dp",
background = "https://out.zxglife.top/view.php/13a02c8b3d89fe3b28d6c6c5e672afd6.png",
			},
			{
			TextView,
			gravity = "left",
			text = name,
textColor="#ff000000",
			textSize = "14sp",
layout_marginLeft="5dp",
			layout_width = '117dp',
		},
		{

			FrameLayout,
			background = checkbg,
			elevation = "10dp",
			onClick = function() luajava.newThread(function() func() end):start() end,
			layout_width = '58dp',
			layout_height = '20dp',
			gravity = "center",
			switches["1s"..nid],switches["2s"..nid]
		}}
})
return rest
end

function getShape(tmp0,tmp1,tmp2,tmp3)
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(tmp0)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({
	tmp1,tmp2
})
return jianbians
end
function XG.text(txt,color,size)
if not txt then txt = "未设置文字" end
if not color then color = "#ff191A1D" end
if not size then size = "15sp" end
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
function tuichu()
bloc("end")
end

function XG.radio(radio )
	firadio = {
		LinearLayout ,
		layout_width = 'fill_parent' ,
		layout_height = "wrap_content" ,
		orientation = "vertical",
background = getShape10(),
	}
	if type(radio [ 1 ] ) == "string" or type(radio [ 1 ] ) == "number" then
		firadio [ # firadio + 1 ] = {
			TextView , text = radio [ 1 ] , textColor = "#ffffff" ,
			textSize = "16sp" ,
		}
	end
	radios = {
		RadioGroup ,  layout_width = 'fill_parent' , layout_height = "wrap_content" ,
	}
	for i = 2 , # radio do
		radios [ # radios + 1 ] = {
			RadioButton ,
			layout_width = 'fill_parent' ,
			text = radio [ i ] [ 1 ] ,
			textColor = "#ff000000" ,
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
function XG.check (cklist)
rest = {
	LinearLayout ,
	layout_width = 'match_parent' ,
	layout_height = "wrap_content" ,
	layout_marginTop = "5dp" ,
		layout_marginBottom = "5dp" ,
	gravity = "top" ,
	orientation = "vertical" ,

background = getShape10(),

}
if type (cklist [1]) == "string" then
rest [# rest + 1] = {
	TextView ,
	gravity = "left" ,
	text = cklist [1] ,
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
local name = cklist [i] [1]
local func1 = cklist [i] [2]
local func2 = cklist [i] [3]
local nid = cklist [i] [4]
if type (func1) == "table" then
os.exit ()
end
if not name then
name = "未设置"
end
nid = name..guid ()
local func = 开关4 (nid , func1 , func2 , nid)
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
	XG.controlWater (_ENV [tid] , 200)
	luajava.newThread (function ()
		func ()
		end

	) : start ()
	end

	,
	{
		ImageView ,
		id = luajava.newId (nid) ,
		layout_width = '40dp' ,
		layout_height = "40dp" ,
		background = "/sdcard/长安/图片/quarkcheckoff" ,
	} , {
		TextView ,
		gravity = "top" ,
		text = name ,
		textColor = "#000000" ,
		layout_width = 'wrap_content' ,
		layout_height = 'wrap_content' ,
		layout_marginLeft = "4dp" ,
		layout_marginRight = "5dp" ,
	}
})
rest [# rest + 1] = _ENV [tid]
end
return luajava.loadlayout (rest)
end
gg.setVisible(false)
luajava.setFloatingWindowHide(true)

YoYoImpl = luajava.getYoYoImpl()
vibra = context:getSystemService(Context.VIBRATOR_SERVICE)

xfcpic = "https://vip.kyun.top/view.php/74d842b9e435469182c5bcefde9fd4b4.png"

stab = {
-- 菜单标题
	"主页区" ,
	"防封区" ,
	"刷号区" ,
	"竞赛区" ,
	"音乐区" ,
	"互动区" ,
	"设置区"
}

XG.menu ("北城内部" , -- 大标题
	{
	{
XG.text ("主页") , 
XG.line(),

},{
XG.text ("防封") , 
XG.line(),



},{

XG.text ("刷号") , 
XG.line(),



},{

XG.text ("竞赛") , 
XG.line(),




},{

XG.text ("音乐") , 
XG.line(),


},{

XG.text ("互动") , 
XG.line(),



},{

XG.text ("设置") , 
XG.line(),
XG.button ("退出",
tuichu),
}
	})
function proo()
XG.controlRotation2(control1,3000)
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