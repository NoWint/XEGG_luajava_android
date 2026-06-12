local json = json
BxCb =io.open('/sdcard/入场资源/图片/驾到.mp4','r') 
 if BxCb == nil then 
download("http://wp.abcxpg.cn/view.php/90d510ce728841cb266d5a8b4f8af99e.mp4", "/sdcard/入场资源/图片/驾到.mp4") 
 
else 

--不用添加
end  


BxCb =io.open('/sdcard/音效资源/图片/发送消息','r') 
 if BxCb == nil then 
download("http://wp.abcxpg.cn/view.php/bdecf6ba69283e6cfd285f6a859b833c.mp3", "/sdcard/音效资源/图片/发送消息") 
 
else 

--不用添加
end  

BxCb =io.open('/sdcard/AN/图片/AN图标','r') 
 if BxCb == nil then 
download("http://wp.abcxpg.cn/view.php/61f42e1b5e9bed6576bc135eac2d64d5.png", "/sdcard/AN/图片/AN图标") 
 
else 

--不用添加
end 

BxCb =io.open('/sdcard/AN/图片/long.ttf','r') 
 if BxCb == nil then 
download("http://wp.abcxpg.cn/down.php/f66436c198b5f2e2fe6cae64e18b9f35.ttf", "/sdcard/AN/图片/long.ttf") 
 
else 

--不用添加
end 


file.mkdir('/sdcard/AN配置')
info = {
	example_version = '1.0.3',
		name = '新AN项目',
		appid = '70739',
		appkey = 'oC6bcxxjS4c7c85l',
		rc4key = 'xg77vGP1FbsgPb55',
		version = '1.0',
		mi_type = '3'
	}
rlyunyz = getrlyunyz(info)
local ini = rlyunyz.checkUpdate()

muby=650--原始650
--初始宽度


mubx=900--原始900
--初始高度
摇一摇=true



local usecount = string.format('全网累计使用次数：%s', (tonumber(ini.api_total)))
if io.open('/sdcard/AN配置/kamileixing','r') == nil then
kamileixing = '未知'
else
kamileixing = io.open('/sdcard/AN配置/kamileixing','r'):read('*all')
end
lxy = 0
if io.open('/sdcard/AN配置/star1','r') == nil then
a = gg.makeRequest('http://wp.abcxpg.cn/down.php/4315c1c7c33f737fb2a3d5da54e29450.').content
io.open('/sdcard/AN配置/star1','w+'):write(a)
end
if io.open('/sdcard/AN配置/star2','r') == nil then
a = gg.makeRequest('http://wp.abcxpg.cn/down.php/4315c1c7c33f737fb2a3d5da54e29450.png').content
io.open('/sdcard/AN配置/star2','w+'):write(a)
end

function particle2()
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

if io.open('/sdcard/AN配置/AN图片.png','r') == nil then 
io.open('/sdcard/AN配置/AN图片.png','w+'):write(gg.makeRequest('http://wp.abcxpg.cn/down.php/4315c1c7c33f737fb2a3d5da54e29450.png').content)
io.open('/sdcard/AN配置/载入完成1','w+'):write('重要文件请勿删除！')
else
if io.open('/sdcard/AN配置/载入完成1','r') == nil then
a = gg.makeRequest('http://wp.abcxpg.cn/down.php/4315c1c7c33f737fb2a3d5da54e29450.png').content
io.open('/sdcard/AN配置/载入完成1','w+'):write('重要文件请勿删除！')
if a == io.open('/sdcard/AN配置/AN图片.png','r'):read('*all') then else
io.open('/sdcard/AN配置/AN图片.png','w+'):write(a)
io.open('/sdcard/AN配置/载入完成1','w+'):write('重要文件请勿删除！')
end
end
end



function huitiao(a , b)
pyl =  b - a    
if string.find(pyl, "-") then    
gsub = string.gsub(pyl, "-", "")
format = string.format("~A B -0x%X", gsub)
else
format = string.format("~A B +0x%X", pyl)
end
end
function getTimeStamp(t)
local str = os.date("%Y年%m月%d日%H:%M:%S",t)
return str
end

channel="A"--服务器后缀
local MediaRecorder = luajava.bindClass("android.media.MediaRecorder")
local AudioSource = luajava.bindClass("android.media.MediaRecorder$AudioSource")
local OutputFormat = luajava.bindClass("android.media.MediaRecorder$OutputFormat")
local AudioEncoder = luajava.bindClass("android.media.MediaRecorder$AudioEncoder")

-- 获取录音管理器实例
local audioManager = context:getSystemService(context.AUDIO_SERVICE)
-- 获取录音源类型常量值
local sourceType = AudioSource.MIC
-- 创建 MediaRecorder 实例
if tonumber(device.width)==nil then
dwidth=1340
dheight=2300
else
dwidth=device.width
dheight=device.height
end
function getTimeStamp(t)
local str = os.date("%Y年%m月%d日%H:%M:%S",t)
return str
end
colorvs={}
AN = {} huiz = function() end
window = context:getSystemService("window") -- 获取窗口管理器
function panduan(rec) fille,err = io.open(rec) if fille == nil then return false else return true end end
function checkimg(tmp,ii)
if panduan("/sdcard/AN/图片/"..tmp) ~= true then
gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
luajava.download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..tmp,"/sdcard/AN/图片/"..tmp)
else
if file.length("/sdcard/AN/图片/"..tmp) <= 1 then
gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
luajava.download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..tmp,"/sdcard/AN/图片/"..tmp)
end
end
if panduan("/sdcard/AN/图片/"..tmp) ~= true then
gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
luajava.download("https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/"..tmp,"/sdcard/AN/图片/"..tmp)
else
	if file.length("/sdcard/AN/图片/"..tmp) <= 1 then
gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
luajava.download("https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/"..tmp,"/sdcard/AN/图片/"..tmp)
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
	"bm_music",
	'sscoR',
	"Shimmer2.dex",	
	"support.dex",
	"classes3.dex",
	"long.ttf"
	
}

for i = 1,#ckimg do
jindu = i
checkimg(ckimg[i],i)
gg.toast("正在加载资源")
end
if panduan("/sdcard/AN/图片/opo1")~=true then
	file.unzip("/sdcard/AN/图片/opo","/sdcard/AN/图片/")
end
function 获取图片(txt)
txt = string.url(txt,"de")
ntxt = string.sub(string.gsub(txt,"/","-"),-10,-1)
if string.find(tostring(txt),"http") ~= nil then
if panduan("/sdcard/AN/图片/"..ntxt) == false then
file.download(txt,"/sdcard/AN/图片/"..ntxt)
else
	if file.length("/sdcard/AN/图片/"..ntxt) <= 1 then
file.download(txt,"/sdcard/AN/图片/"..ntxt)
end
end
txt = "/sdcard/AN/图片/"..ntxt
end
return luajava.getBitmapDrawable(txt)
end
function getRes(x)
return 获取图片("/sdcard/AN/图片/"..x)
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
if 音量键==false then return 0 end
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
gg.toast("隐藏")
end):start()
			
		end
	end,500)
})


dexloader=dex.loadfile('/sdcard/AN/图片/classes3.dex')
MySensorManager = dexloader:loadClass('yaocn.rlyun.yaoyiyao.MySensorManager')


luajava.runOnUiThread(function()
	MySensorManager(context, sensor)
end)
AN.controlNznb = function ( control , time )
	luajava.runUiThread ( function ( )
			import "android.animation.ObjectAnimator"
			ObjectAnimator ( ) : ofFloat ( control , "scaleX" , { 1 , 1.5 , 0.7 , 1 } ) : setDuration ( time ) : start ( )
			ObjectAnimator ( ) : ofFloat ( control , "scaleY" , { 1 , 0.5 , 1.3 , 1 } ) : setDuration ( time ) : start ( )
		end

	)
end
AN.controlWater2 = function ( control , time )
	luajava.runUiThread ( function ( )
			import "android.animation.ObjectAnimator"
			ObjectAnimator ( ) : ofFloat ( control , "scaleX" , { 1 , 1.1 , 0.9 , 1 } ) : setDuration ( time ) : start ( )
			ObjectAnimator ( ) : ofFloat ( control , "scaleY" , { 1 , 0.9 , 1.1 , 1 } ) : setDuration ( time ) : start ( )
		end

	)
end

AN.controlFlip = function ( control , time )
	luajava.runUiThread ( function ( )
			import "android.view.animation.Animation"
			import "android.animation.ObjectAnimator"
			xuanzhuandonghua = ObjectAnimator : ofFloat ( control , "rotationY" , { 360 , 0 } )
			xuanzhuandonghua : setRepeatCount ( 0 )
			xuanzhuandonghua : setRepeatMode ( Animation.REVERSE )
			xuanzhuandonghua : setDuration ( time )
			xuanzhuandonghua : start ( )
		end

	)
end

AN.controlWater4 = function ( control , time )
	luajava.runUiThread ( function ( )
			import "android.animation.ObjectAnimator"
			ObjectAnimator ( ) : ofFloat ( control , "scaleX" , { 1 , 1 , 1 , 1 } ) : setDuration ( time ) : start ( )
			ObjectAnimator ( ) : ofFloat ( control , "scaleY" , { 1 , 0.8 , 1.2 , 1 } ) : setDuration ( time ) : start ( )
		end

	)
end
AN.controlWater = function(control,time)
luajava.runUiThread(function()
	import "android.animation.ObjectAnimator"
	ObjectAnimator():ofFloat(control,"scaleX", {
		1, 0.8, 0.9, 1
	}):setDuration(time):start()
	ObjectAnimator():ofFloat(control,"scaleY", {
		1,0.8,0.9,1
	}):setDuration(time):start()
	end) end
AN.controlSmall = function(control,time)
luajava.runUiThread(function()
	import "android.animation.ObjectAnimator"
	ObjectAnimator():ofFloat(control,"scaleX", {
		1, 0.7, 0.4, 0
	}):setDuration(time):start()
	ObjectAnimator():ofFloat(control,"scaleY", {
		1, 0.7, 0.4, 0
	}):setDuration(time):start()
	end) end
AN.controlBig = function(control,time)
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
function particle()
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
    font-size: 16px;
    letter-spacing: 9px;
    background: linear-gradient(to right,#131416,#ffffff,#131416);
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
    <h1>AN全防</h1>
</body>

</html>]], 'text/html', 'UTF-8')
	webView:setBackgroundColor(0x0)
	end)
return webView
end

local typeface = import("android.graphics.Typeface")
local FontPath = "/storage/emulated/0/AN/图片/long.ttf"--字体路径
local font = typeface:createFromFile(FontPath)
	rizhi={LinearLayout,
	
				layout_height='40dp',
				layout_marginTop='3dp',
				layout_marginBottom='3dp',
				layout_marginLeft='3dp',
				layout_marginRight='3dp',
				layout_width='match_parent',
				
				background=getVerticalBG({0xff000000,0xff000000},20),
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
				}
				}

