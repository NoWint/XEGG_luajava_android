
layoutcolor = "#22000000"
CL = {}
local CL = CL
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
mainLayoutParams.x = tonumber(x) - (event:getRawX() - RawX)
mainLayoutParams.y = tonumber(y) + (event:getRawY() - RawY)
window:updateViewLayout(floatWindow, mainLayoutParams)
end
end
local android = import('android.*')
function write(fileName, content)
--f = assert( io.open( fileName, 'w'))   f:write( content )     f:close()
if file.write(fileName, content) == false then gg.alert("请给框架和修改器 文件储存权限\n否则无法正常运行") os.exit() end
end
function panduan(rec) fille,err = io.open(rec) if fille == nil then return false else return true end end
function checkimg(tmp,ii)
if panduan("/sdcard/云烛/图片/"..tmp) ~= true then
gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
luajava.download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..tmp,"/sdcard/云烛/图片/"..tmp)
else
if file.length("/sdcard/云烛/图片/"..tmp) <= 1 then
gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
luajava.download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..tmp,"/sdcard/云烛/图片/"..tmp)
end
end
if panduan("/sdcard/云烛/图片/"..tmp) ~= true then
gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
luajava.download("https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/"..tmp,"/sdcard/云烛/图片/"..tmp)
else
	if file.length("/sdcard/云烛/图片/"..tmp) <= 1 then
gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
luajava.download("https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/"..tmp,"/sdcard/云烛/图片/"..tmp)
end
end
end
file.getdirs("/sdcard/云烛/状态读取/")
ckimg = {
	"sj",
	"hsj",
	"exit",
	'Shimmer.dex',
	'heir','quarkcheckoff','quarkcheckon',

}
for i = 1,#ckimg do
checkimg(ckimg[i],i)
end

shimmer=dex.loadfile('/sdcard/云烛/图片/Shimmer.dex')
import "com.romainpiel.shimmer.Shimmer"
import "com.romainpiel.shimmer.ShimmerTextView"
import "com.romainpiel.shimmer.ShimmerButton"

local context = app.context
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
layoutParams.gravity = Gravity.TOP|Gravity.RIGHT -- 重力设置
layoutParams.width = LayoutParams.WRAP_CONTENT -- 布局宽度
layoutParams.height = LayoutParams.WRAP_CONTENT -- 布局高度

return layoutParams
end
function 获取图片(txt)
txt = string.url(txt,"de")
ntxt = string.sub(string.gsub(txt,"/","-"),-10,-1)
if string.find(tostring(txt),"http") ~= nil then
if panduan("/sdcard/云烛/图片/"..ntxt) == false then
file.download(txt,"/sdcard/云烛/图片/"..ntxt)
else
	if file.length("/sdcard/云烛/图片/"..ntxt) <= 1 then
file.download(txt,"/sdcard/云烛/图片/"..ntxt)
end
end
txt = "/sdcard/云烛/图片/"..ntxt
end
return luajava.getBitmapDrawable(txt)
end
function getRes(x)
return 获取图片("/sdcard/云烛/图片/"..x)
end
function getVerticalBG(gtvb1,gtvb3,gtvb4,gtvb5)
if not gtvb4 then gtvb4 = 0 gtvb5 = 0xff00FFFF,0xff00FA9A end
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
function getCorner(gtvb1,gtvb3,gtvb4,gtvb5,g1,g2,g3,g4)
if not gtvb4 then gtvb4 = 0 gtvb5 = 0xff000000 end
local jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(gtvb3)
jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)

jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors(gtvb1)
jianbians:setStroke(gtvb4,gtvb5)--边框宽度和颜色
jianbians:setCornerRadii({g1,g1,g2,g2,g3,g3,g4,g4})
return jianbians
end
slctb = getCorner({0xffE0FFFF,0xff90EE90},12,3,0x001B8FFF,25,5,25,5)
slcta = getCorner({0xff7FFFD4,0xff7FFFD4},12,nil,nil,25,5,25,5)
slctc = luajava.loadlayout {
	GradientDrawable,
	color = "#00BFFF",
	cornerRadius = 8
}
slctd = luajava.loadlayout {
	GradientDrawable,
	color = "#0BFFF",
	cornerRadius = 8
}
slcte = luajava.loadlayout {
	GradientDrawable,
	color = "#00FFFF",
	cornerRadius = 12
}
slctf = luajava.loadlayout {
	GradientDrawable,
	color = "#00FFFF",
	cornerRadius = 12
}
function getSelector3()
selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, luajava.loadlayout {
	GradientDrawable,
	color = "#c0fffba",
	cornerRadius = 12
}) -- 点击时候的背景
selector:addState({
	-android.R.attr.state_pressed
}, luajava.loadlayout {
	GradientDrawable,
	color = "#c0fffba",
	cornerRadius = 12
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
function getSelector6()
selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, luajava.loadlayout {
	GradientDrawable,
	color = "#c0fffba",
	cornerRadius = 12
}) -- 点击时候的背景
selector:addState({
	-android.R.attr.state_pressed
}, luajava.loadlayout {
	GradientDrawable,
	color = "#c0fffba",
	cornerRadius = 12
}) -- 没点击的背景
return selector
end
function getSelector7()
selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, luajava.loadlayout {
	GradientDrawable,
	color = "#000000",
	cornerRadius = 12
}) -- 点击时候的背景
selector:addState({
	-android.R.attr.state_pressed
}, luajava.loadlayout {
	GradientDrawable,
	color = "#00FFFF",
	cornerRadius = 12
}) -- 没点击的背景
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
CL.menu = function(stext,sview)
if isswitch then
return false
end
isswitch = true
cebian = {
	LinearLayout,
	id = "侧边",
	visibility = "gone",
	layout_height = "200dp",
	layout_width = "88dp",
	orientation = "vertical",
	background = {
		GradientDrawable,
		color = "#00ffffff",
		cornerRadius = 10
	},
	
	
}
for i=1,#stab do
_ENV['layout'..i] = luajava.loadlayout({
	ScrollView,
	fillViewport = "true",
	padding = "7dp",
	id = "layout"..i,
	visibility = "gone",
	layout_width = "230dp",
	layout_height = "250dp",
	orientation = "horizontal",
	{
		LinearLayout,
		id = "layoutm"..i,
		gravity = "top",
		layout_width = "210dp",
		orientation = "vertical",
		gravity = "center_horizontal",
	}
})
_ENV['jmt'..i]=luajava.loadlayout({
			ShimmerTextView,
			text = stab[i],
			gravity = "center",
			reflectionColor="#00FA9A";
			textColor="#10FFFF";
			layout_height = "28dp",
			layout_width = "88dp",
			layout_marginLeft = "10dp",
			layout_marginRight = "10dp",
		})
cebian[#cebian+1]={
		LinearLayout,
		id = "jm"..i,
		layout_height = "28dp",
		layout_width = "88dp",
		gravity = "center",
		layout_marginTop = "2dp",
		layout_marginBottom = "2dp",
		onClick=function() 切换(i) end,
		background=getSelector(),
		onTouch=hanshu,
		_ENV['jmt'..i]
		}
end
cebian[#cebian+1]={
		LinearLayout,
		id = "exit",
		gravity = "center",
		layout_height = "28dp",
		layout_width = "88dp",
		layout_marginTop = "2dp",
		layout_marginBottom = "0dp",
		onClick = function() end,
		background = getSelector(),
		{
			TextView,
			text = "Exit",
			layout_height = "28dp",
			layout_width = "68dp",
			gravity = "center",
			layout_marginLeft = "10dp",
			layout_marginRight = "10dp",
		}}


titlev=luajava.loadlayout({
			ShimmerTextView,
			text = stitle,
			gravity = "center",
			textColor="#00FA9A";
			textSize="15sp",
			reflectionColor="#00FFFF";
			layout_height = "40dp",
			layout_width = "90dp",
			layout_marginLeft = "10dp",
			layout_marginRight = "10dp",
		})

