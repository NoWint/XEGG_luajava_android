	local info = {
		name = 'demo',
		appid = '10009',
		appkey = '4u33n332djlniFEF',
		rc4key = 'LgEXia1aAg810009',
		version = '1.0.2',
		mi_type = '3'
	}

rlyunyz = getrlyunyz(info)

--824784947FUNC UI技术交流群
--此UI为二改长安
huiz=function()
draw.text("绘制文字",200,200)
--绘制内容全放这
end
local bloc = luajava.getBlock()
Do={ }
Do.controlSmall = function(control,time)
luajava.runUiThread(function()
import "android.animation.ObjectAnimator"
ObjectAnimator():ofFloat(control,"scaleX", {
1, 0.7, 0.4, 0
}):setDuration(time):start()
ObjectAnimator():ofFloat(control,"scaleY", {
1, 0.7, 0.4, 0
}):setDuration(time):start()
end) end
Do.controlBig = function(control,time)
luajava.runUiThread(function()
import "android.animation.ObjectAnimator"
ObjectAnimator():ofFloat(control,"scaleX", {
0, 0.4, 0.7, 1
}):setDuration(time):start()
ObjectAnimator():ofFloat(control,"scaleY", {
0, 0.4, 0.7, 1
}):setDuration(time):start()
end) end
Do.controlFlip2 = function(control,time)
luajava.runUiThread(function()
  import "android.view.animation.Animation"
  import "android.animation.ObjectAnimator"
  xuanzhuandonghua = ObjectAnimator:ofFloat(control, "rotationY", {0, 360})
  xuanzhuandonghua:setRepeatCount(0)
  xuanzhuandonghua:setRepeatMode(Animation.REVERSE)
  xuanzhuandonghua:setDuration(time)
  xuanzhuandonghua:start()
end
 )
 end
 
Do.controlRotation2 = function(control, time)
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


Do.controlWater = function(control,time)
luajava.runUiThread(function()
  import "android.animation.ObjectAnimator"
  ObjectAnimator():ofFloat(control,"scaleX",{1, 0.8, 0.9, 1}):setDuration(time):start()
  ObjectAnimator():ofFloat(control,"scaleY",{1,0.8,0.9,1}):setDuration(time):start()
end) end
Do.controlSmall = function(control,time)
luajava.runUiThread(function()
  import "android.animation.ObjectAnimator"
  ObjectAnimator():ofFloat(control,"scaleX",{1, 0.7, 0.4, 0}):setDuration(time):start()
  ObjectAnimator():ofFloat(control,"scaleY",{1, 0.7, 0.4, 0}):setDuration(time):start()
end) end
Do.controlBig = function(control,time)
luajava.runUiThread(function()
  import "android.animation.ObjectAnimator"
  ObjectAnimator():ofFloat(control,"scaleX",{0, 0.4, 0.7, 1}):setDuration(time):start()
  ObjectAnimator():ofFloat(control,"scaleY",{0, 0.4, 0.7, 1}):setDuration(time):start()
end) end      


function getVerticalBG(gtvb1,gtvb3,gtvb4,gtvb5)
if 渐变强制横向 then
do return getHorizontalBG(gtvb1,gtvb3,gtvb4,gtvb5) end
end
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

jianbian6 = luajava.new(GradientDrawable)
jianbian6:setCornerRadius(50)
jianbian6:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbian6:setColors({0x660043FF,0x99FF84EB})
jianbian6:setStroke(0,"0x44FFffff")--边框宽度和颜色

jianbian7 = luajava.new(GradientDrawable)
jianbian7:setCornerRadius(40)
jianbian7:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbian7:setColors({0x6600FF76,0x9900A5FF})
jianbian7:setStroke(8,"0xffffffff")

jianbian8 = luajava.new(GradientDrawable)
jianbian8:setCornerRadius(40)
jianbian8:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbian8:setColors({0x66FF2C22,0x998600FF})
jianbian8:setStroke(8,"0xffffffff")

jianbian9 = luajava.new(GradientDrawable)
jianbian9:setCornerRadius(4)
jianbian9:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbian9:setColors({0xddC70100,0x99000000})
jianbian9:setStroke(4,"0xaa000000")


function balert(bltxt,bltxt1,bltxt2)
result=0
if not bltxt then bltxt='这里写正文\n测试\n测试' end
if not bltxt1 then bltxt1='取消' end
if not bltxt2 then bltxt2='确定' end
bltxt=tostring(bltxt)
bltxt1=tostring(bltxt1)
bltxt2=tostring(bltxt2)

local dialog = luajava.new(AlertDialog.Builder, app.context)
	local block = luajava.getBlock()
	local result

	local function exit()
		block('end')
	end
layoutabc=luajava.loadlayout({ScrollView,
{LinearLayout,
    background="#FFFFFF00",
		orientation="vertical",
		layout_width="match_parent",
        layout_height="match_parent",
		gravity = 'center',
{ScrollView,
gravity="center",
layout_height="230dp",
layout_width="fill_parent",
padding="25dp",
{LinearLayout,
layout_marginTop="20dp",
gravity="center",
layout_height="220dp",
layout_width="fill_parent",
padding="25dp",
{TextView,
id = luajava.newId('弹窗文字'),
        textSize="18sp",
        text = bltxt,
        layout_height="wrap_content",
layout_width="fill_parent",
        layout_gravity="center",
        gravity="center",
},}},
{LinearLayout,
gravity="center",
layout_height="90dp",
layout_width="fill_parent",
orientation="horizontal",
{Button,
id="balt1",
gravity="center",
background=jianbian7,
text=bltxt1,
layout_height="40dp",
layout_width="wrap_content",
layout_marginRight="70dp",
},
{Button,
id="balt2",
gravity="center",
background=jianbian8,
text=bltxt2,
layout_height="40dp",
layout_width="wrap_content",
layout_marginLeft="70dp",
}
}}})
balt1.onClick = function() result = 1 dialog:dismiss() exit() end
balt2.onClick = function() result = 2 dialog:dismiss() exit() end
	dialog:setView(layoutabc)
	dialog:setOnDismissListener(luajava.createProxy('android.content.DialogInterface$OnDismissListener', {	onDismiss = function(view)	exit()	end}))
	local function invoke()
		dialog = dialog:create()
		local window = dialog:getWindow()
		window:setType(Build.VERSION.SDK_INT >= 26 and 2038 or 2002)
		window:setBackgroundDrawable(jianbian6)
		window:getDecorView():setPadding(0,0,0,0)
		dialog:show()
		--window:setLayout(1400,1000)
		YoYoImpl:with("FadeIn"):duration(300):playOn(layoutabc) 
	end
	luajava.handlerPost(invoke)
block('join')
return result
end



function 花神提示(text)
	text = tostring(text)
	local block = luajava.getBlock()
	local layout = luajava.loadlayout({
	LinearLayout,
	background=jianbian7,
	gravity='center',
	layout_height='match_parent',
	layout_width='match_parent',
	layout_wight='1',
		{
			TextView,
			id = luajava.newId('TextView'),
			text = text,
			textSize = '18sp',
			textColor = "#ffffffff",
			margins = {'20dp', '10dp', '20dp', '10dp'}
		}
	})
	local function invoke()
		if toaa==nil then
		toaa = Toast:makeText(app.context, '', 1)
		end
		toaa:setView(layout)
		toaa:show()
	end
	luajava.handlerPost(invoke)
end

-----------------------------------------------------------------------------------------
function panduan(rec) fille,err = io.open(rec) if fille == nil then return false else return true end end
function pdcf(lujing) rec = "/sdcard/FUNC/配置文件/"..lujing fille,err = io.open(rec) if fille == nil then return false else return true end end
sleep = gg.sleep
--if gg.isHTTPdump()==true and panduan("/sdcard/FUNC/配置文件/vpn.txt") == false then gg.alert("\n抓包？") os.exit() end
function read(fileName) f = assert(io.open(fileName, 'r')) content = f:read("*all") f:close() return content end
function wtcf(lujing,neirong)
write("/sdcard/FUNC/配置文件/"..lujing,neirong)
end
function rdcf(lujing)
return read("/sdcard/FUNC/配置文件/"..lujing)
end
function checkimg(tmp)

if panduan("/sdcard/FUNC/图片/"..tmp) ~= true then
gg.toast("正在下载资源"..tmp.."\n请耐心等待")
download("https://wf980627-512739054-1317447113.cos.ap-nanjing.myqcloud.com/"..tmp,"/sdcard/FUNC/图片/"..tmp)
end
end




-----------功能放上面或者放哪都行只要不在menu后面
layoutcolor = "#aa000000"
FUNC = {}
local FUNC = FUNC
local android = import('android.*')
function write(fileName, content)
--f = assert( io.open( fileName, 'w'))   f:write( content )     f:close()
if file.write(fileName, content) == false then gg.alert("请给框架和修改器 文件储存权限\n否则无法正常运行") os.exit() end
end
function panduan(rec) fille,err = io.open(rec) if fille == nil then return false else return true end end
function pdcf(lujing) rec = "/sdcard/FUNC/配置文件/"..lujing fille,err = io.open(rec) if fille == nil then return false else return true end end
sleep = gg.sleep
--if gg.isHTTPdump()==true and panduan("/sdcard/FUNC/配置文件/vpn.txt") == false then gg.alert("\n抓包？") os.exit() end
function read(fileName) f = assert(io.open(fileName, 'r')) content = f:read("*all") f:close() return content end
function wtcf(lujing,neirong)
write("/sdcard/FUNC/配置文件/"..lujing,neirong)
end
function rdcf(lujing)
return read("/sdcard/FUNC/配置文件/"..lujing)
end
function pmusic(x) if audiokg == "开" then tmp1 = 0 gg.playMusic(x) tmp1 = 1 end end
if pdcf("audio") ~= true then wtcf("audio","开") end
audiokg = rdcf("audio")
function camusic(ress)
tmp1 = 0
if audiokg == "开" then
if panduan("/sdcard/FUNC/音频/"..ress) == true then
pmusic("/sdcard/FUNC/音频/"..ress)
tmp1 = 1
else
	download("https://wf980627-512739054-1317447113.cos.ap-nanjing.myqcloud.com/"..ress ,"/sdcard/FUNC/音频/"..ress)
