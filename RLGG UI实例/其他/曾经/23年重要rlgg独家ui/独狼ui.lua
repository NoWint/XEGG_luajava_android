



info={
	example_version = '1.0.3',
	name = '测试',
	appid = '26491',
	appkey = 'CNS1gZ2ukoN0K6Ou',
	rc4key = 'PtYm0Aixp0Cx4Cw4',
	version = '1.0',
	mi_type = '3'
}
info2={
	example_version = '1.0.3',
	name = '测试',
	appid = '26491',
	appkey = 'CNS1gZ2ukoN0K6Ou',
	rc4key = 'PtYm0Aixp0Cx4Cw4',
	version = '1.0',
	mi_type = '3'
}

rlyunyz = getrlyunyz(info)
rlyunyz2 = getrlyunyz(info2)


changan={}
function panduan(rec) fille,err = io.open(rec) if fille == nil then return false else return true end end
function checkimg(tmp)
if panduan("/sdcard/长安/图片/"..tmp) ~= true then
gg.toast("正在下载资源"..tmp.."\n请耐心等待")
download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..tmp,"/sdcard/长安/图片/"..tmp)
else
	if file.length("/sdcard/长安/图片/"..tmp) <= 1 then
		gg.toast("正在下载资源"..jindu.."/"..#ckimg.."\n请耐心等待")
		download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..tmp,"/sdcard/长安/图片/"..tmp)
	end
end
end
ckimg = {
	"bm_launch",
	"bm_ff",
	"bm_gn",
	"bm_mh",
	"bm_sz",
	"bm_music",
	"quarkx",
	"quarkconfb",
	'sj','hsj',
}
for i = 1,#ckimg do
jindu = i
checkimg(ckimg[i])
end
YoYoImpl = luajava.getYoYoImpl()
vibra = context:getSystemService(Context.VIBRATOR_SERVICE)
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
function 获取图片(txt)
txt = string.url(txt,"de")
ntxt = string.sub(string.gsub(txt,"/","-"),-10,-1)
if string.find(tostring(txt),"http") ~= nil then
if panduan("/sdcard/长安/图片/"..ntxt) == false then
luajava.download(txt,"/sdcard/长安/图片/"..ntxt)
else
	if file.length("/sdcard/长安/图片/"..ntxt) <= 1 then
luajava.download(txt,"/sdcard/长安/图片/"..ntxt)
end
end
txt = "/sdcard/长安/图片/"..ntxt
end
return luajava.getBitmapDrawable(txt)
end
function getRes(x)
return 获取图片("/sdcard/长安/图片/"..x)
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
changan.controlRotation3 = function(control, time)
luajava.runUiThread(function()
	import "android.view.animation.Animation"
	import "android.animation.ObjectAnimator"
	xuanzhuandonghua = ObjectAnimator:ofFloat(control, "rotation", {
		360,0
	})
	xuanzhuandonghua:setRepeatCount(0)
	xuanzhuandonghua:setRepeatMode(Animation.RESTART)
	xuanzhuandonghua:setDuration(time)
	xuanzhuandonghua:start()
	end)
