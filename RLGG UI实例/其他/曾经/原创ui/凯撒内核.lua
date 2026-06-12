



vibra = context:getSystemService(Context.VIBRATOR_SERVICE)
function getCorner(gtvb1,gtvb3,gtvb4,gtvb5,g1,g2,g3,g4)
if not gtvb4 then gtvb4 = 0 gtvb5 = 0x86FFFFFF end
local jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(gtvb3)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors(gtvb1)
jianbians:setStroke(gtvb4,gtvb5)--边框宽度和颜色
jianbians:setCornerRadii({g1,g1,g2,g2,g3,g3,g4,g4})
return jianbians
end
function getVerticalBG(gtvb1,gtvb3,gtvb4,gtvb5)
if not gtvb4 then gtvb4 = 0 gtvb5 = 0x90c12f00 end
local jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(gtvb3)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors(gtvb1)
jianbians:setStroke(gtvb4,gtvb5)--边框宽度和颜色
return jianbians
end
Yunzhu = {}
local Yunzhu = Yunzhu
local android = import('android.*')
function panduan(rec) fille,err = io.open(rec) if fille == nil then return false else return true end end

开 = "开" 关 = "关"
local function checkimg(tmp,ii)
if panduan("/sdcard/长安/图片/"..tmp) ~= true then
gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
luajava.download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..tmp,"/sdcard/长安/图片/"..tmp)
else
if file.length("/sdcard/长安/图片/"..tmp) <= 1 then
gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
luajava.download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..tmp,"/sdcard/长安/图片/"..tmp)
end
end
if panduan("/sdcard/长安/图片/"..tmp) ~= true then
gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
luajava.download("https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/"..tmp,"/sdcard/长安/图片/"..tmp)
else
	if file.length("/sdcard/长安/图片/"..tmp) <= 1 then
gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
luajava.download("https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/"..tmp,"/sdcard/长安/图片/"..tmp)
end
end
end
ckimg = {
	"sanjiao",
	"hsanjiao",
	'bbts_checkoff',
	'bbts_check',
	
}
for i = 1,#ckimg do
jindu = i
checkimg(ckimg[i],i)
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
if getting then gettingp[#gettingp+1]=txt end
return luajava.getBitmapDrawable(txt)
end
function 获取图片3(txt)
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
local function getRes(x)
return 获取图片("/sdcard/长安/图片/"..x)
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
	0x86FFFFFF,0x86FFFFFF
})
jianbian6:setStroke(0,"0xddffffff")--边框宽度和颜色
return jianbian6
end
function getj7()
jianbian6 = luajava.new(GradientDrawable)
jianbian6:setCornerRadius(20)
jianbian6:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbian6:setColors({
	0x86FFFFFF,0x86FFFFFF
})
jianbian6:setStroke(3,"0xff0091FE")--边框宽度和颜色
return jianbian6
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
if mainLayoutParams.x<=0 then
	mainLayoutParams.x=0
	if 显示==0 and 显2==false then 隐藏2() end
end
if mainLayoutParams.x>=20 then
	if 显2==true then 显示2() end
end
mainLayoutParams.y = tonumber(y) + (event:getRawY() - RawY)
window:updateViewLayout(floatWindow, mainLayoutParams)
end
end
slcta = getVerticalBG({0xff90c12f,0xff90c12f},13,2,0xff90c12f)

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
function getSelector3()
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(10)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({
	0x86FFFFFF,0x86FFFFFF
})
jianbians:setStroke(2,"0x86FFFFFF")--边框宽度和颜色

selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, luajava.loadlayout {
	GradientDrawable,
	color = "#88000000",
	cornerRadius = 12
}) -- 点击时候的背景
selector:addState({
	-android.R.attr.state_pressed
}, jianbians) -- 没点击的背景
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
Yunzhu.menu = function(sview)
if isswitch then
return false
end
isswitch = true
cebian = {
	LinearLayout,
	orientation = "vertical",
}
for i = 1,#stab do
cebian[#cebian+1] = {
	LinearLayout,
	id = "jm"..i,
	layout_height = "25dp",
	layout_width = "66dp",
	layout_margin = "3dp",
	background = slcta,
	gravity = "center",
	onClick = function() 切换(i) end,
	{
		TextView,
		text = stab[i],
		textSize='11sp',
		textColor='#ffffff',
		gravity = "center",
		
	}}
