

vibra = context:getSystemService(Context.VIBRATOR_SERVICE)
YH = {}
local YH = YH
local android = import('android.*')
write=file.write
function panduan(rec) fille,err = io.open(rec) if fille == nil then return false else return true end end
read=file.read
function checkimg(tmp)
if panduan("/sdcard/云烛/图片/"..tmp) ~= true then
gg.toast("正在加载资源"..tmp)
download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..tmp,"/sdcard/云烛/图片/"..tmp)
end
end
function 获取图片(txt)
ntxt=string.sub(string.gsub(txt,"/","."),-10,-1)
if string.find(tostring(txt),"http")~=nil then
    if panduan("/sdcard/云烛/图片/"..ntxt)==false then
    download(txt,"/sdcard/云烛/图片/"..ntxt)
    end
    txt="/sdcard/云烛/图片/"..ntxt
end
return luajava.getBitmapDrawable(txt)
end
ckimg = {
	"pubgT","pubgG","pubgY","pubgR","leimu","quarkpic",
	"right","down","xz_gg","yehu",
	"quarkconfw","arwhitex",
	'skin',	"star1","star2","heix",
	'bm_launch','safe','bm_gn',
	'bm_music','bm_sz','mh',
	'heir','hei_right',"zhiyin1","lmx",
	'star1','star2','ringon','ringoff',	'Shimmer2.dex',
	"blackx","cow"
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
jianbian6:setColors({0xffffffff,0xffffffff})
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
slctb1 = luajava.loadlayout({
	GradientDrawable,
	color = "#661E1C27",
	cornerRadius = 20
})
slcta1 = luajava.loadlayout({
	GradientDrawable,
	color = "#331E1C27",
	cornerRadius = 20
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
slctb = luajava.loadlayout({
	GradientDrawable,
	color = "#001E1C27",
	cornerRadius = 0
})
slcta = luajava.loadlayout({
	GradientDrawable,
	color = "0xff0086F1",
	cornerRadius = 4
})
slctc = luajava.loadlayout {
	GradientDrawable,
	color = "#ffffffff",
	cornerRadius = 16
}
slctd = luajava.loadlayout {
	GradientDrawable,
	color = "#ddE0E0E0",
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
YH.controlFlip = function(control,time)
	luajava.runUiThread(function()
  import "android.view.animation.Animation"
  import "android.animation.ObjectAnimator"
  xuanzhuandonghua = ObjectAnimator:ofFloat(control, "rotationY", {0, 360})
  xuanzhuandonghua:setRepeatCount(0)
  xuanzhuandonghua:setRepeatMode(Animation.REVERSE)
  xuanzhuandonghua:setDuration(time)
  xuanzhuandonghua:start()
end) end
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
YH.menu = function(sview)
if isswitch then
return false
end
for i=1,#stab do
	_ENV["jmb"..i]=getSelector()
end
isswitch = true
cebian = {
	LinearLayout,
	id = "侧边",
	gravity = "center",
	visibility = "gone",
	layout_height = "wrap_content",
	layout_width = "match_parent",
}
gund = {
	LinearLayout,
	background=getblue(),
	gravity = "center",
	orientation = "horizontal",
	layout_height = "wrap_content",
	layout_width = "wrap_content",
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
	--YH.controlFlip(_ENV["jm"..i],500)
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
		background="#0086F1"
	})
end
end
cebian[#cebian+1] = {
	HorizontalScrollView,
	gravity = "center",
	fillViewport = "true",
	layout_height = "wrap_content",
	layout_width = "wrap_content",
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
		layout_width = "wrap_content",
		layout_height = "280dp",
		orientation = "vertical",
			{
			LinearLayout,
			--background = getj6(),
			id = "layoutm"..i,
			gravity = "top",
			layout_width = "250dp",
			orientation = "vertical",
			gravity = "center_horizontal",
		},
	
	})
end
ckou = {
	LinearLayout,
	id = "chuangk",
	padding="4dp",
	visibility = "gone",
	layout_width = "wrap_content",
	layout_height = "wrap_content",
	orientation = "vertical",
	cebian,
	
}
for i = 1,#stab do
ckou[#ckou+1] = _ENV["layout"..i]
end
--luajava.newThread(function() develo(ckou) end):start()
ckou = luajava.loadlayout(ckou)
title = luajava.loadlayout({
	TextView,
	id = "title",
	visibility = "gone",
	text = stitle,
	--background="#80FF00",
	textColor="#000000",
	gravity = "center",
	textSize = "19sp",
	layout_marginTop = "20dp",
	layout_width = "280dp",
})
floatWindow = {
	LinearLayout,
	id = "motion",
	orientation="vertical",
	{FrameLayout,
	layout_width="wrap_content",
	--background="#ffffff",
	{
			LinearLayout,
			
			gravity = "center", {
				ImageView,
				id = "control",
				background = 获取图片(xfcpic),
				layout_width = "40dp",
				layout_height = "40dp",
			}},
	{
		ImageView,
		id = "exit",
		layout_gravity="right",
		visibility="gone",
		src = "/sdcard/云烛/图片/blackx",
		layout_width = "20dp",
		layout_height = "20dp",
		layout_marginTop = "10dp",
		layout_marginRight = "20dp",
	},
	{LinearLayout,
	layout_width = "wrap_content",
	orientation = "vertical",
	gravity = "center_vertical",
	layout_height = "wrap_content",
	{
		LinearLayout,
		layout_width = "wrap_content",
		layout_height = "wrap_content",
		orientation = "horizontal",
		gravity = "center",
		title,
	},
	
}},
	ckou
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
exit.onClick = 隐藏

local isMove

motion.onTouch = hanshu
control.onTouch = hanshu
exit.onTouch = hanshu
end

invoke(swib1,swib2)
gg.setVisible(false)
luajava.setFloatingWindowHide(true)
切换(1)
end
function YH.line()
rest = luajava.loadlayout({
	LinearLayout,
	layout_width = 'fill_parent',
	layout_height = "1dp",
	background = "#C2CAD7",
})
return rest
end
function YH.line2()
rest = luajava.loadlayout({
	LinearLayout,
	layout_width = '180dp',
	layout_height = "5dp",
	layout_marginLeft="35dp",
	background = "#0087FF",
	layout_marginTop="10dp",
})
return rest
end
function getblue()
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(6)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({0xffffffff,0xffffffff})
jianbians:setStroke(4,"0xff0086F1")--边框宽度和颜色
return jianbians
end
function getShape3()
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(10)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({0xffffffff,0xffffffff})
jianbians:setStroke(4,"0x77000000")--边框宽度和颜色
return jianbians
end
function getShape5()
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(4)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({0xffffffff,0xff007AFF})
jianbians:setOrientation(GradientDrawable.Orientation.TL_BR)
jianbians:setStroke(2,"0x77000000")--边框宽度和颜色
return jianbians
end
function getShape()
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(90)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({0xff49C263,0xff49C263})
jianbians:setStroke(0,"0xffffffff")--边框宽度和颜色

return jianbians
end
function getShape2()
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(10)
jianbians:setShape(GradientDrawable.RECTANGLE)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({0xffffffff,0xffffffff})
jianbians:setStroke(8,"0xff000000")--边框宽度和颜色
return jianbians
end
corbk = true
当前ui = 1
显示 = 0
beij = luajava.new(GradientDrawable)
beij:setCornerRadius(25)
beij:setGradientType(GradientDrawable.LINEAR_GRADIENT)
beij:setColors({0xfeEFEFEF,0xfeEFEFEF,})
beij:setStroke(0,"0x44FFffff")--边框宽度和颜色
--beijw
beij2 = luajava.loadlayout({
	GradientDrawable,
	color = "#001E1C27",
	cornerRadius = 10
})
function visi(tid,ttid)
local tview = luajava.getIdValue(tid)
local ttview = luajava.getIdValue(ttid)
if not tview then return 0 end
if tonumber(tostring(tview:getVisibility())) == 8.0 then
tview:setVisibility(View.VISIBLE)
ttview:setBackground(luajava.getBitmapDrawable("/sdcard/云烛/图片/hsj"))
else
tview:setVisibility(View.GONE)
ttview:setBackground(luajava.getBitmapDrawable("/sdcard/云烛/图片/sj"))
end
end
function YH.box2(views,boxi)
local tid = "box"..guid()
local ttid = tid.."678"
firadio = {
	LinearLayout,
	layout_width = '250dp',
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
	onClick = function() visi(tid,ttid) end,
	background = getSelector3(),
	{
		ImageView,
		layout_marginLeft = "10dp",
		id = luajava.newId(ttid),
		background = "/sdcard/云烛/图片/hsj",
		layout_width = "20dp",
		layout_height = "20dp",
		layout_marginTop = "0dp",
	},
	{
		TextView,text = views[1],
		textSize = "16sp",
		layout_marginLeft = "15dp",
		layout_width = "100dp",
		textColor = "#ffffff",
		gravity = "left",
	}} else
	gg.alert("YH.box第一个参数必须是string") os.exit()
end
if boxi then boxi="visible" else boxi="gone" end
radios = {
	LinearLayout,
	layout_marginLeft = "0dp",
	layout_marginRight = "0dp",
	orientation = "vertical",
	visibility = boxi,
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

function YH.box(views)
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
		textColor = "#000000",
		gravity = "center",
	}} else

end
radios = {
	LinearLayout,
	layout_marginLeft = "0dp",
	layout_marginRight = "0dp",
	orientation = "vertical",
	padding = "0dp",
	background = getj6(),
	layout_width = 'fill_parent',
}
for i = 2,#views do
radios[#radios+1] = views[i]
if i~=#views then
radios[#radios+1] = YH.line()
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
	_ENV["jm"..i]:setBackground(_ENV["jmb"..i])
	_ENV["jm"..i.."t"]:setTextColor(0xff0086F1)
	_ENV["layout"..i]:setVisibility(View.GONE)
	end
	_ENV["layout"..当前ui]:setVisibility(View.VISIBLE)
	_ENV["jm"..当前ui]:setBackground(slcta)
	_ENV["jm"..当前ui.."t"]:setTextColor(0xffffffff)
	--YoYoImpl:with("FadeIn"):duration(200):playOn(_ENV["layout"..当前ui])
	end)
end
function 隐藏()
luajava.runUiThread(function()
	if tonumber(tostring(exit:getVisibility())) == 8.0 then
		control:setVisibility(View.GONE)
		chuangk:setVisibility(View.VISIBLE)
		exit:setVisibility(View.VISIBLE)
		title:setVisibility(View.VISIBLE)
		cebian:setVisibility(View.VISIBLE)
		mainLayoutParams.flags = LayoutParams.FLAG_NOT_TOUCH_MODAL
		window:updateViewLayout(floatWindow, mainLayoutParams)
		--YoYoImpl:with("FadeIn"):duration(300):playOn(title)
		_ENV["layout"..当前ui]:setVisibility(View.VISIBLE)
		YoYoImpl:with("FadeIn"):duration(200):playOn(floatWindow)
		floatWindow:setBackground(beij)
	else
		control:setVisibility(View.VISIBLE)
		mainLayoutParams.flags = LayoutParams.FLAG_NOT_FOCUSABLE
		window:updateViewLayout(floatWindow, mainLayoutParams)
		title:setVisibility(View.GONE)
		cebian:setVisibility(View.GONE)
		floatWindow:setBackground(beij2)
		chuangk:setVisibility(View.GONE)
		exit:setVisibility(View.GONE)
		YoYoImpl:with("FadeIn"):duration(200):playOn(floatWindow)
		
		_ENV["layout"..当前ui]:setVisibility(View.GONE)
	end
end)
end
function 退出UI()
--viewManager:setVisibility(View.VISIBLE)
window:removeView(floatWindow)
--os.exit()
luajava.setFloatingWindowHide(false)
tuic=1
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


chazhi={} chajv={}
function YH.seek(name,bian,smin,smax,nows)
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
			textColor="#00A4FF",
			textSize="16sp",
			text = name..":"..nows,
			id = luajava.newId(names),
			layout_width = '100dp',
			layout_marginLeft = "10dp",
			layout_marginRight = "0dp",
		},
		{
			SeekBar,
			layout_width = '140dp',
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
	{0xff0086F1,0xff0086F1},
	4,0xff0086F1)
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

function YH.switch(name,func1,func2,yans)
nid = name..guid()
if not yans then yans="#00A4FF" end

local func = 开关3(name,func1,func2,nid)
if not name then name = "未设置" end
rest = luajava.loadlayout({
    LinearLayout,
    layout_width = 'fill_parent',
    layout_height = "36dp",
    
    gravity = "center_vertical",
    {
        LinearLayout,
        layout_width = 'fill_parent',
        layout_height = "35dp",
        gravity = "center_vertical",
        {
            TextView,
            gravity = "top",
            text = name,
            textColor=yans,
			textSize="16sp",
            layout_width = '170dp',
            layout_marginLeft = "10dp",
            layout_marginRight = "10dp",
        },
        {
            FrameLayout,
            id = luajava.newId(nid),
            background = checkbg,
            onClick = function() luajava.newThread(function() func() end):start() end,
            layout_width = '43dp',
            layout_height = 'wrap_content',
            padding="1dp",
            {
            LinearLayout,
            layout_gravity="left",
            id = luajava.newId(nid.."k"),
            background = checkbg1,
            onClick = function() luajava.newThread(function() func() end):start() end,
            layout_width = '21dp',
            layout_height = '21dp',
        	},{
            LinearLayout,
            visibility="gone",
            layout_gravity="right",
            id = luajava.newId(nid.."g"),
            background = checkbg2,
            onClick = function() luajava.newThread(function() func() end):start() end,
            layout_width = '21dp',
            layout_height = '21dp',
        	}
        }}
})
return rest
end

function YH.edit(name)
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
function YH.radio(radio)
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
function YH.button(txt,func,yans)
if not yans then yans="#00A4FF" end
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

function YH.text(txt,color,size)
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
function YH.setedit(name,txt)
txt = tostring(txt)
luajava.runUiThread(function()
	luajava.getIdValue(_ENV[name]):setText(txt)
	end)
end

function YH.getedit(name)
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


startmenu=function()
stitle = "云烛UI"--←大标题

stab = {--←菜单导航栏
	"功能1",
	"功能2",
	"功能3",
	"功能",
	"功能",
	"功能"
--"功能4",--可自行拓展，需要对应下边菜单配置
}

xfcpic = "https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/changan"
--↑悬浮窗链接或路径↑

--YH.button   按钮
--YH.switch   开关
--YH.box   区域框
--YH.text   文字
--YH.seek  拖动条
--YH.edit  输入框（YH.getedit和YH.setedit调用
--以上是本UI模块包含的控件，在下面都有示例参考


YH.menu(
	{
		{----1
			--YH.text("欢迎使用云烛UI","#008EFF","20sp"),
			YH.box2({--如果不需要请删除box2，注意括号的对应。如果需要请注意用box2套box，不然会很丑
				"套娃",
				YH.box({--box开头
					"",--box名字
					
					YH.switch("开关1",
						function()
							
						end,
						function()
						gg.alert("已关闭")
						end),
					
					YH.switch("开关2",
						function()
							
						end,
						function()
						gg.alert("已关闭")
						end,
						"#000000"),--最后一个参数是颜色可以省略，默认蓝
					
					YH.button("选择进程",
						function()
							gg.setProcessX()
						end),
					
					YH.button("退出脚本",
						function()
						tuic=1
							退出UI()
						end,
						"#DB202C"),--最后一个参数是颜色可以省略，默认蓝
					
					YH.edit("输入演示"),--括号填的“输入演示”就是当前输入框的ID
					
					YH.button("调用输入框",
						function()
							tmp=YH.getedit("输入演示")--传入ID调用内容，返回string类型
							gg.alert(tmp)
						end),
					
					YH.button("设置输入框",
						function()
							YH.setedit("输入演示","修改了输入框内容")--传入ID和要改成的内容
						end),
					
				}),--box结尾
			}),
			YH.box({--box开头
				"美化专区",
				
				YH.seek("拉条演示","ltys",1,10,6),--名字，变量名字，最小值，最大值，初始值
				
				YH.button("拉条调用",
					function()
						gg.alert(ltys)--上面生成时写的变量名字，直接拿出来调用即可
					end),
				
				YH.switch("开关3",
					function()
						
					end,
					function()
					gg.alert("已关闭")
					end),
				
				
			}),--box结尾
		}, {----2
			YH.box({
				"美化专区",
				YH.switch("开关1",
					function()
						
					end,
					function()
					gg.alert("已关闭")
					end),
				YH.switch("开关2",
					function()
						
					end,
					function()
					gg.alert("已关闭")
					end),
				YH.switch("开关3",
					function()
						
					end,
					function()
					gg.alert("已关闭")
					end),
			}),
		}, {----3
			YH.box({
				"美化专区",
				YH.switch("开关1",
					function()
						
					end,
					function()
					gg.alert("已关闭")
					end),
				YH.switch("开关2",
					function()
						
					end,
					function()
					gg.alert("已关闭")
					end),
				YH.switch("开关3",
					function()
						
					end,
					function()
					gg.alert("已关闭")
					end),
			}),
			YH.switch("退出UI",function()
			tuic=1
			退出UI()
			end),--退出键放哪都行
			
		}, {----4

		},--后面可自行拓展，需要对应stab
		{----5

		},{----6

		},{----7

		}
	})
--viewManager:unpark()
luajava.setFloatingWindowHide(false)



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

    if yinln[i].now > yinl[i].now  then
        audi:adjustStreamVolume(yinln[i].type,AudioManager.ADJUST_LOWER,0)
        gg.alert("up")
    elseif yinln[i].now < yinl[i].now  then
        audi:adjustStreamVolume(yinln[i].type,AudioManager.ADJUST_RAISE,0)
        gg.alert("down\n"..yinln[i].now.."\n"..yinl[i].now)
    end
end

end
yltype=0
function jianting3(func)
yinln = {}
for i = 1,#audiotype do
yinln[i] = {}
yinln[i].type = audiotype[i]
yinln[i].now = audi:getStreamVolume(audiotype[i])
    if yinln[i].now > yinl[i].now  then
        yinl[i].now = yinln[i].now
        if yltype==1 then
        yltype=0
        func()
        end
    elseif yinln[i].now < yinl[i].now  then
        yinl[i].now = yinln[i].now
        if yltype==0 then
        yltype=1
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
    if yinln[i].now >= yinl[i].max  then
       audi:adjustStreamVolume(yinln[i].type,AudioManager.ADJUST_LOWER,0)
    end
    if yinln[i].now > yinl[i].now  then
        audi:setStreamVolume(yinln[i].type,yinl[i].now,0)
        func()
    end
end
end
tuic=0
yinll=1

qhkai=0
zhubj=floatWindow
qiehuan=function()
    if qhkai==0 then
    	yinll=0
        qhkai=1
        draw.remove()
        gg.toast("隐藏")
        luajava.runUiThread(function()
        YoYoImpl:with("FadeOut"):duration(300):playOn(zhubj)
		end)
        gg.sleep(400)
        luajava.runUiThread(function()
        zhubj:setVisibility(View.GONE)
        end)
    else
        qhkai=0
        yinll=1
        huiz()
        luajava.runUiThread(function() zhubj:setVisibility(View.VISIBLE) end)
        luajava.runUiThread(function()
        YoYoImpl:with("FadeIn"):duration(300):playOn(zhubj)
		
        end)
        
    end
end
while true do
if tuic==1 then break end
jianting3(qiehuan)
gg.sleep(330)
end

luajava.setFloatingWindowHide(false)
luajava.setFloatingWindowHide(false)

end


local ui = require('ui')
import("android.ext.*")
vibra = context:getSystemService(Context.VIBRATOR_SERVICE)
local android = import('android.*')
local windowManager = require('windowManager')
local viewManager

function getVerticalBG(gtvb1,gtvb3,gtvb4,gtvb5)
if not gtvb4 then gtvb4 = 0 gtvb5 = 0xff000000 end
local jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(gtvb3)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors(gtvb1)
jianbians:setStroke(gtvb4,gtvb5)--边框宽度和颜色
return jianbians
end

function getRes(x)
return 获取图片("/sdcard/云烛/图片/"..x)
end

function 获取图片(txt)
ntxt = string.sub(string.gsub(txt,"/","."),-10,-1)
if string.find(tostring(txt),"http") ~= nil then
if panduan("/sdcard/云烛/图片/"..ntxt) == false then
luajava.download(txt,"/sdcard/云烛/图片/"..ntxt)
end
txt = "/sdcard/云烛/图片/"..ntxt
--txt="https://www.baidu.com/img/flexible/logo/pc/result.png"
end
return luajava.getBitmapDrawable(txt)
end

function getShape00(tmp0,tmp1,tmp2,tmp3)
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(tmp0)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({
	tmp1,tmp2
})
return jianbians
end

function getShape22(tmp0,tmp1,tmp2,tmp3)
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(tmp0)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({
	tmp1,tmp2
})
jianbians:setStroke(3,tmp3)--边框宽度和颜色

return jianbians
end
function getButtonBG()
local selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, getVerticalBG({0x55545454,0x55545454},15))
selector:addState({
	-android.R.attr.state_pressed
}, getVerticalBG({0x44ffffff,0x44ffffff},15,4,0xff232323))
return selector
end



local drawerView
local text_title = string.randomMD5()

local main_titlebar_layout = {
	LinearLayout,
	layout_width = "match_parent",
	backgroundColor = 0x20000000,
	{
		ImageView,
		imageResource = 0x7f020037,
		layout_height = "30dp",
		layout_width = "30dp",
		scaleType = 'fitCenter',
		onClick = function()
			drawerView:openDrawer(Gravity.START)
		end
	},
	{
		TextView,
		layout_weight = 1,
		id = luajava.newId(text_title),
		gravity = "center_vertical",
		layout_height = "match_parent",
		onLongClick = function(view)
			gg.copyText(view:getText(), false)
		end
	},
	{
		ImageView,
		imageResource = 0x7f020029,
		layout_height = "30dp",
		layout_width = "30dp",
		scaleType = 'fitCenter',
		onClick = function(view)
			-- drawerLayout:openDrawer(Gravity.START)
			local menu = {
				{
					'刷新'
				},
				{
					'搜索'
				},
				{
					'全选'
				},
				{
					'过滤'
				},
				{
					'退出',
					onClick = function()
						viewManager:unpark()
					end
				}
			}

			---@type android.widget.PopupMenu
			local popupMenu = ui.SimplePopupMenu({
				bindView = view,
				menu = menu,
				onSelectedListener = function(parent, view, position)
					local name = menu[position][1]
					gg.toast(string.format('没有定义 %q 功能', name))
				end
			})
			popupMenu:show()
		end
	}
}

local mian_layout = {
	LinearLayout,
	layout_width = "match_parent",
	layout_height = "match_parent",
	orientation = "vertical",
	background = luajava.getBitmapDrawable("/sdcard/云烛/图片/cow"),
	{
		LinearLayout,
		--backgroundColor = 0x50000000,
		layout_width = "match_parent",
		layout_height = "match_parent",
		orientation = "vertical",
		gravity="center_horizontal",
		paddingEnd = '50dp',
		main_titlebar_layout,
		{
		LinearLayout,
		--backgroundColor = 0x50000000,
		--background = luajava.getBitmapDrawable("/sdcard/个人仓库/UI/自制/图片资源/星光背景"),
		layout_width = "match_parent",
		layout_height = "match_parent",
		orientation = "vertical",
		gravity = "center_vertical",
		paddingEnd = '50dp',
			{
			Button,
			layout_width = 'fill_parent',
			layout_hight = "60dp",
			layout_margin = '10dp',
			textSize = '15sp',
			background = getButtonBG(),
			textColor = "#00A3FF",
			text = "启动辅助",
			onClick = function()
			luajava.startThread(function()
			viewManager:setVisibility(View.GONE)
			gg.alert("正在启动")
			startmenu()
			tuic=1
			end)
			end
			}
		}
	}
}

local drawer_titlebar_layout = {
	LinearLayout,
	backgroundColor = 0x50000000,
	layout_width = "match_parent",
	orientation = "vertical",
	{
		LinearLayout,
		layout_width = "match_parent",
		{
			ImageView,
			imageResource = 0x7f02002c,
			layout_height = "30dp",
			layout_width = "30dp",
			scaleType = 'fitCenter'
		},
		{
			TextView,
			layout_weight = 1,
			gravity = "center_vertical",
			text = app.name,
			layout_height = "match_parent"
		},
		{
			ImageView,
			imageResource = 0x7f020029,
			layout_height = "30dp",
			layout_width = "30dp",
			scaleType = 'fitCenter',
			onClick = function(view)
				local menu = {
					{
						'退出',
						onClick = function(item)
							viewManager:unpark()
						end
					}
				}

				---@type android.widget.PopupMenu
				local popupMenu = ui.SimplePopupMenu({
					bindView = view,
					menu = menu,
					onSelectedListener = function(parent, view, position)
						-- 当菜单不存在 onClick 回调函数,则进入 onSelectedListener

						local name = menu[position][1]
						gg.toast(string.format('没有定义 %q 功能', name))
					end
				})
				popupMenu:show()
			end
		}
	}
}

local expandableList_layout = {
	'ui.SimpleExpandableListView',
	layout_width = "match_parent",
	{
		'本地',
		{
			'根储存',
			thread = function()
				gg.alert('hello')
			end
		},
		{
			'内部储存'
		}
	},
	{
		'网络'
	},
	{
		'工具',
		{
			'插件管理'
		},
		{
			'远程管理'
		},
		{
			'屏幕取色'
		},
		{
			'安装包管理'
		},
		{
			'文本编辑器'
		},
		{
			'终端模拟器'
		},
		{
			'Actvity 记录'
		},
		{
			'Smali 指令查询'
		}
	}
}

local drawer_layout = {
	LinearLayout,
	layout_gravity = Gravity.START,
	layout_height = "match_parent",
	layout_width = "320dp",
	backgroundColor = 0xb0000000,
	orientation = "vertical",
	drawer_titlebar_layout,
	expandableList_layout
}

drawerView = luajava.loadlayout({
	'ui.DrawerLayoutx',
	layout_width = "match_parent",
	layout_height = "match_parent",
	mian_layout,
	drawer_layout
})



viewManager = windowManager:bindView(drawerView)

-- ui.DrawerLayoutx 的容器的宽高必须是 MATCH_PARENT 
viewManager:addView({
	width = WindowManager.LayoutParams.MATCH_PARENT,
	height = WindowManager.LayoutParams.MATCH_PARENT
})

gg.setVisible(false)
--viewManager:wait()
bloc = luajava.getBlock()
bloc('join')