cebian=luajava.loadlayout(cebian)
ckou = {
	LinearLayout,
	id = "chuangk",
	visibility = "visible",
	layout_gravity='center',
	layout_width = "wrap_content",
	layout_height = "match_parent",
	orientation = "horizontal",
	
	
}
for i=1,#stab do
	ckou[#ckou+1]=_ENV['layout'..i]
end
ckou[#ckou+1]={
		LinearLayout,
		layout_width = "wrap_content",

		layout_height = "wrap_content",
		orientation = "vertical",
		{
			LinearLayout,
			layout_width = "wrap_content",
			layout_height = "wrap_content",
			orientation = "horizontal",
			background = {
				GradientDrawable,
				color = "#00000000",
				cornerRadius = 16
			},
			gravity = "center_vertical",

			{
				LinearLayout,
				id = "control",
				layout_width = "wrap_content",
				layout_height = "wrap_content",
				layout_marginLeft = "0dp",
				layout_marginTop = "2dp",
				layout_marginBottom = "2dp",
				gravity = "center",
				{
	LinearLayout,
	layout_width = "wrap_content",
	layout_height = "48dp",
--visibility = "gone",
	gravity = "center",
	titlev},
			},
		},
		cebian,
	}
floatWindow = {
	FrameLayout,
	id = "motion",
	layout_width = "230dp",
	orientation = "vertical",
	gravity = "center_vertical",
	layout_height = "wrap_content",
	{LinearLayout,
		id='canv',
		visibility='gone',
		orientation='vertical',
		{LinearLayout,
		layout_height='10dp',
		layout_width='320dp',
		background=getCorner({0xaa000000,0xaa000000},15,nil,nil,15,15,0,0),
		},{LinearLayout,
		id='webv',
		gravity='center',
		layout_height='250dp',
		layout_width='320dp',
	},{LinearLayout,
		layout_height='10dp',
		layout_width='320dp',
		background=getCorner({0xff00FA9A,0xff00FA9A},15,nil,nil,0,0,15,15),
		}},
	ckou
}
local function invoke()
local ok
local RawX, RawY, x, y
mainLayoutParams = getLayoutParams()
floatWindow = luajava.loadlayout(floatWindow)
local function invoke2()
block('start')
for j=1,#stab do
for i = 1,#sview[j] do
_ENV['layoutm'..j]:addView(sview[j][i])
end
end
window:addView(floatWindow, mainLayoutParams)
webv:addView(parti)
block('end')
end

local runnable = luajava.getRunnable(invoke2)
local handler = luajava.getHandler()
handler:post(runnable)
block('join')
control.onClick = function()
隐藏()
end
exit.onClick = function()
gg.toast("悬浮窗已退出")
window:removeView(floatWindow)
luajava.setFloatingWindowHide(false)
bloc("end")
end

local isMove


motion.onTouch = hanshu
control.onTouch = hanshu
exit.onTouch = hanshu

hanshu2 = function(v, event)
local Action = event:getAction()
if Action == MotionEvent.ACTION_DOWN then
isMove = false
RawX = event:getRawX()
RawY = event:getRawY()
elseif Action == MotionEvent.ACTION_MOVE then
isMove = true
control:scrollTo(-(event:getRawX() - RawX),-(event:getRawY() - RawY))

end
end
end

invoke(swib1,swib2)
gg.setVisible(false)
luajava.setFloatingWindowHide(true)
jm1:setBackground(slcta)

control.onTouch=hanshu

end
corbk = true
CL.controlBig = function(control,time)
luajava.runUiThread(function()
	import "android.animation.ObjectAnimator"
	ObjectAnimator():ofFloat(control,"scaleX", {
		0, 0.4, 0.7, 1
	}):setDuration(time):start()
	ObjectAnimator():ofFloat(control,"scaleY", {
		0, 0.4, 0.7, 1
	}):setDuration(time):start()
	end) end
CL.controlFlip = function(control,time)
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
CL.controlWater = function(control,time)
luajava.runUiThread(function()
	import "android.animation.ObjectAnimator"
	ObjectAnimator():ofFloat(control,"scaleX", {
		1, 0.8, 0.9, 1
	}):setDuration(time):start()
	ObjectAnimator():ofFloat(control,"scaleY", {
		1,0.8,0.9,1
	}):setDuration(time):start()
	end) end
CL.controlSmall = function(control,time)
luajava.runUiThread(function()
	import "android.animation.ObjectAnimator"
	ObjectAnimator():ofFloat(control,"scaleX", {
		1, 0.7, 0.4, 0
	}):setDuration(time):start()
	ObjectAnimator():ofFloat(control,"scaleY", {
		1, 0.7, 0.4, 0
	}):setDuration(time):start()
	end) end
当前ui = 1
function 切换(x)
if 当前ui==x then return 0 end
当前ui = x
luajava.runUiThread(function()
	_ENV['jm'..当前ui]:setBackground(slcta)
	_ENV['layout'..当前ui]:setVisibility(View.VISIBLE)
	YoYoImpl:with("FadeIn"):duration(600):playOn(_ENV['layout'..当前ui])
	
	for i=1,#stab do
	if 当前ui~=i then
    _ENV['jm'..i]:setBackground(getSelector())
    _ENV['layout'..i]:setVisibility(View.GONE)
	end
	end
	end)
end
显示 = 0
beij = luajava.loadlayout({
	GradientDrawable,
	color = "#00FFFF",
	cornerRadius = 10
})
beij2 = luajava.loadlayout({
	GradientDrawable,
	color = "#00FA9A",
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

function particle()
local webView = luajava.webView(function(webView)
	webView:loadData([[
	<!DOCTYPE html>
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <style>
    *{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins', sans-serif;
}
section{
  position: relative;
  height: 100vw;
  width: 100vw;
  overflow: hidden;
  display: flex;
  align-items: center;
  justify-content: center;
}
section .wave{
  position: absolute;
  left: 0;
  height: 100vw;
  width: 100vw;
  background: #00FA9A;
}

section .wave span{
  position: absolute;
  width: 230vw;
  height: 230vw;
  top:0;
  left: 50%;
  transform: translate(-50%, -75%);
  background: #000;
}
section .wave span:nth-child(1) {
  animation: animate 5s linear infinite;
  border-radius: 40%;
  background: rgba(255,255,255, 1);
}
section .wave span:nth-child(2) {
  animation: animate 10s linear infinite;
  border-radius: 35%;
  background: rgba(255,255,255, 0.5);
}
section .wave span:nth-child(3) {
  animation: animate 15s linear infinite;
  border-radius: 37.5%;
  background: rgba(255,255,255, 0.5);
}
section .wave span:nth-child(4) {
  animation: animate 15s linear infinite;
  border-radius: 37.5%;
  background: rgba(255,255,255, 0.5);
}

@keyframes animate{
  0%{
    transform: translate(-50%, -75%) rotate(0deg);
  }
  100%{
    transform: translate(-50%, -75%) rotate(360deg);
  }
}

section .content{
  position: relative;
  z-index: 1;
  color: #fff;
  font-size: 3em;
}
    </style>
  </head>
  <body>
    <section>
      <div class="wave">
        <span></span>
        <span></span>
        <span></span>
      </div>
      <div class="content">
        <h2></h2>
      </div>
    </section>
  

</body></html>
]], 'text/html', 'UTF-8')
	webView:setBackgroundColor(0x0)
	end)
return webView
end
parti=particle()



function 隐藏()
luajava.runUiThread(function()
--control:setBackground(luajava.getBitmapDrawable("/sdcard/云烛/图片/imgui"))
	if tonumber(tostring(cebian:getVisibility())) == 8.0 then
		luajava.newThread(function()
			
		end):start()
	--chuangk:setVisibility(View.VISIBLE)
	cebian:setVisibility(View.VISIBLE)
	canv:setVisibility(View.VISIBLE)
	--title:setVisibility(View.VISIBLE)
	CL.controlBig(floatWindow,500)
		mainLayoutParams.flags = LayoutParams.FLAG_NOT_TOUCH_MODAL
		window:updateViewLayout(floatWindow, mainLayoutParams)
	YoYoImpl:with("FadeIn"):duration(400):playOn(cebian)
	luajava.runUiThread(function()
		--YoYoImpl:with("FadeIn"):duration(800):playOn(title)
		YoYoImpl:with("FadeIn"):duration(600):playOn(_ENV['layout'..当前ui])
		_ENV['layout'..当前ui]:setVisibility(View.VISIBLE)
		
		end)
	else
		luajava.newThread(function()
			
		end):start()
		canv:setVisibility(View.GONE)
		luajava.runUiThread(function()mainLayoutParams.flags = LayoutParams.FLAG_NOT_FOCUSABLE
		window:updateViewLayout(floatWindow, mainLayoutParams)
		end)

--control:setBackground(luajava.getBitmapDrawable("/sdcard/云烛/图片/imgui"))
	--title:setVisibility(View.GONE)
	
	--chuangk:setVisibility(View.GONE)
	cebian:setVisibility(View.GONE)
	_ENV['layout'..当前ui]:setVisibility(View.GONE)
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

chazhi = {} chajv = {}
function CL.seek(name,bian,smin,smax,nows)
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
	layout_width = 'wrap_content',

	layout_height = "wrap_content",
	{
		LinearLayout,
		layout_width = 'fill_parent',

		layout_height = "fill_parent",
		layout_marginTop = "5dp",
		layout_marginBottom = "5dp",
		layout_marginLeft = "10dp",
		layout_marginRight = "10dp",
		gravity = "center_vertical",
		background = luajava.loadlayout {
			GradientDrawable,
			color = "#33161616",
			cornerRadius = 12
		},
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
			progress = tnows,
			onSeekBarChange = {
				onProgressChanged = function(SeekBar, var2, var3)
				if not var3 then
				return
				end
				local resultvar = tonumber(string.sub(var2,0,-3))-chazhi[bian]
				luajava.runUiThread(function()
					luajava.getIdValue(names):setText(name..":".. resultvar)
					end)
				_ENV[bian] = resultvar
				end
			}}
	}})

return rest
end
checkbg1 = getRes("quarkcheckoff")
checkbg2 = getRes("quarkcheckon")
switchs={}
function CL.intcheck(name,func1,func2)
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
		background=getVerticalBG({0xff00FFFF,0xddffffff,0xff00FA9A},15,8,0xff00FA9A),
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
			textColor='#000000',
			textSize = "13sp",
            layout_marginLeft="8dp",
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
if func1 == nil then func1 = function() end end
if func2 == nil then func2 = function() end end
if type(func1) == "function" then
return function()
namers = _ENV[name]
if namers ~= "开" then
vibra:vibrate(0)
luajava.runUiThread(function()
	luajava.getIdValue(nid):setBackground(checkbg2)
	luajava.getIdValue(nid.."t"):setTextColor(0xff00FFFF)
	--CL.controlWater(switchs[nid],300)
	end)
_ENV[name] = "开"
pcall(func1)
else
	vibra:vibrate(0)
luajava.runUiThread(function()
	luajava.getIdValue(nid):setBackground(checkbg1)
	luajava.getIdValue(nid.."t"):setTextColor(0xff00FA9A)
	--CL.controlWater(switchs[nid],300)
	end)
_ENV[name] = "关"
pcall(func2)
end
end
end
end
function CL.check(cklist)
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
rstt = CL.intcheck(name,func1,func2)
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
CL.controlRotation9 = function(control, time,t)
luajava.runUiThread(function()
	import "android.view.animation.Animation"
	import "android.animation.ObjectAnimator"
	xuanzhuandonghua = ObjectAnimator:ofFloat(control, "rotation", {
		time,t
	})
	xuanzhuandonghua:setRepeatCount(0)
	xuanzhuandonghua:setRepeatMode(Animation.RESTART)
	xuanzhuandonghua:setDuration(800)
	xuanzhuandonghua:start()
	end)
end

function CL.box(views)
local tid = "box"..guid()
local ttid = tid.."6"
currenttid = tid
currentttid = ttid
firadio = {
	LinearLayout,
	layout_marginBottom = "10dp",
	layout_marginTop = "10dp",
	layout_width = '190dp',
	layout_height = "wrap_content",
	orientation = "vertical",
	background = getVerticalBG({0xffffff,0xffffff},15,3,0xffffffff)
}
if type(views[1]) == "string" or type(views[1]) == "number" then
firadio[#firadio+1] = {
	LinearLayout,
	layout_height = "30dp",
	gravity = "center_vertical",
	layout_width = "fill_parent",
	onClick = function() visi(tid,ttid) end,
	background = getSelector6(),
	{
		ImageView,
		layout_marginLeft = "10dp",
		id = luajava.newId(ttid),
		background = "/sdcard/云烛/图片/sj",
		layout_width = "20dp",
		layout_height = "20dp",
--layout_marginTop = "5dp",
	},
	{
		TextView,text = views[1],
		textSize = "13sp",
		layout_marginLeft = "5dp",
		textColor = "#000000",
		gravity = "center",
	}} else
	gg.alert("CL.box第一个参数必须是string") os.exit()
end
radios = {
	LinearLayout,
	layout_marginLeft = "0dp",
	layout_marginRight = "0dp",
	orientation = "vertical",
	visibility = "gone",
	id = luajava.newId(tid),
	padding = "0dp",
	layout_width = 'fill_parent',
}
for i = 2,#views do
radios[#radios+1] = views[i]
end
firadio[#firadio+1] = radios
return luajava.loadlayout(firadio)
end
function CL.line(views)
radios = {
	LinearLayout,
	layout_marginLeft = "0dp",
	layout_marginRight = "0dp",
	orientation = "horizontal",
	visibility = "gone",
	padding = "0dp",
	layout_width = 'fill_parent',
}
for i = 1,#views do
radios[#radios+1] = views[i]
end
return luajava.loadlayout(radios)
end





function CL.edit(name)
_ENV[name] = name..guid()
if not name then name = "点击输入文字" end
rest = luajava.loadlayout({
	LinearLayout,
	layout_width = 'fill_parent',

	layout_height = "wrap_content",
	{
		LinearLayout,
		layout_width = 'fill_parent',
		layout_height = "wrap_content",
		layout_marginTop = "5dp",
		layout_marginBottom = "5dp",
		layout_marginLeft = "10dp",
		layout_marginRight = "10dp",
		gravity = "center_vertical",
		background = luajava.loadlayout {
			GradientDrawable,
			color = "#88615E66",
			cornerRadius = 12
		},
		{
			EditText,
			gravity = "center",
			hintText = name,
			textSize = "13sp",
			id = luajava.newId(_ENV[name]),
			layout_width = 'fill_parent',
			layout_marginLeft = "10dp",
			layout_marginRight = "10dp",
		}}
})

return rest
end
function CL.radio(radio)
firadio = {
	LinearLayout,
	layout_width = 'fill_parent',

	layout_height = "fill_parent",
	orientation = "vertical",
	layout_marginLeft = "10dp",
	layout_marginRight = "10dp",
}
if type(radio[1]) == "string" or type(radio[1]) == "number" then
firadio[#firadio+1] = {
	TextView,text = radio[1],layout_marginLeft = "10dp",
	layout_marginRight = "10dp",
} end
radios = {
	RadioGroup,
	layout_marginLeft = "10dp",
	layout_marginRight = "10dp",
	background = luajava.loadlayout({
		GradientDrawable,
		color = "#88615E66",
		cornerRadius = 30
	}),layout_width = 'fill_parent',
}
for i = 2,#radio do
radios[#radios+1] = {
	RadioButton,
	layout_width = 'fill_parent',
	text = radio[i][1],
	onClick = function() luajava.newThread(function() pcall(radio[i][2]) end):start() end,
}
end
firadio[#firadio+1] = radios
return luajava.loadlayout(firadio)
end


function CL.text(txt,color,size)
if not txt then txt = "未设置文字" end
if not color then color = "#161616" end
if not size then size = "18sp" end
return luajava.loadlayout(
	{
		TextView,
		text = txt,
		textSize = size,
		gravity = "center",
		textColor = color,
		layout_width = "wrap_content",
	})
end
corb = true
function CL.getedit(name)
--gg.alert(edit)
edit = tostring(luajava.getIdValue(_ENV[name]):getText())
return edit
end
function CL.setedit(name,txt)
txt = tostring(txt)
luajava.runUiThread(function()
	luajava.getIdValue(_ENV[name]):setText(txt)
	end)
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
vibra:vibrate(0)
luajava.runUiThread(function()
	luajava.getIdValue(nid.."k"):setVisibility(View.GONE)
	YoYoImpl:with("ZoomInLeft"):duration(800):playOn(switches["4s"..sname])
	luajava.getIdValue(nid.."g"):setVisibility(View.VISIBLE)
luajava.getIdValue(nid):setBackground(checkbg)
	end)
_ENV[name] = "开"

pcall(func1)
else
	vibra:vibrate(0)
luajava.runUiThread(function()
	luajava.getIdValue(nid.."g"):setVisibility(View.GONE)
	YoYoImpl:with("ZoomInRight"):duration(800):playOn(switches["3s"..sname])
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

function CL.switch(name,func1,func2,miaoshu)
if not checkbg then
	checkbg = getHorizontalBG({0xff00FFFF,0xff00FA9A},360)
checkbg0 = getVerticalBG({0xFFFF3700,0xFFFF3700},360)
checkbga = getVerticalBG({0xff545454,0xff545454},360)
switchbg1 = getVerticalBG({0xffffffff,0xffffffff},360)
switchbg2 = luajava.loadlayout {
			GradientDrawable ,
			color = "#ffffff" ,
			cornerRadius = 360
		}
end
nid = name..guid()
local func = 开关3(name,func1,func2,nid)
if not name then name = "未设置" end
switches["3s"..nid] = luajava.loadlayout {
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
switches["4s"..nid] = luajava.loadlayout {
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
	layout_height = "38dp",
	gravity = "center_vertical",
	{
		LinearLayout,
		layout_width = 'fill_parent',
		layout_height = "30dp",
		gravity = "center_vertical",
		padding = {
		"0dp","0dp","5dp","0dp"
	},
		{
			TextView,
			gravity = "top",
			text = name,
			textColor = "#161616",
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
			switches["3s"..nid],switches["4s"..nid]
		}}
})
return rest
end
function getButtonBG()
local selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, getVerticalBG({0xff00FFFF,0xff00FA9A},15))
selector:addState({
	-android.R.attr.state_pressed
}, getHorizontalBG({0xff00FFFF,0xff00FA9A},15))
return selector
end
buts={}
heir=getRes("heir")
function CL.button(txt,func,txtc)
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
			layout_marginLeft='10dp',
			layout_marginRight='10dp',
			background = getButtonBG(),
			padding="10dp",
			onClick = function() 
				CL.controlWater(buts[tid],600)
			luajava.newThread(func):start() end,
			{
				TextView,
                id = luajava.newId(tid),
				textColor = txtc,
				text = txt,
				textSize = "13sp",
				textColor = "#A5A5A5",
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
function 开关2(name,func1,func2,nid)
if func1 == nil then func1 = "" end
if func2 == nil then func2 = "" end
if type(func1) == "function" then
return function()
namers = _ENV[name]
if namers ~= "开" then
luajava.runUiThread(function()
	luajava.getIdValue(nid):setBackground(luajava.getBitmapDrawable("/sdcard/云烛/图片/check2"))
	end)
_ENV[name] = "开"
func1()
else
	luajava.runUiThread(function()
	luajava.getIdValue(nid):setBackground(luajava.getBitmapDrawable("/sdcard/云烛/图片/check1"))
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
ttview:setBackground(luajava.getBitmapDrawable("/sdcard/云烛/图片/hsj"))
else
	tview:setVisibility(View.GONE)
ttview:setBackground(luajava.getBitmapDrawable("/sdcard/云烛/图片/sj"))
end
end


--------------------------------
	
--------------------------------

--------------------------------
	
--------------------------------

--------------------------------
	
--------------------------------

stitle = "ZQ"
公告 = "\n云烛  𝙉𝙞𝙜𝙝𝙩.\n极致追求稳定.\n"
stab = {
	"公告",
	"防封",
	"功能",
	"美化",
	"音乐"
}
CL.menu("",
	{
		{--1
		CL.text("云烛  China","#00FFFF","24sp"),

				CL.button("每日语录",
function() 
Y=gg.makeRequest("https://v1.hitokoto.cn/").content
--获取云端数据
Q=string.match(Y,'hitokoto(.+)type')
--模式匹配他们中的一切字符
F=string.gsub(Q,'":"',"")
K=string.gsub(F,'","',"")
--删除多余垃圾
string.toMusic("\n\n"..""..K.."")
QD = gg.alert("今日语录:\n\n"..""..K.."")
if QD == 1 then

end
if QD == 3 then 

end
end,
function()
end),
            CL.button("选择进程",
				function()
				gg.setProcessX()
				end,
				function()
				end),
			CL.text(公告,"#00FFFF","23sp"),
		
			
			
			
		}, {--2
CL.text("云烛  China","#00FFFF","24sp"),


CL.button("配置游戏进程",
				function()
				gg.setProcessX()
				end,
				function()
				end),

		}, {--3
CL.text("云烛  China","#00FFFF","24sp"),


	
				CL.text("尽量别开危险功能","#000000","14sp"),
	CL.switch("枪械聚点『🐔址且安全💚』",
						function()
so=gg.getRangesList('libUE4.so')[1].start--据点
py=0x53f26d0
setvalue(so+py,4,505425152)
				gg.toast("开启成功")
string.toMusic("开启成功") 		
						end),
						CL.switch("枪械防抖『🐔址且安全💚』",
						function()
so=gg.getRangesList('libUE4.so')[1].start--防抖
py=0x88c0fb4
setvalue(so+py,4,8.95671814e-21)
					gg.toast("开启成功")
string.toMusic("开启成功") 		
						end),
				   CL.switch("静态广角『🐔址且安全💚』",
						function()
OP=gg.prompt({'1到3'},{[1]='1.2'},{[1]='number'})---广角
	if OP == nil or OP[1] == '' or OP[1] == '0' then gg.toast("取消")
		else
so=gg.getRangesList('libUE4.so')[1].start
py=0x32b1608
setvalue(so+py,16,OP[1])
end
					gg.toast("开启成功")
string.toMusic("开启成功") 		
						end),
				
					
						CL.switch("枪械午后『🐔址且中危🚦』",
						function()
so=gg.getRangesList('libUE4.so')[1].start--无后座
py=0x4efa340
setvalue(so+py,16,8.8411673e-21)
				gg.toast("开启成功")
string.toMusic("开启成功") 		
						end),
			
						CL.switch("跳伞加速『🐔址且高危⚠️』",
						function()
gg.toast("10秒之后关闭")
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x31AA0,0x30,0x84}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = 3, freeze = true}})
gg.sleep(10000)
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x31AA0,0x30,0x84}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = 1, freeze = true}})
gg.toast("跳伞加速关闭成功")
string.toMusic("跳伞加速关闭成功") 		
						end),
			CL.switch("加速『🐔址且高危⚠️』",
						function()
              so=gg.getRangesList('libUE4.so')[1].start--开启加速
py=0x89cf470
setvalue(so+py,4,505453825)
              gg.toast("开启成功")
string.toMusic("开启成功") 		
              end,
              function()
             
              so=gg.getRangesList('libUE4.so')[1].start--关闭加速
py=0x89cf470
setvalue(so+py,4,505453825)
              gg.toast("开启成功")
string.toMusic("开启成功") 		
              
						end),
		
		
		
		
		}, {--4
		CL.text("云烛  China","#00FFFF","24sp"),
		

CL.button("配置游戏进程",
function()
gg.setProcessX()
			end,
				function()
end),
						--美化
		

					CL.button("清除冻结列表",
					function()
					gg.CLearList()
					gg.alert('清理成功')
								end,
				function()
					end),

	CL.text("撤离之后开清除冻结","#000000","14sp"),
	
				CL.switch("全身自改",
function()
local cfg_file = "/sdcard/衣服1.txt"
local chunk = loadfile(cfg_file)
local cfg = nil
if chunk ~= nil then
 cfg = chunk()
end
if cfg == nil then
cfg = {1403119,40604012,1404207,1404160,405000,1501002009,0,true}
end
SX = gg.prompt({
"面部修改:",--1
"头发修改:",--2
"衣服修改",--3
"裤子修改:",--4
"鞋子修改:",--5
"背包修改:\n改0不显示",--6
"头盔修改:\n改0不显示",--7
},cfg,{"text","text","text","text","text","text","text"})
if SX == nil then else
gg.saveVariable(SX, cfg_file)
if SX[1] == true then SX1() end
if SX[2] == true then SX2() end
if SX[3] == true then SX3() end
if SX[4] == true then SX4() end
if SX[5] == true then SX5() end
if SX[6] == true then SX6() end
if SX[7] == true then SX7() end


local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x38}
local ttt = S_Pointer(t, tt, true) gg.setValues({{address = ttt, flags = 4, value = SX[1]}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x70}
local ttt = S_Pointer(t, tt, true) gg.setValues({{address = ttt, flags = 4, value =SX[2]}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38, 0x0, 0x2F0, 0x280, 0x388, 0x118}
local ttt = S_Pointer(t, tt, true) gg.setValues({{address = ttt, flags = 4, value =SX[3]}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x150}
local ttt = S_Pointer(t, tt, true) gg.setValues({{address = ttt, flags = 4, value = SX[4]}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x188}
local ttt = S_Pointer(t, tt, true) gg.setValues({{address = ttt, flags = 4, value = SX[5]}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1C0}
local ttt = S_Pointer(t, tt, true) gg.setValues({{address = ttt, flags = 4, value = SX[6]}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1F8}
local ttt = S_Pointer(t, tt, true) gg.setValues({{address = ttt, flags = 4, value = SX[7]}})
						gg.toast('开启成功')
						end
		end,
			
			
		function()
		
		end),			
	
	CL.switch("自选套装",
						function()
						local cfg_file = gg.EXT_FILES_DIR.."/"..gg.getFile():match("[^/]+$").."(衣服.01).lua"
						local chunk = loadfile(cfg_file)
						local cfg = nil
						if chunk ~= nil then
						cfg = chunk()
						end
						if cfg == nil then
						cfg = {
							1406970
						}
						end
						fx = gg.prompt({
							"木乃伊1400687\n深渊皇后1406140\n猴子1406327\n黄金木乃伊1405623\n蓝木乃伊1406891\n满级艳后1406475\n满级法老1406469\n满级血鸦1405870\n满级海王1405983\n满级精灵王1406311\n满级冰王1406152\n黑诡皇1406641\n白诡皇1406638\n血渊圣王1406872\n裁决冥王1406569\n至尊银龙1400779\n金克丝1406140\n明日香1406387\n祖国人1406439\n 秘渊领主1406970\n黄金风衣(面部)140779\n曙光芙琳娜1407103\n零战斗服1406386",
						},cfg, {
							"text","text"
						})
						if fx == nil then else
gg.saveVariable(fx, cfg_file)
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38, 0x0, 0x2F0, 0x280, 0x388, 0x118}
local ttt = S_Pointer(t, tt, true)gg.setValues({{address = ttt, flags = 4, value = fx[1]}})

						end
gg.toast("开启成功")
end),
CL.switch("自选背包",
						function()
						local cfg_file = gg.EXT_FILES_DIR.."/"..gg.getFile():match("[^/]+$").."(背包.01).lua"
						local chunk = loadfile(cfg_file)
						local cfg = nil
						if chunk ~= nil then
						cfg = chunk()
						end
						if cfg == nil then
						cfg = {
							1501003299
						}
						end
						fx = gg.prompt({
							"1501003009\n1501003051\n1501003261\n1501003387\n1501003220\n1501003100\n1501003062\n1501003069\n请输入你的背包代码：",
						},cfg, {
							"text","text"
						})
						if fx == nil then else
gg.saveVariable(fx, cfg_file)
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1C0}
local ttt = S_Pointer(t, tt, true)gg.setValues({{address = ttt, flags = 4, value = fx[1]}})

						end
gg.toast("开启成功")
end),
CL.switch("命中自改",
function()
gg.setConfig("冻结间隔", 0)
gg.setConfig("快速冻结", 1)
local cfg_file = gg.EXT_FILES_DIR.."/"..gg.getFile():match("[^/]+$").."(特效).lua"
							local chunk = loadfile(cfg_file)
							local cfg = nil
							if chunk ~= nil then
								cfg = chunk()
							end
							if cfg == nil then
								cfg = {1101004046,true}
							end
							wannian=gg.prompt({
"AKM华丽浮雕 1101001042 AKM怒海争锋 1101001063 AKM白虎咆哮 1101001068 AKM冰霜核心 1101001089 AKM积木龙骨 1101001103 AKM奇异之夜 1101001116 AKM金牌海盗 1101001143 AKM吉利龙王 1101001128 AKM奇幻工坊 1101001154 AKM部落之王 1101001174 AKM星海提督 1101001213 AKM俏皮兔宝 1101001231 \nM16A4血骸风暴 1101002029 M16A4极光脉冲 1101002056 M16A4缤纷利刃 1101002068 M16A4猩红血月 1101002081 M16A4古堡龙卫 1101002103 \n死噶梦幻水枪 1101003057 死噶魔法南瓜 1101003070 死噶翌日行动 1101003080 死噶诡秘之夜 1101003099 死噶魔力结晶 1101003119 死噶邪能植物 1101003146 死噶血魂魔皇 1101003167 \nM416冰霜核心 1101004046 M416愚人小丑 1101004062 M416异域游荡者 1101004078 M416萌龙咆哮 1101004086 M416野性呼唤 1101004098 M416科技核心 1101004138 M416潮鸣宫廷 1101004163 M416庇护之潮 1101004209 \nGroza幻夜音乐 1101005025 Groza绚烂之战 1101005043 Groza冥河烈焰 1101005052 \nAUG流浪马戏团 1101006033 AUG第四使徒 1101006044 QBZ极致绝杀 1101007036 QBZ瑰绮灵姬 1101007046 M762比特宝莉 1101008026 \n妹控星云力量",
							},cfg,{"text"})
							if wannian == nil then else
								gg.saveVariable(wannian, cfg_file)
								local t = {"libUE4.so:bss", "Cb"}
								local tt = {0x3AD38,0x0,0x1A0,0x0,0x6A8,0x300,0x8,0x108,0x8C}
								local ttt = S_Pointer(t, tt, true)
								gg.addListItems({{address = ttt, flags = 4, value = wannian[1], freeze = true}})
end					
end,
function()
end),
CL.switch("播报自改",
function()
	gg.setConfig("冻结间隔", 0)
gg.setConfig("快速冻结", 1)
OP=gg.prompt({'AKM华丽浮雕 1101001042 AKM怒海争锋 1101001063 AKM白虎咆哮 1101001068 AKM冰霜核心 1101001089 AKM积木龙骨 1101001103 AKM奇异之夜 1101001116 AKM金牌海盗 1101001143 AKM吉利龙王 1101001128 AKM奇幻工坊 1101001154 AKM部落之王 1101001174 AKM星海提督 1101001213 AKM俏皮兔宝 1101001231 \nM16A4血骸风暴 1101002029 M16A4极光脉冲 1101002056 M16A4缤纷利刃 1101002068 M16A4猩红血月 1101002081 M16A4古堡龙卫 1101002103 \n死噶梦幻水枪 1101003057 死噶魔法南瓜 1101003070 死噶翌日行动 1101003080 死噶诡秘之夜 1101003099 死噶魔力结晶 1101003119 死噶邪能植物 1101003146 死噶血魂魔皇 1101003167 \nM416冰霜核心 1101004046 M416愚人小丑 1101004062 M416异域游荡者 1101004078 M416萌龙咆哮 1101004086 M416野性呼唤 1101004098 M416科技核心 1101004138 M416潮鸣宫廷 1101004163 M416庇护之潮 1101004209 \nGroza幻夜音乐 1101005025 Groza绚烂之战 1101005043 Groza冥河烈焰 1101005052 \nAUG流浪马戏团 1101006033 AUG第四使徒 1101006044 QBZ极致绝杀 1101007036 QBZ瑰绮灵姬 1101007046 M762比特宝莉 1101008026 \n妹控星云力量'},{[1]='1101004046'},{[1]='number'})
	if OP == nil or OP[1] == '' or OP[1] == '0' then gg.toast("取消")
		else

								local t = {"libUE4.so:bss", "Cb"}
								local tt = {0x3AD38,0x0,0x78,0x90,0x1618}
								local ttt = S_Pointer(t, tt, true)
								gg.addListItems({{address = ttt, flags = 4, value = OP[1], freeze = true}})
								end					
end,
function()
end),



CL.switch("动作自改",
function()
	gg.setConfig("冻结间隔", 0)
gg.setConfig("快速冻结", 1)
OP=gg.prompt({'自己找找'},{[1]='122200'},{[1]='number'})
	if OP == nil or OP[1] == '' or OP[1] == '0' then gg.toast("取消")
		else

								local t = {"libUE4.so:bss", "Cb"}
local tt = {0x469C50,0x2F0,0x1A0,0x358,0x17C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = OP[1], freeze = true}})


local t = {"libUE4.so:bss", "Cb"}
local tt = {0x469C50,0x340,0x50,0x358,0x17C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = OP[1], freeze = true}})
								end					
end,
function()
end),
		CL.switch("手持自改",
						function()
						
									
local cfg_file = "/sdcard/美化配置/手持M4.txt"
local chunk = loadfile(cfg_file)
local cfg = nil
if chunk ~= nil then
 cfg = chunk()
end
if cfg == nil then
cfg = {1101004046,1010040463,1010040473,1010040462}
end
M = gg.prompt({
"枪皮修改:",
"枪托修改:",
"弹夹修改",
"倍镜修改:",
},cfg,{"text","text","text","text",})
if M == nil then else
gg.saveVariable(M, cfg_file)
if M[1] == true then M1() end
if M[2] == true then M2() end
if M[3] == true then M3() end
if M[4] == true then M4() end
end
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0,0xDD8,0x60,0x9E0,0x11C}
local ttt = S_Pointer(t, tt, true) gg.setValues({{address = ttt, flags = 4, value = M[1]}})
local tt = {0x391E0,0,0xDD8,0x60,0x9E0,0x7C}
local ttt = S_Pointer(t, tt, true) gg.setValues({{address = ttt, flags = 4, value = M[2]}})
local tt = {0x391E0,0,0xDD8,0x60,0x9E0,0x54}
local ttt = S_Pointer(t, tt, true) gg.setValues({{address = ttt, flags = 4, value = M[3]}})
local tt = {0x391E0,0,0xDD8,0x60,0x9E0,0xA4}
local ttt = S_Pointer(t, tt, true) gg.setValues({{address = ttt, flags = 4, value = M[4]}})


gg.alert("开启成功")

gg.toast("开启成功")


						end),
		
