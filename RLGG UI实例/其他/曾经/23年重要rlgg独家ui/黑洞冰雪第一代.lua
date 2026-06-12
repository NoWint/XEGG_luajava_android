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
changan.menu = function(sview)
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
	background="https://wp.td88.cyou/view.php/8ef922ced1ef6bef4005f578289d4e83.png",
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
		layout_width='108dp',
		layout_height='match_parent',
		orientation = "vertical",
		{
		LinearLayout,
		layout_width='98dp',
		layout_height='match_parent',
		orientation = "vertical",
		background="https://wp.td88.cyou/view.php/2db5c9b62947e1db9f9bac74b31d6134.png",
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
		orientation = "horizontal",
		padding = "2dp",
		layout_height="80dp",
		layout_width="fill_parent",
		{
	LinearLayout,
		layout_width='match_parent',
		layout_height='70dp',
		visibility = "visible",
		gravity = "center",
		background="https://wp.td88.cyou/view.php/441e91a8f495b259c9f5e2a8c083940d.png",
		onTouch=hanshu,
	{LinearLayout,
		layout_width='match_parent',
		layout_height='60dp',
		layout_marginLeft="10dp",
		visibility = "visible",
		onTouch=hanshu,
		{LinearLayout,
			layout_height='match_parent',
			layout_width='match_parent',
			{LinearLayout,
				layout_height='match_parent',
				layout_width='match_parent',
				layout_weight=1,
				padding='4dp',
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
								text = string.fromHtml("<font color=#ffffff>".."欢迎使用云烛UI","</font>"),
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
			}
		}}}},
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
	end
	_ENV["layout"..当前ui]:setVisibility(View.VISIBLE)
	YoYoImpl:with("FadeIn"):duration(200):playOn(_ENV["layout"..当前ui])
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
	if not yck then ycg=1000 yck=1000 end----默认长宽
    	mainLayoutParams.height=ycg
    	mainLayoutParams.width=yck
    	window:updateViewLayout(floatWindow, mainLayoutParams)
    	jiaobiao:setVisibility(View.VISIBLE)
	显示 = 1
	titlebar:setVisibility(View.VISIBLE)
	cebian:setVisibility(View.VISIBLE)
	cbian:setVisibility(View.VISIBLE)
	YoYoImpl:with("SlideInDown"):duration(200):playOn(cebian)
	_ENV["layout"..当前ui]:setVisibility(View.VISIBLE)
	YoYoImpl:with("FadeIn"):duration(800):playOn(_ENV["layout"..当前ui])
	changan.controlBig(floatWindow,500)
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
gg.toast("已隐藏")
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
--draw.text('.', -9200,-9200)
luajava.runUiThread(function() floatWindow:setVisibility(View.VISIBLE) end)
luajava.runUiThread(function()
	changan.controlBig(floatWindow,400)
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

function changan.switch(name,func1,func2,miaoshu)
if not checkbg then

checkbga = getVerticalBG({开关关闭[1],开关关闭[2]},360)
checkbg = getVerticalBG({控件颜色[1],控件颜色[2]},360)
switchbg1 = getVerticalBG({0xffffffff,0xffffffff},360,4,0x00ffffff)
switchbg2 = getVerticalBG({0xffffe061,0xffffe061},360,4,0x00ffffff)
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
			color = 0x78000000 ,
			cornerRadius = 15
		} ,padding = {
		"0dp","0dp","6dp","0dp"
	},
		{
			TextView,
			gravity = "top",
			text = name,
			textColor = "#ffffff",
			textSize = "12sp",
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

function changan.text(txt,color,size)
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
function visi(tid,ttid)
local tview = luajava.getIdValue(tid)
local ttview = luajava.getIdValue(ttid)
if not tview then return 0 end
if tonumber(tostring(tview:getVisibility())) == 8.0 then
tview:setVisibility(View.VISIBLE)
ttview:setBackground(luajava.getBitmapDrawable("/sdcard/长安/图片/hsj"))
else
	tview:setVisibility(View.GONE)
ttview:setBackground(luajava.getBitmapDrawable("/sdcard/长安/图片/sj"))
end
end
function changan.box(views)
local tid = "box"..guid()
local ttid = tid.."6"
local firadio = {
	LinearLayout,
	layout_width = 'fill_parent',
	layout_height = "wrap_content",
	layout_marginTop = "2dp",
	gravity = "center",
	layout_marginBottom = "2dp",
	orientation = "vertical",
	background = luajava.loadlayout {
		GradientDrawable,
		color = "#0018191C",
		cornerRadius = 8
	},
}
if type(views[1]) == "string" or type(views[1]) == "number" then
firadio[#firadio+1] = {
	FrameLayout,
	layout_width = '220dp',
	layout_height = "30dp",
	gravity = "center_vertical",
	layout_marginTop = "2dp",
	layout_marginBottom = "4dp",
	onClick = function() visi(tid,ttid) end,
	background = getShape3(),
	
	{
		ImageView,
		layout_gravity = "left|center",
		layout_marginLeft = "10dp",
		id = luajava.newId(ttid),
		background = "/sdcard/长安/图片/sj",
		layout_width = "13dp",
		layout_height = "13dp",
		layout_marginTop = "0dp",
	},
	{
		TextView,text = views[1],
		textSize = "13sp",
		layout_width = "220dp",
		textColor = "#545454",
		layout_gravity = "center",
		gravity = "center"
	}} else
	gg.alert("changan.box第一个参数必须是string") os.exit()
end
radios = {
	LinearLayout,
	layout_marginLeft = "0dp",
	layout_marginRight = "0dp",
	orientation = "vertical",
	visibility = "gone",
	id = luajava.newId(tid),
	padding = "0dp",
	gravity = "center_horizontal",
	layout_width = 'fill_parent',
}
for i = 2,#views do
radios[#radios+1] = views[i]
end
firadio[#firadio+1] = radios
return luajava.loadlayout(firadio)
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
			uiadtext('执行了 '..txt.."","#"..string.sub(string.format("%x", 开关颜色[1]),3,-1))
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



function PS() end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end

function PS() end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
---静态基址写法配置


function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "地址成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "失败") end end end end
function xqmnb(Search,Modification)
gg.clearResults() gg.setRanges(Search[1].memory) gg.searchNumber(Search[3].value,Search[3].type,false,536870912,0,-1) if gg.getResultCount()==0 then gg.toast(Search[2].name..'开启失败')  return end local Result=gg.getResults(gg.getResultCount()) local sum for index=4,#Search do  sum=0 for i=1,#Result do  if gg.getValues({{address=Result[i].address+Search[index].offset,flags=Search[index].type}})[1].value~=Search[index].lv then Result[i].Usable=true  sum=sum+1 end  end  if sum==#Result then gg.toast(Search[2].name..'开启失败') return end end  local Data,Freeze,Freezes={},{},0  sum=0 for index,value in ipairs(Modification)do for index=1,#Result do if not Result[index].Usable then  local Value={address=Result[index].address+value.offset,flags=value.type,value=value.value,freeze=true} if value.freeze then Freeze[#Freeze+1]=Value Freezes=Freezes+1 else Data[#Data+1]=Value  end  sum=sum+1 end end end gg.setValues(Data) gg.addListItems(Freeze)  if Freezes==0 then gg.toast(Search[2].name..'开启成功,共修改'..sum..'条数据') else gg.toast(Search[2].name..'开启成功,共修改'..sum..'条数据,冻结'..Freezes..'条数据') end gg.clearResults() end



















控件颜色={0x80000000,0x80000000}
开关关闭={0x80000000,0x80000000}
开关颜色={0xffffe061,0xffE27E59}
颜色表={--切换颜色的列表
{0x78000000,0x78000000,"落日黑洞"},
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













function huiz()
draw.setSize(50)
draw.setStyle('填充')
draw3 = require('draw3')
text1 = draw.text('UI', 100,200)draw.setColor('#FF74C6')

end

stitle = "UI"

stab = {
--菜单名字，添加即可加页数，需要与结尾配置表对应
	"防封",
	"功能",
	"音乐",
	"设置",
	
	
}
xfcpic = "http://cdn.u1.huluxia.com/g4/M02/20/0D/rBAAdmWimtSAYZCcAAJzHyuHgVs739.png"
--悬浮窗链接或路径

左上角图标="http://cdn.u1.huluxia.com/g4/M02/20/0D/rBAAdmWimtSAYZCcAAJzHyuHgVs739.png"

changan.menu(
	{
		{--1
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
			changan.switch ("扩大碰撞箱" ,
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
			
		}, {
--2
changan.switch ("防闪-64-bit" ,
				function ()
local t = {"libanogs.so:bss", "Cb"}
local tt = {0x708}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 64, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x9c8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 64, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0xA58}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 64, freeze = true}})

end,
				function ()
					
				end,
			"局内界面开启即可降低被举报风险"),
changan.switch ("跳伞加速-64-bit" ,
				function ()
				gg.toast("15秒之后关闭")
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38, 0x0, 0x84}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = 3, freeze = true}})
gg.sleep(15000)
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38, 0x0, 0x84}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = 1, freeze = true}})
gg.toast("关闭成功")
				end,
				function ()
					
				end,
				"快速落地开启约15关闭该功能"),
				changan.switch ("无后-64-bit" ,
				function ()
			so=gg.getRangesList('libUE4.so')[1].start
py=0x54EC3E8
setvalue(so+py,16, 8.8411673e-21)--功能:午后
string.toMusic('开启成功')
		
				end,
				function ()
					
				end,
				"辅助你圧枪达成无后座效果"),
				
				changan.switch ("防抖-64-bit" ,
				function ()
so=gg.getRangesList('libUE4.so')[1].start
py=0x8A09CFC
setvalue(so+py,4,505872707)
so=gg.getRangesList('libUE4.so')[1].start
py=0x60C9E14
setvalue(so+py,4,1409287341)
gg.toast("开启成功")
string.toMusic('开启成功')	
				end,
				function ()
					
				end,
				"辅助你压枪达成防抖效果"),
				changan.switch ("瞬击-64-bit" ,
				function ()
				so=gg.getRangesList('libUE4.so')[1].start
py=0x8B59130
setvalue(so+py,16, 8.95671814e-21)--功能:瞬机
string.toMusic('开启成功')
				end,
				function ()
					
				end,
				"子弹瞬间到达目标达到瞬击效果"),
				changan.switch ("手持聚点-64-bit" ,
				function ()		
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0xDC8,0x50,0x7B8,0xB30}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 0}})
----手持据点
string.toMusic('开启成功')

				end,
				function ()
					
				end,
				"子弹聚集达到聚点效果"),
				changan.switch ("聚点-64-bit" ,
				function ()
so=gg.getRangesList('libUE4.so')[1].start--聚点3*.0
py=0x54E7870
setvalue(so+py,16,8.47963525e-21)
string.toMusic('开启成功')
				end,
				function ()
					
				end,
				"子弹聚集达到聚点效果"),
				changan.switch ("除雾-64-bit" ,
				function ()
so=gg.getRangesList('libUE4.so')[1].start
py=0x7BC8528
setvalue(so+py,16,8.95671814e-21)
gg.toast("开启成功")
string.toMusic('开启成功')	
				end,
				function ()
					
				end,
				"可以除掉五图七图辐射区的雾"),
				changan.switch ("广角(动)-64-bit" ,
				function ()				
k = gg.prompt({"你的数值修改: [90;150]"},{"105"},{"number"})
if k== nil then else
R=k[1]
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38, 0x0, 0x390, 0x20, 0x32C}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = R}})
end
gg.toast("开启成功")
string.toMusic('开启成功')

				end,
				function ()
					
				end,
				"放大视角达到广角效果"),
				changan.switch ("广角-64-bit" ,
				function ()
OP=gg.prompt({'1到3'},{[1]='1.2'},{[1]='number'})
if OP == nil or OP[1] == '' or OP[1] == '0' then gg.toast("取消")
else
so=gg.getRangesList('libUE4.so')[1].start
py=0x334BE48
setvalue(so+py,16,OP[1])
end
gg.toast("开启成功")
string.toMusic('开启成功')


	
				end,
				function ()
					
				end,
				"放大视角达到广角效果"),
				changan.switch ("打击特效-64-bit" ,
				function ()
				local t = {"libUE4.so:bss", "Cb"}
local tt = {0x47D8B0, 0x30, 0x488, 0x560, 0x54}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 9999}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x47D8B0, 0x30, 0x488, 0x560, 0x14}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 9999}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x47D8B0, 0x30, 0x488, 0x560, 0x94}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 9999}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x47D8B0, 0x30, 0x488, 0x560, 0xD4}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 9999}})
string.toMusic('开启成功')
				end,
				function ()
					
				end,
				"通过修改游戏数据达到拥有击中特效"),
				changan.switch ("范围-64-bit" ,
				function ()
				so=gg.getRangesList('libUE4.so')[1].start
py=0x334A568
setvalue(so+py,16, 50)--功能:范围
string.toMusic('开启成功')
	
				end,
				function ()
					
				end,
				"击中敌人身旁也有伤害"),
				changan.switch ("过黑名单-64-bit" ,
				function ()
				local t = {"libUE4.so:bss", "Cb"}
local tt = {0x164380, 0x0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 949454}})
					
				end,
				function ()
					
				end,
				"封设备的时候开启即可过封设备"),
				changan.switch ("加速-64-bit" ,
				function ()
				so=gg.getRangesList('libUE4.so')[1].start
py=0x8B17928
setvalue(so+py,16,8.50279712e-21)--336,870,440
gg.alert("加速开启成功")
string.toMusic('加速开启成功')---语音

	
				end,
				function ()
so=gg.getRangesList('libUE4.so')[1].start
py=0x8B17928
setvalue(so+py,16,8.50279631e-21)--336,870,440
gg.alert("加速关闭成功")
string.toMusic('加速关闭成功')---语音
				end,
				"开启过后检测都追不上你"),
				changan.switch ("人物美化-64-bit" ,
				function ()
OP=gg.prompt({'上半身初始值1400129\n睡衣1405208   橘龙1406908   恶魔1405341   小黑1406020\n血鸦1405870   冰雪1400782   球衣1405436   小紫1405558\n\n齐天大圣1406327    女胖达1405039   男胖达1405151   御灵师1405334   精灵王1406311\n嗜血龙1406897   金克丝1406140   兔女郎1405125   小青蛙1405171\n\n海洋之王1405983   金辉艳后1406475   血渊圣王1406872   逐风勇士1406805\n极辉女帝1406823   幽灵舞姬1406573   恶棍先生1405604   骑龙驯手1406895\n黄木乃伊1405623   白木乃伊1400687   地狱正午1406656   星空女王1406201\n蓝木乃伊1406891   暗星陨落1406878   晨星光耀1406879   可爱鲨鱼1406419\n懒散河童1406894   金鳄狂徒1406499   清心一夏1406146   乖张灵兔1406893\n沙狐剑客1406145   幻梦飞龙1406896\n\n圣金祝福男1406883   小黄龙衣服1406927   大企鹅衣服1405822   温柔仙人掌140602\n圣金祝福女1406882   小绿龙衣服1406926  蓝龙虾衣服1405401 悟空1406939 贝尔塔1406947 悟空赛亚人1406937 贝尔塔赛亚人1406948弗利萨1406938'},{[1]='1406327'},{[1]='number'})
	if OP == nil or OP[1] == '' or OP[1] == '0' then gg.toast("取消")
		else
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38, 0x0, 0x340, 0x30, 0x388, 0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = OP[1]}})
end
gg.toast("开启成功")
string.toMusic('开启成功')	
				end,
				function ()
					
				end,
				"可以使你的衣服变好看"),
				
				
				
						

}, {
--3

		}, {
--第四页
			--changan.switch("6"),
			changan.text("\n\n\n"),
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
