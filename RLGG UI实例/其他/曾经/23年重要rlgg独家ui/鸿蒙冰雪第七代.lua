loadingBox = getLoadingBox('正在启动...')
loadingBox['显示']()
if gg.getWindowOrientation() == 0 then
gg.toast("请使用横屏开启")
end
function getTimeStamp(t)
local str = os.date("%m/%d-%H:%M:%S",t)
return str
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
				background="https://wp.td88.cyou/view.php/0932311ec87c431165a4882ed28a2578.png",
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
if loadingBox~=nil then
loadingBox['关闭']()
end
window:addView(floatWindow, mainLayoutParams)
---如果要加流星雨加在这
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
	_ENV["jm"..当前ui]:setBackground(getVerticalBG({0xff004EFF,0xff004EFF},30,0,0xaa242937))--选中后颜色
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
	titlebar:setVisibility(View.VISIBLE)
	cebian:setVisibility(View.VISIBLE)
    cbian:setVisibility(View.VISIBLE)
	yun:setVisibility(View.VISIBLE)
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
		yun:setVisibility(View.GONE)
	control:setVisibility(View.VISIBLE) 显示 = 0
	cebian:setVisibility(View.GONE)
	cbian:setVisibility(View.GONE)
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
	YoYoImpl:with("FadeOut"):duration(300):playOn(floatWindow)
end)
gg.sleep(300)
luajava.runUiThread(function()
    floatWindow:setVisibility(View.GONE)
	end)
else
	qhkai = 0
huiz()
--draw.text('.', -9200,-9200)
luajava.runUiThread(function() 
floatWindow:setVisibility(View.VISIBLE)
YoYoImpl:with("FadeIn"):duration(500):playOn(floatWindow)
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
			luajava.newThread(function() 切换(1)  launch("com.rekoo.pubgm") end):start() end,
			background = getShape0(90,0xff004EFF,0xff004EFF,0xff004EFF),
			layout_height = "25dp",
			layout_width = "55dp",
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
			luajava.newThread(function() 切换(1)  launch("com.vng.pubgmobile") end):start() end,
			background = getShape0(90,0xff004EFF,0xff004EFF,0xff004EFF),
			layout_height = "25dp",
			layout_width = "55dp",
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
			luajava.newThread(function() 切换(1)  launch("com.pubg.krmobile") end):start() end,
			background = getShape0(90,0xff004EFF,0xff004EFF,0xff004EFF),
			layout_height = "25dp",
			layout_width = "55dp",
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
			luajava.newThread(function() 切换(1)  launch("com.tencent.ig") end):start() end,
			background = getShape0(90,0xff004EFF,0xff004EFF,0xff004EFF),
			layout_height = "25dp",
			layout_width = "55dp",
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
thum=getShape3()
thum:setSize(80, 80)
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
		LinearLayout,
		layout_width = 'fill_parent',
		layout_hight = "fill_parent",
		layout_gravity = "center",
					
		{
			TextView,
			layout_gravity = "center",
			textColor="#201E1E",
			textSize="16sp",
			text = name..":"..nows,
			id = luajava.newId(names),
			layout_width = '90dp',
			layout_marginLeft = "10dp",
			layout_marginRight = "0dp",
		},
		    {
			SeekBar,
			layout_width = 'fill_parent',
			layout_hight = "10dp",
			layout_gravity = "center",
			layout_weight=1,
			id=luajava.newId(name.."seekbar"),
			min = truesmin,
			max = truesmax,
			progress=tnows,
			--paddingStart="0dp",
			--paddingEnd="0dp",
			progressDrawable={getShape5()},
			thumb=thum,
			progressHeight="2dp",
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
	}}})
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
checkbg = getVerticalBG({0xff006dff,0xff006dff},360)
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
radon=getVerticalBG({0x00ffffff,0x00ffffff},360,12,0xff0062FF)
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
	luajava.getIdValue(k):setBackground(radoff)
	if k==nid and v~=true then
		luajava.getIdValue(k):setBackground(radon)
		v=true
		luajava.newThread(func):start()
	end
end
end
end
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
function tiaose()
if 颜色表==nil then return 0 end
local tt={
	LinearLayout,
	gravity="center_vertical",
	layout_height="40dp",
	
}
for i=1,#颜色表 do
	tt[#tt+1]={
		LinearLayout,
		layout_height="40dp",
		layout_width="43dp",
		gravity="center",
		id=luajava.newId("yans"..i),
		onClick=function() xuanse(i) end,
		{LinearLayout,
		layout_width="25dp",
		layout_height="25dp",
		background=颜色表[i]
		}
	}
end
local t=luajava.loadlayout{
	HorizontalScrollView,
	layout_width="match_parent",
	layout_height="40dp",
	tt
}
return t
end
xze=getVerticalBG({0x00ffffff,0x00ffffff},15,3,0xff232323)
function xuanse(x)
for i=1,#颜色表 do
	luajava.getIdValue("yans"..i):setBackground(empty)
end
luajava.getIdValue("yans"..x):setBackground(xze)
floatWindow:setBackground(颜色表[x])
end


颜色表={--切换颜色的列表
getVerticalBG({0xcc000000,0xff00e8ff,0xff006dff,0xcc000000},30),
getVerticalBG({0xcc000000,0xFFFF0000,0xFF0000FF,0xcc000000},30),
getVerticalBG({0xcc000000,0xdd00f7ff,0xcc000000},30),
getVerticalBG({0xff2000ff,0xffff0000},30),
getVerticalBG({0xcc000000,0xff2000EE,0xcc000000},30),
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
	"公告",
	"功能",
	"音乐",
	"设置",
}
xfcpic = "https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/arlogo"
--悬浮窗链接或路径

左上角图标="https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/pubgLogo"

changan.menu(
	{
		{--1
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
					
				end,
				function ()
					
				end,
				"自动环绕"),
--3

		}, {
--第四页
			--changan.switch("6"),
			particle("云烛ui","HarmonyOS4.0.0","",{"#004eff","#fff","#004eff"}),
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
			changan.text("\n\n\n"),
			tiaose(),
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
