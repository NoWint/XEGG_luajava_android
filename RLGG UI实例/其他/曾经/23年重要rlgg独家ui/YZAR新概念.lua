changan={}
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
slctb = getHorizontalBG({0xffffffff,0xffffffff},35)----uiby云烛 这里是没点时的翻页按钮
slcta = getHorizontalBG({0xff004EFF,0xff004EFF},35)-----点时的翻页
slctc = luajava.loadlayout {
	GradientDrawable,
	color = "#11000000",
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

if not io.open ( "/storage/emulated/0/1.purple" ) then
local f = io.open ( "/storage/emulated/0/1.purple" , 'a' )
f : write (1)
download("http://jiami.guimei.work/a/1691516960.png" , "/sdcard/浪子配置/图片/arpurple" )
download("http://jiami.guimei.work/a/1691547238.png" , "/sdcard/浪子配置/图片/arpurplex" )
download("http://jiami.guimei.work/a/1691452246.png" , "/sdcard/浪子配置/图片/checkoffpurple" )
download("http://jiami.guimei.work/a/1691516093.png" , "/sdcard/浪子配置/图片/checkonpurple" )
download("http://jiami.guimei.work/a/1691504539.png" , "/sdcard/浪子配置/图片/rswitch1" )
download("http://jiami.guimei.work/a/1691551988.png" , "/sdcard/浪子配置/图片/rswitchpurple" )
download("http://jiami.guimei.work/a/1691479680.png" , "/sdcard/浪子配置/图片/sj" )
download("http://jiami.guimei.work/a/1691441654.png" , "/sdcard/浪子配置/图片/hsj" )
download("http://jiami.guimei.work/a/1691697115.png" , "/sdcard/浪子配置/图片/purplearlogo" )
end
--[[if not io.open ( "/sdcard/浪子配置/图片/arpurple" ) then
download("http://jiami.guimei.work/a/1691437699.png" , "/sdcard/浪子配置/图片/arpurple" )
end
if not io.open ( "/sdcard/浪子配置/图片/arpurplex" ) then
download("http://jiami.guimei.work/a/1691464998.png" , "/sdcard/浪子配置/图片/arpurplex" )
end
if not io.open ( "/sdcard/浪子配置/图片/checkoffpurple" ) then
download("http://jiami.guimei.work/a/1691422681.png" , "/sdcard/浪子配置/图片/checkoffpurple" )
end
if not io.open ( "/sdcard/浪子配置/图片/checkonpurple" ) then
download("http://jiami.guimei.work/a/1691506621.png" , "/sdcard/浪子配置/图片/checkonpurple" )
end
if not io.open ( "/sdcard/浪子配置/图片/rswitch1" ) then
download("http://jiami.guimei.work/a/1691504539.png" , "/sdcard/浪子配置/图片/rswitch1" )
end
if not io.open ( "/sdcard/浪子配置/图片/rswitchpurple" ) then
download("http://jiami.guimei.work/a/1691431601.png" , "/sdcard/浪子配置/图片/rswitchpurple" )
end
if not io.open ( "/sdcard/浪子配置/图片/sj" ) then
download("http://jiami.guimei.work/a/1691479680.png" , "/sdcard/浪子配置/图片/sj" )
end
if not io.open ( "/sdcard/浪子配置/图片/hsj" ) then
download("http://jiami.guimei.work/a/1691441654.png" , "/sdcard/浪子配置/图片/hsj" )
end
]]








--[[if not io.open ( "/storage/emulated/0/浪子配置.zip" ) then

	local f = io.open ( "/storage/emulated/0/浪子配置.zip" , 'a' )

	f : write ( gg.makeRequest ( 'http://chuxinya.top/down.php/ec3a582088bbb5e6159d20cac79618e4.zip' ).content )---下载zip资源

end

file.mkdir("/storage/emulated/0/浪子配置")----创文件夹
file.mkdir("/storage/emulated/0/浪子配置/配置文件")
file.mkdir("/storage/emulated/0/浪子配置/图片")

unzip("/storage/emulated/0/浪子配置.zip","/storage/emulated/0/")---解压]]

changan={}

function panduan(rec )
	fille , err = io.open(rec )
	if fille == nil then
		return false
	else
		return true
	end
end

function pdcf(lujing )
	rec = "/storage/emulated/0/浪子配置/配置文件/"..lujing fille , err = io.open(rec )
	if fille == nil then
		return false
	else
		return true
	end
end

sleep = gg.sleep
-- if gg.isHTTPdump()==true and panduan("/storage/emulated/0/浪子配置/配置文件/vpn.txt") == false then gg.alert("\n抓包？") os.exit() end
--function read(fileName )
--	f = assert(io.open(fileName , 'r' ) ) content = f : read("*all" ) f : close() return content
--end

function wtcf(lujing , neirong )
	write("/storage/emulated/0/浪子配置/配置文件/"..lujing , neirong )
end

function rdcf(lujing )
	return read("/storage/emulated/0/浪子配置/配置文件/"..lujing )
end

function checkimg(tmp )

	if panduan("/sdcard/浪子配置/图片/"..tmp ) ~= true then
		gg.toast("正在下载资源"..tmp.."\n请耐心等待" )
		download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..tmp , "/sdcard/浪子配置/图片/"..tmp )
	end
end


changan = { }
local changan = changan
local android = import('android.*' )
function write(fileName , content )
	-- f = assert( io.open( fileName, 'w'))   f:write( content )     f:close()
	if file.write(fileName , content ) == false then
		gg.alert("请给框架和修改器 文件储存权限\n否则无法正常运行" ) os.exit()
	end
end

function panduan(rec )
	fille , err = io.open(rec )
	if fille == nil then
		return false
	else
		return true
	end
end

function pdcf(lujing )
	rec = "/sdcard/浪子配置/配置文件/"..lujing fille , err = io.open(rec )
	if fille == nil then
		return false
	else
		return true
	end
end

sleep = gg.sleep
-- if gg.isHTTPdump()==true and panduan("/sdcard/浪子配置/配置文件/vpn.txt") == false then gg.alert("\n抓包？") os.exit() end
--function read(fileName )
--	f = assert(io.open(fileName , 'r' ) ) content = f : read("*all" ) f : close() return content
--end

function wtcf(lujing , neirong )
	write("/sdcard/浪子配置/配置文件/"..lujing , neirong )
end

function rdcf(lujing )
	return read("/sdcard/浪子配置/配置文件/"..lujing )
end

function pmusic(x )
	if audiokg == "开" then
		tmp1 = 0 gg.playMusic(x ) tmp1 = 1
	end
end

if pdcf("audio" ) ~= true then
	wtcf("audio" , "开" )
end
audiokg = rdcf("audio" )
function camusic(ress )
	tmp1 = 0
	if audiokg == "开" then
		if panduan("/sdcard/浪子配置/音频/"..ress ) == true then
			pmusic("/sdcard/浪子配置/音频/"..ress )
			tmp1 = 1
		else
			download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..ress , "/sdcard/浪子配置/音频/"..ress )
			pmusic("/sdcard/浪子配置/音频/"..ress )
			tmp1 = 1
		end
	end
end

function checkimg(tmp )

	if panduan("/sdcard/浪子配置/图片/"..tmp ) ~= true then
		gg.toast("正在下载资源"..tmp.."\n请耐心等待" )
		download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..tmp , "/sdcard/浪子配置/图片/"..tmp )
	end
end

ckimg = {
	--[["arlogo" ,
	"arpurple" ,
	"sj" ,
	"hsj",
	"arpurplex" ,
	"rswitch1" ,
	"rswitchpurple" ,
	"checkonpurple" ,
	"checkoffpurple" ,]]

}
for i = 1 , # ckimg do
	jindu = i
	checkimg(ckimg [ i ] )
end
local context = app.context
local window = context : getSystemService("window" ) -- 获取窗口管理器
function getLayoutParams()
	LayoutParams = WindowManager.LayoutParams
	layoutParams = luajava.new(LayoutParams )
	if(Build.VERSION.SDK_INT >= 26 ) then
		-- 设置悬浮窗方式
		layoutParams.type = LayoutParams.TYPE_APPLICATION_OVERLAY
	else
		layoutParams.type = LayoutParams.TYPE_PHONE
	end

	layoutParams.format = PixelFormat.RGBA_8888 -- 设置背景
	layoutParams.flags = LayoutParams.FLAG_NOT_FOCUSABLE
	layoutParams.gravity = Gravity.TOP | Gravity.LEFT -- 重力设置
	layoutParams.width = LayoutParams.WRAP_CONTENT -- 布局宽度
	layoutParams.height = LayoutParams.WRAP_CONTENT -- 布局高度

	return layoutParams
end
changan.controlRotation2 = function(control, time)
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
changan.controlRotation3 = function(control, time,jd1,jd2)
    luajava.runUiThread(function()
        import "android.view.animation.Animation"
        import "android.animation.ObjectAnimator"
        xuanzhuandonghua = ObjectAnimator:ofFloat(control, "rotation", {
            jd1, jd2  
        })
        xuanzhuandonghua:setRepeatCount(0)
        xuanzhuandonghua:setRepeatMode(Animation.RESTART)
        xuanzhuandonghua:setDuration(time)
        xuanzhuandonghua:start()
    end)
end
slctb = luajava.loadlayout {
	GradientDrawable ,
	color = "#00000000" ,
	cornerRadius = 0
}
jianbian6 = luajava.new(GradientDrawable)
jianbian6:setCornerRadius(10)
jianbian6:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbian6:setColors({0xFF2828FF,0xffFF0000})--侧边背景颜色
jianbian6:setStroke(0.2,"0xddffffff")--边框宽度和颜色
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
changan.controlWater = function(control,time)
	luajava.runUiThread(function()
  import "android.animation.ObjectAnimator"
  ObjectAnimator():ofFloat(control,"scaleX",{1, 0.8, 0.9, 1}):setDuration(time):start()
  ObjectAnimator():ofFloat(control,"scaleY",{1,0.8,0.9,1}):setDuration(time):start()
end) end
changan.controlSmall = function(control,time)
	luajava.runUiThread(function()
  import "android.animation.ObjectAnimator"
  ObjectAnimator():ofFloat(control,"scaleX",{1, 0.7, 0.4, 0}):setDuration(time):start()
  ObjectAnimator():ofFloat(control,"scaleY",{1, 0.7, 0.4, 0}):setDuration(time):start()
end) end
changan.controlBig = function(control,time)
	luajava.runUiThread(function()
  import "android.animation.ObjectAnimator"
  ObjectAnimator():ofFloat(control,"scaleX",{0, 0.4, 0.7, 1}):setDuration(time):start()
  ObjectAnimator():ofFloat(control,"scaleY",{0, 0.4, 0.7, 1}):setDuration(time):start()
end) end
changan.controlWater2 = function ( control , time )
	luajava.runUiThread ( function ( )
			import "android.animation.ObjectAnimator"
			ObjectAnimator ( ) : ofFloat ( control , "scaleX" , { 1 , 1.1 , 0.9 , 1 } ) : setDuration ( time ) : start ( )
			ObjectAnimator ( ) : ofFloat ( control , "scaleY" , { 1 , 0.9 , 1.1 , 1 } ) : setDuration ( time ) : start ( )
		end

	)
