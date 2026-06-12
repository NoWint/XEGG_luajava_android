






string.toMusic('欢迎使用凌陈内部')
draw.text("",200,150)--显示字体第一个200是左右第二200是上下
draw.text("【凌内部】",100,100)--显示字体第一个200是左右第二200是上下
draw.setColor("#FF7F00")--16色颜色配置
draw.text("版本v1.0.3",100,150)

draw.text("",200,200)--显示字体第一个200是左右第二200是上下
xfcpic="http://cdn.u1.huluxia.com/g4/M01/D8/E8/rBAAdmT1xj-AL8ONAAAqYOZrJ08840.png"
-----悬浮窗




local json =json--调用
local g = {}
g.file = gg.getFile()
g.sel = nil
gqlb={"请先搜索歌曲",}
idb={"1010"}
SN,gc=1,nil
g.config = gg.getFile():gsub("%lua$", "").."cfg"
function bei()
g.data = loadfile("音乐配置"..g.config)
if g.data ~= nil then
g.sel = g.data()
g.data = nil
end
if g.sel == nil then
g.sel = {"","10"}
end
end
bei()




function start(name,sl)
fw=gg.makeRequest("http://music.163.com/api/search/get?s="..name.."&type=1&offset=0&total=true&limit="..sl) return fw end
function play(id,name)
gg.toast("正在播放音乐："..name,true)
gg.playMusic("http://music.163.com/song/media/outer/url?id="..id..".mp3") end

function Play(gqlb,idb)
SN = gg.choice(gqlb,nil,ts) if SN == nil then XGCK =-1 else sn=gg.choice({"播放歌曲","播放并下载"},nil,"歌曲："..gqlb[SN]) if sn == nil then end if sn == 1 then play(idb[SN],gqlb[SN]) end if sn == 2 then
local XEY=gg.makeRequest("http://music.163.com/song/media/outer/url?id="..idb[SN]..".mp3").content local XEY1=gg.getFile():gsub("[^/]+$","")..gqlb[SN]..".mp3" io.open(XEY1,"w"):write(XEY) gg.alert("提示:\n\n音乐已成功下载位置:\n\n"..XEY1) end XGCK=-1 end end

function zjson(jsonr)
local str = jsonr local pattern = "\"[%w]+\":" string.gsub(str, pattern, function(v) if string.find(str, v) then str = string.gsub(str, v, string.gsub(v, "\"", "")) end end) str = string.gsub(str, ":", "=") str = string.gsub(str, "%[", "{") str = string.gsub(str, "%]", "}") local data = "-- WSG PRO 1.0.9(109)\nreturn " .. str local res = load(data)() return res end

function json(con)
res=zjson(con) zd=res.result.songCount pd=go3-zd if pd <= 0 then else go3=zd end ts="《"..go1.."》找到"..zd.."首歌曲，当前显示"..go3.."首" gqlb={} idb={} for i=1,go3 do gqlb[i]=res.result.songs[i].name idb[i]=res.result.songs[i].id
end end
---+音乐配置


function S_Pointer(t_So, t_Offset, _bit)
local function getRanges() local ranges = {} local t = gg.getRangesList('^/data/*.so*$') for i, v in pairs(t) do if v.type:sub(2, 2) == 'w' then table.insert(ranges, v) end end return ranges end local function Get_Address(N_So, Offset, ti_bit) local ti = gg.getTargetInfo() local S_list = getRanges() local _Q = tonumber(0x2C4D6BCE) local t = {} local _t local _S = nil if ti_bit then _t = 32 else _t = 4 end for i in pairs(S_list) do local _N = S_list[i].internalName:gsub('^.*/', '') if N_So[1] == _N and N_So[2] == S_list[i].state then _S = S_list[i] break end end if _S then t[#t + 1] = {} t[#t].address = _S.start + Offset[1] t[#t].flags = _t if #Offset ~= 1 then for i = 2, #Offset do local S = gg.getValues(t) t = {} for _ in pairs(S) do if not ti.x64 then S[_].value = S[_].value & 0xFFFFFFFF end t[#t + 1] = {} t[#t].address = S[_].value + Offset[i] t[#t].flags = _t end end end _S = t[#t].address end return _S end local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit)) return _A end


----动态基址写法配置

function PS() end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
---静态基址写法配置


function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "地址成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "失败") end end end end

--仿XS写法配置

function xqmnb(Search,Modification)
gg.clearResults() gg.setRanges(Search[1].memory) gg.searchNumber(Search[3].value,Search[3].type,false,536870912,0,-1) if gg.getResultCount()==0 then gg.toast(Search[2].name..'开启失败')  return end local Result=gg.getResults(gg.getResultCount()) local sum for index=4,#Search do  sum=0 for i=1,#Result do  if gg.getValues({{address=Result[i].address+Search[index].offset,flags=Search[index].type}})[1].value~=Search[index].lv then Result[i].Usable=true  sum=sum+1 end  end  if sum==#Result then gg.toast(Search[2].name..'开启失败') return end end  local Data,Freeze,Freezes={},{},0  sum=0 for index,value in ipairs(Modification)do for index=1,#Result do if not Result[index].Usable then  local Value={address=Result[index].address+value.offset,flags=value.type,value=value.value,freeze=true} if value.freeze then Freeze[#Freeze+1]=Value Freezes=Freezes+1 else Data[#Data+1]=Value  end  sum=sum+1 end end end gg.setValues(Data) gg.addListItems(Freeze)  if Freezes==0 then gg.toast(Search[2].name..'开启成功,共修改'..sum..'条数据') else gg.toast(Search[2].name..'开启成功,共修改'..sum..'条数据,冻结'..Freezes..'条数据') end gg.clearResults() end



-- 读取内存地址的函数
function readPointer(name, offset, i)
local re = gg.getRangesList(name)  local x64 = gg.getTargetInfo().x64  local va = {[true]=32, [false]=4}  if re[i or 1] then local addr = re[i or 1].start + offset[1]  for i = 2, #offset do addr = gg.getValues({{address=addr, flags=va[x64]}})  if not x64 then addr[1].value = addr[1].value & 0xFFFFFFFF end addr = addr[1].value + offset[i] end return addr end end
-- 修改内存地址的函数
function gg.edits(addr, Table, name)
local Table1 = {{}, {}}  for k, v in ipairs(Table) do local value = {address = addr+v[3], value = v[1], flags = v[2], freeze = v[4]} if v[4] then Table1[2][#Table1[2]+1] = value else Table1[1][#Table1[1]+1] = value end end gg.addListItems(Table1[2]) gg.setValues(Table1[1]) gg.toast((name or "") .. "开启成功, 共修改"..#Table.."个值") end










hzs = {}
local hzs = hzs
local android = import('android.*')
function write(fileName, content)
if file.write(fileName, content) == false then gg.alert("请给框架和修改器 文件储存权限\n否则无法正常运行") os.exit() end
end
function panduan(rec) fille,err = io.open(rec) if fille == nil then return false else return true end end
function pdcf(lujing) rec = "/sdcard/寒天全防参数文件夹/配置文件/"..lujing fille,err = io.open(rec) if fille == nil then return false else return true end end
sleep = gg.sleep
function read(fileName) f = assert(io.open(fileName, 'r')) content = f:read("*all") f:close() return content end
function wtcf(lujing,neirong)
write("/sdcard/寒天全防参数文件夹/配置文件/"..lujing,neirong)
end
function rdcf(lujing)
return read("/sdcard/寒天全防参数文件夹/配置文件/"..lujing)
end
function pmusic(x) if audiokg == "开" then tmp1 = 0 gg.playMusic(x) tmp1 = 1 end end
if pdcf("audio") ~= true then wtcf("audio","开") end
audiokg = rdcf("audio")
function camusic(ress)
tmp1 = 0
if audiokg == "开" then
if panduan("/sdcard/寒天全防参数文件夹/音频/"..ress) == true then
pmusic("/sdcard/寒天全防参数文件夹/音频/"..ress)
tmp1 = 1
else
	download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..ress ,"/sdcard/寒天全防参数文件夹/音频/"..ress)
pmusic("/sdcard/寒天全防参数文件夹/音频/"..ress)
tmp1 = 1
end
end
end
开 = "开" 关 = "关"
function checkimg(tmp)
if panduan("/sdcard/寒天全防参数文件夹/图片/"..tmp) ~= true then
gg.toast("正在下载资源"..tmp.."\n请耐心等待")
download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..tmp,"/sdcard/寒天全防参数文件夹/图片/"..tmp)
end
end
file.getdirs("/sdcard/寒天全防参数文件夹/状态读取/")
ckimg = {
	"dz3logo",
	"pink",
	"blue",
	"check1",
	"check2",
	"exit",
}
for i = 1,#ckimg do
jindu = i
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
jianbian6:setCornerRadius(3)
jianbian6:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbian6:setColors({0xF7487DFF,0xFF8759FF})
jianbian6:setStroke(3,"0xFF00853F")--里面边框宽度和颜色
return jianbian6
end
slctb2 = luajava.loadlayout({
	GradientDrawable,
	color = "#F48FB1",
	cornerRadius = 10
})
function getseekgra()
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(3)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({0xFF8759FF,0xFF0072e3})---按钮
jianbians:setStroke(3,"0xFFFFFF00")--边框宽度和颜色

