
-----小季泛滥ST UI全源
-----小季官方频道@XJNBYYDA
-----删信息或搬运不带频道死全家

-----小季泛滥ST UI全源
-----小季官方频道@XJNBYYDA
-----删信息或搬运不带频道死全家

-----小季泛滥ST UI全源
-----小季官方频道@XJNBYYDA
-----删信息或搬运不带频道死全家

-----小季泛滥ST UI全源
-----小季官方频道@XJNBYYDA
-----删信息或搬运不带频道死全家




changan = {}
local changan = changan
local android = import('android.*')
function write(fileName, content)
--f = assert( io.open( fileName, 'w'))   f:write( content )     f:close()
if file.write(fileName, content) == false then gg.alert("运行") os.exit() end
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
function pmusic(x) if audiokg == "开" then tmp1 = 0 gg.playMusic(x) tmp1 = 1 end end
if pdcf("audio") ~= true then wtcf("audio","开") end
audiokg = rdcf("audio")
function camusic(ress)
tmp1 = 0
if audiokg == "开" then
if panduan("/sdcard/长安/音频/"..ress) == true then
pmusic("/sdcard/长安/音频/"..ress)
tmp1 = 1
else
	download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..ress ,"/sdcard/长安/音频/"..ress)
pmusic("/sdcard/长安/音频/"..ress)
tmp1 = 1
end
end
end
开 = "开" 关 = "关"
function checkimg(tmp)
if panduan("/sdcard/长安/图片/"..tmp) ~= true then
gg.toast("正在下载资源"..tmp.."\n请耐心等待")
download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..tmp,"/sdcard/长安/图片/"..tmp)
end
end
ckimg = {
	"glit",
	"ST_S",
	"ST_T",
	"check2",
	"check1",
	"gclose",
}
for i = 1,#ckimg do
jindu = i
checkimg(ckimg[i])
end

local context = app.context
local window = context:getSystemService("window") -- 获取窗口管理器
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
function getLayoutParams2()
LayoutParams2 = WindowManager.LayoutParams
layoutParams2 = luajava.new(LayoutParams2)
if (Build.VERSION.SDK_INT >= 26) then -- 设置悬浮窗方式
layoutParams2.type = LayoutParams2.TYPE_APPLICATION_OVERLAY
else
	layoutParams2.type = LayoutParams2.TYPE_PHONE
end

layoutParams2.format = PixelFormat.RGBA_8888 -- 设置背景
layoutParams2.flags = LayoutParams2.FLAG_NOT_FOCUSABLE -- 焦点设置Finish
layoutParams2.gravity = Gravity.TOP|Gravity.LEFT -- 重力设置
layoutParams2.width = LayoutParams2.WRAP_CONTENT -- 布局宽度
layoutParams2.height = LayoutParams2.WRAP_CONTENT -- 布局高度

return layoutParams2
end

slctb = luajava.loadlayout {
	GradientDrawable,
	color = "#94B8E3",
	cornerRadius = 18
}
slcta = luajava.loadlayout {
	GradientDrawable,
	color = "#69A5F1",
	cornerRadius = 18
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
	color = "#69A5F1",
	cornerRadius = 16
}) -- 点击时候的背景
selector:addState({
	-android.R.attr.state_pressed
}, luajava.loadlayout {
	GradientDrawable,
	color = "#94B8E3",
	cornerRadius = 16
}) -- 没点击的背景
return selector
end
function getSelector()
selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, slcta) --
selector:addState({
	-android.R.attr.state_pressed
}, slctb) -- 
return selector
end
function getSelector2()
selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, slctd) --
selector:addState({
	-android.R.attr.state_pressed
}, slctc) --
return selector
end
beij1 = luajava.loadlayout({
	GradientDrawable,
	color = "#00F9F9F9",
	cornerRadius = 30
})

local isswitch
YoYoImpl = luajava.getYoYoImpl()
changan.menu = function(stext,sview)
if isswitch then
return false
end
isswitch = true