end

slcta = jianbian6
slctc = luajava.loadlayout {
	GradientDrawable ,
	color = "#11ffffff" ,
	cornerRadius = 30
}
slctd = luajava.loadlayout {
	GradientDrawable ,
	color = "#55ffffff" ,
	cornerRadius = 30
}
slcte = luajava.loadlayout {
	GradientDrawable ,
	color = "#11ffffff" ,
	cornerRadius = 30
}
slctf = luajava.loadlayout {
	GradientDrawable ,
	color = "#dd000000" ,
	cornerRadius = 30
}
function getSelector3()
	selector = luajava.getStateListDrawable()
	selector : addState({
			android.R.attr.state_pressed
		} , slcte ) -- 点击时候的背景
	selector : addState({
			- android.R.attr.state_pressed
		} , slctf ) -- 没点击的背景
	return selector
end

function getSelector4()
	selector = luajava.getStateListDrawable()
	selector : addState({
			android.R.attr.state_checked
		} , slcte ) -- 点击时候的背景
	selector : addState({
			- android.R.attr.state_checked
		} , slctf ) -- 没点击的背景
	return selector
end

function getSelector()
	selector = luajava.getStateListDrawable()
	selector : addState({
			android.R.attr.state_pressed
		} , slcta ) -- 点击时候的背景
	selector : addState({
			- android.R.attr.state_pressed
		} , slctb ) -- 没点击的背景
	return selector
end

function getSelector2()
	selector = luajava.getStateListDrawable()
	selector : addState({
			android.R.attr.state_pressed
		} , slctd ) -- 点击时候的背景
	selector : addState({
			- android.R.attr.state_pressed
		} , slctc ) -- 没点击的背景
	return selector
end

function getcolor(cl )
	cl [ 1 ] = tonumber(math.ceil(cl [ 1 ] * 2.6 , 0 , 5 ) )

	if cl [ 1 ] > 255 then
		cl [ 1 ] = "0xff"
	else
		cl [ 1 ] = "0x"..string.format("%x" , cl [ 1 ] )
	end
	for i = 1 , 3 do
		cl [ i + 1 ] = string.format("%x" , cl [ i + 1 ] )
		if string.len(cl [ i + 1 ] ) == 1 then
			cl [ i + 1 ] = "0"..cl [ i + 1 ]
		end
	end
	cl = cl [ 1 ]..cl [ 2 ]..cl [ 3 ]..cl [ 4 ]
	return cl
end

