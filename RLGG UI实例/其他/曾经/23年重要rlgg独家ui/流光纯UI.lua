流光=true
if tonumber(device.width)==nil then
dwidth=1340
dheight=2300
else
dwidth=device.width
dheight=device.height
end
colorvs={}
changan = {} huiz = function() end
window = context:getSystemService("window") -- 获取窗口管理器
local function panduan(rec) fille,err = io.open(rec) if fille == nil then return false else return true end end
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
'xf2.zip'	
}

for i = 1,#ckimg do
jindu = i
checkimg(ckimg[i],i)
gg.toast("正在加载资源")
end
if panduan("/sdcard/长安/图片/Shimmer2.dex")~=true then
	file.unzip("/sdcard/长安/图片/xf2.zip","/sdcard/长安/图片/")
end
dex.loadfile('/sdcard/长安/图片/support.dex')
if 流光 then
shimmer=dex.loadfile('/sdcard/长安/图片/Shimmer2.dex')
import "com.romainpiel.shimmer.Shimmer"
import "com.romainpiel.shimmer.ShimmerTextView"
end
local function 获取图片2(txt)
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
return luajava.getBitmap(txt)
end
local function getBit(x)
return 获取图片2("/sdcard/长安/图片/"..x)
end
local reso=context:getResources()
local function getP(bitm,radi)
local lixin = RoundedBitmapDrawableFactory:create(reso,获取图片2(bitm))
lixin:setCornerRadius(radi)
lixin:setAntiAlias(true)
return lixin
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
local function 获取图片(txt)
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
local YoYoImpl = luajava.getYoYoImpl()
local vibra = context:getSystemService(Context.VIBRATOR_SERVICE)
local function getLayoutParams2()
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

local function getLayoutParams()
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
local function particle()
local webView = luajava.webView(function(webView)
	webView:loadData([[<html>

<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">

    <title>炫彩流光圆环加载动画</title>
    <style>
    	
    	*{
    /* 初始化 取消内外边距 */
    margin: 0;
    padding: 0;
}
.container{
    width: 100%;
    /* 100%窗口高度 */
    height: 130vw;
    /* 弹性布局 水平垂直居中 */
    display: flex;
    justify-content: center;
    align-items: center;
    /* 相对定位 */
    position: relative;
    background-color: #ffffff;
}
.circle{
    /* 绝对定位 */
    position: absolute;
    display: flex;
    justify-content: center;
    align-items: center;
    width: 40px;
    height: 40px;
    border-radius: 50%;
    /* 渐变背景 */
    background: linear-gradient(0deg,
                #DFB43C,
                #ffffff 30%,
                #B18530 60%,
                #D39F36 100%);
    /* 执行动画：动画名 时长 线性的 无限次播放 */
    animation: circleRotate 1s linear infinite;
}
/* 发光效果 */
.circle::before{
    content: "";
    position: absolute;
    width: 40px;
    height: 40px;
    border-radius: 50%;
    /* 渐变背景 */
    background: linear-gradient(0deg,
                #FFE79B,
                #FFE186 30%,
                #FFEBAD 60%,
                #FFEBAD 100%);
    /* 模糊 */
    filter: blur(8px);
}
/* 黑圆 */
.circle::after{
    content: "";
    position: absolute;
    width: 34px;
    height: 34px;
    border-radius: 50%;
    background: #eeeeee;
}
span{
    color: #fff;
    position: absolute;
}

/* 定义动画 */
@keyframes circleRotate {
    0%{
        transform: rotate(0deg);
    }
    100%{
        transform: rotate(360deg);
    }
}
    </style>
</head>

<body>
    <div class="container">
        <div class="circle"></div>
        <span></span>
    </div>
</body>

</html>]], 'text/html', 'UTF-8')
	webView:setBackgroundColor(0x0)
	end)
return webView
end
parti=particle()
显2=false
function 隐藏2()
显2=true
chuangk:setVisibility(View.GONE)
control2:setVisibility(View.GONE)
smallc:setVisibility(View.VISIBLE)
end
function 显示2()
显2=false
mainLayoutParams.x=20
window:updateViewLayout(floatWindow, mainLayoutParams)

if 显示==1 then
	chuangk:setVisibility(View.VISIBLE)
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

function getJMselect()
local selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, getRes('jian'))
selector:addState({
	-android.R.attr.state_pressed
}, getVerticalBG({0x00ffffff,0x00ffffff},20,2,0xffE8AC3E))
return selector
end
changan.menu = function(views)
if isswitch then
return false
end

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
		onClick=function() end,
			onTouch=hanshu,
		layout_height="match_parent",
		layout_width="60dp",
		orientation="vertical",
		gravity="center_horizontal",
		layout_weight=1,
		}
		jian=getRes('jian')
		jmselect={}
		
	for i=1,#stab do
		jmselect[i]=getJMselect()
