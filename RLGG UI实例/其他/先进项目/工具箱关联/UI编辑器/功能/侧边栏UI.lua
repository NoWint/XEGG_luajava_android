

gg.setVisible(false)
luajava.setFloatingWindowHide(true)
local material3 = require 'material3'
local context=material3:getContext()
import'com.google.android.material.slider.Slider'
import'android.content.res.ColorStateList'
import'com.google.android.material.dialog.MaterialAlertDialogBuilder'
import'com.google.android.material.card.MaterialCardView'
if tonumber(device.width)==nil then
dwidth=1340
dheight=2300
else
dwidth=device.width
dheight=device.height
end
function getTimeStamp(t)
local str = os.date("%H:%M:%S",t)
return str
end
colorvs={}
changan = {} huiz = function() end
window = context:getSystemService("window") -- 获取窗口管理器
function panduan(rec) fille,err = io.open(rec) if fille == nil then return false else return true end end
function checkimg(tmp,ii)
if file.length("/sdcard/长安/图片/"..tmp[1],false)<200 then
gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
luajava.download(tmp[2],"/sdcard/长安/图片/"..tmp[1])
end
end
ckimg = {
	{'hei_right','https://image.rlyun.fun/down.php/dfcc155180c66711a66a1c6540db5e03.'},
	{'opoback','https://image.rlyun.fun/down.php/40957bcc9387d24a7f3b3802a072982c.'},
	{'heir','https://image.rlyun.fun/down.php/1f8c38a24d8adda4f8f4f897ab2abfbd.'},
	{'heix','https://image.rlyun.fun/down.php/1631f943c3cad4fd0aee9e611638198e.'},
	{'classes3.dex','https://image.rlyun.fun/down.php/29e1a4722ddf781d8f8d95a68f4e07ad.dex'},
	{'lefttoplogo','https://image.rlyun.fun/view.php/b56997692a30cae16915655ab2271b38.png'},
	{'font.ttf','https://image.rlyun.fun/down.php/c2224a867dc42afa9f00a151a5333022.ttf'},
}
for i = 1,#ckimg do
checkimg(ckimg[i],i)
end
local Typeface = luajava.bindClass("android.graphics.Typeface")
local fontPath = '/sdcard/长安/图片/font.ttf'
local fontFile = luajava.newInstance("java.io.File", fontPath)
typeface= Typeface:createFromFile(fontFile)
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
function getRes(x)
return 获取图片("/sdcard/长安/图片/"..x)
end
YoYoImpl = luajava.getYoYoImpl()
vibra = context:getSystemService(Context.VIBRATOR_SERVICE)
function getLayoutParams2()
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
layoutParams2.width = LayoutParams2.WRAP_CONTENT -- 布局宽度
layoutParams2.height = LayoutParams2.WRAP_CONTENT -- 布局高度

return layoutParams2
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


显2=false
function 隐藏2()
显2=true
ckou:setVisibility(View.GONE)
if smalltype==1 then
	control2:setVisibility(View.GONE)
else
	smallwindow:setVisibility(View.GONE)
end
smallc:setVisibility(View.VISIBLE)
end
function 显示2()
显2=false
--mainLayoutParams.x=20
--window:updateViewLayout(floatWindow, mainLayoutParams)

if 显示==1 then
	ckou:setVisibility(View.VISIBLE)
	smallc:setVisibility(View.GONE)
else
	if smalltype==1 then
	control2:setVisibility(View.VISIBLE)
else
	smallwindow:setVisibility(View.VISIBLE)
end
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
if math.abs(event:getRawY()-RawY)>20 then return true end
if math.abs(event:getRawX()-RawX)>20 then return true end
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

local ui = require('ui')
context:setTheme(0x7f090065)
function rgb_to_hex(r,g,b)
    r = math.min(math.max(r, 0), 255)
    g = math.min(math.max(g, 0), 255)
    b = math.min(math.max(b, 0), 255)
    local hex_r = string.format("%02X", r)
    local hex_g = string.format("%02X", g)
    local hex_b = string.format("%02X", b)
    return hex_r .. hex_g .. hex_b
end
function hexToRgb(hex)
    hex = hex:sub(-6,-1)
    local r = tonumber(hex:sub(1, 2), 16)
    local g = tonumber(hex:sub(3, 4), 16)
    local b = tonumber(hex:sub(5, 6), 16)
    return {r, g, b}
end
function defaultColor()
	if gg.alert('是否确认要恢复？','是','否')==1 then
		_ENV['控件颜色']='6A51FF'
		_ENV['侧边分页栏颜色']='4807BB'
		_ENV['侧边背景渐变1']='6921F1'
		_ENV['侧边背景渐变2']='9C3EE4'
		_ENV['分页选中颜色']='ffffff'
		file.write('/sdcard/长安/配置文件/控件颜色',_ENV['控件颜色'])
		file.write('/sdcard/长安/配置文件/侧边分页栏颜色',_ENV['侧边分页栏颜色'])
		file.write('/sdcard/长安/配置文件/侧边背景渐变1',_ENV['侧边背景渐变1'])
		file.write('/sdcard/长安/配置文件/侧边背景渐变2',_ENV['侧边背景渐变2'])
		file.write('/sdcard/长安/配置文件/分页选中颜色',_ENV['分页选中颜色'])
		loadDIY()
		local t={
			'控件颜色',
			'侧边分页栏颜色',
			'侧边背景渐变1',
			'侧边背景渐变2',
			'分页选中颜色'
		}
		for i=1,#t do
				changeColor(t[i],_ENV[t[i]])
		end
	end
end
function loadDIY()
	local t={
		'控件颜色',
		'侧边分页栏颜色',
		'侧边背景渐变1',
		'侧边背景渐变2',
		'分页选中颜色'
	}
	for i=1,#t do
		if panduan('/sdcard/长安/配置文件/'..t[i]) then
			_ENV[t[i]]=file.read('/sdcard/长安/配置文件/'..t[i])
		else
			
		end
	end