end
cebian = luajava.loadlayout(cebian)
for i = 1,#stab do
_ENV["layout"..i] = luajava.loadlayout({
	ScrollView,
	fillViewport = "true",
--padding = "10dp",
	id = "layout"..i,
	visibility = "gone",
	gravity = "center",
	layout_width = "250dp",
	layout_height = "190dp",
	orientation = "horizontal",
	background = getVerticalBG({0x78000000,0x78000000},18,3,0xff1d2024),
	{
		LinearLayout,
		id = "layoutm"..i,
		
		layout_margin = "3dp",
		layout_marginLeft = "5dp",
		layout_width = "240dp",
		orientation = "vertical",
		gravity = "center_horizontal",
	}
})
end
ckou = {
	LinearLayout,
	id = "chuangk",
	layout_width = "match_parent",
	layout_height = "match_parent",
	orientation = "horizontal",
	padding='3dp',
	{
		LinearLayout,
		orientation = "vertical",
		padding = "2dp",
		layout_height='match_parent',
		background=getVerticalBG({0x78000000,0x78000000},18,3,0xff1d2024),--左侧
		{
			LinearLayout,
			gravity = "center",
			{
				ImageView,
				id = "control",
				background = 获取图片(左上角图标),
				layout_width = "66dp",
				layout_height = "66dp",
				onClick=隐藏,
				onTouch=hanshu
			}
		},
		{LinearLayout,
			layout_height='1dp',
			layout_width='match_parent',
			background='#',
			layout_margin='1dp',
			
		},
		cebian,
	},{LinearLayout,
		layout_width='4dp',
	}
	
}
for i = 1,#stab do
ckou[#ckou+1] = _ENV["layout"..i]
end
ckou = luajava.loadlayout(ckou)
floatWindow = {
	FrameLayout,
	id = "motion",
	onClick=function() end,
	visibility='gone',
	onTouch=hanshu,
	background=beij,
	layout_width = "match_parent",
	orientation = "horizontal",
	gravity = "center_vertical",
	layout_height = "match_parent",
	ckou,
	{ImageView,
	layout_height='40dp',
	layout_width='40dp',
	id='xfc',
	visibility='gone',
	onClick=隐藏,
	onTouch=hanshu,
	background=获取图片(小悬浮窗图标),
	},{LinearLayout,
	id="smallc",
	visibility="gone",
	onClick=显示2,
	onTouch=hanshu,
	layout_height="56dp",
	layout_width="14dp",
	gravity="center",
	background=getCorner({0x88161616,0x88161616},12,0,0xff232323,0,15,15,0),
		
	}
}
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


local isMove


end

invoke(swib1,swib2)
切换(1)
luajava.runUiThread(function()
	floatWindow:setVisibility(View.VISIBLE)
	Yunzhu.controlBig(floatWindow,800)
end)
gg.setVisible(false)
luajava.setFloatingWindowHide(true)

end
function getseekgra()
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(10)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({
	0x86FFFFFF,0x86FFFFFF
})
jianbians:setStroke(2,"0x44ffffff")--边框宽度和颜色

return jianbians
end
corbk = true
当前ui = 1
function 切换(x)
当前ui = x
luajava.runUiThread(function()
	for i = 1,#stab do
	
	_ENV["layout"..i]:setVisibility(View.GONE)
	end
	_ENV["layout"..当前ui]:setVisibility(View.VISIBLE)
	
	YoYoImpl:with("FadeInLeft"):duration(500):playOn(_ENV["layout"..当前ui])
	end)
end
显示 = 0
显2=false
function 隐藏2()
显2=true
ckou:setVisibility(View.GONE)
floatWindow:setBackground(beij2)
xfc:setVisibility(View.GONE)
smallc:setVisibility(View.VISIBLE)
end
function 显示2()
显2=false
mainLayoutParams.x=20
window:updateViewLayout(floatWindow, mainLayoutParams)

if 显示==1 then
	ckou:setVisibility(View.VISIBLE)
	floatWindow:setBackground(beij)
	smallc:setVisibility(View.GONE)
else
	xfc:setVisibility(View.VISIBLE)
	smallc:setVisibility(View.GONE)
	隐藏()
	
end
end
--beij="https://cdn-community.codemao.cn/47/community/d2ViXzEwMDFfMTAwMTQwOTNfMTAwMTQwOTNfMTcxODQzNzc2MjUyNF8wZGQ4MDExZQ.png"
beij = getVerticalBG({0xff000000,0xff000000},20,3,0xff1d2024)
beij2 = luajava.loadlayout({
	GradientDrawable,
	color = "#001E1C27",
	cornerRadius = 10
})
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
if 显2==true then return 0 end
luajava.runUiThread(function()
	if tonumber(tostring(ckou:getVisibility())) == 8.0 then
--chuangk:setVisibility(View.VISIBLE)
	ckou:setVisibility(View.VISIBLE)
	xfc:setVisibility(View.GONE)
	显示=1
	mainLayoutParams.flags = LayoutParams.FLAG_NOT_TOUCH_MODAL
	window:updateViewLayout(floatWindow, mainLayoutParams)
	_ENV["layout"..当前ui]:setVisibility(View.VISIBLE)
	Yunzhu.controlBig(floatWindow,800)
	floatWindow:setBackground(beij)
	else
		显示=0
	luajava.startThread(function()
	luajava.runUiThread(function()
		Yunzhu.controlSmall(floatWindow,500)
	end)
	gg.sleep(500)
	luajava.runUiThread(function()
	mainLayoutParams.flags = LayoutParams.FLAG_NOT_FOCUSABLE
	window:updateViewLayout(floatWindow, mainLayoutParams)
	
	floatWindow:setBackground(beij2)
	ckou:setVisibility(View.GONE)
	xfc:setVisibility(View.VISIBLE)
	_ENV["layout"..当前ui]:setVisibility(View.GONE)
	Yunzhu.controlBig(floatWindow,500)
	end)
	end)
	end
	end)
end
function guid()
local seed = {
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

setExitEvent(exit)
Yunzhu.controlWater = function(control,time)
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
function jianting3()--1
yinln = {}
for i = 1,#audiotype do--2
yinln[i] = {}
yinln[i].type = audiotype[i]
yinln[i].now = audi:getStreamVolume(audiotype[i])
if yinln[i].now > yinl[i].now then--3
if 显示 == 1 then
yinl[i].now = yinln[i].now--音量加
yck=mainLayoutParams.width
mainLayoutParams.width=yck+50
luajava.runUiThread(function()
window : updateViewLayout (floatWindow , mainLayoutParams)
end)
end
elseif yinln[i].now < yinl[i].now then--5
if 显示 == 1 then
if mainLayoutParams.width > 300 then
yinl[i].now = yinln[i].now--音量减
yck=mainLayoutParams.width
mainLayoutParams.width=yck-50
luajava.runUiThread(function()
window : updateViewLayout (floatWindow , mainLayoutParams)
end)
end
end
end--5
end--2
end--1

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
function jianting(func)
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
	Yunzhu.controlSmall(floatWindow,400)
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
	Yunzhu.controlBig(floatWindow,400)
	end)

end
end
Yunzhu.controlSmall = function(control,time)
luajava.runUiThread(function()
	import "android.animation.ObjectAnimator"
	ObjectAnimator():ofFloat(control,"scaleX", {
		1, 0.7, 0.4, 0
	}):setDuration(time):start()
	end) end
Yunzhu.controlBig = function(control,time)
luajava.runUiThread(function()
	import "android.animation.ObjectAnimator"
	ObjectAnimator():ofFloat(control,"scaleX", {
		0, 0.4, 0.7, 1
	}):setDuration(time):start()
	end) end

chazhi = {} chajv = {}
function Yunzhu.seek(name,bian,smin,smax,nows)
_ENV[bian] = nows
local thum= getVerticalBG({0xff90c12f,0xff90c12f},8,3,0xff90c12f)
thum:setSize(20, 50)
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
	layout_width = 'match_parent',
	gravity='center_vertical',
	{
		FrameLayout,
		layout_width = 'match_parent',
		layout_hight = "fill_parent",
		layout_weight=1,
		layout_marginTop = "5dp",
		layout_marginBottom = "5dp",
		gravity = "center_vertical",
		background=getVerticalBG({0xff48671b,0xff48671b},3,3,0x86FFFFFF),
		{
			SeekBar,
			layout_width = 'match_parent',
			min = truesmin,
			max = truesmax,
			progress = tnows,
			thumb=thum,
			progressDrawable={getVerticalBG({0x00ffffff,0x00ffffff},3,3,0x86FFFFFF)},
			onSeekBarChange = {
				onProgressChanged = function(SeekBar, var2, var3)
				if not var3 then
				return
				end
				local resultvar = tonumber(string.sub(var2,0,-3))-chazhi[bian]
				luajava.runUiThread(function()
					luajava.getIdValue(names):setText(tostring(resultvar))
					end)
				_ENV[bian] = resultvar
				end
			}},{
			TextView,
			layout_gravity = "center",
			text = tostring(nows),
			id = luajava.newId(names),
			gravity='center',
			textSize='11sp',
			textColor='#ffffff',
		}
	},
	{TextView,
		layout_width='60dp',
		layout_marginLeft='8dp',
		text=name,
		textSize='11sp',
		textColor='#ffffff',
	}
})