end
changan.controlFlip = function(control,time)
	luajava.runUiThread(function()
  import "android.view.animation.Animation"
  import "android.animation.ObjectAnimator"
  xuanzhuandonghua = ObjectAnimator:ofFloat(control, "rotationY", {0, 360})
  xuanzhuandonghua:setRepeatCount(0)
  xuanzhuandonghua:setRepeatMode(Animation.REVERSE)
  xuanzhuandonghua:setDuration(time)
  xuanzhuandonghua:start()
end) end
changan.controlWater = function(control,time)
	luajava.runUiThread(function()
  import "android.animation.ObjectAnimator"
  ObjectAnimator():ofFloat(control,"scaleX",{1, 0.8, 0.9, 1}):setDuration(time):start()
  ObjectAnimator():ofFloat(control,"scaleY",{1,0.8,0.9,1}):setDuration(time):start()
end) end
changan.controlSmall = function(control,time)
	luajava.runUiThread(function()
  import "android.animation.ObjectAnimator"
  ObjectAnimator():ofFloat(control,"scaleX",{1, 0.7, 0.4, 0}):setDuration(time):start()
  ObjectAnimator():ofFloat(control,"scaleY",{1, 0.7, 0.4, 0}):setDuration(time):start()
end) end
changan.controlBig = function(control,time)
	luajava.runUiThread(function()
  import "android.animation.ObjectAnimator"
  ObjectAnimator():ofFloat(control,"scaleX",{0, 0.4, 0.7, 1}):setDuration(time):start()
  ObjectAnimator():ofFloat(control,"scaleY",{0, 0.4, 0.7, 1}):setDuration(time):start()
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
function jianting2()
yinln = {}
for i = 1,#audiotype do
yinln[i] = {}
yinln[i].type = audiotype[i]
yinln[i].min = audi:getStreamMinVolume(audiotype[i])
yinln[i].max = audi:getStreamMaxVolume(audiotype[i])
yinln[i].now = audi:getStreamVolume(audiotype[i])

    if yinln[i].now > yinl[i].now  then
        audi:adjustStreamVolume(yinln[i].type,AudioManager.ADJUST_LOWER,0)
        gg.alert("up")
    elseif yinln[i].now < yinl[i].now  then
        audi:adjustStreamVolume(yinln[i].type,AudioManager.ADJUST_RAISE,0)
        gg.alert("down\n"..yinln[i].now.."\n"..yinl[i].now)
    end
end

end
yltype=0
function jianting3(func)
yinln = {}
for i = 1,#audiotype do
yinln[i] = {}
yinln[i].type = audiotype[i]
yinln[i].now = audi:getStreamVolume(audiotype[i])
    if yinln[i].now > yinl[i].now  then
        yinl[i].now = yinln[i].now
        if yltype==1 then
        yltype=0
        func()
        end
    elseif yinln[i].now < yinl[i].now  then
        yinl[i].now = yinln[i].now
        if yltype==0 then
        yltype=1
        func()
        end
    end
end
end
function jianting(func)
yinln = {}
for i = 1,#audiotype do
yinln[i] = {}
yinln[i].type = audiotype[i]
yinln[i].now = audi:getStreamVolume(audiotype[i])
    if yinln[i].now >= yinl[i].max  then
       audi:adjustStreamVolume(yinln[i].type,AudioManager.ADJUST_LOWER,0)
    end
    if yinln[i].now > yinl[i].now  then
        audi:setStreamVolume(yinln[i].type,yinl[i].now,0)
        func()
    end
end
end
tuic=0
empty=getVerticalBG({0x00ffffff,0x00ffffff},0)
changan.menu = function(sview)
luajava.post(function()
	vidd=luajava.loadlayout({
	VideoView,
	id = luajava.newId('video'),
	videoPath = 视频链接,
	layout_width = "200dp",
	layout_height = "80dp",
})
end)
zidong = luajava.newThread(function()
	while true do
	if zdbf and 显示==1 then logvid = luajava.getIdView("video") logvid.start(logvid) end
	gg.sleep(500)
	end
end)
canMove=true
isswitch = true
lmx1=luajava.loadlayout{
	LinearLayout,
	layout_height='40dp',
	layout_width='40dp',
	background=获取图片(图标1)
}
lmx2=luajava.loadlayout{
	LinearLayout,
	layout_height='30dp',
	layout_width='30dp',
	background=获取图片(图标2)
}

cebgrid={
	GridLayout,
	columnCount = '4',
	layout_marginTop="8dp",
	layout_width = 'fill_parent',
	layout_height = "wrap_content",
	gravity = "left",
	padding="2dp",
	onClick=function()end,
	onTouch=hanshu,
	background=getVerticalBG({0xFF161616,0xFF161616},25)
}
slcta=getVerticalBG({0xff27863D,0xff27863D},25)
slctb=getVerticalBG({0x11ffffff,0x11ffffff},25)
for i=1,#stab do
	_ENV["jm"..i]=luajava.loadlayout{
		LinearLayout,
		orientation="vertical",
		onClick=function() 切换(i) end,
		onTouch=hanshu,
		{ImageView,
		layout_height="32dp",
		layout_width="32dp",
		layout_marginLeft="4dp",
		layout_marginRight="4dp",
		layout_marginTop="4dp",
		layout_marginBottom="4dp",
		id="jmp"..i,
		gravity="center_vertical",
		background=slctb,
		padding="4dp",
		src=getRes(stab[i][2])
		},
		{TextView,
		id="jmt"..i,
		text=stab[i][1],
		textSize="9sp",
		layout_width="fill_parent",
		gravity="center",
		textColor="#575757",
		}
	}
	cebgrid[#cebgrid+1]=_ENV["jm"..i]
end
cebian={
	LinearLayout,
	layout_height="wrap_content",
	layout_width="200dp",
	orientation="vertical",
	padding="8dp",
	{--顶栏1
		FrameLayout,
		layout_width = "fill_parent",
		layout_height = "wrap_content",
		layout_marginLeft='20dp',
		layout_marginTop='10dp',
		{ImageView,
		layout_height="36dp",
		layout_width="36dp",
		background=获取图片(xfcpic),
		onClick=隐藏,
		onTouch=hanshu,
		},
		{LinearLayout,
		layout_marginLeft="43dp",
		orientation="vertical",
		{TextView,
		textSize="11sp",
		textColor="#ffffff",
		text=stitle,
		},{TextView,
		layout_marginTop="2dp",
		textSize="8sp",
		textColor="#898989",
		text=sver,
		}},{
			ImageView,
			layout_gravity="right",
			src = 获取图片("/sdcard/长安/图片/quarkx"),
			padding="2dp",
			layout_width = "40dp",
			layout_height = "30dp",
			gravity = "center",
			onClick = 隐藏,
			onTouch = hanshu,
			layout_marginTop="3dp",
			layout_marginRight="0dp",
		}
	},
	{LinearLayout,
	layout_height="1dp",
	layout_width="fill_parent",
	layout_marginTop="7dp",
	background="#262523",
	},
	{LinearLayout,--左
	onClick=function()end,
	onTouch=hanshu,
	--background=getVerticalBG({0xff202126,0xff202126},25),
	padding={'20dp','0dp','0dp','5dp'},
	layout_height="217dp",
	layout_weight=1,
	layout_marginTop="8dp",
	
	layout_width="fill_parent",
	gravity="center_horizontal",
	{LinearLayout,
	orientation="vertical",
	layout_width="fill_parent",
	gravity="center_horizontal",
	{LinearLayout,
	layout_width="fill_parent",
	gravity="center_horizontal",
	{TextView,
	textSize="10sp",
	textColor="#ffffff",
	text="VIP • "
	},
	{TextView,
	textSize="11sp",
	textColor="#11563A",
	text="未登录",
	id=luajava.newId('viptime')
	}
	},
	
	
	cebgrid,
	{LinearLayout,
		id=luajava.newId('fvid'),
		layout_height='80dp',
		layout_width='200dp',
		background='#ffffff',
		vidd
	}
	},
	
	
	
	}
}

lastui=1
for i = 1,#stab do
_ENV["layout"..i] = luajava.loadlayout({
	LinearLayout,
	layout_width = "fill_parent",
	layout_height = "fill_parent",
	visibility = "gone",
	orientation = "vertical",
	padding={"8dp","6dp","8dp","8dp"},
	{
		ScrollView,
		fillViewport = true,
		--background=getVerticalBG({0xff202126,0xff202126},25),
--padding = "10dp",
		gravity = "center",
		layout_width = "fill_parent",
		layout_height = "fill_parent",
		orientation = "horizontal",
		{
			LinearLayout,
			id = "layoutm"..i,
			layout_marginRight = "5dp",
			layout_marginLeft = "5dp",
			layout_width = "fill_parent",
			orientation = "vertical",
			gravity = "center_horizontal",
			padding={"2dp","10dp","2dp","3dp"},
		}
	}})
end
cbtbg1=getVerticalBG({0x55ffffff,0x55ffffff},8)
cbtbg2=getVerticalBG({0x00ffffff,0x00ffffff},8)
ckou = {
	LinearLayout,
	id="chuangk",
	layout_width = "375dp",
	layout_height = "285dp",
	orientation = "vertical",
	padding={'0dp','0dp','20dp','0dp'},
	{LinearLayout,
		layout_height='20dp'
		
	},{LinearLayout,
					layout_height='50dp',
					layout_width='match_parent',
					layout_marginRight='10dp',
					background=getVerticalBG({0x11ffffff,0x11ffffff},10,4,0xff27863D),
					padding='3dp',
					{ScrollView,
					id='ggscro',
					layout_height='match_parent',
					layout_width='match_parent',
					{LinearLayout,
						id='gggscro',
						orientation='vertical',
						layout_width='match_parent',
						layout_height='wrap_content',
					}
				}}
	
	

}


for i = 1,#stab do
ckou[#ckou+1] = _ENV["layout"..i]
end

ckou[#ckou+1] = {
		LinearLayout,
		layout_marginBottom = "1dp",
		layout_marginTop = "1dp",
		layout_width = "fill_parent",
		layout_height = "0dp",
		background = "#D7D7D7"
	}
ckou[#ckou+1] = {
	LinearLayout,
	layout_height="0dp",
	layout_width="360dp"
}

ckou = luajava.loadlayout({LinearLayout,
	visibility = "gone",
	background='#161616',
	{
	LinearLayout,
	layout_width='600dp',
	layout_height='320dp',
	background=获取图片(背景图片),
	padding='10dp',
	{
	LinearLayout,
	id='leftb',
	visibility="visible",
	layout_width="wrap_content",
	
	cebian
},{
		LinearLayout,
		layout_marginBottom = "8dp",
		layout_marginTop = "20dp",
		layout_width = "1dp",
		layout_height = "fill_parent",
		background = "#262523"
	},{FrameLayout,
		id="parentv",ckou}}})


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
	{TextView,
	id='dbti',
	textSize="15sp",
	textColor="#000000",
	layout_gravity='center_horizontal',
	text=titles
	},
	{
	FrameLayout,
	id='control1',
	layout_height='40dp',
	layout_width='40dp',
	onClick=隐藏,
	onTouch=hanshu,
	lmx1,
	{LinearLayout,
		layout_height='40dp',
	layout_width='40dp',
	gravity='center',
		lmx2
	}
},
}
local function invoke()
local ok
local RawX, RawY, x, y
mainLayoutParams = getLayoutParams()
floatWindow = luajava.loadlayout(floatWindow)
local function invoke2()
for k = 1,#stab do
for i = 1,#sview[k] do
if type(sview[k][i])=='userdata' then
_ENV["layoutm"..k]:addView(sview[k][i])
end
end
local t=luajava.loadlayout({
	LinearLayout,layout_height="60dp"
})
_ENV["layoutm"..k]:addView(t)
end
切换(1)
window:addView(floatWindow, mainLayoutParams)
end
local runnable = luajava.getRunnable(invoke2)
local handler = luajava.getHandler()
handler:post(runnable)
local isMove


end
zdbf=true
zidong:start()
invoke(swib1,swib2)
gg.setVisible(false)
隐藏()
luajava.setFloatingWindowHide(true)
yinll=1

if ylfunc~=nil then ylfunc() end
qhkai=0
zhubj=floatWindow
qiehuan=function()
    if qhkai==0 then
    	yinll=0
        qhkai=1
        draw.remove()
        gg.toast("隐藏")
        luajava.runUiThread(function()
        YoYoImpl:with("FadeOut"):duration(300):playOn(zhubj)
		end)
        gg.sleep(400)
        luajava.runUiThread(function()
        zhubj:setVisibility(View.GONE)
        end)
    else
        qhkai=0
        yinll=1
        huiz()
        luajava.runUiThread(function() zhubj:setVisibility(View.VISIBLE) end)
        luajava.runUiThread(function()
        YoYoImpl:with("FadeIn"):duration(300):playOn(zhubj)
		
        end)
        
    end
end
setExitEvent(function() luajava.post(function() window:removeView(floatWindow) 
	for k,v in pairs(floattable) do
		if v==1 then
			window:removeView(_ENV[k])
		end
	end
	end)
end)
luajava.newThread(function()
	while true do
		if 显示==0 then
			changan.controlRotation2(lmx1,1000)
			changan.controlRotation3(lmx2,1000)
		end
		gg.sleep(2000)
	end
end):start()
while true do
if tuichu==1 then break end
if 音量键 then
jianting3(qiehuan)
gg.sleep(130)
end
end
luajava.setFloatingWindowHide(false)

luajava.setFloatingWindowHide(false)
end---menu

function 切换(x)
if type(ret)~="table" then log_init() return 0 end
当前ui = x
luajava.runUiThread(function()
	chuangk:setVisibility(View.VISIBLE)
	for i = 1,#stab do
	_ENV["layout"..i]:setVisibility(View.GONE)
	_ENV["jmp"..i]:setBackground(slctb)
	_ENV["jmt"..i]:setTextColor(0xff575757)
	end
	_ENV["jmp"..当前ui]:setBackground(slcta)
	_ENV["layout"..当前ui]:setVisibility(View.VISIBLE)
	_ENV["jmt"..当前ui]:setTextColor(0xffffffff)
	vibra:vibrate(8)
	--YoYoImpl:with("FadeIn"):duration(500):playOn(_ENV["jm"..当前ui])
	changan.controlWater(_ENV["jm"..当前ui],400)
end)
end
function 隐藏()
--vibra:vibrate(8)

luajava.runUiThread(function()
	if tonumber(tostring(ckou:getVisibility())) == 8.0 then
	control1:setVisibility(View.GONE)
	显示 = 1
		mainLayoutParams.flags = LayoutParams.FLAG_NOT_TOUCH_MODAL
	window : updateViewLayout (floatWindow , mainLayoutParams)
dbti:setVisibility(View.VISIBLE)
	ckou:setVisibility(View.VISIBLE)
	YoYoImpl:with("FadeIn"):duration(400):playOn(floatWindow)
	else
		mainLayoutParams.flags = LayoutParams.FLAG_NOT_FOCUSABLE
	window : updateViewLayout (floatWindow , mainLayoutParams)
dbti:setVisibility(View.GONE)
	ckou:setVisibility(View.GONE)
	control1:setVisibility(View.VISIBLE) 显示 = 0
	logvid = luajava.getIdView("video") logvid.pause(logvid)
	end
	end)
end
function log_init()
if type(ret) ~= "table" then
if vv ~= nil then return 0 end
luajava.newThread(function()
	draw.remove()
	gg.toast('请输入卡密')
end):start()
tmp = {
	LinearLayout,orientation = "vertical",gravity = "center_horizontal",
}
if panduan("/sdcard/长安/配置文件/km.lua") ~= false then
dofile("/sdcard/长安/配置文件/km.lua")
logkapian = luajava.loadlayout({
	LinearLayout,
	orientation = "vertical",
	gravity = "center",
	layout_height = "40dp",
	layout_width = "260dp",
	
	background = luajava.loadlayout {
					GradientDrawable,
					color = "#37383D",
					cornerRadius = 20
				},
	elevation = "10dp",
	onClick = function()
	--changan.controlFlip(logkapian,2000)
	luajava.newThread(function() logkap = true login(kam) end):start() end,
	{
		TextView,
		gravity = "center",
		textSize = "15sp",
		textColor = "#ffffff",
		text = "******"..string.sub(kam,-4,-1)
	},{
		TextView,
		gravity = "center",
		textSize = "11sp",
		textColor = "#4E98FF",
		text = "快捷登录"
	}

})
tmp[#tmp+1] = {
	LinearLayout,
	layout_height = "5dp",
}
tmp[#tmp+1] = logkapian

end
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(30)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({
	0xff6B00EC,0xff006AFF,0xff0090FF,0xff6B00EC

})
jianbians:setOrientation(GradientDrawable.Orientation.TL_BR)
--jianbians:setStroke(0,0x55000000)--边框宽度和颜色
	vv = luajava.loadlayout({
		LinearLayout,
		orientation = "vertical",
		visibility = "gone",
		background = getVerticalBG({
			0x88ffffff,0x88ffffff
		},15),
		layout_width = "375dp",
		layout_height = "295dp",
		gravity = "center",
		onTouch=hanshu,
		onClick = function() if vv ~= nil then YoYoImpl:with("FadeOut"):duration(300):playOn(vv) luajava.newThread(function() gg.sleep(300) rmdadView(vv) vv = nil end):start() end end,
		
		{
			LinearLayout,
			orientation = "vertical",
			
			{
				LinearLayout,
				layout_height = "wrap_content",
				orientation='vertical',
				{TextView,
				layout_height='wrap_content',
				layout_width='match_parent',
				gravity='center',
				text=stitle,
				textColor='#000000',
				textSize='40sp',
				},
				{
					EditText,
					id = luajava.newId("卡密"),
					textSize='12sp',
					padding='-2dp',
					textColor = "#000000",
					hint = "请输入卡密",
					elevation = "10dp",
					gravity = "center",
					background = getVerticalBG({0xffffffff,0xffffffff},5,4,0xff000000),
					layout_height = "30dp",
					layout_width = "260dp",
					layout_marginBottom = "10dp",
				}},{LinearLayout,
					layout_height='30dp',
					layout_width='match_parent',
					gravity='center_vertical',
					{CheckBox,
						
					},
					{TextView,
						text='保存卡密',
						textSize='10sp',
						textColor='#000000',
					},{CheckBox,
						layout_marginLeft='20dp',
					},
					{TextView,
						text='保存卡密',
						textSize='10sp',
						textColor='#000000',
					},
				},
			{
				TextView,
				background = getVerticalBG({0xff27863D,0xff27863D},20),
				text = "登录激活",
				textColor = "#ffffff",
				textSize = "13sp",
				gravity = "center",
				elevation = "10dp",
				layout_height = "30dp",
				layout_width = "260dp",
				onClick = function() luajava.newThread(function() login(changan.getedit("卡密")) end):start() end,
			},tmp,{
				TextView,
				background = luajava.loadlayout {
					GradientDrawable,
					color = "#37383D",
					cornerRadius = 20
				},
				text = "解绑卡密",
				textColor = "#ffffff",
				textSize = "13sp",
				layout_marginTop="5dp",
				gravity = "center",
				elevation = "10dp",
				layout_height = "30dp",
				layout_width = "260dp",
				onClick = function() luajava.newThread(function()
					local t=changan.getedit("卡密")
					if t~="" and t~=" " then
					rlyunyz.unbind(t)
					end
				end):start() end,
			},{
				TextView,
				background = luajava.loadlayout {
					GradientDrawable,
					color = "#37383D",
					cornerRadius = 20
				},
				text = "退出",
				textColor = "#ffffff",
				textSize = "13sp",
				layout_marginTop="5dp",
				gravity = "center",
				elevation = "10dp",
				layout_height = "30dp",
				layout_width = "260dp",
				onClick = function() tuichu=1 end,
			}}
	})
	addadView(vv)
	
	luajava.runUiThread(function()
		luajava.getIdValue("卡密"):setHintTextColor(0xffA2A2A2)
		vv:setVisibility(View.VISIBLE)
		--YoYoImpl:with("FadeIn"):duration(300):playOn(vv)
	end)
luajava.newThread(function()
	huiz()
end):start()
else
	--luajava.newThread(function() xiugtx() end):start()
end
end
function changan.intcheckb(name,func1,func2)
nid = name..guid()
local func = 开关(name,func1,func2,nid)
if not name then name = "未设置" end
local ck = {
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
		--background=getVerticalBG({0xffFFFDF2,0xddffffff,0xffFFFDF2},15,8,0xffFFDA71),
		{
			CheckBox,
			layout_width = '32dp',
			layout_height = '32dp',
			onClick = function() luajava.newThread(function() func() end):start() end,
		},{
			TextView,
			id=luajava.newId(nid.."t"),
			gravity = "left",
			text = name,
			textColor='#ffffff',
			textSize = "14sp",
--layout_marginLeft="8dp",
			layout_width = 'match_parent',
	layout_weight=1,
		},
		}
}
return ck
end
function changan.checkbox(cklist)
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
rstt = changan.intcheckb(name,func1,func2)
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
function changan.setedit(name,txt)
txt = tostring(txt)
luajava.runUiThread(function()
	luajava.getIdValue(name):setText(txt)
	end)
end

function changan.getedit(name)
--gg.alert(edit)
edit = tostring(luajava.getIdValue(name):getText())
return edit
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
ret = rlyunyz.login(kam)
loadBox['关闭']()
ini = rlyunyz.checkUpdate()
if type(ret) ~= "table" then
--gg.alert(tostring(ret))
else
ktmp = "kam='"..ret.kami.."'"
luajava.newThread(function()
	write("/sdcard/长安/配置文件/km.lua",ktmp)
end):start()
切换(1)
luajava.runUiThread(function()
	luajava.getIdValue("viptime"):setText(getTimeStamp(ret.vip))
end)
end
--if logkap then gg.sleep(100) end

end



function 功能验证()
if type(ret2)=='table' then return true end
local t=gg.prompt({'请输入代理防卡密'},nil,{'text'})
if t==nil then gg.alert('未输入卡密') return false end
local kam=t[1]
if kam=='' or kam==' ' then gg.alert('未输入卡密') return false end
local loadBox = getLoadingBox('正在校验卡密')
local info = info2
loadBox['显示']()
ret2 = rlyunyz2.login(kam)
loadBox['关闭']()
ini = rlyunyz2.checkUpdate()
if type(ret2) ~= "table" then
return false
else
	return true
end
--if logkap then gg.sleep(100) end

end



function uiadtext(txt,color,size)
if not txt then txt = "" end
if not color then color = "#ffffff" end
if not size then size = "10sp" end
local tmp=luajava.loadlayout(
	{
		TextView,
		text = string.fromHtml(" <font color=#d7d7d7>"..getTimeStamp(os.time()).."</font> <font color="..color..">"..txt.."</font>"),
		textSize = size,
		--textColor = color,
		gravity="left",
		layout_width = "wrap_content",
	})
luajava.post(function()
	gggscro:addView(tmp)
end)
luajava.newThread(function()
	gg.sleep(100)
	luajava.post(function()
		ggscro:fullScroll(View.FOCUS_DOWN)
	end)
	end):start()
end
function getTimeStamp(t)
local str = os.date("%Y/%m/%d %H:%M:%S",t)
return str
end
function addadView(tmp)
local function invoke()
parentv:addView(tmp)
end
luajava.post(invoke)
end
function rmdadView(tmp)
local function invoke()
parentv:removeView(tmp)
end
luajava.post(invoke)
end
switches = {}
function 开关d(name,func1,func2,nid)
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
luajava.runUiThread(function()
	luajava.getIdValue(nid.."k"):setVisibility(View.GONE)
	luajava.getIdValue(nid.."g"):setVisibility(View.VISIBLE)
	end)
_ENV[name] = "开"
uiadtext(localname.." 已开启.","#ffffff")

pcall(func1)
else
luajava.runUiThread(function()
	luajava.getIdValue(nid.."g"):setVisibility(View.GONE)
	luajava.getIdValue(nid.."k"):setVisibility(View.VISIBLE)
	end)
_ENV[name] = "关"
uiadtext(localname.." 已关闭.","#a9a9a9")

pcall(func2)
end
end
if localname=='音量键隐藏开关' then ylfunc=outfunc end
return outfunc
end
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
jianbians:setStroke(4,tmp3)--边框宽度和颜色
return jianbians
end
	swcbg = getShape2(
	45,
	{
		0x00ffffff,0x00ffffff
	},
	20,0xffffffff)
swcbg0 = getShape2(
	45,
	{
		0xff232323,0xff232323
	},
	4,0xffffffff)
switchbg1 = getVerticalBG({0xff545454,0xff545454},360,32,0x00d7d7d7)
switchbg2 = getVerticalBG({0xff27863D,0xff27863D},360,32,0x00d7d7d7)

function changan.switch(name,func1,func2)
nid = name..guid()
local func = 开关d(name,func1,func2,nid)
if not name then name = "未设置" end
switches["1s"..nid] = luajava.loadlayout {
	FrameLayout,
	layout_width = '50dp',
	layout_height = '23dp',
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
		layout_width = '23dp',
		layout_height = '23dp',
		
	},
}
switches["2s"..nid] = luajava.loadlayout {
	FrameLayout,
	onClick = function() luajava.newThread(function() func() end):start() end,
	layout_width = '50dp',
	layout_height = '23dp',
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
		layout_width = '23dp',
		layout_height = '23dp',

		
	}
}
rest = luajava.loadlayout({
	LinearLayout,
	elevation = "5dp",
	layout_width = 'fill_parent',
	layout_height = "48dp",
	gravity = "center_vertical",
	padding={"0dp","3dp","0dp","3dp"},
	{
		LinearLayout,
		layout_width = 'fill_parent',
		layout_height = "40dp",
		gravity = "center_vertical",
		background = getVerticalBG({0x11ffffff,0x11ffffff},15,3,0xff545454),
		padding = {
		"0dp","0dp","6dp","0dp"
	},
		{
			TextView,
			gravity = "top",
			text = name,
			textColor = "#ffffff",
			textSize = "13sp",
			layout_weight = 1,
			layout_width = 'match_parent',
			layout_marginLeft = "10dp",
			layout_marginRight = "20dp",
		},
		{
			FrameLayout,
			id=luajava.newId(nid),
			background = swcbg,
			elevation = "1dp",
			onClick = function() luajava.newThread(function() func() end):start() end,
			layout_width = 'wrap_content',
			layout_height = 'wrap_content',
			gravity = "left",
			padding="1dp",
			switches["1s"..nid],switches["2s"..nid]
		}}
})
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
		ttview : setBackground(luajava.getBitmapDrawable("/sdcard/长安/图片/hsj" ) )
	else
		tview : setVisibility(View.GONE )
		ttview : setBackground(luajava.getBitmapDrawable("/sdcard/长安/图片/sj" ) )
	end