end
function changeColor(area,co)
	if area=='控件颜色' then
		_ENV['控件颜色']=co
		luajava.startThread(function()
	file.write('/sdcard/长安/配置文件/控件颜色',_ENV['控件颜色'])
	end)
		luajava.runUiThread(function()
			luajava.getIdView("backv"):setColorFilter('0xff'.._ENV['控件颜色'])
			luajava.getIdView("closev"):setColorFilter('0xff'.._ENV['控件颜色'])
			checkbg = getShape2(45,{'0xff'.._ENV['控件颜色'],'0xff'.._ENV['控件颜色']},4,'0xff'.._ENV['控件颜色'])
			for k,v in pairs(colorvs) do
				if v[1]==true then
					if v[2]=="switch" then
						luajava.getIdValue(k):setBackground(checkbg)
					elseif v[2]=="box" then
						boxpic[k]:setColorFilter('0xff'.._ENV['控件颜色'])
					elseif v[2]=="txt" then
						luajava.getIdValue(k):setTextColor('0xff'.._ENV['控件颜色'])
					elseif v[2]=="img" then
						luajava.getIdValue(k):setColorFilter('0xff'.._ENV['控件颜色'])
					elseif v[2]=="seek" then
						local sliderlist=ColorStateList({{},},{'0xff'.._ENV['控件颜色']})
						local tint=ColorStateList({{},},{'0x55'.._ENV['控件颜色']})
						v[3]:setTrackActiveTintList(sliderlist)
						v[3]:setTrackInactiveTintList(tint)
						v[3]:setThumbTintList(sliderlist)
					end
				end
			end
		end)
	elseif area=='分页选中颜色' then
		_ENV['分页选中颜色']=co
		luajava.startThread(function()
		file.write('/sdcard/长安/配置文件/分页选中颜色',_ENV['分页选中颜色'])
	end)
		if _ENV["jm"..当前ui.."t"]~=nil then
			_ENV["jm"..当前ui.."t"]:setTextColor('0xff'.._ENV['分页选中颜色'])
			slcta=getVerticalBG({0x00ffffff,0x00ffffff},12,3,'0xff'.._ENV['分页选中颜色'])
			_ENV['jm'..当前ui]:setBackground(slcta)
		end
	elseif area=='侧边分页栏颜色' then
		_ENV['侧边分页栏颜色']=co
		luajava.startThread(function()
		file.write('/sdcard/长安/配置文件/侧边分页栏颜色',_ENV['侧边分页栏颜色'])
	end)
		luajava.getIdView("cbscro"):setBackground(getVerticalBG({'0xff'..co,'0xff'..co},15))
	elseif area=='侧边背景渐变1' then
		_ENV['侧边背景渐变1']=co
		luajava.startThread(function()
		file.write('/sdcard/长安/配置文件/侧边背景渐变1',_ENV['侧边背景渐变1'])
	end)
		luajava.getIdView('jianbian'):setBackground(getVerticalBG({'0xff'..co,'0xff'..co,'0xff'..co,'0xff'.._ENV['侧边背景渐变2']},15))
	elseif area=='侧边背景渐变2' then
		_ENV['侧边背景渐变2']=co
		luajava.startThread(function()
		file.write('/sdcard/长安/配置文件/侧边背景渐变2',_ENV['侧边背景渐变2'])
	end)
		luajava.getIdView('jianbian'):setBackground(getVerticalBG({'0xff'.._ENV['侧边背景渐变1'],'0xff'.._ENV['侧边背景渐变1'],'0xff'.._ENV['侧边背景渐变1'],'0xff'.._ENV['侧边背景渐变2']},15))
	end
end
function changan.alertView(title,view,positive,func)
	luajava.post(function()
		local p=view:getParent()
		if p~=nil then
			p:removeView(view)
		end
		local alertBuilder = MaterialAlertDialogBuilder(context)
		if func then
			alertBuilder:setTitle(title):setView(view):setPositiveButton(positive or '确定',func)
		else
		alertBuilder:setTitle(title):setView(view):setPositiveButton(positive or '确定')
		end
		local alert = alertBuilder:create()
		alert:getWindow():setType(gg.ANDROID_SDK_INT >= 26 and LayoutParams.TYPE_APPLICATION_OVERLAY or LayoutParams.TYPE_PHONE)
		alert:show()
	end)
end
function usediy(lrgb)
	local rgb='0xff'..lrgb
	缓存颜色=lrgb
	local slidercolor=ColorStateList({{},},{rgb})
	local tint=ColorStateList({{},},{'0x55'..lrgb})
	color1v:setTrackActiveTintList(slidercolor)
	color1v:setTrackInactiveTintList(tint)
	color1v:setThumbTintList(slidercolor)
	color2v:setTrackActiveTintList(slidercolor)
	color2v:setTrackInactiveTintList(tint)
	color2v:setThumbTintList(slidercolor)
	color3v:setTrackActiveTintList(slidercolor)
	color3v:setTrackInactiveTintList(tint)
	color3v:setThumbTintList(slidercolor)
