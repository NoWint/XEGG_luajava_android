local info={
  example_version = '1.0.3',
		name = '新凛夜③项目',
		appid = '70739',
		appkey = 'oC6bcxxjS4c7c85l',
		rc4key = 'xg77vGP1FbsgPb55',
		version = '1.0',
		mi_type = '3'
}
--替换为自己的
--示例卡密:56








function panduan(rec) fille,err=io.open(rec) if fille == nil then return false else return true end end
if panduan("/storage/emulated/0/凛夜④/卷轴/卷轴.zip") ~= true then
  gg.toast("正在下载资源卷轴.zip\n请耐心等待")
  luajava.download("https://peizhi.by.4yym.cn/卷轴.zip","/storage/emulated/0/凛夜④/卷轴/卷轴.zip")
  luajava.download("https://peizhi.by.4yym.cn/opo.zip","/storage/emulated/0/凛夜④/卷轴/opo.zip")
end
if panduan("/storage/emulated/0/凛夜④/卷轴/CircleImageView.dex")~=true then
  file.unzip("/storage/emulated/0/凛夜④/卷轴/卷轴.zip","/storage/emulated/0/凛夜④/卷轴/")
  file.unzip("/storage/emulated/0/凛夜④/卷轴/opo.zip","/storage/emulated/0/凛夜④/卷轴/")
end
rlyunyz=getrlyunyz(info)
ini=rlyunyz.checkUpdate()
dex.loadfile("/storage/emulated/0/凛夜④/卷轴/CircleImageView.dex")
import("android.widget.CircleImageView")
--圆形图片
local MediaRecorder = luajava.bindClass("android.media.MediaRecorder")
local AudioSource = luajava.bindClass("android.media.MediaRecorder$AudioSource")
local OutputFormat = luajava.bindClass("android.media.MediaRecorder$OutputFormat")
local AudioEncoder = luajava.bindClass("android.media.MediaRecorder$AudioEncoder")
local audioManager = context:getSystemService(context.AUDIO_SERVICE)
local sourceType = AudioSource.MIC
--录音
shimmer=dex.loadfile('/storage/emulated/0/凛夜④/卷轴/Shimmer2.dex')
import "com.romainpiel.shimmer.Shimmer"
import "com.romainpiel.shimmer.ShimmerTextView"
--闪耀文字
local typeface=import("android.graphics.Typeface")
local FontPath="/storage/emulated/0/凛夜④/卷轴/long.ttf"--字体路径
local font=typeface:createFromFile(FontPath)
--字体
local dexloader=dex.loadfile('/storage/emulated/0/凛夜④/卷轴/classes3.dex')
local MySensorManager=dexloader:loadClass('yaocn.rlyun.yaoyiyao.MySensorManager')
local sensorManager=luajava.new(MySensorManager, context)
local sensorEventListener={
  onSensorChanged=functions.debounce(function()
    if 摇一摇==false then return 0 end
    if qhkai~=0 then
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
      end):start()

    end
  end,500)
}
sensorManager:registerListener(sensorEventListener)--注册传感器
--摇一摇

function getedit(name)
  edit=tostring(luajava.getIdValue(name):getText())
  return edit
end
function 获取图片(txt)
  ntxt=string.sub(string.gsub(txt,"/","-"),-10,-1)
  if string.find(tostring(txt),"http") ~= nil then
    if panduan("/sdcard/凛夜④/卷轴/"..ntxt) == false then
      download(txt,"/sdcard/凛夜④/卷轴/"..ntxt)
    end
    txt="/sdcard/凛夜④/卷轴/"..ntxt
  end
  return luajava.getBitmapDrawable(txt)
end
if panduan("/sdcard/凛夜④/卷轴/km.lua") ~= false then
  dofile("/storage/emulated/0/凛夜④/卷轴/km.lua")
end
if panduan("/sdcard/凛夜④/卷轴/tx.lua") ~= false then
  dofile("/storage/emulated/0/凛夜④/卷轴/tx.lua")
end
if panduan("/sdcard/凛夜④/卷轴/nc.lua") ~= false then
  dofile("/storage/emulated/0/凛夜④/卷轴/nc.lua")
end
function getRes(x)
  return 获取图片("/sdcard/凛夜④/卷轴/"..x)
end
ckimg = {
	"CircleImageView.dex",
	"classes3.dex",
	"Shimmer2.dex",
	"卷轴.zip",
	
}
function particle()
  local webView=luajava.webView(function(webView)
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
    height: 1000px;
    /* 溢出隐藏 */
    overflow: hidden;
}
.container{
    /* 绝对定位 */
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 1000px;
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
    webView:setVerticalScrollBarEnabled(false)
    webView:setHorizontalScrollBarEnabled(false)
    webView:setScrollContainer(false)
  end)
  return webView
end
parti=particle()
colorvs={}
local android=import("android.*")
write=file.write
context=app.context
window=context:getSystemService("window") -- 获取窗口管理器
vibra=context:getSystemService(Context.VIBRATOR_SERVICE)
function getLayoutParams()
  LayoutParams=WindowManager.LayoutParams
  layoutParams=luajava.new(LayoutParams)
  if(Build.VERSION.SDK_INT >=26) then -- 设置悬浮窗方式
    layoutParams.type=LayoutParams.TYPE_APPLICATION_OVERLAY
   else
    layoutParams.type=LayoutParams.TYPE_PHONE
  end
  layoutParams.format=PixelFormat.RGBA_8888 -- 设置背景
  layoutParams.flags=LayoutParams.FLAG_NOT_TOUCH_MODAL -- 焦点设置Finish
  layoutParams.gravity=Gravity.TOP|Gravity.LEFT -- 重力设置
  layoutParams.width=LayoutParams.WRAP_CONTENT -- 布局宽度
  layoutParams.height=LayoutParams.WRAP_CONTENT -- 布局高度
  return layoutParams
end
function getVerticalBG(gtvb1,gtvb3,gtvb4,gtvb5)
  if not gtvb4 then gtvb4=0 gtvb5=0xff000000 end
  local jianbians=luajava.new(GradientDrawable)
  jianbians:setCornerRadius(gtvb3)
  jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
  jianbians:setColors(gtvb1)
  jianbians:setStroke(gtvb4,gtvb5)--边框宽度和颜色
  return jianbians
end
function getCorner(gtvb1,gtvb3,gtvb4,gtvb5,g1,g2,g3,g4)
  if not gtvb4 then gtvb4=0 gtvb5=0xff000000 end
  local jianbians=luajava.new(GradientDrawable)
  jianbians:setCornerRadius(gtvb3)
  jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
  jianbians:setColors(gtvb1)
  jianbians:setStroke(gtvb4,gtvb5)--边框宽度和颜色
  jianbians:setCornerRadii({g1,g1,g2,g2,g3,g3,g4,g4})
  return jianbians
end
function jybg(color,jiao)
  return luajava.loadlayout{GradientDrawable,color=color,
  cornerRadius=jiao}
end
hanshu=function(v, event)
  local Action=event:getAction()
  if Action == MotionEvent.ACTION_DOWN then
    isMove=false
    RawX=event:getRawX()
    RawY=event:getRawY()
    x=mainLayoutParams.x
    y=mainLayoutParams.y
   elseif Action == MotionEvent.ACTION_MOVE then
    isMove=true
    mainLayoutParams.x=tonumber(x) + (event:getRawX() - RawX)
    mainLayoutParams.y=tonumber(y) + (event:getRawY() - RawY)
    window:updateViewLayout(floatWindow, mainLayoutParams)
  end
