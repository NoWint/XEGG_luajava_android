
check字体颜色=0xff000000
switch颜色=0xff0062FF
按钮颜色=0xffefefef
vibra = context:getSystemService(Context.VIBRATOR_SERVICE)
changan = {}
local changan = changan
local android = import('android.*')
function write(fileName, content)
file.write(fileName, content)
end
function panduan(rec) fille,err = io.open(rec) if fille == nil then return false else return true end end
function pdcf(lujing) rec = "/sdcard/蛋仔/配置文件/"..lujing fille,err = io.open(rec) if fille == nil then return false else return true end end
sleep = gg.sleep
function read(fileName) f = assert(io.open(fileName, 'r')) content = f:read("*all") f:close() return content end
function wtcf(lujing,neirong)
write("/sdcard/蛋仔/配置文件/"..lujing,neirong)
end
function rdcf(lujing)
return read("/sdcard/蛋仔/配置文件/"..lujing)
end

开 = "开" 关 = "关"
function checkimg(tmp,ii)
if panduan("/sdcard/蛋仔/图片/"..tmp) ~= true then
gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
luajava.download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..tmp,"/sdcard/蛋仔/图片/"..tmp)
else
if file.length("/sdcard/蛋仔/图片/"..tmp) <= 1 then
gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
luajava.download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..tmp,"/sdcard/蛋仔/图片/"..tmp)
end
end
if panduan("/sdcard/蛋仔/图片/"..tmp) ~= true then
gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
luajava.download("https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/"..tmp,"/sdcard/蛋仔/图片/"..tmp)
else
	if file.length("/sdcard/蛋仔/图片/"..tmp) <= 1 then
gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
luajava.download("https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/"..tmp,"/sdcard/蛋仔/图片/"..tmp)
end
end
end
ckimg = {
	'skin',
	'heir',
	'hei_right',
	'quarkcheckoff',
	'quarkcheckon',
	'dz_check','dz_title',
	'dz_slcta','dz_slctb','quarkx'
}
for i = 1,#ckimg do
jindu = i
checkimg(ckimg[i],i)
end
function 获取图片(txt)
txt = string.url(txt,"de")
ntxt = string.sub(string.gsub(txt,"/","-"),-10,-1)
if string.find(tostring(txt),"http") ~= nil then
if panduan("/sdcard/蛋仔/图片/"..ntxt) == false then
file.download(txt,"/sdcard/蛋仔/图片/"..ntxt)
else
	if file.length("/sdcard/蛋仔/图片/"..ntxt) <= 1 then
file.download(txt,"/sdcard/蛋仔/图片/"..ntxt)
end
end
txt = "/sdcard/蛋仔/图片/"..ntxt
end
return luajava.getBitmapDrawable(txt)
end
function getRes(x)
return 获取图片("/sdcard/蛋仔/图片/"..x)
end
function getVerticalBG(gtvb1,gtvb3,gtvb4,gtvb5)
if not gtvb4 then gtvb4 = 0 gtvb5 = 0x00ffffff end
local jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(gtvb3)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors(gtvb1)
jianbians:setStroke(gtvb4,gtvb5)
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
slctb = getRes('dz_slctb')
slcta = getRes('dz_slcta')
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
function getButtonBG()
local selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, getVerticalBG({0xaaFBF259,0xaaFBE641},90))
selector:addState({
	-android.R.attr.state_pressed
}, getVerticalBG({0xffFBF259,0xffFBE641},90))
return selector
end
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
YoYoImpl = luajava.getYoYoImpl()
changan.menu = function(sview)
if isswitch then
return false
end
beij=bglist[1]
isswitch = true
cebian = {
	LinearLayout,
	layout_height = "match_parent",
	layout_width = "wrap_content",
	orientation = "horizontal",
	gravity = "right",
	orientation='vertical',
}
jmbg={}
for i = 1,#stab do
jmbg[i]=getSelector()
cebian[#cebian+1] = {
	LinearLayout,
	id = "jm"..i,
	gravity="center_vertical",
	layout_height = "26dp",
	layout_width = "80dp",
	layout_marginTop = "1dp",
	layout_marginBottom = "1dp",
	layout_marginRight = "3dp",
	layout_marginLeft = "3dp",
	elevation='2dp',
	onClick = function() 切换(i) end,
	{
		TextView,
		text = stab[i][1],
		id="jmt"..i,
		gravity = "center",
		textSize = "13sp",
		textColor = "#"..颜色2,
		layout_height = "wrap_content",
		layout_width = "80dp",
	}}