return jianbians
end
slctb=getseekgra()
slcta = luajava.loadlayout({
	GradientDrawable,
	color = "#282F4B",---选中按钮颜色
	cornerRadius = 20
})
slctc = luajava.loadlayout {
	GradientDrawable,
	color = "#FF0066FF",
	cornerRadius = 8
}
slctd = luajava.loadlayout {
	GradientDrawable,
	color = "#FF0066FF",
	cornerRadius = 8
}
slcte = luajava.loadlayout {
	GradientDrawable,
	color = "#FF0066FF",
	cornerRadius = 12
}
slctf = luajava.loadlayout {
	GradientDrawable,
	color = "#FF0066FF",
	cornerRadius = 12
}
function getSelector3()
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(1)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({0xFF8759FF,0xFFFFFF00})---没用
jianbians:setStroke(0,"0xFF435CFF")--边框宽度和颜色

selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, luajava.loadlayout {
	GradientDrawable,
	color = "#FF0066FF",---没用
	cornerRadius = 12
}) -- 点击时候的背景
selector:addState({
	android.R.attr.state_pressed
}, slctf) -- 没点击的背景
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
hzs.menu = function(sview)
if isswitch then
return false
end
isswitch = true
cebian ={
	LinearLayout,
	id = "侧边",
	visibility = "gone",
	layout_height = "250dp",
	layout_width = "68dp",
	orientation = "vertical",
	background = {
		GradientDrawable,
		color = "#FF0066FF",
		cornerRadius = 10
	},
}
gund=	{LinearLayout,
		orientation="vertical",
		
		
	}
for i=1,#stab do
	gund[#gund+1]={
		LinearLayout,
		id = "jm"..i,
		layout_height = "28dp",
		layout_width = "68dp",
		layout_marginTop = "3dp",
		layout_marginBottom = "3dp",
		background=getSelector(),
		{
			TextView,
			gravity="center",
			text = stab[i][1],
			layout_height = "28dp",
			layout_width = "68dp",
			onClick=function() 切换(i) end
		}}
end
cebian[#cebian+1]={ScrollView,
	layout_height = "190dp",
		layout_width = "68dp",
		gund}
cebian[#cebian+1]={
		ImageView,
		id = "exit",
		src = "/sdcard/寒天全防参数文件夹/图片/exit",
		layout_width = "20dp",
		layout_height = "20dp",
		layout_marginTop = "10dp",
		layout_marginLeft = "14dp",
	}
cebian=luajava.loadlayout(cebian)
for i=1,#stab do
_ENV["layout"..i] = luajava.loadlayout({
	ScrollView,
	fillViewport = "true",
	padding = "10dp",
	id = "layout"..i,
	visibility = "gone",
	layout_width = "250dp",
	layout_height = "250dp",
	orientation = "horizontal",
	{
		LinearLayout,
		id = "layoutm"..i,
		background = getj6(),
		gravity = "top",
		layout_width = "210dp",
		orientation = "vertical",
		gravity = "center_horizontal",
	}
})
end
ckou = {
	LinearLayout,
	id = "chuangk",
	visibility = "gone",
	layout_width = "wrap_content",
	layout_height = "match_parent",
	orientation = "horizontal",
	cebian,
}
for i=1,#stab do
	ckou[#ckou+1]=_ENV["layout"..i]
end
ckou=luajava.loadlayout(ckou)
title = luajava.loadlayout({
	TextView,
	id = "title",
	textColor="#FF0066FF",
	visibility = "gone",
	text = stab[1][2],
	gravity = "center",
	textSize = "24sp",
	layout_marginLeft = "30dp",
	layout_width = "fill_parent",
})
floatWindow = {
	LinearLayout,
	id = "motion",
	layout_width = "wrap_content",
	orientation = "vertical",
	gravity = "center_vertical",
	layout_height = "wrap_content",
	{
		LinearLayout,
		layout_width = "match_parent",
		layout_height = "wrap_content",
		orientation = "horizontal",
		gravity = "center_vertical",
		{
			LinearLayout,
			layout_width = "48dp",
			layout_height = "wrap_content",
			layout_marginLeft = "0dp",
			layout_marginTop = "6dp",
			layout_marginBottom = "2dp",
			gravity = "center", {
				ImageView,
				id = "control",
				background = xfcpic,
				layout_width = "40dp",
				layout_height = "40dp",
			}},
		title,
	},
	ckou
}
local function invoke()
local ok
local RawX, RawY, x, y
mainLayoutParams = getLayoutParams()
floatWindow = luajava.loadlayout(floatWindow)
local function invoke2()
block('start')
for k=1,#stab do
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
control.onClick = function()
隐藏()
end
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
motion.onTouch = hanshu
control.onTouch = hanshu
exit.onTouch = hanshu
for i=1,#stab do
_ENV["jm"..i].onTouch = hanshu
end
end

invoke(swib1,swib2)
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
			_ENV["jm"..i]:setBackground(slctb)
			_ENV["layout"..i]:setVisibility(View.GONE)
		end
		title:setText(stab[当前ui][2])
		_ENV["layout"..当前ui]:setVisibility(View.VISIBLE)
		_ENV["jm"..当前ui]:setBackground(slcta)
		YoYoImpl:with("FadeIn"):duration(200):playOn(_ENV["layout"..当前ui])
	end)