end
suofang=function(v, event)
  local Action=event:getAction()
  if Action == MotionEvent.ACTION_DOWN then
    isMove=false
    RawX=event:getRawX()
    RawY=event:getRawY()
    x=mainLayoutParams.height
    y=mainLayoutParams.width
    if x==0 or x==-2 then x=1700 y=1400 end
   elseif Action == MotionEvent.ACTION_MOVE then
    isMove=true
    UI高度=tonumber(x) + (event:getRawY() - RawY)
    if UI高度>=1400 and UI高度<=50000 then
      mainLayoutParams.height=UI高度
    end
    window:updateViewLayout(floatWindow, mainLayoutParams)
  end
end
import("android.media.AudioManager")
audi=context:getSystemService("audio")
audiotype={
  AudioManager.STREAM_ALARM, --手机闹铃的声音
  AudioManager.STREAM_MUSIC, --手机音乐的声音
  AudioManager.STREAM_NOTIFICATION, --系统提示的通知
  AudioManager.STREAM_RING, --电话铃声的声音
  AudioManager.STREAM_SYSTEM, --手机系统的声音
  AudioManager.STREAM_VOICE_CALL, --语音电话的声音
  AudioManager.STREAM_DTMF, --DTMF音调的声音
}
yinl={}
for i=1,#audiotype do
  yinl[i]={}
  yinl[i].type=audiotype[i]
  yinl[i].min=audi:getStreamMinVolume(audiotype[i])
  yinl[i].max=audi:getStreamMaxVolume(audiotype[i])
  yinl[i].now=audi:getStreamVolume(audiotype[i])
end
yltype=0
function jianting3(func)
  yinln={}
  for i=1,#audiotype do
    yinln[i]={}
    yinln[i].type=audiotype[i]
    yinln[i].now=audi:getStreamVolume(audiotype[i])
    if yinln[i].now > yinl[i].now then
      yinl[i].now=yinln[i].now
      if yltype == 1 then
        yltype=0
        func()
      end
     elseif yinln[i].now < yinl[i].now then
      yinl[i].now=yinln[i].now
      if yltype == 0 then
        yltype=1
        func()
      end
    end
  end
end
qhkai=0
qiehuan=function()
  if qhkai == 0 then
    qhkai=1
    draw.remove()
    luajava.runUiThread(function()
      YoYoImpl:with("FadeOut"):duration(300):playOn(floatWindow)
    end)
    gg.sleep(300)
    luajava.runUiThread(function()
      floatWindow:setVisibility(View.GONE)
    end)
   else
    qhkai=0
    huiz()
    luajava.runUiThread(function()
      floatWindow:setVisibility(View.VISIBLE)
      YoYoImpl:with("FadeIn"):duration(500):playOn(floatWindow)
    end)
  end
end
YoYoImpl=luajava.getYoYoImpl()
YCmenu=function(sview)
----------------------------聊天室配置区----------------------------
do
local path = "/sdcard/凛夜④/卷轴/游客信息t.lua" --用户信息
local r = io.open(path, "r")
if r then
qltname = r:read("*a")
else
	qltname = "游客" .. math.random(1111111, 9999999)
io.open(path, "w"):write(qltname)
end
qltname=string.gsub(qltname,' ','')
qltname=string.gsub(qltname,'\n','')
local path = "/sdcard/凛夜④/卷轴/用户头像t.lua" --用户信息
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

function 修改名字(lttext)
if string.len(lttext) <= 0 then return 0 end
if string.len(lttext) >= 400 then
gg.toast("用户名长度上限20字节") return 0
end
local path = "/sdcard/凛夜④/卷轴/游客信息t.lua" --用户信息
qltname = lttext
qltname=string.gsub(qltname,' ','')
qltname=string.gsub(qltname,'\n','')

io.open(path, "w"):write(qltname)
gg.alert("昵称修改成功\n"..lttext)
end
function 修改头像(txt)
if isUrlSafe(txt) then
else
gg.alert("头像链接有误 不能使用中文")
	return empty
end
local path2 = "/sdcard/凛夜④/卷轴/用户头像t.lua"
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
local uploadUrl = 聊天室链接.."/upload.php?name=jb"
local headers = {["Content-Type"] = "multipart/form-data"}
local response = http.upload(uploadUrl,headers,imagePath)
if response.code == 200 then
    randompic="☂️语音"..response.content.."☂️"
    发送聊天2(randompic)
else
    gg.alert("文件上传失败: " .. response.status)
end
	
end
function YCsetedit2(name,txt)
txt = tostring(txt)
luajava.runUiThread(function()
	luajava.getIdValue(name):setText(txt)
	end)