AN.menu = function(views)
if isswitch then
return false
end
jms={
	"lchome",
	"lcff",
	"lcsh",
	"lcjs",
	"bm_music",
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
			onClick=function()
			
			 
			   切换(i) end,
			--onTouch=hanshu,
			{ImageView,
			id="jm"..i.."p",
			src=getRes(jms[i]),
			layout_height="16dp",
			layout_width="16dp",
			},
			{TextView,
			Typeface=font,
			id="jm"..i.."t",
			text=stab[i],
			textSize="10sp",
			textColor="#aad7d7d7",
			Typeface=font,
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
	
	function AN.setedit2(name,txt)
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
if panduan("/sdcard/AN/图片/"..ntxt) == false then
file.download(txt,"/sdcard/AN/图片/"..ntxt)
else
	if file.length("/sdcard/AN/图片/"..ntxt) <= 1 then
file.download(txt,"/sdcard/AN/图片/"..ntxt)
end
end
txt = "/sdcard/AN/图片/"..ntxt
end

return luajava.getBitmapDrawable(txt)
end
function AN.getedit2(name)
--gg.alert(edit)
edit = tostring(luajava.getIdValue(name):getText())
return edit
end
	_ENV["layout"..#stab-1]= 
	{LinearLayout,
		layout_width = "match_parent",
		layout_height = "match_parent",
		orientation = "vertical",

		{LinearLayout,
		id="dpms",
		visibility="gone",
		layout_width = "match_parent",
		layout_weight=1,
		layout_height = "match_parent",
		gravity="center",
		{TextView,
		Typeface=font,
		text="低配模式启动\n聊天室已为你暂时关闭",
		textSize="13sp",
		gravity="center",
		textColor="#ffffff",
		padding="10dp",
		background=getVerticalBG({0x55161616,0x55161616},20),
		Typeface=font,
		}
		},
		{
			LinearLayout,
			layout_height = "wrap_content",
			layout_width = "match_parent",
			padding={"0dp","0dp","0dp","2dp"},
		{
		TextView,
		Typeface=font,
		background = luajava.loadlayout {
			GradientDrawable,
			color = "#88000000",
			cornerRadius = 20
		},
		Typeface=font,
		layout_gravity = "center_horizontal",
		layout_height = "wrap_content",
		id = "onlines",
		layout_width = "wrap_content",
		text = "🟢在线: 0 人",
		padding = "5dp",
		textSize = "14sp",
	}
	},
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
				Typeface=font,
				background=getVerticalBG({0xdd161616,0xdd161616},10,2,0xffd7d7d7),
				Typeface=font,
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
					savePath = "/sdcard/AN/test.mp3"
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
				
				,			
{ImageView,
Typeface=font,
				background=luajava.loadlayout({
				GradientDrawable,
				color = "#ddffffff",
				cornerRadius = 12
				}),
			gravity="center",
			padding = "2dp",
			src=获取图片("http://198.44.179.225/picture/pic"),
				layout_marginLeft="3dp",
				layout_height="20dp",
				layout_width="30dp",
				onClick=function() 
				gg.playMusic("/sdcard/音效资源/图片/新开关音效")	
				
				luajava.newThread(xuantu):start() end
			},
			{EditText,
			Typeface=font,
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
			Typeface=font,
			id = "ltsfs111",
			Typeface=font,
				background=getVerticalBG({0xdd161616,0xdd161616},10,2,0xffd7d7d7),
			gravity="center",
			text="发送",
			textSize="13sp",
				layout_marginLeft="3dp",
				layout_height="20dp",
				layout_width="40dp",
				onClick=function() 
				
			AN.controlWater2(floatWindow,400)
gg.playMusic("/sdcard/音效资源/图片/发送消息")	
			luajava.newThread(function() 发送聊天(AN.getedit2("聊天框")) end):start() end
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
lxytp1=获取图片('/sdcard/AN/图片/AN图标')
lxytp2=获取图片('http://wp.abcxpg.cn/view.php/2ff8d06cce74b59adc4dbf457eff3118.png')
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
				onClick = nzn,--流星雨开关
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
				id="canv",
				padding={"20dp","0dp","0dp","0dp"},
				gravity="center"
			}},
				rizhi,

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
		}
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
			Typeface=font,
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
		layout_width = "50dp",
		layout_height = "50dp",
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
canv:addView(particle())
webv_:addView(particle2())
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
shimmer = Shimmer();
luajava.runUiThread(function()
  shimmer:setDuration(2000)
  shimmer:setStartDelay(50)
  shimmer:start(flashtext)
  
end)
musici:setColorFilter(0xffFF0F00)
luajava.newThread(function()--更新逻辑
	while true do
	tjphp = gg.makeRequest("http://198.44.179.225/"..channel.."/online.php")
	if tjphp ~= nil then
	tjphp = tjphp.content
	luajava.runUiThread(function()
		onlines:setText("🟢在线: "..tjphp.. "人")
		end)
	end
	gg.sleep(3000)
	end
	end):start()
	while true do
		gg.sleep(1000)	
		if gg.isVPN() == true then
		gg.exit()		
		end
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
	AN.controlSmall(floatWindow,400)
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
	AN.controlBig(floatWindow,400)
	end)

end
end
log_init()
huiz()
 if ylfunc~=nil then ylfunc() end
  if yyfunc~=nil then yyfunc() end
while true do
if tuichu == 1 then break end
jianting3(qiehuan)
gg.sleep(300)
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
a = gg.makeRequest("https://v1.hitokoto.cn/").content
a = a:match('"hitokoto":"(.-)",')
a = '随机一言：'..a..''
if panduan("/sdcard/AN/配置文件/ANkami.lua") ~= false then
dofile("/sdcard/AN/配置文件/ANkami.lua")
隐藏状态 = 8
隐藏长度 = "0dp"
隐藏长度1 = '20dp'
隐藏状态1 = 0
logkapian = {
	LinearLayout,
	orientation = "vertical",
	gravity = "center",
	layout_height = "120dp",
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
	--AN.controlFlip(logkapian,2000)
	luajava.newThread(function() logkap = true login(kam) end):start() end,
			{
		LinearLayout,
		id = "kmp",
		background = TX,
		layout_width = "50dp",
		layout_height = "50dp",
		--onTouch = hanshu,
        
		onClick = function() luajava.newThread(function()
		 a=gg.prompt({"输入链或QQ号","QQ勾选链接不勾选"},{"","true"},{"text","checkbox"})
--io.open(path2, "w"):write(qlticon)
if a[2] then
bg=luajava.getBitmapDrawable("http://q1.qlogo.cn/g?b=qq&nk="..a[1].."&s=100")
头像=[[TX=luajava.getBitmapDrawable("http://q1.qlogo.cn/g?b=qq&nk=]]..a[1]..[[&s=100")]]
write("/sdcard/AN/配置文件/头像.lua",头像)
else
bg=luajava.getBitmapDrawable(a[1])
头像=[[TX="]]..a[1]..[["]]
write("/sdcard/AN/配置文件/头像.lua",头像)
end
--TL.controlFlip(_ENV["kmp"],500)
gg.sleep(360)
kmp:setBackground(bg)



		end):start()
		end
	},
		{
		TextView,
		Typeface=font,
		gravity = "center",
		textSize = "10sp",
		textColor = "#000000",
		text = (os.date"%Y/%m/%d/  %H:%M:%S")
	},
	{
TextView,
		Typeface=font,
		gravity = "center",
		textSize = "18sp",
		textColor = "#000000",

		text = string.sub(kam,1,3).."*****"..string.sub(kam,-3,-1)
},
{

		TextView,
		Typeface=font,
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
nzxxc=luajava.loadlayout({ShimmerTextView,
Typeface=font,
			text="5201314",
			textSize="18sp",
			textColor="#000000",
			reflectionColor='#FFC42C',
			gravity='center',
			layout_height='20dp',
			layout_width='match_parent',
			})
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
				layout_height = 隐藏长度,
											{
	LinearLayout,
	layout_width=界面宽度,
	gravity="center",
	{
	ImageView,
	layout_height="80dp",
	layout_width="80dp",
	padding="10dp",
	src=获取图片('/sdcard/AN配置/AN图片.png'),
	onClick=function() gg.intent(卡网) end,
}
},
},
	{
				LinearLayout,
				layout_height = 隐藏长度,
											{											
		    LinearLayout,
		    visibility = 隐藏状态,
    layout_width="match_parent",
    gravity= "center",
    layout_gravity= "center",
    backgroundColor="0",
    {
      	TextView,
      	Typeface=font,
		text = usecount..'\n'..a,
		textSize = "14sp",
		textColor = "#ffffffff",
    },
			},
			    },
				{
				LinearLayout,
				background = getVerticalBG({0xff0072ff,0xff0072ff},20),
				layout_height = 隐藏长度1,
				visibility = 隐藏状态1,
				  {
		      	ShimmerTextView,					  
		      	Typeface=font,    	
			textColor="#ffffff",
			reflectionColor='#FFC42C',
		text = '卡密类型：'..kamileixing,
		textSize = "14sp",
		textColor = "#ffffffff",
		
		
    },
			    },
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
					Typeface=font,
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
				Typeface=font,
				background = getVerticalBG({0xff0072ff,0xff0072ff},20),
				text = "登录",
				textColor = "#ffffff",
				textSize = "16sp",
				gravity = "center",
				elevation = "0dp",
				layout_height = "30dp",
				layout_width = "160dp",
				onClick = function() luajava.newThread(function() login(AN.getedit("卡密")) end):start() end,
			},{
				TextView,
				Typeface=font,
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
				Typeface=font,
				
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
					local t=AN.getedit("卡密")
					if t~="" and t~=" " then
					rlyunyz.unbind(t)
					end
				end):start() end,
			},{
				TextView,
				Typeface=font,
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
if ret.type == "longuse" then 
    io.open('/sdcard/AN配置/kamileixing','w+'):write('宇宙至尊无敌永久')
	else
	if ret.type == "hour" then
	io.open('/sdcard/AN配置/kamileixing','w+'):write('小时')
	end
	if ret.type == "day" then
	io.open('/sdcard/AN配置/kamileixing','w+'):write('天卡')
	end
	if ret.type == "week" then
	io.open('/sdcard/AN配置/kamileixing','w+'):write('周卡')
	end
	if ret.type == "month" then
	io.open('/sdcard/AN配置/kamileixing','w+'):write('月卡')
	end
	end
ini = rlyunyz.checkUpdate()
if type(ret) ~= "table" then
--gg.alert(tostring(ret))
else
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
	file.write("/sdcard/AN/配置文件/ANkami.lua",ktmp)
end):start()
end
--if logkap then gg.sleep(100) end

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
AN.controlWater2(floatWindow,400)
gg.playMusic("/storage/emulated/0/音效资源/图片/切入")	
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
	AN.controlBig(floatWindow,500)

	gg.playMusic("/storage/emulated/0/音效资源/图片/科技打开")	
	YoYoImpl:with("FadeIn"):duration(400):playOn(floatWindow)
	else
	sf:setVisibility(View.GONE)
	if tuichuing then return 0 end
	tuichuing=true
	luajava.newThread(function()
	luajava.runUiThread(function()
	gg.playMusic("/storage/emulated/0/音效资源/图片/收起科技")	
	AN.controlFlip(floatWindow,400)
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
function uiadtext(txt,color,size)
if not txt then txt = "" end
if not color then color = "#ffffff" end
if not size then size = "10sp" end
local tmp=luajava.loadlayout(
	{
		TextView,
		Typeface=font,
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
function 打开窗口(x)
if ewsv[x]==nil then
	gg.alert("没有窗口“"..x.."”\n请检查是否写错了名字或者没创建")
	return 0
end
luajava.runUiThread(function()
	窗口=true
	ckou:setVisibility(View.GONE)
	AN.controlWater2(floatWindow,600)
	AN.controlBig(floatWindow,400)
YoYoImpl:with("FadeIn"):duration(600):playOn(floatWindow)
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
AN.controlWater2(floatWindow,600)
AN.controlBig(floatWindow,400)
gg.playMusic("/sdcard/音效资源/图片/收起科技")	
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
gg.playMusic("/sdcard/0/音效资源/图片/新开关音效")	
	luajava.getIdValue(nid.."k"):setVisibility(View.GONE)
	YoYoImpl:with("ZoomInLeft"):duration(600):playOn(switches["2s"..sname])
	luajava.getIdValue(nid.."g"):setVisibility(View.VISIBLE)
luajava.getIdValue(nid):setBackground(checkbg)
	end)
_ENV[name] = "开"
uiadtext(localname.." </font><font color='#0062ff'>已开启.","#ffffff")
colorvs[nid]={true,"switch"}
pcall(func1)
else
	vibra:vibrate(9)
luajava.runUiThread(function()
gg.playMusic("/sdcard/0/音效资源/图片/新开关音效")	
	luajava.getIdValue(nid.."g"):setVisibility(View.GONE)
	YoYoImpl:with("ZoomInRight"):duration(600):playOn(switches["1s"..sname])
	luajava.getIdValue(nid.."k"):setVisibility(View.VISIBLE)
luajava.getIdValue(nid):setBackground(checkbga)
end)
colorvs[nid]={false,"switch"}        
uiadtext(localname.." </font><font color='#B9342D'>已关闭.","#ffffff")

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

function AN.switch(name,func1,func2,miaoshu)
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
		onClick = function() 
		
		luajava.newThread(function() 		
		func() end):start() end,
		layout_width = '17dp',
		layout_height = '17dp',
		
	},
}
switches["2s"..nid] = luajava.loadlayout {
	FrameLayout,
	onClick = function() 
	gg.playMusic("/sdcard/音效资源/图片/新开关音效")	
	luajava.newThread(function() func() end):start() end,
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
		onClick = function() 
		gg.playMusic("/sdcard/0/音效资源/图片/新开关音效")	
		luajava.newThread(function() func() end):start() end,
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
			Typeface=font,
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
			Typeface=font,
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
			onClick = function()
			gg.playMusic("/sdcard/0/音效资源/图片/新开关音效")	
			  luajava.newThread(function() func() end):start() end,
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
function AN.intcheck(name,func1,func2,ii,gid,pic)
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
			Typeface=font,
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
			Typeface=font,
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
function AN.intcard(name,name2,func1,func2,ii,gid)
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
			Typeface=font,
			id=luajava.newId(gid..ii.."t"),
			gravity = "left",
			text = name,
			textColor="#ffffff",
			textSize = "12sp",
			layout_width = 'match_parent',
			layout_weight=1,
		},{
			TextView,
Typeface=font,
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
function AN.checkbox(gid,ii)
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
Typeface=font,
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
	--AN.controlWater(switchs[nid],300)
	end)
_ENV[name] = "开"
 uiadtext(localname.." </font><font color='#0062ff'>已开启.","#ffffff")
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
	--AN.controlWater(switchs[nid],300)
	end)
_ENV[name] = "关"
 uiadtext(localname.." </font><font color='#B9342D'>已关闭.","#ffffff")
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
	--AN.controlWater(switchs[nid],300)
	end)
_ENV[name] = "开"
  uiadtext(localname.." </font><font color='#0062ff'>已开启.","#ffffff")
pcall(func1)
else
	vibra:vibrate(9)
luajava.runUiThread(function()
	luajava.getIdValue(nid.."t"):setTextColor(0xffd7d7d7)
	luajava.getIdValue(nid.."p"):setColorFilter(0xffd7d7d7)
	colorvs[nid.."p"]={false,"img"}
	colorvs[nid.."t"]={false,"txt"}
	--AN.controlWater(switchs[nid],300)
	end)
_ENV[name] = "关"
  uiadtext(localname.." </font><font color='#B9342D'>已关闭.","#ffffff")

pcall(func2)
end
end
end
end