pmusic("/sdcard/FUNC/音频/"..ress)
tmp1 = 1
end
end
end
开 = "开" 关 = "关"
function checkimg(tmp)
if panduan("/sdcard/FUNC/图片/"..tmp) ~= true then
gg.toast("正在下载资源"..tmp.."\n请耐心等待")
download("https://wf980627-512739054-1317447113.cos.ap-nanjing.myqcloud.com/"..tmp,"/sdcard/FUNC/图片/"..tmp)
end
end
file.getdirs("/sdcard/FUNC/状态读取/")
ckimg = {
	"imgui",
	"pink",
	"blue",
	"check2",
	"check1",
	"exit",
	"qq2",
	"ditf3",
	"checkon2",
	"checkof",
	"qiufeng",
	
}
for i = 1,#ckimg do
jindu = i
checkimg(ckimg[i])
end
gg.toast("资源下载完毕")
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
layoutParams.gravity = Gravity.TOP|Gravity.RIGHT -- 重力设置
layoutParams.width = LayoutParams.WRAP_CONTENT -- 布局宽度
layoutParams.height = LayoutParams.WRAP_CONTENT -- 布局高度

return layoutParams
end

slctb = luajava.loadlayout {
	GradientDrawable,
	color = "#bb000000",
	cornerRadius = 12
}
slcta = luajava.loadlayout {
	GradientDrawable,
	color = "#ff333e",
	cornerRadius = 12
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
	color = "#aa272327",
	cornerRadius = 12
}
function getSelector3()
selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, luajava.loadlayout {
	GradientDrawable,
	color = "#bbffffff",
	cornerRadius = 12
}) -- 点击时候的背景
selector:addState({
	-android.R.attr.state_pressed
}, luajava.loadlayout {
	GradientDrawable,
	color = "#feff333e",
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
	color = "#bbffffff",
	cornerRadius = 12
}) -- 点击时候的背景
selector:addState({
	-android.R.attr.state_pressed
}, luajava.loadlayout {
	GradientDrawable,
	color = "#ff333e",
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
	color = "#FFFFFF",
	cornerRadius = 12
}) -- 点击时候的背景
selector:addState({
	-android.R.attr.state_pressed
}, luajava.loadlayout {
	GradientDrawable,
	color = "#ff333e",
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
menu = function(stext,sview)
if isswitch then
return false
end
isswitch = true
title = luajava.loadlayout({
	LinearLayout,
	layout_width = "wrap_content",
	layout_height = "48dp",
	id = "title",
--visibility = "gone",
	gravity = "center",
	{
		TextView,
		id = "titlet",
		layout_width = "90dp",
		layout_height = "wrap_content",
		text = stitle,
		--background = 图片1,
		textColor = "#ff333e",
		gravity = "center",
		textSize = "13sp",

	}})
cebian = luajava.loadlayout({
	LinearLayout,
	id = "侧边",
	visibility = "gone",
	layout_height = "wrap_content",
	layout_width = "88dp",
	orientation = "vertical",
	background = {
		GradientDrawable,
		color = "#00ffffff",
		cornerRadius = 10
	},
	--[[{
		TextView,
		id = "titlet",
		layout_width = "90dp",
		layout_height = "wrap_content",
		text = 标题,
		textColor = "#ff333e",
		gravity = "center",
		textSize = "13sp",

	},]]
	{
		LinearLayout,
		id = "jm1",
		layout_height = "28dp",
		layout_width = "88dp",
		gravity = "center",
		layout_marginTop = "2dp",
		layout_marginBottom = "2dp",
		{
			TextView,
			text = stab[1],
			gravity = "center",
			layout_height = "28dp",
			layout_width = "88dp",
			layout_marginLeft = "10dp",
			layout_marginRight = "10dp",
		}},
	{
		LinearLayout,
		id = "jm2",
		gravity = "center",
		layout_height = "28dp",
		layout_width = "88dp",
		layout_marginTop = "2dp",
		layout_marginBottom = "2dp",
		background = getSelector(),
		{
			TextView,
			text = stab[2],
			layout_height = "28dp",
			layout_width = "88dp",
			gravity = "center",
			layout_marginLeft = "10dp",
			layout_marginRight = "10dp",
		}},
	{
		LinearLayout,
		id = "jm3",
		gravity = "center",
		layout_height = "28dp",
		layout_width = "88dp",
		layout_marginTop = "2dp",
		layout_marginBottom = "2dp",
		background = getSelector(),
		onClick = function() end,
		{
			TextView,
			text = stab[3],
			layout_height = "28dp",
			layout_width = "68dp",
			gravity = "center",
			layout_marginLeft = "10dp",
			layout_marginRight = "10dp",
		}},
	{
		LinearLayout,
		id = "jm4",
		gravity = "center",
		layout_height = "28dp",
		layout_width = "88dp",
		layout_marginTop = "2dp",
		layout_marginBottom = "2dp",
		onClick = function() end,
		background = getSelector(),
		{
			TextView,
			text = stab[4],
			layout_height = "28dp",
			layout_width = "68dp",
			gravity = "center",
			layout_marginLeft = "10dp",
			layout_marginRight = "10dp",
		}},{
		LinearLayout,
		id = "jm5",
		gravity = "center",
		layout_height = "28dp",
		layout_width = "88dp",
		layout_marginTop = "4dp",
		layout_marginBottom = "4dp",
		onClick = function() end,
		background = getSelector(),
		{
			TextView,
			text = stab[5],
			layout_height = "28dp",
			layout_width = "68dp",
			gravity = "center",
			layout_marginLeft = "10dp",
			layout_marginRight = "10dp",
		}},
	{
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
		}},
})

function getTimeStamp(t)
local str = os.date("%Y年%m月%d日%H:%M:%S",t)
return str
end







Title=luajava.loadlayout
		{LinearLayout,
		{
		TextView,
		id="Title",
		text = string.fromHtml(getTimeStamp(os.time()).." <font color=#97B9FF>".."内置启动完毕 FUNC二改ui".."</font>"),
		textSize = "13.5dp",
		--textColor="#00FF7F",
		gravity = "center",
		layout_height = "wrap_content",
		layout_width="310dp",
		}
		}

layout1 = luajava.loadlayout({
	ScrollView,
	fillViewport = "true",
	padding = "7dp",
	id = "layout1",
	visibility = "gone",
	layout_width = "230dp",
	layout_height = "250dp",
	orientation = "horizontal",
	{
		LinearLayout,
		id = "layouta",
		background = luajava.loadlayout({
			GradientDrawable,
			color = layoutcolor,
			cornerRadius = 20
		}),
		gravity = "top",
		layout_width = "210dp",
		orientation = "vertical",
		gravity = "center_horizontal",
	}
})
layout2 = luajava.loadlayout({
	ScrollView,
	fillViewport = "true",
	padding = "7dp",
	id = "layout2",
	visibility = "gone",
	layout_width = "230dp",
	layout_height = "250dp",
	orientation = "horizontal",
	{
		LinearLayout,
		id = "layoutb",
		background = luajava.loadlayout({
			GradientDrawable,
			color = layoutcolor,
			cornerRadius = 20
		}),
		layout_width = "210dp",
		orientation = "vertical",
		gravity = "center_horizontal",
	}
})
layout3 = luajava.loadlayout({
	ScrollView,
	fillViewport = "true",
	padding = "7dp",
	id = "layout3",
	visibility = "gone",
	layout_width = "230dp",
	layout_height = "250dp",
	orientation = "horizontal",
	{
		LinearLayout,
		id = "layoutc",
		background = luajava.loadlayout({
			GradientDrawable,
			color = layoutcolor,
			cornerRadius = 20
		}),
		layout_width = "210dp",
		orientation = "vertical",
		gravity = "center_horizontal",
	}
})
layout4 = luajava.loadlayout({
	ScrollView,
	fillViewport = "true",
	padding = "7dp",
	id = "layout4",
	visibility = "gone",
	layout_width = "230dp",
	layout_height = "250dp",
	orientation = "horizontal",
	{
		LinearLayout,
		id = "layoutd",
		background = luajava.loadlayout({
			GradientDrawable,
			color = layoutcolor,
			cornerRadius = 20
		}),
		layout_width = "210dp",
		orientation = "vertical",
		gravity = "center_horizontal",
	}
})
layout5 = luajava.loadlayout({
	ScrollView,
	fillViewport = "true",
	padding = "7dp",
	id = "layout5",
	visibility = "gone",
	layout_width = "230dp",
	layout_height = "250dp",
	orientation = "horizontal",
	{
		LinearLayout,
		id = "layoute",
		background = luajava.loadlayout({
			GradientDrawable,
			color = layoutcolor,
			cornerRadius = 20
		}),
		layout_width = "210dp",
		orientation = "vertical",
		gravity = "center_horizontal",
	}
})
菜单显示=true
qd=0
setm=luajava.loadlayout({
	LinearLayout,
	layout_width = "55dp",
	layout_height = "250dp",
	orientation = "horizontal",
	background = {
		GradientDrawable,
		color = "#aa000000",
		cornerRadius = 16
	},
		{
		LinearLayout,
		gravity = "center",
		layout_height = "28dp",
		layout_width = "55dp",
		layout_marginTop = "2dp",
		layout_marginBottom = "2dp",
		background = getSelector7(),
		{
			TextView,
			id = "shoso",
			text = "收缩⿺",
			layout_height = "28dp",
			layout_width = "55dp",
			gravity = "center",
			layout_marginLeft = "10dp",
			layout_marginRight = "10dp",
		},
		onClick = function()
		luajava.runUiThread(function()
		if 菜单显示==true then
		shoso:setText("展开⿹")
		ui=当前ui
_ENV["layout"..ui]:setVisibility(View.VISIBLE)
		菜单显示=false
		qd=0
		else
		shoso:setText("收缩⿺")
		ui=当前ui
_ENV["layout"..ui]:setVisibility(View.GONE)
		菜单显示=true
		qd=0
		end
		end)
		end
		},
})

dingbian = luajava.loadlayout({
			LinearLayout,
			id = "dingbian",
			layout_width = "300dp",
			layout_height = "45dp",
			{
			TextView,
			text = "游戏\n启动",
			textSize = "11dp",
			layout_height = "28dp",
			layout_width = "40dp",
			gravity = "center",
			layout_marginLeft = "10dp",
			layout_marginRight = "10dp",
			onClick = function()
			luajava.runUiThread(function()
		ui=当前ui
_ENV["layout"..ui]:setVisibility(View.GONE)
layoutqd:setVisibility(View.VISIBLE)
当前ui=qd
			end)
			end
			},
			Title,
			})

function checkimg(tmp)
if panduan("/sdcard/XARG/图片/"..tmp) ~= true then
gg.toast("正在下载资源"..tmp.."\n请耐心等待")
luajava.download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..tmp,"/sdcard/XARG/图片/"..tmp)
end
end
ckimg = {
	"pubgT",
	"pubgG",
	"pubgY",
	"pubgR",
	"hong"
}
for i = 1,#ckimg do
jindu = i
checkimg(ckimg[i])
gg.toast("正在加载游戏启动图片")
end

