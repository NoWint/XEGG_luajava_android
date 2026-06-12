function getButtonBG()
local selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, getVerticalBG({0x34000400,0x34000400},15))
selector:addState({
	-android.R.attr.state_pressed
}, getVerticalBG({0xFFFFFFFF,0xFFFFFFFF},15))
return selector
enfunction 获取图片(txt)
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
function getRes(x)
	return 获取图片("/sdcard/长安/图片/"..x)
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
	id = "dingbian",
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
		background=luajava.loadlayout {
      	GradientDrawable,
     	color = "0xff004EFF",
     	cornerRadius = 38
        },
		padding="10dp",
		layout_gravity="center",
		layout_width="65dp",
		layout_height = "5.5dp",
		layout_marginLeft="5dp",
		layout_marginRight="5dp",
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
		toast("已放大")
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
		gg.toast("已缩小")
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
		gg.toast("UI缩放已锁定")
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
		gg.toast("UI缩放已开启")
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



vibra = context:getSystemService(Context.VIBRATOR_SERVICE)


changan = {}
local changan = changan
local android = import('android.*')
function write(fileName, content)
file.write(fileName, content)
end
function panduan(rec) fille,err = io.open(rec) if fille == nil then return false else return true end end
function pdcf(lujing) rec = "/sdcard/YD/配置文件/"..lujing fille,err = io.open(rec) if fille == nil then return false else return true end end
sleep = gg.sleep
function read(fileName) f = assert(io.open(fileName, 'r')) content = f:read("*all") f:close() return content end
function getVerticalBG(gtvb1,gtvb3,gtvb4,gtvb5)
if not gtvb4 then gtvb4 = 0 gtvb5 = 0xff000000 end
local jianbians = luajava.new(GradientDrawable)
jianbians:setOrientation(GradientDrawable.Orientation.TL_BR)
jianbians:setCornerRadius(gtvb3)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors(gtvb1)
jianbians:setStroke(gtvb4,gtvb5)--边框宽度和颜色
return jianbians
end
function checkimg(tmp)
if panduan("/sdcard/YD/图片/"..tmp) ~= true then
gg.toast("正在下载资源"..tmp.."\n请耐心等待")
download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..tmp,"/sdcard/YD/图片/"..tmp)
end
end
ckimg = {
	"quarkcheckoff",
	"quarkcheckon",
	"quarkhome",
	"biliQ",
	"fox"
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
slctb = luajava.loadlayout {
	GradientDrawable,
	color = "#EFEFEF",
	cornerRadius = 10
}
slcta = luajava.loadlayout {
	GradientDrawable,
	color = "#0077FF",
	cornerRadius = 10
}
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
	cornerRadius = 10
}) -- 点击时候的背景
selector:addState({
	-android.R.attr.state_pressed
}, luajava.loadlayout {
	GradientDrawable,
	color = "#ffffff",
	cornerRadius = 10
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

tcbTouch = function(v, event)
local Action = event:getAction()
if Action == MotionEvent.ACTION_DOWN then
isMove = false
RawY = event:getRawY()
elseif Action == MotionEvent.ACTION_UP then
	if tox<0 then
		if tox<-120 then tox=-120 end
	canMove=false
	changebg()
	luajava.newThread(function()
		--vibra:vibrate(16)
		for i=1,-(tox/6) do
			luajava.runUiThread(function()
				tcbar:scrollBy(0,6)
			end)
			gg.sleep(10)
		end
	end):start()
	
	canMove=true
	end
elseif Action == MotionEvent.ACTION_MOVE then
isMove = true
tox=-(event:getRawY() - RawY)
if canMove then
if tox>-120 and tox<0 then
tcbar:scrollTo(0,tox)
end
end

end
end
YoYoImpl = luajava.getYoYoImpl()
changan.menu = function(sview)
if isswitch then
return false
end
for i=1,#bglist do
	if type(bglist[i])=="string" then
		bglist[i]=获取图片(bglist[i])
	end
end
canMove=true
isswitch = true
for i = 1,#stab do
_ENV["layout"..i] = luajava.loadlayout({
	LinearLayout,
	layout_width = "fill_parent",
	layout_height = "230dp",
	visibility = "gone",
	orientation = "vertical",
	
	{
		ScrollView,
		fillViewport = "true",
--padding = "10dp",
		gravity = "center",
		layout_width = "fill_parent",
		layout_height = "260dp",
		orientation = "horizontal",
		{
			LinearLayout,
			id = "layoutm"..i,
			layout_marginRight = "5dp",
			layout_marginLeft = "5dp",
			layout_width = "fill_parent",
			orientation = "vertical",
			gravity = "center_horizontal",
		}
	}})
end
ckou = {
	LinearLayout,
	id = "chuangk",
	visibility = "gone",
	layout_width = "wrap_content",
	layout_height = "wrap_content",
	orientation = "vertical",
	{--顶部栏
	dingbian,

	},
	{
		LinearLayout,
		layout_marginBottom = "1dp",
		layout_marginTop = "1dp",
		layout_width = "fill_parent",
		layout_height = "2dp",
		background = "#D7D7D7"
	}

}
layout0=luajava.loadlayout({
	FrameLayout,
	layout_width = "fill_parent",
	layout_height = "230dp",
	orientation = "vertical",
	{LinearLayout,--1
	elevation="5dp",
	orientation="vertical",
	layout_width = "150dp",
	layout_height = "90dp",
	layout_marginLeft="20dp",
	layout_marginTop="20dp",
	background=getVerticalBG({0xff00BFFF,0xff0050FF},25),
	onClick=function() 切换(1) end,
	gravity="center",
	{TextView,
	textColor="#eeffffff",
	textSize="17sp",
	text=stab[1],
	layout_marginTop="10dp",
	}
	},
	{LinearLayout,--2
	elevation="5dp",
	orientation="vertical",
	layout_width = "150dp",
	layout_height = "90dp",
	layout_marginLeft="190dp",
	layout_marginTop="20dp",
	background=getVerticalBG({0xffFF8E00,0xffFF3645},25),
	onClick=function() 切换(2) end,
	gravity="center",
	{TextView,
	textColor="#eeffffff",
	textSize="17sp",
	text=stab[2],
	layout_marginTop="10dp",
	}
	},
	{LinearLayout,--3
	elevation="5dp",
	orientation="vertical",
	layout_width = "150dp",
	layout_height = "90dp",
	layout_marginLeft="20dp",
	layout_marginTop="126dp",
	background=getVerticalBG({0xff00FF7C,0xff0070FF},25),
	onClick=function() 切换(3) end,
	gravity="center",
	{TextView,
	textColor="#eeffffff",
	textSize="17sp",
	text=stab[3],
	layout_marginTop="10dp",
	}
	},
	{LinearLayout,--4
	elevation="5dp",
	orientation="vertical",
	layout_width = "150dp",
	layout_height = "90dp",
	layout_marginLeft="190dp",
	layout_marginTop="126dp",
	background=getVerticalBG({0xffE34BFF,0xffFFCA00},25),
	onClick=function() 切换(4) end,
	gravity="center",
	{TextView,
	textColor="#eeffffff",
	textSize="17sp",
	text=stab[4],
	layout_marginTop="10dp",
	}
	},{LinearLayout,--5
	elevation="5dp",
	orientation="vertical",
	layout_width = "80dp",
	layout_height = "90dp",
	layout_marginLeft="355dp",
	layout_marginTop="126dp",
	background=getVerticalBG({0x09292e34,0x09292e34},25,6,0xaa545454),
	onClick=function() tuichu=1 end,
	gravity="center_horizontal",
	{ImageView,
	layout_marginTop="10dp",
	src=获取图片("/sdcard/YD/图片/biliQ"),
	layout_width = "40dp",
	layout_height = "40dp",
	},
	{TextView,
	textColor="#ff239BFF",
	textSize="13sp",
	text="退出",
	layout_marginTop="10dp",
	}
	},
	})
ckou[#ckou+1] = _ENV["layout0"]
for i = 1,#stab do
ckou[#ckou+1] = _ENV["layout"..i]
end

ckou[#ckou+1] = {
		LinearLayout,
		layout_marginBottom = "1dp",
		layout_marginTop = "1dp",
		layout_width = "fill_parent",
		layout_height = "0dp",
		background = "#D7D7D7"
	}
ckou[#ckou+1] = {
	LinearLayout,
	layout_height="0dp",
	layout_width="450dp"
}

ckou = luajava.loadlayout(ckou)


floatWindow = {
	FrameLayout,
	id = "motion",
	elevation = "10dp",
	background=bglist[1],
	onTouch = hanshu,
	onClick = function() end,
	layout_width = "wrap_content",
	orientation = "vertical",
	gravity = "center_vertical",
	layout_height = "wrap_content",
	ckou,
	{LinearLayout,
	id="tcbar",
	layout_height="150dp",
	layout_width="40dp",
	layout_marginLeft="380dp",
	layout_marginTop="0dp",
	onClick=function() end,
	onTouch=tcbTouch,
	{LinearLayout,
	id="tcb2",
	layout_height="150dp",
	layout_width="40dp",
	layout_marginTop="-80dp",
	--background="#000000",
	orientation="vertical",
	gravity="center_horizontal",
	{LinearLayout,
	layout_height="130dp",
	layout_width="4dp",
	background="#272D3A",
	},{LinearLayout,
	background=获取图片("/sdcard/YD/图片/fox"),
	layout_height="20dp",
	layout_width="20dp",
	}
	}},
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
local t=luajava.loadlayout({
	LinearLayout,layout_height="60dp"
})
_ENV["layoutm"..k]:addView(t)
end

window:addView(floatWindow, mainLayoutParams)
block('end')
end
切换(0)
local runnable = luajava.getRunnable(invoke2)
local handler = luajava.getHandler()
handler:post(runnable)
block('join')
local isMove


end

invoke(swib1,swib2)
gg.setVisible(false)
隐藏()
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
draw.text('.', -9200,-9200)
luajava.runUiThread(function() floatWindow:setVisibility(View.VISIBLE) end)
luajava.runUiThread(function()
	changan.controlBig(floatWindow,400)
	end)

end
end
huiz()
draw.text('.', -9200,-9200)
while true do
if tuichu == 1 then break end
jianting3(qiehuan)
gg.sleep(300)
end

luajava.setFloatingWindowHide(false)
end
corbk = true
当前ui = 1
function 切换(x)
当前ui = x
luajava.runUiThread(function()
	for i = 0,#stab do
	_ENV["layout"..i]:setVisibility(View.GONE)
	end
	_ENV["layout"..当前ui]:setVisibility(View.VISIBLE)
	--YoYoImpl:with("FadeIn"):duration(800):playOn(_ENV["layout"..当前ui])
	if x==0 then
	tcbar:setVisibility(View.VISIBLE)
else
	tcbar:setVisibility(View.GONE)
end
end)

end
显示 = 0
beij = luajava.loadlayout({
	GradientDrawable,
	color = "#ffE9E9E9",
	cornerRadius = 10
})
beij2 = luajava.loadlayout({
	GradientDrawable,
	color = "#001E1C27",
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
--vibra:vibrate(8)
luajava.runUiThread(function()
	if tonumber(tostring(ckou:getVisibility())) == 8.0 then
	control:setVisibility(View.GONE)
	显示 = 1
	ckou:setVisibility(View.VISIBLE)
	changan.controlBig(floatWindow,500)
	floatWindow:setBackground(beij)
	if 当前ui==0 then
	tcbar:setVisibility(View.VISIBLE)
	else
	tcbar:setVisibility(View.GONE)
	end
	else
	tcbar:setVisibility(View.GONE)
	ckou:setVisibility(View.GONE)
	floatWindow:setBackground(beij2)
	control:setVisibility(View.VISIBLE) 显示 = 0
	end
	end)
end
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
function jianting2()
yinln = {}
for i = 1,#audiotype do
yinln[i] = {}
yinln[i].type = audiotype[i]
yinln[i].min = audi:getStreamMinVolume(audiotype[i])
yinln[i].max = audi:getStreamMaxVolume(audiotype[i])
yinln[i].now = audi:getStreamVolume(audiotype[i])

if yinln[i].now > yinl[i].now then
audi:adjustStreamVolume(yinln[i].type,AudioManager.ADJUST_LOWER,0)
gg.alert("up")
elseif yinln[i].now < yinl[i].now then
audi:adjustStreamVolume(yinln[i].type,AudioManager.ADJUST_RAISE,0)
gg.alert("down\n"..yinln[i].now.."\n"..yinl[i].now)
end
end

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
function jianting(func)
yinln = {}
for i = 1,#audiotype do
yinln[i] = {}
yinln[i].type = audiotype[i]
yinln[i].now = audi:getStreamVolume(audiotype[i])
if yinln[i].now >= yinl[i].max then
audi:adjustStreamVolume(yinln[i].type,AudioManager.ADJUST_LOWER,0)
end
if yinln[i].now > yinl[i].now then
audi:setStreamVolume(yinln[i].type,yinl[i].now,0)
func()
end
end
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


function 开关3(name,func1,func2,nid)
name = name..guid()
_ENV[name] = "关"
if func1 == nil then func1 = function() end end
if func2 == nil then func2 = function() end end
if type(func1) == "function" then
return function()
namers = _ENV[name]
if namers ~= "开" then
luajava.runUiThread(function()
	changan.controlWater(_ENV[nid],200)
	luajava.getIdValue(nid):setBackground(check2)
	luajava.getIdValue(nid.."k"):setVisibility(View.GONE)
	luajava.getIdValue(nid.."g"):setVisibility(View.VISIBLE)
	end)
_ENV[name] = "开"
--vibra:vibrate(6)
pcall(func1)
else
	luajava.runUiThread(function()
	changan.controlWater(_ENV[nid],200)
	luajava.getIdValue(nid):setBackground(check1)
	luajava.getIdValue(nid.."g"):setVisibility(View.GONE)
	luajava.getIdValue(nid.."k"):setVisibility(View.VISIBLE)
	end)
_ENV[name] = "关"
--vibra:vibrate(6)

pcall(func2)
end
end
end
end
function getShape3()
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(20)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({
	0x55FF9DBC,0x55FF9DBC
})
jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
jianbians:setStroke(8,0xaa80C3F9)--边框宽度和颜色
return jianbians
end
function getShape(tmp0,tmp1,tmp2,tmp3)
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(tmp0)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors(tmp1)
jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
jianbians:setStroke(8,tmp3)--边框宽度和颜色
return jianbians
end
function getShape2(tmp0,tmp1,tmp2,tmp3)
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(tmp0)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors(tmp1)
jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
jianbians:setStroke(15,tmp3)--边框宽度和颜色
return jianbians
end
function getShape0(tmp0,tmp1,tmp2,tmp3)
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(tmp0)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors(tmp1)
jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
jianbians:setStroke(30,tmp3)--边框宽度和颜色
return jianbians
end

check1 = 获取图片("/sdcard/YD/图片/quarkcheckoff")
check2 = 获取图片("/sdcard/YD/图片/quarkcheckon")
checkbg1 = getShape0(
	90,
	{
		0xffFF9DBC,0xffFF9DBC
	},
	4,0x00ffffff)
checkbg2 = getShape2(
	90,
	{
		0xffffffff,0xffffffff
	},
	4,0xff80C3F9)
checkbg2=获取图片("/sdcard/YD/图片/leimu")
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
--vibra:vibrate(14)
luajava.runUiThread(function()
	luajava.getIdValue(nid.."g"):setBackground(check2)
	end)
_ENV[name] = "开"
pcall(func1)
else
	--vibra:vibrate(14)
luajava.runUiThread(function()
	luajava.getIdValue(nid.."g"):setBackground(check1)
	end)
_ENV[name] = "关"
pcall(func2)
end
end
end
end
function initbg()
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(10)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({
--0x00444444,0x00ffffff
	0xffffffff,0xffffffff
}) 
jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
jianbians:setStroke(0,0xff000000)--边框宽度和颜色
return jianbians
end
function changan.check(cklist)
local rest = {
	GridLayout,
	columnCount = '5',
	layout_width = '425dp',
	layout_height = "wrap_content",
	
	gravity = "left"

}
for i = 1,#cklist do
local name = cklist[i][1]
local func1 = cklist[i][2]
local func2 = cklist[i][3]
if not name then name = "未设置" end
rstt = changan.intcheck(name,func1,func2)
rest[#rest+1] = rstt
end
return luajava.loadlayout({
	LinearLayout,rest
})
end
function changan.intcheck(name,func1,func2)
nid = name..guid()
local func = 开关5(name,func1,func2,nid)
if not name then name = "未设置" end
local rest = luajava.loadlayout({
	LinearLayout,
	layout_width = '85dp',
	layout_height = "24dp",
	layout_marginTop = "1dp",
	layout_marginBottom = "1dp",
	padding = "1dp",
	elevation="5dp",
	{
		LinearLayout,
		onClick = function() luajava.newThread(function() func() end):start() end,
		layout_width = 'fill_parent',
		layout_height = "fill_parent",
		gravity = "center_vertical",
		background = initbg(),
		{
			TextView,
			gravity = "left",
			text = name,
textColor="#000000",
			textSize = "12sp",
layout_marginLeft="7dp",
			layout_width = '50dp',
		},
		{
				ImageView,
				id = luajava.newId(nid.."g"),
				text = "开启",
				background=check1,
				layout_width = 'wrap_content',
				layout_height = 'fill_parent',
				layout_marginLeft="4dp",
			}} 
})

return rest
end

function changan.button(txt,func)
if not txt then txt = "未设置" end
return luajava.loadlayout(
	{
		LinearLayout,
		elevation="5dp",
		layout_width = '220dp',
		layout_hight = "30dp", {
			LinearLayout,
			layout_width = "fill_parent",
			gravity = "center_horizontal",
			layout_marginTop = "5dp",
			layout_marginBottom = "5dp",
			background = getSelector3(),
			onClick = function() luajava.newThread(function() pcall(func) end):start() end,
			{
				TextView,
--id = luajava.newId(tid),
				textColor = "#"..颜色2,
				text = txt,
				textSize = "16sp",
				layout_width = "wrap_content",
			},
		}})
end
function changan.text(txt,color,size)
if not txt then txt = "未设置文字" end
if not color then color = "#"..颜色2 end
if not size then size = "18sp" end
return luajava.loadlayout(
	{
		TextView,
		text = txt,
		textSize = size,
		textColor = color,
		layout_width = "425dp",
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

颜色1 = "80C3F9"
颜色2 = "545454"

function 开关2(name,func1,func2,nid)
if func1 == nil then func1 = "" end
if func2 == nil then func2 = "" end
if type(func1) == "function" then
return function()
namers = _ENV[name]
if namers ~= "开" then
luajava.runUiThread(function()
	luajava.getIdValue(nid):setBackground(luajava.getBitmapDrawable("/sdcard/YD/图片/check2"))
	end)
_ENV[name] = "开"
func1()
else
	luajava.runUiThread(function()
	luajava.getIdValue(nid):setBackground(luajava.getBitmapDrawable("/sdcard/YD/图片/check1"))
	end)
_ENV[name] = "关"
func2()
end

end
end
end
nowbg=1

function changebg()
	if nowbg<#bglist then
		nowbg=nowbg+1
	else
		nowbg=1
	end
	beij=bglist[nowbg]
	floatWindow:setBackground(beij)
end



function huiz()---绘制必须放在这里面
end

bglist={
	--｛渐变色｝，圆角弧度，边框粗细（可省略），边框颜色（可省略）
	"http://yabo2.dfhk5.site/view.php/1e6da0c9cbcdb804ea8b69cd0a0b0c73.jpg",
	"http://yabo2.dfhk5.site/view.php/83d315860f892192e809b4fd7a02666e.jpg",	
    "http://yabo2.dfhk5.site/view.php/2eda911670093d040c4a874bd18b2d9c.jpg",
	"http://yabo2.dfhk5.site/view.php/ac22f883c446d24c9aa3875fd2dccd51.jpg",
	"http://yabo2.dfhk5.site/view.php/6b52fa9f7b85833c075e7be12c1fa96a.jpg",
	
	getVerticalBG({0xffeeeeee,0xffeeeeee},15),
}

titlet="钢铁侠内部"

stab = {
--菜单名字
	"防封",
	"功能",
	"美化",
    "循环功能",
}



xfcpic = "http://jiami.guimei.work/a/1700367674.jpg"
--悬浮窗链接或路径

changan.menu(
	{
		{--1
			changan.button("选择进程",gg.setProcessX),
			changan.text("第一套","#0077FF","15sp"),
			changan.text("","#545454","10sp"),
			changan.check({
				{
					"LOGO",
					function()
if gg.getRangesList("libUE4.so")[1] then
	local t = {}
	t[1] = gg.getRangesList("libUE4.so")[1]["start"] + 0x0; -- 数值地址:0x737F95F000
	t[2] = gg.getRangesList("libUE4.so")[1]["start"] + 0x4; -- 数值地址:0x737F95F004
	gg.setValues({
		[1] = { 
			address = t[1],
			flags = 4,
			value = 0,
		},
		[2] = { 
			address = t[2],
			flags = 4,
			value = 0,
		},
	})
	gg.toast("开启成功")
end
if gg.getRangesList("libanogs.so")[1] then
	local t = {}
	t[1] = gg.getRangesList("libanogs.so")[1]["start"] + 0x4E0950; -- 数值地址:0x739113C950
	t[2] = gg.getRangesList("libanogs.so")[1]["start"] + 0x4E0954; -- 数值地址:0x739113C954
	gg.setValues({
		[1] = { 
			address = t[1],
			flags = 4,
			value = 0,
		},
		[2] = { 
			address = t[2],
			flags = 4,
			value = 0,
		},
	})
	gg.toast("开启成功")
end
gg.alert("开启成功")
			gg.toast("开启成功")
string.toMusic('开启成功')
					end,
					function()

					end
				}, {
					"大厅",
					function()
local t = {"libanogs.so:bss", "Cb"}
local tt = {0x1194}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 64, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x1218}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 64, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x1318}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 64, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x1358}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 64, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x1388}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 64, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x4594}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 64, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x460C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 64, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x4660}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 64, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x5AC0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 64, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x5C04}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 64, freeze = true}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x16427C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 10240, freeze = true}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x16443C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 10240, freeze = true}})
gg.alert("开启成功")
			gg.toast("开启成功")
string.toMusic('开启成功')
					end,
					function()

					end
				},
			}),
			changan.text("第二套","#0077FF","15sp"),
			changan.text("","#545454","10sp"),
			changan.check({
				{
					"LOGO",
					function()
if gg.getRangesList("libUE4.so")[1] then
	local t = {}
	t[1] = gg.getRangesList("libUE4.so")[1]["start"] + 0x0; -- 数值地址:0x737F95F000
	t[2] = gg.getRangesList("libUE4.so")[1]["start"] + 0x4; -- 数值地址:0x737F95F004
	gg.setValues({
		[1] = { 
			address = t[1],
			flags = 4,
			value = 0,
		},
		[2] = { 
			address = t[2],
			flags = 4,
			value = 0,
		},
	})
	gg.toast("开启成功")
end
if gg.getRangesList("libanogs.so")[1] then
	local t = {}
	t[1] = gg.getRangesList("libanogs.so")[1]["start"] + 0x4E0950; -- 数值地址:0x739113C950
	t[2] = gg.getRangesList("libanogs.so")[1]["start"] + 0x4E0954; -- 数值地址:0x739113C954
	gg.setValues({
		[1] = { 
			address = t[1],
			flags = 4,
			value = 0,
		},
		[2] = { 
			address = t[2],
			flags = 4,
			value = 0,
		},
	})
	gg.toast("开启成功")
end
gg.alert("开启成功")
			gg.toast("开启成功")
string.toMusic('开启成功')
					end,
					function()

					end
				}, {
					"大厅",
					function()

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x2020}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17024, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x2080}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17024, freeze = true}})


