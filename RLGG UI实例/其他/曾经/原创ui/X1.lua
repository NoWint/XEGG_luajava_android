
function start(name,sl)
fw=gg.makeRequest("http://music.163.com/api/search/get?s="..name.."&type=1&offset=0&total=true&limit="..sl) return fw end
function play(id,name)
gg.toast("正在播放音乐："..name,true)
gg.playMusic("http://music.163.com/song/media/outer/url?id="..id..".mp3") end

function Play(gqlb,idb)
SN = gg.choice(gqlb,nil,ts) if SN == nil then XGCK =-1 else sn=gg.choice({"播放歌曲","播放并下载"},nil,"歌曲："..gqlb[SN]) if sn == nil then end if sn == 1 then play(idb[SN],gqlb[SN]) end if sn == 2 then
local XEY=gg.makeRequest("http://music.163.com/song/media/outer/url?id="..idb[SN]..".mp3").content local XEY1=gg.getFile():gsub("[^/]+$","")..gqlb[SN]..".mp3" io.open(XEY1,"w"):write(XEY) gg.alert("提示:\n\n音乐已成功下载位置:\n\n"..XEY1) end XGCK=-1 end end

--string.toMusic('欢迎使用佬狼 注意看公告 祝用户稳定奔放')




local material3 = require 'material3'
local context=material3:getContext()
import'com.google.android.material.slider.Slider'
import'com.google.android.material.materialswitch.MaterialSwitch'
context:setTheme(0x7f090069)
check字体颜色=0xff000000
switch颜色=0xff0062FF
按钮颜色=0xffefefef
vibra = context:getSystemService(Context.VIBRATOR_SERVICE)
changan = {} huiz = function() end
window = context:getSystemService("window") -- 获取窗口管理器
function panduan(rec) fille,err = io.open(rec) if fille == nil then return false else return true end end
function checkimg(tmp,ii)
if panduan("/sdcard/佬狼/图片/"..tmp) ~= true then
gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
luajava.download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..tmp,"/sdcard/佬狼/图片/"..tmp)
else
if file.length("/sdcard/佬狼/图片/"..tmp) <= 1 then
gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
luajava.download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..tmp,"/sdcard/佬狼/图片/"..tmp)
end
end
if panduan("/sdcard/佬狼/图片/"..tmp) ~= true then
gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
luajava.download("https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/"..tmp,"/sdcard/佬狼/图片/"..tmp)
else
	if file.length("/sdcard/佬狼/图片/"..tmp) <= 1 then
gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
luajava.download("https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/"..tmp,"/sdcard/佬狼/图片/"..tmp)
		end
		end
if panduan("/sdcard/佬狼/图片/"..tmp) ~= true then
gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
luajava.download("http://pan.rlyun.asia/api/v3/file/get/79178/quarkconf?sign=r6mgkVej0pkVkN-Vv75-HOpfhI_wzrLjoswLo_F96xc%3D%3A0"..tmp,"/sdcard/佬狼/图片/"..tmp)
else
	if file.length("/sdcard/佬狼/图片/"..tmp) <= 1 then
gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
luajava.download("http://pan.rlyun.asia/api/v3/file/get/79179/xz_gg?sign=B0Q8xeg27Qu0k7ynARcbgdDengKcaU1stXtNbhFEksw%3D%3A0"..tmp,"/sdcard/佬狼/图片/"..tmp)
end
	end
