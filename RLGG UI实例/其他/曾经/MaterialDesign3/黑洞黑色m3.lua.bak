
if (rlgg.VERSION < 2.09) then
	gg.alert('请使用大于等于2.09版本的RLGG')
	os.exit()
end

local baseWindow = require 'floatingWindowManager2'

if not baseWindow.getContext then
	gg.alert('请重启一下RLGG')
	app.exit()
end

local context = baseWindow:getContext()

--[[

floatingWindowManager2 是基于RLGG开发的悬浮窗模块,帮助开发者高效实现UI

目前模块尚未完成开发,还有大量工作需要完成
暂时提供一个示例简单,具体自己探索实现 (后期逐步更新更多示例)


]]material={"animation","appbar","badge","behavior","bottomappbar","bottomnavigation","bottomsheet","button","canvas","card","checkbox","chip","circularreveal","color","datepicker","dialog","divider","drawable","elevation","expandable","floatingactionbutton","imageview","internal","math","navigation","navigationrail","progressindicator","radiobutton","resources","ripple","shadow","shape","slider","snackbar","stateful","switchmaterial","tabs","textfield","textview","theme","timepicker","tooltip","transformation","transition",}
local path="com.google.android.material."
import (path.."*")
for _,v in pairs(material) do
  import(path..v..".*")
end

import "android.graphics.Color"
import "android.content.res.ColorStateList"

function SliderColor(id,color1,color2,color3)
  id:setTrackActiveTintList(ColorStateList({{}},{"0xff"..color1}))
  id:setTrackInactiveTintList(ColorStateList({{}},{"0x50"..color2}))
  id:setThumbTintList(ColorStateList({{}},{"0xff"..color3}))
  end
--[[ function SwitchColor(id,colorA1,colorA2,colorB1,colorB2)
  id:setTrackTintList(ColorStateList({{android.R.attr.state_checked}},{colorA1,colorA2}))--背景开与关
  id:setThumbTintList(ColorStateList({{android.R.attr.state_checked}},{colorB1,colorB2}))--滑块开与关
  end]]
 
  function SwitchColor(id,color,color1)
  id:setTrackTintList(ColorStateList({{android.R.attr.state_checked}},{color,color1}))
  end


function f1()
	gg.alert('功能1')
end

-- 浅色模式
baseWindow:lightMode()

-- 深色模式
--baseWindow:darkMode()