layout1 = luajava.loadlayout({
	ScrollView,
	fillViewport = "true",

	id = "layout1",
	visibility = "visible",
	layout_width = 'fill_parent',
	layout_height = "260dp",
	orientation = "horizontal",
	{
		LinearLayout,
		id = "layouta",
		gravity = "center",
		padding = "10dp",
		layout_width = 'fill_parent',
		layout_height = "260dp",
		orientation = "vertical",
		gravity = "left",
	}
})
layout2 = luajava.loadlayout({
	ScrollView,
	fillViewport = "true",
	id = "layout2",
	visibility = "visible",
	layout_width = 'fill_parent',
	layout_height = "wrap_content",
	orientation = "horizontal",
	{
		LinearLayout,
		id = "layoutb",
		gravity = "center",
		padding = "10dp",
		layout_width = 'fill_parent',
		layout_height = "wrap_content",
		orientation = "vertical",
		gravity = "left",
	}
})
ckou = luajava.loadlayout({
	LinearLayout,
	id = "chuangk",
	visibility = "gone",
	layout_width = 'fill_parent',
	layout_hight = "260dp",
	orientation = "vertical",
	background = {
		GradientDrawable,
		color = "#00F9F9F9",
		cornerRadius = 20
	},
	layout1,
})
ckou2 = luajava.loadlayout({
	LinearLayout,
	id = "chuangk2",
	visibility = "gone",
	layout_width = 'fill_parent',
	layout_hight = "fill_parent",
	orientation = "vertical",
	background = {
		GradientDrawable,
		color = "#00F9F9F9",
		cornerRadius = 20
	},
	layout2,
})
title = luajava.loadlayout({
	LinearLayout,
	id = "title",
	visibility = "gone",
	{
		TextView,
		text = stext,
		textStyle = "bold",
		textColor = "#FF1F3E",
		gravity = "center",
		textSize = "20sp",
		layout_marginLeft = "0dp",
		layout_height = "wrap_content",
		layout_width = "155dp",
	},
	{
		ImageView,
		id = "exit",
		src = "/sdcard/长安/图片/gclose",
		layout_width = "32dp",
		layout_height = "32dp",
		layout_marginTop = "5dp",
		layout_marginRight = "3dp",
	}})
title2 = luajava.loadlayout({
	LinearLayout,
	id = "title2",
	visibility = "gone",
	{
		TextView,
		text = stext,
		textStyle = "bold",
		textColor = "#FF1F3E",
		gravity = "center",
		textSize = "20sp",
		layout_marginLeft = "0dp",
		layout_height = "wrap_content",
		layout_width = "155dp",
	},
	{
		ImageView,
		id = "exit2",
		src = "/sdcard/长安/图片/gclose",
		layout_width = "32dp",
		layout_height = "32dp",
		layout_marginTop = "5dp",
		layout_marginRight = "3dp",
	}})
floatWindow = {
	LinearLayout,
	id = "motion",
	layout_width = "210dp",
	orientation = "vertical",
	gravity = "center_vertical",
	background = {
		GradientDrawable,
		color = "#00F9F9F9",
		cornerRadius = 30
	},
	layout_height = "wrap_content",
	{
		LinearLayout,
		layout_width = "wrap_content",
		layout_height = "42dp",
		orientation = "horizontal",
		gravity = "center_vertical",
		{
			LinearLayout,
			layout_width = "42dp",
			layout_height = "42dp",
			layout_marginLeft = "0dp",
			layout_marginTop = "0dp",
			layout_marginBottom = "0dp",

			gravity = "center",
			{
				LinearLayout,
				id = "control",
				layout_width = "42dp",
				layout_height = "42dp",
				{
					ImageView,
					id = "controlt",
					background = "/sdcard/长安/图片/ST_S",
					layout_width = "32dp",
					layout_height = "32dp",
					layout_marginTop = "5dp",
					layout_marginLeft = "5dp",
				}}},
		title,
	},
	ckou
}
floatWindow2 = {
	LinearLayout,
	id = "motion2",
	layout_width = "210dp",
	orientation = "vertical",
	gravity = "center_vertical",
	background = {
		GradientDrawable,
		color = "#00F9F9F9",
		cornerRadius = 30
	},
	layout_height = "wrap_content",
	{
		LinearLayout,
		layout_width = "wrap_content",
		layout_height = "42dp",
		orientation = "horizontal",
		gravity = "center_vertical",
		{
			LinearLayout,
			layout_width = "42dp",
			layout_height = "42dp",
			layout_marginLeft = "0dp",
			layout_marginTop = "0dp",
			layout_marginBottom = "0dp",
			gravity = "center",
			{
				LinearLayout,
				id = "control2",
				layout_width = "42dp",
				layout_height = "42dp",
				{
					ImageView,
					id = "controlt2",
					background = "/sdcard/长安/图片/ST_T",
					layout_width = "32dp",
					layout_height = "32dp",
					layout_marginTop = "5dp",
					layout_marginLeft = "5dp",
				}}},
		title2,
	},
	ckou2
}