return rest
end
radon=getRes("heiraon")
radoff=getRes("heiraoff")
radiog={}
function Yunzhu.radio (cklist)
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
	textColor = '#ffffff' ,
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
	layout_marginTop = "10dp" ,
	gravity = "top" ,
	
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
	layout_height = "30dp" ,
	layout_marginTop = "5dp" ,
	layout_marginBottom = "15dp" ,
	layout_marginLeft = "4dp" ,
	layout_marginRight = "10dp" ,
	gravity = "center_vertical" ,
	onClick = function ()
	Yunzhu.controlWater (_ENV [tid] , 200)
	func()
	end

	,
	{
		ImageView ,
		id = luajava.newId (nid) ,
		layout_width = '20dp' ,
		layout_height = "20dp" ,
		layout_marginLeft = "2dp" ,
		layout_marginRight = "0dp" ,
		src =radoff ,
		colorFilter=0xff90c12f,
	} , {
		TextView ,
		gravity = "top" ,
		text = name ,
		textSize="11sp",
		textColor = '#ffffff' ,
		layout_width = 'wrap_content' ,
		layout_height = 'wrap_content' ,
		layout_marginLeft = "1dp" ,
		layout_marginRight = "3dp" ,
	}
})
restt [# restt + 1] = _ENV [tid]
end
rest [# rest + 1] = restt
return luajava.loadlayout (rest)
end
function radin(rid,nid,func)
return function()
for k,v in pairs(radiog[rid]) do
	luajava.getIdValue(k):setImageDrawable(radoff)
	if k==nid and v~=true then
		luajava.getIdValue(k):setImageDrawable(radon)
		v=true
		luajava.newThread(func):start()
	end
end
end
end


function 开关3(name,func1,func2,nid)
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
	luajava.getIdValue(nid.."g"):setVisibility(View.VISIBLE)
	end)
_ENV[name] = "开"
vibra:vibrate(10)
pcall(func1)
else
	luajava.runUiThread(function()
	luajava.getIdValue(nid.."g"):setVisibility(View.GONE)
	luajava.getIdValue(nid.."k"):setVisibility(View.VISIBLE)
	end)
_ENV[name] = "关"
vibra:vibrate(10)

pcall(func2)
end
end
end
end
function getShape3()
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(12)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({0x86FFFFFF,0x86FFFFFF})
jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
jianbians:setStroke(2,0xaaffffff)--边框宽度和颜色
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
jianbians:setStroke(8,tmp3)--边框宽度和颜色
return jianbians
end



checkbg1 = getRes("bbts_checkoff")
checkbg2 = getRes("bbts_check")
switchs={}
function Yunzhu.intcheck(name,func1,func2)
nid = name..guid()
local func = 开关5(name,func1,func2,nid)
if not name then name = "未设置" end
switchs[nid] = {
	LinearLayout,
	layout_width = 'match_parent',
	layout_weight=1,
	layout_height = "28dp",
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
			layout_width = '20dp',
			layout_height = '20dp',
			padding = "0dp",
			colorFilter=0xff90c12f,
		},{
			TextView,
			id=luajava.newId(nid.."t"),
			gravity = "left",
			text = name,
			textColor='#ffffff',
			textSize = "11sp",
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
	--Yunzhu.controlWater(switchs[nid],300)
	end)
_ENV[name] = "开"
pcall(func1)
else
	vibra:vibrate(9)
luajava.runUiThread(function()
	luajava.getIdValue(nid):setImageDrawable(checkbg1)
	--luajava.getIdValue(nid.."t"):setTextColor(0xff232323)
	--Yunzhu.controlWater(switchs[nid],300)
	end)
_ENV[name] = "关"
pcall(func2)
end
end
end
end
function Yunzhu.check2(cklist)
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
			rstt = Yunzhu.intcheck(name,func1,func2)
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
function Yunzhu.check3(cklist)
	if #cklist==0 then return nil end
	local rest = {
		LinearLayout,
		layout_width = 'fill_parent',
		layout_height = "wrap_content",
		gravity = "center",
		orientation="vertical",
		
	}

	for i = 1, #cklist,3 do
	local tempTable = {LinearLayout,
		layout_width = 'fill_parent',
		layout_height = "wrap_content",
		gravity = "left",
		orientation="horizontal"
	}
	for j = 0, 2 do
		if cklist[i + j] ~= nil then
		local name = cklist[i + j][1]
		local func1 = cklist[i + j][2]
		local func2 = cklist[i + j][3]
		if not name then name = "未设置" end
			rstt = Yunzhu.intcheck(name,func1,func2)
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
function Yunzhu.check1(cklist)
	if #cklist==0 then return nil end
	local rest = {
		LinearLayout,
		layout_width = 'fill_parent',
		layout_height = "wrap_content",
		gravity = "center",
		orientation="vertical",
		
	}

	for i = 1, #cklist,1 do
	local tempTable = {LinearLayout,
		layout_width = 'fill_parent',
		layout_height = "wrap_content",
		gravity = "left",
		orientation="vertical"
	}
	for j = 0, 0 do
		if cklist[i + j] ~= nil then
		local name = cklist[i + j][1]
		local func1 = cklist[i + j][2]
		local func2 = cklist[i + j][3]
		if not name then name = "未设置" end
			rstt = Yunzhu.intcheck(name,func1,func2)
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
end
end
if localname=="摇一摇隐藏UI" then yyfunc=outfunc end
if localname=="音量键隐藏UI" then ylfunc=outfunc end
return outfunc
end
end

function Yunzhu.switch(name,func1,func2,miaoshu)
if type(func1)~='function' then func1=function() end end
if type(func2)~='function' then func2=function() end end

if not checkbg then
	checkbg = getVerticalBG({0xff90c12f,0xff90c12f},90)
checkbga = getVerticalBG({0xffE6E6E6,0xffE6E6E6},90)
switchbg1 = getVerticalBG({0xffffffff,0xffffffff},90)
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
	layout_width = '40dp',
	layout_height = '20dp',
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
		layout_width = '17dp',
		layout_height = '17dp',
		
	},
}
switches["2s"..nid] = luajava.loadlayout {
	FrameLayout,
	onClick = function() luajava.newThread(function() func() end):start() end,
	layout_width = '40dp',
	layout_height = '20dp',
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
		layout_width = '17dp',
		layout_height = '17dp',

		
	}
}
rest = luajava.loadlayout({
	LinearLayout,
	elevation = "5dp",
	layout_width = 'fill_parent',
	layout_height = "48dp",
	gravity = "center_vertical",
	{
		LinearLayout,
		layout_width = 'fill_parent',
		layout_height = "40dp",
		gravity = "center_vertical",
		background = luajava.loadlayout {
			GradientDrawable ,
			color = 按钮颜色 ,
			cornerRadius = 35
		} ,padding = {
		"0dp","0dp","6dp","0dp"
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
			padding="1dp",
			switches["1s"..nid],switches["2s"..nid]
		},{
			TextView,
			gravity = "top",
			text = name,
			textColor = "#ffffff",
			textSize = "13sp",
			layout_width = 'wrap_content',
			layout_marginLeft = "10dp",
			layout_marginRight = "20dp",
		}}
})
return rest
end
function Yunzhu.edit(name)
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