end
显示 = 0
beij = luajava.new(GradientDrawable)
beij:setCornerRadius(1)
beij:setGradientType(GradientDrawable.LINEAR_GRADIENT)
beij:setColors(({0x72A8FFFF,0x72A8FFFF}))
beij:setStroke(0,"0x72A8FFFF")--边框宽度和颜色

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
luajava.runUiThread(function()
control:setBackground(luajava.getBitmapDrawable(xfcpic))
	if tonumber(tostring(cebian:getVisibility())) == 8.0 then
		chuangk:setVisibility(View.VISIBLE)
		cebian:setVisibility(View.VISIBLE)
		title:setVisibility(View.VISIBLE)
		mainLayoutParams.flags = LayoutParams.FLAG_NOT_TOUCH_MODAL
		window:updateViewLayout(floatWindow, mainLayoutParams)
		YoYoImpl:with("SlideInDown"):duration(200):playOn(cebian)
		_ENV["layout"..当前ui]:setVisibility(View.VISIBLE)
		YoYoImpl:with("FadeIn"):duration(800):playOn(_ENV["layout"..当前ui])
		floatWindow:setBackground(beij)
	else
		luajava.runUiThread(function()mainLayoutParams.flags = LayoutParams.FLAG_NOT_FOCUSABLE
		window:updateViewLayout(floatWindow, mainLayoutParams)
		end)

control:setBackground(luajava.getBitmapDrawable(xfcpic))
	title:setVisibility(View.GONE)
	floatWindow:setBackground(beij2)
	chuangk:setVisibility(View.GONE)
	cebian:setVisibility(View.GONE)
	_ENV["layout"..当前ui]:setVisibility(View.GONE)
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

chazhi={} chajv={}
function hzs.seek(name,bian,smin,smax,nows)
_ENV[bian] =nows
thum=getseekgra()
thum:setSize(60, 60)
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
			text = name..":"..nows,
			textColor="#FFFFFF",
			id = luajava.newId(names),
			layout_width = '70dp',
			layout_marginLeft = "5dp",
			layout_marginRight = "0dp",
		},
		{
			SeekBar,
			layout_width = '120dp',
			id=luajava.newId(name.."seekbar"),
			min = truesmin,
			max = truesmax,
			progress=tnows,
			thumb=thum,
			progressHeight="10dp",
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


function hzs.switch(name,func1,func2)
if type(func1) == "table" then gg.alert("出现错误\n如果你是用的是旧版\n请将开头第一个chagan.switch改成hzs.menu") gg.copyText("") os.exit() end
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
			layout_width = '100dp',
			layout_marginLeft = "10dp",
			layout_marginRight = "10dp",
		},
		{
			Switch,
			gravity = "top",
			layout_width = 'match_parent',
			layout_hight = "10dp",
			switchMinWidth = "20dp",
			onCheckedChange = function(Switch,var2,var3)
			if var2 == true then var2 = "开" else var2 = "关" end
			luajava.newThread(function() func() end):start()
			end,

		}}
})

return rest
end
function hzs.edit(name)
_ENV[name] = name..guid()
if not name then name = "点击输入文字" end
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
			EditText,
			gravity = "top",
			hint = name,
			gravity="center",
			id = luajava.newId(_ENV[name]),
			layout_width = 'fill',
			layout_marginLeft = "10dp",
			layout_marginRight = "10dp",
		}}
})

return rest
end
function hzs.radio(radio)
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
	RadioGroup,background = getseekgra(),
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

function hzs.check(cklist)
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
if type(func1) == "table" then gg.alert("出现错误\n如果你是用的是旧版\n请将开头第一个chagan.switch改成hzs.menu") gg.copyText("寒天全防NB666") os.exit() end
if not name then name = "未设置" end
nid = name..guid()
local func = 开关2(nid,func1,func2,nid)
rstt = luajava.loadlayout({
	LinearLayout,
	layout_width = 'wrap_content',
	layout_height = "30dp",
	layout_marginTop = "5dp",
	layout_marginBottom = "5dp",
	layout_marginLeft = "0dp",
	layout_marginRight = "10dp",
	gravity = "center_vertical",
	onClick = function() luajava.newThread(function() func() end):start() end,

	{ImageView,
	id = luajava.newId(nid),
	layout_width = '20dp',
	layout_height = "20dp",
	background = "/sdcard/寒天全防参数文件夹/图片/check1",
	},{
		TextView,
		gravity = "top",
		text = name,
		textColor="#ffffff",
		layout_width = 'wrap_content',
		layout_height = 'wrap_content',
		layout_marginLeft = "4dp",
		layout_marginRight = "5dp",
	}})