local function newPager()
			local layouts = {
				LinearLayout,
				layout_width = 'match_parent',
				layout_height = 'wrap_content',
				paddingTop = '16dp',
				orientation = 'vertical',
			}
			local t = {}

			function t:addLayout(layout)
				layouts[#layouts+1]=layout
			end

			function t:submit(title)
				bottomTab:addLayout({
					title = title,
					{
						ScrollView,
						layout_width = 'match_parent',
						layout_height = 'match_parent',
						layouts
					}
				})
				bottomTab:notifyDataSetChanged()
			end

			function t:addCardDemo(className, layout)
				self:addLayout({
					MaterialCardView,
					layout_width = 'match_parent',
					layout_height = 'wrap_content',
					layout_marginBottom = '16dp',
					layout_marginLeft = '16dp',
					layout_marginRight = '16dp',
					elevation = '8dp',
					{
						LinearLayout,
						layout_margin = '12dp',
						layout_width = 'match_parent',
						layout_height = 'wrap_content',
						orientation = 'vertical',
						{
							TextView,
							layout_width = 'match_parent',
							layout_height = 'wrap_content',
							layout_marginBottom = '12dp',
							text = className,
							onClick = function(tv)
								local text = tostring(tv:getText())
								Snackbar:make(tv, text, Snackbar.LENGTH_LONG)
								:setAction('复制',function()
									gg.copyText(text, false)
								end)
								:show()
							end
						},
						layout
					}
				})
			end

			function t:addDemo(className, onClick)
				self:addCardDemo(className, {
					MaterialButton,
					layout_width = 'match_parent',
					layout_height = 'wrap_content',
					text = string.match(className, '([^%.]+)$') or className,
					onClick = onClick and window:threadWraper(onClick)
				})
			end
			
			return t
		end

		local element = newPager()
		
		
----md3配置--
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
function newbg2(gtvb1,gtvb4,gtvb5,g1,g2,g3,g4)
local jianbians = luajava.loadlayout({
GradientDrawable,
color = 0xff000000,
gradientType = GradientDrawable.LINEAR_GRADIENT,
orientation = GradientDrawable.Orientation.TR_BL ,
})
jianbians:setColors(gtvb1)
jianbians:setStroke(gtvb4,gtvb5)--边框宽度和颜色
jianbians:setCornerRadii({g1,g1,g2,g2,g3,g3,g4,g4})
return jianbians
end

function particle()
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
     <h1>云烛黑洞落日UI</h1>
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
colorvs={}----这个是按钮动画必加初始
function getTimeStamp(t)
local str = os.date("%m/%d-%H:%M:%S",t)
return str
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
vibra = context:getSystemService(Context.VIBRATOR_SERVICE)
Yunzhu = {}
local Yunzhu = Yunzhu
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
slctb = getHorizontalBG({0x00ffffff,0x000551A8},35,4,0xff000000)
slcta = getHorizontalBG({0x00ffffff,0x000551A8},35,4,0xff000000)
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
Yunzhu.menu = function(sview)
if isswitch then
return false
end

isswitch = true
cebian = {
	LinearLayout,
	id = "侧边",
	layout_height = "wrap_content",
	layout_width = "98dp",
	orientation = "vertical",
	gravity = "center_horizontal",
}
for i = 1,#stab do
cebian[#cebian+1] = {
	LinearLayout,
	id = "jm"..i,
	layout_height = "35dp",
	layout_width = "78dp",
	layout_marginTop = "5dp",
	layout_marginBottom = "5dp",
	layout_marginRight = "10dp",
	layout_marginLeft = "10dp",
	background = getSelector(),
	onClick = function() 切换(i) end,
	{
		TextView,
		text = stab[i],
		gravity = "center",
		textSize = "12sp",
		textColor = "#ffffff",
		layout_height = "35dp",
		layout_width = "78dp",
	}}
end
cebian = luajava.loadlayout(
	{
		ScrollView,
		visibility = "gone",
		layout_marginTop = "20dp",
		layout_height = "match_parent",
		layout_width = "98dp",
		layout_marginRight = "10dp",
		cebian,
		
	})
for i = 1,#stab do
_ENV["layout"..i] = luajava.loadlayout({
	LinearLayout,
	layout_width = "match_parent",
	layout_height = "match_parent",
	layout_marginLeft="10dp",
	layout_marginRight="10dp",
	layout_marginTop = "5dp",
	visibility = "gone",
	orientation = "vertical",
	background=newbg2({0xdd161616,0xdd161616,0x99232323},0,0x00ffffff,15,15,15,15),
	{
		TextView,
		layout_width = "match_parent",
		padding = {
			"10dp","10dp","10dp","2dp"
		},
		layout_height = "30dp",
		text = stab[i],
		textColor = "#ffffff",
		textSize = "14sp",
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
	}})
end
ckou = {
		LinearLayout,
		orientation = "horizontal",
		padding = "0dp",
		layout_width='match_parent',
		layout_height='match_parent',
		{LinearLayout,
		layout_width='103dp',
		layout_height='match_parent',
		orientation = "vertical",
		{
		LinearLayout,
		layout_width='98dp',
		layout_height='match_parent',
		orientation = "vertical",
		background=newbg2({0xdd161616,0xdd161616,0x99232323},0,0x00ffffff,15,15,15,15),
		id="cbian",
		visibility = "gone",
		{LinearLayout,
		layout_width='98dp',
		layout_marginTop="20dp",
		layout_height='match_parent',
		orientation = "vertical",
		cebian,
		
		}}},
}
for i = 1,#stab do
ckou[#ckou+1] = _ENV["layout"..i]
end
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
ckou = luajava.loadlayout({
	LinearLayout,
	id = "chuangk",
	visibility = "visible",
	layout_width = "match_parent",
	layout_height = "match_parent",
	orientation = "vertical",
	{--顶部栏
		FrameLayout,
		id = "titlebar",
		visibility = "gone",
		orientation = "vertical",
		padding = "2dp",
		layout_height="90dp",
		layout_width="fill_parent",
		{
	LinearLayout,
		layout_width='match_parent',
		layout_height='85dp',
		visibility = "visible",
		gravity = "top",
		orientation = "vertical",
		background=newbg2({0xdd161616,0xdd161616,0x99232323},0,0xffffffff,15,15,15,15),
		onTouch=hanshu,
	{LinearLayout, 
		layout_width='match_parent',
		layout_height='58.5dp',
		layout_marginLeft="10dp",
		visibility = "visible",
		onTouch=hanshu,
		{LinearLayout,
			layout_height='match_parent',
			layout_width='match_parent',
			{LinearLayout,
				layout_height='match_parent',
				layout_width='match_parent',
				layout_marginTop = "2dp",
				layout_weight=1,
				{LinearLayout,
					layout_height='match_parent',
					layout_width='match_parent',
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
								text = string.fromHtml("<font color=#ffffff>".."欢迎使用","</font>"),
								textSize = "12sp",
								textColor = "#545454",
								gravity="left",
								layout_width = "match_parent",
								},
						{
								TextView,
								text = string.fromHtml("<font color=#ffffff>".."本UI启动时间:"..getTimeStamp(os.time()).."</font>"),
								textSize = "12sp",
								textColor = "#545454",
								gravity="left",
								layout_width = "match_parent",
								}
					}
					}
					
				}},
			},
		}},{
LinearLayout,
layout_marginLeft = "6dp" ,
layout_marginRight = "6dp",
tiaose()}}},
	ckou})
	motion=luajava.loadlayout({FrameLayout,
			id = "motion",
			layout_width = "match_parent",
			layout_height="match_parent",
			gravity="center",
			{LinearLayout,
			    layout_width = "25dp",
             	layout_height = "25dp",
				id="jiaobiao",
				background="https://wp.td88.cyou/view.php/4eb45a04d1643a1a01fdb11331a3d58.png",
				visibility="gone",
				layout_gravity="right|bottom",
				onClick=function()  end,
				onTouch = suofang 
			}

		})