end

function changan.box(views )
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
		
	}
	if type(views [ 1 ] ) == "string" or type(views [ 1 ] ) == "number" then
		firadio [ # firadio + 1 ] = {
			LinearLayout ,
			layout_width = 'fill_parent' ,
			layout_height = "30dp" ,
			gravity = "center_vertical" ,
			layout_marginTop = "2dp" ,
			layout_marginBottom = "4dp" ,
			onClick = function()
				changan.controlWater(_ENV[t1id],200)
				visi(tid , ttid )
			end

			,
			background = getVerticalBG({0x00ffffff,0x00ffffff},15,3,0xff545454),
			{
				ImageView ,
				layout_marginLeft = "10dp" ,
				id = luajava.newId(ttid ) ,
				background = "/sdcard/长安/图片/sj" ,
				layout_width = "20dp" ,
				layout_height = "20dp" ,
				layout_marginTop = "0dp" ,
			} ,
			{
				TextView , text = views [ 1 ] ,
				textSize = "13sp" ,
				layout_marginLeft = "15dp" ,
				layout_width = "100dp" ,
				textColor = "#ffffff" ,
				gravity = "left" ,
			} }
	else
		gg.alert("changan.box第一个参数必须是string" ) os.exit()
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
function changan.text(txt,color,size)
if not txt then txt = "未设置文字" end
if not color then color = "#d9d9d9" end
if not size then size = "14sp" end
return luajava.loadlayout(
	{
		TextView,
		text = txt,
		textSize = size,
		textColor = color,
		gravity="center",
		layout_width = "fill_parent",
		--padding={"10dp","0dp","10dp","0dp",},
	})