if gg.getRangesList("libUE4.so")[1] then
	local t = {}
	t[1] = gg.getRangesList("libUE4.so")[1]["start"] + 0x28782B4; -- 数值地址:0x78312742B4
	t[2] = gg.getRangesList("libUE4.so")[1]["start"] + 0x287837C; -- 数值地址:0x783127437C
	t[3] = gg.getRangesList("libUE4.so")[1]["start"] + 0x28783E4; -- 数值地址:0x78312743E4
	t[4] = gg.getRangesList("libUE4.so")[1]["start"] + 0x2878418; -- 数值地址:0x7831274418
	t[5] = gg.getRangesList("libUE4.so")[1]["start"] + 0x287862C; -- 数值地址:0x783127462C
	t[6] = gg.getRangesList("libUE4.so")[1]["start"] + 0x2878660; -- 数值地址:0x7831274660
	t[7] = gg.getRangesList("libUE4.so")[1]["start"] + 0x2878694; -- 数值地址:0x7831274694
	t[8] = gg.getRangesList("libUE4.so")[1]["start"] + 0x28786C8; -- 数值地址:0x78312746C8
	t[9] = gg.getRangesList("libUE4.so")[1]["start"] + 0x2878C70; -- 数值地址:0x7831274C70
	t[10] = gg.getRangesList("libUE4.so")[1]["start"] + 0x2879074; -- 数值地址:0x7831275074
	t[11] = gg.getRangesList("libUE4.so")[1]["start"] + 0x28790A8; -- 数值地址:0x78312750A8
	t[12] = gg.getRangesList("libUE4.so")[1]["start"] + 0x287924C; -- 数值地址:0x783127524C
	t[13] = gg.getRangesList("libUE4.so")[1]["start"] + 0x2879280; -- 数值地址:0x7831275280
	t[14] = gg.getRangesList("libUE4.so")[1]["start"] + 0x2879644; -- 数值地址:0x7831275644
	t[15] = gg.getRangesList("libUE4.so")[1]["start"] + 0x2879678; -- 数值地址:0x7831275678
	t[16] = gg.getRangesList("libUE4.so")[1]["start"] + 0x28796AC; -- 数值地址:0x78312756AC
	t[17] = gg.getRangesList("libUE4.so")[1]["start"] + 0x28796E0; -- 数值地址:0x78312756E0
	t[18] = gg.getRangesList("libUE4.so")[1]["start"] + 0x2879714; -- 数值地址:0x7831275714
	t[19] = gg.getRangesList("libUE4.so")[1]["start"] + 0x2879860; -- 数值地址:0x7831275860
	t[20] = gg.getRangesList("libUE4.so")[1]["start"] + 0x2879894; -- 数值地址:0x7831275894
	t[21] = gg.getRangesList("libUE4.so")[1]["start"] + 0x2879B94; -- 数值地址:0x7831275B94
	t[22] = gg.getRangesList("libUE4.so")[1]["start"] + 0x2879BC8; -- 数值地址:0x7831275BC8
	t[23] = gg.getRangesList("libUE4.so")[1]["start"] + 0x2879D00; -- 数值地址:0x7831275D00
	t[24] = gg.getRangesList("libUE4.so")[1]["start"] + 0x2879D68; -- 数值地址:0x7831275D68
	t[25] = gg.getRangesList("libUE4.so")[1]["start"] + 0x2879D9C; -- 数值地址:0x7831275D9C
	t[26] = gg.getRangesList("libUE4.so")[1]["start"] + 0x2879DD0; -- 数值地址:0x7831275DD0
	t[27] = gg.getRangesList("libUE4.so")[1]["start"] + 0x2879FDC; -- 数值地址:0x7831275FDC
	t[28] = gg.getRangesList("libUE4.so")[1]["start"] + 0x2B3C2C4; -- 数值地址:0x78315382C4
	t[29] = gg.getRangesList("libUE4.so")[1]["start"] + 0x2B3CA34; -- 数值地址:0x7831538A34
	t[30] = gg.getRangesList("libUE4.so")[1]["start"] + 0x2B3CA68; -- 数值地址:0x7831538A68
	t[31] = gg.getRangesList("libUE4.so")[1]["start"] + 0x2B3CCDC; -- 数值地址:0x7831538CDC
	t[32] = gg.getRangesList("libUE4.so")[1]["start"] + 0x2B3CD10; -- 数值地址:0x7831538D10
	t[33] = gg.getRangesList("libUE4.so")[1]["start"] + 0x2B3CDC0; -- 数值地址:0x7831538DC0
	t[34] = gg.getRangesList("libUE4.so")[1]["start"] + 0x2B3CDF4; -- 数值地址:0x7831538DF4
	t[35] = gg.getRangesList("libUE4.so")[1]["start"] + 0x2B3CF68; -- 数值地址:0x7831538F68
	t[36] = gg.getRangesList("libUE4.so")[1]["start"] + 0x2B3CF9C; -- 数值地址:0x7831538F9C
	t[37] = gg.getRangesList("libUE4.so")[1]["start"] + 0x2B3D7F4; -- 数值地址:0x78315397F4
	t[38] = gg.getRangesList("libUE4.so")[1]["start"] + 0x2B3DDA4; -- 数值地址:0x7831539DA4
	t[39] = gg.getRangesList("libUE4.so")[1]["start"] + 0x2B3DE40; -- 数值地址:0x7831539E40
	t[40] = gg.getRangesList("libUE4.so")[1]["start"] + 0x2B3DF10; -- 数值地址:0x7831539F10
	gg.setValues({
		[1] = { 
			address = t[1],
			flags = 4,
			value = 17024,
		},
		[2] = { 
			address = t[2],
			flags = 4,
			value = 17024,
		},
		[3] = { 
			address = t[3],
			flags = 4,
			value = 17024,
		},
		[4] = { 
			address = t[4],
			flags = 4,
			value = 17024,
		},
		[5] = { 
			address = t[5],
			flags = 4,
			value = 17024,
		},
		[6] = { 
			address = t[6],
			flags = 4,
			value = 17024,
		},
		[7] = { 
			address = t[7],
			flags = 4,
			value = 17024,
		},
		[8] = { 
			address = t[8],
			flags = 4,
			value = 17024,
		},
		[9] = { 
			address = t[9],
			flags = 4,
			value = 17024,
		},
		[10] = { 
			address = t[10],
			flags = 4,
			value = 17024,
		},
		[11] = { 
			address = t[11],
			flags = 4,
			value = 17024,
		},
		[12] = { 
			address = t[12],
			flags = 4,
			value = 17024,
		},
		[13] = { 
			address = t[13],
			flags = 4,
			value = 17024,
		},
		[14] = { 
			address = t[14],
			flags = 4,
			value = 17024,
		},
		[15] = { 
			address = t[15],
			flags = 4,
			value = 17024,
		},
		[16] = { 
			address = t[16],
			flags = 4,
			value = 17024,
		},
		[17] = { 
			address = t[17],
			flags = 4,
			value = 17024,
		},
		[18] = { 
			address = t[18],
			flags = 4,
			value = 17024,
		},
		[19] = { 
			address = t[19],
			flags = 4,
			value = 17024,
		},
		[20] = { 
			address = t[20],
			flags = 4,
			value = 17024,
		},
		[21] = { 
			address = t[21],
			flags = 4,
			value = 17024,
		},
		[22] = { 
			address = t[22],
			flags = 4,
			value = 17024,
		},
		[23] = { 
			address = t[23],
			flags = 4,
			value = 17024,
		},
		[24] = { 
			address = t[24],
			flags = 4,
			value = 17024,
		},
		[25] = { 
			address = t[25],
			flags = 4,
			value = 17024,
		},
		[26] = { 
			address = t[26],
			flags = 4,
			value = 17024,
		},
		[27] = { 
			address = t[27],
			flags = 4,
			value = 17024,
		},
		[28] = { 
			address = t[28],
			flags = 4,
			value = 17024,
		},
		[29] = { 
			address = t[29],
			flags = 4,
			value = 17024,
		},
		[30] = { 
			address = t[30],
			flags = 4,
			value = 17024,
		},
		[31] = { 
			address = t[31],
			flags = 4,
			value = 17024,
		},
		[32] = { 
			address = t[32],
			flags = 4,
			value = 17024,
		},
		[33] = { 
			address = t[33],
			flags = 4,
			value = 17024,
		},
		[34] = { 
			address = t[34],
			flags = 4,
			value = 17024,
		},
		[35] = { 
			address = t[35],
			flags = 4,
			value = 17024,
		},
		[36] = { 
			address = t[36],
			flags = 4,
			value = 17024,
		},
		[37] = { 
			address = t[37],
			flags = 4,
			value = 17024,
		},
		[38] = { 
			address = t[38],
			flags = 4,
			value = 17024,
		},
		[39] = { 
			address = t[39],
			flags = 4,
			value = 17024,
		},
		[40] = { 
			address = t[40],
			flags = 4,
			value = 17024,
		},
	})
	gg.toast(" ")