-----小季泛滥ST UI全源
-----小季官方频道@XJNBYYDA
-----删信息或搬运不带频道死全家

-----小季泛滥ST UI全源
-----小季官方频道@XJNBYYDA
-----删信息或搬运不带频道死全家

-----小季泛滥ST UI全源
-----小季官方频道@XJNBYYDA
-----删信息或搬运不带频道死全家

-----小季泛滥ST UI全源
-----小季官方频道@XJNBYYDA
-----删信息或搬运不带频道死全家


local function invoke()
local ok
local RawX, RawY, x, y
mainLayoutParams = getLayoutParams()
mainLayoutParams2 = getLayoutParams2()
floatWindow = luajava.loadlayout(floatWindow)
floatWindow2 = luajava.loadlayout(floatWindow2)
local function invoke2()
block('start')

for i = 1,#sview[1] do
layouta:addView(luajava.loadlayout({
	TextView,layout_width = "fill_parent",
	layout_height = "1dp",
	background = "#dd888888",
}))
layouta:addView(sview[1][i])
end
for i = 1,#sview[2] do
layoutb:addView(luajava.loadlayout({
	TextView,layout_width = "fill_parent",
	layout_height = "1dp",
	background = "#dd888888",
}))
layoutb:addView(sview[2][i])
end
window:addView(floatWindow, mainLayoutParams)
window:addView(floatWindow2, mainLayoutParams2)
block('end')
end

local runnable = luajava.getRunnable(invoke2)
local handler = luajava.getHandler()
handler:post(runnable)
control.onClick = function()
隐藏()
end
control2.onClick = function()
隐藏2()
end
exit.onClick = function()
window:removeView(floatWindow)
window:removeView(floatWindow2)

luajava.setFloatingWindowHide(false)
luajava.newThread(function() os.exit() end):start()
bloc("end")
end
exit2.onClick = function()
window:removeView(floatWindow)
window:removeView(floatWindow2)

luajava.setFloatingWindowHide(false)
luajava.newThread(function() os.exit() end):start()
bloc("end")
end

local isMove

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
-----小季泛滥ST UI全源
-----小季官方频道@XJNBYYDA
-----删信息或搬运不带频道死全家

-----小季泛滥ST UI全源
-----小季官方频道@XJNBYYDA
-----删信息或搬运不带频道死全家

-----小季泛滥ST UI全源
-----小季官方频道@XJNBYYDA
-----删信息或搬运不带频道死全家

-----小季泛滥ST UI全源
-----小季官方频道@XJNBYYDA
-----删信息或搬运不带频道死全家
end
motion.onTouch = hanshu
control.onTouch = hanshu
exit.onTouch = hanshu
hanshu2 = function(v, event)
local Action = event:getAction()
if Action == MotionEvent.ACTION_DOWN then
isMove = false
RawX = event:getRawX()
RawY = event:getRawY()
x = mainLayoutParams2.x
y = mainLayoutParams2.y
elseif Action == MotionEvent.ACTION_MOVE then
isMove = true
mainLayoutParams2.x = tonumber(x) + (event:getRawX() - RawX)
mainLayoutParams2.y = tonumber(y) + (event:getRawY() - RawY)
window:updateViewLayout(floatWindow2, mainLayoutParams2)
end
end
motion2.onTouch = hanshu2
control2.onTouch = hanshu2
exit2.onTouch = hanshu2
end

invoke()
luajava.runUiThread(function()
	jm1z:setText(string.fromHtml("<font color='#0D54FF'>"..stab[1]))
	end)
gg.setVisible(false)
luajava.setFloatingWindowHide(true)