end
cebian[#cebian+1] = {
	LinearLayout,
	id = 'backvv',
	visibility='gone',
	gravity="center_vertical",
	layout_height = "26dp",
	layout_width = "80dp",
	layout_marginTop = "1dp",
	layout_marginBottom = "1dp",
	layout_marginRight = "3dp",
	layout_marginLeft = "3dp",
	elevation='2dp',
	onClick = function() 切换(当前ui) end,
	background=slcta,
	{
		TextView,
		text = '返回',
		id="backvt",
		gravity = "center",
		textSize = "13sp",
		textColor = "#000000",
		layout_height = "wrap_content",
		layout_width = "80dp",
	}}
cebian = {
		ScrollView,
		layout_marginLeft='8dp',
		layout_marginRight='dp',
		layout_marginBottom='8dp',
		background=getVerticalBG({0xffA6D6EA,0xffA6D6EA},30),
		layout_height = "200dp",
		layout_width = "wrap_content",
		cebian
	}
for i = 1,#stab do
_ENV["layout"..i] = luajava.loadlayout({
	LinearLayout,
	layout_width = "fill_parent",
	layout_height = "200dp",
	visibility = "gone",
	orientation = "vertical",
	background={
		GradientDrawable,
		color = "#33ffffff",
		cornerRadius = 20
	},
	{
		ScrollView,
		fillViewport = "true",
--padding = "10dp",
		gravity = "center",
		layout_width = "250dp",
		layout_height = "200dp",
		orientation = "horizontal",
		{
			LinearLayout,
			id = "layoutm"..i,
			layout_marginRight = "5dp",
			layout_marginLeft = "5dp",
			layout_width = "240dp",
			orientation = "vertical",
			gravity = "center_horizontal",
		}
	}})