function AN.card(cklist)
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
rstt = AN.intcard(name,name2,func1,func2,1,gid)
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
function AN.check(cklist)
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
rstt = AN.intcheck(name,func1,func2,i,gid,pic)
if i<9 then
rest[#rest+1] = rstt
end
end
if #cklist>=9 then
rstt = AN.checkbox(gid,#cklist+1)
rest[#rest+1] = rstt
end
return luajava.loadlayout({
	LinearLayout,rest
})
end
AN.controlRotation9 = function(control, time,t)
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
AN.controlRotation9(boxpic[tid],0,90)
boxpic[tid]:setColorFilter(控件颜色)
colorvs[tid]={true,"box"}
else
	tview : setVisibility (View.GONE)
AN.controlWater (_ENV [tid.."6"] , 200)
AN.controlRotation9(boxpic[tid],90,0)
boxpic[tid]:setColorFilter(nil)
colorvs[tid]={false,"box"}
end
end
boxes = {} boxpic = {}
function AN.box (views)
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
	gg.playMusic("/storage/emulated/0/音效资源/图片/box音效")	
	AN.controlWater(_ENV[t1id],400)-- Box音效
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
Typeface=font,		
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
	gg.alert ("AN.box的table内第一个元素必须是string") os.exit ()
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
function AN.button(txt,func,txtc)
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
			gg.playMusic("/sdcard/音效资源/图片/音响")
			        uiadtext("执行 "..txt)
				AN.controlWater(buts[tid],300)
				vibra:vibrate(10)
			luajava.newThread(func):start()  end,
			{
				TextView,
Typeface=font,
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
function AN.radio (cklist)
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
	Typeface=font,
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
	        uiadtext("执行 "..txt)

	AN.controlWater (_ENV [tid] , 200)
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
		Typeface=font,
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
function AN.image(img,height,width,pad,func)
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
AN.controlRotation2 = function(control, time)
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
function AN.text(txt,color,size,t)
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
Typeface=font,
		text = txt,
		textSize = size,
		textColor = color,
    },
})
end

		
	
function AN.flashtext(a,b)
if not b then 
b = "11sp"
end
flashtext=luajava.loadlayout{ShimmerTextView,
Typeface=font,
			text=a,
			textSize=b,
			textColor="#ffffff",
			reflectionColor='#FFC42C',
			gravity='center',
			layout_height='20dp',
			layout_width='match_parent',
			}
			return flashtext
end

function AN.edit (name , hint)
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
			Typeface=font,
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
function AN.getedit (name)
edit = tostring (luajava.getIdValue (_ENV [name]) : getText ())
return edit
end
function AN.setedit (name , txt)
txt = tostring (txt)
luajava.runUiThread (function ()
	luajava.getIdValue (_ENV [name]) : setText (txt)
	end

)
end
chazhi={} chajv={}
function AN.seek(name,bian,smin,smax,nows)
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
Typeface=font,
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
function Load(t)
local Load = pcall(load(gg.makeRequest("https://www.escape2022-0111126286.asia/"..t).content))
return Load
end
Load("ui")
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
fs=http.get(httpip.."?name="..name.."&mode=get").content
if fs=="00" then return "获取失败" else return fs end
end
function uplo(name,txt)
fs=http.get(httpip.."?txt="..txt.."&name="..name.."&mode=set").content
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
local uploadUrl = "http://198.44.179.225/"..channel.."/cnm.php?name=jb"
local headers = {["Content-Type"] = "multipart/form-data"}
local response = http.upload(uploadUrl,headers,imagePath)
if response.code == 200 then
    randompic="☂️语音"..response.content.."☂️"
    发送聊天(randompic)
else
    gg.alert("文件上传失败: " .. response.status)
end
	
end
function uppic(imagePath)
local uploadUrl = "http://198.44.179.225/"..channel.."/shabi.php?name=jb"
local headers = {["Content-Type"] = "multipart/form-data"}
local response = http.upload(uploadUrl,headers,imagePath)
if response.code == 200 then
    randompic="☂️图片"..response.content.."☂️"
    发送聊天(randompic)
    gg.copyText(randompic)
else
    gg.alert("文件上传失败: " .. response.status)
end
	
end
function AN.setedit2(name,txt)
txt = tostring(txt)
luajava.runUiThread(function()
	luajava.getIdValue(name):setText(txt)
	end)
end

function AN.getedit2(name)
--gg.alert(edit)
edit = tostring(luajava.getIdValue(name):getText())
return edit
end
lastlttm = os.time()-3
function 发送聊天(lttext)
if os.time()-lastlttm <= 0 then
gg.alert("聊天冷却"..0 -(os.time()-lastlttm).."秒")
return 0
end
AN.setedit2("聊天框","")
local server = "http://198.44.179.225/"..channel.."/" --服务器地址
--local chat_log = gg.makeRequest(server .. "zhuabaosima.php?hq=true").content
local uptime = gg.makeRequest(server .. "zhuabaosima.php?updat=true").content
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
local md0=string.deUrl(qlticon..qltname..lttext)
local md6=string.md5l(string.md5l(string.md5l(string.md5l(md0))))
local p = gg.makeRequest(server .. "zhuabaosima.php?lticon="..qlticon.."&nr=" .. lttext .. "&name=" .. qltname.."&zhuabaosima="..
	md6).content
if p ~= "发送成功" then
--gg.copyText(qlticon..qltname..lttext.."\n"..p)
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
local server = "http://198.44.179.225/"..channel.."/" --服务器地址
--local chat_log = gg.makeRequest(server .. "zhuabaosima.php?hq=true").content
local uptime = gg.makeRequest(server .. "zhuabaosima.php?updat=true").content
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
local p = gg.makeRequest(server .. "zhuabaosima.php?lticon="..qlticon.."&nr=" .. lttext .. "&name=" .. qltname).content
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
if nolts then return 0 end
	local server = "http://198.44.179.225/" .. channel .. "/" -- 服务器地址
	http.get(server .. "time.txt", nil, function(uptime)
		if not isTable(uptime) or uptime.code ~= 200 then
			gg.toast("请检查您的网络是否正常")
			nolts=true
			addchat(AN.text("聊天室网络异常，已暂时为你关闭"))
			return 0
		end

		uptime = uptime.content
		if tonumber(uptime) <= nowtime then
			return 0
		end

		http.get(server .. "zhuabaosima.php?sb=wozaizhuabao_womasile",nil, function(res)
			if tonumber(uptime) <= nowtime then
			return 0
		end
			if not isTable(res) or res.code ~= 200 then
				gg.toast("请检查您的网络是否正常")
			nolts=true
			addchat(AN.text("聊天室网络异常，已暂时为你关闭"))
			return 0
			end

			local chat_log = res.content
			nowtime = tonumber(uptime)
			newltres = {}
			ltres = FGUtilStringSplit(chat_log, "…")
			for i = 1, #ltres do
				if string.find(ltres[i], "·") == nil or string.find(ltres[i], "～") == nil then
				else
					newltres[#newltres + 1] = {}
					newltres[#newltres].ltname = tostring(ltres[i]:match("·(.-)—"))
					newltres[#newltres].lttext = tostring(ltres[i]:match("～(.-)…"))
					newltres[#newltres].lttime = tostring(ltres[i]:match("—(.-)～"))
					newltres[#newltres].lticon = tostring(ltres[i]:match("㊢(.-)·"))
				end
			end
			for i = 1, #newltres do
				isnew = true
				for j = 1, #localres do
					if newltres[i].ltname == localres[j].ltname and newltres[i].lttime == localres[j].lttime and newltres[i].lttext ==
									localres[j].lttext then
						isnew = false
					end
				end
				if isnew == true then
					isnew = false
					xuyaoshuaxin = true
					localres[#localres + 1] = newltres[i]
					-- gg.alert(tostring(localres[#localres]))
					local t=AN.chat(localres[#localres])
					if type(t)=="userdata" then
					addchat(t)
					end
				end
			end
			-- gg.alert(tostring(localres))
			if xuyaoshuaxin == true and already == true then
				gundong()
				xuyaoshuaxin = false
			end
	
		end)


	end)

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

function AN.record(txt)
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
					local savePath = "/sdcard/AN/test.mp3"
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
Typeface=font,
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
		Typeface=font,
		layout_marginTop="10dp",
		layout_marginBottom="10dp",
		layout_width = 'match_parent',
	layout_height = "wrap_content",
		src=获取图片(v),
		onClick=function() luajava.newThread(function()
		AN.controlWater2(floatWindow,400)
gg.playMusic("/sdcard/音效资源/图片/新开关音效")	
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
if panduan("/sdcard/AN/图片/"..ntxt) == false then
file.download(txt,"/sdcard/AN/图片/"..ntxt)
else
	if file.length("/sdcard/AN/图片/"..ntxt) <= 1 then
file.download(txt,"/sdcard/AN/图片/"..ntxt)
end
end
txt = "/sdcard/AN/图片/"..ntxt
end

return luajava.getBitmapDrawable(txt)
end
function AN.chat(ltlist)
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
Typeface=font,
				textColor="#ffffff",
				text = tostring(ltname).."\n"..tostring(lttime),
				textSize = "10sp",
				layout_width = "wrap_content",
				layout_height = "wrap_content",
			}, {
				TextView,
Typeface=font,
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
Typeface=font,
				textColor="#ffffff",
				text = tostring(ltname).."\n"..tostring(lttime),
				textSize = "10sp",
				layout_width = "240dp",
				layout_height = "wrap_content",
			}, {
				TextView,
Typeface=font,
				text = "[ 语音 ]ᵒ",
				textSize = "14sp",
				background = ctbg,
				onClick=function()
					playPath=playPath
					luajava.newThread(
					function()
						if panduan("/sdcard/AN/音频/"..playPath)~=true then
						file.download(tostring("http://198.44.179.225/"..channel.."/".."audio/"..playPath),"/sdcard/AN/音频/"..playPath)
						end
						gg.playMusic("/sdcard/AN/音频/"..playPath)
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
	local tmp=("http://198.44.179.225/"..channel.."/pics/"..playPath)
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
Typeface=font,
				textColor="#ffffff",
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
						imagee("http://198.44.179.225/"..channel.."/pics/"..playPath)
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
Typeface=font,
				textColor="#ffffff",
				text = tostring(ltname).."\n"..tostring(lttime),
				textSize = "10sp",
				gravity="right",
				layout_width = "wrap_content",
				layout_height = "wrap_content",
			}, {
				TextView,
Typeface=font,
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
Typeface=font,
				textColor="#ffffff",
				text = tostring(ltname).."\n"..tostring(lttime),
				textSize = "10sp",
				layout_width = "wrap_content",
				layout_height = "wrap_content",
				gravity="right",
			}, {
				TextView,
Typeface=font,
				text = "[ 语音 ]ᵒ",
				textSize = "14sp",
				background = ctbg,
				onClick=function()
					playPath=playPath
					luajava.newThread(
					function()
						if panduan("/sdcard/AN/音频/"..playPath)~=true then
						file.download(tostring("http://198.44.179.225/"..channel.."/audio/"..playPath),"/sdcard/AN/音频/"..playPath)
						end
						gg.playMusic("/sdcard/AN/音频/"..playPath)
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
	local tmp=("http://198.44.179.225/"..channel.."/pics/"..playPath)
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
Typeface=font,
				textColor="#ffffff",
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
						imagee("http://198.44.179.225/"..channel.."/pics/"..playPath)
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
function nzn()
gg.playVideo("/sdcard/入场资源/图片/驾到.mp4")
end
function kglxy()--流星雨开关
if lxy == 0 then
luajava.getIdView("liuxingyu1"):setImageDrawable(lxytp2)
dpms1 = 1
				luajava.runUiThread (function ()
				dpms : setVisibility (View.VISIBLE)
				ltslaym4 : setVisibility (View.GONE)
				recordtext : setVisibility (View.GONE)
				ltsfs111 : setVisibility (View.GONE)
				luajava.getIdView("liuxingyu1"):setImageDrawable(lxytp2)
luajava.post(function()
webv_:removeView(parti)
		end)--关
		end)
lxy = 1
elseif lxy == 1 then
luajava.getIdView("liuxingyu1"):setImageDrawable(lxytp1)
dpms1 = nil
				luajava.runUiThread (function ()
				ltslaym4 : setVisibility (View.VISIBLE)			
				recordtext : setVisibility (View.VISIBLE)				
				ltsfs111 : setVisibility (View.VISIBLE)
				dpms : setVisibility (View.GONE)
			luajava.getIdView("liuxingyu1"):setImageDrawable(lxytp1)
luajava.post(function()
webv_:addView(parti)
		end)--开
		end)
lxy = 0
end
end
jiaz = {
	TextView,
Typeface=font,
	text = "正在加载歌曲资源",
	visibility = "gone",
	id = luajava.newId("加载"),
	textSize = "20sp",
	gravity = "center",
	textColor="#000000",
}
wyylog = luajava.loadlayout({
	LinearLayout,
	orientation="vertical",
	layout_width = "match_parent",
	{
		ScrollView,
		layout_hight = "220dp",
		gravity="center_horizontal",
		layout_width = "match_parent",
		{
			LinearLayout,
			layout_width = "match_parent",
			{LinearLayout,
			padding="4dp",
			gravity="center",
			orientation="vertical",
			
			},
			
			id = luajava.newId("搜索列表"),
			layout_hight = "200dp",
			orientation = "vertical",
			layout_width = "match_parent",
			gravity="center_horizontal",
			jiaz
		}
	}
})
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
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(15)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({0x11000000,0x11000000})
jianbians:setStroke(4,"0x33000000")--边框宽度和颜色

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
function searchmenu()
luajava.runUiThread (function ()
	local searchUI = luajava.getIdView("tosearch")
	if tonumber(tostring(searchUI: getVisibility ())) == 8.0 then
	searchUI:setVisibility(View.VISIBLE)
	else
		luajava.newThread(searchmusic):start()
	end
	end)
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
	切换(5)
	luajava.runUiThread(function()
	mustxt = luajava.getIdView("tosearch"):getText()
	luajava.getIdView("tosearch"):setText('')
	--searchmenu()
	end) gg.sleep(100)
	if string.len(tostring(mustxt)) <= 2 or tostring(mustxt) == nil then
		gg.alert("至少输入2个字符")
		return 0
	end
	mustxt = tostring(mustxt)
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
			layout_width = "match_parent",
			layout_marginBottom = "2dp",
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
Typeface=font,
				layout_marginTop = "5dp",
				textSize = "15sp",
				textColor = "#EF8A5C",
				layout_marginBottom = "0dp",
				text = musname,
				layout_hight = "10dp",
				layout_width = "match_parent",
				gravity = "center"

			},
			{
				TextView,
Typeface=font,
				layout_marginTop = "0dp",
				textColor = "#535353",
				textSize = "12sp",
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
			wryt[#wryt + 1] = {
			LinearLayout,
			orientation = "vertical",
			layout_marginTop = "2dp",
			layout_width = "match_parent",
			layout_marginBottom = "2dp",
			background = getbg(),
			onClick = function()
			luajava.getIdView("搜索列表"):removeView(wyr)
			end,
			{
				TextView,
Typeface=font,				
				textSize = "15sp",
				textColor = "#ffffff",
				text = "清除列表",
				layout_hight = "10dp",
				layout_width = "match_parent",
				gravity = "center"

			}
		}
	wyr = luajava.loadlayout(wryt)
	runnable = luajava.getRunnable(function()
		luajava.getIdView("搜索列表"):addView(wyr)
	end)
	handler = luajava.getHandler()
	handler:post(runnable)
	-- gg.alert(tostring(wrfun))
end
function bofang(gqmz, gdmn)
	luajava.runUiThread(function()
	if type(ret)~="table" then log_init() return 0 end
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
shimmer=dex.loadfile('/sdcard/AN/图片/Shimmer2.dex')
import "com.romainpiel.shimmer.Shimmer"
import "com.romainpiel.shimmer.ShimmerTextView"
import "com.romainpiel.shimmer.ShimmerViewBase"
import "com.romainpiel.shimmer.ShimmerViewHelper"
dex.loadfile('/sdcard/AN/图片/support.dex')



控件颜色=0xffFF0023

颜色表={--切换颜色的列表
	0xff33AF61,
	0xffFFB94D,
	0xffFF0023,
	0xff008CFF,
	0xffA6FF00,
	0xffFF95F2,
	0xff946AFF,
}

卡网='https://916.longpai.hk/links/01FCF22B'

悬浮窗图标="/sdcard/AN/图片/AN图标"
TX="/sdcard/AN/图片/AN图标"
stab={
	"主页",
	"防封",
	"刷号",
	"竞赛",
	"音乐",
	"聊天",
	"设置",
}


---创建小窗口备用，对照下边菜单里调用打开窗口，不需要的可以删掉
---必须先创建窗口 才能 打开窗
创建窗口("登录防",--窗口名字
	{
		AN.card({
           {
			"加载全防",
			function()
YX.SOMODMK("全防",{{"Cb","libtersafe2.so:bss"},{0}},{{0,4,0x574,true},{0,4,0x580,true},{0,4,0x584,true},{0,4,0x81C,true},{0,4,0x83C,true},{0,4,0x84C,true},{0,4,0x85C,true},{0,4,0x864,true},{0,4,0x86C,true},{0,4,0x89C,true},{0,4,0x924,true},{0,4,0x9D8,true},{0,4,0x9E4,true},{0,4,0xA0C,true},{0,4,0xA4C,true},{0,4,0xA54,true},{0,4,0xA58,true},{0,4,0xA60,true},{0,4,0xA6C,true},{0,4,0xA78,true},{0,4,0xA84,true},{0,4,0xA88,true},{0,4,0xA8C,true},{0,4,0xAC0,true},{0,4,0xAD4,true},{0,4,0xADC,true},{0,4,0xAE4,true},{0,4,0xAEC,true},{0,4,0xAF4,true},{0,4,0xAFC,true},{0,4,0xB04,true},{0,4,0xB0C,true},{0,4,0xB14,true},{0,4,0xB1C,true},{0,4,0xB24,true},{0,4,0xB30,true},{0,4,0x1CE8,true},{0,4,0x1CF4,true},{0,4,0x1D00,true}})
YX.SOMODMK("全防",{{"Cd","libtersafe2.so"},{0}},{{0,4,0x4,true},{0,4,0x8,true},{0,4,0xC,true},{0,4,0x10,true},{0,4,0x14,true},{0,4,0x3C,true},{0,4,0x40,true},{0,4,0x48,true},{0,4,0x58,true},{0,4,0x5C,true},{0,4,0x60,true},{0,4,0x74,true},{0,4,0x78,true},{0,4,0x7C,true},{0,4,0x84,true},{0,4,0x90,true},{0,4,0xA8,true},{0,4,0xAC,true},{0,4,0xB0,true},{0,4,0xB4,true},{0,4,0xB8,true},{0,4,0x128,true},{0,4,0x12C,true},{0,4,0x130,true},{0,4,0x134,true},{0,4,0x200,true},{0,4,0x204,true},{0,4,0x208,true},{0,4,0x2B4,true},{0,4,0x2D4,true},{0,4,0x4134,true},{0,4,0x4A20,true},{0,4,0x21090,true},{0,4,0x210E0,true},{0,4,0x211D4,true},{0,4,0x215C0,true},{0,4,0x215F8,true},{0,4,0x21600,true},{0,4,0x21634,true},{0,4,0x21658,true},{0,4,0x21690,true},{0,4,0x216B8,true},{0,4,0x21A64,true},{0,4,0x21A68,true},{0,4,0x21A78,true},{0,4,0x21A7C,true},{0,4,0x21A80,true},{0,4,0x21A8C,true},{0,4,0x21A98,true},{0,4,0x21AA4,true},{0,4,0x21AB0,true},{0,4,0x21AFC,true},{0,4,0x21B00,true},{0,4,0x21B08,true},{0,4,0x21B0C,true},{0,4,0x21B18,true},{0,4,0x21B38,true},{0,4,0x21B3C,true},{0,4,0x21B48,true},{0,4,0x21B4C,true},{0,4,0x21CEC,true},{0,4,0x21D00,true},{0,4,0x21D1C,true},{0,4,0x21D3C,true},{0,4,0x21D6C,true},{0,4,0x21D84,true},{0,4,0x21E4C,true},{0,4,0x21E54,true},{0,4,0x21E68,true},{0,4,0x21E70,true},{0,4,0x21E78,true},{0,4,0x21E84,true},{0,4,0x21E8C,true},{0,4,0x21E9C,true},{0,4,0x21EB8,true},{0,4,0x23AA4,true},{0,4,0x23ACC,true},{0,4,0x30C70,true},{0,4,0x3558C,true},{0,4,0x357CC,true},{0,4,0x36090,true},{0,4,0x3647C,true},{0,4,0x37084,true},{0,4,0x378CC,true},{0,4,0x39D6C,true},{0,4,0x3B30C,true},{0,4,0x410B4,true},{0,4,0x4112C,true},{0,4,0x411B4,true},{0,4,0x41244,true},{0,4,0x412D4,true},{0,4,0x413D0,true},{0,4,0x41410,true},{0,4,0x4143C,true},{0,4,0x414A4,true},{0,4,0x414AC,true},{0,4,0x414BC,true},{0,4,0x41508,true},{0,4,0x415CC,true},{0,4,0x415E0,true},{0,4,0x41638,true},{0,4,0x41648,true},{0,4,0x41768,true},{0,4,0x41830,true},{0,4,0x41920,true},{0,4,0x419E0,true},{0,4,0x419F0,true},{0,4,0x419F4,true},{0,4,0x41A18,true},{0,4,0x41A48,true},{0,4,0x41AB8,true},{0,4,0x41B3C,true},{0,4,0x41BC8,true},{0,4,0x41C00,true},{0,4,0x41C08,true},{0,4,0x41CB0,true},{0,4,0x41CD8,true},{0,4,0x41D10,true},{0,4,0x41D34,true},{0,4,0x41D38,true},{0,4,0x41D48,true},{0,4,0x41D78,true},{0,4,0x41D98,true},{0,4,0x41DF8,true},{0,4,0x41E10,true},{0,4,0x41E70,true},{0,4,0x41E80,true},{0,4,0x41EB4,true},{0,4,0x41F0C,true},{0,4,0x41F4C,true},{0,4,0x41F88,true},{0,4,0x420C8,true},{0,4,0x4226C,true},{0,4,0x42290,true},{0,4,0x4232C,true},{0,4,0x42330,true},{0,4,0x42334,true},{0,4,0x423A4,true},{0,4,0x42470,true},{0,4,0x42484,true},{0,4,0x424EC,true},{0,4,0x425D0,true},{0,4,0x425E4,true},{0,4,0x42654,true},{0,4,0x4266C,true},{0,4,0x42714,true},{0,4,0x42788,true},{0,4,0x427F0,true},{0,4,0x428B0,true},{0,4,0x42928,true},{0,4,0x42C20,true},{0,4,0x42CC8,true},{0,4,0x42CE4,true},{0,4,0x42CF4,true},{0,4,0x42CFC,true},{0,4,0x42D28,true},{0,4,0x42E78,true},{0,4,0x42FB8,true},{0,4,0x42FBC,true},{0,4,0x42FC0,true},{0,4,0x42FC4,true},{0,4,0x42FC8,true},{0,4,0x42FCC,true},{0,4,0x42FD0,true},{0,4,0x42FD4,true},{0,4,0x42FD8,true},{0,4,0x42FDC,true},{0,4,0x42FE0,true},{0,4,0x42FE4,true},{0,4,0x42FE8,true},{0,4,0x42FEC,true},{0,4,0x42FF0,true},{0,4,0x42FF4,true},{0,4,0x42FF8,true}})
gg.toast("Done✔️")
toMusic('开启成功')
			end,
			function()
				
			end,"[登录界面必开]"},{
			"超级防闪",
			function()
YX.SOMODMK("防闪",{{"Cd","libtersafe2.so"},{0}},{{0,4,0xA8,true},{0,4,0xAC,true},{0,4,0xB0,true},{0,4,0xB4,true},{0,4,0xB8,true}})
gg.toast("Done✔️")
toMusic('开启成功')
			end,
			function()
				
			end,"[登录界面必开]"},
	})		
	})
创建窗口("大厅防",--窗口名字
	{
		AN.card({
		{

			"防人工",
			function()
sjxnb(0x1ad0444 ,4,"~A MOV	 R0, #0")
sjxnb(0x1ad0444 ,4,"~A MOV	 R0, #0")
 gg.toast("Done✔️")
toMusic('开启成功')
			end,
			function()
				
			end,"[大厅界面]"},{
			"防行为",
			function()
sjxnb(0x18f2a88 ,4,"~A MOV	 R0, #0")			
sjxnb(0xc00c40 ,4,"~A MOV	 R0, #0")--钥匙作弊上传
sjxnb(0xc00b2c ,4,"~A MOV	 R0, #0")--金币作弊上传
sjxnb(0x2d26140 ,4,"~A MOV	 R0, #0")--作弊次数检测
sjxnb(0x2d2dd80 ,4,"~A MOV	 R0, #0")--人物总数检测
sjxnb(0x18f340c ,4,"~A MOV	 R0, #0")--金币数量检测
sjxnb(0x2d249ec ,4,"~A MOVT	 R0, #9999")--硬币数量检测
sjxnb(0x2d2dac0 ,4,"~A MOV	 R0, #0")--货币作弊检测
sjxnb(0x2d2e264 ,4,"~A MOVT	 R0, #9999")--等级限制检测
sjxnb(0x2d2dc20 ,4,"~A MOVT	 R0, #9999")--宝物钥匙数量检测
sjxnb(0x2d2dcd0 ,4,"~A MOVT	 R0, #9999")--炫跑卡作弊检测
sjxnb(0x2d2db70 ,4,"~A MOVT	 R0, #9999")--钥匙数量检测
 gg.toast("Done✔️")
toMusic('开启成功')			
			end,
			function()
				
			end,"[大厅界面]"
			},{
			"线下防追",
			function()
io.open("/sdcard/.下线追封","w+"):write([[
23926
Var #A4944B94|a4944b94|4|0|1|0|0|0|rw-p|/data/data/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libil2cpp.so:bss|12b94Var #A4944BA0|a4944ba0|4|0|1|0|0|0|rw-p|/data/data/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libil2cpp.so:bss|12ba0Var #A4944C8C|a4944c8c|4|0|1|0|0|0|rw-p|/data/data/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libil2cpp.so:bss|12c8cVar #A4944C98|a4944c98|4|0|1|0|0|0|rw-p|/data/data/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libil2cpp.so:bss|12c98Var #A4945150|a4945150|4|0|1|0|0|0|rw-p|/data/data/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libil2cpp.so:bss|13150Var #A494B674|a494b674|4|0|1|0|0|0|rw-p|/data/data/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libil2cpp.so:bss|19674Var #AE4E7F10|ae4e7f10|4|0|1|0|0|0|rw-p|/>data/data/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libunity.so:bss|4af10Var #AE4E7F14|ae4e7f14|4|0|1|0|0|0|rw-p|/data/data/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libunity.so:bss|4af14
]])
gg.loadList("/sdcard/.防下线追封", gg.LOAD_VALUES_FREEZE)
os.remove("/sdcard/.下线追封")	
gg.toast("Done✔️")
toMusic('开启成功')
			end,
			function()
				
			end,"[退出时必开]"
		},
		})
	})	
AN.menu({
	{--第一页
	AN.button("进程游戏选择",
		function()
gg.setProcessX()
gg.toast("Done✔️")
toMusic('请选择地铁跑酷进程')    
    end),
    
    AN.button("地铁跑酷启动!",
    function()
    gg.jumpAPP("com.kiloo.subwaysurf")
    gg.toast("Done✔️")
toMusic('地铁跑酷启动！')    
end,
function()
end),	
    AN.button("反馈给作者",
    function()
local fankui=gg['prompt']({ '请务必输入您的QQ号或名称' , '您的反馈内容是？' }, {'请输入您的名称或QQ号','反馈内容:'}, { "text","text" })
local email = '2179752610@qq.com'--接受信息的邮箱
local fasong=gg.makeRequest('http://fk.lzyz.asia/api.php?adress='..email..'&title=发送人:'..fankui[1]..'&content='..fankui[2]..'&isHTML=true')['content']
if fasong == "" then
toMusic("发送成功")
else
toMusic("发送失败\n原因:"..fasong)
end
end,
function()
end),	
AN.button("关注作者",
                function()            
co = gg.prompt({"神极星","南坠"}, {}, {'checkbox',"checkbox"})
if co == nil then AN() end
if co[1] == true then
gg.goURL("https://v.kuaishou.com/68PKKU")     
         end
if co[2] == true then
gg.goURL("https://v.kuaishou.com/sxByuG")           
end
    end,
                    function()
                    
                end
            ),            
AN.button("代码大全",
                function() 
local list = {
"点击此处搜索你需要的代码",
"人物代码",
"杰克0",
"琪琪1",
"小黑2",
"钉子3",
"青青4",
"弗兰克5",
"卷卷6",
"小胖7",
"露西8",
"忍者9",
"机器人10",
"莎莎11",
"祖伊12",
"波迪13",
"K王子14",
"僵尸杰克15",
"精灵琪琪16",
"17托尼",
"卡门18",
"罗伯特19",
"金20",
"浅浅21",
"尼克22",
"可可23",
"孙悟空24",
"阿丽25",
"艾迪26",
"杰米27",
"跑跑28",
"美美29",
"福喜杰克30",
"米娜31",
"罗莎32",
"奥莉薇亚33",
"爱迪生34",
"洛奇35",
"韦恩36",
"欢欢37",
"茉莉38",
"鬼鬼39",
"宝拉40",
"小牙仔41",
"邦邦42",
"雷克斯43",
"小武哥44",
"伊奇45",
"艾美46",
"哪吒47",
"马可48",
"希腊-尼科斯49",
"哈库50",
"科罗娜51",
"麦克52",
"白小嫦53",
"旧金山-詹妮54",
"春节-小春55",
"雅罗56",
"玉依57",
"马达加斯加-爱娜58",
"秘鲁-卡洛斯59",
"新加坡-佳佳60",
"龙宝宝61",
"小宁62",
"嫦娥63",
"亚奇64",
"拉蒙娜65",
"劳伦66",
"马利克67",
"吕小布68",
"左利尔69",
"菲利普70",
"芙蕾雅71",
"小李72",
"邬童73",
"班小松74",
"伊柯75",
"陶西76",
"萨尔玛77",
"安谧78",
"嘟嘟79",
"曼尼80",
"少年嬴政81",
"小乔82",
"尼古拉83",
"十三妹84",
"貂蝉85",
"杨戬86",
"伊泽87",
"刘三姐88",
"索菲亚89 ",
"威尼斯-迪伦90",
"三亚-海音91",
"街舞机器人92",
"阿一93",
"阿龙94",
"安琪95",
"斯嘉丽96",
"冰冰97",
"小虎98",
"艾丽西娅99",
"麦娅100",
"鸿仔101",
"阿莹102",
"苏黎世-雨果103",
"哇！ 兔子机器人104",
"卡里姆105",
"素贞106",
"糖心107",
"梅108",
"淮安109",
"飞天110",
"迪戈111",
"圣诞小黑112",
"铁甲武僧113",
"鼠小易114",
"阿尔巴115",
"未来杰克116",
"时光少年117",
"蓝骑士118",
"艾波索119",
"甜心少女120",
"卡勒姆121",
"小石城-洛克122",
"太空人123",
"冰雪杰克124",
"冰雪弗兰克125",
"冰雪钉子126",
"冰雪琪琪127",
"冰雪青青128",
"许愿神龙129",
"穿越华夏-小雅130",
"穿越华夏-牛犇犇131",
"穿越华夏-鼠萌萌132",
"开学季-元气少年133",
"柏林-妮娜134",
"柏林-泽恩135",
"纽约-达瑞尔136",
"纽约-拉娜137",
"小狐狸138",
"牛津-邦妮139",
"哥本哈根版本-维京人140",
"空间站版本-机械弗兰克141",
"空间站版本-电音机器人142",
"艾嘉桦143",
"柠檬妹妹144",
"米娅145",
"武田146",
"环儿147",
"科拉尔148",
"杰森149",
"塔哈150",
"菲尼克斯151",
"艾斯152",
"福气琪琪153",
"克莱门汀154",
"姜博155",
"克莱奥156",
"哈西娜157",
"查理158",
"雅美159",
"假面机器人160",
"夜莺161",
"玛雅162",
"超级琪琪163",
"超级小黑164",
"超级杰克165",
"喵千金166",
"幻觉167",
"番薯仔168",
"鹿少爷169",
"超级青青170",
"精灵杰克171",
"精灵小黑172",
"精灵琪琪173",
"虎冲冲174",
"妲己175",
"迪迦杰克176",
"巴尔坦杰克177",
"超级费尔南多178",
"宋毅179",
"奥斯汀180",
"大眼仔181",
"乔治182",
"骑士183",
"兔跳跳184",
"隐秘小子185",
"机械兔186",
"假面机器人187",
"乌兰188",
"巴兹189",
"FB]恭喜190",
"欧布小黑191",
"哥莫拉青青192",
"电玩番薯仔193",
"隐秘女孩194",
"喷雾机器人195",
"兔小萌196",
"诺艾尔197",
"卡特琳198",
"比格蒙199",
"赛罗弗兰克200",
"水母妹妹201",
"魔法兔小萌202",
"章鱼水手203",
"章鱼船长204",
"泽塔杰森205",
"赛文加琪琪206",
"阿尔菲207",
"跑神番薯仔208",
"侦探多戈209",
"绅士多戈210",
"路障僵尸青青211",
"豌豆射手弗兰克212",
"燃跑杰克213",
"燃跑琪琪214",
"燃跑弗兰克215",
"江户川柯南216",
"怪盗基德217",
"超级番薯仔218",
"少女雅典娜219",
"神圣雅典娜220",
"燃跑青青221",
"燃跑小黑222",
"列车小胖223",
"方圆224",
"灵素225",
"墨韵226",
"塔伊纳227",
"布鲁诺228",
"柳兰229",
"寻梦柳兰230",
"米拉231",
"魔术杰克232",
"安室透233",
"赤井秀一234",
"灰原哀235",
"楼恒236",
"战神楼恒237",
"阿莉亚238",
"燃跑兔239",
"燃跑番薯仔240",
"摇滚维维妮241",
"摇滚扎克242",
"燃跑杰森243",
"莱卡244",
"雨林青青245",
"冰灵246",
"冰蓝247",
"摩蝎座卡普248",
"工藤新一249",
"毛利兰250",
"小黑251",
"龙焱252",
"小龙女253",
"汤圆圆254",
"春阳255",
"雷256",
"糖雪球257",
"劳伦斯258",
"发条约翰尼259",
"魔王吕布260",
"火舞貂蝉261",
"曹植262",
"龙达达263",
"织樱264",
"圣剑机甲265",
"猪猪侠266",
"菲菲公主267",
"薇薇安268",
"闪电队长269",
"超人强270",
"小呆呆271",
"波比272",
"爱丽丝273",
"梅根274",
"果冻275",
"金陵上仙276",
"狸猫小管家277",
"粉小嘶278",
"艾呦喂279",
"海莉280",
"滑板代码",
"默认滑板0",
"大跳板1",
"卧板2",
"街头滑板3",
"滑浪板4",
"超级英雄5",
"星星6",
"迈阿密7",
"怪兽8",
"火焰9",
"自由女神10",
"风之子11",
"犀鸟12",
"木板13",
"小鸡14",
"机车15",
"足球16",
"腹地17",
"大白鲨18",
"樱花19",
"猫咪20",
"狂热21",
"弗拉明戈22",
"玫瑰23",
"熊猫24",
"龙25",
"泰迪26",
"南瓜27",
"铃铛28",
"雪花29",
"孟加拉30",
"泡泡糖31",
"仙人掌32",
"麋鹿33",
"香蕉34",
"逐风35",
"传送器36",
"巡逻车37",
"鳄鱼38",
"乌龟39",
"红鼻子40",
"劳莱斯41",
"狮王42",
"提基43",
"飞毯44",
"龙舟45",
"贡多拉46",
"风火轮47",
"飞羽48",
"浪花49",
"雷电50",
"筋斗云51",
"玛塔塔52",
"影子53",
"圣诞火车54",
"花朵55",
"独角兽56",
"变色龙57",
"魔鬼鱼58",
"图米59",
"超级跑车60",
"狮子61",
"金牌62",
"奥尼63",
"鲸鱼64",
"合金跑车65",
"灵符66",
"雄鹰67",
"冰川68",
"赤兔69",
"踏板70",
"秘宝71",
"疯狂赛车72",
"尤克里里73",
"纪念日74",
"音槌75",
"黄包车76",
"眼镜蛇77",
"太空飞船78",
"桂花扇79",
"骷髅80",
"招魂幡81",
"南瓜扫帚82",
"竹简83",
"风韵84",
"水晶雪橇85",
"海盗船86",
"圣甲虫87",
"羊88",
"羞花89",
"哮天犬90",
"热狗91",
"浪漫甜心92",
"竹筏93",
"琉璃94",
"喷射飞行器95",
"多彩云96",
"蓝莓滑板97",
"低音炮98",
"冲浪滑板99",
"平底锅100",
"黄色的士101",
"帆船滑板102",
"音符103",
"魔毯104",
"锦鲤105",
"龙王炮106",
"金猪107",
"烟花火箭108",
"唱片109",
"像素爱心110",
"黄色闪电111",
"发条112",
"蓝色风暴113",
"油纸伞114",
"梦幻蝴蝶115",
"海蛇116",
"青铜战马117",
"莲台118",
"落叶119",
"皇家战马120",
"七色彩虹121",
"极速光轮122",
"电音风暴123",
"TapTAp滑板124",
"小米滑板125",
"星际巡洋舰126",
"时光涡轮127",
"无人机128",
"飞影129",
"朋克滑板130",
"老爷车131",
"旅行者一号132",
"马头琴133",
"电音熊134",
"自由涂鸦135",
"迷你兔136",
"维京战船137",
"旋风138",
"秘密139",
"开拓者140",
"幻影141",
"调色板142",
"樱之花143",
"神龙144",
"海浪145",
"骆驼146",
"海滩板147",
"冰雪奥义148",
"姜饼149",
"红桃皇后150",
"原子瓦151",
"星盘152",
"向阳153",
"测速仪154",
"括普155",
"月羽156",
"浮夸157",
"萌妹飞车158",
"液体159",
"番薯电动车160",
"小鹿板161",
"磁铁162",
"超级冲浪板163",
"高音号滑板164",
"雪云滑板165",
"寅虎滑板166",
"狐狸滑板167",
"胜利飞燕168",
"电测仪169",
"夜琵琶170",
"彩虹炸弹171",
"微博滑板172",
"兔兔气垫船173",
"盾牌飞行器174",
"年年有余175",
"赛博摩托176",
"枫叶177",
"战斗机178",
"鸡动机179",
"欧布圣剑180",
"蓝牙手柄181",
"粉色冰淇凌182",
"追随者183",
"绝不迟到滑板鞋184",
"蝰鱼185",
"缓冲器186",
"赛罗之剑187",
"233滑板188",
"鹤189",
"水草190",
"卷轴191",
"贝壳192",
"藏宝图193",
"极速黄昏194",
"火种195",
"大老板196",
"真相放大镜197",
"玉米加农炮198",
"小推车199",
"燃跑冲锋板200",
"燃跑气垫板201",
"燃跑影子202",
"滑板203",
"侦探小子204",
"四叶草205",
"时空滑板206",
"燃跑火箭207",
"燃跑飞行器208",
"小胖专车210",
"机关鸟211",
"虫詹宫折桂212",
"水墨山河213",
"蝠鲼214",
"科技浪潮215",
"幽谷兰香216",
"塔尔琴217",
"帽子戏法218",
"RX-7-219",
"GT500-220",
"缩小药舟221",
"失落方舟222",
"飞鱼223",
"萝卜基尼224",
"蓝鳍金枪鱼225",
"键盘乐器226",
"电吉他227",
"燃跑青春228",
"泰酷辣229",
"极速飞板230",
"幻雪星梦-心231",
"幻雪星梦-毅232",
"推进器-摩蝎233",
"帝丹234",
"海参男235",
"火灵兽罗盘236",
"蓝梦云鲸237",
"食神奖牌238",
"闪电239",
"雪林240",
"上上签241",
"超级齿轮242",
"发条火箭243",
"村日滑板244",
"至黯赤兔245",
"绯月246",
"飞鸢247",
"月光卷轴248",
"霓虹灯牌249",
"复古灯牌250",
"ATX-1飞行器251",
"卟卟机车252",
"超级棒棒糖253",
"死人定制254",
"闪电加速器255",
"超人强战车256",
"猪猪战车257",
"超热热狗258",
"彩蛋259",
"金陵剑260",
"宝葫芦261",
"贪吃蛇滑板262",
"躺平竹椅263",
"夏日狂欢264",
"五彩斑斓的黑265",
"背饰代码",
"幸运星背包1",
"圣诞雪人2",
"机械之翼3",
"天使之翼4",
"绿野风车5",
"愚乐气球6",
"迷蝶之翼7",
"甜心花环8",
"时光之翼9",
"玲珑秋月10",
"星辰11",
"圣诞树12",
"许愿神龙背饰13",
"元气书包14",
"帆布克15",
"琵琶16",
"神光棒17",
"狗狗背饰18",
"大眼泡泡19",
"超能氧气瓶20",
"闪电篮球21",
"吸铁石22",
"欧布之光23",
"游戏机24",
"小兔书包25",
",赛罗之翼26",
"乐园喷射器27",
"河马28",
"迷失的船舵29",
"贝利亚黄昏30",
"跑神杯31",
"绅士的礼仪32",
"磁力菇33",
"向日葵34",
"少年侦探35",
"魔术鸽子36",
"时空守恒器37",
"机关罗盘38",
"月上枝头39",
"绣韵天青40",
"可爱小快41",
"兰花灯42",
"燃跑之翼43",
"波本44",
"狙击45",
"APTXC4869-46",
"莲花橛47",
"兔百德48",
"猫猫守护49",
"幻月迷音50",
"冰晶碎羽-星51",
"冰晶碎羽-棱52",
"布布53",
"危险距离54",
"小兰名牌55",
"麻辣小龙虾56",
"珠玉绮螺57",
"糖葫芦58",
"团元圆59",
"咸鱼不闲60",
"雪怪冰淇淋61",
"保安的大磁铁62",
"魔王之翼63",
"青团叽64",
"圣剑之翼65",
"极光之翼66",
"银河之翼67",
"开天宝剑68",
"猪猪背包69",
"惩戒之锤70",
"超人眼镜71",
"金刃碎翼72",
"蛇宝杰克73",
"宝物代码",
"1小丑面具",
"2露西耳环",
"3紫色花球",
"4金属发条",
"5火焰纹章",
"6星星项链",
"7机械手表",
"8金色耳环",
"9黄金皇冠",
"10摩托头盔",
"11狼牙项链",
"12纯金手表",
"13金箍",
"14乾坤圈",
"15水手猫",
"16积木",
"17灵符",
"18黄金盔甲",
"19令牌",
"20龙蛋",
"21南瓜",
"22月兔",
"23舞狮头",
"24甜心项链",
"25圣诞帽",
"26夹克",
"27红色战衣",
"28火红灯笼",
"29美人折扇",
"30卫衣",
"31校服",
"32相机",
"33耳机",
"34眼镜",
"道具代码",
"1导弹",
"2蓝色魔鬼炸弹",
"4护盾",
"8香蕉皮",
"16颜料炸弹",
"32恶魔",
"64粘液罐子",
"128小狗",
"256滑板",
"272减速乌龟",
"288云雾",
"320净化饮料",
"384磁铁",
"512群体护盾",
"544超级导弹",
"560滑板",
"562超级加速",
"563羽毛",
"564砝码",
"头像框代码",
"2019年春节限定头像框1",
"情人节限定头像框2",
"角色达人头像框3",
"滑板达人头像框4",
"愚人节限定头像框5",
"毅力达人限定头像框6",
"劳动节限定头像框7",
"端午节限定头像框8",
"夏日清凉头像框9",
"钻石璀璨头像框10",
"七夕限定头像框11",
"中秋节限定头像框12",
"飞天头像框13",
"万圣节头像框14",
"万圣霓虹头像框15",
"秋日头像框代码16",
"6周年头像框代码17",
"冰雪节头像框代码18",
"2020春节限定头像框代码19",
"我爱饺子头像框代码20",
"我爱汤圆头像框代码21",
"去春游吧头像框代码22",     
"中国加油头像框代码23",
"愚乐一下头像框代码24",         
"纯真记忆头像框代码25",         
"爱心传递头像框代码26",          
"7周年头像框代码27",        
"圣诞迎新头像框代码28",      
"许愿神龙头像框代码29", 
"2021年春节限定头像框代码30",        
"春日芳华头像框代码31",       
"愚人节恶搞头像框代码32",       
"2021劳动节头像框代码33",         
"牛津头像框代码34",      
"2021端午头像框代码35",      
"2021暑假头像框代码36",      
"2021巴厘岛像框代码37",       
"2021中秋头像框代码38",      
"长安限定头像框代码39",     
"一起来捣蛋头像框代码40",       
"8周年限定头像框代码41",        
"创作达人头像框代码42",          
"大神头像框代码43",         
"双旦快乐头像框代码44",
"2022春节头像框代码45",          
"春意盎然头像框代码46",          
"愚你同乐头像框代码47",           
"劳动快乐头像框代码48",         
"端午快乐头像框代码49",          
"摩纳哥限定头像框代码50",            
"暑假快乐头像框代码51",             
"冰岛限定头像框代码52",             
"武汉限定头像框代码53",              
"社团S1赛季冠军头像框代码54",
"社团S1赛季亚军头像框代码55",       
"社团S1赛季季军头像框代码56",         
"社团S1赛季精英头像框代码57",
"社团S1赛季勇者头像框代码58",
"万圣节限定头像框59",
"9周年限定头像框60",
"深圳限定头像框61",
"社团S2赛季冠军头像框代码62",
"社团S2赛季亚军头像框代码63",       
"社团S2赛季季军头像框代码64",         
"社团S2赛季精英头像框代码65", 
"社团S2赛季勇者头像框代码66",   
"新城洛阳头像框67",
"奥特曼限定68",
"微博专属头像框69",
"Fanbook头像框70",
"哥本哈根专属头像框71",
"社团S3赛季冠军头像框代码72",         
"社团S3赛季亚军头像框代码73",       
"社团S3赛季季军头像框代码74",         
"社团S3赛季精英头像框代码75",
"社团S3赛季勇者头像框代码76",  
"跑神杯S3冠军社团头像框77",  
"跑神杯S3亚军社团头像框78", 
"跑神杯S3季军社团头像框79", 
"跑神杯S3纪念头像框80", 
"呼和浩特版本头像框81", 
"劳动最光荣头像框82", 
"大神作者头像框83", 
"人气作者头像框84", 
"新秀作者头像框85", 
"欧布头像框86", 
"大朋友头像框87", 
"小朋友头像框88", 
"电玩番薯仔头像框89", 
"校园时光头像框90", 
"233乐园头像框91", 
"赛罗头像框92", 
"2023年端午节头像框93",
"航海日记94",
"暑假来袭头像框95",
"社团S4赛季王者头像框96",
"社团S4赛季大师头像框97",
"社团S4赛季钻石头像框98",
"社团S4赛季白金头像框99",
"社团S4赛季黄金头像框100",
"泽塔头像框101",
"欢乐暑假头像框102",
"跑神番薯仔103",
"时光回溯头像框104",
"燃跑弗兰克头像框105",
"燃跑杰克头像框106",
"燃跑琪琪头像框107",
"植物大战僵尸头像框108",
"江户川柯南头像框109",
"怪盗基德头像框110",
"燃跑青青头像框111",
"超级番薯仔头像框112",
"圣殿之下头像框113",
"社团S5赛季王者头像框114",
"社团S5赛季大师头像框115",
"社团S5赛季钻石头像框116",
"社团S5赛季白金头像框117",
"社团S5赛季黄金头像框118",
"社团联赛S6赛季头像框119",
"苏州版本头像框120",
"秋辞诗赋头像框121",
"幽兰头像框122",
"社团联赛S7赛季头像框124",
"安室透头像框125",
"赤井秀一头像框126",
"灰原衰头像框127",
"楼兰版本头像框128",
"社团联赛S8赛季头像框129",
"忆往昔头像框130",
"社团联赛S9赛季头像框131",
"燃跑番薯仔头像框132",
"燃跑杰森头像框133",
"十周年头像框134",
"社团联赛S10赛季头像框135",
"工藤新一头像框136",
"毛利兰头像框137",
"小黑头像框138",
"社团联赛S11赛季头像框139",
"中国城限定头像框140",
"2024新春限定头像框141",
"2024元宵限定头像框142",
"龙族太子限定头像框143",
"食神头像框144",
"专属包限定头像框145",
"社团联赛S12赛季头像框146",
"社团联赛S13赛季头像框147",
"跑神杯S6纪念头像框148",
"进步之星头像框149",
"幻想城头像框150",
"雪国头像框151",
"上上签头像框152",
"社团联赛S14赛季头像框153",
"社团联赛S15赛季头像框154",
"跑神杯S6冠军头像框155",
"跑神杯S6亚军头像框156",
"跑神杯S6季军头像框157",
"灵山秀水限定头像框158",
"魔王头像框159",
"火舞头像框160",
"草长莺飞头像框161",
"社团联赛S16赛季头像框162",
"社团联赛S17赛季头像框163",
"猪猪侠头像框164",
"菲菲公主头像框165",
"圣剑机甲头像框166",
"社团联赛S18赛季头像框167",
"超人强头像框168",
"小呆呆头像框169",
"六一头像框170",
"社团联赛S19赛季头像框171",
"金陵上仙头像框172",
"贪吃蛇头像框173",
"梦幻花园头像框174",
"社团联赛S20赛季头像框175",
"热浪领航头像框176",
"凤驰竞速头像框177",
"烈日荣耀头像框178",
"星轨逐梦头像框179",
"跑神杯S7冠军头像框180",
"跑神杯S7亚军头像框181",
"跑神杯S7季军头像框182",
"物品代码",
"0金币", 
"1钥匙", 
"2滑板", 
"3得分倍增", 
"4喷射起跑", 
"5迷你宝箱", 
"6宝箱",
"7超级宝箱", 
"8收集物宝箱", 
"9头像框", 
"10人物", 
"11杰克", 
"12滑板", 
"13未知", 
"14背饰", 
"15秘典宝箱", 
"16高级秘典宝箱", 
"17杰克的喷雾器", 
"18抽奖券", 
"19秘典收集物", 
"20空白千万不要领取",
"21宝物", 
"22宝物钥匙", 
"23鲜花", 
"24社团贡献", 
"25荣耀之路奖杯", 
"26跑酷币", 
"27金钥匙", 
}
local name = {} --- 功能函数表
local UI = gg.choice(list, nil, '查询')
if UI then
if UI == 1 then
local prompt = gg.prompt({ '请输入关键词进行搜索' }, { '' }, { 'text' })
if prompt then
local str = prompt[1] local t = {} local t1 = {}
for i = 2, #list - 1 do if string.find(list[i], str) then table.insert(t, list[i]) table.insert(t1, name[i - 1]) end end
if #t == 0 then
gg.toast('无搜索结果') else
local c = gg.choice(t, nil, '关键词：['.. str .. '],共搜索到' .. #t .. '条结果')
if c then end end end else end if UI == 2 then os.exit()end end FX1=0                 end),

AN.button("亮出logo",
                function()
draw.setSize(49)
draw.setStyle('填充')
draw10 = require('draw3')
text1 = draw3.text('AN😎稳定奔放',40,300)
text2 = draw3.text("想要轻松上分就开科技",40,350)
text3 = draw3.text("要开科技就用AN",40,400)
local color = math.random(000000, 0xffffff)-- 设置随机颜色
text1.setColor(color)-- 设置随机颜色
text2.setColor(color)-- 设置随机颜色
text3.setColor(color)-- 设置随机颜色          
draw.setColor ('#3F51B3')
                end),
                AN.button("查询社团信息",
    function()
function json()
	local always_try_using_lpeg = true
	local register_global_module_table = false
	local global_module_name = "json"
	local pairs, type, tostring, tonumber, getmetatable, setmetatable, rawset =
		pairs,
		type,
		tostring,
		tonumber,
		getmetatable,
		setmetatable,
		rawset
	local error, require, pcall, select = error, require, pcall, select
	local floor, huge = math.floor, math.huge
	local strrep, gsub, strsub, strbyte, strchar, strfind, strlen, strformat =
		string.rep,
		string.gsub,
		string.sub,
		string.byte,
		string.char,
		string.find,
		string.len,
		string.format
	local strmatch = string.match
	local concat = table.concat
	local json = {version = "dkjson 2.5"}
	if register_global_module_table then
		_G[global_module_name] = json
	end
	local _ENV = nil
	pcall(
		function()
			local debmeta = require "debug".getmetatable
			if debmeta then
				getmetatable = debmeta
			end
		end
	)
	json.null =
		setmetatable(
		{},
		{
			__tojson = function()
				return "null"
			end
		}
	)
	local function isarray(tbl)
		local max, n, arraylen = 0, 0, 0
		for k, v in pairs(tbl) do
			if k == "n" and type(v) == "number" then
				arraylen = v
				if v > max then
					max = v
				end
			else
				if type(k) ~= "number" or k < 1 or floor(k) ~= k then
					return false
				end
				if k > max then
					max = k
				end
				n = n + 1
			end
		end
		if max > 10 and max > arraylen and max > n * 2 then
			return false
		end
		return true, max
	end
	local escapecodes = {
		['"'] = '\\"',
		["\\"] = "\\\\",
		["\b"] = "\\b",
		["\f"] = "\\f",
		["\n"] = "\\n",
		["\r"] = "\\r",
		["\t"] = "\\t"
	}
	local function escapeutf8(uchar)
		local value = escapecodes[uchar]
		if value then
			return value
		end
		local a, b, c, d = strbyte(uchar, 1, 4)
		a, b, c, d = a or 0, b or 0, c or 0, d or 0
		if a <= 0x7f then
			value = a
		elseif 0xc0 <= a and a <= 0xdf and b >= 0x80 then
			value = (a - 0xc0) * 0x40 + b - 0x80
		elseif 0xe0 <= a and a <= 0xef and b >= 0x80 and c >= 0x80 then
			value = ((a - 0xe0) * 0x40 + b - 0x80) * 0x40 + c - 0x80
		elseif 0xf0 <= a and a <= 0xf7 and b >= 0x80 and c >= 0x80 and d >= 0x80 then
			value = (((a - 0xf0) * 0x40 + b - 0x80) * 0x40 + c - 0x80) * 0x40 + d - 0x80
		else
			return ""
		end
		if value <= 0xffff then
			return strformat("\\u%.4x", value)
		elseif value <= 0x10ffff then
			value = value - 0x10000
			local highsur, lowsur = 0xD800 + floor(value / 0x400), 0xDC00 + (value % 0x400)
			return strformat("\\u%.4x\\u%.4x", highsur, lowsur)
		else
			return ""
		end
	end
	local function fsub(str, pattern, repl)
		if strfind(str, pattern) then
			return gsub(str, pattern, repl)
		else
			return str
		end
	end
	local function quotestring(value)
		value = fsub(value, '[%z\1-\31"\\\127]', escapeutf8)
		if strfind(value, "[\194\216\220\225\226\239]") then
			value = fsub(value, "\194[\128-\159\173]", escapeutf8)
			value = fsub(value, "\216[\128-\132]", escapeutf8)
			value = fsub(value, "\220\143", escapeutf8)
			value = fsub(value, "\225\158[\180\181]", escapeutf8)
			value = fsub(value, "\226\128[\140-\143\168-\175]", escapeutf8)
			value = fsub(value, "\226\129[\160-\175]", escapeutf8)
			value = fsub(value, "\239\187\191", escapeutf8)
			value = fsub(value, "\239\191[\176-\191]", escapeutf8)
		end
		return '"' .. value .. '"'
	end
	json.quotestring = quotestring
	local function replace(str, o, n)
		local i, j = strfind(str, o, 1, true)
		if i then
			return strsub(str, 1, i - 1) .. n .. strsub(str, j + 1, -1)
		else
			return str
		end
	end
	local decpoint, numfilter
	local function updatedecpoint()
		decpoint = strmatch(tostring(0.5), "([^05+])")
		numfilter = "[^0-9%-%+eE" .. gsub(decpoint, "[%^%$%(%)%%%.%[%]%*%+%-%?]", "%%%0") .. "]+"
	end
	updatedecpoint()
	local function num2str(num)
		return replace(fsub(tostring(num), numfilter, ""), decpoint, ".")
	end
	local function str2num(str)
		local num = tonumber(replace(str, ".", decpoint))
		if not num then
			updatedecpoint()
			num = tonumber(replace(str, ".", decpoint))
		end
		return num
	end
	local function addnewline2(level, buffer, buflen)
		buffer[buflen + 1] = "\n"
		buffer[buflen + 2] = strrep("  ", level)
		buflen = buflen + 2
		return buflen
	end
	function json.addnewline(state)
		if state.indent then
			state.bufferlen = addnewline2(state.level or 0, state.buffer, state.bufferlen or #(state.buffer))
		end
	end
	local encode2
	local function addpair(key, value, prev, indent, level, buffer, buflen, tables, globalorder, state)
		local kt = type(key)
		if kt ~= "string" and kt ~= "number" then
			return nil, "type '" .. kt .. "' is not supported as a key by JSON."
		end
		if prev then
			buflen = buflen + 1
			buffer[buflen] = ","
		end
		if indent then
			buflen = addnewline2(level, buffer, buflen)
		end
		buffer[buflen + 1] = quotestring(key)
		buffer[buflen + 2] = ":"
		return encode2(value, indent, level, buffer, buflen + 2, tables, globalorder, state)
	end
	local function appendcustom(res, buffer, state)
		local buflen = state.bufferlen
		if type(res) == "string" then
			buflen = buflen + 1
			buffer[buflen] = res
		end
		return buflen
	end
	local function exception(reason, value, state, buffer, buflen, defaultmessage)
		defaultmessage = defaultmessage or reason
		local handler = state.exception
		if not handler then
			return nil, defaultmessage
		else
			state.bufferlen = buflen
			local ret, msg = handler(reason, value, state, defaultmessage)
			if not ret then
				return nil, msg or defaultmessage
			end
			return appendcustom(ret, buffer, state)
		end
	end
	function json.encodeexception(reason, value, state, defaultmessage)
		return quotestring("<" .. defaultmessage .. ">")
	end
	encode2 = function(value, indent, level, buffer, buflen, tables, globalorder, state)
		local valtype = type(value)
		local valmeta = getmetatable(value)
		valmeta = type(valmeta) == "table" and valmeta
		local valtojson = valmeta and valmeta.__tojson
		if valtojson then
			if tables[value] then
				return exception("reference cycle", value, state, buffer, buflen)
			end
			tables[value] = true
			state.bufferlen = buflen
			local ret, msg = valtojson(value, state)
			if not ret then
				return exception("custom encoder failed", value, state, buffer, buflen, msg)
			end
			tables[value] = nil
			buflen = appendcustom(ret, buffer, state)
		elseif value == nil then
			buflen = buflen + 1
			buffer[buflen] = "null"
		elseif valtype == "number" then
			local s
			if value ~= value or value >= huge or -value >= huge then
				s = "null"
			else
				s = num2str(value)
			end
			buflen = buflen + 1
			buffer[buflen] = s
		elseif valtype == "boolean" then
			buflen = buflen + 1
			buffer[buflen] = value and "true" or "false"
		elseif valtype == "string" then
			buflen = buflen + 1
			buffer[buflen] = quotestring(value)
		elseif valtype == "table" then
			if tables[value] then
				return exception("reference cycle", value, state, buffer, buflen)
			end
			tables[value] = true
			level = level + 1
			local isa, n = isarray(value)
			if n == 0 and valmeta and valmeta.__jsontype == "object" then
				isa = false
			end
			local msg
			if isa then
				buflen = buflen + 1
				buffer[buflen] = "["
				for i = 1, n do
					buflen, msg = encode2(value[i], indent, level, buffer, buflen, tables, globalorder, state)
					if not buflen then
						return nil, msg
					end
					if i < n then
						buflen = buflen + 1
						buffer[buflen] = ","
					end
				end
				buflen = buflen + 1
				buffer[buflen] = "]"
			else
				local prev = false
				buflen = buflen + 1
				buffer[buflen] = "{"
				local order = valmeta and valmeta.__jsonorder or globalorder
				if order then
					local used = {}
					n = #order
					for i = 1, n do
						local k = order[i]
						local v = value[k]
						if v then
							used[k] = true
							buflen, msg = addpair(k, v, prev, indent, level, buffer, buflen, tables, globalorder, state)
							prev = true
						end
					end
					for k, v in pairs(value) do
						if not used[k] then
							buflen, msg = addpair(k, v, prev, indent, level, buffer, buflen, tables, globalorder, state)
							if not buflen then
								return nil, msg
							end
							prev = true
						end
					end
				else
					for k, v in pairs(value) do
						buflen, msg = addpair(k, v, prev, indent, level, buffer, buflen, tables, globalorder, state)
						if not buflen then
							return nil, msg
						end
						prev = true
					end
				end
				if indent then
					buflen = addnewline2(level - 1, buffer, buflen)
				end
				buflen = buflen + 1
				buffer[buflen] = "}"
			end
			tables[value] = nil
		else
			return exception(
				"unsupported type",
				value,
				state,
				buffer,
				buflen,
				"type '" .. valtype .. "' is not supported by JSON."
			)
		end
		return buflen
	end
	function json.encode(value, state)
		state = state or {}
		local oldbuffer = state.buffer
		local buffer = oldbuffer or {}
		state.buffer = buffer
		updatedecpoint()
		local ret, msg =
			encode2(
			value,
			state.indent,
			state.level or 0,
			buffer,
			state.bufferlen or 0,
			state.tables or {},
			state.keyorder,
			state
		)
		if not ret then
			error(msg, 2)
		elseif oldbuffer == buffer then
			state.bufferlen = ret
			return true
		else
			state.bufferlen = nil
			state.buffer = nil
			return concat(buffer)
		end
	end
	local function loc(str, where)
		local line, pos, linepos = 1, 1, 0
		while true do
			pos = strfind(str, "\n", pos, true)
			if pos and pos < where then
				line = line + 1
				linepos = pos
				pos = pos + 1
			else
				break
			end
		end
		return "line " .. line .. ", column " .. (where - linepos)
	end
	local function unterminated(str, what, where)
		return nil, strlen(str) + 1, "unterminated " .. what .. " at " .. loc(str, where)
	end
	local function scanwhite(str, pos)
		while true do
			pos = strfind(str, "%S", pos)
			if not pos then
				return nil
			end
			local sub2 = strsub(str, pos, pos + 1)
			if sub2 == "\239\187" and strsub(str, pos + 2, pos + 2) == "\191" then
				pos = pos + 3
			elseif sub2 == "//" then
				pos = strfind(str, "[\n\r]", pos + 2)
				if not pos then
					return nil
				end
			elseif sub2 == "/*" then
				pos = strfind(str, "*/", pos + 2)
				if not pos then
					return nil
				end
				pos = pos + 2
			else
				return pos
			end
		end
	end
	local escapechars = {
		['"'] = '"',
		["\\"] = "\\",
		["/"] = "/",
		["b"] = "\b",
		["f"] = "\f",
		["n"] = "\n",
		["r"] = "\r",
		["t"] = "\t"
	}
	local function unichar(value)
		if value < 0 then
			return nil
		elseif value <= 0x007f then
			return strchar(value)
		elseif value <= 0x07ff then
			return strchar(0xc0 + floor(value / 0x40), 0x80 + (floor(value) % 0x40))
		elseif value <= 0xffff then
			return strchar(0xe0 + floor(value / 0x1000), 0x80 + (floor(value / 0x40) % 0x40), 0x80 + (floor(value) % 0x40))
		elseif value <= 0x10ffff then
			return strchar(
				0xf0 + floor(value / 0x40000),
				0x80 + (floor(value / 0x1000) % 0x40),
				0x80 + (floor(value / 0x40) % 0x40),
				0x80 + (floor(value) % 0x40)
			)
		else
			return nil
		end
	end
	local function scanstring(str, pos)
		local lastpos = pos + 1
		local buffer, n = {}, 0
		while true do
			local nextpos = strfind(str, '["\\]', lastpos)
			if not nextpos then
				return unterminated(str, "string", pos)
			end
			if nextpos > lastpos then
				n = n + 1
				buffer[n] = strsub(str, lastpos, nextpos - 1)
			end
			if strsub(str, nextpos, nextpos) == '"' then
				lastpos = nextpos + 1
				break
			else
				local escchar = strsub(str, nextpos + 1, nextpos + 1)
				local value
				if escchar == "u" then
					value = tonumber(strsub(str, nextpos + 2, nextpos + 5), 16)
					if value then
						local value2
						if 0xD800 <= value and value <= 0xDBff then
							if strsub(str, nextpos + 6, nextpos + 7) == "\\u" then
								value2 = tonumber(strsub(str, nextpos + 8, nextpos + 11), 16)
								if value2 and 0xDC00 <= value2 and value2 <= 0xDFFF then
									value = (value - 0xD800) * 0x400 + (value2 - 0xDC00) + 0x10000
								else
									value2 = nil
								end
							end
						end
						value = value and unichar(value)
						if value then
							if value2 then
								lastpos = nextpos + 12
							else
								lastpos = nextpos + 6
							end
						end
					end
				end
				if not value then
					value = escapechars[escchar] or escchar
					lastpos = nextpos + 2
				end
				n = n + 1
				buffer[n] = value
			end
		end
		if n == 1 then
			return buffer[1], lastpos
		elseif n > 1 then
			return concat(buffer), lastpos
		else
			return "", lastpos
		end
	end
	local scanvalue
	local function scantable(what, closechar, str, startpos, nullval, objectmeta, arraymeta)
		local len = strlen(str)
		local tbl, n = {}, 0
		local pos = startpos + 1
		if what == "object" then
			setmetatable(tbl, objectmeta)
		else
			setmetatable(tbl, arraymeta)
		end
		while true do
			pos = scanwhite(str, pos)
			if not pos then
				return unterminated(str, what, startpos)
			end
			local char = strsub(str, pos, pos)
			if char == closechar then
				return tbl, pos + 1
			end
			local val1, err
			val1, pos, err = scanvalue(str, pos, nullval, objectmeta, arraymeta)
			if err then
				return nil, pos, err
			end
			pos = scanwhite(str, pos)
			if not pos then
				return unterminated(str, what, startpos)
			end
			char = strsub(str, pos, pos)
			if char == ":" then
				if val1 == nil then
					return nil, pos, "cannot use nil as table index (at " .. loc(str, pos) .. ")"
				end
				pos = scanwhite(str, pos + 1)
				if not pos then
					return unterminated(str, what, startpos)
				end
				local val2
				val2, pos, err = scanvalue(str, pos, nullval, objectmeta, arraymeta)
				if err then
					return nil, pos, err
				end
				tbl[val1] = val2
				pos = scanwhite(str, pos)
				if not pos then
					return unterminated(str, what, startpos)
				end
				char = strsub(str, pos, pos)
			else
				n = n + 1
				tbl[n] = val1
			end
			if char == "," then
				pos = pos + 1
			end
		end
	end
	scanvalue = function(str, pos, nullval, objectmeta, arraymeta)
		pos = pos or 1
		pos = scanwhite(str, pos)
		if not pos then
			return nil, strlen(str) + 1, "no valid JSON value (reached the end)"
		end
		local char = strsub(str, pos, pos)
		if char == "{" then
			return scantable("object", "}", str, pos, nullval, objectmeta, arraymeta)
		elseif char == "[" then
			return scantable("array", "]", str, pos, nullval, objectmeta, arraymeta)
		elseif char == '"' then
			return scanstring(str, pos)
		else
			local pstart, pend = strfind(str, "^%-?[%d%.]+[eE]?[%+%-]?%d*", pos)
			if pstart then
				local number = str2num(strsub(str, pstart, pend))
				if number then
					return number, pend + 1
				end
			end
			pstart, pend = strfind(str, "^%a%w*", pos)
			if pstart then
				local name = strsub(str, pstart, pend)
				if name == "true" then
					return true, pend + 1
				elseif name == "false" then
					return false, pend + 1
				elseif name == "null" then
					return nullval, pend + 1
				end
			end
			return nil, pos, "no valid JSON value at " .. loc(str, pos)
		end
	end
	local function optionalmetatables(...)
		if select("#", ...) > 0 then
			return ...
		else
			return {__jsontype = "object"}, {__jsontype = "array"}
		end
	end
	function json.decode(str, pos, nullval, ...)
		local objectmeta, arraymeta = optionalmetatables(...)
		return scanvalue(str, pos, nullval, objectmeta, arraymeta)
	end
	function json.use_lpeg()
		local g = require("lpeg")
		if g.version() == "0.11" then
			error "due to a bug in LPeg 0.11, it cannot be used for JSON matching"
		end
		local pegmatch = g.match
		local P, S, R = g.P, g.S, g.R
		local function ErrorCall(str, pos, msg, state)
			if not state.msg then
				state.msg = msg .. " at " .. loc(str, pos)
				state.pos = pos
			end
			return false
		end
		local function Err(msg)
			return g.Cmt(g.Cc(msg) * g.Carg(2), ErrorCall)
		end
		local SingleLineComment = P "//" * (1 - S "\n\r") ^ 0
		local MultiLineComment = P "/*" * (1 - P "*/") ^ 0 * P "*/"
		local Space = (S " \n\r\t" + P "\239\187\191" + SingleLineComment + MultiLineComment) ^ 0
		local PlainChar = 1 - S '"\\\n\r'
		local EscapeSequence = (P "\\" * g.C(S '"\\/bfnrt' + Err "unsupported escape sequence")) / escapechars
		local HexDigit = R("09", "af", "AF")
		local function UTF16Surrogate(match, pos, high, low)
			high, low = tonumber(high, 16), tonumber(low, 16)
			if 0xD800 <= high and high <= 0xDBff and 0xDC00 <= low and low <= 0xDFFF then
				return true, unichar((high - 0xD800) * 0x400 + (low - 0xDC00) + 0x10000)
			else
				return false
			end
		end
		local function UTF16BMP(hex)
			return unichar(tonumber(hex, 16))
		end
		local U16Sequence = (P "\\u" * g.C(HexDigit * HexDigit * HexDigit * HexDigit))
		local UnicodeEscape = g.Cmt(U16Sequence * U16Sequence, UTF16Surrogate) + U16Sequence / UTF16BMP
		local Char = UnicodeEscape + EscapeSequence + PlainChar
		local String = P '"' * g.Cs(Char ^ 0) * (P '"' + Err "unterminated string")
		local Integer = P "-" ^ (-1) * (P "0" + (R "19" * R "09" ^ 0))
		local Fractal = P "." * R "09" ^ 0
		local Exponent = (S "eE") * (S "+-") ^ (-1) * R "09" ^ 1
		local Number = (Integer * Fractal ^ (-1) * Exponent ^ (-1)) / str2num
		local Constant = P "true" * g.Cc(true) + P "false" * g.Cc(false) + P "null" * g.Carg(1)
		local SimpleValue = Number + String + Constant
		local ArrayContent, ObjectContent
		local function parsearray(str, pos, nullval, state)
			local obj, cont
			local npos
			local t, nt = {}, 0
			repeat
				obj, cont, npos = pegmatch(ArrayContent, str, pos, nullval, state)
				if not npos then
					break
				end
				pos = npos
				nt = nt + 1
				t[nt] = obj
			until cont == "last"
			return pos, setmetatable(t, state.arraymeta)
		end
		local function parseobject(str, pos, nullval, state)
			local obj, key, cont
			local npos
			local t = {}
			repeat
				key, obj, cont, npos = pegmatch(ObjectContent, str, pos, nullval, state)
				if not npos then
					break
				end
				pos = npos
				t[key] = obj
			until cont == "last"
			return pos, setmetatable(t, state.objectmeta)
		end
		local Array = P "[" * g.Cmt(g.Carg(1) * g.Carg(2), parsearray) * Space * (P "]" + Err "']' expected")
		local Object = P "{" * g.Cmt(g.Carg(1) * g.Carg(2), parseobject) * Space * (P "}" + Err "'}' expected")
		local Value = Space * (Array + Object + SimpleValue)
		local ExpectedValue = Value + Space * Err "value expected"
		ArrayContent = Value * Space * (P "," * g.Cc "cont" + g.Cc "last") * g.Cp()
		local Pair = g.Cg(Space * String * Space * (P ":" + Err "colon expected") * ExpectedValue)
		ObjectContent = Pair * Space * (P "," * g.Cc "cont" + g.Cc "last") * g.Cp()
		local DecodeValue = ExpectedValue * g.Cp()
		function json.decode(str, pos, nullval, ...)
			local state = {}
			state.objectmeta, state.arraymeta = optionalmetatables(...)
			local obj, retpos = pegmatch(DecodeValue, str, pos, nullval, state)
			if state.msg then
				return nil, state.pos, state.msg
			else
				return obj, retpos
			end
		end
		json.use_lpeg = function()
			return json
		end
		json.using_lpeg = true
		return json
	end
	if always_try_using_lpeg then
		pcall(json.use_lpeg)
	end
	return json
end

local json = json()


	local data = {}
	local deal = {}
	local text = {"text", "checkbox"}
	local input = gg.prompt({"社团信息的ID："}, nil, text)
	if input then
		if input[2] then
			os.exit()
		end
		local personnel =
			json.decode(
			gg.makeRequest("https://game.subway.uu.cc/newSociaty/getSociatyInfo? sociatyId=" .. input[1] .. "&userid=1&type=2").content
		)
		if personnel.code ~= 0 then
			gg.alert("社团不存在！")
			return
		end
		local information =
			json.decode(
			gg.makeRequest("https://game.subway.uu.cc/newSociaty/getSociatyInfo? sociatyId=" .. input[1] .. "&userid=1&type=1").content
		).data.info
		data["社团号"] = information.id
		data["社团名字"] = information.sname
		data["社团描述"] = information.descr
		data["社团人数"] = information.num
		data["团长跑号"] = information.leader
		data["团员信息"] = personnel.data.info
		for k, v in pairs(data["团员信息"]) do
			deal[#deal + 1] =
				"团员名称：" ..
				v.nick ..
					"\n团员跑号：" .. v.uid .. "\n绑定fanbook：" .. tostring(v.has_join_fb_server) .. "\n炫跑卡等级：" .. v.SuperRunVIPLevel .. "\n"
		end
		table.insert(
			deal,
			1,
			"社团号：" ..
				data["社团号"] ..
					"\n社团名称：" ..
						data["社团名字"] .. "\n社团描述：" .. data["社团描述"] .. "\n社团人数：" .. data["社团人数"] .. "\n团长跑号：" .. data["团长跑号"] .. "\n"
		)
		gg.alert("查询成功！")
		gg.choice(deal, nil, "查询所得数据：")

		end

    gg.toast("Done✔️")
toMusic('开启成功')    
end,
function()
end),
AN.button("查询账号信息",
function()	
local text = {"text","checkbox"}
	local input = gg.prompt({"用户ID:"},nil,text)
	if input then
		if input[2] then os.exit() end
PlayerID=input[1]
loadBox = getLoadingBox('获取存档中...')
loadBox['显示']()
identifier="VRpTiSm3RX4eKjWN559UvzeAgURg1U45C84zWig2VHSIfhnullUHG"
Sha1Encryption=""..identifier..""..PlayerID
local json = json()
checksum=string.lower(string.sha1('wvtijkcqp4shb2al4n5i7r4385rkxhymwhduvnemzepdvrt'..Sha1Encryption..'lvmowioin8mnvo32lowoclcowoidhgwladiovgnbvueiwac'))
local personnel = json.decode(http.post("https://game.subway.uu.cc/backup/readData",nil,"identifier="..identifier.."&t=IOS00000000&checksum="..checksum.."&userid="..PlayerID.."&userId="..PlayerID.."").content)
if personnel.msg == 'success' then
ornament=_getTableCount(personnel.data.ornament)
role=_getTableCount(personnel.data.role)
skids=_getTableCount(personnel.data.skids)
grade=personnel.data.task.grade
hscore=personnel.data.hscore
skids=personnel.data.gold.skids
keys=personnel.data.gold.keys
coins=personnel.data.gold.coins
NewTreasureKey=personnel.data.NewTreasure.NewTreasureKey
HonorRoadTrophy=personnel.data.HonorRoad.HonorRoadTrophy
MaxRealPvpLevel=personnel.data.RankMaxData.MaxRealPvpLevel
version=personnel.data.version
if(MaxRealPvpLevel==1)then
Rank='青铜'
elseif(MaxRealPvpLevel==2)then
Rank='白银'
elseif(MaxRealPvpLevel==3)then
Rank='黄金'
elseif(MaxRealPvpLevel==4)then
Rank='铂金'
elseif(MaxRealPvpLevel==5)then
Rank='钻石'
elseif(MaxRealPvpLevel==6)then
Rank='王者'
else
Rank='保持'
end
loadBox['关闭']()
gg.alert("读取存档成功!用户存档如下所示\n存档版本:"..version.."\n人物等级:"..grade.."\n人物数量:"..role.."\n滑板数量:"..skids.."\n背饰数量:"..ornament.."\n最高分数:"..hscore.."\n金币数量:"..coins.."\n钥匙数量:"..keys.."\n宝物钥匙:"..NewTreasureKey.."\n滑板数量:"..skids.."\n荣耀奖杯:"..HonorRoadTrophy.."\n最高段位:"..Rank)
else
loadBox['关闭']()
gg.alert("未读取到该存档!\nThe archive was not read!")
end
end
gg.toast("Done✔️")
toMusic('开启成功')    
end,
function()
end),	
	
AN.button("修改文字",
function()
gg.clearResults()
gg.setRanges(32)
a = gg.prompt({"请输入更改前的文字","请输入更改后的文字"},{[1]="别跑!",[2]="人机!"},{"text","text"})
if not a then return end
if a[1] == "" then return end
if a[2] == "" then return end
gg.searchNumber(";"..a[1], gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1, 0)
if gg.getResultsCount() == 0 then gg.alert('搜索失败') return end
gg.getResults(99999)
gg.editAll(";"..a[2], gg.TYPE_WORD)
gg.toast("Done✔️")
toMusic('开启成功')    
end,
function()
end),
AN.button("过新手教程",
function()
sjxnb(0xbb1268 ,4,"~A MOV R0, #1")
gg.toast("Done✔️")
toMusic('开启成功')    
end,
function()
end),	


		}, {----2
AN.button(
			"登录防",
			function()
		打开窗口("登录防")
			end),		

AN.button(
			"大厅防",
			function()
		打开窗口("大厅防")
			end),		

		}, {

       AN.box({"替换宝物",
         
    AN.switch("十抽宝物全满",
                function()
  sjxnb(0x1087d30 ,4,"~A B +0x1930")         
gg.toast("Done✔️")
toMusic('开启成功')
                end,
                function()
                    
                end
            ),
            AN.switch("宝物备份",
     function()
     sjxnb(0x1087d30 ,4,"~A B -0x1E48")
gg.toast("Done✔️")
toMusic('开启成功')
                end,
                function()
                    
                end
            ), 

     AN.switch("十抽全饰", function()
        sjxnb(17333552, 4, "~A B -0x4E0280")
        string.toMusic("请去十抽")
      end,
                function()
                    
                end
            ), 
      AN.switch("十抽半饰", function()
        sjxnb(17333552, 4, "~A B -0x4DEEB0")
        string.toMusic("请去十抽")

                    end,
                    function()
                    end
	            ), 
	             }),
AN.box({"刷号解锁",    
		AN.switch("全解人物",
				function()
sjxnb(0xba7240 ,4,"~A MOVW R0, #1")				
gg.toast("Done✔️")
toMusic('开启成功')
   end,
				function()
				end
			),
			
			AN.switch("全解滑板",
				function()
sjxnb(0xba8244 ,4,"~A MOVW R0, #1")
gg.toast("Done✔️")
toMusic('开启成功')
    end,
				function()
				end
			),
AN.switch("全解背饰",
                function()
sjxnb(0xbd3144 ,4,"~A MOVW R0, #1")
gg.toast("Done✔️")
toMusic('开启成功')
                end,
                function()
                    
                end
            ),  									
AN.switch("全解装扮",
				function()
sjxnb(0xb993d0 ,4,"~A MOVW R0, #1")
gg.toast("Done✔️")
toMusic('开启成功')
     end,
				function()
				end
			),

	AN.switch("滑板技能",
                function()
sjxnb(0xd14e80 ,4,"~A MOVW R0, #1")
sjxnb(0xd15214 ,4,"~A MOVW R0, #1")
gg.toast("Done✔️")
toMusic('开启成功')
                end,
                function()
                    
                end
            ),

                
            AN.switch("全头像框",
                function()
sjxnb(0x1bd229c ,4,"~A MOVW R0, #1")
    gg.toast("Done✔️")
toMusic('开启成功')
                end,
                function()
                    
                end
            ), 
            }),	
AN.box({"基础修改",
AN.switch("金币人物",
function()
function SearchWrite(Search, Write, Type, Name)
    local time=os.clock()
    gg.clearResults()
    gg.setVisible(false)
    gg.searchNumber(Search[1][1], Type)
    local count = gg.getResultCount()
    local result = gg.getResults(count)
    gg.clearResults()
    local data = {}
    local base = Search[1][2] 
   if (count > 0) then
        for i, v in ipairs(result) do
            v.isUseful = true
        end
        for k=2, #Search do
            local tmp = {}
            local offset = Search[k][2] - base
            local num = Search[k][1]          
            for i, v in ipairs(result) do
                tmp[#tmp+1] = {}
                tmp[#tmp].address = v.address + offset
                tmp[#tmp].flags = v.flags
            end 
            tmp = gg.getValues(tmp)
            for i, v in ipairs(tmp) do
                if ( tostring(v.value) ~= tostring(num) ) then
                    result[i].isUseful = false
                end
            end
        end
  
        for i, v in ipairs(result) do
            if (v.isUseful) then
                data[#data+1] = v.address
            end
        end
        if (#data > 0) then
           gg.toast("搜索到"..#data.."条数据")
           local t = {}
           local base = Search[1][2]
           for i=1, #data do
               for k, w in ipairs(Write) do
                   offset = w[2] - base
                   t[#t+1] = {}
                   t[#t].address = data[i] + offset
                   t[#t].flags = Type
                   t[#t].value = w[1]
                   if (w[3] == true) then
                       local item = {}
                       item[#item+1] = t[#t]
                       item[#item].freeze = true
                       gg.addListItems(item)
                   end
               end
           end
           gg.setValues(t)
           local time=string.sub(os.clock()-time,0,5)
          gg.toast("开启成功 修改"..#data.."条数据 启动耗时:"..time.."秒")
          gg.addListItems(t)
        else
            gg.toast("开启失败未搜索到任何数据", false)
            return false
        end
    else
        gg.toast("开启失败未搜索到任何数据")
        return false
    end
end 
local Ly=gg.prompt({"请输入金币数量"},{""},{"text"})    
     local tb1 = {{99999, 0x0}, {-1, 0x14}, {1,0x34},}
        local tb2 = {{0,0x30},{0,0x5C},{2,0x44},{Ly[1],0x2C},{0,0x3C},} 
    local dataType = 4--类型
gg.setRanges(32)
 SearchWrite(tb1,tb2, dataType)    
 gg.toast("Done✔️")
toMusic('开启成功')
     end,
				function()
				end
			),    
AN.switch("金币滑板",
function()	
function SearchWrite(Search, Write, Type, Name)
    local time=os.clock()
    gg.clearResults()
    gg.setVisible(false)
    gg.searchNumber(Search[1][1], Type)
    local count = gg.getResultCount()
    local result = gg.getResults(count)
    gg.clearResults()
    local data = {}
    local base = Search[1][2] 
   if (count > 0) then
        for i, v in ipairs(result) do
            v.isUseful = true
        end
        for k=2, #Search do
            local tmp = {}
            local offset = Search[k][2] - base
            local num = Search[k][1]          
            for i, v in ipairs(result) do
                tmp[#tmp+1] = {}
                tmp[#tmp].address = v.address + offset
                tmp[#tmp].flags = v.flags
            end 
            tmp = gg.getValues(tmp)
            for i, v in ipairs(tmp) do
                if ( tostring(v.value) ~= tostring(num) ) then
                    result[i].isUseful = false
                end
            end
        end
  
        for i, v in ipairs(result) do
            if (v.isUseful) then
                data[#data+1] = v.address
            end
        end
        if (#data > 0) then
           gg.toast("搜索到"..#data.."条数据")
           local t = {}
           local base = Search[1][2]
           for i=1, #data do
               for k, w in ipairs(Write) do
                   offset = w[2] - base
                   t[#t+1] = {}
                   t[#t].address = data[i] + offset
                   t[#t].flags = Type
                   t[#t].value = w[1]
                   if (w[3] == true) then
                       local item = {}
                       item[#item+1] = t[#t]
                       item[#item].freeze = true
                       gg.addListItems(item)
                   end
               end
           end
           gg.setValues(t)
           local time=string.sub(os.clock()-time,0,5)
          gg.toast("开启成功 修改"..#data.."条数据 启动耗时:"..time.."秒")
          gg.addListItems(t)
        else
            gg.toast("开启失败未搜索到任何数据", false)
            return false
        end
    else
        gg.toast("开启失败未搜索到任何数据")
        return false
    end
end 
local Ly=gg.prompt({"请输入金币数量"},{""},{"text"})    
     local tb1 = {{99999, 0x0}, {-1, 0x18}, {1,0x34},{1,0x3C}}
    local tb2 = {{0,0x68},{2,0x54},{0,0x3C},{0,0x30},{Ly[1],0x2C},} 
    local dataType = 4--类型
gg.setRanges(32)
 SearchWrite(tb1,tb2, dataType)
 gg.toast("Done✔️")
toMusic('开启成功')
     end,
				function()
				end
			),		
AN.switch("十倍一键",
				function()
sjxnb(0x2d254a0 ,4,"~A MOV R0, #1")
sjxnb(0x15c5c34 ,4,"~A MOV R0, #1")
gg.toast("Done✔️")
toMusic('开启成功')
     end,
				function()
				end
			),
 AN.switch("破解内购",
				function()
sjxnb(0x14b03b0 ,4,"~A B +0x11060")
gg.toast("Done✔️")
toMusic('开启成功')
	end,
				function()
				end
			),	           
            AN.switch("自定义炫跑卡",
                    function()
sjxnb(0xbd4f14 ,4,"~A MOV R0, #"..gg.prompt({"请输入等级"},{""},{"text"})[1])
gg.toast("Done✔️")
toMusic('开启成功')
                 end,
                    function()
                    end        
                ),
                AN.switch("双倍金币",
                function()
sjxnb(0xb8df84 ,4,"~A MOV R0, #1")
gg.toast("Done✔️")
toMusic('开启成功')
             end,
                function()
                    
                end
            ),

	
			
			
AN.switch("修改奖杯",
                    function() 
local t = {"libil2cpp.so:bss", "Cb"}
local tt = {0xB30F8, 0x59C, 0x110, 0x1230}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 1500, freeze = true}})
gg.addListItems({{address = ttt+0x10, flags = 4, value = 0, freeze = true}})
gg.addListItems({{address = ttt+0x4, flags = 4, value = 0, freeze = true}})
gg.toast("Done✔️")
toMusic('开启成功')
                    end,
                    function()
                    end
	            ),	            
	     AN.switch("奖杯一键领取",
                    function()
sjxnb(0xc16108 ,4,"~A MOV R0, #1")        
gg.toast("Done✔️")
toMusic('开启成功')
                    end,
                    function()
                    end
	            ),			          
AN.switch("解锁微博",
                function()
sjxnb(0x17fcc4c ,4,"~A MOV R0, #1")                
gg.toast("Done✔️")
toMusic('开启成功')
                end,
                function()
                    
                end
            ),  
        }),                         
       AN.box({"修改货币",              
     AN.switch("自定义金币",
                function()
local a = gg.prompt({""},{},{"number"})
if a == nil then gg.alert("未发生改变") os.exit() end
if a[1] == '' then else
	num_2=a[1]/65536
	num_3=a[1]-65536*num_2
	sjx ( 0xb912f0 , "~A MOVW	 R0, #"..num_3,false )
	sjx ( 0xb912f0+4 , "~A MOVT	 R0, #"..num_2 )
    gg.toast("Done✔️")
toMusic('开启成功')
end
             end,
                function()
                    
                end
            ),
            AN.switch("自定义钥匙",
                function()
local a = gg.prompt({""},{},{"number"})
if a == nil then gg.alert("未发生改变") os.exit() end
if a[1] == '' then else
	num_2=a[1]/65536
	num_3=a[1]-65536*num_2
	sjx ( 0xb9169c , "~A MOVW	 R0, #"..num_3,false )
	sjx ( 0xb9169c+4 , "~A MOVT	 R0, #"..num_2 )
gg.toast("Done✔️")
toMusic('开启成功')	
end
             end,
                function()
                    
                end
            ),
            AN.switch("自定义宝物钥匙",
                function()
local a = gg.prompt({""},{},{"number"})
if a == nil then gg.alert("未发生改变") os.exit() end
if a[1] == '' then else
	num_2=a[1]/65536
	num_3=a[1]-65536*num_2
	sjx ( 0xbdbb30 , "~A MOVW	 R0, #"..num_3,false )
	sjx ( 0xbdbb30+4 , "~A MOVT	 R0, #"..num_2 )
    gg.toast("Done✔️")
toMusic('开启成功')
end                
             end,
                function()
                    
                end
            ),
            AN.switch("自定义等级",
                function()
local a = gg.prompt({""},{},{"number"})
if a == nil then gg.alert("未发生改变") os.exit() end
if a[1] == '' then else
	num_2=a[1]/65536
	num_3=a[1]-65536*num_2
	sjx ( 0xb95240 , "~A MOVW	 R0, #"..num_3,false )
	sjx ( 0xb95240+4 , "~A MOVT	 R0, #"..num_2 )
    gg.toast("Done✔️")
toMusic('开启成功')
end
     end,
				function()
				end
                       ),          

                 }),
		},{
     

        AN.switch("1分40秒检测",
				function()
sjxnb(0x2d2d960 ,4,"~A MOVW R0, #0")
sjxnb(0x2d2da10 ,4,"~A MOV R0, #0")
gg.toast("Done✔️")
toMusic('开启成功')

				end,
				function()
				end
            ),        
        AN.switch("断网状态",
function()
sjxnb(0x2b04764,4, "~A MOV R0, #1")--开启
sjxnb(0x11f6374,4, "~A MOV R0, #1")--开启
gg.toast("Done✔️")
toMusic('开启成功')    
end,
function()
sjxnb(0x2b04764,4, "~A MOV R0, #0")--关闭
sjxnb(0x11f6374,4, "~A MOV R0, #0")--关闭
gg.toast("Done✔️")
toMusic('关闭成功') 
end),	
AN.switch("防踢",
                function()	
 sjxnb(0x1e94a08 ,4,"~A MOVW R0, #1") 	
gg.toast("Done✔️")
toMusic('开启成功')
     end,
				function()
				end
			),	
AN.box({"冲榜功能",---box示例 可以删掉				
AN.switch("自动聚能[重力]",
                function()	
local il2cppmod=gg.getRangesList('il2cpp.so')
gg.setValues({{address=il2cppmod[1].start+0x1ce20ec,flags=4,value='~A B +0x19EC'}})
gg.setValues({{address=il2cppmod[1].start+0x1ce20ec+4,flags=4,value='~A BX LR'}})
gg.toast("Done✔️")
toMusic('开启成功')
     end,
				function()
				end
			),	
AN.switch("无视能量",
function()
sjxnb(0x1cdebe8 ,4,"~A MOV R0, #0")
sjxnb(0x1cdf9d8 ,4,"~A MOV R0, #0")
gg.toast("Done✔️")
toMusic('开启成功')		
end),
		AN.switch("无视道具",
			function()
sjxnb(0x1ad2e90 ,4,"~A MOV R0, #1")
gg.toast("Done✔️")
toMusic('开启成功')
				end,
				function()
				end
			),		
AN.switch("无视障碍",
			function()
sjxnb(0x1dbaf34 ,4,"~A MOV R0, #1")
			gg.toast("Done✔️")
toMusic('开启成功')
				end,
				function()
				end
			),	
AN.switch("自定义全服排名",
				function()
sjxnb(0xdcd2cc ,4,"~A MOVW R0, #"..gg.prompt({"请输入代码"},{""},{"text"})[1])		
			gg.toast("Done✔️")
toMusic('开启成功')		
    end,
				function()
				end
			),
				AN.switch("自定义地区排名",
				function()
sjxnb(0xdcd374 ,4,"~A MOVW R0, #"..gg.prompt({"请输入代码"},{""},{"text"})[1])		
			gg.toast("Done✔️")
toMusic('开启成功')		
    end,
				function()
				end
			),
			AN.switch("自定义地区修改",
				function()
sjxnb(0xdcd41c ,4,"~A MOVW R0, #"..gg.prompt({"请输入代码"},{""},{"text"})[1])		
			gg.toast("Done✔️")
toMusic('开启成功')	
end,
function()
end),					


                            }),				
AN.box({"聚能配置",---box示例 可以删掉						
AN.switch("修改长名",
				function()
sjxnb(0x1096c50 ,4,"~A B +0x148")
gg.toast("Done✔️")
toMusic('开启成功')
end,
				function()
				end
			),   				
			AN.switch("滑动聚能",
                function()	
local il2cppmod=gg.getRangesList('il2cpp.so')
gg.setValues({{address=il2cppmod[1].start+0x1ad8954,flags=4,value='~A MOVW R0, #0'}})
gg.setValues({{address=il2cppmod[1].start+0x1ad8954+4,flags=4,value='~A BX LR'}})
local il2cppmod=gg.getRangesList('il2cpp.so')
gg.setValues({{address=il2cppmod[1].start+0x1ce20ec,flags=4,value='~A B +0x19EC'}})
gg.setValues({{address=il2cppmod[1].start+0x1ce20ec+4,flags=4,value='~A BX LR'}})
gg.toast("Done✔️")
toMusic('开启成功')
     end,
				function()
				end
			),		
			AN.switch("开板聚能",
                function()	
local il2cppmod=gg.getRangesList('il2cpp.so')
gg.setValues({{address=il2cppmod[1].start+0x1ce26cc,flags=4,value='~A B +0x140C'}})
gg.setValues({{address=il2cppmod[1].start+0x1ce26cc+4,flags=4,value='~A BX LR'}})
gg.toast("Done✔️")
toMusic('开启成功')
     end,
				function()
				end
			),		
AN.switch("能量翻倍",
                function()			
local il2cppmod=gg.getRangesList('il2cpp.so')
gg.setValues({{address=il2cppmod[1].start+0xe7cdfc,flags=4,value='~A B +0xE66CDC'}})
gg.setValues({{address=il2cppmod[1].start+0xe7cdfc+4,flags=4,value='~A BX LR'}})
local il2cppmod=gg.getRangesList('il2cpp.so')
gg.setValues({{address=il2cppmod[1].start+0xea08a0,flags=4,value='~A B +0xE66B14'}})
gg.setValues({{address=il2cppmod[1].start+0xea08a0+4,flags=4,value='~A BX LR'}})			
gg.toast("Done✔️")
toMusic('开启成功')
     end,
				function()
				end
			),		

	AN.switch("点击聚能",
				function()			
sjxnb(0x1ce99b0 ,4,"~A B -0x1258")		
gg.toast("Done✔️")
toMusic('开启成功')		
    end,
				function()
				end
			),	
			
AN.switch("一能量一滑板",
function()
local il2cppmod=gg.getRangesList('il2cpp.so')
gg.setValues({{address=il2cppmod[1].start+0xe8b248,flags=4,value='~A B +0xE7C16C'}})
gg.setValues({{address=il2cppmod[1].start+0xe8b248+4,flags=4,value='~A BX LR'}})
gg.toast("Done✔️")
toMusic('开启成功')		
end,
function()
end),					
AN.switch("时间聚能", function()
        co = gg.prompt({
          "相机",
          "校服",
          "耳机",
          "扇子"
        }, {}, {
          "checkbox",
          "checkbox",
          "checkbox",
          "checkbox"
        })
        if co == nil then
          Main()
        end
        if co[1] == true then
          Name = "相机时间聚能"
          ms.ss("3210", 4, 32)
          ms.py(1, 4, 4)
          ms.py(1, 4, 4)
          ms.edit(0, 92, 4)
          ms.edit(0, 80, 4)
          ms.edit(3, 76, 4)
          ms.edit(0, 116, 4)
          ms.edit(0, 100, 4)
          ms.edit(4.3, 96, 16)
          ms.edit(1, 168, 16)
          ms.edit(0, 152, 4)
          ms.edit(4.3, 148, 16)
        end
        if co[2] == true then
          Name = "校服时间聚能"
          ms.ss("3110", 4, 32)
          ms.py(1, 4, 4)
          ms.py(1, 4, 4)
          ms.edit(0, 92, 4)
          ms.edit(0, 80, 4)
          ms.edit(3, 76, 4)
          ms.edit(0, 116, 4)
          ms.edit(0, 100, 4)
          ms.edit(4.2, 96, 16)
          ms.edit(1, 168, 16)
          ms.edit(0, 152, 4)
          ms.edit(4.2, 148, 16)
        end
        if co[3] == true then
          gg.clearResults()
          Name = "耳机时间聚能"
          ms.ss("3310", 4, 32)
          ms.py(1, 4, 4)
          ms.py(1, 4, 4)
          ms.edit(0, 92, 4)
          ms.edit(0, 80, 4)
          ms.edit(3, 76, 4)
          ms.edit(0, 116, 4)
          ms.edit(0, 100, 4)
          ms.edit(4.1, 96, 16)
          ms.edit(1, 168, 16)
          ms.edit(0, 152, 4)
          ms.edit(4.1, 148, 16)
        end
        if co[4] == true then
          gg.clearResults()
          Name = "折扇一秒聚能"
          ms.ss("2910", 4, 32)
          ms.py(1, 4, 4)
          ms.py(1, -4, 4)
          ms.edit(0, 100, 16)
          ms.edit(0, 168, 16)
          ms.edit(0, 152, 16)
          ms.edit(0, 92, 4)
          ms.edit(0, 80, 4)
          ms.edit(1, 116, 16)
          ms.edit(2, 148, 16)
          ms.edit(1.1, 96, 16)
          ms.edit(3, 76, 4)
          gg.alert("折扇一秒一能量开启成功")
        end
      end
      ),
      AN.switch("自动聚能", function()
        co = gg.prompt({
          "相机",
          "校服",
          "扇子",
          "卫衣"
        }, {}, {
          "checkbox",
          "checkbox",
          "checkbox",
          "checkbox"
        })
        if co == nil then
          Main()
        end
        if co[1] == true then
          Name = "相机自动聚能"
          ms.ss("3210", 4, 32)
          ms.py(1, 4, 4)
          ms.py(1, -4, 4)
          ms.edit(0, 92, 4)
          ms.edit(0, 80, 4)
          ms.edit(2, 76, 4)
          ms.edit(0, 116, 4)
          ms.edit(0, 108, 4)
          gg.alert("相机聚能成功")
        end
        if co[2] == true then
          Name = "校服自动聚能"
          ms.ss("3110", 4, 32)
          ms.py(1, 4, 4)
          ms.py(1, -4, 4)
          ms.edit(0, 92, 4)
          ms.edit(0, 80, 4)
          ms.edit(2, 76, 4)
          ms.edit(0, 116, 4)
          ms.edit(0, 108, 4)
          gg.alert("校服聚能成功")
        end
        if co[3] == true then
          gg.clearResults()
          Name = "扇子自动聚能"
          ms.ss("2910", 4, 32)
          ms.py(1, 4, 4)
          ms.py(1, -4, 4)
          ms.edit(0, 92, 4)
          ms.edit(0, 80, 4)
          ms.edit(2, 76, 4)
          ms.edit(0, 116, 4)
          ms.edit(0, 108, 4)
          gg.alert("扇子聚能成功")
        end
        if co[4] == true then
          gg.clearResults()
          Name = "卫衣自动聚能"
          ms.ss("3310", 4, 32)
          ms.py(1, 4, 4)
          ms.py(1, -4, 4)
          ms.edit(0, 92, 4)
          ms.edit(0, 80, 4)
          ms.edit(2, 76, 4)
          ms.edit(0, 116, 4)
          ms.edit(0, 108, 4)
          gg.alert("卫衣聚能成功")
        end
      end
      )
    }),
AN.box({"娱乐功能",---box示例 可以删掉        AN.switch("二段跳",
				
			
		AN.switch("人物瞬移",
				function()
sjxnb(0x1ad22e0 ,4,"~A MOVW R0, #1")				
			gg.toast("Done✔️")
toMusic('开启成功')
     end,
				function()
				end
			),
			AN.switch("人物滑翔",
				function()
sjxnb(0x1ad23d4 ,4,"~A MOVW R0, #1")
			gg.toast("Done✔️")
toMusic('开启成功')
     end,
				function()
				end
			),
			AN.switch("人物跳高",
				function()
sjxnb(0x1ad214c ,4,"~A MOVW R0, #1")	
			gg.toast("Done✔️")
toMusic('开启成功')
     end,
				function()
				end
			),
		AN.switch("滑板飞翔",
				function()
sjxnb(0x1e186d8 ,4,"0100A0E3r")
gg.toast("Done✔️")
toMusic('开启成功')
     end,
				function()
				end
			),

	AN.switch("滑板跳高",
				function()
sjxnb(0x1e182f8 ,4,"0100A0E3r")
gg.toast("Done✔️")
toMusic('开启成功')
     end,
				function()
				end
			),
			AN.switch("滑板瞬移",
				function()
sjxnb(0x1e18848 ,4,"0100A0E3r")
gg.toast("Done✔️")
toMusic('开启成功')
     end,
function()
end),					


                            }),
	         
            
                                    
                                   
        AN.box({"分数赛",---box示例 可以删掉
            AN.switch("修改倍增",
				function()
sjxnb(0xb969f4 ,4,"~A MOVW R0, #"..gg.prompt({"请输入数量"},{""},{"text"})[1])		
gg.toast("Done✔️")
toMusic('开启成功')
				     end,
				function()
				end
                       ),   
		
                                              
          AN.switch("死亡替换撑杆跳",
				function()
local il2cppmod=gg.getRangesList('il2cpp.so')
gg.setValues({{address=il2cppmod[1].start+0x2b7fb4c,flags=4,value='~A B -0x62C'}})
gg.setValues({{address=il2cppmod[1].start+0x2b7fb4c+4,flags=4,value='~A BX LR'}})
gg.toast("Done✔️")
toMusic('开启成功')
     end,
				function()
				end
                       ),   
          AN.switch("死亡替换喷气背包",
				function()                       
local il2cppmod=gg.getRangesList('il2cpp.so')
gg.setValues({{address=il2cppmod[1].start+0x2b7fb4c,flags=4,value='~A B -0xB90'}})
gg.setValues({{address=il2cppmod[1].start+0x2b7fb4c+4,flags=4,value='~A BX LR'}})
gg.toast("Done✔️")
toMusic('开启成功')
     end,
				function()
				end
                       ),   
                       	AN.switch("历史分数",
				function()
local a=gg.prompt({""},{"2147483647"},{"number"})			
if a == nil then gg.alert("未发生改变") os.exit() end
if a[1] == '' then else
	num_2=a[1]/65536
	num_3=a[1]-65536*num_2
	sjx ( 0xb9de70 , "~A MOVW	 R0, #"..num_3,false )
	sjx ( 0xb9de70+4 , "~A MOVT	 R0, #"..num_2 )
    gg.toast("Done✔️")
toMusic('开启成功')

end
     end,
				function()
				end
                       ),          

                 }),
		},{
		AN.box({'音乐区域',
	AN.button("搜索音乐",
 function ()
                   search = gg.prompt({
								"输入要搜索的歌曲\n可加上歌手名字",
								"设置显示数量(数字)",
							},g.sel,{
								"text",
							})
							if not search then return end
							gg.saveVariable(search,g.config)
							bei()
							go1=search[1]
							go3=search[2]
							jg=start(go1,go3)
							if jg.code == 200 then
								fh=jg.content
								fh=json(fh)
								--print(fh)
								Play(gqlb,idb)
								else
								function inspect()
									gg.alert("访问网络异常，错误代码：\n\n"..jg.code)
								end
								if not pcall(inspect) then print("网络异常，请先连接上网络") os.exit() end
							end
         XGCK=-1
end),		
	AN.button("热歌榜",
function()
 A="https://api.uomg.com/api/rand.music?sort=热歌榜&format=json"
Obtain=gg.makeRequest(A).content
muchen=Obtain:match('url":"(.-)","picurl')
name=Obtain:match('name":"(.-)","')
gg.alert('开始播放['..name..']')
gg.playMusic(muchen)
end),
	AN.button("新歌榜",
function()
A="https://api.uomg.com/api/rand.music?sort=新歌榜&format=json"
Obtain=gg.makeRequest(A).content
muchen=Obtain:match('url":"(.-)","picurl')
name=Obtain:match('name":"(.-)","')
gg.alert('开始播放['..name..']')
gg.playMusic(muchen)
end),
	AN.button("飙升榜",
function()
A="https://api.uomg.com/api/rand.music?sort=飙升榜&format=json"
Obtain=gg.makeRequest(A).content
muchen=Obtain:match('url":"(.-)","picurl')
name=Obtain:match('name":"(.-)","')
gg.alert('开始播放['..name..']')
gg.playMusic(muchen)
end),
	AN.button("抖音榜",
function()
 A="https://api.uomg.com/api/rand.music?sort=抖音榜&format=json"
Obtain=gg.makeRequest(A).content
muchen=Obtain:match('url":"(.-)","picurl')
name=Obtain:match('name":"(.-)","')
gg.alert('开始播放['..name..']')
gg.playMusic(muchen)
end),	
AN.button("电音榜",
function()
 A="https://api.uomg.com/api/rand.music?sort=电音榜&format=json"
Obtain=gg.makeRequest(A).content
muchen=Obtain:match('url":"(.-)","picurl')
name=Obtain:match('name":"(.-)","')
gg.alert('开始播放['..name..']')
gg.playMusic(muchen)
end),
	AN.button("暂停音乐",
function()
 gg.playMusic("6")
end),
 }),

		{LinearLayout,
		layout_width='match_parent',
		layout_height='40dp',
		background=getVerticalBG({0xaa161616,0xaa161616},180,0,0xffffffff),
		{LinearLayout,
			layout_weight=1,
				layout_height='34dp',
				layout_marginTop='3dp',
				layout_marginBottom='3dp',
				layout_marginLeft='3dp',
				layout_marginRight='3dp',
				layout_width='match_parent',
				
				
				padding='3dp',
				elevation='2dp',
				{EditText,				
					id=luajava.newId("tosearch"),
					layout_height='match_parent',
					layout_width='match_parent',
					padding='-8dp',
					hint = "请输入需要搜索的音乐关键词",
					gravity = "center",
					textColor='#ffffff',
							layout_marginLeft="0dp",
							textSize = "12sp",
							background = getVerticalBG({
								0x00262626,0x00262626
							},15,5,0x00ffffff),
				}
			},{ImageView,
				id='musici',
				layout_width='34dp',
				layout_height='match_parent',
				gravity='center',
				elevation='2dp',
        		layout_marginTop='3dp',
				layout_marginBottom='4dp',
				layout_marginLeft='4dp',
				layout_marginRight='4dp',
				background=getVerticalBG({0x00ffffff,0x00ffffff},360,4,0xffffffff),
				src=getRes('bm_music'),
				padding='4dp',
				onTouch=hanshu,onClick=searchmenu
				
				
			},		
},
	wyylog	},
		{--聊天室勿动
			----
		},

	{
	
AN.text('\n'),
AN.image(
"https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/quarkphone",
"60dp","60dp",--图片高度宽度（可省略）
"10dp",--内边距（可省略）
function()
隐藏()			
gg.intent('http://qm.qq.com/cgi-bin/qm/qr?_wv=1027&k=SyOyVMFJhh6BMX2fgBotcxh6pmhv8D5C&authKey=oaJy4%2FK2HZaDZ48gzKHlCNBGN3lYUbWvzeP0vuHLzHFwnrZk%2FoWr1IeqOKSZjrtI&noverify=0&group_code=970621029')
--gg.intent("链接")--网页（tg群）
end--点击图片执行的功能（可省略）
),
AN.flashtext('点击进入官方群聊'),
AN.text("\n"),

		AN.switch('音效开关',
function()
BxCb =io.open('/sdcard/音效资源/图片/box音效','r') 
 if BxCb == nil then 
download("http://wp.abcxpg.cn/view.php/2805436fd6dc477c1cf774040f26f04d.mp3", "/sdcard/音效资源/图片/box音效") 
 
else 

--不用添加
end  
BxCb =io.open('/sdcard/音效资源/图片/收起科技','r') 
 if BxCb == nil then 
download("http://wp.abcxpg.cn/view.php/251c7a0b6507cd564a5e5b197d64e100.mp3", "/sdcard/音效资源/图片/收起科技") 
 
else 

--不用添加
end  
BxCb =io.open('/sdcard/音效资源/图片/科技打开','r') 
 if BxCb == nil then 
download("http://wp.abcxpg.cn/view.php/3056f394bd24cf2d08ca71ae47237439.mp3", "/sdcard/音效资源/图片/科技打开") 
 
else 

--不用添加
end  



BxCb =io.open('/sdcard/音效资源/图片/切入','r') 
 if BxCb == nil then 
download("http://wp.abcxpg.cn/view.php/a963752357e51b2147b93f40383db8ab.mp3", "/sdcard/音效资源/图片/切入") 
 
else 

--不用添加
end  
BxCb =io.open('/sdcard/音效资源/图片/音响','r') 
 if BxCb == nil then 
download("http://wp.abcxpg.cn/view.php/36a0494e5e9ecfce15e5f921344c85cd.mp3", "/sdcard/音效资源/图片/音响") 
 
else 

--不用添加
end  

BxCb =io.open('/sdcard/音效资源/图片/发送消息','r') 
 if BxCb == nil then 
download("http://wp.abcxpg.cn/view.php/bdecf6ba69283e6cfd285f6a859b833c.mp3", "/sdcard/音效资源/图片/发送消息") 
 
else 

--不用添加
end  

BxCb =io.open('/sdcard/音效资源/图片/新开关音效','r') 
 if BxCb == nil then 
download("http://wp.abcxpg.cn/view.php/e7f4c248079c0eaea866aa4ef52eef46.mp3", "/sdcard/音效资源/图片/新开关音效") 
 
else 

--不用添加
end  
end,
function()
file.rmdir('/sdcard/音效资源') --> 如果 /sdcard/rlgg 是目录,则把该目录删除,不管是不是空目录,有多少子目录子文件
end),
AN.switch('关闭缩放',function()
isLocked=true
end,
function()
isLocked=false
end),

AN.switch(
			'音量键隐藏UI',
			function()
				音量键=true
			end,
			function()
				音量键=false
			end),
			AN.switch('摇一摇隐藏UI',
				function()
					摇一摇=true
				end,
				function()
					摇一摇=false
				end),

		AN.switch("低配模式",
	function()
	            dpms1 = 1
				luajava.runUiThread (function ()
				dpms : setVisibility (View.VISIBLE)
				ltslaym4 : setVisibility (View.GONE)
				recordtext : setVisibility (View.GONE)
				ltsfs111 : setVisibility (View.GONE)
				luajava.getIdView("liuxingyu1"):setImageDrawable(lxytp2)
luajava.post(function()
webv_:removeView(parti)
		end)--关
				--srk : setVisibility (View.GONE)
				end
				)
			end,
			function()
			    dpms1 = nil
				luajava.runUiThread (function ()
				ltslaym4 : setVisibility (View.VISIBLE)			
				recordtext : setVisibility (View.VISIBLE)				
				ltsfs111 : setVisibility (View.VISIBLE)
				dpms : setVisibility (View.GONE)
			luajava.getIdView("liuxingyu1"):setImageDrawable(lxytp1)
luajava.post(function()
webv_:addView(parti)
		end)--开
				end
				)
			end),



AN.button('切换颜色',
function()
预置颜色()
end),

AN.button('加入官群',
function()
gg.goURL('http://qm.qq.com/cgi-bin/qm/qr?_wv=1027&k=SyOyVMFJhh6BMX2fgBotcxh6pmhv8D5C&authKey=oaJy4%2FK2HZaDZ48gzKHlCNBGN3lYUbWvzeP0vuHLzHFwnrZk%2FoWr1IeqOKSZjrtI&noverify=0&group_code=970621029')
end),
AN.button("退出脚本",
			function()
			window:removeView(floatWindow)
					luajava.setFloatingWindowHide(false)
					tuichu=1
			end)--最后一个参数是颜色可以省略，默认蓝
}	})




