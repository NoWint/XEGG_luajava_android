







check字体颜色=0xff000000
switch颜色=0xff0062FF
按钮颜色=0xffefefef
vibra = context:getSystemService(Context.VIBRATOR_SERVICE)
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
	'heir',
	'hei_right',
	'heiraoff',
	'heiraon',
}
for i = 1,#ckimg do
jindu = i
checkimg(ckimg[i])
end
function 获取图片(txt)
txt = string.url(txt,"de")
ntxt = string.sub(string.gsub(txt,"/","-"),-10,-1)
if string.find(tostring(txt),"http") ~= nil then
if panduan("/sdcard/长安/图片/"..ntxt) == false then
file.download(txt,"/sdcard/长安/图片/"..ntxt)
else
	if file.length("/sdcard/长安/图片/"..ntxt) <= 1 then
file.download(txt,"/sdcard/长安/图片/"..ntxt)
end
end
txt = "/sdcard/长安/图片/"..ntxt
end
return luajava.getBitmapDrawable(txt)
end
function getRes(x)
return 获取图片("/sdcard/长安/图片/"..x)
end
function getVerticalBG(gtvb1,gtvb3,gtvb4,gtvb5)
if not gtvb4 then gtvb4 = 0 gtvb5 = 0xff000000 end
local jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(gtvb3)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors(gtvb1)
jianbians:setStroke(gtvb4,gtvb5)
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
function getCorner(gtvb1,gtvb3,gtvb4,gtvb5,g1,g2,g3,g4)
if not gtvb4 then gtvb4 = 0 gtvb5 = 0xff000000 end
local jianbians = luajava.new(GradientDrawable)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors(gtvb1)
jianbians:setStroke(gtvb4,gtvb5)--边框宽度和颜色
jianbians:setCornerRadii({g1,g1,g2,g2,g3,g3,g4,g4})
return jianbians
end
slctb = empty
slcta = getHorizontalBG({0xff3e92fc,0xff3e92fc},10)
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
	cornerRadius = 12
}
function getButtonBG()
local selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, getVerticalBG({0xffd7d7d7,0xffd7d7d7},12))
selector:addState({
	-android.R.attr.state_pressed
}, getVerticalBG({0x00ffffff,0x00ffffff},12))
return selector
end
function getSelector3()
selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, luajava.loadlayout {
	GradientDrawable,
	color = "#b9b9b9",
	cornerRadius = 10
}) -- 点击时候的背景
selector:addState({
	-android.R.attr.state_pressed
}, luajava.loadlayout {
	GradientDrawable,
	color = "#ffffff",
	cornerRadius = 10
}) -- 没点击的背景
return selector
end
loadYunLua("httpByQn0RTmbpsGdcPcXyFHiZ+j9yFx3DxxSkhAF7365IpTfJLgFcN4Pn8VMAs/N0I6/ieoXPoRl5J8bVfBY/1DVP6dDeVQPyi//Dpylxn0ySxWrU8pWyBetJM6jvRn/qy8/ccwhK9d8rhIgzwfN561pIBuG7JJ8WPkji9YvG2I7pcD0MZxMWX0oDMRp6Qydz34q7vhpMd1uDJDwGFiF3Vzot71rn8O27meS9/OPuPcPPcLfdxuWHeIAfYKTyTwFRlTAbAiQgiK/BV79TtLpcEyJSALy+sk+BZNTc0DoMbtML2ACKRQJcFZsIZKc")---UI配置[勿删]
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
if isswitch then
return false
end
isswitch = true
cebian = {
	LinearLayout,
	layout_height = "match_parent",
	layout_width = "wrap_content",
	orientation = "horizontal",
	gravity = "center",
	orientation='vertical',
}
jmbg={}
for i = 1,#stab do
	jmbg[i]=getSelector()