end
gg.alert("开启成功")
			gg.toast("开启成功")
string.toMusic('开启成功')
					end,
					function()

					end
				
				},
			}),
			changan.text("单开防","#0077FF","15sp"),
			changan.text("","#545454","10sp"),
			changan.check({
				{
					"大厅v1",
					function()
local t = {"libanogs.so:bss", "Cb"}
local tt = {0x1194}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 64, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x1218}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 64, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x1318}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 64, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x1358}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 64, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x1388}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 64, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x4594}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 64, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x460C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 64, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x4660}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 64, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x5AC0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 64, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x5C04}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 64, freeze = true}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x16427C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 10240, freeze = true}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x16443C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 10240, freeze = true}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x4820E0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 10240, freeze = true}})

if gg.getRangesList("libanogs.so")[1] then
	local t = {}
	t[1] = gg.getRangesList("libanogs.so")[1]["start"] + 0x3C38E8; -- 数值地址:0x7A44D078E8
	t[2] = gg.getRangesList("libanogs.so")[1]["start"] + 0x3C480C; -- 数值地址:0x7A44D0880C
	t[3] = gg.getRangesList("libanogs.so")[1]["start"] + 0x3CCE50; -- 数值地址:0x7A44D10E50
	t[4] = gg.getRangesList("libanogs.so")[1]["start"] + 0x495140; -- 数值地址:0x7A44DD9140
	t[5] = gg.getRangesList("libanogs.so")[1]["start"] + 0x4969A0; -- 数值地址:0x7A44DDA9A0
	t[6] = gg.getRangesList("libanogs.so")[1]["start"] + 0x496F0C; -- 数值地址:0x7A44DDAF0C
	t[7] = gg.getRangesList("libanogs.so")[1]["start"] + 0x4995FC; -- 数值地址:0x7A44DDD5FC
	t[8] = gg.getRangesList("libanogs.so")[1]["start"] + 0x49A2DC; -- 数值地址:0x7A44DDE2DC
	t[9] = gg.getRangesList("libanogs.so")[1]["start"] + 0x49D2F4; -- 数值地址:0x7A44DE12F4
	t[10] = gg.getRangesList("libanogs.so")[1]["start"] + 0x49D334; -- 数值地址:0x7A44DE1334
	t[11] = gg.getRangesList("libanogs.so")[1]["start"] + 0x49D34C; -- 数值地址:0x7A44DE134C
	t[12] = gg.getRangesList("libanogs.so")[1]["start"] + 0x49D38C; -- 数值地址:0x7A44DE138C
	t[13] = gg.getRangesList("libanogs.so")[1]["start"] + 0x49D3C4; -- 数值地址:0x7A44DE13C4
	t[14] = gg.getRangesList("libanogs.so")[1]["start"] + 0x49D418; -- 数值地址:0x7A44DE1418
	t[15] = gg.getRangesList("libanogs.so")[1]["start"] + 0x49D430; -- 数值地址:0x7A44DE1430
	t[16] = gg.getRangesList("libanogs.so")[1]["start"] + 0x49D530; -- 数值地址:0x7A44DE1530
	t[17] = gg.getRangesList("libanogs.so")[1]["start"] + 0x49F570; -- 数值地址:0x7A44DE3570
	t[18] = gg.getRangesList("libanogs.so")[1]["start"] + 0x49F83C; -- 数值地址:0x7A44DE383C
	t[19] = gg.getRangesList("libanogs.so")[1]["start"] + 0x49F8C4; -- 数值地址:0x7A44DE38C4
	t[20] = gg.getRangesList("libanogs.so")[1]["start"] + 0x4A02B4; -- 数值地址:0x7A44DE42B4
	t[21] = gg.getRangesList("libanogs.so")[1]["start"] + 0x4A0318; -- 数值地址:0x7A44DE4318
	t[22] = gg.getRangesList("libanogs.so")[1]["start"] + 0x4A0384; -- 数值地址:0x7A44DE4384
	t[23] = gg.getRangesList("libanogs.so")[1]["start"] + 0x4A03E8; -- 数值地址:0x7A44DE43E8
	t[24] = gg.getRangesList("libanogs.so")[1]["start"] + 0x4A0600; -- 数值地址:0x7A44DE4600
	t[25] = gg.getRangesList("libanogs.so")[1]["start"] + 0x4A0618; -- 数值地址:0x7A44DE4618
	t[26] = gg.getRangesList("libanogs.so")[1]["start"] + 0x4A16A0; -- 数值地址:0x7A44DE56A0
	t[27] = gg.getRangesList("libanogs.so")[1]["start"] + 0x4A1728; -- 数值地址:0x7A44DE5728
	t[28] = gg.getRangesList("libanogs.so")[1]["start"] + 0x4A185C; -- 数值地址:0x7A44DE585C
	t[29] = gg.getRangesList("libanogs.so")[1]["start"] + 0x4A18D4; -- 数值地址:0x7A44DE58D4
	t[30] = gg.getRangesList("libanogs.so")[1]["start"] + 0x4A1910; -- 数值地址:0x7A44DE5910
	t[31] = gg.getRangesList("libanogs.so")[1]["start"] + 0x4A1938; -- 数值地址:0x7A44DE5938
	t[32] = gg.getRangesList("libanogs.so")[1]["start"] + 0x4A2518; -- 数值地址:0x7A44DE6518
	t[33] = gg.getRangesList("libanogs.so")[1]["start"] + 0x4A2530; -- 数值地址:0x7A44DE6530
	t[34] = gg.getRangesList("libanogs.so")[1]["start"] + 0x4A25A4; -- 数值地址:0x7A44DE65A4
	t[35] = gg.getRangesList("libanogs.so")[1]["start"] + 0x4A261C; -- 数值地址:0x7A44DE661C
	t[36] = gg.getRangesList("libanogs.so")[1]["start"] + 0x4A2794; -- 数值地址:0x7A44DE6794
	t[37] = gg.getRangesList("libanogs.so")[1]["start"] + 0x4A2810; -- 数值地址:0x7A44DE6810
	t[38] = gg.getRangesList("libanogs.so")[1]["start"] + 0x4A2838; -- 数值地址:0x7A44DE6838
	t[39] = gg.getRangesList("libanogs.so")[1]["start"] + 0x4A63F8; -- 数值地址:0x7A44DEA3F8
	t[40] = gg.getRangesList("libanogs.so")[1]["start"] + 0x4A6E7C; -- 数值地址:0x7A44DEAE7C
	t[41] = gg.getRangesList("libanogs.so")[1]["start"] + 0x4A8828; -- 数值地址:0x7A44DEC828
	t[42] = gg.getRangesList("libanogs.so")[1]["start"] + 0x4A8864; -- 数值地址:0x7A44DEC864
	t[43] = gg.getRangesList("libanogs.so")[1]["start"] + 0x4A898C; -- 数值地址:0x7A44DEC98C
	t[44] = gg.getRangesList("libanogs.so")[1]["start"] + 0x4A8D60; -- 数值地址:0x7A44DECD60
	gg.setValues({
		[1] = { 
			address = t[1],
			flags = 4,
			value = 1074274308,
		},
		[2] = { 
			address = t[2],
			flags = 4,
			value = 1074274308,
		},
		[3] = { 
			address = t[3],
			flags = 4,
			value = 1074274308,
		},
		[4] = { 
			address = t[4],
			flags = 4,
			value = 1074274308,
		},
		[5] = { 
			address = t[5],
			flags = 4,
			value = 1074274308,
		},
		[6] = { 
			address = t[6],
			flags = 4,
			value = 1074274308,
		},
		[7] = { 
			address = t[7],
			flags = 4,
			value = 1074274308,
		},
		[8] = { 
			address = t[8],
			flags = 4,
			value = 1074274308,
		},
		[9] = { 
			address = t[9],
			flags = 4,
			value = 1074274308,
		},
		[10] = { 
			address = t[10],
			flags = 4,
			value = 1074274308,
		},
		[11] = { 
			address = t[11],
			flags = 4,
			value = 1074274308,
		},
		[12] = { 
			address = t[12],
			flags = 4,
			value = 1074274308,
		},
		[13] = { 
			address = t[13],
			flags = 4,
			value = 1074274308,
		},
		[14] = { 
			address = t[14],
			flags = 4,
			value = 1074274308,
		},
		[15] = { 
			address = t[15],
			flags = 4,
			value = 1074274308,
		},
		[16] = { 
			address = t[16],
			flags = 4,
			value = 1074274308,
		},
		[17] = { 
			address = t[17],
			flags = 4,
			value = 1074274308,
		},
		[18] = { 
			address = t[18],
			flags = 4,
			value = 1074274308,
		},
		[19] = { 
			address = t[19],
			flags = 4,
			value = 1074274308,
		},
		[20] = { 
			address = t[20],
			flags = 4,
			value = 1074274308,
		},
		[21] = { 
			address = t[21],
			flags = 4,
			value = 1074274308,
		},
		[22] = { 
			address = t[22],
			flags = 4,
			value = 1074274308,
		},
		[23] = { 
			address = t[23],
			flags = 4,
			value = 1074274308,
		},
		[24] = { 
			address = t[24],
			flags = 4,
			value = 1074274308,
		},
		[25] = { 
			address = t[25],
			flags = 4,
			value = 1074274308,
		},
		[26] = { 
			address = t[26],
			flags = 4,
			value = 1074274308,
		},
		[27] = { 
			address = t[27],
			flags = 4,
			value = 1074274308,
		},
		[28] = { 
			address = t[28],
			flags = 4,
			value = 1074274308,
		},
		[29] = { 
			address = t[29],
			flags = 4,
			value = 1074274308,
		},
		[30] = { 
			address = t[30],
			flags = 4,
			value = 1074274308,
		},
		[31] = { 
			address = t[31],
			flags = 4,
			value = 1074274308,
		},
		[32] = { 
			address = t[32],
			flags = 4,
			value = 1074274308,
		},
		[33] = { 
			address = t[33],
			flags = 4,
			value = 1074274308,
		},
		[34] = { 
			address = t[34],
			flags = 4,
			value = 1074274308,
		},
		[35] = { 
			address = t[35],
			flags = 4,
			value = 1074274308,
		},
		[36] = { 
			address = t[36],
			flags = 4,
			value = 1074274308,
		},
		[37] = { 
			address = t[37],
			flags = 4,
			value = 1074274308,
		},
		[38] = { 
			address = t[38],
			flags = 4,
			value = 1074274308,
		},
		[39] = { 
			address = t[39],
			flags = 4,
			value = 1074274308,
		},
		[40] = { 
			address = t[40],
			flags = 4,
			value = 1074274308,
		},
		[41] = { 
			address = t[41],
			flags = 4,
			value = 1074274308,
		},
		[42] = { 
			address = t[42],
			flags = 4,
			value = 1074274308,
		},
		[43] = { 
			address = t[43],
			flags = 4,
			value = 1074274308,
		},
		[44] = { 
			address = t[44],
			flags = 4,
			value = 1074274308,
		},
	})
	gg.toast("开启成功")
