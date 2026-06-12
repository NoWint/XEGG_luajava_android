



info={
	    example_version = '1.0.3',
		name = '佐天泪子',
		appid = '62093',
		appkey = 'izknTMuTqTZtZfMt',
		rc4key = '0EFd2JIPETL9QOdq',
		version = '1.0',
		mi_type = '3'
	}
	function PS() end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值4,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end---静态

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
end--动态
rlyunyz = getrlyunyz(info)
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
function newbg(gtvb1,gtvb4,gtvb5,g1,g2,g3,g4)
local jianbians = luajava.loadlayout({
GradientDrawable,
color = 0xff000000,
gradientType = GradientDrawable.LINEAR_GRADIENT,
orientation = GradientDrawable.Orientation.TOP_BOTTOM ,
})
jianbians:setColors(gtvb1)
jianbians:setStroke(gtvb4,gtvb5)--边框宽度和颜色
jianbians:setCornerRadii({g1,g1,g2,g2,g3,g3,g4,g4})
return jianbians
end
changan={}
function panduan(rec) fille,err = io.open(rec) if fille == nil then return false else return true end end
function checkimg(tmp,ii)
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
	"bm_launch",
	"safe",
	"bm_gn",
	"mh",
	"bm_sz",
	"bm_music",
	"quarkx",
	'CircleImageView.dex',
	'Shimmer.dex',
	'top_gg',
	'quarkconf',
	'hei_right',
	'heir',
	'heiraon',
	'heiraoff',
	'quarkcheckoff',
	'quarkcheckon',
}
for i = 1,#ckimg do
jindu = i
checkimg(ckimg[i],i)
end
circle=dex.loadfile('/sdcard/长安/图片/CircleImageView.dex')
import 'android.widget.CircleImageView'
shimmer=dex.loadfile('/sdcard/长安/图片/Shimmer.dex')
import "com.romainpiel.shimmer.Shimmer"
import "com.romainpiel.shimmer.ShimmerTextView"
import "com.romainpiel.shimmer.ShimmerButton"