CL.switch("经典全枪",
						function()
						local cfg_file = "/sdcard/枪械配置/.txt"
	local chunk = loadfile(cfg_file)
	local cfg = nil
	if chunk ~= nil then
		cfg = chunk()
	end
	if cfg == nil then
	cfg = {
		1101001213--ak
		, 1101002029--m16
		, 1101003188--sc
		, 1101004046--m416
		, 1101005052--GROZA
		, 1101006062--AUG
		, 1101007046--QBZ
		, 1101008126--M762
		, 1101102007--ACE32
		, 1101010012--g36c
		, 10101200--蜜罐11
		, 102001001--UZI12
		, 1102002061--UMP45
		, 1102003080--Vector
		, 1102004018--汤姆逊
		, 1102005007--野牛
		, 10200600--MP5K
		, 1102105002--P90
		, 1103001179--98K
		, 1103002087--m24
		, 1103003062--awm
		, 1103004037--sks22
		, 1103005024--vss23
		, 10300600--mini14
		, 1103007010--mk1425
		, 1103008014--win94
		, 10300900--slr27
		, 10301000--QBU
		, 1103011001--莫辛纳甘
		, 1103012010--amr
		, 10301300--m417
		, 1104001027--s686
		, 1104002022--s189
		, 1104003031--s12k
		, 1104004021--dbs
		, 1105001020--m249
		, 1105002035--大盘鸡
		, 1105010008--mg3
		, 1108001057--大砍刀
		, 1108002046--撬棍
		, 1108003001--镰刀
		, 1108004356--平底锅
		, 1010040462--m4苗具
		, 1010040461--m4枪托
		, 1010040463--m4弹夹
		 }
end
qing = gg.prompt({
	"AKM美化代码:",--1
	"M16A4美化代码:",--2
	"SCAR-L美化代码:",--3
	"M416美化代码:",--4
	"GROZA美化代码:",--5
	"AUG美化代码:",--6
	"QBZ美化代码:",--7
	"M762美化代码:",--8
	"ACE32美化代码:",--9
	"G36C美化代码:",--10
	"蜜罐美化代码:",--11
	"UZI美化代码:",--12
	"UMP45美化代码:",--13
	"Vector美化代码:",--14
	"汤姆逊美化代码:",--15
	"野牛美化代码:",--16
	"MP5K美化代码:",--17
	"P90美化代码:",--18
	"98K美化代码:",--19
	"M24美化代码:",--20
	"AWM美化代码:",--21
	"SKS美化代码:",--22
	"VSS美化代码:",--23
	"Mini14美化代码:",--24
	"Mk14美化代码:",--25
	"Win94美化代码:",--26
	"SLR美化代码:",--27
	"QBU美化代码:",--28-
	"莫辛纳甘美化代码:",--29
	"AMR美化代码:",--30
	"M417美化代码:",--31
	"S686美化代码:",--32
	"S1897代码:",--33
	"S12K美化代码:",--34
	"DBS美化代码:",--35
	"M249美化代码:",--36
	"大盘鸡美化代码:",--37
	"MG3美化代码:",--38
	"大砍刀美化代码:",--39
	"撬棍美化代码:",--40
	"镰刀美化代码:",--41
	"平底锅美化代码:",--42
	"M4瞄具美化代码:",--43
	"M4枪托美化代码:",--44
	"M4弹夹美化代码:",--45
},cfg,{
	"text",--1
	"text",--2
	"text",--3
	"text",--4
	"text",--5
	"text",--6
	"text",--7
	"text",--8
	"text",--9
	"text",--10
	"text",--11
	"text",--12
	"text",--13
	"text",--14
	"text",--15
	"text",--16
	"text",--17
	"text",--18
	"text",--19
	"text",--20
	"text",--21
	"text",--22
	"text",--23
	"text",--24
	"text",--25
	"text",--26
	"text",--27
	"text",--28
	"text",--29
	"text",--30
	"text",--31
	"text",--32
	"text",--33
	"text",--34
	"text",--35
	"text",--36
	"text",--37
	"text",--38
	"text",--39
	"text",--40
	"text",--41
	"text",--42
	"text",--43
	"text",--44
	"text"--45
})
    if qing == nil then else
	gg.saveVariable(qing, cfg_file)
	if qing[1] == true then qing1() end
	if qing[2] == true then qing2() end
	if qing[3] == true then qing3() end
	if qing[4] == true then qing4() end
	if qing[5] == true then qing5() end
	if qing[6] == true then qing6() end
	if qing[7] == true then qing7() end
	if qing[8] == true then qing8() end
	if qing[9] == true then qing9() end
	if qing[10] == true then qing10() end
	if qing[11] == true then qing11() end
	if qing[12] == true then qing12() end
	if qing[13] == true then qing13() end
	if qing[14] == true then qing14() end
	if qing[15] == true then qing15() end
	if qing[16] == true then qing16() end
	if qing[17] == true then qing17() end
	if qing[18] == true then qing18() end
	if qing[19] == true then qing19() end
	if qing[20] == true then qing20() end
	if qing[21] == true then qing21() end
	if qing[22] == true then qing22() end
	if qing[23] == true then qing23() end
	if qing[24] == true then qing24() end
	if qing[25] == true then qing25() end
	if qing[26] == true then qing26() end
	if qing[27] == true then qing27() end
	if qing[28] == true then qing28() end
	if qing[29] == true then qing29() end
	if qing[30] == true then qing30() end
	if qing[31] == true then qing31() end
	if qing[32] == true then qing32() end
	if qing[33] == true then qing33() end
	if qing[34] == true then qing34() end
	if qing[35] == true then qing35() end
	if qing[36] == true then qing36() end
	if qing[37] == true then qing37() end
	if qing[38] == true then qing38() end
	if qing[39] == true then qing39() end
	if qing[40] == true then qing40() end
	if qing[41] == true then qing41() end
	if qing[42] == true then qing42() end
	if qing[43] == true then qing43() end
	if qing[44] == true then qing44() end
	if qing[45] == true then qing45() end



a=0x0
while(a <=0xAF0)
do
a=a+0x10
mk=gg.getRangesList('libUE4.so')[1].start
add = RUI(RUI(RUI(RUI(RUI(mk + 0xC656D90) + 0x558) + a) + 0x30) + 0x38)
adpd = RUI(RUI(RUI(RUI(RUI(RUI(mk + 0xC656D90) + 0x558) + a) + 0x30) + 0x38) +0x8) +0x18
if readD(adpd) == 1000 then
--5x3000
--2.9 101001锁链0xDD900+0x558+0x10+0x30+0x30+0x0(0x18就直接到101,001,100)


break
add=add
end
end

nmsl=0x4148--0x3FF8初始 0x5000 0x4148 0x7500
while(nmsl <=0x866E218)--10850最大
do
nmsl=nmsl+0x18
addr=RUI(add+nmsl)




		if readD(addr+0x58) == 101001 then--AKM
			setvalue(addr+0x18,4,qing[1])
			gg.toast("修改目标:AKM")
		end
		if readD(addr+0x58) == 101002 then--M16A4
			setvalue(addr+0x18,4,qing[2])
			gg.toast("修改目标:M16A4")
		end
		if readD(addr+0x58) == 101003 then--SCAR
			setvalue(addr+0x18,4,qing[3])
			gg.toast("修改目标:SCAR")
		end
		if readD(addr+0x58) == 101004 then--M416
			setvalue(addr+0x18,4,qing[4])
			gg.toast("修改目标:M416")
		end
		if readD(addr+0x58) == 101005 then --GROZA
			setvalue(addr+0x18,4,qing[5])
			gg.toast("修改目标:GROZA")
		end
		if readD(addr+0x58) == 101006 then --AUG
			setvalue(addr+0x18,4,qing[6])
			gg.toast("修改目标:AUG")
		end
		if readD(addr+0x58) == 101007 then--QBZ
			setvalue(addr+0x18,4,qing[7])
			gg.toast("修改目标:QBZ")
		end
		if readD(addr+0x58) == 101008 then--M762
			setvalue(addr+0x18,4,qing[8])
			gg.toast("修改目标:M762")
		end
		if readD(addr+0x58) == 101102 then--MK47
			setvalue(addr+0x18,4,qing[9])
			gg.toast("修改目标:ACE32")
		end
		if readD(addr+0x58) == 101010 then--G36C
			setvalue(addr+0x18,4,qing[10])
			gg.toast("修改目标:G36C")
		end
		if readD(addr+0x58) == 101012 then--蜜罐
			setvalue(addr+0x18,4,qing[11])
			gg.toast("修改目标:蜜罐")
		end
		if readD(addr+0x58) == 102001 then--UZI
			setvalue(addr+0x18,4,qing[12])
			gg.toast("修改目标:UZI")
		end
		if readD(addr+0x58) == 102002 then--UMP45
			setvalue(addr+0x18,4,qing[13])
			gg.toast("修改目标:UMP45")
		end
		if readD(addr+0x58) == 102003 then--Vector
			setvalue(addr+0x18,4,qing[14])
			gg.toast("修改目标:Vector")
		end
		if readD(addr+0x58) == 102004 then--汤姆逊
			setvalue(addr+0x18,4,qing[15])
			gg.toast("修改目标:汤姆逊")
		end
		if readD(addr+0x58) == 102005 then--野牛
			setvalue(addr+0x18,4,qing[16])
			gg.toast("修改目标:野牛")
		end
		if readD(addr+0x58) == 102006 then--MP5K
			setvalue(addr+0x18,4,qing[17])
			gg.toast("修改目标:MP5K")
		end
		if readD(addr+0x58) == 102007 then--P90
			setvalue(addr+0x18,4,qing[18])
			gg.toast("修改目标:P90")
		end
		if readD(addr+0x58) == 103001 then--98K
			setvalue(addr+0x18,4,qing[19])
			gg.toast("修改目标:98K")
		end
		if readD(addr+0x58) == 103002 then--M24
			setvalue(addr+0x18,4,qing[20])
			gg.toast("修改目标:M24")
		end
		if readD(addr+0x58) == 103003 then--awm
			setvalue(addr+0x18,4,qing[21])
			gg.toast("修改目标:AWM")
		end
		if readD(addr+0x58) == 103004 then--SKS
			setvalue(addr+0x18,4,qing[22])
			gg.toast("修改目标:SKS")
		end
		if readD(addr+0x58) == 103005 then--VSS
			setvalue(addr+0x18,4,qing[23])
			gg.toast("修改目标:VSS")
		end
		if readD(addr+0x58) == 103006 then--Mini14
			setvalue(addr+0x18,4,qing[24])
			gg.toast("修改目标:MINI14")
		end
		if readD(addr+0x58) == 103007 then--MK14
			setvalue(addr+0x18,4,qing[25])
			gg.toast("修改目标:MK14")
		end
		if readD(addr+0x58) == 103008 then--Win94
			setvalue(addr+0x18,4,qing[26])
			gg.toast("修改目标:Win94")
		end
		if readD(addr+0x58) == 103009 then--SLR
			setvalue(addr+0x18,4,qing[27])
			gg.toast("修改目标:SLR")
		end
		if readD(addr+0x58) == 103010 then--QBU
			setvalue(addr+0x18,4,qing[28])
			gg.toast("修改目标:QBU")
		end
		if readD(addr+0x58) == 103011 then--莫辛纳甘
			setvalue(addr+0x18,4,qing[29])
			gg.toast("修改目标:莫辛纳甘")
		end
		if readD(addr+0x58) == 103012 then--AMR
			setvalue(addr+0x18,4,qing[30])
			gg.toast("修改目标:AMR")
		end
		if readD(addr+0x58) == 103013 then--M417
			setvalue(addr+0x18,4,qing[31])
			gg.toast("修改目标:M417")
		end
		if readD(addr+0x58) == 104001 then--S686
			setvalue(addr+0x18,4,qing[32])
			gg.toast("修改目标:S686")
		end
		if readD(addr+0x58) == 104002 then--S1897
			setvalue(addr+0x18,4,qing[33])
			gg.toast("修改目标:S1897")
		end
		if readD(addr+0x58) == 104003 then--S12K
			setvalue(addr+0x18,4,qing[34])
			gg.toast("修改目标:S12K")
		end
		if readD(addr+0x58) == 104004 then--DBS
			setvalue(addr+0x18,4,qing[35])
			gg.toast("修改目标:DBS")
		end
		if readD(addr+0x58) == 105001 then--M249
			setvalue(addr+0x18,4,qing[36])
			gg.toast("修改目标:M249")
		end
		if readD(addr+0x58) == 105002 then--大盘鸡
			setvalue(addr+0x18,4,qing[37])
			gg.toast("修改目标:大盘鸡")
		end
		if readD(addr+0x58) == 105010 then--MG3
			setvalue(addr+0x18,4,qing[38])
			gg.toast("修改目标:MG3")
		end
		if readD(addr+0x58) == 108001 then--大砍刀
			setvalue(addr+0x18,4,qing[39])
			gg.toast("修改目标:砍刀")
		end
		if readD(addr+0x58) == 108002 then--撬棍
			setvalue(addr+0x18,4,qing[40])
			gg.toast("修改目标:撬棍")
		end
		if readD(addr+0x58) == 108003 then--镰刀
			setvalue(addr+0x18,4,qing[41])
			gg.toast("修改目标:镰刀")
		end
		if readD(addr+0x58) == 108004 then--平底锅
			setvalue(addr+0x18,4,qing[42])
			gg.toast("修改目标:平底锅")
		end
		if readD(addr+0x58) == 203008 then--m4瞄具
			setvalue(addr+0x18,4,qing[43])
			gg.toast("修改目标M416鸡苗:")
		end
		if readD(addr+0x58) == 205005 then--m4张托
			setvalue(addr+0x18,4,qing[44])
			gg.toast("修改目标:M416枪托")
		end
		if readD(addr+0x58) == 291004 then --m4弹夹
			setvalue(addr+0x18,4,qing[45])
			gg.toast("修改目标:M416弹夹")
			
			gg.toast("遍历完毕")
			break
		end
	end
end
		gg.toast("开启成功")
		end),
	CL.box({"配件区域",
CL.switch("冰霜倍镜[基址]",
function()
					--倍镜
					local cfg_file = gg.EXT_FILES_DIR.."/"..gg.getFile():match("[^/]+$")..'(bs倍镜.).lua'
					local chunk = loadfile(cfg_file)
					local cfg = nil
					if chunk ~= nil then
					cfg = chunk()
					end
					if cfg == nil then--1010040466四
					cfg = {
						1010040470,1010040469,1010040468,1010040466,1030011731, 1010040467, 1010042024, true
					}
					end
					xing = gg.prompt({
						"红点:",
						"全息",
						"二倍",
						"四倍",
						"八倍",
						"三倍",
						"六倍",
					},cfg, {
						"text","text","text","text","text","text","text",
					})
					if xing == nil then else
						gg.saveVariable(xing, cfg_file)
					if xing[1] == true then SX1() end
					if xing[2] == true then SX2() end
					if xing[3] == true then SX3() end
					if xing[4] == true then SX4() end
					if xing[5] == true then SX5() end
					if xing[6] == true then SX6() end
					if xing[7] == true then SX7() end



					a = 0x0
					while (a <= 0xAB0)
						do
					a = a+0x10
			mk=gg.getRangesList('libUE4.so')[1].start
add = RUI(RUI(RUI(RUI(RUI(mk + 0xC656D90) + 0x558) + a) + 0x30) + 0x38)
adpd = RUI(RUI(RUI(RUI(RUI(RUI(mk + 0xC656D90) + 0x558) + a) + 0x30) + 0x38) +0x8) +0x18
if readD(adpd) == 1000 then
			
					addListltems(add,4,0,false)
					break
					add = add
					end
					end

					b = 0x8
	
					while (b <= 0x866E218)
						do
					b = b+0x18
					addr = RUI(add+b)
					if readD(addr+0x58) == 203001 then --AKM
					setvalue(addr+0x18,4,xing[1])
					end
					if readD(addr+0x58) == 203002 then --AKM
					setvalue(addr+0x18,4,xing[2])
					end
					if readD(addr+0x58) == 203003 then --AKM
					setvalue(addr+0x18,4,xing[3])
					end
					if readD(addr+0x58) == 203004 then --AKM
					setvalue(addr+0x18,4,xing[4])
					end
					if readD(addr+0x58) == 203005 then --AKM
					setvalue(addr+0x18,4,xing[5])
					end
					if readD(addr+0x58) == 203014 then --AKM
					setvalue(addr+0x18,4,xing[6])
					end
					if readD(addr+0x58) == 203015 then --AKM
					setvalue(addr+0x18,4,xing[7])



					break
					end
					end
					end
end,
function()
end),

CL.switch("血龙魇倍镜",
						function()
							
						--血龙魇倍镜			
local cfg_file = gg.EXT_FILES_DIR.."/"..gg.getFile():match("[^/]+$")..'(.镜.).lua'
local chunk = loadfile(cfg_file)
local cfg = nil
if chunk ~= nil then
 cfg = chunk()
end
if cfg == nil then
cfg = {
1030120032,
1030120033,
1030120034,
1030120035,
1030120036,
1030120037,
1030120038,
1030120039,
true}
end
qing = gg.prompt({


"8倍瞄准镜",
"6倍瞄准镜",
"4倍瞄准镜",
"3倍瞄准镜",
"2倍瞄准镜",
"全息瞄准镜",
"红点瞄准镜",
"侧面瞄准镜",
},cfg,{


"text",
"text",
"text",
"text",
"text",
"text",
"text",
"text",
})
if qing == nil then else
gg.saveVariable(qing, cfg_file)
if qing[1] == true then qing1() end
if qing[2] == true then qing2() end
if qing[3] == true then qing3() end
if qing[4] == true then qing4() end
if qing[5] == true then qing5() end
if qing[6] == true then qing6() end
if qing[7] == true then qing7() end
if qing[8] == true then qing8() end
a=0x0
while(a <=0xAF0)
do
a=a+0x10
		mk=gg.getRangesList('libUE4.so')[1].start
add = RUI(RUI(RUI(RUI(RUI(mk + 0xC656D90) + 0x558) + a) + 0x30) + 0x38)
adpd = RUI(RUI(RUI(RUI(RUI(RUI(mk + 0xC656D90) + 0x558) + a) + 0x30) + 0x38) +0x8) +0x18
if readD(adpd) == 1000 then
--5x3000
--2.9 101001锁链0xDD900+0x558+0x10+0x30+0x30+0x0(0x18就直接到101,001,100)


break
add=add
end
end

nmsl=0x4148--3FF8初始
while(nmsl <=0x866E218)--10850最大
do
nmsl=nmsl+0x18
addr=RUI(add+nmsl)

if readD(addr+0x58) == 203005 then --AKM
setvalue(addr+0x18,4,qing[1])

end
if readD(addr+0x58) == 203015 then --AKM
setvalue(addr+0x18,4,qing[2])

end
if readD(addr+0x58) == 203004 then --AKM
setvalue(addr+0x18,4,qing[3])

end
if readD(addr+0x58) == 203014 then --AKM
setvalue(addr+0x18,4,qing[4])

end
if readD(addr+0x58) == 203003 then --AKM
setvalue(addr+0x18,4,qing[5])

end
if readD(addr+0x58) == 203002 then --AKM
setvalue(addr+0x18,4,qing[6])

end
if readD(addr+0x58) == 203001 then --AKM
setvalue(addr+0x18,4,qing[7])

end

if readD(addr+0x58) == 203018 then 
setvalue(addr+0x18,4,qing[8])
			gg.toast("倍镜开启成功")
			break
end
end
end
						gg.toast("开启成功")
						end),
					
									CL.switch("龙吟倍镜",
function()
--倍镜
					local cfg_file = gg.EXT_FILES_DIR.."/"..gg.getFile():match("[^/]+$")..'(龙吟国度.).lua'
					local chunk = loadfile(cfg_file)
					local cfg = nil
					if chunk ~= nil then
					cfg = chunk()
					end
					if cfg == nil then--1010040466四
					cfg = {
						1030070218,1030070218,1030070216,1030070214,1030070212, 1030070215, 1030070213, true
					}
					end
					xing = gg.prompt({
						"红点:",
						"全息",
						"二倍",
						"四倍",
						"八倍",
						"三倍",
						"六倍",
					},cfg, {
						"text","text","text","text","text","text","text",
					})
					if xing == nil then else
						gg.saveVariable(xing, cfg_file)
					if xing[1] == true then SX1() end
					if xing[2] == true then SX2() end
					if xing[3] == true then SX3() end
					if xing[4] == true then SX4() end
					if xing[5] == true then SX5() end
					if xing[6] == true then SX6() end
					if xing[7] == true then SX7() end



					a = 0x0
					while (a <= 0xAB0)
						do
					a = a+0x10
			mk=gg.getRangesList('libUE4.so')[1].start
add = RUI(RUI(RUI(RUI(RUI(mk + 0xC656D90) + 0x558) + a) + 0x30) + 0x38)
adpd = RUI(RUI(RUI(RUI(RUI(RUI(mk + 0xC656D90) + 0x558) + a) + 0x30) + 0x38) +0x8) +0x18
if readD(adpd) == 1000 then
			
					addListltems(add,4,0,false)
					break
					add = add
					end
					end

					b = 0x8
					while (b <= 0x866E218)
						do
					b = b+0x18
					addr = RUI(add+b)
					if readD(addr+0x58) == 203001 then --AKM
					setvalue(addr+0x18,4,xing[1])
					end
					if readD(addr+0x58) == 203002 then --AKM
					setvalue(addr+0x18,4,xing[2])
					end
					if readD(addr+0x58) == 203003 then --AKM
					setvalue(addr+0x18,4,xing[3])
					end
					if readD(addr+0x58) == 203004 then --AKM
					setvalue(addr+0x18,4,xing[4])
					end
					if readD(addr+0x58) == 203005 then --AKM
					setvalue(addr+0x18,4,xing[5])
					end
					if readD(addr+0x58) == 203014 then --AKM
					setvalue(addr+0x18,4,xing[6])
					end
					if readD(addr+0x58) == 203015 then --AKM
					setvalue(addr+0x18,4,xing[7])



					break
					end
					end
					end
end,
function()
end),	
CL.switch("庇护之潮倍镜",
						function()
							--庇护之潮倍镜
local cfg_file = gg.EXT_FILES_DIR.."/"..gg.getFile():match("[^/]+$")..'(情P9倍镜.).lua'
local chunk = loadfile(cfg_file)
local cfg = nil
if chunk ~= nil then
 cfg = chunk()
end
if cfg == nil then
cfg = {
1030011731,
1010042024,
1010042025,
1010042026,
1010042027,
1010042028,
1010042029,
1010042055,
true}
end
qing = gg.prompt({


"8倍瞄准镜",
"6倍瞄准镜",
"4倍瞄准镜",
"3倍瞄准镜",
"2倍瞄准镜",
"全息瞄准镜",
"红点瞄准镜",
"侧面瞄准镜",
},cfg,{


"text",
"text",
"text",
"text",
"text",
"text",
"text",
"text",
})
if qing == nil then else
gg.saveVariable(qing, cfg_file)
if qing[1] == true then qing1() end
if qing[2] == true then qing2() end
if qing[3] == true then qing3() end
if qing[4] == true then qing4() end
if qing[5] == true then qing5() end
if qing[6] == true then qing6() end
if qing[7] == true then qing7() end
if qing[8] == true then qing8() end
a=0x0
while(a <=0xAF0)
do
a=a+0x10
		mk=gg.getRangesList('libUE4.so')[1].start
add = RUI(RUI(RUI(RUI(RUI(mk + 0xC656D90) + 0x558) + a) + 0x30) + 0x38)
adpd = RUI(RUI(RUI(RUI(RUI(RUI(mk + 0xC656D90) + 0x558) + a) + 0x30) + 0x38) +0x8) +0x18
if readD(adpd) == 1000 then
--5x3000
--2.9 101001锁链0xDD900+0x558+0x10+0x30+0x30+0x0(0x18就直接到101,001,100)


break
add=add
end
end

nmsl=0x4148--3FF8初始
while(nmsl <=0x866E218)--10850最大
do
nmsl=nmsl+0x18
addr=RUI(add+nmsl)

if readD(addr+0x58) == 203005 then --AKM
setvalue(addr+0x18,4,qing[1])

end
if readD(addr+0x58) == 203015 then --AKM
setvalue(addr+0x18,4,qing[2])

end
if readD(addr+0x58) == 203004 then --AKM
setvalue(addr+0x18,4,qing[3])

end
if readD(addr+0x58) == 203014 then --AKM
setvalue(addr+0x18,4,qing[4])

end
if readD(addr+0x58) == 203003 then --AKM
setvalue(addr+0x18,4,qing[5])

end
if readD(addr+0x58) == 203002 then --AKM
setvalue(addr+0x18,4,qing[6])

end
if readD(addr+0x58) == 203001 then --AKM
setvalue(addr+0x18,4,qing[7])

end

if readD(addr+0x58) == 203018 then 
setvalue(addr+0x18,4,qing[8])
			gg.toast("倍镜开启成功")
			break
end
end
end

						gg.toast("开启成功")
						end),

						CL.switch("手持冰霜配件",
						function()
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0xDD0,0x60,0x9B8,0xA4
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1010040462
						}})
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0xDD0,0x60,0x9B8,0x7C
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1010040463
						}})
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0xDD0,0x60,0x9B8,0x54
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1010040473
						}})
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0xDD0,0x60,0x9B8,0x04
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1010040475
						}})
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0xDD0,0x60,0x9B8,0x2C
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1010040479
						}})
						gg.toast('开启成功')

						end),
						
					CL.switch("手持庇护配件",
						function()
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0xDD0,0x60,0x9B8,0xA4
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1010042082
						}})
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0xDD0,0x60,0x9B8,0x7C
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1010042093
						}})
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0xDD0,0x60,0x9B8,0x54
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1010042071
						}})
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0xDD0,0x60,0x9B8,0x04
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1010042039
						}})
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0xDD0,0x60,0x9B8,0x2C
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1010042046
						}})

						gg.toast("开启成功")
						end),
			
	}),
