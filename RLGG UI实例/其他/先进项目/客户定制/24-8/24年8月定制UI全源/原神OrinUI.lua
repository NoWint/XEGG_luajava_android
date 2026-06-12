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
function getVerticalBG(gtvb1,gtvb3,gtvb4,gtvb5)
if not gtvb4 then gtvb4 = 0 gtvb5 = 0xff000000 end
local jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(gtvb3)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors(gtvb1)
jianbians:setStroke(gtvb4,gtvb5)
return jianbians
end
function getButtonBG()
local selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, getVerticalBG({0xffd7d7d7,0xffd7d7d7},15))
selector:addState({
	-android.R.attr.state_pressed
}, getVerticalBG({0xff005f5f,0xff005f5f},15))
return selector
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
    background="#00000000",
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
id = luajava.newId(''),
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



function gg.toast(text)
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
function pdcf(lujing) rec = "/storage/emulated/0/云烛/配置文件/"..lujing fille,err = io.open(rec) if fille == nil then return false else return true end end
sleep = gg.sleep
if gg.isHTTPdump()==true and panduan("/storage/emulated/0/云烛/配置文件/vpn.txt") == false then gg.alert("\n抓包？") os.exit() end
function read(fileName) f = assert(io.open(fileName, 'r')) content = f:read("*all") f:close() return content end
function wtcf(lujing,neirong)
write("/storage/emulated/0/云烛/配置文件/"..lujing,neirong)
end
function rdcf(lujing)
return read("/storage/emulated/0/云烛/配置文件/"..lujing)
end
function checkimg(tmp)

if panduan("/sdcard/云烛/图片/"..tmp) ~= true then
gg.toast("正在下载资源"..tmp.."\n请耐心等待")
download("https://wf980627-512739054-1317447113.cos.ap-nanjing.myqcloud.com/"..tmp,"/sdcard/云烛/图片/"..tmp)
end
end
ckimg = {
    "baizw",
    "heizw",
}
for i = 1,#ckimg do
jindu = i
checkimg(ckimg[i])
end
theme = {
    "#FF7CD7","baizw"
}
theme = {
    "#FF6918","baizw"
}
theme = {
    "#494EFF","baizw"
}

-----------功能放上面或者放哪都行只要不在wanfeng.menu后面
layoutcolor = "#aa000000"
Yunzhu = {}
local Yunzhu = Yunzhu
local android = import('android.*')
function write(fileName, content)
--f = assert( io.open( fileName, 'w'))   f:write( content )     f:close()
if file.write(fileName, content) == false then  end
end
function panduan(rec) fille,err = io.open(rec) if fille == nil then return false else return true end end
function pdcf(lujing) rec = ""..lujing fille,err = io.open(rec) if fille == nil then return false else return true end end
sleep = gg.sleep
if gg.isHTTPdump()==true and panduan("") == false then gg.alert("") os.exit() end
function read(fileName) f = assert(io.open(fileName, 'r')) content = f:read("*all") f:close() return content end
function wtcf(lujing,neirong)
write("/sdcard/云烛/配置文件/"..lujing,neirong)
end
function rdcf(lujing)
return read("/sdcard/云烛/配置文件/"..lujing)
end
function pmusic(x) if audiokg == "开" then tmp1 = 0 gg.playMusic(x) tmp1 = 1 end end
if pdcf("audio") ~= true then wtcf("audio","开") end
audiokg = rdcf("audio")
function camusic(ress)
tmp1 = 0
if audiokg == "开" then
if panduan("/sdcard/云烛/音频/"..ress) == true then
pmusic("/sdcard/云烛/音频/"..ress)
tmp1 = 1
else
	download("https://wf980627-512739054-1317447113.cos.ap-nanjing.myqcloud.com/"..ress ,"/sdcard/云烛/音频/"..ress)