rest[#rest+1] = rstt
end
return luajava.loadlayout(rest)
end
function hzs.button(txt,func)
if not txt then txt = "未设置" end
return luajava.loadlayout(
	{
		LinearLayout,
		layout_width = 'fill_parent',
		layout_hight = "wrap_content", {
			LinearLayout,
			layout_width = "fill_parent",
			gravity = "center_horizontal",
			layout_marginRight="10dp",
			layout_marginLeft="10dp",
			layout_marginTop = "5dp",
			layout_marginBottom = "5dp",
			background = getSelector3(),
			onClick = function() luajava.newThread(function() pcall(func) end):start() end,
			{
				TextView,
				text = txt,
				textSize = "16sp",
				layout_width = "wrap_content",
			},
		}})
end
function hzs.text(txt,color,size)
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
function hzs.setedit(name,txt)
txt = tostring(txt)
luajava.runUiThread(function()
	luajava.getIdValue(_ENV[name]):setText(txt)
	end)
end

function hzs.getedit(name)
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
function 开关2(name,func1,func2,nid)
if func1 == nil then func1 = "" end
if func2 == nil then func2 = "" end
if type(func1) == "function" then
return function()
namers = _ENV[name]
if namers ~= "开" then
luajava.runUiThread(function()
luajava.getIdValue(nid):setBackground(luajava.getBitmapDrawable("/sdcard/寒天全防参数文件夹/图片/check2"))
end)
_ENV[name] = "开"
func1()
else
    luajava.runUiThread(function()
	luajava.getIdValue(nid):setBackground(luajava.getBitmapDrawable("/sdcard/寒天全防参数文件夹/图片/check1"))
end)
_ENV[name] = "关"
func2()
end
end
end
end





gg.setConfig("隐藏辅助", 23)
gg.setConfig("运行守护", 3)
gg.setConfig("冻结间隔", 1200)
gg.setConfig("旁路模式", 1)


stab={--菜单名字，大标题
	{"辅助公告","公告"},
	{"防封菜单","防封功能"},
	{"功能菜单","基址功能"},
	{"独家菜单","独家功能"},
	--[[{"全火菜单","PUBG全火功能"},]]
	{"音乐专区","音乐界面"}
}
hzs.menu(
	{
		{
		hzs.switch("  🎈复制\n      官方QQ群🎈",
function() 

QD = gg.alert("QQ已复制","启动","取消","关注QQ")
if QD == 1 then

隐藏()
end
if QD == 3 then 

隐藏()
end
end),	
		    hzs.switch("      选择游戏进程",gg.setProcessX),
hzs.text("凌陈全防\n谢谢你的使用\nyyds-\n稳定全防\n以及频道\n祝你稳定奔放\n需要手动选择游戏进程\n不然游戏没效果哦","#FFFFFF","15sp"),
			
		}, {
hzs.text("防封更新完毕\n更新时间：9月9日","#B82B00FF","15sp"),
hzs.switch("logo防\n[已经更新]",
function()
gg.searchNumber("1245201;1245201;1245201;1245201;56;56;56;56;56", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

local t = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
gg.addListItems(t)
t = nil


revert = gg.getListItems()
local t = gg.getListItems()
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "56"
		v.freeze = false
		v.freezeType = gg.FREEZE_NORMAL
	end
end
gg.addListItems(t)
t = nil

gg.processResume()
	 gg.alert("logo开启成功")
string.toMusic('logo防开启成功')---语音
end),
hzs.switch("大厅全防v1\n[已经更新]",
function()
gg.clearResults()
gg.searchNumber("1245201;1245201;1245201;1245201;56;56;56;56;56", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("5046281", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

local t = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
gg.addListItems(t)
t = nil


revert = gg.getListItems()
local t = gg.getListItems()
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "5046281"
		v.freeze = false
		v.freezeType = gg.FREEZE_NORMAL
	end
end
gg.addListItems(t)
t = nil



gg.clearResults()
gg.searchNumber("7012449;7012449;7012449;7012449;7012449;7012449;7012449;7012449", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

gg.clearResults()
gg.searchNumber("7012449;7012449;7012449;7012449;7012449;7012449;7012449;7012449;7012449", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

local t = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
gg.addListItems(t)
t = nil


gg.clearResults()
gg.searchNumber("7012449;7012449;7012449;7012449;7012449;7012449;7012449;7012449;7012449", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

gg.clearResults()


gg.alert("大厅全防v1开启成功")
string.toMusic('大厅全防v1开启成功')---语音
end),
hzs.switch("大厅全防v2\n[已经更新]",
function()
gg.clearResults()
gg.searchNumber("4194304;4194304;4194304;4194304;4194304;4194304;4194304;4194304;4194304;4194304;4194304", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

gg.clearResults()
gg.searchNumber("4194304;4194304;4194304;4194304;4194304;4194304;4194304;4194304;4194304;4194304;4194304;4194304", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

gg.clearResults()
gg.searchNumber("4194304;4194304;4194304;4194304;4194304;4194304;4194304;4194304;4194304;4194304;4194304;4194304;4194304", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("4194304;4194304;4194304;4194304;4194304;4194304;4194304;4194304;4194304;4194304;4194304;4194304", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

local t = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
gg.addListItems(t)
t = nil


gg.clearResults()
gg.searchNumber("-1677721600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("-1677721600", gg.TYPE_DWORD)

gg.clearResults()
gg.searchNumber("131073", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

gg.clearResults()
gg.searchNumber("131073;131073;131073;131073;131073", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

gg.clearResults()
gg.searchNumber("131073;131073;131073;131073;131073;131073;131073", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

gg.clearResults()
gg.searchNumber("131073;131073;131073;131073;131073;131073;131073;131073", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

gg.clearResults()
gg.searchNumber("131073;131073;131073;131073;131073;131073;131073;131073;131073", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

gg.clearResults()
gg.searchNumber("131073;131073;131073;131073;131073;131073;131073;131073;131073;131073;131073;131073;131073", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

gg.searchNumber("131073;131073;131073;131073;131073;131073;131073;131073;131073;131073;131073;131073;131073;131073", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

gg.clearResults()
gg.searchNumber("1140850688", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

gg.clearResults()
gg.searchNumber("1024", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

gg.clearResults()
gg.searchNumber("1024;100700~999999", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.processResume()

gg.clearResults()
gg.searchNumber("1024;100700~999999;1024;100700~999999", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.processResume()

gg.clearResults()
gg.searchNumber("8836", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

gg.clearResults()
gg.searchNumber("8836;8836", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

gg.clearResults()
gg.searchNumber("8836;8836;8836", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

local t = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
gg.addListItems(t)
t = nil


gg.clearResults()
gg.searchNumber("444", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

gg.clearResults()
gg.searchNumber("444;444;444", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

gg.clearResults()
gg.searchNumber("444;444;444;444;444;444;444", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("444;444;444;444;444;444", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

local t = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
gg.addListItems(t)
t = nil

gg.alert("大厅全防v2开启成功")
string.toMusic('大厅全防v2开启成功')---语音
end),
hzs.switch("登录防\n[己更新]",
function()
so=gg.getRangesList('libUE4.so')[1].start
py=0x1F0C
setvalue(so+py,4,-1)
so=gg.getRangesList('libUE4.so')[1].start
py=0x1EF8
setvalue(so+py,4,-1)
so=gg.getRangesList('libUE4.so')[1].start
py=0x1EC8
setvalue(so+py,4,-1)
so=gg.getRangesList('libUE4.so')[1].start
py=0x1EC0
setvalue(so+py,4,-1)
so=gg.getRangesList('libUE4.so')[1].start
py=0x1EB4
setvalue(so+py,4,-1)
so=gg.getRangesList('libUE4.so')[1].start
py=0x1EA8
setvalue(so+py,4,-1)
so=gg.getRangesList('libUE4.so')[1].start
py=0x1DC0
setvalue(so+py,4,-1)
so=gg.getRangesList('libUE4.so')[1].start
py=0x1DBC
setvalue(so+py,4,-1)
so=gg.getRangesList('libUE4.so')[1].start
py=0x1D94
setvalue(so+py,4,-1)
so=gg.getRangesList('libUE4.so')[1].start
py=0x1D84
setvalue(so+py,4,-1)
so=gg.getRangesList('libUE4.so')[1].start
py=0x1D74
setvalue(so+py,4,-1)
so=gg.getRangesList('libUE4.so')[1].start
py=0x1D64
setvalue(so+py,4,-1)
so=gg.getRangesList('libUE4.so')[1].start
py=0x1D54
setvalue(so+py,4,-1)
so=gg.getRangesList('libUE4.so')[1].start
py=0x1D44
setvalue(so+py,4,-1)
so=gg.getRangesList('libUE4.so')[1].start
py=0x1CF8
setvalue(so+py,4,-1)
so=gg.getRangesList('libUE4.so')[1].start
py=0x1AC4
setvalue(so+py,4,-1)
so=gg.getRangesList('libUE4.so')[1].start
py=0x1AB8
setvalue(so+py,4,-1)
so=gg.getRangesList('libUE4.so')[1].start
py=0x1A6C
setvalue(so+py,4,-1)
so=gg.getRangesList('libUE4.so')[1].start
py=0x1944
setvalue(so+py,4,-1)
so=gg.getRangesList('libUE4.so')[1].start
py=0x1908
setvalue(so+py,4,-1)
so=gg.getRangesList('libUE4.so')[1].start
py=0x18F4
setvalue(so+py,4,-1)
	 gg.alert("登录防开启成功")
string.toMusic('登录防开启成功')---语音
end),
hzs.switch("防环境\n[己更新]",
function()
gg.searchNumber("7012449;7012449;7012449", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.processResume()
gg.processResume()

gg.clearResults()
gg.searchNumber("-516948194", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("516948194", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("516948194", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.processResume()
gg.searchNumber("18562944", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.processResume()
gg.searchNumber("54088", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

local t = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
gg.addListItems(t)
t = nil


revert = gg.getListItems()
local t = gg.getListItems()
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "54088"
		v.freeze = false
		v.freezeType = gg.FREEZE_NORMAL
	end
end
gg.addListItems(t)
t = nil


gg.clearResults()
gg.searchNumber("-2080374783", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("-2080374783", gg.TYPE_DWORD)
gg.processResume()
gg.processResume()

	 gg.alert("防环境开启成功")
string.toMusic('防环境开启成功')---语音
end),
hzs.switch("防检测\n[已经更新]",
function()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("999999", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("999999", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("0",gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("1,701,077,359", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1,701,077,359", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("0",gg.TYPE_FLOAT)
	 gg.alert("防检测开启成功")
string.toMusic('防检测开启成功')---语音
end),

hzs.switch("大厅防追风\n[己更新]",
function()
gg.searchNumber("16384", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.setRanges(gg.REGION_C_DATA)

gg.clearResults()
gg.searchNumber("16384;100000~999996", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

gg.clearResults()
gg.searchNumber("524288", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

gg.clearResults()
gg.searchNumber("524288;524288", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

gg.clearResults()
gg.searchNumber("16384;100000~999996", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

gg.clearResults()
gg.searchNumber("131072", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

gg.clearResults()
gg.searchNumber("131072;888", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

gg.clearResults()
gg.searchNumber("131072;888;131072", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("131072;131072", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

gg.clearResults()
gg.searchNumber("131072;131072;131072", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

gg.clearResults()
gg.searchNumber("131072;131072;131072;131072", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

gg.clearResults()
gg.searchNumber("131072;131072;131072;131072;131072", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("131072;131072;131072;131072;131072;131072", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

gg.clearResults()
gg.searchNumber("131072;131072;131072;131072;131072;131072", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

gg.clearResults()
gg.searchNumber("131072;131072;131072;131072;131072;131072;131072", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

local t = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
gg.addListItems(t)
t = nil


gg.clearResults()
gg.searchNumber("131072;131072;131072;131072;131072;131072;131072;65277", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("65277", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

gg.clearResults()
gg.searchNumber("65277;65277", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

gg.clearResults()
gg.searchNumber("65277;65277;65277;65277;65277;65277", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

local t = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
gg.addListItems(t)
t = nil
	 gg.alert("开启成功")
string.toMusic('开启成功')---语音
end),

hzs.radio({--单选表可无限添加
"      离线区域",---标题
{
"全局离线-开启",
function()
          gg.searchNumber("328,671,808", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
          gg.getResults(100000)
          gg.editAll("10000001", gg.TYPE_DWORD)
          gg.clearResults()
          gg.clearResults()
          gg.setRanges(16384)
          gg.searchNumber("328,671,808", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
          gg.getResults(100000)
          gg.editAll("10000001", gg.TYPE_DWORD)
          gg.clearResults()
          gg.clearResults()
          gg.setRanges(16384)
          gg.searchNumber("328,671,808", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
          gg.getResults(100000)
          gg.editAll("10000001", gg.TYPE_DWORD)
          gg.clearResults()
          gg.clearResults()
          gg.setRanges(16384)
          gg.searchNumber("328,671,808", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
          gg.getResults(100000)
          gg.editAll("10000001", gg.TYPE_DWORD)
          gg.clearResults()
gg.alert("开启成功")
					string.toMusic('开启成功')---语
end
},{
"全局离线-关闭",
function()
gg.setRanges(16384)
          gg.searchNumber("10000001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
          gg.getResults(100000)
          gg.editAll("328,671,808", gg.TYPE_DWORD)
          gg.clearResults()
          gg.setRanges(16384)
          gg.searchNumber("10000001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
          gg.getResults(100000)
          gg.editAll("328,671,808", gg.TYPE_DWORD)
          gg.clearResults()
          gg.setRanges(16384)
          gg.searchNumber("10000001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
          gg.getResults(100000)
          gg.editAll("328,671,808", gg.TYPE_DWORD)
          gg.clearResults()
          gg.setRanges(16384)
          gg.searchNumber("10000001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
          gg.getResults(100000)
          gg.editAll("328,671,808", gg.TYPE_DWORD)
gg.alert("关闭成功")
					string.toMusic('关闭成功')---语

end
}
}),
}, {--第三页
hzs.text("已适应国际服2.8最新版本","#pFF0066FF","13sp"),--空文本可用于换行，sp调整距离

hzs.switch("基址聚点",
function()
	so=gg.getRangesList('libUE4.so')[1].start
py=0x52BFF74
setvalue(so+py,16,8.47963525e-21)--聚点
					gg.alert("基址据点开启成功")
string.toMusic('基址据点开启成功')---语音	
end),
hzs.switch("人物美化",
function()
string.toMusic('需要下载外观三个资源才有效果')
local UE4 = gg.getRangesList("libUE4.so")
    if not UE4 or #UE4 == 0 then
        os.exit()
    end

    local base_pointer = readPointer('libUE4.so', {0xBEBA1D8,0x0,0x340,0x30,0x390,0x0}, 1)
    local pointers = {
        [1] = {pointer = base_pointer + 0x154, name = "初始140012937\n木乃伊1400687\n深渊皇后1406140\n猴子1406327\n黄金木乃伊1405623\n幻彩木乃伊1406891\n满级艳后1406475\n满级法老1406469\n满级血鸦1405870\n满级海王1405983\n满级精灵王1406311\n满级冰王1406152\n黑诡皇1406641\n白诡皇1406638\n血渊圣王1406872\n裁决冥王1406569\n至尊银龙1400779\n金克丝1406140\n五条悟1406244\n明日香1406386\n1406387\n1406388\n祖国人代码1406439\n输入美化代码"},
    }

    local config_path = gg.EXT_FILES_DIR:gsub("%lua$", "") .. "/PUBG配置.ini"
    local config_data = loadfile(config_path)
    local config = config_data and config_data()
    if not config or #config == 0 then
        config = {}
    end
    
    local values = {}
    local names = {}
    
    for i, p in ipairs(pointers) do
        table.insert(names, p.name.."代码:")
        table.insert(values, config[i])
    end
    
    

    local options = gg.prompt(names, values, {"number", "number", "number", "number", "number", "number", "number", "checkbox"})

    if options then
    
        gg.saveVariable(options, config_path)
        
        for i, p in ipairs(pointers) do        
            if i==6 or i==7 or options[i]==""then else
            gg.edits(p.pointer-4, {{options[i], 4, 0}}, p.name)
            end
        end
        
        if options[8] then
        if options[6]==""then else
            gg.edits(pointers[6].pointer-4, {{options[6], 4, 0}}, pointers[6].name)
            end
        if options[7]==""then else
            gg.edits(pointers[7].pointer-4, {{options[7], 4, 0}}, pointers[7].name)
           end
           end
end
     
     end),

			


hzs.switch("枪械防抖",
function()
so=gg.getRangesList('libUE4.so')[1].start
py=0x8567674
setvalue(so+py,16,8.8411673e-21)--防抖
gg.toast("开启成功防抖")
					string.toMusic('枪械防抖开启成功')---语
					end),
hzs.switch("人物广角",
function()
so=gg.getRangesList('libUE4.so')[1].start
py=0x320A9F8--广角
setvalue(so+py,16,1.29)
gg.alert("人物广角开启成功")
string.toMusic('人物广角开启成功')
end),

hzs.switch("枪械无后",
function()
    so=gg.getRangesList('libUE4.so')[1].start
py=0x52C4AD4--无后
setvalue(so+py,16,8.8411673e-21)
gg.alert('枪械无后开启成功')
string.toMusic("枪械无后开启成功")
end),
hzs.switch("自改广角",
function()
local r = gg.prompt({'上帝视角[推荐2]'}, {'1.5'}, {'text'})
if r then
so=gg.getRangesList('libUE4.so')[1].start
py=0x320A9F8
end
setvalue(so+py,16,2)
gg.alert("广角修改成功")
string.toMusic('广角修改成功')
end),


hzs.switch("全图除雾",
function()
so=gg.getRangesList('libUE4.so')[1].start
py=0x7762890
setvalue(so+py,16,8.95671814e-21)
so=gg.getRangesList('libUE4.so')[1].start
py=0x7764300--除雾
setvalue(so+py,16,8.95671814e-21)
so=gg.getRangesList('libUE4.so')[1].start
py=0x7C38430
setvalue(so+py,16,8.95671814e-21)
gg.alert('除雾开启成功')
string.toMusic("开启成功")
end),
hzs.switch("2.8人物上色",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x456750, 0x20, 0x48, 0x3F8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1120}})
gg.toast("人物上色开启成功")
string.toMusic("人物上色开启成功")
end,
function()
string.toMusic("不可关闭")
end),
hzs.switch("枪械特效",
function()
gg.alert("枪械特效开启成功")
string.toMusic('枪械特效开启成功')---语
end),
hzs.switch("自定义锁针",
function()
OP=gg.prompt({'建议240'},{[1]='240'},{[1]='number'})
if OP == nil or OP[1] == '' or OP[1] == '0' then gg.toast("取消")
	else
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x469600,0x38}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = OP[1]}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x469600,0x34}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = OP[1]}})
end
gg.toast("开启成功")
string.toMusic('开启成功')---语
end),
--[[hzs.switch("加速",
function()
OP=gg.prompt({'1～1.9之间'},{[1]='1.2'},{[1]='number'})
if OP == nil or OP[1] == '' or OP[1] == '0' then gg.toast("取消")
else
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0x84}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = OP[1]}})
end
gg.alert("人物加速修改成功")
string.toMusic('人物加速修改成功')---语
end),]]
hzs.switch("基址瞬击",
function()
so=gg.getRangesList('libUE4.so')[1].start--瞬🐔
py=0x84E8E20
setvalue(so+py,16,8.95671814e-21)
gg.alert("基址瞬击开启成功")
string.toMusic('基址瞬击开启成功')---语
end),
hzs.switch("快速落地[自动关闭]",
function()
gg.toast("将于12秒后关闭")
string.toMusic("将于12秒后关闭")
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0x84}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 3}})
gg.sleep(12000)
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0x84}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1}})
string.toMusic('快速落地开启成功')---语
end),
hzs.switch("挥拳加速[开/关]",
function()
so=gg.getRangesList('libUE4.so')[1].start
py=0x84A77F8
setvalue(so+py,16,-3.4564993e10)
string.toMusic('挥拳加速开启成功')---语
end,
function()
so=gg.getRangesList('libUE4.so')[1].start
py=0x84A77F8
setvalue(so+py,16,8.50279631e-21)
string.toMusic('挥拳加速关闭成功')---
end),
hzs.switch("定点飞天[开/关]",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0x48, 0x8, 0x17c}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 0}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0x48, 0x8, 0x184}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 0}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0x460, 0x206}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 99999}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0xE70, 0x160, 0x148, 0x0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 6}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0x84}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 0.15}})
so=gg.getRangesList('libUE4.so')[1].start
py=0x84A77F8
setvalue(so+py,16,-3.4564993e10)
string.toMusic("定点飞天开启成功")---语音
end,
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0x48, 0x8, 0x17c}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0x48, 0x8, 0x184}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 443}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0x460, 0x206}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 8192}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0xE70, 0x160, 0x148, 0x0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0x84}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1}})
so=gg.getRangesList('libUE4.so')[1].start
py=0x84A77F8
setvalue(so+py,16,8.50279631e-21)
string.toMusic("定点飞天关闭成功")
end),
hzs.switch("人物高跳[开/关]",
function()
OP=gg.prompt({'443到4000'},{[1]='2600'},{[1]='number'})
	if OP == nil or OP[1] == '' or OP[1] == '0' then gg.toast("取消")
		else
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0x48, 0x8, 0x17c}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 6}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0x48, 0x8, 0x184}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = OP[1]}})
end
string.toMusic("人物高跳开启成功")---语音
end,
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0x48, 0x8, 0x17c}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0x48, 0x8, 0x184}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 443}})

local tt = {0x3A1D8, 0x0, 0x84}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0x48, 0x8, 0x1D8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 8192}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0xE70, 0x160, 0x148, 0x0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1}})
----libUE4.so:bss+0x49C948+0xF8+0x38
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x49C948, 0xF8, 0x38}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = -980}})
string.toMusic("人物高跳关闭成功")
end),
hzs.switch("人物踏空[开/关]",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0x460, 0x206}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 999999}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0x48, 0x8, 0x184}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 800}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0x528}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 999}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0x84}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 0.1}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0xE70, 0x160, 0x148, 0x0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 8}})
so=gg.getRangesList('libUE4.so')[1].start
py=0x84A77F8
setvalue(so+py,16,-3.4564993e10)
string.toMusic("人物踏空开启成功")---语音
end,
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0x460, 0x206}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 8192}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0x48, 0x8, 0x184}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 443}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0x528}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1.40129846e-45}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0x84}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0xE70, 0x160, 0x148, 0x0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1}})
so=gg.getRangesList('libUE4.so')[1].start
py=0x84A77F8
setvalue(so+py,16,8.50279631e-21)
string.toMusic("人物踏空关闭成功")
end),
hzs.switch("子弹大小",
function()
OP=gg.prompt({'10到100'},{[1]='15'},{[1]='number'})
	if OP == nil or OP[1] == '' or OP[1] == '0' then gg.toast("取消")
		else
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0x25E0, 0xF78}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = r[1]}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0x25E0, 0xF7C}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = r[1]}})