end
swits={}
function changan.intcheck(name,func1,func2)
nid = name..guid()
swits[nid]={
	getVerticalBG({0xff27863D,0xff27863D},18),
	false
}
local func = 开关5(name,func1,func2,nid)
if not name then name = "未设置" end
local rest = luajava.loadlayout({
	LinearLayout,
	layout_width = 'wrap_content',
	layout_height = "wrap_content",
	layout_marginTop = "1dp",
	layout_marginBottom = "1dp",
	padding={"8dp","3dp","8dp","3dp"},
	{
		LinearLayout,
		onClick = function() luajava.newThread(function() func() end):start() end,
		layout_width = 'fill_parent',
		layout_height = "wrap_content",
		gravity = "center_vertical",
		--background = randbg2(),
		orientation="vertical",
		{
			TextView,
			gravity = "left",
			text = name,
			textColor="#ffffff",
			textSize = "11sp",
			layout_height="wrap_content",
			layout_width = '100dp',
		},
		{
			LinearLayout,
			id = luajava.newId(nid),
			background = getVerticalBG({0xff37383D,0xff37383D},18),
			layout_width = 'wrap_content',
			layout_height = 'wrap_content',
			padding = "5dp",
			{
				TextView,
				id = luajava.newId(nid.."k"),
				background = swits[nid][1],
				layout_width = 'wrap_content',
				layout_height = 'wrap_content',
				padding={"13dp","3dp","13dp","3dp"},
				gravity="center",
				text="关",
				textColor="#ffffff",
				textSize="13sp",
			}, {
				TextView,
				layout_marginLeft="7dp",
				id = luajava.newId(nid.."g"),
				background = empty,
				layout_width = 'wrap_content',
				layout_height = 'wrap_content',
				padding={"13dp","3dp","13dp","3dp"},
				gravity="center",
				text="开",
				textColor="#ffffff",
				textSize="13sp",
			}
		}}
})