floatWindow = {
	FrameLayout,
	id = "motion",
	elevation = "10dp",
	onTouch = hanshu,
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
	_ENV["jm"..i]:setBackground(getVerticalBG({0x00ffffff,0x00ffffff},30,0,0xaa242937))--未选中的颜色
	end
	_ENV["layout"..当前ui]:setVisibility(View.VISIBLE)
	_ENV["jm"..当前ui]:setBackground(slcta)--选中后颜色
	YoYoImpl:with("FadeIn"):duration(400):playOn(_ENV["layout"..当前ui])
	end)
end
显示 = 0
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
	if not yck then ycg=600 yck=600 end----默认长宽
    	mainLayoutParams.height=ycg
    	mainLayoutParams.width=yck
    	window:updateViewLayout(floatWindow, mainLayoutParams)
    	jiaobiao:setVisibility(View.VISIBLE)
	显示 = 1
	titlebar:setVisibility(View.VISIBLE)
	cebian:setVisibility(View.VISIBLE)
	mainLayoutParams.flags = LayoutParams.FLAG_NOT_TOUCH_MODAL
	cbian:setVisibility(View.VISIBLE)
	YoYoImpl:with("SlideInDown"):duration(200):playOn(cebian)
	_ENV["layout"..当前ui]:setVisibility(View.VISIBLE)
	YoYoImpl:with("FadeIn"):duration(800):playOn(_ENV["layout"..当前ui])
	Yunzhu.controlBig(floatWindow,500)
	else
		ycg=mainLayoutParams.height
		yck=mainLayoutParams.width
		mainLayoutParams.height=110
		mainLayoutParams.flags = LayoutParams.FLAG_NOT_FOCUSABLE
		mainLayoutParams.width=110
		window:updateViewLayout(floatWindow, mainLayoutParams)
		titlebar:setVisibility(View.GONE)
		jiaobiao:setVisibility(View.GONE)
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
uiadtext(localname.." 已开启.","#"..string.sub(string.format("%x", 开关颜色[1]),3,-1))
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
uiadtext(localname.." 已关闭.","#"..string.sub(string.format("%x", 开关颜色[2]),3,-1))
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

function Yunzhu.switch(name,func1,func2,miaoshu)
if not checkbg then