function getShape0(tmp0,tmp1,tmp2,tmp3)
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(tmp0)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({
	tmp1,tmp2
})
jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
jianbians:setStroke(5,tmp3)--边框宽度和颜色
return jianbians
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

            
            

        
        
gg.setProcess(pkg)
gg.sleep(400)
if tostring(gg.getTargetPackage()) == pkg then
gg.alert("启动成功")
else
	jci = jci+1
if jci == 14 then
gg.alert("自动获取进程失败\n请手动选择游戏进程")
gg.setProcessX()
end
end
gg.sleep(100)
end


layoutqd = luajava.loadlayout({
	HorizontalScrollView,
	padding="10dp",
	layout_height = "wrap_content",
	layout_width = "match_parent",
	{
		LinearLayout,
		layout_height = "wrap_content",
		layout_width = "wrap_content",
		orientation = "horizontal",
		gravity="center",
		{FrameLayout,
		layout_height = "200dp",
		layout_width = "130dp",
		gravity="center",
		{
			FrameLayout,
			layout_height = "200dp",
			layout_width = "110dp",
			--layout_weight = 1,
			gravity = "center",layout_gravity="center_horizontal",
			background = luajava.loadlayout {
				GradientDrawable,
				color = "#44dddddd",
				cornerRadius = 30
			},
			{
				ImageView,
				src = "/sdcard/XARG/图片/pubgG",
				layout_marginTop="23dp",
				layout_gravity="center_horizontal",
				layout_height="60dp",
				layout_width="60dp",
			},
			{
				TextView,
				text = "PUBG 全球服",
				textSize = "16dp",
				layout_marginTop="90dp",
				layout_gravity="center_horizontal",
				gravity = "center",
			},
			{
			LinearLayout,
			
			onClick = function() 
			luajava.newThread(function() launch("com.topjohnwu.magisk") end):start() end,
			background = getShape0(90,0xff28FEB9,0xff28FEB9,0xff28FEB9),
			layout_height = "25dp",
			layout_width = "55dp",
			layout_gravity="center_horizontal",
			layout_marginTop="150dp",
			gravity = "center",
			{
				TextView,
				textColor = "#FFFFFF",
				text = "启动",
				textSize = "12sp",
				layout_height = "20dp",
				gravity = "center",
				layout_width = "30dp",
			}
		}
		},
		},
	{FrameLayout,
		layout_height = "200dp",
		layout_width = "130dp",
		gravity="center",
		{
			FrameLayout,
			layout_height = "200dp",
			layout_width = "110dp",
			--layout_weight = 1,
			gravity = "center",layout_gravity="center_horizontal",
			background = luajava.loadlayout {
				GradientDrawable,
				color = "#44dddddd",
				cornerRadius = 30
			},
			{
				ImageView,
				src = "/sdcard/XARG/图片/pubgR",
				layout_marginTop="20dp",
				layout_gravity="center_horizontal",
				layout_height="70dp",
				layout_width="70dp",
			},
			{
				TextView,
				text = "PUBG 日韩服",
				textSize = "16dp",
				layout_marginTop="90dp",
				layout_gravity="center_horizontal",
				gravity = "center",
			},
			{
			LinearLayout,
			
			onClick = function() 
			luajava.newThread(function() launch("com.pubg.krmobile") end):start() end,
			background = getShape0(90,0xff28FEB9,0xff28FEB9,0xff28FEB9),
			layout_height = "25dp",
			layout_width = "55dp",
			layout_gravity="center_horizontal",
			layout_marginTop="150dp",
			gravity = "center",
			{
				TextView,
				textColor = "#FFFFFF",
				text = "启动",
				textSize = "12sp",
				layout_height = "20dp",
				gravity = "center",
				layout_width = "30dp",
			}
		}
		},
		},
		{FrameLayout,
		layout_height = "200dp",
		layout_width = "130dp",
		gravity="center",
		{
			FrameLayout,
			layout_height = "200dp",
			layout_width = "110dp",
			--layout_weight = 1,
			gravity = "center",layout_gravity="center_horizontal",
			background = luajava.loadlayout {
				GradientDrawable,
				color = "#44dddddd",
				cornerRadius = 30
			},
			{
				ImageView,
				src = "/sdcard/XARG/图片/pubgY",
				layout_marginTop="20dp",
				layout_gravity="center_horizontal",
				layout_height="70dp",
				layout_width="70dp",
			},
			{
				TextView,
				text = "PUBG 越南服",
				textSize = "16dp",
				layout_marginTop="90dp",
				layout_gravity="center_horizontal",
				gravity = "center",
			},
			{
			LinearLayout,
			
			onClick = function() 
			luajava.newThread(function() launch("com.vng.pubgmobile") end):start() end,
			background = getShape0(90,0xff28FEB9,0xff28FEB9,0xff28FEB9),
			layout_height = "25dp",
			layout_width = "55dp",
			layout_gravity="center_horizontal",
			layout_marginTop="150dp",
			gravity = "center",
			{
				TextView,
				textColor = "#FFFFFF",
				text = "启动",
				textSize = "12sp",
				layout_height = "20dp",
				gravity = "center",
				layout_width = "30dp",
			}
		}
		},
		},{FrameLayout,
		layout_height = "200dp",
		layout_width = "130dp",
		gravity="center",
		{
			FrameLayout,
			layout_height = "200dp",
			layout_width = "110dp",
			--layout_weight = 1,
			gravity = "center",
			layout_gravity="center_horizontal",
			background = luajava.loadlayout {
				GradientDrawable,
				color = "#44dddddd",
				cornerRadius = 30
			},
			{
				ImageView,
				src = "/sdcard/XARG/图片/pubgT",
				layout_marginTop="20dp",
				layout_gravity="center_horizontal",
				layout_height="60dp",
				layout_width="60dp",
			},
			{
				TextView,
				text = "PUBG 台湾服",
				textSize = "16dp",
				layout_marginTop="90dp",
				layout_gravity="center_horizontal",
				gravity = "center",
			},
			{
			LinearLayout,
			
			onClick = function() 
			luajava.newThread(function() launch("com.rekoo.pubgm") end):start() end,
			background = getShape0(90,0xff28FEB9,0xff28FEB9,0xff28FEB9),
			layout_height = "25dp",
			layout_width = "55dp",
			layout_gravity="center_horizontal",
			layout_marginTop="150dp",
			gravity = "center",
			{
				TextView,
				textColor = "#FFFFFF",
				text = "启动",
				textSize = "12sp",
				layout_height = "20dp",
				gravity = "center",
				layout_width = "30dp",
			}
		}
		},
		}
		
		
	}})

ckou = luajava.loadlayout({
	LinearLayout,
	id = "chuangk",
	visibility = "visible",
	layout_width = "wrap_content",
	layout_height = "match_parent",
	orientation = "horizontal",
	background = {
		GradientDrawable,
		color = "#00272327",
		cornerRadius = 10
	},
	
	--layout1,layout2,layout3,layout4,layout5,

	{
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
				color = "#aa000000",
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
				title,
			},
			
		},
		cebian,
		
	},
	setm,
	layout1,
	layout2,
	layout3,
	layout4,
	layout5,
	layoutqd
})

floatWindow = {
	LinearLayout,
	id = "motion",
	layout_width = "230dp",
	orientation = "vertical",
	gravity = "center_vertical",
	layout_height = "wrap_content",
	dingbian,
	{FrameLayout,
	id="parentv",
	ckou},
}

local function invoke()
local ok
local RawX, RawY, x, y
mainLayoutParams = getLayoutParams()
floatWindow = luajava.loadlayout(floatWindow)
local function invoke2()
block('start')
for i = 1,#sview[1] do
layouta:addView(sview[1][i])
end
for i = 1,#sview[2] do
layoutb:addView(sview[2][i])
end
for i = 1,#sview[3] do
layoutc:addView(sview[3][i])
end
for i = 1,#sview[4] do
layoutd:addView(sview[4][i])
end
window:addView(floatWindow, mainLayoutParams)
block('end')
end

local runnable = luajava.getRunnable(invoke2)
local handler = luajava.getHandler()
handler:post(runnable)
block('join')
control.onClick = function()
隐藏()
end


FUNC={}
FUNC.stopRotation = function()
      if xuanzhuandonghua then
        xuanzhuandonghua:cancel()
      end
    end
    FUNC.controlFlip = function(control,time)
      luajava.runUiThread(function()
        import "android.view.animation.Animation"
        import "android.animation.ObjectAnimator"
        xuanzhuandonghua1 = ObjectAnimator:ofFloat(control, "rotationY", {0, 360})
        xuanzhuandonghua1:setRepeatCount(0)
        xuanzhuandonghua1:setRepeatMode(Animation.REVERSE)
        xuanzhuandonghua1:setDuration(time)
        xuanzhuandonghua1:start()
      end) end
jm1.onClick = function()
if 登录 then
切换(1)
FUNC.controlFlip(_ENV["jm"..1],500)
else
if type(ret)~="table" then log_init() return 0 end
end
end
jm2.onClick = function()
if 登录 then
切换(2)
FUNC.controlFlip(_ENV["jm"..2],500)
else
if type(ret)~="table" then log_init() return 0 end
end
end
jm3.onClick = function()
if 登录 then
FUNC.controlFlip(_ENV["jm"..3],500)
切换(3)
else
if type(ret)~="table" then log_init() return 0 end
end
end
jm4.onClick = function()
if 登录 then
FUNC.controlFlip(_ENV["jm"..4],500)
切换(4)
else
if type(ret)~="table" then log_init() return 0 end
end
end
jm5.onClick = function()
if 登录 then
FUNC.controlFlip(_ENV["jm"..5],500)
切换(5)
else
if type(ret)~="table" then log_init() return 0 end
end
end
exit.onClick = function()
for k,v in pairs(floattable) do
    if v~=0 then
    rmvfloat(k)
    floattable[k]=0
    end
