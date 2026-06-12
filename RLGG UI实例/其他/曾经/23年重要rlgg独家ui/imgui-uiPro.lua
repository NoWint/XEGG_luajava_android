--TG已泛滥https://t.me/funct1
download("https://vip.kyun.top/down.php/46908d4a82d2cb5ccfa87b145b15620c.9","/sdcard/func/图片/bule")
download("https://vip.kyun.top/down.php/802249d1a60f37daf2a2959cd90f0691.9","/sdcard/func/图片/pink")
setOnExitListener(function()
	tuichu = 1
	luajava.setFloatingWindowHide(false)
	end)
function altinit()
	if not jianbianT then
jianbianT=获取图片(弹窗背景)
jba1=获取图片(按钮背景1)
jba2=获取图片(按钮背景2)
end
end
jianbian7 = luajava.new(GradientDrawable)
jianbian7:setCornerRadius(40)
jianbian7:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbian7:setColors({
	0x6600FF76,0x9900A5FF
})
jianbian7:setStroke(8,"0xffffffff")

jianbian8 = luajava.new(GradientDrawable)
jianbian8:setCornerRadius(40)
jianbian8:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbian8:setColors({
	0x66FF2C22,0x998600FF
})
jianbian8:setStroke(8,"0xffffffff")

jianbian9 = luajava.new(GradientDrawable)
jianbian9:setCornerRadius(4)
jianbian9:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbian9:setColors({
	0xddC70100,0x99000000
})
jianbian9:setStroke(4,"0xaa000000")


function balert(bltxt,bltxt1,bltxt2)
result = 0
if not bltxt then bltxt = '这里写正文\n测试\n测试' end
if not bltxt1 then bltxt1 = '取消' end
if not bltxt2 then bltxt2 = '确定' end
bltxt = tostring(bltxt)
bltxt1 = tostring(bltxt1)
bltxt2 = tostring(bltxt2)

local dialog = luajava.new(AlertDialog.Builder, app.context)
local block = luajava.getBlock()
local result

local function exit()
block('end')
end
layoutabc = luajava.loadlayout({
	ScrollView,
	{
		LinearLayout,
		background = "#00000000",
		orientation = "vertical",
		layout_width = "match_parent",
		layout_height = "match_parent",
		gravity = 'center',
		{
			ScrollView,
			gravity = "center",
			layout_height = "230dp",
			layout_width = "fill_parent",
			padding = "25dp",
			{
				LinearLayout,
				layout_marginTop = "20dp",
				gravity = "center",
				layout_height = "220dp",
				layout_width = "fill_parent",
				padding = "25dp",
				{
					TextView,
					id = luajava.newId('弹窗文字'),
					textSize = "18sp",
					text = bltxt,
					layout_height = "wrap_content",
					layout_width = "fill_parent",
					layout_gravity = "center",
					gravity = "center",
				},
			}},
		{
			LinearLayout,
			gravity = "center",
			layout_height = "90dp",
			layout_width = "fill_parent",
			orientation = "horizontal",
			{
				Button,
				id = "balt1",
				gravity = "center",
				background = jba1,
				text = bltxt1,
				layout_height = "40dp",
				layout_width = "wrap_content",
				layout_marginRight = "70dp",
			},
			{
				Button,
				id = "balt2",
				gravity = "center",
				background = jba2,
				text = bltxt2,
				layout_height = "40dp",
				layout_width = "wrap_content",
				layout_marginLeft = "70dp",
			}
		}}})
balt1.onClick = function() result = 1 dialog:dismiss() exit() end
balt2.onClick = function() result = 2 dialog:dismiss() exit() end
dialog:setView(layoutabc)
dialog:setOnDismissListener(luajava.createProxy('android.content.DialogInterface$OnDismissListener', {
	onDismiss = function(view) exit() end
}))
local function invoke()
dialog = dialog:create()
local window = dialog:getWindow()
window:setType(Build.VERSION.SDK_INT >= 26 and 2038 or 2002)
window:setBackgroundDrawable(jianbianT)
window:getDecorView():setPadding(0,0,0,0)
dialog:show()
--window:setLayout(1400,1000)
YoYoImpl:with("FadeIn"):duration(300):playOn(layoutabc)
end
luajava.handlerPost(invoke)
block('join')
return result
end