function getButtonBG()
local selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, getVerticalBG({0xff90c12f,0xff90c12f},10,2,0xff232323))
selector:addState({
	-android.R.attr.state_pressed
}, getVerticalBG({0xff90c12f,0xff90c12f},10,2,0xff90c12f))
return selector
end
function Yunzhu.button(txt,func)
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
			background = getButtonBG(),
			onClick = function() luajava.newThread(function() pcall(func) end):start() end,
			{
				TextView,
--id = luajava.newId(tid),
				layout_marginTop = "5dp",
			layout_marginBottom = "5dp",
				text = txt,
				textColor='#ffffff',
				textSize = "12sp",
				layout_width = "wrap_content",
			},
		}})
end

function Yunzhu.text(txt,color,size)
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
function Yunzhu.setedit(name,txt)
txt = tostring(txt)
luajava.runUiThread(function()
	luajava.getIdValue(_ENV[name]):setText(txt)
	end)
end

function Yunzhu.getedit(name)
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
function Yunzhu.newfloat(name,func1,func2)
floattable[name] = 1
local func = 开关(name.."k",func1,func2)
window = context:getSystemService("window") -- 获取窗口管理器
local function invoke(name,func1,func2)
if not name then name = "未设置" end
nameid = name..guid()
local ok
local RawX, RawY, x, y
nameid1 = name..guid()
if not namelist[name] then namelist[name] = false end
if namelist[name] ~= false then clclcl = "#7590c12f" else clclcl = "#880CFF76" end
param1[name] = getLayoutParams2()
_ENV[name] = luajava.loadlayout(
	{
		LinearLayout,
		layout_width = "40dp",
		id = luajava.newId(nameid1),
		layout_height = "40dp",
		background = luajava.loadlayout {
			GradientDrawable,
			color = clclcl,
			cornerRadius = 30
		},
		onClick = function()

		if namelist[name] == false then
		_ENV[name]:setBackground(luajava.loadlayout {
			GradientDrawable,
			color = "#7590c12f",
			cornerRadius = 30
		})
		namelist[name] = true
		elseif namelist[name] == true then
		_ENV[name]:setBackground(luajava.loadlayout {
			GradientDrawable,
			color = "#880CFF76",
			cornerRadius = 30
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
			layout_width = "50dp",
			layout_height = "50dp",
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

function Yunzhu.rmvfloat(name)
floattable[name] = 0
local function invoke2()
window:removeView(_ENV[name], param1[name])
end
local runnable = luajava.getRunnable(invoke2)
local handler = luajava.getHandler()
handler:post(runnable)

end

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
function visi(tid,ttid)
local tview = luajava.getIdValue(tid)
local ttview = luajava.getIdValue(ttid)
if not tview then return 0 end
if tonumber(tostring(tview:getVisibility())) == 8.0 then
tview:setVisibility(View.VISIBLE)
ttview:setBackground(luajava.getBitmapDrawable("/sdcard/长安/图片/sanjiao"))
else
	tview:setVisibility(View.GONE)
ttview:setBackground(luajava.getBitmapDrawable("/sdcard/长安/图片/hsanjiao"))
end
end
Yunzhu.controlBig = function(control,time)
luajava.runUiThread(function()
	import "android.animation.ObjectAnimator"
	ObjectAnimator():ofFloat(control,"scaleX", {
		0, 0.4, 0.7, 1
	}):setDuration(time):start()
	ObjectAnimator():ofFloat(control,"scaleY", {
		0, 0.4, 0.7, 1
	}):setDuration(time):start()
	end) end
Yunzhu.controlFlip = function(control,time)
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
Yunzhu.controlWater = function(control,time)
luajava.runUiThread(function()
	import "android.animation.ObjectAnimator"
	ObjectAnimator():ofFloat(control,"scaleX", {
		1, 0.8, 0.9, 1
	}):setDuration(time):start()
	ObjectAnimator():ofFloat(control,"scaleY", {
		1,0.8,0.9,1
	}):setDuration(time):start()
	end) end
Yunzhu.controlSmall = function(control,time)
luajava.runUiThread(function()
	import "android.animation.ObjectAnimator"
	ObjectAnimator():ofFloat(control,"scaleX", {
		1, 0.7, 0.4, 0
	}):setDuration(time):start()
	ObjectAnimator():ofFloat(control,"scaleY", {
		1, 0.7, 0.4, 0
	}):setDuration(time):start()
end) end

function Yunzhu.box(views)
local tid = "box"..guid()
local ttid = tid.."6"
local firadio = {
	LinearLayout,
	layout_width = 'fill_parent',
	layout_height = "wrap_content",
	layout_marginTop = "2dp",
	gravity="center",
	layout_marginBottom = "2dp",
	orientation = "vertical",
}
if type(views[1]) == "string" or type(views[1]) == "number" then
firadio[#firadio+1] = {
	FrameLayout,
	layout_width = 'match_parent',
	layout_height = "30dp",
	gravity = "center_vertical",
	layout_marginTop = "2dp",
	layout_marginBottom = "4dp",
	onClick = function() visi(tid,ttid) end,
	background = getButtonBG(),
	{
		ImageView,
		layout_gravity="left|center",
		layout_marginLeft = "10dp",
		id = luajava.newId(ttid),
		background = "/sdcard/长安/图片/hsanjiao",
		layout_width = "12dp",
		layout_height = "12dp",
		layout_marginTop = "0dp",
	},
	{
		TextView,text = views[1],
		textSize = "11sp",
		layout_width = "220dp",
		textColor = "#ffffff",
		layout_gravity = "center",
		layout_marginLeft='34dp',
		
	}} else
	gg.alert("Yunzhu.box第一个参数必须是string") os.exit()
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
for i = 2,#views do
radios[#radios+1] = views[i]
end
firadio[#firadio+1] = radios
return luajava.loadlayout(firadio)
end
fenye={}
fenyed={}
function 二级分页(tab)
	if tab['第3页']~=nil then
	local tid=guid()
	fenye[tid]={}
	fenyed[tid]=getVerticalBG({0xffffffff,0xffffffff},15)
	for i=1,3 do
		fenye[tid][i]={
		LinearLayout,
		visibility='gone',
		layout_width='match_parent',
		orientation='vertical',
		
		}
		for j=1,#tab['第'..i..'页'] do
			table.insert(fenye[tid][i],tab['第'..i..'页'][j])
		end
		fenye[tid][i]=luajava.loadlayout(fenye[tid][i])
	end
	local tmp={
		LinearLayout,
		layout_width='match_parent',
		gravity='center_horizontal',
		orientation='vertical',
		{LinearLayout,
			padding='2dp',
			background=getVerticalBG({0x86FFFFFF,0x86FFFFFF},15),
			{TextView,
				text=tab['第1页名字'],
				textSize='11sp',
				textColor='#ffffff',
				onClick=function()
					luajava.getIdValue(tid..'1'):setBackground(fenyed[tid])
					fenye[tid][1]:setVisibility(View.VISIBLE)
					YoYoImpl:with("SlideInUp"):duration(500):playOn(fenye[tid][1])
					luajava.getIdValue(tid..'2'):setBackground(empty)
					fenye[tid][2]:setVisibility(View.GONE)
					luajava.getIdValue(tid..'3'):setBackground(empty)
					fenye[tid][3]:setVisibility(View.GONE)
				end,
				id=luajava.newId(tid..'1'),
				padding={'10dp','5dp','10dp','5dp'},
			},
			{TextView,
				text=tab['第2页名字'],
				textSize='11sp',
				textColor='#ffffff',
				onClick=function()
					luajava.getIdValue(tid..'1'):setBackground(empty)
					fenye[tid][1]:setVisibility(View.GONE)
					luajava.getIdValue(tid..'2'):setBackground(fenyed[tid])
					YoYoImpl:with("SlideInUp"):duration(500):playOn(fenye[tid][2])
					fenye[tid][2]:setVisibility(View.VISIBLE)
					luajava.getIdValue(tid..'3'):setBackground(empty)
					fenye[tid][3]:setVisibility(View.GONE)
					
				end,
				id=luajava.newId(tid..'2'),
				padding={'10dp','5dp','10dp','5dp'},
			},{TextView,
				text=tab['第3页名字'],
				textSize='11sp',
				textColor='#ffffff',
				onClick=function()
					luajava.getIdValue(tid..'1'):setBackground(empty)
					fenye[tid][1]:setVisibility(View.GONE)
					luajava.getIdValue(tid..'2'):setBackground(empty)
					YoYoImpl:with("SlideInUp"):duration(500):playOn(fenye[tid][3])
					fenye[tid][2]:setVisibility(View.GONE)
					luajava.getIdValue(tid..'3'):setBackground(fenyed[tid])
					fenye[tid][3]:setVisibility(View.VISIBLE)
					
				end,
				id=luajava.newId(tid..'3'),
				padding={'10dp','5dp','10dp','5dp'},
			}
		},fenye[tid][1],fenye[tid][2],fenye[tid][3]
	}
	local tmp= luajava.loadlayout(tmp)
	luajava.getIdValue(tid..'1'):setBackground(fenyed[tid])
	fenye[tid][1]:setVisibility(View.VISIBLE)
	return tmp
	else
	local tid=guid()
	fenye[tid]={}
	fenyed[tid]=getVerticalBG({0xffffffff,0xffffffff},15)
	for i=1,2 do
		fenye[tid][i]={
		LinearLayout,
		visibility='gone',
		layout_width='match_parent',
		orientation='vertical',
		
		}
		for j=1,#tab['第'..i..'页'] do
			table.insert(fenye[tid][i],tab['第'..i..'页'][j])
		end
		fenye[tid][i]=luajava.loadlayout(fenye[tid][i])
	end
	local tmp={
		LinearLayout,
		layout_width='match_parent',
		gravity='center_horizontal',
		orientation='vertical',
		{LinearLayout,
			padding='2dp',
			background=getVerticalBG({0xff90c12f,0xff90c12f},15),
			{TextView,
				text=tab['第1页名字'],
				textSize='11sp',
				textColor='#000000',
				onClick=function()
					luajava.getIdValue(tid..'1'):setBackground(fenyed[tid])
					fenye[tid][1]:setVisibility(View.VISIBLE)
					YoYoImpl:with("SlideInUp"):duration(500):playOn(fenye[tid][1])
					luajava.getIdValue(tid..'2'):setBackground(empty)
					fenye[tid][2]:setVisibility(View.GONE)
				end,
				id=luajava.newId(tid..'1'),
				padding={'10dp','5dp','10dp','5dp'},
			},
			{TextView,
				text=tab['第2页名字'],
				textSize='11sp',
				textColor='#000000',
				onClick=function()
					luajava.getIdValue(tid..'1'):setBackground(empty)
					fenye[tid][1]:setVisibility(View.GONE)
					luajava.getIdValue(tid..'2'):setBackground(fenyed[tid])
					YoYoImpl:with("SlideInUp"):duration(500):playOn(fenye[tid][2])
					fenye[tid][2]:setVisibility(View.VISIBLE)
					
				end,
				id=luajava.newId(tid..'2'),
				padding={'10dp','5dp','10dp','5dp'},
			}
		},fenye[tid][1],fenye[tid][2]
	}
	local tmp= luajava.loadlayout(tmp)
	luajava.getIdValue(tid..'1'):setBackground(fenyed[tid])
	fenye[tid][1]:setVisibility(View.VISIBLE)
	return tmp
end
end








huiz=function()
--如果有绘制内容必须写在这里
--否则音量键隐藏会导致绘制消失
--例：
--draw.text('长安ui',200,200)
	
	
	
	
end


stab = {
--菜单名字，添加即可加页数，需要与结尾配置表页数对应
	"公告",
	"功能",
	"音乐",
	"设置",
}

左上角图标='https://cdn-community.codemao.cn/47/community/d2ViXzEwMDFfMTAwMTQwOTNfMTAwMTQwOTNfMTcxODgxNzA1NzY0Ml8xMTZiNzEzNg.png'

小悬浮窗图标 = "https://cdn-community.codemao.cn/47/community/d2ViXzEwMDFfMTAwMTQwOTNfMTAwMTQwOTNfMTcxODgxNzA1NzY0Ml8xMTZiNzEzNg.png"
--悬浮窗链接或路径

Yunzhu.menu(
	{
		{--1
		
			二级分页({
				['第1页名字']='凯撒LuaJava',
				['第1页']={
				
					Yunzhu.text("Caesar.","#ffffff","15sp"),
				Yunzhu.button('载入游戏',
						function()
						
						end),
						Yunzhu.button('退出程序',
						function()
							gg.exit()
						end),
						Yunzhu.seek('','lz1',1,60,120),--名字，变量名，最小，最大，
						Yunzhu.text("帧率平均值：114.514 \n 本机型号:YZ 分辨率 2560*1860","#ffffff","10sp"),
				},--第一分页收尾
				['第2页名字']='例子2',
				['第2页']={
				Yunzhu.box({"check3例子（三列）",
					Yunzhu.check3({
						{
							"测试1",
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
						}, {
							"测试1",
							function()
								
							end,
							function()
								
							end
						},
					})
				}),
				Yunzhu.box({"check2例子（双列）",
					Yunzhu.check2({
						{
							"测试1",
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
						}, {
							"测试1",
							function()
								
							end,
							function()
								
							end
						},
					}),--check收尾
				}),--box收尾
				
				
				}--第二分页配置收尾
			}),
			
		},{--2
			
			二级分页({
				['第1页名字']='例子1',
				['第1页']={
					Yunzhu.radio({
						{'矩形血量',
							function()
								
							end
						},{'圆形血量',
							function()
								
							end
						}
					}),
					Yunzhu.seek('例子','lz1',1,10,5),--名字，变量名，最小，最大，初始
					Yunzhu.button('调用拉条例子',
						function()
							gg.alert(lz1)--上边定义拉条变量名lz1直接调用
						end),
					Yunzhu.text("下方是check1例子（单列）","#ffffff","20sp"),
					Yunzhu.check1({
							{
								"例子",
								function()
									
								end,
								function()
									
								end
							}, {
								"例子",
								function()
									gg.toast("12345")
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
							}
						}),
				},--第一分页收尾
				['第2页名字']='例子2',
				['第2页']={
				Yunzhu.box({"check3例子（三列）",
					Yunzhu.check3({
						{
							"测试1",
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
						}, {
							"测试1",
							function()
								
							end,
							function()
								
							end
						},
					})
				}),
				Yunzhu.box({"check2例子（双列）",
					Yunzhu.check2({
						{
							"测试1",
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
						}, {
							"测试1",
							function()
								
							end,
							function()
								
							end
						},
					}),--check收尾
				}),--box收尾
				
				
				}--第二分页配置收尾
			}),
			
			
		},{--3
			
			二级分页({
				['第1页名字']='例子1',
				['第1页']={
					Yunzhu.radio({
						{'矩形血量',
							function()
								
							end
						},{'圆形血量',
							function()
								
							end
						}
					}),
					Yunzhu.seek('例子','lz1',1,10,5),--名字，变量名，最小，最大，初始
					Yunzhu.button('调用拉条例子',
						function()
							gg.alert(lz1)--上边定义拉条变量名lz1直接调用
						end),
					Yunzhu.text("下方是check1例子（单列）","#ffffff","20sp"),
					Yunzhu.check1({
							{
								"例子",
								function()
									
								end,
								function()
									
								end
							}, {
								"例子",
								function()
									gg.toast("12345")
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
							}
						}),
				},--第一分页收尾
				['第2页名字']='例子2',
				['第2页']={
				Yunzhu.box({"check3例子（三列）",
					Yunzhu.check3({
						{
							"测试1",
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
						}, {
							"测试1",
							function()
								
							end,
							function()
								
							end
						},
					})
				}),
				Yunzhu.box({"check2例子（双列）",
					Yunzhu.check2({
						{
							"测试1",
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
						}, {
							"测试1",
							function()
								
							end,
							function()
								
							end
						},
					}),--check收尾
				}),--box收尾
				
				
				},--第二分页配置收尾
				['第3页名字']='例子3',
				['第3页']={
					Yunzhu.box({"check3例子（三列）",
						Yunzhu.check3({
							{
								"测试1",
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
							}, {
								"测试1",
								function()
									
								end,
								function()
									
								end
							},
						})
					}),
					
					
				},--第三分页收尾
			}),
			
			
			
			
			
		},{--第四页
			
			
			Yunzhu.switch("switch例子",
				function()
					gg.alert('开')
				end,
				function()
					gg.alert('关')
				end),
			Yunzhu.switch('音量键隐藏',--默认开，改名就是默认关
				function()
					音量键=true
				end,
				function()
					音量键=false
				end),
			Yunzhu.text("\n\n\n"),
			
			Yunzhu.button("退出",function()
				window:removeView(floatWindow)
				luajava.setFloatingWindowHide(false)
				tuichu=1
				end),
		},{--第五页，没有写菜单标题所以不显示
			
		},
	
	
	})
--配置表添加表即可加页数，需要与上边菜单标题数对应


if ylfunc~=nil then ylfunc() end
while true do
if tuichu == 1 then break end
if 音量键 then
jianting(qiehuan)
else
jianting3()
end
end
luajava.setFloatingWindowHide(false)