end
gg.alert("开启成功")
			gg.toast("开启成功")
string.toMusic('开启成功')
					end,
					function()

					end
				}, {
					"v1[2]",
					function()
	local t = {"libanogs.so:bss", "Cb"}
local tt = {0x8, 0x80}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 2, freeze = true}})

local t = {"libanogs.so", "Cd"}
local tt = {0x57D10, 0x38, 0x80}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 2, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x2518, 0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 65538, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x2518, 0x60}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 65538, freeze = true}})
gg.alert("开启成功")
			gg.toast("开启成功")
string.toMusic('开启成功')				
					
					end,
					function()

					end
	}, {
					"登录v1",
					function()
if gg.getRangesList("libanogs.so")[1] then
	local t = {}
	t[1] = gg.getRangesList("libanogs.so")[1]["start"] + 0x3CB49C; -- 数值地址:0x7A44F5D49C
	gg.setValues({
		[1] = { 
			address = t[1],
			flags = 4,
			value = -1,
		},
	})
	gg.toast("开启成功")
end					
					
local t = {"libanogs.so:bss", "Cb"}
local tt = {0x14D8, 0x278, 0x37C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17042, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x14D8, 0x278, 0x354}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17042, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x14D8, 0x278, 0x3A4}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17042, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x14D8, 0x290, 0x364}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17042, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x14D8, 0x290, 0x33C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17042, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x14D8, 0x290, 0x38C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17042, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x13E0, 0xF0, 0x278, 0x37C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17042, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x13E0, 0xF0, 0x278, 0x354}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17042, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x13E0, 0xF0, 0x278, 0x3A4}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17042, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x13E0, 0xF0, 0x290, 0x364}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17042, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x13E0, 0xF0, 0x290, 0x33C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17042, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x13E0, 0xF0, 0x290, 0x38C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17042, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x14D8, 0x268, 0x10, 0x394}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17042, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x14D8, 0x268, 0x10, 0x36C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17042, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x14D8, 0x268, 0x10, 0x3BC}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17042, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x14D8, 0x260, 0x2E0, 0x394}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17042, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x14D8, 0x260, 0x2E0, 0x36C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17042, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x14D8, 0x260, 0x2E0, 0x3BC}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17042, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x14D8, 0x278, 0x10, 0x364}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17042, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x14D8, 0x278, 0x10, 0x33C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17042, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x14D8, 0x278, 0x10, 0x38C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17042, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x14D8, 0x278, 0x37C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17042, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x14D8, 0x278, 0x354}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17042, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x14D8, 0x278, 0x3A4}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17042, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x14D8, 0x290, 0x364}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17042, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x14D8, 0x290, 0x33C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17042, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x14D8, 0x290, 0x38C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17042, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x13E0, 0xF0, 0x278, 0x37C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17042, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x13E0, 0xF0, 0x278, 0x354}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17042, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x13E0, 0xF0, 0x278, 0x3A4}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17042, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x13E0, 0xF0, 0x290, 0x364}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17042, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x13E0, 0xF0, 0x290, 0x33C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17042, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x13E0, 0xF0, 0x290, 0x38C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17042, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x14D8, 0x268, 0x10, 0x394}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17042, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x14D8, 0x268, 0x10, 0x36C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17042, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x14D8, 0x268, 0x10, 0x3BC}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17042, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x14D8, 0x260, 0x2E0, 0x394}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17042, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x14D8, 0x260, 0x2E0, 0x36C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17042, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x14D8, 0x260, 0x2E0, 0x3BC}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17042, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x14D8, 0x278, 0x10, 0x364}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17042, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x14D8, 0x278, 0x10, 0x33C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17042, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x14D8, 0x278, 0x10, 0x38C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17042, freeze = true}})	