end
gg.toast("悬浮窗已退出")
for k,v in pairs(titletable) do
    if v~=0 then
    rmvtitle(k)
    titletable[k]=0
    end
end
tuichu=1
window:removeView(floatWindow)
luajava.setFloatingWindowHide(false)
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
mainLayoutParams.x = tonumber(x) - (event:getRawX() - RawX)
mainLayoutParams.y = tonumber(y) + (event:getRawY() - RawY)
window:updateViewLayout(floatWindow, mainLayoutParams)
end
end
motion.onTouch = hanshu
control.onTouch = hanshu
exit.onTouch = hanshu
jm1.onTouch = hanshu
jm2.onTouch = hanshu
jm3.onTouch = hanshu
jm4.onTouch = hanshu
jm5.onTouch = hanshu
end

invoke(swib1,swib2)
jm1:setBackground(slcta)
gg.setVisible(false)
luajava.setFloatingWindowHide(true)
runnable = luajava.getRunnable(function() layoute:addView(web6,getLayoutParams2()) end)
handler = luajava.getHandler()
handler:post(runnable)
end
corbk = true
当前ui = 1
function 切换(x)
if type(ret)~="table" then log_init() return 0 end
pd=0
layoutqd:setVisibility(View.GONE)
当前ui = x
luajava.runUiThread(function()
	if 当前ui == 1 then
    jm1:setBackground(slcta)
    jm2:setBackground(getSelector())
    jm3:setBackground(getSelector())
    jm4:setBackground(getSelector())
    jm5:setBackground(getSelector())
    layout1:setVisibility(View.VISIBLE)
    layout2:setVisibility(View.GONE)
    layout3:setVisibility(View.GONE)
    layout4:setVisibility(View.GONE)
    layout5:setVisibility(View.GONE)
    elseif 当前ui == 2 then
    jm1:setBackground(getSelector())
    jm2:setBackground(slcta)
    jm3:setBackground(getSelector())
    jm4:setBackground(getSelector())
    jm5:setBackground(getSelector())
    layout1:setVisibility(View.GONE)
    layout2:setVisibility(View.VISIBLE)
    layout3:setVisibility(View.GONE)
    layout4:setVisibility(View.GONE)
    layout5:setVisibility(View.GONE)
    elseif 当前ui == 3 then
    jm1:setBackground(getSelector())
    jm2:setBackground(getSelector())
    jm3:setBackground(slcta)
    jm4:setBackground(getSelector())
    jm5:setBackground(getSelector())
    layout1:setVisibility(View.GONE)
    layout2:setVisibility(View.GONE)
    layout3:setVisibility(View.VISIBLE)
    layout4:setVisibility(View.GONE)
    layout5:setVisibility(View.GONE)
    elseif 当前ui == 4 then
    jm1:setBackground(getSelector())
    jm2:setBackground(getSelector())
    jm3:setBackground(getSelector())
    jm4:setBackground(slcta)
    jm5:setBackground(getSelector())
    layout1:setVisibility(View.GONE)
    layout2:setVisibility(View.GONE)
    layout3:setVisibility(View.GONE)
    layout4:setVisibility(View.VISIBLE)
    layout5:setVisibility(View.GONE)
    elseif 当前ui == 5 then
    jm1:setBackground(getSelector())
    jm2:setBackground(getSelector())
    jm3:setBackground(getSelector())
    jm4:setBackground(getSelector())
    jm5:setBackground(slcta)
    layout1:setVisibility(View.GONE)
    layout2:setVisibility(View.GONE)
    layout3:setVisibility(View.GONE)
    layout4:setVisibility(View.GONE)
    layout5:setVisibility(View.VISIBLE)
    end
	end)
luajava.runUiThread(function()
	if 当前ui == 1 then
	YoYoImpl:with("ZoomIn"):duration(400):playOn(_ENV["layout1"])
	elseif 当前ui == 2 then
	layout2:setVisibility(View.VISIBLE)
	YoYoImpl:with("ZoomIn"):duration(400):playOn(_ENV["layout2"])
	elseif 当前ui == 3 then
	layout3:setVisibility(View.VISIBLE)
	YoYoImpl:with("ZoomIn"):duration(400):playOn(_ENV["layout3"])
	elseif 当前ui == 4 then
	layout4:setVisibility(View.VISIBLE)
	YoYoImpl:with("ZoomIn"):duration(400):playOn(_ENV["layout4"])
	elseif 当前ui == 5 then
	layout5:setVisibility(View.VISIBLE)
	YoYoImpl:with("ZoomIn"):duration(400):playOn(_ENV["layout5"])
	end
--floatWindow:setBackground(beij)
	end)