function particle()
local webView = luajava.webView(function(webView)
	webView:loadData([[
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <title>by云烛</title>
 
    <style>
      html,
      *{
    /* 初始化 */
    margin: 0;
    padding: 0;
}
body{
    height: 20vw;
    /* 弹性布局 水平+垂直居中 */
    display: flex;
    justify-content: center;
    align-items: center;
    background-color: #131416;
}
h1{
    /* 文本透明 */
    color: transparent;
    font-size: 15px;
    letter-spacing: 5px;
    /* 渐变背景 */
    background: linear-gradient(to right,#2000FF,#ff0000,#2000FF);
    /* 裁剪掉文字以外的区域 */
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    background-size: 80%;
    background-repeat: repeat;
    background-position: center;
    /* 执行动画：动画名 时长 线性 无线播放 */
    animation: move 4s linear infinite;
    position:absolute;
    top:10px
}
p{
  color: white;
  font-size: 6px;
  align-items: center;
  }
/* 定义动画 */
@keyframes move {
    0%{
        background-position: -400%;
    }
    100%{
        background-position: 400%;
    }
}
    </style>
  </head>
  <body>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">

    <title>纯CSS实现文本背景扫光效果</title>
    <link rel="stylesheet" href="113.css">
</head>

<body>
    <h1> 云烛全防<br>  <p> 电报频道@XEWLYZ</p></h1>
    

</body>

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

function getrgb(cl )
	if string.sub(cl , 1 , 1 ) == "#" then
		cl = "0x"..string.sub(cl , 2 , -1 )
	end
	cl = {
		tonumber(string.sub(cl , 0 , 4 ) ) , tonumber("0x"..string.sub(cl , 5 , 6 ) ) , tonumber("0x"..string.sub(cl , 7 , 8 ) ) }
	return cl
end

jianbian = luajava.new(GradientDrawable )
jianbian : setCornerRadius(30 )
jianbian : setGradientType(GradientDrawable.LINEAR_GRADIENT )
local isswitch
YoYoImpl = luajava.getYoYoImpl()
changan.menu = function(stxt , sview )
	if # sview < # stab then
		gg.alert("错误：菜单配置表少于菜单导航栏数量" )
		return false
	end
	isswitch = true
	cebian = {
		LinearLayout ,
		id = "侧边" ,
		visibility = "gone" ,
		layout_height = "wrap_content" ,
		layout_width = "54dp" ,
		padding = "2dp" ,
		orientation = "vertical" ,
	}
	for i = 1 , # stab do
		_ENV["jm"..i]=luajava.loadlayout({
			LinearLayout ,
			--id = "jm"..i ,
			layout_height = "48dp" ,
			layout_width = "48dp" ,
			onClick = function()
				切换(i )
				changan.controlFlip(_ENV["jm"..i],800)
			end
			,
			gravity = "center" ,
			{
				TextView ,
				id = "jm"..i.."tu" ,
				text = stab [ i ] ,
				gravity = "center" ,
				layout_height = "wrap_content" ,
				layout_width = "wrap_content" ,

			} })
		cebian [ # cebian + 1 ] = _ENV["jm"..i]
	end
	cebian = luajava.loadlayout(cebian )
	for i = 1 , # stab do
		_ENV [ "layout"..i ] = luajava.loadlayout({
				ScrollView ,
				fillViewport = "true" ,
				id = "layout"..i ,
				visibility = "gone" ,
				layout_width = "250dp" ,
				layout_height = "wrap_content" ,
				orientation = "horizontal" ,
				{
					LinearLayout ,
					id = "layoutm"..i ,
					gravity = "top" ,
					padding = "8dp" ,
					layout_width = 'fill_parent' ,
					layout_height = "wrap_content" ,
					orientation = "vertical" ,
				}
			} )
	end
	title = luajava.loadlayout({
			LinearLayout ,
			id = "titl" ,
			visibility = "gone" ,
			layout_width = "wrap_content" ,
			layout_height = "50dp" ,
			gravity = "center" ,
			{
				LinearLayout ,
				layout_marginLeft = "60dp" ,
				layout_marginTop = "-5dp" ,
				layout_width = "80dp" ,
				gravity = "center" ,
				orientation="vertical",
				{LinearLayout,
id="webv_",
layout_height="fill_parent",
layout_width="fill_parent",
gravity="center",
layout_marginTop = "0dp" ,
},
				{TextView,
				text = stxt ,
				gravity = "center" ,
				layout_marginTop = "-20dp" ,
				textSize = "10sp" ,
				} ,
				
				
			}, {
				ImageView ,
				id = "exit" ,
				src = "/sdcard/浪子配置/图片/arpurplex" ,
				layout_width = "20dp" ,
				layout_height = "20dp" ,
				layout_marginTop = "0dp" ,
				layout_marginLeft = "75dp" ,
			} } )
	gnlist = {
		LinearLayout , orientation = "vertical" ,
		title ,
	}
	for i = 1 , # stab do
		gnlist [ # gnlist + 1 ] = _ENV [ "layout"..i ]
	end
	ckou = luajava.loadlayout({
			LinearLayout ,
			id = "chuangk" ,
			visibility = "gone" ,
			layout_width = "match_parent" ,
			layout_height = "match_parent" ,
			orientation = "horizontal" ,
			background = {
				GradientDrawable ,
				color = "#ff131416" ,
				cornerRadius = 10
			} ,
			cebian ,
			gnlist ,
		} )
control1=luajava.loadlayout({
					ImageView ,
					id = "control" ,
					background = 悬浮窗图片 ,----arlogo
					layout_width = "44dp" ,
					layout_height = "44dp" ,
				})
	floatWindow = {
		LinearLayout ,
		id = "motion" ,
		layout_width = "250dp" ,
		orientation = "vertical" ,
		gravity = "center_vertical" ,
		layout_height = "wrap_content" ,
		{
			LinearLayout ,
			layout_width = "match_parent" ,
			layout_height = "48dp" ,
			id = "xfc" ,
			orientation = "horizontal" ,
			-- background = jianbian2,
			gravity = "center_vertical" ,
			{
				LinearLayout ,
				layout_width = "48dp" ,
				layout_height = "48dp" ,
				gravity = "center" , control1 } ,

		} ,
		ckou
	}
	floatWindow = luajava.loadlayout(floatWindow )
    stitle2=particle()
	local function invoke()
		local ok
		local RawX , RawY , x , y
		mainLayoutParams = getLayoutParams()
		-- floatWindow = luajava.loadlayout(floatWindow)
		local function invoke2()
			block('start' )
			for k = 1 , # stab do
				for i = 1 , # sview [ k ] do
					_ENV [ "layoutm"..k ] : addView(sview [ k ] [ i ] )
				end
			end
			mainLayoutParams.x = device.width/4
mainLayoutParams.y = device.height/2
window:addView(floatWindow,mainLayoutParams)
webv_:addView(stitle2)
			
			block('end' )
		end

		local runnable = luajava.getRunnable(invoke2 )
		local handler = luajava.getHandler()
		handler : post(runnable )
		block('join' )
		control.onClick = function()
			隐藏()
		end

		exit.onClick = function()
			隐藏()
		end

		local isMove

		control.onLongClick = function(v )
			if isMove then
				return false
			end
			gg.toast("悬浮窗已退出" )
			window : removeView(floatWindow )
			isswitch = nil
		end

		hanshu = function(v , event )
			local Action = event : getAction()
			if Action == MotionEvent.ACTION_DOWN then
				isMove = false
				RawX = event : getRawX()
				RawY = event : getRawY()
				x = mainLayoutParams.x
				y = mainLayoutParams.y
			elseif Action == MotionEvent.ACTION_MOVE then
				isMove = true
				mainLayoutParams.x = tonumber(x ) +(event : getRawX() - RawX )
				mainLayoutParams.y = tonumber(y ) +(event : getRawY() - RawY )
				window : updateViewLayout(floatWindow , mainLayoutParams )
			end
		end

		motion.onTouch = hanshu
		control.onTouch = hanshu
		exit.onTouch = hanshu
		for i = 1 , # stab do
			_ENV [ "jm"..i ].onTouch = hanshu
		end
	end

	return invoke(swib1 , swib2 )
end

当前ui = 1
function 切换(x )
	当前ui = x
	luajava.runUiThread(function()
			for i = 1 , # stab do
				_ENV [ "jm"..i ] : setBackground(slctb )
				_ENV [ "layout"..i ] : setVisibility(View.GONE )
			end
			_ENV [ "layout"..当前ui ] : setVisibility(View.VISIBLE )
			_ENV [ "jm"..当前ui ] : setBackground(slcta )
			YoYoImpl : with("FadeIn" ) : duration(600 ) : playOn(_ENV [ "layout"..当前ui ] )
		end

	)
end

显示 = 0
beij = luajava.loadlayout({
		GradientDrawable ,
		color = "#00000000" ,
		cornerRadius = 30
	} )
beij2 = luajava.loadlayout({
		GradientDrawable ,
		color = "#00000000" ,
		cornerRadius = 30
	} )
显示=0
function 隐藏()
	luajava.runUiThread(function()
			if tonumber(tostring(cebian : getVisibility() ) ) == 8.0 then
				显示=1
				chuangk : setVisibility(View.VISIBLE )
				cebian : setVisibility(View.VISIBLE )
				xfc : setVisibility(View.GONE )
				mainLayoutParams.flags = LayoutParams.FLAG_NOT_TOUCH_MODAL
				window : updateViewLayout(floatWindow , mainLayoutParams )
				title : setVisibility(View.VISIBLE )
				_ENV [ "layout"..当前ui ] : setVisibility(View.VISIBLE )
				floatWindow : setBackground(beij )
				
				--[[changan.controlRotation3(layout1,1000,-78,0)
				changan.controlRotation3(layout2,1000,-78,0)
				changan.controlRotation3(layout3,1000,-78,0)
				changan.controlRotation3(layout4,1000,-78,0)
				changan.controlRotation3(layout5,1000,-78,0)]]
				changan.controlBig(floatWindow,100)
			else
				显示=0
				mainLayoutParams.flags = LayoutParams.FLAG_NOT_FOCUSABLE
				window : updateViewLayout(floatWindow , mainLayoutParams )
				titl : setVisibility(View.GONE )
				floatWindow : setBackground(beij2 )
				chuangk : setVisibility(View.GONE )
				cebian : setVisibility(View.GONE )
				_ENV [ "layout"..当前ui ] : setVisibility(View.GONE )
				xfc : setVisibility(View.VISIBLE )
				changan.controlFlip(floatWindow,400)
				
			end
		end

	)
end

function guid()
	seed = {
		'e' , '1' , '2' , '3' , '4' , '5' , '6' , '7' , '8' , '9' , 'a' , 'b' , 'c' , 'd' , 'e' , 'f'
	}
	tb = { }
	for i = 1 , 32 do
		table.insert(tb , seed [ math.random(1 , 16 ) ] )
	end
	sid = table.concat(tb )
	return string.format('%s%s%s%s%s' ,
		string.sub(sid , 1 , 8 ) ,
		string.sub(sid , 10 , 12 ) ,
		string.sub(sid , 21 , 22 ) )
..	string.format('%s%s%s%s%s' ,
		string.sub(sid , 1 , 6 ) ,
		string.sub(sid , 21 , 25 )
	)
end

function changan.radio(radio )
	firadio = {
		LinearLayout ,
		layout_width = 'fill_parent' ,
		layout_height = "wrap_content" ,
		orientation = "vertical"
	}
	if type(radio [ 1 ] ) == "string" or type(radio [ 1 ] ) == "number" then
		firadio [ # firadio + 1 ] = {
			TextView , text = radio [ 1 ] , textColor = "#ffffff" ,
			textSize = "16sp" ,
		}
	end
	radios = {
		RadioGroup , background = luajava.loadlayout({
				GradientDrawable ,
				color = "#11000000" ,
				cornerRadius = 30
			} ) , layout_width = 'fill_parent' , layout_height = "wrap_content" ,
	}
	for i = 2 , # radio do
		radios [ # radios + 1 ] = {
			RadioButton ,
			layout_width = 'fill_parent' ,
			text = radio [ i ] [ 1 ] ,
			textColor = "#ffffff" ,
			textSize = "16sp" ,
			onClick = function()
				luajava.newThread(function()
						radio [ i ] [ 2 ]()
					end

				) : start()
			end

			,
		}
	end
	firadio [ # firadio + 1 ] = radios
	return luajava.loadlayout(firadio )
end

function changan.button(txt , func )
	if not txt then
		txt = "未设置"
	end
	local tid=guid()..guid()
	_ENV[tid]=luajava.loadlayout (
		{
			LinearLayout ,
			layout_width = 'fill_parent' ,
			layout_hight = "fill_parent" , {
				LinearLayout ,
				layout_width = "fill_parent" ,
				gravity = "center_horizontal" ,
				layout_marginTop = "5dp" ,
				layout_marginBottom = "5dp" ,
				background = luajava.loadlayout {
					GradientDrawable ,
					color = "#ff191A1D" ,
					cornerRadius = 8
				} ,
				onClick = function()
				--changan.controlFlip(_ENV[tid],800)--旋转
					changan.controlWater(_ENV[tid],200)
					luajava.newThread(function()
							pcall(func )
						end

					) : start()
				end

				,
				{
					TextView ,
					text = txt ,
					textSize = "20sp" ,
					layout_width = "wrap_content" ,
				} ,
			} } )
	return _ENV[tid]
end

function changan.tpbutton(txt , func , backImg)
	if not txt then
		txt = "未设置"
	end
	local tid=guid()..guid()
	_ENV[tid]=luajava.loadlayout (
		{
			LinearLayout ,
			layout_width = 'fill_parent' ,
			layout_hight = "fill_parent" , {
				LinearLayout ,
				layout_width = "fill_parent" ,
				gravity = "center_horizontal" ,
				layout_marginTop = "5dp" ,
				layout_marginBottom = "5dp" ,
				background = luajava.loadlayout {
					GradientDrawable ,
					color = "#ff191A1D" ,
					cornerRadius = 8
				} ,
				onClick = function()
					changan.controlWater(_ENV[tid],200)
					luajava.newThread(function()
							pcall(func )
						end

					) : start()
				end

				,
				{
				ImageView,
	layout_width = '27dp',
	layout_height = "27dp",
	background =backImg,
			
			},		
				{
					TextView ,
					text = txt ,
					textSize = "20sp" ,
					layout_width = "wrap_content" ,
				} ,
			} } )
	return _ENV[tid]
end

function changan.tcbutton(txt , func , backImg)
	if not txt then
		txt = "未设置"
	end
	local tid=guid()..guid()
	_ENV[tid]=luajava.loadlayout (
		{
			LinearLayout ,
			layout_width = 'fill_parent' ,
			layout_hight = "fill_parent" , {
				LinearLayout ,
				layout_width = "fill_parent" ,
				gravity = "center_horizontal" ,
				layout_marginTop = "5dp" ,
				layout_marginBottom = "5dp" ,
				background = luajava.loadlayout {
					GradientDrawable ,
					color = "#ff191A1D" ,
					cornerRadius = 8
				} ,
				onClick = function()
					changan.controlWater(_ENV[tid],200)
					luajava.newThread(function()
							pcall(func )
						end

					) : start()
				end

				,
				{
				ImageView,
	layout_width = '27dp',
	layout_height = "27dp",
	background =backImg,
			
			},		
				{
					TextView ,
					text = txt ,
					textSize = "20sp" ,
					layout_width = "wrap_content" ,
				} ,
			} } )
	return _ENV[tid]
end


function changan.text(txt , color , size )
	if not txt then
		txt = "未设置文字"
	end
	if not color then
		color = "#ffffff"
	end
	if not size then
		size = "18sp"
	end
	return luajava.loadlayout (
		{
			TextView ,
			text = txt ,
			textSize = size ,
			gravity = "center" ,
			textColor = color ,
			layout_width = "fill_parent" ,
		} )
end

function changan.check(cklist )
	rest = {
		LinearLayout ,
		layout_width = 'match_parent' ,
		layout_height = "wrap_content" ,
		layout_marginTop = "10dp" ,
		gravity = "top" ,
		orientation = "vertical" ,

	}
	if type(cklist [ 1 ] ) == "string" then
		rest [ # rest + 1 ] = {
			TextView ,
			gravity = "left" ,
			text = cklist [ 1 ] ,
			textSize = "16sp" ,
			textColor = "#ffffff" ,
			layout_width = 'wrap_content' ,
			layout_height = 'wrap_content' ,
			layout_marginLeft = "4dp" ,
			layout_marginRight = "5dp" ,
			layout_marginTop = "0dp" ,
			layout_marginBottom = "0dp" ,
		}
	end

	for i = 2 , # cklist do
		local name = cklist [ i ] [ 1 ]
		local func1 = cklist [ i ] [ 2 ]
		local func2 = cklist [ i ] [ 3 ]
		local nid = cklist [ i ] [ 4 ]
		if type(func1 ) == "table" then
		os.exit()
		end
		if not name then
			name = "未设置"
		end
		nid = name..guid()
		local func = 开关3(nid , func1 , func2 , nid )
		 local tid=nid..guid()
		_ENV[tid] = luajava.loadlayout({
				LinearLayout ,
				layout_width = '250dp' ,
				layout_height = "30dp" ,
				layout_marginTop = "5dp" ,
				layout_marginBottom = "15dp" ,
				layout_marginLeft = "4dp" ,
				layout_marginRight = "10dp" ,
				gravity = "center_vertical" ,
				onClick = function()
					changan.controlWater(_ENV[tid],200)
					luajava.newThread(function()
							func()
						end

					) : start()
				end

				,
				{
					ImageView ,
					id = luajava.newId(nid ) ,
					layout_width = '20dp' ,
					layout_height = "20dp" ,
					layout_marginLeft = "10dp" ,
					layout_marginRight = "10dp" ,
					background = "/sdcard/浪子配置/图片/checkoffpurple" ,
				} , {
					TextView ,
					gravity = "top" ,
					text = name ,
					textColor = "#ffffff" ,
					layout_width = 'wrap_content' ,
					layout_height = 'wrap_content' ,
					layout_marginLeft = "4dp" ,
					layout_marginRight = "5dp" ,
				} } )
		rest [ # rest + 1 ] = _ENV[tid]
	end
	return luajava.loadlayout(rest )
end
switches={}
function changan.switch(name,func1,func2,miaoshu)
checkbga = getVerticalBG({0xffB3B3B3,0xffB3B3B3},360)
checkbg = getVerticalBG({0xff006dff,0xff006dff},360)
switchbg1 = getVerticalBG({0xffffffff,0xffffffff},360,4,0x00ffffff)
switchbg2 = getVerticalBG({0xffffffff,0xffffffff},360,4,0x00ffffff)
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
			color = 0xffffffff ,
			cornerRadius = 15
		} ,padding = {
		"0dp","0dp","6dp","0dp"
	},
		{
			TextView,
			gravity = "top",
			text = name,
			textColor = "#000000",
			textSize = "15sp",
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
switchs={}
tcheck=10

function changan.sswitch(cklist)
rest = {
	LinearLayout,
	layout_width = 'match_parent',
	layout_height = "30dp",
	
	gravity = "center"

}
for i = 1,#cklist do
local name = cklist[i][1]
local func1 = cklist[i][2]
local func2 = cklist[i][3]
local nid = cklist[i][4]
if type(func1) == "table" then gg.alert("出现错误\n如果你是用的是旧版\n请将开头第一个chagan.switch改成changan.menu\n最新版加群0获取") gg.copyText("0") os.exit() end
if not name then name = "未设置" end
nid = name..guid()
local func = 开关2(nid,func1,func2,nid)
rstt = luajava.loadlayout({
	LinearLayout,
	layout_width = 'wrap_content',
	layout_height = "30dp",
	layout_marginTop = "10dp",
	layout_marginBottom = "10dp",
	layout_marginLeft = "10dp",
	layout_marginRight = "10dp",
	gravity = "center_vertical",
	onClick = function() luajava.newThread(function() func() end):start() end,

	{ImageView,
	id = luajava.newId(nid),
	layout_width = '45dp',
	layout_height = "24dp",
	background = "/sdcard/浪子配置/图片/rswitch1",
	},{
		TextView,
		gravity = "top",
		text = name,
		textColor="#ffffff",
		layout_width = 'wrap_content',
		layout_height = 'wrap_content',
		layout_marginLeft = "1dp",
		layout_marginRight = "1dp",
	}})
rest[#rest+1] = rstt
end
return luajava.loadlayout(rest)
end


function 开关(name , func1 , func2 )
	if func1 == nil then
		func1 = ""
	end
	if func2 == nil then
		func2 = ""
	end
	if type(func1 ) == "function" then
		return function()
			namers = _ENV [ name ]
			if namers ~= "开" then
				_ENV [ name ] = "开"
				pcall(func1 )
			else
				_ENV [ name ] = "关"
				pcall(func2 )
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
vibra:vibrate(6)
pcall(func1)
else
	luajava.runUiThread(function()
	changan.controlWater(_ENV[nid],200)
	luajava.getIdValue(nid):setBackground(check1)
	luajava.getIdValue(nid.."g"):setVisibility(View.GONE)
	luajava.getIdValue(nid.."k"):setVisibility(View.VISIBLE)
	end)
_ENV[name] = "关"
vibra:vibrate(6)

pcall(func2)
end
end
end
end
function changan.edit(name , hint )
	if not hint then
		local hint = ""
	end
	_ENV [ name ] = name..guid()
	if not name then
		name = "点击输入文字"
	end
	rest = luajava.loadlayout({
			LinearLayout ,
			layout_width = 'fill_parent' ,
			layout_hight = "fill_parent" ,
			{
				LinearLayout ,
				layout_width = 'fill_parent' ,
				layout_hight = "fill_parent" ,
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
					id = luajava.newId(_ENV [ name ] ) ,
					layout_width = 'fill' ,
					layout_marginLeft = "10dp" ,
					layout_marginRight = "10dp" ,
				} }
		} )

	return rest
end

function changan.getedit(name )
	edit = tostring(luajava.getIdValue(_ENV [ name ] ) : getText() )
	return edit
end

function changan.setedit(name , txt )
	txt = tostring(txt )
	luajava.runUiThread(function()
			luajava.getIdValue(_ENV [ name ] ) : setText(txt )
		end

	)
end

chazhi = { } chajv = { }
function changan.seek(name , bian , smin , smax , nows )
	_ENV [ bian ] = nows
	smin = tonumber(smin ) smax = tonumber(smax )
	chajv [ bian ] = smax - smin
	chazhi [ bian ] = 1 - smin
	if smin == nil then
		smin = 1 smax = 10
	end
	truesmin = 1
	truesmax = truesmin + chajv [ bian ]
	if not nows then
		nows = smin tnows =(smin - nows )
	else
		tnows =(nows - smin ) + 1
	end
	if _ENV [ bian ] == nil then
		_ENV [ bian ] = nows
	end
	if not name then
		name = "未设置"
	end
	local names = name..guid()
	rest = luajava.loadlayout({
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
					id = luajava.newId(names ) ,
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
						onProgressChanged = function(SeekBar , var2 , var3 )
							if not var3 then
								return
							end
							local resultvar = tonumber(string.sub(var2 , 0 , -3 ) ) - chazhi [ bian ]
							luajava.runUiThread(function()
									luajava.getIdValue(names ) : setText(name..":"..resultvar )
								end

							)
							_ENV [ bian ] = resultvar
						end

					} }
			} } )

	return rest
end

chazhi = { } chajv = { }
function changan.jsseek(name , bian , smin , smax , nows )
	_ENV [ bian ] = nows
	smin = tonumber(smin ) smax = tonumber(smax )
	chajv [ bian ] = smax - smin
	chazhi [ bian ] = 1 - smin
	if smin == nil then
		smin = 1 smax = 10
	end
	truesmin = 1
	truesmax = truesmin + chajv [ bian ]
	if not nows then
		nows = smin tnows =(smin - nows )
	else
		tnows =(nows - smin ) + 1
	end
	if _ENV [ bian ] == nil then
		_ENV [ bian ] = nows
	end
	if not name then
		name = "未设置"
	end
	local names = name..guid()
	rest = luajava.loadlayout({
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
					text = nows..""..name ,
					id = luajava.newId(names ) ,
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
						onProgressChanged = function(SeekBar , var2 , var3 )
							if not var3 then
								return
							end
							local resultvar = tonumber(string.sub(var2 , 0 , -3 ) ) - chazhi [ bian ]
							luajava.runUiThread(function()
									luajava.getIdValue(names ) : setText(resultvar..""..name )
								end

							)
							_ENV [ bian ] = resultvar
						end

					} }
			} } )

	return rest
end

function visi(tid , ttid )
	local tview = luajava.getIdValue(tid )
	local ttview = luajava.getIdValue(ttid )
	if not tview then
		return 0
	end
	if tonumber(tostring(tview : getVisibility() ) ) == 8.0 then
		tview : setVisibility(View.VISIBLE )
		ttview : setBackground(luajava.getBitmapDrawable("/sdcard/浪子配置/图片/hsj" ) )
	else
		tview : setVisibility(View.GONE )
		ttview : setBackground(luajava.getBitmapDrawable("/sdcard/浪子配置/图片/sj" ) )
	end
end

function changan.box(views )
	local tid = "box"..guid()
	local ttid = tid.."6"
	local t1id=guid()
	firadio = {
		LinearLayout ,
		layout_width = 'fill_parent' ,
		layout_height = "wrap_content" ,
		layout_marginTop = "2dp" ,
		layout_marginBottom = "2dp" ,
		orientation = "vertical" ,
		background = luajava.loadlayout {
			GradientDrawable ,
			color = "#0018191C" ,
			cornerRadius = 8
		} ,
	}
	if type(views [ 1 ] ) == "string" or type(views [ 1 ] ) == "number" then
		firadio [ # firadio + 1 ] = {
			LinearLayout ,
			layout_width = 'fill_parent' ,
			layout_height = "50dp" ,
			gravity = "center_vertical" ,
			layout_marginTop = "2dp" ,
			layout_marginBottom = "4dp" ,
			onClick = function()
				changan.controlWater(_ENV[t1id],200)
				visi(tid , ttid )
			end

			,
			background = luajava.loadlayout {
				GradientDrawable ,
				color = "#ff191A1D" ,
				cornerRadius = 8
			} ,
			{
				ImageView ,
				layout_marginLeft = "10dp" ,
				id = luajava.newId(ttid ) ,
				background = "/sdcard/浪子配置/图片/sj" ,
				layout_width = "20dp" ,
				layout_height = "20dp" ,
				layout_marginTop = "0dp" ,
			} ,
			{
				TextView , text = views [ 1 ] ,
				textSize = "16sp" ,
				layout_marginLeft = "15dp" ,
				layout_width = "100dp" ,
				textColor = "#ffffff" ,
				gravity = "left" ,
			} }
	else
		gg.alert("changan.box第一个参数必须是string" ) os.exit()
	end
	radios = {
		LinearLayout ,
		layout_marginLeft = "0dp" ,
		layout_marginRight = "0dp" ,
		orientation = "vertical" ,
		visibility = "gone" ,
		id = luajava.newId(tid ) ,
		padding = "0dp" ,
		layout_width = 'fill_parent' ,
	}
	for i = 2 , # views do
		radios [ # radios + 1 ] = views [ i ]
	end
	firadio [ # firadio + 1 ] = radios
	_ENV[t1id]=luajava.loadlayout(firadio )
	return _ENV[t1id]
end

function changan.shbox(views )
	local tid = "box"..guid()
	local ttid = tid.."6"
	local t1id=guid()
	firadio = {
		LinearLayout ,
		layout_width = 'fill_parent' ,
		layout_height = "wrap_content" ,
		layout_marginTop = "2dp" ,
		layout_marginBottom = "2dp" ,
		orientation = "vertical" ,
		background = luajava.loadlayout {
			GradientDrawable ,
			color = "#0018191C" ,
			cornerRadius = 8
		} ,
	}
	if type(views [ 1 ] ) == "string" or type(views [ 1 ] ) == "number" then
		firadio [ # firadio + 1 ] = {
			LinearLayout ,
			layout_width = 'fill_parent' ,
			layout_height = "45dp" ,
			gravity = "center_vertical" ,
			layout_marginTop = "2dp" ,
			layout_marginBottom = "4dp" ,
			onClick = function()
				changan.controlWater(_ENV[t1id],200)
				visi(tid , ttid )
			end

			,
			background = luajava.loadlayout {
				GradientDrawable ,
				color = "#ff191A1D" ,
				cornerRadius = 8
			} ,
			{
				ImageView ,
				layout_marginLeft = "10dp" ,
				id = luajava.newId(ttid ) ,
				background = "/sdcard/浪子配置/图片/sj" ,
				layout_width = "20dp" ,
				layout_height = "20dp" ,
				layout_marginTop = "0dp" ,
			} ,
			{
				TextView , text = views [ 1 ] ,
				textSize = "16sp" ,
				layout_marginLeft = "15dp" ,
				layout_width = "100dp" ,
				textColor = "#ffffff" ,
				gravity = "left" ,
			} }
	else
		gg.alert("changan.box第一个参数必须是string" ) os.exit()
	end
	radios = {
		LinearLayout ,
		layout_marginLeft = "0dp" ,
		layout_marginRight = "0dp" ,
		orientation = "vertical" ,
		visibility = "gone" ,
		id = luajava.newId(tid ) ,
		padding = "0dp" ,
		layout_width = 'fill_parent' ,
	}
	for i = 2 , # views do
		radios [ # radios + 1 ] = views [ i ]
	end
	firadio [ # firadio + 1 ] = radios
	_ENV[t1id]=luajava.loadlayout(firadio )
	return _ENV[t1id]
end

function 悬浮窗图片(txt )
	ntxt = string.sub(string.gsub(txt , "/" , "." ) , -10 , -1 )
	if string.find(tostring(txt ) , "http" ) ~= nil then
		if panduan("/sdcard/浪子配置/图片/"..ntxt ) == false then
			download(txt , "/sdcard/浪子配置/图片/"..ntxt )
		end
		txt = "/sdcard/浪子配置/图片/"..ntxt
	end
	luajava.runUiThread(function()
			control : setBackgroundDrawable(luajava.getBitmapDrawable(txt ) )
		end

	) ---例子
end

function tuichu()
	
	bloc("end" )
	luajava.setFloatingWindowHide(false)

luajava.post(function()
	window:removeView(floatWindow)
	end)
end

---你的功能前置放这里↑↑↑下边调用
---⚠️⚠注意事项⚠️：
---尽量少用运行慢的搜索
---UI支持多线程，但gg本身不支持多线程
---所以搜索慢了又开启下一个搜索容易被打断
---导致功能无效
---结尾bloc不要动
-- 控件类型：
-- changan.box 套娃
-- changan.switch 开关
-- changan.seek 拉条
-- changan.button 按钮
-- changan.text 文字
-- changan.radio 单选
-- changan.check勾选
-- changan.edit 输入框
-- (调用changan.getedit 获取输入框内容)
-- (调用changan.setwdit 设置输入框内容)
-- 以上控件在下边全部有对应示例
-- 写的乱 自己看
悬浮窗图片="http://jiami.guimei.work/a/1691497176.png"

stab = {
	"主页" ,
	"刷号" ,
	"竞赛" ,
	"音乐" ,
	"项目" ,
	"关于" ,
}
stitle="😅😅😅😅"
stxt="官方群:567584417"

changan.menu(stxt,
{
{
changan.text("如果UI有什么bug,可以向我反馈" , nil , "15sp" ) ,
changan.button("选择进程" ,
function()
string.toMusic('请选择地铁跑酷进程')
gg.setProcessX()
local gg=gg
local t={"libtersafe2.so:bss", "Cb"}
local tt={0x49FC}
local ttt=S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = -1, freeze = true}})
end),
changan.text("过新手教程要切后台开" , nil , "15sp" ) ,
changan.button("过新手教程",
function()
gg.alert("过新手教程要在进度条出现切后台开")
function WT(FUNCTIONADD,TYPE,VALUE)
local SOMOD=gg.getRangesList("il2cpp.so")
if SOMOD[1]==nil then _error() else
gg.setValues({{address=SOMOD[1].start+FUNCTIONADD,flags=TYPE,value=VALUE}})
gg.setValues({{address=SOMOD[1].start+FUNCTIONADD+4,flags=TYPE,value="1EFF2FE1r"}})
end
end
WT (0xb15930,4,"~A MOV R0, #1" )
gg.alert('️过新手教程开启成功')
string.toMusic('过新手教程开启成功')
end,
function()
end),
changan.check({"防区",
{"防闪" ,
function()
gg.clearResults()
gg.setRanges(8)
gg.searchNumber("778923875", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("778923875", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("99,99,", gg.TYPE_DWORD)
gg.alert("防闪开启成功")
end,
function()
end
}, 
{"防环境" ,
function()
local gg=gg
local t={"libtersafe2.so:bss", "Cb"}
local tt={0x49FC}
local ttt=S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = -1, freeze = true}})
gg.alert("防环境开启成功")
end,
function()				
end
}, 
{"全防",
function()
local gg=gg
local t={"libtersafe2.so:bss", "Cb"}
local tt={0x49FC}
local ttt=S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = -1, freeze = true}})

local gg=gg
local t={"libtersafe2.so:bss", "Cb"}
local tt={0x37C8}
local ttt=S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = -1, freeze = true}})

local gg=gg
local t={"libtersafe2.so:bss", "Cb"}
local tt={0x4B1C}
local ttt=S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = -1, freeze = true}})