CL.text("","14sp"),
	     CL.box({"头盔自选",
	

CL.switch("刺头3级",
		function()
		local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1F8}--头盔
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1502003014, freeze = true}})

		
		gg.toast("开启成功")

end),
		
		CL.switch("刺头2级",
		function()
		
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1F8}--头盔
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1502002014, freeze = true}})
		
		gg.toast("开启成功")

end),
			 CL.switch("胖达",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1F8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1502002027}})----头盔链条
string.toMusic('美化成功')
end,		
function()
end),

CL.switch("冰雪晶核",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1F8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1502003023}})----头盔链条
gg.toast("美化成功")
end,		
function()
end),
CL.switch("御灵师",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1F8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1502003069}})----头盔链条
gg.toast("美化成功")
end,		
function()
end),
}),


CL.text("","14sp"),
			
			CL.box({
				"背包自选",
			
		CL.switch("隐藏背包",
						function()
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0x340,0x30,0x388,0x1C0
						}---背包
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 0
						}})

						end),
						
						

CL.switch("极乐宝库背包",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1C0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1501003546, freeze = true}})----背包
string.toMusic('美化成功')
end,		
function()
end),
CL.switch("小黄鸭背包",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1C0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1501003243, freeze = true}})----背包
string.toMusic('美化成功')
end,		
function()
end),
CL.switch("亲吻背包",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1C0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1501003299, freeze = true}})----背包
string.toMusic('美化成功')
end,		
function()
end),
					CL.switch("蔚蓝风暴3级",
						function()
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0x340,0x30,0x388,0x1C0
						}---背包
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1501003009
						}})

						end),
						
							CL.switch("蔚蓝风暴2级",
						function()
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0x340,0x30,0x388,0x1C0
						}---背包
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1501002009
						}})

						end),
					CL.switch("愚人小丑",
						function()
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0x340,0x30,0x388,0x1C0
						}---背包
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1501003051
						}})
						end),
					CL.switch("布朗熊",
						function()
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0x340,0x30,0x388,0x1C0
						}---背包
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1501003261
						}})

						end),
		
					CL.switch("血鸦背包",
						function()
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0x340,0x30,0x388,0x1C0
						}---背包
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1501003220
						}})
						end),
					CL.switch("火焰领主",
						function()
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0x340,0x30,0x388,0x1C0
						}---背包
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1501003195
						}})

						end),
				
					CL.switch("航海企鹅",
						function()
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0x340,0x30,0x388,0x1C0
						}---背包
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1501003145
						}})

						end),
					CL.switch("地狱红莲",
						function()
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0x340,0x30,0x388,0x1C0
						}---背包
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1501003100
						}})
						end),
					CL.switch("浣熊崽崽",
						function()
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0x340,0x30,0x388,0x1C0
						}---背包
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1501003098
						}})

						end),
					CL.switch("痞子鲨",
						function()
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0x340,0x30,0x388,0x1C0
						}---背包
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1501003069
						}})
						end),
					CL.switch("基多拉",
						function()
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0x340,0x30,0x388,0x1C0
						}---背包
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1501003062
						}})

						end),
					CL.switch("哥斯拉",
						function()
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0x340,0x30,0x388,0x1C0
						}---背包
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1501003061
						}})
						end),

				
			}),