function tst(text)
text = tostring(text)
local block = luajava.getBlock()
local layout = luajava.loadlayout({
	LinearLayout,
	background = jianbian7,
	gravity = 'center',
	layout_height = 'match_parent',
	layout_width = 'match_parent',
	layout_wight = '1',
	{
		TextView,
		id = luajava.newId('TextView'),
		text = text,
		textSize = '18sp',
		textColor = "#ffffffff",
		margins = {
			'20dp', '10dp', '20dp', '10dp'
		}
	}
})
local function invoke()
if toaa == nil then
toaa = Toast:makeText(app.context, '', 1)
end
toaa:setView(layout)
toaa:show()
end
luajava.handlerPost(invoke)
end
changan = {}
local changan = changan
local android = import('android.*')
function write(fileName, content)
--f = assert( io.open( fileName, 'w'))   f:write( content )     f:close()
if file.write(fileName, content) == false then gg.alert("请给框架和修改器 文件储存权限\n否则无法正常运行") os.exit() end
end
function panduan(rec) fille,err = io.open(rec) if fille == nil then return false else return true end end
function pdcf(lujing) rec = "/sdcard/晴天/配置文件/"..lujing fille,err = io.open(rec) if fille == nil then return false else return true end end
sleep = gg.sleep
--if gg.isHTTPdump()==true and panduan("/sdcard/晴天/配置文件/vpn.txt") == false then gg.alert("\n抓包？") os.exit() end
function read(fileName) f = assert(io.open(fileName, 'r')) content = f:read("*all") f:close() return content end
function wtcf(lujing,neirong)
write("/sdcard/晴天/配置文件/"..lujing,neirong)
end
function rdcf(lujing)
return read("/sdcard/晴天/配置文件/"..lujing)
end
function pmusic(x) if audiokg == "开" then tmp1 = 0 gg.playMusic(x) tmp1 = 1 end end
if pdcf("audio") ~= true then wtcf("audio","开") end
audiokg = rdcf("audio")
function camusic(ress)
tmp1 = 0
end
开 = "开" 关 = "关"
function checkimg(tmp)
if panduan("/sdcard/晴天/图片/"..tmp) ~= true then
gg.toast("正在下载资源"..tmp.."\n请耐心等待")
download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..tmp,"/sdcard/晴天/图片/"..tmp)
end
end
ckimg = {
	"sanjiao",
	"pink",
	"blue",
	"hsanjiao",
	"check2imgui",
	"check1",
	--"arblackx",
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

slcta = luajava.getBitmapDrawable("/sdcard/func/图片/pink")
slctb = luajava.getBitmapDrawable("/sdcard/func/图片/bule")

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
baidi = luajava.loadlayout({
	GradientDrawable,
	color = "#F9F2F9",
	cornerRadius = 0
})
heidi = luajava.loadlayout({
	GradientDrawable,
	color = "#555555",
	cornerRadius = 0
})
function getShape3()
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(12)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({0xff49505E,0xff49505E})
jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
jianbians:setStroke(4,0xaaffffff)--边框宽度和颜色
return jianbians
end
function getSelector3()
selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, luajava.loadlayout {
	GradientDrawable,
	color = "#aa49505E",
	cornerRadius = 10
}) -- 点击时候的背景
selector:addState({
	-android.R.attr.state_pressed
}, getShape3()) -- 没点击的背景
return selector
end
function getSelector()
selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, slcta) -- 点击时候的背景
selector:addState({
	-android.R.attr.state_pressed
}, luajava.getBitmapDrawable("/sdcard/func/图片/bule") ) -- 没点击的背景
return selector
end
function getSelector2()
selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, luajava.loadlayout {
	GradientDrawable,
	color = "#C2CAD7",
	cornerRadius = 18
}) -- 点击时候的背景
selector:addState({
	-android.R.attr.state_pressed
}, luajava.loadlayout {
	GradientDrawable,
	color = "#97BAEB",
	cornerRadius = 18
}) -- 没点击的背景
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
changan.menu = function(stext,sview)
if isswitch then
return false
end
isswitch = true
cebian = {
	LinearLayout,
	id = "侧边",
	visibility = "gone",
	layout_height = "38dp",
	layout_width = "wrap_content",
	orientation = "horizontal",
}
for i=1,#stab do
	cebian[#cebian+1]={
		LinearLayout,
		id = "jm"..i,
		layout_height = "35dp",
		--layout_width = "78dp",
		layout_width = "55dp",
		layout_marginLeft = "5dp",
		layout_marginTop = "5dp",
		layout_marginRight = "1dp",
		layout_marginBottom="3dp",
		background=getSelector(),
		onClick=function() 切换(i) end,
		{
			TextView,
			text = stab[i],
			layout_marginLeft = "6dp",
			layout_marginRight = "6dp",
			layout_height = "35dp",
			layout_width = "55dp",
			textColor = "#ffffff",
			textSize = "11sp",
			gravity = "center"
		}}
	
	_ENV["layout"..i] = luajava.loadlayout({
	ScrollView,
	fillViewport = "true",
	padding = "10dp",
	id = "layout"..i,
	visibility = "gone",
	layout_width = 'fill_parent',
	layout_height = "210dp",
	orientation = "horizontal",
	{
		LinearLayout,
		id = "layoutm"..i,
		gravity = "top",
		layout_width = 'fill_parent',
		layout_height = "250dp",
		orientation = "vertical",
		gravity = "left",
	}
})
end
cebian=luajava.loadlayout(cebian)
ckou = {
	LinearLayout,
	id = "chuangk",
	background = {
		GradientDrawable,
		color = "#000000",
		cornerRadius = 30
	},
	visibility = "gone",
	layout_width = '270dp',
	layout_height = "wrap_content",
	orientation = "vertical",
	{HorizontalScrollView,fillViewport = "true",
	layout_width="match_parent",
	{LinearLayout,layout_width="wrap_content",
		cebian}}
	,changan.line(),
}
for i=1,#stab do
	ckou[#ckou+1]=_ENV["layout"..i]
end
ckou=luajava.loadlayout(ckou)
floatWindow = {
	LinearLayout,
	id = "motion",
	layout_width = "wrap_content",
	orientation = "vertical",
	gravity = "center_vertical",
	layout_height = "wrap_content",
	{
		FrameLayout,
		layout_width = "fill_parent",
		layout_height = "50dp",
		padding="10dp",
		gravity="center",
		orientation = "horizontal",
		background = luajava.loadlayout({
			GradientDrawable,
			color = 标题颜色,
			cornerRadius = 30
		}),
			{
				LinearLayout,
				layout_gravity="left|center",
				layout_width = "30dp",
				layout_height = "50dp",
				layout_marginLeft = "0dp",
				layout_marginTop = "0dp",
				layout_marginBottom = "0dp",
				gravity = "center",
				{
					LinearLayout,
					id = "control",
					layout_width = "match_parent",
					layout_height = "match_parent",
					gravity = "center",
					{
						ImageView,
						id="controlt",
						background = "/sdcard/晴天/图片/sanjiao",
						layout_width = "14dp",
						layout_height = "14dp",
						--layout_marginLeft = "10dp",
					}}},
				{
					TextView,
					id = "title",
					text = stext,
					textColor = "#FF4C5E",
					gravity = "left",
					textSize = "13sp",
					layout_gravity="center",
					layout_marginLeft = "25dp",
					layout_marginRight = "20dp",
					layout_width = "wrap_content",
				},
				{LinearLayout,layout_width="wrap_content",
				layout_gravity="right|center",layout_marginRight = "10dp",
					{
						ImageView,
						id = "exit",
						src = "/sdcard/晴天/图片/arblackx",
						layout_width = "14dp",
						layout_height = "14dp",
						layout_marginRight = "10dp",
					}},
	},
	ckou
}
local function invoke()
local ok
local RawX, RawY, x, y
mainLayoutParams = getLayoutParams()
floatWindow = luajava.loadlayout(floatWindow)
local function invoke2()
bloc('start')
for j=1,#stab do
for i = 1,#sview[j] do
_ENV["layoutm"..j]:addView(sview[j][i])
end
end
window:addView(floatWindow, mainLayoutParams)
mainLayoutParams.x = device.width/4
mainLayoutParams.y = device.height/2
window:updateViewLayout(floatWindow, mainLayoutParams)

bloc('end')
end

local runnable = luajava.getRunnable(invoke2)
local handler = luajava.getHandler()
handler:post(runnable)
control.onClick = function()
隐藏()
end
title.onClick=隐藏
exit.onClick = function()
gg.toast("悬浮窗已退出")
window:removeView(floatWindow)
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
end
title.onTouch = hanshu
motion.onTouch = hanshu
control.onTouch = hanshu
exit.onTouch = hanshu
end

invoke()
jm1:setBackground(slcta)
gg.setVisible(false)
luajava.setFloatingWindowHide(true)

end
corbk = true
当前ui = 1
function 切换(x)
当前ui = x
	luajava.runUiThread(function()
		for i=1,#stab do
			_ENV["jm"..i]:setBackground(getSelector())
			_ENV["layout"..i]:setVisibility(View.GONE)
		end
		_ENV["layout"..当前ui]:setVisibility(View.VISIBLE)
		_ENV["jm"..当前ui]:setBackground(slcta)
		YoYoImpl:with("FadeIn"):duration(400):playOn(_ENV["layout"..当前ui])
	end)
end
显示 = 0
beij = luajava.loadlayout({
		GradientDrawable,
		color = "#565656",
		cornerRadius = 30
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
function 隐藏()
	if tonumber(tostring(cebian:getVisibility())) == 8.0 then
	controlt:setBackground(luajava.getBitmapDrawable("/sdcard/晴天/图片/sanjiao"))
	chuangk:setVisibility(View.VISIBLE)
	cebian:setVisibility(View.VISIBLE)
	mainLayoutParams.flags = LayoutParams.FLAG_NOT_TOUCH_MODAL
	window:updateViewLayout(floatWindow, mainLayoutParams)
	YoYoImpl:with("SlideInDown"):duration(200):playOn(cebian)
	_ENV["layout"..当前ui]:setVisibility(View.VISIBLE)
	floatWindow:setBackground(beij)
	else
		mainLayoutParams.flags = LayoutParams.FLAG_NOT_FOCUSABLE
		window:updateViewLayout(floatWindow, mainLayoutParams)
controlt:setBackground(luajava.getBitmapDrawable("/sdcard/晴天/图片/hsanjiao"))
	floatWindow:setBackground(beij2)
	chuangk:setVisibility(View.GONE)
	cebian:setVisibility(View.GONE)
	_ENV["layout"..当前ui]:setVisibility(View.GONE)
	end
end
function changan.line()
rest = luajava.loadlayout({
	LinearLayout,
	layout_width = 'fill_parent',
	layout_height = "1dp",
	background = "#C2CAD7",
})
return rest
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
function changan.switch(name,func1,func2)
local func = 开关(name,func1,func2)
if not name then name = "未设置" end
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
			color = "#ff615E66",
			cornerRadius = 12
		},
		{
			TextView,
			gravity = "top",
			text = name,
			textColor = "#ffffff",
			layout_width = '100dp',
			layout_marginLeft = "10dp",
			layout_marginRight = "10dp",
		},
		{
			Switch,
			gravity = "top",
			layout_width = 'match_parent',
			layout_height = "10dp",

			showText = "true",
			textOn = "开",
			textOff = "关",
--id=luajava.newId(tid),
			switchMinWidth = "20dp",
			onCheckedChange = function(Switch,var2,var3)
			if var2 == true then var2 = "开" else var2 = "关" end
			luajava.newThread(function() func() end):start()
			end,

		}}
})