pmusic("/sdcard/云烛/音频/"..ress)
tmp1 = 1
end
end
end
开 = "开" 关 = "关"
function checkimg(tmp)
if panduan("/sdcard/云烛/图片/"..tmp) ~= true then
gg.toast("正在下载资源"..tmp.."\n请耐心等待")
download("https://wf980627-512739054-1317447113.cos.ap-nanjing.myqcloud.com/"..tmp,"/sdcard/云烛/图片/"..tmp)
end
end
file.getdirs("/sdcard/云烛/状态读取/")
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
	color = "#20016e6e",
	cornerRadius = 12
}
slcta = luajava.loadlayout {
	GradientDrawable,
	color = "#016e6e",
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
topbar={
		LinearLayout,
		layout_width="fill_parent",
		layout_height="25dp",
		background=getCorner({0x900e585f,0x900e585f},15,0,0xff232323,25,25,0,0),

		{LinearLayout,
			layout_width="35dp",
			layout_height="match_parent",
			gravity="center",
			{
				LinearLayout,
				gravity="center",
				--background=getVerticalBG({0xff00ffff,0xff00ffff},90),
				layout_width = "20dp",
				layout_height = "20dp",
				layout_marginLeft = "5dp",
				onClick = 隐藏,
				onTouch = hanshu,
				{LinearLayout,
					layout_height="2dp",
					layout_width="10dp",
					--background=getVerticalBG({0xff2c2c2c,0xff2c2c2c},45),
				}
			}
		},
		
		
		
		{LinearLayout,
			layout_width="35dp",
			layout_height="match_parent",
			gravity="center",
			{
				ImageView,
				padding = "5dp",
				--src = getRes("xz_gg"),
			--	background=getVerticalBG({0xff00ffff,0xff00ffff},90),
				layout_width = "20dp",
				layout_height = "20dp",
				layout_marginRight = "5dp",
				onClick=function() luajava.newThread(function() gg.alert(公告内容) end):start() end,
					onTouch=hanshu,		
					{LinearLayout,
					layout_height="2dp",
					layout_width="10dp",
				--	background=getVerticalBG({0xff2c2c2c,0xff2c2c2c},45),
					}
					}
					
		},
		{LinearLayout,
			layout_width="fill_parent",
			layout_weight=1,
			layout_height="match_parent",
			gravity="center",
			{LinearLayout,
				layout_height="match_parent",
				layout_width="80dp",
				background=topSelect(),
				onClick=function() end,
				gravity="center",
				onTouch=hanshu,
				{LinearLayout,
					layout_height="5dp",
					layout_width="60dp",
					background=getVerticalBG({0xff00ffff,0xff00ffff},20),
					{
					TextView,
		id = "titlettt",
		layout_width = "match_parent",
		layout_height = "match_parent",
		text = stitle,
		background = 图片1,
		textColor = "#00e4e4",
		gravity = "center",
		textSize = "20sp",
					}

				}
			}
		},
	{LinearLayout,
	layout_width="35dp",
	layout_height="match_parent",
	gravity="center",
	{
			ImageView,
			padding = "5dp",
			id="lockui",
			--src = getRes("heis"),
			--background=getVerticalBG({0xff00ffff,0xff00ffff},90),
			layout_width = "20dp",
			layout_height = "20dp",
			layout_marginRight = "5dp",
			onClick = uiLock,
			onTouch = hanshu,
		}
		},
		
		
		
		{LinearLayout,
			layout_width="35dp",
			layout_height="match_parent",
			gravity="center",
			{
				ImageView,
				padding = "5dp",
				--src = getRes("heix"),
				--background=getVerticalBG({0xff00ffff,0xff00ffff},90),
				layout_width = "20dp",
				layout_height = "20dp",
				layout_marginRight = "5dp",
				onClick = 隐藏,
				onTouch = hanshu,
			}
		}
	}
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
	color = "#000000",
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

jianbian = luajava.new(GradientDrawable)
jianbian:setCornerRadius(30)
jianbian:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbian2 = luajava.new(GradientDrawable)
jianbian2:setCornerRadius(30)
jianbian2:setGradientType(GradientDrawable.LINEAR_GRADIENT)

local isswitch
YoYoImpl = luajava.getYoYoImpl()
Yunzhu.menu = function(stext,sview)
if isswitch then
return false
end
isswitch = true
cebian = luajava.loadlayout({
	LinearLayout,
	id = "侧边",
	visibility = "gone",
	layout_height = "195dp",
	layout_width = "88dp",
	orientation = "vertical",
	background = getHorizontalBG({0x75161616,0x75161616},30,5,0xff047274),
	layout_marginBottom="0dp",
	{
		LinearLayout,
		id = "jm1",
		layout_height = "28dp",
		layout_width = "88dp",
		gravity = "center",
		--layout_marginTop = "2dp",
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
layout1 = luajava.loadlayout({
	ScrollView,
	fillViewport = "true",
	padding = "3dp",
	id = "layout1",
	visibility = "gone",
	layout_width = "230dp",
	layout_height = "250dp",
	orientation = "horizontal",
	{
		LinearLayout,
		id = "layouta",
		background = getHorizontalBG({0x75161616,0x75161616},30,5,0xff047274),
		gravity = "top",
		layout_width = "224dp",
		orientation = "vertical",
		gravity = "center_horizontal",
	}
})
layout2 = luajava.loadlayout({
	ScrollView,
	fillViewport = "true",
	padding = "3dp",
	id = "layout2",
	visibility = "gone",
	layout_width = "230dp",
	layout_height = "250dp",
	orientation = "horizontal",
	{
		LinearLayout,
		id = "layoutb",
		background = getHorizontalBG({0x75161616,0x75161616},30,5,0xff047274),
		gravity = "top",
		layout_width = "224dp",
		orientation = "vertical",
		gravity = "center_horizontal",
	}
})
layout3 = luajava.loadlayout({
	ScrollView,
	fillViewport = "true",
	padding = "3dp",
	id = "layout3",
	visibility = "gone",
	layout_width = "230dp",
	layout_height = "250dp",
	orientation = "horizontal",
	{
		LinearLayout,
		id = "layoutc",
		background = getHorizontalBG({0x75161616,0x75161616},30,5,0xff047274),
		gravity = "top",
		layout_width = "224dp",
		orientation = "vertical",
		gravity = "center_horizontal",
	}
})
layout4 = luajava.loadlayout({
	ScrollView,
	fillViewport = "true",
	padding = "3dp",
	id = "layout4",
	visibility = "gone",
	layout_width = "230dp",
	layout_height = "250dp",
	orientation = "horizontal",
	{
		LinearLayout,
		id = "layoutd",
		background = getHorizontalBG({0x75161616,0x75161616},30,5,0xff047274),
		gravity = "top",
		layout_width = "224dp",
		orientation = "vertical",
		gravity = "center_horizontal",
	}
})
layout5 = luajava.loadlayout({
	ScrollView,
	fillViewport = "true",
	padding = "3dp",
	id = "layout5",
	visibility = "gone",
	layout_width = "230dp",
	layout_height = "250dp",
	orientation = "horizontal",
	{
		LinearLayout,
		id = "layoute",
		background = getHorizontalBG({0x75161616,0x75161616},30,5,0xff047274),
		gravity = "top",
		layout_width = "224dp",
		orientation = "vertical",
		gravity = "center_horizontal",
	}
})
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
		background = 图片1,
		textColor = "#00e4e4",
		gravity = "center",
		textSize = "20sp",


	}})
ckou = luajava.loadlayout({
	LinearLayout,
	id = "chuangk",
	visibility = "visible",
	layout_width = "wrap_content",
	layout_height = "match_parent",
	orientation = "horizontal",
	background = "0x0000000",
	layout1,layout2,layout3,layout4,layout5,
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
			layout_marginTop = "2dp",
			background =getHorizontalBG({0x55161616,0x55161616},30,5,0xff047274),
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
	}
})
floatWindow = {
	LinearLayout,
	id = "motion",
	layout_width = "230dp",
	orientation = "vertical",
	gravity = "center_vertical",
	layout_height = "wrap_content",
	topbar,
	ckou
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
jm1.onClick = function()
luajava.newThread(function()
end):start()
切换(1)
end
jm2.onClick = function()
切换(2)
end
jm3.onClick = function()
切换(3)
end
jm4.onClick = function()
切换(4)
end
jm5.onClick = function()
切换(5)
end
exit.onClick = function()
for k,v in pairs(floattable) do
    if v~=0 then
    Yunzhu.rmvfloat(k)
    floattable[k]=0
    end
end
for k,v in pairs(titletable) do
    if v~=0 then
    Yunzhu.rmvtitle(k)
    titletable[k]=0
    end
end
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
runnable = luajava.getRunnable(function() layoute:addView(wyylog,getLayoutParams2()) end)
handler = luajava.getHandler()
handler:post(runnable)
end
corbk = true
当前ui = 1
function 切换(x)
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
	layout1:setVisibility(View.VISIBLE)
	YoYoImpl:with("FadeIn"):duration(200):playOn(layout1)
	elseif 当前ui == 2 then
	layout2:setVisibility(View.VISIBLE)
	YoYoImpl:with("FadeIn"):duration(200):playOn(layout2)
	elseif 当前ui == 3 then
	layout3:setVisibility(View.VISIBLE)
	YoYoImpl:with("FadeIn"):duration(200):playOn(layout3)
	elseif 当前ui == 4 then
	layout4:setVisibility(View.VISIBLE)
	YoYoImpl:with("FadeIn"):duration(200):playOn(layout4)
	elseif 当前ui == 5 then
	layout5:setVisibility(View.VISIBLE)
	YoYoImpl:with("FadeIn"):duration(200):playOn(layout5)
	end
--floatWindow:setBackground(beij)
	end)