CL.text("","14sp"),
		
				CL.box({
					"套装自选",
					CL.switch("黄金风衣",
						function()
					local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x38}--面部
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1400779, freeze = true}})
						end),
						
						CL.switch("黄木乃伊",
		function()
		
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38, 0x0, 0x2F0, 0x280, 0x388, 0x118}--衣服
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1405623, freeze = true}})
		
		gg.toast("开启成功")

end),					
CL.switch("血渊圣王",
						function()
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38, 0x0, 0x2F0, 0x280, 0x388, 0x118
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1406872
						}})
						end),
					CL.switch("蓝木乃伊",
						function()
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38, 0x0, 0x2F0, 0x280, 0x388, 0x118
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1406891
						}})
						end),
					CL.switch("白木乃伊",
						function()
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38, 0x0, 0x2F0, 0x280, 0x388, 0x118
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1400687
						}})

						end),
					CL.switch("齐天大圣",
						function()
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38, 0x0, 0x2F0, 0x280, 0x388, 0x118
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1406327
						}})
						end),

					CL.switch("果冻衣服",
						function()
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38, 0x0, 0x2F0, 0x280, 0x388, 0x118
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1406970
						}})
						end),
					CL.switch("曙光芙琳娜",
						function()
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38, 0x0, 0x2F0, 0x280, 0x388, 0x118
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1407103
						}})
						end),
					CL.switch("祖国人",
						function()
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38, 0x0, 0x2F0, 0x280, 0x388, 0x118
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1406439
						}})
						end),
					CL.switch("白诡皇",
						function()
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38, 0x0, 0x2F0, 0x280, 0x388, 0x118
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1406638
						}})
						end),
					CL.switch("黑诡皇",
						function()
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38, 0x0, 0x2F0, 0x280, 0x388, 0x118
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1406641
						}})
						end),
					CL.switch("法老圣装",
						function()
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38, 0x0, 0x2F0, 0x280, 0x388, 0x118
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1406469
						}})
						end),
					CL.switch("满级海王",
						function()
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38, 0x0, 0x2F0, 0x280, 0x388, 0x118
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1405983
						}})
						end),
					CL.switch("金克丝",
						function()
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38, 0x0, 0x2F0, 0x280, 0x388, 0x118
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1406140
						}})
						end),
					CL.switch("布朗熊",
						function()
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38, 0x0, 0x2F0, 0x280, 0x388, 0x118
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1405933
						}})
						end),
					CL.switch("零战斗服",
						function()
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38, 0x0, 0x2F0, 0x280, 0x388, 0x118
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1406386
						}})
						end),
					CL.switch("胖达",
						function()
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38, 0x0, 0x2F0, 0x280, 0x388, 0x118
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1405039
						}})
						end),
						CL.switch("明日香",
						function()
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38, 0x0, 0x2F0, 0x280, 0x388, 0x118
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1406387
						}})
						end),
											


		
														
		CL.switch("艳后",
		function()
		
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38, 0x0, 0x2F0, 0x280, 0x388, 0x118}--衣服
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1406475, freeze = true}})
		
		gg.toast("开启成功")