checkbga = getVerticalBG({开关关闭[1],开关关闭[2]},360)
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
    layout_width = 'match_parent',
    layout_height = "47dp",
    gravity = "center",
    {
      LinearLayout,
      layout_width = 'match_parent',
      layout_height = "40dp",
      elevation = "3dp",
      layout_gravity = "center",
      gravity = "center",
      
      layout_marginRight = "4dp",
      layout_marginLeft = "4dp",
      background = luajava.loadlayout {
        GradientDrawable ,
        color = "0x78000000" ,
        cornerRadius = 17
        } ,padding = {
        "0dp","0dp","6dp","0dp"
      },
{
				LinearLayout,
				layout_width = 'match_parent',
				layout_height = 'match_parent',
				orientation = 'vertical',
				
				{
					MaterialSwitch,
					id=nid,
					layout_width = 'match_parent',
					layout_height = 'wrap_content',
					text = name,
					textSize = "13sp",
       -- setTrackTintList('0xffffffff'),
--mddd3:setTrackTintList(ColorStateList({{android.R.attr.state_checked},{}},{0xff2000ff,0xffd7d7d7})),
---setThumbTintList('0xffffffff'),

        layout_marginLeft = "10dp",
        layout_weight = 1,
        textColor = "0xffffffff",
        --setThumbTintList='0xffffffff',
        onClick = function() luajava.newThread(function() func() end):start() end,
		},
			
		
			}}
  })
  SwitchColor(_ENV[nid],0xff004eff)
return rest
end
spics={
}
for i=1,55 do
	spics[i]="opo"..i
end

function Yunzhu.text(txt,color,size)
if not txt then txt = "未设置文字" end
if not color then color = "#545454" end
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

function 开关(name,func1,func2)
if func1 == nil then func1 = function() end end
if func2 == nil then func2 = function() end end
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
boxpic[tid]:setColorFilter(控件颜色[1])
else
	tview : setVisibility (View.GONE)
Yunzhu.controlWater (_ENV [tid.."6"] , 200)
Yunzhu.controlRotation9(boxpic[tid],90,0)
boxpic[tid]:setColorFilter(0xffffffff)
end
end
boxes = {} boxpic = {}
function Yunzhu.box (views)
local tid = "box"..guid ()
boxpic[tid] = luajava.loadlayout {
	ImageView ,
	src = "https://wp.td88.cyou/view.php/dfcc155180c66711a66a1c6540db5e03.png",
	ColorFilter= "#ffffff",
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
		layout_marginLeft = "10dp" ,
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
} 
}else
	gg.alert ("Yunzhu.box的table内第一个元素必须是string") os.exit ()
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
radiog={}
function Yunzhu.radio (cklist)
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
	background=getVerticalBG({0x78000000,78000000},25),
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
	uiadtext('选择了 '..name.."","#"..string.sub(string.format("%x", 开关颜色[1]),3,-1))
	vibra:vibrate(9)
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
		textSize="14sp",
		textColor = "#ffffff" ,
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
function Yunzhu.buttonAB(txt,func,txtc)
if not txt then txt = "未设置" end
if not txtc then txtc="#ffffff" end
local tid="Cbutton"..guid()
buts[tid]=luajava.loadlayout(
		{
					MaterialCardView,
					layout_width = 'match_parent',
					layout_height = 'wrap_content',
					layout_marginBottom = '16dp',
					layout_marginLeft = '16dp',
					layout_marginRight = '16dp',
					elevation = '8dp',
					{
						LinearLayout,
						layout_margin = '12dp',
						layout_width = 'match_parent',
						layout_height = 'wrap_content',
						orientation = 'vertical',
						{
							TextView,
							layout_width = 'match_parent',
							layout_height = 'wrap_content',
							layout_marginBottom = '12dp',
							text = txt,
							onClick = function(tv)
								local text = tostring(tv:getText())
								Snackbar:make(tv, text, Snackbar.LENGTH_LONG)
								:setAction('复制',function()
									gg.copyText(text, false)
								end)
								:show()
							end
						},
						Slider,
						id=nid,
			layout_width = 'match_parent',
			layout_height = 'wrap_content',
			value = 100,
			valueTo = 1000,
			valueFrom = 1,
			stepSize = 1,
			addOnChangeListener = function(slider, value, fromUser) -- 如果执行的功能不是修改器的函数,或者不带阻塞的,可以不用 window:threadWraper 包裹,性能更好(属于UI线程)

				-- 如果不是用户触发的,不处理
				if not fromUser then
					return
				end

				Snackbar:make(slider, '拖动条进度 > '..value, Snackbar.LENGTH_SHORT):show()
			end
					}
				})
			--	SliderColor(_ENV[nid],004EFF,004EFF,ffffff)
