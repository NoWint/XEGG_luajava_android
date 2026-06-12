










function particle()
local webView = luajava.webView(function(webView)
	webView:loadData([[<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">

    <title></title>
    <style>
    *{
    /* 初始化 */
    margin: 0;
    padding: 0;
}
body{
    /* 100%窗口高度 */
    height: 100vh;
    /* 溢出隐藏 */
    overflow: hidden;
}
.container{
    /* 绝对定位 */
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    /* 把背景图像扩展至足够大，以使背景图像完全覆盖背景区域 */
    background-size: cover;
    /* 定位背景图像为正中间 */
    background-position-x: center;
    /* 执行动画：动画名称 时长 线性的 无限次播放 */
    animation: animateBg 5s linear infinite;
}
span{
    position: absolute;
    top: 50%;
    left: 50%;
    width: 4px;
    height: 4px;
    background-color: #000;
    border-radius: 50%;
    /* 发光效果 */
    box-shadow: 0 0 0 4px rgba(0,0,0,0.1),
    0 0 0 8px rgba(0,0,0,0.1),
    0 0 20px rgba(0,0,0,1);
    /* 执行动画 */
    animation: animate 3s linear infinite;
}
/* 拖尾效果 */
span::before{
    content: "";
    position: absolute;
    top: 50%;
    transform: translateY(-50%);
    width: 100px;
    height: 3px;
    background: linear-gradient(90deg,#909090,transparent);
}
/* 接下来分别为每一个流星设置位置、动画延迟时间、动画时长 */
span:nth-child(1){
    top: 0;
    right: 0;
    /* initial关键字用于设置CSS属性为它的默认值 */
    left: initial;
    /* 动画延迟时间 */
    animation-delay: 0s;
    /* 动画时长 */
    animation-duration: 1s;
}
span:nth-child(2){
    top: 0;
    right: 80px;
    left: initial;
    animation-delay: 0.2s;
    animation-duration: 3s;
}
span:nth-child(3){
    top: 80px;
    right: 0;
    left: initial;
    animation-delay: 0.4s;
    animation-duration: 2s;
}
span:nth-child(4){
    top: 0;
    right: 180px;
    left: initial;
    animation-delay: 0.6s;
    animation-duration: 1.5s;
}
span:nth-child(5){
    top: 0;
    right: 400px;
    left: initial;
    animation-delay: 0.8s;
    animation-duration: 2.5s;
}
span:nth-child(6){
    top: 0;
    right: 600px;
    left: initial;
    animation-delay: 1s;
    animation-duration: 3s;
}
span:nth-child(7){
    top: 300px;
    right: 0;
    left: initial;
    animation-delay: 1.2s;
    animation-duration: 1.75s;
}
span:nth-child(8){
    top: 0;
    right: 700px;
    left: initial;
    animation-delay: 1.4s;
    animation-duration: 1.25s;
}
span:nth-child(9){
    top: 0;
    right: 1000px;
    left: initial;
    animation-delay: 0.75s;
    animation-duration: 2.25s;
}
span:nth-child(10){
    top: 0;
    right: 450px;
    left: initial;
    animation-delay: 2.75s;
    animation-duration: 2.25s;
}

/* 定义动画 */
/* 背景缩放动画 */
@keyframes animateBg {
    0%,100%{
        transform: scale(1);
    }
    50%{
        transform: scale(1.2);
    }
}
/* 流星划过动画 */
@keyframes animate {
    0%{
        transform: rotate(315deg) translateX(0);
        opacity: 1;
    }
    90%{
        opacity: 1;
    }
    100%{
        transform: rotate(315deg) translateX(-400px);
        opacity: 0;
    }
}
    </style>
</head>

<body>
    <div class="container">
        <!-- 10个span -->
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
    </div>
</body>

</html>]], 'text/html', 'UTF-8')
	webView:setBackgroundColor(0x0)
	end)
return webView
end
parti=particle()
parti:setBackgroundColor(0x0)
function particle(bt)
local webView = luajava.webView(function(webView)
webView:loadData([[
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=10vw,initial-scale=1,maximum-scale=1,user-scalable=no">
<title></title>
<style>
*{
margin: 0;
padding: 0;
}
body{
height: 10vw;
width:88vw;
display: flex;
justify-content: center;
align-items: center;
background-color: #00000000;
}
h1{
color: transparent;
font-size: 15px;
letter-spacing: 5px;
background: linear-gradient(to right,#004eff,#ffffff,#004eff);
-webkit-background-clip: text;
-webkit-text-fill-color: transparent;
background-size: 80%;
background-repeat: repeat;
background-position: center;
animation: move 3s linear infinite;
}
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
<h1>]]..bt..[[</h1>
</body>
</html>]], 'text/html', 'UTF-8')
webView:setBackgroundColor(0x0)
end)
return webView
end




local MediaRecorder = luajava.bindClass("android.media.MediaRecorder")
local AudioSource = luajava.bindClass("android.media.MediaRecorder$AudioSource")
local OutputFormat = luajava.bindClass("android.media.MediaRecorder$OutputFormat")
local AudioEncoder = luajava.bindClass("android.media.MediaRecorder$AudioEncoder")

-- 获取录音管理器实例
local audioManager = context:getSystemService(context.AUDIO_SERVICE)
-- 获取录音源类型常量值
local sourceType = AudioSource.MIC
-- 创建 MediaRecorder 实例

function getTimeStamp(t)
local str = os.date("%Y年%m月%d日%H:%M:%S",t)
return str
end
colorvs={}
Yunzhu = {} huiz = function() end
if tonumber(device.width)==nil then
dwidth=1340
dheight=2300
else
dwidth=device.width
dheight=device.height
end
window = context:getSystemService("window") -- 获取窗口管理器
function panduan(rec) fille,err = io.open(rec) if fille == nil then return false else return true end end
function checkimg(tmp,ii)
if panduan("/sdcard/Yunzhu/图片/"..tmp) ~= true then
gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
luajava.download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..tmp,"/sdcard/Yunzhu/图片/"..tmp)
else
if file.length("/sdcard/Yunzhu/图片/"..tmp) <= 1 then
gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
luajava.download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..tmp,"/sdcard/Yunzhu/图片/"..tmp)
end
end
if panduan("/sdcard/Yunzhu/图片/"..tmp) ~= true then
gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
luajava.download("https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/"..tmp,"/sdcard/Yunzhu/图片/"..tmp)
else
	if file.length("/sdcard/Yunzhu/图片/"..tmp) <= 1 then
gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
luajava.download("https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/"..tmp,"/sdcard/Yunzhu/图片/"..tmp)
end
end
end
ckimg = {
	"opo",
	"heir",
	"opou",
	"hei_right",
	"opoback",
	"heir",
	"heix",
	"heir",
	"quarksun",
	"quarkmoon",
	"lcff","lcsz","lchome","lcsh","lcjs","lclts",
	'sscoR',
	'classes3.dex',
	'star1','star2',
}

for i = 1,#ckimg do
jindu = i
checkimg(ckimg[i],i)
gg.toast("正在加载资源")
end

摇一摇=true
if panduan("/sdcard/Yunzhu/图片/opo1")~=true then
	file.unzip("/sdcard/Yunzhu/图片/opo","/sdcard/Yunzhu/图片/")
end
function 获取图片(txt)
txt = string.url(txt,"de")
ntxt = string.sub(string.gsub(txt,"/","-"),-10,-1)
if string.find(tostring(txt),"http") ~= nil then
if panduan("/sdcard/Yunzhu/图片/"..ntxt) == false then
file.download(txt,"/sdcard/Yunzhu/图片/"..ntxt)
else
	if file.length("/sdcard/Yunzhu/图片/"..ntxt) <= 1 then
file.download(txt,"/sdcard/Yunzhu/图片/"..ntxt)
end
end
txt = "/sdcard/Yunzhu/图片/"..ntxt
end
return luajava.getBitmapDrawable(txt)
end
function getRes(x)
return 获取图片("/sdcard/Yunzhu/图片/"..x)
end


YoYoImpl = luajava.getYoYoImpl()
vibra = context:getSystemService(Context.VIBRATOR_SERVICE)
function getLayoutParams2()
LayoutParams2 = WindowManager.LayoutParams
layoutParams2 = luajava.new(LayoutParams2)
if (Build.VERSION.SDK_INT >= 26) then -- 设置悬浮窗方式
layoutParams2.type = LayoutParams2.TYPE_APPLICATION_OVERLAY
else
	layoutParams2.type = LayoutParams2.TYPE_PHONE
end

layoutParams2.format = PixelFormat.RGBA_8888 -- 设置背景
layoutParams2.flags = LayoutParams2.FLAG_NOT_TOUCH_MODAL -- 焦点设置Finish
layoutParams2.gravity = Gravity.CENTER -- 重力设置
layoutParams2.width = LayoutParams2.MATCH_PARENT -- 布局宽度
layoutParams2.height = LayoutParams2.MATCH_PARENT -- 布局高度

return layoutParams2
end
function topSelect()
local selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, getVerticalBG({0x22161616,0x22161616},30))
selector:addState({
	-android.R.attr.state_pressed
}, empty)
return selector
end
local function newbg(gtvb1,gtvb4,gtvb5,g1,g2,g3,g4)
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


显2=false
function 隐藏2()
显2=true
ckou:setVisibility(View.GONE)
control2:setVisibility(View.GONE)
sf:setVisibility(View.GONE)
smallc:setVisibility(View.VISIBLE)
end
function 显示2()
显2=false
--mainLayoutParams.x=20
--window:updateViewLayout(floatWindow, mainLayoutParams)
sf:setVisibility(View.VISIBLE)
if 显示==1 then
	ckou:setVisibility(View.VISIBLE)
	smallc:setVisibility(View.GONE)
else
	control2:setVisibility(View.VISIBLE)
	smallc:setVisibility(View.GONE)
	隐藏()
end
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
end
mainLayoutParams.y = tonumber(y) + (event:getRawY() - RawY)
window:updateViewLayout(floatWindow, mainLayoutParams)
elseif Action == MotionEvent.ACTION_UP then
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
function getVerticalBG(gtvb1,gtvb3,gtvb4,gtvb5)
if not gtvb4 then gtvb4 = 0 gtvb5 = 0xff000000 end
local jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(gtvb3)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors(gtvb1)
jianbians:setStroke(gtvb4,gtvb5)--边框宽度和颜色
return jianbians
end
import'android.hardware.*';
---@type android.hardware.SensorEventListener
local sensor = luajava.createProxy('android.hardware.SensorEventListener', {
	onSensorChanged = functions.debounce(function()
		if 摇一摇==false then return 0 end
		if qhkai~=0  then
			qhkai=0
			luajava.runUiThread(function()
	floatWindow:setVisibility(View.VISIBLE)
	YoYoImpl:with("FadeIn"):duration(300):playOn(floatWindow)
			end)
			else
			qhkai=1
luajava.newThread(function()
luajava.runUiThread(function()
	YoYoImpl:with("FadeOut"):duration(300):playOn(floatWindow)
	end)
gg.sleep(400)
luajava.runUiThread(function()
	floatWindow:setVisibility(View.GONE)
end)
draw.remove()
gg.toast("HIDE")
end):start()
			
		end
	end,500)
})


dexloader=dex.loadfile('/sdcard/Yunzhu/图片/classes3.dex')
MySensorManager = dexloader:loadClass('yaocn.rlyun.yaoyiyao.MySensorManager')


luajava.runOnUiThread(function()
	MySensorManager(context, sensor)
end)
mainLayoutParams = getLayoutParams()

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
--AudioManager.STREAM_BLUETOOTH_SCO,
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