end),													
																
	
		
		
		CL.switch("真嗣",
		function()
		
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38, 0x0, 0x2F0, 0x280, 0x388, 0x118}--衣服
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1406385, freeze = true}})
		
		gg.toast("开启成功")

end),
		
		CL.switch("真理",
		function()
		
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38, 0x0, 0x2F0, 0x280, 0x388, 0x118}--衣服
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1406388, freeze = true}})
		
		gg.toast("开启成功")

end),
		
		CL.switch("薰",
		function()
		
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38, 0x0, 0x2F0, 0x280, 0x388, 0x118}--衣服
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1406389, freeze = true}})
		
		gg.toast("开启成功")

end),
		
		
		
		CL.switch("冰衣",
		function()
		
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38, 0x0, 0x2F0, 0x280, 0x388, 0x118}--衣服
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1400782, freeze = true}})
		
		gg.toast("开启成功")

end),
		
	
CL.switch("身法套装",
		function()
		
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x38}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1403119, freeze = true}})----面部链条

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x70}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 40605012, freeze = true}})----头发链条

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38, 0x0, 0x2F0, 0x280, 0x388, 0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1404133, freeze = true}})----衣服链条

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x150}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1404160, freeze = true}})----裤子链条

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1C0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1501002009, freeze = true}})----背包链条

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1F8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1502003027, freeze = true}})----头盔链
		
		gg.toast("开启成功")