end
ckimg = {
	--"WB/yzf_coR",
"bm_launch",
	"bm_ff",
	"bm_gn",
	"bm_mh",
	"bm_sz",
	"bm_music",
	"quarkx",
	"quarkconfb",
	'sj','hsj',
	'hei_right',
	'quarkphone',
	'quarkconf',
	'cow_tg',
	'heir',
	'heiraoff',
	'heiraon',
	'ca_x',
	'xz_gg',
	'xmq',
	'bbg',
	'bbk',
	
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
		if panduan("/sdcard/佬狼/图片/"..ntxt) == false then
			file.download(txt,"/sdcard/佬狼/图片/"..ntxt)
			else
			if file.length("/sdcard/佬狼/图片/"..ntxt) <= 1 then
				file.download(txt,"/sdcard/佬狼/图片/"..ntxt)
			end
		end
		txt = "/sdcard/佬狼/图片/"..ntxt
	end
	return luajava.getBitmapDrawable(txt)
end
function getRes(x)
	return 获取图片("/sdcard/佬狼/图片/"..x)
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
layoutParams.flags = LayoutParams.FLAG_NOT_TOUCH_MODAL -- 焦点设置Finish
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
slctb = getVerticalBG({0xffefefef,0xffefefef},10)
slcta = getHorizontalBG({0xff0077ff,0xff975DFF},10)
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
}, getVerticalBG({0xffd7d7d7,0xffd7d7d7},15))
selector:addState({
	-android.R.attr.state_pressed
}, getVerticalBG({按钮颜色,按钮颜色},15))
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
beij=bglist[1]
isswitch = true
cebian = {
	LinearLayout,
	layout_height = "match_parent",
	layout_width = "wrap_content",
	orientation = "horizontal",
	gravity = "center",
	orientation='vertical',
}
for i = 1,#stab do
cebian[#cebian+1] = {
	LinearLayout,
	id = "jm"..i,
	gravity="center",
	layout_height = "wrap_content",
	layout_width = "wrap_content",
	layout_marginTop = "3dp",
	layout_marginBottom = "6dp",
	layout_marginRight = "3dp",
	layout_marginLeft = "3dp",
	elevation='2dp',
	onClick = function() 切换(i) end,
	orientation='vertical',
	{ImageView,
	id="jmp"..i,
	layout_height='20dp',
	layout_width='20dp',
	src=获取图片(stab[i][2]),
	colorFilter=0xffd7d7d7,
	},
	{
		TextView,
		text = stab[i][1],
		id="jmt"..i,
		gravity = "center",
		textSize = "12sp",
		textColor = "#"..颜色2,
		layout_height = "wrap_content",
		layout_width = "68dp",
	}}
end
cebian = luajava.loadlayout(
	{
		ScrollView,
		layout_height = "wrap_content",
		layout_width = "wrap_content",
		cebian
	})