if 流光 then
		_ENV["jm"..i..'t']=luajava.loadlayout{ShimmerTextView,
			text=stab[i],
			textSize="13sp",
			textColor="#161616",
			reflectionColor='#FFC42C',
			gravity='center',
			layout_height='20dp',
			layout_width='match_parent',
			background=jmselect[i],
			}
else
	_ENV["jm"..i..'t']=luajava.loadlayout{TextView,
			text=stab[i],
			textSize="13sp",
			textColor="#161616",
			gravity='center',
			layout_height='20dp',
			layout_width='match_parent',
			background=jmselect[i],
			}
end
		_ENV["jm"..i]=luajava.loadlayout({
			LinearLayout,
			layout_height="wrap_content",
			layout_width="60dp",
			gravity="center",
			orientation="vertical",
			onClick=function() 切换(i) end,
			onTouch=hanshu,
			padding={'0dp','4dp','0dp','4dp'},
			--onTouch=hanshu,
			_ENV["jm"..i..'t']
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
		layout[#layout + 1] =_ENV["layout"..i]
	end
	当前ui=1
	--jm1t:setTextColor(0xffE8AC3E)
	jm1t:setBackground(jian)
	ViewPager = ui.ViewPager(layout)
	luajava.setInterface(ViewPager, 'addOnPageChangeListener', 
		{onPageSelected=function(view)
		view=tonumber(string.sub(view,1,1))
		for i=1,#stab do
			--_ENV["jm"..i .."t"]:setTextColor(0xffffffff)
			_ENV["jm".. i .."t"]:setBackground(jmselect[i])
		end
		当前ui=view+1
		--滚(当前ui)
		--_ENV["jm"..view+1 .."t"]:setTextColor(0xffE8AC3E)
		_ENV["jm"..view+1 .."t"]:setBackground(jian)
		end})
	if 流光 then
	stit=luajava.loadlayout{ShimmerTextView,
				textSize="18sp",
				gravity='center_horizontal',
				layout_width='match_parent',
				shimmerEnable='true',
				reflectionColor="#FFDD60";
				textColor="#151515",
				text=右上角标题,
	}
	else
		stit=luajava.loadlayout{TextView,
				textSize="18sp",
				gravity='center_horizontal',
				layout_width='match_parent',
				textColor="#151515",
				text=右上角标题,
	}
	end
	ckou={
		LinearLayout,
		layout_height="wrap_content",
		layout_width="wrap_content",
		elevation='3dp',
		layout_marginLeft='3dp',
		layout_marginRight='3dp',
		layout_marginBottom='3dp',
		layout_marginTop='3dp',
		background=newbg({0xffffffff,0xffffffff},0,0xffffffff,25,25,25,25),
		{LinearLayout,
			id=luajava.newId('cbscro'),
			onClick=function() end,
			onTouch=hanshu,
			elevation='3dp',
		layout_marginLeft='0dp',
		layout_marginRight='3dp',
		layout_marginBottom='0dp',
		layout_marginTop='0dp',
		background=newbg({0xffffffff,0xffffffff},0,0xffffffff,25,25,25,25),
			layout_height="match_parent",
			orientation='vertical',
			layout_width='60dp',
			cebian,
			{
	FrameLayout,
	layout_height='105dp',
	layout_width='60dp',
	padding={'0dp','0dp','0dp','5dp'},
	{LinearLayout,
	layout_height='wrap_content',
	layout_width='60dp',
	layout_gravity='center_horizontal',
	gravity='center',
	id='canv',
	onClick=function() end,
	onTouch=hanshu,
	},
	{LinearLayout,
	layout_height='68dp',
	layout_width='50dp',
	layout_gravity='bottom|center_horizontal',
	onClick=function() end,
	onTouch=hanshu,
	},
}
		},
		ViewPager,
	}



extralis={LinearLayout,
	layout_height="wrap_content",
	layout_width="match_parent",
	id=luajava.newId("extralist"),
	orientation="vertical",
	}
for k,v in pairs(ewsv) do
	extralis[#extralis+1]=ewsv[k]
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
topbar = luajava.loadlayout({
	LinearLayout,
	layout_width="fill_parent",
	layout_height="35dp",
	background=getCorner({0xffffffff,0xffffffff},15,0,0xff232323,20,20,0,0),
	onClick=function() end,
	onTouch=hanshu,
	{LinearLayout,
	layout_width="35dp",
	layout_height="match_parent",
	gravity="center",
	{
			LinearLayout,
			gravity="center",
			background=获取图片(悬浮窗图标),
			layout_width = "20dp",
			layout_height = "20dp",
			layout_marginLeft = "5dp",
			onClick = 隐藏,
			onTouch = hanshu,
			
		}
	},
	{LinearLayout,
	layout_width="wrap_content",
	layout_height="match_parent",
	gravity="center",
	{
			LinearLayout,
			id='cvv',
			layout_width='100dp',
			layout_height='match_parent',
			gravity="center",
		}
	},
	{LinearLayout,
		layout_width="fill_parent",
		layout_marginLeft='-80dp',
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
		layout_height="5dp",
		layout_width="60dp",
		id='tops',
		background=getVerticalBG({控件颜色,控件颜色},20)
		
		}
		}
		},
	{LinearLayout,
	layout_width="35dp",
	layout_height="match_parent",
	gravity="center",
	{
			ImageView,
			padding = "5dp",
			id="lockui",
			src = getRes("heis"),
			background=getVerticalBG({0xffE6E6E6,0xffE6E6E6},90),
			layout_width = "20dp",
			layout_height = "20dp",
			layout_marginRight = "5dp",
			onClick = uiLock,
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
})

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
	{
	LinearLayout,
	id = "chuangk",
	visibility = "gone",
	layout_height='match_parent',
	layout_width='match_parent',
	orientation = "vertical",
	elevation='2dp',
		layout_marginLeft='2dp',
		layout_marginRight='2dp',
		layout_marginBottom='2dp',
		layout_marginTop='2dp',
		background=newbg({0xffffffff,0xffffffff},0,0xffffffff,25,25,25,25),
		topbar,
		{LinearLayout,
		layout_width='match_parent',
		layout_height='40dp',
		{LinearLayout,
			layout_weight=1,
				layout_height='34dp',
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
				},{EditText,
					visibility='gone',
					id=luajava.newId("tosearch"),
					layout_height='match_parent',
					layout_width='match_parent',
					padding='-8dp',
					hint = "请输入需要搜索的音乐关键词",
					gravity = "center",
					textColor='#000000',
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
				layout_marginBottom='3dp',
				layout_marginLeft='3dp',
				layout_marginRight='3dp',
		background=newbg({0xffffffff,0xffffffff},0,0xffffffff,10,10,10,10),
				src=getRes('bm_music'),
				padding='4dp',
				onTouch=hanshu,onClick=searchmenu
				
			},{LinearLayout,
				layout_width='80dp',
				layout_height='match_parent',
				gravity='center',
				elevation='2dp',
		layout_marginTop='3dp',
				layout_marginBottom='3dp',
				layout_marginLeft='3dp',
				layout_marginRight='3dp',
		background=newbg({0xffffffff,0xffffffff},0,0xffffffff,10,10,10,10),
				stit
			}
		--topbar
	},
	ckou,

},
	{LinearLayout,
	visibility="gone",
	id=luajava.newId("extra"),
	layout_height='match_parent',
	layout_width='match_parent',
	orientation="vertical",
	background=getVerticalBG({0xffffffff,0xffffffff},25,2,0xaa161616),
	
		{LinearLayout,
			layout_width="match_parent",
			layout_height="40dp",
			background=getCorner({0xff161616,0xff161616},25,nil,nil,25,25,0,0),
			onClick=function() end,
			onTouch=hanshu,
			gravity="center_vertical",
			{ImageView,
				id=luajava.newId("backv"),
				layout_height="34dp",
				layout_width="34dp",
				src=getRes("opoback"),
				background=getVerticalBG({0x00ffffff,0x00ffffff},360,10,0xffffffff),
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
			},
		{ImageView,
				id=luajava.newId("suov"),
				layout_height="34dp",
				layout_width="34dp",
				src=getRes("heix"),
				background=getVerticalBG({0x00ffffff,0x00ffffff},360,10,0xffffffff),
				padding="10dp",
				onClick=隐藏,
				layout_marginRight="10dp",
			}
		},
	{ScrollView,
	padding="10dp",
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
		
	},{FrameLayout,
	id='reme',
	layout_height='match_parent',
	layout_width='match_parent',
	elevation='3dp',
	{
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
		}}
}
local function invoke()
local ok
local RawX, RawY, x, y
mainLayoutParams = getLayoutParams()
mainLayoutParams.x = 10
mainLayoutParams.y = dheight/4
floatWindow = luajava.loadlayout(floatWindow)
local function invoke2()
window:addView(floatWindow, mainLayoutParams)
canv:addView(parti)
end
local runnable = luajava.getRunnable(invoke2)
local handler = luajava.getHandler()
handler:post(runnable)

local isMove


end

invoke(swib1,swib2)
gg.setVisible(false)
musici:setColorFilter(0xffFF0F00)
luajava.getIdView("backv"):setColorFilter(控件颜色)
luajava.getIdView("suov"):setColorFilter(控件颜色)
luajava.getIdView("tosearch"):setHintTextColor(控件颜色)

隐藏()
if 流光 then
shimmer = Shimmer();
luajava.runUiThread(function()
  shimmer:setDuration(2000)
  shimmer:setStartDelay(50)
  shimmer:start(stit)
  for i=1,#stab do
  	shimmer:start(_ENV["jm"..i..'t'])
  end
end)
end
setOnExitListener(function()
	
	tuichu=1
	luajava.setFloatingWindowHide(false)
	luajava.post(function()
	window:removeView(floatWindow)
	end)
luajava.setFloatingWindowHide(false)
end)
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
luajava.runUiThread(function() floatWindow:setVisibility(View.VISIBLE) end)
luajava.runUiThread(function()
	changan.controlBig(floatWindow,400)
	end)

end
end
if loadBox~=nil then loadBox['关闭']() end
huiz()
if ylfunc~=nil then ylfunc() end
while true do
if tuichu == 1 then break end
if 音量键 then
jianting3(qiehuan)
end
gg.sleep(300)
end

end
isLocked=false
inlock=getRes("heisuo")
uiunlock=getRes("heis")
function uiLock()
vibra:vibrate(15)
if isLocked==false then
	isLocked=true
	luajava.newThread(function()
		gg.toast("UI缩放已锁定")
	end):start()
	lockui:setImageDrawable(inlock)
else
	isLocked=false
	luajava.newThread(function()
		gg.toast("UI缩放已解锁")
	end):start()
	lockui:setImageDrawable(uiunlock)
end
end
function tiaose()
if 颜色表==nil then return 0 end
local tt={
	LinearLayout,
	gravity="center_vertical",
	layout_height="wrap_content",
	layout_width='40dp'
}
for i=1,#颜色表 do
	tt[#tt+1]={
		LinearLayout,
		layout_height="33dp",
		layout_width="33dp",
		gravity="center",
		id=luajava.newId("yans"..i),
		onClick=function() xuanse(i) end,
		{LinearLayout,
		layout_width="25dp",
		layout_height="25dp",
		background=getVerticalBG({颜色表[i],颜色表[i]},15)
		}
	}
end
local t=luajava.loadlayout{
	HorizontalScrollView,
	layout_height="40dp",
	layout_width="wrap_content",
	tt
}
return t
end
xze2=getVerticalBG({0x00ffffff,0x00ffffff},15,3,0xff232323)

xze=getVerticalBG({0x00ffffff,0x00ffffff},15,3,0xff232323)
function xuanse(x)
for i=1,#颜色表 do
	luajava.getIdValue("yans"..i):setBackground(empty)
end
luajava.getIdValue("yans"..x):setBackground(xze)
changeColor(颜色表[x])
end
function 滚(x)
luajava.runUiThread(function()
local cbsc=luajava.getIdView("cbscro")
local targetLeft = _ENV["jm"..x]:getTop()/2

cbsc:smoothScrollTo(0,targetLeft);
end)
end
function 切换(x)
窗口=false
luajava.runUiThread(function()
	local searchUI = luajava.getIdView("tosearch")
	if x==5 then
		searchUI:setVisibility(View.VISIBLE)
ggscro:setVisibility(View.GONE)
else
	searchUI:setVisibility(View.GONE)
ggscro:setVisibility(View.VISIBLE)

	end
	当前ui=x
	ViewPager:setCurrentItem(x-1)
end)
end
显示=0
function 隐藏()
if 显2==true then return 0 end
luajava.runUiThread(function()
	if 显示 == 0 then
	control2:setVisibility(View.GONE)
	sf:setVisibility(View.VISIBLE)
	显示 = 1
	if 窗口 then
	luajava.getIdView("extra"):setVisibility(View.VISIBLE)
	else
	chuangk:setVisibility(View.VISIBLE)
	end
	YoYoImpl:with("ZoomInLeft"):duration(300):playOn(floatWindow)
	floatWindow:setBackground(beij)
	mainLayoutParams.height = mubx
		mainLayoutParams.width = muby
	mainLayoutParams.flags = LayoutParams.FLAG_NOT_TOUCH_MODAL
	window : updateViewLayout (floatWindow , mainLayoutParams)
	else
		sf:setVisibility(View.GONE)
	if tuichuing then return 0 end
	tuichuing=true
	luajava.newThread(function()
	luajava.runUiThread(function()
		YoYoImpl:with("FadeOut"):duration(300):playOn(floatWindow)
		end)
	gg.sleep(300)
	luajava.runUiThread(function()
	chuangk:setVisibility(View.GONE)
	floatWindow:setBackground(beij2)
	YoYoImpl:with("FadeIn"):duration(200):playOn(floatWindow)
	luajava.getIdView("extra"):setVisibility(View.GONE)
	mainLayoutParams.width = LayoutParams.WRAP_CONTENT -- 布局宽度
	mainLayoutParams.height = LayoutParams.WRAP_CONTENT -- 布局高度
	control2:setVisibility(View.VISIBLE) 显示 = 0
	mainLayoutParams.flags = LayoutParams.FLAG_NOT_FOCUSABLE
	window : updateViewLayout (floatWindow , mainLayoutParams)
	end)
	tuichuing=false
	end):start()
end
	end)
end
function 打开窗口(x)
if ewsv[x]==nil then
	gg.alert("没有窗口“"..x.."”\n请检查是否写错了名字或者没创建")
	return 0
end
luajava.runUiThread(function()
	窗口=true
	chuangk:setVisibility(View.GONE)
	luajava.getIdView("extra"):setVisibility(View.VISIBLE)
	for k,v in pairs(ewsv) do
		
		if k~=x then v:setVisibility(View.GONE) end
	end
	luajava.getIdView("extrat"):setText(x)
	ewsv[x]:setVisibility(View.VISIBLE)
end)
end
function 关闭窗口()
	luajava.getIdView("extra"):setVisibility(View.GONE)
	chuangk:setVisibility(View.VISIBLE)
	窗口=false
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
uiadtext(localname.." </font><font color='#0062ff'>已开启.","#161616")

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
uiadtext(localname.." </font><font color='#B9342D'>已关闭.","#545454")

end
end
if localname=="摇一摇隐藏UI" then yyfunc=outfunc end
if localname=="音量键隐藏UI" then ylfunc=outfunc end
return outfunc
end
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
luajava.runUiThread (function ()
	local searchUI = luajava.getIdView("tosearch")
	searchUI:setVisibility(View.GONE)
ggscro:setVisibility(View.VISIBLE)
	end)
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
function searchmenu()
luajava.runUiThread (function ()
	local searchUI = luajava.getIdView("tosearch")
	if tonumber(tostring(searchUI: getVisibility ())) == 8.0 then
	searchUI:setVisibility(View.VISIBLE)
ggscro:setVisibility(View.GONE)

	else
		luajava.newThread(searchmusic):start()
	end
	end)
end
function getTimeStamp(t)
local str = os.date("%m-%d %H:%M:%S",t)
return str
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
local ui = require('ui')

function changan.switch(name,func1,func2,miaoshu)
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
local nid = name..guid()
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
local rest = luajava.loadlayout({
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
			color = 0xaa161616 ,
			cornerRadius = 35
		} ,padding = {
		"0dp","0dp","6dp","0dp"
	},
		{
			TextView,
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
switchs={}

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
	--changan.controlWater(switchs[nid],300)
	end)
_ENV[name] = "开"
pcall(func1)
uiadtext(localname.." </font><font color='#0062ff'>已开启.","#161616")

else
	vibra:vibrate(9)
luajava.runUiThread(function()
	luajava.getIdValue(nid.."t"):setTextColor(0xffd7d7d7)
	luajava.getIdValue(nid.."p"):setColorFilter(0xffd7d7d7)
	colorvs[nid.."p"]={false,"img"}
	colorvs[nid.."t"]={false,"txt"}
	--changan.controlWater(switchs[nid],300)
	end)
_ENV[name] = "关"
pcall(func2)
uiadtext(localname.." </font><font color='#B9342D'>已关闭.","#545454")

end
end
end
end

ckbg=getVerticalBG({0xff3A3A3C,0xff3A3A3C},360)
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
boxpic[tid]:setColorFilter(控件颜色)
colorvs[tid]={true,"box"}
else
	tview : setVisibility (View.GONE)
changan.controlWater (_ENV [tid.."6"] , 200)
changan.controlRotation9(boxpic[tid],90,0)
boxpic[tid]:setColorFilter(nil)
colorvs[tid]={false,"box"}
end
end
boxes = {} boxpic = {}
function changan.box (views)
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
if type (views [1]) == "string" or type (views [1]) == "number" then
firadio [# firadio + 1] = {
	LinearLayout ,
	layout_width = 'fill_parent' ,
	layout_height = "40dp" ,
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
buts={}
heir=getRes("heir")
function changan.button(txt,func,txtc)
if not txt then txt = "未设置" end
if not txtc then txtc="#ffffff" end
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
				vibra:vibrate(10)
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
function getButtonBG()
local selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, getVerticalBG({0x55000000,0x55000000},35))
selector:addState({
	-android.R.attr.state_pressed
}, getVerticalBG({0xaa161616,0xaa161616},35))
return selector
end

radiog={}
function changan.radio (cklist)
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
	background=getVerticalBG({0xaa161616,0xaa161616},45),
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
		uiadtext('执行 '..name,"#161616")
	changan.controlWater (_ENV [tid] , 200)
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
--_ENV["jm"..当前ui.."t"]:setTextColor(控件颜色)
luajava.getIdView("backv"):setColorFilter(控件颜色)
luajava.getIdView("suov"):setColorFilter(控件颜色)
tops:setBackground(getVerticalBG({控件颜色,控件颜色},30))
checkbg = getShape2(45,{控件颜色,控件颜色},4,控件颜色)
radon=getVerticalBG({0xffffffff,0xffffffff},360,20,控件颜色)
luajava.getIdView("tosearch"):setHintTextColor(控件颜色)
--uiadtext('已刷新控件颜色',控件颜色)
musici:setColorFilter(控件颜色)
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
			background = getButtonBG(),
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
luajava.getIdValue(_ENV [name]):setHintTextColor(0xffd7d7d7)
return rest
end
function changan.getedit (name)
edit = tostring (luajava.getIdValue (_ENV [name]) : getText ())
return edit
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
_ENV[bian] =nows
local thum= getVerticalBG({0xffffffff,0xffffffff},4,10,switch颜色)
thum:setSize(30, 40)
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
		background = getVerticalBG({0xaa161616,0xaa161616},45),
		{
			TextView,
			padding={"5dp","10dp","0dp","10dp",},
			gravity = "top",
			textColor="#ffffff",
			text = name..":"..nows,
			id = luajava.newId(names),
			layout_width = '100dp',
			--layout_marginLeft = "5dp",
			textSize='13sp',
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
		luajava.getIdView("搜索结果"):setVisibility(View.GONE)
		luajava.getIdView("加载"):setVisibility(View.VISIBLE)

	end)

	gg.playMusic("http://music.163.com/song/media/outer/url?id="..gdmn..".mp3" or huoqu(gdmn).data[0].url)
	uiadtext("正在播放 </font><font color='#0062ff'>"..gqmz,"#161616")
	gg.sleep(2000)
	luajava.runUiThread(function()
		luajava.getIdView("加载"):setVisibility(View.GONE)
		luajava.getIdView("搜索结果"):setVisibility(View.VISIBLE)
	end)
end
jiaz = {
	TextView,
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
			changan.text('请在上方搜索音乐关键词',0xff245AFF)
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
if loadBox~=nil then loadBox['关闭']() end







































function huiz()
--如果有绘制请写到这里面否则会消失
	
	
	
end
huiz()

muby=850
--初始宽度 竖屏建议850 横屏建议1310


mubx=1310
--初始高度 竖屏建议1310 横屏建议850


右上角标题='长安UI'

--初始颜色，填写十六进制RGB
--可在功能按钮里调用changeColor()随时自定义切换
--例如：changeColor(0xffFF0023)
--可以在开启某个功能的同时变色，比如开了防封变绿色，开了高危功能变红色
控件颜色=0xffFFB94D

颜色表={--切换颜色的列表
	0xff33AF61,
	0xffFFB94D,
	0xffFF0023,
	0xff008CFF,
	0xffA6FF00,
	0xffFF95F2,
	0xff946AFF,
	0xff000000,
	0xff545454,
}

悬浮窗图标="https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/changan"

stab={
	"公告",
	"防封",
	"功能",
	'美化',
	"音乐",
	"设置",
}


---创建小窗口备用，对照下边菜单里调用打开窗口，不需要的可以删掉
---必须先创建窗口 才能 打开窗口
创建窗口("防封区",--窗口名字
	{
		changan.switch(
			"防封1",
			function()
				
			end,
			function()
				
			end),
		changan.switch(
			"防封2",
			function()
				
			end,
			function()
				
			end),
		
		
		
	})



创建窗口("美化区",--窗口名字
	{
		changan.switch(
			"美化头",
			function()
				
			end,
			function()
				
			end),
		changan.switch(
			"美化脚",
			function()
				
			end,
			function()
				
			end),
		
	})





changan.menu({
	{--第一页
		changan.switch("功能",
			function()
				
			end,
			function()
				
			end),
		changan.button(
			"防封区",
			function()
				打开窗口("防封区")
				---前边创建了的窗口 往上翻看创建窗口例子
			end),
		changan.button(
			"美化区",
			function()
				打开窗口("美化区")
				---前边创建了的窗口 往上翻看创建窗口例子
			end),
		changan.button(
			"切换颜色",
			function()
				预置颜色()--这个是在上边颜色表内切换下一个
				--写changeColor(0xffFF0023)可以自定义切换颜色 改括号里的十六进制RGB
			end),
		changan.box({
			"例子",
			
			}),
		changan.button(
			"切换颜色",
			function()
				预置颜色()--这个是在上边颜色表内切换下一个
				--写changeColor(0xffFF0023)可以自定义切换颜色 改括号里的十六进制RGB
			end),
		changan.radio({--单选
				{
					"防环境 [登录界面必开]" ,
					function ()
						
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
		
		
		
		
	},{--第二页
		changan.button(
			"切换颜色",
			function()
				预置颜色()--这个是在上边颜色表内切换下一个
				--写changeColor(0xffFF0023)可以自定义切换颜色 改括号里的十六进制RGB
			end),
		changan.edit("输入框例子"),
		changan.button(
			"调用输入框",
			function()
				local tmp=changan.getedit("输入框例子")--名字写输入框名字
				gg.alert(tmp)
			end),
		changan.seek("拉条例子","ltlz",1,100,1),--名字，变量名字，最小，最大，初始
		changan.button(
			"调用拉条",
			function()
				gg.alert(ltlz)--上边ltlz直接调用
			end),
		
		
	},{--第三页
		
		
		
		
	},{--第4页
		
		
		
		
		
		
	},{--第5页
		wyylog
		
	},{--第6页
		tiaose(),
		changan.switch(
			'音量键隐藏UI',
			function()
				音量键=true
			end,
			function()
				音量键=false
			end),
		changan.switch("退出",
			function()
				tuichu=1
			end)
		
	},
	
})