end
显示 = 0
beij = luajava.loadlayout({
	GradientDrawable,
	color = "#99000000",
	cornerRadius = 10
})
beij2 = luajava.loadlayout({
	GradientDrawable,
	color = "#00272327",
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

luajava.runUiThread(function()
--control:setBackground(luajava.getBitmapDrawable("/sdcard/FUNC/图片/imgui"))
	if tonumber(tostring(cebian:getVisibility())) == 8.0 then
	if qd==1 then 
	layout1:setVisibility(View.VISIBLE)
	end
	setm:setVisibility(View.VISIBLE)
	dingbian:setVisibility(View.VISIBLE)
	cebian:setVisibility(View.VISIBLE)
	--title:setVisibility(View.VISIBLE)
	luajava.runUiThread(function()
		mainLayoutParams.flags = LayoutParams.FLAG_NOT_TOUCH_MODAL
		window:updateViewLayout(floatWindow, mainLayoutParams)
		end)
	YoYoImpl:with("FadeIn"):duration(200):playOn(cebian)
	luajava.runUiThread(function()
		YoYoImpl:with("FadeIn"):duration(800):playOn(title)
		if 当前ui == 1 then
		layout1:setVisibility(View.VISIBLE)
		YoYoImpl:with("FadeIn"):duration(800):playOn(layout1)
		elseif 当前ui == 2 then
		layout2:setVisibility(View.VISIBLE)
		YoYoImpl:with("FadeIn"):duration(800):playOn(layout2)
		elseif 当前ui == 3 then
		layout3:setVisibility(View.VISIBLE)
		YoYoImpl:with("FadeIn"):duration(800):playOn(layout3)
		elseif 当前ui == 4 then
		layout4:setVisibility(View.VISIBLE)
		YoYoImpl:with("FadeIn"):duration(800):playOn(layout4)
		elseif 当前ui == 5 then
		layout5:setVisibility(View.VISIBLE)
		YoYoImpl:with("FadeIn"):duration(800):playOn(layout5)
		end
		floatWindow:setBackground(beij)
		end)
	else
		luajava.runUiThread(function()mainLayoutParams.flags = LayoutParams.FLAG_NOT_FOCUSABLE
		window:updateViewLayout(floatWindow, mainLayoutParams)
		end)

--control:setBackground(luajava.getBitmapDrawable("/sdcard/FUNC/图片/imgui"))
	dingbian:setVisibility(View.GONE)
	floatWindow:setBackground(beij2)
	setm:setVisibility(View.GONE)
	cebian:setVisibility(View.GONE)
	layout1:setVisibility(View.GONE)
	layout2:setVisibility(View.GONE)
	layout3:setVisibility(View.GONE)
	layout4:setVisibility(View.GONE)
	layout5:setVisibility(View.GONE)
	layoutqd:setVisibility(View.GONE)
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
local function newButtonLayout(name)
	if not isString(name) then
		return
	end

	local layout = {
		Button,
		background = floatingWindowManager:getStateListDrawable(),
		layout_width = 'match_parent',
		layout_margin = '5dp',
		text = name,
		textSize = '16sp',
		onClick = findFunctionByName(name)
	}

	return layout
end

-- 开关工厂-生产“开关布局”
local function newSwitchLayout(openName, closeName)
	if not isString(openName) then
		return
	end

	local layout = {
		Switch,
		layout_width = 'match_parent',
		text = openName,
		onCheckedChange = function(CompoundButton, state)
			local func
			if state then
				-- 设置开关文本为“关闭”的文本
				if isString(closeName) then
					CompoundButton:setText(closeName)
				end

				-- 找“打开”的功能函数
				func = findFunctionByName(openName)
			else
				-- 设置开关文本为“打开”的文本
				CompoundButton:setText(openName)

				if isString(closeName) then
					-- 找“关闭”的功能函数
					func = findFunctionByName(closeName)
				end
			end

			if isFunction(func) then
				-- 通过 findFunctionByName 获取的函数已经是被多线程包裹的，所以直接执行就可以了
				func()
			end
		end
	}

	return layout
end
function SignatureSearch(FirstCode,SecondCode,Get)
  gg.clearResults()
  gg.setRanges(FirstCode[6]) 
  gg.setVisible(false)
  if FirstCode[1] then
    gg.searchNumber(FirstCode[1],FirstCode[5],false,gg.SIGN_EQUAL,FirstCode[3] or 0,FirstCode[4] or -1)
  end
  if FirstCode[2] then
    gg.searchAddress(FirstCode[2],-1,FirstCode[5],gg.SIGN_EQUAL,0,-1)
  end
  if gg.getResultsCount()>0 then
    local results1,results2,NewResults=gg.getResults(gg.getResultsCount()),gg.getResults(gg.getResultsCount()),{}
    gg.clearResults()
    if #SecondCode>0 then
      for i=1,#SecondCode do
        local Results={}
        if i%2==1 then
          for j,result in ipairs(results1) do
            Results[#Results+1]={}
            Results[#Results].address=result.address+SecondCode[i][2]
            Results[#Results].flags=SecondCode[i][3]
          end
          results2={}
        else
          for j,result in ipairs(results2) do
            Results[#Results+1]={}
            Results[#Results].address=result.address+SecondCode[i][2]
            Results[#Results].flags=SecondCode[i][3]
          end
          results1={}
        end
        Results=gg.getValues(Results)
        local value,code=nil,nil
        for k,result2 in ipairs(Results) do
          if result2.flags==16 or result2.flags==64 then
            value=tostring(result2.value):sub(1,6)
            code=tostring(SecondCode[i][1]):sub(1,6)
          else
            value=result2.value
            code=SecondCode[i][1]
          end
          if i%2==1 then
            if value==code then
              results2[#results2+1]=results1[k] 
            end
          else
            if value==code then
              results1[#results1+1]=results2[k] 
            end
          end 
        end 
      end 
    end
    if #SecondCode%2==1 then
      NewResults=results2
    else
      NewResults=results1
    end
    local changeresults,keepresults,loadresults={},{},{} 
    if #NewResults>0 then
      for i,result in ipairs(NewResults) do
        for j,conduct in ipairs(Get) do 
          if conduct[1] then
            changeresults[#changeresults+1]={}
            changeresults[#changeresults].value=conduct[1]
            changeresults[#changeresults].address=result.address+conduct[2]
            changeresults[#changeresults].flags=conduct[3]
          else
            loadresults[#loadresults+1]={}
            loadresults[#loadresults].address=result.address+conduct[2]
            loadresults[#loadresults].flags=conduct[3]
          end
          if conduct[4] or conduct[5] then
            keepresults[#keepresults+1]={}
            if conduct[1] then
              keepresults[#keepresults].value=conduct[1]
            else
              keepresults[#keepresults].value=gg.getValues({[1]={address=result.address+conduct[2],flags=conduct[3]}})[1].value
            end
            keepresults[#keepresults].address=result.address+conduct[2]
            keepresults[#keepresults].flags=conduct[3]
            keepresults[#keepresults].freeze=conduct[5]
            keepresults[#keepresults].name=conduct[6]
          end 
        end 
      end
      gg.setValues(changeresults)
      gg.loadResults(loadresults)
      gg.addListItems(keepresults)
    else
      gg.toast("请勿在加载进度开启")
    end
  else
    gg.toast("请勿在加载进度开启")
  end
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
function seek(name,bian,smin,smax,nows)
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
			color = "#33ffffff",
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
paramt = {}
titletable={}
function newtitle(name)
titletable[name]=1
local function invoke(name)
if not name then name = "未设置" end
nameid = name..guid()
local ok
local RawX, RawY, x, y

paramt[name] = getLayoutParams2()
_ENV[name] = luajava.loadlayout(
	{
		LinearLayout,
		layout_width = "wrap_content",
		layout_height = "50dp",
		background = luajava.loadlayout {
			GradientDrawable,
			color = "#FFFFFF00",
			cornerRadius = 30
		},
		onClick = function() end,
		onTouch = function(v, event)
		local Action = event:getAction()
		if Action == MotionEvent.ACTION_DOWN then
		isMove = false
		RawX = event:getRawX()
		RawY = event:getRawY()
		x = paramt[name].x
		y = paramt[name].y
		elseif Action == MotionEvent.ACTION_MOVE then
		isMove = true
		paramt[name].x = tonumber(x) + (event:getRawX() - RawX)
		paramt[name].y = tonumber(y) + (event:getRawY() - RawY)
		window:updateViewLayout(_ENV[name], paramt[name])
		end
		end,
		{
			TextView,
			text = name,
			id=luajava.newId(name.."xfc"),
			gravity = "center",
			layout_width = "wrap_content",
			layout_height = "30dp",
			textSize = "17sp",
		}
	})
local function invoke2()
window:addView(_ENV[name], paramt[name])
end

local runnable = luajava.getRunnable(invoke2)
local handler = luajava.getHandler()
handler:post(runnable)

end

invoke(name)
end

function rmvtitle(name)
titletable[name]=0
local function invoke2()
window:removeView(_ENV[name], paramt[name])
end
local runnable = luajava.getRunnable(invoke2)
local handler = luajava.getHandler()
handler:post(runnable)

end
function box(views)
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
	background = luajava.loadlayout({
		GradientDrawable,
		color = "#88615E66",
		cornerRadius = 12
	}),
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
		background = "/sdcard/FUNC/图片/sj",
		layout_width = "10dp",
		layout_height = "10dp",
--layout_marginTop = "5dp",
	},
	{
		TextView,text = views[1],
		textSize = "13sp",
		layout_marginLeft = "5dp",
		textColor = "#FFFFFF",
		gravity = "center",
	}} else
	gg.alert("box第一个参数必须是string") os.exit()
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
function line(views)
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

	function 开关(name,func1,func2)
		if func1 == nil then func1 = "" end
		if func2 == nil then func2 = "" end
		if type(func1) == "function" then
			return function()
				namers = _ENV[name]
				if namers ~= "开" then
					_ENV[name] = "开"
luajava.runUiThread(function()
					func1()
end)
					else
					_ENV[name] = "关"
luajava.runUiThread(function()
					func2()
end)
				end
			end
		end
	end


function switch(name,func1,func2)
if type(func1) == "table" then gg.alert("出现错误")os.exit() end
nid = name..guid()
local func = 开关(name,func1,func2)
if not name then name = "未设置" end
rest = luajava.loadlayout({
	LinearLayout,
	layout_width = 'fill_parent',

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
			color = "#88615E66",
			cornerRadius = 12
		},
		{
			TextView,
			gravity = "top",
			text = name,
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
			luajava.newThread(function() 
			if type(ret)~="table" then log_init() return 0 end
			func() end):start()
			end,

		}}
})

return rest
end
function edit(name)
_ENV[name] = name..guid()
if not name then name = "点击输入文字" end
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
			layout_width = 'fill',
			layout_marginLeft = "10dp",
			layout_marginRight = "10dp",
		}}
})

return rest
end
function radio(radio)
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
	onClick = function() luajava.newThread(function() 
	if type(ret)~="table" then log_init() return 0 end
	pcall(radio[i][2]) end):start() end,
}
end
firadio[#firadio+1] = radios
return luajava.loadlayout(firadio)
end
function radio2(radio)
firadio = {
	LinearLayout,
	layout_width = 'fill_parent',
	layout_height = "wrap_content",
	orientation = "vertical",
	layout_marginLeft = "10dp",
	layout_marginRight = "10dp",
}
radios = {
	LinearLayout,
	orientation = "vertical",
	layout_marginLeft = "10dp",
	layout_marginRight = "10dp",
	layout_width = 'fill_parent',

}
for i = 1,#radio do
radios[#radios+1] = {
	LinearLayout,
	gravity = "center",
	layout_height = "30dp",
	layout_width = 'fill_parent',
	orientation = "horizontal",
	layout_marginBottom = "5dp",
	layout_marginTop = "5dp",
	background = luajava.loadlayout({
		GradientDrawable,
		color = "#dd000000",
		cornerRadius = 13
	}),
	{
		ImageView,
		layout_width = "20dp",
		layout_height = "20dp",
		background = "/sdcard/FUNC/图片/"..radio[i][2]
	},
	{
		TextView,
		text = radio[i][1],
	},
	onClick = function() luajava.newThread(function() 
	if type(ret)~="table" then log_init() return 0 end
	pcall(radio[i][3]) end):start() end,
}
end
firadio[#firadio+1] = radios
return luajava.loadlayout(firadio)
end

function check(cklist)
rest = {
	LinearLayout,
	layout_width = 'wrap_content',
	layout_height = "30dp",
	layout_marginTop = "10dp",
	gravity = "left"

}
for i = 1,#cklist do
local name = cklist[i][1]
local func1 = cklist[i][2]
local func2 = cklist[i][3]
local nid = cklist[i][4]
if type(func1) == "table" then gg.alert("出现错误") os.exit() end
if not name then name = "未设置" end
nid = name..guid()
local func = 开关2(nid,func1,func2,nid)
rstt = luajava.loadlayout({
	LinearLayout,
	layout_width = 'wrap_content',
	layout_height = "30dp",
	layout_marginTop = "5dp",
	layout_marginBottom = "5dp",
	layout_marginLeft = "5dp",
	layout_marginRight = "5dp",
	gravity = "center_vertical",
	onClick = function() luajava.newThread(function() func() end):start() end,
	{
		ImageView,
		id = luajava.newId(nid),
		layout_width = '20dp',
		layout_height = "20dp",
		layout_marginLeft = "8dp",
		layout_marginRight = "0dp",
		background = "/sdcard/FUNC/图片/check1",
	}, {
		TextView,
		gravity = "top",
		text = name,
		textColor = "#ffffff",
		layout_width = 'wrap_content',
		layout_height = 'wrap_content',
		layout_marginLeft = "4dp",
		layout_marginRight = "5dp",
	}})
rest[#rest+1] = rstt
end
return luajava.loadlayout(rest)
end
function button(txt,func)
if not txt then txt = "未设置" end
return luajava.loadlayout(
	{
		LinearLayout,
		layout_width = '210dp',

		layout_height = "wrap_content", {
			LinearLayout,
			layout_width = "fill_parent",
			gravity = "center_horizontal",
			layout_marginTop = "5dp",
			layout_marginBottom = "5dp",
			layout_marginLeft = "10dp",
			layout_marginRight = "10dp",
			background = getSelector3(),
			onClick = function() luajava.newThread(function()
			if type(ret)~="table" then log_init() return 0 end
			  pcall(func) end):start() end,
			{
				TextView,
--id = luajava.newId(tid),
				text = txt,
				textColor = "#000000",
				textSize = "14sp",
				layout_width = "wrap_content",
			},
		}})
end
function text(txt,color,size)
if not txt then txt = "未设置文字" end
if not color then color = "#ffffff" end
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
function 开关6(name,func1,func2,nid)
if func1 == nil then func1 = "" end
if func2 == nil then func2 = "" end
if type(func1) == "function" then
return function()
namers = _ENV[name]
if namers ~= "开" then
luajava.getIdValue(nid):setBackground(luajava.getBitmapDrawable("/sdcard/FUNC/图片/checkon2"))
_ENV[name] = "开"
pcall(func1)
else
luajava.getIdValue(nid):setBackground(luajava.getBitmapDrawable("/sdcard/FUNC/图片/checkof"))
_ENV[name] = "关"
pcall(func2)
end

end
end
end
function check2(cklist)
rest = {
	LinearLayout,
	layout_width = 'match_parent',
	layout_hight = "match_parent",
	layout_marginTop = "10dp",
	gravity = "center_horizontal"

}
for i = 1,#cklist do
local name = cklist[i][1]
local func1 = cklist[i][2]
local func2 = cklist[i][3]
local nid = cklist[i][4]
if type(func1) == "table" then gg.alert("出现错误\n如果你是用的是旧版\n请将开头第一个switch改成menu") gg.copyText("") os.exit() end
if not name then name = "未设置" end
nid = name..guid()
local func = 开关6(nid,func1,func2,nid)
rstt = luajava.loadlayout({
	LinearLayout,
	id = luajava.newId(nid),
	layout_width = '63dp',
	layout_height = "30dp",
	layout_marginTop = "5dp",
	layout_marginBottom = "5dp",
	layout_marginLeft = "10dp",
	layout_marginRight = "10dp",
	gravity = "center_vertical",
	background = "/sdcard/FUNC/图片/checkof",
	onClick = function() luajava.newThread(function()
	if type(ret)~="table" then log_init() return 0 end
	  func() end):start() end,
	{
		TextView,
		gravity = "top",
		text = name,
		layout_width = '80dp',
		layout_hight = '80dp',
		layout_marginLeft = "20dp",
		layout_marginRight = "10dp",
	}})
rest[#rest+1] = rstt
end
return luajava.loadlayout(rest)
end
function newcheck(radio)
		firadio={LinearLayout,layout_width = 'match_parent',layout_height = "match_parent",orientation="vertical"}
		if type(radio[1])=="string" or type(radio[1])=="number" then
			firadio[#firadio+1]={TextView,text=radio[1],textColor="#ffffff",} end
		radios={LinearLayout,orientation="horizontal",gravity="center",background="#00C92E37",layout_width = 'match_parent',}
		for i=2,#radio do
			local name = radio[i][1]
			local func1 = radio[i][2]
			local func2 = radio[i][3]
			local nid = radio[i][4]
			if not name then name = "未设置" end
			nid = name..FUNCguid()
			local func = 开关(nid,func1,func2)
			radios[#radios+1]={CheckBox,
				text=radio[i][1],
				textSize="9sp",
				textColor="#ffffff",
				onClick=function() luajava.newThread(function() 
				if type(ret)~="table" then log_init() return 0 end
				pcall(func) end):start() end,
			}
		end
		firadio[#firadio+1]=radios
		return luajava.loadlayout(firadio)
	end
		local function newGradientDrawableLayout(layout)
			local baseLayout = {
				GradientDrawable,
				cornerRadius = '15dp',
				color = 0x20000000
			}
			return table.copy(baseLayout, layout)
		end

		-- 工厂方式创建复用 Button layout
		local function newButtonLayout(layout)
			local baseLayout = {
				Button,
				layout_width = 'match_parent',
				layout_margin = margin_dp,
				textSize = '20sp',
				background = newGradientDrawableLayout()
			}

			return table.copy(baseLayout, layout)
		end

		-- 工厂方式创建复用 TextView layout
		local function newTextViewLayout(layout)
			local baseLayout = {
				TextView,
				layout_width = 'match_parent',
				layout_margin = margin_dp,
				gravity = 'center',
				padding = '5dp'
			}

			return table.copy(baseLayout, layout)
		end

		-- 工厂方式创建复用 CheckBox layout
		local function newCheckBoxLayout(layout)
			local baseLayout = {
				CheckBox,
				layout_width = 'match_parent',
				layout_margin = margin_dp,
			}

			return table.copy(baseLayout, layout)
		end

function FUNCguid()
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

namelist={}
param1 = {}
floattable={}
function newfloat(name,func1,func2)
floattable[name]=1
local func = 开关(name.."k",func1,func2)

local function invoke(name,func1,func2)
if not name then name = "未设置" end
nameid = name..guid()
local ok
local RawX, RawY, x, y
nameid1 = name..guid()
if not namelist[name] then namelist[name]=false end
if namelist[name]~=false then clclcl="#75ff0000" else clclcl="#88000000"  end
param1[name] = getLayoutParams2()
_ENV[name] = luajava.loadlayout(
	{
		LinearLayout,
		layout_width = "40dp",
	      id = luajava.newId(nameid1),
		layout_height = "40dp",
		background = luajava.loadlayout {
			GradientDrawable,
			color = clclcl,
			cornerRadius = 30
		},
            onClick = function()

            if namelist[name]==false then
            _ENV[name]:setBackground(luajava.loadlayout {
			GradientDrawable,
			color = "#75ff0000",
			cornerRadius = 30
		}) 
            namelist[name]=true
            elseif namelist[name]==true then
            _ENV[name]:setBackground(luajava.loadlayout {
			GradientDrawable,
			color = "#88000000",
			cornerRadius = 30
		}) 
            namelist[name]=false
            end
            luajava.newThread(function() pcall(func) end):start() 
            end,

		onTouch = function(v, event)
		local Action = event:getAction()
		if Action == MotionEvent.ACTION_DOWN then
		isMove = false
		RawX = event:getRawX()
		RawY = event:getRawY()
		x = param1[name].x
		y = param1[name].y
		elseif Action == MotionEvent.ACTION_MOVE then
		isMove = true
		param1[name].x = tonumber(x) + (event:getRawX() - RawX)
		param1[name].y = tonumber(y) + (event:getRawY() - RawY)
		window:updateViewLayout(_ENV[name], param1[name])
		end
		end,
		{
			TextView,
			text = name,
			gravity = "center",
			layout_width = "50dp",
			layout_height = "50dp",
		}
	})

local function invoke2()
window:addView(_ENV[name], param1[name])
end

local runnable = luajava.getRunnable(invoke2)
local handler = luajava.getHandler()
handler:post(runnable)

end

invoke(name,func1,func2)
end

function rmvfloat(name)
floattable[name]=0
local function invoke2()
window:removeView(_ENV[name], param1[name])
end
local runnable = luajava.getRunnable(invoke2)
local handler = luajava.getHandler()
handler:post(runnable)

end
function getedit(name)
--gg.alert(edit)
edit = tostring(luajava.getIdValue(_ENV[name]):getText())
return edit
end
function setedit(name,txt)
txt = tostring(txt)
luajava.runUiThread(function()
	luajava.getIdValue(_ENV[name]):setText(txt)
	end)
end
function 开关2(name,func1,func2,nid)
if func1 == nil then func1 = "" end
if func2 == nil then func2 = "" end
if type(func1) == "function" then
return function()
namers = _ENV[name]
if namers ~= "开" then
luajava.runUiThread(function()
	luajava.getIdValue(nid):setBackground(luajava.getBitmapDrawable("/sdcard/FUNC/图片/check2"))
	end)
_ENV[name] = "开"
func1()
else
	luajava.runUiThread(function()
	luajava.getIdValue(nid):setBackground(luajava.getBitmapDrawable("/sdcard/FUNC/图片/check1"))
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
ttview:setBackground(luajava.getBitmapDrawable("/sdcard/FUNC/图片/hsj"))
else
	tview:setVisibility(View.GONE)
ttview:setBackground(luajava.getBitmapDrawable("/sdcard/FUNC/图片/sj"))
end
end
wyyget="http://120.24.160.246:3000/"
function huoqu(txt)
return table.json(gg.makeRequest(wyyget.."song/url/v1?id="..txt.."").content)
end
function souyy(txt)
tbttt=gg.makeRequest(wyyget.."search?keywords="..txt.."&limit=10")
if tbttt==nil --[[or]] --[[type(tbttt)=="string"]] then gg.alert("网络异常") luajava.runUiThread(function()
luajava.getIdView("jzz"):setVisibility(View.GONE)
luajava.getIdView("stxt"):setVisibility(View.VISIBLE)
end) end
return table.json(tbttt.content)
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
function cbutton(txt,func)
if not txt then txt = "未设置" end
return luajava.loadlayout(
	{
		LinearLayout,
		layout_width = '210dp',
		layout_height = "wrap_content", {
			LinearLayout,
			layout_width = "fill_parent",
			gravity = "center_horizontal",
			layout_marginTop = "5dp",
			layout_marginBottom = "5dp",
			layout_marginLeft = "12dp",
			layout_marginRight = "12dp",
			background = getSelector33(),
			onClick = function() luajava.newThread(function() 
			if type(ret)~="table" then log_init() return 0 end
			pcall(func) end):start() end,
			{
				TextView,
--id = luajava.newId(tid),
				text = txt,
				textColor = "#FF2A3F",
				textSize = "14sp",
				layout_width = "wrap_content",
			},
		}})
end

function cbutton1(func)
return luajava.loadlayout(
	{
		LinearLayout,
		layout_width = '210dp',
		layout_height = "210dp", 
	    onClick = function()
	    if type(ret)~="table" then log_init() return 0 end
	      luajava.newThread(function() pcall(func) end):start() end,
			{
		ImageView,		
		layout_width = '210dp',
		layout_height = "210dp",
		background = "https://api.99778.cn/wp/view.php/9f34e03bae1007e2392bb064f477c70c.png",
	},
		})
end
function switch2(name,func1,func2)
local func = 开关(name,func1,func2)
if not name then name = "未设置" end
rest = luajava.loadlayout({
LinearLayout,
layout_width = 'fill_parent',
layout_hight = "fill_parent",
{
LinearLayout,
layout_width = 'fill_parent',
layout_hight = "fill_parent",
layout_marginTop = "5dp",
layout_marginBottom = "5dp",
layout_marginLeft = "10dp",
layout_marginRight = "10dp",
gravity = "center_vertical",
background = getseekgra(),
{
TextView,
gravity = "top",
text = name,
layout_width = '140dp',
layout_marginLeft = "10dp",
layout_marginRight = "10dp",
},
{
Switch,
gravity = "top",
layout_width = 'match_parent',
layout_hight = "10dp",
--id=luajava.newId(tid),
switchMinWidth = "20dp",
onCheckedChange = function(Switch,var2,var3)
if var2 == true then var2 = "开" else var2 = "关" end
luajava.newThread(function() 
if type(ret)~="table" then log_init() return 0 end
func() end):start()
end,

}}
})

return rest
end

FUNC={}

    FUNC.controlChange = function(control,colors)
      luajava.runUiThread(function()
        if type(colors) ~= "table" then
        end
        import "android.animation.ObjectAnimator"
        import "android.animation.ArgbEvaluator"
        import "android.animation.ValueAnimator"
        import "android.graphics.Color"
        colorAnim = ObjectAnimator:ofInt(control,"textColor", colors)
        colorAnim:setDuration(7000)
        colorAnim:setEvaluator(ArgbEvaluator())
        colorAnim:setRepeatCount(ValueAnimator.INFINITE)
        colorAnim:setRepeatMode(ValueAnimator.REVERSE)
        colorAnim:start()
      end)
    end
    FUNC.controlRotetion = function(control,time)
      luajava.runUiThread(function()
        import "android.view.animation.Animation"
        import "android.animation.ObjectAnimator"
        xuanzhuandonghua = ObjectAnimator:ofFloat(control, "rotation", {
          0, 360
        })
        xuanzhuandonghua:setRepeatCount(0)
        xuanzhuandonghua:setRepeatMode(Animation.REVERSE)
        xuanzhuandonghua:setDuration(time)
        xuanzhuandonghua:start()
      end) end
    xuanzhuandonghua = nil -- 全局变量用于保存动画对象

    FUNC.controlRotation2 = function(control, time)
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

    -- 停止旋转动画
    FUNC.stopRotation = function()
      if xuanzhuandonghua then
        xuanzhuandonghua:cancel()
      end
    end
    FUNC.controlFlip = function(control,time)
      luajava.runUiThread(function()
        import "android.view.animation.Animation"
        import "android.animation.ObjectAnimator"
        xuanzhuandonghua1 = ObjectAnimator:ofFloat(control, "rotationY", {0, 360})
        xuanzhuandonghua1:setRepeatCount(0)
        xuanzhuandonghua1:setRepeatMode(Animation.REVERSE)
        xuanzhuandonghua1:setDuration(time)
        xuanzhuandonghua1:start()
      end) end
    function tuic()
      gg.toast("悬浮窗已退出")
      window:removeView(floatWindow)
      luajava.setFloatingWindowHide(false)
      luajava.newThread(function() os.exit() end):start()
      bloc("end")
    end
    zidong = luajava.newThread(function()
      while true do
        if zdbf then logvid = luajava.getIdView("video") logvid.start(logvid) end
        gg.sleep(500)
      end
    end)
    url="http://av.host.gay/vipjk.php"
    bloc = luajava.getBlock()
    local runnable = luajava.getRunnable(function()
      vidd=luajava.loadlayout({
        VideoView,
        id = luajava.newId('video'),
        videoPath = url,
        layout_width = "fill_parent",
        layout_height = "wrap_content",
      })
      bloc("end")
    end)
    local handler = luajava.getHandler()
    handler:post(runnable)
    bloc("join")
    web6 = luajava.loadlayout({FrameLayout,
      gravity="top|center_vertical",
      {LinearLayout,
        gravity="center",orientation="vertical",
        vidd
      },          button("换一个",function()
          zdbf=false
          FUNC.controlFlip(web6,2500)
          gg.sleep(500)
          logvid = luajava.getIdView("video")
          logvid:setVideoPath(url)
          gg.sleep(2000)
          zdbf=true
        end),{LinearLayout,
        gravity="center",
        switch("自动播放",
          function()
            zdbf = true
          end,
          function()
            zdbf=false
            logvid = luajava.getIdView("video") logvid.pause(logvid)
          end),

        },

      }
      )
      zdbf=false
      zidong:start()

function newradio(radio)
		firadio={LinearLayout,
			layout_width = 'match_parent',
			layout_height = "match_parent",
			orientation="horizontal"
		}
		if type(radio[1])=="string" or type(radio[1])=="number" then
			--firadio[#firadio+1]={TextView,text=radio[1],textColor="#ffffff",}
		end
		radios={RadioGroup,orientation="horizontal",gravity="center",background="#00C92E37",layout_width = 'match_parent',}
		for i=2,#radio do
			radios[#radios+1]={
				RadioButton,

				text=radio[i][1],
				textColor="#ffffff",
				textSize="11sp",
				onClick=function()
				if type(ret)~="table" then log_init() return 0 end
				 luajava.newThread(function() pcall(radio[i][2]) end):start() end,
			}
		end
		firadio[#firadio+1]=radios
		return luajava.loadlayout(firadio)
	end



print('本次运行: 二改长安免费版')

do
local ok, err = pcall(require, '中文模块')
if not ok then
	error('中文模块加载失败，请确保是使用RLGG执行，或者尝试重启RLGG')
end
end
print(中文函数())

登录=true

changan={}

function changan.getedit(name)
--gg.alert(edit)
edit = tostring(luajava.getIdValue(name):getText())
return edit
end
function log_init()
if type(ret) ~= "table" then
if vv ~= nil then return 0 end
luajava.newThread(function()
	draw.remove()
end):start()
tmp = {
	LinearLayout,orientation = "vertical",gravity = "center_horizontal",
}
if panduan("/sdcard/长安/配置文件/km.lua") ~= false then
dofile("/sdcard/长安/配置文件/km.lua")
logkapian = luajava.loadlayout({
	LinearLayout,
	orientation = "vertical",
	gravity = "center",
	layout_height = "50dp",
	layout_width = "160dp",
	
	background =  getHorizontalBG({0xffFFFFFF,0xffFFFFFF},25,2,0xffffffff),
	elevation = "10dp",
	onClick = function()
	--changan.controlFlip(logkapian,2000)
	luajava.newThread(function() logkap = true login(kam) end):start() end,
	{
		TextView,
		gravity = "center",
		textSize = "18sp",
		textColor = "#000000",
		text = "******"..string.sub(kam,-4,-1)
	},{
		TextView,
		gravity = "center",
		textSize = "11sp",
		textColor = "#4E98FF",
		text = "快捷登录"
	}

})
tmp[#tmp+1] = logkapian
tmp[#tmp+1] = {
	LinearLayout,
	layout_height = "10dp",
}
end
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(30)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({
	0xff6B00EC,0xff006AFF,0xff0090FF,0xff6B00EC

})
jianbians:setOrientation(GradientDrawable.Orientation.TL_BR)
--jianbians:setStroke(0,0x55000000)--边框宽度和颜色

luajava.newThread(function()
	luajava.runUiThread(function()
	vv = luajava.loadlayout({
		LinearLayout,
		orientation = "vertical",
		visibility = "gone",
		background = getVerticalBG({
			0x88161616,0x88161616
		},10),
		layout_width = "450dp",
		layout_height = "303dp",
		gravity = "center",
		onTouch=hanshu,
		onClick = function() if vv ~= nil then YoYoImpl:with("FadeOut"):duration(300):playOn(vv) luajava.newThread(function() gg.sleep(300) rmdadView(vv) vv = nil end):start() end end,
		tmp,
		{
			LinearLayout,
			orientation = "vertical",
			{
				LinearLayout,
				layout_height = "60dp",
				{
					EditText,
					id = luajava.newId("卡密"),
					textColor = "#000000",
					hint = "请输入卡密",
					elevation = "10dp",
					gravity = "center",
					background = luajava.loadlayout {
						GradientDrawable,
						color = "#ffffffff",
						cornerRadius = 30
					},
					layout_height = "50dp",
					layout_width = "160dp",
					layout_marginBottom = "20dp",
				}}, {
				TextView,
				background = getVerticalBG({0xff0077FF,0xff0077FF},15),
				text = "登录",
				textColor = "#ffffff",
				textSize = "16sp",
				gravity = "center",
				elevation = "10dp",
				layout_height = "30dp",
				layout_width = "160dp",
				onClick = function() luajava.newThread(function() login(changan.getedit("卡密")) end):start() end,
			},{
				TextView,
				background = luajava.loadlayout {
					GradientDrawable,
					color = "#37383D",
					cornerRadius = 20
				},
				text = "购卡",
				textColor = "#ffffff",
				textSize = "16sp",
				layout_marginTop="5dp",
				gravity = "center",
				elevation = "10dp",
				layout_height = "30dp",
				layout_width = "160dp",
				onClick = function() luajava.newThread(function()
					gg.intent(卡网) 隐藏() rmdadView(vv) vv=nil
				end):start() end,
			},{
				TextView,
				background = luajava.loadlayout {
					GradientDrawable,
					color = "#37383D",
					cornerRadius = 20
				},
				text = "解绑",
				textColor = "#ffffff",
				textSize = "16sp",
				layout_marginTop="5dp",
				gravity = "center",
				elevation = "10dp",
				layout_height = "30dp",
				layout_width = "160dp",
				onClick = function() luajava.newThread(function()
					local t=changan.getedit("卡密")
					if t~="" and t~=" " then
					rlyunyz.unbind(t)
					end
				end):start() end,
			},{
				TextView,
				background = luajava.loadlayout {
					GradientDrawable,
					color = "#37383D",
					cornerRadius = 20
				},
				text = "退出",
				textColor = "#ffffff",
				textSize = "16sp",
				layout_marginTop="5dp",
				gravity = "center",
				elevation = "10dp",
				layout_height = "30dp",
				layout_width = "160dp",
				onClick = function() tuichu=1 end,
			}}
	})
	addadView(vv)
	luajava.getIdValue("卡密"):setHintTextColor(0xffA2A2A2)
	
		vv:setVisibility(View.VISIBLE)
		YoYoImpl:with("FadeIn"):duration(300):playOn(vv)
	end)
	huiz()
end):start()
else
	--luajava.newThread(function() xiugtx() end):start()
end
end


function login(kam)
local loadBox = getLoadingBox('正在校验卡密')

if tostring(kam)=="" or tostring(kam)==" " then return 0 end
local info = kamiinfo
if vv ~= nil then
luajava.runUiThread(function()
	YoYoImpl:with("FadeOut"):duration(400):playOn(vv)
	end)

luajava.newThread(function()
	gg.sleep(400)
	rmdadView(vv)
	vv = nil
	end):start()
end
loadBox['显示']()
ret = rlyunyz.login(kam)
loadBox['关闭']()
ini = rlyunyz.checkUpdate()
if type(ret) ~= "table" then
--gg.alert(tostring(ret))
else
ktmp = "kam='"..ret.kami.."'"
luajava.newThread(function()
	write("/sdcard/长安/配置文件/km.lua",ktmp)
end):start()
--luajava.runUiThread(function()
--	luajava.getIdValue("viptime"):setText(getTimeStamp(ret.vip))
--end)
end
--if logkap then gg.sleep(100) end

end
function getTimeStamp(t)
local str = os.date("%Y/%m/%d %H:%M:%S",t)
return str
end
function addadView(tmp)
local function invoke()
parentv:addView(tmp)
end
luajava.post(invoke)
end
function rmdadView(tmp)
local function invoke()
parentv:removeView(tmp)
end
luajava.post(invoke)
end

--[[
1.开关 switch("",
function()--开
end,
function()--关
end)
2.按扭 button("",
function()
end)
3.拉条 seek("拉条","bianliang",0,100,100)
             名称,变量,最小,最大,初始
4.输入框 edit("名称") 对应变量setedit("名称")
5.多选 newcheck({"总称",
{"名称",
function()
end},
})
{"名称",
function()
end}, 这个可以无限添加 但ui最多容下3个
 参照组
newcheck({"总称",
{"名称",
function()
end},
{"名称",
function()
end}
})
6.单选 newradio({"总称",
{"名称",
function()
end},--这里和多选一样
})
--]]
        --button 按钮
		--newcheck 多选
		--switch 开关
		--newcheck2 图片开关
		--newfloat 生成悬浮按钮
		--rmvfloat 删除悬浮按扭
function changebg()
	if nowbg<#bglist then
		nowbg=nowbg+1
	else
		nowbg=1
	end
	nowlight=0
	ckoubg=bglist[nowbg]
	luajava.newThread(function()
	luajava.runUiThread(function()
		YoYoImpl:with("FadeOut"):duration(200):playOn(floatWindow)
	end)
	gg.sleep(200)
	luajava.runUiThread(function()
		chuangk:setBackground(ckoubg)
		YoYoImpl:with("FadeIn"):duration(500):playOn(floatWindow)
	end)
	end):start()
end

function getShape(tmp0,tmp1,tmp2,tmp3)
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(tmp0)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors(tmp1)
jianbians:setOrientation(GradientDrawable.Orientation.BL_TR)
jianbians:setStroke(4,tmp3)--边框宽度和颜色
return jianbians
end

bglist={
	getShape(30,{0xe84B7CFF,0x88974BFF},0,0x01B8B8B8),
	getShape(30,{0xe80079FF,0x88FF76B8},0,0x01B8B8B8),
	getShape(30,{0xe800FFC1,0x8800AFFF},0,0x01B8B8B8),
	getShape(30,{0xe8905AFF,0x88FF4358},0,0x01B8B8B8),
	
}


stitle = "FUNC"---悬浮窗名字
gn1text = "示例"
gn1=function()
gg.alert("示例")
end
公告 = "FUNC二改长安UI"
stab = {
	"主页","内存","稳定","基址","视频"
}
menu("FUNC",
{
{
		
    --
	--gg.toast("开启成功")
	--toMusic('开启成功')
    --gg.toast("开启成功")
text("主页","#FF2A3F","15sp"),
text(公告,"#FF2A3F","15sp"),
button("选择进程",
function()

end,
function()

end),
switch("登录防闪",
function()

end,
function()
end),
switch("切换背景",
function()
changebg()
end),
switch("cd过检",
function()

end),
switch("基址初始化[必开]",
function()

end),		
}, {
text("内存功能","#FF2A3F","20sp"),
seek("腕炮范围",'fv',0,100,15),
button('修改范围',
function()

end),
seek("迫击炮射程",'sc',0,100,15),
button("修改射程",
function()

end),
newcheck({nil,
{'传送冷却',
function()

end},
{'走路传送',
function()

end},
{'队友箭头',
function()
 
end},
}),
newcheck({nil,
{'无视禁闭',
function()

end},
{'导弹全图',
function()

end},
{'任务完成',
function()

end},
}),
newcheck({nil,
{'自动秒赢',
function()

end},
{'全图秒开',
function()

end},
{'全员捐钱',
function()

end},
}),
switch("解锁模式",
function()

toMusic("开启成功")
end),
switch("解锁皮肤",
function()

end),
switch("道具皮肤",
function() 

end),
switch("全角色技能免费",
function() 

end),
switch("变身攻击",
function() 

end),
switch("秒开一切",
function()

end),
text("传送功能[更新]","#FF2A3F","20sp"),
text("初始传送[一局一开]","#FFFFFFFF","10sp"),
button('传送初始化',
function()

end),
text("小地图","#FFFFFFFF","15sp"),
button('出生点',
function()

end),
button('禁闭室',
function()

end),
button('逃生点',
function()

end),
button('左上锁',
function()

end),
button('左下锁',
function()

end),
button('右上锁',
function()

end),
button('右下锁',
function()

end),
button('上门',
function()

end),
button('下门',
function()

end),
text("大地图","#FFFFFFFF","15sp"),
button('出生点',
function()

end),
button('禁闭室',
function()

end),
button('逃生点',
function()

end),
button('一锁',
function()

end),
button('二锁',
function()

end),
button('三锁',
function()

end),
button('四锁',
function()

end),
button('五锁',
function()

end),
button('六锁',
function()

end),
button('七锁',
function()

end),
button('八锁',
function()

end),
button('九锁',
function()

end),
button('十锁',
function()

end),
button('上门',
function()

end),
button('中门',
function()

end),
button('下门',
function()

end),
text("大乱斗[经典地图]","#FFFFFFFF","15sp"),
button('BOSS房',
function()

end),
button('教堂处',
function()

end),
button('海盗船',
function()

end),
button('C字楼',
function()

end),
text("大乱斗[机械城]","#FFFFFFFF","15sp"),
button('恐龙房',
function()

end),
button('左上禁闭室',
function()

end),
button('柱子停车场',
function()

end),
button('海盗船上',
function()

end),
button('海盗船下',
function()

end),
button('地图中心',
function()

end),
text("水乐园","#FFFFFFFF","15sp"),
button('出生点',
function()

end),
button('左上禁闭室',
function()

end),
button('右下禁闭室',
function()

end),
button('逃生点',
function()

end),
button('一锁',
function()

end),
button('二锁',
function()

end),
button('三锁',
function()

end),
button('四锁',
function()

end),
button('五锁',
function()

end),
button('六锁',
function()

end),
button('上门',
function()

end),
button('中门',
function()


end),
button('下门',
function()

end),
}, {
text("稳定功能","#FF2A3F","20sp"),
newcheck({nil,
{"秒上白银",
function()

end},
{"三倍移速",
function()

end},
{'上帝视角',
function()

end},
}),
newcheck({nil,
{'人物移速',
function()

end},
{'全局透视',
function()

end},
{'实体防烧',
function()

end},
}),
seek("全局加速",'jiasu',0,10,3),
newradio({'全局加速',
{'开启加速',
function()

end},
{'恢复速度',
function()

end},
}),
newcheck({nil,
{'倒车捐钱',
function()

end},
{'三倍开门',
function()

end},
{'解锁锁位',
function()
        
end},
}),
newcheck({nil,
{'倒地加速',
function()

end},
{'激活全锁',
function()
  
end},
{'无视炸锁',
function()

end}
}),
switch("人物穿墙",
function()

end),
text("角色功能","#FF2100","15sp"),
newcheck({nil,
{'劲凯进化',
function()

end},
{'狮子进化',
function()

end},
{'圣女进化',
function()

end},
}),
newcheck({nil,
{'影忍进化',
function()

end},
{'艾克进化',
function()

end},
{'命石进化',
function()

end},
}),
newcheck({nil,
{'云朵进化',
function()

end},
{'水忍进化',
function()

end},
{'骇客进化',
function()

end},
}),
newcheck({nil,
{'奥博进化',
function()

end},
{'茶郎进化',
function()

end},
}),
},
{
text("火力功能","#FF2A3F","20sp"),
text('输入武器代码↓',"#FF2100","10sp"),
edit("刷武器"),
button("改武器",
function()

end),
button("刷武器",
function()

end),
switch("无间隔",
function()

end),
switch("秒换弹",
function()

end),
switch("无后座",
function()

end),
seek('弹匣数量','zm',1,10,3),
switch("修改数量",
function()

end),
text("腕炮范围↓",'#FF2100','10sp'),
edit('腕炮范围'),
button("修改范围",
function()

end),
text("超级武器",'#FF2100','15sp'),
button("超级武器初始化",
function()

end),
newcheck({nil,
{"火箭筒",
function()

end,
function()
end},
{"迫击炮",
function()

end,
function()

end},
{"能量炮",
function()

end,
function()

end},

}),
newcheck({nil,
{"蹦蹦枪",
function()

end,
function()
end},
{"电球枪",
function()

end,
function()

end},
{"自动枪",
function()

end,
function()

end},

}),
newcheck({nil,
{"火炎枪",
function()

end,
function()
end},
{"威震天",
function()

end,
function()

end},
{"唤风镖",
function()

end,
function()

end},

}),
newcheck({nil,
{"治疗枪",
function()

end,
function()
end},
{"霸天斧",
function()

end,
function()

end},
{"冲锋枪",
function()

end,
function()

end},

}),
newcheck({nil,
{"能量剑",
function()

end,
function()
end},
{"威震天",
function()

end,
function()

end},
{"红蜘蛛",
function()

end,
function()

end},

}),
newcheck({nil,
{"聚合弓",
function()

end,
function()
end},
{"震卡雷",
function()

end,
function()

end},
{"霸主盾",
function()

end,
function()

end},

}),
text("buff区","#ff2100","15sp"),
text("输入buff代码↓","#ff2100","10sp"),
edit('请输入BUFF代码'),
switch("无限刷-自定义BUFF-可反复",
function()	

end),

switch("多次刷--自动刷BUFF[少BUFF]",
function()	

end,
function()

end),
switch("一次刷--自动刷BUFF[少BUFF]",
function()	

end,
function()

end),

switch("无限刷--自动刷BUFF[多BUFF]",
function()	
            
end,
function()

end),
switch("一次刷--自动刷BUFF[多BUFF]",
function()            
end,
function()

end),
switch("停止刷BUFF",
function()	
            
end),
},
})
隐藏()
gg.sleep(2000)
--倒计时(ret.vip)
log_init()

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

langj = 1
function proo()
Do.controlRotation2(control1,3000)
end
luajava.newThread(function()--更新逻辑
while true do
gg.sleep(3000)
if 显示==0 then
proo()
end
end
end):start()
jm1 : setBackground(slcta )
gg.setVisible(false )
luajava.setFloatingWindowHide(true )
qhkai = 0
qiehuan = function()
if qhkai == 0 then
qhkai = 1
draw.remove()
luajava.runUiThread(function()
Do.controlSmall(floatWindow,400)
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
Do.controlBig(floatWindow,400)
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

luajava.newThread(function()
		while true do
	Title:scrollBy(20,0)
	if Title:getScrollX() >= 900 then Title:scrollBy(-Title:getScrollX()-1200,0)
     end
gg.sleep(125)
		end
	end):start()