end
显示 = 0
beij = getHorizontalBG({0x90000000,0x90000000},30,5,0xff047274)
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
control:setBackground(luajava.getBitmapDrawable("/sdcard/云烛/图片/imgui"))
	if tonumber(tostring(cebian:getVisibility())) == 8.0 then
	chuangk:setVisibility(View.VISIBLE)
	cebian:setVisibility(View.VISIBLE)
	title:setVisibility(View.VISIBLE)
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

--control:setBackground(luajava.getBitmapDrawable("/sdcard/云烛/图片/imgui"))
	--title:setVisibility(View.GONE)
	floatWindow:setBackground(beij2)
	--chuangk:setVisibility(View.GONE)
	cebian:setVisibility(View.GONE)
	layout1:setVisibility(View.GONE)
	layout2:setVisibility(View.GONE)
	layout3:setVisibility(View.GONE)
	layout4:setVisibility(View.GONE)
	layout5:setVisibility(View.GONE)
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
function Yunzhu.seek(name,bian,smin,smax,nows)
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
if not name then name = "云烛" end
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
function Yunzhu.newtitle(name)
titletable[name]=1
local function invoke(name)
if not name then name = "云烛" end
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
			color = "#00000000",
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

function Yunzhu.rmvtitle(name)
titletable[name]=0
local function invoke2()
window:removeView(_ENV[name], paramt[name])
end
local runnable = luajava.getRunnable(invoke2)
local handler = luajava.getHandler()
handler:post(runnable)

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
else
	tview : setVisibility (View.GONE)