end),

CL.switch("狂沙浪漫",
		function()
		
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x38}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1403119, freeze = true}})----面部链条

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x70}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 40605012, freeze = true}})----头发链条

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38, 0x0, 0x2F0, 0x280, 0x388, 0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1404207, freeze = true}})----衣服链条

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x150}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1404160, freeze = true}})----裤子链条

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1C0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1501002009, freeze = true}})----背包链条

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1F8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1502002027, freeze = true}})----头盔链条
		
		gg.toast("开启成功")

end),


CL.switch("自用套装",
		function()
		
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x38}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1400168, freeze = true}})---面部链条

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x70}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1400168, freeze = true}})----头发链条

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38, 0x0, 0x2F0, 0x280, 0x388, 0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1405040, freeze = true}})---衣服链条

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x150}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1404160, freeze = true}})--裤子链条

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1C0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1501003051, freeze = true}})---背包链条

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1F8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1502002027, freeze = true}})---头盔链条
		
		gg.toast("开启成功")

end),
				}),
			

	CL.text("","14sp"),
				CL.box({"手持自选",
				
				
					CL.switch("冰霜核心",
						function()
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0xDD0,0x60,0x9B8,0x11C
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1101004046
						}})
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0xDD0,0x60,0x9B8,0xA4
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1010040462
						}})
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0xDD0,0x60,0x9B8,0x7C
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1010040463
						}})
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0xDD0,0x60,0x9B8,0x54
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1010040473
						}})
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0xDD0,0x60,0x9B8,0x04
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1010040475
						}})
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0xDD0,0x60,0x9B8,0x2C
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1010040479
						}})
						gg.toast('开启成功')
						end),
					CL.switch("庇护之潮",
						function()
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0xDD0,0x60,0x9B8,0x11C
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1101004209
						}})
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0xDD0,0x60,0x9B8,0xA4
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1010042082
						}})
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0xDD0,0x60,0x9B8,0x7C
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1010042093
						}})
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0xDD0,0x60,0x9B8,0x54
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1010042071
						}})
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0xDD0,0x60,0x9B8,0x04
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1010042039
						}})
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0xDD0,0x60,0x9B8,0x2C
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1010042046
						}})

						gg.toast("开启成功")
						end),