cebian[#cebian+1] = {
	LinearLayout,
	id = "jm"..i,
	gravity="center_vertical",
	layout_height = "wrap_content",
	layout_width = "80dp",
	layout_marginRight = "3dp",
	layout_marginLeft = "3dp",
	elevation='2dp',
	onClick = function() 切换(i) end,
	background=jmbg[i],
	{ImageView,
	padding='2dp',
	src=获取图片(stab[i][2]),
	layout_height='20dp',
	layout_width='20dp',
	layout_marginLeft='1dp',
	},
	{
		TextView,
		text = stab[i][1],
		id="jmt"..i,
		layout_marginLeft='2dp',
		gravity = "center_vertical",
		paddingLeft='3dp',
		textSize = "11sp",
		textColor = "#4d4d4d",
		layout_height = "20dp",
		layout_width = "wrap_content",
	}}
end
cebian = luajava.loadlayout({
	LinearLayout,
	orientation='vertical',
	layout_height='match_parent',
	background=getCorner({0xffe9e9e9,0xffe9e9e9},0,0,0x00ffffff,18,0,0,18),
	{
			LinearLayout,
			--layout_gravity="center_vertical|right",
			padding={"2dp","2dp","8dp","2dp"},
			layout_marginLeft='9dp',
			layout_marginRight='2dp',
			layout_marginTop='2dp',
			layout_marginBottom='2dp',
			
			layout_width = "40dp",
			layout_height = "24dp",
			gravity = "center",
			onClick = 隐藏,
			onTouch = hanshu,
			{LinearLayout,
			layout_width='6dp',
			layout_height='6dp',
			background=getVerticalBG({0xffff5f57,0xffff5f57},360),
			layout_marginLeft='2dp',
			layout_marginRight='2dp'
			},{LinearLayout,
			layout_width='6dp',
			layout_height='6dp',
			background=getVerticalBG({0xfffebc2d,0xfffebc2d},360),
			layout_marginLeft='2dp',
			layout_marginRight='2dp'
			},{LinearLayout,
			layout_width='6dp',
			layout_height='6dp',
			background=getVerticalBG({0xff29c840,0xff29c840},360),
			layout_marginLeft='2dp',
			layout_marginRight='2dp'
			},
		},
	{
		ScrollView,
		layout_height = "wrap_content",
		layout_width = "wrap_content",
		cebian
	}})
for i = 1,#stab do
_ENV["layout"..i] = luajava.loadlayout({
	LinearLayout,
	layout_width = "250dp",
	layout_height = "200dp",
	visibility = "gone",
	orientation = "vertical",
	{
		ScrollView,
		fillViewport = "true",
--padding = "10dp",
		gravity = "center",
		layout_width = "250dp",
		layout_height = "200dp",
		orientation = "horizontal",
		{
			LinearLayout,
			id = "layoutm"..i,
			layout_marginRight = "5dp",
			layout_marginLeft = "5dp",
			layout_width = "240dp",
			orientation = "vertical",
			gravity = "center_horizontal",
		}
	}})
end
ckou={
	LinearLayout,
	orientation='vertical',
	layout_width = "wrap_content",
	layout_height = "wrap_content",
	{LinearLayout,
	layout_height='30dp',
	layout_width='match_parent',
	gravity='center_vertical',
	onClick=function() end,
	onTouch=hanshu,
	{ImageView,
		src=getRes('heir'),
		colorFilter=0xff727272,
		layout_height='20dp',
		padding='2dp',
		layout_width='20dp',
		rotation=180,
		layout_marginLeft='10dp',
		onClick=上一页,
		onTouch=hanshu,
		id='lastp',
	},
	{ImageView,
		src=getRes('heir'),
		colorFilter=0xff727272,
		layout_height='20dp',
		padding='2dp',
		layout_width='20dp',
		layout_marginLeft='3dp',
		onClick=下一页,
		onTouch=hanshu,
		id='nextp',
	},
	{TextView,
		id='titlev',
		text=stab[1][1],
		textColor='#000000',
		textSize='13sp',
		layout_marginLeft='5dp',
		layout_height='30dp',
		gravity='center_vertical',
		onClick=function() end,
		onTouch=hanshu
	}
	}
}
for i = 1,#stab do
ckou[#ckou+1] = _ENV["layout"..i]
end
ckou = {
	LinearLayout,
	layout_width = "wrap_content",
	layout_height = "wrap_content",
	cebian,
	{
		LinearLayout,
		layout_marginBottom = "1dp",
		layout_marginTop = "1dp",
		layout_width = "1dp",
		layout_height = "match_parent",
		background = "#D7D7D7"
	}
,ckou
}

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
	{LinearLayout,
	orientation='vertical',
	id='chuangk',
	visibility='gone',
	
	ckou,
	},{
		ImageView,
		id = "control",
		background = 获取图片(xfcpic),
		layout_width = "40dp",
		layout_height = "40dp",
		onTouch = hanshu,
		onClick = 隐藏,
	}
}
local function invoke()
local ok
local RawX, RawY, x, y
mainLayoutParams = getLayoutParams()
floatWindow = luajava.loadlayout(floatWindow)
local function invoke2()
for k = 1,#stab do
for i = 1,#sview[k] do
_ENV["layoutm"..k]:addView(sview[k][i])
end
end