gg.alert("开启成功，必须退出登录，然后重进游戏开启，或者你打完了，退出登录下次就不用这么麻烦")
			gg.toast("开启成功")
string.toMusic('开启成功')				
					end,
					function()

					end				
					
						}, {
					"大厅v2",
					function()
if gg.getRangesList("libanogs.so")[1] then
	local t = {}
	t[1] = gg.getRangesList("libanogs.so")[1]["start"] + 0x4F66F8; -- 数值地址:0x7A495D06F8
	t[2] = gg.getRangesList("libanogs.so")[1]["start"] + 0x4F6700; -- 数值地址:0x7A495D0700
	t[3] = gg.getRangesList("libanogs.so")[1]["start"] + 0x4F67E8; -- 数值地址:0x7A495D07E8
	t[4] = gg.getRangesList("libanogs.so")[1]["start"] + 0x4F6AB8; -- 数值地址:0x7A495D0AB8
	t[5] = gg.getRangesList("libanogs.so")[1]["start"] + 0x50B040; -- 数值地址:0x7A495E5040
	gg.setValues({
		[1] = { 
			address = t[1],
			flags = 4,
			value = 2028,
		},
		[2] = { 
			address = t[2],
			flags = 4,
			value = 2028,
		},
		[3] = { 
			address = t[3],
			flags = 4,
			value = 2028,
		},
		[4] = { 
			address = t[4],
			flags = 4,
			value = 2028,
		},
		[5] = { 
			address = t[5],
			flags = 4,
			value = 2028,
		},
	})
	gg.toast("开启成功")
end
gg.alert("开启成功")
			gg.toast("开启成功")
string.toMusic('开启成功')

					end,
					function()

					end				


	}, {
					"大厅v3",
					function()
if gg.getRangesList("libanogs.so")[1] then
	local t = {}
	t[1] = gg.getRangesList("libanogs.so")[1]["start"] + 0xCB8DC; -- 数值地址:0x7A491A58DC
	t[2] = gg.getRangesList("libanogs.so")[1]["start"] + 0xCB8E0; -- 数值地址:0x7A491A58E0
	t[3] = gg.getRangesList("libanogs.so")[1]["start"] + 0xCB8E4; -- 数值地址:0x7A491A58E4
	t[4] = gg.getRangesList("libanogs.so")[1]["start"] + 0xCB8E8; -- 数值地址:0x7A491A58E8
	t[5] = gg.getRangesList("libanogs.so")[1]["start"] + 0xCB8EC; -- 数值地址:0x7A491A58EC
	t[6] = gg.getRangesList("libanogs.so")[1]["start"] + 0xCB8F0; -- 数值地址:0x7A491A58F0
	t[7] = gg.getRangesList("libanogs.so")[1]["start"] + 0xCB8F4; -- 数值地址:0x7A491A58F4
	t[8] = gg.getRangesList("libanogs.so")[1]["start"] + 0xCB8F8; -- 数值地址:0x7A491A58F8
	t[9] = gg.getRangesList("libanogs.so")[1]["start"] + 0xCB8FC; -- 数值地址:0x7A491A58FC
	t[10] = gg.getRangesList("libanogs.so")[1]["start"] + 0xCB900; -- 数值地址:0x7A491A5900
	t[11] = gg.getRangesList("libanogs.so")[1]["start"] + 0xCB904; -- 数值地址:0x7A491A5904
	t[12] = gg.getRangesList("libanogs.so")[1]["start"] + 0xCB908; -- 数值地址:0x7A491A5908
	t[13] = gg.getRangesList("libanogs.so")[1]["start"] + 0xCB90C; -- 数值地址:0x7A491A590C
	t[14] = gg.getRangesList("libanogs.so")[1]["start"] + 0xCB910; -- 数值地址:0x7A491A5910
	t[15] = gg.getRangesList("libanogs.so")[1]["start"] + 0xCB914; -- 数值地址:0x7A491A5914
	t[16] = gg.getRangesList("libanogs.so")[1]["start"] + 0xCB918; -- 数值地址:0x7A491A5918
	t[17] = gg.getRangesList("libanogs.so")[1]["start"] + 0xCB91C; -- 数值地址:0x7A491A591C
	t[18] = gg.getRangesList("libanogs.so")[1]["start"] + 0xCB920; -- 数值地址:0x7A491A5920
	t[19] = gg.getRangesList("libanogs.so")[1]["start"] + 0xCB924; -- 数值地址:0x7A491A5924
	t[20] = gg.getRangesList("libanogs.so")[1]["start"] + 0xCB95C; -- 数值地址:0x7A491A595C
	t[21] = gg.getRangesList("libanogs.so")[1]["start"] + 0xCB960; -- 数值地址:0x7A491A5960
	t[22] = gg.getRangesList("libanogs.so")[1]["start"] + 0xCB964; -- 数值地址:0x7A491A5964
	t[23] = gg.getRangesList("libanogs.so")[1]["start"] + 0xCB968; -- 数值地址:0x7A491A5968
	t[24] = gg.getRangesList("libanogs.so")[1]["start"] + 0xCB96C; -- 数值地址:0x7A491A596C
	t[25] = gg.getRangesList("libanogs.so")[1]["start"] + 0xCB970; -- 数值地址:0x7A491A5970
	t[26] = gg.getRangesList("libanogs.so")[1]["start"] + 0xCB974; -- 数值地址:0x7A491A5974
	t[27] = gg.getRangesList("libanogs.so")[1]["start"] + 0xCB978; -- 数值地址:0x7A491A5978
	t[28] = gg.getRangesList("libanogs.so")[1]["start"] + 0xCB97C; -- 数值地址:0x7A491A597C
	t[29] = gg.getRangesList("libanogs.so")[1]["start"] + 0xCB980; -- 数值地址:0x7A491A5980
	t[30] = gg.getRangesList("libanogs.so")[1]["start"] + 0xCB984; -- 数值地址:0x7A491A5984
	t[31] = gg.getRangesList("libanogs.so")[1]["start"] + 0xCB988; -- 数值地址:0x7A491A5988
	t[32] = gg.getRangesList("libanogs.so")[1]["start"] + 0xCB98C; -- 数值地址:0x7A491A598C
	t[33] = gg.getRangesList("libanogs.so")[1]["start"] + 0xCB990; -- 数值地址:0x7A491A5990
	t[34] = gg.getRangesList("libanogs.so")[1]["start"] + 0xCB994; -- 数值地址:0x7A491A5994
	t[35] = gg.getRangesList("libanogs.so")[1]["start"] + 0xCB998; -- 数值地址:0x7A491A5998
	t[36] = gg.getRangesList("libanogs.so")[1]["start"] + 0xCB99C; -- 数值地址:0x7A491A599C
	t[37] = gg.getRangesList("libanogs.so")[1]["start"] + 0xCB9A0; -- 数值地址:0x7A491A59A0
	t[38] = gg.getRangesList("libanogs.so")[1]["start"] + 0xCB9A4; -- 数值地址:0x7A491A59A4
	t[39] = gg.getRangesList("libanogs.so")[1]["start"] + 0xCB9DC; -- 数值地址:0x7A491A59DC
	gg.setValues({
		[1] = { 
			address = t[1],
			flags = 4,
			value = 256,
		},
		[2] = { 
			address = t[2],
			flags = 4,
			value = 256,
		},
		[3] = { 
			address = t[3],
			flags = 4,
			value = 256,
		},
		[4] = { 
			address = t[4],
			flags = 4,
			value = 256,
		},
		[5] = { 
			address = t[5],
			flags = 4,
			value = 256,
		},
		[6] = { 
			address = t[6],
			flags = 4,
			value = 256,
		},
		[7] = { 
			address = t[7],
			flags = 4,
			value = 256,
		},
		[8] = { 
			address = t[8],
			flags = 4,
			value = 256,
		},
		[9] = { 
			address = t[9],
			flags = 4,
			value = 256,
		},
		[10] = { 
			address = t[10],
			flags = 4,
			value = 256,
		},
		[11] = { 
			address = t[11],
			flags = 4,
			value = 256,
		},
		[12] = { 
			address = t[12],
			flags = 4,
			value = 256,
		},
		[13] = { 
			address = t[13],
			flags = 4,
			value = 256,
		},
		[14] = { 
			address = t[14],
			flags = 4,
			value = 256,
		},
		[15] = { 
			address = t[15],
			flags = 4,
			value = 256,
		},
		[16] = { 
			address = t[16],
			flags = 4,
			value = 256,
		},
		[17] = { 
			address = t[17],
			flags = 4,
			value = 256,
		},
		[18] = { 
			address = t[18],
			flags = 4,
			value = 256,
		},
		[19] = { 
			address = t[19],
			flags = 4,
			value = 256,
		},
		[20] = { 
			address = t[20],
			flags = 4,
			value = 256,
		},
		[21] = { 
			address = t[21],
			flags = 4,
			value = 256,
		},
		[22] = { 
			address = t[22],
			flags = 4,
			value = 256,
		},
		[23] = { 
			address = t[23],
			flags = 4,
			value = 256,
		},
		[24] = { 
			address = t[24],
			flags = 4,
			value = 256,
		},
		[25] = { 
			address = t[25],
			flags = 4,
			value = 256,
		},
		[26] = { 
			address = t[26],
			flags = 4,
			value = 256,
		},
		[27] = { 
			address = t[27],
			flags = 4,
			value = 256,
		},
		[28] = { 
			address = t[28],
			flags = 4,
			value = 256,
		},
		[29] = { 
			address = t[29],
			flags = 4,
			value = 256,
		},
		[30] = { 
			address = t[30],
			flags = 4,
			value = 256,
		},
		[31] = { 
			address = t[31],
			flags = 4,
			value = 256,
		},
		[32] = { 
			address = t[32],
			flags = 4,
			value = 256,
		},
		[33] = { 
			address = t[33],
			flags = 4,
			value = 256,
		},
		[34] = { 
			address = t[34],
			flags = 4,
			value = 256,
		},
		[35] = { 
			address = t[35],
			flags = 4,
			value = 256,
		},
		[36] = { 
			address = t[36],
			flags = 4,
			value = 256,
		},
		[37] = { 
			address = t[37],
			flags = 4,
			value = 256,
		},
		[38] = { 
			address = t[38],
			flags = 4,
			value = 256,
		},
		[39] = { 
			address = t[39],
			flags = 4,
			value = 256,
		},
	})
	gg.toast("开启成功")
end
gg.alert("开启成功")
			gg.toast("开启成功")
string.toMusic('开启成功')

					end,
					function()

					end				



					
							},
			}),
		
				
			changan.button("退出",function()
				luajava.setFloatingWindowHide(false)
				tuichu=1
			end),




			
			
		}, {
				
			changan.check({
				{
					"聚点",
					function()
so=gg.getRangesList('libUE4.so')[1].start
py=0x53F6AC4
setvalue(so+py,16,8.47963525e-21)
					end,
					function()
so=gg.getRangesList('libUE4.so')[1].start
py=0x53F6AC4
setvalue(so+py,16,8.47963525e-21)
					end
				}, {
					"广角",
					function()
so=gg.getRangesList('libUE4.so')[1].start
py=0x32D8CE8
setvalue(so+py,16,2)
					end,
					function()
so=gg.getRangesList('libUE4.so')[1].start
py=0x32D8CE8
setvalue(so+py,16,2)
					end
				},
			}),
			
			changan.check({
				{
					"除雾",
					function()
so=gg.getRangesList('libUE4.so')[1].start--除雾
py=0x7A11948
setvalue(so+py,16,8.95671814e-21)
					end,
					function()

					end
				}, {
					"防抖",
					function()
so=gg.getRangesList('libUE4.so')[1].start--手臂防抖
py=0x5FA1000
setvalue(so+py,16,2.19933704e12)
--xa偏移cd  8.93629065e-21  改  8.8411673e-21
so=gg.getRangesList('libUE4.so')[1].start--倍镜防抖
py=0x88195C4
setvalue(so+py,16,8.8411673e-21)
					end,
					function()

					end
				}, {
					"喷子聚点",
					function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x39488,0x0,0x1A0,0x8,0x7B8,0xB28}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 0}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x39488,0x0,0x1A0,0x8,0x7B8,0xB2C}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 0}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x39488,0x0,0x1A0,0x8,0x7B8,0xB30}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 0}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x39488,0x0,0x1A0,0x8,0x7B8,0xB34}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 0}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x39488,0x0,0x1A0,0x8,0x7B8,0xB40}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 0}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x39488,0x0,0x1A0,0x0,0x7B8,0xB28}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 0}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x39488,0x0,0x1A0,0x0,0x7B8,0xB2C}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 0}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x39488,0x0,0x1A0,0x0,0x7B8,0xB30}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 0}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x39488,0x0,0x1A0,0x0,0x7B8,0xB34}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 0}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x39488,0x0,0x1A0,0x0,0x7B8,0xB40}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 0}})
					end,
					function()

					end
				},
			}),
			
			changan.check({
				{
					"攀爬穿墙",
					function()
local t = {"libUE4.so:bss", "Cb"}--攀爬穿墙  10;45;40改善10改9999
local tt = {0x39488,0x0,0x2F0,0x1E0,0x2CC}
local ttt = S_Pointer(t, tt, true) 
gg.setValues({{address = ttt, flags = 16, value = 9999}})
					end,
					function()

					end
				}, {
					"跳远",
					function()
local t = {"libUE4.so:bss", "Cb"}--微加速  479.5改1400
local tt = {0x39488,0x0,0x1014}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1400}})

