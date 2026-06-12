


vibra = context:getSystemService(Context.VIBRATOR_SERVICE)
changan = {}
local changan = changan
local android = import('android.*')
function write(fileName, content)
file.write(fileName, content)
end
function panduan(rec) fille,err = io.open(rec) if fille == nil then return false else return true end end
function read(fileName) f = assert(io.open(fileName, 'r')) content = f:read("*all") f:close() return content end
function wtcf(lujing,neirong)
write("/sdcard/水原千鹤/配置文件/"..lujing,neirong)
end
function rdcf(lujing)
return read("/sdcard/水原千鹤/配置文件/"..lujing)
end

开 = "开" 关 = "关"
function checkimg(tmp)
if panduan("/sdcard/水原千鹤/图片/"..tmp) ~= true then
gg.toast("正在下载资源"..tmp.."\n请耐心等待")
download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..tmp,"/sdcard/水原千鹤/图片/"..tmp)
end
end
ckimg = {
	'quarkcheckoff',
	'quarkcheckon',
	'dz_check',
	'meituan',
	'heir',
	'hei_right',
	"arlogo"
}
for i = 1,#ckimg do
jindu = i
checkimg(ckimg[i])
end
function 获取图片(txt)
txt = string.url(txt,"de")
ntxt = string.sub(string.gsub(txt,"/","-"),-10,-1)
if string.find(tostring(txt),"http") ~= nil then
if panduan("/sdcard/水原千鹤/图片/"..ntxt) == false then
file.download(txt,"/sdcard/水原千鹤/图片/"..ntxt)
else
	if file.length("/sdcard/水原千鹤/图片/"..ntxt) <= 1 then
file.download(txt,"/sdcard/水原千鹤/图片/"..ntxt)
end
end
txt = "/sdcard/水原千鹤/图片/"..ntxt
end
return luajava.getBitmapDrawable(txt)
end
function getRes(x)
return 获取图片("/sdcard/水原千鹤/图片/"..x)
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

slctb = getVerticalBG({0xffefefef,0xffefefef},10)
slcta = getHorizontalBG({0xff0077ff,0xff975DFF},10)
function getButtonBG()
local selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, getVerticalBG({0xffd7d7d7,0xffd7d7d7},15))
selector:addState({
	-android.R.attr.state_pressed
}, getVerticalBG({0xffffffff,0xffffffff},15))
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
function 获取图片(txt)
txt = string.url(txt,"de")
ntxt = string.sub(string.gsub(txt,"/","-"),-10,-1)
if string.find(tostring(txt),"http") ~= nil then
if panduan("/sdcard/水原千鹤/图片/"..ntxt) == false then
file.download(txt,"/sdcard/水原千鹤/图片/"..ntxt)
else
	if file.length("/sdcard/水原千鹤/图片/"..ntxt) <= 1 then
