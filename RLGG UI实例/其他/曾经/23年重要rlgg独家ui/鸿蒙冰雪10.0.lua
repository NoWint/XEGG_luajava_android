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
	"rgba(255,255,255,0.1)",
	"rgba(255,255,255,1)",
	"#909090")
loadingBox = getLoadingBox('正在启动...')
loadingBox['显示']()
if gg.getWindowOrientation() == 0 then
gg.toast("请使用横屏开启")
end
function getTimeStamp(t)
local str = os.date("%m/%d-%H:%M:%S",t)
return str
end
function launch(pkg)
loadingBox = getLoadingBox(pkg..'\n正在启动...')
loadingBox['显示']()
隐藏()
gg.setProcess(pkg)
gg.sleep(500)
if tostring(gg.getTargetPackage()) == pkg then
	loadingBox['关闭']()
gg.toast("进程已选择:"..pkg)
return 0
end
gg.toast("正在启动游戏...")


print(gg.isPackageInstalled(pkg))
app.start(pkg)
jci=0
--gg.sleep(5000)
while true do
	gg.setProcess(pkg)
	gg.sleep(400)
	if tostring(gg.getTargetPackage()) == pkg then
		loadingBox['关闭']()
		gg.alert("启动成功")
		uiadtext("启动成功.","#004eff") 
		break
	else
		jci=jci+1
		if jci==14 then
			loadingBox['关闭']()
			gg.alert("自动获取进程失败\n请手动选择游戏进程")
			uiadtext("启动成功.","#ff0000") 
			gg.setProcessX()
			break
		end
	end
	gg.sleep(100)
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
mainLayoutParams.y = tonumber(y) + (event:getRawY() - RawY)
window:updateViewLayout(floatWindow, mainLayoutParams)
end
end
suofang = function(v, event)
			local Action = event:getAction()
			if Action == MotionEvent.ACTION_DOWN then
				isMove = false
				RawX = event:getRawX()
				RawY = event:getRawY()
				x = mainLayoutParams.height
				y = mainLayoutParams.width
				if x==0 or x==-2 then x=1700 y=1300 end
				elseif Action == MotionEvent.ACTION_MOVE then
				isMove = true
				mubx=tonumber(x) + (event:getRawY() - RawY)
				if mubx>=200 and mubx<=5000 then
					mainLayoutParams.height = mubx
				end
				muby=tonumber(y) + (event:getRawX() - RawX)
				if muby>=180 and muby<=5000 then
					mainLayoutParams.width = muby
				end

				window:updateViewLayout(floatWindow, mainLayoutParams)
	    end
    end
function particle2()
local webView = luajava.webView(function(webView)
	webView:loadData([[
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <style>
      html,
*{
    /* 初始化 */
    margin: 0;
    padding: 0;
}
body{
    height: 15vw;
    /* 弹性布局 水平+垂直居中 */
    display: flex;
    justify-content: center;
    align-items: center;
    background-color: #hsjjsb;
}
h1{
    /* 文本透明 */
    color: transparent;
    font-size: 20px;
    /* 渐变背景 */
    background-image: -webkit-linear-gradient(92deg, #f35626, #feab3a);
    /* 裁剪掉文字以外的区域 */
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    background-size: 80%;
    background-repeat: repeat;
    background-position: center;
    /* 执行动画：动画名 时长 线性 无线播放 */
    -webkit-animation: hue 3s infinite linear;
    position:absolute;
    top:0px
}
/* 定义动画 */
@-webkit-keyframes hue {
from {
-webkit-filter: hue-rotate(0deg);
-moz-filter: hue-rotate(0deg);
}
to {
-webkit-filter: hue-rotate(-360deg);
-moz-filter: hue-rotate(-360deg);
}
}
    </style>
  </head>
  <body>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
</head>

<body>
     <h1>欢迎使用xxx</h1>
</body>

    </script>
  </body>
 
</html>
]], 'text/html', 'UTF-8')
	webView:setBackgroundColor(0x0)
	webView:setVerticalScrollBarEnabled(false)
		webView:setHorizontalScrollBarEnabled(false)
		webView:setScrollContainer(false)
end)
return webView
end

colorvs={}----这个是按钮动画必加初始化
function getButtonBG()
local selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, getVerticalBG({0x34000400,0x34000400},15))
selector:addState({
	-android.R.attr.state_pressed
}, getVerticalBG({0xFFFFFFFF,0xFFFFFFFF},15))
return selector
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
dingbian = luajava.loadlayout({
FrameLayout,
	id = "titlebar",
	visibility = "visible",
	layout_gravity="top",
	layout_width = "match_parent",
	layout_height = "35dp",
	orientation = "vertical",
	background = getCorner({0xFFFFFFFF,0xFFFFFFFF,0xFFFFFFFF,0xFFFFFFFF},30,0,0xff0097FF,30,30,0,0),
	onTouch=hanshu,
	{
	LinearLayout ,
	layout_width = '80dp' ,
	id="hengt",
	layout_gravity="center",
	layout_height = "35dp" ,
	gravity = "center_vertical" ,
	onClick = function ()  end,
	background = getButtonBG(),
	onTouch=hanshu,
	    {LinearLayout,
		visibility = "visible",
		gravity="center",
		id="tiao",
		background=luajava.loadlayout {
      	GradientDrawable,
     	color = "0xff004EFF",
     	cornerRadius = 38},
		layout_width="60dp",
		layout_height = "5dp",
		layout_marginLeft="10dp",
		onTouch=hanshu,
		}},
		{LinearLayout,
		visibility = "visible",
		background = getCorner({0xFFFFFFFF,0xFFFFFFFF,0xFFFFFFFF,0xFFFFFFFF},30,0,0xff0097FF,20,20,0,0),
		layout_height="35dp",
		layout_width="60dp",
		layout_marginLeft="1dp",
		layout_marginRight="match_parent",
		layout_gravity="left|center",
		{LinearLayout,
		visibility = "visible",
		id="fangda",
		background="https://wp.td88.cyou/view.php/81aab41bccfc0bd84fa6c684b7fb2ca3.png",
		padding="10dp",
		layout_marginLeft="5dp",
		layout_gravity="left|center",
		layout_height="20dp",
		layout_width="20dp",
		onClick= function()
		vibra:vibrate(9)
		fdk=mainLayoutParams.width
		fdg=mainLayoutParams.height
		gg.sleep(100)
		uiadtext("已放大.","#004eff")
		mainLayoutParams.width=device.getWidth()
		mainLayoutParams.height=device.getHeight()-140
		fangda:setVisibility(View.GONE)
		suoxiao:setVisibility(View.VISIBLE)
    	window:updateViewLayout(floatWindow, mainLayoutParams)
    	end, 
		onTouch=hanshu,
		},
		{LinearLayout,
		visibility = "gone",
		id="suoxiao",
		background="https://wp.td88.cyou/view.php/8155907852eedb81289f58936823a43f.png",
		padding="10dp",
		layout_marginLeft="5dp",
		layout_gravity="left|center",
		layout_height="20dp",
		layout_width="20dp",
		onClick= function() 
		vibra:vibrate(9)
		uiadtext("已缩小.","#004eff")
		mainLayoutParams.width=fdk
		mainLayoutParams.height=fdg
		suoxiao:setVisibility(View.GONE)
		fangda:setVisibility(View.VISIBLE)
    	window:updateViewLayout(floatWindow, mainLayoutParams)
    	end, 
		onTouch=hanshu,
		},
		{LinearLayout,
		visibility = "visible",
		background="https://wp.td88.cyou/view.php/0754d639ce764f633067cfc2bab49c8f.png",
		padding="10dp",
		layout_marginLeft="14dp",
		layout_gravity="left|center",
		layout_height="20dp",
		layout_width="20dp",
		onClick= function() 
		vibra:vibrate(9)
		gfz=mainLayoutParams.width
		kfz=mainLayoutParams.height
		mainLayoutParams.height=gfz
    	mainLayoutParams.width=kfz
    	window:updateViewLayout(floatWindow, mainLayoutParams)
    	end, 
		onTouch=hanshu,
		}
		},
		{LinearLayout,
		visibility = "visible",
		background = getCorner({0xFFFFFFFF,0xFFFFFFFF,0xFFFFFFFF,0xFFFFFFFF},30,0,0xff0097FF,20,20,0,0),
		layout_height="35dp",
		layout_width="60dp",
		layout_marginLeft="match_parent",
		layout_marginRight="1dp",
		layout_gravity="right|center",
		{LinearLayout,
		visibility = "visible",
		id="suofk",
		background="https://wp.td88.cyou/view.php/7fb71338e306eea74ab65a129de1a803.png",
		padding="10dp",
		layout_marginLeft="match_parent",
		layout_gravity="right|center",
		layout_marginRight="14dp",
		layout_height="20dp",
		layout_width="20dp",
		onClick= function() 
		vibra:vibrate(9)
		uiadtext("UI缩放已锁定.","#ff0000")
		缩放=1 
		suofk:setVisibility(View.GONE)
		suofg:setVisibility(View.VISIBLE)
		jiaobiao.onTouch=hanshu
		end, 
		onTouch=hanshu,
		},
		{LinearLayout,
		visibility = "gone",
		id="suofg",
		background="https://wp.td88.cyou/view.php/e131c24e666b1b4a3e91e5877361e8ae.png",
		padding="10dp",
		layout_marginLeft="match_parent",
		layout_gravity="right|center",
		layout_marginRight="14dp",
		layout_height="20dp",
		layout_width="20dp",
		onClick= function() 
		vibra:vibrate(9)
		uiadtext("UI缩放已解锁.","#004eff")
		缩放=nil 
		suofg:setVisibility(View.GONE)
		suofk:setVisibility(View.VISIBLE)
		jiaobiao.onTouch=suofang
		end, 
		onTouch=hanshu,
		},	
	{LinearLayout,
		visibility = "visible",
		background="https://wp.td88.cyou/view.php/636f6753bb73b262495946dfea32f6b2.png",
		padding="10dp",
		layout_marginLeft="match_parent",
		layout_gravity="right|center",
		layout_marginRight="5dp",
		layout_height="20dp",
		layout_width="20dp",
		onClick= function() vibra:vibrate(9) 隐藏() end, 
		onTouch=hanshu,
		}
		}
})
function particle(text1,text2,text3,color)
	local webView = luajava.webView(function(webView)
		webView:loadData([[
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <title>]]..text1..[[</title>
 
    <style>
      html,
      *{
    /* 初始化 */
    margin: 0;
    padding: 0;
}
body{
    height: 15vw;
    /* 弹性布局 水平+垂直居中 */
    display: flex;
    justify-content: center;
    align-items: center;
    background-color: #00000000;
}
h1{
    /* 文本透明 */
    color: transparent;
    font-size: 18px;
    letter-spacing: 5px;
    /* 渐变背景 */
    background: linear-gradient(to right,]]..color[1]..[[,]]..color[2]..[[,]]..color[3]..[[);
    /* 裁剪掉文字以外的区域 */
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    background-size: 80%;
    background-repeat: repeat;
    background-position: center;
    /* 执行动画：动画名 时长 线性 无线播放 */
    animation: move 4s linear infinite;
    position:absolute;
    top:10px
}
p{
  color: white;
  font-size: 5px;
  align-items: center;
  }
/* 定义动画 */
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

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">

    <title>纯CSS实现文本背景扫光效果</title>
    <link rel="stylesheet" href="113.css">
</head>

<body>
    <h1>]]..text2..[[<br>  <p>]]..text3..[[</p></h1>
    

</body>

    </script>
  </body>
 
</html>
]], 'text/html', 'UTF-8')
		webView:setBackgroundColor(0x0)
		webView:setVerticalScrollBarEnabled(false)
		webView:setHorizontalScrollBarEnabled(false)
		webView:setScrollContainer(false)
	end)
	return webView