end
lastlttm = os.time()-3
function 发送聊天(lttext)
if os.time()-lastlttm <= 3 then
gg.alert("聊天冷却"..4 -(os.time()-lastlttm).."秒")
return 0
end
YCsetedit2("聊天框","")
local server = 聊天室链接.."/" --服务器地址
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
local server = 聊天室链接.."/" --服务器地址
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
pcall(shuaxinchat())
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
	local server = 聊天室链接 .. "/" -- 服务器地址
	http.get(server .. "time.txt", nil, function(uptime)
		if not isTable(uptime) or uptime.code ~= 200 then
			gg.toast("请检查您的网络是否正常")
			nolts=true
			addchat(YCtext("聊天室网络异常，已暂时为你关闭"))
			return 0
		end
		uptime = uptime.content
		if tonumber(uptime) <= nowtime then
			return 0
		end
		http.get(server .. "lts.php?hq=true",nil, function(res)
			if not isTable(res) or res.code ~= 200 then
				gg.toast("请检查您的网络是否正常")
			nolts=true
			addchat(YCtext("聊天室网络异常，已暂时为你关闭"))
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
					if newltres[i].ltname == localres[j].ltname and newltres[i].lttime == localres[j].lttime and newltres[i].lttext == localres[j].lttext then
						isnew = false
					end
				end
				if isnew == true then
					isnew = false
					xuyaoshuaxin = true
					localres[#localres + 1] = newltres[i]
					-- gg.alert(tostring(localres[#localres]))
					local t=YCchat(localres[#localres])
					if type(t)=="userdata" then
					addchat(t)
					end
				end
			end
			-- gg.alert(tostring(localres))
			if xuyaoshuaxin == true and already == true then
				xuyaoshuaxin = false
				gg.sleep(500)
				gundong()
			end
	
		end)
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
if panduan("/sdcard/凛夜④/卷轴/"..ntxt) == false then
file.download(txt,"/sdcard/凛夜④/卷轴/"..ntxt)
else
	if file.length("/sdcard/凛夜④/卷轴/"..ntxt) <= 1 then
file.download(txt,"/sdcard/凛夜④/卷轴/"..ntxt)
end
end
txt = "/sdcard/凛夜④/卷轴/"..ntxt
end
return luajava.getBitmapDrawable(txt)
end
function getjb()
local jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(15)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({0xff397EF8,0xff25C4FD})
jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
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
function chatbg()
local jb=getVerticalBG({0xee000000,0xee000000},10,2,0xffd8d8d8)
return jb
end
function YCchat(ltlist)
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
						if panduan("/sdcard/凛夜④/卷轴/"..playPath)~=true then
						file.download(tostring(聊天室链接.."/".."audio/"..playPath),"/sdcard/凛夜④/卷轴/"..playPath)
						end
						gg.playMusic("/sdcard/凛夜④/卷轴/"..playPath)
						end):start()
					end,
				padding = "3dp",
				layout_width = "wrap_content",
				layout_height = "wrap_content",
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
				Typeface=font,
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
						if panduan("/sdcard/凛夜④/卷轴/"..playPath)~=true then
						file.download(tostring(聊天室链接.."/audio/"..playPath),"/sdcard/凛夜④/卷轴/"..playPath)
						end
						gg.playMusic("/sdcard/凛夜④/卷轴/"..playPath)
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
end

end
return ltresult

end
function addchat(cha)
if cha==nil then return 0 end
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
_ENV["ltslays4"]:fullScroll(_ENV["ltslaym4"].FOCUS_DOWN)
end
local runnable = luajava.getRunnable(invoke2)
local handler = luajava.getHandler()
handler:post(runnable)
end
end
----------------------------聊天室配置区----------------------------
  function 切换(x)
    当前页面=x
    luajava.runUiThread(function()
      for i=1,#页数 do
        _ENV["tab"..i]:setTextColor(0xffCAC6C5)--未选中的字体颜色    
        _ENV["Page"..i]:setVisibility(View.GONE)
      end
      _ENV["tab"..当前页面]:setTextColor(0xffffffff)--选中的字体颜色  
      _ENV["Page"..当前页面]:setVisibility(View.VISIBLE)
      YoYoImpl:with("FadeIn"):duration(400):playOn(_ENV['Page'..当前页面])
    end)
  end
  local Page={
    LinearLayout,
    layout_height='match_parent',
    layout_width='match_parent',
  }
  local TabBar={
    LinearLayout,
    layout_height='match_parent',
    layout_width='match_parent',
  }
  for i=1,#页数 do
    if 页数[i] == "聊天室" then ltsym=i end
    TabBar[#TabBar + 1]={
      TextView,
      id="tab"..i,
      gravity="center",
      layout_marginLeft="10dp",
      layout_marginRight="10dp",
      layout_width="wrap_content",
      layout_height="match_parent",
      text=页数[i],
      textColor="#CAC6C5",
      textSize="14sp",
      Typeface=font,
      onClick=function() 切换(i) end
    }
    tmp={
      LinearLayout,
      layout_height="wrap_content",
      layout_width="match_parent",
      orientation="vertical",
    }
    for k=1,#sview[i] do
      tmp[#tmp+1]=sview[i][k]
    end
    _ENV["Page"..i]=luajava.loadlayout({
      ScrollView,
      layout_height="match_parent",
      layout_width="match_parent",
      VerticalScrollBarEnabled=false,
      tmp,
    })
  end
  _ENV["Page"..ltsym]=luajava.loadlayout{
    LinearLayout,
    layout_width = "match_parent",
    layout_height = "match_parent",
    orientation = "vertical",
    {ScrollView,
      id = "ltslays4",
      layout_width = "match_parent",
      layout_weight=1,
      layout_height = "match_parent",
      orientation = "vertical",
      {
        LinearLayout,
        id = "ltslaym4",
        gravity = "top",
        layout_width = "match_parent",
        orientation = "vertical",
        gravity = "center_horizontal",
      }
    },
    {LinearLayout,
      id="srk",
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
            recordtext:setText("正在录音")
            luajava.newThread(function()
              vibra:vibrate(30)
              recorder = MediaRecorder()
              recorder:setAudioSource(sourceType)
              recorder:setOutputFormat(OutputFormat.THREE_GPP)
              recorder:setAudioEncoder(AudioEncoder.AMR_NB)
              -- 设置录音文件存储路径
              savePath = "/sdcard/凛夜④/卷轴/test.mp3"
              recorder:setOutputFile(savePath)
              recorder:prepare()
              recorder:start()
              redstart=os.time()
            end):start()
           elseif event:getAction() == MotionEvent.ACTION_UP then
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
            pcall(shuaxinchat())
          end):start()
        end,
      },
      {EditText,
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
        onClick=function() luajava.newThread(function() 发送聊天(getedit("聊天框")) gundong() end):start() end
      },
  }}
  for i=1,#页数 do
    Page[#Page + 1] =_ENV["Page"..i]
  end
  menu=luajava.loadlayout({
    FrameLayout,
    layout_height="match_parent",
    layout_width="match_parent",
    visibility="gone",
    {
      LinearLayout,
      layout_height="match_parent",
      layout_width="match_parent",
      layout_marginLeft="13dp",
      layout_marginRight="15.5dp",
      layout_marginBottom="45dp",
      Page
    },
    {
      HorizontalScrollView,
      layout_height="30dp",
      layout_width="match_parent",
      layout_marginLeft="9dp",
      layout_marginRight="11.5dp",
      layout_gravity="bottom",
      background=getVerticalBG({0x70161616,0x70161616},0),
      HorizontalScrollBarEnabled=false,
      TabBar
    }
  })
  xfc={
    FrameLayout,
    orientation="vertical",
    id="xfc",
    layout_gravity="center",
    layout_height="match_parent",
    layout_width="match_parent",
    {
      FrameLayout,
      orientation="vertical",
      layout_width="301dp",
      layout_height="match_parent",
      {
        ImageView,
        layout_height="100dp",
        layout_width="301dp",
        src="/storage/emulated/0/凛夜④/卷轴/hua1",
        layout_gravity="center|top",
      },
      {
        LinearLayout,
        layout_height="match_parent",
        layout_width="270dp",
        layout_marginTop="90dp",
        layout_marginBottom="90dp",
        layout_gravity="center",
        background=getVerticalBG({0xffE5DEDB,0xffEAE5E2},0),
        {
          FrameLayout,
          layout_height="match_parent",
          layout_width="match_parent",
          layout_marginLeft="9dp",
          layout_marginRight="11.5dp",
          background=getVerticalBG({0xffffffff,0xffffffff},0),
          {
            ImageView,
            layout_height="280dp",
            layout_width="180dp",
            src="/storage/emulated/0/凛夜④/卷轴/long",
            layout_gravity="center",
          },
        },
      },
      {
        ImageView,
        layout_height="120dp",
        layout_width="301dp",
        src="/storage/emulated/0/凛夜④/卷轴/hua2",
        layout_gravity="center|bottom",
      },
      {
        ImageView,
        layout_height="160dp",
        layout_width="120dp",
        src="/storage/emulated/0/凛夜④/卷轴/jianke",
        layout_gravity="right|bottom",
      },
      {
        ImageView,
        layout_height="120dp",
        layout_width="100dp",
        id= "zhuzi",
        src="/storage/emulated/0/凛夜④/卷轴/l1",
        layout_gravity="right|bottom",
      },
    },
    {
      LinearLayout,
      gravity='center',
      layout_width="270dp",
      layout_height="match_parent",
      layout_marginTop="10dp",
      layout_marginBottom="10dp",
      layout_gravity="center|top",
      id='canv',
    },
    {
      FrameLayout,
      gravity='center',
      layout_width="270dp",
      layout_height="match_parent",
      layout_gravity="center",
      onClick=function() end,
      onTouch=hanshu,
      {
        ImageView,
        layout_height="20dp",
        layout_width="20dp",
        src="/storage/emulated/0/凛夜④/卷轴/shuimojb",
        layout_marginRight="30dp",
        layout_marginTop="35dp",
        layout_gravity="right|top",
        onClick=function() 隐藏() end,
        onTouch=hanshu
      },
      {
        ImageView,
        layout_height="20dp",
        layout_width="20dp",
        id="lxkg",
        src="/storage/emulated/0/凛夜④/卷轴/star1",
        layout_marginRight="70dp",
        layout_marginTop="35dp",
        layout_gravity="right|top",
        onClick=function()
          if lxkg1 then
            lxkg1=false
            lxkg:setImageDrawable(luajava.getBitmapDrawable("/storage/emulated/0/凛夜④/卷轴/star1"))
            canv:addView(parti)
           else
            lxkg1=true
            lxkg:setImageDrawable(luajava.getBitmapDrawable("/storage/emulated/0/凛夜④/卷轴/star2"))
            canv:removeView(parti)
          end
        end,
        onTouch=hanshu
      },
      {
        TextView,
        text=左上角文字,
        layout_marginLeft="17dp",
        layout_marginTop="40dp",
        textColor="#000000",
        textSize="16sp",
        Typeface=font
      },
      {LinearLayout,
        gravity='center',
        layout_width="270dp",
        layout_height="match_parent",
        layout_marginTop="65dp",
        layout_marginBottom="45dp",
        layout_gravity="center",
        menu
      },
    },
  }
  if not kam then kjkm="" else kjkm="******"..string.sub(kam,1,2) end
  if not qlticon then qlticon=悬浮球图标 end
  if not qltname then qltname="凛夜④" end
  nicheng=luajava.loadlayout({
    ShimmerTextView,
    text=qltname,
    reflectionColor="#FFDD60",
    textColor="#000000",
    textSize="14sp",
    gravity="center",
  })
  kmtime=luajava.loadlayout( {
    ShimmerTextView,
    textColor="#000000",
    id="kmtime",
    textSize="13sp",
    reflectionColor="#FFDD60",
    text="数据不存在",
    layout_width="160dp",
    layout_height="40dp",
    Typeface=font,
    gravity="center",
  })
  yanz=luajava.loadlayout({
    LinearLayout,
    layout_height="match_parent",
    layout_width="match_parent",
    orientation="horizontal",
    gravity="center",
    {
      LinearLayout,
      layout_gravity="center",
      layout_height="match_parent",
      layout_marginTop="35dp",
      layout_marginBottom="35dp",
      layout_width="match_parent",
      gravity="center",
      orientation="vertical",
      {
        LinearLayout,
        background=jybg({0xffFFFFFD,0xfffffffd},20),
        layout_width="160dp",
        layout_height="130dp",
        id="kjdl",
        elevation="10dp",
        layout_gravity="center",
        orientation="vertical",
        onClick=function()
          luajava.newThread(function()
            if kam == '没有登录' then
              gg.alert("你还没有登录过")
             else login(kam) end end):start() end,
              {
                TextView,
                text=string.format('凛夜④用户启动次数:%s', (tonumber(ini.api_total) or 0)),
                textColor="#000000",
                textSize="12sp",
                gravity="center",
                layout_marginTop="5dp",
                layout_gravity="center",
              },
              {
                CircleImageView,
                layout_width="50dp",
                src=""..qlticon,
                layout_marginTop="2dp",
                layout_gravity="center",
                layout_height="50dp"
              },
              {
                LinearLayout,
                layout_gravity="center",
                nicheng
              },
              {
                TextView,
                text=kjkm,
                textColor="#656663",
                textSize="16sp",
                gravity="center",
                layout_gravity="center",
              },
              {
                TextView,
                text="快捷登录",
                textColor="#4E98FF",
                textSize="11sp",
                gravity="center",
                layout_gravity="center",
              },
            },
            {
              LinearLayout,
              layout_height="40dp",
              layout_marginTop="10dp",
              layout_gravity="center",
              elevation="10dp",
              background=jybg({0xffFFFFFD,0xfffffffd},40),
              kmtime
            },
            {
              EditText,
              layout_gravity="center",
              textColor="#000000",
              id=luajava.newId('卡密'),
              hintTextColor="#656663",
              layout_height="50dp",
              hint="请输入卡密",
              Typeface=font,
              layout_marginTop="10dp",
              background=jybg({0xffFFFFFD,0xfffffffd},20),
              elevation="10dp",
              layout_width="160dp",
              gravity="center",
            },
            {
              TextView,
              layout_gravity="center",
              textColor="#ffffff",
              layout_height="30dp",
              layout_marginTop="10dp",
              background=jybg({0xff3C73FB,0xff3C73FB},20),
              textSize="16sp",
              elevation="10dp",
              text="登录",
              layout_width="160dp",
              gravity="center",
              onClick=function() luajava.newThread(function() local dl=getedit("卡密")
                  if dl~="" and dl~=" " then
                    login(dl)
                   else
                    gg.alert("卡密不能留空")
              end end):start() end,
            },
            {
              TextView,
              layout_gravity="center",
              textColor="#ffffff",
              layout_height="30dp",
              layout_marginTop="5dp",
              background=jybg({0xff3C73FB,0xff3C73FB},20),
              textSize="16sp",
              elevation="10dp",
              text="购卡",
              layout_width="160dp",
              gravity="center",
              onClick=function() luajava.newThread(function()
                  gg.intent(卡网) 隐藏() rmdadView(vv) vv=nil
              end):start() end,
            },
            {
              TextView,
              layout_gravity="center",
              textColor="#ffffff",
              layout_height="30dp",
              layout_marginTop="5dp",
              background=jybg({0xff3C73FB,0xff3C73FB},20),
              textSize="16sp",
              elevation="10dp",
              text="解绑",
              layout_width="160dp",
              gravity="center",
              onClick=function() luajava.newThread(function()
                  local t=getedit("卡密")
                  if t~="" and t~=" " then
                    rlyunyz.unbind(t)
                   else
                    gg.alert("请输入需要解绑的卡密")
                  end
              end):start() end,
            },
            {
              TextView,
              layout_gravity="center",
              textColor="#ffffff",
              layout_height="30dp",
              layout_marginTop="5dp",
              background=jybg({0xff37383D,0xff37383D},20),
              textSize="16sp",
              elevation="10dp",
              text="退出",
              layout_width="160dp",
              gravity="center",
              onClick=function() tuichu=1 end,
            },
          },
        })
        if not kam then luajava.runUiThread(function() kjdl:setVisibility(View.GONE) kmtime:setVisibility(View.GONE) end) end
        function login(kam)
          local loadBox=getLoadingBox('正在校验卡密')
          if tostring(kam)=="" or tostring(kam)==" " then return 0 end
          loadBox['显示']()
          ret=rlyunyz.login(kam)
          loadBox['关闭']()
          if type(ret) ~= "table" then
           else
            ktmp="kam='"..kam.."'"
            write("/sdcard/凛夜④/卷轴/km.lua",ktmp)
            luajava.runUiThread(function()
              YoYoImpl:with("FadeOut"):duration(300):playOn(yanz)
            end)
            gg.sleep(300)
            luajava.runUiThread(function()
              yanz:setVisibility(View.GONE)
              YoYoImpl:with("FadeIn"):duration(500):playOn(menu)
              menu:setVisibility(View.VISIBLE)
            end)
          end
        end
        function ExpireTime(time)
          luajava.startThread(function()
            while true do
              local D=time // (60 * 60 * 24)
              local H=time // (60 * 60) % 24
              local M=time // 60 % 60
              local S=time % 60
              local text
              if D > 0 then
                text=string.format('%d天%d小时%d分%d秒', D, H, M, S)
               elseif H > 0 then
                text=string.format('%d小时%d分%d秒', H, M, S)
               elseif M > 0 then
                text=string.format('%d分%d秒', M, S)
               elseif S > 0 then
                text=string.format('%d秒', S)
               else
              end
              luajava.runUiThread(function()
                kmtime:setText("卡密到期时间:\n"..text)
              end)
              time=time - 1
              gg.sleep(1000)
            end
          end)
        end
        if kam then
          local kamiyz=rlyunyz.postApi('kmlogon',{kami=kam})
          if kamiyz == "卡密不存在" or kamiyz == "卡密已使用" then
            luajava.runUiThread(function() kmtime:setText(kamiyz) end)
           else
            kmsj=kamiyz['msg']['vip']-kamiyz['time']
            ExpireTime(kmsj)
          end
        end
        xfq=luajava.loadlayout({
          CircleImageView,
          layout_width="40dp",
          elevation="3dp",
          src=悬浮球图标,
          visibility="gone",
          onTouch=hanshu,
          onClick=function() 隐藏() end,
          layout_height="40dp"
        })
        ImageRotation=function(control, time, t)
          luajava.runUiThread(function()
            import "android.view.animation.Animation"
            import "android.animation.ObjectAnimator"
            xuanzhuandonghua=ObjectAnimator:ofFloat(control,"rotation",{
              time,t
            })
            xuanzhuandonghua:setRepeatCount(Animation.INFINITE)
            xuanzhuandonghua:setRepeatMode(Animation.RESTART)
            xuanzhuandonghua:setDuration(5000)
            xuanzhuandonghua:start()
          end)
        end

        ImageRotation(xfq,360)
        floatWindow={
          LinearLayout,
          id="motion",
          elevation="10dp",
          orientation="vertical",
          layout_height="match_parent",
          layout_width="match_parent",
          onTouch=hanshu,
          {
            FrameLayout,
            layout_height="match_parent",
            layout_width="match_parent",
            id="jiemian",
            xfc,
            yanz,
            {
              FrameLayout,
              layout_width="match_parent",
              layout_height="match_parent",
              id="suof",
              {
                LinearLayout,
                layout_width="match_parent",
                layout_height="35dp",
                id="jiaobiao",
                layout_gravity="bottom",
                onClick=function() end,
                onTouch=suofang
              }
            }
          },
          xfq
        }
        function 隐藏()
          if yc == 1 then
            jiemian:setVisibility(View.VISIBLE)
            xfq:setVisibility(View.GONE)
            YoYoImpl:with("FadeIn"):duration(500):playOn(floatWindow)
            mainLayoutParams.height=UI高度 -- 布局高度
            mainLayoutParams.flags=LayoutParams.FLAG_NOT_TOUCH_MODAL
            window:updateViewLayout(floatWindow, mainLayoutParams)
            yc=nil
           else
            jiemian:setVisibility(View.GONE)
            xfq:setVisibility(View.VISIBLE)
            mainLayoutParams.height=LayoutParams.WRAP_CONTENT -- 布局高度
            YoYoImpl:with("FadeIn"):duration(500):playOn(floatWindow)
            mainLayoutParams.flags=LayoutParams.FLAG_NOT_FOCUSABLE
            window:updateViewLayout(floatWindow, mainLayoutParams)
            yc=1
          end
        end
        local function invoke()
          mainLayoutParams=getLayoutParams()
          floatWindow=luajava.loadlayout(floatWindow)
          local function invoke2()
            mainLayoutParams.height=UI高度
            shimmer=Shimmer()
            luajava.runUiThread(function()
              shimmer:setDuration(2000)
              shimmer:setStartDelay(40)
              shimmer:start(kmtime)
              shimmer:start(nicheng)
              shimmer:start(flashtext)
              shimmer:start(text)
            end)
            luajava.setFloatingWindowHide(true)
            window:addView(floatWindow,mainLayoutParams)
            canv:addView(parti)
          end
          local runnable=luajava.getRunnable(invoke2)
          local handler=luajava.getHandler()
          handler:post(runnable)
        end
        invoke(swib1,swib2)
        gg.setVisible(false)
        setOnExitListener(function()
          window:removeView(floatWindow)
          tuichu=1
        end)
        切换(1)
        luajava.startThread(function()
          while true do
            for i=1, 30 do
              zhuzi:setImageDrawable(luajava.getBitmapDrawable("/storage/emulated/0/凛夜④/卷轴/l"..i))
              gg.sleep(35)
            end
          end
        end)
        while true do
          if tuichu == 1 then break end
          jianting3(qiehuan)
          pcall(shuaxinchat())
          gundong()
          gg.sleep(120)
        end
      end
      function 退出UI()
        tuichu=1
      end
      function guid()
        seed={
          'e','1','2','3','4','5','6','7','8','9','a','b','c','d','e','f'
        }
        tb={}
        for i=1,32 do
          table.insert(tb,seed[math.random(1,16)])
        end
        sid=table.concat(tb)
        return string.format('%s%s%s%s%s',
        string.sub(sid,1,8),
        string.sub(sid,10,12),
        string.sub(sid,21,22))
        ..string.format('%s%s%s%s%s',
        string.sub(sid,1,6),
        string.sub(sid,21,25)
        )
      end
      function YCswitch(name,func1,func2)
        checkbga=getVerticalBG({0x00000000,0x00000000},360)
        checkbg=getVerticalBG({0x00000000,0x00000000},360)
        switchbg1=getVerticalBG({0xaa161616,0xaa161616},360,9,0xaa161616)
        switchbg2=getRes("shuimod")
        nid=name..guid()
        local func=开关3(name,func1,func2,nid)
        if not name then name="未设置" end
        rest=luajava.loadlayout({
          LinearLayout,
          layout_width='match_parent',
          layout_height="47dp",
          gravity="center",
          {
            LinearLayout,
            layout_width='match_parent',
            layout_height="40dp",
            gravity="center",
            layout_marginRight="5dp",
            layout_marginLeft="5dp",
            background=getVerticalBG({0x00000000,0x00000000},25,10,0xff000000),
            {
              ImageView,
              layout_width='32dp',
              layout_height="32dp",
              background =getRes("zhuzi"),
            },
            {
              TextView,
              gravity="center",
              text=name,
              textColor="0xff000000",
              textSize="15sp",
              layout_weight=1,
              layout_width='80dp',
              layout_height="wrap_content",
              layout_marginLeft="10dp",
              layout_marginRight="20dp",
              Typeface=font
            },
            {
              FrameLayout,
              id=luajava.newId(nid),
              background=checkbga,
              onClick=function() luajava.newThread(function() func() end):start() end,
              layout_width='50dp',
              layout_height='wrap_content',
              gravity="left",
              padding="1dp",
              {
                LinearLayout,
                layout_gravity="left|center",
                id=luajava.newId(nid.."k"),
                background=switchbg1,
                onClick=function() luajava.newThread(function() func() end):start() end,
                layout_width='22dp',
                layout_height='22dp',
              },
              {
                LinearLayout,
                visibility="gone",
                layout_gravity="right|center",
                id=luajava.newId(nid.."g"),
                background=switchbg2,
                onClick=function() luajava.newThread(function() func() end):start() end,
                layout_width='30dp',
                layout_height='30dp',
              }
          }}
        })
        return rest
      end
      switches={}
      function 开关3(name,func1,func2,nid)
        local sname=nid
        local localname=name
        name=name..guid()
        _ENV[name]="关"
        if func1 == nil then func1="" end
        if func2 == nil then func2="" end
        if type(func1) == "function" then
          local outfunc=function()
            namers=_ENV[name]
            if namers ~= "开" then
              vibra:vibrate(9)
              luajava.runUiThread(function()
                luajava.getIdValue(nid.."k"):setVisibility(View.GONE)
                luajava.getIdValue(nid.."g"):setVisibility(View.VISIBLE)
                luajava.getIdValue(nid):setBackground(checkbg)
              end)
              _ENV[name]="开"
              colorvs[nid]={true,"switch"}
              pcall(func1)
             else
              vibra:vibrate(9)
              luajava.runUiThread(function()
                luajava.getIdValue(nid.."g"):setVisibility(View.GONE)
                luajava.getIdValue(nid.."k"):setVisibility(View.VISIBLE)
                luajava.getIdValue(nid):setBackground(checkbga)
              end)
              colorvs[nid]={false,"switch"}
              _ENV[name]="关"
              pcall(func2)
            end
          end
          if localname=="摇一摇隐藏UI" then yyfunc=outfunc end
          if localname=="音量键隐藏UI" then ylfunc=outfunc end
          return outfunc
        end
      end
      YCcontrolWater=function(control,time)
        luajava.runUiThread(function()
          import "android.animation.ObjectAnimator"
          ObjectAnimator():ofFloat(control,"scaleX", {
            1, 0.8, 0.9, 1
          }):setDuration(time):start()
          ObjectAnimator():ofFloat(control,"scaleY", {
            1,0.8,0.9,1
          }):setDuration(time):start()
      end) end
      function YCbutton(txt,func,txtc)
        if not txt then txt="未设置" end
        if not txtc then txtc="0xffffffff" end
        local tid=guid ()..guid ()
        _ENV [tid]=luajava.loadlayout (
        {
          LinearLayout,
          layout_width='fill_parent',
          layout_height="35dp",
          {
            LinearLayout,
            layout_width="fill_parent",
            gravity="center_horizontal",
            layout_marginTop="2dp",
            layout_marginBottom="2dp",
            layout_height="30dp",
            background=getRes("shuimo"),
            onClick=function ()
              YCcontrolWater (_ENV [tid], 200)
              luajava.newThread (function ()
                vibra:vibrate(4)
                pcall (func)
              end
              ):start ()
            end,
            {
              TextView,
              text=txt,
              padding="5dp",
              textColor=txtc,
              textSize="17sp",
              gravity="center",
              layout_width="fill_parent",
              Typeface=font
            },
          }
        })
        return _ENV [tid]
      end
      function YCimage(img,height,width,pad,func)
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
YCcontrolRotation2 = function(control, time)
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
function YCtext(txt,color,size,t)
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
      function getButtonBG()
        local selector=luajava.getStateListDrawable()
        selector:addState({
          android.R.attr.state_pressed
        }, jybg({0x34000400,0x34000400},15))
        selector:addState({
          -android.R.attr.state_pressed
        }, jybg({0xaa161616,0xaa161616},15))
        return selector
      end
      YCcontrolRotation9=function(control, time,t)
        luajava.runUiThread(function()
          import "android.view.animation.Animation"
          import "android.animation.ObjectAnimator"
          xuanzhuandonghua=ObjectAnimator:ofFloat(control, "rotation", {
            time,t
          })
          xuanzhuandonghua:setRepeatCount(0)
          xuanzhuandonghua:setRepeatMode(Animation.RESTART)
          xuanzhuandonghua:setDuration(400)
          xuanzhuandonghua:start()
        end)
      end
      function visi (tid, ttid)
        vibra:vibrate(4)
        local tview=luajava.getIdValue (tid)
        local ttview=luajava.getIdValue (ttid)
        if not tview then
          return 0
        end
        if tonumber (tostring (tview:getVisibility ())) == 8.0 then
          tview:setVisibility (View.VISIBLE)
          YoYoImpl:with("FadeIn"):duration(200):playOn(boxes[tid])
          YCcontrolRotation9(boxpic[tid],0,-90)
         else
          tview:setVisibility (View.GONE)
          YCcontrolWater (_ENV [tid.."6"], 200)
          YCcontrolRotation9(boxpic[tid],-90,0)
        end
      end
      boxes={} boxpic={}
      function YCbox (views)
        local tid="box"..guid ()
        boxpic[tid]=luajava.loadlayout {
          ImageView,
          src=getRes("down"),
          layout_width="30dp",
          layout_height="26dp",
        }
        local ttid=tid.."6"
        local t1id=guid ()
        firadio={
          LinearLayout,
          layout_width='fill_parent',
          layout_height="wrap_content",
          layout_marginTop="10dp",
          layout_marginBottom="10dp",
          orientation="vertical",
        }
        if type (views [1]) == "string" or type (views [1]) == "number" then
          firadio [# firadio + 1]={
            LinearLayout,
            elevation="5dp",
            layout_width='fill_parent',
            layout_height="47dp",
            gravity="center_vertical",
            {
              LinearLayout,
              layout_width='fill_parent',
              layout_height="30dp",
              layout_marginRight="4dp",
              layout_marginLeft="4dp",
              gravity="center_vertical",
              onClick=function () visi (tid, ttid) end,
              elevation="3dp",
              background=getRes("shuimo"),
              {
                LinearLayout,
                padding={"0dp","0dp","10dp","0dp"},
                layout_width="30dp",
                layout_height="30dp",
                layout_marginLeft="25dp",
                gravity="center",
                boxpic[tid],
              },
              {
                TextView,
                text=views [1],
                textColor="0xffffffff",
                textSize="15sp",
                layout_width='fill_parent',
                layout_height="wrap_content",
                layout_marginLeft="20dp",
                layout_marginRight="10dp",
                Typeface=font
              }
            }
          }else
          gg.alert ("YCbox的table内第一个元素必须是string") os.exit ()
        end
        radios={
          LinearLayout,
          layout_marginLeft="5dp",
          layout_marginRight="5dp",
          orientation="vertical",
          visibility="gone",
          id=luajava.newId (tid),
          layout_marginRight="4dp",
          layout_marginLeft="4dp",
          layout_width='fill_parent',
        }
        for i=2, # views do
          radios [# radios + 1]=views [i]
        end
        boxes[tid]=luajava.loadlayout(radios)
        firadio [# firadio + 1]=boxes[tid]
        _ENV [t1id]=luajava.loadlayout (firadio)
        return _ENV [t1id]
      end
      function YCflashtext(a,b)
if not b then 
b = "11sp"
end
flashtext=luajava.loadlayout{ShimmerTextView,
Typeface=font,
			text=a,
			textSize=b,
			textColor="#7ED996",
			reflectionColor='#000000',
			gravity='center',
			layout_height='20dp',
			layout_width='match_parent',
			}
			return flashtext
end
      function YCedit (name, hint)
        _ENV [name]=name..guid ()
        if not hint then
          hint=name
        end
        rest=luajava.loadlayout ( {
          LinearLayout,
          layout_width='fill_parent',
          layout_height="47dp",
          {
            LinearLayout,
            layout_width='fill_parent',
            layout_height="40dp",
            layout_marginRight="4dp",
            layout_marginLeft="4dp",
            elevation="3dp",
            layout_gravity="center",
            {
              EditText,
              background=getButtonBG(),
              gravity="center",
              hint=hint,
              textColor="#ffffff",
              textSize="15sp",
              layout_height="40dp",
              layout_marginBottom="-2dp",
              id=luajava.newId(_ENV [name]),
              layout_width='match_parent',
              Typeface=font
            }
          }
        })
        luajava.getIdValue(_ENV [name]):setHintTextColor(0xffffffff)
        return rest
      end
      function YCgetedit (name)
        edit=tostring (luajava.getIdValue (_ENV [name]):getText ())
        return edit
      end
      function YCsetedit (name, txt)
        txt=tostring (txt)
        luajava.runUiThread (function ()
          luajava.getIdValue (_ENV [name]):setText (txt)
        end
        )
      end
      radiog={}
      function YCradio (cklist)
        if not radoff then
          radon=getRes("shuimoon")
          radoff=getRes("shuimooff")
        end
        local rid=guid()
        radiog[rid]={}
        rest={
          LinearLayout,
          layout_width='match_parent',
          layout_height="wrap_content",
          layout_marginTop="10dp",
          gravity="top",
          orientation="vertical",
        }
        if type (cklist [1]) == "string" then
          rds=2
          rest [# rest + 1]={
            TextView,
            gravity="left",
            padding="5dp",
            text=cklist [1],
            textSize="13sp",
            textColor="#d7d7d7",
            layout_width='fill_parent',
            layout_height='wrap_content',
            layout_marginLeft="10dp",
            layout_marginRight="5dp",
          }
         else
          rds=1
        end
        local restt={
          LinearLayout,
          layout_width='match_parent',
          layout_height="wrap_content",
          layout_marginTop="3.5dp",
          layout_marginBottom="3.5dp",
          gravity="top",
          layout_marginRight="4dp",
          layout_marginLeft="4dp",
          orientation="vertical",
          elevation="3dp",
          background=getVerticalBG({0x00000000,0x00000000},30,10,0xff000000),
          padding={"0dp","5dp","0dp","5dp"},
        }
        for i=rds, # cklist do
          local name=cklist [i] [1]
          local func=cklist [i] [2]
          if not name then
            name="未设置"
          end
          nid=name..guid ()
          radiog[rid][nid]=false
          local func=radin(rid,nid,func)
          local tid=nid..guid ()
          _ENV [tid]=luajava.loadlayout ( {
            LinearLayout,
            layout_width='250dp',
            layout_height="30dp",
            layout_marginTop="5dp",
            layout_marginBottom="15dp",
            layout_marginLeft="4dp",
            layout_marginRight="10dp",
            gravity="center_vertical",
            onClick=function ()
              YCcontrolWater (_ENV [tid], 200)
              func()
            end,
            {
              ImageView,
              id=luajava.newId (nid),
              layout_width='40dp',
              layout_height="40dp",
              layout_marginLeft="5dp",
              layout_marginRight="0dp",
              background =radoff,
              }, {
              TextView,
              gravity="top",
              text=name,
              textSize="15sp",
              textColor="0xff000000",
              layout_width='wrap_content',
              layout_height='wrap_content',
              layout_marginLeft="10dp",
              layout_marginRight="5dp",
              Typeface=font
            }
          })
          restt [# restt + 1]=_ENV [tid]
        end
        rest [# rest + 1]=restt
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
spics={
}
for i=1,55 do
	spics[i]="opo"..i
end
switchs={}
tcheck=10
function YCintcheck(name,func1,func2,ii,gid,pic)
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
			setColorFilter=0xff000000,
			gravity="center",
			layout_width = '30dp',
			layout_height = '30dp',
			padding = "8dp",
		},{
			TextView,
			id=luajava.newId(gid..ii.."t"),
			gravity = "center",
			text = name,
			textColor="#000000",
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
			setColorFilter=0xff000000,
			gravity="center",
			layout_width = '30dp',
			layout_height = '30dp',
			padding = "8dp",
		},{
			TextView,
			id=luajava.newId(gid..ii.."t"),
			gravity = "center",
			text = name,
			textColor="#000000",
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
function YCintcard(name,name2,func1,func2,ii,gid)
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
		background=getVerticalBG({0x00000000,0x00000000},30,10,0xff000000),

		orientation="vertical",
		padding="5dp",
		--background=getVerticalBG({0xffFFFDF2,0xddffffff,0xffFFFDF2},15,8,0xffFFDA71),
		{
			ImageView,
			id = luajava.newId(gid..ii.."p"),
			src = getRes(tocheck),
			setColorFilter=0xff000000,
			gravity="left",
			layout_width = '30dp',
			layout_height = '30dp',
			padding = "3dp",
		},{
			TextView,
			id=luajava.newId(gid..ii.."t"),
			gravity = "left",
			text = name,
			textColor="#000000",
			textSize = "12sp",
			layout_width = 'match_parent',
			layout_weight=1,
		},{
			TextView,
			id=luajava.newId(gid..ii.."t2"),
			gravity = "left",
			text = name2,
			textColor="#000000",
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
function YCcheckbox(gid,ii)
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
		layout_width = 'match_parent',
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
			textColor="#000000",
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
	luajava.getIdValue(nid.."t"):setTextColor(0xff004EFF)
	luajava.getIdValue(nid.."t2"):setTextColor(0xff004EFF)
	luajava.getIdValue(nid.."p"):setColorFilter(0xff004EFF)
	colorvs[nid.."p"]={true,"img"}
	colorvs[nid.."t"]={true,"txt"}
	colorvs[nid.."t2"]={true,"txt"}
	--YCcontrolWater(switchs[nid],300)
	end)
_ENV[name] = "开"

pcall(func1)
else
	vibra:vibrate(9)
luajava.runUiThread(function()
	luajava.getIdValue(nid.."t"):setTextColor(0xff000000)
	luajava.getIdValue(nid.."p"):setColorFilter(0xff000000)
	luajava.getIdValue(nid.."t2"):setTextColor(0xff000000)
	colorvs[nid.."p"]={false,"img"}
	colorvs[nid.."t"]={false,"txt"}
	colorvs[nid.."t2"]={false,"txt"}
	--YCcontrolWater(switchs[nid],300)
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
	luajava.getIdValue(nid.."t"):setTextColor(0xff004EFF)
	luajava.getIdValue(nid.."p"):setColorFilter(0xff004EFF)
	colorvs[nid.."p"]={true,"img"}
	colorvs[nid.."t"]={true,"txt"}
	--YCcontrolWater(switchs[nid],300)
	end)
_ENV[name] = "开"
pcall(func1)
else
	vibra:vibrate(9)
luajava.runUiThread(function()
	luajava.getIdValue(nid.."t"):setTextColor(0xff000000)
	luajava.getIdValue(nid.."p"):setColorFilter(0xff000000)
	colorvs[nid.."p"]={false,"img"}
	colorvs[nid.."t"]={false,"txt"}
	--YCcontrolWater(switchs[nid],300)
	end)
_ENV[name] = "关"
pcall(func2)
end
end
end
end

function YCcard(cklist)
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
rstt = YCintcard(name,name2,func1,func2,1,gid)
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
function YCcheck(cklist)
local gid=guid()
local rest = {
	GridLayout,
	id=luajava.newId(gid),
	columnCount = '3',
	layout_width = ( tonumber(string.replace(界面宽度,"dp","")) -16).."dp",
	layout_height = "wrap_content",
	
	gravity = "center",
			background=getVerticalBG({0x00000000,0x00000000},30,10,0xff000000),


}
for i = 1,#cklist do
local name = cklist[i][1]
local func1 = cklist[i][2]
local func2 = cklist[i][3]
local pic = cklist[i][4]
if not name then name = "未设置" end
rstt = YCintcheck(name,func1,func2,i,gid,pic)
if i<9 then
rest[#rest+1] = rstt
end
end
if #cklist>=9 then
rstt = YCcheckbox(gid,#cklist+1)
rest[#rest+1] = rstt
end
return luajava.loadlayout({
	LinearLayout,rest
})
end
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
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(15)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({0x11000000,0x11000000})
jianbians:setStroke(4,"0xddffffff")--边框宽度和颜色
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
				textSize = "15sp",
				textColor = "#EF8A5C",
				layout_marginBottom = "0dp",
				text = musname,
				layout_hight = "10dp",
				layout_width = "228dp",
				gravity = "center"

			},
			{
				TextView,
				layout_marginTop = "0dp",
				textColor = "#ffffff",
				textSize = "12sp",
				layout_marginBottom = "5dp",
				text = musart,
				layout_hight = "10dp",
				layout_width = "200dp",
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
	-- gg.sleep(2000)
	luajava.runUiThread(function()
		luajava.getIdView("加载"):setVisibility(View.GONE)
		luajava.getIdView("搜索结果"):setVisibility(View.VISIBLE)
	end)
end
stxt = {
	TextView,
	text = "搜索",
	textColor="#ffffff",
	background=getbg(),
	layout_height="match_parent",
	visibility = "visible",
	gravity="center",
	layout_marginRight="10dp",
	id = luajava.newId("stxt"),
	layout_marginLeft = "3dp",
	textSize = "15sp",
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
	textSize = "20sp",
	textColor="#ffffff",
}
jiaz = {
	TextView,
	text = "正在加载歌曲资源",
	visibility = "gone",
	id = luajava.newId("加载"),
	textSize = "20sp",
	gravity = "center",
	textColor="#ffffff",
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
				padding={"10dp","0dp","10dp","0dp"},
				{
					EditText,
					hint = "搜索歌曲名称",
					textColor="#ffffff",
					id = luajava.newId("搜索"),
					background = getbg(),
					focusableInTouch = "true",
					focusable = "true",
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
function 公告栏()
return luajava.loadlayout({
	LinearLayout,
	background=getVerticalBG({0x00ffffff,0x00ffffff},12,2,0xff989898),
	layout_width='match_parent',
	padding='2dp',
	{TextView,
		layout_width='match_parent',
		text=公告,
		textColor=0xff000000,
		textSize='8sp',
	}
})
end
 聊天室链接="http://***.***.***/****"--服务器地址，注意，是http开头的链接，并不是后缀
界面宽度="250dp"--不用理，配置来的






























      function huiz()
      end

      UI高度=1500 --初始高度
      左上角文字="凛夜④UI"
      悬浮球图标="https://pan.bllts.cn/view.php/e1e61eff7090ee7e26c938ce1f9cc57d.jpg"
      卡网="http://q1.qlogo.cn/g?b=qq&nk=1527167810&s=40"
      页数={
        "防封",
        "功能",
        "美化",
        "音乐",
        "聊天室",--随意放置，YCmenu对应页要留空，不然控件会被遮挡，禁止改名
        "设置"
      }
      公告=[[此作品仅供个人交流学习，勿用于任何违法犯罪用途
使用者的任何行为与开发者无关
请与24小时之内删除本应用
]]	
      

      YCmenu({
        {
        公告栏(),
YCflashtext("  当前版本1.7                                   最新版本1.7","#FF000000","10sp"),
          YCswitch("测试",function() end,function() end),
          YCbutton("测试",function() end),
          YCbox({
            "XXX区",
            YCedit("输入框演示"),
            YCbutton(
            "调用输入框",
            function()
              local tmp=YCgetedit("输入框演示")
              gg.alert(tmp)
            end),
          }),--box结尾
          YCradio({--单选
            {
              "防环境 [登录界面必开]",
              function ()
                gg.alert(1)
              end
              }, {
              "防行为 [大厅界面必开]",
              function ()

              end
              }, {
              "防人工一 [大厅界面]",
              function ()

              end
              }, {
              "防人工二 [大厅界面]",
              function ()

              end
            },
          }),
        },{
        YCcard({
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
		YCcheck({
					{
						"例子xxxxxx",--名称
						function()--开
							
						end,
						function()--关
							
						end,
						--check第四个参数图片可自定义，删掉不写就是随机
						--"https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/XG"
					}, {
						"例子",
						function()
							
						end,
						function()
							
						end,
						--没写图片链接就是随机
						--"https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/XG"
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
        },{
       YCbutton("小菜单煞笔功能没什么用🖕🖕🖕🖕",
function()
local windowManager = require('windowManager')
local rootViewManager
local rootView

rootView = luajava.loadlayout({
	LinearLayout,
	layout_width = 'wrap_content',
	layout_height = 'wrap_content',
	padding = '20dp',
	orientation = 'vertical',
	backgroundColor = 0x40000000,
	backgroundMusic = "http://music.163.com/song/media/outer/url?id=1377530437.mp3",
	{
		Button,
		text = '可以移动',
		onClick = function()
			rootViewManager:setMoveable(true)
		end
	},
	{
		Button,
		text = '禁止移动',
		onClick = function()
			rootViewManager:setMoveable(false)
		end
	},
	{
		Button,
		text = '隐藏3秒',
		onClick = function()
			rootViewManager:hide()

			luajava.startThread(function()
				local len = 3
				for i = 1, len do
					gg.toast(len - (i - 1))
					gg.sleep(1000)
				end
				rootViewManager:show()
			end)

		end
	},
	{
		Button,
		text = '退出悬浮窗',
		onClick = function()
			rootViewManager:exit()
		end
	}
})


-- 绑定View之后的调用函数默认第一个参数就是该View，如果把self也计算则 View 算第二个参数
rootViewManager = windowManager:bindView(rootView)

-- 等价于 windowManager:addView(rootView)
rootViewManager:addView()

-- 设置可以移动
rootViewManager:setMoveable(true)

gg.setVisible(false)
end),
 
        },{
       wyylog,
	YCbutton("停止播放", function()
				gg.playMusic("stop")
			end), 
        },{
        
        },{
        YCimage(
"https://pan.bllts.cn/view.php/e1e61eff7090ee7e26c938ce1f9cc57d.jpg",
"60dp","60dp",--图片高度宽度（可省略）
"10dp",--内边距（可省略）
function()
隐藏()			
gg.intent('http://qm.qq.com/cgi-bin/qm/qr?_wv=1027&k=SyOyVMFJhh6BMX2fgBotcxh6pmhv8D5C&authKey=oaJy4%2FK2HZaDZ48gzKHlCNBGN3lYUbWvzeP0vuHLzHFwnrZk%2FoWr1IeqOKSZjrtI&noverify=0&group_code=970621029')
--gg.intent("链接")--网页（tg群）
end--点击图片执行的功能（可省略）
),
YCflashtext('点击进入官方群聊'),
YCtext("欢迎使用 比翼鸟Wing 公益内核","#FFB50000","10sp"),
        YCswitch(
    '音量键隐藏UI',
    function()
      音量键=true
    end,
    function()
      音量键=false
    end),
    YCswitch(
    '摇一摇隐藏UI',
    function()
      摇一摇=true
    end,
    function()
      摇一摇=false
    end),
        YCbutton("退出",function() 退出UI() end),
        },{
        }
      })