file.download(txt,"/sdcard/水原千鹤/图片/"..ntxt)
end
end
txt = "/sdcard/水原千鹤/图片/"..ntxt
end
return luajava.getBitmapDrawable(txt)
end
YoYoImpl = luajava.getYoYoImpl()
changan.menu = function(sview)
菜单页数=#sview
当前分区={} 分区页数={}
侧边={} 功能区={} 顶边={
	LinearLayout,
	layout_height='match_parent',
	layout_width='match_parent',
	
}
beij=getHorizontalBG({0xffe9e9e9,0xffe9e9e9},25)
侧边ui={
	LinearLayout,
	layout_width='wrap_content',
	layout_height='match_parent',
	id='cebians',
	gravity='center',
}
jmbg={}
for i = 1,菜单页数 do
	分区页数[i]= #sview[i]
	table.insert(顶边,{
			TextView,
			layout_height='match_parent',
			layout_width='wrap_content',
			padding={'15dp','2dp','15dp','2dp'},
			text=sview[i]['分页名字'],
			textColor='#000000',
			textSize='13sp',
			gravity='center',
			id='ding'..i,
			elevation='2dp',
			layout_margin='4dp',
			background=getVerticalBG({0xffffffff,0xffffffff},10),
			onClick=function() 切换(i) end,
		})
	功能区[i]={}
	jmbg[i]={}
	local cebian = {
		LinearLayout,
		layout_height = "match_parent",
		layout_width = "wrap_content",
		orientation = "horizontal",
		gravity = "center",
		orientation='vertical',
	}
	local layoutm={
			LinearLayout,
			id = "layoutm"..i,
			padding='4dp',
			layout_width = "match_parent",
			orientation = "vertical",
			gravity = "center_horizontal",
		}
	
	for j = 1,分区页数[i] do
		jmbg[i][j]={
			getVerticalBG({0xffffffff,0xffffffff},0),
			getVerticalBG({0x00f7f8fa,0x00f7f8fa},0)
		}
		cebian[#cebian+1] = 
			{
				TextView,
				id = "jm"..i..j,
				background=jmbg[i][j][1],
				text = sview[i][j]['分区名字'],
				gravity = "center",
				textSize = "12sp",
				textColor = "#000000",
				layout_height = "34dp",
				layout_width = "68dp",
				onClick=function() 分区(j) end
			}
		local menulayout={
			LinearLayout,
			layout_width='match_parent',
			layout_height='wrap_content',
			visibility = "gone",
			orientation = "vertical",
			id='menu'..i..j,
			
		}
		for k,v in pairs(sview[i][j]['功能配置']) do
			table.insert(menulayout,v)
		end
		local menulayout=luajava.loadlayout(menulayout)
		功能区[i][j]=menulayout
		table.insert(layoutm,menulayout)
	end
	侧边[i] = luajava.loadlayout(
	{
		ScrollView,
		visibility='gone',
		layout_height = "wrap_content",
		layout_width = "wrap_content",
		cebian
	})
	table.insert(侧边ui,侧边[i])
local menus={
	LinearLayout,
	layout_width = "300dp",
	layout_height = "200dp",
	visibility = "gone",
	orientation = "vertical",
	background={
		GradientDrawable,
		color = "#ffffffff",
		cornerRadius = 0
	},
	{
		ScrollView,
		fillViewport = "true",
--padding = "10dp",
		gravity = "center",
		layout_width = "match_parent",
		layout_height = "200dp",
		orientation = "horizontal",
		layoutm
	}}

_ENV["layout"..i] = luajava.loadlayout(menus)
end
顶边={LinearLayout,
	layout_width='match_parent',
	layout_height='match_parent',
	layout_marginRight='100dp',
	onClick=function() end,
	onTouch=hanshu,
	顶边
}
ckou = {
	LinearLayout,
	layout_width = "wrap_content",
	layout_height = "wrap_content",
	{ScrollView,
	layout_height='match_parent',
	layout_width='wrap_content',
	侧边ui}
}
for i = 1,菜单页数 do
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
	{LinearLayout,
	orientation='vertical',
	id='chuangk',
	visibility='gone',
	{--顶部栏
		FrameLayout,
		orientation = "horizontal",
		padding = "2dp",
		layout_height='35dp',
		layout_width="fill_parent",
		background=getCorner({0xffFFDC50,0xffFFDC50},20,0,0xffFFE543,25,25,0,0),
		顶边,
		{
			LinearLayout,
			layout_gravity="center_vertical|right",
			padding={"2dp","2dp","8dp","2dp"},
			layout_marginLeft='2dp',
			layout_marginRight='2dp',
			layout_marginTop='2dp',
			layout_marginBottom='2dp',
			
			layout_width = "40dp",
			layout_height = "24dp",
			gravity = "center",
			onClick = 隐藏,
			onTouch = hanshu,
			{ImageView,
				layout_height='17dp',
				layout_width='17dp',
				src=getRes('heir'),
				colorFilter=0xff000000,
				rotation=-90,
			}
		}
	},
	ckou,
	},{FrameLayout,
	id='ggscro',
	layout_marginTop='236dp',
	layout_marginLeft='65dp',
	layout_height='60dp',
	layout_width='300dp',
	layout_margin='3dp',
	elevation='2dp',
	background=getCorner({0xffFFF9E3,0xffFFF9E3},12,0,0xff000000,20,20,50,50),
	{LinearLayout,
		layout_height='45dp',
		layout_width='match_parent',
		layout_gravity='bottom',
		background=getVerticalBG({0xff000000,0xff000000},90,1,0x00ffffff),
		gravity='right',
		padding={'60dp','0dp','0dp','0dp'},
			{LinearLayout,
				layout_height='match_parent',
				layout_width='match_parent',
				layout_weight=1,
				{ScrollView,
				layout_height='match_parent',
				layout_width='match_parent',
				{TextView,
				layout_height='wrap_content',
				layout_width='match_parent',
				textColor='#ffffff',
				textSize='10sp',
				id=luajava.newId('checklist'),
			}}},{LinearLayout,
				layout_height='match_parent',
				layout_width='1dp',
				background='#909496',
				},{LinearLayout,
				layout_height='match_parent',
				layout_width='match_parent',
				layout_weight=1,
				padding={'2dp','0dp','0dp','0dp'},
				{ScrollView,
				layout_height='match_parent',
				layout_width='match_parent',
				{TextView,
				layout_height='wrap_content',
				layout_width='match_parent',
				textColor='#ffffff',
				textSize='10sp',
				id=luajava.newId('paidui'),
			}}},
		{	LinearLayout,
			layout_height='45dp',
			layout_width='70dp',
			background=getCorner({0xffFFE543,0xffFFE543},90,0,0xffFFE543,0,90,90,0),
			gravity='center',
			onClick=结算,
			{TextView,
				text='结算',
				textSize='12sp',
				textColor='#000000',
				
			}
		}
	},
	{LinearLayout,
	layout_height='match_parent',
	layout_width='match_parent',
		{ImageView,
		src=getRes('meituan'),
		layout_height='52dp',
		layout_width='45dp'
			
		},
		{LinearLayout,
			id='gggscro',
			orientation='vertical',
			layout_width='match_parent',
			layout_weight=1,
			layout_height='wrap_content',
		}
	}
	},{
		ImageView,
		id = "control",
		background = luajava.getBitmapDrawable(悬浮窗图标),
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
	
window:addView(floatWindow, mainLayoutParams)
block('end')
end

local runnable = luajava.getRunnable(invoke2)
local handler = luajava.getHandler()
handler:post(runnable)
block('join')

local isMove


end

invoke(swib1,swib2)
切换(1) 分区(1)
隐藏()
gg.setVisible(false)
luajava.setFloatingWindowHide(true)
qhkai = 0
qiehuan = function()
if qhkai == 0 then
qhkai = 1
draw.remove()
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
draw.text('.', -9200,-9200)
luajava.runUiThread(function() floatWindow:setVisibility(View.VISIBLE) end)
luajava.runUiThread(function()
	changan.controlBig(floatWindow,400)
	end)

end
end

huiz()
draw.text('.', -9200,-9200)

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
	layout_height = "40dp" ,
	gravity = "center_vertical" ,
	layout_marginTop = "2dp" ,
	layout_marginLeft='2dp',
	layout_marginRight='2dp',
	elevation='2dp',
	layout_marginBottom = "4dp" ,
	onClick = function ()
	visi (tid , ttid)
	end
	,
	background = getButtonBG(),
	{
		TextView , text = views [1] ,
		textSize = "13sp" ,
		layout_marginLeft = "15dp" ,
		layout_width = "match_parent" ,
		layout_weight=1,
		textColor = "#000000" ,
		gravity = "left" ,
	},{
		LinearLayout ,
		padding={"0dp","0dp","10dp","0dp"},
		layout_width = "30dp" ,
		layout_height = "30dp" ,
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

function 分区(x)
	当前分区[当前ui]=x
	luajava.runUiThread(function()
		for i=1,分区页数[当前ui] do
			_ENV['menu'..当前ui..i]:setVisibility(View.GONE)
			_ENV['jm'..当前ui..i]:setTextColor(0xff9C9FA5)
			_ENV['jm'..当前ui..i]:setBackground(jmbg[当前ui][i][2])
			
		end
		_ENV['menu'..当前ui..当前分区[当前ui]]:setVisibility(View.VISIBLE)
		_ENV['jm'..当前ui..当前分区[当前ui]]:setTextColor(0xff000000)
		_ENV['jm'..当前ui..当前分区[当前ui]]:setBackground(jmbg[当前ui][当前分区[当前ui]][1])
		
	end)
end
function 切换(x)
当前ui = x
luajava.runUiThread(function()
	if 当前分区[当前ui]==nil then
		分区(1)
	end
	for i = 1,菜单页数 do
	_ENV["ding"..i]:setTextColor(0xff9C9FA5)
	_ENV["layout"..i]:setVisibility(View.GONE)
	侧边[i]:setVisibility(View.GONE)
	end
	_ENV["ding"..当前ui]:setTextColor(0xff000000)
	_ENV["layout"..当前ui]:setVisibility(View.VISIBLE)
	侧边[当前ui]:setVisibility(View.VISIBLE)
	--YoYoImpl:with("FadeIn"):duration(800):playOn(_ENV["layout"..当前ui])
	end)
end
显示 = 0
beij2 = luajava.loadlayout({
	GradientDrawable,
	color = "#001E1C27",
	cornerRadius = 10
})


显示 = 0
function 隐藏()
luajava.runUiThread(function()
	if tonumber(tostring(chuangk:getVisibility())) == 8.0 then
	control:setVisibility(View.GONE)
	显示 = 1
	ggscro:setVisibility(View.VISIBLE)
	chuangk:setVisibility(View.VISIBLE)
	_ENV["layout"..当前ui]:setVisibility(View.VISIBLE)
	YoYoImpl:with("FadeIn"):duration(500):playOn(floatWindow)
	floatWindow:setBackground(beij)
	else
	ggscro:setVisibility(View.GONE)
	chuangk:setVisibility(View.GONE)
	floatWindow:setBackground(beij2)
	control:setVisibility(View.VISIBLE) 显示 = 0
	_ENV["layout"..当前ui]:setVisibility(View.GONE)
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
			layout_margin='5dp',
			elevation='3dp',
			background = getButtonBG(),
			padding="10dp",
			onClick = function() 
				changan.controlWater(buts[tid],300)
			luajava.newThread(func):start() end,
			{
				TextView,
--id = luajava.newId(tid),
				textColor = txtc,
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

checkbg1 = getRes("quarkcheckoff")
checkbg2 = getRes("quarkcheckon")
checkbg3 = getVerticalBG({0x00aaaaaa,0x00aaaaaa},360,8,0xff999999)
checkbg4 = getVerticalBG({0x00000000,0x00000000},360,10,0xff000000)
radoff = getVerticalBG({0xaaBDC7CD,0xaaBDC7CD},360)
radon = getRes("dz_check")

radiog={}
function changan.intradio(nid,name,func)
return {
	LinearLayout ,
	layout_width = 'match_parent' ,
	layout_height = "wrap_content" ,
	layout_weight=1,
	layout_marginLeft = "2dp" ,
	layout_marginRight = "5dp" ,
	layout_marginTop='2dp',
	layout_marginBottom='8dp',
	gravity = "center_vertical" ,
	onClick = function ()
	--changan.controlWater (_ENV [tid] , 200)
	func()
	end

	,
	{
		ImageView ,
		id = luajava.newId (nid) ,
		layout_width = '15dp' ,
		layout_height = "15dp" ,
		layout_marginLeft = "2dp" ,
		layout_marginRight = "4dp" ,
		src =radoff ,
		padding='0dp',
	} , {
		TextView ,
		gravity = "top" ,
		text = name ,
		textSize="12sp",
		textColor = '#000000' ,
		layout_width = 'wrap_content' ,
		layout_height = 'wrap_content' ,
		
	}
}
end
function changan.radio(cklist)
local rid=guid()
radiog[rid]={}
rest = {
	LinearLayout ,
	layout_width = 'match_parent' ,
	layout_height = "wrap_content" ,
	layout_marginTop = "10dp" ,
	

}
local restt={
	LinearLayout ,
	layout_width = 'match_parent' ,
	layout_weight=1,
	layout_height = "wrap_content" ,
	gravity = "left" ,
	orientation='vertical',
}

	for i = 1, #cklist,4 do
	local tempTable = {LinearLayout,
		layout_width = 'fill_parent',
		layout_height = "wrap_content",
		gravity = "left",
		orientation="horizontal"
	}
	for j = 0, 3 do
		if cklist[i + j] ~= nil then
		local nid = name..guid ()
		local name = cklist[i + j][1]
		radiog[rid][nid]=false
		local func1 = radin(rid,nid,cklist[i + j][2],name)
		if not name then name = "未设置" end
			local rstt = changan.intradio(nid,name,func1)
			table.insert(tempTable, rstt)
		else
			table.insert(tempTable, {LinearLayout,
			layout_width = 'match_parent',
			layout_weight=1,})
		end
	end
	table.insert(restt, tempTable)
	end


rest [# rest + 1] = restt
return luajava.loadlayout (rest)
end
function radin(rid,nid,func,name)
return function()
for k,v in pairs(radiog[rid]) do
	if k==nid then
		if v~=true then
			luajava.getIdValue(k):setImageDrawable(radon)
			radiog[rid][k]=true
			操作func({
				id=rid,
				name=name,
				func=func
			})
		else
			luajava.getIdValue(k):setImageDrawable(radoff)
			radiog[rid][k]=false
			操作func({
				id=rid,
				name=name,
				func=func
			},true)
		end
	else
		radiog[rid][k]=false
		luajava.getIdValue(k):setImageDrawable(radoff)
	end
end
end
end

switchs={}
function changan.intcheck(name,func1,func2,picurl)
nid = name..guid()
local func = 开关5(name,func1,func2,nid)
if not name then name = "未设置" end
switchs[nid] = {
	LinearLayout,
	layout_width = '70dp',
	layout_height = "wrap_content",
	layout_marginTop = "1dp",
	layout_marginBottom = "1dp",
	padding = "1dp",
	orientation='vertical',
	gravity='center_horizontal',
	{ImageView,
		layout_height='45dp',
		layout_width='45dp',
		background=获取图片(picurl),
		onClick = function() luajava.newThread(function() func() end):start() end,
	},
	{
		LinearLayout,
		padding="3dp",
		onClick = function() luajava.newThread(function() func() end):start() end,
		layout_width = 'fill_parent',
		layout_height = "wrap_content",
		gravity = "center_horizontal",
		--background=getVerticalBG({0xffFFFDF2,0xddffffff,0xffFFFDF2},15,8,0xffFFDA71),
		{
			TextView,
			id=luajava.newId(nid.."t"),
			gravity = "center",
			text = name,
			textColor='#555658',
			textSize = "10sp",
--layout_marginLeft="8dp",
			layout_width = '40dp',
		},{
			FrameLayout,
			id = luajava.newId(nid),
			background = checkbg3,
			layout_width = '15dp',
			layout_height = '15dp',
			padding = "0dp",
		},
		}
}
return switchs[nid]
end
function changan.intcheck2(name,func1,func2)
nid = name..guid()
local func = 开关6(name,func1,func2,nid)
if not name then name = "未设置" end
switchs[nid] = {
	LinearLayout,
	layout_width = '70dp',
	layout_height = "wrap_content",
	layout_marginTop = "1dp",
	layout_marginBottom = "1dp",
	padding = "1dp",
	orientation='vertical',
	gravity='center_horizontal',
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
			layout_width = '25dp',
			layout_height = '25dp',
			padding = "0dp",
		},{
			TextView,
			id=luajava.newId(nid.."t"),
			gravity = "left",
			text = name,
			textColor='#555658',
			textSize = "12sp",
--layout_marginLeft="8dp",
			layout_width = 'match_parent',
	layout_weight=1,
		},
		}
}
return switchs[nid]
end
function 开关6(name,func1,func2,nid)
local sname = nid
local localname=name
name = name..guid()
_ENV[name] = "关"
if type(func1) ~= 'function' then func1 = function() end end
if type(func2) ~= 'function' == nil then func2 = function() end end
return function()
namers = _ENV[name]
if namers ~= "开" then
vibra:vibrate(9)
luajava.runUiThread(function()
	luajava.getIdValue(nid):setBackground(checkbg2)
	luajava.getIdValue(nid.."t"):setTextColor(0xff000000)
	--changan.controlWater(switchs[nid],300)
	end)
_ENV[name] = "开"
if functable[nid]==nil then
操作func({
	id=nid,
	name='[开启]'..localname,
	func=func1
})
else
	操作func({id=nid},true)
end
else
	vibra:vibrate(9)
luajava.runUiThread(function()
	luajava.getIdValue(nid):setBackground(checkbg1)
	luajava.getIdValue(nid.."t"):setTextColor(0xff555658)
	--changan.controlWater(switchs[nid],300)
	end)
_ENV[name] = "关"
if functable[nid]==nil then
操作func({
	id=nid,
	name='[关闭]'..localname,
	func=func2
})
else
	操作func({id=nid},true)
end
end
end
end
function 开关5(name,func1,func2,nid)
local sname = nid
local localname=name
name = name..guid()
_ENV[name] = "关"
if type(func1) ~= 'function' then func1 = function() end end
if type(func2) ~= 'function' == nil then func2 = function() end end
return function()
namers = _ENV[name]
if namers ~= "开" then
vibra:vibrate(9)
luajava.runUiThread(function()
	luajava.getIdValue(nid):setBackground(checkbg4)
	luajava.getIdValue(nid.."t"):setTextColor(0xff000000)
	--changan.controlWater(switchs[nid],300)
	end)
_ENV[name] = "开"
if functable[nid]==nil then
操作func({
	id=nid,
	name='[开启]'..localname,
	func=func1
})
else
	操作func({id=nid},true)
end
else
	vibra:vibrate(9)
luajava.runUiThread(function()
	luajava.getIdValue(nid):setBackground(checkbg3)
	luajava.getIdValue(nid.."t"):setTextColor(0xff555658)
	--changan.controlWater(switchs[nid],300)
	end)
_ENV[name] = "关"
if functable[nid]==nil then
操作func({
	id=nid,
	name='[关闭]'..localname,
	func=func2
})
else
	操作func({id=nid},true)
end
end
end
end
function changan.check(cklist,typ)
	if #cklist==0 then return nil end
	local rest = {
		LinearLayout,
		layout_width = 'fill_parent',
		layout_height = "wrap_content",
		gravity = "center",
		orientation="vertical",
	
	}

	for i = 1, #cklist,4 do
	local tempTable = {LinearLayout,
		layout_width = 'fill_parent',
		layout_height = "wrap_content",
		gravity = "left",
		orientation="horizontal"
	}
	for j = 0, 3 do
		if cklist[i + j] ~= nil then
		local name = cklist[i + j][1]
		local func1 = cklist[i + j][2]
		local func2 = cklist[i + j][3]
		local picurl=cklist[i+j][4]
		if not name then name = "未设置" end
		if typ==1 then
			rstt = changan.intcheck(name,func1,func2,picurl)
		else
			rstt = changan.intcheck2(name,func1,func2)
		end
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


















无=function() end


function 勾选1(tab)
	local t={}
	for i=1,#tab do
		table.insert(t,{
			tab[i]['名字'],
			tab[i]['开启'],
			tab[i]['关闭'],
			tab[i]['图片'],
		})
	end
	return changan.check(t,1)
end

function 勾选2(tab)
	
	local t={}
	for i=1,#tab do
		table.insert(t,{
			tab[i]['名字'],
			tab[i]['开启'],
			tab[i]['关闭'],
		})
	end
	return changan.check(t,2)
	
end

function 单选(tab)
	local t={}
	for i=1,#tab do
		table.insert(t,{
			tab[i]['名字'],
			tab[i]['开启'],
		})
	end
	return changan.radio(t)
end

function 结算()
	luajava.startThread(function()
		if 结算中 then gg.alert('等待结算完毕才可再次下单') return 0 end
		结算中=true
		paiduitable=table.copy(functable)
		functable={}
		local str='正在等待执行:\n'
		local cishu=0
		for i,v in pairs(paiduitable) do
		   str=str..v.name..' , '
		   cishu=cishu+1
		end
		if cishu==0 then str='' end
		luajava.runUiThread(function()
			luajava.getIdView('checklist'):setText('')
			luajava.getIdView('paidui'):setText(str)
		end)
		
		for i,v in pairs(paiduitable) do
			v.func()
			paiduitable[i]=nil
			local str='正在等待执行:\n'
			local cishu=0
			for m,l in pairs(paiduitable) do
			   str=str..l.name..' , '
			   cishu=cishu+1
			end
			if cishu==0 then str='' end
			luajava.runUiThread(function()
				luajava.getIdView('paidui'):setText(str)
			end)
		end
		
		结算中=false
	end)
end

functable={}
paiduitable={}
function 操作func(t,typ)
	luajava.runUiThread(function()
	if typ==true then
		functable[t.id]=nil
	else
		functable[t.id]=t
	end
	local str='已选择:\n'
	local cishu=0
	for i,v in pairs(functable) do
	   str=str..v.name..' , '
	   cishu=cishu+1
	end
	if cishu==0 then str='' end
	luajava.getIdView('checklist'):setText(str)
	end)
end





























例子1=function()
	
	gg.alert('例子1111')
	
end






悬浮窗图标 = "https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/changan"

function huiz()---绘制必须放在这里面
	
	
	
end

第一页 = {--创建分页，结尾调用
	['分页名字']="公告",
	[1]={--第一分区
		['分区名字']="分区例子1",
		['功能配置']={
				勾选1({--样式1
						{
							['名字']='油条',
							['图片']='https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/youtiao',
							['开启']=例子1 ,--调用了前边定义的function，建议功能全部这样写，格式规整
							['关闭']=无 ,--无被我定义了空function
						},{
							['名字']='猪肉大葱水饺',
							['图片']='https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/shuijiao',
							['开启']=function()--也可以直接写功能，就是看起来会很乱
										gg.sleep(1000)
										gg.toast('已开启')
									end ,
							['关闭']=function()
										gg.sleep(1000)
										gg.toast('已关闭')
									end,
						},{
							['名字']='手抓饼',
							['图片']='https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/shouzhuab',
							['开启']=function()--也可以直接写功能，就是看起来会很乱
										gg.sleep(1000)
										gg.toast('已开启')
									end ,
							['关闭']=function()
										gg.sleep(1000)
										gg.toast('已关闭')
									end,
						},{
							['名字']='馄饨',
							['图片']='https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/huntun',
							['开启']=function()--也可以直接写功能，就是看起来会很乱
										gg.sleep(1000)
										gg.toast('已开启')
									end ,
							['关闭']=function()
										gg.sleep(1000)
										gg.toast('已关闭')
									end,
						},
						
					}),
				
				勾选2({--样式2
						{
							['名字']='功能例子1',
							['开启']=function()--也可以直接写功能，就是看起来会很乱
										gg.sleep(1000)
										gg.toast('已开启')
									end ,
							['关闭']=function()
										gg.sleep(1000)
										gg.toast('已关闭')
									end,
						},{
							['名字']='功能例子2',
							['开启']=function()--也可以直接写功能，就是看起来会很乱
										gg.sleep(1000)
										gg.toast('已开启')
									end ,
							['关闭']=function()
										gg.sleep(1000)
										gg.toast('已关闭')
									end,
						},{
							['名字']='功能例子3',
							['开启']=function()--也可以直接写功能，就是看起来会很乱
										gg.sleep(1000)
										gg.toast('已开启')
									end ,
							['关闭']=function()
										gg.sleep(1000)
										gg.toast('已关闭')
									end,
						},{
							['名字']='功能例子4',
							['开启']=function()--也可以直接写功能，就是看起来会很乱
										gg.sleep(1000)
										gg.toast('已开启')
									end ,
							['关闭']=function()
										gg.sleep(1000)
										gg.toast('已关闭')
									end,
						},
						
					}),
				单选({
						{
							['名字']='功能例子1',
							['开启']=无 ,
						},{
							['名字']='功能例子2',
							['开启']=无 ,
						},{
							['名字']='功能例子3',
							['开启']=无 ,
						},{
							['名字']='功能例子4',
							['开启']=无 ,
						},
						
					}),
				
				
		}
	},
	[2]={--第二分区
		['分区名字']="分区例子2",
		['功能配置']={
			
		}
	},
	
}

第二页 = {
	['分页名字']="防封",
	[1]={--第一分区
		['分区名字']="防封例子1",
		['功能配置']={
				勾选1({--样式1
						{
							['名字']='功能例子1',
							['图片']='https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/arlogo',
							['开启']=例子1 ,--调用了前边定义的function，建议功能全部这样写，格式规整
							['关闭']=无 ,--无被我定义了空function
						},{
							['名字']='功能例子2',
							['图片']='https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/arlogo',
							['开启']=function()--也可以直接写功能，就是看起来会很乱
										
									end ,
							['关闭']=function()
										
									end,
						},{
							['名字']='功能例子3',
							['图片']='https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/arlogo',
							['开启']=function()--也可以直接写功能，就是看起来会很乱
										gg.sleep(1000)
										gg.toast('已开启')
									end ,
							['关闭']=function()
										gg.sleep(1000)
										gg.toast('已关闭')
									end,
						},{
							['名字']='功能例子4',
							['图片']='https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/arlogo',
							['开启']=function()--也可以直接写功能，就是看起来会很乱
										gg.sleep(1000)
										gg.toast('已开启')
									end ,
							['关闭']=function()
										gg.sleep(1000)
										gg.toast('已关闭')
									end,
						},
						
					}),
				
				勾选2({--样式2
						{
							['名字']='功能例子1',
							['开启']=function()--也可以直接写功能，就是看起来会很乱
										gg.sleep(1000)
										gg.toast('已开启')
									end ,
							['关闭']=function()
										gg.sleep(1000)
										gg.toast('已关闭')
									end,
						},{
							['名字']='功能例子2',
							['开启']=function()--也可以直接写功能，就是看起来会很乱
										gg.sleep(1000)
										gg.toast('已开启')
									end ,
							['关闭']=function()
										gg.sleep(1000)
										gg.toast('已关闭')
									end,
						},{
							['名字']='功能例子3',
							['开启']=function()--也可以直接写功能，就是看起来会很乱
										gg.sleep(1000)
										gg.toast('已开启')
									end ,
							['关闭']=function()
										gg.sleep(1000)
										gg.toast('已关闭')
									end,
						},{
							['名字']='功能例子4',
							['开启']=function()--也可以直接写功能，就是看起来会很乱
										gg.sleep(1000)
										gg.toast('已开启')
									end ,
							['关闭']=function()
										gg.sleep(1000)
										gg.toast('已关闭')
									end,
						},
						
					}),
				
				
		}
	},
	[2]={--第二分区
		['分区名字']="防封例子2",
		['功能配置']={
				勾选2({--样式2
						{
							['名字']='功能例子1',
							['开启']=function()--也可以直接写功能，就是看起来会很乱
										gg.sleep(1000)
										gg.toast('已开启')
									end ,
							['关闭']=function()
										gg.sleep(1000)
										gg.toast('已关闭')
									end,
						},{
							['名字']='功能例子2',
							['开启']=function()--也可以直接写功能，就是看起来会很乱
										gg.sleep(1000)
										gg.toast('已开启')
									end ,
							['关闭']=function()
										gg.sleep(1000)
										gg.toast('已关闭')
									end,
						},{
							['名字']='功能例子3',
							['开启']=function()--也可以直接写功能，就是看起来会很乱
										gg.sleep(1000)
										gg.toast('已开启')
									end ,
							['关闭']=function()
										gg.sleep(1000)
										gg.toast('已关闭')
									end,
						},{
							['名字']='功能例子4',
							['开启']=function()--也可以直接写功能，就是看起来会很乱
										gg.sleep(1000)
										gg.toast('已开启')
									end ,
							['关闭']=function()
										gg.sleep(1000)
										gg.toast('已关闭')
									end,
						},{
							['名字']='功能例子5',
							['开启']=function()--也可以直接写功能，就是看起来会很乱
										gg.sleep(1000)
										gg.toast('已开启')
									end ,
							['关闭']=function()
										gg.sleep(1000)
										gg.toast('已关闭')
									end,
						},
						
					}),
				
				
		}
	},
	
	
	
}

第三页={
	['分页名字']='美化',
	[1]={
		['分区名字']='套装美化',
		['功能配置']={
			勾选2({--样式2
						{
							['名字']='功能例子1',
							['开启']=function()--也可以直接写功能，就是看起来会很乱
										gg.sleep(1000)
										gg.toast('已开启')
									end ,
							['关闭']=function()
										gg.sleep(1000)
										gg.toast('已关闭')
									end,
						},{
							['名字']='功能例子2',
							['开启']=function()--也可以直接写功能，就是看起来会很乱
										gg.sleep(1000)
										gg.toast('已开启')
									end ,
							['关闭']=function()
										gg.sleep(1000)
										gg.toast('已关闭')
									end,
						},{
							['名字']='功能例子3',
							['开启']=function()--也可以直接写功能，就是看起来会很乱
										gg.sleep(1000)
										gg.toast('已开启')
									end ,
							['关闭']=function()
										gg.sleep(1000)
										gg.toast('已关闭')
									end,
						},{
							['名字']='功能例子4',
							['开启']=function()--也可以直接写功能，就是看起来会很乱
										gg.sleep(1000)
										gg.toast('已开启')
									end ,
							['关闭']=function()
										gg.sleep(1000)
										gg.toast('已关闭')
									end,
						},{
							['名字']='功能例子5',
							['开启']=function()--也可以直接写功能，就是看起来会很乱
										gg.sleep(1000)
										gg.toast('已开启')
									end ,
							['关闭']=function()
										gg.sleep(1000)
										gg.toast('已关闭')
									end,
						},
						
					}),
			
			
			
			
		}
	},
	[2]={
			['分区名字']='枪械美化',
			['功能配置']={
				勾选2({--样式2
						{
							['名字']='功能例子1',
							['开启']=function()--也可以直接写功能，就是看起来会很乱
										gg.sleep(1000)
										gg.toast('已开启')
									end ,
							['关闭']=function()
										gg.sleep(1000)
										gg.toast('已关闭')
									end,
						},{
							['名字']='功能例子2',
							['开启']=function()--也可以直接写功能，就是看起来会很乱
										gg.sleep(1000)
										gg.toast('已开启')
									end ,
							['关闭']=function()
										gg.sleep(1000)
										gg.toast('已关闭')
									end,
						},{
							['名字']='功能例子3',
							['开启']=function()--也可以直接写功能，就是看起来会很乱
										gg.sleep(1000)
										gg.toast('已开启')
									end ,
							['关闭']=function()
										gg.sleep(1000)
										gg.toast('已关闭')
									end,
						},{
							['名字']='功能例子4',
							['开启']=function()--也可以直接写功能，就是看起来会很乱
										gg.sleep(1000)
										gg.toast('已开启')
									end ,
							['关闭']=function()
										gg.sleep(1000)
										gg.toast('已关闭')
									end,
						},{
							['名字']='功能例子5',
							['开启']=function()--也可以直接写功能，就是看起来会很乱
										gg.sleep(1000)
										gg.toast('已开启')
									end ,
							['关闭']=function()
										gg.sleep(1000)
										gg.toast('已关闭')
									end,
						},
						
					}),
				
				
				
			}
	},
	[3]={
			['分区名字']='头盔美化',
			['功能配置']={
				勾选2({--样式2
						{
							['名字']='功能例子1',
							['开启']=function()--也可以直接写功能，就是看起来会很乱
										gg.sleep(1000)
										gg.toast('已开启')
									end ,
							['关闭']=function()
										gg.sleep(1000)
										gg.toast('已关闭')
									end,
						},{
							['名字']='功能例子2',
							['开启']=function()--也可以直接写功能，就是看起来会很乱
										gg.sleep(1000)
										gg.toast('已开启')
									end ,
							['关闭']=function()
										gg.sleep(1000)
										gg.toast('已关闭')
									end,
						},{
							['名字']='功能例子3',
							['开启']=function()--也可以直接写功能，就是看起来会很乱
										gg.sleep(1000)
										gg.toast('已开启')
									end ,
							['关闭']=function()
										gg.sleep(1000)
										gg.toast('已关闭')
									end,
						},{
							['名字']='功能例子4',
							['开启']=function()--也可以直接写功能，就是看起来会很乱
										gg.sleep(1000)
										gg.toast('已开启')
									end ,
							['关闭']=function()
										gg.sleep(1000)
										gg.toast('已关闭')
									end,
						},{
							['名字']='功能例子5',
							['开启']=function()--也可以直接写功能，就是看起来会很乱
										gg.sleep(1000)
										gg.toast('已开启')
									end ,
							['关闭']=function()
										gg.sleep(1000)
										gg.toast('已关闭')
									end,
						},
						
					}),
				
				
				
			}
	},
	[4]={
			['分区名字']='背包美化',
			['功能配置']={
				勾选2({--样式2
						{
							['名字']='功能例子1',
							['开启']=function()--也可以直接写功能，就是看起来会很乱
										gg.sleep(1000)
										gg.toast('已开启')
									end ,
							['关闭']=function()
										gg.sleep(1000)
										gg.toast('已关闭')
									end,
						},{
							['名字']='功能例子2',
							['开启']=function()--也可以直接写功能，就是看起来会很乱
										gg.sleep(1000)
										gg.toast('已开启')
									end ,
							['关闭']=function()
										gg.sleep(1000)
										gg.toast('已关闭')
									end,
						},{
							['名字']='功能例子3',
							['开启']=function()--也可以直接写功能，就是看起来会很乱
										gg.sleep(1000)
										gg.toast('已开启')
									end ,
							['关闭']=function()
										gg.sleep(1000)
										gg.toast('已关闭')
									end,
						},{
							['名字']='功能例子4',
							['开启']=function()--也可以直接写功能，就是看起来会很乱
										gg.sleep(1000)
										gg.toast('已开启')
									end ,
							['关闭']=function()
										gg.sleep(1000)
										gg.toast('已关闭')
									end,
						},{
							['名字']='功能例子5',
							['开启']=function()--也可以直接写功能，就是看起来会很乱
										gg.sleep(1000)
										gg.toast('已开启')
									end ,
							['关闭']=function()
										gg.sleep(1000)
										gg.toast('已关闭')
									end,
						},
						
					}),
				
				
				
			}
	},
	
}


第四页 = {
	['分页名字']="设置",
	[1]={--第一分区
		['分区名字']="脚本设置",
		['功能配置']={
				changan.button(
					"美团骑手入驻",
					function()
						--gg.joinGroup('群号')---q群
						--app.openUrl('http://www.baidu.com')---tg链接
					end),
				changan.button(
					"退出",
					function()
						tuichu=1
					end),
				
				
				
		}
	},
	
	
	
}

changan.menu({
	第一页,--调用上边的分页配置
	第二页,
	第三页,
	第四页,
})