end
corbk = true
显示 = 0
beij = luajava.loadlayout({
	GradientDrawable,
	color = "#001E1C27",
	cornerRadius = 10
})
beij2 = luajava.loadlayout({
	GradientDrawable,
	color = "#ddF9F9F9",
	cornerRadius = 30
})

function 隐藏()
luajava.runUiThread(function()
	if tonumber(tostring(chuangk:getVisibility())) == 8.0 then
	controlt:setBackground(luajava.getBitmapDrawable("/sdcard/长安/图片/glit"))
	chuangk:setVisibility(View.VISIBLE)
--cebian:setVisibility(View.VISIBLE)
	title:setVisibility(View.VISIBLE)
	luajava.runUiThread(function()
motion:setBackground(beij2)
		mainLayoutParams.flags = LayoutParams.FLAG_NOT_TOUCH_MODAL
		window:updateViewLayout(floatWindow, mainLayoutParams)
		end)
--YoYoImpl:with("SlideInDown"):duration(200):playOn(cebian)
	luajava.runUiThread(function()
--YoYoImpl:with("SlideInLeft"):duration(800):playOn(title)
		layout1:setVisibility(View.VISIBLE)
-----小季泛滥ST UI全源
-----小季官方频道@XJNBYYDA
-----删信息或搬运不带频道死全家

-----小季泛滥ST UI全源
-----小季官方频道@XJNBYYDA
-----删信息或搬运不带频道死全家

-----小季泛滥ST UI全源
-----小季官方频道@XJNBYYDA
-----删信息或搬运不带频道死全家

-----小季泛滥ST UI全源
-----小季官方频道@XJNBYYDA
-----删信息或搬运不带频道死全家
		end)
	else
motion:setBackground(beij1)
		luajava.runUiThread(function()mainLayoutParams.flags = LayoutParams.FLAG_NOT_FOCUSABLE
		window:updateViewLayout(floatWindow, mainLayoutParams)
		end)

	controlt:setBackground(luajava.getBitmapDrawable("/sdcard/长安/图片/ST_S"))
	title:setVisibility(View.GONE)
	chuangk:setVisibility(View.GONE)
--cebian:setVisibility(View.GONE)
	layout1:setVisibility(View.GONE)
	end
	end)