return rest
end
function changan.switch2(name,func1,func2)
nid = name..guid()
swits[nid]={
	getVerticalBG({0xff27863D,0xff27863D},18),
	false
}
local func = 开关5(name,func1,func2,nid)
if not name then name = "未设置" end
local rest = luajava.loadlayout({
	LinearLayout,
	layout_width = 'match_parent',
	layout_height = "wrap_content",
	layout_marginTop = "1dp",
	layout_marginBottom = "1dp",
	padding={"8dp","3dp","8dp","3dp"},
	background = getVerticalBG({0x11ffffff,0x11ffffff},15,3,0xff545454),
	{
		LinearLayout,
		onClick = function() luajava.newThread(function() func() end):start() end,
		layout_width = 'fill_parent',
		layout_height = "wrap_content",
		gravity = "center_vertical",
		
		{
			TextView,
			gravity = "left",
			text = name,
			textColor="#ffffff",
			textSize = "14sp",
			layout_height="wrap_content",
			layout_width = 'match_parent',
			layout_weight=1,
		},
		{
			LinearLayout,
			id = luajava.newId(nid),
			background = getVerticalBG({0xff37383D,0xff37383D},18),
			layout_width = 'wrap_content',
			layout_height = 'wrap_content',
			padding = "5dp",
			{
				TextView,
				id = luajava.newId(nid.."k"),
				background = swits[nid][1],
				layout_width = 'wrap_content',
				layout_height = 'wrap_content',
				padding={"13dp","3dp","13dp","3dp"},
				gravity="center",
				text="关",
				textColor="#ffffff",
				textSize="13sp",
			}, {
				TextView,
				layout_marginLeft="7dp",
				id = luajava.newId(nid.."g"),
				background = empty,
				layout_width = 'wrap_content',
				layout_height = 'wrap_content',
				padding={"13dp","3dp","13dp","3dp"},
				gravity="center",
				text="开",
				textColor="#ffffff",
				textSize="13sp",
			}
		}}
})