end
ckou = {
	LinearLayout,
	layout_width = "wrap_content",
	layout_height = "wrap_content",
	cebian,
	{
		LinearLayout,
		layout_marginBottom = "10dp",
		layout_marginTop = "1dp",
		layout_width = "1dp",
		layout_height = "match_parent",
		background = "#88D7D7D7"
	}

}
for i = 1,#stab do
ckou[#ckou+1] = _ENV["layout"..i]
end
for i,v in pairs(tuozhans) do
	ckou[#ckou+1]=v
end
contri=luajava.loadlayout({
		ImageView,
		id = "control",
		background = 获取图片(xfcpic),
		layout_width = "40dp",
		layout_height = "40dp",
		onTouch = hanshu,
		onClick = 隐藏,
	})
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
	{LinearLayout,
	orientation='vertical',
	id='chuangk',
	layout_marginLeft='18dp',
	layout_marginTop='10dp',
	layout_marginRight='6dp',
	visibility='gone',
	{--顶部栏
		FrameLayout,
		orientation = "horizontal",
		padding = "2dp",
		layout_height='20dp',
		layout_width="fill_parent",
		{ImageView,
			visibility='gone',
			layout_width='24dp',
			layout_height='24dp',
			layout_gravity='center_vertical',
			src=getRes('skin'),
			padding='5dp',
			layout_marginLeft='44dp',
			onClick=changebg,
			layout_marginRight='2dp',
			layout_marginTop='2dp',
			layout_marginBottom='2dp',
			background=getVerticalBG({0xffefefef,0xffefefef},12),
			elevation='2dp'
		},
	},ckou
	},{LinearLayout,
	id='dztitle',
	layout_width='120dp',
	layout_height='36dp',
	onClick=隐藏,
	onTouch=hanshu,
	background=getRes('dz_title'),
	{TextView,
		layout_marginLeft='36dp',
		layout_marginRight='10dp',
		layout_marginTop='5dp',
		layout_width='match_parent',
		gravity='center',
		textSize='12dp',
		text=titlet,
		textColor='#3CEDE6'
	}
	},{ImageView,
	id='suox',
	src=getRes('quarkx'),
	colorFilter=0xff3cede6,
	background=getVerticalBG({0x88000000,0x88000000},360),
	layout_gravity='right',
	onClick=隐藏,
	layout_height='24dp',
	layout_width='24dp',
	padding='2dp',
	onTouch=hanshu
	},contri,{
		ImageView,
		layout_marginTop='6dp',
		layout_marginLeft='6dp',
		id='ctrol1',
		background = 获取图片(xfcpic),
		layout_width = "24dp",
		layout_height = "24dp",
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
end

window:addView(floatWindow, mainLayoutParams)
block('end')
end
切换(1)
local runnable = luajava.getRunnable(invoke2)
local handler = luajava.getHandler()
handler:post(runnable)
block('join')

local isMove


end
if ylfunc~=nil then ylfunc() end
if yyfunc~=nil then yyfunc() end
invoke(swib1,swib2)
隐藏()
gg.setVisible(false)
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
luajava.startThread(function()
	while true do
		if 显示==0 and 转动 then changan.controlRotation2(contri,2000) end
		gg.sleep(2000)
	end
end)
while true do
if tuichu == 1 then break end
if 音量键 then
jianting3(qiehuan)
end
gg.sleep(300)
end

luajava.setFloatingWindowHide(false)
end

radon=getRes("quarkcheckon")
radoff=getRes("quarkcheckoff")
radiog={}
function changan.intradio(nid,name,func)
return {
	LinearLayout ,
	layout_width = 'match_parent' ,
	layout_height = "wrap_content" ,
	layout_weight=1,
	layout_marginLeft = "2dp" ,
	layout_marginRight = "5dp" ,
	layout_marginTop='2dp',
	layout_marginBottom='8dp',
	gravity = "center_vertical" ,
	onClick = function ()
	--changan.controlWater (_ENV [tid] , 200)
	func()
	end

	,
	{
		ImageView ,
		id = luajava.newId (nid) ,
		layout_width = '15dp' ,
		layout_height = "15dp" ,
		layout_marginLeft = "2dp" ,
		layout_marginRight = "4dp" ,
		src =radoff ,
		padding='-4dp',
	} , {
		TextView ,
		gravity = "top" ,
		text = name ,
		textSize="12sp",
		textColor = '#000000' ,
		layout_width = 'wrap_content' ,
		layout_height = 'wrap_content' ,
		
	}
}
end
function changan.radio(cklist)
local rid=guid()
radiog[rid]={}
rest = {
	LinearLayout ,
	layout_width = 'match_parent' ,
	layout_height = "wrap_content" ,
	layout_marginTop = "10dp" ,
	

}
if type (cklist [1]) == "string" then
rest [# rest + 1] = {
	TextView ,
	gravity = "left" ,
	
	text = cklist [1] ,
	textSize = "13sp" ,
	textColor = '#000000' ,
	layout_width = '80dp' ,
	layout_height = 'wrap_content' ,
	layout_marginLeft = "10dp" ,
	layout_marginRight = "5dp" ,
	layout_marginTop = "0dp" ,
	layout_marginBottom = "0dp" ,
}
table.remove(cklist,1)
end
local restt={
	LinearLayout ,
	layout_width = 'match_parent' ,
	layout_weight=1,
	layout_height = "wrap_content" ,
	gravity = "left" ,
	orientation='vertical',
}

	for i = 1, #cklist,2 do
	local tempTable = {LinearLayout,
		layout_width = 'fill_parent',
		layout_height = "wrap_content",
		gravity = "left",
		orientation="horizontal"
	}
	for j = 0, 1 do
		if cklist[i + j] ~= nil then
		local nid = name..guid ()
		local name = cklist[i + j][1]
		radiog[rid][nid]=false
		local func1 = radin(rid,nid,cklist[i + j][2])
		if not name then name = "未设置" end
			local rstt = changan.intradio(nid,name,func1)
			table.insert(tempTable, rstt)
		else
			table.insert(tempTable, {LinearLayout,
			layout_width = 'match_parent',
			layout_weight=1,})
		end
	end
	table.insert(restt, tempTable)
	end


rest [# rest + 1] = restt
return luajava.loadlayout (rest)
end
function radin(rid,nid,func)
return function()
for k,v in pairs(radiog[rid]) do
	luajava.getIdValue(k):setImageDrawable(radoff)
	if k==nid and v~=true then
		luajava.getIdValue(k):setImageDrawable(radon)
		v=true
		luajava.newThread(func):start()
	end
end
end
end

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
luajava.runUiThread(function()
local tview = luajava.getIdValue (tid)
local ttview = luajava.getIdValue (ttid)
if not tview then
return 0
end
if tonumber (tostring (tview : getVisibility ())) == 8.0 then
tview : setVisibility (View.VISIBLE)
YoYoImpl:with("FadeIn"):duration(600):playOn(boxes[tid])
else
	tview : setVisibility (View.GONE)
end
end)
end
boxes = {} boxpic = {}
function changan.box (views)
local tid = "box"..guid ()
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
firadio [# firadio + 1] =changan.switch(views[1],function ()
	visi (tid , ttid)
	end,function ()
	visi (tid , ttid)
	end,'展开/收起')

else
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
for i = 2 , # views do
radios [# radios + 1] = views [i]
end
boxes[tid] = luajava.loadlayout(radios)
firadio [# firadio + 1] = boxes[tid]
_ENV [t1id] = luajava.loadlayout (firadio)
return _ENV [t1id]
end
corbk = true
当前ui = 1
function 切换(x)

当前ui = x
luajava.runUiThread(function()
	if 分页ing~=false then
	tuozhans[分页ing]:setVisibility(View.GONE)
	backvv:setVisibility(View.GONE)
	分页ing=false
	for i=1,#stab do
		_ENV['jm'..i]:setVisibility(View.VISIBLE)
	end
	changan.controlBigX(floatWindow,600)
end
	for i = 1,#stab do
	_ENV["jmt"..i]:setTextColor(0xff000000)
	--_ENV["jmp"..i]:setColorFilter(0xffd7d7d7)
	_ENV["layout"..i]:setVisibility(View.GONE)
	_ENV['jm'..i]:setBackground(jmbg[i])
	end
	_ENV['jm'..当前ui]:setBackground(slcta)
	--_ENV["jmt"..当前ui]:setTextColor(0xff0062FF)
	--_ENV["jmp"..当前ui]:setColorFilter(0xff0062FF)
	_ENV["layout"..当前ui]:setVisibility(View.VISIBLE)
	--YoYoImpl:with("FadeIn"):duration(800):playOn(_ENV["layout"..当前ui])
	end)
end
显示 = 0
beij2 = luajava.loadlayout({
	GradientDrawable,
	color = "#001E1C27",
	cornerRadius = 10
})
function changan.image(img,height,width,pad,func)
if not func then func=function() end end
if not pad then pad="0dp" end
if not height then height="80dp" end
if not width then width="80dp" end
return luajava.loadlayout({
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
}})

end
nowbg=1
function changebg()
	luajava.runUiThread(function()
	if nowbg<#bglist then
		nowbg=nowbg+1
	else
		nowbg=1
	end
	beij=bglist[nowbg]
	floatWindow:setBackground(beij)
	YoYoImpl:with("FadeIn"):duration(600):playOn(floatWindow)
	end)
end
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
	if tonumber(tostring(chuangk:getVisibility())) == 8.0 then
	control:setVisibility(View.GONE)
	显示 = 1
	ctrol1:setVisibility(View.VISIBLE)
	suox:setVisibility(View.VISIBLE)
	dztitle:setVisibility(View.VISIBLE)
	chuangk:setVisibility(View.VISIBLE)
	if 分页ing~=false then
		tuozhans[分页ing]:setVisibility(View.VISIBLE)
	else
		_ENV["layout"..当前ui]:setVisibility(View.VISIBLE)
	end
	--changan.controlBig(floatWindow,500)
	chuangk:setBackground(beij)
	changan.controlBigX(floatWindow,800)
	else
	luajava.startThread(function()
		luajava.runUiThread(function()
			changan.controlSmallX(floatWindow,790)
		end)
		gg.sleep(800)
		luajava.runUiThread(function()
			ctrol1:setVisibility(View.GONE)
		suox:setVisibility(View.GONE)
		dztitle:setVisibility(View.GONE)
		chuangk:setVisibility(View.GONE)
		chuangk:setBackground(beij2)
		control:setVisibility(View.VISIBLE) 显示 = 0
		changan.controlBigX(floatWindow,400)
			if 分页ing~=false then
				tuozhans[分页ing]:setVisibility(View.GONE)
				else
				_ENV["layout"..当前ui]:setVisibility(View.GONE)
			end
		end)
	end)
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
changan.controlSmallX = function(control,time)
luajava.runUiThread(function()
	import "android.animation.ObjectAnimator"
	ObjectAnimator():ofFloat(control,"scaleX", {
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

changan.controlBigX = function(control,time)
luajava.runUiThread(function()
	import "android.animation.ObjectAnimator"
	ObjectAnimator():ofFloat(control,"scaleX", {
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

checkbg1 = getVerticalBG({0xaaBDC7CD,0xaaBDC7CD},360)
checkbg2 = getRes("dz_check")
switchs={}
function changan.intcheck(name,func1,func2)
nid = name..guid()
local func = 开关5(name,func1,func2,nid)
if not name then name = "未设置" end
switchs[nid] = {
	LinearLayout,
	layout_width = 'match_parent',
	layout_weight=1,
	layout_height = "42dp",
	layout_marginTop = "1dp",
	layout_marginBottom = "1dp",
	padding = "1dp",
	{
		LinearLayout,
		padding="3dp",
		onClick = function() luajava.newThread(function() func() end):start() end,
		layout_width = 'fill_parent',
		layout_height = "wrap_content",
		gravity = "center_vertical",
		--background=getVerticalBG({0xffFFFDF2,0xddffffff,0xffFFFDF2},15,8,0xffFFDA71),
		{
			FrameLayout,
			id = luajava.newId(nid),
			background = checkbg1,
			layout_width = '15dp',
			layout_height = '15dp',
			padding = "0dp",
		},{
			TextView,
			layout_marginLeft='5dp',
			id=luajava.newId(nid.."t"),
			gravity = "left",
			text = name,
			textColor=check字体颜色,
			textSize = "12sp",
--layout_marginLeft="8dp",
			layout_width = 'match_parent',
	layout_weight=1,
		},
		}
}
return switchs[nid]
end
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
vibra:vibrate(9)
luajava.runUiThread(function()
	luajava.getIdValue(nid):setBackground(checkbg2)
	--luajava.getIdValue(nid.."t"):setTextColor(switch颜色)
	--changan.controlWater(switchs[nid],300)
	end)
_ENV[name] = "开"
pcall(func1)
else
	vibra:vibrate(9)
luajava.runUiThread(function()
	luajava.getIdValue(nid):setBackground(checkbg1)
	--luajava.getIdValue(nid.."t"):setTextColor(0xff232323)
	--changan.controlWater(switchs[nid],300)
	end)
_ENV[name] = "关"
pcall(func2)
end
end
end
end
function changan.check(cklist)
if #cklist==0 then return nil end
local rest = {
	LinearLayout,
	layout_width = 'match_parent',
	layout_height = "wrap_content",
	gravity = "center",
	orientation="vertical",

}

for i = 1, #cklist,3 do
local tempTable = {LinearLayout,
	layout_width = 'fill_parent',
	layout_height = "wrap_content",
	gravity = "left",
	orientation="horizontal"
}
for j = 0, 2 do
if cklist[i + j] ~= nil then
local name = cklist[i + j][1]
local func1 = cklist[i + j][2]
local func2 = cklist[i + j][3]
if not name then name = "未设置" end
rstt = changan.intcheck(name,func1,func2)
table.insert(tempTable, rstt)
else
	table.insert(tempTable, {LinearLayout,
	layout_width = 'match_parent',
	layout_weight=1,})
end
end
table.insert(rest, tempTable)
end
return luajava.loadlayout(rest)
end
switches = {}
function 开关3(name,func1,func2,nid)
local sname = nid
local localname=name
name = name..guid()
_ENV[name] = "关"
if func1 == nil then func1 = "" end
if func2 == nil then func2 = "" end
if type(func1) == "function" then
local outfunc=function()
namers = _ENV[name]
if namers ~= "开" then
vibra:vibrate(9)
luajava.runUiThread(function()
	luajava.getIdValue(nid.."k"):setVisibility(View.GONE)
	YoYoImpl:with("ZoomInLeft"):duration(600):playOn(switches["2s"..sname])
	luajava.getIdValue(nid.."g"):setVisibility(View.VISIBLE)
--luajava.getIdValue(nid):setBackground(checkbg)
	end)
_ENV[name] = "开"

pcall(func1)
else
	vibra:vibrate(9)
luajava.runUiThread(function()
	luajava.getIdValue(nid.."g"):setVisibility(View.GONE)
	YoYoImpl:with("ZoomInRight"):duration(600):playOn(switches["1s"..sname])
	luajava.getIdValue(nid.."k"):setVisibility(View.VISIBLE)
--luajava.getIdValue(nid):setBackground(checkbga)
	end)
_ENV[name] = "关"
pcall(func2)
end
end
if localname=="悬浮窗转动开关" then yyfunc=outfunc end
if localname=="音量键隐藏UI开关" then ylfunc=outfunc end
return outfunc
end
end

function changan.switch(name,func1,func2,miaoshu)
if not checkbga then
	checkbga = getVerticalBG(
	{
		0xff9BBDE4,0xff9BBDE4
	},
	90,18,0x00ffffff)
switchbg1 = getVerticalBG(
	{
		0xffE6E6E6,0xffE6E6E6
	},
	25)
switchbg2 = getHorizontalBG(
	{
		0xffE9FF74,0xff52E25E
	},
	25)
end
nid = name..guid()
local func = 开关3(name,func1,func2,nid)
if not name then name = "未设置" end
switches["1s"..nid] = luajava.loadlayout {
	FrameLayout,
	layout_width = '50dp',
	layout_height = '22dp',
	gravity = "center_vertical",
	
	{
		TextView,
		layout_gravity = "left|center_vertical",
		id = luajava.newId(nid.."k"),
		background = switchbg1,
		onClick = function() luajava.newThread(function() func() end):start() end,
		layout_width = '30dp',
		layout_height = '20dp',
		gravity='center',
		text='关',
		textSize='11sp',
		textColor='#000000',
		layout_margin='1dp',
		elevation='1dp',
	},
}
switches["2s"..nid] = luajava.loadlayout {
	FrameLayout,
	onClick = function() luajava.newThread(function() func() end):start() end,
	layout_width = '50dp',
	layout_height = '22dp',
	gravity = "center_vertical",
	{
		TextView,
		visibility = "gone",
		layout_gravity = "right|center_vertical",
		id = luajava.newId(nid.."g"),
		background = switchbg2,
		onClick = function() luajava.newThread(function() func() end):start() end,
		layout_width = '30dp',
		layout_height = '20dp',
		gravity='center',
		text='开',
		textSize='11sp',
		textColor='#000000',
		layout_margin='1dp',
		elevation='1dp',
	}
}
rest = luajava.loadlayout({
	LinearLayout,
	layout_width = 'fill_parent',
	layout_height = "wrap_content",
	gravity = "center_vertical",
	{
		LinearLayout,
		layout_width = 'fill_parent',
		layout_height = "40dp",
		gravity = "center_vertical",
		layout_marginLeft='2dp',
		layout_marginRight='2dp',
		layout_marginTop='2dp',
		layout_marginBottom='2dp',
		elevation='2dp',
		padding = {
		"0dp","0dp","6dp","0dp"
	},
		{
			TextView,
			gravity = "top",
			text = name,
			textColor = "#000000",
			textSize = "12sp",
			layout_width = 'wrap_content',
			layout_marginLeft = "10dp",
			layout_marginRight = "0dp",
		},
		{
			TextView,
			gravity = "center",
			layout_height = "match_parent",
			text = miaoshu,
			textSize = "11sp",
			layout_width = "match_parent",
			layout_marginLeft = "-10dp",
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

buts={}
function changan.button(txt,func,miaoshu)
if not txt then txt = "未设置" end
if not txtc then txtc="#000000" end
if not miaoshu then miaoshu='' end
local tid="Cbutton"..guid()
buts[tid]=luajava.loadlayout(
	{
		FrameLayout,
		layout_width = 'match_parent',
		layout_height = "wrap_content",
		{TextView,
			text=miaoshu,
			textSize='12sp',
			textColor='#000000',
			layout_marginLeft='10dp',
			layout_gravity='center_vertical',
		},
		{
			LinearLayout,
			layout_gravity='center_horizontal',
			layout_width = "wrap_content",
			gravity = "center_vertical",
			layout_marginTop = "5dp",
			layout_marginBottom = "5dp",
			layout_marginLeft='3dp',
			layout_marginRight='3dp',
			elevation='2dp',
			background = getButtonBG(),
			onClick = function() 
				changan.controlWater(buts[tid],300)
			luajava.newThread(func):start() end,
			{
				TextView,
--id = luajava.newId(tid),
				textColor = txtc,
				text = txt,
				textSize = "13sp",
				layout_height = "wrap_content",
				layout_width = "wrap_content",
				layout_weight=1,
				padding={'20dp','3dp','20dp','3dp'},
			}
		}})
return buts[tid]
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
		layout_width = "wrap_content",
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
	luajava.getIdValue(nid):setBackground(luajava.getBitmapDrawable("/sdcard/蛋仔/图片/check2"))
	end)
_ENV[name] = "开"
func1()
else
	luajava.runUiThread(function()
	luajava.getIdValue(nid):setBackground(luajava.getBitmapDrawable("/sdcard/蛋仔/图片/check1"))
	end)
_ENV[name] = "关"
func2()
end

end
end
end

tuozhans={}
function 生成页面(name,views)
	if tuozhans[name]~=nil then gg.alert(name..'页面存在重名!') os.exit() end
	
	local tmp={
			LinearLayout,
			layout_marginRight = "5dp",
			layout_marginLeft = "5dp",
			layout_width = "240dp",
			orientation = "vertical",
			gravity = "center_horizontal",
		}
	for i=1,#views do
		table.insert(tmp,views[i])
	end
	tuozhans[name] = luajava.loadlayout({
	LinearLayout,
	layout_width = "fill_parent",
	layout_height = "200dp",
	visibility = "gone",
	orientation = "vertical",
	background={
		GradientDrawable,
		color = "#33ffffff",
		cornerRadius = 20
	},
	{
		ScrollView,
		fillViewport = "true",
--padding = "10dp",
		gravity = "center",
		layout_width = "250dp",
		layout_height = "200dp",
		orientation = "horizontal",
		tmp
	}})
end
function 显示页面(name)
	luajava.runUiThread(function()
	if tuozhans[name]==nil then luajava.startThread(function() gg.alert(name..'分页不存在！') end) return 0 end
	for i=1,#stab do
		_ENV['layout'..i]:setVisibility(View.GONE)
		_ENV['jm'..i]:setVisibility(View.GONE)
	end
	
	for i,v in pairs(tuozhans) do
	   if i==name then
	   	
	   		v:setVisibility(View.VISIBLE)
	   	else
	   		v:setVisibility(View.GONE)
	   end
	end
	backvv:setVisibility(View.VISIBLE)
	分页ing=name
	changan.controlBigX(floatWindow,600)
	end)
end
分页ing=false










































生成页面('1例子',
	{
			changan.text("这是二级菜单演示","#0077FF","20sp"),
			changan.text("例子1","#545454","10sp"),
			changan.switch(
				"功能",
				function()
					
				end,
				function()
					
				end),
	})

生成页面('2例子',
	{
			changan.switch(
				"功能",
				function()
					
				end,
				function()
					
				end),
			changan.text("二级菜单演示","#0077FF","20sp"),
			changan.text("例子2","#545454","10sp"),
			
	})



bglist={
	getHorizontalBG({0xffE8EEFf,0xffE8EEFF},35),
	getHorizontalBG({0xff7F58FF,0xff2964FF,0xff5399FF},30),
	getHorizontalBG({0xaaffffff,0xaaffffff},12,3,0xaa232323),
	
}


function huiz()---绘制必须放在这里面
	
	
end

titlet = "六花美化"

stab = {
--菜单名字，添加即可加页数，需要与结尾配置表对应
	{"公告","https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/quarkweb"},
	{"防封","https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/quarkuser"},
	{"功能","https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/quarkcore"},
	{"设置","https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/quarkconf"},
}


xfcpic = "https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/changan"
--悬浮窗链接或路径

changan.menu(
	{
		{--1
			changan.button("点击选择",gg.setProcessX,'进程'),
			--changan.text("文字演示","#0077FF","20sp"),
			--changan.text("文字演示文字演示文字演示","#545454","10sp"),
			changan.button("二级菜单例子",
				function()
					显示页面('1例子')
				end,
				'例子1'),
			changan.button("二级菜单例子",
				function()
					显示页面('2例子')
				end,
				'例子2'),
			changan.switch(
				"功能",
				function()
					
				end,
				function()
					
				end),
			changan.box({"安全功能",
				changan.radio({--单选
					'单选',
				{
					"防环境" ,
					function ()
						gg.alert(1)
					end
				} , {
					"防行为" ,
					function ()
						
					end
				} , {
					"防人工一" ,
					function ()
						
					end
				} , {
					"防人工二" ,
					function ()
						
					end
				} ,
			}),
			}),
			
			--changan.text("文字演示","#A11322","20sp"),
			--changan.text("文字演示文字演示文字演示","#545454","10sp"),
			changan.box({"危险功能",
				changan.check({
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
					},{
						"测试1",
						function()
	
						end,
						function()
	
						end
					},
				}),
			}),
			
		}, {
--2

		}, {
--3

		}, {--第四页
			
			changan.switch("音量键隐藏UI",
				function()
					音量键=true
				end,
				function()
					音量键=false
				end),
			changan.switch("悬浮窗转动",
				function()
					转动=true
				end,
				function()
					转动=false
				end),
			changan.text("\n\n\n"),
			changan.button("退出",function()
				luajava.setFloatingWindowHide(false)
				tuichu=1
				end),
		}, {
--第五页，没有写菜单标题所以不显示

		},{
			
		},{
			
		},{
			
		},{
			
		},{
			
		},{
			
		},{
			
		}


	})
--配置表添加表即可加页数，只需要与上边菜单标题数对应