window:addView(floatWindow, mainLayoutParams)
block('end')
end
切换(1)
local runnable = luajava.getRunnable(invoke2)
local handler = luajava.getHandler()
handler:post(runnable)
block('join')

local isMove


end

invoke(swib1,swib2)
gg.setVisible(false)
luajava.setFloatingWindowHide(true)
qhkai = 0
qiehuan = function()
if qhkai == 0 then
qhkai = 1
draw.remove()
gg.toast('UI已隐藏')
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
luajava.runUiThread(function() floatWindow:setVisibility(View.VISIBLE) end)
luajava.runUiThread(function()
	changan.controlBig(floatWindow,400)
	end)

end
end

huiz()
while true do
if tuichu == 1 then break end
jianting3(qiehuan)
gg.sleep(300)
end

luajava.setFloatingWindowHide(false)
end
changan.controlRotation9 = function(control, time,t)
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
changan.controlRotation9(boxpic[tid],0,90)
else
	tview : setVisibility (View.GONE)
changan.controlWater (_ENV [tid.."6"] , 200)
changan.controlRotation9(boxpic[tid],90,0)
end
end
boxes = {} boxpic = {}
function changan.box (views)
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
}
if type (views [1]) == "string" or type (views [1]) == "number" then
firadio [# firadio + 1] = {
	LinearLayout ,
	layout_width = 'fill_parent' ,
	layout_height = "wrap_content" ,
	gravity = "center_vertical" ,
	layout_marginTop = "2dp" ,
	layout_marginLeft='2dp',
	layout_marginRight='2dp',
	layout_marginBottom = "2dp" ,
	onClick = function ()
	visi (tid , ttid)
	end
	,
	background = getButtonBG(),
	{
		TextView , text = views [1] ,
		textSize = "12sp" ,
		layout_marginLeft = "5dp" ,
		layout_width = "match_parent" ,
		layout_weight=1,
		textColor = "#000000" ,
		gravity = "left" ,
	},{
		LinearLayout ,
		padding={"0dp","0dp","10dp","0dp"},
		layout_width = "24dp" ,
		layout_height = "24dp" ,
		gravity = "center",
		boxpic[tid],
	}
} else
	gg.alert ("changan.box的table内第一个元素必须是string") os.exit ()
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
corbk = true
当前ui = 1
function 上一页()
if 当前ui==1 then return 0 end
切换(当前ui-1)
end
function 下一页()
if 当前ui==#stab then return 0 end
切换(当前ui+1)
end
function 切换(x)
当前ui = x
luajava.runUiThread(function()
	if 当前ui==1 then lastp:setColorFilter(0xffb6b6b6) nextp:setColorFilter(0xff6b6b6b)
	
	elseif 当前ui==#stab then nextp:setColorFilter(0xffb6b6b6) lastp:setColorFilter(0xff6b6b6b)
	
	else
		lastp:setColorFilter(0xff6b6b6b)
		nextp:setColorFilter(0xff6b6b6b)
	end
	titlev:setText(stab[x][1])
	for i = 1,#stab do
	_ENV["jmt"..i]:setTextColor(0xff4d4d4d)
	_ENV['jm'..i]:setBackground(jmbg[i])
	_ENV["layout"..i]:setVisibility(View.GONE)
	end
	_ENV['jm'..当前ui]:setBackground(slcta)
	_ENV["jmt"..当前ui]:setTextColor(0xffffffff)
	_ENV["layout"..当前ui]:setVisibility(View.VISIBLE)
	YoYoImpl:with("FadeIn"):duration(400):playOn(_ENV["layout"..当前ui])
	end)