local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0x25E0, 0xF80}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = r[1]}})
end
string.toMusic("子弹大小开启成功")---语音
end),

hzs.switch("人物大小",
function()
local r = gg.prompt({'自改人物大小[可改小可改大]'}, {'1.0'}, {'text'})
if r then

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0x458, 0x194}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = r[1]}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0x458, 0x198}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = r[1]}})


local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0x458, 0x19C}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = r[1]}})
end
string.toMusic("人物大小开启成功")---语音
end),
hzs.switch("快速换弹",
function()
local t = {"libanogs.so:bss", "Cb"}
local tt = {0x1B80}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = -16777218, freeze = true}})
gg.toast("开启成功")
string.toMusic("开启成功")---语音
end),
hzs.switch("人物跳远[开/关]",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0x460, 0x206}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 999999}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0xE70, 0x160, 0x148, 0x0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 8}})
gg.toast("人物跳远开启成功")
string.toMusic("人物跳远开启成功")
end,
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0x460, 0x206}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 8192}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0xE70, 0x160, 0x148, 0x0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1}})
gg.toast("人物跳远已关闭")
string.toMusic('人物跳远已关闭')
gg.toast("人物跳远关闭成功")
string.toMusic("人物跳远关闭成功")
end),
hzs.switch("枪械大小",
function()
local r = gg.prompt({'枪械大小[原值1]'}, {'1.0'}, {'text'})
if r then


local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0x25E0, 0x580}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = r[1]}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0x25E0, 0x584}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = r[1]}})