end

vibra = context:getSystemService(Context.VIBRATOR_SERVICE)
changan = {}
slcta1={}
local changan = changan
local android = import('android.*')
function write(fileName, content)
file.write(fileName, content)
end
function panduan(rec) fille,err = io.open(rec) if fille == nil then return false else return true end end
function checkimg(tmp)
if panduan("/sdcard/长安/图片/"..tmp) ~= true then
gg.toast("正在下载资源"..tmp.."\n请耐心等待")
download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..tmp,"/sdcard/长安/图片/"..tmp)
end
end
file.getdirs("/sdcard/长安/状态读取/")
ckimg = {
	"quarkhome",
	"quarkconf",
}
for i = 1,#ckimg do
jindu = i
checkimg(ckimg[i])
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
slctb = getHorizontalBG({0xffffffff,0xffffffff},35)----uiby云烛 这里是没点时的翻页按钮
slcta = getHorizontalBG({0xffffffff,0xffffffff},35)-----点时的翻页
slctc = luajava.loadlayout {
	GradientDrawable,
	color = "#11000000",
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
selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, luajava.loadlayout {
	GradientDrawable,
	color = "#b9b9b9",
	cornerRadius = 30
}) -- 点击时候的背景
selector:addState({
	-android.R.attr.state_pressed
}, luajava.loadlayout {
	GradientDrawable,
	color = "#EFEFEF",
	cornerRadius = 30
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
显2=false
function 隐藏2()
显2=true

control:setVisibility(View.GONE)
smallc:setVisibility(View.VISIBLE)
end
function 显示2()
显2=false
mainLayoutParams.x=20
window:updateViewLayout(floatWindow, mainLayoutParams)

if 显示==1 then
	隐藏()
	smallc:setVisibility(View.GONE)
else
	control:setVisibility(View.VISIBLE)
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
	id = "侧边",
	layout_height = "wrap_content",
	layout_width = "108dp",
	orientation = "vertical",
	gravity = "center_horizontal",
}
for i = 1,#stab do
cebian[#cebian+1] = {
	LinearLayout,
	id = "jm"..i,
	layout_height = "30dp",
	layout_width = "88dp",
	layout_marginTop = "3dp",
	layout_marginBottom = "3dp",
	layout_marginRight = "10dp",
	layout_marginLeft = "10dp",
	background = getSelector(),
	onClick = function() 切换(i) end,
	{
		TextView,
		text = stab[i],
		id="jmt"..i,
		gravity = "center",
		textSize = "12sp",
		textColor = "#000000",
		layout_height = "30dp",
		layout_width = "88dp",
	}}
end
cebian = luajava.loadlayout(
	{
		ScrollView,
		visibility = "gone",
		layout_height = "match_parent",
		layout_width = "108dp",
		cebian
	})
	motion=luajava.loadlayout({FrameLayout,
			id = "motion",
			layout_width = "match_parent",
			layout_height="match_parent",
			gravity="center",
			{LinearLayout,
			    layout_width = "25dp",
             	layout_height = "25dp",
				id="jiaobiao",
				background="https://wp.td88.cyou/view.php/4eb45a04d1643a1a01fdb113231a3d58.png",
				visibility="gone",
				layout_gravity="right|bottom",
				onClick=function()  end,
				onTouch = suofang 
			}

		})
function uiadtext(txt,color,size)
if not txt then txt = "" end
if not color then color = "#545454" end
if not size then size = "11.5sp" end
local tmp=luajava.loadlayout(
	{
		TextView,
		text = string.fromHtml(" <font color=#333333>"..getTimeStamp(os.time()).."</font> <font color="..color..">"..txt.."</font>"),
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
for i = 1,#stab do
_ENV["layout"..i] = luajava.loadlayout({
	LinearLayout,
	layout_width = "wrap_content",
	layout_height = "match_parent",
	visibility = "gone",
	orientation = "vertical",
	{
	LinearLayout,
	layout_width = "match_parent",
	layout_height = "match_parent",
	layout_marginLeft="10dp",
	layout_marginRight="10dp",
	layout_marginTop = "5dp",
	visibility = "visible",
	orientation = "vertical",
	padding='10dp',
	background=getHorizontalBG({0x99ffffff,0x99ffffff},30),
	{
		TextView,
		layout_width = "match_parent",
		layout_height = "23dp",
		gravity = "top",
		text = stab[i],
		textColor = "#000000",
		textSize = "16sp",
	},
	{
		ScrollView,
		fillViewport = "true",
--padding = "10dp",
		gravity = "center",
		layout_width = "match_parent",
		layout_height = "match_parent",
		orientation = "horizontal",
		{
			LinearLayout,
			id = "layoutm"..i,
			layout_marginRight = "5dp",
			layout_marginLeft = "5dp",
			layout_width = "match_parent",
			orientation = "vertical",
			gravity = "center_horizontal",
		}
	}}})
end
yun=luajava.loadlayout({
	LinearLayout,
	layout_width = "wrap_content",
	layout_height = "match_parent",
	visibility = "gone",
	id="yun",
	orientation = "vertical",
	{
	LinearLayout,
		layout_width='match_parent',
		layout_height='70dp',
		visibility = "visible",
		gravity = "center",
		onTouch=hanshu,
	{LinearLayout,
		layout_width='match_parent',
		layout_height='60dp',
		visibility = "visible",
		onTouch=hanshu,
		{LinearLayout,
			layout_height='match_parent',
			layout_width='match_parent',
			background=getVerticalBG({0x99ffffff,0x99ffffff},30),
			{LinearLayout,
				layout_height='match_parent',
				layout_width='match_parent',
				layout_weight=1,
				padding='4dp',
				{LinearLayout,
					layout_height='match_parent',
					layout_width='match_parent',
					background=getVerticalBG({0x44ffffff,0x44ffffff},30),
					padding='3dp',
					{ScrollView,
					id='ggscro',
					layout_height='match_parent',
					layout_width='match_parent',
					{LinearLayout,
					layout_height='match_parent',
					layout_width='match_parent',
					{LinearLayout,
						id='gggscro',
						orientation='vertical',
						layout_width='match_parent',
						layout_height='wrap_content',
						{
								TextView,
								text = string.fromHtml("<font color=#545454>".."欢迎使用云烛修改长安冰雪UI","</font>"),
								textSize = "15sp",
								textColor = "#545454",
								gravity="left",
								layout_width = "match_parent",
								},
						{
								TextView,
								text = string.fromHtml("<font color=#545454>".."启动时间:"..getTimeStamp(os.time()).."</font>"),
								textSize = "15sp",
								textColor = "#545454",
								gravity="left",
								layout_width = "match_parent",
								}
					}
					}
					
				}},
			}
		}
		
		}},
		{LinearLayout,
		layout_marginTop = "5dp",
		layout_width='match_parent',
		layout_height='60dp',
		padding='10dp',
		visibility = "visible",
		padding='3dp',
		background=getVerticalBG({0x99ffffff,0x99ffffff},30),
		onTouch=hanshu,
		{ScrollView,
		layout_width = "match_parent",
		layout_height = "match_parent",
		{
		TextView,
		layout_width = "match_parent",
		layout_height = "match_parent",
		gravity = "center",
		text = stitle,
		textColor = "#000000",
		textSize = "16sp",
    	}}
		},
		{LinearLayout,
		layout_marginTop = "10dp",
		layout_width='match_parent',
		layout_height='match_parent',
		padding='10dp',
		visibility = "visible",
		padding='3dp',
		background=getVerticalBG({0x99ffffff,0x99ffffff},30),
		onTouch=hanshu,
		{
		LinearLayout,
		layout_height='match_parent',
		layout_width='200dp',
		launchui,
		}}
		})
ckou = {
		LinearLayout,
		orientation = "horizontal",
		padding = "0dp",
		{LinearLayout,
		layout_marginTop = "5dp",
		layout_width='108dp',
		layout_height='match_parent',
		orientation = "vertical",
		id="cbian",
		visibility = "gone",
		{LinearLayout,
		gravity = "center",
		layout_width='50dp',
		layout_height='50dp',
		layout_marginLeft = "29dp",
		layout_marginRight = "29dp",
		layout_marginBottom = "6dp",
		background="https://cdn-community.codemao.cn/47/community/d2ViXzEwMDFfMTAwMTQwOTNfMTAwMTQwOTNfMTcwODc0OTgyNDA0M19kODVjZmQ4Zg.png",
		},
		cebian
		},
		yun,
	   
}
for i = 1,#stab do
ckou[#ckou+1] = _ENV["layout"..i]
end

ckou = {
	LinearLayout,
	id = "chuangk",
	visibility = "visible",
	layout_width = "match_parent",
	layout_height = "match_parent",
	orientation = "vertical",
	    dingbian,
	ckou}

floatWindow = {
	FrameLayout,
	id = "motion",
	elevation = "10dp",
	onTouch = hanshu,
	background=luajava.loadlayout({
	GradientDrawable,
	color = "#F2F3F5",
	cornerRadius = 35
}),
{LinearLayout,
			gravity='center',
			layout_height='match_parent',
			layout_width='match_parent',
			onTouch=hanshu,
			id='canv'
			
		},
	onClick = function() end,
	layout_width = "match_parent",
	orientation = "vertical",
	gravity = "center_vertical",
	layout_height = "match_parent",
	ckou,
	motion,
	{
		ImageView,
		id = "control",
		background = 获取图片(xfcpic),
		layout_width = "40dp",
		layout_height = "40dp",
		onTouch = hanshu,
		onClick = function()
		隐藏()
		if 当前ui==1 then 切换(1) end
		end,
	},{LinearLayout,
	id="smallc",
	visibility="gone",
	onClick=显示2,
	onTouch=hanshu,
	layout_height="56dp",
	layout_width="20dp",
	gravity="center",
	background=getCorner({0x88161616,0x88161616},12,0,0xff232323,0,35,35,0),
		
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
_ENV["layoutm"..k]:addView(sview[k][i])
end
end
if loadingBox~=nil then
loadingBox['关闭']()
end
window:addView(floatWindow, mainLayoutParams)
canv:addView(parti)
block('end')
end

local runnable = luajava.getRunnable(invoke2)
local handler = luajava.getHandler()
handler:post(runnable)
block('join')

local isMove


end

invoke(swib1,swib2)
gg.setVisible(false)
luajava.setFloatingWindowHide(true)

end
function getseekgra()
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(10)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({
	0x6600c6ff,0x660072ff
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
	_ENV["jmt"..i]:setTextColor(0xff201E1E)--未选中的字体颜色
	_ENV["jm"..i]:setBackground(getVerticalBG({0xffffffff,0xffffffff},30,0,0xaa242937))--未选中的颜色
	end
	_ENV["layout"..当前ui]:setVisibility(View.VISIBLE)
	_ENV["jmt"..当前ui]:setTextColor(0xffffffff)--选中的字体颜色
	_ENV["jm"..当前ui]:setBackground(slcta1)--选中后颜色
	YoYoImpl:with("FadeIn"):duration(400):playOn(_ENV["layout"..当前ui])
	end)
end
显示 = 0
beij = luajava.loadlayout({
	GradientDrawable,
	color = "#F2F3F5",
	cornerRadius = 35
})
beij2 = luajava.loadlayout({
	GradientDrawable,
	color = "#00ffffff",
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
显示 = 0
function 隐藏()
luajava.runUiThread(function()
	if tonumber(tostring(cebian:getVisibility())) == 8.0 then
	control:setVisibility(View.GONE)
	if not yck then ycg=600 yck=1000 end
    	mainLayoutParams.height=ycg
    	mainLayoutParams.width=yck
    	window:updateViewLayout(floatWindow, mainLayoutParams)
    	jiaobiao:setVisibility(View.VISIBLE)
	显示 = 1
	mainLayoutParams.flags = LayoutParams.FLAG_NOT_TOUCH_MODAL
	titlebar:setVisibility(View.VISIBLE)
	cebian:setVisibility(View.VISIBLE)
    cbian:setVisibility(View.VISIBLE)
	yun:setVisibility(View.VISIBLE)
	canv:addView(parti)
	if 选 == nil then floatWindow:setBackground(beij)
	else
	floatWindow:setBackground(getVerticalBG({颜色表[选][1],颜色表[选][2]},35))
	end
	YoYoImpl:with("SlideInDown"):duration(200):playOn(cebian)
	_ENV["layout"..当前ui]:setVisibility(View.VISIBLE)
	YoYoImpl:with("FadeIn"):duration(800):playOn(_ENV["layout"..当前ui])
	else
	 ycg=mainLayoutParams.height
		yck=mainLayoutParams.width
		mainLayoutParams.height=110
		mainLayoutParams.flags = LayoutParams.FLAG_NOT_FOCUSABLE
		mainLayoutParams.width=110
		window:updateViewLayout(floatWindow, mainLayoutParams)
		titlebar:setVisibility(View.GONE)
		jiaobiao:setVisibility(View.GONE)
		canv:removeView(parti)
		mainLayoutParams.flags = LayoutParams.FLAG_NOT_FOCUSABLE
		yun:setVisibility(View.GONE)
	control:setVisibility(View.VISIBLE) 显示 = 0
	cebian:setVisibility(View.GONE)
	cbian:setVisibility(View.GONE)
	floatWindow:setBackground(beij2)
	_ENV["layout"..当前ui]:setVisibility(View.GONE)
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
qhkai = 0
qiehuan = function()
if qhkai == 0 then
qhkai = 1
draw.remove()
luajava.runUiThread(function()
	YoYoImpl:with("FadeOut"):duration(500):playOn(floatWindow)
end)
gg.sleep(600)
luajava.runUiThread(function()
    floatWindow:setVisibility(View.GONE)
	end)
else
	qhkai = 0
huiz()
--draw.text('.', -9200,-9200)
luajava.runUiThread(function() 
floatWindow:setVisibility(View.VISIBLE)
YoYoImpl:with("FadeIn"):duration(300):playOn(floatWindow)
end)

end
end
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
function getShape0(tmp0,tmp1,tmp2,tmp3)
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(tmp0)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({
	tmp1,tmp2
})
jianbians:setOrientation(GradientDrawable.Orientation.TOP_BOTTOM)
jianbians:setStroke(5,tmp3)--边框宽度和颜色
return jianbians
end

------------启动页
launchui = luajava.loadlayout({
	HorizontalScrollView,
	padding="10dp",
	layout_height = "match_parent",
	layout_width = "wrap_content",
	{
		LinearLayout,
		layout_height = "match_parent",
		layout_width = "match_parent",
		orientation = "horizontal",
		gravity="center",
		{LinearLayout,
		layout_height = "match_parent",
		layout_width = "130dp",
		orientation = "vertical",
		gravity="center",
		{
			LinearLayout,
			layout_height = "match_parent",
			layout_width = "110dp",
			--layout_weight = 1,
			gravity = "center",
			orientation = "vertical",
			layout_gravity="center_horizontal",
			background = luajava.loadlayout {
				GradientDrawable,
				color = "#ffF2F3F5",
				cornerRadius = 30
			},
			{
				ImageView,
				src = "https://cdn-community.codemao.cn/47/community/d2ViXzEwMDFfMTAwMTQwOTNfMTAwMTQwOTNfMTcwNzU3NjQ5MTM5Ml83MDgyNDI5Nw.png",
				layout_gravity="center_horizontal",
				layout_height="60dp",
				layout_width="60dp",
				layout_marginTop="10dp",
			},
			{
				TextView,
				text = "PUBG 台湾服",
				layout_marginTop="7dp",
				textColor = "#000000",
				textSize = "16dp",
				layout_gravity="center_horizontal",
				gravity = "center",
			},
			{
			LinearLayout,
			
			onClick = function() 
			luajava.newThread(function() 切换(1) launch("com.rekoo.pubgm") end):start() end,
			background = getShape0(90,0xff004EFF,0xff004EFF,0xff004EFF),
			layout_height = "25dp",
			layout_width = "55dp",
			id="zhuru1",
			layout_gravity="center_horizontal",
			layout_marginTop="20dp",
			gravity = "center",
			{
				TextView,
				textColor = "#ffffff",
				text = "注入",
				textSize = "10sp",
				layout_height = "20dp",
				gravity = "center",
				layout_width = "30dp",
			}
		}
		},
		},
		{LinearLayout,
		layout_height = "match_parent",
		layout_width = "130dp",
		orientation = "vertical",
		gravity="center",
		{
			LinearLayout,
			layout_height = "match_parent",
			layout_width = "110dp",
			--layout_weight = 1,
			gravity = "center",
			orientation = "vertical",
			layout_gravity="center_horizontal",
			background = luajava.loadlayout {
				GradientDrawable,
				color = "#ffF2F3F5",
				cornerRadius = 30
			},
			{
				ImageView,
				src = "https://cdn-community.codemao.cn/47/community/d2ViXzEwMDFfMTAwMTQwOTNfMTAwMTQwOTNfMTcwNzU3NjQ5MTM5Ml83MDgyNDI5Nw.png",
				layout_gravity="center_horizontal",
				layout_height="60dp",
				layout_width="60dp",
				layout_marginTop="10dp",
			},
			{
				TextView,
				text = "PUBG 越南服",
				layout_marginTop="7dp",
				textColor = "#000000",
				textSize = "16dp",
				layout_gravity="center_horizontal",
				gravity = "center",
			},
			{
			LinearLayout,
			
			onClick = function() 
			luajava.newThread(function() 切换(1) launch("com.vng.pubgmobile") end):start() end,
			background = getShape0(90,0xff004EFF,0xff004EFF,0xff004EFF),
			layout_height = "25dp",
			layout_width = "55dp",
			id="zhuru2",
			layout_gravity="center_horizontal",
			layout_marginTop="20dp",
			gravity = "center",
			{
				TextView,
				textColor = "#ffffff",
				text = "注入",
				textSize = "10sp",
				layout_height = "20dp",
				gravity = "center",
				layout_width = "30dp",
			}
		}
		},
		},
		{LinearLayout,
		layout_height = "match_parent",
		layout_width = "130dp",
		orientation = "vertical",
		gravity="center",
		{
			LinearLayout,
			layout_height = "match_parent",
			layout_width = "110dp",
			--layout_weight = 1,
			gravity = "center",
			orientation = "vertical",
			layout_gravity="center_horizontal",
			background = luajava.loadlayout {
				GradientDrawable,
				color = "#ffF2F3F5",
				cornerRadius = 30
			},
			{
				ImageView,
				src = "https://cdn-community.codemao.cn/47/community/d2ViXzEwMDFfMTAwMTQwOTNfMTAwMTQwOTNfMTcwNzU3NjQ5MTM5Ml83MDgyNDI5Nw.png",
				layout_gravity="center_horizontal",
				layout_height="60dp",
				layout_width="60dp",
				layout_marginTop="10dp",
			},
			{
				TextView,
				text = "PUBG 日韩服",
				layout_marginTop="7dp",
				textColor = "#000000",
				textSize = "16dp",
				layout_gravity="center_horizontal",
				gravity = "center",
			},
			{
			LinearLayout,
			
			onClick = function() 
			luajava.newThread(function() 切换(1) launch("com.pubg.krmobile") end):start() end,
			background = getShape0(90,0xff004EFF,0xff004EFF,0xff004EFF),
			layout_height = "25dp",
			layout_width = "55dp",
			id="zhuru3",
			layout_gravity="center_horizontal",
			layout_marginTop="20dp",
			gravity = "center",
			{
				TextView,
				textColor = "#ffffff",
				text = "注入",
				textSize = "10sp",
				layout_height = "20dp",
				gravity = "center",
				layout_width = "30dp",
			}
		}
		},
		},
		{LinearLayout,
		layout_height = "match_parent",
		layout_width = "130dp",
		orientation = "vertical",
		gravity="center",
		{
			LinearLayout,
			layout_height = "match_parent",
			layout_width = "110dp",
			--layout_weight = 1,
			gravity = "center",
			orientation = "vertical",
			layout_gravity="center_horizontal",
			background = luajava.loadlayout {
				GradientDrawable,
				color = "#ffF2F3F5",
				cornerRadius = 30
			},
			{
				ImageView,
				src = "https://cdn-community.codemao.cn/47/community/d2ViXzEwMDFfMTAwMTQwOTNfMTAwMTQwOTNfMTcwNzU3NjQ5MTM5Ml83MDgyNDI5Nw.png",
				layout_gravity="center_horizontal",
				layout_height="60dp",
				layout_width="60dp",
				layout_marginTop="10dp",
			},
			{
				TextView,
				text = "PUBG 全球服",
				layout_marginTop="7dp",
				textColor = "#000000",
				textSize = "16dp",
				layout_gravity="center_horizontal",
				gravity = "center",
			},
			{
			LinearLayout,
			
			onClick = function() 
			luajava.newThread(function() 切换(1) launch("com.tencent.ig") end):start() end,
			background = getShape0(90,0xff004EFF,0xff004EFF,0xff004EFF),
			layout_height = "25dp",
			layout_width = "55dp",
			id="zhuru4",
			layout_gravity="center_horizontal",
			layout_marginTop="20dp",
			gravity = "center",
			{
				TextView,
				textColor = "#ffffff",
				text = "注入",
				textSize = "10sp",
				layout_height = "20dp",
				gravity = "center",
				layout_width = "30dp",
			}
		}
		},
		},
	}})
-------------------------
nowbg=1
changan.controlFlip = function(control,time)
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
chazhi={} chajv={}
function changan.seek(name,bian,smin,smax,nows)
_ENV[bian] =nows
local thum= getVerticalBG({0xffffffff,0xffffffff},360)
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
rest = luajava.loadlayout({
	LinearLayout,
	elevation = "5dp",
	layout_width = 'fill_parent',
	layout_height = "47.5dp",
	gravity = "center_vertical",
	{
	LinearLayout,
	layout_width = 'fill_parent',
	layout_height = "40dp",
	background = luajava.loadlayout({
							GradientDrawable,
							color = 0xffFFFFFF,
							cornerRadius = 20
						}),
		{
			TextView,
			padding={"5dp","10dp","0dp","10dp",},
			gravity = "center",
			textColor="#545454",
			text = name..":"..nows,
			id = luajava.newId(names),
			layout_width = '100dp',
			--layout_marginLeft = "5dp",
			layout_marginRight = "0dp",
		},
		{
			SeekBar,
			layout_width = 'fill_parent',
			layout_gravity = "center",
			layout_weight=1,
			id=luajava.newId(name.."seekbar"),
			min = truesmin,
			max = truesmax,
			progress=tnows,
			--paddingStart="0dp",
			--paddingEnd="0dp",
			progressDrawable={ getVerticalBG({控件颜色[1],控件颜色[2]},45)},
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
if localname == "竖屏隐藏左栏" then while true do pcall(func1) end end
pcall(func1)
uiadtext(localname.." 已开启.","#004eff")
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
uiadtext(localname.." 已关闭.","#ff0000")
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
function getShape3()
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(20)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({
	0x76f2f3f5,0x76f2f3f5
})
jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
jianbians:setStroke(8,0xaaf2f3f5)--边框宽度和颜色
return jianbians
end

function changan.switch(name,func1,func2,miaoshu)
if not checkbg then

checkbga = getVerticalBG({0xffB3B3B3,0xffB3B3B3},360)
checkbg = getVerticalBG({控件颜色[1],控件颜色[2]},360)
switchbg1 = getVerticalBG({0xffffffff,0xffffffff},360,4,0x00ffffff)
switchbg2 = getVerticalBG({0xffffffff,0xffffffff},360,4,0x00ffffff)
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
	layout_height = "47.5dp",
	gravity = "center_vertical",
	{
		LinearLayout,
		layout_width = 'fill_parent',
		layout_height = "40dp",
		gravity = "center_vertical",
		background = luajava.loadlayout {
			GradientDrawable ,
			color = 0xffffffff ,
			cornerRadius = 15
		} ,padding = {
		"0dp","0dp","6dp","0dp"
	},
		{
			TextView,
			gravity = "top",
			text = name,
			textColor = "#000000",
			textSize = "15sp",
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
			textSize = "13sp",
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
boxpic[tid]:setColorFilter(控件颜色[1])
else
	tview : setVisibility (View.GONE)
changan.controlWater (_ENV [tid.."6"] , 200)
changan.controlRotation9(boxpic[tid],90,0)
boxpic[tid]:setColorFilter(nil)
end
end
boxes = {} boxpic = {}
function changan.box (views)
local tid = "box"..guid ()
boxpic[tid] = luajava.loadlayout {
	ImageView ,
	src = "https://wp.td88.cyou/view.php/dfcc155180c66711a66a1c6540db5e03.png",
	layout_width = "26dp" ,
	layout_height = "26dp" ,
}
local ttid = tid.."6"
local t1id = guid ()
firadio = {
	LinearLayout ,
	layout_width = 'fill_parent' ,
	layout_height = "wrap_content" ,
	layout_marginTop = "10dp" ,
	layout_marginBottom = "10dp" ,
	orientation = "vertical" ,
}
if type (views [1]) == "string" or type (views [1]) == "number" then
firadio [# firadio + 1] = {
LinearLayout,
	elevation = "5dp",
	layout_width = 'fill_parent',
	layout_height = "47.5dp",
	gravity = "center_vertical",
	{
	LinearLayout ,
	layout_width = 'fill_parent' ,
	layout_height = "40dp" ,
	gravity = "center_vertical" ,
	
	onClick = function ()
	visi (tid , ttid)
	end
	,
	background = getButtonBG(),
	{
		TextView , text = views [1] ,
		textSize = "16sp" ,
		layout_marginLeft = "15dp" ,
		layout_width = "match_parent" ,
		layout_weight=1,
		textColor = "#201E1E" ,
		gravity = "left" ,
	},{
		LinearLayout ,
		padding={"0dp","0dp","10dp","0dp"},
		layout_width = "30dp" ,
		layout_height = "30dp" ,
		gravity = "center",
		boxpic[tid],
	}
} 
}else
	gg.alert ("changan.box的table内第一个元素必须是string") os.exit ()
end
radios = {
	LinearLayout ,
	layout_marginLeft = "5dp" ,
	layout_marginRight = "5dp" ,
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
function changan.edit (name , hint)
_ENV [name] = name..guid ()
if not hint then
hint = name
end
rest = luajava.loadlayout ( {
	LinearLayout ,
	layout_width = 'fill_parent' ,
	layout_height = "47.5dp",
	{
		LinearLayout ,
		layout_width = 'fill_parent' ,
		layout_height = "40dp" ,
		layout_marginLeft = "0dp" ,
		layout_marginRight = "0dp" ,
		layout_gravity = "center" ,
		{
			EditText ,
			background = getButtonBG(),
			gravity = "center" ,
			hint = hint ,
			textColor="#201E1E",
			textSize = "13sp",
			layout_height = "40dp" ,
			layout_marginBottom = "-2dp",
			id=luajava.newId(_ENV [name]),
			layout_width = 'fill' ,
			
		}
	}
})
luajava.getIdValue(_ENV [name]):setHintTextColor(0xff201E1E)
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
radiog={}
function changan.radio (cklist)
if not radoff then
radon=getVerticalBG({0x00ffffff,0x00ffffff},360,12,控件颜色[1])
radoff=getVerticalBG({0x00ffffff,0x00ffffff},360,8,0xffaaaaaa)

end
local rid=guid()
radiog[rid]={}
rest = {
	LinearLayout ,
	layout_width = 'match_parent' ,
	layout_height = "wrap_content" ,
	layout_marginTop = "10dp" ,
	layout_marginBottom = "10dp" ,
	gravity = "center" ,
	orientation = "vertical" ,

}
if type (cklist [1]) == "string" then
	rds=2
rest [# rest + 1] = {
	TextView ,
	gravity = "left" ,
	padding="5dp",
	text = cklist [1] ,
	textSize = "14sp" ,
	textColor = "#201E1E" ,
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
	layout_marginTop = "3.75dp" ,
	layout_marginBottom = "3.75dp" ,
	gravity = "top" ,
	orientation = "vertical" ,
	background=getVerticalBG({0xffffffff,0xffffffff},25),
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
	layout_width = 'match_parent' ,
	layout_height = "35dp" ,
	layout_marginTop = "5dp" ,
	layout_marginBottom = "15dp" ,
	layout_marginLeft = "4dp" ,
	layout_marginRight = "10dp" ,
	gravity = "center_vertical" ,
	onClick = function ()
	uiadtext('选择了 '..name.."","#545454")
	vibra:vibrate(9)
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
		textSize="14sp",
		textColor = "#201E1E" ,
		layout_width = 'match_parent' ,
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
buts={}
function changan.button(txt,func,txtc)
if not txt then txt = "未设置" end
if not txtc then txtc="#201E1E" end
local tid="Cbutton"..guid()
buts[tid]=luajava.loadlayout(
	{
		LinearLayout,
		layout_width = 'match_parent',
		layout_height = "47.5dp", {
			LinearLayout,
			layout_width = "fill_parent",
			layout_height = "40dp",
			layout_gravity = "center",
			background = getButtonBG(),
			padding="10dp",
			onClick = function() 
			uiadtext('执行了 '..txt.."","#545454")
				changan.controlWater(buts[tid],300)
				vibra:vibrate(10)
			luajava.newThread(func):start() end,
			{
				TextView,
--id = luajava.newId(tid),
				textColor = txtc,
				text = txt,
				textSize = "16sp",
				layout_height = "wrap_content",
				layout_width = "fill_parent",
				layout_weight=1,
			},{ImageView,
				src="/storage/emulated/0/余词/图片/heir.png",
				layout_height="14dp",
				layout_width="14dp",
				gravity = "center_vertical" ,
				
			}
		}})
return buts[tid]
end
function getButtonBG()
local selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, getVerticalBG({0x34000400,0x34000400},15))
selector:addState({
	-android.R.attr.state_pressed
}, getVerticalBG({0xFFFFFFFF,0xFFFFFFFF},15))
return selector
end
dangxbg1 = 获取图片("https://wp.td88.cyou/view.php/2569312c453c8e469a8da02236e21119.png")

dangxbg2 = 获取图片("https://wp.td88.cyou/view.php/7d969ed814699db3711dd7011e5398d5.png")

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
		layout_width = 'fill_parent',
		layout_height = "wrap_content",
		gravity = "center_vertical",
		--background=getVerticalBG({0xffFFFDF2,0xddffffff,0xffFFFDF2},15,8,0xffFFDA71),
		{
			FrameLayout,
			id = luajava.newId(nid),
			background = dangxbg1,
			layout_width = '30dp',
			layout_height = '30dp',
			padding = "0dp",
		},{
			TextView,
			id=luajava.newId(nid.."t"),
			gravity = "left",
			text = name,
			textColor="#201E1E",
			textSize = "16sp",
layout_marginLeft="3dp",
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
	luajava.getIdValue(nid):setBackground(dangxbg2)
	luajava.getIdValue(nid.."t"):setTextColor(0xff201E1E)
	--changan.controlWater(switchs[nid],300)
	end)
_ENV[name] = "开"
pcall(func1)
uiadtext(localname.." 已开启.","#004EFF")
else
	vibra:vibrate(9)
luajava.runUiThread(function()
	luajava.getIdValue(nid):setBackground(dangxbg1)
	luajava.getIdValue(nid.."t"):setTextColor(0xff201E1E)
	--changan.controlWater(switchs[nid],300)
	end)
_ENV[name] = "关"
pcall(func2)
uiadtext(localname.." 已关闭.","#ff0000")
end
end
end
end
function changan.intcheck(name,func1,func2,qdtp)
	nid = name..guid()
	local func = 开关3(name,func1,func2,nid)
	if not name then name = "未设置" end
	local rest = luajava.loadlayout({
		LinearLayout,
		layout_width = 'match_parent',
		layout_height = "45dp",
		layout_marginTop = "1dp",
		layout_marginBottom = "2dp",
		padding = "1dp",
		{
			LinearLayout,
			onClick = function()
					func()
			end,
			layout_width = 'match_parent',
			layout_height = "match_parent",
			gravity = "center_vertical",
			background = getShape3(),
			onClick = function()
					pcall(func)
			end,
			{
				TextView,
				gravity = "center",
				text = name,
				textColor="#000000",
				textSize = "12sp",
				layout_marginLeft="6dp",
				layout_width = 'match_parent',
			}}
	})
	return rest
end
function changan.check(cklist)
if #cklist==0 then return nil end
local rest = {
	LinearLayout,
	layout_width = 'fill_parent',
	layout_height = "wrap_content",
	gravity = "center",
	orientation="vertical",
	padding={"10dp","3dp","10dp","3dp"},

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
function changan.blank(gaodu)
if not gaodu then gaodu = "43" end
return luajava.loadlayout({
	LinearLayout,
	layout_width = 'fill_parent',
	layout_height = gaodu,
	})
end
function changan.text(txt,color,size)
if not txt then txt = "未设置文字" end
if not color then color = "#000000" end
if not size then size = "18sp" end
return luajava.loadlayout(
	{
		TextView,
		text = txt,
		textSize = size,
		textColor = color,
		layout_width = "match_parent",
		layout_marginTop = "10dp" ,
    	layout_marginBottom = "10dp" ,
		gravity = "left",
	})
end
corb = true
function changan.setedit(name,txt)
txt = tostring(txt)
luajava.runUiThread(function()
	luajava.getIdValue(_ENV[name]):setText(txt)
	end)
end

function changan.getedit(name)
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
		layout_width = "match_parent",
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
			background = getVerticalBG({0xffffffff,0xffffffff},15,3,0xfff2f3f5),
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
				textSize = "16sp",
				textColor = "#545454",
				layout_marginBottom = "0dp",
				text = musname,
				layout_hight = "10dp",
				layout_width = "match_parent",
				gravity = "center"

			},
			{
				TextView,
				layout_marginTop = "0dp",
				textColor = 0xff004eff,
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
				uiadtext(musnames[i].." 已播放.","#004eff")
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
	background=getVerticalBG({0xffffffff,0xffffffff},15,3,0xfff2f3f5),
	visibility = "visible",
	id = luajava.newId("stxt"),
	layout_marginLeft = "10dp",
	textSize = "16sp",
	TextColor="#545454",
	padding="10dp",
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
	textColor="#201E1E",
	layout_width = "match_parent",
	textSize = "20sp"
}
jiaz = {
	TextView,
	text = "正在加载歌曲资源",
	visibility = "gone",
	id = luajava.newId("加载"),
	textSize = "20sp",
	textColor="#201E1E",
	layout_width = "match_parent",
	gravity = "center"
}
wyylog = luajava.loadlayout({
	LinearLayout,
	orientation="vertical",
	layout_width = "match_parent",
	{
		ScrollView,
		layout_hight = "200dp",
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
			layout_hight = "200dp",
			orientation = "vertical",
			layout_width = "match_parent",
			changan.button("停止播放", function()
				gg.playMusic("stop")
			end),
			{
				LinearLayout,
				orientation = "horizontal",
				layout_width = "match_parent",
				{
					EditText,
					hint = "搜索歌曲名称",
					id = luajava.newId("搜索"),
					background = getVerticalBG({0xffffffff,0xffffffff},15,3,0xfff2f3f5),
					focusableInTouch = "false",
					HintTextColor="#545454",
					textColor="#201E1E",
					focusable = "false",
					selectAllOnFocus = "true",
					singleLine = "true",
					layout_weight=1,
					layout_width = "match_parent"
				},
				stxt,
				jzz
			},
			jiaz
		}
	}
})
function tiaose()
if 颜色表==nil then return 0 end
local tt={
	LinearLayout,
	gravity="center_horizontal",
	orientation='vertical',
	layout_height="100dp",
	
}
for i=1,#颜色表 do
	tt[#tt+1]={
		LinearLayout,
		layout_height="40dp",
		layout_width="wrap_content",
		gravity="center",
		orientation = "horizontal",
		id=luajava.newId("yans"..i),
		onClick=function() 选色(i) 
		uiadtext("已选择'"..颜色表[i][3].."'配色","#004eff") end,
		{LinearLayout,
		layout_width="25dp",
		layout_height="25dp",
		layout_marginLeft = "10dp" ,
		background=getVerticalBG({颜色表[i][1],颜色表[i][2]},15)
		},{
		TextView,
		layout_width = "match_parent",
		layout_height = "match_parent",
		layout_marginLeft = "10dp" ,
		layout_marginRight = "10dp" ,
		gravity = "center",
		text = 颜色表[i][3],
		textColor = "#000000",
		textSize = "16sp",
    	}
	}
end
local t=luajava.loadlayout{
	ScrollView,
	layout_width="match_parent",
	layout_height="match_parent",
	orientation = "vertical",
	tt
}
return t
end
xze=getVerticalBG({0x00ffffff,0x00ffffff},15,3,0xff232323)
function 选色(x)
for i=1,#颜色表 do
	luajava.getIdValue("yans"..i):setBackground(empty)
end
luajava.getIdValue("yans"..x):setBackground(xze)
控件颜色=颜色表[x]
选=x
floatWindow:setBackground(getVerticalBG({控件颜色[1],控件颜色[2]},35))
tiao:setBackground(getVerticalBG({控件颜色[1],控件颜色[2]},38))
zhuru1:setBackground(getVerticalBG({控件颜色[1],控件颜色[2]},38))
zhuru2:setBackground(getVerticalBG({控件颜色[1],控件颜色[2]},38))
zhuru3:setBackground(getVerticalBG({控件颜色[1],控件颜色[2]},38))
zhuru4:setBackground(getVerticalBG({控件颜色[1],控件颜色[2]},38))
checkbg = getVerticalBG({控件颜色[1],控件颜色[2]},360)
radon=getVerticalBG({0x00ffffff,0x00ffffff},360,12,控件颜色[1])
if 选 == 1 then
slcta1=getVerticalBG({0xff004EFF,0xff004EFF},30)
else
for i=1,#stab do
slcta1=getVerticalBG({控件颜色[1],控件颜色[2]},30)
end
end
_ENV["jm"..当前ui]:setBackground(slcta1)
for k,v in pairs(colorvs) do
	if v[1]==true then
		if v[2]=="switch" then
			luajava.getIdValue(k):setBackground(checkbg)
		elseif v[2]=="box" then
			boxpic[k]:setColorFilter(控件颜色[1],控件颜色[2])
		elseif v[2]=="txt" then
			luajava.getIdValue(k):setTextColor(控件颜色[1])
		elseif v[2]=="img" then
			luajava.getIdValue(k):setColorFilter(控件颜色[1])
		elseif v[2]=="rad" then
			luajava.getIdValue(k):setBackground(radon)
		elseif v[2]=="seek" then
			luajava.getIdView(k):setProgressDrawable( getVerticalBG({控件颜色[1],控件颜色[2]},45))
		end
	end
end
end
slcta1=getVerticalBG({0xff004EFF,0xff004EFF},30)
控件颜色={0xff004EFF,0xff004EFF}
颜色表={--切换颜色的列表
{0xffF2F3F5,0xffF2F3F5,"洛可可白"},
{0x9000f4ff,0x90006dff,"天空之境"},
{0x90fff7ad,0x90ffa9f9,"日暮苍山"},
{0x908c52ff,0x9000bf63,"鸭绿林雨"},
{0x905170ff,0x90ff66c4,"星夜雾虹"},
{0x90ff3131,0x90ff914d,"橘光落日"},
{0x9000f4ff,0x90006dff,"云上锋蓝"},
{0x90000000,0x90737373,"灰黑质感"},
{0x90000000,0x903533cd,"黄金时刻"},
{0x902000ff,0x90ff0000,"万紫千红"},
{0x90dae1eb,0x9094b9ff,"青出于蓝"},
{0xffFF95F2,0xff514CFF,"紫气东来"},
{0xff008CFF,0xffFF8AFB,"乱花渐欲"},
{0xffFF0023,0xffAD3ACD,"赤红之瞳"},
{0xffFFB94D,0xffFF854D,"纯金无瑕"},
{0xff33AF61,0xff5ADAD7,"绿林之秘"},
{0xe8905AFF,0x88FF4358,"千秋各色"},
{0xe800FFC1,0x8800AFFF,"浮翠流丹"},
{0xe80079FF,0x88FF76B8,"日出东方"},
{0x90f902ff,0x9000dbde,"赛博朋克"},
{0x90efbd8a,0x90d343ba,"清新质感"},
{0xe84B7CFF,0x88974BFF,"姹紫晶蓝"}
}
function qz()
隐藏()
切换(1)
end

function huiz()
end
stitle = "云烛UI\n测试\n测试\n测试"

stab = {
--菜单名字，添加即可加页数，需要与结尾配置表对应
	"防封",
	"功能",
	"美化",
	"音乐",
	"设置",
}
xfcpic = "https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/arlogo"
--悬浮窗链接或路径

左上角图标="https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/pubgLogo"

changan.menu(
	{
		{--1
		changan.radio({--单选
    {"防闪退 [登录界面开]",
     function()
     
     end
     },{
	"防环境 [登录界面开]" ,
	 function ()
						
	 end
	},{
	"防行为 [大厅界面开]" ,
	 function ()
						
	 end
	},{
	 "防人工 [大厅界面开]" ,
	 function ()
						
	 end
	}}),
		changan.button("退出",function()
				window:removeView(floatWindow)
				luajava.setFloatingWindowHide(false)
				luajava.newThread(function() os.exit() end):start()
				tuichu=1
				end),
		particle("云烛ui","Made by Yunzhu","",{"#004eff","#fff","#004eff"}),
changan.intcheck( "全球服",
										function()
										end,
										function()
										end,
									"https://wp.td88.cyou/view.php/d73ad51ad8cc274fe45c0c3f34a00bbd.png"),
		    changan.intcheck( "越南服",
										function()
										end,
										function()
										end,
									"https://wp.td88.cyou/view.php/8afe94b80ac490575a9f75e1866c60c4.png"),
		    changan.intcheck( "台湾服",
										function()
										end,
										function()
										end,
									"https://wp.td88.cyou/view.php/80a758d2aa96841fef490095b9aba951.png"),
		    changan.intcheck( "日韩服",
										function()
										end,
										function()
										end,
									"https://wp.td88.cyou/view.php/b60f0f7dd1f1bd5a1156fb768ad8e3a1.png"),
									changan.switch ("安全注入启动" ,
				function ()
					
				end,
				function ()
					
				end,
				"全自动安全启动"),
			
		}, {
		particle("云烛ui","Made by Yunzhu","",{"#004eff","#fff","#004eff"}),
			changan.switch ("杀戮光环" ,
				function ()
					
				end,
				function ()
					
				end,
				"范围自动攻击"),
			changan.switch ("无限光环" ,
				function ()
					
				end,
				function ()
					
				end,
				"自研百米大刀"),
			changan.switch ("弓箭自瞄" ,
				function ()
					
				end,
				function ()
					
				end,
				"自动瞄准玩家"),
			changan.switch ("超级击退" ,
				function ()
					
				end,
				function ()
					
				end,
				"SuperKB"),
			changan.switch ("自动黑曜石" ,
				function ()
					
				end,
				function ()
					
				end,
				"自动黑曜石"),
			changan.switch ("水晶光环" ,
				function ()
					
				end,
				function ()
					
				end,
				"自动水晶"),
			changan.switch ("自动图腾" ,
				function ()
					
				end,
				function ()
					
				end,
				"自动替换副手图腾"),
			changan.switch ("智能队友" ,
				function ()
					
				end,
				function ()
					
				end,
				"智能队友"),
			changan.switch ("上帝模式" ,
				function ()
					
				end,
				function ()
					
				end,
				"停止发包"),
			changan.switch ("自动战斗" ,
				function ()
					
				end,
				function ()
					
				end,
				"AI自动战斗"),
			changan.switch ("扩大膨胀箱" ,
				function ()
					
				end,
				function ()
					
				end,
				"碰撞箱"),
			changan.switch ("目标环绕" ,
				function ()
					
				end,
				function ()
					
				end,
				"自动环绕"),
--2

		}, {
		particle("云烛ui","Made by Yunzhu","",{"#004eff","#fff","#004eff"}),
			changan.switch ("杀戮光环" ,
				function ()
					
				end,
				function ()
					
				end,
				"范围自动攻击"),
			changan.switch ("无限光环" ,
				function ()
					
				end,
				function ()
					
				end,
				"自研百米大刀"),
			changan.switch ("弓箭自瞄" ,
				function ()
					
				end,
				function ()
					
				end,
				"自动瞄准玩家"),
			changan.switch ("超级击退" ,
				function ()
					
				end,
				function ()
					
				end,
				"SuperKB"),
			changan.switch ("自动黑曜石" ,
				function ()
					
				end,
				function ()
					
				end,
				"自动黑曜石"),
			changan.switch ("水晶光环" ,
				function ()
					
				end,
				function ()
					
				end,
				"自动水晶"),
			changan.switch ("自动图腾" ,
				function ()
					
				end,
				function ()
					
				end,
				"自动替换副手图腾"),
			changan.switch ("智能队友" ,
				function ()
					
				end,
				function ()
					
				end,
				"智能队友"),
			changan.switch ("上帝模式" ,
				function ()
					
				end,
				function ()
					
				end,
				"停止发包"),
			changan.switch ("自动战斗" ,
				function ()
					
				end,
				function ()
					
				end,
				"AI自动战斗"),
			changan.switch ("扩大膨胀箱" ,
				function ()
					
				end,
				function ()
					
				end,
				"碰撞箱"),
			changan.switch ("目标环绕" ,
				function ()
				gg.alert("成功")	
				end,
				function ()
					
				end,
				"自动环绕"),
--3

		}, {
		particle("云烛ui","MUSIC","",{"#004eff","#fff","#004eff"}),
				wyylog
		
		}, {
                changan.switch ("目标环绕" ,
				function ()
				gg.alert("成功")	
				end,
				function ()
					
				end,
				"自动环绕"),
				changan.box({"宝物箱子",

}),
changan.seek("拉条演示","ltys",1,10,6),--名字，变量名字，最小值，最大值，初始值
changan.button("测试",function() end),
			--changan.switch("6"),
			particle("云烛ui","HarmonyOS4.0.0","",{"#004eff","#fff","#004eff"}),
			changan.text("\n\n\n"),
			tiaose(),
			changan.switch("竖屏隐藏左栏",function()
			if 显示 == 1 then
			if gg.getWindowOrientation() == 0 then
yun:setVisibility(View.GONE) 
else
yun:setVisibility(View.VISIBLE)
end
else
yun:setVisibility(View.GONE) 
end
			end,
			function()
			end),
			changan.button("退出",function()
				window:removeView(floatWindow)
				luajava.setFloatingWindowHide(false)
				luajava.newThread(function() os.exit() end):start()
				tuichu=1
				end),
				
		}, {
--第五页，没有写菜单标题所以不显示

		},{
			
		},{
			
		},{
			
		},{
			
		},{
			
		},{
			
		},{
			
		}


	})
--配置表添加表即可加页数，需要与上边菜单标题数对应



huiz()
--draw.text('.', -9200,-9200)
qz()
显示 = 1
while true do
if tuichu == 1 then break end
jianting3(qiehuan)
gg.sleep(120)
end
luajava.setFloatingWindowHide(false)

local function invoke()
return window:removeView(floatWindow)
end
luajava.post(invoke)
luajava.setFloatingWindowHide(false)