end
显示 = 0
beij2 = luajava.loadlayout({
	GradientDrawable,
	color = "#001E1C27",
	cornerRadius = 10
})


beij=getHorizontalBG({0xfff6f6f6,0xfff6f6f6},12)
显示 = 0
function 隐藏()
luajava.runUiThread(function()
	if tonumber(tostring(chuangk:getVisibility())) == 8.0 then
	control:setVisibility(View.GONE)
	显示 = 1
	chuangk:setVisibility(View.VISIBLE)
	YoYoImpl:with("FadeIn"):duration(800):playOn(floatWindow)
	floatWindow:setBackground(beij)
	else
	luajava.startThread(function()
	luajava.runUiThread(function()
		YoYoImpl:with("FadeOut"):duration(400):playOn(floatWindow)
	end)
	gg.sleep(400)
	luajava.runUiThread(function()
	chuangk:setVisibility(View.GONE)
	floatWindow:setBackground(beij2)
	control:setVisibility(View.VISIBLE) 显示 = 0
	YoYoImpl:with("FadeIn"):duration(400):playOn(floatWindow)
	end)
	end)
	end
	end)
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

if yinln[i].now > yinl[i].now then
audi:adjustStreamVolume(yinln[i].type,AudioManager.ADJUST_LOWER,0)
gg.alert("up")
elseif yinln[i].now < yinl[i].now then
audi:adjustStreamVolume(yinln[i].type,AudioManager.ADJUST_RAISE,0)
gg.alert("down\n"..yinln[i].now.."\n"..yinl[i].now)
end
end

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
function jianting(func)
yinln = {}
for i = 1,#audiotype do
yinln[i] = {}
yinln[i].type = audiotype[i]
yinln[i].now = audi:getStreamVolume(audiotype[i])
if yinln[i].now >= yinl[i].max then
audi:adjustStreamVolume(yinln[i].type,AudioManager.ADJUST_LOWER,0)
end
if yinln[i].now > yinl[i].now then
audi:setStreamVolume(yinln[i].type,yinl[i].now,0)
func()
end
end
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
function getShape3()
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(20)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({
	0x55FF9DBC,0x55FF9DBC
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

checkbg1 = getRes("heiraoff")
checkbg2 = getRes("heiraon")
switchs={}
function changan.intcheck(name,func1,func2)
nid = name..guid()
local func = 开关5(name,func1,func2,nid)
if not name then name = "未设置" end
switchs[nid] = {
	LinearLayout,
	layout_width = 'match_parent',
	layout_weight=1,
	layout_height = "wrap_content",
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
			ImageView,
			id = luajava.newId(nid),
			src = checkbg1,
			layout_width = '16dp',
			layout_height = '16dp',
			padding = "0dp",
			colorFilter=0xff545454
		},{
			TextView,
			--id=luajava.newId(nid.."t"),
			gravity = "left",
			text = name,
			layout_marginLeft='3dp',
			textColor=check字体颜色,
			textSize = "12sp",
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
	luajava.getIdValue(nid):setImageDrawable(checkbg2)
	--luajava.getIdValue(nid.."t"):setTextColor(switch颜色)
	--changan.controlWater(switchs[nid],300)
	end)
_ENV[name] = "开"
pcall(func1)
else
	vibra:vibrate(9)
luajava.runUiThread(function()
	luajava.getIdValue(nid):setImageDrawable(checkbg1)
	--luajava.getIdValue(nid.."t"):setTextColor(0xff232323)
	--changan.controlWater(switchs[nid],300)
	end)
_ENV[name] = "关"
pcall(func2)
end
end
end
end
function changan.check(cklist)
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
rstt = changan.intcheck(name,func1,func2)
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
	YoYoImpl:with("SlideInLeft"):duration(600):playOn(switches["2s"..sname])
	luajava.getIdValue(nid.."g"):setVisibility(View.VISIBLE)
luajava.getIdValue(nid):setBackground(checkbg)
	end)
_ENV[name] = "开"

pcall(func1)
else
	vibra:vibrate(9)
luajava.runUiThread(function()
	luajava.getIdValue(nid.."g"):setVisibility(View.GONE)
	YoYoImpl:with("SlideInRight"):duration(600):playOn(switches["1s"..sname])
	luajava.getIdValue(nid.."k"):setVisibility(View.VISIBLE)
luajava.getIdValue(nid):setBackground(checkbga)
	end)
_ENV[name] = "关"
pcall(func2)
end
end
if localname=="摇一摇隐藏UI" then yyfunc=outfunc end
if localname=="音量键隐藏UI" then ylfunc=outfunc end
return outfunc
end
end

function changan.switch(name,func1,func2,miaoshu)
if not checkbg then
	checkbg = getVerticalBG({0xff34c759,0xff34c759},45)
checkbg0 = getShape2(
	45,
	{
		0xff232323,0xff232323
	},
	4,0x00ffffff)
checkbga = getVerticalBG({0xffd7d7d7,0xffd7d7d7},45)
switchbg1 = getShape(
	45,
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
	layout_width = '34dp',
	layout_height = '18dp',
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
		layout_width = '16dp',
		layout_height = '16dp',
		
	},
}
switches["2s"..nid] = luajava.loadlayout {
	FrameLayout,
	onClick = function() luajava.newThread(function() func() end):start() end,
	layout_width = '34dp',
	layout_height = '18dp',
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
		layout_width = '16dp',
		layout_height = '16dp',

		
	}
}
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
		padding = {
		"0dp","0dp","6dp","0dp"
	},
		{
			TextView,
			gravity = "top",
			text = name,
			textColor = "#000000",
			textSize = "12sp",
			layout_weight = 1,
			layout_width = '80dp',
			layout_marginLeft = "5dp",
			layout_marginRight = "20dp",
		},
		{
			TextView,
			gravity = "center",
			layout_height = "match_parent",
			text = miaoshu,
			textSize = "10sp",
			layout_width = "wrap_content",
			layout_marginLeft = "-50dp",
			layout_weight = 1,
			textColor = "#A5A5A5",
		},
		{
			FrameLayout,
			id=luajava.newId(nid),
			background = checkbga,
			elevation = "1dp",
			onClick = function() luajava.newThread(function() func() end):start() end,
			layout_width = 'wrap_content',
			layout_height = 'wrap_content',
			gravity = "left",
			padding="2dp",
			switches["1s"..nid],switches["2s"..nid]
		}}
})
return rest
end
function initbg()
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(10)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({
--0x00444444,0x00ffffff
	0xffffffff,0xffffffff
})
jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
jianbians:setStroke(0,0xff000000)--边框宽度和颜色
return jianbians
end