CL.switch("武魂宗师",
						function()
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0xDD0,0x60,0x9B8,0x11C
						}
						local ttt = S_Pointer(t, tt, true)
						gg.addListItems({{
							address = ttt, flags = 4, value = 1101004200, freeze = true
						}})
							local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0xDD0,0x60,0x9B8,0x7C
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1010042093
						}})
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0xDD0,0x60,0x9B8,0x54
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1010042071
						}})
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0xDD0,0x60,0x9B8,0x04
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1010042039
						}})
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0xDD0,0x60,0x9B8,0x2C
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1010042046
						}})
						  gg.toast('开启成功')
						end),
				

					CL.switch("星云力量",
						function()
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0xDD0,0x60,0x9B8,0x11C
						}
						local ttt = S_Pointer(t, tt, true)
						gg.addListItems({{
							address = ttt, flags = 4, value = 1103007020, freeze = true
						}}) gg.toast('开启成功')
						end),
					CL.switch("冥河烈焰",
						function()local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0xDD0,0x60,0x9B8,0x11C
						}
						local ttt = S_Pointer(t, tt, true)
						gg.addListItems({{
							address = ttt, flags = 4, value = 1101005052, freeze = true
						}}) 
							local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0xDD0,0x60,0x9B8,0x7C
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1010042093
						}})
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0xDD0,0x60,0x9B8,0x54
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1010042071
						}})
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0xDD0,0x60,0x9B8,0x04
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1010042039
						}})
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0xDD0,0x60,0x9B8,0x2C
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1010042046
						}})
						gg.toast('开启成功')
						end),
					CL.switch("精密杀戮",
						function()
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0xDD0,0x60,0x9B8,0x11C
						}
						local ttt = S_Pointer(t, tt, true)
						gg.addListItems({{
							address = ttt, flags = 4, value = 1101008061, freeze = true
						}}) 
							local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0xDD0,0x60,0x9B8,0x7C
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1010042093
						}})
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0xDD0,0x60,0x9B8,0x54
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1010042071
						}})
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0xDD0,0x60,0x9B8,0x04
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1010042039
						}})
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0xDD0,0x60,0x9B8,0x2C
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1010042046
						}})
						gg.toast('开启成功')
						end),
				
					CL.switch("血魂魔皇",
						function()
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0xDD0,0x60,0x9B8,0x11C
						}
						local ttt = S_Pointer(t, tt, true)
						gg.addListItems({{
							address = ttt, flags = 4, value = 1101003167, freeze = true
						}}) 
							local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0xDD0,0x60,0x9B8,0x7C
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1010042093
						}})
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0xDD0,0x60,0x9B8,0x54
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1010042071
						}})
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0xDD0,0x60,0x9B8,0x04
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1010042039
						}})
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0xDD0,0x60,0x9B8,0x2C
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1010042046
						}})
						gg.toast('开启成功')
						end),
				
					CL.switch("星海提督",
						function()
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0xDD0,0x60,0x9B8,0x11C
						}
						local ttt = S_Pointer(t, tt, true)
						gg.addListItems({{
							address = ttt, flags = 4, value = 1101001213, freeze = true
						}}) 
						
					local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0xDD0,0x60,0x9B8,0x7C
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1010042093
						}})
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0xDD0,0x60,0x9B8,0x54
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1010042071
						}})
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0xDD0,0x60,0x9B8,0x04
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1010042039
						}})
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0xDD0,0x60,0x9B8,0x2C
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1010042046
						}})
						gg.toast('开启成功')
						end),

					CL.switch("龙族魔女",
						function()
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0xDD0,0x60,0x9B8,0x11C
						}
						local ttt = S_Pointer(t, tt, true)
						gg.addListItems({{
							address = ttt, flags = 4, value = 1101008126, freeze = true
						}}) 
						
				local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0xDD0,0x60,0x9B8,0x7C
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1010042093
						}})
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0xDD0,0x60,0x9B8,0x54
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1010042071
						}})
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0xDD0,0x60,0x9B8,0x04
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1010042039
						}})
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0xDD0,0x60,0x9B8,0x2C
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1010042046
						}})
						gg.toast('开启成功')
						end),

CL.switch("爆炸星光",
						function()
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0xDD0,0x60,0x9B8,0x11C
						}
						local ttt = S_Pointer(t, tt, true)
						gg.addListItems({{
							address = ttt, flags = 4, value = 1101003188, freeze = true
						}}) 
						
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0xDD0,0x60,0x9B8,0x7C
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1010042093
						}})
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0xDD0,0x60,0x9B8,0x54
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1010042071
						}})
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0xDD0,0x60,0x9B8,0x04
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1010042039
						}})
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0xDD0,0x60,0x9B8,0x2C
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1010042046
						}})
						gg.toast('开启成功')
						end),
CL.switch("终极对撞",
						function()
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0xDD0,0x60,0x9B8,0x11C
						}
						local ttt = S_Pointer(t, tt, true)
						gg.addListItems({{
							address = ttt, flags = 4, value = 1101102007, freeze = true
						}}) 
						
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0xDD0,0x60,0x9B8,0x7C
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1010042093
						}})
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0xDD0,0x60,0x9B8,0x54
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1010042071
						}})
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0xDD0,0x60,0x9B8,0x04
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1010042039
						}})
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0xDD0,0x60,0x9B8,0x2C
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1010042046
						}})
						gg.toast('开启成功')
						end),
						CL.switch("龙吟国度",
						function()
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0xDD0,0x60,0x9B8,0x11C
						}
						local ttt = S_Pointer(t, tt, true)
						gg.addListItems({{
							address = ttt, flags = 4, value = 1103007028, freeze = true
						}}) 
						
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0xDD0,0x60,0x9B8,0x7C
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1010042093
						}})
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0xDD0,0x60,0x9B8,0x54
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1010042071
						}})
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0xDD0,0x60,0x9B8,0x04
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1010042039
						}})
						local t = {
							"libUE4.so:bss", "Cb"
						}
						local tt = {
							0x3AD38,0x0,0xDD0,0x60,0x9B8,0x2C
						}
						local ttt = S_Pointer(t, tt, true)
						gg.setValues({{
							address = ttt, flags = 4, value = 1010042046
						}})
						gg.toast('开启成功')
						end),
				
			}),
			CL.text("","14sp"),
CL.box({
        "播报美化",
		


CL.switch(
			 
		'庇护之潮',
		function()
		
		local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x90,0x1618}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101004209, freeze = true}})
gg.toast("美化成功")
		end,		
function()
end),
CL.switch("武魂宗师",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x90,0x1618}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101004199, freeze = true}})
string.toMusic('开启成功')---语音
end,
function()
end),
			CL.switch(
			 
		'ump5',
		function()
		
		local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x90,0x1618}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1102002136, freeze = true}})
gg.toast("美化成功")
		end,		
function()
end),

CL.switch(
'愚人小丑',
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x90,0x1618}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101004062, freeze = true}})
gg.toast("美化成功")
		end,		
function()
end),

CL.switch(
'冰霜核心',
function()

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x90,0x1618}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101004046, freeze = true}})
gg.toast("美化成功")
		end,		
function()
end),
CL.switch(
'金龙',
function()

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x90,0x1618}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1103007028, freeze = true}})
gg.toast("美化成功")
		end,		
function()
end),
		CL.switch(
		
		'决胜之日',
function()

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x90,0x1618}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101001242, freeze = true}})
gg.toast("美化成功")
	end,		
function()
end),
CL.switch(
		
		'死干播放',
function()

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x90,0x1618}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101003167, freeze = true}})
gg.toast("美化成功")
	end,		
function()
end),
CL.switch(
		
		'm762播放',
function()

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x90,0x1618}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101008126, freeze = true}})
gg.toast("美化成功")
	end,		
function()
end),


		        
			
		
		}),
		CL.text("","14sp"),
        CL.box({
        "圣装播报",
	
		
CL.switch(
		"圣装播报",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x90,0x161C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1405909, freeze = true}})
gg.toast("美化成功")
		end,		
function()
end),

CL.switch(
'大果都',
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x90,0x161C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1406970, freeze = true}})
gg.alert("美化成功")

		end,		
function()
end),

CL.switch(
		"海王播报",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x90,0x161C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1405983, freeze = true}})
gg.toast("美化成功")
		end,		
function()
end),

	CL.switch(
		"血鸦播报",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x90,0x161C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1405870, freeze = true}})
gg.toast("美化成功")
		end,		
function()
end),	
	CL.switch(
		"法老播报",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x90,0x161C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1406469, freeze = true}})
gg.toast("美化成功")
		end,		
function()
end),	
		
		}),
CL.text("","14sp"),
CL.box({
        "大厅美化",
		
			  CL.switch("冰霜M4",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x14}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101004046, freeze = true}})--famas

gg.alert("美化成功") 
end,		
function()
end),
 CL.switch("ak",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x14-0x4C8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101001213, freeze = true}})--famas


gg.alert("美化成功") 
end,		
function()
end),
	
CL.switch("木乃伊大厅",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3B7ED0,0x8,0x300,0xA80,0x5F0,0x34}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1400687, freeze = true}})

gg.alert("美化成功") 
end,		
function()
			end),
				
			}),

		}, {--5
			
			CL.button("搜索音乐",
				function()
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
				end,
				function()
				
				end),
			CL.button("关闭音乐",
				function()
					gg.playMusic("stop")
		gg.playMusic("stop")
		gg.playMusic("stop") 
				end,
				function()
					gg.playMusic("stop")
		gg.playMusic("stop")
		gg.playMusic("stop") 
				end),
		
		}
	})
		
------------------------------
	
------------------------------
shimmer = Shimmer();
luajava.runUiThread(function()
  shimmer:setDuration(2000)
  shimmer:setStartDelay(100)
  
  for i=1,#stab do
  shimmer:start(_ENV['jmt'..i])
  end
  
  	shimmer:start(titlev)

end)
bloc = luajava.getBlock()
bloc('join')
luajava.setFloatingWindowHide(false)