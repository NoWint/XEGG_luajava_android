




function particle(co1,co2,cor)
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
    box-shadow: 0 0 0 4px ]]..co1..[[,
    0 0 0 8px ]]..co1..[[,
    0 0 20px ]]..co2..[[;
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
    background: linear-gradient(90deg,]]..cor..[[,transparent);
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
parti=particle(
	"rgba(0,0,0,0.1)",
	"rgba(0,0,0,1)",
	"#909090")
vibra = context:getSystemService(Context.VIBRATOR_SERVICE)

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
changan = {}
local changan = changan
local android = import('android.*')
function write(fileName, content)
	--f = assert( io.open( fileName, 'w'))   f:write( content )     f:close()
	if file.write(fileName, content) == false then gg.alert("请给框架和修改器 文件储存权限\n否则无法正常运行") os.exit() end
end
function panduan(rec) fille,err = io.open(rec) if fille == nil then return false else return true end end
function pdcf(lujing) rec = "/storage/emulated/0/长安/配置文件/"..lujing fille,err = io.open(rec) if fille == nil then return false else return true end end
sleep = gg.sleep
--if gg.isHTTPdump()==true and panduan("/storage/emulated/0/长安/配置文件/vpn.txt") == false then gg.alert("\n抓包？") os.exit() end
function read(fileName) f = assert(io.open(fileName, 'r')) content = f:read("*all") f:close() return content end
function wtcf(lujing,neirong)
	write("/storage/emulated/0/长安/配置文件/"..lujing,neirong)
end
function rdcf(lujing)
	return read("/storage/emulated/0/长安/配置文件/"..lujing)
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

开 = "开" 关 = "关"
function checkimg(tmp)
	if panduan("/storage/emulated/0/长安/图片/"..tmp) ~= true then
gg.toast("正在下载资源"..tmp.."\n请耐心等待")
download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..tmp,"/storage/emulated/0/长安/图片/"..tmp)
	end
end
file.getdirs("/storage/emulated/0/长安/状态读取/")
ckimg = {
	"checkon",
	"checkof",
	"exit",
}
for i = 1,#ckimg do
	jindu = i
	checkimg(ckimg[i])
end
slcta = getCorner({0xff000000,0xff000000},15,4,0xffffffff,0,35,0,35)----点击翻页
slctb = getCorner({0xdd312d33,0xdd312d33},15,4,0xff161616,0,35,0,35)---没点翻页

context = app.contextlocallocal
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
function getseekgra()
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(10)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({0xddFF74C6,0xdd598AFF})
jianbians:setStroke(2,"0xaa000000")
return jianbians
end
function getseekgra2()
return getCorner({0x55161616,0x55161616},15,0,0x77ffffff,0,0,20,0)
end
function getseekgra3()
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(20)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({0xff397EF8,0xff25C4FD})
jianbians:setStroke(0,"0x44ffffff")
jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
return jianbians
end
seek1=getseekgra()
function getSelector3()
	selector = luajava.getStateListDrawable()
	selector:addState({
android.R.attr.state_pressed
	}, luajava.loadlayout {
GradientDrawable,
color = "#11ffffff",
cornerRadius = 12
	}) -- 点击时候的背景
	selector:addState({
-android.R.attr.state_pressed
	},getVerticalBG({0x33ffffff,0x33ffffff},15,5,0xff232323)) -- 没点击的背景
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


local isswitch
YoYoImpl = luajava.getYoYoImpl()
changan.menu = function(stext,sview)
	beij = 获取图片(背景图)---卧槽尼玛这才是总背景

	if isswitch then
return false
	end
	jianbian = getseekgra2()
	isswitch = true
	cebian = luajava.loadlayout({
LinearLayout,
id = "侧边",
visibility = "gone",
layout_height = "250dp",
layout_width = "85dp",
orientation = "vertical",
background = getCorner({0xff000000,0xaa000000},23,2,0xff7B2023,0,20,0,20),
{
	LinearLayout,
	id = "jm1",
	layout_height = "35dp",
	layout_width = "85dp",
	gravity="center",
	layout_marginTop = "10dp",
	layout_marginBottom = "5dp",
	获取图片("https://cdn-community.codemao.cn/47/community/d2ViXzEwMDFfMTAwMTQwOTNfMTAwMTQwOTNfMTcwNzk3ODA2OTQzOF9iZDhkODMwOA.png"),
	{
TextView,
text = stab[1],
gravity="center",
layout_height = "28dp",
layout_width = "68dp",
layout_marginLeft = "10dp",
layout_marginRight = "10dp",
	}},
{
	LinearLayout,
	id = "jm2",
	gravity="center",
	layout_height = "35dp",
	layout_width = "85dp",
	layout_marginTop = "0dp",
	layout_marginBottom = "5dp",
	background = getSelector(),
	{
TextView,
text = stab[2],
gravity="center",
layout_height = "28dp",
layout_width = "68dp",

layout_marginLeft = "10dp",
layout_marginRight = "10dp",
	}},
{
	LinearLayout,
	id = "jm3",
	gravity="center",
	layout_height = "35dp",
	layout_width = "85dp",
	layout_marginTop = "0dp",
	layout_marginBottom = "5dp",
	background = getSelector(),
	onClick = function() end,
	{
TextView,
text = stab[3],
gravity="center",
layout_height = "28dp",
layout_width = "68dp",

layout_marginLeft = "10dp",
layout_marginRight = "10dp",
	}},
{
	LinearLayout,
	id = "jm4",
	gravity="center",
	layout_height = "35dp",
	layout_width = "85dp",
	layout_marginTop = "0dp",
	layout_marginBottom = "5dp",
	onClick = function() end,
	background = getSelector(),
	{
TextView,
text = stab[4],
gravity="center",
layout_height = "28dp",
layout_width = "68dp",

layout_marginLeft = "10dp",
layout_marginRight = "10dp",
	}},
{
    LinearLayout,
	id = "jm5",
	gravity="center",
	layout_height = "35dp",
	layout_width = "85dp",
	layout_marginTop = "0dp",
	layout_marginBottom = "5dp",
	onClick = function() end,
	background = getSelector(),
	{
TextView,
text = stab[5],
gravity="center",
layout_height = "28dp",
layout_width = "68dp",

layout_marginLeft = "10dp",
layout_marginRight = "10dp",
	}},
{
	ImageView,
	id = "exit",
	src = "/storage/emulated/0/长安/图片/exit",
	layout_width = "20dp",
	layout_height = "20dp",
	layout_marginTop = "5dp",
	layout_marginLeft = "30dp",
}
	})
	layout1 = luajava.loadlayout({
ScrollView,
fillViewport = "true",
padding = "2dp",
id = "layout1",
visibility = "visible",
layout_width = "410dp",--悬浮窗长度
layout_height = "250dp",
orientation = "horizontal",
background = jianbian,
{
	LinearLayout,
	id = "layouta",
	gravity = "top",
	layout_width = "256dp",
	orientation = "vertical",
	gravity = "center_horizontal",
}
	})
	layout2 = luajava.loadlayout({
ScrollView,
fillViewport = "true",
padding = "2dp",
id = "layout2",
visibility = "gone",
layout_width = "410dp",
layout_height = "250dp",
orientation = "horizontal",
background = jianbian,

{
	LinearLayout,
	id = "layoutb",
	layout_width = "256dp",
	orientation = "vertical",
	gravity = "center_horizontal",
}
	})
	layout3 = luajava.loadlayout({
ScrollView,
fillViewport = "true",
padding = "2dp",
id = "layout3",
visibility = "gone",
layout_width = "410dp",
layout_height = "250dp",
orientation = "horizontal",
background = jianbian,
{
	LinearLayout,
	id = "layoutc",
	layout_width = "256dp",
	orientation = "vertical",
	gravity = "center_horizontal",
}
	})
	layout4 = luajava.loadlayout({
ScrollView,
fillViewport = "true",
padding = "2dp",
id = "layout4",
visibility = "gone",
layout_width = "410dp",
layout_height = "250dp",
orientation = "horizontal",
background = jianbian,
{
	LinearLayout,
	id = "layoutd",
	layout_width = "256dp",
	orientation = "vertical",
	gravity = "center_horizontal",
}
	})
	layout5 = luajava.loadlayout({
ScrollView,
fillViewport = "true",
padding = "2dp",
id = "layout5",
visibility = "gone",
layout_width = "410dp",
layout_height = "250dp",
orientation = "horizontal",
background = jianbian,
{
	LinearLayout,
	id = "layoute",
	layout_width = "256dp",
	orientation = "vertical",
	gravity = "center_horizontal",
}
	})
	ckou = luajava.loadlayout({
LinearLayout,
id = "chuangk",
visibility = "gone",
layout_width = "wrap_content",
layout_height = "match_parent",
orientation = "horizontal",
background = {
	GradientDrawable,
	color = "#001E1C27",---开启悬浮窗颜色
	cornerRadius = 10
},
cebian,layout1,layout2,layout3,layout4,layout5
	})
	floatWindow = {
LinearLayout,
background={
	GradientDrawable,
	color = "#001E1C27",
	cornerRadius = 10
},
id = "motion",
layout_width = "250dp",
orientation = "vertical",
gravity = "center_vertical",
layout_height = "wrap_content",
{
	LinearLayout,
	layout_width = "match_parent",
	layout_height = "48dp",
	orientation = "horizontal",
	id="beijing",
	gravity = "center_vertical",
	--background=getCorner({0x55161616,0x55161616},15,0,0xff232323,20,20,0,0),
	{
LinearLayout,
layout_width = "68dp",---左
layout_height = "48dp",
layout_marginLeft = "10dp",---右
layout_marginTop = "2dp",---下
layout_marginBottom = "2dp",---上
gravity = "center", {
	ImageView,
	id = "control",
	background = 获取图片(悬浮窗图标),
	layout_width = "38dp",
	layout_height = "38dp",
}},
	{
TextView,
id = "title",
visibility = "gone",
text = stext,
gravity = "center",
textSize = "17sp",
layout_weight=1,
layout_marginLeft = "0dp",
layout_width = "match_parent",
	},{ImageView,
	id="suox",
	visibility="gone",
	background=获取图片("https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/quarkx"),----卧槽尼玛这是总背景
	layout_height="32dp",
	layout_width="32dp",
	layout_marginRight="12dp",
	onClick=隐藏,
	onTouch=hanshu
	}
},
ckou
	}
	local function invoke()
local ok
local RawX, RawY, x, y
mainLayoutParams = getLayoutParams()
floatWindow = luajava.loadlayout(floatWindow)
local function invoke2()
	block('start')
	for i = 1,#sview[1] do
layouta:addView(sview[1][i])
	end
	for i = 1,#sview[2] do
layoutb:addView(sview[2][i])
	end
	for i = 1,#sview[3] do
layoutc:addView(sview[3][i])
	end
	for i = 1,#sview[4] do
layoutd:addView(sview[4][i])
	end
	for i = 1,#sview[5] do
layoute:addView(sview[5][i])
	end
	window:addView(floatWindow, mainLayoutParams)
	block('end')
end

local runnable = luajava.getRunnable(invoke2)
local handler = luajava.getHandler()
handler:post(runnable)
block('join')
control.onClick = function()
	隐藏()
end
jm1.onClick = function()
	切换(1)
end
jm2.onClick = function()
	切换(2)
end
jm3.onClick = function()
	切换(3)
end
jm4.onClick = function()
	切换(4)
end
jm5.onClick = function()
	切换(5)
end
exit.onClick = function()
	for k,v in pairs(floattable) do
if v~=0 then
	changan.rmvfloat(k)
	floattable[k]=0
end
	end

	gg.toast("悬浮窗已退出")
	window:removeView(floatWindow)
	if titleb ~= nil then
window:removeView(_ENV[titleb], paramt[titleb])
	end
	luajava.setFloatingWindowHide(false)
	tuichuj=true
end

local isMove

motion.onTouch = hanshu
control.onTouch = hanshu
exit.onTouch = hanshu
jm1.onTouch = hanshu
jm2.onTouch = hanshu
jm3.onTouch = hanshu
jm4.onTouch = hanshu
jm5.onTouch = hanshu
	end

	invoke(swib1,swib2)
	jm1:setBackground(slcta)
	gg.setVisible(false)
	luajava.setFloatingWindowHide(true)

end
corbk = true
当前ui = 1
function 切换(x)
	当前ui = x
	luajava.runUiThread(function()
if 当前ui == 1 then
	jm1:setBackground(slcta)
	jm2:setBackground(getSelector())
	jm3:setBackground(getSelector())
	jm4:setBackground(getSelector())
	jm5:setBackground(getSelector())
	title:setText(stab[1])
	layout1:setVisibility(View.VISIBLE)
	layout2:setVisibility(View.GONE)
	layout3:setVisibility(View.GONE)
	layout4:setVisibility(View.GONE)
	layout5:setVisibility(View.GONE)
	elseif 当前ui == 2 then
	jm1:setBackground(getSelector())
	jm2:setBackground(slcta)
	jm3:setBackground(getSelector())
	jm4:setBackground(getSelector())
	jm5:setBackground(getSelector())
	title:setText(stab[2])
	layout1:setVisibility(View.GONE)
	layout2:setVisibility(View.VISIBLE)
	layout3:setVisibility(View.GONE)
	layout4:setVisibility(View.GONE)
	layout5:setVisibility(View.GONE)
	elseif 当前ui == 3 then
	jm1:setBackground(getSelector())
	jm2:setBackground(getSelector())
	jm3:setBackground(slcta)
	jm4:setBackground(getSelector())
	jm5:setBackground(getSelector())
	title:setText(stab[3])
	layout1:setVisibility(View.GONE)
	layout2:setVisibility(View.GONE)
	layout3:setVisibility(View.VISIBLE)
	layout4:setVisibility(View.GONE)
	layout5:setVisibility(View.GONE)
	elseif 当前ui == 4 then
	jm1:setBackground(getSelector())
	jm2:setBackground(getSelector())
	jm3:setBackground(getSelector())
	jm4:setBackground(slcta)
	jm5:setBackground(getSelector())
	title:setText(stab[4])
	layout1:setVisibility(View.GONE)
	layout2:setVisibility(View.GONE)
	layout3:setVisibility(View.GONE)
	layout4:setVisibility(View.VISIBLE)
	layout5:setVisibility(View.GONE)
	elseif 当前ui == 5 then
	jm1:setBackground(getSelector())
	jm2:setBackground(getSelector())
	jm3:setBackground(getSelector())
	jm4:setBackground(getSelector())
	jm5:setBackground(slcta)
	title:setText(stab[5])
	layout1:setVisibility(View.GONE)
	layout2:setVisibility(View.GONE)
	layout3:setVisibility(View.GONE)
	layout4:setVisibility(View.GONE)
	layout5:setVisibility(View.VISIBLE)
end
	end)
	luajava.runUiThread(function()
if 当前ui == 1 then
	layout1:setVisibility(View.VISIBLE)
	YoYoImpl:with("FadeIn"):duration(200):playOn(layout1)
	elseif 当前ui == 2 then
	layout2:setVisibility(View.VISIBLE)
	YoYoImpl:with("FadeIn"):duration(200):playOn(layout2)
	elseif 当前ui == 3 then
	layout3:setVisibility(View.VISIBLE)
	YoYoImpl:with("FadeIn"):duration(200):playOn(layout3)
	elseif 当前ui == 4 then
	layout4:setVisibility(View.VISIBLE)
	YoYoImpl:with("FadeIn"):duration(200):playOn(layout4)
	elseif 当前ui == 5 then
	layout5:setVisibility(View.VISIBLE)
	YoYoImpl:with("FadeIn"):duration(200):playOn(layout5)
end
	end)
end
显示 = 0
beij2 = luajava.loadlayout({
	GradientDrawable,
	color = "#001E1C27",
	cornerRadius = 12
})
beij3 = getseekgra()
beij4 = luajava.loadlayout({
	GradientDrawable,
	color = "#001E1C27",
	cornerRadius = 12
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
	luajava.runUiThread(function()
floatWindow:setBackground(beij)
if tonumber(tostring(cebian:getVisibility())) == 8.0 then
	chuangk:setVisibility(View.VISIBLE)
	cebian:setVisibility(View.VISIBLE)
	title:setVisibility(View.VISIBLE)
mainLayoutParams.flags = LayoutParams.FLAG_NOT_TOUCH_MODAL
window:updateViewLayout(floatWindow, mainLayoutParams)
suox:setVisibility(View.VISIBLE)
	YoYoImpl:with("SlideInDown"):duration(200):playOn(cebian)

if 当前ui == 1 then
	layout1:setVisibility(View.VISIBLE)
	YoYoImpl:with("FadeIn"):duration(800):playOn(layout1)
	elseif 当前ui == 2 then
	layout2:setVisibility(View.VISIBLE)
	YoYoImpl:with("FadeIn"):duration(800):playOn(layout2)
	elseif 当前ui == 3 then
	layout3:setVisibility(View.VISIBLE)
	YoYoImpl:with("FadeIn"):duration(800):playOn(layout3)
	elseif 当前ui == 4 then
	layout4:setVisibility(View.VISIBLE)
	YoYoImpl:with("FadeIn"):duration(800):playOn(layout4)
	elseif 当前ui == 5 then
	layout5:setVisibility(View.VISIBLE)
	YoYoImpl:with("FadeIn"):duration(800):playOn(layout5)
end

	else
		mainLayoutParams.flags = LayoutParams.FLAG_NOT_FOCUSABLE
window:updateViewLayout(floatWindow, mainLayoutParams)
suox:setVisibility(View.GONE)
	title:setVisibility(View.GONE)
	floatWindow:setBackground(beij4)
	chuangk:setVisibility(View.GONE)
	--beijing:setBackground(beij2)
	cebian:setVisibility(View.GONE)
	layout1:setVisibility(View.GONE)
	layout2:setVisibility(View.GONE)
	layout3:setVisibility(View.GONE)
	layout4:setVisibility(View.GONE)
	layout5:setVisibility(View.GONE)
end
	end)
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


chazhi={} chajv={}
function changan.seek(name,bian,smin,smax,nows)
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
layout_width = 'match_parent',
layout_hight = "match_parent",
{
	LinearLayout,
	layout_width = 'match_parent',
	layout_hight = "match_parent",
	layout_marginTop = "5dp",
	layout_marginBottom = "5dp",
	layout_marginLeft = "10dp",
	layout_marginRight = "10dp",
	gravity = "center_vertical",
	background = getseekgra3(),
	{
TextView,
gravity = "top",
text = name..":"..nows,
id = luajava.newId(names),
layout_width = '70dp',
layout_marginLeft = "5dp",
layout_marginRight = "0dp",
	},
	{
SeekBar,
layout_width = '120dp',
min = truesmin,
max = truesmax,
progress=tnows,
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
luajava.runUiThread(function()
	luajava.getIdValue(nid.."k"):setVisibility(View.GONE)
	luajava.getIdValue(nid.."g"):setVisibility(View.VISIBLE)
	end)
_ENV[name] = "开"
vibra:vibrate(9)
pcall(func1)
else
luajava.runUiThread(function()
	luajava.getIdValue(nid.."g"):setVisibility(View.GONE)
	luajava.getIdValue(nid.."k"):setVisibility(View.VISIBLE)
	end)
_ENV[name] = "关"
vibra:vibrate(9)
pcall(func2)
end
end
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
function changan.switch(name,func1,func2,miaoshu)
if not checkbg then
	checkbg = getShape2(
	45,
	{
		0xffffffff,0xffffffff
	},
	40,0x00ffffff)
checkbg0 = getShape2(
	45,
	{
		0xff232323,0xff232323
	},
	4,0x00ffffff)
switchbg1 = 获取图片("https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/zzxoff")

switchbg2 = 获取图片("https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/zzxon")

end
nid = name..guid()
local func = 开关3(name,func1,func2,nid)
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
	layout_width = 'match_parent',
	layout_height = "48dp",
	gravity = "center_vertical",
	padding={"10dp","3dp","10dp","3dp"},
	{
		LinearLayout,
		layout_width = 'match_parent',
		layout_height = "40dp",
		gravity = "center_vertical",
		background = getVerticalBG({0x33ffffff,0x33ffffff},15,5,0xff232323),
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
			background = checkbg,
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
	function changan.edit(name)
_ENV[name] = name..guid()
if not name then name = "点击输入文字" end
rest = luajava.loadlayout({
	LinearLayout,
	layout_width = 'match_parent',
	layout_hight = "match_parent",
	{
LinearLayout,
layout_width = 'match_parent',
layout_hight = "match_parent",
layout_marginTop = "5dp",
layout_marginBottom = "5dp",
layout_marginLeft = "10dp",
layout_marginRight = "10dp",
gravity = "center_vertical",
background = getseekgra3(),
{
	EditText,
	gravity = "top",
	hintText = name,
	id = luajava.newId(_ENV[name]),
	layout_width = 'fill',
	layout_marginLeft = "10dp",
	layout_marginRight = "10dp",
}}
})

return rest
	end
	function changan.radio(radio)
firadio = {
	LinearLayout,
	layout_width = 'match_parent',
	layout_hight = "match_parent",
	orientation = "vertical"
}
if type(radio[1]) == "string" or type(radio[1]) == "number" then
	firadio[#firadio+1] = {
TextView,text = radio[1]} end
radios = {
	RadioGroup,background = getseekgra3(),layout_width = 'match_parent',
}
for i = 2,#radio do
	radios[#radios+1] = {
RadioButton,
layout_width = 'match_parent',
text = radio[i][1],
onClick = function() luajava.newThread(function() pcall(radio[i][2]) end):start() end,
	}
end
firadio[#firadio+1] = radios
return luajava.loadlayout(firadio)
	end

	function changan.button(txt,func)
if not txt then txt = "未设置" end
return luajava.loadlayout(
{
	LinearLayout,
	layout_width = 'match_parent',
	layout_hight = "wrap_content", {
LinearLayout,
layout_width = "match_parent",
gravity = "center_horizontal",
layout_marginRight="10dp",
layout_marginLeft="10dp",
layout_marginTop = "3dp",
layout_marginBottom = "3dp",
background = getSelector3(),
onClick = function() luajava.newThread(function() pcall(func) end):start() end,
{
	TextView,
	--id = luajava.newId(tid),
	text = txt,
	textSize = "15sp",
	padding="6dp",
	layout_width = "wrap_content",
},
	}})
	end
	function changan.text(txt,color,size)
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
	function changan.getedit(name)
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
	function 开关2(name,func1,func2,nid)
if func1 == nil then func1 = "" end
if func2 == nil then func2 = "" end
if type(func1) == "function" then
	return function()
namers = _ENV[name]
if namers ~= "开" then
	luajava.getIdValue(nid):setBackground(luajava.getBitmapDrawable("/storage/emulated/0/长安/图片/checkon"))
	_ENV[name] = "开"
	pcall(func1)
	else
	luajava.getIdValue(nid):setBackground(luajava.getBitmapDrawable("/storage/emulated/0/长安/图片/checkof"))
	_ENV[name] = "关"
	pcall(func2)
end

	end
end
	end
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


	namelist={}
	param1 = {}
	floattable={}
	function changan.newfloat(name,func1,func2)
floattable[name]=1
local func = 开关(name.."k",func1,func2)

local function invoke(name,func1,func2)
	if not name then name = "未设置" end
	nameid = name..guid()
	local ok
	local RawX, RawY, x, y
	nameid1 = name..guid()
	namelist[name]=false
	param1[name] = getLayoutParams2()
	_ENV[name] = luajava.loadlayout(
	{
LinearLayout,
layout_width = "50dp",
id = luajava.newId(nameid1),
layout_height = "50dp",
background = luajava.loadlayout {
	GradientDrawable,
	color = "#88000000",
	cornerRadius = 30
},

onClick = function()

	if namelist[name]==false then
_ENV[name]:setBackground(luajava.loadlayout {
	GradientDrawable,
	color = "#7534BC53",
	cornerRadius = 30
})
namelist[name]=true
elseif namelist[name]==true then
_ENV[name]:setBackground(luajava.loadlayout {
	GradientDrawable,
	color = "#88000000",
	cornerRadius = 30
})
namelist[name]=false
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
	
	
	

function PS() end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end--静态
function setvalue(address,flags,value)
	local CatWill={}
	CatWill[1]={}
	CatWill[1].address=address
	CatWill[1].flags=flags
	CatWill[1].value=value
	gg.setValues(CatWill)
end
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
end
function readPointer(name, offset, i)
	local re = gg.getRangesList(name)
	local x64 = gg.getTargetInfo().x64
	local va = {[true] = 32, [false] = 4}
	if re[i or 1] then
		local addr = re[i or 1].start + offset[1]
		for i = 2, #offset do
			addr = gg.getValues({{address = addr, flags = va[x64]}})
			if not x64 then
				addr[1].value = addr[1].value & 0xFFFFFFFF
			end
			addr = addr[1].value + offset[i]
		end
		return addr
	end
end

function gg.edits(addr, Table, name)
	local Table1 = {{}, {}}
	for k, v in ipairs(Table) do
		local value = {address = addr + v[3], value = v[1], flags = v[2], freeze = v[4]}
		if v[4] then
			Table1[2][#Table1[2] + 1] = value
		else
			Table1[1][#Table1[1] + 1] = value
		end
	end
	gg.addListItems(Table1[2])
	gg.setValues(Table1[1])
	gg.toast((name or "") .. "开启成功, 共修改" .. #Table .. "个值")
end

function LSQ_Chain(so, offset, format, value, type, Function)--模块设置, 偏移量, 功能参数, 修改值, 类型, 功能
        getRanges = getRanges or (function()
        local ranges = {}    		
		local t = gg.getRangesList('^/data/*.so*$')
		for i, v in pairs(t) do
			if v["type"]:sub(2, 2) == 'w' then--判断so是否可读可写
			    ranges[#ranges+1] = v
			end
		end
    	return ranges
    end)        
    local rest, ranges, sostart, valtype = {}, getRanges(), nil , gg.TYPE_DWORD
    if gg.getTargetInfo()["x64"] then--判断应用程序是否为64位
        valtype = gg.TYPE_QWORD
    end
    
    for i in pairs(ranges) do
		local _name = ranges[i]["internalName"]:gsub('^.*/', '')
		if so[1] == _name and so[2] == ranges[i]["state"] then
			sostart = ranges[i]["start"]
			break
		end
	end
    
    if sostart then	
        if offset[1]  then	    	    
            for i = 1, #offset do    	    
    	        rest = {{flags = valtype,address = sostart + offset[i]}}
    	        rest = gg.getValues(rest)
		        if i == #offset then
                    break
                end
	 		    if valtype == gg.TYPE_DWORD then
				    sostart = rest[1].value & 0xFFFFFFFF--对值进行补位操作 
				else
				    sostart = rest[1].value			
			    end
		    end
	    end		    
	    print(rest)
	    if #rest == 1 then
	       
	    end
	    return Format(rest, format, value, type, Function)
    end
    gg.toast("功能:" .. Function .. "开启失败")
    print("功能开启失败原因: 未找到基址头")
    return os.exit()
end

function Format(tab, format, value, type, Function)
    if format == "查看" then
        tab[1]["flags"] = type
        return print(gg.getValues(tab))
    elseif format == "修改" then
        tab[1]["flags"] = type
        tab[1]["value"] = value        
        return gg.setValues(tab)
    elseif format == "冻结" then
        tab[1]["flags"] = type
        tab[1]["freeze"] = true
        tab[1]["name"] = Function or "功能"       
        return gg.addListItems(tab)    
    elseif format == "加载" then
        tab[1]["flags"] = type
        return gg.loadResults(tab)    
    end
end

function gg.edits(addr, Table, name)
	local Table1 = {{}, {}}
	for k, v in ipairs(Table) do
		local value = {address = addr + v[3], value = v[1], flags = v[2], freeze = v[4]}
		if v[4] then
			Table1[2][#Table1[2] + 1] = value
			else
			Table1[1][#Table1[1] + 1] = value
		end
	end
	gg.addListItems(Table1[2])
	gg.setValues(Table1[1])
end------基质配置

checkbg1 = 获取图片("https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/zzxoff")

checkbg2 = 获取图片("https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/zzxon")

switchs={}
function changan.intcheck(name,func1,func2)
nid = name..guid()
local func = 开关c(name,func1,func2,nid)
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
		layout_width = 'match_parent',
		layout_height = "wrap_content",
		gravity = "center_vertical",
		--background=getVerticalBG({0xffFFFDF2,0xddffffff,0xffFFFDF2},15,8,0xffFFDA71),
		{
			FrameLayout,
			id = luajava.newId(nid),
			background = checkbg1,
			layout_width = '26dp',
			layout_height = '26dp',
			padding = "0dp",
		},{
			TextView,
			id=luajava.newId(nid.."t"),
			gravity = "left",
			text = name,
			textColor=0xffffffff,
			textSize = "13sp",
layout_marginLeft="8dp",
			layout_width = 'match_parent',
	layout_weight=1,
		},
		}
}
return switchs[nid]
end
function 开关c(name,func1,func2,nid)
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
	luajava.getIdValue(nid.."t"):setTextColor(0xffFF473B)
	--changan.controlWater(switchs[nid],300)
	end)
_ENV[name] = "开"
pcall(func1)
else
	vibra:vibrate(9)
luajava.runUiThread(function()
	luajava.getIdValue(nid):setBackground(checkbg1)
	luajava.getIdValue(nid.."t"):setTextColor(0xffffffff)
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
	layout_width = 'match_parent',
	layout_height = "wrap_content",
	gravity = "center",
	orientation="vertical",
	padding={"10dp","3dp","10dp","3dp"},

}

for i = 1, #cklist,2 do
local tempTable = {LinearLayout,
	layout_width = 'match_parent',
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












悬浮窗图标="https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/Picsart_24-02-01_20-24-37-415.png"

背景图="https://cdn-community.codemao.cn/47/community/d2ViXzEwMDFfMTAwMTQwOTNfMTAwMTQwOTNfMTcwODA2NTAzMDE3NV8xMTgzZjhlYg.png"
stab={
	"云烛全防",
	"xx功能",
	"xx功能",
	"xx功能",
	"xx功能"}

changan.menu("长安UI",{
{
	changan.button("选择进程",
	function()
		gg.setProcessX()
	end),
	changan.switch("LOGO过检测",
	function()
		
	end,
	function()
		
	end),
	
	changan.switch("大厅过检测",
	function()
		
	end,
	function()
		
	end),
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
	changan.switch("局内过检测",
	function()
		
	end,
	function()
		
	end),
	
	changan.switch("大厅第一套1️⃣\n[第一套大厅]\n[搭配过检测]",
	function()
		
	end,
	function()
		
	end),
	
	changan.button("查看使用教学",
	function()
		gg.alert("阿巴阿巴阿巴")
	end),
	
	
},{---第二页
	changan.text("xxxxxx","#FF0000","15sp"),----第2个菜单
	
	
	
	
},{---第三页
	
	
	
	
	
},{---第四页
	
	
	
	
	
},{---第五页
	
	
	
	
	
}
})




while true do
if tuichuj then break end
gg.sleep(300)
end



luajava.setFloatingWindowHide(false)
