gg.setVisible(false)
luajava.setFloatingWindowHide(true)
Sheyan = {}
YoYoImpl = luajava.getYoYoImpl()
vibra = context:getSystemService(Context.VIBRATOR_SERVICE)
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
function getRes(x)
return 获取图片("/sdcard/长安/图片/"..x)
end
function getTimeStamp(t)
local str = os.date("%Y年%m月%d日%H:%M:%S",t)
return str
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
function panduan(rec) fille,err = io.open(rec) if fille == nil then return false else return true end end
function 获取图片(txt)
ntxt = string.sub(string.gsub(txt,"/","-"),-10,-1)
if string.find(tostring(txt),"http") ~= nil then
if panduan("/sdcard/长安/图片/"..ntxt) == false then
download(txt,"/sdcard/长安/图片/"..ntxt)
end
txt = "/sdcard/长安/图片/"..ntxt
end
return luajava.getBitmapDrawable(txt)
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
function panduan(rec) fille,err = io.open(rec) if fille == nil then return false else return true end end
function pdcf(lujing) rec = "/sdcard/长安/配置文件/"..lujing fille,err = io.open(rec) if fille == nil then return false else return true end end
sleep = gg.sleep
--if gg.isHTTPdump()==true and panduan("/sdcard/长安/配置文件/vpn.txt") == false then gg.alert("\n抓包？") os.exit() end
function read(fileName) f = assert(io.open(fileName, 'r')) content = f:read("*all") f:close() return content end
function wtcf(lujing,neirong)
write("/sdcard/长安/配置文件/"..lujing,neirong)
end
function rdcf(lujing)
return read("/sdcard/长安/配置文件/"..lujing)
end
开 = "开" 关 = "关"
function checkimg(tmp)
if panduan("/sdcard/长安/图片/"..tmp) ~= true then
gg.toast("正在下载资源"..tmp.."\n请耐心等待")
download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..tmp,"/sdcard/长安/图片/"..tmp)
else
	if file.length("/sdcard/长安/图片/"..tmp) <= 1 then
gg.toast("正在下载资源"..tmp.."\n请耐心等待")
download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..tmp,"/sdcard/长安/图片/"..tmp)
end
end
end
ckimg = {
	"quarkcheckon","quarkcheckoff","quarkx",
	"inktitle","moji","sword",
	"star1","star2",
	"long.ttf",
	"mo_circle","mo_but","taichion"
}
for i = 1,#ckimg do
jindu = i
checkimg(ckimg[i])
end



empty = luajava.loadlayout {
	GradientDrawable,
	color = "#00dddddd",
	cornerRadius = 30
}
empty2 = luajava.getBitmap("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/jot8z1zy")


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
layoutParams.flags = LayoutParams.FLAG_NOT_TOUCH_MODAL -- 焦点设置Finish
layoutParams.gravity = Gravity.TOP|Gravity.LEFT -- 重力设置
layoutParams.width = LayoutParams.WRAP_CONTENT -- 布局宽度
layoutParams.height = LayoutParams.WRAP_CONTENT -- 布局高度

return layoutParams
end

function particle()
local webView = luajava.webView(function(webView)
	webView:loadData([[
	<!DOCTYPE html>
<html>
<img src="https://out.zxglife.top/view.php/dc232cf4152df06d99a4d0c1d0c7d627.gif" alt="李白" style="max-height: 300px; max-width: 240px;">
</html>]], 'text/html', 'UTF-8')
	webView:setBackgroundColor(0x0)
	webView:setVerticalScrollBarEnabled(false)
		webView:setHorizontalScrollBarEnabled(false)
		webView:setScrollContainer(false)
end)
return webView
end

mainLayoutParams = getLayoutParams()
function Sheyan.menu(stitle,sview)
cebian = {
	LinearLayout,
	layout_height = "wrap_content",
	layout_width = "match_parent",
	gravity = "left",
	layout_marginBottom = "5dp",
	padding = "3dp",
	orientation = "vertical",
	onTouch = hanshu,
	onClick = function() end,
	background = luajava.loadlayout {
						GradientDrawable,
						color = "#00ffffff",
						cornerRadius = 30
					},
}
for i = 1,#stab do
_ENV["jm"..i.."bg"] = getSelector()
_ENV["jm"..i] = luajava.loadlayout({
	LinearLayout,
	gravity = "center",
	layout_height = "30dp",
	layout_width = "74dp",
	background = _ENV["jm"..i.."bg"],
	onTouch = hanshu,
	onClick = function() 切换(i) end,
	{
		TextView,
		id = "jmt"..i,
		layout_marginLeft = "0dp",
		textSize = "14sp",
		textColor = "#bbbbbb",
		text = stab[i].."",
	}
})