end
function diycolor(txt)
rgbt=hexToRgb(_ENV[txt])
if not diyview then
	local rgbbar={
		LinearLayout,
		layout_width='match_parent',
		layout_weight=1,
		orientation='vertical',
		{LinearLayout,
			gravity='center_vertical',
			layout_width='match_parent',
			layout_height='25dp',
			{TextView,
				text='R:',
				textSize='14sp',
				textColor='#ffffff',
				layout_width='20dp',
			},
			{
			Slider,
			thumbHeight='23dp',
			trackHeight='15dp',
			layout_height='25dp',
			trackStopIndicatorSize='0dp',
			tickVisible=false,
			__onFinish=function(v)
				luajava.setInterface(v, 'addOnChangeListener', 
					function(SeekBar, var2, var3)
						local r=var2
						local g=luajava.getIdView('color2'):getValue()
						local b=luajava.getIdView('color3'):getValue()
						local rgb=rgb_to_hex(r,g,b)
						luajava.getIdView('diyrgb'):setText(rgb)
						luajava.getIdView('diycard'):setCardBackgroundColor('0xff'..rgb)
						usediy(rgb)
						rgbt[1]=var2
					end)
			end,
			layout_width = 'match_parent',
			id=luajava.newId("color1"),
			valueFrom=0,
			valueTo=255,
			value=rgbt[1],
			stepSize=1.0,
		}},
		{LinearLayout,
			gravity='center_vertical',
			layout_width='match_parent',
			layout_height='25dp',
			{TextView,
				text='G:',
				textSize='14sp',
				textColor='#ffffff',
				layout_width='20dp',
			},
			{
			Slider,
			thumbHeight='23dp',
			trackHeight='15dp',
			layout_height='25dp',
			trackStopIndicatorSize='0dp',
			tickVisible=false,
			__onFinish=function(v)
				luajava.setInterface(v, 'addOnChangeListener', 
					function(SeekBar, var2, var3)
						local g=var2
						local r=luajava.getIdView('color1'):getValue()
						local b=luajava.getIdView('color3'):getValue()
						local rgb=rgb_to_hex(r,g,b)
						luajava.getIdView('diyrgb'):setText(rgb)
						luajava.getIdView('diycard'):setCardBackgroundColor('0xff'..rgb)
						usediy(rgb)
						rgbt[2]=var2
					end)
			end,
			layout_width = 'match_parent',
			id=luajava.newId("color2"),
			valueFrom=0,
			valueTo=255,
			value=rgbt[2],
			stepSize=1.0,
		}},{LinearLayout,
			gravity='center_vertical',
			layout_width='match_parent',
			layout_height='25dp',
			{TextView,
				text='B:',
				textSize='14sp',
				textColor='#ffffff',
				layout_width='20dp',
			},
			{
			Slider,
			thumbHeight='23dp',
			trackHeight='15dp',
			layout_height='25dp',
			trackStopIndicatorSize='0dp',
			tickVisible=false,
			__onFinish=function(v)
				luajava.setInterface(v, 'addOnChangeListener', 
					function(SeekBar, var2, var3)
						local b=var2
						local g=luajava.getIdView('color2'):getValue()
						local r=luajava.getIdView('color1'):getValue()
						local rgb=rgb_to_hex(r,g,b)
						luajava.getIdView('diyrgb'):setText(rgb)
						luajava.getIdView('diycard'):setCardBackgroundColor('0xff'..rgb)
						usediy(rgb)
						rgbt[3]=var2
					end)
			end,
			layout_width = 'match_parent',
			id=luajava.newId("color3"),
			valueFrom=0,
			valueTo=255,
			value=rgbt[3],
			stepSize=1.0,
		}}
	}
	diyview=luajava.loadlayout({
		LinearLayout,
		layout_width='250dp',
		orientation='vertical',
		padding='10dp',
		{
			LinearLayout,
			layout_width='match_parent',
			padding='5dp',
			rgbbar,
			{
				LinearLayout,
				layout_height='75dp',
				layout_width='100dp',
				orientation='vertical',
				{MaterialCardView,
					__onFinish=function(v)
						v:setRadius(15)
					end,	
				id=luajava.ids['diycard'],
				strokeColor=0x00ffffff,
				layout_height='45dp',
				layout_width='100dp',
				cardBackgroundColor='0xff'.._ENV['控件颜色'],
				},{TextView,
					id=luajava.ids['diyrgb'],
					layout_marginTop='5dp',
					layout_height='25dp',
					layout_width='100dp',
					background=getVerticalBG({0xffffffff,0xffffffff},10),
					padding='-2dp',
					textColor='0xff000000',
					textSize='10sp',
					text=_ENV['控件颜色'],
					gravity='center',
				}
				
			},
		},
	})
	color1v=luajava.getIdView('color1')
	color2v=luajava.getIdView('color2')
	color3v=luajava.getIdView('color3')
end
	color1v:setValue(rgbt[1])
	color2v:setValue(rgbt[2])
	color3v:setValue(rgbt[3])	
	usediy(_ENV[txt])
	changan.alertView(txt,diyview,'应用',function() changeColor(txt,缓存颜色) end)
end