Yunzhu.controlWater (_ENV [tid.."6"] , 200)
Yunzhu.controlRotation9(boxpic[tid],90,0)
end
end
boxes = {} boxpic = {}
function Yunzhu.box (views)
local tid = "box"..guid ()
boxpic[tid] = luajava.loadlayout {
	ImageView ,
	background = getRes("hei_right"),
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
if type (views [1]) == "string" or type (views [1]) == "number" then
firadio [# firadio + 1] = {
	LinearLayout ,
	layout_width = 'fill_parent' ,
	layout_height = "20dp" ,
	gravity = "center_vertical" ,
	layout_marginTop = "2dp" ,
	layout_marginLeft='8dp',
	layout_marginRight='8dp',
	elevation='2dp',
	layout_marginBottom = "4dp" ,
	onClick = function ()
	visi (tid , ttid)
	end
	,
	background = getButtonBG(),
	{
		TextView , text = views [1] ,
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
	gg.alert ("Yunzhu.box的table内第一个元素必须是string") os.exit ()
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




function Yunzhu.switch(name,func1,func2)
if type(func1) == "table" then gg.copyText("") os.exit() end
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
			luajava.newThread(function() func() end):start()
			end,

		}}
})

return rest
end
function Yunzhu.edit(name)
_ENV[name] = name..guid()
if not name then name = "NRnb666" end
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
function Yunzhu.radio(radio)
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
function Yunzhu.radio2(radio)
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
		background = "/sdcard/云烛/图片/"..radio[i][2]
	},
	{
		TextView,
		text = radio[i][1],
	},
	onClick = function() luajava.newThread(function() pcall(radio[i][3]) end):start() end,
}
end
firadio[#firadio+1] = radios
return luajava.loadlayout(firadio)
end

function Yunzhu.check(cklist)
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
if type(func1) == "table" then end
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
		background = "/sdcard/LE/图片/check1",
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
function Yunzhu.button(txt,func)
if not txt then txt = "云烛" end
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
			background = getVerticalBG({0xff005f5f,0xff005f5f},15),
			onClick = function() luajava.newThread(function() pcall(func) end):start() end,
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
function Yunzhu.text(txt,color,size)
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
luajava.getIdValue(nid):setBackground(luajava.getBitmapDrawable("/sdcard/云烛/图片/checkon2"))
_ENV[name] = "开"
pcall(func1)
else
luajava.getIdValue(nid):setBackground(luajava.getBitmapDrawable("/sdcard/云烛/图片/checkof"))
_ENV[name] = "关"
pcall(func2)
end

end
end
end
function Yunzhu.check2(cklist)
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
if type(func1) == "table" then end
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
	background = "/sdcard/云烛/图片/checkof",
	onClick = function() luajava.newThread(function() func() end):start() end,
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

namelist={}
param1 = {}
floattable={}
function Yunzhu.newfloat(name,func1,func2)
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

function Yunzhu.rmvfloat(name)
floattable[name]=0
local function invoke2()
window:removeView(_ENV[name], param1[name])
end
local runnable = luajava.getRunnable(invoke2)
local handler = luajava.getHandler()
handler:post(runnable)

end
function Yunzhu.getedit(name)
--gg.alert(edit)
edit = tostring(luajava.getIdValue(_ENV[name]):getText())
return edit
end
function Yunzhu.setedit(name,txt)
txt = tostring(txt)
luajava.runUiThread(function()
	luajava.getIdValue(_ENV[name]):setText(txt)
	end)
end
function 开关(name,func1,func2)
name=name.."开关1"
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
function 倒计时(num)
num=tonumber(num)
Yunzhu.newtitle("")
djsxfc=luajava.getIdView("")
logvids=timers.setInterval(function()
luajava.runUiThread(function()
lasttim=num-os.time()
lsttim=""
if (lasttim >= 86400) then
    lsttim =lsttim.. (lasttim/86400) .. '天'
    lasttim=lasttim%86400
end
if (lasttim >= 3600 and lasttim < 3600*24) then
    lsttim =lsttim.. (lasttim/3600) .. '小时'
    lasttim=lasttim%3600
end
if (lasttim >= 60 and lasttim < 3600) then
    lsttim =lsttim..  (lasttim/60) .. '分钟'
    lasttim=lasttim%60
end
if (lasttim < 60) then
    lsttim =lsttim..  lasttim .. '秒'
end
djsxfc:setText(tostring(
"卡密剩余 "..lsttim
))
end)
end,1000)
end
function visi(tid,ttid)
local tview = luajava.getIdValue(tid)
local ttview = luajava.getIdValue(ttid)
if not tview then return 0 end
if tonumber(tostring(tview:getVisibility())) == 8.0 then
tview:setVisibility(View.VISIBLE)
--ttview:setBackground(luajava.getBitmapDrawable("/sdcard/云烛/图片/hsj"))
else
	tview:setVisibility(View.GONE)
--ttview:setBackground(luajava.getBitmapDrawable("/sdcard/云烛/图片/sj"))
end
end
wyyget="http://120.24.160.246:3000/"
function huoqu(txt)
return table.json(gg.makeRequest(wyyget.."song/url/v1?id="..txt.."").content)
end
function souyy(txt)
tbttt=gg.makeRequest(wyyget.."search?keywords="..txt.."&limit=10")
if tbttt==nil or type(tbttt)=="string" then gg.alert("网络异常") luajava.runUiThread(function()
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

function searchmusic()
if not lasttm then lasttm=os.time() else
if os.time()-lasttm<=5 then gg.alert("请在"..(5-(os.time()-lasttm)).."秒冷却后搜索")
    return 0 end end
if not wryt then else runnable = luajava.getRunnable(function() luajava.getIdView("搜索列表"):removeView(wyr) end)
handler = luajava.getHandler()
handler:post(runnable) end
mustxt=luajava.getIdView("搜索"):getText()
if string.len(tostring(mustxt))<=2 or tostring(mustxt)==nil then gg.alert("至少输入2个字符") return 0 end
mustxt=tostring(mustxt)
luajava.runUiThread(function()
luajava.getIdView("jzz"):setVisibility(View.VISIBLE)
luajava.getIdView("stxt"):setVisibility(View.GONE)
end)
lasttm=os.time()
mustable=souyy(mustxt)
mustable=mustable.result.songs
musnames={} musids={} musarts={}
musictable={}
for k,v in pairs(mustable) do
if tonumber(v.fee)==0 or tonumber(v.fee)==8 then
musictable[#musictable+1]=v
end
end
--gg.alert(tostring(mustable))
--gg.alert(tostring(musictable))
--gg.copyText(tostring(mustable))
--gg.alert(#musictable)
wrfun={}
wryt={LinearLayout,
    id=luajava.newId("搜索结果"),
    layout_marginTop="5dp",
    layout_marginBottom="5dp",
    orientation="vertical",
}
for i=1,#musictable do
musid=musictable[i].id
musids[#musids+1]=musid
musname=musictable[i].name
if tablekIn(musictable[i], "transNames")~=false then
musname=musname .."\n(".. musictable[i].transNames[0]..")"
end
musnames[#musnames+1]=musname
musart=musictable[i].artists[0].name
musarts[#musarts+1]=musart
wryt[#wryt+1]={LinearLayout,
    orientation="vertical",
    layout_marginTop="2dp",
    layout_marginBottom="2dp",
    background=getSelector7(),
    id=luajava.newId("音"..musid),
    onClick=function() 
        thread = luajava.getPThread(function()  bofang(musname,musid) end)
		thread:start()
    end,
    {
            TextView,
            layout_marginTop="5dp",
            textSize="16sp",
            textColor="#000000",
    layout_marginBottom="0dp",
            text = musname,
            layout_hight="10dp",
            layout_width = "210dp",
            gravity="center",
            
},{
            TextView,
            layout_marginTop="0dp",
            textColor="#ffffff",
            textSize="12sp",
    layout_marginBottom="5dp",
            text = musart,
            layout_hight="10dp",
            layout_width = "210dp",
            gravity="center",
            
}

}
--gg.sleep(50)
wryt[#wryt].onClick=function() 
        luajava.getPThread(function() 
        bofang(musnames[i]..musarts[i],musids[i])
        end):start()
end
end
wyr=luajava.loadlayout(wryt)
runnable = luajava.getRunnable(function() luajava.getIdView("搜索列表"):addView(wyr) end)
handler = luajava.getHandler()
handler:post(runnable)
luajava.runUiThread(function()
luajava.getIdView("jzz"):setVisibility(View.GONE)
luajava.getIdView("stxt"):setVisibility(View.VISIBLE)
end)
--gg.alert(tostring(wrfun))
end
function bofang(gqmz,gdmn)
luajava.runUiThread(function()
luajava.getIdView("搜索结果"):setVisibility(View.GONE)
luajava.getIdView("加载"):setVisibility(View.VISIBLE)
end)

if panduan("/sdcard/云烛/音频/"..gqmz..".mp3")==true then
gg.playMusic("/sdcard/云烛/音频/"..gqmz..".mp3")
else
gg.toast("下载中..."..gqmz)
musurl=huoqu(gdmn).data[0].url
if musurl=="" or musurl=="null" then gg.alert("http://music.163.com/api/search/get?s="..name.."&type=1&offset=0&total=true&limit=") else
 download(musurl,"/sdcard/云烛/音频/"..gqmz..".mp3")
 gg.playMusic("/sdcard/云烛/音频/"..gqmz..".mp3")
gg.sleep(1000)
end
end

luajava.runUiThread(function()
luajava.getIdView("加载"):setVisibility(View.GONE)
luajava.getIdView("搜索结果"):setVisibility(View.VISIBLE)
end)
end
stxt={LinearLayout,
	visibility="visible",
    id=luajava.newId("stxt"),
	gravity="center",
    layout_hight="70dp",
    layout_width="70dp",
    gravity="center",
    orientation="vertical",
	{TextView,
    text="搜索",
    background=luajava.loadlayout({
    GradientDrawable,
    color = "#ddFF4A6F",
    cornerRadius = 12
}),
    gravity="center",
    layout_hight="30dp",
    layout_width="70dp",
    textSize="15sp",
    onClick=function() thread = luajava.getPThread(function() searchmusic() end)
			thread:start() end,
    },
	{TextView,
    text="停止",
    background=luajava.loadlayout({
    GradientDrawable,
    color = "#dd3FD198",
    cornerRadius = 12
}),
    gravity="center",
    layout_hight="30dp",
    layout_width="70dp",
    textSize="15sp",
    onClick=function() thread = luajava.getPThread(function() gg.playMusic("stop") end)
			thread:start() end,
    }
}
jzz={TextView,
    text="加载中",
    visibility="gone",
    id=luajava.newId("jzz"),
    layout_marginLeft="10dp",
    textSize="15sp",
    }
jiaz={TextView,text="正在加载歌曲资源",
    visibility="gone",
    id=luajava.newId("加载"),
    textSize="17sp",
    gravity="center"
}
wyylog=luajava.loadlayout({LinearLayout,
    
    layout_hight="180dp",
    {ScrollView,
    layout_hight="180dp",
    {LinearLayout,
    id=luajava.newId("搜索列表"),
    layout_hight="180dp",
    orientation="vertical",
    layout_width = "wrap_content",
    {LinearLayout,orientation="horizontal",
    layout_width = "wrap_content",
    
    {
            EditText,
            hint = "搜索歌曲",
            id=luajava.newId("搜索"),
            background=luajava.loadlayout({
    GradientDrawable,
    color = "#dd000000",
    cornerRadius = 12
}),
            focusableInTouch="false",
			focusable="false",
			selectAllOnFocus="true",
			singleLine="true",
            layout_width = "140dp",
            layout_hight = "60dp",
        },
    stxt,
    jzz
    },jiaz}}
})
------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------------
--string.toMusic(os.date("欢迎老板使用双某宇宙Pro启动时间为%Y年%m月%d日%H时%M分%S秒"))
qqqun = luajava.loadlayout({
	LinearLayout,
	layout_height = "40dp",layout_width = "40dp",
	background = "/sdcard/云烛/图片/qq2",
	onClick = function() luajava.newThread(function()		
		end):start() end
})


图片1 = "/storage/emulated/0/Cache_-2c28b42f935f6148.jpg"
stitle = "㊰ Orin"---名字
公告 = ""
stab = {
	"公告","防封","功能","娱乐","音乐"
}
Yunzhu.menu("",
{
	{
		--Yunzhu.button 按钮
		--Yunzhu.check 多选
		--Yunzhu.switch 开关
		--Yunzhu.check2 图片开关
		--Yunzhu.newfloat 生成悬浮按钮
		--Yunzhu.rmvfloat 删除悬浮按扭
    --
	--gg.toast("开启成功")
	--toMusic('开启成功')
    --gg.toast("开启成功")
		Yunzhu.text("公告","#00ffff","20sp"),
		Yunzhu.button("选择进程",
		function()
			gg.setProcessX()
		end,
		function()
			gg.setProcessX()
		end),
Yunzhu.button(
			"功能",
			function()
				
			end,
			function()
				
			end
		),
		Yunzhu.button(
			"功能",
			function()
				
			end,
			function()
				
			end
		),
		Yunzhu.button(
			"功能",
			function()
				
			end),
		}, {
		}, {
		}, {
		}, {

			}
		})
jm1:setBackground(slcta)
gg.setVisible(false)
luajava.setFloatingWindowHide(true)
bloc = luajava.getBlock()
bloc("join")
悬浮窗图标("https://api.99778.cn/wp/view.php/784fcbf38479dc7ef5746bb87b8dab7c.jpg")--设定悬浮窗图片，可以写链接
悬浮窗图标("http://fel.forxhr.top:2022/view.php/dba93a9cb5633f612464b0324e5c5c7d.webp")--设定悬浮窗图片，可以写链接