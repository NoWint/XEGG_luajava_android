
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
write=file.write
function panduan(rec) fille,err = io.open(rec) if fille == nil then return false else return true end end
read=file.read
function checkimg(tmp)
if panduan("/sdcard/长安/图片/"..tmp) ~= true then
gg.toast("正在加载资源"..tmp)
download("https://wp.td88.cyou/view.php/1d28d367be080e280413847821712975.png"..tmp,"/sdcard/长安/图片/"..tmp)
download("https://wp.td88.cyou/down.php/1f8c38a24d8adda4f8f4f897ab2abfbd.png"..tmp,"/sdcard/长安/图片/"..tmp)
download("http://jiami.guimei.work/a/"..tmp..".png","/sdcard/长安/图片/"..tmp)
end
end
function 获取图片(txt)
ntxt=string.sub(string.gsub(txt,"/","."),-10,-1)
if string.find(tostring(txt),"http")~=nil then
    if panduan("/sdcard/长安/图片/"..ntxt)==false then
    download(txt,"/sdcard/长安/图片/"..ntxt)
    end
    txt="/sdcard/长安/图片/"..ntxt
end
return luajava.getBitmapDrawable(txt)
end
ckimg = {
	"heir.png",
	"IMG_20240203_204944.png",
	"1695433514",
	"1695461082",
	
}
for i = 1,#ckimg do
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
function getj6()
jianbian6 = luajava.new(GradientDrawable)
jianbian6:setCornerRadius(20)
jianbian6:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbian6:setColors({0x23070409,0x23070409})
jianbian6:setStroke(0,"0xdd000000")--边框宽度和颜色
return jianbian6
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
slctb1 = luajava.loadlayout({
	GradientDrawable,
	color = "0xFFFFFFFF",
	cornerRadius = 38
})
slcta1 = luajava.loadlayout({
	GradientDrawable,
	color = "0xFFFFFFFF",
	cornerRadius = 38
})
function getSelector3()
selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, slcta1) -- 点击时候的背景
selector:addState({
	-android.R.attr.state_pressed
}, slctb1) -- 没点击的背景
return selector
end
slctc = luajava.loadlayout {
	GradientDrawable,
	color = "0x57070409",
	cornerRadius = 16
}
slctd = luajava.loadlayout {
	GradientDrawable,
	color = "0x57070409",
	cornerRadius = 16
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
getSelector=luajava.getStateListDrawable()
getSelector:addState({
	android.R.attr.state_pressed
}, getCorner({0xff0097FF,0x884953DD,0x883352FF,0xff0097FF},30,4,0xff0097FF,0,0,20,20)) -- 点击时候的背景
getSelector:addState({
	-android.R.attr.state_pressed
}, getCorner({0xff0097FF,0x884953DD,0x883352FF,0xff0097FF},30,4,0xff0097FF,20,20,20,20)) -- 没点击的背景
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
jianbian = luajava.new(GradientDrawable)
jianbian:setCornerRadius(30)
jianbian:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbian2 = luajava.new(GradientDrawable)
jianbian2:setCornerRadius(30)
jianbian2:setGradientType(GradientDrawable.LINEAR_GRADIENT)

local isswitch
YoYoImpl = luajava.getYoYoImpl()
changan.menu = function(sview)
if isswitch then
return false
end
for i=1,#stab do
	_ENV["jmb"..i]=getSelector
end
isswitch = true
cebian = {
	LinearLayout,
	id = "侧边",
	visibility = "gone",
	layout_gravity = "bottom",
	layout_height = "wrap_content",
	layout_width = "match_parent",
	layout_marginTop = "200dp",
}
gund = {
	LinearLayout,
	layout_gravity = "bottom",
	orientation = "horizontal",
	layout_height = "match_parent",
	layout_width = "match_parent",
}
for i = 1,#stab do
_ENV["jm"..i]=luajava.loadlayout({
	LinearLayout,
	id = "jm"..i,
	layout_height = "28dp",
	layout_width = "68dp",
	gravity = "center",
	layout_marginTop = "2dp",
	layout_marginBottom = "2dp",
	background = _ENV["jmb"..i],
	onClick=function() 
	--changan.controlFlip(_ENV["jm"..i],500)
	切换(i) end,
	{
		TextView,
		id="jm"..i.."t",
		gravity = "center",
		textColor="#0086F1",
		text = stab[i],
		--onClick = function() 切换(i) end
	}})
gund[#gund+1] = _ENV["jm"..i]
if i< #stab then
	gund[#gund+1] = luajava.loadlayout({
		LinearLayout,
		layout_height="match_parent",
		layout_width="1.3dp",
		background=getCorner({0xff0097FF,0x884953DD,0x883352FF,0xff0097FF},30,4,0xff0097FF,0,0,20,20),
	})
end
end
cebian[#cebian+1] = {
	HorizontalScrollView,
	fillViewport = "true",
	layout_height = "wrap_content",
	layout_width = "wrap_content",
	layout_gravity = "bottom",
	gund,
}
cebian = luajava.loadlayout(cebian)
for i = 1,#stab do
_ENV["layout"..i] = luajava.loadlayout(
	{
		ScrollView,
		--background = getj6(),
		fillViewport = "true",
		padding = "3dp",
		id = "layout"..i,
		visibility = "gone",
		padding="10dp",
		layout_width = "match_parent",
		layout_height = "match_parent",
		orientation = "vertical",
			{
			LinearLayout,
			--background = getj6(),
			id = "layoutm"..i,
			gravity = "bottom",
			layout_width = "match_parent",
			orientation = "vertical",
			gravity = "center_horizontal",
		},
	
	})
end
dingbian = luajava.loadlayout({
FrameLayout,
	id = "dingbian",
	visibility = "visible",
	layout_gravity="top",
	layout_width = "match_parent",
	layout_height = "35dp",
	orientation = "vertical",
	background = getCorner({0xFFFFFFFF,0xFFFFFFFF,0xFFFFFFFF,0xFFFFFFFF},30,0,0xff0097FF,50,50,0,0),

	{LinearLayout,
		visibility = "visible",
		background="https://wp.td88.cyou/view.php/72526a00498e7a6089715dc2c45f610e.png",
		padding="10dp",
		layout_gravity="center",
		layout_width="60dp",
		layout_height = "20dp",
		layout_marginLeft="5dp",
		layout_marginRight="5dp",
		onTouch=hanshu,
		},
			{LinearLayout,
		visibility = "visible",
		background="https://cdn-community.codemao.cn/47/community/d2ViXzEwMDFfMTAwMTQwOTNfMTAwMTQwOTNfMTcwNzk3NTE5NzAwOF82Nzc1ZTMyZg.png",
		padding="10dp",
		layout_marginTop="7dp",
		layout_marginLeft="9dp",
		layout_gravity="left",
		layout_height="20dp",
		layout_width="20dp",
		onClick= function() 
		gfz=mainLayoutParams.width
		kfz=mainLayoutParams.height
		mainLayoutParams.height=gfz
    	mainLayoutParams.width=kfz
    	end, 
		onTouch=hanshu,
		},
	{LinearLayout,
		visibility = "visible",
		background="https://cdn-community.codemao.cn/47/community/d2ViXzEwMDFfMTAwMTQwOTNfMTAwMTQwOTNfMTcwNzk3NTIwOTc0MV83ZDM4OGE2YQ.png",
		padding="10dp",
		layout_marginTop="7dp",
		layout_marginLeft="match_parent",
		layout_gravity="right",
		layout_marginRight="9dp",
		layout_height="20dp",
		layout_width="20dp",
		onClick= function() 隐藏() end, 
		onTouch=hanshu,
		}
})
ckou = {
	LinearLayout,
	id = "chuangk",
	visibility = "gone",
	layout_width = "match_parent",
	layout_height = "match_parent",--妈逼，布局高度在这
	orientation = "vertical",
	dingbian,
	{LinearLayout,
		visibility = "visible",
		layout_height="5dp",
		layout_width="match_parent",
		onClick= function()  end, 
		onTouch=hanshu,
		},
	cebian,
	
}
motion=luajava.loadlayout({FrameLayout,
			id = "motion",
			layout_width = "match_parent",
			layout_height="match_parent",
			gravity="center",
			{LinearLayout,
			    layout_width = "25dp",
             	layout_height = "25dp",
				id="jiaobiao",
				visibility="gone",
				layout_gravity="right|bottom",
				onClick=function() end
			}

		})
for i = 1,#stab do
ckou[#ckou+1] = _ENV["layout"..i]
end
--luajava.newThread(function() develo(ckou) end):start()
ckou = luajava.loadlayout(ckou)
floatWindow = {
	LinearLayout,
	id = "motion",
	orientation="vertical",
	{FrameLayout,
	layout_height = "match_parent",
	layout_width = "match_parent",
	--background="#ffffff",
	ckou,
	motion,
	{
			LinearLayout,
			
			gravity = "center", {
				ImageView,
				id = "control",
				background = 获取图片(xfcpic),
				layout_width = "50dp",
				layout_height = "50dp",
			}},
			
	{
		ImageView,
		id = "exit",
		layout_gravity="right",
		visibility="gone",
		layout_width = "20dp",
		layout_height = "20dp",
		layout_marginTop = "10dp",
		layout_marginRight = "20dp",
	},
	{LinearLayout,
	layout_width = "wrap_content",
	orientation = "vertical",
	gravity = "center_vertical",
	layout_height = "match_parent",
	layout_height = "match_parent",
	{
		LinearLayout,
		layout_width = "wrap_content",
		layout_height = "wrap_content",
		orientation = "horizontal",
		gravity = "center",
		
	},
	
	
}},
	
	
}
local function invoke()
local ok
local RawX, RawY, x, y
mainLayoutParams = getLayoutParams()
floatWindow = luajava.loadlayout(floatWindow)
local function invoke2()
block('start')
for k = 1,#sview do
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
control.onClick = 隐藏
jiaobiao.onTouch = suofang
local isMove

motion.onTouch = hanshu
control.onTouch = hanshu
exit.onTouch = hanshu
end

invoke(swib1,swib2)
gg.setVisible(false)
隐藏()
setOnExitListener(function()
	luajava.post(function()
	window:removeView(floatWindow)
	window:removeView(backg)
	end)
	tuichu=1
	luajava.setFloatingWindowHide(false)
end)
luajava.setFloatingWindowHide(true)
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
huiz()
while true do
if tuichu == 1 then break end
jianting3(qiehuan)
gg.sleep(300)
end

luajava.setFloatingWindowHide(false)
end
function changan.line()
rest = luajava.loadlayout({
	LinearLayout,
	layout_width = 'fill_parent',
	layout_height = "1dp",
	{LinearLayout,
	layout_width = 'fill_parent',
	layout_height = "1dp",
	layout_marginLeft="9dp",
    layout_marginRight="9dp",
	background = "#C2CAD7",
	}
})
return rest
end
function changan.line2()
rest = luajava.loadlayout({
	LinearLayout,
	layout_width = 'fill_parent',
	layout_height = "15dp",
	{LinearLayout,
	        gravity = "center",
	        layout_width = 'fill_parent',
	        layout_height = "2dp",
	        layout_marginTop="6.5dp",
	        layout_marginBottom="6.5dp",
	        layout_marginLeft="6dp",
	        layout_marginRight="6dp",
        	background = luajava.loadlayout({
							GradientDrawable,
							color = "#EF8A5C",
							cornerRadius = 50
						}),
	      }
})
return rest
end
function getShape3()
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(20)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({0xff00F4FF,0xff0670ff})
jianbians:setStroke(4,"0x77000000")--边框宽度和颜色
return jianbians
end
function getShape5()
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(10)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({0xff00F4FF,0xff0670ff})
jianbians:setOrientation(GradientDrawable.Orientation.TL_BR)
jianbians:setStroke(2,"0x77000000")--边框宽度和颜色
return jianbians
end
function getShape()
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(90)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({0xff00F4FF,0xff0670ff})
jianbians:setStroke(0,"0xffffffff")--边框宽度和颜色

return jianbians
end
function getShape2()
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(20)
jianbians:setShape(GradientDrawable.RECTANGLE)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({0xff00F4FF,0xff0670ff})
jianbians:setStroke(8,"0xff000000")--边框宽度和颜色
return jianbians
end
corbk = true
当前ui = 1
显示 = 0
beij = luajava.new(GradientDrawable)
beij:setCornerRadius(50)----背景的圆角
beij:setGradientType(GradientDrawable.LINEAR_GRADIENT)
beij:setColors({0xffF2F3F5,0xffF2F3F5})
beij:setStroke(8,"0xffF2F3F5")--边框宽度和颜色
--beijw
beij2 = luajava.loadlayout({
	GradientDrawable,
	color = "#00001C27",
	cornerRadius = 10
})
function visi(tid,ttid)
local tview = luajava.getIdValue(tid)
local ttview = luajava.getIdValue(ttid)
if not tview then return 0 end
if tonumber(tostring(tview:getVisibility())) == 8.0 then
tview:setVisibility(View.VISIBLE)
ttview:setBackground(luajava.getBitmapDrawable("/sdcard/长安/图片/1695461082"))
else
tview:setVisibility(View.GONE)
ttview:setBackground(luajava.getBitmapDrawable("/sdcard/长安/图片/1695433514"))
end
end
			function changan.box2(views )
				local tid = "box"..guid()
local ttid = tid.."6"
local t1id=guid()
firadio = {
	LinearLayout,
	layout_width = 'match_parent',
	layout_height = "wrap_content",
	layout_marginTop = "2dp",
	layout_marginBottom = "2dp",
	orientation = "vertical",
}
if type(views[1]) == "string" or type(views[1]) == "number" then
firadio[#firadio+1] = {
	LinearLayout,
	layout_width = 'fill_parent',
	layout_height = "28dp",
	gravity = "center_vertical",
	layout_marginTop = "2dp",
	layout_marginBottom = "4dp",
	onClick = function() changan.controlWater(_ENV[t1id],200) visi(tid,ttid) end,
	background = getSelector3(),
	{
							ImageView,
							layout_gravity="center",
							layout_marginLeft="10dp",
							id = luajava.newId(ttid),
							background = "/sdcard/长安/图片/1695433514",
							layout_width = "16dp",
							layout_height = "16dp",
						} ,
	{
		TextView,text = views[1],
		textSize = "16sp",
		layout_width = '100dp',
		textColor = "#252525",
		layout_marginLeft = "11dp",
		gravity = "left",
	}
	} else
					gg.alert("changan.box第一个参数必须是string") os.exit()
end
if boxi then boxi="visible" else boxi="gone" end
radios = {
					LinearLayout,
					layout_marginLeft = "0dp",
					layout_marginRight = "0dp",
					orientation = "vertical",
					visibility = "gone",
					id = luajava.newId(tid),
					padding = "0dp",
					gravity="center_horizontal",
					layout_width = 'fill_parent',
				}
for i = 2 , # views do
					radios [ # radios + 1 ] = views [ i ]
				end
				firadio [ # firadio + 1 ] = radios
				_ENV[t1id]=luajava.loadlayout(firadio )
				return _ENV[t1id]
			end

function changan.box(views)
local tid = "box"..guid()
local ttid = tid.."6"
firadio = {
	LinearLayout,
	gravity = "center",
	layout_width = 'fill_parent',
	layout_height = "wrap_content",
	orientation = "vertical",
}
if type(views[1]) == "string" or type(views[1]) == "number" then
if views[1]~="" then tsiz="14sp" else tsiz="0sp"end
firadio[#firadio+1] = {
	LinearLayout,
	layout_height = "wrap_content",
	layout_width = "fill_parent",
	{
		TextView,
		text = views[1],
		textSize = tsiz,
		layout_width = "match_parent",
		textColor = "#ffffff",
		gravity = "center",
	}} else

end
radios = {
	LinearLayout,
	layout_marginLeft = "0dp",
	layout_marginRight = "0dp",
	orientation = "vertical",
	padding = "0dp",
	background = luajava.loadlayout({
							GradientDrawable,
							color = "#FFFFFF",
							cornerRadius = 40
						}),
	layout_width = 'fill_parent',
}
for i = 2,#views do
radios[#radios+1] = views[i]
if i~=#views then
radios[#radios+1] = changan.line()
end
end
firadio[#firadio+1] = radios
return luajava.loadlayout(firadio)
end
当前ui = 1
function 切换(x)
当前ui = x
luajava.runUiThread(function()
	for i = 1,#stab do
	_ENV["jm"..i.."t"]:setTextColor(0xff0086F1)
	_ENV["layout"..i]:setVisibility(View.GONE)
	end
	_ENV["layout"..当前ui]:setVisibility(View.VISIBLE)
	_ENV["jm"..当前ui.."t"]:setTextColor(0xffffffff)
	YoYoImpl:with("FadeIn"):duration(300):playOn(_ENV["layout"..当前ui])
	end)
end
function 隐藏()
luajava.runUiThread(function()
	if tonumber(tostring(exit:getVisibility())) == 8.0 then
		control:setVisibility(View.GONE)
		if not yck then ycg=850 yck=650 end
    	mainLayoutParams.height=ycg
    	mainLayoutParams.width=yck
    	window:updateViewLayout(floatWindow, mainLayoutParams)
		chuangk:setVisibility(View.VISIBLE)
		exit:setVisibility(View.VISIBLE)
		dingbian:setVisibility(View.VISIBLE)
		jiaobiao:setVisibility(View.VISIBLE)
		cebian:setVisibility(View.VISIBLE)
		window:updateViewLayout(floatWindow, mainLayoutParams)
		--YoYoImpl:with("FadeIn"):duration(300):playOn(title)
		_ENV["layout"..当前ui]:setVisibility(View.VISIBLE)
		YoYoImpl:with("FadeIn"):duration(300):playOn(floatWindow)
		floatWindow:setBackground(beij)
	else
	    ycg=mainLayoutParams.height
		yck=mainLayoutParams.width
		mainLayoutParams.height=180
		mainLayoutParams.width=180
		window:updateViewLayout(floatWindow, mainLayoutParams)
		dingbian:setVisibility(View.GONE)
		jiaobiao:setVisibility(View.GONE)
		cebian:setVisibility(View.GONE)
		floatWindow:setBackground(beij2)
		chuangk:setVisibility(View.GONE)
		control:setVisibility(View.VISIBLE) 显示 = 0
		exit:setVisibility(View.GONE)
		YoYoImpl:with("FadeIn"):duration(300):playOn(floatWindow)
		
		_ENV["layout"..当前ui]:setVisibility(View.GONE)
	end
end)
end
function 退出UI()
tuichu = 1
luajava.setFloatingWindowHide(false)
	window:removeView(floatWindow)
	os.exit()
	bloc("end")
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
	layout_width = 'fill_parent',
	layout_height = "36dp",
	{
		LinearLayout,
		layout_width = 'fill_parent',
		layout_hight = "fill_parent",
		layout_marginTop = "5dp",
		layout_marginBottom = "5dp",
		gravity = "center_vertical",
		--background = getShape(),
		{
			TextView,
			gravity = "top",
			textColor="#EF8A5C",
			textSize="16sp",
			text = name..":"..nows,
			id = luajava.newId(names),
			layout_width = '90dp',
			layout_marginLeft = "10dp",
			layout_marginRight = "0dp",
		},
		{
			SeekBar,
			layout_width = 'match_parent',
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
	}})
return rest
end

function getShape(tmp0,tmp1,tmp2,tmp3)
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(tmp0)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors(tmp1)
jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
jianbians:setStroke(4,tmp3)--边框宽度和颜色
return jianbians
end
function getShape2(tmp0,tmp1,tmp2,tmp3)
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(tmp0)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors(tmp1)
jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
jianbians:setStroke(8,tmp3)--边框宽度和颜色
return jianbians
end
checkbg=getShape(
	45,
	{0xffB8B8B8,0xffB8B8B8},
	4,0xffB8B8B8)
checkbga=getShape(
	45,
	{0xff0062FF,0xff0062FF},
	4,0xff0062FF)
checkbg1=getShape2(
	45,
	{0xffffffff,0xffffffff},
	4,0xffffffff)
checkbg2=getShape2(
	45,
	{0xffffffff,0xffffffff},
	4,0xffffffff)

function 开关3(name,func1,func2,nid)
name=name..guid()
_ENV[name] = "关"
if func1 == nil then func1 = "" end
if func2 == nil then func2 = "" end
if type(func1) == "function" then
return function()
namers = _ENV[name]
if namers ~= "开" then
luajava.runUiThread(function()
    luajava.getIdValue(nid.."k"):setVisibility(View.GONE)
    luajava.getIdValue(nid.."g"):setVisibility(View.VISIBLE)
    luajava.getIdValue(nid):setBackground(checkbga)
    end)
_ENV[name] = "开"
vibra:vibrate(10)
pcall(func1)
else
	luajava.runUiThread(function()
	luajava.getIdValue(nid.."g"):setVisibility(View.GONE)
    luajava.getIdValue(nid.."k"):setVisibility(View.VISIBLE)
    luajava.getIdValue(nid):setBackground(checkbg)
    end)
_ENV[name] = "关"
vibra:vibrate(10)

pcall(func2)
end
end
end
end

function changan.switch(name,func1,func2,miaoshu)
nid = name..guid()
local func = 开关3(name,func1,func2,nid)
if not name then name = "未设置" end
local rest = luajava.loadlayout({
		    LinearLayout,
			layout_width = 'fill_parent',
			layout_height = "35dp",
			background = luajava.loadlayout({
							GradientDrawable,
							color = "#FFFFFF",
							cornerRadius = 20
							}),
			layout_marginTop = "1dp",
			layout_marginBottom = "1dp",
			padding = "1dp",
		{
			LinearLayout,
			layout_width = 'fill_parent',
			layout_height = "35dp",
	    	gravity = "center_vertical",
		{
			ImageView ,
			layout_marginLeft = "15dp" ,
			layout_height = "20dp" ,
			layout_width = "20dp" ,
		},
		{
			TextView,
			gravity = "top",
			text = name,
			textColor="#201E1E",
			textSize = "16sp",
			layout_marginLeft="-25dp",
		},
		{
			TextView,
			gravity = "center",
			layout_height = "match_parent",
			text = miaoshu,
			textSize = "10sp",
			layout_width = "130dp",
			layout_marginLeft = "-25dp",
			layout_weight = 1,
			textColor = "#A5A5A5",
		},
        {
            FrameLayout,
            id = luajava.newId(nid),
            background = checkbg,
            onClick = function() luajava.newThread(function() func() end):start() end,
            layout_width = '43dp',
            layout_height = 'wrap_content',
            layout_marginRight="10dp",
            padding="1dp",
            {
            LinearLayout,
            layout_gravity="left",
            id = luajava.newId(nid.."k"),
            background = checkbg1,
            onClick = function() luajava.newThread(function() func() end):start() end,
            layout_width = '21dp',
            layout_height = '21dp',
            layout_marginRight="10dp",
        	},{
            LinearLayout,
            visibility="gone",
            layout_gravity="right",
            id = luajava.newId(nid.."g"),
            background = checkbg2,
            onClick = function() luajava.newThread(function() func() end):start() end,
            layout_width = '21dp',
            layout_height = '21dp',
            layout_marginRight="10dp",
        	}
        }}
})
return rest
end

function changan.edit(name)
_ENV[name] = name..guid()
if not name then name = "点击输入文字" end
rest = luajava.loadlayout({
	LinearLayout,
	layout_width = 'fill_parent',
	layout_height = "40dp",
	{
		FrameLayout,
		layout_width = 'fill_parent',
		layout_hight = "fill_parent",
		gravity = "center",
		--orientation="vertical",
		{
			EditText,
			gravity = "top",
			background = getShape(),
			hint = name,
			textColor="#383C3F",
			gravity="center",
			textSize="15sp",
			--layout_marginBottom="-20dp",
			id = luajava.newId(_ENV[name]),
			layout_width = 'fill_parent',
		},
	{
	LinearLayout,
	layout_width = '220dp',
	layout_height = "2dp",
	layout_gravity="center",
	background = "#0087FF",
	layout_marginTop="10dp",
}
	}
})
luajava.getIdValue(_ENV[name]):setHintTextColor(0xff787878)
return rest
end
function changan.radio(radio)
firadio = {
	LinearLayout,
	layout_width = 'fill_parent',
	layout_hight = "fill_parent",
	padding="10dp",
	orientation = "vertical"
}
if type(radio[1]) == "string" or type(radio[1]) == "number" then
firadio[#firadio+1] = {
	TextView,text = radio[1]} end
radios = {
	RadioGroup,background = getShape(),
	layout_width = 'fill_parent',
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
function changan.button(txt,func,yans)
if not yans then yans="#ffffff" end
if not txt then txt = "未设置" end
return luajava.loadlayout(
    {LinearLayout,
        layout_width = 'fill_parent',
        layout_hight = "30dp",
        background=getSelector2(),
        onClick=function() luajava.newThread(func):start() end,

        {
        LinearLayout,
        layout_width = "fill_parent",
        layout_hight="wrap_content",
        gravity="center_horizontal",
        layout_marginTop = "6dp",
        layout_marginBottom = "6dp",
        {
            TextView,
            textStyle="bold",
            textColor=yans,
            --id = luajava.newId(tid),
            text = txt,
            textSize="15sp",
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
---↑↑↑你的脚本放在这里，下面菜单调用

function huiz()
end
stab = {--←菜单导航栏
	"功能1",
	"功能2",
	"功能3",
	"功能4",
	"功能5",
	"功能6",
	"功能7",
	"功能8",
	"功能9",
	"功能10"
--"功能10",--可自行拓展，需要对应下边菜单配置
}

xfcpic = "https://cdn-community.codemao.cn/47/community/d2ViXzEwMDFfMTAwMTQwOTNfMTAwMTQwOTNfMTcwNjUyNTg1MTY4NV80ZmRmNjBjMw.png"
--↑悬浮窗链接或路径↑


--changan.button   按钮
--changan.switch   开关
--changan.box   区域框
--changan.box2   套娃
--changan.text   文字
--changan.seek  拖动条
--changan.edit  输入框（changan.getedit和changan.setedit调用
--以上是本UI模块包含的控件，在下面都有示例参考


changan.menu(
	{
-----------------------------------------------------
		{----1
-----------------------------------------------------
			--changan.text("欢迎使用长安UIUI","#008EFF","20sp"),  
			changan.box2({--如果不需要请删除box2，注意括号的对应。如果需要请注意用box2套box，不然会很丑
				"套娃",
				changan.box({--box开头
					"",--box名字
					
					changan.switch("开关1",
						function()
							
						end,
						function()
						gg.alert("已关闭")
						end,
						nil),
					
					changan.switch("开关2",
						function()
							
						end,
						function()
						gg.alert("已关闭")
						end,
						"#000000"),--最后一个参数是颜色可以省略，默认蓝
					
					changan.button("选择进程",
						function()
							gg.setProcessX()
						end),
					
					changan.button("退出脚本",
						function()
				        退出UI()
						end,
						"#DB202C"),--最后一个参数是颜色可以省略，默认蓝
					
					changan.edit("输入演示"),--括号填的“输入演示”就是当前输入框的ID
					
					changan.button("调用输入框",
						function()
							tmp=changan.getedit("输入演示")--传入ID调用内容，返回string类型
							gg.alert(tmp)
						end),
					
					changan.button("设置输入框",
						function()
							changan.setedit("输入演示","修改了输入框内容")--传入ID和要改成的内容
						end),
					
				}),--box结尾
			}),
				
				changan.seek("拉条演示","ltys",1,10,6),--名字，变量名字，最小值，最大值，初始值
				
				changan.button("拉条调用",
					function()
						gg.alert(ltys)--上面生成时写的变量名字，直接拿出来调用即可
					end),
				
				changan.switch("开关3",
					function()
						 
					end,
					function()
					gg.alert("已关闭")
					end),
			
			
-----------------------------------------------------
		}, {----2
-----------------------------------------------------
			changan.box({
				"美化专区",
			}),
			
-----------------------------------------------------
		}, {----3
-----------------------------------------------------
			changan.box({
				"美化专区",
				changan.switch("开关1",
					function()
						
					end,
					function()
					gg.alert("已关闭")
					end),
				changan.switch("开关2",
					function()
						
					end,
					function()
					gg.alert("已关闭")
					end),
				changan.switch("开关3",
					function()
						
					end,
					function()
					gg.alert("已关闭")
					end),
				changan.line2(),
				changan.switch("开关1",
					function()
						
					end,
					function()
					gg.alert("已关闭")
					end),
				changan.switch("开关2",
					function()
						
					end,
					function()
					gg.alert("已关闭")
					end),
				changan.switch("开关3",
					function()
						
					end,
					function()
					gg.alert("已关闭")
					end),
				
			}),
			
			
-----------------------------------------------------
		}, {----4
-----------------------------------------------------
       changan.box({
				"美化专区",
				changan.switch("开关1",
					function()
						
					end,
					function()
					gg.alert("已关闭")
					end),
				changan.switch("开关2",
					function()
						
					end,
					function()
					gg.alert("已关闭")
					end),
				changan.switch("开关3",
					function()
						
					end,
					function()
					gg.alert("已关闭")
					end),
			    changan.switch("开关4",--功能名字 不可重复
                    function() --需要两个function 一个开一个关
                    
                    end,
                    function()
                    gg.toast("关闭")
                    end),
			}),
			
-----------------------------------------------------
		},{----5
-----------------------------------------------------
changan.box({
				"美化专区",
				changan.switch("开关1",
					function()
						
					end,
					function()
					gg.alert("已关闭")
					end),
				changan.switch("开关2",
					function()
						
					end,
					function()
					gg.alert("已关闭")
					end),
				changan.switch("开关3",
					function()
						
					end,
					function()
					gg.alert("已关闭")
					end),
			    changan.switch("开关4",--功能名字 不可重复
                    function() --需要两个function 一个开一个关
                    
                    end,
                    function()
                    gg.toast("关闭")
                    end),
			}),
			
-----------------------------------------------------
		},{----6
-----------------------------------------------------
changan.box({
				"美化专区",
				changan.switch("开关1",
					function()
						
					end,
					function()
					gg.alert("已关闭")
					end),
				changan.switch("开关2",
					function()
						
					end,
					function()
					gg.alert("已关闭")
					end),
				changan.switch("开关3",
					function()
						
					end,
					function()
					gg.alert("已关闭")
					end),
			    changan.switch("开关4",--功能名字 不可重复
                    function() --需要两个function 一个开一个关
                    
                    end,
                    function()
                    gg.toast("关闭")
                    end),
			}),
			
-----------------------------------------------------
		},{----7
-----------------------------------------------------
changan.box({
				"美化专区",
				changan.switch("开关1",
					function()
						
					end,
					function()
					gg.alert("已关闭")
					end),
				changan.switch("开关2",
					function()
						
					end,
					function()
					gg.alert("已关闭")
					end),
				changan.switch("开关3",
					function()
						
					end,
					function()
					gg.alert("已关闭")
					end),
			    changan.switch("开关4",--功能名字 不可重复
                    function() --需要两个function 一个开一个关
                    
                    end,
                    function()
                    gg.toast("关闭")
                    end),
			}),
			
-----------------------------------------------------
		},{----8
-----------------------------------------------------
changan.box({
				"美化专区",
				changan.switch("开关1",
					function()
						
					end,
					function()
					gg.alert("已关闭")
					end),
				changan.switch("开关2",
					function()
						
					end,
					function()
					gg.alert("已关闭")
					end),
				changan.switch("开关3",
					function()
						
					end,
					function()
					gg.alert("已关闭")
					end),
			    changan.switch("开关4",--功能名字 不可重复
                    function() --需要两个function 一个开一个关
                    
                    end,
                    function()
                    gg.toast("关闭")
                    end),
			}),
			
-----------------------------------------------------
		},{----9
-----------------------------------------------------
 changan.box({
				"美化专区",
				changan.switch("开关1",
					function()
						
					end,
					function()
					gg.alert("已关闭")
					end),
				changan.switch("开关2",
					function()
						
					end,
					function()
					gg.alert("已关闭")
					end),
				changan.switch("开关3",
					function()
						
					end,
					function()
					gg.alert("已关闭")
					end),
			    changan.switch("开关4",--功能名字 不可重复
                    function() --需要两个function 一个开一个关
                    
                    end,
                    function()
                    gg.toast("关闭")
                    end),
			}),
			
-----------------------------------------------------
		},{----10
-----------------------------------------------------
changan.box({
				"美化专区",
				changan.switch("开关1",
					function()
						
					end,
					function()
					gg.alert("已关闭")
					end),
				changan.switch("开关2",
					function()
						
					end,
					function()
					gg.alert("已关闭")
					end),
				changan.switch("开关3",
					function()
						
					end,
					function()
					gg.alert("已关闭")
					end),
			    changan.switch("开关4",--功能名字 不可重复
                    function() --需要两个function 一个开一个关
                    
                    end,
                    function()
                    gg.toast("关闭")
                    end),
			}),
			
-----------------------------------------------------勿动代码
		}
	})

bloc = luajava.getBlock()
bloc('join')
-----------------------------------------------------