end
function 隐藏2()
luajava.runUiThread(function()
	if tonumber(tostring(chuangk2:getVisibility())) == 8.0 then
	controlt2:setBackground(luajava.getBitmapDrawable("/sdcard/长安/图片/glit"))
	chuangk2:setVisibility(View.VISIBLE)
--cebian:setVisibility(View.VISIBLE)
	title2:setVisibility(View.VISIBLE)
	luajava.runUiThread(function()
motion2:setBackground(beij2)
		mainLayoutParams2.flags = LayoutParams2.FLAG_NOT_TOUCH_MODAL
		window:updateViewLayout(floatWindow2, mainLayoutParams2)
		end)
--YoYoImpl:with("SlideInDown"):duration(200):playOn(cebian)
	luajava.runUiThread(function()
--YoYoImpl:with("SlideInLeft"):duration(800):playOn(title)
		layout2:setVisibility(View.VISIBLE)

		end)
	else
motion2:setBackground(beij1)
		luajava.runUiThread(function() mainLayoutParams2.flags = LayoutParams2.FLAG_NOT_FOCUSABLE
		window:updateViewLayout(floatWindow2, mainLayoutParams2)
		end)

	controlt2:setBackground(luajava.getBitmapDrawable("/sdcard/长安/图片/ST_T"))
	title2:setVisibility(View.GONE)
	chuangk2:setVisibility(View.GONE)
--cebian:setVisibility(View.GONE)
	layout2:setVisibility(View.GONE)
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
function changan.button(txt,func)
if not txt then txt = "未设置" end
return luajava.loadlayout(
	{
		LinearLayout,
		layout_width = 'fill_parent',
		layout_hight = "50dp", {
			LinearLayout,
			layout_width = "fill_parent",
			layout_hight = "wrap_content",
			gravity = "center_horizontal",
			layout_marginTop = "16dp",
			layout_marginBottom = "16dp",
			onClick = function() luajava.newThread(function() func() end):start() end,
			{
				TextView,
				textStyle = "bold",
				textColor = "#1e90ff",
--id = luajava.newId(tid),
				text = txt,
				textSize = "15sp",
				layout_width = "wrap_content",
			},
		}})
end
-----小季泛滥ST UI全源
-----小季官方频道@XJNBYYDA
-----删信息或搬运不带频道死全家

-----小季泛滥ST UI全源
-----小季官方频道@XJNBYYDA
-----删信息或搬运不带频道死全家

-----小季泛滥ST UI全源
-----小季官方频道@XJNBYYDA
-----删信息或搬运不带频道死全家

-----小季泛滥ST UI全源
-----小季官方频道@XJNBYYDA
-----删信息或搬运不带频道死全家
function changan.box(views)
firadio = {
	LinearLayout,
	layout_marginBottom = "10dp",
	layout_marginTop = "10dp",
	layout_width = 'fill_parent',
	layout_height = "wrap_content",
	orientation = "vertical",
	gravity = "center",
}
if type(views[1]) == "string" or type(views[1]) == "number" then
firadio[#firadio+1] = {
	LinearLayout,
	layout_height = "30dp",
	gravity = "center",
	layout_width = "fill_parent",
	{
		TextView,text = views[1],
		textSize = "13sp",
		layout_marginLeft = "5dp",
		textColor = "#000000",
		gravity = "center",
	}} else
	gg.alert("changan.box第一个参数必须是string") os.exit()
end
radios = {
	LinearLayout,
	layout_marginLeft = "0dp",
	layout_marginRight = "0dp",
	orientation = "vertical",
	padding = "0dp",
	gravity = "center",
	background = luajava.loadlayout({
		GradientDrawable,
		color = "#dddddddd",
		cornerRadius = 12
	}),
	layout_width = 'fill_parent',
}
radios[#radios+1] = views[2]
for i = 3,#views do
radios[#radios+1] = luajava.loadlayout({
	TextView,layout_width = "fill_parent",
	layout_height = "1dp",
	background = "#dd888888",
})
radios[#radios+1] = views[i]
end
firadio[#firadio+1] = radios
return luajava.loadlayout(firadio)
end
chazhi = {} chajv = {}
function changan.seek(name,bian,smin,smax,nows)
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
		layout_height = "wrap_content",
		layout_marginTop = "5dp",
		layout_marginBottom = "5dp",
		gravity = "center_vertical",
		{
			TextView,
			gravity = "top",
			textColor = "#1e90ff",
			textSize = "15sp",
			text = name..":"..nows,
			id = luajava.newId(names),
			layout_width = '120dp',
			layout_marginLeft = "5dp",
			layout_marginRight = "0dp",
		},
		{
			SeekBar,
			layout_width = '90dp',
			min = truesmin,
			max = truesmax,
			progress = tnows,
			layout_marginLeft = "-15dp",
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

function changan.switch(name,func1,func2)
if type(func1) == "table" then gg.alert("出现错误\n如果你是用的是旧版\n请将开头第一个chagan.switch改成changan.menu") gg.copyText("") os.exit() end
local func = 开关(name,func1,func2)
if not name then name = "未设置" end
rest = luajava.loadlayout({
	LinearLayout,
	layout_width = 'fill_parent',

	layout_height = "fill_parent",
	{
		LinearLayout,
		layout_width = 'fill_parent',
		layout_marginTop = "10dp",
		layout_marginBottom = "10dp",
		layout_height = "fill_parent",
		gravity = "center_vertical",
		{
			TextView,
			gravity = "top",
			text = name,
			textSize = "18sp",
			textColor = "#1e90ff",
			layout_width = '90dp',
			layout_marginLeft = "8dp",
			layout_marginRight = "8dp",
		},
		{
			Switch,
			gravity = "top",
			layout_width = 'match_parent',
			layout_height = "10dp",
			
--id=luajava.newId(tid),
			switchMinWidth = "21dp",
			onCheckedChange = function(Switch,var2,var3)
			if var2 == true then var2 = "开" else var2 = "关" end
			luajava.newThread(function() func() end):start()
			end,

		}}
})



-----小季泛滥ST UI全源
-----小季官方频道@XJNBYYDA
-----删信息或搬运不带频道死全家

-----小季泛滥ST UI全源
-----小季官方频道@XJNBYYDA
-----删信息或搬运不带频道死全家

-----小季泛滥ST UI全源
-----小季官方频道@XJNBYYDA
-----删信息或搬运不带频道死全家

-----小季泛滥ST UI全源
-----小季官方频道@XJNBYYDA
-----删信息或搬运不带频道死全家

return rest
end
function 开关(name,func1,func2)
    if func1==nil then func1="" end
    if func2==nil then func2="" end
if type(func1)=="function" then
    return function()
    namers=_ENV[name]
        if namers~="开" then
    _ENV[name]="开"
    func1()
        else
    _ENV[name]="关"
    func2()
        end
    
    end
end
end




-----小季泛滥ST UI全源
-----小季官方频道@XJNBYYDA
-----删信息或搬运不带频道死全家

-----小季泛滥ST UI全源
-----小季官方频道@XJNBYYDA
-----删信息或搬运不带频道死全家

-----小季泛滥ST UI全源
-----小季官方频道@XJNBYYDA
-----删信息或搬运不带频道死全家

-----小季泛滥ST UI全源
-----小季官方频道@XJNBYYDA
-----删信息或搬运不带频道死全家
stab = {
	"功能","传送"
}
changan.menu("pp追踪",---大标题
	{
		{

			changan.box({
				"功能专区",
				changan.switch(

					"绘制开关",
					function()
					gg.alert("开功能")
					end,
					function()
					gg.alert("关功能")
					end
				),
				changan.switch(
				"绘制开关",
				function()
				gg.alert("开功能")
				end,
				function()
				end
				),

				changan.seek("瞬击大小","sjdx",0,10,0),
				changan.button("修改瞬击大小",
					function()
					gg.alert("示例:"..sjdx)
					end),
			}),






		}, {
			changan.button("开启",
				function()
				gg.alert("示例")
				end),
			changan.button("关闭",
				function()
				gg.alert("示例")
				end),
			changan.button("开启",
				function()
				gg.alert("示例")
				end),
			changan.button("关闭",
				function()
				gg.alert("示例")
				end),
			changan.button("无后",
				function()
				gg.alert("示例")
				end),
			changan.button("聚点",
				function()
				gg.alert("示例")
				end),

-----小季泛滥ST UI全源
-----小季官方频道@XJNBYYDA
-----删信息或搬运不带频道死全家

-----小季泛滥ST UI全源
-----小季官方频道@XJNBYYDA
-----删信息或搬运不带频道死全家

-----小季泛滥ST UI全源
-----小季官方频道@XJNBYYDA
-----删信息或搬运不带频道死全家

-----小季泛滥ST UI全源
-----小季官方频道@XJNBYYDA
-----删信息或搬运不带频道死全家


		}})
bloc = luajava.getBlock()
bloc('join')




-----小季泛滥ST UI全源
-----小季官方频道@XJNBYYDA
-----删信息或搬运不带频道死全家

-----小季泛滥ST UI全源
-----小季官方频道@XJNBYYDA
-----删信息或搬运不带频道死全家

-----小季泛滥ST UI全源
-----小季官方频道@XJNBYYDA
-----删信息或搬运不带频道死全家

-----小季泛滥ST UI全源
-----小季官方频道@XJNBYYDA
-----删信息或搬运不带频道死全家





-----小季泛滥ST UI全源
-----小季官方频道@XJNBYYDA
-----删信息或搬运不带频道死全家

-----小季泛滥ST UI全源
-----小季官方频道@XJNBYYDA
-----删信息或搬运不带频道死全家

-----小季泛滥ST UI全源
-----小季官方频道@XJNBYYDA
-----删信息或搬运不带频道死全家

-----小季泛滥ST UI全源
-----小季官方频道@XJNBYYDA
-----删信息或搬运不带频道死全家




-----小季泛滥ST UI全源
-----小季官方频道@XJNBYYDA
-----删信息或搬运不带频道死全家

-----小季泛滥ST UI全源
-----小季官方频道@XJNBYYDA
-----删信息或搬运不带频道死全家

-----小季泛滥ST UI全源
-----小季官方频道@XJNBYYDA
-----删信息或搬运不带频道死全家

-----小季泛滥ST UI全源
-----小季官方频道@XJNBYYDA
-----删信息或搬运不带频道死全家