buts={}
heir=getRes("heir")
function changan.button(txt,func,txtc)
if not txt then txt = "未设置" end
if not txtc then txtc="#000000" end
local tid="Cbutton"..guid()
buts[tid]=luajava.loadlayout(
	{
		LinearLayout,
		layout_width = 'match_parent',
		layout_height = "wrap_content", {
			LinearLayout,
			layout_width = "fill_parent",
			gravity = "center_vertical",
			layout_marginTop = "1dp",
			layout_marginBottom = "1dp",
			layout_marginLeft='3dp',
			layout_marginRight='3dp',
			background = getButtonBG(),
			padding="5dp",
			onClick = function() 
				changan.controlWater(buts[tid],300)
			luajava.newThread(func):start() end,
			{
				TextView,
--id = luajava.newId(tid),
				textColor = txtc,
				text = txt,
				textSize = "12sp",
				layout_height = "wrap_content",
				layout_width = "fill_parent",
				layout_weight=1,
			},{ImageView,
				src=heir,
				layout_height="14dp",
				layout_width="14dp",
				colorFilter=0xff999999
			}
		}})
return buts[tid]
end
function changan.text(txt,color,size)
if not txt then txt = "未设置文字" end
if not color then color = "#545454" end
if not size then size = "12sp" end
return luajava.loadlayout(
	{
		TextView,
		text = txt,
		textSize = size,
		textColor = color,
		layout_width = "match_parent",
		padding={'10dp','0dp','0dp','0dp'}
	})