local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0x25E0, 0x588}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = r[1]}})
end
string.toMusic("枪械大小开启成功")---语音
end),
hzs.switch("击中特效",
function()
	OP=gg.prompt({'改10到9999\n改10为还原'},{[1]='9999'},{[1]='number'})
	if OP == nil or OP[1] == '' or OP[1] == '0' then gg.toast("取消")
		else
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x460150, 0x30, 0x488, 0x568, 0x10}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = OP[1]}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x460150, 0x30, 0x488, 0x568, 0x50}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = OP[1]}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x460150, 0x30, 0x488, 0x568, 0x90}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = OP[1]}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x460150, 0x30, 0x488, 0x568, 0xD0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = OP[1]}})
gg.alert("开启成功")
end
string.toMusic("击中特效开启成功")---语音
end),
hzs.radio({--单选表可无限添加
"      PUBG加速区域",---标题
{
"人物加速-开启",
function()
so=gg.getRangesList('libUE4.so')[1].start
py=0x8675E3C
setvalue(so+py,16,-3.4564993e10)--加速开
gg.alert("人物加速开启成功")
					string.toMusic('人物加速开启成功')---语
end
},{
"人物加速-关闭",
function()
so=gg.getRangesList('libUE4.so')[1].start
py=0x8675E3C
setvalue(so+py,16,8.50279631e-21)--加速关
gg.alert("人物加速关闭成功")
					string.toMusic('人物加速关闭成功')---语
end
}
}),
},{--第三页
hzs.text("独家功能已适应2.8国际服64位","#FF2A62FF","13sp"),--空文本可用于换行，sp调整距离


hzs.switch("全图除树\n除草",
function()
	local t = {"libUE4.so:bss", "Cb"}
local tt = {0x45C4C8, 0x34}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 0.45}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x45C4C8, 0x38}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 0.45}})
string.toMusic('全图除树除草开启成功')---语
end),
hzs.switch("电音",
function()
	so=gg.getRangesList("libUE4.so")[1].start
py=0x399704c
setvalue(so+py,4,10)
string.toMusic('电音开启成功')---语
end),
hzs.switch("破解xdz",
function()
local t = {"libzoel-native.so", "Cd"}
local tt = {0xD400}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 6}})