local gg=gg
local t={"libtersafe2.so:bss", "Cb"}
local tt={0x81F8}
local ttt=S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = -1, freeze = true}})

gg.clearList()
gg.clearResults()

gg.clearResults()
gg.setRanges(8)
gg.searchNumber("778923875", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("778923875", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("99,99,", gg.TYPE_DWORD)
toMusic('防闪+全防开启成功')
gg.alert('防闪+全防开启成功')	
end,
function()
end},
{"解除封号弹窗",
function() 
WT(0x10f14e8,4,"000000E3r")
gg.alert("Done✓")
end},
{"解好友道具赛",
function() 
time=os.clock()
gg.setRanges(32)
 local Name="解封"
 local dataType = 4
 local tb1 = {{110000000,0}, {0,-0xC},{0,-0x10},}	
local tb2 = {{0,-0x24}}
 SearchWrite(tb1,tb2, dataType)
 local time=string.sub(os.clock()-time,0,5)
gg.alert("道具赛解封成功")
end},
})
},
{
changan.box({"点击展开",
changan.switch("保存数据",
function()
gg.alert('脚本刷号其和直充刷号保存方法一样↓\n刷完号要清除游戏存档(卸载游戏也可以)然后再上号')
end,
function()
end),
changan.switch("修改等级",
function()
XC = gg.prompt({'请输入需要的人物等级,改太高会进不去游戏'},{[1]=30},{[1]='number'})[1]
if not XC then return end
WT(0xafc1a8,4,"~A MOVW	 R0, #"..XC.."")
string.toMusic("等级修改成功")
end,
function()
end),
changan.switch("改荣耀杯",
function()
function ms.ss ( num , ty , nc )
	local GGNUMBER_1 = num
	local GGNUMBER_2 = ty
	local GGNUMBER_3 = false
	local GGNUMBER_4 = gg.SIGN_EQUAL
	local GGNUMBER_5 = 0x3000000
	local GGNUMBER_6 = 0xFFFFFFFF
	local GGNUMBER_7 = 0
	gg.clearResults ( )
	gg.setRanges ( nc )
	gg.searchNumber ( GGNUMBER_1 , GGNUMBER_2 , GGNUMBER_3 , GGNUMBER_4 , GGNUMBER_5 , GGNUMBER_6 , GGNUMBER_7 )
	Result = gg.getResults ( gg.getResultCount ( ) )
end

function ms.py ( num , py , ty )
	if ( Result and # Result ~= 0 ) then
		t = { }
		for i , v in ipairs ( Result ) do
			t [ i ] = { } t [ i ].address = v.address + py t [ i ].flags = ty
		end
		t = gg.getValues ( t )
		for i , v in ipairs ( t ) do
			if v.value ~= num then
				Result [ i ] = nil
			end
		end
		local MS = { }
		for i , v in pairs ( Result ) do
			MS [ # MS + 1 ] = v
		end
		Result = MS
	end
end

function ms.bc ( )
	data = { }
	if Result == nil or # Result == 0 then
		gg.alert ( "开启失败" )
	else
		for i , v in pairs ( Result ) do
			data [ # data + 1 ] = v.address
		end
	end
	Result = nil
end

function ms.edit ( nn , off , ty , dj )
	if ( Result ) then
		ms.bc ( )
	end
	if # data > 0 then
		for i , v in ipairs ( data ) do
			setvalue ( v + off , nn , ty , dj or false )
		end
		gg.toast ( Name.."成功" )
	end
end
Name = "奖杯"
	ms.ss ( "2668" , 4 , 32 )
	ms.py ( 1 , 0x24 , 4 )
	ms.py ( 1 , 0x4C , 4 )
	ms.py ( 1 , 0x100 , 4 )
	ms.edit ( 0 , 0x11C , 4 )
	ms.edit ( 0 , 0x110 , 4 )
	ms.edit ( 1500 , 0x10C , 4 )
	local so = so [ nc ].start
	local py = 0xb73958
	gg.setValues ( { { address = so + py , flags = 4 , value = "0100A0E3r" } } )
	gg.setValues ( { { address = so + py + 4 , flags = 4 , value = "1EFF2FE1r" } } )
gg.alert("开启成功")
gg.toast("开启成功")
end,
function()
end),
changan.switch("人物一键",
function()
local floatingWindowManager = require('floatingWindowManager')
gg.setRanges(32)
gg.clearResults()
gg.clearList()
gg.searchNumber('366',4)
sl=gg.getResultCount()  
if sl~=0 then sj=gg.getResults(sl) end
py1(1,4,-0x8)
py1(1,4,-0x10)
jbjg={}
for i=0,214 do--为角色总数量减2，版本更新记得改一下
jbjg[#jbjg+1]={}
jbjg[#jbjg].value=0
jbjg[#jbjg].flags=4
jbjg[#jbjg].freeze=true
jbjg[#jbjg].address=sj[1].address+0x24+i*0xA0
end
jbjg[#jbjg].address=sj[1].address+0x24-0xA0
gg.addListItems(jbjg)
gg.toast("Done!")
gg.alert("开启成功\n如果想保存的话可以使用xx价格")
end,
function()
end),
changan.switch("滑板一键",
function()
local floatingWindowManager = require('floatingWindowManager')
gg.addListItems(jbjg)
gg.setRanges(32)
gg.clearResults()
gg.clearList()
gg.searchNumber('309',4)
sl=gg.getResultCount()  
if sl~=0 then sj=gg.getResults(sl) end
py1(1,4,-0x8)
py1(1,4,-0x10)
jbjg={}
for i=0,201 do--为滑板总数量减2，版本更新记得改一下
jbjg[#jbjg+1]={}
jbjg[#jbjg].value=0
jbjg[#jbjg].flags=4
jbjg[#jbjg].freeze=true
jbjg[#jbjg].address=sj[1].address+0x30+i*0x88
end
gg.addListItems(jbjg)
gg.toast("Done!")
gg.alert("开启成功\n如果想保存的话可以使用xx价格")
end,
function()
end),
changan.switch("背饰一键" ,
function()
UnKnown_32for64=function(Change,Offset,type)
local il2Cpp_Mod=gg.getRangesList('il2cpp.so')
local Py=il2Cpp_Mod[1]
local x32Bit = gg.getTargetInfo().x32
local x64Bit = gg.getTargetInfo().x64
if il2Cpp_Mod == nil then
if mods==2 then os.exit()end end
gg.processPause ( )
gg.setValues({{address=Py.start+Offset,flags=type,value=Change}}) 
if x32Bit == gg.getTargetInfo().x32 then
gg.setValues({{address=Py.start+Offset+4,flags=type,value='~A bx lr'}})
gg.processResume ( )
else
if x64Bit == gg.getTargetInfo().x64 then
gg.setValues({{address=Py.start+Offset+4,flags=type,value='~A ret'}})
gg.processResume ( )
end end end
UnKnown_32for64('~A MOV R0, #1',0xb36ac0,4)
gg.alert('️背饰全显开启成功')
end,
function()
end),
changan.switch("皮肤一键",
function()
UnKnown_32for64=function(Change,Offset,type)
local il2Cpp_Mod=gg.getRangesList('il2cpp.so')
local Py=il2Cpp_Mod[1]
local x32Bit = gg.getTargetInfo().x32
local x64Bit = gg.getTargetInfo().x64
if il2Cpp_Mod == nil then
if mods==2 then os.exit()end end
gg.processPause ( )
gg.setValues({{address=Py.start+Offset,flags=type,value=Change}}) 
if x32Bit == gg.getTargetInfo().x32 then
gg.setValues({{address=Py.start+Offset+4,flags=type,value='~A bx lr'}})
gg.processResume ( )
else
if x64Bit == gg.getTargetInfo().x64 then
gg.setValues({{address=Py.start+Offset+4,flags=type,value='~A ret'}})
gg.processResume ( )
end end end
UnKnown_32for64('~A MOV R0, #1',0xaff528,4)
gg.alert('️皮肤全显开启成功')
end,
function()
end),
changan.switch("人物价格",
function()
rw = gg.prompt({"购买方式\n金币购买2\n钥匙购买3","购买价格"},{""},{""})
gg.setRanges(32)
gg.clearResults()
gg.clearList()
gg.searchNumber('366',4)
sl=gg.getResultCount()  
if sl~=0 then sj=gg.getResults(sl) end
py1(1,4,-0x8)
py1(1,4,-0x10)
xg={}
jbjg={}
xr1={}
xr2={}
jb1={}
for i=0,214 do--为角色总数量减2，版本更新记得改一下
xg[#xg+1]={}
jbjg[#jbjg+1]={}
xr1[#xr1+1]={}
xr2[#xr2+1]={}
jb1[#jb1+1]={}
xg[#xg].value=0
jbjg[#jbjg].value=rw[1]
xr1[#xr1].value=0
xr2[#xr2].value=0
jb1[#jb1].value=rw[2]
xg[#xg].flags=4
jbjg[#jbjg].flags=4
xr1[#xr1].flags=4
xr2[#xr2].flags=4
jb1[#jb1].flags=4
xg[#xg].freeze=true
jbjg[#jbjg].freeze=true
xr1[#xr1].freeze=true
xr2[#xr2].freeze=true
jb1[#jb1].freeze=true
xg[#xg].address=sj[1].address+0x3C+i*0xA0
jbjg[#jbjg].address=sj[1].address+0x24+i*0xA0
xr1[#xr1].address=sj[1].address+0x1C+i*0xA0
xr2[#xr2].address=sj[1].address+0x10+i*0xA0
jb1[#jb1].address=sj[1].address+0xC+i*0xA0
end
xg[#xg].address=sj[1].address+0x3C-0xA0
jbjg[#jbjg].address=sj[1].address+0x24-0xA0
xr1[#xr1].address=sj[1].address+0x1C-0xA0
xr2[#xr2].address=sj[1].address+0x10-0xA0
jb1[#jb1].address=sj[1].address+0xC-0xA0
gg.addListItems(xg)
gg.addListItems(jbjg)
gg.addListItems(xr1)
gg.addListItems(xr2)
gg.addListItems(jb1)
gg.toast("Done!")
toMusic('人物价格开启成功')
end,
function()
end),
changan.switch("滑板价格",
function()
hb = gg.prompt({"购买方式\n金币购买2\n钥匙购买7","购买价格"},{""},{""})
gg.setRanges(32)
gg.clearResults()
gg.clearList()
gg.searchNumber('309',4)
sl=gg.getResultCount()  
if sl~=0 then sj=gg.getResults(sl) end
py1(1,4,-0x8)
py1(1,4,-0x10)
xg={}
jbjg={}
xr1={}
xr2={}
jb1={}
for i=0,201 do--为滑板总数量减2，版本更新记得改一下
xg[#xg+1]={}
jbjg[#jbjg+1]={}
xr1[#xr1+1]={}
xr2[#xr2+1]={}
jb1[#jb1+1]={}
xg[#xg].value=0
jbjg[#jbjg].value=hb[1]
xr1[#xr1].value=0
xr2[#xr2].value=0
jb1[#jb1].value=hb[2]
xg[#xg].flags=4
jbjg[#jbjg].flags=4
xr1[#xr1].flags=4
xr2[#xr2].flags=4
jb1[#jb1].flags=4
xg[#xg].freeze=true
jbjg[#jbjg].freeze=true
xr1[#xr1].freeze=true
xr2[#xr2].freeze=true
jb1[#jb1].freeze=true
xg[#xg].address=sj[1].address+0x44+i*0x88
jbjg[#jbjg].address=sj[1].address+0x30+i*0x88
xr1[#xr1].address=sj[1].address+0x18+i*0x88
xr2[#xr2].address=sj[1].address+0xC+i*0x88
jb1[#jb1].address=sj[1].address+0x8+i*0x88
end
gg.addListItems(xg)
gg.addListItems(jbjg)
gg.addListItems(xr1)
gg.addListItems(xr2)
gg.addListItems(jb1)
gg.toast("Done!")
toMusic('滑板价格开启成功')
end,
function()
end),
changan.switch("背饰价格",
function()
bs = gg.prompt({"购买方式\n金币购买1\n钥匙购买2","购买价格"},{""},{""})
gg.setRanges(32)
gg.clearResults()
gg.clearList()
gg.searchNumber('50000',4)
sl=gg.getResultCount()  
if sl~=0 then sj=gg.getResults(sl) end
py1(80,4,0x40)
py1(120,4,0x80)
xg={}
jbjg={}
jb1={}
for i=0,30 do--为背饰总数量减1，版本更新记得改一下
xg[#xg+1]={}
jbjg[#jbjg+1]={}
jb1[#jb1+1]={}
xg[#xg].value=0
jbjg[#jbjg].value=bs[2]
jb1[#jb1].value=bs[1]
xg[#xg].flags=4
jbjg[#jbjg].flags=4
jb1[#jb1].flags=4
xg[#xg].freeze=true
jbjg[#jbjg].freeze=true
jb1[#jb1].freeze=true
xg[#xg].address=sj[1].address+0xC+i*0x40
jbjg[#jbjg].address=sj[1].address+0+i*0x40
jb1[#jb1].address=sj[1].address+0x4+i*0x40
end
gg.addListItems(xg)
gg.addListItems(jbjg)
gg.addListItems(jb1)
gg.toast("Done!")
toMusic('背饰价格开启成功')
end,
function()
end),
changan.switch("三倍金币",
function()
WT(0x1081bf8,4,"~A MOV R0, #1")
WT(0x1081bf8+0x4,4,"~A BX LR")
toMusic("开启成功")
end,
function()
end),
changan.switch("宝物单点满级",
function()
local il2cppmod=gg.getRangesList('il2cpp.so')
gg.setValues({{address=il2cppmod[1].start+0x118f26c,flags=4,value='~A B +0x31D0'}})
gg.setValues({{address=il2cppmod[1].start+0x118f26c+4,flags=4,value='~A bx lr'}})
gg.alert("开启成功")
end,
function()
end),
changan.switch("十抽宝物",
function()
WT(0x1190c4c,4,"~A B	 +0x17F0")
toMusic("十抽宝物开启成功")
end,
function()
end),
changan.switch("十抽备份",
function()
WT(0x1190c4c,4,"~A B -0x240C")
toMusic("十抽备份开启成功")
end,
function()
end),
changan.switch("解头像框",
function()
WT(0x16c5dcc,4,"0100A0E3r")
end,
function()
end),
}),
changan.button("代码查询",
function()
dm()
end),
changan.radio({
   "以下是自定义替换奖励",
             {"锁定人物",
                    function()
WT(0x1865844,4,"~A MOV	 R0, #10")
                    end
                }, {
              "锁定滑板",
         function()
WT(0x1865844,4,"~A MOV	 R0, #12")
                    end
                }, {
               "锁定背饰",
                    function()
WT(0x1865844,4,"~A MOV	 R0, #14")
                    end
                }, {
                "锁定像框",
                     function()
WT(0x1865844,4,"~A MOV R0, #9")
                     end
                },
            }),
changan.edit("输入代码"),---输入框名字，输入框提示
changan.button("开启替换",
      function()
WT(0x18659f8,4,"~A MOVW R0, #"..changan.getedit("输入代码").."")
WT(0x1865bac,4,"~A MOVW R0, #"..changan.getedit("输入代码").."")
WT(0x1865d60,4,"~A MOVW R0, #"..changan.getedit("输入代码").."")
WT(0x1865e38,4,"~A MOVW R0, #"..changan.getedit("输入代码").."")
toMusic('替换开启成功')
end),
changan.check({"其他功能",
{"0钥匙复活",
function()
search(18888,4,32)
py1(8,4,-4)
py1(3,4,16)
xg1(9999,4,12,true)
toMusic("开启成功")
end,
function()
end},
{"调出所有活动",
function()
wt(0x160F12C,4,"~A MOV R0, #1")
toMusic("调出所有奖励修改成功")
end,
function()
end},
{"滑板技能",
function()
WT (0xc5abe8,4,"~A MOV R0, #1" )
toMusic("滑板技能全解开启成功")
end,
function()
end},
{"修改段位",
function()
WT(0x1216430,4,"~A MOVW R0, #"..gg.prompt({"段位"},{""},{"text"})[1])
WT(0x12164c8,4,"~A MOVW R0, #"..gg.prompt({"分段"},{""},{"text"})[1])
WT(0x1216560,4,"~A MOVW R0, #"..gg.prompt({"星数"},{""},{"text"})[1])
gg.alert("开启成功")
end,
function()
end},
{"破解内购",
function()
WT(0x17c1b24,4,"~A B	 +0x1032C")
gg.alert("内购开启成功")
end,
function()
end},
{"开超长名",
function()
local il2cppmod=gg.getRangesList('il2cpp.so')
gg.setValues({{address=il2cppmod[1].start+0x17b3a44,flags=4,value='0100A0E3r'}})
gg.setValues({{address=il2cppmod[1].start+0x17b3a44+4,flags=4,value='~A BX LR'}})
gg.setValues({{address=il2cppmod[1].start+0x119f0bc,flags=4,value='~A B	 +0x00000148'}})
gg.alert("开启成功")
end,
function()
end},
{"人物改保安",
function()
wt ( 0x103fde8 , "~A MOV	 R0, #190" )
gg.alert("重新选择一下即可")
end,
function()
end},
{"滑板改跑车",
function()
wt ( 0xb11404 , "~A MOV	 R0, #60" )
gg.alert("重新选择一下即可")
end,
function()
end}
}),
},
{
changan.button("防断网" ,
function()
local il2cppmod=gg.getRangesList('il2cpp.so')
gg.setValues({{address=il2cppmod[1].start+0xcbf9dc,flags=4,value='~A MOV R0, #0'}})
gg.setValues({{address=il2cppmod[1].start+0xcbf9dc+4,flags=4,value='~A bx lr'}})
toMusic("开启成功")
end),
changan.box({"道具赛",
changan.switch("直接结算(一分钟后开)",
function()
gg.alert("打完一局就要关闭,下局再开启")
wt(0x1690218,'~A MOVW R0, #1')
wt(0x1690218+4,'~A BX LR')
gg.toast("开启成功")
end,
function()
wt(0x1690218,'~A MOVW R0, #0')
wt(0x1690218+4,'~A BX LR')
gg.toast("关闭成功")
end),
changan.switch("后程结算",
function()
local a = gg.prompt({"延迟时间[50;60]"},{1},{"number",})
d=1000
gg.sleep(a[1]*d)
if a[1] then
wt(0x1690218,'~A MOVW R0, #1')
wt(0x1690218+4,'~A BX LR')
gg.toast("开启成功")
end
end,
function()
wt(0x1690218,'~A MOVW R0, #0')
wt(0x1690218+4,'~A BX LR')
gg.toast("关闭成功")
end),
changan.switch("结算得分",
function()
XC = gg.prompt({'请输入需要修改的结算得分\n推荐改1000[1;9999]'},{[1]=1000},{[1]='number'})[1]
if not XC then return end
WT(0x170b2ac,4,"~A MOVW	 R0, #"..XC.."")
toMusic("开启成功")
end,
function()
end),
changan.switch("免疫道具" ,
function()
wt( 0x1340d30 , "E3A00001h" )
end,
function()
end),
changan.switch("锁定道具",
function()
local j_1 = { "道具类型"..[[
			
无 = 0
导弹 = 1
蓝泡 = 2
护盾 = 4
香蕉 = 8
章鱼 = 16
眩晕 = 32
绿泡 = 64
狗子 = 128
能量 = 256
乌龟 = 272
云雾 = 288
净化 = 320
磁铁 = 384
			]] }
local f_2
local y_3 = { "text" }
local Prompt = gg.prompt ( j_1 , f_2 , y_3 )
if Prompt == nil then
	return
else
	wt ( 0x121e318 , "~A MOV	 R0, #" ..Prompt [ 1 ] )
	gg.alert ("锁定道具成功")
	gg.toast("Done✔️")
end
toMusic('锁定道具开启成功')
end),
changan.switch("无检聚能",
function()
search(3110,4,32)
py1(1,4,0x4)
py1(1,4,-0x4)
xg1(1,4,0x6C)
xg1(0,4,0x74)
xg1(0,4,0xA8)
xg1(0,4,0x98)
xg1(999,4,0x94)
xg1(0,4,0x5C)
xg1(0,4,0x50)
xg1(4,4,0x4C)
search(3210,4,32)
py1(1,4,0x4)
py1(1,4,-0x4)
xg1(1,4,0x6C)
xg1(0,4,0x74)
xg1(0,4,0xA8)
xg1(0,4,0x98)
xg1(999,4,0x94)
xg1(0,4,0x5C)
xg1(0,4,0x50)
xg1(5,4,0x4C)
gg.alert("开启成功\n带好聚能宝物")
end,
function()
end),
changan.switch("跳跃聚能",
function()
JN()
end,
function()
end),
changan.switch("PVP定人",
function()
local il2cppmod=gg.getRangesList('il2cpp.so')
gg.setValues({{address=il2cppmod[1].start+0x16931bc,flags=4,value='~A MOV R0, #1'}})
gg.setValues({{address=il2cppmod[1].start+0x16931bc+4,flags=4,value='~A bx lr'}})
toMusic("开启成功")
end,
function()
end),
changan.switch("下滑瞬移",
function()
search(-8388608,4,32)
py1(-1082130432,4,-16)
py1(2139095040,4,-8)
xg1(120,16,-64,true)
gg.toast("开启成功")
end,
function()
end),
changan.switch("滑板时长",
function()
search(300,16,32)
py1(1,4,0x4)
py1(1,4,-0x4)
xg1(0,4,0x1c)
xg1(0,4,0xc)
xg1(9999999,16,0x8)
gg.alert('️滑板无限时长开启成功')
toMusic('滑板无限时间开启成功')
end,
function()
end),
changan.switch("滑板定人(可关闭)",
function()
search(300,16,32)
py1(1,4,0x4)
py1(1,4,-0x4)
xg1(0,4,0x34)
xg1(0,4,0x24)
xg1(0,16,0x20)
toMusic('滑板定人开启成功')
gg.alert("滑板定人开启成功")
end,
function()
search(300,16,32)
py1(1,4,0x4)
py1(1,4,-0x4)
xg1(0,4,0x34)
xg1(0,4,0x24)
xg1(2000,16,0x20)
gg.toast("关闭成功")
toMusic('关闭成功')
end),
changan.switch("无视墙体(可关闭)",
function()
qmnb = {
{["memory"] = 32},
{["name"] = "无视墙体"},
{["value"] = 4.5, ["type"] = 16},
{["lv"] = 5.5, ["offset"] = 16, ["type"] = 16},
}
qmxg = {
{["value"] = 9191, ["offset"] = 0, ["type"] = 16},
{["value"] = 9192, ["offset"] = 16, ["type"] = 16},
}
xqmnb(qmnb)
end,
function()
qmnb = {
{["memory"] = 32},
{["name"] = "恢复穿透"},
{["value"] = 9191.0, ["type"] = 16},
{["lv"] = 9192.0, ["offset"] = 16, ["type"] = 16},
}
qmxg = {
{["value"] = 4.5, ["offset"] = 0, ["type"] = 16},
{["value"] = 5.5, ["offset"] = 16, ["type"] = 16},
}
xqmnb(qmnb)
end),
}),
changan.box({"分数赛" ,
changan.button("变速修改(刷分)",
function()
local r = gg.prompt({'输入修改的值'}, {''}, {'text'})
if r then
	local t = {"libunity.so:bss", "Cb"}
	local tt = {0x805C, 0xEC}
	local ttt = S_Pointer(t, tt)
	gg.addListItems({{address = ttt, flags = 16, value = r[1], freeze = true}})
gg.alert("开启成功\n用于无尽刷分")
end
end),
changan.switch("增益时长",
function()
local Fs1 = '[增益]无限时长'
local Fs2 = 32
local Fs3 = {{7, 0, 4},{10.0, 4, 16},{11.5, 8, 16},{19.0, 20, 16},{24.0, 24, 16},}
local Fs4 = {{100000000, 28, 16, false},}
Fs3Fs4(Fs1, Fs2, Fs3, Fs4, Fs5)
toMusic("开启成功")
end,
function()
end),
changan.switch("飞行时长",
function()
local Fs1 = '[飞行]无限时长'
local Fs2 = 32
local Fs3 = {{7, 0, 4},{8.0, 4, 16},{9.0, 8, 16},{10.5, 12, 16},{12.5, 16, 16},{15.0, 20, 16},{19.0, 24, 16},}
local Fs4 = {{198, 28, 16, false},}
Fs3Fs4(Fs1, Fs2, Fs3, Fs4, Fs5)
toMusic("开启成功")
end,
function()
end),
changan.switch("连续跳跃(二段)",
function()
WT(0xedd394,4,"0100A0E3r")
gg.alert('开启成功')
end,
function()
end),
changan.switch("超级连跳(连段)",
function()
WT(0x16de5d0,4,"0100A0E3r")
gg.alert('开启成功')
end,
function()
end),
changan.switch("人物滑翔",
function()
WT(0x16e86b8,4,"0100A0E3r")
gg.alert('开启成功')
end,
function()
end),
changan.switch("滑板滑翔",
function()
WT(0xedd67c,4,"0100A0E3r")
gg.alert('开启成功')
end,
function()
end),
changan.switch("滑板跳高",
function()
WT(0xedd29c,4,"0100A0E3r")
WT(0xedd29c+0x4,4,"1EFF2FE1r")
gg.alert('开启成功')
end,
function()
end),
changan.switch("滑板瞬移",
function()
WT(0xedd7ec,4,"0100A0E3r")
gg.alert('开启成功')
end,
function()
end),
changan.switch("无尽免死",
function()
WT(0xae8fcc,4,"0100A0E3r")
gg.alert('开启成功')
end,
function()
end),
changan.switch("双倍得分",--7
function()
WT(0xc71768,4,"0100A0E3r")
gg.alert('开启成功')
end,
function()
end),
}),
changan.box({"宝物CD",
changan.switch("金色耳环(可关闭)",
function()
local tb1 = {{810,0}, {18,0x14},{50000,0x28},} 	
local tb2 = {{0,0x6c},{0,0x74},{0,0xa0},{0,0xa8,t
},}
local dataType = 4
gg.setRanges(32)
 SearchWrite(tb1,tb2, dataType)
gg.toast("开启成功")
end,
function()
local tb1 = {{810,0}, {18,0x14},{50000,0x28},} 	
local tb2 = {{1,0x6c},{1,0x74},{1,0xa0},{1,0xa8,t
},}
local dataType = 4
gg.setRanges(32)
 SearchWrite(tb1,tb2, dataType)
gg.alert("关闭成功")
end),
changan.switch("摩托头盔(可关闭)",
function()
local tb1 = {{1010,0}, {18,0x14},{50000,0x28},} 	
local tb2 = {{0,0x6c},{0,0x74},{0,0xa0},{0,0xa8,t
},}
local dataType = 4
gg.setRanges(32)
 SearchWrite(tb1,tb2, dataType)
gg.toast("开启成功")
end,
function()
local tb1 = {{1010,0}, {18,0x14},{50000,0x28},} 	
local tb2 = {{1,0x6c},{1,0x74},{1,0xa0},{1,0xa8,t
},}
local dataType = 4
gg.setRanges(32)
 SearchWrite(tb1,tb2, dataType)
gg.alert("关闭成功")
end),
changan.switch("黄金皇冠(可关闭)",
function()
local tb1 = {{910,0}, {18,0x14},{50000,0x28},} 	
local tb2 = {{0,0x6c},{0,0x74},{0,0xa0},{0,0xa8,t
},}
local dataType = 4
gg.setRanges(32)
 SearchWrite(tb1,tb2, dataType)
gg.toast("开启成功")
end,
function()
local tb1 = {{910,0}, {18,0x14},{50000,0x28},} 	
local tb2 = {{1,0x6c},{1,0x74},{1,0xa0},{1,0xa8,t
},}
local dataType = 4
gg.setRanges(32)
 SearchWrite(tb1,tb2, dataType)
gg.alert("关闭成功")
end),
changan.switch("狼牙项链(可关闭)",
function()
local tb1 = {{1110,0}, {18,0x14},{50000,0x28},} 	
local tb2 = {{0,0x6c},{0,0x74},{0,0xa0},{0,0xa8,t
},}
local dataType = 4
gg.setRanges(32)
 SearchWrite(tb1,tb2, dataType)
gg.toast("开启成功")
end,
function()
local tb1 = {{1110,0}, {18,0x14},{50000,0x28},} 	
local tb2 = {{1,0x6c},{1,0x74},{1,0xa0},{1,0xa8,t
},}
local dataType = 4
gg.setRanges(32)
 SearchWrite(tb1,tb2, dataType)
gg.alert("关闭成功")
end),
changan.switch("鬼鬼的灵符(可关闭)",
function()
local tb1 = {{1710,0}, {18,0x14},{50000,0x28},} 	
local tb2 = {{0,0x6c},{0,0x74},{0,0xa0},{0,0xa8,t
},}
local dataType = 4
gg.setRanges(32)
 SearchWrite(tb1,tb2, dataType)
gg.toast("开启成功")
end,
function()
local tb1 = {{1710,0}, {18,0x14},{50000,0x28},} 	
local tb2 = {{1,0x6c},{1,0x74},{1,0xa0},{1,0xa8,t
},}
local dataType = 4
gg.setRanges(32)
 SearchWrite(tb1,tb2, dataType)
gg.alert("关闭成功")
end),
}),
},
{
changan.button("音乐搜索",
function()
WTYY()
end),
changan.box({"changan推荐",
changan.radio({"Music",--栏目名
				{
					"你看到了我",--小功能名
					function()
					gg.playMusic('http://music.163.com/song/media/outer/url?id=1377530437.mp3')
					end
				}, {
					"Neeva",
					function()
					gg.playMusic("https://out.zxglife.top/view.php/16fa44c6165f5828dff9cfd7cecb84d9.mp3")
					end
				}, {				
					"Maple暖枫-时落叶影",
					function()
					gg.playMusic("https://out.zxglife.top/down.php/718197266dd3bad8fc0c59182beb6017.mid")
					end
				}, {
					"nightcruising",
					function()
					gg.playMusic("https://out.zxglife.top/view.php/f22c860d17cbb2f5718cbd5a9b68ae42.mp3")
					end
				}, {				
					"不问别离",
					function()
					gg.playMusic("https://out.zxglife.top/view.php/c92f3eb063ae9ee9ff28018bb3b8f847.mp3")
					end
				}, {				
					"清空",
					function()
					gg.playMusic("https://out.zxglife.top/view.php/8745c4542def50d29e8c9a63b330ed2a.mp3")
					end
				}, {				
					"压迫感",
					function()
					gg.playMusic("https://out.zxglife.top/view.php/f923557b0bb36ab3968503202964db1b.mp3")
					end
				},{
					"Walk",
					function()
					gg.playMusic('http://music.163.com/song/media/outer/url?id=1873321491.mp3')
					end
				}, {
					"catch",
					function()
					gg.playMusic('http://music.163.com/song/media/outer/url?id=26286214.mp3')
					end
				}, {
					"Me",
					function()
					gg.playMusic('https://music.163.com/song/media/outer/url?id=1990363532.mp3')
					end
				}, {
					"心做",
					function()
					gg.playMusic('http://music.163.com/song/media/outer/url?id=2008921547.mp3')
					end
				}, {								
                   "拉个勾说永远爱我",
					function()
					gg.playMusic("http://music.163.com/song/media/outer/url?id=1969373959.mp3")
					end
				}, {	
                   "心如止水",
					function()
					gg.playMusic("http://music.163.com/song/media/outer/url?id=1928002636.mp3")
					end
				}, {									
                   "篝火旁",
					function()
					gg.playMusic("http://music.163.com/song/media/outer/url?id=518725853.mp3")
					end
				},  {									
                   "凭什么觉得 I LOVE YOU",
					function()
					gg.playMusic("http://music.163.com/song/media/outer/url?id=2020310968.mp3")
					end
				}, {					

                   "月亮之矢",
					function()
gg.playMusic("http://music.163.com/song/media/outer/url?id=419375250.mp3")					
					end
				}, {					
                   "回忆拼好",
					function()
gg.playMusic("http://music.163.com/song/media/outer/url?id=1403318151.mp3")					
					end
				}, {					
                   "爱人错过",
					function()
gg.playMusic("http://music.163.com/song/media/outer/url?id=1972445487")		
					end
				}, {					
                   "旧金山",
					function()
 	gg.playMusic("http://music.163.com/song/media/outer/url?id=2024109979.mp3")                   
					end
				}, 
{"停止音乐",
function()
gg.toast("已停止音乐")
for i=1,100 do
gg.playMusic("stop")
gg.playMusic("stop")
gg.playMusic("stop")
end
sp="关闭成功"
end
},
})
}),
},
{
changan.button("已失效" ,
function()
--gg.goURL("http://changan.hbrj.site")
end),
changan.button("已失效" ,
function()
--gg.goURL("http://changan.hbrj.site/down.php/5f7c0bf3bdd2fbf7987f6dd39dcab600.apk")
end),
changan.text("温特QQ已掉现杨万里接手一段时间" , nil , "15sp" ) ,
changan.button("已失效" ,
function()
--gg.goURL("http://changan.hbrj.site/down.php/a191a4a7650b00d9e4dcae1b4b4b9aff.apk")
end),
changan.button("待更新" ,
function()
gg.alert("待更新,自己大胆发挥想象,会做什么游戏脚本")
end),
},
{
changan.text("官方一群:834649624" , nil , "15sp" ) ,
changan.text("官方二群:834649624" , nil , "15sp" ) ,
changan.text("官方三群:834649624" , nil , "15sp" ) ,
changan.button("测试" ,
function()
--gg.goURL("http://changan.hbrj.site/view.php/128aa24d4198666b3e2fbcd50b661f2e.jpg")
end),
changan.button("加入我们",
function()
qq.joinGroup("834649624")
隐藏()
end),
changan.button("退出辅助",
function()
tuichu()
end)
	}
	} )


function proo()
changan.controlRotation2(control1,3000)
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
---bloc不要动 动了脚本功能会失效
bloc = luajava.getBlock()
bloc("join" )