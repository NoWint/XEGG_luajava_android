
function particle(text1,text2,color)
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
    height: 15vw;
    /* 弹性布局 水平+垂直居中 */
    display: flex;
    justify-content: center;
    align-items: center;
    background-color: #00000000;
}
h1{
    /* 文本透明 */
    color: transparent;
    font-size: 15px;
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
    animation: move 3s linear infinite;
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
    <h1>]]..text2..[[</p></h1>
    

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
vibra = context:getSystemService(Context.VIBRATOR_SERVICE)
function getVerticalBG(gtvb1,gtvb3,gtvb4,gtvb5)
if not gtvb4 then gtvb4 = 0 gtvb5 = 0xff000000 end
local jianbians = luajava.new(GradientDrawable)
jianbians:setOrientation(GradientDrawable.Orientation.TL_BR)
jianbians:setCornerRadius(gtvb3)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors(gtvb1)
jianbians:setStroke(gtvb4,gtvb5)--边框宽度和颜色
return jianbians
end
changan = {}
local changan = changan
local android = import('android.*')
function write(fileName, content)
file.write(fileName, content)
end
function panduan(rec) fille,err = io.open(rec) if fille == nil then return false else return true end end
function pdcf(lujing) rec = "/sdcard/长安/配置文件/"..lujing fille,err = io.open(rec) if fille == nil then return false else return true end end
sleep = gg.sleep
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
end
end
ckimg = {
	"sj",
	"hsj",
}
for i = 1,#ckimg do
jindu = i
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
function getj7()
jianbian6 = luajava.new(GradientDrawable)
jianbian6:setCornerRadius(20)
jianbian6:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbian6:setColors({
	0x002F3032,0x002F3032
})
jianbian6:setStroke(3,"0xff0091FE")--边框宽度和颜色
return jianbian6
end


slctb = luajava.loadlayout {
	GradientDrawable,
	color = "#dd000000",
	cornerRadius = 30
}
slctb:setStroke(8,"0x68000000")
slcta = luajava.loadlayout {
	GradientDrawable,
	color = "#83959E",
	cornerRadius = 30
}
slcta:setStroke(8,"0x68000000")
slctc = luajava.loadlayout {
	GradientDrawable,
	color = "#11ffffff",
	cornerRadius = 1
}
slctd = luajava.loadlayout {
	GradientDrawable,
	color = "#55ffffff",
	cornerRadius = 1
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
function getSelector4()
selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, luajava.loadlayout {
	GradientDrawable,
	color = 0x76000000,
	cornerRadius = 30
}) -- 点击时候的背景
selector:addState({
	-android.R.attr.state_pressed
}, luajava.loadlayout {
	GradientDrawable,
	color = 0x76000000,
	cornerRadius = 30
}) -- 没点击的背景
return selector
end
function getSelector3()
selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, luajava.loadlayout {
	GradientDrawable,
	color = "#b9b9b9",
	cornerRadius = 30
}) -- 点击时候的背景
selector:addState({
	-android.R.attr.state_pressed
}, luajava.loadlayout {
	GradientDrawable,
	color = "#EFEFEF",
	cornerRadius = 30
}) -- 没点击的背景
return selector
end
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
function 获取图片(txt)
--gg.toast("正在加载资源...")
txt = file.checkUrl(txt)
return luajava.getBitmapDrawable(txt)
end
local isswitch
YoYoImpl = luajava.getYoYoImpl()
changan.menu = function(sview)
for i = 1,#bglist do
if type(bglist[i])=="string" then
bglist[i] = 获取图片(bglist[i])
end end
if isswitch then
return false
end
suofang = function(v, event)
if 缩放 == nil then
			local Action = event:getAction()
			if Action == MotionEvent.ACTION_DOWN then
				isMove = false
				RawX = event:getRawX()
				RawY = event:getRawY()
				x = mainLayoutParams.height
				y = mainLayoutParams.width
				if x==0 or x==-2 then x=1700 y=1300 end
				elseif Action == MotionEvent.ACTION_MOVE then
				isMove = true
				mubx=tonumber(x) + (event:getRawY() - RawY)
				if mubx>=180 and mubx<=5000 then
					mainLayoutParams.height = mubx
				end
				muby=tonumber(y) + (event:getRawX() - RawX)
				if muby>=200 and muby<=5000 then
					mainLayoutParams.width = muby
				end

				window:updateViewLayout(floatWindow, mainLayoutParams)
			end
	    end
	end
isswitch = true
cebian = {
	LinearLayout,
	id = "侧边",
	layout_height = "wrap_content",
	layout_width = "match_parent",
	orientation = "horizontal",
	gravity = "center_vertical",
	background = {
		GradientDrawable,
		color = "#00ffffff",
		cornerRadius = 10
	},
}
for i = 1,#stab do
cebian[#cebian+1] = {
	LinearLayout,
	id = "jm"..i,
	layout_height = "30dp",
	layout_width = "50dp", 
	layout_marginTop = "3dp",
	layout_marginBottom = "3dp",
	layout_marginRight = "1dp",
	layout_marginLeft = "10dp",
	background = getSelector(),
	onClick = function() 切换(i+1) end,
	{
		TextView,
		text = stab[i],
		gravity = "center",
		textSize = "15sp",
		textColor = "#"..颜色2,
		layout_height = "30dp",
		layout_width = "48dp",
	}}
end
cebian = luajava.loadlayout(
	{
		HorizontalScrollView,
		visibility = "gone",
		layout_height = "wrap_content",
		layout_width = RawX,
		cebian
	})
for i = 1,#stab+2 do
_ENV["layout"..i] = luajava.loadlayout({
	LinearLayout,
	layout_width = "match_parent",
	layout_height = muby,
	visibility = "gone",
	orientation = "vertical",
	background={
		GradientDrawable,
		color = beij,
		cornerRadius = 20
	},
	{
		TextView,
		visibility="gone",
		layout_width = "match_parent",
		padding = {
			"10dp","10dp","10dp","2dp"
		},
		layout_height = "30dp",
		text = stab[i],
		textColor = "#FFFFFF",
		textSize = "20sp",
	},
	{
		ScrollView,
		fillViewport = "true",
--padding = "10dp",
		gravity = "center",
		layout_width = "match_parent",
		layout_height = muby,
		orientation = "horizontal",
		{
			LinearLayout,
			id = "layoutm"..i,
			layout_marginRight = "5dp",
			layout_marginLeft = "5dp",
			layout_width = "match_parent",
			orientation = "vertical",
			gravity = "center_horizontal",
		}
	}})
end
ckou = {
	LinearLayout,
	id = "chuangk",
	visibility = "visible",
	layout_width = "match_parent",--UI宽度↑
	layout_height = "match_parent",
	orientation = "vertical",
	{
		LinearLayout,
		orientation = "horizontal",
		padding = "2dp",
		gravity="center_vertical",
		{
			TextView,
			textSize = "16sp",
			text = stitle,
			id = "titlebar",
			visibility = "gone",
			textColor = "#003781",
			layout_width = "33dp",
			layout_height = "30dp",
			gravity = "center",
			onClick = function() 切换(1) cebian:setVisibility(View.GONE) vibra:vibrate(6) end,
			onTouch = hanshu,
		},
		cebian,
		{ImageView,
		src=获取图片("https://wp.td88.cyou/view.php/e14ab0194a906aea7aa960b0f5fc4ng"),
		padding="10dp",
		layout_height="20dp",
		layout_width="20dp",
		onTouch=hanshu,
		}
	},
	{
		LinearLayout,
		id="tline",
		visibility="gone",
		layout_marginBottom = "12dp",
		layout_marginTop = "1dp",
		layout_width = "fill_parent",
		layout_height = "2dp",
		background = "#D7D7D7"
	}
}
motion=luajava.loadlayout({FrameLayout,
			id = "motion",
			layout_width = "match_parent",
			layout_height="match_parent",
			gravity="center",
			{LinearLayout,
				background="https://wp.td88.cyou/view.php/0932311ec87c431165a4882ed28a2578.png",
				id="jiaobiao",
				visibility="gone",
				layout_gravity="right|bottom",
				onClick=function() end
			},
		{LinearLayout,
		id ="yc",
		visibility = "visible",
		background="https://wp.td88.cyou/view.php/e14ab0194a906aea7aa960b0f5fc4e94.png",
		padding="10dp",
		layout_height="15dp",
		layout_width="15dp",
		layout_marginTop="10dp",
		layout_marginRight="8dp",
		layout_gravity="right",
		onClick= function()
		ycg=mainLayoutParams.height
		yck=mainLayoutParams.width
		mainLayoutParams.height=100
		mainLayoutParams.width=100
		window:updateViewLayout(floatWindow, mainLayoutParams)
		ckou:setVisibility(View.GONE)
		titlebar:setVisibility(View.GONE)
		jiaobiao:setVisibility(View.GONE)
	ckou:setBackground(beij2)
	yc:setVisibility(View.GONE)
	control:setVisibility(View.VISIBLE) 显示 = 0
	cebian:setVisibility(View.GONE)
	_ENV["layout"..当前ui]:setVisibility(View.GONE)
	vibra:vibrate(6)
	end, 
		onTouch=hanshu,
		}

		})
for i = 1,#stab+2 do
ckou[#ckou+1] = _ENV["layout"..i]
end
ckou = luajava.loadlayout(ckou)
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
	ckou,
	{
		ImageView,
		id = "control",
		background = 获取图片(xfcpic),
		layout_width = "40dp",
		layout_height = "40dp",
		onTouch = hanshu,
		onClick = function() 隐藏() cebian:setVisibility(View.GONE) 切换(1) vibra:vibrate(6) end,
	},
	motion
}
local function invoke()
local ok
local RawX, RawY, x, y
mainLayoutParams = getLayoutParams()
floatWindow = luajava.loadlayout(floatWindow)
local function invoke2()
block('start')
for k = 1,#stab+2 do
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
jiaobiao.onTouch = suofang
local isMove
end
invoke(swib1,swib2)
gg.setVisible(false)
luajava.setFloatingWindowHide(true)
end
function getseekgra()
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(10)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({
	0x6600c6ff,0x660072ff
})
jianbians:setStroke(2,"0x44ffffff")--边框宽度和颜色
return jianbians
end
corbk = true
当前ui = 1
function 切换(x)
当前ui = x
luajava.runUiThread(function()
	for i = 1,#stab+2 do
	_ENV["layout"..i]:setVisibility(View.GONE)
	end
	_ENV["layout"..当前ui]:setVisibility(View.VISIBLE)
	YoYoImpl:with("FadeIn"):duration(200):playOn(_ENV["layout"..当前ui])
	end)
end
显示 = 0
beij = luajava.new(GradientDrawable)
beij:setCornerRadius(30)
beij:setGradientType(GradientDrawable.LINEAR_GRADIENT)
beij:setColors(({0xcc000000,0xee00f7ff,0xcc000000}))--背景
beij:setStroke(8,"0xff222222")--边框宽度和颜色
beij2 = luajava.new(GradientDrawable)
beij2:setCornerRadius(30)
beij2:setGradientType(GradientDrawable.LINEAR_GRADIENT)
beij2:setColors(({0xcc000000,0xee00f7ff,0xcc000000}))--背景
beij2:setStroke(8,"0xff222222")--边框宽度和颜色
function getcolor(cl)
cl[1] = tonumber(math.ceil(cl[1]*2.6,0,5))
if cl[1] > 255 then cl[1] = "0xff" else
	cl[1] = "0x"..string.format("%x",cl[1]) end
for i = 1,3 do
cl[i+1] = string.format("%x",cl[i+1])
if string.len(cl[i+1]) == 1 then cl[i+1] = "0"..cl[i+1] end
end
cl = cl[1]..cl[2]..cl[3]..cl[4]
return cl
end
function getrgb(cl)
if string.sub(cl,1,1) == "#" then cl = "0x"..string.sub(cl,2,-1) end
cl = {
	tonumber(string.sub(cl,0,4)),tonumber("0x"..string.sub(cl,5,6)),tonumber("0x"..string.sub(cl,7,8))}
return cl
end
显示 = 0
function 隐藏()
luajava.runUiThread(function()
	if tonumber(tostring(cebian:getVisibility())) == 8.0 then
	control:setVisibility(View.GONE)
	if not yck then ycg=850 yck=650 end
	mainLayoutParams.height=ycg
	mainLayoutParams.width=yck
	window:updateViewLayout(floatWindow, mainLayoutParams)
	显示 = 1
	ckou:setVisibility(View.VISIBLE)
	titlebar:setVisibility(View.VISIBLE)
	cebian:setVisibility(View.VISIBLE)
	jiaobiao:setVisibility(View.VISIBLE)
	yc:setVisibility(View.VISIBLE)
	YoYoImpl:with("SlideInDown"):duration(200):playOn(cebian)
	_ENV["layout"..当前ui]:setVisibility(View.VISIBLE)
	YoYoImpl:with("FadeIn"):duration(800):playOn(_ENV["layout"..当前ui])
	ckou:setBackground(beij)
	else
	    ycg=mainLayoutParams.height
		yck=mainLayoutParams.width
		mainLayoutParams.height=100
		mainLayoutParams.width=100
		window:updateViewLayout(floatWindow, mainLayoutParams)
		ckou:setVisibility(View.GONE)
		titlebar:setVisibility(View.GONE)
		jiaobiao:setVisibility(View.GONE)
	ckou:setBackground(beij2)
	yc:setVisibility(View.GONE)
	control:setVisibility(View.VISIBLE) 显示 = 0
	cebian:setVisibility(View.GONE)
	_ENV["layout"..当前ui]:setVisibility(View.GONE)
	end
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
local function exit()
tuichu = 1
luajava.setFloatingWindowHide(false)
luajava.post(function()
	window:removeView(floatWindow)
	end)
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
if 音量键 == nil then
if qhkai == 0 then
qhkai = 1
draw.remove()
gg.toast("已隐藏")
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
--draw.text('.', -9200,-9200)
luajava.runUiThread(function() floatWindow:setVisibility(View.VISIBLE) end)
luajava.runUiThread(function()
	changan.controlBig(floatWindow,400)
	end)

end
end
end
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
changan.controlFlip2 = function(control,time)
	luajava.runUiThread(function()
		import "android.view.animation.Animation"
		import "android.animation.ObjectAnimator"
		xuanzhuandonghua = ObjectAnimator:ofFloat(control, "rotationY", {0, 360})
		xuanzhuandonghua:setRepeatCount(0)
		xuanzhuandonghua:setRepeatMode(Animation.REVERSE)
		xuanzhuandonghua:setDuration(time)
		xuanzhuandonghua:start()
	end
	)
end
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
chazhi={} chajv={}
function changan.seek(name,bian,smin,smax,nows)
_ENV[bian] =nows
thum=lt3()
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
	layout_height = "38dp",
	gravity = "center_vertical",
	background = luajava.loadlayout({
							GradientDrawable,
							color = 0x76000000,
							cornerRadius = 20
						}),
	{
		LinearLayout,
		layout_width = 'fill_parent',
		layout_hight = "fill_parent",
		gravity = "center_vertical",
					
		{
			TextView,
			gravity = "top",
			textColor="#FFFFFF",
			textSize="14sp",
			text = name..":"..nows,
			id = luajava.newId(names),
			layout_width = '70dp',
			layout_marginLeft = "10dp",
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
			progressDrawable={ getVerticalBG({0xff232323,0xff232323},180)},
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
function 开关3(name,func1,func2,nid)
name = name..guid()
_ENV[name] = "关"
if func1 == nil then func1 = function() end end
if func2 == nil then func2 = function() end end
if type(func1) == "function" then
return function()
namers = _ENV[name]
if namers ~= "开" then
luajava.runUiThread(function()
	changan.controlWater(_ENV[nid],200)
	luajava.getIdValue(nid):setBackground(check2)
	luajava.getIdValue(nid.."k"):setVisibility(View.GONE)
	luajava.getIdValue(nid.."g"):setVisibility(View.VISIBLE)
	end)
_ENV[name] = "开"
vibra:vibrate(6)
pcall(func1)
else
	luajava.runUiThread(function()
	changan.controlWater(_ENV[nid],200)
	luajava.getIdValue(nid):setBackground(check1)
	luajava.getIdValue(nid.."g"):setVisibility(View.GONE)
	luajava.getIdValue(nid.."k"):setVisibility(View.VISIBLE)
	end)
_ENV[name] = "关"
vibra:vibrate(6)
pcall(func2)
end
end
end
end
function lt3()
lt = luajava.new(GradientDrawable)
lt:setCornerRadius(80)
lt:setGradientType(GradientDrawable.LINEAR_GRADIENT)
lt:setColors({
	0x6AFFFFFF,0x6AFFFFFF
})
lt:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
lt:setStroke(8,0xFFFFFFFF)--边框宽度和颜色
return lt
end
function getShape3()
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(20)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({
	0x6AFFFFFF,0x6AFFFFFF
})
jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
jianbians:setStroke(8,0xaa80C3F9)--边框宽度和颜色
return jianbians
end
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
jianbians:setStroke(15,tmp3)--边框宽度和颜色
return jianbians
end
function getShape0(tmp0,tmp1,tmp2,tmp3)
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(tmp0)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors(tmp1)
jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
jianbians:setStroke(30,tmp3)--边框宽度和颜色
return jianbians
end
check1 = getShape(
	45,
	{
		0xfffffffff,0xff003781
	},
	4,0xff00)
check2 = getShape(
	45,
	{
		0xffffffff,0xff003781
	},
	4,0xff00)
checkbg1 = getShape0(
	90,
	{
		0xff036FFF,0xffFF9DBC
	},
	4,0x00ff003781)
checkbg2 = getShape2(
	90,
	{
		0xfffffffff,0xff003781
	},
	4,0xff00)
function changan.intcheck(name,func1,func2,qdtp)
	nid = name..guid()
	local func = 开关3(name,func1,func2,nid)
	if not name then name = "未设置" end
	local rest = luajava.loadlayout({
		LinearLayout,
		layout_width = 'match_parent',
		layout_height = "45dp",
		layout_marginTop = "1dp",
		layout_marginBottom = "2dp",
		padding = "1dp",
		{
			LinearLayout,
			onClick = function()
					func()
			end,
			layout_width = 'match_parent',
			layout_height = "match_parent",
			gravity = "center_vertical",
			background = getShape3(),
			onClick = function()
					pcall(func)
			end,
						{
		ImageView,
		id = "control",
		background = qdtp,
		layout_width = "40dp",
		layout_height = "40dp"
		},
			{
				TextView,
				gravity = "left",
				text = name,
				textColor="#ffffff",
				textSize = "12sp",
				layout_marginLeft="6dp",
				layout_width = 'match_parent',
			}}
	})
	return rest
end
function changan.image(tup,zbj,ybj,func)
return luajava.loadlayout(
				{
					LinearLayout,
					layout_width = '220dp',
					layout_hight = "10dp", {
						LinearLayout,
						layout_width = "fill_parent",
						gravity = "center_horizontal",
						layout_marginTop = "5dp",
						layout_marginBottom = "1dp",
						layout_marginLeft = zbj,
		             	layout_marginRight = ybj,
						background = tup,
						onClick = func,
						
					}})
end
function changan.line()
return luajava.loadlayout({
	LinearLayout,
	layout_width = "fill_parent",
	layout_height = "2dp",
	background = "#0095FF",
})
end
function changan.button(name,func1,func2)
	local func = 开关(name..guid(),func1,func2)
	if not name then name = "未设置" end
	local rest = luajava.loadlayout({
		LinearLayout,
		layout_width = '220dp',
		layout_height = "30dp",
		layout_marginTop="5dp",
		layout_marginBottom="5dp",
		{
			LinearLayout,
			layout_width = '220dp',
			layout_height = "30dp",
			gravity = "center_vertical",
			background = getShape3(),
			{
				TextView,
				gravity = "top",
				text = name,
				layout_width = '150dp',
				layout_marginLeft = "10dp",
			},
			{
				Switch,
				gravity = "top",
				layout_width = 'match_parent',
				layout_hight = "10dp",
				--id=luajava.newId(tid),
				switchMinWidth = "20dp",
				onCheckedChange = function(Switch,var2,var3)
					if var2 == true then var2 = "开" else var2 = "关" end
					luajava.newThread(function() vibra:vibrate(6) func() end):start()
				end,
			}}
	})
	return rest
end

function changan.edit(name)
	_ENV[name] = name..guid()
	if not name then name = "点击输入文字" end
	local rest = luajava.loadlayout({
		LinearLayout,
		layout_width = 'fill_parent',
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
			background = getSelector3(),
			{
				EditText,
				gravity = "top",
				hint = name,
				gravity = "center",
				id = luajava.newId(_ENV[name]),
				layout_width = 'fill',
				layout_marginLeft = "10dp",
				layout_marginRight = "10dp",
			}}
	})
	return rest
end
function changan.radio(radio)
	firadio = {
		LinearLayout,
		layout_width = 'fill_parent',
		layout_hight = "fill_parent",
		padding = "10dp",
		orientation = "vertical"
	}
	if type(radio[1]) == "string" or type(radio[1]) == "number" then
		firadio[#firadio+1] = {
			TextView,text = radio[1]} end
	radios = {
		RadioGroup,background = getSelector3(),
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
function changan.check(cklist)
	local rest = {
		GridLayout,
		columnCount = '2',
		layout_width = 'match_parent',
		layout_height = "match_parent",
		layout_marginLeft = "1dp",
		layout_marginRight = "1dp",
		gravity = "center"
	}
	for i = 1,#cklist do
		local name = cklist[i][1]
		local func1 = cklist[i][2]
		local func2 = cklist[i][3]
		local qdtp = cklist[i][4]
		if not name then name = "未设置" end
		rstt = changan.intcheck(name,func1,func2,qdtp)
		rest[#rest+1] = rstt
	end
	return luajava.loadlayout({
		LinearLayout,rest
	})
end
function changan.switch(cklist)
		local rest = {
			GridLayout,
			columnCount = '2',
			layout_width = 'match_parent',
			layout_height = "wrap_content",
			layout_marginLeft = "10dp",
			layout_marginRight = "10dp",
			gravity = "center"
		}
		for i = 1,#cklist do
			local name = cklist[i][1]
			local func1 = cklist[i][2]
			local func2 = cklist[i][3]
			if not name then name = "未设置" end
			rstt = changan.switch(name,func1,func2)
				rest[#rest+1] = rstt
			end
			return luajava.loadlayout({
				LinearLayout,rest
			})
		end
		switchbg = getShape(
		45,
		{
			0xffffffff,0xffffffff
		},
		4,0x00ffffff)
		switchbg1 = getShape2(
		45,
		{
			0xff000000,0xff003781
		},
		4,0x00fffffff)
		switchbg2 = getShape2(
		45,
		{
			0xfffffffff,0xfffffffff
		},
		4,0x00fffffff)
		function changan.switch(name,func1,func2,miaoshu)
				nid = name..guid()
				local func = 开关3(name,func1,func2,nid)
				if not name then name = "未设置" end
				local rest = luajava.loadlayout({
					LinearLayout,
					layout_width = 'fill_parent',
					layout_height = "40dp",
					layout_marginTop = "1dp",
					layout_marginBottom = "1dp",
					padding = "1dp",
					{
						LinearLayout,
						onClick = function()
							changan.controlWater(_ENV[tid],200)
							luajava.newThread(function()
								func()
							end)
							:start()
						end,
						layout_width = 'fill_parent',
						layout_height = "32dp",
						gravity = "center_vertical",
						background = luajava.loadlayout({
							GradientDrawable,
							color = 0x76000000,
							cornerRadius = 13
						}),
						{
							ImageView ,
							layout_marginLeft = "15dp" ,
							background = "http://www.1314love520.top/view.php/4879c5f0e93553c880a0d0d9545f3918.png" ,
							layout_height = "20dp" ,
							layout_width = "20dp" ,
						},
						{
							TextView,
							gravity = "top",
							text = name,
							textColor="#ffffff",
							textSize = "15sp",
							layout_marginLeft="-25dp",
						},
						{
			TextView,
			gravity = "center",
			layout_height = "match_parent",
			text = miaoshu,
			textSize = "11sp",
			layout_width = "130dp",
			layout_marginLeft = "-25dp",
			layout_weight = 1,
			textColor = "#A5A5A5",
		},
						{
							FrameLayout,
							id = luajava.newId(nid),
							background = switchbg,
							layout_width = '45dp',
							layout_height = '23dp',
							padding = "0dp",
							{
								LinearLayout,
								layout_gravity = "left|center",
								id = luajava.newId(nid.."k"),
								background = switchbg1,
								layout_width = '23dp',
								layout_height = '23dp',
							}, {
								LinearLayout,
								visibility = "gone",
								layout_gravity = "right|center",
								id = luajava.newId(nid.."g"),
								background = switchbg2,
								layout_width = '23dp',
								layout_height = '23dp',
							}
						}}
				})
				return rest
			end
		anniu = luajava.loadlayout({
							GradientDrawable,
							color = 0x76000000,
							cornerRadius = 13
						})
		anniu:setStroke(8,"0xff222222")
			function changan.button(txt,func)
				if not txt then txt = "未设置" end
				return luajava.loadlayout(
				{
					LinearLayout,
					layout_width = 'match_parent',
					layout_hight = "30dp", {
						LinearLayout,
						layout_width = "fill_parent",
						gravity = "center_horizontal",
						layout_marginTop = "5dp",
						layout_marginBottom = "5dp",
						background = anniu,
						onClick = function() luajava.newThread(function() pcall(func) end):start() end,
						{
							TextView,
							--id = luajava.newId(tid),
							text = txt,
							textSize = "16sp",
							layout_width = "wrap_content",
						},
					}})
			end
			function changan.text(txt,color,size)
				if not txt then txt = "未设置文字" end
				if not color then color = "#ffffff" end
				if not size then size = "18sp" end
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
			function changan.text1(txt,color,size)
				if not txt then txt = "未设置文字" end
				if not color then color = "#ffffff" end
				if not size then size = "18sp" end
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
			corb = true
			function changan.setedit(name,txt)
				txt = tostring(txt)
				luajava.runUiThread(function()
					luajava.getIdValue(_ENV[name]):setText(txt)
				end)
			end
			function changan.getedit(name)
				--gg.alert(edit)
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
function visi(tid,ttid)
local tview = luajava.getIdValue(tid)
local ttview = luajava.getIdValue(ttid)
if not tview then return 0 end
if tonumber(tostring(tview:getVisibility())) == 8.0 then
tview:setVisibility(View.VISIBLE)
ttview:setBackground(luajava.getBitmapDrawable("/sdcard/长安/图片/hsj"))
else
	tview:setVisibility(View.GONE)
ttview:setBackground(luajava.getBitmapDrawable("/sdcard/长安/图片/sj"))
end
end
function changan.box(views)
local tid = "box"..guid()
local ttid = tid.."6"
local firadio = {
	LinearLayout,
	layout_width = 'fill_parent',
	layout_height = "wrap_content",
	layout_marginTop = "2dp",
	gravity = "center",
	layout_marginBottom = "2dp",
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
	layout_width = '220dp',
	layout_height = "30dp",
	gravity = "center_vertical",
	layout_marginTop = "2dp",
	layout_marginBottom = "4dp",
	onClick = function() visi(tid,ttid) end,
	background = getShape3(),
	
	{
		ImageView,
		layout_gravity = "left|center",
		layout_marginLeft = "10dp",
		id = luajava.newId(ttid),
		background = "/sdcard/长安/图片/sj",
		layout_width = "13dp",
		layout_height = "13dp",
		layout_marginTop = "0dp",
	},
	{
		TextView,text = views[1],
		textSize = "13sp",
		layout_width = "220dp",
		textColor = "#"..颜色2,
		layout_gravity = "center",
		gravity = "center"
	}} else
	gg.alert("changan.box第一个参数必须是string") os.exit()
end
radios = {
	LinearLayout,
	layout_marginLeft = "0dp",
	layout_marginRight = "0dp",
	orientation = "vertical",
	visibility = "gone",
	id = luajava.newId(tid),
	padding = "0dp",
	gravity = "center_horizontal",
	layout_width = 'fill_parent',
}
for i = 2,#views do
radios[#radios+1] = views[i]
end
firadio[#firadio+1] = radios
return luajava.loadlayout(firadio)
end
nowbg=1
function changebg()
	luajava.runUiThread(function()
	if nowbg<#bglist then
		nowbg=nowbg+1
	else
		nowbg=1
	end 
	beij=bglist[nowbg]
	ckou:setBackground(beij)
	end)
end
颜色1 = "80C3F9"--用于标题
颜色2 = "545454"--用于文本
bglist={
	getVerticalBG({0xffffffff,0xffffffff},25,8,0xff232323),
	"https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/pay.png",
	"https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/pay2.png",
	
}
stitle = "    "
stab = {
--菜单名字，添加即可加页数，需要与结尾配置表对应
	"GAME",
	"SDK",
	"PLAY",
	"EXIT",
}
xfcpic = "https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/changan"
--悬浮窗链接或路径
function huiz()
end
changan.menu(
	{
			{
	luajava.loadlayout({
LinearLayout,
layout_width="130dp",
layout_height="130dp",
background="https://wp.td88.cyou/view.php/850f51260e535627cdf6a4d61154136c.png",
onClick = function() 切换(2) cebian:setVisibility(View.VISIBLE) vibra:vibrate(6) end
}),
			particle("YCNB","YC全防-特别版",{"#FFBC42","#ffffff","#FFD992"}),
			changan.text1("Protection Server 1","#FFFFFF","13sp"),
		    changan.intcheck( "全球服",
										function()
do
local r = app.getPackageInfo('com.tencent.ig')
if not r then
gg.alert('请先安装PUBG!')
end
end
app.start("com.tencent.ig")
gg.sleep(500)
checkPkg("com.tencent.ig")
gg.sleep(1000)
gg.alert("开启成功")
										end,
										function()
										end,
									"https://wp.td88.cyou/view.php/d73ad51ad8cc274fe45c0c3f34a00bbd.png"),
		    changan.intcheck( "越南服",
										function()
do
local r = app.getPackageInfo('com.vng.pubgmobile')
if not r then
gg.alert('请先安装PUBG!')
end
end
app.start("com.vng.pubgmobile")
gg.sleep(500)
checkPkg("com.vng.pubgmobile")
gg.sleep(1000)
gg.alert("开启成功")
										end,
										function()
										end,
									"https://wp.td88.cyou/view.php/8afe94b80ac490575a9f75e1866c60c4.png"),
		    changan.intcheck( "台湾服",
										function()
do
local r = app.getPackageInfo('com.rekoo.pubgm')
if not r then
gg.alert('请先安装PUBG!')
end
end
app.start("com.rekoo.pubgm")
gg.sleep(500)
checkPkg("com.rekoo.pubgm")
gg.sleep(1000)
gg.alert("开启成功")
										end,
										function()
										end,
									"https://wp.td88.cyou/view.php/80a758d2aa96841fef490095b9aba951.png"),
		    changan.intcheck( "日韩服",
										function()
do
local r = app.getPackageInfo('com.pubg.krmobile')
if not r then
gg.alert('请先安装PUBG!')
end
end
app.start("com.pubg.krmobile")
gg.sleep(500)
checkPkg("com.pubg.krmobile")
gg.sleep(1000)
gg.alert("开启成功")
										end,
										function()
										end,
									"https://wp.td88.cyou/view.php/b60f0f7dd1f1bd5a1156fb768ad8e3a1.png"),
			changan.line(),
			changan.text1("Protection Server 2","#FFFFFF","13sp"),
			changan.intcheck( "全球服",
										function()
do
local r = app.getPackageInfo('com.tencent.ig')
if not r then
gg.alert('请先安装PUBG!')
end
end
app.start("com.tencent.ig")
gg.sleep(500)
checkPkg("com.tencent.ig")
gg.sleep(1000)
gg.alert("开启成功")
										end,
										function()
										end,
									"https://wp.td88.cyou/view.php/d73ad51ad8cc274fe45c0c3f34a00bbd.png"),
		    changan.intcheck( "越南服",
										function()
do
local r = app.getPackageInfo('com.vng.pubgmobile')
if not r then
gg.alert('请先安装PUBG!')
end
end
app.start("com.vng.pubgmobile")
gg.sleep(500)
checkPkg("com.vng.pubgmobile")
gg.sleep(1000)
gg.alert("开启成功")
										end,
										function()
										end,
									"https://wp.td88.cyou/view.php/8afe94b80ac490575a9f75e1866c60c4.png"),
		    changan.intcheck( "台湾服",
										function()
do
local r = app.getPackageInfo('com.rekoo.pubgm')
if not r then
gg.alert('请先安装PUBG!')
end
end
app.start("com.rekoo.pubgm")
gg.sleep(500)
checkPkg("com.rekoo.pubgm")
gg.sleep(1000)
gg.alert("开启成功")
										end,
										function()
										end,
									"https://wp.td88.cyou/view.php/80a758d2aa96841fef490095b9aba951.png"),
		    changan.intcheck( "日韩服",
										function()
do
local r = app.getPackageInfo('com.pubg.krmobile')
if not r then
gg.alert('请先安装PUBG!')
end
end
app.start("com.pubg.krmobile")
checkPkg("com.pubg.krmobile")
gg.alert("开启成功")
										end,
										function()
										end,
									"https://wp.td88.cyou/view.php/b60f0f7dd1f1bd5a1156fb768ad8e3a1.png")
		
		},
		{--1
			changan.text("GAME防封","#FFFFFF","15sp"),
			changan.text("如果使用了启动游戏的过检测 可以不开防封 也可以自行搭配","#545454","10sp"),
			changan.text("也以不开过检测直接开防如果开过检测了可以直接奔放或者搭配防封","#545454","10sp"),
					changan.switch("LOGO防封",
						function()
							end,
							function()
							end,
					"LOGO界面切屏开启"
					),
					changan.switch("LOGO防闪",
						function()
							end,
							function()
							end,
					"LOGO界面切屏开启"
					),
					changan.button("选择进程",
						function()
							end,
							function()
							end
					),
					changan.switch("大厅①防",
						function()
							end,
							function()
							end,
					nil
					),
					changan.switch("大厅②防",
						function()
							end,
							function()
							end,
					nil
					),
					changan.switch("大厅③防",
						function()
							end,
							function()
							end,
					nil
					),
					changan.switch("全局离线①",
						function()
							end,
							function()
							end,
					"关闭要断网一下"
					),
					changan.switch("全局离线②",
						function()
							end,
							function()
							end,
					"关闭要断网一下"
					),
					changan.button("重置游客",
						function()
							end,
							function()
							end
					),
					changan.button("概率防追",
						function()
							end,
							function()
							end
					),
					
			
			
		}, {changan.seek("拉条演示","ltys",1,500000,6),--名字，变量名字，最小值，最大值，初始值
--2
		}, {

--3
		}, {
		changan.text("\n\n\n"),		
luajava.loadlayout({
LinearLayout,
layout_width="50dp",
layout_height="50dp",
background="https://wp.td88.cyou/view.php/f08db9c31f0f2cd8cf8e6a17c91f9488.png",
onClick = function() app.openUrl("https://t.me/BYNB688") end
}),
			changan.text("\n"),
			changan.button("EXIT",function()
				exit()
				end),
				changan.switch("缩放UI",
						function()
						缩放=nil
						gg.toast("缩放UI已开启")
						end,
						function()
						缩放=1
						gg.toast("缩放UI已关闭")
						end
					),
					changan.switch("音量键隐藏",
						function()
						音量键=nil
						gg.toast("缩放UI已开启")
						end,
						function()
						音量键=1
						gg.toast("缩放UI已关闭")
						end
					),
		}, --页数添加在这里
		  --例如:{},
{
		}
	})
--配置表添加表即可加页数，需要与上边菜单标题数对应
huiz()
--draw.text('.', -9200,-9200)

显示 = 1
while true do
if tuichu == 1 then break end
jianting3(qiehuan)
gg.sleep(120)
end
luajava.setFloatingWindowHide(false)

local function invoke()
return window:removeView(floatWindow)
end
luajava.post(invoke)
luajava.setFloatingWindowHide(false)