changan.menu = function(views)
slcta=getVerticalBG({0x00ffffff,0x00ffffff},12,3,'0xff'.._ENV['分页选中颜色'])
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
		orientation="vertical",
		gravity="center_horizontal",
		}
	for i=1,#stab do
		_ENV["jm"..i]=luajava.loadlayout({
			LinearLayout,
			gravity="center",
			layout_width='match_parent',
			orientation="vertical",
			layout_marginTop='5dp',
			layout_marginBottom='5dp',
			padding={"12dp","3dp","12dp","3dp"},
			onClick=function() 切换(i) end,
			--onTouch=hanshu,
			{TextView,
			id="jm"..i.."t",
			text=stab[i],
			textSize="14sp",
			textColor="#aad7d7d7",
			__onFinish=function(v)
					v:setTypeface(typeface)
				end,
			}
		})
		cebian[#cebian+1]=_ENV["jm"..i]
		tmp={
			LinearLayout,
			layout_height="wrap_content",
			layout_width="match_parent",
			orientation="vertical",
			
		}
		
		for k=1,#views[i] do
			
			if type(views[i])=="table" then
			tmp[#tmp+1]=views[i][k].view
			else
				tmp[#tmp+1]=views[i][k]
			end
		end
		_ENV["layout"..i]={
			ScrollView,
			orientation="vertical",
			layout_height="match_parent",
			layout_width="match_parent",
			tmp,
--			onTouch=Gundong,
			padding={"8dp","3dp","8dp","3dp"},
		}
		
	end
	for i=1,#stab do
		layout[#layout + 1] =_ENV["layout"..i]
	end
	for i=2,#stab do
			_ENV["jm"..i .."t"]:setTextColor(0xffaaaaaa)
		end
	ViewPager = ui.ViewPager(layout)
	luajava.setInterface(ViewPager, 'addOnPageChangeListener', 
		{onPageSelected=function(view)
		view=tonumber(string.sub(view,1,1))
		for i=1,#stab do
			_ENV["jm"..i .."t"]:setTextColor(0xffaaaaaa)
			_ENV['jm'..i]:setBackground(nil)
		end
		当前ui=view+1
		滚(当前ui)
		_ENV["jm"..view+1 .."t"]:setTextColor('0xff'.._ENV['分页选中颜色'])
		_ENV['jm'..view+1]:setBackground(slcta)
		
		end})
quarkmoon=getRes("quarkmoon")
quarksun=getRes("quarksun")
_ENV["tosearch"]="tosearch"
snow=luajava.loadlayout({ImageView,
					layout_height = "40dp",
					layout_width = "40dp",
					layout_marginTop="0dp",
					layout_marginLeft="0dp",
					padding="7dp",
					src=getRes("quarksearchw"),
					onClick=function() searchStart() changan.controlWater(snow,200) vibra:vibrate(10) end,
					onTouch=hanshu,
					background = getVerticalBG({
								0x22161616,0x22161616
							},360,5,0x33ffffff),
					})
	ckou={
		LinearLayout,
		layout_height="wrap_content",
		layout_width="wrap_content",
		{LinearLayout,
			layout_height="match_parent",
			id=luajava.newId('jianbian'),
			background=getVerticalBG({'0xff'.._ENV['侧边背景渐变1'],'0xff'.._ENV['侧边背景渐变1'],'0xff'.._ENV['侧边背景渐变1'],'0xff'.._ENV['侧边背景渐变2']},15),
			orientation='vertical',
			{
				ImageView,
				layout_height='60dp',
				layout_width='match_parent',
				onClick=隐藏,
				onTouch=hanshu,
				gravity='center',
				src=获取图片(左上角图标),
				layout_marginTop='5dp',
			},
			{
				TextView,
				layout_width='match_parent',
				gravity='center',
				textSize='9sp',
				textColor='#ffffff',
				__onFinish=function(v)
					v:setTypeface(typeface)
					timet=v
					luajava.startThread(function()
						while true do
							luajava.runUiThread(function()
								timet:setText(getTimeStamp(os.date()))
							end)
							gg.sleep(1000)
						end
					end)
				end,
			},
			{LinearLayout,
				layout_height="match_parent",
				layout_weight=1,
				{ScrollView,
				background=getVerticalBG({'0xff'.._ENV['侧边分页栏颜色'],'0xff'.._ENV['侧边分页栏颜色']},15),
				layout_margin='6dp',
			id=luajava.newId("cbscro"),
			layout_height="match_parent",
			cebian}}},
		{FrameLayout,
		layout_height='match_parent',
		layout_width='match_parent',
		layout_marginTop='10dp',
		layout_marginBottom='10dp',
		layout_marginRight='3dp',
		elevation='2dp',
		id=luajava.newId("ckb"),
		background=getCorner({0xffe1edf2,0xffe1edf2},10,0,0x00ffffff,0,15,15,0),
		--visibility='gone',
		id="parentv",ViewPager},
	}


ckou = {
	LinearLayout,
	id = "chuangk",
	visibility = "gone",
	layout_width = "wrap_content",
	layout_height = "wrap_content",
	orientation = "vertical",
	ckou

}
ckou = luajava.loadlayout(ckou)
extralis={LinearLayout,
	layout_height="match_parent",
	layout_width="match_parent",
	id=luajava.newId("extralist"),
	orientation="vertical",
	}
for k,v in pairs(ewsv) do
	if type(ewsv[k])=="table" then
	extralis[#extralis+1]=ewsv[k].view
	else
		extralis[#extralis+1]=ewsv[k]
	end
end
smallwindow=luajava.loadlayout({LinearLayout,
	visibility='gone',
	{LinearLayout,
		layout_height='50dp',
		layout_width='110dp',
		gravity='center_vertical',
		onClick=隐藏,
		onTouch=hanshu,
		layout_margin='3dp',
		elevation='3dp',
		background=getVerticalBG({0xff161616,0xff161616},15,3,0xffffffff),
		{
			ImageView,
			src=获取图片(悬浮窗图标),
			layout_height='50dp',
			layout_width='50dp',
			padding='4dp',
			layout_marginRight='-10dp',
		},
		{
			TextView,
			layout_width='match_parent',
			layout_weight=1,
			text=小悬浮窗文字,
			gravity='center',
			textSize='11sp',
			textColor=0xffffffff
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
	ckou,
	{LinearLayout,
	visibility="gone",
	id=luajava.newId("extra"),
	layout_height = "match_parent",
	layout_width='match_parent',
	orientation="vertical",
	background=getVerticalBG({0xffF2F3F5,0xffF2F3F5},15),
			
		{LinearLayout,
			layout_width="match_parent",
			layout_height="40dp",
			id=luajava.newId("exttop"),
			background=getCorner({0xffffffff,0xffffffff},15,0,0xff000000,15,15,0,0),
			onClick=function() end,
			onTouch=hanshu,
			gravity="center_vertical",
			{ImageView,
				id=luajava.newId("backv"),
				layout_height="24dp",
				layout_width="24dp",
				src=getRes("opoback"),
				background=getVerticalBG({0x00ffffff,0x00ffffff},360,7,0xff161616),
				colorFilter='0xff'.._ENV['控件颜色'],
				padding="5dp",
				onClick=关闭窗口,
				onTouch=hanshu,
				layout_marginLeft="10dp",
			},
			{TextView,
				id=luajava.newId("extrat"),
				text="标题",
				layout_height="match_parent",
				textColor='#000000',
				layout_width="match_parent",
				layout_weight=1,
				gravity="center",
			},{ImageView,
				id=luajava.newId("closev"),
				layout_height="24dp",
				layout_width="24dp",
				src=getRes("heix"),
				background=getVerticalBG({0x00ffffff,0x00ffffff},360,7,0xff161616),
				padding="5dp",
				onClick=隐藏,
				onTouch=hanshu,
				colorFilter='0xff'.._ENV['控件颜色'],
				layout_marginRight="10dp",
			}
		},
	{ScrollView,
	padding="8dp",
	layout_height="match_parent",
	layout_width="match_parent",
	extralis
	}
	},
	smallwindow,
	{
		ImageView,
		id = "control2",
		visibility='gone',
		src = 获取图片(悬浮窗图标),
		layout_width = "40dp",
		layout_height = "60dp",
		onTouch = hanshu,
		onClick = 隐藏,
	},{LinearLayout,
	id="smallc",
	visibility="gone",
	onClick=显示2,
	onTouch=hanshu,
	layout_height="60dp",
	layout_width="15dp",
	gravity="center",
	background=getCorner({0x88161616,0x88161616},12,0,0xff232323,0,15,15,0),
		
	},{
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
		}
}
mubx=getpx(mubx)
muby=getpx(muby)
local function invoke()
local ok
local RawX, RawY, x, y
mainLayoutParams = getLayoutParams()
mainLayoutParams.x = 10
mainLayoutParams.y = dheight/4
mainLayoutParams.height = mubx
		mainLayoutParams.width = muby
params2=getLayoutParams2()
floatWindow = luajava.loadlayout(floatWindow)
local function invoke2()
window:addView(floatWindow, mainLayoutParams)
end
local runnable = luajava.getRunnable(invoke2)
local handler = luajava.getHandler()
handler:post(runnable)

local isMove


end
invoke(swib1,swib2)
gg.setVisible(false)
jm1t:setTextColor('0xff'.._ENV['分页选中颜色'])
jm1:setBackground(slcta)
隐藏()


if loadingBox~=nil then loadingBox['关闭']() end
setOnExitListener(function()
	luajava.post(function()
	window:removeView(floatWindow)
	end)
	tuichu=1
	luajava.setFloatingWindowHide(false)
end)
qhkai = 0
qiehuan = function()
if qhkai == 0 then
qhkai = 1
luajava.runUiThread(function()
	changan.controlSmall(floatWindow,400)
	end)
gg.sleep(400)
luajava.runUiThread(function()
	floatWindow:setVisibility(View.GONE)
	end)
else
	qhkai = 0
luajava.runUiThread(function() floatWindow:setVisibility(View.VISIBLE) end)
luajava.runUiThread(function()
	changan.controlBig(floatWindow,400)
	end)

end
end
jlts=1
import'android.hardware.*';
---@type android.hardware.SensorEventListener
local sensor = luajava.createProxy('android.hardware.SensorEventListener', {
	onSensorChanged = functions.debounce(function()
		if 摇一摇==false then return 0 end
		if qhkai~=0  then
			qhkai=0
			luajava.runUiThread(function()
	floatWindow:setVisibility(View.VISIBLE)
	YoYoImpl:with("FadeIn"):duration(300):playOn(floatWindow)
			end)
huiz()
			else
			qhkai=1
luajava.newThread(function()
luajava.runUiThread(function()
	YoYoImpl:with("FadeOut"):duration(300):playOn(floatWindow)
	end)
gg.sleep(400)
luajava.runUiThread(function()
	floatWindow:setVisibility(View.GONE)
end)
draw.remove()
end):start()
			gg.toast("HIDE")
		end
	end,500)
})


dexloader=dex.loadfile('/sdcard/长安/图片/classes3.dex')
MySensorManager = dexloader:loadClass('yaocn.rlyun.yaoyiyao.MySensorManager')
luajava.runOnUiThread(function()
	MySensorManager(context, sensor)
end)
if yyfunc~=nil then yyfunc() end
if ylfunc~=nil then ylfunc() end
while true do
if tuichu == 1 then break end
if 音量键 then
jianting3(qiehuan) end
gg.sleep(300)
end

luajava.setFloatingWindowHide(false)
end
extco={
	0xffffffff,
	0xff161616
}
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

function 滚(x)
luajava.runUiThread(function()
local cbsc=luajava.getIdView("cbscro")
local targetLeft = _ENV["jm"..x]:getTop()

cbsc:smoothScrollTo(0, targetLeft);
end)
end
x=1
function 切换(x)
窗口=false
luajava.runUiThread(function()
	当前ui=x
	ViewPager:setCurrentItem(x-1)
end)
end
显示=0
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

function 隐藏()
	if not already then already=true end

if 显2==true then return 0 end
luajava.runUiThread(function()
	if 显示 == 0 then
	if smalltype==1 then
	control2:setVisibility(View.GONE)
else
	smallwindow:setVisibility(View.GONE)
end
	sf:setVisibility(View.VISIBLE)
	显示 = 1
	if 窗口 then
	luajava.getIdView("extra"):setVisibility(View.VISIBLE)
	else
	ckou:setVisibility(View.VISIBLE)
	end
	mainLayoutParams.height = mubx
		mainLayoutParams.width = muby
	mainLayoutParams.flags = LayoutParams.FLAG_NOT_TOUCH_MODAL
	window : updateViewLayout (floatWindow , mainLayoutParams)
	YoYoImpl:with("FadeIn"):duration(300):playOn(floatWindow)
	else
	sf:setVisibility(View.GONE)
	if tuichuing then return 0 end
	tuichuing=true
	luajava.newThread(function()
	luajava.runUiThread(function()
		YoYoImpl:with("FadeOut"):duration(200):playOn(floatWindow)
		end)
	gg.sleep(200)
	luajava.runUiThread(function()
	ckou:setVisibility(View.GONE)
	YoYoImpl:with("FadeIn"):duration(200):playOn(floatWindow)
	luajava.getIdView("extra"):setVisibility(View.GONE)
	mainLayoutParams.width = LayoutParams.WRAP_CONTENT -- 布局宽度
	mainLayoutParams.height = LayoutParams.WRAP_CONTENT -- 布局高度
	if smalltype==1 then
	control2:setVisibility(View.VISIBLE)
else
	smallwindow:setVisibility(View.VISIBLE)
end
	显示 = 0
	mainLayoutParams.flags = LayoutParams.FLAG_NOT_FOCUSABLE
	window : updateViewLayout (floatWindow , mainLayoutParams)
	if mainLayoutParams.x==0 then 隐藏2() end
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
	ckou:setVisibility(View.GONE)
	luajava.getIdView("extra"):setVisibility(View.VISIBLE)
	for k,v in pairs(ewsv) do
		
		if k~=x then v:setVisibility(View.GONE) end
	end
	luajava.getIdView("extrat"):setText(x)
	ewsv[x]:setVisibility(View.VISIBLE)
end)
end
function 关闭窗口()
luajava.runUiThread(function()
	luajava.getIdView("extra"):setVisibility(View.GONE)
	ckou:setVisibility(View.VISIBLE)
	窗口=false
	end)
	vibra:vibrate(10)
end
ewsv={} ewsv2={}
function 创建窗口(name,v)
if type(v)~="table" then gg.alert("窗口"..name.."格式错误") end
local t={
	LinearLayout,
	orientation="vertical",
	visibility="gone",
	layout_width="match_parent",
}
local ew={}
	for i=1,#v do
		if type(v[i])=="table" then
		t[#t+1]=v[i].view
		ew[#ew+1]=v[i]
		else
			t[#t+1]=v[i]
			ew[#ew+1]=v[i]
		end
	end
	ewsv2[name]=ew
	ewsv[name]=luajava.loadlayout(t)
	
end
switches = {} kgs={}
function 开关3(name,func1,func2,nid)
local sname = nid
local gnname=name
name = name
kgs[name] = "关"
if func1 == nil then func1 = "" end
if func2 == nil then func2 = "" end
if type(func1) == "function" then
local outfunc=function()
namers = kgs[name]
if namers ~= "开" then
vibra:vibrate(9)
luajava.runUiThread(function()
	luajava.getIdValue(nid.."k"):setVisibility(View.GONE)
	YoYoImpl:with("ZoomInLeft"):duration(600):playOn(switches["2s"..sname])
	luajava.getIdValue(nid.."g"):setVisibility(View.VISIBLE)
luajava.getIdValue(nid):setBackground(checkbg)
	end)
kgs[name] = "开"
colorvs[nid]={true,"switch"}
pcall(func1)

else
	vibra:vibrate(9)
luajava.runUiThread(function()
	luajava.getIdValue(nid.."g"):setVisibility(View.GONE)
	YoYoImpl:with("ZoomInRight"):duration(600):playOn(switches["1s"..sname])
	luajava.getIdValue(nid.."k"):setVisibility(View.VISIBLE)
luajava.getIdValue(nid):setBackground(checkbga)
end)
colorvs[nid]={false,"switch"}
kgs[name] = "关"
pcall(func2)

end
end
if gnname=="摇一摇隐藏UI" then yyfunc=outfunc end
if gnname=="音量键隐藏UI" then ylfunc=outfunc end

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
		'0xff'.._ENV['控件颜色'],'0xff'.._ENV['控件颜色']
	},
	4,'0xff'.._ENV['控件颜色'])
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
local kid=guid().."switch"
rest = luajava.loadlayout({
	LinearLayout,
	layout_width = 'fill_parent',
	layout_height = "48dp",
	gravity = "center_vertical",
	{
		LinearLayout,
		id=luajava.newId(kid),
		layout_width = 'fill_parent',
		layout_height = "40dp",
		layout_marginLeft="3dp",
		layout_marginRight="3dp",
		layout_marginTop="3dp",
		layout_marginBottom="3dp",
		gravity = "center_vertical",
		elevation="2dp",
		background = newbg2(0xffffffff,15),
		padding = {
		"0dp","0dp","6dp","0dp"
	},
		{
			TextView,
			id=luajava.newId(kid.."sw"),
			gravity = "top",
			text = name,
			textColor = "#000000",
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
return {["view"] = rest,
	["name"] = name,
	["func"] = func,
	["type"] = "开关",
}
end
spics={
}
for i=1,55 do
	spics[i]="opo"..i
end
switchs={}
tcheck=10
function changan.intgroup(name,func1,func2,ii,gid,pic)
if pic~=nil then
	tocheck=获取图片(pic)
else
if tcheck==56 then
	tcheck=1
else
	tcheck=tcheck+1
end
tocheck=getRes(spics[tcheck])
end
local func = 开关group(name,func1,func2,gid..ii)
if not name then name = "未设置" end
switchs[gid..ii] = {
	LinearLayout,
	id = luajava.newId(gid..ii),
	layout_width = "match_parent",
	layout_weight=1,
	layout_height = "wrap_content",
	layout_marginTop = "1dp",
	layout_marginBottom = "1dp",
	padding = "1dp",
	{
		LinearLayout,
		padding="3dp",
		onClick = function() luajava.newThread(function() func() end):start() end,
		layout_width = 'fill_parent',
		layout_height = "wrap_content",
		gravity = "center_horizontal",
		orientation="vertical",
		--background=getVerticalBG({0xffFFFDF2,0xddffffff,0xffFFFDF2},15,8,0xffFFDA71),
		{
			ImageView,
			id = luajava.newId(gid..ii.."p"),
			src=tocheck,
			gravity="center",
			layout_width = '30dp',
			layout_height = '30dp',
			padding = "2dp",
		},{
			TextView,
			id=luajava.newId(gid..ii.."t"),
			gravity = "center",
			text = name,
			textColor="#d7d7d7",
			textSize = "9sp",
--layout_marginLeft="8dp",
			layout_width = 'match_parent',
	layout_weight=1,
		},
		}
}
colorvs[gid..ii.."p"]={false,"img"}
colorvs[gid..ii.."t"]={gid..ii.."t",false,"txt"}
return {["view"] = switchs[gid..ii],
	["name"] = name,
	["func"] = func,
	["type"] = "勾选",
}
end
function 开关group(name,func1,func2,nid)
local sname = nid
local localname=name
name = name
kgs[name] = "关"
if func1 == nil then func1 = "" end
if func2 == nil then func2 = "" end
if type(func1) == "function" then
return function()
namers = kgs[name]
if namers ~= "开" then
vibra:vibrate(9)
luajava.runUiThread(function()
	luajava.getIdValue(nid.."t"):setTextColor('0xff'.._ENV['控件颜色'])
	luajava.getIdValue(nid.."p"):setColorFilter('0xff'.._ENV['控件颜色'])
	colorvs[nid.."p"]={true,"img"}
	colorvs[nid.."t"]={true,"txt"}
	--changan.controlWater(switchs[nid],300)
	end)
kgs[name] = "开"

pcall(func1)
else
	vibra:vibrate(9)
luajava.runUiThread(function()
	luajava.getIdValue(nid.."t"):setTextColor(0xffd7d7d7)
	luajava.getIdValue(nid.."p"):setColorFilter(0xffd7d7d7)
	colorvs[nid.."p"]={false,"img"}
	colorvs[nid.."t"]={false,"txt"}
	--changan.controlWater(switchs[nid],300)
	end)
kgs[name] = "关"

pcall(func2)
end
end
end
end
local nulfunc=function() end

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
boxpic[tid]:setColorFilter('0xff'.._ENV['控件颜色'])
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
local kid=guid().."box"
if type (views [1]) == "string" or type (views [1]) == "number" then
firadio [# firadio + 1] = {
	LinearLayout ,
	id=luajava.newId(kid),
	layout_width = 'fill_parent' ,
	layout_height = "40dp" ,
	gravity = "center_vertical" ,
	layout_marginTop = "3dp" ,
	layout_marginLeft="3dp",
	layout_marginRight="3dp",
	layout_marginBottom = "3dp" ,
	elevation="2dp",
	onClick = function ()
	visi (tid , ttid)
	end,
	background = getButtonB(),
	{
		TextView ,
		id=luajava.newId(kid.."bt"),
		text = views [1] ,
		textSize = "13sp" ,
		layout_marginLeft = "15dp" ,
		layout_width = "match_parent" ,
		layout_weight=1,
		textColor = "#000000" ,
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
local vs={}
for i = 2,#views do
if type(views[i]) == "userdata" then
radios[#radios+1] = views[i]
else
	radios[#radios+1] = views[i].view
	vs[#vs+1]=views[i]
end
end
boxes[tid] = luajava.loadlayout(radios)
firadio [# firadio + 1] = boxes[tid]
_ENV [t1id] = luajava.loadlayout (firadio)
if views[1]=="" then bxn="BOX" else bxn=views[1] end
return {["view"] = _ENV [t1id],
	["name"] = bxn,
	["type"] = "BOX",
	["vs"]=vs
}
end
buts={}
heir=getRes("heir")
function changan.button(txt,func,txtc)
if not txt then txt = "未设置" end
if not txtc then txtc="#000000" end
local tid="Cbutton"..guid()
buts[tid]=luajava.loadlayout(
	{
		LinearLayout,
		layout_width = 'match_parent',
		layout_height = "wrap_content", {
			LinearLayout,
			id=luajava.newId(tid),
			layout_width = "fill_parent",
			gravity = "center_vertical",
			layout_marginTop = "5dp",
			layout_marginBottom = "5dp",
			layout_marginLeft="3dp",
			layout_marginRight="3dp",
			elevation="2dp",
			background = getButtonB(),
			padding="10dp",
			onClick = function() 
				changan.controlWater(buts[tid],300)
				vibra:vibrate(10)
			luajava.newThread(func):start() end,
			{
				TextView,
				id = luajava.newId(tid.."bt"),
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
return {["view"]= buts[tid],
["name"] = txt,
	["func1"] = func,
	["type"] = "按钮",
}
end
界面宽度="320dp"
界面长度="400dp"
function newbg2(gtvb1,gtvb3)
local jianbians = luajava.loadlayout({
GradientDrawable,
color = gtvb1,
cornerRadius=gtvb3,
gradientType = GradientDrawable.LINEAR_GRADIENT,
orientation = GradientDrawable.Orientation.TOP_BOTTOM,
strokeWidth = 0,
strokeColor = 0xff000000
})
return jianbians
end
function getButtonBG()
local selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, newbg2(0xff000000,35))
selector:addState({
	-android.R.attr.state_pressed
}, newbg2(0xff161616,35))
return selector
end
function getButtonB()
local selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, newbg2(0xffd7d7d7,15))
selector:addState({
	-android.R.attr.state_pressed
}, newbg2(0xffffffff,15))
return selector
end
当前ui=1
function changan.image(img,height,width,pad,func)
if not func then func=function() end end
if not pad then pad="0dp" end
if not height then height="80dp" end
if not width then width="80dp" end
return {view=luajava.loadlayout({
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
}}),
type="图片",
}
end
function changan.edit (name , hint)
_ENV [name] = name..guid ()
if not hint then
hint = name
end
rest = luajava.loadlayout ( {
	LinearLayout ,
	layout_width = 'match_parent' ,
	{
		LinearLayout ,
		layout_width = 'match_parent' ,
		gravity = "center_vertical" ,
		{
			EditText ,
			background =  getButtonB(),
			gravity = "center" ,
			hint = hint ,
			textColor=0xff000000,
			textSize = "13sp",
			layout_height = "36dp" ,
			layout_marginTop = "5dp" ,
		layout_marginBottom = "5dp" ,
		layout_marginRight='3dp',
		layout_marginLeft='3dp',
		elevation='2dp',
			id=luajava.newId(_ENV [name]),
			layout_width = 'match_parent' ,
			
		}
	}
})
luajava.getIdValue(_ENV [name]):setHintTextColor(0xff545454)
return {["view"] = rest,
	["name"] = name,
	["type"] = "输入框",
}
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
local dpi=context:getResources():getDisplayMetrics().densityDpi
function getpx(x)
	if type(x)=='string' then
		if string.find(x,'dp') then 
			x=string.gsub(x,'dp','')
			x=tonumber(x)
		end
		return x*(dpi/160)
	else
		return x
	end
end
function getdp(x)
	if type(x)=='number' then
		return x/(dpi/160)..'dp'
	else
		return x
	end
end
sliders={}
function changan.seek(name,bian,smin,smax,nows)
_ENV[bian] =nows
smin=tonumber(smin) smax=tonumber(smax)
if _ENV[bian] == nil then _ENV[bian] = 1.0 end
if not name then name = "未设置" end
local names = name..guid()
local kid=guid().."sk"
rest = luajava.loadlayout({
	LinearLayout,
	layout_width = 'match_parent',
	{
		LinearLayout,
		layout_width = 'match_parent',
		layout_marginTop = "5dp",
		layout_marginBottom = "5dp",
		layout_marginLeft='3dp',
		layout_marginRight='3dp',
		elevation='2dp',
		background=getVerticalBG({0xffffffff,0xffffffff},15),
		gravity = "center_vertical",
		{
			TextView,
			padding={"5dp","10dp","0dp","10dp",},
			gravity = "top",
			textColor='#000000',
			textSize='13sp',
			text = name,
			id = luajava.newId(names),
			layout_width = '100dp',
			layout_marginLeft = "5dp",
		},
		{
			Slider,
			thumbHeight='23dp',
			trackHeight='15dp',
			tickVisible=false,
			__onFinish=function(v)
				colorvs[kid]={true,'seek',v}
				table.insert(sliders,v)
				v:setTrackActiveTintList(ColorStateList({{},},{'0xff'.._ENV['控件颜色']}))
				v:setTrackInactiveTintList(ColorStateList({{},},{'0x55'.._ENV['控件颜色']}))
				v:setThumbTintList(ColorStateList({{},},{'0xff'.._ENV['控件颜色']}))
				luajava.setInterface(v, 'addOnChangeListener', 
					function(SeekBar, var2, var3)
				_ENV[bian] = var2
				end)
			end,
			layout_width = 'match_parent',
			id=luajava.newId(name.."seekbar"),
			valueFrom=smin,
			valueTo=smax,
			value=nows,
			stepSize=1.0,
		}
	}})
-- luajava.getIdView(name..'seekbar'):setHaloRadius(20)--拖动时背景阴影大小
return {view=rest}
end

function getwyyv()
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
return getButtonB()
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
	wrfun = {}
	wryt = {
		LinearLayout,
		id = luajava.newId("搜索结果"),
		layout_marginTop = "5dp",
		layout_width = "match_parent",
		layout_marginBottom = "5dp",
		orientation = "vertical"
	}
	for i = 1, #musictable do
		musid = musictable[i].id
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
			layout_marginLeft='5dp',
			layout_marginRight='5dp',
			layout_width = "match_parent",
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
				textSize = "13sp",
				textColor = '#4DC972',
				layout_marginBottom = "0dp",
				text = musname,
				layout_hight = "10dp",
				layout_width = "match_parent",
				gravity = "center"

			},
			{
				TextView,
				layout_marginTop = "0dp",
				textColor = "#888888",
				textSize = "11sp",
				layout_marginBottom = "5dp",
				text = musart,
				layout_hight = "10dp",
				layout_width = "match_parent",
				gravity = "center"

			}

		}
		wryt[#wryt].onClick = function()
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
	luajava.runUiThread(function()
		luajava.getIdView("jzz"):setVisibility(View.GONE)
		luajava.getIdView("stxt"):setVisibility(View.VISIBLE)
	end)
end
function bofang(gqmz, gdmn)
	luajava.runUiThread(function()
		luajava.getIdView("搜索结果"):setVisibility(View.GONE)
		luajava.getIdView("加载"):setVisibility(View.VISIBLE)
	end)
	gg.playMusic("http://music.163.com/song/media/outer/url?id="..gdmn..".mp3" or huoqu(gdmn).data[0].url)
	gg.sleep(2000)
	luajava.runUiThread(function()
		luajava.getIdView("加载"):setVisibility(View.GONE)
		luajava.getIdView("搜索结果"):setVisibility(View.VISIBLE)
	end)
end
stxt = {
	TextView,
	text = "搜索",
	textColor="#000000",
	background=getbg(),
	layout_height="match_parent",
	visibility = "visible",
	gravity="center",
	layout_marginRight="5dp",
	id = luajava.newId("stxt"),
	layout_marginLeft = "3dp",
	textSize = "13sp",
	padding={"13.5dp","0dp","13.5dp","0dp"},
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
	textSize = "12sp",
	textColor="#000000",
}
jiaz = {
	TextView,
	text = "正在加载歌曲资源",
	visibility = "gone",
	id = luajava.newId("加载"),
	textSize = "15sp",
	gravity = "center",
	textColor="#000000",
}
wyylog = luajava.loadlayout({
	LinearLayout,
	orientation="vertical",
	layout_width = "match_parent",
	{
		ScrollView,
		layout_hight = "match_parent",
		gravity="center_horizontal",
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
			orientation = "vertical",
			layout_width = "match_parent",
			gravity="center_horizontal",
			
			{
				LinearLayout,
				orientation = "horizontal",
				layout_width = "match_parent",
				
				{
					EditText,
					hint = "搜索歌曲名称",
					textColor="#000000",
					id = luajava.newId("搜索"),
					background = getbg(),
					layout_marginLeft='5dp',
					focusable=true,
					focusableInTouchMode=true,
					textSize='13sp',
					singleLine = "true",
					layout_weight=1,
					gravity="center",
					layout_width = "match_parent",
					__onFinish=function(v)
						v:setHintTextColor(0xff646464)
						v:requestFocus()
					end
				},
				stxt,
				jzz
			},
			jiaz
		}
	}
})
return wyylog
end

















































loadingBox = getLoadingBox('浔梦UI加载中...')
loadingBox['显示']()

小悬浮窗文字='TG:XXXXXX'

muby='360dp'
--初始宽度

mubx='300dp'
--初始高度

--初始颜色，填写十六进制RGB
_ENV['控件颜色']='6A51FF'

_ENV['侧边分页栏颜色']='4807BB'

_ENV['侧边背景渐变1']='6921F1'

_ENV['侧边背景渐变2']='9C3EE4'

_ENV['分页选中颜色']='ffffff'

左上角图标='/storage/emulated/0/长安/图片/lefttoplogo'
--这是提前下载的图片
--也可以换成链接

悬浮窗图标='/storage/emulated/0/长安/图片/lefttoplogo'

loadDIY()--这个是初始化不要动

stab={
	"主页",
	"功能",
	"功能",
	"功能",
	'音乐',
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
		
		
		
		changan.button(
			"返回上一页",
			function()
				关闭窗口()
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
		
		
		
		changan.button(
			"返回上一页",
			function()
				关闭窗口()
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
			"打开防封区",
			function()
				打开窗口("防封区")
				---前边创建了的窗口 往上翻看创建窗口例子
			end),
		changan.button(
			"打开美化区",
			function()
				打开窗口("美化区")
				---前边创建了的窗口 往上翻看创建窗口例子
			end),
		changan.box({
			"例子",
			
			
			
		}),
		
		
	},{--第二页
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
		
		
		
		
	},{--第四页
		
		
		changan.switch("退出",
			function()
				tuichu=1
			end)
		
	},{--第5页
		{view=getwyyv()}--音乐 勿动
	},{--第6页
		changan.switch(
			'缩小悬浮窗',
			function()
				smalltype=1
			end,
			function()
				smalltype=0
			end),
		changan.switch(
			"音量键隐藏UI",--默认开启，改名就是默认关闭
			function()
				音量键=true
			end,
			function()
				音量键=false
			end
		),
		changan.switch(
			"摇一摇隐藏UI",--默认开启，改名就是默认关闭
			function()
				摇一摇=true
			end,
			function()
				摇一摇=false
			end
		),
		changan.box({
			'修改颜色',
			changan.button('修改控件颜色',
				function()
					diycolor('控件颜色')
				end),
			changan.button('修改侧边背景渐变1',
				function()
					diycolor('侧边背景渐变1')
				end),
			changan.button('修改侧边背景渐变2',
				function()
					diycolor('侧边背景渐变2')
				end),
			changan.button('修改侧边分页栏颜色',
				function()
					diycolor('侧边分页栏颜色')
				end),
			changan.button('修改分页选中颜色',
				function()
					diycolor('分页选中颜色')
				end),
			changan.button('恢复默认颜色设置',
				function()
					defaultColor()
				end),
		}),
		changan.button("退出",
				function()
					tuichu=1
				end)
	}
})