_ENV["jmt"..i]:setTypeface(typeface)

cebian[#cebian+1] = _ENV["jm"..i]

tmp = {
	LinearLayout,
	layout_width = "240dp",
	orientation = "vertical",
	padding = {
		"15dp","0dp","5dp","0dp",
	},
	
}
tmp2 = {
	LinearLayout,
	layout_height = "240dp",
	layout_width = "fill_parent",
	gravity = "center_horizontal",
	padding = "10dp",
	orientation = "vertical",
}
for j = 1, #sview[i] do
tmp2[#tmp2+1] = sview[i][j]
end
_ENV["layout"..i] = luajava.loadlayout {
	LinearLayout,
	layout_height = "wrap_content",
	layout_width = "240dp",
	visibility = "gone",
	{
		LinearLayout,
		layout_height = "wrap_content",
		layout_width = "240dp",
		gravity = "center",
		orientation = "vertical",
		tmp,
		{
			ScrollView,
			layout_height = "wrap_content",
			layout_weight = 1,
			layout_width = "240dp",
			tmp2
		}
	}}



end

topbar = luajava.loadlayout({
	FrameLayout,
	layout_height = "30dp",
	layout_width = "240dp",
	gravity = "center",
	onClick = function() end,
	onTouch = hanshu,
	background = 获取图片("/sdcard/长安/图片/inktitle"),
	{
		TextView,
		layout_width = "240dp",
		gravity = "center",
		layout_height = "30dp",
		textColor = "#ffffff",
		textSize = "15dp",
		text = stitle,
	},
	{
		ImageView,
		layout_gravity = "right",
		layout_marginRight = "20dp",
		layout_marginTop = "3dp",
		background = 获取图片("/sdcard/长安/图片/quarkx"),
		onClick = 隐藏,
		onTouch = hanshu,
		layout_height = "25dp",
		layout_width = "25dp",
	}
})

mainbg = {
	LinearLayout,
	orientation = "vertical",
	id = "mainbg",
--padding = "8dp",

	onTouch = hanshu,
	layout_height = "wrap_content",
	layout_width = "240dp",
	topbar,

}
for i = 1,#stab do
mainbg[#mainbg+1] = _ENV["layout"..i]
end
mainbg = luajava.loadlayout(mainbg)
mo_circle = luajava.loadlayout {
	FrameLayout,
	onTouch = hanshu,
	onClick = function()
		Sheyan.controlRotation2(taiji,1000)
		
	end,
	layout_height = "64dp",
	layout_width = "64dp",
	layout_marginTop = "40dp",
	orientation = "vertical",
	padding = {
		"0dp","0dp","0dp","0dp",
	},
	background=getRes("mo_circle"),
}
taiji = luajava.loadlayout {
	FrameLayout,
	onTouch = hanshu,
	onClick = function()
		Sheyan.controlRotation2(taiji,1000)
		
		
	end,
	layout_height = "34dp",
	layout_width = "34dp",
	layout_marginTop = "40dp",
	orientation = "vertical",
	padding = {
		"0dp","0dp","0dp","0dp",
	},
	background=getRes("libai_"),
}
cebian[#cebian+1] = {
							FrameLayout,
							id = "tjt",
							layout_marginTop = "40dp",
							layout_marginLeft="-5dp",
							layout_height = "wrap_content",
							layout_width = "84dp",
							gravity = "center",
							{LinearLayout,
								layout_gravity="center",
								layout_marginTop="0dp",
								mo_circle},
							{LinearLayout,
								layout_gravity="center",
								taiji}
						}


zidong = luajava.newThread(function()
while true do
if zdbf then logvid = luajava.getIdView("video") logvid.start(logvid) end
gg.sleep(500)
end
end)

zdbf=true
zidong:start()
floatWindow = luajava.loadlayout(
	{
		FrameLayout,
		layout_height = "wrap_content",
		layout_width = "wrap_content",
		padding = "0dp",
		{
			ImageView,
			onTouch = hanshu,
			id = "control2",
			visibility = "gone",
			onClick = 隐藏,
			gravity = "center",
			layout_height = "60dp",
			layout_width = "60dp",
			src = 获取图片(xfcpic)
		},
		{
			FrameLayout,
			id = "chuangk",
			elevation = "30dp",
			background = getShape9(),
			layout_height = "300dp",
			layout_width = "240dp",
			{LinearLayout,
id="webv_",
layout_height="300dp",
layout_width="240dp",
layout_marginLeft="75dp",
gravity="center",
},
			{LinearLayout,
			layout_width="80dp",
			layout_height="fill_parent",
			--layout_weight=1,
			background = getVerticalBG({0xffffffff,0xaaffffff,0xaaffffff,0x88161616,0xff161616},25,0.1,0xff232323),
			layout_gravity="left|center_vertical",
			},
			{LinearLayout,
			layout_marginLeft="75dp",
			layout_width="240dp",
			layout_height="match_parent",
			id="canv",
			logvid
			},
			{
				LinearLayout,
				layout_height = "wrap_content",
				cebian,
				mainbg
			}
		}
	})
luajava.runUiThread(function()
	YoYoImpl:with("RotateOut"):duration(300):playOn(taiji)
	end)
stitle2=particle()
local function invoke()
mainLayoutParams.x = device.width/4
mainLayoutParams.y = device.height/2
webv_:addView(stitle2)
window:addView(floatWindow,mainLayoutParams)
end
luajava.post(invoke)
--print(os.clock()-tlt)
luajava.runUiThread(function()
	YoYoImpl:with("RotateIn"):duration(3000):playOn(taiji)
	end)
setOnExitListener(function()
	bloc("end")
	luajava.setFloatingWindowHide(false)
	end)
切换(1)
显示=1
luajava.newThread(function()
	while true do
		if 显示==1 then
			Sheyan.controlRotation2(taiji,2000)
			Sheyan.controlRotation1(mo_circle,2000)
		end
			gg.sleep(2000)
	end
	end):start()
bloc = luajava.getBlock()
bloc("join")
local function invoke()
return window:removeView(floatWindow)
end
luajava.post(invoke)
luajava.setFloatingWindowHide(false)

end
slcta = 获取图片("/sdcard/长安/图片/moji")
slctb = luajava.loadlayout {
	GradientDrawable,
	color = "#00ffffff",
	cornerRadius = 30
}
function getSelector()
selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, slctb) -- 点击时候的背景
selector:addState({
	-android.R.attr.state_pressed
}, slctb) -- 没点击的背景
return selector
end
Sheyan.controlRotation2 = function(control, time)
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
Sheyan.controlRotation1 = function(control, time)
luajava.runUiThread(function()
	import "android.view.animation.Animation"
	import "android.animation.ObjectAnimator"
	xuanzhuandonghua = ObjectAnimator:ofFloat(control, "rotation", {
		0, -360
	})
	xuanzhuandonghua:setRepeatCount(0)
	xuanzhuandonghua:setRepeatMode(Animation.RESTART)
	xuanzhuandonghua:setDuration(time)
	xuanzhuandonghua:start()
	end)
end
Sheyan.controlRotation3 = function(control, to1,to2)
luajava.runUiThread(function()
	import "android.view.animation.Animation"
	import "android.animation.ObjectAnimator"
	xuanzhuandonghua = ObjectAnimator:ofFloat(control, "rotation", {
		to1, to2
	})
	xuanzhuandonghua:setRepeatCount(0)
	xuanzhuandonghua:setRepeatMode(Animation.RESTART)
	xuanzhuandonghua:setDuration(3)
	xuanzhuandonghua:start()
	end)
end
Sheyan.controlBig = function(control,time)
luajava.runUiThread(function()
	import "android.animation.ObjectAnimator"
	ObjectAnimator():ofFloat(control,"scaleX", {
		0, 0.4, 0.7, 1
	}):setDuration(time):start()
	ObjectAnimator():ofFloat(control,"scaleY", {
		0, 0.4, 0.7, 1
	}):setDuration(time):start()
	end) end
Sheyan.controlFlip = function(control,time)
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
Sheyan.controlWater = function(control,time)
luajava.runUiThread(function()
	import "android.animation.ObjectAnimator"
	ObjectAnimator():ofFloat(control,"scaleX", {
		1, 0.8, 0.9, 1
	}):setDuration(time):start()
	ObjectAnimator():ofFloat(control,"scaleY", {
		1,0.8,0.9,1
	}):setDuration(time):start()
	end) end
Sheyan.controlSmall = function(control,time)
luajava.runUiThread(function()
	import "android.animation.ObjectAnimator"
	ObjectAnimator():ofFloat(control,"scaleX", {
		1, 0.7, 0.4, 0
	}):setDuration(time):start()
	ObjectAnimator():ofFloat(control,"scaleY", {
		1, 0.7, 0.4, 0
	}):setDuration(time):start()
	end) end
YoYoImpl = luajava.getYoYoImpl()
function 隐藏()
luajava.runUiThread (function ()
	if tonumber (tostring (chuangk: getVisibility ())) == 8.0 then
	显示 = 1
	chuangk : setVisibility (View.VISIBLE)
	control2 : setVisibility (View.GONE)
	YoYoImpl:with("RotateIn"):duration(1000):playOn(taiji)
	YoYoImpl:with("FadeIn"):duration(300):playOn(floatWindow)
	mainLayoutParams.flags = LayoutParams.FLAG_NOT_TOUCH_MODAL
	window : updateViewLayout (floatWindow , mainLayoutParams)
	else
		显示 = 0
	mainLayoutParams.flags = LayoutParams.FLAG_NOT_FOCUSABLE
	window : updateViewLayout (floatWindow , mainLayoutParams)
	chuangk : setVisibility (View.GONE)
	control2 : setVisibility (View.VISIBLE)
	Sheyan.controlWater (floatWindow , 300)
	end
	end
)
end
isx = false
function 切换(x)
if 当前ui ~= x then
--luajava.newThread(function()
luajava.runUiThread(function ()
	当前ui = x
	for i = 1,#stab do
	if i ~= x then
	_ENV["layout"..i]:setVisibility(View.GONE)
	_ENV["jm"..i]:setBackground(_ENV["jm"..i.."bg"])
	_ENV["jmt"..i]:setTextColor(0xff545454)
--_ENV["jmt"..i]:setText(stab[i].."")
	end
	end


	_ENV["layout"..当前ui]:setVisibility(View.VISIBLE)
	YoYoImpl:with("FadeIn"):duration(500):playOn(_ENV["layout"..当前ui])
	Sheyan.controlBig(_ENV["jm"..当前ui],100)
	_ENV["jm"..当前ui]:setBackground(slcta)
	_ENV["jmt"..当前ui]:setTextColor(0xffffffff)
--_ENV["jmt"..当前ui]:setText(stab[当前ui].."")
	end)
--end):start()
end
end
function adView(tmp,x)
local function invoke()
_ENV[tmp]:addView(x)
end
luajava.post(invoke)
end

function Sheyan.line()
return luajava.loadlayout({
	LinearLayout,
	layout_width = "fill_parent",
	layout_height = "2dp",
	background = pe0,
})
end
function getShape9()
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(30)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({
	0xaaffffff,0xffffffff
})
jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
jianbians:setStroke(8,0x33100000)--边框宽度和颜色
return jianbians
end
function initbg()
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(10)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({
--0x00444444,0x00ffffff
	0xff191A1D,0xff191A1D
})
jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
jianbians:setStroke(0,0xff000000)--边框宽度和颜色
return jianbians
end
function getShape8()
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(10)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({
	0xff000000,0xddffffff,
})
jianbians:setOrientation(GradientDrawable.Orientation.BL_TR)
return jianbians
end
pe0 = getShape8()
function getShape(tmp0,tmp1,tmp2,tmp3)
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(tmp0)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors(tmp1)
jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
jianbians:setStroke(0,tmp3)--边框宽度和颜色
return jianbians
end
function getShape2(tmp0,tmp1,tmp2,tmp3)
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(tmp0)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors(tmp1)
jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
jianbians:setStroke(0,tmp3)--边框宽度和颜色
return jianbians
end
libai_but=getRes("libai_but")
checkbg = getVerticalBG({0x55ffffff,0x55ffffff},95,5,0xff232323)
checkbga = getShape(
	45,
	{
		0xff35BE45,0xff35BE45
	},
	4,0x0135BE45)
checkbg1 = getVerticalBG({0xffffffff,0xffffffff},95,9,0xff161616)
checkbg2 = getRes("taichion")
function 开关3(name,func1,func2,nid)
local sname = nid
name = name..guid()
_ENV[name] = "关"
if func1 == nil then func1 = "" end
if func2 == nil then func2 = "" end
if type(func1) == "function" then
return function()
namers = _ENV[name]
if namers ~= "开" then
vibra:vibrate(4)
luajava.runUiThread(function()
	luajava.getIdValue(nid.."k"):setVisibility(View.GONE)
	luajava.getIdValue(nid.."g"):setVisibility(View.VISIBLE)
--luajava.getIdValue(nid):setBackground(checkbga)
	end)
_ENV[name] = "开"


pcall(func1)
else
	vibra:vibrate(4)
luajava.runUiThread(function()
	luajava.getIdValue(nid.."g"):setVisibility(View.GONE)
	luajava.getIdValue(nid.."k"):setVisibility(View.VISIBLE)
--luajava.getIdValue(nid):setBackground(checkbg)
	end)
_ENV[name] = "关"
pcall(func2)
end
end
end
end

chazhi = {} chajv = {}
function Sheyan.seek (name , bian , smin , smax , nows)
_ENV [bian] = nows
smin = tonumber (smin) smax = tonumber (smax)
chajv [bian] = smax - smin
chazhi [bian] = 1 - smin
if smin == nil then
smin = 1 smax = 10
end
truesmin = 1
truesmax = truesmin + chajv [bian]
if not nows then
nows = smin tnows = (smin - nows)
else
	tnows = (nows - smin) + 1
end
if _ENV [bian] == nil then
_ENV [bian] = nows
end
if not name then
name = "未设置"
end
local names = name..guid ()
rest = luajava.loadlayout ( {
	LinearLayout ,
	layout_width = 'fill_parent' ,
	gravity = "center" ,
	layout_height = "wrap_content" ,
	{
		LinearLayout ,
		layout_width = 'fill_parent' ,

		layout_height = "fill_parent" ,
		layout_marginTop = "5dp" ,
		layout_marginBottom = "5dp" ,
		layout_marginLeft = "0dp" ,
		layout_marginRight = "0dp" ,
		gravity = "center_vertical" ,
		background = luajava.loadlayout {
			GradientDrawable ,
			color = "#ff191A1D" ,
			cornerRadius = 8
		} ,
		{
			TextView ,
			gravity = "top" ,
			text = name..":"..nows ,
			id = luajava.newId (names) ,
			layout_width = '70dp' ,
			layout_marginLeft = "5dp" ,
			layout_marginRight = "0dp" ,
		} ,
		{
			SeekBar ,
			layout_width = '140dp' ,
			min = truesmin ,
			max = truesmax ,
			progress = tnows ,
			onSeekBarChange = {
				onProgressChanged = function (SeekBar , var2 , var3)
				if not var3 then
				return
				end
				local resultvar = tonumber (string.sub (var2 , 0 , -3)) - chazhi [bian]
				luajava.runUiThread (function ()
					luajava.getIdValue (names) : setText (name..":"..resultvar)
					end

				)
				_ENV [bian] = resultvar
				end

			}
		}
	}
})

return rest
end
function Sheyan.edit (name , hint)
if not hint then
local hint = ""
end
_ENV [name] = name..guid ()
if not name then
name = "点击输入文字"
end
rest = luajava.loadlayout ( {
	LinearLayout ,
	layout_width = 'fill_parent' ,
	{
		LinearLayout ,
		layout_width = 'fill_parent' ,
		layout_height = "30dp" ,
		layout_marginTop = "5dp" ,
		layout_marginBottom = "5dp" ,
		layout_marginLeft = "0dp" ,
		layout_marginRight = "0dp" ,
		gravity = "center_vertical" ,
		background = luajava.loadlayout {
			GradientDrawable ,
			color = "#ff191A1D" ,
			cornerRadius = 12
		} ,
		{
			EditText ,
			gravity = "top" ,
			hint = hint ,
			textSize = "15sp",
			layout_height = "45dp" ,
			layout_marginBottom = "-2dp",
			id = luajava.newId (_ENV [name]) ,
			layout_width = 'fill' ,
			layout_marginLeft = "10dp" ,
			layout_marginRight = "10dp" ,
		}
	}
})

return rest
end

function Sheyan.getedit (name)
edit = tostring (luajava.getIdValue (_ENV [name]) : getText ())
return edit
end

function Sheyan.setedit (name , txt)
txt = tostring (txt)
luajava.runUiThread (function ()
	luajava.getIdValue (_ENV [name]) : setText (txt)
	end

)
end
function Sheyan.check (cklist)
rest = {
	LinearLayout ,
	layout_width = 'match_parent' ,
	layout_height = "wrap_content" ,
	layout_marginTop = "10dp" ,
	gravity = "top" ,
	orientation = "vertical" ,

}
if type (cklist [1]) == "string" then
rest [# rest + 1] = {
	TextView ,
	gravity = "left" ,
	text = cklist [1] ,
	textSize = "16sp" ,
	textColor = "#000000" ,
	layout_width = 'wrap_content' ,
	layout_height = 'wrap_content' ,
	layout_marginLeft = "4dp" ,
	layout_marginRight = "5dp" ,
	layout_marginTop = "0dp" ,
	layout_marginBottom = "0dp" ,
}
end

for i = 2 , # cklist do
local name = cklist [i] [1]
local func1 = cklist [i] [2]
local func2 = cklist [i] [3]
local nid = cklist [i] [4]
if type (func1) == "table" then
os.exit ()
end
if not name then
name = "未设置"
end
nid = name..guid ()
local func = 开关4 (nid , func1 , func2 , nid)
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
	Sheyan.controlWater (_ENV [tid] , 200)
	luajava.newThread (function ()
		func ()
		end

	) : start ()
	end

	,
	{
		ImageView ,
		id = luajava.newId (nid) ,
		layout_width = '30dp' ,
		layout_height = "30dp" ,
		layout_marginLeft = "10dp" ,
		layout_marginRight = "10dp" ,
		background = "/sdcard/长安/图片/quarkcheckoff" ,
	} , {
		TextView ,
		gravity = "top" ,
		text = name ,
		textColor = "#000000" ,
		layout_width = 'wrap_content' ,
		layout_height = 'wrap_content' ,
		layout_marginLeft = "4dp" ,
		layout_marginRight = "5dp" ,
	}
})
rest [# rest + 1] = _ENV [tid]
end
return luajava.loadlayout (rest)
end
function 开关4(name , func1 , func2 , nid)
_ENV [name] = "关"
if func1 == nil then
func1 = ""
end
if func2 == nil then
func2 = ""
end
if type (func1) == "function" then
return function ()
vibra:vibrate(4)
namers = _ENV [name]
if namers ~= "开" then
luajava.runUiThread (function ()
	luajava.getIdValue (nid) : setBackground (luajava.getBitmapDrawable ("/sdcard/长安/图片/quarkcheckon"))
	end

)
_ENV [name] = "开"
pcall (func1)
else
	luajava.runUiThread (function ()
	luajava.getIdValue (nid) : setBackground (luajava.getBitmapDrawable ("/sdcard/长安/图片/quarkcheckoff"))
	end

)
_ENV [name] = "关"
pcall (func2)
end

end

end
end
function Sheyan.button (txt , func)
if not txt then
txt = "未设置"
end
local tid = guid ()..guid ()
_ENV [tid] = luajava.loadlayout (
	{
		LinearLayout ,
		layout_width = 'fill_parent' ,
		layout_hight = "fill_parent" , {
			LinearLayout ,
			layout_width = "fill_parent" ,
			gravity = "center_horizontal" ,
			layout_marginTop = "5dp" ,
			layout_marginBottom = "5dp" ,
			background = initbg(),
			onClick = function ()
			Sheyan.controlWater (_ENV [tid] , 200)
			luajava.newThread (function ()
				vibra:vibrate(4)
				pcall (func)
				end

			) : start ()
			end

			,
			{
				TextView ,
				text = txt ,
				padding = "2dp",
				textColor = "#ffffff",
				textSize = "17sp" ,
				layout_width = "wrap_content" ,
			} ,
		}
	})
return _ENV [tid]
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
Sheyan.controlRotation3(boxpic[tid],0,-90)
else
	tview : setVisibility (View.GONE)
Sheyan.controlWater (_ENV [tid.."6"] , 200)
Sheyan.controlRotation3(boxpic[tid],-90,0)
end
end
boxes = {} boxpic = {}
function Sheyan.box (views)
local tid = "box"..guid ()
boxpic[tid] = luajava.loadlayout {
	ImageView ,
	background = "/sdcard/长安/图片/sword" ,
	layout_width = "20dp" ,
	layout_height = "30dp" , 
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
	layout_height = "30dp" ,
	gravity = "center_vertical" ,
	layout_marginTop = "2dp" ,
	layout_marginBottom = "4dp" ,
	onClick = function ()
	visi (tid , ttid)
	end
	,
	background = luajava.loadlayout {
		GradientDrawable ,
		color = "#ff191A1D" ,
		cornerRadius = 8
	} ,
	{
		LinearLayout ,
		layout_marginLeft = "10dp" ,
		layout_width = "30dp" ,
		layout_height = "30dp" ,
		gravity = "center",
		boxpic[tid],
	} ,
	{
		TextView , text = views [1] ,
		textSize = "16sp" ,
		layout_marginLeft = "15dp" ,
		layout_width = "100dp" ,
		textColor = "#ffffff" ,
		gravity = "left" ,
	}
} else
	gg.alert ("Sheyan.box第一个参数必须是string") os.exit ()
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

function launch(pkg)
隐藏()
gg.setProcess(pkg)
gg.sleep(500)
if tostring(gg.getTargetPackage()) == pkg then
gg.toast("进程已选择:"..pkg)
return 0
end
gg.toast("正在启动游戏...")
print(gg.isPackageInstalled(pkg))
app.start(pkg)
jci = 0
--gg.sleep(5000)
while true do
gg.setProcess(pkg)
gg.sleep(400)
if tostring(gg.getTargetPackage()) == pkg then
gg.alert("启动成功")
break
else
	jci = jci+1
if jci == 14 then
gg.alert("自动获取进程失败\n请手动选择游戏进程")
gg.setProcessX()
break
end
end
gg.sleep(100)
end
end
switches = {}
function Sheyan.switch(name,func1,func2,yans)
nid = name..guid()
if not yans then yans = "#000000" end

local func = 开关3(name,func1,func2,nid)
if not name then name = "未设置" end
switches["1s"..nid] = luajava.loadlayout {
	FrameLayout,
	layout_width = '60dp',
	layout_marginRight = "10dp",
	layout_marginLeft = "-10dp",
	layout_height = '24dp',
	gravity = "center_vertical",
	padding = {
		"8dp","0dp","8dp","0dp"
	},
	{
		LinearLayout,
		layout_gravity = "left|center_vertical",
		id = luajava.newId(nid.."k"),
		background = checkbg1,
		onClick = function() luajava.newThread(function() func() end):start() end,
		layout_width = '16dp',
		layout_height = '16dp',
		elevation = "10dp",
	},
}
switches["2s"..nid] = luajava.loadlayout {
	FrameLayout,
	onClick = function() luajava.newThread(function() func() end):start() end,
	layout_width = '60dp',
	layout_marginRight = "10dp",
	layout_marginLeft = "-10dp",
	layout_height = '24dp',
	gravity = "center_vertical",
	padding = {
		"8dp","0dp","8dp","0dp"
	}
	, {
		LinearLayout,
		visibility = "gone",
		layout_gravity = "right|center_vertical",
		id = luajava.newId(nid.."g"),
		background = checkbg2,
		onClick = function() luajava.newThread(function() func() end):start() end,
		layout_width = '18dp',
		layout_height = '18dp',

		elevation = "10dp",
	}
}
rest = luajava.loadlayout({
	LinearLayout,
	layout_width = 'fill_parent',
	layout_height = "30dp",
	gravity = "center_vertical",
	{
		LinearLayout,
		layout_width = 'fill_parent',
		layout_height = "30dp",
		gravity = "center_vertical",
		{
			TextView,
			gravity = "top",
			text = name,
			textColor = yans,
			textSize = "14sp",
			layout_weight = 1,
			layout_width = 'match_parent',
			layout_marginLeft = "10dp",
			layout_marginRight = "20dp",
		},
		{
			FrameLayout,
			background = libai_but,
			elevation = "10dp",
			onClick = function() luajava.newThread(function() func() end):start() end,
			layout_width = '70dp',
			layout_height = '34dp',
			padding="5dp",
			{LinearLayout,
			layout_width = '60dp',
			layout_height = '24dp',
			background=checkbg,
			},
			gravity = "center",
			switches["1s"..nid],switches["2s"..nid]
		}}
})
return rest
end
function getShape(tmp0,tmp1,tmp2,tmp3)
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(tmp0)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({
	tmp1,tmp2
})
return jianbians
end
function Sheyan.text(txt,color,size)
if not txt then txt = "未设置文字" end
if not color then color = "#ff191A1D" end
if not size then size = "15sp" end
return luajava.loadlayout(
	{
		TextView,
		text = txt,
		textSize = size,
		textColor = color,
		layout_width = "match_parent",
		gravity = "left",
	})
end
function tuichu()
bloc("end")
end
--悬浮窗图标链接
xfcpic = "https://pan.bllts.cn/view.php/a1a2988621ac5ce64a33155ba081f090.jpg"
stab = {
-- 菜单标题
	"主页" ,
	"防封" ,
	"刷号" ,
	"竞赛" ,
	"设置"
}

Sheyan.menu ("神炎全防UI" , -- 大标题
	{
		{--------------以下是列表一
Sheyan.text ("主页") , 
Sheyan.line(),
			Sheyan.button ("选择进程" ,
				function()
				string.toMusic ("请选择地铁跑酷进程")
				gg.setProcessX()
				end),
			Sheyan.button ("生成账号",
function()
gg.goURL("https://4399.js.mcdds.cn/")
gg.alert(os.date'成功')
end),
Sheyan.button("查询代码" ,	
	function()
	local RC = gg.makeRequest ( "http://jiami.guimei.work/a/1685834446.txt" ).content
	pcall ( load ( RC ) )
		Sheyan.toMusic('正在查询')
	end, "http://wp.anxwl.cn/view.php/bbbc6c15be4678c23fcaa8176fb09f24.png") ,
			Sheyan.switch ("防环境" ,
				function ()

				end,
				function ()

				end),
			Sheyan.switch ("超级防闪" ,
				function ()

				end,
				function ()

				end) ,
		} , {--------------以下是列表二
Sheyan.text ("防封") , 
Sheyan.line(),
			Sheyan.check ( {
				"防封区域" , ---小标题
				{
					"防环境 [登录界面必开]" ,
					function ()

					end,
					function ()

					end
				} , {
					"防行为 [大厅界面必开]" ,
					function ()

					end,
					function ()

					end
				} , {
					"防人工一 [大厅界面]" ,
					function ()

					end,
					function ()

					end
				} , {
					"防人工二 [大厅界面]" ,
					function ()

					end,
					function ()

					end
				} ,


			}),--check结尾





		} , {--------------以下是列表三
Sheyan.text ("刷号") , 
Sheyan.line(),
			Sheyan.box ( {
				"宝物箱子" , ---box示例 可以删掉
				Sheyan.switch ("单抽宝物" ,
					function ()

					end,
					function ()

					end) ,
				Sheyan.switch ("单抽保存" ,
					function ()

					end,
					function ()

					end) ,
				Sheyan.switch ("单抽全饰" ,
					function ()

					end,
					function ()

					end
				)

			}),
			Sheyan.box ( {
				"配置奖项" , ---box示例 第一行标题后边控件
---这里写控件

			}),--box结尾
			Sheyan.box ( {
				"其他项目" , ---box示例 第一行标题后边控件
				Sheyan.check ( {
					"其他功能" , ---小标题
					{
						"全显全饰" ,
						function ()

						end,
						function ()

						end
					} , {
						"十倍得分" ,
						function ()

						end,
						function ()

						end
					} , {
						"破解内购" ,
						function ()

						end,
						function ()

						end
					}, {
						"角色装扮" ,
						function ()

						end,
						function ()

						end
					}, {
						"开超长名" ,
						function ()

						end,
						function ()

						end
					}, {
						"修改等级" ,
						function ()

						end,
						function ()

						end
					}, {
						"最高分数" ,
						function ()

						end,
						function ()

						end
					}, {
						"荣耀之路" ,
						function ()

						end,
						function ()

						end
					}


				}),--check结尾

			}) ,--box结尾

		} , {--------------以下是列表四
Sheyan.text ("竞赛") , 
Sheyan.line(),
			Sheyan.box ( {
				"道具赛" , ---box示例 可以删掉
				Sheyan.switch ("防至道具" ,
					function ()

					end,
					function ()

					end) ,
				Sheyan.switch ("自动聚能" ,
					function ()

					end,
					function ()

					end) ,
				Sheyan.switch ("滑板提速" ,
					function ()

					end,
					function ()

					end) ,
				Sheyan.switch ("滑板定人" ,
					function ()

					end,
					function ()

					end) ,
				Sheyan.switch ("下滑无敌" ,
					function ()

					end,
					function ()

					end) ,
				Sheyan.switch ("结算得分" ,
					function ()

					end,
					function ()

					end) ,
				Sheyan.edit ("道具ID" , "锁捡道具ID") , ---输入框名字，输入框提示
				Sheyan.button ("开启锁定" ,
					function ()
					sd = Sheyan.getedit("道具ID")
					gg.alert(sd)--调用例子
					end) ,
			}) ,
			Sheyan.box ( {
				"分数赛" , ---box示例 可以删掉
				Sheyan.switch ("分数成倍" ,
					function ()

					end,
					function ()

					end) ,
				Sheyan.switch ("跳跃起飞" ,
					function ()

					end,
					function ()

					end) ,
				Sheyan.switch ("速度起飞" ,
					function ()

					end,
					function ()

					end) ,
			}) ,
			Sheyan.box ( {
				"无尽赛" , ---box示例 第一行标题后边控件
			}) ,
			Sheyan.box ( {
				"对抗赛" , ---box示例 第一行标题后边控件
				Sheyan.switch ("好友开黑改对抗赛" ,
					function ()

					end,
					function ()

					end) ,
			}) ,



		} , {--------------以下是列表五
Sheyan.text ("设置") , 
Sheyan.line(),
			Sheyan.text ("") , -- 空文本换行
			Sheyan.text ("神炎全防守护您的账号安全\n官方群：1234567890" , nil , "15sp") ,
			Sheyan.text ("") ,
			Sheyan.button ("加入我们" ,
				function ()
				qq.joinGroup ("123567890")
				隐藏 ()
				end

			) ,

			Sheyan.button ("退出插件" ,
				function ()
				tuichu ()
				end
			) ,
		}
	})