for i = 1,#stab do
_ENV["layout"..i] = luajava.loadlayout({
	LinearLayout,
	layout_width = "fill_parent",
	layout_height = "200dp",
	visibility = "gone",
	orientation = "vertical",
	background={
		GradientDrawable,
		color = "#33ffffff",
		cornerRadius = 20
	},
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
ckou = {
	LinearLayout,
	layout_width = "wrap_content",
	layout_height = "wrap_content",
	cebian,
	{
		LinearLayout,
		layout_marginBottom = "1dp",
		layout_marginTop = "1dp",
		layout_width = "2dp",
		layout_height = "match_parent",
		background = "#D7D7D7"
	}

}
for i = 1,#stab do
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
		layout_width="fill_parent",
		{
			ImageView,
			layout_gravity="center_vertical|left",
			src = 获取图片(xfcpic),
			id = "titlebar",
			layout_marginLeft='2dp',
			elevation='2dp',
			layout_marginRight='2dp',
			layout_marginTop='2dp',
			layout_marginBottom='2dp',
			background=getVerticalBG({0xffefefef,0xffefefef},12),
			padding="2dp",
			--visibility = "gone",
			layout_width = "24dp",
			layout_height = "24dp",
			gravity = "center",
			onClick = 隐藏,
			onTouch = hanshu,
			
		},{TextView,--tg
			textSize="14sp",
			text=titlet,
			textColor="#323232",
			gravity="center",
			layout_marginLeft='20dp',
			layout_gravity="center",
			layout_width="match_parent",
			layout_height="match_parent",
		},{ImageView,
			layout_width='24dp',
			layout_height='24dp',
			layout_gravity='center_vertical',
			src=getRes('cow_tg'),
			padding='5dp',
			layout_marginLeft='265dp',
			onClick=changebg,
			layout_marginRight='2dp',
			layout_marginTop='2dp',
			layout_marginBottom='2dp',
			background=getVerticalBG({0xffefefef,0xffefefef},12),
			elevation='2dp'
			
		},{TextView,--QQ
			textSize="14sp",
			text=titlet,
			textColor="#323232",
			gravity="center",
			layout_marginLeft='20dp',
			layout_gravity="center",
			layout_width="match_parent",
			layout_height="match_parent",
		},{ImageView,
			layout_width='24dp',
			layout_height='24dp',
			layout_gravity='center_vertical',
			src=getRes('xmq'),
			padding='5dp',
			layout_marginLeft='235dp',
			onClick=changebgQQ,
			layout_marginRight='2dp',
			layout_marginTop='2dp',
			layout_marginBottom='2dp',
			background=getVerticalBG({0xffefefef,0xffefefef},12),
			elevation='2dp'
			
		},{TextView,----公告
			textSize="14sp",
			text=titlet,
			textColor="#323232",
			gravity="center",
			layout_marginLeft='20dp',
			layout_gravity="center",
			layout_width="match_parent",
			layout_height="match_parent",
		},{ImageView,
			layout_width='24dp',
			layout_height='24dp',
			layout_gravity='center_vertical',
			src=getRes('xz_gg'),
			padding='5dp',
			layout_marginLeft='37dp',
				onClick=function() luajava.newThread(function() gg.alert(公告内容) end):start() end,
			layout_marginRight='2dp',
			layout_marginTop='2dp',
			layout_marginBottom='2dp',
			background=getVerticalBG({0xffefefef,0xffefefef},12),
			elevation='2dp'
			
		},{TextView,---X
			textSize="14sp",
			text=titlet,
			textColor="#323232",
			gravity="center",
			layout_marginLeft='20dp',
			layout_gravity="center",
			layout_width="match_parent",
			layout_height="match_parent",
		},{ImageView,
			layout_width='24dp',
			layout_height='24dp',
			layout_gravity='center_vertical',
			src=getRes('ca_x'),
			padding='5dp',
			layout_marginLeft='295dp',
			onClick=隐藏,
			layout_marginRight='2dp',
			layout_marginTop='2dp',
			layout_marginBottom='2dp',
			background=getVerticalBG({0xffefefef,0xffefefef},12),
			elevation='2dp'
		},
	},
	ckou,
	},{ScrollView,
	id='ggscro',
	layout_marginTop='236dp',
	layout_marginLeft='82dp',
	layout_height='60dp',
	layout_width='235dp',
	layout_margin='3dp',
	elevation='2dp',
	padding='4dp',
	background=getVerticalBG({0xffefefef,0xffefefef},12),
	{LinearLayout,
						id='gggscro',
						orientation='vertical',
						layout_width='match_parent',
						layout_height='wrap_content',
					}
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
function uiadtext(txt,color,size)
if not txt then txt = "" end
if not color then color = "#000000" end
if not size then size = "10sp" end
local tmp=luajava.loadlayout(
	{
		TextView,
		text = string.fromHtml(" <font color=#545454>"..getTimeStamp(os.time()).."</font> <font color="..color..">"..txt.."</font>"),
		
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
local str = os.date("%m-%d %H:%M:%S",t)
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
function 切换(x)
当前ui = x
luajava.runUiThread(function()
	for i = 1,#stab do
	_ENV["jmt"..i]:setTextColor(0xff000000)
	_ENV["jmp"..i]:setColorFilter(0xffd7d7d7)
	_ENV["layout"..i]:setVisibility(View.GONE)
	end
	_ENV["jmt"..当前ui]:setTextColor(0xff0062FF)
	_ENV["jmp"..当前ui]:setColorFilter(0xff0062FF)
	_ENV["layout"..当前ui]:setVisibility(View.VISIBLE)
	--YoYoImpl:with("FadeIn"):duration(800):playOn(_ENV["layout"..当前ui])
	end)
end
显示 = 0
beij2 = luajava.loadlayout({
	GradientDrawable,
	color = "#001E1C27",
	cornerRadius = 10
})

nowbg=1
function changebg()
	luajava.runUiThread(function()
atg()
end)
end
nowbg=1
function changebgQQ()
	luajava.runUiThread(function()
AQQ()
end)
end
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
	if tonumber(tostring(chuangk:getVisibility())) == 8.0 then
	control:setVisibility(View.GONE)
	显示 = 1	
		gg.playMusic("/storage/emulated/0/佬狼/图片/bbk")
	ggscro:setVisibility(View.VISIBLE)
	chuangk:setVisibility(View.VISIBLE)
	_ENV["layout"..当前ui]:setVisibility(View.VISIBLE)
	changan.controlBig(floatWindow,500)
	floatWindow:setBackground(beij)
	mainLayoutParams.flags = LayoutParams.FLAG_NOT_TOUCH_MODAL
	window:updateViewLayout(floatWindow, mainLayoutParams)
	else
	ggscro:setVisibility(View.GONE)
	chuangk:setVisibility(View.GONE)
	floatWindow:setBackground(beij2)
	control:setVisibility(View.VISIBLE) 显示 = 0
gg.playMusic("/storage/emulated/0/佬狼/图片/bbg")
	_ENV["layout"..当前ui]:setVisibility(View.GONE)
	mainLayoutParams.flags = LayoutParams.FLAG_NOT_FOCUSABLE
	window:updateViewLayout(floatWindow, mainLayoutParams)
	end
	end)
end
import("android.media.AudioManager")
audi = context:getSystemService("audio")
audiotype = {
--[[
	AudioManager.STREAM_ALARM, --手机闹铃的声音
	AudioManager.STREAM_MUSIC, --手机音乐的声音
	AudioManager.STREAM_NOTIFICATION, --系统提示的通知
	AudioManager.STREAM_RING, --电话铃声的声音
	AudioManager.STREAM_SYSTEM, --手机系统的声音
	AudioManager.STREAM_VOICE_CALL, --语音电话的声音
	AudioManager.STREAM_DTMF, --DTMF音调的声音
	]]
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
local localname=name
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
uiadtext(localname.." </font><font color='#0062ff'>已开启.","#161616")
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
uiadtext(localname.." </font><font color='#B9342D'>已关闭.","#545454")
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

switchs={}
function changan.intcheck(name,func1,func2)
local nid = name..guid()
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
			CheckBox,
			id=luajava.newId(nid.."c"),
			layout_width = '32dp',
			layout_height = '32dp',
			padding = "0dp",
			onClick = function() luajava.newThread(function() func() end):start() end,
		},{
			TextView,
			id=luajava.newId(nid.."t"),
			gravity = "left",
			text = name,
			textColor=check字体颜色,
			textSize = "14sp",
--layout_marginLeft="8dp",
			layout_width = 'match_parent',
			layout_weight=1,onClick = function()
				local v=luajava.getIdView(nid..'c')
				if v:isChecked() then
					v:setChecked(false)
				else
					v:setChecked(true)
				end
				luajava.newThread(function() func() end):start() 
			end,
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
	luajava.getIdValue(nid.."t"):setTextColor(switch颜色)
	--changan.controlWater(switchs[nid],300)
end)

_ENV[name] = "开"
pcall(func1)
uiadtext(localname.." </font><font color='#0062ff'>已开启.","#161616")
else
	vibra:vibrate(9)
luajava.runUiThread(function()
	luajava.getIdValue(nid.."t"):setTextColor(0xff232323)
	--changan.controlWater(switchs[nid],300)
	end)
_ENV[name] = "关"
pcall(func2)
uiadtext(localname.." </font><font color='#B9342D'>已关闭.","#545454")
end
end
end
end

chazhi={} chajv={}
function changan.seek(name,bian,smin,smax,nows)
_ENV[bian] =nows
smin=tonumber(smin) smax=tonumber(smax)
if _ENV[bian] == nil then _ENV[bian] = 1.0 end
if not name then name = "未设置" end
local names = name..guid()
kid=guid().."sk"
rest = luajava.loadlayout({
	LinearLayout,
	layout_width = 'match_parent',
	layout_hight = "match_parent",
	{
		LinearLayout,
		id=luajava.newId(kid),
		layout_width = 'match_parent',
		layout_hight = "match_parent",
		layout_marginTop = "5dp",
		layout_marginBottom = "5dp",
		gravity = "center_vertical",
		background = luajava.loadlayout {
			GradientDrawable ,
			color = 按钮颜色 ,
			cornerRadius = 12
		} ,padding = {
		"0dp","0dp","6dp","0dp"
		},
		{
			TextView,
			padding={"5dp","10dp","0dp","10dp",},
			gravity = "top",
			textColor='#000000',
			text = name,
			id = luajava.newId(names),
			layout_width = '100dp',
			--layout_marginLeft = "5dp",
			layout_marginRight = "0dp",
		},
		{
			Slider,
			thumbHeight='23dp',
			trackHeight='15dp',
			trackStopIndicatorSize='0dp',
			tickVisible=false,
			__onFinish=function(v)
				v:setTrackActiveTintList(ColorStateList({{},},{0xff0062ff}))
				v:setTrackInactiveTintList(ColorStateList({{},},{0x550062ff}))
				v:setThumbTintList(ColorStateList({{},},{0xff0062ff}))
				luajava.setInterface(v, 'addOnChangeListener', 
					function(SeekBar, var2, var3)
				_ENV[bian] = var2
				end)
			end,
			layout_width = 'match_parent',
			id=luajava.newId(name.."seekbar"),
			valueFrom=smin,
			valueTo=smax,
			value=nows,
			stepSize=1.0,
		}
	}})
-- luajava.getIdView(name..'seekbar'):setHaloRadius(20)--拖动时背景阴影大小
return rest
end
levels={}
function changan.seek2(name , bian , smin , smax , nows,level)
local smin=math.ceil(smin* 10)/10
local smax=math.ceil(smax* 10)/10
local nows=math.ceil(nows* 10)/10
local level=math.ceil(level* 10)/10
if _ENV [bian] == nil then
_ENV [bian] = nows
else
	gg.alert("seek控件的变量名称:"..bian.."重复！\n请换一个名称") os.exit()
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
		onClick=function()
			vibra:vibrate(4)
			if _ENV[bian]>smin then
			_ENV[bian]=_ENV[bian]-levels[bian]
			_ENV[bian]=tonumber(string.format("%.1f", _ENV[bian]))
			if _ENV[bian]<smin then _ENV[bian]=smin end
			_ENV[bian]=math.ceil(_ENV[bian]* 10)/10
			luajava.getIdValue(names):setText(tostring(_ENV[bian]))
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
		onClick=function()
			vibra:vibrate(4)
			if _ENV[bian]<smax then
			_ENV[bian]=_ENV[bian]+levels[bian]
			_ENV[bian]=tonumber(string.format("%.1f", _ENV[bian]))
			if _ENV[bian]>smax then _ENV[bian]=smax end
			_ENV[bian]=math.ceil(_ENV[bian]* 10)/10
			luajava.getIdValue(names):setText(tostring(_ENV[bian]))
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
			cornerRadius = 12
		} ,padding = {
		"0dp","0dp","6dp","0dp"
	
		
		},
		{
			TextView ,
			gravity = "top" ,
			text = name ,
			textColor="#000000",
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
function changan.image(img,height,width,pad,func)
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
	YoYoImpl:with("ZoomInLeft"):duration(600):playOn(switches["2s"..sname])
	luajava.getIdValue(nid.."g"):setVisibility(View.VISIBLE)
luajava.getIdValue(nid):setBackground(checkbg)
	end)
_ENV[name] = "开"

pcall(func1)
uiadtext(localname.." </font><font color='#0062ff'>已开启.","#161616")
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
uiadtext(localname.." </font><font color='#B9342D'>已关闭.","#545454")
end
end
if localname=="摇一摇隐藏UI" then yyfunc=outfunc end
if localname=="音量键隐藏UI" then ylfunc=outfunc end
return outfunc
end
end
import('android.content.res.ColorStateList')
local swfuncs={}
swcDraw=ColorStateList({
			{android.R.attr.state_checked},
			{-android.R.attr.state_checked},
		}, {
			0xff0062ff,
			0x33d7d7d7,
		})
swcThumb=ColorStateList({
			{android.R.attr.state_checked},
			{android.R.attr.state_pressed},
			{-android.R.attr.state_pressed},
		}, {
			0xffffffff,
			0x880062ff,
			0xff4B484F
		})
swfuncs={}
function changan.switch(name,func1,func2,miaoshu)
local nid = name..guid()
swfuncs[nid]={func1,func2}
if not name then name = "未设置" end
local size
if not miaoshu then size='0sp' else size='11sp' end
 	local rest = luajava.loadlayout({
	LinearLayout,
	layout_width = 'fill_parent',
	layout_height = "wrap_content",
	gravity = "center_vertical",
	{
					LinearLayout,
		layout_width = 'fill_parent',
		layout_height = "50dp",
		gravity = "center_vertical",
		layout_marginLeft='2dp',
		layout_marginRight='2dp',
		layout_marginTop='2dp',
		layout_marginBottom='2dp',
		elevation='2dp',
		background = luajava.loadlayout {
			GradientDrawable ,
			color = 按钮颜色 ,
			cornerRadius = 12
		} ,padding = {
		"0dp","0dp","6dp","0dp"
					} ,
					{LinearLayout,
						orientation='vertical',
						layout_width='match_parent',
						layout_weight=1,
						layout_height='wrap_content',
						{
							TextView,
							gravity = "left",
							text = name,
							textColor = "#000000",
							textSize = "13sp",
							layout_weight = 1,
							layout_width = 'match_parent',
							layout_marginLeft = "10dp",
							layout_marginRight = "20dp",
						},
						{
							TextView,
							gravity = "left",
							text = miaoshu or '',
							textSize = size,
							layout_width = "match_parent",
							layout_weight = 1,
							textColor = "#A5A5A5",
							layout_marginLeft = "10dp",
							layout_marginRight = "20dp",
						}},
					{
						MaterialSwitch,
						id=luajava.newId(nid),
						__onFinish=function(v)
							table.insert(switchs,v)
							v:setTrackTintList(swcDraw)
							v:setThumbTintList(swcThumb)
							luajava.setInterface(v, 'setOnCheckedChangeListener', 
								{onCheckedChanged=function(view,isc)
									if isc then
										local func=swfuncs[nid][1] or function() end
										if func~=nil then
											luajava.startThread(func)
										end
									else
										local func=swfuncs[nid][2] or function() end
										if func~=nil then
											luajava.startThread(func)
										end
									end
								end})
							end,
						layout_width = 'wrap_content',
						layout_height = 'wrap_content',
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
			layout_marginTop = "5dp",
			layout_marginBottom = "5dp",
			layout_marginLeft='3dp',
			layout_marginRight='3dp',
			elevation='2dp',
			background = getButtonBG(),
			padding="10dp",
			onClick = function() 
				changan.controlWater(buts[tid],300)
				uiadtext('执行 '..txt,"#C62828")
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
radon=getRes("heiraon")
radoff=getRes("heiraoff")
radiog={}
function changan.radio (cklist)
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
	RadioGroup,
		layout_width = 'match_parent',
		layout_height = "wrap_content",
		gravity = "center_vertical",
		layout_marginLeft='2dp',
		layout_marginRight='2dp',
		layout_marginTop='2dp',
		layout_marginBottom='2dp',
		elevation='2dp',
		orientation = "vertical" ,
		background = luajava.loadlayout{GradientDrawable,color = 按钮颜色,cornerRadius = 12},
		padding = {"0dp","0dp","6dp","0dp"},
}
for i = rds , # cklist do
local name = cklist [i] [1]
local func = cklist [i] [2]
if not name then
name = "未设置"
end
local nid = name..guid ()
radiog[rid][nid]=false
local tid = nid..guid ()
restt [# restt + 1] = {
	RadioButton ,
	layout_width = '250dp' ,
	layout_height = "wrap_content" ,
	layout_marginLeft = "4dp" ,
	layout_marginRight = "10dp" ,
	text = name ,
	textSize="13sp",
	textColor = check字体颜色 ,
	gravity = "center_vertical" ,
		onClick = function (v)
		uiadtext('执行 '..name,"#C62828")
	changan.controlWater (v, 200)
	luajava.startThread(func)
	end
}
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
		v=true,
		luajava.newThread(func):start()
		
	end
end
end
end





function changan.text(text,color,size,isjz)
if not color then color="#161616" end
if isjz then
	return luajava.loadlayout(
	{
	TextView,
	text=text,
	textColor=color,
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
	layout_height="wrap_content",
	layout_width="match_parent",
	autoSizeTextType="uniform",
})
end
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
uiadtext(name.." </font><font color='#0062ff'>已开启.","#161616")
else
	_ENV[name] = "关"
pcall(func2)
uiadtext(name.." </font><font color='#B9342D'>已关闭.","#545454")
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
uiadtext(name.." </font><font color='#0062ff'>已开启.","#161616")
else
	luajava.runUiThread(function()
	luajava.getIdValue(nid):setBackground(luajava.getBitmapDrawable("/sdcard/长安/图片/check1"))
	end)
_ENV[name] = "关"
func2()
uiadtext(name.." </font><font color='#B9342D'>已关闭.","#545454")
end

end
end
end



function YY998() Obtain=gg.makeRequest("https://api.uomg.com/api/rand.music?sort=热歌榜&format=json").content muchen=Obtain:match('url":"(.-)","picurl') gg.playMusic(muchen) end
local function readD (a)
return gg.getValues ( {
	{
		address = a ,
		flags = 4
	}
}) [1].value
end





















function atg()--TG
gg.copyText("")--复制
string.toMusic("电报号复制成功请前往TG搜索频道")
end

function AQQ()--qq群
gg.QQgroup("你的QQ群号")
end


bglist={
	getHorizontalBG({0xffe9e9e9,0xffe9e9e9},12),
	
}



function huiz()---绘制必须放在这里面

end

titlet="佬狼UI演示"

stab={
	{"主页","/sdcard/佬狼/图片/bm_launch"},
	{"防封","/sdcard/佬狼/图片/bm_ff"},
	{"功能","/sdcard/佬狼/图片/bm_gn"},
	{"美化","/sdcard/佬狼/图片/bm_mh"},
	{"设置","/sdcard/佬狼/图片/bm_sz"},
}



xfcpic = "https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/arlogo"
--悬浮窗链接或路径
---公告
公告内容 = "长安UI佬狼改"
changan.menu(
	{
		{--1
		changan.text("长安UI",switch颜色,"15sp"),
			changan.image(
			"https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/dragon",
			"100dp","180dp",--图片高度宽度（可省略）
			"0dp",--内边距（可省略）
			function()
			--	隐藏()
				--gg.alert("官方频道@LBTZPD")
				--gg.QQgroup("群号")---qq群
			--	gg.intent("https://t.me/LBTZPD")--网页（tg群）
			end--点击图片执行的功能（可省略）
			),
		changan.button("选择进程", function()
					gg.setProcessX()
				string.toMusic("请选择游戏进程")
				gg.toast("请选择进程")
				end),
				
		
changan.button("每日语录",function()
			Y=gg.makeRequest("https://v1.hitokoto.cn/").content
--获取云端数据
Q=string.match(Y,'hitokoto(.+)type')
--模式匹配他们中的一切字符
F=string.gsub(Q,'":"',"")
K=string.gsub(F,'","',"")
--删除多余垃圾
string.toMusic("\n\n"..""..K.."")
QD = gg.alert("今日语录:\n\n"..""..K.."")
if QD == 1 then

end
if QD == 3 then 

end
end),
		}, {

		changan.switch(
			"功能",
			function()
				
			end,
			function()
				
			end,
			'功能介绍xxx\nxxx'--switch第四参数是描述
		),
		changan.box({
			"XXX区",
		
				changan.seek("拉条演示","ltxx",1,20,1),
				--名字，变量名字，最小，最大，初始
				--“ltxx”为此拉条变量名字，使用时每个拉条不可重复
				changan.seek2("小数演示","ltxx2",0.1,2,0.4,0.1),--注意seek2多了一个参数是每次加减大小
				changan.button(
					"调用拉条",
					function()
						gg.alert(ltxx)
						gg.alert(ltxx2)
					end,
					0xffE20C30),
				
				
				
				
		}),--box结尾
		changan.switch(
			"功能",
			function()
				
			end,
			function()
				
			end
		),
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
				},
			}),
		changan.button(
			"彩色字体演示",
			function()
				
			end,
			0xff0062FF),
		changan.button(
			"进程",
			function()
				gg.setProcessX()
			end),
		
		
		
		
	},
	{---第二页
		changan.switch(
			"功能",
			function()
				
			end,
			function()
				
			end
		),
		changan.switch(
			"功能",
			function()
				
			end,
			function()
				
			end
		),
		changan.button(
			"功能",
			function()
				
			end),
		changan.radio({--单选
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
		changan.switch(
			"功能",
			function()
				
			end,
			function()
				
			end
		),
		changan.switch(
			"功能",
			function()
				
			end,
			function()
				
			end
		),
		changan.button(
			"功能",
			function()
				
			end),
		
		
		
		},{
					changan.button("退出脚本",function()
				luajava.setFloatingWindowHide(false)
				tuichu=1
				end),	
		},{
			
		},{
			
		},{
			
		},{
			
		},{
			
		},{
			
		}


	})
--配置表添加表即可加页数，只需要与上边菜单标题数对应

