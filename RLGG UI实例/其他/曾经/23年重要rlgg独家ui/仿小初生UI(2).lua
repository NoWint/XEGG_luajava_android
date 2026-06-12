--[[
未完工
]]







vibra = context:getSystemService(Context.VIBRATOR_SERVICE)
YH = {}
local YH = YH
local android = import('android.*')
function write(fileName, content)
file.write(fileName, content)
end
function panduan(rec) fille,err = io.open(rec) if fille == nil then return false else return true end end
function pdcf(lujing) rec = "/sdcard/FUNC/配置文件/"..lujing fille,err = io.open(rec) if fille == nil then return false else return true end end
sleep = gg.sleep
function read(fileName) f = assert(io.open(fileName, 'r')) content = f:read("*all") f:close() return content end
function wtcf(lujing,neirong)
write("/sdcard/FUNC/配置文件/"..lujing,neirong)
end
function rdcf(lujing)
return read("/sdcard/FUNC/配置文件/"..lujing)
end

开 = "开" 关 = "关"
function checkimg(tmp)
if panduan("/sdcard/FUNC/图片/"..tmp) ~= true then
gg.toast("正在下载资源"..tmp.."\n请耐心等待")
download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..tmp,"/sdcard/FUNC/图片/"..tmp)
end
end
ckimg = {
	"sj",
	"hsj",
	'Shimmer2.dex'
}
for i = 1,#ckimg do
jindu = i
checkimg(ckimg[i])
end
shimmer=dex.loadfile('/sdcard/FUNC/图片/Shimmer2.dex')
import "com.romainpiel.shimmer.Shimmer"
import "com.romainpiel.shimmer.ShimmerTextView"
file.getdirs("/sdcard/FUNC/zip/")
gg.checkimg=function(tmp)
for i=1,#tmp do
jd=i.."/"..#tmp
file.getdirs("/sdcard/FUNC/图片/zip/"..tmp[i][1].."/")
local url = 'https://chuxinya.top/f/'..tmp[i][2].."/"..tmp[i][1]
local path = "/sdcard/FUNC/zip/"..tmp[i][1]
local msg = '正在下载'..tmp[i][2]..'，请稍后...' .. '\n目标路径->' .. path
if panduan(path) ~= true then 
local ok, err = luajava.download(url, path, msg)
else
end
gg.toast("正在加载"..tmp[i][1].."资源\n目标进度:"..jd)
unzip("/sdcard/FUNC/zip/"..tmp[i][1],"/sdcard/FUNC/图片/"..tmp[i][1].."/")
gg.sleep(1000)
gg.toast(tmp[i][1].."资源已下载完成\n目标进度:"..jd)
end
end
tmp={
{"cow","jNJtR"--[[解压码必填下面的都一样]]},
{"king","gNMsG"},
{"JW2","kNju5"},
{"iOSPro","80BtY"},
{"opo","BjZh8"}
}
gg.checkimg(tmp)
local function getRes(x)
return 获取图片("/sdcard/李信/图片/"..x)
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
function getVerticalBG(gtvb1,gtvb3,gtvb4,gtvb5)
if not gtvb4 then gtvb4 = 0 gtvb5 = 0xff000000 end
local jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(gtvb3)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors(gtvb1)
jianbians:setStroke(gtvb4,gtvb5)--边框宽度和颜色
return jianbians
end
slctb = luajava.loadlayout {
	GradientDrawable,
	color = "#EFEFEF",
	cornerRadius = 30
}
slcta = luajava.loadlayout {
	GradientDrawable,
	color = "#b9b9b9",
	cornerRadius = 30
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
local function newbg(gtvb1,gtvb4,gtvb5,g1,g2,g3,g4)
local jianbians = luajava.loadlayout({
GradientDrawable,
color = 0xff000000,
gradientType = GradientDrawable.LINEAR_GRADIENT,
orientation = GradientDrawable.Orientation.TOP_BOTTOM ,
})
jianbians:setColors(gtvb1)
jianbians:setStroke(gtvb4,gtvb5)--边框宽度和颜色
jianbians:setCornerRadii({g1,g1,g2,g2,g3,g3,g4,g4})
return jianbians
end
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

function shij()
local webView = luajava.webView(function(webView)
		webView:loadData([[
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>显示当前时间和日期</title>
    <style>
       #current-time-and-date {
            color: black;
            font-size: 13.5px;
            align-items: center;
        }
    </style>
</head>
<body>
    <div id="current-time-and-date"></div>

    <script>
        // 获取当前时间和日期，并格式化为 HTML 格式
        function displayCurrentTimeAndDate() {
            var date = new Date();

            var timeString = date.toLocaleDateString([], { year: 'numeric', month: 'long', day: 'numeric', hour: '2-digit', minute: '2-digit', second: '2-digit', hour12: false });
            // 将年份、月份和日期的文字替换为短横线，并去掉下午标签
             timeString = timeString.replace(/年|月/g, '/').replace(/日/g, '');
            document.getElementById('current-time-and-date').innerHTML = timeString;
        }

        // 每秒钟更新一次时间和日期
        setInterval(displayCurrentTimeAndDate, 1000);
    </script>
</body>
</html>
]], 'text/html', 'UTF-8')
		webView:setBackgroundColor(0x0)
		webView:setVerticalScrollBarEnabled(false)
		webView:setHorizontalScrollBarEnabled(false)
		webView:setScrollContainer(false)
	end)
	return webView