local t = {"libUE4.so:bss", "Cb"}--惯性  8192改99999
local tt = {0x39488,0x0,0x460,0x208}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 99999}})

local t = {"libUE4.so:bss", "Cb"}--跳远跟微加速  479.5上面的那条1改1~3
local tt = {0x39488,0x0,0x1010}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1.7}})

local t = {"libUE4.so:bss", "Cb"}--重力  443上面的那条1改1~3
local tt = {0x39488,0x0,0x460,0x1AC}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1.4}})
					end,
					function()
local t = {"libUE4.so:bss", "Cb"}--微加速  479.5改1400
local tt = {0x39488,0x0,0x1014}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 479.5}})

local t = {"libUE4.so:bss", "Cb"}--惯性  8192改99999
local tt = {0x39488,0x0,0x460,0x208}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 8192}})

local t = {"libUE4.so:bss", "Cb"}--跳远跟微加速  479.5上面的那条1改1~3
local tt = {0x39488,0x0,0x1010}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1}})

local t = {"libUE4.so:bss", "Cb"}--重力  443上面的那条1改1~3
local tt = {0x39488,0x0,0x460,0x1AC}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1}})
					end
				}, {
					"锁帧",
					function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x4A4108, 0x74}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = 120, freeze = true}})
					end,
					function()

					end
				},{
					"打击特效",
					function()
OP=gg.prompt({'10至5000'},{[1]='2000'},{[1]='number'})
	if OP == nil or OP[1] == '' or OP[1] == '0' then gg.toast("取消")
		else
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x484030,0x30,0x488,0x568,0x10}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = OP[1], freeze = true}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x484030,0x30,0x488,0x568,0x50}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = OP[1], freeze = true}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x484030,0x30,0x488,0x568,0x90}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = OP[1], freeze = true}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x484030,0x30,0x488,0x568,0xD0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = OP[1], freeze = true}})
end

					end,
					function()