return buts[tid]
end
function Yunzhu.button(txt,func,txtc)
if not txt then txt = "未设置" end
if not txtc then txtc="#ffffff" end
local tid="Cbutton"..guid()
buts[tid]=luajava.loadlayout(
{
				LinearLayout,
				layout_width = 'match_parent',
				layout_height = 'wrap_parent',
				orientation = 'vertical',
				{
					MaterialButton,
					layout_width = 'match_parent',
					layout_height = 'wrap_content',
					text = txt,
					textSize = "13sp",
        
        layout_marginLeft = "10dp",
        layout_weight = 1,
        textColor = "0xffffffff",
					onClick = function()        
        Yunzhu.controlWater(buts[tid],300)     
        luajava.newThread(func):start() end,
				},
			
		
			})
return buts[tid]
end
function getButtonBG()
local selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, getVerticalBG({0x34000400,0x34000400},15))
selector:addState({
	-android.R.attr.state_pressed
}, getVerticalBG({0x78000000,0x78000000},15))
return selector
end



function PS() end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end

function PS() end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
---静态基址写法配置


function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "地址成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "失败") end end end end
function xqmnb(Search,Modification)
gg.clearResults() gg.setRanges(Search[1].memory) gg.searchNumber(Search[3].value,Search[3].type,false,536870912,0,-1) if gg.getResultCount()==0 then gg.toast(Search[2].name..'开启失败')  return end local Result=gg.getResults(gg.getResultCount()) local sum for index=4,#Search do  sum=0 for i=1,#Result do  if gg.getValues({{address=Result[i].address+Search[index].offset,flags=Search[index].type}})[1].value~=Search[index].lv then Result[i].Usable=true  sum=sum+1 end  end  if sum==#Result then gg.toast(Search[2].name..'开启失败') return end end  local Data,Freeze,Freezes={},{},0  sum=0 for index,value in ipairs(Modification)do for index=1,#Result do if not Result[index].Usable then  local Value={address=Result[index].address+value.offset,flags=value.type,value=value.value,freeze=true} if value.freeze then Freeze[#Freeze+1]=Value Freezes=Freezes+1 else Data[#Data+1]=Value  end  sum=sum+1 end end end gg.setValues(Data) gg.addListItems(Freeze)  if Freezes==0 then gg.toast(Search[2].name..'开启成功,共修改'..sum..'条数据') else gg.toast(Search[2].name..'开启成功,共修改'..sum..'条数据,冻结'..Freezes..'条数据') end gg.clearResults() end


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
			background = getVerticalBG({0x78000000,0x78000000},15,3,0x780000000),
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
				textColor = "#ffffff",
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
				uiadtext(musnames[i].." 已播放.","#"..string.sub(string.format("%x", 开关颜色[1]),3,-1))
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
	background=getVerticalBG({0x78000000,0x78000000},15,3,0xff000000),
	visibility = "visible",
	id = luajava.newId("stxt"),
	layout_marginLeft = "10dp",
	textSize = "16sp",
	TextColor="#ffffff",
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
			Yunzhu.button("停止播放", function()
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
					background = getVerticalBG({0x78000000,0x78000000},15,3,0xff000000),
					focusableInTouch = "false",
					HintTextColor="#ffffff",
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
	gravity="top",
	layout_height="25dp",
	
}
for i=1,#颜色表 do
	tt[#tt+1]={
		LinearLayout,
		layout_height="25dp",
		layout_width="25dp",
		layout_marginLeft = "9dp",
		gravity="center",
		id=luajava.newId("yans"..i),
		onClick=function() 选色(i) 
		uiadtext("已选择'"..颜色表[i][3].."'配色","#"..string.sub(string.format("%x", 开关颜色[1]),3,-1)) end,
		{LinearLayout,
		layout_width="20dp",
		gravity="center",
		layout_height="20dp",
		background=getVerticalBG({颜色表[i][1],颜色表[i][2]},15)
		}
	}