function particle2(tx)
local webView = luajava.webView(function(webView)
	webView:loadData([[<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>炫彩荧光线条登录框</title>
    <style>
    	*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
body{
    min-height: 100vh;
    background-color: #00000000;
    display: flex;
    justify-content: center;
    align-items: center;
    overflow: hidden;
}
.ring{
    position: relative;
    width:36px;
    height: 36px;
    display: flex;
    justify-content: center;
    align-items: center;
}
.ring i{
    position: absolute;
    inset: 0;
    transition: all 0.5s;
    animation-play-state: running; 
    border: 1px solid var(--clr);
    filter: drop-shadow(0 0 2px #fff);
}
.ring i:nth-child(1){
    border-radius: 38% 62% 63% 37% / 41% 44% 56% 59%;
    animation: animate 6s linear infinite;
    animation-play-state: running; 
    
}
.ring i:nth-child(2){
    border-radius: 41% 44% 56% 59% / 38% 62% 63% 37%;
    animation: animate 4s linear infinite;
    animation-play-state: running; 
}
.ring i:nth-child(3){
    border-radius: 41% 44% 56% 59% / 38% 62% 63% 37%;
    animation: animate 10s linear infinite reverse;
    animation-play-state: running; 
}

@keyframes animate {
    0%{
        transform: rotate(0);
    }
    100%{
        transform: rotate(360deg);
    }
    animation-timing-function: linear;
}
    	
    </style>
</head>
<body>
    <div class="ring">
        <i style="--clr:#00FFA5;"></i>
        <i style="--clr:#A55BFF;"></i>
        <i style="--clr:#FF290E;"></i>
    </div>
</body>
</html>]], 'text/html', 'UTF-8')
	webView:setBackgroundColor(0x0)
	webView:getSettings():setJavaScriptEnabled(true)
	webView:setVerticalScrollBarEnabled(false)
		webView:setHorizontalScrollBarEnabled(false)
		webView:setScrollContainer(false)
end)
return webView
end
parti=particle2('https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/defaulticon')
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
stringTool = {}
function stringTool.chsize(char)
if not char then
--print("not char")
return 0
elseif char > 240 then
return 4
elseif char > 225 then
return 3
elseif char > 192 then
return 2
else
	return 1
end
end
function stringTool.utf8sub(str, startChar, numChars)
local startIndex = 1
while startChar > 1 do
local char = string.byte(str, startIndex)
startIndex = startIndex + stringTool.chsize(char)
startChar = startChar - 1
end

local currentIndex = startIndex

while numChars > 0 and currentIndex <= #str do
local char = string.byte(str, currentIndex)
currentIndex = currentIndex + stringTool.chsize(char)
numChars = numChars -1
end
return str:sub(startIndex, currentIndex - 1), numChars
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
	do
local r = panduan("/sdcard/.游客信息qk.lua")
if r then
qltname = file.read("/sdcard/.游客信息qk.lua")
else
	qltname = "游客"
file.write(path,qltname)
end
local path = "/sdcard/.用户头像qk.lua" --用户信息
local r = panduan(path)
if r then
qlticon = file.read("/sdcard/.用户头像qk.lua")
else
	qlticon = 悬浮窗图标
file.write("/sdcard/.用户头像qk.lua",qlticon)
end
end
canMove=true
isswitch = true

lmx2=luajava.loadlayout{
	CircleImageView,
	layout_height='40dp',
	layout_width='40dp',
	src=获取图片(悬浮窗图标)
}

cebgrid={
	GridLayout,
	columnCount = '4',
	id=luajava.newId('cebg'),
	layout_width = 'fill_parent',
	layout_height = "wrap_content",
	layout_weight=1,
	gravity = "left",
}
gglist={
	LinearLayout,
	id=luajava.newId('cebgg'),
	visibility='gone',
	layout_width = 'fill_parent',
	layout_height = "wrap_content",
	layout_weight=1,
	gravity = "left",
	padding="2dp",
	getCard(gonggao)
}
slcta=getVerticalBG({0xff27863D,0xff27863D},25)
slctb=getVerticalBG({0x11ffffff,0x11ffffff},25)
for i=1,#stab do
	_ENV["jm"..i]=luajava.loadlayout{
		LinearLayout,
		orientation="vertical",
		onClick=function() 切换(i) end,
		--onTouch=hanshu,
		{ImageView,
		layout_height="32dp",
		layout_width="32dp",
		layout_marginLeft="7.5dp",
		layout_marginRight="7.5dp",
		layout_marginTop="4dp",
		layout_marginBottom="0dp",
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
	luajava.runUiThread(function()
		_ENV['jmp'..i]:setColorFilter(0xff545454)
	end)
	cebgrid[#cebgrid+1]=_ENV["jm"..i]
end
cebgrid={
	ScrollView,
	layout_marginTop="0dp",
	layout_marginLeft='4dp',
	layout_marginRight='4dp',
	layout_marginBottom='4dp',
	layout_width = 'fill_parent',
	layout_height = "match_parent",
	layout_weight=1,
	padding="2dp",
	elevation='2dp',
	background=newbg({0xFFffffff,0xFFffffff},0,0xff161616,0,25,25,25),
	{LinearLayout,
		layout_width = 'fill_parent',
	layout_height = "match_parent",
		cebgrid,gglist}
}
totouch=luajava.loadlayout({
	LinearLayout,
	layout_height='42dp',
	layout_width='42dp',
	onClick=隐藏,
	onTouch=hanshu
})
selector = luajava.getStateListDrawable()
selector:addState({
	-android.R.attr.state_pressed
}, newbg({0x55545454,0x55545454},0,0xff545454,15,15,0,0))
selector:addState({
	android.R.attr.state_pressed
}, newbg({0xFFffffff,0xFFffffff},0,0xff161616,15,15,0,0))
titlev=luajava.loadlayout{ShimmerTextView,
				textSize="16sp",
				reflectionColor="#DBA829";
				textColor="#000000",
				text=stitle,
			}
headicon=luajava.loadlayout({CircleImageView,
			src=获取图片(悬浮窗图标),
			layout_height="42dp",
			layout_width="42dp",
			padding='1dp',
			
			})
cebian={
	LinearLayout,
	layout_height="match_parent",
	layout_width="200dp",
	orientation="vertical",
	
	padding="0dp",
	{--顶栏1
		FrameLayout,
		layout_width = "fill_parent",
		layout_height = "wrap_content",
		layout_marginLeft='0dp',
		layout_marginTop='0dp',
		{FrameLayout,
			id='canv',
			layout_height="42dp",
			layout_width="42dp",
			
			gravity='center',
			onClick=隐藏,
			onTouch=hanshu,
			headicon
		},
		{LinearLayout,
		layout_marginLeft="48dp",
		layout_marginTop='2dp',
		layout_marginBottom='2dp',
			orientation="vertical",
			{LinearLayout,layout_width='match_parent',
				layout_weight=1,
				id=luajava.newId('shim'),
				titlev
			},{LinearLayout,
				layout_width="wrap_content",
				gravity="center_horizontal",
				{TextView,
					textSize="10sp",
					textColor="#000000",
					text="VIP•"
				},
				{TextView,
					textSize="10sp",
					textColor="#938D8D",
					text="未登录",
					id=luajava.newId('viptime')
				}
			}
		},{
			ImageView,
			layout_gravity="right",
			src = 获取图片("/sdcard/长安/图片/quarkx"),
			id='quarkx',
			padding="2dp",
			layout_width = "30dp",
			layout_height = "25dp",
			gravity = "center",
			onClick = 隐藏,
			onTouch = hanshu,
			layout_marginTop="dp",
			layout_marginRight="0dp",
		},{
			ImageView,
			layout_gravity="right",
			src = 获取图片("/sdcard/长安/图片/quarkconf"),
			id='setico',
			padding='3dp',
			layout_width = "20dp",
			layout_height = "20dp",
			gravity = "center",
			onClick = function() luajava.newThread(xiuxg):start() end,
			onTouch = hanshu,
			layout_marginTop="3dp",
			layout_marginRight="30dp",
		}
	},
	{LinearLayout,
		layout_height="1dp",
		layout_width="fill_parent",
		layout_marginTop="7dp",
		layout_marginRight='4dp',
		background="#d7d7d7",
	},
	{LinearLayout,--左
		onClick=function()end,
		onTouch=hanshu,
		--background=getVerticalBG({0xff202126,0xff202126},25),
		padding={'0dp','0dp','0dp','5dp'},
		layout_height="match_parent",
		layout_weight=1,
		layout_marginTop="2dp",
		
		layout_width="fill_parent",
		gravity="center_horizontal",
		{LinearLayout,
			orientation="vertical",
			layout_width="fill_parent",
			gravity="center_horizontal",
			{LinearLayout,
				layout_width="fill_parent",
				gravity="center_horizontal",
				{LinearLayout,
				layout_height='28dp',
				layout_width='95dp',
				background=newbg({0xFFffffff,0xffffffff},0,0xffffffff,10,10,10,10),
				elevation='2dp',
				layout_marginLeft='2dp',
				layout_marginTop='2dp',
				layout_marginBottom='2dp',
				layout_marginRight='2dp',
				gravity='center',
				onClick=function() luajava.newThread(function() gg.QQgroup(q群号) end):start() end,
				onTouch=hanshu,
				{TextView,
					text=q群文字,
					textSize='9sp',
					gravity='center',
					textColor='#232323',
					
				}
				},
				
				{LinearLayout,
				layout_height='28dp',
				layout_width='95dp',
				background=newbg({0xFFffffff,0xffffffff},0,0xffffffff,10,10,10,10),
				elevation='2dp',
				layout_marginLeft='2dp',
				layout_marginTop='2dp',
				layout_marginBottom='2dp',
				layout_marginRight='2dp',
				gravity='center',
				onClick=function() luajava.newThread(function() app.openUrl(tg链接) end):start() end,
				onTouch=hanshu,
				{TextView,
					text=tg文字,
					textSize='9sp',
					gravity='center',
					textColor='#232323',
					
				}
				}
				
			},
			
			{LinearLayout,
				layout_height='35dp',
				layout_marginTop='3dp',
				layout_marginBottom='3dp',
				layout_marginLeft='3dp',
				layout_marginRight='3dp',
				layout_width='match_parent',
				
				background=newbg({0xFFffffff,0xffffffff},0,0xffffffff,10,10,10,10),
				padding='3dp',
				elevation='2dp',
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
				}
			},
			{LinearLayout,
				orientation='vertical',
				layout_height='match_parent',
				layout_width='match_parent',
				layout_marginTop='2dp',
				{LinearLayout,
					{TextView,
					padding={'5dp','2dp','5dp','2dp'},
					layout_height='20dp',
					layout_width='50dp',
					layout_marginLeft='4dp',
					elevation='2dp',
					id=luajava.newId('cdmenu'),
					background=newbg({0xFFffffff,0xFFffffff},0,0xff161616,15,15,0,0),
					text='菜单',
					textColor='#000000',
					textSize='12sp',
					gravity='center',
					onClick=function()
						luajava.getIdValue('cdmenu'):setBackground(newbg({0xFFffffff,0xFFffffff},0,0xff161616,15,15,0,0))
						luajava.getIdValue('ggmenu'):setBackground(selector)
						luajava.getIdValue('ggmenu'):setTextColor(0xff545454)
						luajava.getIdValue('cdmenu'):setTextColor(0xff000000)
						luajava.getIdValue('cebgg'):setVisibility(View.GONE)
						luajava.getIdValue('cebg'):setVisibility(View.VISIBLE)
					end,
					onTouch=hanshu
					},
					{TextView,
					padding={'5dp','2dp','5dp','2dp'},
					layout_height='20dp',
					layout_width='50dp',
					layout_marginLeft='0dp',
					elevation='2dp',
					id=luajava.newId('ggmenu'),
					background=selector,
					text='公告',
					textColor='#ff545454',
					textSize='12sp',
					gravity='center',
					onClick=function()
						luajava.getIdValue('ggmenu'):setBackground(newbg({0xFFffffff,0xFFffffff},0,0xff161616,15,15,0,0))
						luajava.getIdValue('cdmenu'):setBackground(selector)
						luajava.getIdValue('cdmenu'):setTextColor(0xff545454)
						luajava.getIdValue('ggmenu'):setTextColor(0xff000000)
						luajava.getIdValue('cebg'):setVisibility(View.GONE)
						luajava.getIdValue('cebgg'):setVisibility(View.VISIBLE)
					end,
					onTouch=hanshu
					}
				},
				cebgrid,
				
			}
		}
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
	layout_width = "300dp",
	layout_height = "255dp",
	orientation = "vertical",
	padding={'0dp','0dp','0dp','0dp'},
	
	
	

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
	layout_width="300dp"
}

ckou = luajava.loadlayout({LinearLayout,
	visibility = "gone",
	--background='#161616',
	{
	LinearLayout,
	---大背景
	---background=getVerticalBG({0x55EEEEEE,0x55EEEEEE},25,3,0xaa161616),
	padding={'5dp','5dp','5dp','0dp'},
	{
	LinearLayout,
	id='leftb',
	visibility="visible",
	layout_width="wrap_content",
	layout_height='match_parent',
	cebian
},{
		LinearLayout,
		layout_marginBottom = "8dp",
		layout_marginTop = "20dp",
		layout_width = "0dp",
		layout_height = "fill_parent",
		background = "#262523"
	},{FrameLayout,
		id="parentv",ckou}}})
beij=newbg({0xffeeeeee,0xffeeeeee},0,0xff161616,25,25,25,25)

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
	background=beij,
	ckou,
	{
	FrameLayout,
	id='control1',
	layout_height='40dp',
	layout_width='40dp',
	onClick=隐藏,
	onTouch=hanshu,
	lmx2
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
quarkx:setColorFilter(0xff000000)
window:addView(floatWindow, mainLayoutParams)
canv:addView(parti)
canv:addView(totouch)
end
local runnable = luajava.getRunnable(invoke2)
local handler = luajava.getHandler()
handler:post(runnable)
local isMove


end
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
shimmer = Shimmer();
luajava.runUiThread(function()
  shimmer:setDuration(2000)
  shimmer:setStartDelay(100)
  shimmer:start(titlev)

end)
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
function xiuxg()
if type(ret)~='table' then gg.alert('请先登陆') return 0 end
tmp=gg.prompt({"昵称","头像(请输入QQ号码或图片链接，支持本地路径)"},{qltname,qlticon},{"text","text"})
if tmp~=nil then
if tmp[1]~="" then 修改名字(tmp[1]) end
if tmp[2]~="" then 修改头像(tmp[2]) end
end
end

function isUrlSafe(str)
local pattern = "^[a-zA-Z0-9%s%-%._~:/?#%[%]@!$&'()*+,;=%@]+$"
local result = string.match(str, pattern)

if result then
return true
else
return false
end
end
function 修改名字(lttext)
if string.len(lttext) <= 0 then return 0 end
if string.len(lttext) >= 400 then
gg.toast("用户名长度上限20字节") return 0
end
local path = "/sdcard/.游客信息qk.lua" --用户信息
qltname = lttext
file.write(path,qltname)
gg.toast("昵称修改成功\n"..qltname)
luajava.post(function()
	luajava.getIdView('shim'):removeView(titlev)
end)
titlev=luajava.loadlayout{ShimmerTextView,
				textSize="16sp",
				reflectionColor="#DBA829";
				textColor="#000000",
				text=qltname,
			}
luajava.post(function()
	luajava.getIdView('shim'):addView(titlev)
end)

shimmer = Shimmer();
luajava.runUiThread(function()
YoYoImpl:with("FadeIn"):duration(1000):playOn(titlev)
shimmer:setDuration(2000)
  shimmer:setStartDelay(100)
  shimmer:start(titlev)

end)
end
function 修改头像(txt)
local path2 = "/sdcard/.用户头像qk.lua"
if tonumber(txt) ~= nil then txt = "http://q1.qlogo.cn/g?b=qq&nk="..txt.."&s=100" end
if string.find(txt,"http%%") ~= nil or string.find(txt,"https%%") ~= nil then
gg.alert("格式有误，请重新输入") return 0
end
qlticon = txt
file.write(path2,qlticon)
gg.toast("头像修改成功")
luajava.runUiThread(function()
	local head=获取图片(qlticon)
	headicon:setImageDrawable(head)
	YoYoImpl:with("FadeIn"):duration(1000):playOn(headicon)
end)
end
function 切换(x)
if type(ret)~="table" then log_init() return 0 end
当前ui = x
luajava.runUiThread(function()
	chuangk:setVisibility(View.VISIBLE)
	for i = 1,#stab do
	_ENV["layout"..i]:setVisibility(View.GONE)
	--_ENV["jmp"..i]:setBackground(slctb)
	_ENV["jmt"..i]:setTextColor(0xff575757)
	_ENV['jmp'..i]:setColorFilter(0xff545454)
	end
	--_ENV["jmp"..当前ui]:setBackground(slcta)
	_ENV["layout"..当前ui]:setVisibility(View.VISIBLE)
	_ENV["jmt"..当前ui]:setTextColor(0xff0062ff)
	_ENV['jmp'..当前ui]:setColorFilter(0xff0062ff)
	vibra:vibrate(8)
	--YoYoImpl:with("FadeIn"):duration(500):playOn(_ENV["jm"..当前ui])
	changan.controlWater(_ENV["jm"..当前ui],400)
end)
end
toum=getVerticalBG({0x00ffffff,0x00ffffff},0)
function 隐藏()
--vibra:vibrate(8)

luajava.runUiThread(function()
	if tonumber(tostring(ckou:getVisibility())) == 8.0 then
	control1:setVisibility(View.GONE)
	显示 = 1
	floatWindow:setBackground(beij)
		mainLayoutParams.flags = LayoutParams.FLAG_NOT_TOUCH_MODAL
	window : updateViewLayout (floatWindow , mainLayoutParams)
	ckou:setVisibility(View.VISIBLE)
	YoYoImpl:with("FadeIn"):duration(400):playOn(floatWindow)
	else
		floatWindow:setBackground(toum)
		mainLayoutParams.flags = LayoutParams.FLAG_NOT_FOCUSABLE
	window : updateViewLayout (floatWindow , mainLayoutParams)
	ckou:setVisibility(View.GONE)
	control1:setVisibility(View.VISIBLE) 显示 = 0
	end
	end)
end
背景颜色=0xffF2F3F5

check字体颜色=0xff000000

按钮颜色=0xffffffff

switch颜色=0x4A6900FF
function log_init()
if type(ret) ~= "table" then
if vv ~= nil then return 0 end
luajava.newThread(function()
	draw.remove()
	gg.toast('请输入卡密')
end):start()
tmp = {
	LinearLayout,orientation = "vertical",gravity = "center_horizontal",
	layout_height='match_parent',
	layout_width='match_parent',
	layout_weight=1,
}
if panduan("/sdcard/长安/配置文件/km.lua") ~= false then
dofile("/sdcard/长安/配置文件/km.lua")
logkapian = {
	LinearLayout,
	orientation = "vertical",
	gravity = "center",
	layout_height = "wrap_content",
	layout_width = "260dp",
	layout_marginTop='2dp',
					layout_marginLeft='2dp',
					layout_marginRight='2dp',
					layout_marginBottom = "5dp",
	background = newbg({0xffffffff,0xffffffff},0,0xffffffff,15,15,15,15),
	elevation = "2dp",
	onClick = function()
	--changan.controlFlip(logkapian,2000)
	luajava.newThread(function() logkap = true login(kam) end):start() end,
	{
		TextView,
		gravity = "center",
		textSize = "15sp",
		textColor = "#161616",
		text = "******"..string.sub(kam,-4,-1)
	},{
		TextView,
		gravity = "center",
		textSize = "11sp",
		textColor = "#4E98FF",
		text = "快捷登录"
	}

}
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
		layout_width = "300dp",
		layout_height = "255dp",
		gravity = "center",
		onTouch=hanshu,
		onClick = function() end,
		{
			LinearLayout,
			orientation = "vertical",
			
			{
				LinearLayout,
				layout_height = "wrap_content",
				orientation='vertical',
				tmp,
				{
					EditText,
					id = luajava.newId("kami"),
					textSize='12sp',
					padding='-2dp',
					textColor = "#000000",
					hint = "请输入卡密",
					elevation = "2dp",
					gravity = "center",
					background = newbg({0xffffffff,0xffffffff},0,0xffffffff,15,15,15,15),
					layout_height = "30dp",
					layout_width = "260dp",
					layout_marginTop='8dp',
					layout_marginLeft='2dp',
					layout_marginRight='2dp',
					layout_marginBottom = "10dp",
				}},
			{
				TextView,
				background = newbg({0xff161616,0xff161616},0,0xffffffff,15,15,15,15),
				text = 'LOGIN',
				textColor = "#ffffff",
				textSize = "13sp",
				gravity = "center",
				elevation = "2dp",
				layout_height = "30dp",
				layout_width = "260dp",
				layout_marginTop='4dp',
					layout_marginLeft='2dp',
					layout_marginRight='2dp',
					layout_marginBottom = "2dp",
				onClick = function() luajava.newThread(function() login(changan.getedit("kami")) end):start() end,
			},{
				TextView,
				background = newbg({0xff545454,0xff545454},0,0xffffffff,15,15,15,15),
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
				background = newbg({0xff545454,0xff545454},0,0xffffffff,15,15,15,15),
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
		luajava.getIdValue("kami"):setHintTextColor(0xffA2A2A2)
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

function login(kam)
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
if qltname=='游客' then
	if kam~=nil then
		qltname= "******"..string.sub(kam,-4,-1)
		write('/sdcard/.游客信息qk.lua',qltname)
	end
end
ktmp = "kam='"..ret.kami.."'"
luajava.newThread(function()
	write("/sdcard/长安/配置文件/km.lua",ktmp)
end):start()
切换(1)
luajava.runUiThread(function()
	luajava.getIdValue("viptime"):setText('到期时间 '..getTimeStamp(ret.vip))
	luajava.getIdValue("viptime"):setTextColor(0xff0062ff)
	
end)
luajava.post(function()
	luajava.getIdView('shim'):removeView(titlev)
end)
titlev=luajava.loadlayout{ShimmerTextView,
				textSize="16sp",
				reflectionColor="#DBA829";
				textColor="#000000",
				text=qltname,
			}
luajava.post(function()
	luajava.getIdView('shim'):addView(titlev)
end)
shimmer = Shimmer();
luajava.runUiThread(function()
  shimmer:setDuration(2000)
  shimmer:setStartDelay(100)
  shimmer:start(titlev)
  YoYoImpl:with("FadeIn"):duration(1000):playOn(titlev)

end)
luajava.runUiThread(function()
	local head=获取图片(qlticon)
	headicon:setImageDrawable(head)
	YoYoImpl:with("FadeIn"):duration(1000):playOn(headicon)
end)
luajava.newThread(function()
draw.remove() huiz()
	end):start()
end
--if logkap then gg.sleep(100) end

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
function changan.setedit(name,txt)
txt = tostring(txt)
luajava.runUiThread(function()
	luajava.getIdValue(_ENV[name]):setText(txt)
	end)
end

function changan.getedit(name)
--gg.alert(edit)
if not _ENV[name] then _ENV[name]=name end
edit = tostring(luajava.getIdValue(_ENV[name]):getText())
return edit
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
checkbg1 = getRes("quarkcheckoff")
checkbg2 = getRes("quarkcheckon")
switchs={}
function changan.intcheck(name,func1,func2)
nid = name..guid()
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
			FrameLayout,
			id = luajava.newId(nid),
			background = checkbg1,
			layout_width = '32dp',
			layout_height = '32dp',
			padding = "0dp",
		},{
			TextView,
			id=luajava.newId(nid.."t"),
			gravity = "left",
			text = name,
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
	luajava.getIdValue(nid):setBackground(checkbg2)
	luajava.getIdValue(nid.."t"):setTextColor(switch颜色)
	--changan.controlWater(switchs[nid],300)
	end)
_ENV[name] = "开"
pcall(func1)
uiadtext(localname.." </font><font color='#0062ff'>已开启.","#161616")

else
	vibra:vibrate(9)
luajava.runUiThread(function()
	luajava.getIdValue(nid):setBackground(checkbg1)
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
function changan.check(cklist)
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
	layout_height = "35dp" ,
	gravity = "center_vertical" ,
	layout_marginTop = "2dp" ,
	layout_marginBottom = "4dp" ,
	onClick = function ()
	visi (tid , ttid)
	end
	,
	background = getButtonBG(),
	{
		TextView , text = views [1] ,
		textSize = "12sp" ,
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

function getShape(tmp0,tmp1,tmp2,tmp3)
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(tmp0)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors(tmp1)
jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
jianbians:setStroke(7,tmp3)--边框宽度和颜色
return jianbians
end
function getShape2(tmp0,tmp1,tmp2,tmp3)
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(tmp0)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors(tmp1)
jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
jianbians:setStroke(24,tmp3)--边框宽度和颜色
return jianbians
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
uiadtext(localname.." </font><font color='#0062ff'>已开启.","#161616")

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
uiadtext(localname.." </font><font color='#B9342D'>已关闭.","#545454")

end
end
if localname=="摇一摇隐藏UI" then yyfunc=outfunc end
if localname=="音量键隐藏UI" then ylfunc=outfunc end
return outfunc
end
end

function changan.switch(name,func1,func2,miaoshu)
if not checkbg then
	checkbg = getShape2(
	45,
	{
		switch颜色,switch颜色
	},
	4,switch颜色)
checkbg0 = getShape2(
	45,
	{
		0xff232323,0xff232323
	},
	4,0x00ffffff)
checkbga = getShape2(
	45,
	{
		0xffE6E6E6,0xffE6E6E6
	},
	4,0xffE6E6E6)
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
	layout_height = "42dp",
	gravity = "center_vertical",
	{
		LinearLayout,
		layout_width = 'fill_parent',
		layout_height = "35dp",
		gravity = "center_vertical",
		background = luajava.loadlayout {
			GradientDrawable ,
			color = 按钮颜色 ,
			cornerRadius = 15
		} ,padding = {
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
			layout_marginLeft = "10dp",
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
			padding="1dp",
			switches["1s"..nid],switches["2s"..nid]
		}}
})
return rest
end
function getButtonBG()
local selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, getVerticalBG({0x55d7d7d7,0x55d7d7d7},15))
selector:addState({
	-android.R.attr.state_pressed
}, getVerticalBG({按钮颜色,按钮颜色},15))
return selector
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
			background = getButtonBG(),
			padding="10dp",
			onClick = function() 
				changan.controlWater(buts[tid],300)
				uiadtext('执行 '..txt,"#161616")
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
				
			}
		}})
return buts[tid]
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
function changan.edit (name , hint)
_ENV [name] = name..guid ()
if not hint then
hint = "点击输入文字"
end
rest = luajava.loadlayout ( {
	LinearLayout ,
	layout_width = 'fill_parent' ,
	{
		LinearLayout ,
		layout_width = 'fill_parent' ,
		layout_height = "40dp" ,
		layout_marginTop = "5dp" ,
		layout_marginBottom = "5dp" ,
		layout_marginLeft = "0dp" ,
		layout_marginRight = "0dp" ,
		gravity = "center_vertical" ,
		{
			EditText ,
			background = getButtonBG(),
			gravity = "center" ,
			hint = hint ,
			textColor=check字体颜色,
			textSize = "13sp",
			layout_height = "40dp" ,
			layout_marginBottom = "-2dp",
			id=luajava.newId(_ENV [name]),
			layout_width = 'fill' ,
			
		}
	}
})
luajava.getIdValue(_ENV [name]):setHintTextColor(0xff545454)
return rest
end

function changan.setedit (name , txt)
txt = tostring (txt)
luajava.runUiThread (function ()
	luajava.getIdValue (_ENV [name]) : setText (txt)
	end

)
end


chazhi={} chajv={}
function changan.seek(name,bian,smin,smax,nows)
local thum= getVerticalBG({0xffffffff,0xffffffff},0,4,switch颜色)
thum:setSize(30, 40)
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
		background = getVerticalBG({按钮颜色,按钮颜色},15),
		{
			TextView,
			padding={"5dp","10dp","0dp","10dp",},
			gravity = "top",
			textColor="#000000",
			textSize='12sp',
			layout_marginLeft='4dp',
			textColor='#000000',
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
			progressDrawable={ getVerticalBG({switch颜色,switch颜色},45)},
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
		layou_marginTop = "5dp" ,
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
		LinearLayout ,
		layout_width = 'fill_parent' ,
		layout_height = "fill_parent" ,
		
		gravity = "center_vertical" ,
		
		background = getVerticalBG({按钮颜色,按钮颜色},15),
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
	LinearLayout ,
	layout_width = 'match_parent' ,
	layout_height = "wrap_content" ,
	layout_marginTop = "10dp" ,
	gravity = "top" ,
	orientation = "vertical" ,
	background=getVerticalBG({按钮颜色,按钮颜色},15),
	padding={"0dp","14dp","0dp","10dp"},
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
	layout_width = '250dp' ,
	layout_height = "30dp" ,
	layout_marginTop = "5dp" ,
	layout_marginBottom = "15dp" ,
	layout_marginLeft = "4dp" ,
	layout_marginRight = "10dp" ,
	gravity = "center_vertical" ,
	onClick = function ()
	changan.controlWater (_ENV [tid] , 200)
	uiadtext('执行 '..name,"#161616")

	func()
	end

	,
	{
		ImageView ,
		id = luajava.newId (nid) ,
		layout_width = '20dp' ,
		layout_height = "20dp" ,
		layout_marginLeft = "5dp" ,
		layout_marginRight = "0dp" ,
		background =radoff ,
	} , {
		TextView ,
		gravity = "top" ,
		text = name ,
		textSize="13sp",
		textColor = check字体颜色 ,
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
function radin(rid,nid,func)
return function()
for k,v in pairs(radiog[rid]) do
	luajava.getIdValue(k):setBackground(radoff)
	if k==nid and v~=true then
		luajava.getIdValue(k):setBackground(radon)
		v=true
		luajava.newThread(func):start()
	end
end
end
end
function getCard(gonggao)
local tmp = {
	LinearLayout,
	orientation = "vertical",
	padding = "5dp",
	layout_height = "wrap_content",
	layout_width = "match_parent",
	gravity = "center_horizontal"
}
ggtitle = {}
for i = 1,#gonggao do
local txt = string.gsub(gonggao[i],"\n"," ")
if #txt >= 19 then
txt = stringTool.utf8sub(txt,1,17).."..."
else

	end
ggtitle[i] = txt
if i ~= 1 then
tmp[#tmp+1] = {
	LinearLayout,
	layout_height = "1dp",
	layout_width = "170dp",
	background = "#888888",
}
end
tmp[#tmp+1] = {
	LinearLayout,
	gravity = "center_vertical",
	layout_width = "match_parent",
	layout_weight = 1,
	layout_height = "30dp",
	onClick = function() luajava.newThread(function()
			gg.alert(gonggao[i])
		end):start() end,
--padding={"0dp","10dp","0dp","1dp"},
	{
		TextView,
		gravity = "center_vertical",
		layout_width = "match_parent",
		layout_weight = 1,
		layout_height = "wrap_content",
		textSize = "12sp",
		textColor = "#545454",
		text = ggtitle[i],
	},
	{
		TextView,
		gravity = "center_vertical",
		layout_width = "20dp",
		layout_height = "wrap_content",
		textSize = "15sp",
		textColor = "#262626",
		text = ">",
	}
}
end
local card = luajava.loadlayout(
	{
				LinearLayout,---公告

				layout_height = "wrap_content",
				layout_width = "190dp",
				elevation = "20dp",
				orientation = "vertical",

				{
					ImageView,
					layout_marginLeft = "10dp",
					layout_marginTop = "10dp",
					layout_height = "15dp",
					layout_width = "40dp",
					background = getRes("top_gg"),
				},tmp
			})
return card
end
wyyget="http://120.24.160.246:3000/"
function huoqu(txt)
return table.json(gg.makeRequest(wyyget.."song/url/v1?id="..txt.."&level=standard").content)
end
function souyy(txt)
return table.json(gg.makeRequest("http://music.163.com/api/search/get?s="..txt.."&type=1&offset=0&total=true&limit=10").content)
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
function getbg()
return getButtonBG()
end
function searchmusic()
	if not lasttm then
		lasttm = os.time()
	else
		if os.time() - lasttm <= 5 then
			gg.alert("请在" .. (5 - (os.time() - lasttm)) .. "秒冷却后搜索")
			return 0
		end
	end
	if not wryt then
	else
		runnable = luajava.getRunnable(function()
			luajava.getIdView("搜索列表"):removeView(wyr)
		end)
		handler = luajava.getHandler()
		handler:post(runnable)
	end
	mustxt = luajava.getIdView("搜索"):getText()
	if string.len(tostring(mustxt)) <= 2 or tostring(mustxt) == nil then
		gg.alert("至少输入2个字符")
		return 0
	end
	mustxt = tostring(mustxt)
	luajava.runUiThread(function()
		luajava.getIdView("jzz"):setVisibility(View.VISIBLE)
		luajava.getIdView("stxt"):setVisibility(View.GONE)
	end)
	lasttm = os.time()
	mustable = souyy(mustxt)
	mustable = mustable.result.songs

	-- print(mustable)

	musnames = {}
	musids = {}
	musarts = {}
	musictable = {}
	for k, v in pairs(mustable) do
		musictable[#musictable + 1] = v
	end
	-- gg.alert(tostring(mustable))
	-- gg.alert(tostring(musictable))
	-- gg.copyText(tostring(mustable))
	-- gg.alert(#musictable)
	wrfun = {}
	wryt = {
		LinearLayout,
		id = luajava.newId("搜索结果"),
		layout_marginTop = "5dp",
		layout_width = "match_parent",
		layout_marginBottom = "5dp",
		orientation = "vertical"
	}
	for i = 1, #musictable do
		musid = musictable[i].id
		-- print('musid',musid)

		-- musid = musictable[i].album.id
		-- print('musid',musid)

		musids[#musids + 1] = musid
		musname = musictable[i].name
		if tablekIn(musictable[i], "transNames") ~= false then
			musname = musname .. "\n(" .. musictable[i].transNames[0] .. ")"
		end
		musnames[#musnames + 1] = musname
		musart = musictable[i].artists[0].name
		musarts[#musarts + 1] = musart
		wryt[#wryt + 1] = {
			LinearLayout,
			orientation = "vertical",
			layout_marginTop = "2dp",
			layout_marginBottom = "2dp",
			layout_width = "match_parent",
			background = getbg(),
			id = luajava.newId("音" .. musid),
			onClick = function()
				thread = luajava.getThread(function()
					bofang(musname, musid)
				end)
				thread:start()
			end,
			{
				TextView,
				layout_marginTop = "5dp",
				textSize = "13sp",
				textColor = "#0062ff",
				layout_marginBottom = "0dp",
				text = musname,
				layout_hight = "10dp",
				layout_width = "match_parent",
				gravity = "center"

			},
			{
				TextView,
				layout_marginTop = "0dp",
				textColor = "#000000",
				textSize = "11sp",
				layout_marginBottom = "5dp",
				text = musart,
				layout_hight = "10dp",
				layout_width = "match_parent",
				gravity = "center"

			}

		}
		-- gg.sleep(50)
		wryt[#wryt].onClick = function()
			-- (function()
			-- 	bofang(musnames[i] .. musarts[i], musids[i])
			-- end):start()
			luajava.startThread(function()
				bofang(musnames[i] .. musarts[i], musids[i])
			end)
		end
	end
	wyr = luajava.loadlayout(wryt)
	runnable = luajava.getRunnable(function()
		luajava.getIdView("搜索列表"):addView(wyr)
	end)
	handler = luajava.getHandler()
	handler:post(runnable)
	luajava.runUiThread(function()
		luajava.getIdView("jzz"):setVisibility(View.GONE)
		luajava.getIdView("stxt"):setVisibility(View.VISIBLE)
	end)
	-- gg.alert(tostring(wrfun))
end
function bofang(gqmz, gdmn)
	luajava.runUiThread(function()
		luajava.getIdView("搜索结果"):setVisibility(View.GONE)
		luajava.getIdView("加载"):setVisibility(View.VISIBLE)

	end)

	gg.playMusic("http://music.163.com/song/media/outer/url?id="..gdmn..".mp3" or huoqu(gdmn).data[0].url)
	gg.sleep(2000)
	luajava.runUiThread(function()
		luajava.getIdView("加载"):setVisibility(View.GONE)
		luajava.getIdView("搜索结果"):setVisibility(View.VISIBLE)
	end)
end
stxt = {
	TextView,
	text = "搜索",
	textColor="#0062ff",
	background=getbg(),
	layout_height="match_parent",
	visibility = "visible",
	gravity="center",
	layout_marginRight="10dp",
	id = luajava.newId("stxt"),
	layout_marginLeft = "3dp",
	textSize = "13sp",
	padding={"13.5dp","0dp","13.5dp","0dp"},
	onClick = function()
		thread = luajava.getThread(function()
			searchmusic()
		end)
		thread:start()
	end
}
jzz = {
	TextView,
	text = "加载中",
	visibility = "gone",
	id = luajava.newId("jzz"),
	layout_marginLeft = "10dp",
	textSize = "12sp",
	textColor="#000000",
}
jiaz = {
	TextView,
	text = "正在加载歌曲资源",
	visibility = "gone",
	id = luajava.newId("加载"),
	textSize = "15sp",
	gravity = "center",
	textColor="#000000",
}
wyylog = luajava.loadlayout({
	LinearLayout,
	orientation="vertical",
	layout_width = "match_parent",
	{
		ScrollView,
		layout_hight = "match_parent",
		gravity="center_horizontal",
		layout_width = "match_parent",
		{
			LinearLayout,
			layout_width = "match_parent",
			{LinearLayout,
			padding="4dp",
			gravity="center",
			orientation="vertical",
			id=luajava.newId("固定音乐"),
			},
			
			id = luajava.newId("搜索列表"),
			layout_hight = "300dp",
			orientation = "vertical",
			layout_width = "match_parent",
			gravity="center_horizontal",
			
			{
				LinearLayout,
				orientation = "horizontal",
				layout_width = "match_parent",
				
				{
					EditText,
					hint = "搜索歌曲名称",
					textColor="#000000",
					id = luajava.newId("搜索"),
					background = getbg(),
					focusableInTouch = "false",
					focusable = "false",
					textSize='13sp',
					selectAllOnFocus = "true",
					singleLine = "true",
					layout_weight=1,
					gravity="center",
					layout_width = "match_parent"
				},
				stxt,
				jzz
			},
			jiaz
		}
	}
})

luajava.getIdView("搜索"):setHintTextColor(0xff232323)












































gonggao = {
	--[[
	--每次在这里开头添加公告别漏了逗号
	--]]
	
	
	[[[更新日志]2024.2.18
1.xxxxxx

2.xxxxxx

3.xxxxxx

4.xxxxxx

5.xxxxxx
	
	
	]],
	[[[更新日志]2024.1.21 版本3.3更新内容
1.xxxxxx

2.xxxxxx

3.xxxxxx

4.xxxxxx

5.xxxxxx
	]],
	[[[更新日志] 2023.5.25
版本2.1更新内容

1.xxxxxx

2.xxxxxx

3.xxxxxx

4.xxxxxx

5.xxxxxx
	]],
	[[[更新日志] 2023.5.8
版本2.0更新内容

1.xxxxxx

2.xxxxxx

3.xxxxxx

4.xxxxxx

5.xxxxxx
	]],
	[[[更新日志] 2023.5.2
版本1.9更新内容

1.xxxxxx

2.xxxxxx

3.xxxxxx

4.xxxxxx

5.xxxxxx
	]],
	[[[更新日志] 2023.4.21
版本1.8更新内容

1.xxxxxx

2.xxxxxx

3.xxxxxx

4.xxxxxx

5.xxxxxx
	]],
	[[[更新日志] 2023.4.6
版本1.7更新内容

1.xxxxxx

2.xxxxxx

3.xxxxxx

4.xxxxxx

5.xxxxxx

	]],
	[[[更新日志] 2023.3.23
版本1.5更新内容

1.xxxxxx

2.xxxxxx

3.xxxxxx

4.xxxxxx

5.xxxxxx
]],



}

function huiz()
	---绘制区域
	
	
	
end


stitle='长安UI'

q群文字='Q群\n1234567890'

q群号='475650007'

tg文字='TG\n@changanui'

tg链接='http://www.baidu.com'

悬浮窗图标="https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/defaulticon"

stab={
	{"启动","bm_launch"},
	{"防封","safe"},
	{"功能","bm_gn"},
	{"美化","mh"},
	{"音乐","bm_music"},
	{"设置","bm_sz"},
}


changan.menu({
	{	
		
		changan.switch(
			'功能',
			function()
				gg.alert('例子')
			end,
			function()
				
			end),
		changan.check({
				{"悬浮窗2" ,
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
		changan.seek("拉条演示","ltxx",1,20,1),
		--名字，变量名字，最小，最大，初始
		--“ltxx”为此拉条变量名字，使用时每个拉条不可重复
		changan.seek2("小数演示","ltxx2",0.1,2,0.4,0.1),--注意seek2多了一个参数是每次加减大小
				changan.button(
					"调用拉条",
					function()
						gg.alert(ltxx..','..ltxx2)
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
				} ) 
		
		
		
	},{
		
	},{
		
	},{
		
		
		
		
	},{
		wyylog--勿动
	},{
		changan.switch(
			'音量键隐藏UI',
			function()
				音量键=true
			end,
			function()
				音量键=false
			end),
		changan.button(
			"退出",
			function()
				tuichu=1
			end),
		
		
		
	}
})