OP=gg.prompt({'10至5000'},{[1]='2000'},{[1]='number'})
	if OP == nil or OP[1] == '' or OP[1] == '0' then gg.toast("取消")
		else
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x484030,0x30,0x488,0x568,0x10}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = OP[1], freeze = true}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x484030,0x30,0x488,0x568,0x50}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = OP[1], freeze = true}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x484030,0x30,0x488,0x568,0x90}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = OP[1], freeze = true}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x484030,0x30,0x488,0x568,0xD0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = OP[1], freeze = true}})
					end
					end
					
				},
			}),
			
			changan.check({
				{
					"人物加速",
					function()
so=gg.getRangesList('libUE4.so')[1].start
py=0x89294B4
setvalue(so+py,16,-3.4564993e10)
					end,
					function()
so=gg.getRangesList('libUE4.so')[1].start
py=0x89294B4
setvalue(so+py,16,8.50279631e-21)
					end
				}, {
					"枪械变大",
					function()
OP=gg.prompt({'1至10'},{[1]='3'},{[1]='number'})
	if OP == nil or OP[1] == '' or OP[1] == '0' then gg.toast("取消")
		else
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x39488,0x0,0xDC8,0x50,0x580}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = OP[1]}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x39488,0x0,0xDC8,0x50,0x584}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = OP[1]}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x39488,0x0,0xDC8,0x50,0x588}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = OP[1]}})
end
					end,
					function()

					end
				}, {
					"子弹变大",
					function()
OP=gg.prompt({'1至50'},{[1]='10'},{[1]='number'})
	if OP == nil or OP[1] == '' or OP[1] == '0' then gg.toast("取消")
		else
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x39488,0x0,0xDC8,0x50,0xF78}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = OP[1]}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x39488,0x0,0xDC8,0x50,0xF7C}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = OP[1]}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x39488,0x0,0xDC8,0x50,0xF80}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = OP[1]}})
end
					end,
					function()

					end
				},{
					"人物变大",
					function()
					k = gg.prompt({"你的数值修改: [1;5]"},{"2"},{"number"})
if k== nil then else
R=k[1]
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x39488,0x0,0x1B0,0x1C0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = R, freeze = true}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x39488,0x0,0x1B0,0x1C4}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = R, freeze = true}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x39488,0x0,0x1B0,0x1C8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = R, freeze = true}})
end
					end,
					function()

					end
				},{
					"人物反向",
					function()
k = gg.prompt({"你的数值修改: [-1;1]"},{"-1"},{"number"})
if k== nil then else
R=k[1]
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x39488,0x0,0x1B0,0x1C0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = R, freeze = true}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x39488,0x0,0x1B0,0x1C4}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = R, freeze = true}})
end
					end,
					function()

					end
				},{
					"广角2",
					function()
k = gg.prompt({"你的数值修改: [90;150]"},{"110"},{"number"})
if k== nil then else
R=k[1]
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x39488,0x0,0x2F0,0x170,0x31C}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = R}})
end
					end,
					function()

					end
				},{
					"增加爆率",
					function()

					end,
					function()

					end
				
				},{
					"独家范围",
					function()
LSQ_Chain({'libUE4.so:bss','Cb'},{0x39488,0x0,0x458,0x6F8,0x328,0x38,0x70,0x38,0x90},"修改","150",16,"1")
LSQ_Chain({'libUE4.so:bss','Cb'},{0x39488,0x0,0x458,0x6F8,0x328,0x38,0x70,0x38,0x88},"修改","150",16,"1")
LSQ_Chain({'libUE4.so:bss','Cb'},{0x39488,0x0,0x458,0x6F8,0x328,0x38,0x70,0x38,0x8C},"修改","150",16,"1")
					end,
					function()

					end
				},{
					"全自动",
					function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x39488,0x0,0x1A0,0x0,0xEBC}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value =2306 , freeze = true}})
					end,
					function()

					end
				},{
					"六道模式",
					function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x39488,0x0,0x2650,0x7B8,0x518}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 0}})
					end,
					function()

					end
				},
			}),
			changan.text("\n\n\n"),
			changan.button("退出",function()
				luajava.setFloatingWindowHide(false)
				tuichu=1
				end),
		
		
--2

		}, {
--3},changan.button("选择进程",gg.setProcessX),
			
			changan.check({
				{
					"衣服美化",
					function()
local UE4 = gg.getRangesList("libUE4.so")
    if not UE4 or #UE4 == 0 then
        os.exit()
    end
    local base_pointer = readPointer('libUE4.so', {0xC36A488,0x0,0x390,0x90,0x390,0x0}, 1)
    local pointers = {
		[1] = {pointer = base_pointer + 0x3C, name = "脸部"},
		[2] = {pointer = base_pointer + 0x74, name = "头发"},
		[3] = {pointer = base_pointer + 0x11C, name = "衣服"},
		[4] = {pointer = base_pointer + 0x154, name = "裤子"},
		[5] = {pointer = base_pointer + 0x18C, name = "鞋子"},
		[6] = {pointer = base_pointer + 0x1C4, name = "背包"},
		[7] = {pointer = base_pointer + 0x1FC, name = "头盔"}
    }
    local config_path = gg.EXT_FILES_DIR:gsub("%lua$", "") .. "/PUBG配置.ini"
    local config_data = loadfile(config_path)
    local config = config_data and config_data()
    if not config or #config == 0 then
        config = {}
    end
    
    local values = {}
    local names = {}
    
    for i, p in ipairs(pointers) do
        table.insert(names, p.name.."代码:")
        table.insert(values, config[i])
    end
    
    table.insert(names, "是否修改背包和头盔")
    table.insert(values, config[8])

    local options = gg.prompt(names, values, {"number", "number", "number", "number", "number", "number", "number", "checkbox"})

    if options then

        gg.saveVariable(options, config_path)
        
        for i, p in ipairs(pointers) do        
            if i==6 or i==7 or options[i]==""then else
            gg.edits(p.pointer-4, {{options[i], 4, 0}}, p.name)
            end
        end
        
        if options[8] then
        if options[6]==""then else
            gg.edits(pointers[6].pointer-4, {{options[6], 4, 0}}, pointers[6].name)
            end
        if options[7]==""then else
            gg.edits(pointers[7].pointer-4, {{options[7], 4, 0}}, pointers[7].name)
           end
        end
        
    end

					end,
					function()

					end
				}, {
					"枪械美化",
					function()
local UE4 = gg.getRangesList("libUE4.so")
    if not UE4 or #UE4 == 0 then
        os.exit()
    end
    local base_pointer = readPointer('libUE4.so', {0xC672E60,0x270,0x10,0x30,0x38,0x0}, 1)
    local pointers = {
        [1] = {pointer = base_pointer + 0x3C, name = "枪皮"},
        [2] = {pointer = base_pointer + 0x74, name = "枪托"},
        [3] = {pointer = base_pointer + 0x11C, name = "弹夹"},
        [4] = {pointer = base_pointer + 0x154, name = "握把"},
        [5] = {pointer = base_pointer + 0x18C, name = "枪口"},
        [6] = {pointer = base_pointer + 0x1C4, name = "倍镜"},
        [7] = {pointer = base_pointer + 0x1FC, name = "特效"}
    }

    local config_path = gg.EXT_FILES_DIR:gsub("%lua$", "") .. "/PUBG配置.ini"
    local config_data = loadfile(config_path)
    local config = config_data and config_data()
    if not config or #config == 0 then
        config = {}
    end
    
    local values = {}
    local names = {}
    
    for i, p in ipairs(pointers) do
        table.insert(names, p.name.."代码:")
        table.insert(values, config[i])
    end
    
    table.insert(names, "是否修改枪械和特效")
    table.insert(values, config[8])

    local options = gg.prompt(names, values, {"number", "number", "number", "number", "number", "number", "number", "checkbox"})

    if options then
    
        gg.saveVariable(options, config_path)
        
        for i, p in ipairs(pointers) do        
            if i==6 or i==7 or options[i]==""then else
            gg.edits(p.pointer-4, {{options[i], 4, 0}}, p.name)
            end
        end
        
        if options[8] then
        if options[6]==""then else
            gg.edits(pointers[6].pointer-4, {{options[6], 4, 0}}, pointers[6].name)
            end
        if options[7]==""then else
            gg.edits(pointers[7].pointer-4, {{options[7], 4, 0}}, pointers[7].name)
           end
        end
     end
					end,
					function()

					end
							},
			}),
			changan.text("\n\n\n"),
			changan.button("退出",function()
				luajava.setFloatingWindowHide(false)
				tuichu=1
				end),