end
local t=luajava.loadlayout{
	HorizontalScrollView,
	layout_width="match_parent",
	layout_height="27dp",
	gravity="top",
	tt
}
return t
end
xze=getVerticalBG({0x00ffffff,0x00ffffff},15,3,0xffffffff)
function 选色(x)
for i=1,#颜色表 do
	luajava.getIdValue("yans"..i):setBackground(empty)
end
luajava.getIdValue("yans"..x):setBackground(xze)
控件颜色=颜色表[x]
选=x
if x == 1 then 
开关颜色={0xff004EFF,0xffff0000}
控件颜色={0xff004EFF,0xff004EFF}
else
开关颜色=颜色表[x]
end
checkbg = getVerticalBG({控件颜色[1],控件颜色[2]},360)
radon=getVerticalBG({0x00ffffff,0x00ffffff},360,12,控件颜色[1])
if 选 == 1 then
slcta=getVerticalBG({0xff004EFF,0xff004EFF},30)
else
for i=1,#stab do
slcta=getVerticalBG({控件颜色[1],控件颜色[2]},30)
end
end
_ENV["jm"..当前ui]:setBackground(slcta)
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
function getVerticalBG(gtvb1,gtvb3,gtvb4,gtvb5)
if not gtvb4 then gtvb4 = 0 gtvb5 = 0xff000000 end
local jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(gtvb3)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors(gtvb1)
jianbians:setStroke(gtvb4,gtvb5)
return jianbians
end
thum= getVerticalBG({0x55ffffff,0x55ffffff},25,6,0xffffffff)
thum:setSize(60, 60)
chazhi={} chajv={}
function Yunzhu.seek(name,bian,smin,smax,nows)
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
				layout_width = 'match_parent',
				layout_height = 'match_parent',
				orientation = 'horizontal',
				{
			TextView,
		padding={"5dp","15dp","0dp","15dp",},
			gravity = "center",
			text = name,--..":"..nows,
			id = luajava.newId(names),
			--layout_width = '100dp',
			textSize="15sp",
		--	layout_marginLeft = "5dp",
		--	layout_marginRight = "0dp",
		},
				{
				Slider,
				layout_width = 'match_parent',
				layout_height = 'wrap_content',
				value = nows,
				valueTo = smax,
				valueFrom = smin,
				stepSize = 0.5,
					onClick = function() luajava.newThread(function() func() end):start() end,
				addOnChangeListener = function(slider, value, fromUser) -- 如果执行的功能不是修改器的函数,或者不带阻塞的,可以不用 window:threadWraper 包裹,性能更好(属于UI线程)

				-- 如果不是用户触发的,不处理
				if not fromUser then
					return
				end

				Snackbar:make(slider, '已选择数值 > '..value, Snackbar.LENGTH_SHORT):show()
			end
				},
			
		
			}})
return rest
end

local ViewGroupClass = luajava.bindClass("android.view.ViewGroup")
local TextViewClass = luajava.bindClass("android.widget.TextView")
local ImageViewClass = luajava.bindClass("android.widget.ImageView")

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