return rest
end
function changan.radio(radio)
firadio = {
	LinearLayout,
	layout_width = 'fill_parent',
	layout_height = "wrap_content",
	orientation = "horizontal"
}
if type(radio[1]) == "string" or type(radio[1]) == "number" then
firadio[#firadio+1] = {
	TextView,text = radio[1],
	textSize = "12sp",
	textColor = "#ffffff",
	gravity = "center_vertical",
	layout_width = 'wrap_content',
	layout_marginLeft = "-1dp",
	layout_marginRight = "-4dp",
	layout_height = "fill_parent",
} end
radios = {
	RadioGroup,
	layout_width = 'wrap_content',
	orientation = "horizontal"
}
for i = 2,#radio do
radios[#radios+1] = {
	RadioButton,
	drawable = getseekgra(),
	layout_height = "wrap_content",
	layout_width = 'wrap_content',
	layout_marginLeft = "-2dp",
	layout_marginRight = "-2dp",
	text = radio[i][1],
	textColor = "#ffffff",
	textSize = "12sp",
	onClick = function() luajava.newThread(function() pcall(radio[i][2]) end):start() end,
}
end
firadio[#firadio+1] = radios
return luajava.loadlayout(firadio)
end

function visi(tid,ttid)
local tview = luajava.getIdValue(tid)
local ttview = luajava.getIdValue(ttid)
if not tview then return 0 end
if tonumber(tostring(tview:getVisibility())) == 8.0 then
tview:setVisibility(View.VISIBLE)
ttview:setBackground(luajava.getBitmapDrawable("/sdcard/晴天/图片/sanjiao"))
else
	tview:setVisibility(View.GONE)
ttview:setBackground(luajava.getBitmapDrawable("/sdcard/晴天/图片/hsanjiao"))
end
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
firadio[#firadio+1] = {
	LinearLayout,
	layout_height = "20dp",
	layout_width = "fill_parent",
	onClick = function() visi(tid,ttid) end,
	background = getSelector3(),
	{
		ImageView,
		layout_marginLeft = "10dp",
		id = luajava.newId(ttid),
		background = "/sdcard/晴天/图片/hsanjiao",
		layout_width = "10dp",
		layout_height = "10dp",
		layout_marginTop = "5dp",
	},
	{
		TextView,
		text = views[1],
		textSize = "11sp",
		id = luajava.newId("box"..views[1]),
		layout_marginLeft = "2dp",
		textColor = "#ffffff",
		gravity = "center_horizontal",
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
	layout_width = 'fill_parent',
}
for i = 2,#views do
radios[#radios+1] = views[i]
end
firadio[#firadio+1] = radios
return luajava.loadlayout(firadio)
end
function changan.anniu(radio)
local tid = "radio"..guid()
local ttid = tid.."6"
firadio = {
	LinearLayout,
	layout_width = 'fill_parent',
	layout_height = "wrap_content",
	orientation = "vertical",
	background = luajava.loadlayout({
		GradientDrawable,
		color = "#00615E66",
		cornerRadius = 30
	}),
}
radios = {
	LinearLayout,
	layout_marginLeft = "0dp",
	layout_marginRight = "0dp",
	orientation = "horizontal",
	visibility = "visible",
	padding = "0dp",
	layout_width = 'fill_parent',
}
for i = 2,#radio do
radios[#radios+1] = {
	LinearLayout,
	layout_marginTop = "3dp",
	layout_marginBottom = "3dp",
	layout_marginLeft = "0dp",
	layout_marginRight = "8dp",
	background = getSelector2(),
	layout_width = 'wrap_content',
	layout_height = "25dp",
	gravity = "center",
	{
		TextView,
		layout_width = 'wrap_content',
		layout_height = "30dp",
		text = radio[i][1],
		layout_marginLeft = "8dp",
		layout_marginRight = "8dp",
		gravity = "center",
		textColor = "#ffffff",
		textSize = "10sp",
	},
	onClick = function() luajava.newThread(function() radio[i][2]() end):start() end,
}
end
firadio[#firadio+1] = radios
return luajava.loadlayout(firadio)
end
function getseekgra3()
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(0)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({
	0xffffffff,0xffffffff
})
jianbians:setStroke(0,"0x44000000")--边框宽度和颜色

return jianbians
end
function getseekgra()
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(8)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({0xaa397EF8,0xaa25C4FD})
jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
jianbians:setStroke(4,"0xff000000")--边框宽度和颜色
return jianbians
end
function getseekgra2()
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(0)
jianbians:setShape(GradientDrawable.RECTANGLE)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({
	0xffffffff,0xffffffff
})
jianbians:setStroke(0,"0xff000000")--边框宽度和颜色
return jianbians
end
chazhi = {} chajv = {}
function changan.seek(name,bian,smin,smax,nows)
_ENV[bian] = nows
thum = getseekgra()
thum:setSize(50, 60)
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
	gravity = "center",
	layout_width = 'fill_parent',
	layout_height = "wrap_content",
	paddingBottom = "4dp",
	paddingTop = "4dp",
	{
		FrameLayout,
		layout_width = '160dp',
		layout_height = "20dp",

		gravity = "center_vertical",
		background = luajava.loadlayout {
			GradientDrawable,
			color = "#ffffffff",
			cornerRadius = 0
		},
		{
			SeekBar,
			layout_width = '160dp',
			min = truesmin,
			max = truesmax,
			progress = tnows,
			progressDrawable = {
				getseekgra3()},
			thumb = thum,
			onSeekBarChange = {
				onProgressChanged = function(SeekBar, var2, var3)
				if not var3 then
				return
				end
				local resultvar = tonumber(string.sub(var2,0,-3))-chazhi[bian]
				luajava.runUiThread(function()
					luajava.getIdValue(names):setText("".. resultvar)
					end)
				_ENV[bian] = resultvar
				end
			}},
		{
			TextView,
			gravity = "center",
			textColor = "#000000",
			textSize = "13sp",
			text = tostring(nows),
			id = luajava.newId(names),
			layout_width = 'fill_parent',

		},
	},
	{
		TextView,
		gravity = "center",
		textSize = "12sp",
		textColor = "#ffffff",
		text = name,
		layout_width = 'fill_parent',

	}
})

return rest
end
function changan.check(cklist)
rest = {
	GridLayout,
	columnCount = '3',
	layout_width = 'match_parent',
	layout_height = "wrap_content",
	layout_marginTop = "10dp",
	gravity = "left"

}
for i = 1,#cklist do
local name = cklist[i][1]
local func1 = cklist[i][2]
local func2 = cklist[i][3]
local nid = cklist[i][4]
if not name then name = "未设置" end
nid = name..guid()
local func = 开关2(nid,func1,func2,nid)
rstt = luajava.loadlayout({
	LinearLayout,
	layout_width = 'wrap_content',
	layout_height = "30dp",
	layout_marginTop = "5dp",
	layout_marginBottom = "5dp",
	layout_marginLeft = "4dp",
	layout_marginRight = "0dp",
	background = "#03000000",
	gravity = "center_vertical",
	onClick = function() luajava.newThread(function() func() end):start() end,
	{
		ImageView,
		id = luajava.newId(nid),
		layout_width = '18dp',
		layout_height = "18dp",
		background = "/sdcard/晴天/图片/check1",
	}, {
		TextView,
		gravity = "top",
		text = name,
		textSize = "11sp",
		textColor = "#ffffff",
		layout_width = 'wrap_content',
		layout_height = 'wrap_content',
		layout_marginLeft = "1dp",
		layout_marginRight = "4dp",
	}})
rest[#rest+1] = rstt
end
return luajava.loadlayout(rest)
end
function changan.button(txt,func)
if not txt then txt = "未设置" end
return luajava.loadlayout(
	{
		LinearLayout,
		layout_width = 'fill_parent',
		gravity = "center",
		layout_height = "wrap_content", {
			LinearLayout,
			layout_width = "wrap_content",
			layout_height = "wrap_content",
			gravity = "center",
			layout_marginTop = "5dp",
			layout_marginBottom = "5dp",
			layout_marginLeft = "8dp",
			layout_marginRight = "8dp",
			background = getSelector3(),
			onClick = function() luajava.newThread(function() func() end):start() end,
			{
				TextView,
--id = luajava.newId(tid),
				text = txt,
				textColor = "#ffffff",
				gravity = "center",
				layout_marginLeft = "18dp",
			layout_marginRight = "18dp",
				textSize = "13sp",
				layout_width = "wrap_content",
				layout_height = "wrap_content",
			},
		}})
end
function changan.text(txt,color)
if not txt then txt = "未设置文字" end
if not color then color = "#ffffff" end
return luajava.loadlayout(
	{
		TextView,
		text = txt,
		textSize = "12sp",
		textColor = color,
		layout_width = "wrap_content",
	})
end
corb = true
function 开关(name,func1,func2)
if func1 == nil then func1 = "" end
if func2 == nil then func2 = "" end
if type(func1) == "function" then
return function()
namers = _ENV[name]
if namers ~= "开" then
_ENV[name] = "开"
func1()
else
	_ENV[name] = "关"
func2()
end

end
end
end
function 获取图片(txt)
ntxt=string.sub(string.gsub(txt,"/","."),-10,-1)
if string.find(tostring(txt),"http")~=nil then
    if panduan("/sdcard/晴天/图片/"..ntxt)==false then
    download(txt,"/sdcard/晴天/图片/"..ntxt)
    end
    txt="/sdcard/晴天/图片/"..ntxt
end
return luajava.getBitmapDrawable(txt)
end
function 开关2(name,func1,func2,nid)
if func1 == nil then func1 = "" end
if func2 == nil then func2 = "" end
if type(func1) == "function" then
return function()
namers = _ENV[name]
if namers ~= "开" then
luajava.runUiThread(function()
	luajava.getIdValue(nid):setBackground(luajava.getBitmapDrawable("/sdcard/晴天/图片/check2imgui"))
	end)
_ENV[name] = "开"
func1()
else
	luajava.runUiThread(function()
	luajava.getIdValue(nid):setBackground(luajava.getBitmapDrawable("/sdcard/晴天/图片/check1"))
	end)
_ENV[name] = "关"
func2()
end

end
end
end
bloc = luajava.getBlock()

sli1 = luajava.newThread(function()--更新逻辑
	while true do
	gg.sleep(200)
	luajava.runUiThread(function()
		luajava.getIdValue("box"..cd1name):setText(cd1name..os.date("%Y-%m-%d %H:%M:%S"))
		end)
	end
	end)











标题颜色="#aa565656"


stab = {--菜单页数这里加或减，跟结尾配置页数对应
	"基础设施","Extra settings","Skin",
	"功能","功能","功能","功能"
}
gg.diyToast('欢迎使用imguiPro！', nil, nil)
cd1name = "ESP Basic Active "
---↑这是第一个套娃的名字 需要修改就改这里
changan.menu("ANDROIDZERO",---大标题
	{
		{
---这里是第一个菜单 直接传入布局即可 以下是我封装的布局，也可以自己写
			changan.box({
---box可无限套娃，格式是changan.box({名字，布局，布局(无限个).....})
				cd1name,
				changan.check(---一个check一行
					{{
						"退出",--小功能名
						function()
						gg.toast("开")
						window:removeView(floatWindow)
--luajava.setFloatingWindowHide(false)
luajava.setFloatingWindowHide(false)
tuichu=1
--luajava.newThread(function() os.exit() end):start()
bloc("end")
						end,
						function()
						gg.toast("关")
						end
					}, {
						"过直播",--小功能名
						function()
						gg.toast("开")
						end,
						function()
						gg.toast("关")
						end
					}, {
						"自瞄",--小功能名
						function()
						gg.toast("开")
						end,
						function()
						gg.toast("关")
						end
					}, {
						"半火追踪",--小功能名
						function()
						gg.toast("开")
						end,
						function()
						gg.toast("关")
						end
					}, {
						"无后",--小功能名
						function()
						gg.toast("开")
						end,
						function()
						gg.toast("关")
						end
					}, {
						"瞬击",--小功能名
						function()
						gg.toast("开")
						end,
						function()
						gg.toast("关")
						end
					}}),
				changan.seek("后坐力调节%","hzltj",0,100,100),

			}),
			changan.box({
				"自瞄设定",
				changan.seek("自瞄范围","zmfw",100,300,161),---名字，开关变量名字，最小，最大，初始
				changan.seek("自瞄距离","zmjl",1,400,400),---名字，开关变量名字，最小，最大，初始
				changan.seek("自动开火距离","khjl",30,100,30),---名字，开关变量名字，最小，最大，初始
				changan.button("执行自瞄配置",
					function()
						--这是调用示例 直接调用变量
						gg.toast("自瞄范围:"..zmfw.."\n自瞄距离:"..zmjl)--这两个输出的变量就是上面生成时的变量名字，对应拖动条
					end),
				changan.radio({
--单选表可无限添加
					"平滑自瞄",--大标题
					{
						"关闭",
						function()

						end
					}, {
						"快速",
						function()

						end
					}, {
						"慢速",
						function()

						end
					}
				}),
				changan.check({
					{
						"跟随瞄准",
						function()
							
						end,
						function()
						gg.toast("1")
						end
					}, {
						"已倒地",
						function()

						end,
						function()
						gg.toast("1")
						end
					},
					{
						"不爆头",
						function()

						end,
						function()
						gg.toast("1")
						end
					}, {
						"贴脸自瞄",
						function()

						end,
						function()
						gg.toast("1")
						end
					}, {
						"仅开火自瞄",
						function()

						end,
						function()
						gg.toast("1")
						end
					},
					{
						"人机不瞄",
						function()

						end,
						function()
						gg.toast("1")
						end
					}
				}),
				changan.line(),
				changan.check({
					{
						"降速/加速",
						function()

						end,
						function()
						gg.toast("1")
						end
					}, {
						"吉普加速",
						function()

						end,
						function()
						gg.toast("1")
						end
					},
					{
						"快速爬行",
						function()

						end,
						function()
						gg.toast("1")
						end
					},
					{
						"Hit-X",
						function()

						end,
						function()
						gg.toast("1")
						end
					}, {
						"全火范围",
						function()

						end,
						function()
						gg.toast("1")
						end
					},

				}),
				changan.line(),
			}),

		}, {
---这里是第二个菜单
			changan.text("标题123"),
			changan.check(
				{{
					"功能1",--小功能名
					function()
					gg.toast("开")
					end,
					function()
					gg.toast("关")
					end
				}, {
					"功能2",--小功能名
					function()
					gg.toast("开")
					end,
					function()
					gg.toast("关")
					end
				}, {
					"功能3",--小功能名
					function()
					gg.toast("开")
					end,
					function()
					gg.toast("关")
					end
				}, {
					"功能4",--小功能名
					function()
					gg.toast("开")
					end,
					function()
					gg.toast("关")
					end
				}, {
					"功能5",--小功能名
					function()
					gg.toast("开")
					end,
					function()
					gg.toast("关")
					end
				}, {
					"功能6",--小功能名
					function()
					gg.toast("开")
					end,
					function()
					gg.toast("关")
					end
				}, {
					"功能7",--小功能名
					function()
					gg.toast("开")
					end,
					function()
					gg.toast("关")
					end
				}, {
					"功能8",--小功能名
					function()
					gg.toast("开")
					end,
					function()
					gg.toast("关")
					end
				}}),

		}, {
---这里是第三个菜单
			
			changan.box({
				"颜色修改",
				changan.anniu({
					"菜单背景",--栏目名
					{
						"图片",--小功能名
						function()
							--可填本地路径或直连
							beijt=获取图片("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/12.png")
						luajava.runUiThread(function()
							chuangk:setBackground(beijt)
							end)
						end
					}, {
						"绿色",
						function()
						luajava.runUiThread(function()
							chuangk:setBackground(luajava.loadlayout({
								GradientDrawable,
								color = "#5500FF85",--前两位是透明度
								cornerRadius = 30
							}))
							end)
						end
					},
				}),
				changan.anniu({
					"菜单背景",--栏目名
					{
						"白色",--小功能名
						function()
						luajava.runUiThread(function()
							chuangk:setBackground(baidi)
							end)
						end
					}, {
						"黑色",
						function()
						luajava.runUiThread(function()
							chuangk:setBackground(heidi)
							end)
						end
					},
				}),
			}),
		},{--4
			
		},{--5
			
		},{--6
			
		},{--7
			
		},{--8
			
		}
	})
---↓界面生成之后执行的东西写这里↓
gg.sleep(200)
sli1:start()


---↑界面生成之后执行的东西写这里↑
bloc('join')