--配置表添加表即可加页数，只需要与上边菜单标题数对应

		}, {
--第四页
			
			changan.check({
				{
					"探头路飞",
					function()
ddsl = readPointer('libUE4.so:bss', {0x39488,0x0,0x460,0x1C4}, 1)
lhsl = readPointer('libUE4.so:bss', {0x39488,0x0,0x90,0x608,0x38}, 1)
ttsl = readPointer('libUE4.so:bss', {0x39488,0x0,0x458,0xA00,0x490,0x560}, 1)
local jznbsl = readPointer('libUE4.so:bss', {0x47D018,0x20,0x270}, 1)--
local jzdxsl = readPointer('libUE4.so:bss', {0x47D018,0x20,0x27C}, 1)--
local jzsxsl = readPointer('libUE4.so:bss', {0x47D018,0x20,0x29C}, 1)--
zbxsl = readPointer('libUE4.so:bss', {0x39488,0x0,0x1B0,0x1B0}, 1)--x
zbysl = readPointer('libUE4.so:bss', {0x39488,0x0,0x1B0,0x1B4}, 1)--y
zbzsl = readPointer('libUE4.so:bss', {0x39488,0x0,0x1B0,0x1B8}, 1)--z

ttlf={}
ttlf[1]={}
ttlf[1].address=ttsl
ttlf[1].flags=16
ttlf[2]={}
ttlf[2].address=jznbsl
ttlf[2].flags=16
ttlf[3]={}
ttlf[3].address=jzdxsl
ttlf[3].flags=16
ttlf[4]={}
ttlf[4].address=jzsxsl
ttlf[4].flags=16
ttlf[5]={}
ttlf[5].address=zbxsl
ttlf[5].flags=16
ttlf[6]={}
ttlf[6].address=zbysl
ttlf[6].flags=16
ttlf[7]={}
ttlf[7].address=zbzsl
ttlf[7].flags=16
jznb=gg.getValues(ttlf)[2].value--矩阵方位南北
jzdx=gg.getValues(ttlf)[3].value--矩阵方位东西
jzsx=gg.getValues(ttlf)[4].value--矩阵方位上下
zbx=gg.getValues(ttlf)[5].value--坐标x
zby=gg.getValues(ttlf)[6].value--坐标y
zbz=gg.getValues(ttlf)[7].value--坐标z
while(true)do--开始循环
tt=gg.getValues(ttlf)[1].value--探头值
if tt<0 then--左探头
gg.edits(ddsl, {{0, 4, 0, false}})
gg.edits(lhsl, {{500, 4, 0, false}})
if jzsx>-0.8 and jzsx<0.5 then--视角中
if jznb<-0.5 and jznb>-1.2 then--南
gg.edits(zbxsl, {{zbx+100, 16, 0, true}})
gg.edits(zbysl, {{zby+300, 16, 0, true}})
gg.edits(zbzsl, {{zbz, 16, 0, true}})
else
if jznb>0.5 and jznb<1.2 then--北
gg.edits(zbxsl, {{zbx-100, 16, 0, true}})
gg.edits(zbysl, {{zby-300, 16, 0, true}})
gg.edits(zbzsl, {{zbz, 16, 0, true}})
else
if jzdx<-0.5 and jzdx>-1.2 then--西
gg.edits(zbxsl, {{zbx-300, 16, 0, true}})
gg.edits(zbysl, {{zby+100, 16, 0, true}})
gg.edits(zbzsl, {{zbz, 16, 0, true}})
else
if jzdx>0.5 and jzdx<1.2 then--东
gg.edits(zbxsl, {{zbx+300, 16, 0, true}})
gg.edits(zbysl, {{zby-100, 16, 0, true}})
gg.edits(zbzsl, {{zbz, 16, 0, true}})
end end end end--东南西北结束
end--视角中结束
if jzsx>0.5 then--视角上
gg.edits(zbxsl, {{zbx, 16, 0, true}})
gg.edits(zbysl, {{zby, 16, 0, true}})
gg.edits(zbzsl, {{zbz+400, 16, 0, true}})
end--视角上结束
if jzsx<-0.8 then--视角下
gg.edits(zbxsl, {{zbx, 16, 0, true}})
gg.edits(zbysl, {{zby, 16, 0, true}})
gg.edits(zbzsl, {{zbz-300, 16, 0, true}})
end--视角下结束
end--左探头结束
if tt>0 then--右探头
gg.edits(ddsl, {{0, 4, 0, false}})
gg.edits(lhsl, {{500, 4, 0, false}})
if jzsx>-0.8 and jzsx<0.5 then--视角中
if jznb<-0.5 and jznb>-1.2 then--南
gg.edits(zbxsl, {{zbx-100, 16, 0, true}})
gg.edits(zbysl, {{zby+300, 16, 0, true}})
gg.edits(zbzsl, {{zbz, 16, 0, true}})
else
if jznb>0.5 and jznb<1.2 then--北
gg.edits(zbxsl, {{zbx+100, 16, 0, true}})
gg.edits(zbysl, {{zby-300, 16, 0, true}})
gg.edits(zbzsl, {{zbz, 16, 0, true}})
else
if jzdx>-1.2 and jzdx<-0.5 then--西
gg.edits(zbxsl, {{zbx-300, 16, 0, true}})
gg.edits(zbysl, {{zby-100, 16, 0, true}})
gg.edits(zbzsl, {{zbz, 16, 0, true}})
else
if jzdx>0.5 and jzdx<1.2 then--东
gg.edits(zbxsl, {{zbx+300, 16, 0, true}})
gg.edits(zbysl, {{zby+100, 16, 0, true}})
gg.edits(zbzsl, {{zbz, 16, 0, true}})
end end end end--东南西北结束
end--视角中结束
if jzsx>0.5 then--视角上
gg.edits(zbxsl, {{zbx, 16, 0, true}})
gg.edits(zbysl, {{zby, 16, 0, true}})
gg.edits(zbzsl, {{zbz+300, 16, 0, true}})
end--视角上结束
if jzsx<-0.8 then--视角下
gg.edits(zbxsl, {{zbx, 16, 0, true}})
gg.edits(zbysl, {{zby, 16, 0, true}})
gg.edits(zbzsl, {{zbz-300, 16, 0, true}})
end--视角下结束
end--右探头结束
if tt == 0 then--不探头
gg.edits(lhsl, {{1000000, 4, 0, false}})
gg.removeListItems(ttlf)--解冻
jznb=gg.getValues(ttlf)[2].value--矩阵方位南北
jzdx=gg.getValues(ttlf)[3].value--矩阵方位东西
jzsx=gg.getValues(ttlf)[4].value--矩阵方位上下
zbx=gg.getValues(ttlf)[5].value--坐标x
zby=gg.getValues(ttlf)[6].value--坐标y
zbz=gg.getValues(ttlf)[7].value--坐标z
end
if gg.isVisible(true) then 

gg.sleep(150)
if  Yk~=1 and CB~=2 then
 gg.setVisible(false)
 
  else 
     end
    if  Yk== 1 then 
   os.exit()
    end 
   end
  end
					end,
					function()

					end
				}, {
					"开火聚点",
					function()
while true do--//循环
function zhi(a, b)--a是地址，b是类型，c是返回值
    local c = gg.getValues({{address = a, flags = b}})[1].value
    return c
end
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x500DA8,0x0,0xA50}
local ttt = S_Pointer(t, tt, true)
r={}
    r[1] = {}
	r[1].address = ttt
	r[1].name = "判断"
	r[1].flags = 4
gg.addListItems(r)
-- 获取地址值并返回
while true do
gg.sleep(100)
if zhi(ttt,4)>0 then
so=gg.getRangesList('libUE4.so')[1].start--聚点
py=0x89294B4
setvalue(so+py,16,-3.4564993e10)
end
if zhi(ttt,4)==0 then
so=gg.getRangesList('libUE4.so')[1].start--聚点
py=0x89294B4
setvalue(so+py,16,8.50279631e-21)
end
if gg.isVisible(true) then 
gg.sleep(150)
if  Yk~=1 and CB~=2 then
 gg.setVisible(false)
  else 
     end
    if  Yk== 1 then 
   HOME()
      end
    end
    end
    end
  					end,
					function()

					end
					
					}, {
					"滞空移速",
					function()
LSQ_Chain({'libUE4.so:bss','Cb'},{0x39488,0x0,0x458,0xA00,0x490,0x560},"加载","1",16,"动作1")--探头判断 左-1 不0 右1


while true do--开始循环
gg.sleep(100)--自己调，1000=1秒
local value = gg.getResults(1)[1]["value"]--value=加载
if value == "1" then--当??=1时
LSQ_Chain({'libUE4.so:bss','Cb'},{0x39488,0x0,0x460,0x1B4},"修改","0",16,"高跳")
LSQ_Chain({'libUE4.so:bss','Cb'},{0x39488,0x0,0x84+0x22E0+0x10},"冻结","1",4,"动作1")--A D 趴下131073 站1 蹲65537
LSQ_Chain({'libUE4.so:bss','Cb'},{0x39488,0x0,0x460,0x1B4+0x10},"冻结","3",4,"动作2")--跳起来3 站着1
LSQ_Chain({'libUE4.so:bss','Cb'},{0x39488,0x0,0x460,0x1B4+0x10+0x1F8},"冻结","0",4,"防拉1")--AD跳起来0 站着237,021
LSQ_Chain({'libUE4.so:bss','Cb'},{0x39488,0x0,0x460,0x1B4-0x8},"修改","3",16,"防拉2")--1 479.5往上滑443网上45 上面的1
LSQ_Chain({'libUE4.so:bss','Cb'},{0x39488,0x0,0x460,0x1B4-0x4},"修改","100",16,"防拉3")--45自动爬墙
LSQ_Chain({'libUE4.so:bss','Cb'},{0x39488,0x0,0x1010},"修改","3",16,"微加速")
LSQ_Chain({'libUE4.so:bss','Cb'},{0x39488,0x0,0x51e},"冻结","1",1,"自动跳跃")
LSQ_Chain({'libUE4.so:bss','Cb'},{0x39488,0x0,0x2DD4},"修改","9999999",16,"过检测")--下面3.5
LSQ_Chain({'libUE4.so:bss','Cb'},{0x39488,0x0,0x460,0x1B4+0x78},"修改","99999",16,"惯性1")--0.05去除惯性
LSQ_Chain({'libUE4.so:bss','Cb'},{0x39488,0x0,0x460,0x1B4+0x54},"修改","99999",16,"惯性2")--8192去除惯性
end   
if value == "-1" then--当??=-1时
end



function A()--停止
Unfreeze()--解除所有冻结
LSQ_Chain({'libUE4.so:bss','Cb'},{0x39488,0x0,0x460,0x1B4},"修改","443",16,"高跳")
LSQ_Chain({'libUE4.so:bss','Cb'},{0x39488,0x0,0x460,0x1B4-0x8},"修改","1",16,"防拉2")
LSQ_Chain({'libUE4.so:bss','Cb'},{0x39488,0x0,0x78,0x78,0x1010},"修改","1",16,"微加速")
LSQ_Chain({'libUE4.so:bss','Cb'},{0x39488,0x0,0x460,0x1B4-0x4},"修改","45",16,"防拉3")--45自动爬墙
LSQ_Chain({'libUE4.so:bss','Cb'},{0x39488,0x0,0x460,0x1B4+0x78},"修改","0.05000000075",16,"惯性1")--0.05000000075去除惯性
LSQ_Chain({'libUE4.so:bss','Cb'},{0x39488,0x0,0x460,0x1B4+0x54},"修改","8192",16,"惯性2")--8192去除惯性
end 

if gg.isVisible(true) then
a=gg.alert("滞空\n右探头触发\n左探头或选项《停止滞空》停止","退出脚本","《停止滞空》")
gg.setVisible(false)
if a == 1 then os.exit(gg.setVisible(true))() end
if a == 2 then A() end
end--不探头结束
end

  					end,
					function()

					end
	
				},
			}),
			changan.text("\n\n\n"),
			changan.button("退出",function()
				luajava.setFloatingWindowHide(false)
				tuichu=1
				end),
		}

	})
--配置表添加表即可加页数，只需要与上边菜单标题数对应