end

function 开关(name,func1,func2)
if func1 == nil then func1 = function() end end
if func2 == nil then func2 = function() end end
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

颜色1 = "80C3F9"
颜色2 = "545454"

function 开关2(name,func1,func2,nid)
if func1 == nil then func1 = "" end
if func2 == nil then func2 = "" end
if type(func1) == "function" then
return function()
namers = _ENV[name]
if namers ~= "开" then
luajava.runUiThread(function()
	luajava.getIdValue(nid):setBackground(luajava.getBitmapDrawable("/sdcard/长安/图片/check2"))
	end)
_ENV[name] = "开"
func1()
else
	luajava.runUiThread(function()
	luajava.getIdValue(nid):setBackground(luajava.getBitmapDrawable("/sdcard/长安/图片/check1"))
	end)
_ENV[name] = "关"
func2()
end

end
end
end


function card(v)
local t={
	LinearLayout,
	layout_width='match_parent',
	orientation='vertical',
	background=getVerticalBG({0xfff2f2f2,0xfff2f2f2},12,2,0xffeaeaea)
}
for i=1,#v do
	table.insert(t,v[i])
	if i~=#v then
		table.insert(t,{
			LinearLayout,
			layout_width='match_parent',
			layout_height='1dp',
			background='#eaeaea',
			layout_marginLeft='10dp',
			layout_marginRight='10dp',
		})
	end
end
return luajava.loadlayout({
	LinearLayout,
	layout_width='match_parent',
	padding='10dp',
	t})
end

















































function huiz()---绘制必须放在这里面
	--draw.text('例子',200,200)
	
end

stab = {
--菜单名字，添加即可加页数，需要与结尾配置表对应
	{"公告","https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/ios1"},--我准备了6个图标，改结尾数字1-6或者替换成你自己图片链接
	{"防封","https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/ios2"},
	{"功能","https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/ios3"},
	--{"美化","https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/ios3"}
	{"设置","https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/ios6"},
}



xfcpic = "https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/changan"
--悬浮窗链接或路径


--单独控件是没有背景的，必须用card({ }),套一下分区不然会比较丑

changan.menu(
	{
		{--1
			card({
				changan.button("选择进程",gg.setProcessX),
				--changan.text("文字演示","#0077FF","20sp"),
				--changan.text("文字演示文字演示文字演示","#545454","10sp"),
				changan.switch(
					"功能",
					function()
						
					end,
					function()
						
					end
				),
				changan.box({"安全功能",
					changan.check({
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
						},{
							"测试1",
							function()
								
							end,
							function()
								
							end
						},
						
					}),--check结尾
				}),--box结尾
			}),--card结尾
			
			changan.text("公告","#A11322","13sp"),
			changan.text("文字演示文字演示文字演示","#545454","10sp"),--text搭配card分区
			card({
				changan.box({"危险功能",
					changan.check({
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
						},{
							"测试1",
							function()
										
							end,
							function()
								
							end
						},
					}),--check结尾
				}),--box结尾
				
			})--card结尾
			
			
		}, {
--2

		}, {
--3

		}, {
--第四页
			--changan.switch("6"),
			changan.text("\n\n\n"),
			card({
				changan.button("退出",
					function()
						luajava.setFloatingWindowHide(false)
						tuichu=1
					end),
			}),
		}, {
--第五页，没有写菜单标题所以不显示

		},{
			
		},


	})
--配置表添加表即可加页数，只需要与上边菜单标题数对应