mainLayoutParams.y = tonumber(y) + (event:getRawY() - RawY)
window:updateViewLayout(floatWindow, mainLayoutParams)
end
end
颜色表={--切换颜色的列表
{0xffF2F3F5,0xffF2F3F5,"鸿蒙蓝白"},
{0x78000000,0x78000000,"落日黑洞"},
{0x9000f4ff,0x90006dff,"天空之境"},
{0x90fff7ad,0x90ffa9f9,"日暮苍山"},
{0x908c52ff,0x9000bf63,"鸭绿林雨"},
{0x905170ff,0x90ff66c4,"星夜雾虹"},
{0x90ff3131,0x90ff914d,"云烛落日"},
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


控件颜色={0x90ff3131,0x90ff914d}
开关关闭={0x80000000,0x80000000}
开关颜色={0xffffe061,0xffE27E59}














function huiz()

end

stitle = "UI"

stab = {
--菜单名字，添加即可加页数，需要与结尾配置表对应
	"防封",
	"功能",
	"音乐",
	"设置",
	"设置",
	
	
	
}
xfcpic = "http://cdn.u1.huluxia.com/g4/M02/20/0D/rBAAdmWimtSAYZCcAAJzHyuHgVs739.png"
--悬浮窗链接或路径

左上角图标="http://cdn.u1.huluxia.com/g4/M02/20/0D/rBAAdmWimtSAYZCcAAJzHyuHgVs739.png"

Yunzhu.menu(
	{
		{--1
		particle("云烛ui","Made by Yunzhu","",{"#004eff","#fff","#004eff"}),
		Yunzhu.radio({--单选
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
--	baseWindow=require 'floatingWindowManager2'
--context = baseWindow:getContext()

					Yunzhu.box({"Combat",


			Yunzhu.switch ("点击" ,
				function ()
				baseWindow=require 'floatingWindowManager2'
context = baseWindow:getContext()
local dialogBuilder = MaterialAlertDialogBuilder(context)
:setTitle('MaterialAlertDialogBuilder')
:setMessage(string.rep('1',128))
:setPositiveButton('确定')
				end,
				function ()
					
				end,
				"范围自动攻击"),
				Yunzhu.seek("拉条例子","ltlz",1,100,1),--名字，变量名字，最小，最大，初始
				Yunzhu.button("对话框",function()
			
				
			
				end),
			Yunzhu.switch ("无限光环" ,
				function ()
					
				end,
				function ()
					
				end,
				"自研百米大刀"),
			Yunzhu.switch ("弓箭自瞄" ,
				function ()
					
				end,
				function ()
					
				end,
				"自动瞄准玩家"),
			Yunzhu.switch ("超级击退" ,
				function ()
					
				end,
				function ()
					
				end,
				"SuperKB"),
			Yunzhu.switch ("自动黑曜石" ,
				function ()
					
				end,
				function ()
					
				end,
				"自动黑曜石"),
			Yunzhu.switch ("水晶光环" ,
				function ()
					
				end,
				function ()
					
				end,
				"自动水晶"),
			Yunzhu.switch ("自动图腾" ,
				function ()
					
				end,
				function ()
					
				end,
				"自动替换副手图腾"),
			Yunzhu.switch ("智能队友" ,
				function ()
					
				end,
				function ()
					
				end,
				"智能队友"),
			Yunzhu.switch ("上帝模式" ,
				function ()
					
				end,
				function ()
					
				end,
				"停止发包"),
			Yunzhu.switch ("自动战斗" ,
				function ()
					
				end,
				function ()
					
				end,
				"AI自动战斗"),
			Yunzhu.switch ("扩大膨胀箱" ,
				function ()
					
				end,
				function ()
					
				end,
				"碰撞箱"),
			Yunzhu.switch ("目标环绕" ,
				function ()
					
				end,
				function ()
					
				end,
				"自动环绕"),
		}),
		}, {
		
	
--2
Yunzhu.switch ("防闪-64-bit" ,
				function ()

end,
				function ()
					
				end,
			"局内界面开启即可降低被举报风险"),
Yunzhu.switch ("跳伞加速-64-bit" ,
				function ()
				
				end,
				function ()
					
				end,
				"快速落地开启约15关闭该功能"),
				Yunzhu.switch ("无后-64-bit" ,
				function ()
	
				end,
				function ()
					
				end,
				"辅助你圧枪达成无后座效果"),
				
				Yunzhu.switch ("防抖-64-bit" ,
				function ()

				end,
				function ()
					
				end,
				"辅助你压枪达成防抖效果"),
				Yunzhu.switch ("瞬击-64-bit" ,
				function ()

				end,
				function ()
					
				end,
				"子弹瞬间到达目标达到瞬击效果"),
				Yunzhu.switch ("手持聚点-64-bit" ,
				function ()		


				end,
				function ()
					
				end,
				"子弹聚集达到聚点效果"),
				Yunzhu.switch ("聚点-64-bit" ,
				function ()

				end,
				function ()
					
				end,
				"子弹聚集达到聚点效果"),
				Yunzhu.switch ("除雾-64-bit" ,
				function ()

				end,
				function ()
					
				end,
				"可以除掉五图七图辐射区的雾"),
				Yunzhu.switch ("广角(动)-64-bit" ,
				function ()				

				end,
				function ()
					
				end,
				"放大视角达到广角效果"),

				
				

}, {
wyylog

		}, {
Yunzhu.radio({--单选
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
					Yunzhu.box({"宝物箱子",

}),
			--Yunzhu.switch("6"),
			Yunzhu.button("退出",function()
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
