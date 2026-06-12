android = import('android.*')
gg.setVisible(false)
function getgra(color,radius)
return luajava.loadlayout {
    GradientDrawable,
    color = color,
    cornerRadius = radius,
}
end
changan = {}
function tst(text)
text = tostring(text)
local block = luajava.getBlock()
local layout = luajava.loadlayout({
    LinearLayout,
    background = getgra("#d9000000",16),
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
function getLayoutParams()
local LayoutParams = WindowManager.LayoutParams
local layoutParams = luajava.new(LayoutParams)
if (Build.VERSION.SDK_INT >= 26) then -- 设置悬浮窗方式
layoutParams.type = LayoutParams.TYPE_APPLICATION_OVERLAY
else
    layoutParams.type = LayoutParams.TYPE_PHONE
end

layoutParams.format = PixelFormat.RGBA_8888 -- 设置背景
layoutParams.flags = LayoutParams.FLAG_NOT_FOCUSABLE|LayoutParams.FLAG_BLUR_BEHIND -- 焦点设置Finish
layoutParams.gravity = Gravity.CENTER -- 重力设置
layoutParams.width = LayoutParams.FILL_PARENT -- 布局宽度
layoutParams.height = LayoutParams.FILL_PARENT -- 布局高度
return layoutParams
end
function getgra(color,radius)
return luajava.loadlayout {
    GradientDrawable,
    color = color,
    cornerRadius = radius,
}
end
function write(fileName, content)
--f = assert( io.open( fileName, 'w'))   f:write( content )     f:close()
if file.write(fileName, content) == false then gg.alert("请给框架和修改器 文件储存权限\n否则无法正常运行") os.exit() end
end
function panduan(rec) fille,err = io.open(rec) if fille == nil then return false else return true end end
function pdcf(lujing) rec = "/sdcard/念川/配置文件/"..lujing fille,err = io.open(rec) if fille == nil then return false else return true end end
sleep = gg.sleep
--if gg.isHTTPdump()==true and panduan("/sdcard/念川/配置文件/vpn.txt") == false then gg.alert("\n抓包？") os.exit() end
function read(fileName) f = assert(io.open(fileName, 'r')) content = f:read("*all") f:close() return content end
function wtcf(lujing,neirong)
write("/sdcard/念川/配置文件/"..lujing,neirong)
end
function rdcf(lujing)
return read("/sdcard/念川/配置文件/"..lujing)
end
function checkimg(tmp)
if panduan("/sdcard/念川/图片/"..tmp) ~= true then
gg.toast("正在下载资源"..tmp.."\n请耐心等待")
download("https://api.99778.cn/wp/down.php/2d0542ffd6feeaf5d662595bf94639ec.jpg/"..tmp,"/sdcard/念川/图片/"..tmp)
end
end
ckimg = {
    "https://api.99778.cn/wp/down.php/2d0542ffd6feeaf5d662595bf94639ec.jpg",
    "https://api.99778.cn/wp/down.php/2d0542ffd6feeaf5d662595bf94639ec.jpg",
    "https://api.99778.cn/wp/down.php/2d0542ffd6feeaf5d662595bf94639ec.jpg",
    "https://api.99778.cn/wp/down.php/2d0542ffd6feeaf5d662595bf94639ec.jpg",
    "https://api.99778.cn/wp/down.php/2d0542ffd6feeaf5d662595bf94639ec.jpg",
    "blueseek",
}
for i = 1,#ckimg do
jindu = i
checkimg(ckimg[i])
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
if _ENV[bian] == nil then _ENV[bian] = nows end
if not name then name = "未设置" end
local names = name..guid()
rest = luajava.loadlayout({
    LinearLayout,
    layout_width = 'fill_parent',
    gravity = "center",
    layout_height = "wrap_content",
    {
        LinearLayout,
        layout_width = 'fill_parent',

        layout_height = "fill_parent",
        layout_marginTop = "5dp",
        layout_marginBottom = "5dp",
        layout_marginLeft = "0dp",
        layout_marginRight = "0dp",
        gravity = "center_vertical",
        background = luajava.loadlayout {
            GradientDrawable,
            color = "#ff191A1D",
            cornerRadius = 8
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
            layout_width = '140dp',
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
function changan.seek2(name,bian,smin,smax,nows,func)
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
if _ENV[bian] == nil then _ENV[bian] = nows end
if not name then name = "未设置" end
local names = name..guid()
rest = luajava.loadlayout({
    LinearLayout,
    layout_width = 'fill_parent',
    gravity = "center",
    layout_height = "wrap_content",
    {
        LinearLayout,
        layout_width = 'fill_parent',
        
        layout_height = "fill_parent",
        layout_marginTop = "5dp",
        layout_marginBottom = "5dp",
        layout_marginLeft = "0dp",
        layout_marginRight = "0dp",
        gravity = "center_vertical",
        background = luajava.loadlayout {
            GradientDrawable,
            color = "#22ffffff",
            cornerRadius = 12
        },
        {
            SeekBar,
            layout_width = '500dp',
            layout_height="30dp",
            --minHight=
            min = truesmin,
            max = truesmax,
            progress = tnows,
            splitTrack="false",
            maxHeight="10dp",
            --thumb=luajava.getBitmapDrawable("/sdcard/念川/图片/blueseek"),
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
                end,
            onStopTrackingTouch=function(SeekBar, var2, var3)
                luajava.newThread(function() gg.sleep(100) func(SeekBar:getProgress()) end):start()
                end,
            }},{
            TextView,
            gravity = "top",
            text = name..":"..nows,
            id = luajava.newId(names),
            layout_width = '150dp',
            layout_marginLeft = "5dp",
            layout_marginRight = "0dp",
        }
    }})

return rest
end

function changan.radio(radio)
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
function changan.radio2(radio)
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
		background = "/sdcard/锅灰UI/图片/"..radio[i][2]
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
function changan.button(txt,func)
if not txt then txt = "未设置" end
return luajava.loadlayout(
    {
        LinearLayout,
        layout_width = 'wrap_content',
        layout_hight = "wrap_content", {
            LinearLayout,
            layout_width = 'wrap_content',
            layout_hight = "wrap_content",
            gravity = "center_horizontal",
            layout_marginLeft = "5dp",
            layout_marginRight = "5dp",
            layout_marginBottom = "10dp",
            layout_marginTop = "10dp",
            background = luajava.loadlayout {
                GradientDrawable,
                color = "#3C996E",
                cornerRadius = 20
            },
            onClick = function() luajava.newThread(function() pcall(func) end):start() end,
            {
                TextView,
--id = luajava.newId(tid),
                text = txt,
                layout_marginLeft = "5dp",
                layout_marginRight = "5dp",
                layout_marginBottom = "2dp",
                layout_marginTop = "2dp",
                textColor = "#2FFBFF",
                textSize = "12sp",
                layout_marginRight = "5dp",
                layout_marginBottom = "5dp",
                layout_hight = "40dp",
                layout_width = "wrap_content",
            },
        }})
end
function changan.text(txt,color,size)
if not txt then txt = "未设置文字" end
if not color then color = "#23F0FF" end
if not size then size = "14sp" end
return luajava.loadlayout(
    {
        TextView,
        text = txt,
        textSize = size,
        gravity = "left",
        textColor = color,
        layout_width = "wrap_content",
        layout_marginLeft = "10dp",
        layout_marginRight = "10dp",
    })
end
function changan.check(cklist)
rest = {
    LinearLayout,
    layout_width = 'wrap_content',
    layout_height = "wrap_content",
    layout_marginTop = "10dp",
    gravity = "top",
    orientation = "vertical",

}
if type(cklist[1]) == "string" then
rest[#rest+1] = {
    TextView,
    gravity = "left",
    text = cklist[1],
    textSize = "14sp",
    textColor = "#ffffff",
    layout_width = 'wrap_content',
    layout_height = 'wrap_content',
    layout_marginLeft = "4dp",
    layout_marginRight = "5dp",
    layout_marginTop = "0dp",
    layout_marginBottom = "0dp",
}
end

for i = 2,#cklist do
local name = cklist[i][1]
local func1 = cklist[i][2]
local func2 = cklist[i][3]
local nid = cklist[i][4]
if type(func1) == "table" then gg.alert("出现错误\n如果你是用的是旧版\n请将开头第一个chagan.switch改成changan.menu\n最新版加群475650007获取") gg.copyText("475650007") os.exit() end
if not name then name = "未设置" end
nid = name..guid()
local func = 开关3(nid,func1,func2,nid)
rstt = luajava.loadlayout({
    LinearLayout,
    layout_width = '300dp',
    layout_height = "30dp",
    layout_marginTop = "5dp",
    layout_marginBottom = "15dp",
    layout_marginLeft = "4dp",
    layout_marginRight = "10dp",
    gravity = "center_vertical",
    onClick = function() luajava.newThread(function() func() end):start() end,
    {
        ImageView,
        id = luajava.newId(nid),
        layout_width = '20dp',
        layout_height = "20dp",
        layout_marginLeft = "10dp",
        layout_marginRight = "10dp",
        background = "/https://api.99778.cn/wp/down.php/2d0542ffd6feeaf5d662595bf94639ec.jpg",
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
function changan.line()
rest = luajava.loadlayout({
    LinearLayout,
    layout_width = 'fill_parent',
    layout_height = "1dp",
    background = "#33ffffff",
})

return rest
end

function changan.switch(name,func1,func2)
nid = name..guid()
local func = 开关2(name,func1,func2,nid)
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
function 开关2(name,func1,func2,nid)
_ENV[name] = "关"
if func1 == nil then func1 = "" end
if func2 == nil then func2 = "" end
if type(func1) == "function" then
return function()
namers = _ENV[name]
if namers ~= "开" then
luajava.runUiThread(function()
    luajava.getIdValue(nid):setBackground(luajava.getBitmapDrawable("/sdcard/念川/图片/rswitchred"))
    end)
_ENV[name] = "开"
pcall(func1)
else
    luajava.runUiThread(function()
    luajava.getIdValue(nid):setBackground(luajava.getBitmapDrawable("/sdcard/念川/图片/rswitch1"))
    end)
_ENV[name] = "关"
pcall(func2)
end

end
end
end
function 开关3(name,func1,func2,nid)
_ENV[name] = "关"
if func1 == nil then func1 = "" end
if func2 == nil then func2 = "" end
if type(func1) == "function" then
return function()
namers = _ENV[name]
if namers ~= "开" then
luajava.runUiThread(function()
    luajava.getIdValue(nid):setBackground(luajava.getBitmapDrawable("https://api.99778.cn/wp/down.php/2d0542ffd6feeaf5d662595bf94639ec.jpg"))
    end)
_ENV[name] = "开"
pcall(func1)
else
    luajava.runUiThread(function()
    luajava.getIdValue(nid):setBackground(luajava.getBitmapDrawable("/sdcard/念川/图片/checkoflight"))
    end)
_ENV[name] = "关"
pcall(func2)
end

end
end
end
paramt = {}
titletable={}
function changan.newtitle()
name="悬浮窗"
titletable[name]=1
local function invoke(name)
if not name then name = "未设置" end
nameid = name..guid()
local func = 开关(nameid)

local ok
local RawX, RawY, x, y

paramt[name] = getLayoutParams2()
_ENV[name] = luajava.loadlayout(
	{
		LinearLayout,
		layout_width = "wrap_content",
		layout_height = "wrap_content",
		background = luajava.loadlayout {
			GradientDrawable,
			color = "#00000000",
			cornerRadius = 30
		},
		onClick = function() luajava.newThread(function() 判断() end):start() end,
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
            LinearLayout,
            layout_width = "48dp",
            layout_height = "48dp",
            gravity = "center", {
                ImageView,
                background = "https://api.99778.cn/wp/view.php/2d0542ffd6feeaf5d662595bf94639ec.jpg",
                layout_width = "44dp",
                layout_height = "44dp",
            }}
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

function changan.rmvtitle(name)
titletable[name]=0
local function invoke2()
window:removeView(_ENV[name], paramt[name])
end
local runnable = luajava.getRunnable(invoke2)
local handler = luajava.getHandler()
handler:post(runnable)

end
function changan.box(views)
firadio = {
    LinearLayout,
    layout_width = 'fill_parent',
    layout_height = "wrap_content",
    layout_marginTop = "2dp",
    layout_marginBottom = "2dp",
    orientation = "horizontal",
    paddings = "14dp",
    background = luajava.loadlayout {
        GradientDrawable,
        color = "#0018191C",
        cornerRadius = 8
    },
}
for i = 1,#views do
firadio[#firadio+1] = views[i]
end
return luajava.loadlayout(firadio)
end

jianbian2 = luajava.new(GradientDrawable)
jianbian2:setCornerRadius(20)
jianbian2:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbian2:setColors({
    0x66000000,0x66000000
})
jianbian2:setStroke(2,"0xff23F0FF")
jianbian1 = luajava.loadlayout {
    GradientDrawable,
    color = "#99000000",
    cornerRadius = 18,
    stroke = "10dp",
    strokeColor = "#ffffff",
}
function newGradientDrawableLayout(layout)
local baseLayout = {
    GradientDrawable,
    cornerRadius = '55dp',
    color = 0x10000000
}
return table.copy(baseLayout, layout)
end
YoYoImpl = luajava.getYoYoImpl()
function changan.menu(sview)
viewlist = {
    LinearLayout,
    id="mainbg",
    layout_height = "fill_parent",
    layout_width = "fill_parent",
    layout_marginRight = "70dp",
    layout_marginLeft = "70dp",
    layout_marginBottom = "20dp",
    layout_marginTop = "20dp",
    orientation = "vertical",
    background = jianbian2,
}
for i = 1,#sview do
viewlist[#viewlist+1] = sview[i]
end
mainLayoutj = {
    FrameLayout,
    onClick = function() luajava.newThread(function() uiremoveView() end):start() end,
    gravity = 'center',
    background = "#91000000",
    orientation = "vertical",
--paddings = "100dp",
    layout_width = "fill_parent",
    layout_height = "fill_parent",
    {
        ScrollView,
        fillViewport = "true",
        layout_height = "fill_parent",
        layout_width = "fill_parent",
        {
            LinearLayout,
            layout_height = "fill_parent",
            layout_width = "fill_parent",
            viewlist,
        }},
    {
            LinearLayout,
            layout_width = "48dp",
            layout_height = "48dp",
            layout_marginRight="50dp",
            layout_gravity = "right",
            onClick=function() luajava.newThread(function() uiremoveView() end):start() end,
            {
                ImageView,
                id = "control",
                background = "https://api.99778.cn/wp/view.php/2d0542ffd6feeaf5d662595bf94639ec.jpg",
                layout_width = "24dp",
                layout_height = "24dp",
            }}
}
mainLayoutj = luajava.loadlayout(mainLayoutj)
--uimenu()
changan.newtitle(判断)
end
window = context:getSystemService('window')
function uiremoveView()
if 隐藏 ~= 1 then 隐藏 = 1
function invoke()
return window:removeView(mainLayoutj)
end
return luajava.post(invoke)
end
end
function uinewParams()
params = getLayoutParams()
return params
end
function uiaddView(lay1)
function invoke()
return window:addView(lay1,uinewParams())
end
return luajava.post(invoke)
end

function uimenu()
if 隐藏 ~= 0 then
luajava.runUiThread(function() YoYoImpl:with("Landing"):duration(800):playOn(mainLayoutj) end)
隐藏 = 0
uiaddView(mainLayoutj)
--bloc('join')
end
end
function tuichu()
tuic = true
uiremoveView()
end
pand=1
function 判断()
if pand<3 then
gg.toast("再点击"..3-pand.."次打开悬浮窗")

pand=pand+1
else
pand=1
uimenu()
end
end
function 过期时间(titme)
luajava.runUiThread(function() timetxt:setText("成功\n过期于"..titme) end)
end

pubgtu = {
    ImageView,
    src = "/sdcard/念川/图片/pubgtu",
    layout_height = "17dp",
    layout_width = "30dp",
    layout_marginLeft = "1dp",
    layout_marginRight = "10dp",
}
timetxt = changan.text("成功\n过期于2099-12-30 00:00")
gg.setVisible(false)
luajava.setFloatingWindowHide(true)

changan.menu({
    changan.box({
        pubgtu,
        changan.text(" ▼ 一般设定")
    }),
    changan.box({
        changan.button("刷新",function()
            
        end),
        changan.button("登出",function() tuichu() end),
        changan.text("         "),
        changan.button("蓝底",function()
            jianbian2:setColors({0xaa315ABC,0xaa315ABC})
            mainbg:setBackground(jianbian2)
        end),
        changan.button("黑底",function()
            jianbian2:setColors({0x66000000,0x66000000})
            mainbg:setBackground(jianbian2)
        end),
        changan.button("彩底",function()
            jianbian2:setColors({0x660047FF,0x6600FFB0})
            mainbg:setBackground(jianbian2)
        end),
        changan.button("卸载",function()  end),
        changan.button("重启桌面",function()  end),
        changan.button("重置所有选项",function()  end),
    }),
    changan.box({
        changan.text(" 版本：1.0"),
    }),
    changan.box({
        changan.text(" 登录状态："),
        timetxt
    }),
    changan.line(),
    changan.text(" 公告: Ace全防  TG @profound666"),
    changan.text(" 启动时间%m月%d日%H点', 100,700('#F42999')"),
    changan.line(),
    changan.box({
        changan.seek2("缩放","suof",0,100,55,
            function()
                gg.alert(suof)
            end),
    }),
    changan.line(),
    changan.box({
        changan.seek2("详情缩放","xqsuof",0,100,55,
            function()
                gg.alert(xqsuof)
            end),
    }),
    changan.line(),
    changan.box({
        changan.check({
            {
                "单抽出金",
                function()
                
--gg.alert("鹅鹅鹅鹅")
                end,
                function()

                end
            }, {
                "瞬移神瞳",
                function()
                    
                end,
                function()
                    
                end
            },{
                "飞行 ",
                function()
                    
                end,
                function()
                    
                end
            },{
                "加速",
                function()
                    
                end,
                function()
                    
                end
            },{
                "一秒千刀",
                function()
                    
                end,
                function()
                    
                end
            }}),
        changan.check({
            
            {
                "无视冷却",
                function()
--gg.alert("鹅鹅鹅鹅")
                end,
                function()

                end
            }, {
                "无限大招",
                function()
--gg.alert("鹅鹅鹅鹅")
                end,
                function()

                end
            },{
                "ESP绘制",
                function()
                    
                end,
                function()
                    
                end
            },{
                "标记玩家",
                function()
                    
                end,
                function()
                    
                end
            },{
                "追踪宝箱",
                function()
                    
                end,
                function()
                    
                end
            }}),
    }),
    changan.radio({
                "帧率",--栏目名
                {
                    "30FPS",--小功能名
                    function()
                    gg.alert(30)
                    end
                }, {
                    "45FPS",
                    function()
                    gg.alert(45)
                    end
                }, {
                    "60FPS",
                    function()
                    gg.alert(60)
                    end
                }, {
                    "90FPS",
                    function()
                    gg.alert(90)
                    end
                },
            }),

})


draw.setColor('#FFA900')
draw.text('⚠️Ace全防游戏防封已经稳定启动⚠️', 800,100)

while true do
if tuic == true then uiremoveView()
luajava.setFloatingWindowHide(false)
for k,v in pairs(titletable) do
    if v~=0 then
    changan.rmvtitle(k)
    titletable[k]=0
    end
end
os.exit() end
gg.sleep(10)
if gg.isVisible(true) then
gg.setVisible(false)
uimenu()
end
end