local t = {"libzoel-native.so", "Cd"}
local tt = {0xD404}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 6}})

local t = {"libzoel-native.so", "Cd"}
local tt = {0xD408}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 6}})
string.toMusic('破解成功')---语
end),
},
--[[{--第三页
hzs.text("全火已适应2.8国际服64位","#FFFFFF","13sp"),--空文本可用于换行，sp调整距离
hzs.switch("人物路飞",
function()
qmnb = {
{["memory"] = 32},
{["name"] = "站立向前"},
{["value"] = 5.821421146392822, ["type"] = 16},
{["lv"] = 25.46935272216797, ["offset"] = 28, ["type"] = 16},
}
qmxg = {
{["value"] = 150, ["offset"] = 0, ["type"] = 16},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "蹲下向上"},
{["value"] = 18.38787841796875, ["type"] = 16},
{["lv"] = 4.135903555803204E-25, ["offset"] = 24, ["type"] = 16},
}
qmxg = {
{["value"] = 150, ["offset"] = 0, ["type"] = 16},
}
xqmnb(qmnb)
string.toMusic('站立路飞蹲下路飞开启成功')---语
end),
hzs.switch("快速落地[自动关闭]",
function()
gg.toast("将于12秒后关闭")
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0x84}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 3}})
gg.sleep(12000)
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0x84}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1}})
string.toMusic('快速落地开启成功')---语
end),
hzs.switch("挥拳加速[开/关]",
function()
so=gg.getRangesList('libUE4.so')[1].start
py=0x84A77F8
setvalue(so+py,16,-3.4564993e10)
string.toMusic('挥拳加速开启成功')---语
end,
function()
so=gg.getRangesList('libUE4.so')[1].start
py=0x84A77F8
setvalue(so+py,16,8.50279631e-21)
string.toMusic('挥拳加速关闭成功')---
end),
hzs.switch("定点飞天[开/关]",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0x48, 0x8, 0x17c}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 0}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0x48, 0x8, 0x184}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 0}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0x460, 0x206}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 99999}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0xE70, 0x160, 0x148, 0x0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 6}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0x84}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 0.15}})
so=gg.getRangesList('libUE4.so')[1].start
py=0x84A77F8
setvalue(so+py,16,-3.4564993e10)
string.toMusic("定点飞天开启成功")---语音
end,
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0x48, 0x8, 0x17c}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0x48, 0x8, 0x184}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 443}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0x460, 0x206}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 8192}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0xE70, 0x160, 0x148, 0x0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0x84}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1}})
so=gg.getRangesList('libUE4.so')[1].start
py=0x84A77F8
setvalue(so+py,16,8.50279631e-21)
string.toMusic("定点飞天关闭成功")
end),
hzs.switch("人物高跳[开/关]",
function()
OP=gg.prompt({'443到4000'},{[1]='2600'},{[1]='number'})
	if OP == nil or OP[1] == '' or OP[1] == '0' then gg.toast("取消")
		else
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0x48, 0x8, 0x17c}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 6}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0x48, 0x8, 0x184}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = OP[1]}})
end
string.toMusic("人物高跳开启成功")---语音
end,
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0x48, 0x8, 0x17c}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0x48, 0x8, 0x184}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 443}})
string.toMusic("人物高跳关闭成功")
end),
hzs.switch("人物踏空[开/关]",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0x460, 0x206}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 999999}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0x48, 0x8, 0x184}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 800}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0x528}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 999}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0x84}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 0.1}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0xE70, 0x160, 0x148, 0x0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 8}})
so=gg.getRangesList('libUE4.so')[1].start
py=0x84A77F8
setvalue(so+py,16,-3.4564993e10)
string.toMusic("人物踏空开启成功")---语音
end,
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0x460, 0x206}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 8192}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0x48, 0x8, 0x184}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 443}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0x528}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1.40129846e-45}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0x84}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0xE70, 0x160, 0x148, 0x0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1}})
so=gg.getRangesList('libUE4.so')[1].start
py=0x84A77F8
setvalue(so+py,16,8.50279631e-21)
string.toMusic("人物踏空关闭成功")
end),
hzs.switch("子弹大小",
function()
OP=gg.prompt({'10到100'},{[1]='15'},{[1]='number'})
	if OP == nil or OP[1] == '' or OP[1] == '0' then gg.toast("取消")
		else
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0x1A0, 0x8, 0xF78}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = OP[1]}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0x1A0, 0x8, 0xF7C}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = OP[1]}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0x1A0, 0x8, 0xF80}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = OP[1]}})
end
string.toMusic("子弹大小开启成功")---语音
end),
hzs.switch("枪械地震",
function()
OP=gg.prompt({'10到100'},{[1]='50'},{[1]='number'})
	if OP == nil or OP[1] == '' or OP[1] == '0' then gg.toast("取消")
		else
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0xD90, 0x50, 0x7B8, 0xC04}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = OP[1]}})
end
string.toMusic("枪械地震开启成功")---语音
end),
hzs.switch("人物跳远[开/关]",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0x460, 0x206}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 999999}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0xE70, 0x160, 0x148, 0x0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 8}})
string.toMusic("人物跳远开启成功")---语音
end,
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0x460, 0x206}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 8192}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0xE70, 0x160, 0x148, 0x0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1}})
string.toMusic("人物跳远关闭成功")
end),
hzs.switch("枪械大小",
function()
OP=gg.prompt({'1到10'},{[1]='3'},{[1]='number'})
	if OP == nil or OP[1] == '' or OP[1] == '0' then gg.toast("取消")
		else
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0x1A0, 0x8, 0x580}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = OP[1]}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0x1A0, 0x8, 0x584}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = OP[1]}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0x1A0, 0x8, 0x588}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = OP[1]}})
end
string.toMusic("枪械大小开启成功")---语音
end),
hzs.switch("击中特效",
function()
OP=gg.prompt({'改10到9999\n改10为还原'},{[1]='9999'},{[1]='number'})
	if OP == nil or OP[1] == '' or OP[1] == '0' then gg.toast("取消")
		else
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x460150, 0x30, 0x488, 0x568, 0x10}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = OP[1]}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x460150, 0x30, 0x488, 0x568, 0x50}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = OP[1]}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x460150, 0x30, 0x488, 0x568, 0x90}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = OP[1]}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x460150, 0x30, 0x488, 0x568, 0xD0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = OP[1]}})
end
string.toMusic("击中特效开启成功")---语音
end),
},]]{--第五页
hzs.switch('关闭音乐[所有音乐]',
function()
string.toMusic('音乐关闭成功')
end),
hzs.switch('搜索音乐\n[VIP播放不了]',
function()
search = gg.prompt({
"输入要搜索的歌曲\n可加上歌手名字",
"设置显示数量(数字)",
},g.sel,{
"text",
})
if not search then return end
gg.saveVariable(search,g.config)
bei()
go1=search[1]
go3=search[2]
jg=start(go1,go3)
if jg.code == 200 then
fh=jg.content
fh=json(fh)
--print(fh)
Play(gqlb,idb)
else
function inspect()
gg.alert("访问网络异常，错误代码：\n\n"..jg.code)
end
if not pcall(inspect) then print("网络异常，请先连接上网络") os.exit() end
end
XGCK=-1
end),
hzs.switch('热门音乐\n[可循环]',
function()
Obtain=gg.makeRequest("https://api.uomg.com/api/rand.music?sort=热歌榜&format=json").content muchen=Obtain:match('url":"(.-)","picurl') gg.playMusic(muchen)
end),
hzs.switch("歌曲：起风了\n[原唱]",
function() 
gg.playMusic("https://link.hhtjim.com/163/1330348068.mp3")
end),
hzs.switch("歌曲：起风了\n[纯音乐]",
function() 
gg.playMusic("https://link.hhtjim.com/163/1939685534.mp3")
end),
hzs.switch("歌曲：凄美地",
function() 
gg.playMusic("https://link.hhtjim.com/163/436346833.mp3")
end),
hzs.switch("歌曲：可不可以",
function() 
gg.playMusic("https://link.hhtjim.com/163/553755659.mp3")
end),
hzs.switch("歌曲：红色高跟鞋",
function() 
gg.playMusic("https://link.hhtjim.com/163/1959190717.mp3")
end),
hzs.switch("歌曲：偏爱",
function() 
gg.playMusic("https://link.hhtjim.com/163/1955039633.mp3")
end),
hzs.switch("歌曲：一笑江湖",
function() 
gg.playMusic("https://link.hhtjim.com/163/2050215361.mp3")
end),
hzs.switch("歌曲：Shadow",
function() 
gg.playMusic("https://link.hhtjim.com/163/1949606307.mp3")
end),
hzs.switch("歌曲：武家坡",
function() 
gg.playMusic("https://link.hhtjim.com/163/1891431677.mp3")
end),
hzs.switch("歌曲：纪念",
function() 
gg.playMusic("https://link.hhtjim.com/163/1864789443.mp3")
end),
hzs.switch("歌曲：向云端",
function() 
gg.playMusic("https://link.hhtjim.com/163/2049512697.mp3")
end),
}
})



--倒计时(ret.vip)
gg.sleep(2000)
bloc = luajava.getBlock()
bloc('join')