end
shij=shij()

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
YH.menu = function(sview)
if isswitch then
return false
end

isswitch = true
--[[
cebian = {
	LinearLayout,
	id = "侧边",
	layout_height = "wrap_content",
	layout_width = "108dp",
	orientation = "vertical",
	gravity = "center_horizontal",
	background = {
		GradientDrawable,
		color = "#00ffffff",
		cornerRadius = 10
	},
}
]]
local cebian = {
	GridLayout,
	columnCount = '4',
	id = "侧边",
	layout_width = '200dp',
	layout_height = "wrap_content",
	layout_marginLeft = "10dp",
	layout_marginRight = "10dp",
	--orientation = "vertical",
	gravity = "center_horizontal",
	background = {
		GradientDrawable,
		color = "#00ffffff",
		cornerRadius = 10
	}
}


	jianbians = luajava.new(GradientDrawable)
	jianbians:setCornerRadius(15)
	jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
	jianbians:setColors({0x11000000,0x11000000})
	jianbians:setStroke(4,"0x33000000")--边框宽度和颜色
--[[
selector = luajava.getStateListDrawable()
selector:addState({
		android.R.attr.state_pressed
		}, luajava.loadlayout {
			GradientDrawable,
			color = "#88000000",
			cornerRadius = 12
		}) -- 点击时候的背景
		selector:addState({
			-android.R.attr.state_pressed
		}, jianbians) -- 没点击的背景
]]
for i=1,#stab do
local textView = luajava.loadlayout(
	{
	LinearLayout,
	orientation = "vertical",
	--visibility = "gone",
	padding='3dp',
	elevation='2dp',
	{
	ImageView,
	id = "opo"..i,
	src="/sdcard/FUNC/图片/opo/opo"..i,
	layout_height= "40dp",
	layout_width= "40dp",
	padding="5dp",
	background=	jianbians
	},
	{
	TextView,
	id="jmt"..i,
	text=stab[i],
	gravity = "center",
	--	layout_gravity="center_vertical",
	textColor="#000000",
	textSize='12.5sp',
	--padding='3dp',
	--elevation='2dp',
	}
	}
)
luajava.setInterface(textView, 'setOnClickListener', function()
--gg.toast('点击了'..i)
切换(i)
end)
cebian[#cebian+1]=textView
end
--[[
for i = 1,#stab do
_ENV["cebian"..i]=selector
cebian[#cebian+1] = {
	LinearLayout,
	id = "jm"..i,
	visibility = "gone",
	layout_height = "55dp",
	layout_width = "55dp",
	layout_marginTop = "3dp",
	layout_marginBottom = "3dp",
	layout_marginRight = "10dp",
	layout_marginLeft = "10dp",
	background = getSelector(),
	{
	ImageView,
	src="/sdcard/FUNC/图片/opo/opo"..i,
	layout_height= "40dp",
	layout_width= "40dp",
	padding="5dp",
	background=	_ENV["cebian"..i],
	onClick = function() 切换(i) end,
	},
	{
		TextView,
		text = stab[i],
		gravity = "center",
		textSize = "12sp",
		textColor = "#000000",
		--layout_height = "10dp",
		--layout_width = "10dp",
	}
	}
end
]]
cebian = luajava.loadlayout(
	{
		ScrollView,
		id = "cebian",
		visibility = "gone",
		layout_height = "200dp",
		layout_width = "200dp",
		cebian
	})
for i = 1,#stab do
_ENV["layout"..i] = luajava.loadlayout({
	LinearLayout,
	layout_width = "350dp",
	layout_height = "260dp",
	visibility = "gone",
	orientation = "vertical",
	background={
		GradientDrawable,
		color = "#33ffffff",
		cornerRadius = 20
	},
	{
		TextView,
		layout_width = "250dp",
		padding = {
			"10dp","10dp","10dp","2dp"
		},
		layout_height = "30dp",
		text = stab[i],
		textColor = "#80C3F9",
		textSize = "14sp",
	},
	{
		ScrollView,
		fillViewport = "true",
--padding = "10dp",
		gravity = "center",
		layout_width = "350dp",
		layout_height = "230dp",
		orientation = "horizontal",
		{
			LinearLayout,
			id = "layoutm"..i,
			layout_marginRight = "5dp",
			layout_marginLeft = "5dp",
			layout_width = "340dp",
			orientation = "vertical",
			gravity = "center_horizontal",
		}
	}})
end
Time=luajava.loadlayout({LinearLayout,id="Time",layout_width="190dp"})
soza=true
sho=function()
if soza then 
_ENV["layout"..当前ui]:setVisibility(View.GONE)
soza=false
else
_ENV["layout"..当前ui]:setVisibility(View.VISIBLE)
soza=true
end
end
ckou = {
	LinearLayout,
	id = "chuangk",
	visibility = "visible",
	layout_width = "wrap_content",
	layout_height = "wrap_content",
	orientation = "horizontal",
	{
		LinearLayout,
		id = "dingbu",
		orientation = "vertical",
		padding = "2dp",
				{LinearLayout,
			layout_weight=1,
				layout_height='40dp',
				layout_marginTop='3dp',
				layout_marginBottom='3dp',
				layout_marginLeft='3dp',
				layout_marginRight='3dp',
				layout_width='match_parent',
				
				background=newbg({0xFFffffff,0xffffffff},0,0xffffffff,10,10,10,10),
				padding='3dp',
				elevation='2dp',
	{
		ImageView,
		id = "stitle",
		id = "titlebar",
		background = 获取图片(xfcpic),
		layout_width = "25dp",
		layout_height = "25dp",
		onTouch = hanshu,
		onClick = 隐藏,
	},
		{LinearLayout,
		id = "shozhan",
		orientation='vertical',
		layout_width='match_parent',
		layout_height='40dp',
		gravity = "center_horizontal",
		{
		Button,
		text="收缩/打开",
		textColor = "#000000",
		onClick=sho,
		layout_height='35dp',
		background=newbg({0xFFffffff,0xffffffff},0,0xffffffff,10,10,10,10)
		}
		}
		},
			{LinearLayout,
			id = "search",
		layout_width='match_parent',
		layout_height='40dp',
		{LinearLayout,
			layout_weight=1,
				layout_height='34dp',
				layout_marginTop='3dp',
				layout_marginBottom='3dp',
				layout_marginLeft='3dp',
				layout_marginRight='3dp',
				layout_width='match_parent',
				
				background=newbg({0xFFffffff,0xffffffff},0,0xffffffff,10,10,10,10),
				padding='3dp',
				elevation='2dp',
				{ScrollView,
					id='ggscro',
					layout_height='match_parent',
					layout_width='match_parent',
					{LinearLayout,
						id='gggscro',
						orientation='vertical',
						layout_width='match_parent',
						layout_height='wrap_content',
					}
				},{EditText,
					visibility='gone',
					id=luajava.newId("tosearch"),
					layout_height='match_parent',
					layout_width='match_parent',
					padding='-8dp',
					hint = "请输入需要搜索的音乐关键词",
					gravity = "center",
					hinttextColor = "0xFF00FFFF",
					textColor='#000000',
							layout_marginLeft="0dp",
							textSize = "12sp",
							background = getVerticalBG({
								0x00262626,0x00262626
							},15,5,0x00ffffff),
				}
			},{ImageView,
				id='musici',
				layout_width='34dp',
				layout_height='match_parent',
				gravity='center',
				elevation='2dp',
		layout_marginTop='3dp',
				layout_marginBottom='3dp',
				layout_marginLeft='3dp',
				layout_marginRight='3dp',
		background=newbg({0xffffffff,0xffffffff},0,0xffffffff,10,10,10,10),
				src=getRes('bm_music'),
				padding='4dp',
				onTouch=hanshu,onClick=searchmenu
				
			},--[[{LinearLayout,
				layout_width='80dp',
				layout_height='match_parent',
				gravity='center',
				elevation='2dp',
		layout_marginTop='3dp',
				layout_marginBottom='3dp',
				layout_marginLeft='3dp',
				layout_marginRight='3dp',
		background=newbg({0xffffffff,0xffffffff},0,0xffffffff,10,10,10,10),
				{TextView,
				id="titlebar",
				textSize="18sp",
				gravity='center_horizontal',
				layout_width='match_parent',
				textColor="#161616",
				text=stitle,
				onClick = 隐藏,
				}
			}]]
		--topbar
	},
		Time,
		cebian,
	},
	{
		LinearLayout,
		layout_marginBottom = "12dp",
		layout_marginTop = "12dp",
		layout_width = "2dp",
		layout_height = "fill_parent",
		background = "#D7D7D7"
	}

}
for i = 1,#stab do
ckou[#ckou+1] = _ENV["layout"..i]
end
ckou = luajava.loadlayout(ckou)
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
block('start')
for k = 1,#stab do
for i = 1,#sview[k] do
_ENV["layoutm"..k]:addView(sview[k][i])
end
end
for i = 1,#stab do
_ENV["opo"..i]:setColorFilter(0xFF00FFFF)
end
_ENV["opo1"]:setColorFilter(0xffFF0F00)
musici:setColorFilter(0xFF00FFFF)
luajava.getIdView("tosearch"):setHintTextColor(0x8500F2C9)
search:setVisibility(View.GONE)
Time:addView(shij)
Time:setVisibility(View.GONE)
dingbu:setVisibility(View.GONE)
window:addView(floatWindow, mainLayoutParams)
motion:getLayoutParams().flags = LayoutParams.FLAG_NOT_TOUCH_MODAL
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



function searchmenu()
luajava.runUiThread (function ()
	local searchUI = luajava.getIdView("tosearch")
	if tonumber(tostring(searchUI: getVisibility ())) == 8.0 then
	searchUI:setVisibility(View.VISIBLE)
ggscro:setVisibility(View.GONE)

	else
		luajava.newThread(searchmusic):start()
	end
	end)
end
function getTimeStamp(t)
local str = os.date("%m-%d %H:%M:%S",t)
return str
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
	local searchUI = luajava.getIdView("tosearch")
	if x==5 then
		searchUI:setVisibility(View.VISIBLE)
ggscro:setVisibility(View.GONE)
else
	searchUI:setVisibility(View.GONE)
ggscro:setVisibility(View.VISIBLE)

	end
end)
luajava.runUiThread(function()
	for i = 1,#stab do
	_ENV["layout"..i]:setVisibility(View.GONE)
	_ENV["opo"..i]:setColorFilter(0xFF00FFFF)
	end
	_ENV["layout"..当前ui]:setVisibility(View.VISIBLE)
	YoYoImpl:with("FadeIn"):duration(200):playOn(_ENV["layout"..当前ui])
	_ENV["opo"..当前ui]:setColorFilter(0xffFF0F00)
	end)
end
显示 = 0
beij = luajava.loadlayout({
	GradientDrawable,
	color = "#ffffffff",
	cornerRadius = 20
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
luajava.runUiThread(function()
	if tonumber(tostring(cebian:getVisibility())) == 8.0 then
	control:setVisibility(View.GONE)
	显示 = 1
	titlebar:setVisibility(View.VISIBLE)
	cebian:setVisibility(View.VISIBLE)
	search:setVisibility(View.VISIBLE)
	Time:setVisibility(View.VISIBLE)
	dingbu:setVisibility(View.VISIBLE)
	--YoYoImpl:with("SlideInDown"):duration(200):playOn(cebian)
	_ENV["layout"..当前ui]:setVisibility(View.VISIBLE)
	YoYoImpl:with("FadeIn"):duration(800):playOn(_ENV["layout"..当前ui])
	floatWindow:setBackground(beij)
	else
		titlebar:setVisibility(View.GONE)
	floatWindow:setBackground(beij2)
	control:setVisibility(View.VISIBLE) 显示 = 0
	cebian:setVisibility(View.GONE)
	_ENV["layout"..当前ui]:setVisibility(View.GONE)
	dingbu:setVisibility(View.GONE)
	search:setVisibility(View.GONE)
	Time:setVisibility(View.GONE)
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
tuic=true
luajava.post(function()
	window:removeView(floatWindow)
	end)
end


setExitEvent(exit)
YH.controlWater = function(control,time)
luajava.runUiThread(function()
	import "android.animation.ObjectAnimator"
	ObjectAnimator():ofFloat(control,"scaleX", {
		1, 0.8, 0.9, 1
	}):setDuration(time):start()
	ObjectAnimator():ofFloat(control,"scaleY", {
		1,0.8,0.9,1
	}):setDuration(time):start()
	end) end
YH.controlSmall = function(control,time)
luajava.runUiThread(function()
	import "android.animation.ObjectAnimator"
	ObjectAnimator():ofFloat(control,"scaleX", {
		1, 0.7, 0.4, 0
	}):setDuration(time):start()
	ObjectAnimator():ofFloat(control,"scaleY", {
		1, 0.7, 0.4, 0
	}):setDuration(time):start()
	end) end
YH.controlBig = function(control,time)
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
local localname = name
name = name..guid()
_ENV[name] = "关"
if func1 == nil then func1 = function() end end
if func2 == nil then func2 = function() end end
if type(func1) == "function" then
return function()
namers = _ENV[name]
if namers ~= "开" then
luajava.runUiThread(function()
	YH.controlWater(_ENV[nid],200)
	luajava.getIdValue(nid):setBackground(check2)
	luajava.getIdValue(nid.."k"):setVisibility(View.GONE)
	luajava.getIdValue(nid.."g"):setVisibility(View.VISIBLE)
	end)
_ENV[name] = "开"
vibra:vibrate(6)
uiadtext(localname.." </font><font color='#0062ff'>已开启.","#161616")
pcall(func1)
else
	luajava.runUiThread(function()
	YH.controlWater(_ENV[nid],200)
	luajava.getIdValue(nid):setBackground(check1)
	luajava.getIdValue(nid.."g"):setVisibility(View.GONE)
	luajava.getIdValue(nid.."k"):setVisibility(View.VISIBLE)
	end)
_ENV[name] = "关"
vibra:vibrate(6)
uiadtext(localname.." </font><font color='#B9342D'>已关闭.","#161616")
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

check1 = getShape(
	45,
	{
		0xffffffff,0xffffffff
	},
	4,0xff80C3F9)
check2 = getShape(
	45,
	{
		0xff80C3F9,0xff80C3F9
	},
	4,0xff80C3F9)
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
function YH.intcheck(name,func1,func2)
nid = name..guid()
_ENV[nid] = luajava.loadlayout({
	FrameLayout,
	id = luajava.newId(nid),
	background = check1,
	layout_width = '40dp',
	layout_height = '20dp',
	padding = "0dp",
	{
		LinearLayout,
		layout_gravity = "left|center",
		id = luajava.newId(nid.."k"),
		background = checkbg1,
		layout_width = '20dp',
		layout_height = '20dp',
	}, {
		LinearLayout,
		visibility = "gone",
		layout_gravity = "right|center",
		id = luajava.newId(nid.."g"),
		background = checkbg2,
		layout_width = '20dp',
		layout_height = '20dp',
	}
})
local func = 开关3(name,func1,func2,nid)
if not name then name = "未设置" end
local rest = luajava.loadlayout({
	LinearLayout,
	layout_width = '105dp',
	layout_height = "42dp",
	layout_marginTop = "1dp",
	layout_marginBottom = "1dp",
	padding = "1dp",
	{
		LinearLayout,
		onClick = function() luajava.newThread(function() func() end):start() end,
		layout_width = 'fill_parent',
		layout_height = "40dp",
		gravity = "center_vertical",
		background = luajava.loadlayout({
			GradientDrawable,
			color = "#0038393D",
			cornerRadius = 13
		}),
		{
			TextView,
			gravity = "center",
			text = name,
			textColor = "#"..颜色2,
			textSize = "11sp",
--layout_marginLeft="8dp",
			layout_width = '55dp',
		},
		_ENV[nid]}
})

return rest
end




function YH.check(cklist)
local rest = {
	GridLayout,
	columnCount = '3',
	layout_width = 'match_parent',
	layout_height = "wrap_content",
	layout_marginLeft = "10dp",
	layout_marginRight = "10dp",
	gravity = "center"

}
for i = 1,#cklist do
local name = cklist[i][1]
local func1 = cklist[i][2]
local func2 = cklist[i][3]
if not name then name = "未设置" end
rstt = YH.intcheck(name,func1,func2)
rest[#rest+1] = rstt
end
return luajava.loadlayout({
	LinearLayout,rest
})
end
function YH.button(txt,func)
if not txt then txt = "未设置" end
return luajava.loadlayout(
	{
		LinearLayout,
		layout_width = '220dp',
		layout_hight = "30dp", {
			LinearLayout,
			layout_width = "fill_parent",
			gravity = "center_horizontal",
			layout_marginTop = "5dp",
			layout_marginBottom = "5dp",
			background = getSelector3(),
			onClick = function() 
			luajava.newThread(function() 
			uiadtext('执行 '..txt,"#161616")
			pcall(func) end):start() end,
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
function YH.text(txt,color,size)
if not txt then txt = "未设置文字" end
if not color then color = "#"..颜色2 end
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
local localname=name
if func1 == nil then func1 = function() end end
if func2 == nil then func2 = function() end end
if type(func1) == "function" then
return function()
namers = _ENV[name]
if namers ~= "开" then
_ENV[name] = "开"
uiadtext(localname.." </font><font color='#0062ff'>已开启.","#161616")
pcall(func1)
else
	_ENV[name] = "关"
	uiadtext(localname.." </font><font color='#B9342D'>已关闭.","#161616")
pcall(func2)
end

end
end
end


function 开关2(name,func1,func2,nid)
local localname = name
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
uiadtext(localname.." </font><font color='#0062ff'>已开启.","#161616")
func1()
else
	luajava.runUiThread(function()
	luajava.getIdValue(nid):setBackground(luajava.getBitmapDrawable("/sdcard/FUNC/图片/check1"))
	end)
_ENV[name] = "关"
uiadtext(localname.." </font><font color='#B9342D'>已关闭.","#161616")
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
function YH.box(views)
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
		background = "/sdcard/FUNC/图片/sj",
		layout_width = "13dp",
		layout_height = "13dp",
		layout_marginTop = "0dp",
	},
	{
		TextView,text = views[1],
		textSize = "13sp",
		layout_width = "220dp",
		textColor = "#"..颜色2,
		layout_gravity = "center",
		gravity = "center"
	}} else
	gg.alert("YH.box第一个参数必须是string") os.exit()
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

function uiadtext(txt,color,size)
if not txt then txt = "" end
if not color then color = "#000000" end
if not size then size = "10sp" end
local tmp=luajava.loadlayout(
	{
		TextView,
		text = string.fromHtml(" <font color=#545454>"..getTimeStamp(os.time()).."</font> <font color="..color..">"..txt.."</font>"),
		textSize = size,
		--textColor = color,
		gravity="left",
		layout_width = "wrap_content",
	})
	
luajava.runUiThread (function ()
	local searchUI = luajava.getIdView("tosearch")
	searchUI:setVisibility(View.GONE)
ggscro:setVisibility(View.VISIBLE)
	end)
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
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(15)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({0x11000000,0x11000000})
jianbians:setStroke(4,"0x33000000")--边框宽度和颜色

selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, luajava.loadlayout {
	GradientDrawable,
	color = "#88000000",
	cornerRadius = 12
}) -- 点击时候的背景
selector:addState({
	-android.R.attr.state_pressed
}, jianbians) -- 没点击的背景
return selector
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
	切换(5)
	luajava.runUiThread(function()
	mustxt = luajava.getIdView("tosearch"):getText()
	luajava.getIdView("tosearch"):setText('')
	--searchmenu()
	end) gg.sleep(100)
	if string.len(tostring(mustxt)) <= 2 or tostring(mustxt) == nil then
		gg.alert("至少输入2个字符")
		return 0
	end
	mustxt = tostring(mustxt)
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
	-- gg.alert(tostring(mustable))
	-- gg.alert(tostring(musictable))
	-- gg.copyText(tostring(mustable))
	-- gg.alert(#musictable)
	wrfun = {}
	wryt = {
		LinearLayout,
		id = luajava.newId("搜索结果"),
		layout_marginTop = "5dp",
		layout_marginBottom = "5dp",
		orientation = "vertical"
	}
	for i = 1, #musictable do
		musid = musictable[i].id
		-- print('musid',musid)

		-- musid = musictable[i].album.id
		-- print('musid',musid)

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
			layout_width = "match_parent",
			layout_marginBottom = "2dp",
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
				textSize = "15sp",
				textColor = "#EF8A5C",
				layout_marginBottom = "0dp",
				text = musname,
				layout_hight = "10dp",
				layout_width = "match_parent",
				gravity = "center"

			},
			{
				TextView,
				layout_marginTop = "0dp",
				textColor = "#ffffff",
				textSize = "12sp",
				layout_marginBottom = "5dp",
				text = musart,
				layout_hight = "10dp",
layout_width = "match_parent",
				gravity = "center"

			}

		}
		-- gg.sleep(50)
		wryt[#wryt].onClick = function()
			-- (function()
			-- 	bofang(musnames[i] .. musarts[i], musids[i])
			-- end):start()
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
	-- gg.alert(tostring(wrfun))
end
function bofang(gqmz, gdmn)
	luajava.runUiThread(function()
		luajava.getIdView("搜索结果"):setVisibility(View.GONE)
		luajava.getIdView("加载"):setVisibility(View.VISIBLE)

	end)

	gg.playMusic("http://music.163.com/song/media/outer/url?id="..gdmn..".mp3" or huoqu(gdmn).data[0].url)
	uiadtext("正在播放 </font><font color='#0062ff'>"..gqmz,"#161616")
	gg.sleep(2000)
	luajava.runUiThread(function()
		luajava.getIdView("加载"):setVisibility(View.GONE)
		luajava.getIdView("搜索结果"):setVisibility(View.VISIBLE)
	end)
end
jiaz = {
	TextView,
	text = "正在加载歌曲资源",
	visibility = "gone",
	id = luajava.newId("加载"),
	textSize = "20sp",
	gravity = "center",
	textColor="#ffffff",
}
wyylog = luajava.loadlayout({
	LinearLayout,
	orientation="vertical",
	layout_width = "match_parent",
	{
		ScrollView,
		layout_hight = "220dp",
		gravity="center_horizontal",
		layout_width = "match_parent",
		{
			LinearLayout,
			layout_width = "match_parent",
			{LinearLayout,
			padding="4dp",
			gravity="center",
			orientation="vertical",
			YH.text('请在上方搜索音乐关键词',0xff245AFF)
			},
			
			id = luajava.newId("搜索列表"),
			layout_hight = "200dp",
			orientation = "vertical",
			layout_width = "match_parent",
			gravity="center_horizontal",
			jiaz
		}
	}
})











颜色1 = "80C3F9"--用于标题
颜色2 = "545454"--用于文本



stitle = "FUNC-UI"

stab = {
--菜单名字，添加即可加页数，需要与结尾配置表对应
	"公告",
	"功能",
	"功能",
	"设置",
	"音乐",
	"功能",
	"音乐",
	"设置",
	"1","2","3","4"
}
xfcpic = "https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/arlogo"
--悬浮窗链接或路径
searchUI = luajava.getIdView("tosearch")
YH.menu(
	{
		{--1
			YH.text("文字演示","#80C3F9","20sp"),
			YH.text("文字演示文字演示文字演示","#545454","10sp"),
			YH.check({
				{
					"例子",
					function()

					end,
					function()

					end
				}, {
					"例子",
					function()

					end,
					function()

					end
				}, {
					"测试1",
					function()

					end,
					function()

					end
				}
			}),
			
			
			YH.text("文字演示","#80C3F9","20sp"),
			YH.text("文字演示文字演示文字演示","#545454","10sp"),
			YH.check({
				{
					"例子",
					function()

					end,
					function()

					end
				}, {
					"例子",
					function()

					end,
					function()

					end
				}, {
					"测试1",
					function()

					end,
					function()

					end
				}
			}),
			
			
		}, {
--2

		}, {
--3

		}, {
--第四页
			--YH.switch("6"),
			YH.text("\n\n\n"),
			YH.button("退出",function()
			tuic=true
				window:removeView(floatWindow)
				luajava.setFloatingWindowHide(false)
				luajava.newThread(function() os.exit() end):start()
				bloc("end")
				end),
		}, {
--第五页，没有写菜单标题所以不显示
YH.button("暂停",
function()
toMusic("已暂停")
end),
wyylog
		},{
			
		},{
			
		},{
			
		},{
			
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



bloc = luajava.getBlock()
bloc('join')