gg.setVisible(false)
function guid()
seed = {
	'e','1','2','3','4','5','6','7','8','9','a','b','c','d','e','f'
}
tb = {}
for i = 1,32 do
table.insert(tb,seed[math.random(1,16)])
end
sid = table.concat(tb)
return string.format('%s%s%s',
	string.sub(sid,1,8),
	string.sub(sid,10,12),
	string.sub(sid,21,22))
end

local ui = require('ui')


Yunzhu.menu = function(views)
if isswitch then
return false
end
jms={
	"lchome",
	"lcff",
	"lcsh",
	"lcjs",
	"lclts",
	"lcsz"
}
isswitch = true
local layout = {
		'ui.ViewPager',
		layout_height='match_parent',
		layout_width='match_parent',
		focusable="false",
		focusableInTouchMode="false",
	}
	cebian={
		LinearLayout,
		layout_height="40dp",
		layout_width="wrap_content",
		orientation="horizontal",
		gravity="center_horizontal",
		}
	for i=1,#stab do
		_ENV["jm"..i]=luajava.loadlayout({
			LinearLayout,
			layout_height="40dp",
			layout_width="wrap_content",
			gravity="center",
			orientation="vertical",
			padding={"3dp","0dp","3dp","0dp"},
			onClick=function() 切换(i) end,
			--onTouch=hanshu,
			{ImageView,
			id="jm"..i.."p",
			src=getRes(jms[i]),
			layout_height="16dp",
			layout_width="16dp",
			},
			{TextView,
			id="jm"..i.."t",
			text=stab[i],
			textSize="10sp",
			textColor="#aad7d7d7",
			}
		})
		cebian[#cebian+1]=_ENV["jm"..i]
		tmp={
			LinearLayout,
			layout_height="wrap_content",
			layout_width="match_parent",
			orientation="vertical",
			
		}
		for k=1,#views[i] do
			
			tmp[#tmp+1]=views[i][k]
		end
		_ENV["layout"..i]={
			ScrollView,
			--orientation="vertical",
			layout_height="match_parent",
			layout_width="match_parent",
			tmp,
			--onTouch=Gundong,
			padding={"8dp","3dp","8dp","3dp"},
		}
		
	end
	function Yunzhu.setedit2(name,txt)
txt = tostring(txt)
luajava.runUiThread(function()
	luajava.getIdValue(name):setText(txt)
	end)
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
function getpic(txt)
if isUrlSafe(txt) then
else
	return empty
end
txt = string.url(txt,"de")
ntxt = string.sub(string.gsub(txt,"/","-"),-10,-1)
if string.find(tostring(txt),"http") ~= nil then
if panduan("/sdcard/Yunzhu/图片/"..ntxt) == false then
file.download(txt,"/sdcard/Yunzhu/图片/"..ntxt)
else
	if file.length("/sdcard/Yunzhu/图片/"..ntxt) <= 1 then
file.download(txt,"/sdcard/Yunzhu/图片/"..ntxt)
end
end
txt = "/sdcard/Yunzhu/图片/"..ntxt
end

return luajava.getBitmapDrawable(txt)
end
function Yunzhu.getedit2(name)
--gg.alert(edit)
edit = tostring(luajava.getIdValue(name):getText())
return edit
end
	_ENV["layout"..#stab-1]= 
	{LinearLayout,
		layout_width = "match_parent",
		layout_height = "match_parent",
		orientation = "vertical",
		{ScrollView,
		
		id = "ltslays4",
		layout_width = "match_parent",
		layout_height = "match_parent",
		layout_weight=1,
		orientation = "vertical",
			{
			LinearLayout,
			id = "ltslaym4",
			gravity = "top",
			layout_width = 'match_parent',
			padding="10dp",
			orientation = "vertical",
			gravity = "center_horizontal",
			}
		},
		{LinearLayout,
			layout_height="20dp",
			layout_width="match_parent",
			layout_marginTop="18dp",
			padding={"8dp","0dp","8dp","0dp"},
			gravity="center",
				{TextView,
				background=getVerticalBG({0xdd161616,0xdd161616},10,2,0xffd7d7d7),
			gravity="center",
			text="长按录音",
			id="recordtext",
			textSize="13sp",
				layout_height="20dp",
				layout_width="80dp",
				
			onTouch = function(view, event)
		        if event:getAction() == MotionEvent.ACTION_DOWN then
		            -- 按下时执行的函数
		            recordtext:setText("正在录音")
		            luajava.newThread(function()
		            vibra:vibrate(30)
		            recorder = MediaRecorder()
-- 设置录音源、输出格式和编码器
					recorder:setAudioSource(sourceType)
					recorder:setOutputFormat(OutputFormat.THREE_GPP)
					recorder:setAudioEncoder(AudioEncoder.AMR_NB)
					-- 设置录音文件存储路径
					savePath = "/sdcard/Yunzhu/test.mp3"
					recorder:setOutputFile(savePath)
		            recorder:prepare()
					recorder:start()
					redstart=os.time()
		            end):start()
		        elseif event:getAction() == MotionEvent.ACTION_UP then
		            -- 松开时执行的函数
		            
		            --
		        end
			end,
			onClick=function()
					recordtext:setText("长按录音")
					luajava.newThread(function()
					vibra:vibrate(50)
		            
		            -- 停止录音
					recorder:stop()
					-- 释放资源
					recorder:release()
					if os.time()-redstart<1 then
						gg.alert("时间太短\n最少要录制1秒")
						return 0
					end
					if os.time()-redstart>40 then
						gg.alert("时间太长\n一条最多录制40秒")
						return 0
					end
					uprec(savePath)
					gg.toast("发送成功")
		            end):start()
			end,
				}
				,{EditText,
				id=luajava.newId("聊天框"),
				background="#ddffffff",
				textSize="13sp",
				inputType="textMultiLine",
				textColor="#000000",
				layout_marginLeft="3dp",
				layout_height="40dp",
				layout_weight=1,
				layout_width="match_parent",
				},
			{TextView,
				background=getVerticalBG({0xdd161616,0xdd161616},10,2,0xffd7d7d7),
			gravity="center",
			text="发送",
			textSize="13sp",
				layout_marginLeft="3dp",
				layout_height="20dp",
				layout_width="40dp",
				onClick=function() luajava.newThread(function() 发送聊天(Yunzhu.getedit2("聊天框")) end):start() end
				},
		}}
	for i=1,#stab do
		layout[#layout + 1] =_ENV["layout"..i]
	end
	tpbbg=getVerticalBG({控件颜色,控件颜色},20)
	当前ui=1
	jm1t:setTextColor(控件颜色)
	jm1p:setColorFilter(控件颜色)
	for i=2,#stab do
			_ENV["jm"..i .."t"]:setTextColor(extco[深色模式])
			_ENV["jm"..i .."p"]:setColorFilter(extco[深色模式])
		end
	ViewPager = ui.ViewPager(layout)
	luajava.setInterface(ViewPager, 'addOnPageChangeListener', 
		{onPageSelected=function(view)
		view=tonumber(string.sub(view,1,1))
		for i=1,#stab do
			_ENV["jm"..i .."t"]:setTextColor(extco[深色模式])
			_ENV["jm"..i .."p"]:setColorFilter(extco[深色模式])
		end
		当前ui=view+1
		--滚(当前ui)
		_ENV["jm"..view+1 .."t"]:setTextColor(控件颜色)
		_ENV["jm"..view+1 .."p"]:setColorFilter(控件颜色)
		
		end})
		
quarkmoon=getRes("quarkmoon")
quarksun=getRes("quarksun")
lxytp1=获取图片('/sdcard/Yunzhu/图片/star1')
lxytp2=获取图片('/sdcard/Yunzhu/图片/star2')
	ckou={
		LinearLayout,
		id=luajava.newId("ckb"),
		layout_height="wrap_content",
		layout_width="wrap_content",
		orientation="vertical",
		background=forchange(
			"ckb",
			newbg2(0xff333132,45),
			newbg2(0xffF2F3F5,45)),
		{
		LinearLayout,
		layout_width="match_parent",
		layout_height="35dp",
		background=getCorner({0xffffffff,0xffffffff},15,0,0xff232323,45,45,0,0),
			{LinearLayout,
				layout_width="35dp",
				layout_height="match_parent",
				gravity="center",
				{LinearLayout,
					gravity="center",
					background=getVerticalBG({0xffE6E6E6,0xffE6E6E6},90),
					layout_width = "20dp",
					layout_height = "20dp",
					layout_marginLeft = "5dp",
					onClick = 隐藏,
					onTouch = hanshu,
					{LinearLayout,
						layout_height="2dp",
						layout_width="10dp",
						background=getVerticalBG({0xff2c2c2c,0xff2c2c2c},45),
					}
				}
			},
			{LinearLayout,
		layout_width="35dp",
		layout_height="match_parent",
		gravity="center",
		{
				ImageView,
				id=luajava.newId("liuxingyu1"),
				padding = "5dp",
				src = lxytp1,
				background=getVerticalBG({0xffE6E6E6,0xffE6E6E6},90),
				layout_width = "20dp",
				layout_height = "20dp",
				layout_marginRight = "5dp",
				onClick = kglxy,--流星雨开关
				onTouch = hanshu,
			}
		},	
	
		{LinearLayout,
			layout_width="fill_parent",
			layout_weight=1,
			layout_height="match_parent",
			gravity="center",
			{LinearLayout,
				layout_height="match_parent",
				layout_width="80dp",
				background=topSelect(),
				onClick=function() end,
				gravity="center",
				onTouch=hanshu,
				{LinearLayout,
					id=luajava.newId("topb1"),
					layout_height="5dp",
					layout_width="60dp",
					background=tpbbg
				}
			}
		},
		{LinearLayout,
		layout_width="35dp",
		layout_height="match_parent",
		gravity="center",
		{
				ImageView,
				id=luajava.newId("qmoon1"),
				padding = "5dp",
				src = quarkmoon,
				background=getVerticalBG({0xffE6E6E6,0xffE6E6E6},90),
				layout_width = "20dp",
				layout_height = "20dp",
				layout_marginRight = "5dp",
				onClick = changeM,
				onTouch = hanshu,
			}
		},
		{LinearLayout,
		layout_width="35dp",
		layout_height="match_parent",
		gravity="center",
		{
				ImageView,
				padding = "5dp",
				src = getRes("heix"),
				background=getVerticalBG({0xffE6E6E6,0xffE6E6E6},90),
				layout_width = "20dp",
				layout_height = "20dp",
				layout_marginRight = "5dp",
				onClick = 隐藏,
				onTouch = hanshu,
			}
		}
	},
		{LinearLayout,
			id=luajava.newId("cbscro"),
			background=forchange(
			"cbscro",
			getVerticalBG({0xff161616,0xff161616},0),
			getVerticalBG({0xffffffff,0xffffffff},0)),
			layout_width="match_parent",
		cebian,{LinearLayout,
				layout_width="match_parent",
				layout_height="match_parent",
				layout_weight=1,
				id="web_",
				padding={"20dp","0dp","0dp","0dp"},
				gravity="center"
			}},
		{FrameLayout,
		layout_height='match_parent',
		layout_width='match_parent',
		--visibility='gone',
		id="parentv",{LinearLayout,
			layout_width='match_parent',
			layout_height='match_parent',
			id='webv_',
			},ViewPager},
	}


ckou = {
	LinearLayout,
	id = "chuangk",
	visibility = "gone",
	layout_width = "wrap_content",
	layout_height = "wrap_content",
	orientation = "vertical",
	ckou

}
beij=newbg2(0xffffffff,45)
ckou = luajava.loadlayout(ckou)
extralis={LinearLayout,
	layout_height="match_parent",
	layout_width="match_parent",
	id=luajava.newId("extralist"),
	orientation="vertical",
	}
for k,v in pairs(ewsv) do
	extralis[#extralis+1]=ewsv[k]
end
	
extratopb={
		LinearLayout,
		layout_width="match_parent",
		layout_height="35dp",
		background=getCorner({0xffffffff,0xffffffff},15,0,0xff232323,45,45,0,0),
			{LinearLayout,
				layout_width="35dp",
				layout_height="match_parent",
				gravity="center",
				{LinearLayout,
					gravity="center",
					background=getVerticalBG({0xffE6E6E6,0xffE6E6E6},90),
					layout_width = "20dp",
					layout_height = "20dp",
					layout_marginLeft = "5dp",
					onClick = 隐藏,
					onTouch = hanshu,
					{LinearLayout,
						layout_height="2dp",
						layout_width="10dp",
						background=getVerticalBG({0xff2c2c2c,0xff2c2c2c},45),
					}
				}
			},
				{LinearLayout,
		layout_width="35dp",
		layout_height="match_parent",
		gravity="center",
		{
				ImageView,
				id=luajava.newId("liuxingyu2"),
				padding = "5dp",
				src = lxytp2,
				background=getVerticalBG({0xffE6E6E6,0xffE6E6E6},90),
				layout_width = "20dp",
				layout_height = "20dp",
				layout_marginRight = "5dp",
				onClick = kglxy,--流星雨开关
				onTouch = hanshu,
			}
		},	
		
		{LinearLayout,
			layout_width="fill_parent",
			layout_weight=1,
			layout_height="match_parent",
			gravity="center",
			{LinearLayout,
				layout_height="match_parent",
				layout_width="80dp",
				background=topSelect(),
				onClick=function() end,
				gravity="center",
				onTouch=hanshu,
				{LinearLayout,
					id=luajava.newId("topb2"),
					layout_height="5dp",
					layout_width="60dp",
					background=tpbbg
				}
			}
		},
		
		{LinearLayout,
		layout_width="35dp",
		layout_height="match_parent",
		gravity="center",
		{
				ImageView,
				id=luajava.newId("qmoon2"),
				padding = "5dp",
				src = quarkmoon,
				background=getVerticalBG({0xffE6E6E6,0xffE6E6E6},90),
				layout_width = "20dp",
				layout_height = "20dp",
				layout_marginRight = "5dp",
				onClick = changeM,
				onTouch = hanshu,
			}
		},
		{LinearLayout,
		layout_width="35dp",
		layout_height="match_parent",
		gravity="center",
		{
				ImageView,
				padding = "5dp",
				src = getRes("heix"),
				background=getVerticalBG({0xffE6E6E6,0xffE6E6E6},90),
				layout_width = "20dp",
				layout_height = "20dp",
				layout_marginRight = "5dp",
				onClick = 隐藏,
				onTouch = hanshu,
			}
		},
			
		
	}

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

	{LinearLayout,
	visibility="gone",
	id=luajava.newId("extra"),
	layout_height = "match_parent",
	layout_width='match_parent',
	orientation="vertical",
	background=forchange(
			"extra",
			getVerticalBG({0xff333132,0xff333132},45),
			getVerticalBG({0xffF2F3F5,0xffF2F3F5},45)),
		extratopb,
		{LinearLayout,
			layout_width="match_parent",
			layout_height="40dp",
			id=luajava.newId("exttop"),
			background=forchange(
			"exttop",
			getVerticalBG({0xff161616,0xff161616},0),
			getVerticalBG({0xffffffff,0xffffffff},0)),
			onClick=function() end,
			onTouch=hanshu,
			gravity="center_vertical",
			{ImageView,
				id=luajava.newId("backv"),
				layout_height="24dp",
				layout_width="24dp",
				src=getRes("opoback"),
				background=forchange(
			"backv",
			getVerticalBG({0x00ffffff,0x00ffffff},360,10,0xffffffff),
			getVerticalBG({0x00ffffff,0x00ffffff},360,10,0xff161616)),
				padding="8dp",
				onClick=关闭窗口,
				layout_marginLeft="10dp",
			},
			{TextView,
				id=luajava.newId("extrat"),
				text="标题",
				layout_height="match_parent",
				layout_width="match_parent",
				layout_weight=1,
				gravity="center",
			}
		},
	{ScrollView,
	padding="8dp",
	layout_height="match_parent",
	layout_width="match_parent",
	extralis
	}
	},
	
	{
		ImageView,
		id = "control2",
		background = 获取图片(悬浮窗图标),
		layout_width = "40dp",
		layout_height = "40dp",
		onTouch = hanshu,
		onClick = 隐藏,
	},{LinearLayout,
	id="smallc",
	visibility="gone",
	onClick=显示2,
	onTouch=hanshu,
	layout_height="56dp",
	layout_width="20dp",
	gravity="center",
	background=getCorner({0x88161616,0x88161616},12,0,0xff232323,0,35,35,0),
		
	},{
			ImageView,
			id="sf",
			padding = "2dp",
			src = getRes("sscoR"),
			layout_width = "30dp",
			layout_height = "30dp",
			layout_marginRight = "0dp",
			layout_marginBottom = "0dp",
			layout_gravity = "right|bottom",
			onClick = function() end,
			onTouch = suofang,
		}
}
local function invoke()
local ok
local RawX, RawY, x, y
mainLayoutParams = getLayoutParams()
mainLayoutParams.x = 10
mainLayoutParams.y = dheight/4
mainLayoutParams.height = mubx
		mainLayoutParams.width = muby
floatWindow = luajava.loadlayout(floatWindow)
local function invoke2()
window:addView(floatWindow, mainLayoutParams)
webv_:addView(parti)
web_:addView(particle(右上角标题))
end


local runnable = luajava.getRunnable(invoke2)
local handler = luajava.getHandler()
handler:post(runnable)

local isMove


end
invoke(swib1,swib2)


gg.setVisible(false)
luajava.getIdView("backv"):setColorFilter(控件颜色)
隐藏()

luajava.newThread(function()--更新逻辑

	while true do
		gg.sleep(1000)
							
		if already==true and hdw~=true then
			pcall(shuaxinchat())
		end
	end
end):start()

pcall(shuaxinchat())
if loadingBox~=nil then loadingBox['关闭']() end
setOnExitListener(function()
	luajava.post(function()
	window:removeView(floatWindow)
	end)
	tuichu=1
	luajava.setFloatingWindowHide(false)
end)
luajava.setFloatingWindowHide(true)
qhkai = 0
qiehuan = function()
if qhkai == 0 then
qhkai = 1
draw.remove()
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
luajava.runUiThread(function() floatWindow:setVisibility(View.VISIBLE) end)
luajava.runUiThread(function()
	Yunzhu.controlBig(floatWindow,400)
	end)

end
end
log_init()
huiz()
if ylfunc~=nil then ylfunc() end
if yyfunc~=nil then yyfunc() end
while true do
if tuichu == 1 then break end
if 音量键 then
jianting3(qiehuan)
gg.sleep(300)
end
end
luajava.setFloatingWindowHide(false)
end

suofang = function(v, event)
if isLocked then hanshu(v,event) return 0 end
local Action = event:getAction()

if Action == MotionEvent.ACTION_DOWN then
isMove = false
RawX = event:getRawX()
RawY = event:getRawY()
hx = mainLayoutParams.height
hy = mainLayoutParams.width
if hx == 0 or hx==-2 then hx = 810 hy = 1150 end
elseif Action == MotionEvent.ACTION_MOVE then
isMove = true
mubx = tonumber(hx) + (event:getRawY() - RawY)
if mubx >= 250 and mubx <= 11100 then
mainLayoutParams.height = mubx
end
muby = tonumber(hy) + (event:getRawX() - RawX)
if muby >= 250 and muby <= 24500 then
mainLayoutParams.width = muby
end
if muby<=250 and mubx<=250 then muby=250 mubx=250
--隐藏()
return 0 end
window:updateViewLayout(floatWindow, mainLayoutParams)
end
end
function log_init()
if type(ret) ~= "table" then
if vv ~= nil then return 0 end
luajava.newThread(function()
	draw.remove()
end):start()
tmp = {
	LinearLayout,orientation = "vertical",gravity = "center_horizontal",
}
隐藏状态 = 0
隐藏长度 = "70dp"
隐藏长度1 = '0dp'
隐藏状态1 = 8

if panduan("/sdcard/Yunzhu/配置文件/MGkami.lua") ~= false then
dofile("/sdcard/Yunzhu/配置文件/MGkami.lua")
隐藏状态 = 8
隐藏长度 = "0dp"
隐藏长度1 = '20dp'
隐藏状态1 = 0
logkapian = {
	LinearLayout,
	orientation = "vertical",
	gravity = "center",
	layout_height = "50dp",
	layout_width = "160dp",
	
	background =  luajava.loadlayout {
					GradientDrawable,
					color = "#ffffff",
					cornerRadius = 20
				},
	elevation = "4dp",
	layout_marginTop='4dp',
	layout_marginBottom='4dp',
	layout_marginLeft='4dp',
	layout_marginRight='4dp',
	onClick = function()
	--aw.controlFlip(logkapian,2000)
	luajava.newThread(function() logkap = true login(kam) end):start() end,
	{
		TextView,
		gravity = "center",
		textSize = "18sp",
		textColor = "#000000",
		text = string.sub(kam,1,3).."********"..string.sub(kam,-3,-1)
	},{
		TextView,
		gravity = "center",
		textSize = "11sp",
		textColor = "#4E98FF",
		text = "快捷登录"
	}
}
tmp[#tmp+1] = logkapian
tmp[#tmp+1] = {
	LinearLayout,
	layout_height = "10dp",
}
end
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(30)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({
	0xff6B00EC,0xff006AFF,0xff0090FF,0xff6B00EC

})
jianbians:setOrientation(GradientDrawable.Orientation.TL_BR)
--jianbians:setStroke(0,0x55000000)--边框宽度和颜色
luajava.post(function()
	vv = luajava.loadlayout(
	
	{	
		LinearLayout,
		orientation = "vertical",
		visibility = "gone",
		background = getVerticalBG({
			0xaa000000,0xaa000000
		},25),
		layout_width = "match_parent",
		layout_height = "match_parent",
		gravity = "center",
		onTouch=hanshu,
		onClick = function() end,
		tmp,

				
		{		
			LinearLayout,
			orientation = "vertical",
			gravity='center_horizontal',
			layout_width='match_parent',

				{
				LinearLayout,
				layout_height = "60dp",
				{

					EditText,
					id = luajava.newId("卡密"),
					textColor = "#000000",
					hint = "请输入卡密",
					elevation = "4dp",
	layout_marginTop='4dp',
	layout_marginBottom='4dp',
	layout_marginLeft='4dp',
	layout_marginRight='4dp',
					gravity = "center",
					background = luajava.loadlayout {
						GradientDrawable,
						color = "#ffffffff",
						cornerRadius = 20
					},
					layout_height = "50dp",
					layout_width = "160dp",
					layout_marginBottom = "20dp",
				}}, {
				TextView,
				background = getVerticalBG({0xff0072ff,0xff0072ff},20),
				text = "登录",
				textColor = "#ffffff",
				textSize = "16sp",
				gravity = "center",
				elevation = "0dp",
				layout_height = "30dp",
				layout_width = "160dp",
				onClick = function() luajava.newThread(function() login(Yunzhu.getedit("卡密")) end):start() end,
			},{
				TextView,
				background = luajava.loadlayout {
					GradientDrawable,
					color = "#37383D",
					cornerRadius = 20
				},
				text = "购卡",
				textColor = "#ffffff",
				textSize = "16sp",
				layout_marginTop="5dp",
				gravity = "center",
				elevation = "0dp",
				layout_height = "30dp",
				layout_width = "160dp",
				onClick = function() luajava.newThread(function()
					gg.intent(卡网) 隐藏()
				end):start() end,
			},{
				TextView,
				background = luajava.loadlayout {
					GradientDrawable,
					color = "#37383D",
					cornerRadius = 20
				},
				text = "获取",
				textColor = "#ffffff",
				textSize = "16sp",
				layout_marginTop="5dp",
				gravity = "center",
				elevation = "0dp",
				layout_height = "30dp",
				layout_width = "160dp",
				onClick = function() luajava.newThread(function()
					hqkami()
				end):start() end,
			},{
				TextView,
				background = luajava.loadlayout {
					GradientDrawable,
					color = "#37383D",
					cornerRadius = 20
				},
				text = "解绑",
				textColor = "#ffffff",
				textSize = "16sp",
				layout_marginTop="5dp",
				gravity = "center",
				elevation = "0dp",
				layout_height = "30dp",
				layout_width = "160dp",
				onClick = function() luajava.newThread(function()
					local t=Yunzhu.getedit("卡密")
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
				textSize = "16sp",
				layout_marginTop="5dp",
				gravity = "center",
				elevation = "0dp",
				layout_height = "30dp",
				layout_width = "160dp",
				onClick = function() tuichu=1 end,
			}}
	})
	addadView(vv)
	luajava.getIdValue("卡密"):setHintTextColor(0xffA2A2A2)
	luajava.runUiThread(function()
		parentv:setVisibility(View.VISIBLE)
		vv:setVisibility(View.VISIBLE)
	end)
	--huiz()
end)
else
	--luajava.newThread(function() xiugtx() end):start()
end
end
_ENV['卡密']='卡密'
function login(kam)
local loadBox = getLoadingBox('正在校验卡密')
if tostring(kam)=="" or tostring(kam)==" " then return 0 end
loadBox['显示']()
ret = rlyunyz.login(kam)
loadBox['关闭']()

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
ktmp = "kam='"..ret.kami.."'"
luajava.newThread(function()
	file.write("/sdcard/Yunzhu/配置文件/MGkami.lua",ktmp)
end):start()
end
--if logkap then gg.sleep(100) end

function hqkami()
local rlyunyz = getrlyunyz(info)
rlyunyz.setAutoLogin(true)
local ret = rlyunyz.start()
local km = ret.kami
if km == nil then
gg.alert('获取失败：未记录')
else
gg.alert('获取成功：'..km)
gg.copyText(km)
end
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
changers={}
function forchange(a,b,c,d,e,f,g)
if not d then
changers[a]={b,c}
else
	changers[a]={b,c,d,e,f,g}
end
return b
end
深色模式=1
extco={
	0xffffffff,
	0xff161616
}
function changeM()
luajava.runUiThread(function()
if 深色模式==1 then
	深色模式=2
	luajava.getIdView("qmoon1"):setImageDrawable(quarksun)
	luajava.getIdView("qmoon2"):setImageDrawable(quarksun)
	
	else
	深色模式=1
	luajava.getIdView("qmoon1"):setImageDrawable(quarkmoon)
	luajava.getIdView("qmoon2"):setImageDrawable(quarkmoon)
	
	end

for i=1,#stab do
if 当前ui==i then
_ENV["jm"..i.."t"]:setTextColor(控件颜色)
_ENV["jm"..i.."p"]:setColorFilter(控件颜色)
else
_ENV["jm"..i.."t"]:setTextColor(extco[深色模式])
_ENV["jm"..i.."p"]:setColorFilter(extco[深色模式])
end
end
luajava.getIdView("extrat"):setTextColor(extco[深色模式])
for k,v in pairs(changers) do
	--print(k,v[深色模式])
	if v[3]==nil then
	luajava.getIdView(k):setBackground(v[深色模式])
	else
		if v[3]=="button" then
			luajava.getIdView(v[4]):setTextColor(v[深色模式+4])
			luajava.getIdView(k):setBackground(v[深色模式])
		elseif v[3]=="switch" then
			luajava.getIdView(v[4]):setTextColor(v[深色模式+4])
			luajava.getIdView(k):setBackground(v[深色模式])
		end
	end
end
end)
end
function 滚(x)
luajava.runUiThread(function()
local cbsc=luajava.getIdView("cbscro")
local targetLeft = _ENV["jm"..x]:getLeft()/2

cbsc:smoothScrollTo(targetLeft, 0);
end)
end
function 切换(x)
窗口=false
luajava.runUiThread(function()
	当前ui=x
	ViewPager:setCurrentItem(x-1)
end)
end
显示=0
function 隐藏()
	if not already then already=true end

if 显2==true then return 0 end
luajava.runUiThread(function()
	if 显示 == 0 then
	control2:setVisibility(View.GONE)
	显示 = 1
	if 窗口 then
	luajava.getIdView("extra"):setVisibility(View.VISIBLE)
	else
	ckou:setVisibility(View.VISIBLE)
	end
	sf:setVisibility(View.VISIBLE)
	floatWindow:setBackground(beij)
	mainLayoutParams.height = mubx
		mainLayoutParams.width = muby
	mainLayoutParams.flags = LayoutParams.FLAG_NOT_TOUCH_MODAL
	window : updateViewLayout (floatWindow , mainLayoutParams)
	YoYoImpl:with("FadeIn"):duration(300):playOn(floatWindow)
	else
	sf:setVisibility(View.GONE)
	if tuichuing then return 0 end
	tuichuing=true
	luajava.newThread(function()
	luajava.runUiThread(function()
		YoYoImpl:with("FadeOut"):duration(200):playOn(floatWindow)
		end)
	gg.sleep(200)
	luajava.runUiThread(function()
	ckou:setVisibility(View.GONE)
	floatWindow:setBackground(beij2)
	YoYoImpl:with("FadeIn"):duration(200):playOn(floatWindow)
	luajava.getIdView("extra"):setVisibility(View.GONE)
	
	control2:setVisibility(View.VISIBLE) 显示 = 0
	mainLayoutParams.flags = LayoutParams.FLAG_NOT_FOCUSABLE
	mainLayoutParams.width = LayoutParams.WRAP_CONTENT -- 布局宽度
	mainLayoutParams.height = LayoutParams.WRAP_CONTENT -- 布局高度
	window : updateViewLayout (floatWindow , mainLayoutParams)
	if mainLayoutParams.x==0 then 隐藏2() end
	end)
	tuichuing=false
	end):start()
end
	end)
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
function 打开窗口(x)
if ewsv[x]==nil then
	gg.alert("没有窗口“"..x.."”\n请检查是否写错了名字或者没创建")
	return 0
end
luajava.runUiThread(function()
	窗口=true
	ckou:setVisibility(View.GONE)
	luajava.getIdView("extra"):setVisibility(View.VISIBLE)
	for k,v in pairs(ewsv) do
		
		if k~=x then v:setVisibility(View.GONE) end
	end
	luajava.getIdView("extrat"):setText(x)
	ewsv[x]:setVisibility(View.VISIBLE)
end)
end
function 关闭窗口()
luajava.runUiThread(function()
	luajava.getIdView("extra"):setVisibility(View.GONE)
	ckou:setVisibility(View.VISIBLE)
	窗口=false
	end)
	vibra:vibrate(10)
end
ewsv={}
function 创建窗口(name,v)
if type(v)~="table" then gg.alert("窗口"..name.."格式错误") end
local t={
	LinearLayout,
	orientation="vertical",
	visibility="gone",
	layout_width="match_parent",
}
	for i=1,#v do
		t[#t+1]=v[i]
	end
	ewsv[name]=luajava.loadlayout(t)
	
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
colorvs[nid]={true,"switch"}
pcall(func1)
else
	vibra:vibrate(9)
luajava.runUiThread(function()
	luajava.getIdValue(nid.."g"):setVisibility(View.GONE)
	YoYoImpl:with("ZoomInRight"):duration(600):playOn(switches["1s"..sname])
	luajava.getIdValue(nid.."k"):setVisibility(View.VISIBLE)
luajava.getIdValue(nid):setBackground(checkbga)
end)
colorvs[nid]={false,"switch"}
_ENV[name] = "关"
pcall(func2)
end
end
if localname=="摇一摇隐藏UI" then yyfunc=outfunc end
if localname=="音量键隐藏UI" then ylfunc=outfunc end
return outfunc
end
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

function Yunzhu.switch(name,func1,func2,miaoshu)
if not checkbg then
	checkbg = getShape2(
	45,
	{
		控件颜色,控件颜色
	},
	4,控件颜色)
checkbga = getShape2(
	45,
	{
		0xffaaaaaa,0xffaaaaaa
	},
	4,0xffaaaaaa)
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
kid=guid().."switch"
rest = luajava.loadlayout({
	LinearLayout,
	elevation = "5dp",
	layout_width = 'fill_parent',
	layout_height = "48dp",
	gravity = "center_vertical",
	{
		LinearLayout,
		id=luajava.newId(kid),
		layout_width = 'fill_parent',
		layout_height = "40dp",
		layout_marginLeft="3dp",
		layout_marginRight="3dp",
		layout_marginTop="3dp",
		layout_marginBottom="3dp",
		gravity = "center_vertical",
		elevation="3dp",
		background = forchange(
			kid,
			newbg2(0xff161616,35),
			newbg2(0xffffffff,35),
			"switch",
			kid.."sw",
			0xffffffff,
			0xff000000),
		padding = {
		"0dp","0dp","6dp","0dp"
	},
		{
			TextView,
			id=luajava.newId(kid.."sw"),
			gravity = "top",
			text = name,
			textColor = "#d7d7d7",
			textSize = "13sp",
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
spics={
}
for i=1,55 do
	spics[i]="opo"..i
end
switchs={}
tcheck=10
function Yunzhu.intcheck(name,func1,func2,ii,gid,pic)
if pic~=nil then
	tocheck=获取图片(pic)
else
if tcheck==56 then
	tcheck=1
else
	tcheck=tcheck+1
end
tocheck=getRes(spics[tcheck])
end
local func = 开关5(name,func1,func2,gid..ii)
if not name then name = "未设置" end
if pic~=nil then
switchs[gid..ii] = luajava.loadlayout{
	LinearLayout,
	id = luajava.newId(gid..ii),
	layout_width = ( (tonumber(string.replace(界面宽度,"dp","")) -16)/3).."dp",
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
		gravity = "center_horizontal",
		orientation="vertical",
		--background=getVerticalBG({0xffFFFDF2,0xddffffff,0xffFFFDF2},15,8,0xffFFDA71),
		{
			ImageView,
			id = luajava.newId(gid..ii.."p"),
			background=tocheck,
			gravity="center",
			layout_width = '30dp',
			layout_height = '30dp',
			padding = "8dp",
		},{
			TextView,
			id=luajava.newId(gid..ii.."t"),
			gravity = "center",
			text = name,
			textColor="#d7d7d7",
			textSize = "9sp",
--layout_marginLeft="8dp",
			layout_width = 'match_parent',
	layout_weight=1,
		},
		}
}
colorvs[gid..ii.."p"]={false,"img"}
colorvs[gid..ii.."t"]={gid..ii.."t",false,"txt"}

else
switchs[gid..ii] = luajava.loadlayout{
	LinearLayout,
	id = luajava.newId(gid..ii),
	layout_width = ( (tonumber(string.replace(界面宽度,"dp","")) -16)/3).."dp",
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
		gravity = "center_horizontal",
		orientation="vertical",
		--background=getVerticalBG({0xffFFFDF2,0xddffffff,0xffFFFDF2},15,8,0xffFFDA71),
		{
			ImageView,
			id = luajava.newId(gid..ii.."p"),
			src = tocheck,
			background=ckbg,
			gravity="center",
			layout_width = '30dp',
			layout_height = '30dp',
			padding = "8dp",
		},{
			TextView,
			id=luajava.newId(gid..ii.."t"),
			gravity = "center",
			text = name,
			textColor="#d7d7d7",
			textSize = "9sp",
--layout_marginLeft="8dp",
			layout_width = 'match_parent',
	layout_weight=1,
		},
		}
}
colorvs[gid..ii.."p"]={false,"img"}
colorvs[gid..ii.."t"]={gid..ii.."t",false,"txt"}

end
return switchs[gid..ii]
end
function Yunzhu.intcard(name,name2,func1,func2,ii,gid)
if tcheck==56 then
	tcheck=1
else
	tcheck=tcheck+1
end
tocheck=spics[tcheck]
local func = 开关6(name,func1,func2,gid..ii)
if not name then name = "未设置" end
if not name2 then name2="" end
switchs[gid..ii] = {
	LinearLayout,
	id = luajava.newId(gid..ii),
	layout_width = 'wrap_content',
	layout_height = "wrap_content",
	
	layout_marginTop="5dp",
	layout_marginBottom="5dp",
	layout_marginLeft="3dp",
	layout_marginRight="3dp",
	
	{
		LinearLayout,
		padding="3dp",
		onClick = function() luajava.newThread(function() func() end):start() end,
		layout_width = ( (tonumber(string.replace(界面宽度,"dp","")) -30)/2).."dp",
		layout_height = "wrap_content",
		gravity = "left",
		background=getVerticalBG({0xff161616,0xff161616},30),
		orientation="vertical",
		padding="5dp",
		--background=getVerticalBG({0xffFFFDF2,0xddffffff,0xffFFFDF2},15,8,0xffFFDA71),
		{
			ImageView,
			id = luajava.newId(gid..ii.."p"),
			src = getRes(tocheck),
			gravity="left",
			layout_width = '30dp',
			layout_height = '30dp',
			padding = "3dp",
		},{
			TextView,
			id=luajava.newId(gid..ii.."t"),
			gravity = "left",
			text = name,
			textColor="#ffffff",
			textSize = "12sp",
			layout_width = 'match_parent',
			layout_weight=1,
		},{
			TextView,
			id=luajava.newId(gid..ii.."t2"),
			gravity = "left",
			text = name2,
			textColor="#aaaaaa",
			textSize = "9sp",
			layout_width = 'match_parent',
			layout_weight=1,
		}
		}
}
colorvs[gid..ii.."p"]={false,"img"}
colorvs[gid..ii.."t"]={false,"txt"}

return switchs[gid..ii]
end
shous={}
function 收起ck(gid,ii)
if shous[gid] ==false then
		shous[gid]=true
		luajava.getIdView(gid..ii.."p"):setRotation(0)
	for i=1,ii-1 do
		if i>=9 then
			luajava.post(function()
			luajava.getIdView(gid):removeView(luajava.getIdView(gid..i))
			end)
		end
	end
	else
		shous[gid]=false
			luajava.post(function()
			luajava.getIdView(gid):removeView(luajava.getIdView(gid..ii))
			for i=1,ii-1 do
				if i>=9 then
					luajava.getIdView(gid):addView(luajava.getIdView(gid..i))
				end
			end
			luajava.getIdView(gid):addView(luajava.getIdView(gid..ii))
			end)
		luajava.getIdView(gid..ii.."p"):setRotation(180)
	end
end
opou=getRes("opou")
function Yunzhu.checkbox(gid,ii)
local func = function() 收起ck(gid,ii) end
if not name then name = "未设置" end
switchs[gid..ii] = {
	LinearLayout,
	id=luajava.newId(gid..ii),
	layout_width = '70dp',
	layout_height = "wrap_content",
	layout_marginTop = "1dp",
	layout_marginBottom = "1dp",
	padding = "1dp",
	{
		LinearLayout,
		padding="3dp",
		onClick = func,
		layout_width = 'fill_parent',
		layout_height = "wrap_content",
		gravity = "center_horizontal",
		orientation="vertical",
		--background=getVerticalBG({0xffFFFDF2,0xddffffff,0xffFFFDF2},15,8,0xffFFDA71),
		{
			ImageView,
			id = luajava.newId(gid..ii.."p"),
			src = opou,
			background=ckbg,
			gravity="center",
			layout_width = '30dp',
			layout_height = '30dp',
			padding = "8dp",
		},{
			TextView,
			id=luajava.newId(gid..ii.."t"),
			gravity = "center",
			text = "展开",
			textColor="#d7d7d7",
			textSize = "9sp",
--layout_marginLeft="8dp",
			layout_width = 'match_parent',
	layout_weight=1,
		},
		}
}
return switchs[gid..ii]
end
function 开关6(name,func1,func2,nid)
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
	luajava.getIdValue(nid.."t"):setTextColor(控件颜色)
	luajava.getIdValue(nid.."t2"):setTextColor(控件颜色)
	luajava.getIdValue(nid.."p"):setColorFilter(控件颜色)
	colorvs[nid.."p"]={true,"img"}
	colorvs[nid.."t"]={true,"txt"}
	colorvs[nid.."t2"]={true,"txt"}
	--Yunzhu.controlWater(switchs[nid],300)
	end)
_ENV[name] = "开"

pcall(func1)
else
	vibra:vibrate(9)
luajava.runUiThread(function()
	luajava.getIdValue(nid.."t"):setTextColor(0xffffffff)
	luajava.getIdValue(nid.."p"):setColorFilter(0xffd7d7d7)
	luajava.getIdValue(nid.."t2"):setTextColor(0xffaaaaaa)
	colorvs[nid.."p"]={false,"img"}
	colorvs[nid.."t"]={false,"txt"}
	colorvs[nid.."t2"]={false,"txt"}
	--Yunzhu.controlWater(switchs[nid],300)
	end)
_ENV[name] = "关"
pcall(func2)
end
end
end
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
	luajava.getIdValue(nid.."t"):setTextColor(控件颜色)
	luajava.getIdValue(nid.."p"):setColorFilter(控件颜色)
	colorvs[nid.."p"]={true,"img"}
	colorvs[nid.."t"]={true,"txt"}
	--Yunzhu.controlWater(switchs[nid],300)
	end)
_ENV[name] = "开"
pcall(func1)
else
	vibra:vibrate(9)
luajava.runUiThread(function()
	luajava.getIdValue(nid.."t"):setTextColor(0xffd7d7d7)
	luajava.getIdValue(nid.."p"):setColorFilter(0xffd7d7d7)
	colorvs[nid.."p"]={false,"img"}
	colorvs[nid.."t"]={false,"txt"}
	--Yunzhu.controlWater(switchs[nid],300)
	end)
_ENV[name] = "关"
pcall(func2)
end
end
end
end

function Yunzhu.card(cklist)
if #cklist==0 then return nil end
local rest = {
	LinearLayout,
	layout_width = 'fill_parent',
	layout_height = "wrap_content",
	gravity = "center",
	orientation="vertical",
	layout_marginTop="5dp",
	layout_marginBottom="5dp",
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
local name2 = cklist[i + j][4]
if not name then name = "未设置" end
local gid=guid()
rstt = Yunzhu.intcard(name,name2,func1,func2,1,gid)
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
function Yunzhu.check(cklist)
local gid=guid()
local rest = {
	GridLayout,
	id=luajava.newId(gid),
	columnCount = '3',
	layout_width = ( tonumber(string.replace(界面宽度,"dp","")) -16).."dp",
	layout_height = "wrap_content",
	
	gravity = "center",
	background = luajava.loadlayout {
			GradientDrawable ,
			color = 0xff161616 ,
			cornerRadius = 35
		} ,

}
for i = 1,#cklist do
local name = cklist[i][1]
local func1 = cklist[i][2]
local func2 = cklist[i][3]
local pic = cklist[i][4]
if not name then name = "未设置" end
rstt = Yunzhu.intcheck(name,func1,func2,i,gid,pic)
if i<9 then
rest[#rest+1] = rstt
end
end
if #cklist>=9 then
rstt = Yunzhu.checkbox(gid,#cklist+1)
rest[#rest+1] = rstt
end
return luajava.loadlayout({
	LinearLayout,rest
})
end
Yunzhu.controlRotation9 = function(control, time,t)
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
Yunzhu.controlRotation9(boxpic[tid],0,90)
boxpic[tid]:setColorFilter(控件颜色)
colorvs[tid]={true,"box"}
else
	tview : setVisibility (View.GONE)
Yunzhu.controlWater (_ENV [tid.."6"] , 200)
Yunzhu.controlRotation9(boxpic[tid],90,0)
boxpic[tid]:setColorFilter(nil)
colorvs[tid]={false,"box"}
end
end
boxes = {} boxpic = {}
function Yunzhu.box (views)
local tid = "box"..guid ()
boxpic[tid] = luajava.loadlayout {
	ImageView ,
	src = getRes("hei_right"),
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
local kid=guid().."box"
if type (views [1]) == "string" or type (views [1]) == "number" then
firadio [# firadio + 1] = {
	LinearLayout ,
	id=luajava.newId(kid),
	layout_width = 'fill_parent' ,
	layout_height = "40dp" ,
	gravity = "center_vertical" ,
	layout_marginTop = "3dp" ,
	layout_marginLeft="3dp",
	layout_marginRight="3dp",
	layout_marginBottom = "3dp" ,
	elevation="3dp",
	onClick = function ()
	visi (tid , ttid)
	end,
	background = forchange(
			kid,
			getButtonBG(),
			getButtonB(),
			"button",
			kid.."bt",
			0xffffffff,
			0xff000000),
	{
		TextView ,
		id=luajava.newId(kid.."bt"),
		text = views [1] ,
		textSize = "13sp" ,
		layout_marginLeft = "15dp" ,
		layout_width = "match_parent" ,
		layout_weight=1,
		textColor = "#ffffff" ,
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
	gg.alert ("Yunzhu.box的table内第一个元素必须是string") os.exit ()
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
buts={}
heir=getRes("heir")
function Yunzhu.button(txt,func,txtc)
if not txt then txt = "未设置" end
if not txtc then txtc="#ffffff" end
local tid="Cbutton"..guid()
buts[tid]=luajava.loadlayout(
	{
		LinearLayout,
		layout_width = 'match_parent',
		layout_height = "wrap_content", {
			LinearLayout,
			id=luajava.newId(tid),
			layout_width = "fill_parent",
			gravity = "center_vertical",
			layout_marginTop = "5dp",
			layout_marginBottom = "5dp",
			layout_marginLeft="3dp",
			layout_marginRight="3dp",
			elevation="3dp",
			background = forchange(
			tid,
			getButtonBG(),
			getButtonB(),
			"button",
			tid.."bt",
			0xffffffff,
			0xff000000),
			padding="10dp",
			onClick = function() 
				Yunzhu.controlWater(buts[tid],300)
				vibra:vibrate(10)
			luajava.newThread(func):start() end,
			{
				TextView,
				id = luajava.newId(tid.."bt"),
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
function newbg2(gtvb1,gtvb3)
local jianbians = luajava.loadlayout({
GradientDrawable,
color = gtvb1,
cornerRadius=gtvb3,
gradientType = GradientDrawable.LINEAR_GRADIENT,
orientation = GradientDrawable.Orientation.TOP_BOTTOM,
strokeWidth = 0,
strokeColor = 0xff000000
})
return jianbians
end
function getButtonBG()
local selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, newbg2(0xff000000,35))
selector:addState({
	-android.R.attr.state_pressed
}, newbg2(0xff161616,35))
return selector
end
function getButtonB()
local selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, newbg2(0xffd7d7d7,35))
selector:addState({
	-android.R.attr.state_pressed
}, newbg2(0xffffffff,35))
return selector
end
radiog={}
function Yunzhu.radio (cklist)
if not radoff then
radon=getVerticalBG({0xffffffff,0xffffffff},360,20,控件颜色)
radoff=getVerticalBG({0x00ffffff,0x00ffffff},360,8,0xffaaaaaa)

end
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
	textColor = "#d7d7d7" ,
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
	background=getVerticalBG({0xff161616,0xff161616},45),
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
	Yunzhu.controlWater (_ENV [tid] , 200)
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
		textColor = "#d7d7d7" ,
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
	colorvs[k]={false,"rad"}
	luajava.getIdValue(k):setBackground(radoff)
	if k==nid and v~=true then
		luajava.getIdValue(k):setBackground(radon)
		colorvs[k]={true,"rad"}
		v=true
		luajava.newThread(func):start()
	end
end
end
end
当前ui=1
function changeColor(co)
控件颜色=co
luajava.runUiThread(function()
tpbbg=getVerticalBG({控件颜色,控件颜色},20)
luajava.getIdView("topb1"):setBackground(tpbbg)
luajava.getIdView("topb2"):setBackground(tpbbg)

if _ENV["jm"..当前ui.."t"]~=nil then
_ENV["jm"..当前ui.."t"]:setTextColor(控件颜色)
_ENV["jm"..当前ui.."p"]:setColorFilter(控件颜色)
end
luajava.getIdView("backv"):setColorFilter(控件颜色)
checkbg = getShape2(45,{控件颜色,控件颜色},4,控件颜色)
radon=getVerticalBG({0xffffffff,0xffffffff},360,20,控件颜色)
for k,v in pairs(colorvs) do
	if v[1]==true then
		if v[2]=="switch" then
			luajava.getIdValue(k):setBackground(checkbg)
		elseif v[2]=="box" then
			boxpic[k]:setColorFilter(控件颜色)
		elseif v[2]=="txt" then
			luajava.getIdValue(k):setTextColor(控件颜色)
		elseif v[2]=="img" then
			luajava.getIdValue(k):setColorFilter(控件颜色)
		elseif v[2]=="rad" then
			luajava.getIdValue(k):setBackground(radon)
		elseif v[2]=="seek" then
			luajava.getIdView(k):setProgressDrawable( getVerticalBG({控件颜色,控件颜色},45))
		end
	end
end
end)
end
currentIndex = 1

-- 定义一个函数来打印当前遍历到的table项，并更新索引位置
function 预置颜色()
-- 获取当前遍历到的项
local currentItem = 颜色表[currentIndex]

-- 打印当前项
changeColor(currentItem)

-- 更新索引位置
currentIndex = currentIndex + 1

-- 如果索引已经达到最大值，则重置为1，回到第一项
if currentIndex > #颜色表 then
currentIndex = 1
end
end
function Yunzhu.image(img,height,width,pad,func)
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

function Yunzhu.text(txt,color,size,t)
if not txt then txt = "未设置文字" end
if not color then color = "#ffffff" end
if not size then size = "18sp" end
if not t then t = "left" else t = "center" end
return 
luajava.loadlayout(

  {
    LinearLayout,
    layout_width="match_parent",
    gravity= t,
    backgroundColor="0",
    {
      	TextView,
		text = txt,
		textSize = size,
		textColor = color,
    },
})
end



function Yunzhu.edit (name , hint)
_ENV [name] = name..guid ()
if not hint then
hint = name
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
			background =  forchange(
			_ENV [name],
			getButtonBG(),
			getButtonB()
			),
			gravity = "center" ,
			hint = hint ,
			textColor=ffffff,
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
function Yunzhu.getedit (name)
edit = tostring (luajava.getIdValue (_ENV [name]) : getText ())
return edit
end
function Yunzhu.setedit (name , txt)
txt = tostring (txt)
luajava.runUiThread (function ()
	luajava.getIdValue (_ENV [name]) : setText (txt)
	end

)
end
chazhi={} chajv={}
function Yunzhu.seek(name,bian,smin,smax,nows)
_ENV[bian] =nows
local thum= getVerticalBG({0xffffffff,0xffffffff},4,8,0xff75797A)
thum:setSize(60, 60)
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
kid=guid().."sk"
rest = luajava.loadlayout({
	LinearLayout,
	layout_width = 'fill_parent',
	layout_hight = "fill_parent",
	{
		LinearLayout,
		id=luajava.newId(kid),
		layout_width = 'fill_parent',
		layout_hight = "fill_parent",
		layout_marginTop = "5dp",
		layout_marginBottom = "5dp",
		gravity = "center_vertical",
		background = forchange(
			kid,
			newbg2(0xff161616,35),
			newbg2(0xffffffff,35),
			"switch",
			names,
			0xffffffff,
			0xff000000),
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
			progressDrawable={ getVerticalBG({控件颜色,控件颜色},45)},
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
colorvs[name.."seekbar"]={true,"seek"}
return rest
end
do
local path = "/sdcard/.游客信息t.lua" --用户信息
local r = io.open(path, "r")
if r then
qltname = r:read("*a")
else
	qltname = "游客" .. math.random(1111111, 9999999)
io.open(path, "w"):write(qltname)
end
local path = "/sdcard/.用户头像t.lua" --用户信息
local r = io.open(path, "r")
if r then
qlticon = r:read("*a")
else
	qlticon = ""
io.open(path, "w"):write(qlticon)
end
end
function getu(name)
fs=gg.makeRequest(httpip.."?name="..name.."&mode=get").content
if fs=="00" then return "获取失败" else return fs end
end
function uplo(name,txt)
fs=gg.makeRequest(httpip.."?txt="..txt.."&name="..name.."&mode=set").content
end
界面宽度="320dp"

界面长度="400dp"

function 修改名字(lttext)
if string.len(lttext) <= 0 then return 0 end
if string.len(lttext) >= 400 then
gg.toast("用户名长度上限20字节") return 0
end
local path = "/sdcard/.游客信息t.lua" --用户信息
qltname = lttext
io.open(path, "w"):write(qltname)
gg.alert("昵称修改成功\n"..lttext)
end
function 修改头像(txt)
local path2 = "/sdcard/.用户头像t.lua"
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
io.open(path2, "w"):write(qlticon)
gg.alert("头像修改成功")
end
function xiuxg()
tmp=gg.prompt({"昵称","头像(请输入QQ号码或图片直链，暂不支持本地)"},{qltname,qlticon},{"text","text"})
if tmp~=nil then
if tmp[1]~="" then 修改名字(tmp[1]) end
if tmp[2]~="" then 修改头像(tmp[2]) end
end
end
function uprec(imagePath)
local uploadUrl = "http://47.101.220.155/"..channel.."/upload.php?name=jb"
local headers = {["Content-Type"] = "multipart/form-data"}
local response = http.upload(uploadUrl,headers,imagePath)
if response.code == 200 then
    randompic="☂️语音"..response.content.."☂️"
    发送聊天2(randompic)
else
    gg.alert("文件上传失败: " .. response.status)
end
	
end
function uppic(imagePath)
local uploadUrl = "http://47.101.220.155/"..channel.."/upload2.php?name=jb"
local headers = {["Content-Type"] = "multipart/form-data"}
local response = http.upload(uploadUrl,headers,imagePath)
if response.code == 200 then
    randompic="☂️图片"..response.content.."☂️"
    发送聊天2(randompic)
    gg.copyText(randompic)
else
    gg.alert("文件上传失败: " .. response.status)
end
	
end

lastlttm = os.time()-3
function 发送聊天(lttext)
if os.time()-lastlttm <= 3 then
gg.alert("聊天冷却"..4 -(os.time()-lastlttm).."秒")
return 0
end
Yunzhu.setedit2("聊天框","")
local server = "http://47.101.220.155/"..channel.."/" --服务器地址
--local chat_log = gg.makeRequest(server .. "lts.php?hq=true").content
local uptime = gg.makeRequest(server .. "lts.php?updat=true").content
if uptime then
--	io.open(path, "w"):write(GT[2])
if string.len(lttext) <= 0 then return 0 end
if string.len(lttext) >= 400 then
gg.toast("文字长度上限400字节")
else
lastlttm = os.time()
lttext = string.gsub(lttext,"·","•")
lttext = string.gsub(lttext,"～","~")
lttext = string.gsub(lttext,"—","-")
lttext = string.gsub(lttext,"…","...")
if not qlticon or qlticon == "" or qlticon == "nil" then qlticon = "https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/defaulticon" qlticon=string.url(qlticon,"en") end
local p = gg.makeRequest(server .. "lts.php?lticon="..qlticon.."&nr=" .. lttext .. "&name=" .. qltname).content
if p ~= "发送成功" then
--gg.alert(qlticon.."\nerror -149: 消息发送失败")
else
	gg.toast("发送成功")
end
end
else
	gg.toast("请检查您的网络是否正常") return 0
end
shuaxinchat()
end
function 发送聊天2(lttext)
if os.time()-lastlttm <= 3 then
gg.alert("聊天冷却"..4 -(os.time()-lastlttm).."秒")
return 0
end
local server = "http://47.101.220.155/"..channel.."/" --服务器地址
--local chat_log = gg.makeRequest(server .. "lts.php?hq=true").content
local uptime = gg.makeRequest(server .. "lts.php?updat=true").content
if uptime then
--	io.open(path, "w"):write(GT[2])
if string.len(lttext) <= 0 then return 0 end
if string.len(lttext) >= 400 then
gg.toast("文字长度上限400字节")
else
lastlttm = os.time()
lttext = string.gsub(lttext,"·","•")
lttext = string.gsub(lttext,"～","~")
lttext = string.gsub(lttext,"—","-")
lttext = string.gsub(lttext,"…","...")
if not qlticon or qlticon == "" or qlticon == "nil" then qlticon = "https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/defaulticon" qlticon=string.url(qlticon,"en") end
local p = gg.makeRequest(server .. "lts.php?lticon="..qlticon.."&nr=" .. lttext .. "&name=" .. qltname).content
if p ~= "发送成功" then
--gg.alert(qlticon.."\nerror -149: 消息发送失败")
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
local server = "http://47.101.220.155/"..channel.."/" --服务器地址
local uptime = gg.makeRequest(server .. "time.txt").content
if uptime=="" then uptime=999 end
if not uptime then uptime=999 end
if uptime then
if tonumber(uptime) > nowtime then
local chat_log = gg.makeRequest(server .. "lts.php?hq=true").content
nowtime = tonumber(uptime)
newltres = {}
ltres = FGUtilStringSplit(chat_log,"…")
for i = 1,#ltres do
if string.find(ltres[i],"·") == nil or string.find(ltres[i],"～") == nil then else
	newltres[#newltres+1] = {}
newltres[#newltres].ltname = tostring(ltres[i]:match("·(.-)—"))
newltres[#newltres].lttext = tostring(ltres[i]:match("～(.-)…"))
newltres[#newltres].lttime = tostring(ltres[i]:match("—(.-)～"))
newltres[#newltres].lticon = tostring(ltres[i]:match("㊢(.-)·"))
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
addchat(Yunzhu.chat(localres[#localres]))
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
ltslaym4:addView(cha)
end
local runnable = luajava.getRunnable(invoke2)
local handler = luajava.getHandler()
handler:post(runnable)
end
function gundong()
if already then
local function invoke2()
_ENV["ltslays4"]:fullScroll(View.FOCUS_DOWN)
end
local runnable = luajava.getRunnable(invoke2)
local handler = luajava.getHandler()
handler:post(runnable)
end
end
function removechat(cha)
local function invoke2()
_ENV["ltslaym4"]:removeView(cha)
end
local runnable = luajava.getRunnable(invoke2)
local handler = luajava.getHandler()
handler:post(runnable)
end
local MediaRecorder = luajava.bindClass("android.media.MediaRecorder")
local AudioSource = luajava.bindClass("android.media.MediaRecorder$AudioSource")
local OutputFormat = luajava.bindClass("android.media.MediaRecorder$OutputFormat")
local AudioEncoder = luajava.bindClass("android.media.MediaRecorder$AudioEncoder")

-- 获取录音管理器实例
local audioManager = context:getSystemService(context.AUDIO_SERVICE)
-- 获取录音源类型常量值
local sourceType = AudioSource.MIC
-- 创建 MediaRecorder 实例

function Yunzhu.record(txt)
if not txt then txt = "未设置" end
return luajava.loadlayout(
	{
		LinearLayout,
		layout_width = 'fill_parent',
		layout_hight = "wrap_content", {
			LinearLayout,
			layout_width = "fill_parent",
			gravity = "center_horizontal",
			layout_marginRight="10dp",
			layout_marginLeft="10dp",
			layout_marginTop = "5dp",
			layout_marginBottom = "5dp",
			background = getSelector3(),
			onTouch = function(view, event)
		        if event:getAction() == MotionEvent.ACTION_DOWN then
		            -- 按下时执行的函数
		            luajava.newThread(function()
		            gg.toast("开始录音，松手取消")
		            recorder = MediaRecorder()
-- 设置录音源、输出格式和编码器
					recorder:setAudioSource(sourceType)
					recorder:setOutputFormat(OutputFormat.THREE_GPP)
					recorder:setAudioEncoder(AudioEncoder.AMR_NB)
					-- 设置录音文件存储路径
					-- 设置音量增益
					recorder:setAudioEncodingParameters(0, 1, 1)
					local savePath = "/sdcard/Yunzhu/test.mp3"
					recorder:setOutputFile(savePath)
		            recorder:prepare()
					recorder:start()
					redstart=os.time()
					rocordname="audio"..guid()..guid()
		            end):start()
		        elseif event:getAction() == MotionEvent.ACTION_UP then
		            -- 松开时执行的函数
		            
		            --
		        end
			end,
			onClick=function()
					luajava.newThread(function()
		            gg.toast("正在发送")
		            -- 停止录音
					recorder:stop()
					-- 释放资源
					recorder:release()
					if os.time()-redstart<1 then
						gg.alert("时间太短\n最少要录制1秒")
						return 0
					end
					if os.time()-redstart>60 then
						gg.alert("时间太长\n一条最多录制60秒")
						return 0
					end
		            end):start()
			end,
			{
				TextView,
--id = luajava.newId(tid),
				text = tostring(txt),
				textSize = "16sp",
				layout_width = "wrap_content",
			},
		}})
end
function imagee(t)
	luajava.layoutAlert({
	ImageView,
	layout_height="wrap_content",
	layout_width="match_parent",
	src=(t),
})
end
function getpics()
-- 获取ContentResolver对象
local contentResolver = context:getContentResolver()

-- 获取系统的MediaStore对象
local mediaStore = luajava.bindClass("android.provider.MediaStore")

-- 定义查询参数
local uri = mediaStore.Images.Media.EXTERNAL_CONTENT_URI
local projection = { mediaStore.Images.Media.DATA } -- 只查询文件路径
local selection = nil -- 查询所有图片
local selectionArgs = nil
local sortOrder = "date_added DESC" -- 按照添加日期降序排序
-- 执行查询
local cursor = contentResolver:query(uri, projection, selection, selectionArgs, sortOrder)
currpic={}
local counter = 0
if cursor then
    local columnIndex = cursor:getColumnIndexOrThrow(mediaStore.Images.Media.DATA)
    while cursor:moveToNext() and counter < 14 do
        local imagePath = cursor:getString(columnIndex)
        -- 处理图片路径，例如展示、保存等操作
        currpic[#currpic+1]=(imagePath)
        counter = counter + 1
    end
    cursor:close()
end
return currpic
end
function xuantu()
gg.alert("服务器升级中 图片系统暂时关闭") do return 0 end
local lock = luajava.getBlock()

local alert = luajava.new(AlertDialog.Builder, app.context)
luajava.post(function()
-- android.app.AlertDialog
    alert = alert:create()
end)
local function exit()
alert:dismiss()
lock('end')
end
grid={LinearLayout,
	gravity="center",
	orientation="vertical",
	layout_width="match_parent",
}
pics=getpics()
for k,v in pairs(pics) do
	grid[#grid+1]={
		ImageView,
		layout_marginTop="3dp",
		layout_marginBottom="3dp",
		layout_width = 'match_parent',
	layout_height = "wrap_content",
		src=获取图片(v),
		onClick=function() luajava.newThread(function()
			isfa=gg.image(v,"确定发送这张图片？（右下角确定发送）")
			if isfa==1 then exit() uppic(v) end
		end):start()
		end
	}
end
alert:setView(luajava.loadlayout({
	ScrollView,
	grid}))
-- 弹窗被取消
alert:setOnDismissListener(luajava.createProxy('android.content.DialogInterface$OnDismissListener', {
    onDismiss = function()
    exit()
    end
}))
-- 异步显示弹窗
local window = alert:getWindow()
luajava.showAlert(alert)
-- 堵塞，等待异步弹窗结束
lock('join')
end
function getpic(txt)
txt = string.url(txt,"de")
ntxt = string.sub(string.gsub(txt,"/","-"),-10,-1)
if string.find(tostring(txt),"http") ~= nil then
if panduan("/sdcard/Yunzhu/图片/"..ntxt) == false then
file.download(txt,"/sdcard/Yunzhu/图片/"..ntxt)
else
	if file.length("/sdcard/Yunzhu/图片/"..ntxt) <= 1 then
file.download(txt,"/sdcard/Yunzhu/图片/"..ntxt)
end
end
txt = "/sdcard/Yunzhu/图片/"..ntxt
end

return luajava.getBitmapDrawable(txt)
end
function Yunzhu.chat(ltlist)
ltname = ltlist.ltname
lticon = tostring(ltlist.lticon)
lttext = tostring(ltlist.lttext)
lttime = tostring(ltlist.lttime)
if not lticon or lticon == "" or lticon == "nil" then lticon = "https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/defaulticon" end
if string.find(lticon,"/")==nil then lticon = "https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/defaulticon" end
bitmap = getpic(lticon)
if not bitmap then bitmap = luajava.getBitmapDrawable("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/defaulticon") end
if not _ENV[lticon] then _ENV[lticon] = bitmap end
if not lttext or lttext == "" then lttext = "  " end
if string.find(lticon,"http%%") ~= nil then lticon = "https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/defaulticon" end
if string.find(lticon,"/sdcard") == nil and string.find(lticon,"emulated") == nil and string.find(lticon,"http:/") == nil and string.find(lticon,"https:/") == nil then lticon = "https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/defaulticon" end
if not lttext then lttext = "   " end
if type(_ENV[lticon])~="userdata" then return 0 end
if ltname~=qltname then
	
	
	
	
	
if string.find(lttext,"☂️")==nil then
local ctbg=chatbg()
	ltresult = luajava.loadlayout(
		{
		LinearLayout,
		padding={"12dp","0dp","0dp","0dp"},
		layout_width = "match_parent",
		layout_height = "wrap_content",
		orientation = "horizontal",
		gravity="left",
		{
			LinearLayout,
			layout_height = "40dp",
			layout_width = "40dp",
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
				textColor="#000000",
				text = tostring(ltname).."\n"..tostring(lttime),
				textSize = "10sp",
				layout_width = "wrap_content",
				layout_height = "wrap_content",
			}, {
				TextView,
				text = tostring(lttext),
				textSize = "14sp",
				background = ctbg,
				padding = "3dp",
				layout_width = "wrap_content",
				layout_height = "wrap_content",
			}
		}})
elseif string.find(lttext,"☂️语音")~=nil then
local ctbg=chatbg2()
	local playPath=lttext:match("☂️语音(.-)☂️")
	ltresult = luajava.loadlayout(
		{
		LinearLayout,
		padding={"12dp","0dp","0dp","0dp"},
		layout_width = "match_parent",
		layout_height = "wrap_content",
		orientation = "horizontal",
		gravity="left",
		{
			LinearLayout,
			layout_height = "40dp",
			layout_width = "40dp",
			background = _ENV[lticon],
		},
		{
			LinearLayout,
			layout_height = "wrap_content",
			layout_width = "160dp",
			layout_marginLeft = "10dp",
			orientation = "vertical",
			gravity="left",
			{
				TextView,
				textColor="#000000",
				text = tostring(ltname).."\n"..tostring(lttime),
				textSize = "10sp",
				layout_width = "240dp",
				layout_height = "wrap_content",
			}, {
				TextView,
				text = "[ 语音 ]ᵒ",
				textSize = "14sp",
				background = ctbg,
				onClick=function()
					playPath=playPath
					luajava.newThread(
					function()
						if panduan("/sdcard/Yunzhu/音频/"..playPath)~=true then
						file.download(tostring("http://47.101.220.155/"..channel.."/".."audio/"..playPath),"/sdcard/Yunzhu/音频/"..playPath)
						end
						gg.playMusic("/sdcard/Yunzhu/音频/"..playPath)
						end):start()
					end,
				padding = "3dp",
				layout_width = "wrap_content",
				layout_height = "wrap_content",
			}
		}})
elseif string.find(lttext,"☂️图片")~=nil then
local ctbg=chatbg()
	local playPath=lttext:match("☂️图片(.-)☂️")
	local tmp=("http://47.101.220.155/"..channel.."/pics/"..playPath)
	ltresult = luajava.loadlayout(
		{
		LinearLayout,
		padding={"12dp","0dp","0dp","0dp"},
		layout_width = "match_parent",
		layout_height = "wrap_content",
		orientation = "horizontal",
		{
			LinearLayout,
			layout_height = "40dp",
			layout_width = "40dp",
			background = _ENV[lticon],
		},
		{
			LinearLayout,
			layout_height = "wrap_content",
			layout_width = "160dp",
			layout_marginLeft = "10dp",
			orientation = "vertical",
			{
				TextView,
				textColor="#000000",
				text = tostring(ltname).."\n"..tostring(lttime),
				textSize = "10sp",
				layout_width = "wrap_content",
				layout_height = "wrap_content",
			}, {
				ImageView,
				src=tmp,
				background = ctbg,
				onClick=function()
					luajava.newThread(
					function()
						imagee("http://47.101.220.155/"..channel.."/pics/"..playPath)
					end):start()
				end,
				padding = "0dp",
				layout_width = "match_parent",
				layout_height = "100dp",
			}
		}})
	
end
else
	
	
	
	
if string.find(lttext,"☂️")==nil then
local ctbg=chatbg()
	ltresult = luajava.loadlayout(
		{
		LinearLayout,
		layout_width = "match_parent",
		layout_height = "wrap_content",
		orientation = "horizontal",
		gravity="right",
		{
			LinearLayout,
			layout_height = "wrap_content",
			layout_width = "160dp",
			layout_marginRight = "10dp",
			orientation = "vertical",
			gravity="right",
			{
				TextView,
				textColor="#000000",
				text = tostring(ltname).."\n"..tostring(lttime),
				textSize = "10sp",
				gravity="right",
				layout_width = "wrap_content",
				layout_height = "wrap_content",
			}, {
				TextView,
				text = tostring(lttext),
				textSize = "14sp",
				background = ctbg,
				gravity="right",
				padding = "3dp",
				layout_width = "wrap_content",
				layout_height = "wrap_content",
			}
		},{
			LinearLayout,
			layout_marginRight = "10dp",
			layout_marginLeft = "10dp",
			layout_height = "40dp",
			layout_width = "40dp",
			background = _ENV[lticon],
			onClick = function()
				luajava.newThread(function() xiuxg() end):start()
			end,
		},})
elseif string.find(lttext,"☂️语音")~=nil then
local ctbg=chatbg2()
	local playPath=lttext:match("☂️语音(.-)☂️")
	ltresult = luajava.loadlayout(
		{
		LinearLayout,
		layout_width = "match_parent",
		layout_height = "wrap_content",
		orientation = "horizontal",
		gravity="right",
		{
			LinearLayout,
			layout_height = "wrap_content",
			layout_width = "160dp",
			layout_marginLeft = "10dp",
			orientation = "vertical",
			gravity="right",
			{
				TextView,
				textColor="#000000",
				text = tostring(ltname).."\n"..tostring(lttime),
				textSize = "10sp",
				layout_width = "wrap_content",
				layout_height = "wrap_content",
				gravity="right",
			}, {
				TextView,
				text = "[ 语音 ]ᵒ",
				textSize = "14sp",
				background = ctbg,
				onClick=function()
					playPath=playPath
					luajava.newThread(
					function()
						if panduan("/sdcard/Yunzhu/音频/"..playPath)~=true then
						file.download(tostring("http://47.101.220.155/"..channel.."/audio/"..playPath),"/sdcard/Yunzhu/音频/"..playPath)
						end
						gg.playMusic("/sdcard/Yunzhu/音频/"..playPath)
						end):start()
					end,
				padding = "3dp",
				layout_width = "wrap_content",
				layout_height = "wrap_content",
			}
		},{
			LinearLayout,
			layout_marginRight = "10dp",
			layout_marginLeft = "10dp",
			layout_height = "40dp",
			layout_width = "40dp",
			background = _ENV[lticon],
			onClick = function()
				luajava.newThread(function() xiuxg() end):start()
			end,
		}})
elseif string.find(lttext,"☂️图片")~=nil then
local ctbg=chatbg()
	local playPath=lttext:match("☂️图片(.-)☂️")
	local tmp=("http://47.101.220.155/"..channel.."/pics/"..playPath)
	--gg.copyText(tostring(tmp))
	ltresult = luajava.loadlayout(
		{
		LinearLayout,
		layout_width = "match_parent",
		layout_height = "wrap_content",
		orientation = "horizontal",
		gravity="right", 
		{
			LinearLayout,
			layout_height = "wrap_content",
			layout_width = "160dp",
			layout_marginLeft = "10dp",
			orientation = "vertical",
			gravity="right",
			{
				TextView,
				textColor="#000000",
				text = tostring(ltname).."\n"..tostring(lttime),
				textSize = "10sp",
				layout_width = "wrap_content",
				layout_height = "wrap_content",
			}, {
				ImageView,
				src=tmp,
				background = ctbg,
				onClick=function()
					luajava.newThread(
					function()
						imagee("http://47.101.220.155/"..channel.."/pics/"..playPath)
					end):start()
				end,
				padding = "2dp",
				layout_width = "match_parent",
				layout_height = "100dp",
			}
		},{
			LinearLayout,
			layout_height = "40dp",
			layout_width = "40dp",
			layout_marginRight = "10dp",
			layout_marginLeft = "10dp",
			background = _ENV[lticon],
			onClick = function()
				luajava.newThread(function() xiuxg() end):start()
			end,
		},})
	
end

end
return ltresult

end
function getjb()
local jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(15)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({0xff397EF8,0xff25C4FD})
jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
return jianbians
end
tjb1=getjb()
tjb2=luajava.loadlayout {
	GradientDrawable,
	color = "#aa0082FF",
	cornerRadius = 12
}
function getjb()
local jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(15)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({0xff397EF8,0xff25C4FD})
jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
return jianbians
end
function chatbg()
local jb=getVerticalBG({0xaa161616,0xaa161616},17,2,0xffd8d8d8)
return jb
end
function getShape3()
jianbians = luajava.loadlayout({
	GradientDrawable,
	type = "linear",
	angle = "135",

})
jianbians:setCornerRadius(22)
jianbians:setOrientation(GradientDrawable.Orientation.TL_BR)
jianbians:setColors({
	0x55ffffff,0x55ffffff
})
jianbians:setStroke(5,0xffffffff)--边框宽度和颜色
return jianbians
end

function chatbg2()
local selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, luajava.loadlayout {
	GradientDrawable,
	color = "#aa2D8BFF",
	cornerRadius = 12
}) -- 点击时候的背景
selector:addState({
	-android.R.attr.state_pressed
}, getjb()) -- 没点击的背景
return selector
end
function kglxy()--流星雨开关
if lxy == 0 then
luajava.getIdView("liuxingyu1"):setImageDrawable(lxytp2)
luajava.post(function()
webv_:removeView(parti)
		end)--关
lxy = 1
elseif lxy == 1 then
luajava.getIdView("liuxingyu1"):setImageDrawable(lxytp1)
luajava.post(function()
webv_:addView(parti)
		end)--开
lxy = 0
end
end




info = {
	    example_version = '1.0.3',
		name = 'XL全防',
		appid = '14476',
		appkey = '50N75nCxF1f5nC6f',
		rc4key = '0b09hB15UfFH125U',
		version = '1.0',
		mi_type = '3'
	}
rlyunyz = getrlyunyz(info)
local ini = rlyunyz.checkUpdate()



muby=1050
--初始宽度


mubx=1600
--初始高度



--初始颜色，填写十六进制RGB
--可在功能按钮里调用changeColor()随时自定义切换
--例如：changeColor(0xffFF0023)
控件颜色=0xff006dff

颜色表={--切换颜色的列表
	0xff33AF61,
	0xffFFB94D,
	0xffFF0023,
	0xff008CFF,
	0xffA6FF00,
	0xffFF95F2,
	0xff946AFF,
}

卡网='https://www.aidoumi.net/liebiao/1BE910D496702EDF'
channel="awang"--换成你的聊天室后缀
悬浮窗图标="https://cdn-community.codemao.cn/47/community/d2ViXzEwMDFfMTAwMTQwOTNfMTAwMTQwOTNfMTcxNjY0ODYwMDExMV8yMDg5MmU5Mg.jpeg"
右上角标题='YZ UI'
stab={
	"主页",
	"防封",
	"刷号",
	"竞赛",
	"聊天",
	"设置",
}


---创建小窗口备用，对照下边菜单里调用打开窗口，不需要的可以删掉
---必须先创建窗口 才能 打开窗口
Yunzhu.menu({
	{---第一页
	  Yunzhu.text("Yunzhu",0xff0062FF,"15sp"),
	  Yunzhu.text("却没想过如今变成我的nightmare",0xff0062FF,"12sp"),
	
		Yunzhu.switch(
			"功能",
			function()
				a()--例子 对应上面前置函数function a
			end,
			function()
				
			end
		),
		Yunzhu.box({
			"XXX区",
				Yunzhu.edit("输入框演示"),
				Yunzhu.button(
					"调用输入框",
					function()
						local tmp=Yunzhu.getedit("输入框演示")
						gg.alert(tmp)
					end),
				
				
				
				
		}),--box结尾
		Yunzhu.switch(
			"功能",
			function()
				
			end,
			function()
				
			end
		),
		
		Yunzhu.button(
			"功能",
			function()
				
			end),
		Yunzhu.button(
			"进程",
			function()
				gg.setProcessX()
			end),
		
		
		
		
	},
	{---第二页
		Yunzhu.switch(
			"功能",
			function()
				
			end,
			function()
				
			end
		),
		Yunzhu.switch(
			"功能",
			function()
				
			end,
			function()
				
			end
		),
		Yunzhu.button(
			"功能",
			function()
				
			end),
		Yunzhu.radio({--单选
			'单选名字',
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
		Yunzhu.card({
					{
						"防封",
						function()
							
						end,
						function()
							
						end,
						"防封用法xxx"
					}, {
						"功能",
						function()
							
						end,
						function()
							
						end,
						"功能介绍xxx"
					},{
						"功能",
						function()
							
						end,
						function()
							
						end,
						--"xxxxxxx"--可留空
					},
					
					
			}),
		Yunzhu.check({
					{
						"例子xxxxxx",--名称
						function()--开
							
						end,
						function()--关
							
						end,
						--check第四个参数图片可自定义，删掉不写就是随机
						--"https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/Yunzhu"
					}, {
						"例子",
						function()
							
						end,
						function()
							
						end,
						--没写图片链接就是随机
						--"https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/Yunzhu"
					}, {
						"测试1",
						function()
							
						end,
						function()
							
						end
					},
					{
						"例子",
						function()
							
						end,
						function()
							
						end
					},
				}),
		Yunzhu.box({
			"例子",
			Yunzhu.check({
					{
						"例子xxxxxx",--名称
						function()--开
							
						end,
						function()--关
							
						end,
						--check第四个参数图片可自定义，删掉不写就是随机
						--"https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/Yunzhu"
					}, {
						"例子",
						function()
							
						end,
						function()
							
						end,
						--没写图片链接就是随机
						--"https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/Yunzhu"
					}, {
						"测试1",
						function()
							
						end,
						function()
							
						end
					},
					{
						"例子",
						function()
							
						end,
						function()
							
						end
					},
				}),
			}),
		
		
	},{---第四页
		
		
		Yunzhu.button(
			"切换颜色",
			function()
				预置颜色()--这个是在上边颜色表内切换下一个
				--写changeColor(0xffFF0023)可以自定义切换颜色 改括号里的十六进制RGB
			end),
		Yunzhu.edit("输入框例子"),
		Yunzhu.button(
			"调用输入框",
			function()
				local tmp=Yunzhu.getedit("输入框例子")--名字写输入框名字
				gg.alert(tmp)
			end),
		Yunzhu.seek("拉条例子","ltlz",1,100,1),--名字，变量名字，最小，最大，初始
		Yunzhu.button(
			"调用拉条",
			function()
				gg.alert(ltlz)--上边ltlz直接调用
			end),
		

	
	},


		{--聊天室勿动
			----
		},

	{
	
Yunzhu.text('\n'),
Yunzhu.image(
"https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/quarkphone",
"60dp","60dp",--图片高度宽度（可省略）
"10dp",--内边距（可省略）
function()
隐藏()			
gg.intent('http://qm.qq.com/cgi-bin/qm/qr?_wv=1027&k=wJuJRjKavSqwqW18kzA6MigflQhz_hwB&authKey=SKU8slWF4HSjGw5Gbcdj87F9%2Fw96nHoRRwkgrBuuCViU6L4lZSZRz8L%2FcL7hpYDL&noverify=0&group_code=189730334')
--gg.intent("链接")--网页（tg群）
end--点击图片执行的功能（可省略）
),
Yunzhu.text('点击进入官方群聊',nil,'11sp',true),
Yunzhu.text("\n"),
Yunzhu.switch('流星开关',
function()
		luajava.post(function()
		kglxy()
		end)
	end,
	function()
		luajava.post(function()
			kglxy()
		end)
	end),
	Yunzhu.switch(
			'摇一摇隐藏UI',
			function()
				摇一摇=true
			end,
			function()
				摇一摇=false
			end),
	Yunzhu.switch(
			'音量键隐藏UI',
			function()
				音量键=true
			end,
			function()
				音量键=false
			end),
Yunzhu.button("退出脚本",
			function()
			tuichu=1
			end)--最后一个参数是颜色可以省略，默认蓝
}	})






