return rest
end
function 开关5(name,func1,func2,nid)
local sname = nid
local localname=name
name = nid..guid()
_ENV[name] = "关"
if func1 == nil then func1 = "" end
if func2 == nil then func2 = "" end
if type(func1) == "function" then
local outfunc=function()
namers = _ENV[name]
vibra:vibrate(8)
if namers ~= "开" then
swits[sname][2]=true
--vibra:vibrate(14)
luajava.runUiThread(function()
	luajava.getIdValue(sname.."k"):setBackground(empty)
	luajava.getIdValue(sname.."g"):setBackground(swits[sname][1])
	end)
_ENV[name] = "开"
pcall(func1)
uiadtext(localname.." 已开启.","#ffffff")

else
swits[sname][2]=false
	--vibra:vibrate(14)
luajava.runUiThread(function()
	luajava.getIdValue(sname.."k"):setBackground(swits[sname][1])
	luajava.getIdValue(sname.."g"):setBackground(empty)
	end)
_ENV[name] = "关"
pcall(func2)
uiadtext(localname.." 已关闭.","#a9a9a9")

end
end
if localname=='音量键隐藏开关' then ylfunc=outfunc end
return outfunc
end
end
function changan.check(cklist)
local rest = {
	GridLayout,
	columnCount = '3',
	layout_width = 'fill_parent',
	layout_height = "wrap_content",
	gravity = "center"

}
for i = 1,#cklist do
local name = cklist[i][1]
local func1 = cklist[i][2]
local func2 = cklist[i][3]
if not name then name = "未设置" end
local rstt = changan.intcheck(name,func1,func2)
rest[#rest+1] = rstt
end
return luajava.loadlayout({
	LinearLayout,rest
})
end
anius={}
rstt={}
function changan.anniu(tit,cklist)
local rest = {
	LinearLayout,
	layout_width = 'wrap_content',
	layout_height = "wrap_content",
	gravity = "left",
	padding="4dp",
	background = getVerticalBG({0xff37383D,0xff37383D},18),
}
for i = 1,#cklist do
local name = cklist[i][1]
local func = cklist[i][2]
if not name then name = "未设置" end
local nid=name..guid()
rstt[nid] =luajava.loadlayout{
	LinearLayout,{
	TextView,
	id=luajava.newId(nid),
	onClick=function()
	changan.controlWater(rstt[nid],400)
	vibra:vibrate(8) luajava.newThread(func):start() end,
	text=name,
	textColor="#ffffff",
	layout_marginLeft="4dp",
	layout_marginRight="4dp",
	textSize="12sp",
	background=getVerticalBG({0xff27863D,0xff27863D},18),
	padding={"13dp","5dp","13dp","5dp"},
}}
anius[#anius+1]=nid
rest[#rest+1] = rstt[nid]
end
rest=luajava.loadlayout({
	LinearLayout,
	layout_width = 'fill_parent',
	padding="8dp",
	orientation="vertical",
	{
			TextView,
			gravity = "left",
			text = tit,
			textColor="#ffffff",
			textSize = "11sp",
			layout_width = 'wrap_content',
		},
	rest
})
return rest
end
function changan.radio(radio)
firadio = {
	LinearLayout,
	layout_width = 'fill_parent',
	layout_hight = "fill_parent",
	orientation = "vertical"
}
rds=1
if type(radio[1]) == "string" or type(radio[1]) == "number" then
	rds=2
	firadio[#firadio+1] = {
TextView,text = radio[1]} end
radios = {
	RadioGroup,background = getVerticalBG({0x00ffffff,0x00ffffff},15,3,0xff545454),
layout_width = 'fill_parent',
}
for i = rds,#radio do
	radios[#radios+1] = {
RadioButton,
layout_width = 'fill_parent',
text = radio[i][1],
onClick = function() luajava.newThread(function() uiadtext('执行: '..radio[i][1]) pcall(radio[i][2]) end):start() end,
	}
end
firadio[#firadio+1] = radios
return luajava.loadlayout(firadio)
end

function changan.radio3(radio)
firadio = {
	LinearLayout,
	layout_width = 'fill_parent',
	layout_hight = "fill_parent",
	orientation = "horizontal"
}
rds=1
if type(radio[1]) == "string" or type(radio[1]) == "number" then
	rds=2
	firadio[#firadio+1] = {
TextView,text = radio[1]} end
radios = {
	RadioGroup,background = getVerticalBG({0x00ffffff,0x00ffffff},15,3,0xff545454),
layout_width = 'wrap_content',
orientation='horizontal',
padding={'0dp','0dp','8dp','0dp'}
}
for i = rds,#radio do
	radios[#radios+1] = {
RadioButton,
layout_width = 'wrap_content',
text = radio[i][1],
onClick = function() luajava.newThread(function() uiadtext('执行: '..radio[i][1]) pcall(radio[i][2]) end):start() end,
	}
end
firadio[#firadio+1] = radios
return luajava.loadlayout(firadio)
	end
function changan.radio2 (cklist)
local rid=guid()
radiog[rid]={}
rest = {
	LinearLayout ,
	layout_width = 'match_parent' ,
	layout_height = "wrap_content" ,
	
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
	textColor = "#ffffff" ,
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
	
	gravity = "top" ,
	orientation = "horizontal" ,
	--background=getVerticalBG({按钮颜色,按钮颜色},45),
	padding={"0dp","4dp","0dp","10dp"},
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
	layout_width = 'wrap_content' ,
	layout_height = "wrap_content" ,
	
	layout_marginBottom = "5dp" ,
	layout_marginLeft = "5dp" ,
	layout_marginRight = "5dp" ,
	gravity = "center_vertical" ,
	onClick = function ()
	uiadtext(name.." 已开启.","#ffffff")

	changan.controlWater (_ENV [tid] , 200)
	func()
	end,
	{
		TextView ,
		gravity = "top" ,
		text = name ,
		textSize="13sp",
		background=radoff[nid],
		id=luajava.newId(nid),
		padding={"10dp","3dp","10dp","3dp"},
		textColor = "#ffffff" ,
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
function changan.radio4(cklist)
local rid=guid()
radiog[rid]={}
rest = {
	LinearLayout ,
	layout_width = 'match_parent' ,
	layout_height = "wrap_content" ,
	padding={'0dp','0dp','0dp','4dp'},
	gravity = "top" ,
	orientation = "horizontal" ,

}
if type (cklist [1]) == "string" then
	rds=2
rest [# rest + 1] = {
	TextView ,
	gravity = "left" ,
	padding="5dp",
	text = cklist [1] ,
	textSize = "13sp" ,
	textColor = "#ffffff" ,
	layout_weight=1,
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
	layout_width = 'wrap_content' ,
	layout_height = "wrap_content" ,
	
	gravity = "top" ,
	orientation = "horizontal" ,
	background=getVerticalBG({0xff37383D,0xff37383D},15),
	padding={"0dp","4dp","0dp","4dp"},
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
	layout_width = 'wrap_content' ,
	layout_height = "wrap_content" ,
	
	layout_marginBottom = "5dp" ,
	layout_marginLeft = "5dp" ,
	layout_marginRight = "5dp" ,
	gravity = "center_vertical" ,
	onClick = function ()
	uiadtext(name.." 已开启.","#ffffff")

	changan.controlWater (_ENV [tid] , 200)
	func()
	end,
	{
		TextView ,
		gravity = "top" ,
		text = name ,
		textSize="13sp",
		background=radoff[nid],
		id=luajava.newId(nid),
		padding={"4dp","3dp","4dp","3dp"},
		textColor = "#ffffff" ,
		layout_width = 'wrap_content' ,
		layout_height = 'wrap_content' ,
		layout_marginLeft = "4dp" ,
		layout_marginRight = "4dp" ,
	}
})
restt [# restt + 1] = _ENV [tid]
end
rest [# rest + 1] = restt
return luajava.loadlayout (rest)
end

function radin(rid,nid,func)
radoff[nid]=getVerticalBG({0x00ffffff,0x00ffffff},15,4,0xff545454)
radon[nid]=getVerticalBG({0xff27863D,0xff27863D},15)
return function()
for k,v in pairs(radiog[rid]) do
	luajava.getIdValue(k):setBackground(radoff[k])
	if k==nid and v~=true then
		luajava.getIdValue(k):setBackground(radon[k])
		v=true
		luajava.newThread(func):start()
	end
end
end
end

function changan.button(txt , func )
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
				background = getVerticalBG({0x00ffffff,0x00ffffff},15,3,0xff545454),
				onClick = function()
					uiadtext('执行: '..txt)
					changan.controlWater(_ENV[tid],200)
					luajava.newThread(function()
							pcall(func )
						end

					) : start()
				end

				,
				{
					TextView ,
					text = txt ,
					padding="4dp",
				textColor="#ffffff",
					textSize = "13sp" ,
					layout_width = "wrap_content" ,
				} ,
			} } )
	return _ENV[tid]
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

namelist = {}
param1 = {}
floattable = {}
function newfloat(name,func1,func2)
if _ENV[name]~=nil then floattable[name] = 1
	local function invoke2()
window:addView(_ENV[name], param1[name])
end

local runnable = luajava.getRunnable(invoke2)
local handler = luajava.getHandler()
handler:post(runnable)
return 0
end
floattable[name] = 1
local func = 开关(name.."k",func1,func2)
local function invoke(name,func1,func2)
if not name then name = "未设置" end
nameid = name..guid()
local ok
local RawX, RawY, x, y
nameid1 = name..guid()
if not namelist[name] then namelist[name] = false end
if namelist[name] ~= false then clclcl = "#aa269843" else clclcl = "#aa161616" end
param1[name] = getLayoutParams2()
_ENV[name] = luajava.loadlayout(
	{
		LinearLayout,
		layout_width = "wrap_content",
		id = luajava.newId(nameid1),
		layout_height = "wrap_content",
		background = luajava.loadlayout {
			GradientDrawable,
			color = clclcl,
			cornerRadius = 10
		},
		onClick = function()

		if namelist[name] == false then
		_ENV[name]:setBackground(luajava.loadlayout {
			GradientDrawable,
			color = "#aa269843",
			cornerRadius = 10
		})
		namelist[name] = true
		elseif namelist[name] == true then
		_ENV[name]:setBackground(luajava.loadlayout {
			GradientDrawable,
			color = "#aa161616",
			cornerRadius = 10
		})
		namelist[name] = false
		end
		luajava.newThread(function() pcall(func) end):start()
		end,

		onTouch = function(v, event)
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
		window:updateViewLayout(_ENV[name], param1[name])
		end
		end,
		{
			TextView,
			text = name,
			gravity = "center",
			layout_width = "wrap_content",
			layout_height = "wrap_content",
			padding={'10dp','5dp','10dp','5dp'}
		}
	})

local function invoke2()
window:addView(_ENV[name], param1[name])
end

local runnable = luajava.getRunnable(invoke2)
local handler = luajava.getHandler()
handler:post(runnable)

end

invoke(name,func1,func2)
end

function rmvfloat(name)
floattable[name] = 0
local function invoke2()
window:removeView(_ENV[name])
end
local runnable = luajava.getRunnable(invoke2)
local handler = luajava.getHandler()
handler:post(runnable)
end
radon={}
radoff={}
radiog={}
chazhi={} chajv={}
function changan.seek(name,bian,smin,smax,nows)
local thum= getVerticalBG({0xff7DFF43,0xff7DFF43},2,0,0xffffffff)
thum:setSize(40, 60)
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
		--background = getVerticalBG({按钮颜色,0},45),
		{
			TextView,
			padding={"5dp","10dp","0dp","10dp",},
			gravity = "top",
			textColor="#ffffff",
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
			progressDrawable={ getVerticalBG({0xff2A6F39,0xff2A6F39},4)},
			thumb=thum,
			progressHeight="5dp",
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
				uiadtext(name.." 已开启.","#ffffff")
			else
				_ENV [ name ] = "关"
				pcall(func2 )
				uiadtext(name.." 已关闭.","#a9a9a9")

			end

		end

	end
end

























function huiz()
	---绘制区域
	
	
	
end


stitle='长安UI'

sver="version: 1.0"

xfcpic="https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/arlogo"

视频链接="https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/cxkmp4"

titles='xxxxxxxxxxxxxxxxxxx'

背景图片='https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/dl_bg'

图标1='https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/lmx'

图标2='https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/lmx'

stab={
	{"启动","bm_launch"},
	{"防封","bm_ff"},
	{"功能","bm_gn"},
	{"美化","bm_mh"},
	{"设置","bm_sz"},
}



changan.menu({
	{	
		
		changan.switch(
			'功能',
			function()
				if 功能验证() then
					--这里写功能
					gg.alert('例子')
				end
			end,
			function()
				
			end),
		changan.radio4({--横向单选
				"单选",---小标题，不写不显示
				{"一二三四" ,
					function()
						
					end},
				{"五六七八" ,
					function()
						
					end},
				{"1234" ,
					function()
						
					end},
			}),
		changan.switch2(
			'功能',
			function()
				
			end,
			function()
				
			end),
		changan.check({
				{"悬浮窗2" ,
					function()
						newfloat("加速",function()
							--加速功能
							gg.alert("加速开")
								
								
							end,
							function()
								--加速关功能
								gg.alert("加速关")
								
								
								
							end)
						end,
						function()
							rmvfloat("加速")
						end
					}, {
					"例子",
					function()
						
					end,
					function()
						
					end
				},{
					"例子",
					function()
						
					end,
					function()
						
					end
				},{
					"例子",
					function()
						
					end,
					function()
						
					end
				},{
					"例子",
					function()
						
					end,
					function()
						
					end
				},
				
				
			}),
		changan.checkbox({
				{
					"例子",
					function()
						
					end,
					function()
						
					end
				},{
					"例子",
					function()
						
					end,
					function()
						
					end
				},{
					"例子",
					function()
						
					end,
					function()
						
					end
				},{
					"例子",
					function()
						
					end,
					function()
						
					end
				},
				
				
			}),
		changan.radio2({--横向单选
				"单选",---小标题，不写不显示
				{"一二三四" ,
					function()
						
					end},
				{"五六七八" ,
					function()
						
					end},
				
			}),
			changan.radio3({--竖单选
				--"xxx",---小标题，不写不显示
				{"一二三四" ,
					function()
						
					end},
				{"五六七八" ,
					function()
						
					end},
				
			}),
		changan.seek("拉条演示","ltxx",1,20,1),--“ltxx”为此拉条变量名字，使用时每个拉条不可重复
				changan.button(
					"调用拉条",
					function()
						gg.alert(ltxx)
					end),
		changan.box({ "道具赛" , ---box示例 可以删掉
					changan.switch("防至道具" ,
						function()
							
						end,
						function()
							
						end) ,
					changan.switch("自动聚能" ,
						function()
							
						end,
						function()
							
						end),
					changan.switch("滑板提速" ,
						function()
							
						end,
						function()
							
						end),
				} ) ,
		
		
		
		
	},{
		
	},{
		
	},{
		
		
		
		
	},{
		changan.switch2(
			'音量键隐藏开关',
			function()
				音量键=true
			end,
			function()
				音量键=false
			end),
		changan.anniu(
			"EXIT",--标题
			{
			{"退出",
			function()
				tuichu=1
			end},
			
		}),
		
		
		
	}
})