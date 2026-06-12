
-- 把以上代码复制到你脚本最前面即可
material={"animation","appbar","badge","behavior","bottomappbar","bottomnavigation","bottomsheet","button","canvas","card","checkbox","chip","circularreveal","color","datepicker","dialog","divider","drawable","elevation","expandable","floatingactionbutton","imageview","internal","math","navigation","navigationrail","progressindicator","radiobutton","resources","ripple","shadow","shape","slider","snackbar","stateful","switchmaterial","tabs","textfield","textview","theme","timepicker","tooltip","transformation","transition",}
local path="com.google.android.material."
import (path.."*")
for _,v in pairs(material) do
  import(path..v..".*")
end
local json = json
local banben=("com.kiloo.subwaysurf")
function Anti_module()
while true do
local SOMOD=gg.getRangesList("libil2cpp.so")
if SOMOD[1]==nil then 
gg.toast("正在等待打开游戏")
gg.toast("正在等待打开游戏")
gg.setProcess(""..banben.."")
else
gg.setProcess(""..banben.."")
gg.toast("正在开启防环境")
function MR_MkPointer(SONC,NCFW,PYL,TYPE,VALUE,NAME,DJ)
local Somod=gg.getRangesList(SONC)[1]
if Somod==nil then
gg.alert(NAME..'开启失败\n━━━━━━━━━━━━━━━\n错误原因:未找到相关内存\n解决方法:请重新选择游戏进程\n━━━━━━━━━━━━━━━')
else
function S_Pointer(t_So, t_Offset, _bit)
	local function getRanges()
		local ranges = {}
		local t = gg.getRangesList('^/data/*.so*$')
		for i, v in pairs(t) do
			if v.type:sub(2, 2) == 'w' then
				table.insert(ranges, v)
			end
		end
		return ranges
	end
	local function Get_Address(N_So, Offset, ti_bit)
		local ti = gg.getTargetInfo()
		local S_list = getRanges()
		local t = {}
		local _t
		local _S = nil
		if ti_bit then
			_t = 32
		else
			_t = 4
		end
		for i in pairs(S_list) do
			local _N = S_list[i].internalName:gsub('^.*/', '')
			if N_So[1] == _N and N_So[2] == S_list[i].state then
				_S = S_list[i]
				break
			end
		end
		if _S then
			t[#t + 1] = {}
			t[#t].address = _S.start + Offset[1]
			t[#t].flags = _t
			if #Offset ~= 1 then
				for i = 2, #Offset do
					local S = gg.getValues(t)
					t = {}
					for _ in pairs(S) do
						if not ti.x64 then
							S[_].value = S[_].value & 0xFFFFFFFF
						end
						t[#t + 1] = {}
						t[#t].address = S[_].value + Offset[i]
						t[#t].flags = _t
					end
				end
			end
			_S = t[#t].address
		end
		return _S
	end
	local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit))
	return _A
end
time=os.clock()
local DZT = S_Pointer({SONC, NCFW},{0x0})
local PY_offsets = PYL
for _,MR in pairs(PY_offsets) do
gg.addListItems({{address = DZT+MR, flags = TYPE, value = VALUE, freeze = DJ}})
end
local time=string.sub(os.clock()-time,0,5)
gg.toast(NAME..'️开启成功\n当前进程名称:'..gg.getTargetInfo().label..'\n当前进程包名:'..gg.getTargetPackage()..'\n总共耗时:'..time..'秒')
end
end
			
			
MR_MkPointer("libtersafe2.so","Cd",{0x8,0xC,0x10,0x14,0x3C,0x40,0x58,0x60,0x74,0x78,0x7C,0x84,0xA8,0xAC,0xB0,0xB4,0xB8,0x128,0x12C,0x130,0x134,0x200,0x204,0x208},4,-1,"过ACE",true)
io.open("/sdcard/.xa","w+"):write([[
22804
Var #B2BDCF00|b2bdcf00|4|ffffffff|1|0|0|0|r--p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3f00
Var #B2BDCF14|b2bdcf14|4|ffffffff|1|0|0|0|r--p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3f14
Var #B2BDCF24|b2bdcf24|4|ffffffff|1|0|0|0|r--p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3f24
Var #B2BDCF28|b2bdcf28|4|ffffffff|1|0|0|0|r--p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3f28
Var #B2BDCF3C|b2bdcf3c|4|ffffffff|1|0|0|0|r--p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3f3c
Var #B2BDCF4C|b2bdcf4c|4|ffffffff|1|0|0|0|r--p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3f4c
Var #B2BDCF50|b2bdcf50|4|ffffffff|1|0|0|0|r--p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3f50
Var #B2BDCF64|b2bdcf64|4|ffffffff|1|0|0|0|r--p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3f64
Var #B2BDCF74|b2bdcf74|4|ffffffff|1|0|0|0|r--p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3f74
Var #B2BDCF78|b2bdcf78|4|ffffffff|1|0|0|0|r--p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3f78
Var #B2BDCF8C|b2bdcf8c|4|ffffffff|1|0|0|0|r--p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3f8c
Var #B2BDCF9C|b2bdcf9c|4|ffffffff|1|0|0|0|r--p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3f9c
Var #B2BDCFA0|b2bdcfa0|4|ffffffff|1|0|0|0|r--p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3fa0
Var #B2BDCFB4|b2bdcfb4|4|ffffffff|1|0|0|0|r--p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3fb4
Var #B2BDCFC4|b2bdcfc4|4|ffffffff|1|0|0|0|r--p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3fc4
Var #B2BDCFC8|b2bdcfc8|4|ffffffff|1|0|0|0|r--p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3fc8
Var #B2BDCFDC|b2bdcfdc|4|ffffffff|1|0|0|0|r--p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3fdc
Var #B2BDCFEC|b2bdcfec|4|ffffffff|1|0|0|0|r--p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3fec
Var #B2BDCFF0|b2bdcff0|4|ffffffff|1|0|0|0|r--p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3ff0
gg.loadList("/sdcard/.防行为",gg.LOAD_VALUES)
os.remove("/sdcard/.防行为")
]])
gg.alert("开启成功")
string.toMusic("开启成功")
break
end
gg.sleep(500)
end
end
gg.alert('欢迎使用euro')
zdfhjmk=gg.prompt({"进入euro主界面","进入自动防环境\n[1.自动选择进程]\n[2.自动刷新模块]\n[3.自动执行防环境]\n[4.完成以上操作后进入euro主界面]"}, nil, {"checkbox","checkbox"})
if zdfhjmk == nil then 
string.toMusic('欢迎老板使用euro')
elseif zdfhjmk[1]==true then
string.toMusic('欢迎老板使用euro')
elseif zdfhjmk[2]==true then
Anti_module()--调用
string.toMusic('欢迎老板使用euro全防为您保驾护航')
gg.alert("自动防环境开启成功")
end			
			
			function Ax(FUNCTIONADD,TYPE,VALUE)
local SOMOD=gg.getRangesList("il2cpp.so")
if SOMOD[1]==nil then _error() else
gg.setValues({{address=SOMOD[1].start+FUNCTIONADD,flags=TYPE,value=VALUE}})
gg.setValues({{address=SOMOD[1].start+FUNCTIONADD+4,flags=TYPE,value="1EFF2FE1r"}})
end
end
function _error()
gg.alert([[
   开启失败


   失败原因：进程存储太小！
   
   
   解决方案：刷新进程后重启开启
]])
end
--[[
<!DOCTYPE html>
<html lang="en">
 
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }
 
    body {
      display: flex;
      justify-content: center;
      align-items: center;
      min-height: 100vh;
      background-color: #ffffff;
    }
 
    .box {
      position: relative;
      width: 300px;
      height: 600px;
      background: #666;
      border-radius: 50px;
    }
 
    .box::before {
      content: '';
      position: absolute;
      inset: 3px;
      background: #000;
      border-radius: 48px;
    }
 
    .inner {
      position: absolute;
      inset: 3px;
      background: url('https://cdn.ytechb.com/wp-content/uploads/2022/09/iPhone-14-Pro-Wallpaper-purple.webp');
      background-size: cover;
      background-position: center;
      border-radius: 48px;
      border: 10px solid #000;
      display: flex;
      justify-content: center;
      opacity: 1;
      transition: 0.5s;
    }
 
    .box:hover .inner {
      opacity: 1;
    }
 
    .btn {
      position: absolute;
      top: 110px;
      left: -2px;
      width: 3px;
      height: 26px;
      border-top-left-radius: 4px;
      border-bottom-left-radius: 4px;
      background: radial-gradient(#ccc, #666, #222);
      z-index: 10;
    }
 
    .btn.btn2 {
      top: 160px;
      height: 40px;
    }
 
    .btn.btn3 {
      top: 220px;
      height: 40px;
    }
 
    .rightSlideBtn {
      position: absolute;
      top: 170px;
      right: -2px;
      width: 3px;
      height: 70px;
      border-top-right-radius: 4px;
      border-bottom-right-radius: 4px;
      background: radial-gradient(#ccc, #666, #222);
      z-index: 10;
    }
 
    .island-popup {
      position: absolute;
      width: 90px;
      height: 25px;
      top: 10px;
      background: #000;
      border-radius: 20px;
      transition: 0.5s ease-in-out;
    }
 
    .island-popup:hover {
      width: 200px;
      height: 25px;
    }
 
    .island-popup.active {
      width: 250px;
      height: 60px;
 
    }
  </style>
</head>
 
<body>
  <div class="box">
    <div class="inner">
      <div class="island-popup">
        <div class="content">
          <div class="details">
            <div class="imgBx">
              <img src="" alt="">
            </div>
          </div>
          <div class="action">
 
          </div>
        </div>
      </div>
    </div>
    <i class="btn btn1"></i>
    <i class="btn btn2"></i>
    <i class="btn btn3"></i>
    <i class="rightSlideBtn"></i>
  </div>
 
  <script>
    let popup = document.querySelector('.island-popup')
 
    popup.onclick = function () {
      popup.classList.toggle('active')
    }
  </script>
</body>
 
</html>


--]]






local baseWindow = require 'floatingWindowManager2'
import 'com.google.android.material.imageview.ShapeableImageView'
import 'com.google.android.material.shape.CornerFamily'
import 'android.widget.LinearLayout'
import 'android.widget.Button'
import 'com.google.android.material.materialswitch.MaterialSwitch'
import 'com.google.android.material.slider.Slider'
import 'com.google.android.material.button.MaterialButton'
import 'com.google.android.material.appbar.AppBarLayout'
import 'com.google.android.material.textfield.TextInputEditText'
import 'com.google.android.material.checkbox.MaterialCheckBox'
import 'com.google.android.material.dialog.MaterialAlertDialogBuilder'
import 'com.google.android.material.tabs.TabLayout'
import 'androidx.viewpager2.widget.ViewPager2'
import 'com.google.android.material.tabs.TabLayoutMediator'
import 'com.google.android.material.bottomsheet.BottomSheetDialog'
import 'com.google.android.material.bottomsheet.BottomSheetBehavior'
import 'com.google.android.material.snackbar.Snackbar'




material={"animation","appbar","badge","behavior","bottomappbar","bottomnavigation","bottomsheet","button","canvas","card","checkbox","chip","circularreveal","color","datepicker","dialog","divider","drawable","elevation","expandable","floatingactionbutton","imageview","internal","math","navigation","navigationrail","progressindicator","radiobutton","resources","ripple","shadow","shape","slider","snackbar","stateful","switchmaterial","tabs","textfield","textview","theme","timepicker","tooltip","transformation","transition",}
local path="com.google.android.material."
import (path.."*")
for _,v in pairs(material) do
  import(path..v..".*")
end
baseWindow:darkMode()
function Blur(view, radius)--radius大于0小于25
  view:measure(View.MeasureSpec:makeMeasureSpec(0, View.MeasureSpec.UNSPECIFIED), View.MeasureSpec:makeMeasureSpec(0, View.MeasureSpec.UNSPECIFIED))
  view:layout(0, 0, view:getMeasuredWidth(), view:getMeasuredHeight())  
  local width, height = view:getMeasuredWidth(), view:getMeasuredHeight()
  local bitmap = Bitmap:createBitmap(width, height, Bitmap.Config.ARGB_8888) 
  local canvas = Canvas(bitmap)
  view:draw(canvas)
  local renderScript = RenderScript:create(context)
  local input = Allocation:createFromBitmap(renderScript, bitmap)
  local output = Allocation:createTyped(renderScript, input:getType())
  local blurScript = ScriptIntrinsicBlur:create(renderScript, Element:U8_4(renderScript))
  blurScript:setRadius(radius)
  blurScript:setInput(input)
  blurScript:forEach(output)
  output:copyTo(bitmap)
  view:setBackgroundDrawable(BitmapDrawable(context:getResources(), bitmap))
  renderScript:destroy()
  input:destroy()
  output:destroy()
  blurScript:destroy()
end
function  BN(FUNCTIONADD,TYPE,VALUE)
local SOMOD=gg.getRangesList("il2cpp.so")
if SOMOD[1]==nil then _error() else
gg.setValues({{address=SOMOD[1].start+FUNCTIONADD,flags=TYPE,value=VALUE}})
gg.setValues({{address=SOMOD[1].start+FUNCTIONADD+4,flags=TYPE,value="1EFF2FE1r"}})
end
end

function _error()
gg.alert([[
   开启失败


   失败原因：进程存储太小！
   
   
   解决方案：刷新进程后重启开启
]])
end
ms = { }
function setvalue ( add , value , falgs , dj )
	local WY = { } WY [ 1 ] = { } WY [ 1 ].address = add WY [ 1 ].value = value WY [ 1 ].flags = falgs
	if dj == true then
		WY [ 1 ].freeze = true gg.addListItems ( WY )
	else
		gg.setValues ( WY )
	end
end

menu ={}
name ={}
id = 0
play = false
song = ""

_G_ = {
	function()
	local searchMusic = gg.prompt({
			"歌曲•歌手",
			"列表•限制",
		},{"","10"},{
			"text",
			"text",
		})
		if not searchMusic then gg.setVisible(false) Main() elseif
			searchMusic[1] == "" then gg.alert("请输入歌曲/歌手！") _G_[1]()
			else
			local results = gg.makeRequest("http://music.163.com/api/search/get?s="..searchMusic[1].."&type=1&offset=0&total=true&limit="..searchMusic[2])
			if results.code == 200 then
				n=1
				for v,k in results.content:gmatch('"id":(.-),"name":"(.-)"') do
					if n%4 == 1 then
						menu[n/4+1] = v..";"..k
					end
					if n%4 == 2 then
						menu[n/4+1] = menu[n/4+1]..";"..k
					end
					n=n+1
				end
				_G_[2]()
				else
				local s = gg.alert("请求异常，请检查网络……","返回","退出")
				if not s then gg.setVisible(false) Main() end
				if s == 1 then os.exit() end
				if s == 2 then _G_[1]() end
			end
		end
	end,
	function()
		if #menu == 0 then gg.alert("没有搜索记录") Main() else
			for n=1,#menu do
				name[n] = menu[n]:gsub("[0-9]+;",""):gsub(";","\n歌手：")
			end
			local mu = gg.choice(name,0,"歌单")
			if not mu then _G_[1]() else
				song = name[mu]
				local sn=gg.choice({"播放","查看歌词"},nil,"歌曲："..name[mu])
				if not sn then _G_[1]() end
				if sn == 1 then
					id = menu[mu]:match("(.-);")
					gg.toast("正在播放音乐："..name[mu],true)
					gg.playMusic("http://music.163.com/song/media/outer/url?id="..id..".mp3")
					play = true
				end
				if sn == 2 then id = menu[mu]:match("(.-);") song = name[mu] _G_[3]() end
			end
		end
	end,
	function()
		if id == 0 then gg.alert("未有播放记录") Main() else
			local results = gg.makeRequest("http://music.163.com/api/song/media?id="..id).content
			rs = results:match('"lyric":"(.-)","code'):gsub("\\n","\n"):gsub("[[!-z]+]","")
			gg.alert("\n《"..song:gsub("\n","》\n").."\n\n"..rs)
			gg.setVisible(false)
		end
	end,
	function()
		if play then
			play = false
			gg.toast("正在停止播放...")
			for i=1,100 do
				gg.playMusic("stop")
				gg.playMusic("stop")
				gg.playMusic("stop")
				gg.playMusic("stop")
				gg.playMusic("stop")
				gg.playMusic("stop")
			end
			gg.toast("播放已停止")
			else
			gg.toast("无正在播放的音乐")
		end
	end,
	function()
		gg.setVisible(false)
		if play then _G_[4]() end
		LSP()
	end
}
function WTYY()
	local emo = gg.choice({
		"搜索歌曲",
		"搜索列表",
		"显示歌词",
		"暂停播放",
	},nil,"菠萝音乐功能")
	if not emo then gg.setVisible(false) end
	if emo then
		_G_[emo]()
	end
end

function SearchWrite(Search, Write, Type, Name)
    local time=os.clock()
    gg.clearResults()
    gg.setVisible(false)
    gg.searchNumber(Search[1][1], Type)
    local count = gg.getResultCount()
    local result = gg.getResults(count)
    gg.clearResults()
    local data = {}
    local base = Search[1][2] 
   if (count > 0) then
        for i, v in ipairs(result) do
            v.isUseful = true
        end
        for k=2, #Search do
            local tmp = {}
            local offset = Search[k][2] - base
            local num = Search[k][1]          
            for i, v in ipairs(result) do
                tmp[#tmp+1] = {}
                tmp[#tmp].address = v.address + offset
                tmp[#tmp].flags = v.flags
            end 
            tmp = gg.getValues(tmp)
            for i, v in ipairs(tmp) do
                if ( tostring(v.value) ~= tostring(num) ) then
                    result[i].isUseful = false
                end
            end
        end
  
        for i, v in ipairs(result) do
            if (v.isUseful) then
                data[#data+1] = v.address
            end
        end
        if (#data > 0) then
           gg.toast("搜索到"..#data.."条数据")
           local t = {}
           local base = Search[1][2]
           for i=1, #data do
               for k, w in ipairs(Write) do
                   offset = w[2] - base
                   t[#t+1] = {}
                   t[#t].address = data[i] + offset
                   t[#t].flags = Type
                   t[#t].value = w[1]
                   if (w[3] == true) then
                       local item = {}
                       item[#item+1] = t[#t]
                       item[#item].freeze = true
                       gg.addListItems(item)
                   end
               end
           end
           gg.setValues(t)
           local time=string.sub(os.clock()-time,0,5)
          gg.toast("开启成功 已修改:"..#t.."条数据 本次启动耗时:"..time.."秒")
          gg.addListItems(t)
        else
            gg.toast("开启失败未搜索到任何数据", false)
            return false
        end
    else
        gg.toast("开启失败未搜索到任何数据")
        return false
    end
end
function hexTo255(rgbHex)
local rgbHex = string.format("%x", rgbHex)
local red = tonumber(rgbHex:sub(3, 4), 16)
local green = tonumber(rgbHex:sub(5, 6), 16)
local blue = tonumber(rgbHex:sub(7, 8), 16)
return {red,green,blue}
end


if tonumber(device.width)==nil then
dwidth=1340
dheight=2300
else
dwidth=device.width
dheight=device.height
end

function particle(co1,co2,cor)
local webView = luajava.webView(function(webView)
	webView:loadData([[<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">

    <title></title>
    <style>
    *{
    /* 初始化 */
    margin: 0;
    padding: 0;
}
body{
    /* 100%窗口高度 */
    height: 100vh;
    /* 溢出隐藏 */
    overflow: hidden;
}
.container{
    /* 绝对定位 */
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    /* 把背景图像扩展至足够大，以使背景图像完全覆盖背景区域 */
    background-size: cover;
    /* 定位背景图像为正中间 */
    background-position-x: center;
    /* 执行动画：动画名称 时长 线性的 无限次播放 */
    animation: animateBg 5s linear infinite;
}
span{
    position: absolute;
    top: 50%;
    left: 50%;
    width: 4px;
    height: 4px;
    background-color: #000;
    border-radius: 50%;
    /* 发光效果 */
    box-shadow: 0 0 0 4px ]]..co1..[[,
    0 0 0 8px ]]..co1..[[,
    0 0 20px ]]..co2..[[;
    /* 执行动画 */
    animation: animate 3s linear infinite;
}
/* 拖尾效果 */
span::before{
    content: "";
    position: absolute;
    top: 50%;
    transform: translateY(-50%);
    width: 100px;
    height: 3px;
    background: linear-gradient(90deg,]]..cor..[[,transparent);
}
/* 接下来分别为每一个流星设置位置、动画延迟时间、动画时长 */
span:nth-child(1){
    top: 0;
    right: 0;
    /* initial关键字用于设置CSS属性为它的默认值 */
    left: initial;
    /* 动画延迟时间 */
    animation-delay: 0s;
    /* 动画时长 */
    animation-duration: 1s;
}
span:nth-child(2){
    top: 0;
    right: 80px;
    left: initial;
    animation-delay: 0.2s;
    animation-duration: 3s;
}
span:nth-child(3){
    top: 80px;
    right: 0;
    left: initial;
    animation-delay: 0.4s;
    animation-duration: 2s;
}
span:nth-child(4){
    top: 0;
    right: 180px;
    left: initial;
    animation-delay: 0.6s;
    animation-duration: 1.5s;
}
span:nth-child(5){
    top: 0;
    right: 400px;
    left: initial;
    animation-delay: 0.8s;
    animation-duration: 2.5s;
}
span:nth-child(6){
    top: 0;
    right: 600px;
    left: initial;
    animation-delay: 1s;
    animation-duration: 3s;
}
span:nth-child(7){
    top: 300px;
    right: 0;
    left: initial;
    animation-delay: 1.2s;
    animation-duration: 1.75s;
}
span:nth-child(8){
    top: 0;
    right: 700px;
    left: initial;
    animation-delay: 1.4s;
    animation-duration: 1.25s;
}
span:nth-child(9){
    top: 0;
    right: 1000px;
    left: initial;
    animation-delay: 0.75s;
    animation-duration: 2.25s;
}
span:nth-child(10){
    top: 0;
    right: 450px;
    left: initial;
    animation-delay: 2.75s;
    animation-duration: 2.25s;
}

/* 定义动画 */
/* 背景缩放动画 */
@keyframes animateBg {
    0%,100%{
        transform: scale(1);
    }
    50%{
        transform: scale(1.2);
    }
}
/* 流星划过动画 */
@keyframes animate {
    0%{
        transform: rotate(315deg) translateX(0);
        opacity: 1;
    }
    90%{
        opacity: 1;
    }
    100%{
        transform: rotate(315deg) translateX(-400px);
        opacity: 0;
    }
}
    </style>
</head>

<body>
    <div class="container">
        <!-- 10个span -->
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
    </div>
</body>

</html>]], 'text/html', 'UTF-8')
	webView:setBackgroundColor(0x0)
	end)
return webView
end



parti=particle(
	"rgba(103,80,164,0.1)",
	"rgba(103,80,164,1)",
	"#6750A4")
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

SN = {} huiz = function() end
window = context:getSystemService("window") -- 获取窗口管理器
local function panduan(rec) fille,err = io.open(rec) if fille == nil then return false else return true end end

function checkimg2(tmp,ii)
if panduan("/sdcard/苏宁m3/图片/"..tmp) ~= true then
gg.toast("正在下载资源"..ii.."/"..#ckimg2.."\n请耐心等待")
luajava.download("https://peizhi.by.4yym.cn/"..tmp,"/sdcard/苏宁m3/图片/"..tmp)
else
if file.length("/sdcard/苏宁m3/图片/"..tmp) <= 1 then
gg.toast("正在下载资源"..ii.."/"..#ckimg2.."\n请耐心等待")
luajava.download("https://peizhi.by.4yym.cn/"..tmp,"/sdcard/苏宁m3/图片/"..tmp)
end
end
if panduan("/sdcard/苏宁m3/图片/"..tmp) ~= true then
gg.toast("正在下载资源"..ii.."/"..#ckimg2.."\n请耐心等待")
luajava.download("https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/"..tmp,"/sdcard/苏宁m3/图片/"..tmp)
else
if file.length("/sdcard/苏宁m3/图片/"..tmp) <= 1 then
gg.toast("正在下载资源"..ii.."/"..#ckimg2.."\n请耐心等待")
luajava.download("https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/"..tmp,"/sdcard/苏宁m3/图片/"..tmp)
end
end
end
ckimg2 = {
	"盗用资源死妈哦",
"euro.zip",
}
for i = 1,#ckimg2 do
jindu = i
checkimg2(ckimg2[i],i)
gg.toast("正在加载资源")
end
if panduan("/sdcard/苏宁m3/图片/euro.zip")~=true then
	file.unzip("/sdcard/苏宁m3/图片/euro.zip","/sdcard/苏宁m3/图片/")
end
unzip("/storage/emulated/0/苏宁m3/图片/euro.zip","/sdcard/苏宁m3/图片/")---解压
function kglxy()--流星雨开关
if lxy == 0 then
luajava.getIdView("liuxingyu1"):setImageDrawable(lxytp2)
webv_ : setVisibility (View.GONE)
lxy = 1
elseif lxy == 1 then
luajava.getIdView("liuxingyu1"):setImageDrawable(lxytp1)
webv_ : setVisibility (View.VISIBLE)
lxy = 0
end
end
local typeface = import("android.graphics.Typeface")
local FontPath = "/sdcard/苏宁m3/图片/原神字体.ttf"--字体路径
local font = typeface:createFromFile(FontPath)
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
local function 获取图片2(txt)
txt = string.url(txt,"de")
ntxt = string.sub(string.gsub(txt,"/","-"),-10,-1)
if string.find(tostring(txt),"http") ~= nil then
if panduan("/sdcard/苏宁m3/图片/"..ntxt) == false then
file.download(txt,"/sdcard/苏宁m3/图片/"..ntxt)
else
	if file.length("/sdcard/苏宁m3/图片/"..ntxt) <= 1 then
file.download(txt,"/sdcard/苏宁m3/图片/"..ntxt)
end
end
txt = "/sdcard/苏宁m3/图片/"..ntxt
end
return luajava.getBitmap(txt)
end
local function getBit(x)
return 获取图片2("/sdcard/苏宁m3/图片/"..x)
end
local reso=context:getResources()
local function getP(bitm,radi)
local lixin = RoundedBitmapDrawableFactory:create(reso,获取图片2(bitm))
lixin:setCornerRadius(radi)
lixin:setAntiAlias(true)
return lixin
end
local function getrp(bitm,radi)
local lixin = RoundedBitmapDrawableFactory:create(reso,getBit(bitm))
lixin:setCornerRadius(radi)
lixin:setAntiAlias(true)
return lixin
end
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
					
	namelist = {}
floattable = {}
param1 = {}
function newfloat(name,func1,func2)
if not _ENV[name] and not floattable[name] then
floattable[name]=1
local func = 开关(name.."k",func1,func2)

local function invoke(name,func1,func2)
if not name then name = "未设置" end
nameid = name..guid()
local ok
local RawX, RawY, x, y
nameid1 = name..guid()
if not namelist[name] then namelist[name]=false end
if namelist[name]~=false then clclcl="#7534BC53" else clclcl="#88000000"  end
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
			color = "#7534BC53",
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
			textColor="#ffffff",
			layout_width = "30dp",
			layout_height = "30dp",
			textSize="8sp",
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
else
luajava.runUiThread(function()
	_ENV[name]:setVisibility(View.VISIBLE)
end)
end

end

function hidefloat(name)
if not _ENV[name] then else
luajava.runUiThread(function()
	_ENV[name]:setVisibility(View.GONE)
end)
end end


local function 获取图片(txt)
txt = string.url(txt,"de")
ntxt = string.sub(string.gsub(txt,"/","-"),-10,-1)
if string.find(tostring(txt),"http") ~= nil then
if panduan("/sdcard/苏宁m3/图片/"..ntxt) == false then
file.download(txt,"/sdcard/苏宁m3/图片/"..ntxt)
else
	if file.length("/sdcard/苏宁m3/图片/"..ntxt) <= 1 then
file.download(txt,"/sdcard/苏宁m3/图片/"..ntxt)
end
end
txt = "/sdcard/苏宁m3/图片/"..ntxt
end
return luajava.getBitmapDrawable(txt)
end
local function getRes(x)
return 获取图片("/sdcard/苏宁m3/图片/"..x)
end
local YoYoImpl = luajava.getYoYoImpl()
local vibra = context:getSystemService(Context.VIBRATOR_SERVICE)
local function getLayoutParams2()
LayoutParams2 = WindowManager.LayoutParams
layoutParams2 = luajava.new(LayoutParams2)
if (Build.VERSION.SDK_INT >= 26) then -- 设置悬浮窗方式
layoutParams2.type = LayoutParams2.TYPE_APPLICATION_OVERLAY
else
	layoutParams2.type = LayoutParams2.TYPE_PHONE
end

layoutParams2.format = PixelFormat.RGBA_8888 -- 设置背景
layoutParams2.flags = LayoutParams2.FLAG_NOT_TOUCH_MODAL -- 焦点设置Finish
layoutParams2.gravity = Gravity.CENTER -- 重力设置
layoutParams2.width = LayoutParams2.MATCH_PARENT -- 布局宽度
layoutParams2.height = LayoutParams2.MATCH_PARENT -- 布局高度

return layoutParams2
end
local function getLayoutParams()
LayoutParams = WindowManager.LayoutParams
layoutParams = luajava.new(LayoutParams)
if (Build.VERSION.SDK_INT >= 26) then -- 设置悬浮窗方式
layoutParams.type = LayoutParams.TYPE_APPLICATION_OVERLAY
else
	layoutParams.type = LayoutParams.TYPE_PHONE
end

layoutParams.format = PixelFormat.RGBA_8888 -- 设置背景
layoutParams.flags = LayoutParams.FLAG_NOT_TOUCH_MODAL -- 焦点设置Finish
layoutParams.gravity = Gravity.TOP|Gravity.LEFT -- 重力设置
layoutParams.width = LayoutParams.WRAP_CONTENT -- 布局宽度
layoutParams.height = LayoutParams.WRAP_CONTENT -- 布局高度

return layoutParams
end

显2=false
function 隐藏2()
显2=true
chuangk:setVisibility(View.GONE)
control2:setVisibility(View.GONE)
smallc:setVisibility(View.VISIBLE)
end
function 显示2()
显2=false
mainLayoutParams.x=20
window:updateViewLayout(floatWindow, mainLayoutParams)

if 显示==1 then
	chuangk:setVisibility(View.VISIBLE)
	smallc:setVisibility(View.GONE)
else
	control2:setVisibility(View.VISIBLE)
	smallc:setVisibility(View.GONE)
	隐藏()
end
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
if mainLayoutParams.x<=0 then
	mainLayoutParams.x=0
end
mainLayoutParams.y = tonumber(y) + (event:getRawY() - RawY)
window:updateViewLayout(floatWindow, mainLayoutParams)
elseif Action == MotionEvent.ACTION_UP then
mainLayoutParams.x = tonumber(x) + (event:getRawX() - RawX)
if mainLayoutParams.x<=0 then
	mainLayoutParams.x=0
	if 显示==0 and 显2==false then 隐藏2() end
end
if mainLayoutParams.x>=20 then
	if 显2==true then 显示2() end
end
mainLayoutParams.y = tonumber(y) + (event:getRawY() - RawY)
window:updateViewLayout(floatWindow, mainLayoutParams)
end
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
function getVerticalBG(gtvb1,gtvb3,gtvb4,gtvb5)
if not gtvb4 then gtvb4 = 0 gtvb5 = 0xff000000 end
local jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(gtvb3)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors(gtvb1)
jianbians:setStroke(gtvb4,gtvb5)--边框宽度和颜色
return jianbians
end
mainLayoutParams = getLayoutParams()

import("android.media.AudioManager")
audi = context:getSystemService("audio")
audiotype = {
	AudioManager.STREAM_ALARM, --手机闹铃的声音
	AudioManager.STREAM_MUSIC, --手机音乐的声音
	AudioManager.STREAM_NOTIFICATION, --系统提示的通知
	AudioManager.STREAM_RING, --电话铃声的声音
	AudioManager.STREAM_euroSTEM, --手机系统的声音
	AudioManager.STREAM_VOICE_CALL, --语音电话的声音
	AudioManager.STREAM_DTMF, --DTMF音调的声音
--AudioManager.STREAM_BLUETOOTH_SCO,
}
yinl = {}
for i = 1,#audiotype do
yinl[i] = {}
yinl[i].type = audiotype[i]
yinl[i].min = audi:getStreamMinVolume(audiotype[i])
yinl[i].max = audi:getStreamMaxVolume(audiotype[i])
yinl[i].now = audi:getStreamVolume(audiotype[i])
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
import'android.hardware.*';
---@type android.hardware.SensorEventListener
local sensor = luajava.createProxy('android.hardware.SensorEventListener', {
	onSensorChanged = functions.debounce(function()
		if 摇一摇==false then return 0 end
		if qhkai~=0  then
			qhkai=0
			luajava.runUiThread(function()
	floatWindow:setVisibility(View.VISIBLE)
	YoYoImpl:with("FadeIn"):duration(300):playOn(floatWindow)
			end)
			else
			qhkai=1
luajava.newThread(function()
luajava.runUiThread(function()
	YoYoImpl:with("FadeOut"):duration(300):playOn(floatWindow)
	end)
gg.sleep(400)
luajava.runUiThread(function()
	floatWindow:setVisibility(View.GONE)
end)
draw.remove()
gg.toast("隐藏")
end):start()
			
		end
	end,500)
})

摇一摇=false
dexloader=dex.loadfile('/sdcard/苏宁m3/图片/classes3.dex')
MySensorManager = dexloader:loadClass('yaocn.rlyun.yaoyiyao.MySensorManager')


luajava.runOnUiThread(function()
	MySensorManager(context, sensor)
end)
SN.controlWater = function(control,time)
luajava.runUiThread(function()
	import "android.animation.ObjectAnimator"
	ObjectAnimator():ofFloat(control,"scaleX", {
		1, 0.8, 0.9, 1
	}):setDuration(time):start()
	ObjectAnimator():ofFloat(control,"scaleY", {
		1,0.8,0.9,1
	}):setDuration(time):start()
	end) end
SN.controlRotation2 = function(control, time)
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
SN.controlRotation1 = function(control, time)
	luajava.runUiThread(function()
		import "android.view.animation.Animation"
		import "android.animation.ObjectAnimator"
		xuanzhuandonghua = ObjectAnimator:ofFloat(control, "rotation", {
			0, -360
		})
		xuanzhuandonghua:setRepeatCount(0)
		xuanzhuandonghua:setRepeatMode(Animation.RESTART)
		xuanzhuandonghua:setDuration(time)
		xuanzhuandonghua:start()
	end)
end
SN.controlRotation3 = function(control, to1,to2)
	luajava.runUiThread(function()
		import "android.view.animation.Animation"
		import "android.animation.ObjectAnimator"
		xuanzhuandonghua = ObjectAnimator:ofFloat(control, "rotation", {
			to1, to2
		})
		xuanzhuandonghua:setRepeatCount(0)
		xuanzhuandonghua:setRepeatMode(Animation.RESTART)
		xuanzhuandonghua:setDuration(3)
		xuanzhuandonghua:start()
	end)
end
--[[SN.controlBig = function(control,time)
	luajava.runUiThread(function()
		import "android.animation.ObjectAnimator"
		ObjectAnimator():ofFloat(control,"scaleX", {
			0, 0.4, 0.7, 1
		}):setDuration(time):start()
		ObjectAnimator():ofFloat(control,"scaleY", {
			0, 0.4, 0.7, 1
		}):setDuration(time):start()
	end) end--]]

SN.controlSmall = function(control,time)
	luajava.runUiThread(function()
		import "android.animation.ObjectAnimator"
		ObjectAnimator():ofFloat(control,"scaleX", {
			1, 0.7, 0.4, 0
		}):setDuration(time):start()
		ObjectAnimator():ofFloat(control,"scaleY", {
			1, 0.7, 0.4, 0
		}):setDuration(time):start()
	end) end




SN.controlBig = function(control,time)
	luajava.runUiThread(function()
  import "android.animation.ObjectAnimator"
  ObjectAnimator():ofFloat(control,"scaleX",{0, 0.4, 0.7, 1}):setDuration(time):start()
  ObjectAnimator():ofFloat(control,"scaleY",{0, 0.4, 0.7, 1}):setDuration(time):start()
end) end 


SN.controlSmallX = function(control,time)
luajava.runUiThread(function()
	import "android.animation.ObjectAnimator"
	ObjectAnimator():ofFloat(control,"scaleX", {
		1, 0.7, 0.4, 0
	}):setDuration(time):start()
end) end


SN.controlBigX = function(control,time)
luajava.runUiThread(function()
	import "android.animation.ObjectAnimator"
	ObjectAnimator():ofFloat(control,"scaleX", {
		0, 0.4, 0.7, 1
	}):setDuration(time):start()
	end) end

        	
SN.controlFlip = function(control,time)
	luajava.runUiThread(function()
		import "android.view.animation.Animation"
		import "android.animation.ObjectAnimator"
		xuanzhuandonghua = ObjectAnimator:ofFloat(control, "rotationY", {
			0, 360
		})
		xuanzhuandonghua:setRepeatCount(0)
		xuanzhuandonghua:setRepeatMode(Animation.REVERSE)
		xuanzhuandonghua:setDuration(time)
		xuanzhuandonghua:start()
	end) end

xiaoyi={ }
xiaoyi.controlFlip2 = function(control,time)
	luajava.runUiThread(function()
  import "android.view.animation.Animation"
  import "android.animation.ObjectAnimator"
  xuanzhuandonghua = ObjectAnimator:ofFloat(control, "rotationY", {0, 360})
  xuanzhuandonghua:setRepeatCount(1)
  xuanzhuandonghua:setRepeatMode(Animation.REVERSE)
  xuanzhuandonghua:setDuration(time)
  xuanzhuandonghua:start()
end
 )
 end

SN.controlWater = function(control,time)
luajava.runUiThread(function()
	import "android.animation.ObjectAnimator"
	ObjectAnimator():ofFloat(control,"scaleX", {
		1, 0.8, 0.9, 1
	}):setDuration(time):start()
	ObjectAnimator():ofFloat(control,"scaleY", {
		1,0.8,0.9,1
	}):setDuration(time):start()
	end) end
SN.controlWater2 = function ( control , time )
	luajava.runUiThread ( function ( )
			import "android.animation.ObjectAnimator"
			ObjectAnimator ( ) : ofFloat ( control , "scaleX" , { 1 , 1.1 , 0.9 , 1 } ) : setDuration ( time ) : start ( )
			ObjectAnimator ( ) : ofFloat ( control , "scaleY" , { 1 , 0.9 , 1.1 , 1 } ) : setDuration ( time ) : start ( )
		end

	)
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
gg.setVisible(false)
function guid()
seed = {
	'e','1','2','3','4','5','6','7','8','9','a','b','c','d','e','f'
}
tb = {}
for i = 1,32 do
table.insert(tb,seed[math.random(1,16)])
end
sid = table.concat(tb)
return string.format('%s%s%s',
	string.sub(sid,1,8),
	string.sub(sid,10,12),
	string.sub(sid,21,22))
end

function getJMselect()
local selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, getRes('jian'))
selector:addState({
	-android.R.attr.state_pressed
}, getVerticalBG({0x00ffffff,0x00ffffff},20,2,0xffE8AC3E))
return selector
end
local isswitch
YoYoImpl = luajava.getYoYoImpl()
SN.menu = function(views)

forsview = views

isswitch = true
local layout = {
		'ui.ViewPager',
		layout_height='match_parent',
		layout_width='match_parent',
		focusable="false",
		focusableInTouchMode="false",
	}
	cebian={
		LinearLayout,
		layout_height="wrap_content",
		layout_width="60dp",
		orientation="horizontal",
		gravity="center_horizontal",
		
		}
		jian=getRes('jian')
		jmselect={}
		slcta={} slctb={}
	for i=1,#stab do
	slcta[i]=getVerticalBG({0xff6750A4,0xff6750A4},10,0,0xaa242937)
		slctb[i]=getVerticalBG({0xFF1D1B20,0xFF1D1B20},10,0,0xaa232323)
		_ENV["jm"..i]=luajava.loadlayout({
			LinearLayout,
			layout_height="50dp",
			layout_width="57dp",
			gravity="center",
			orientation="vertical",
			onClick=function() 
			--xiaoyi.controlFlip2(_ENV["jm"..i]  , 600 )	
			SN.controlWater(_ENV["jm"..i]  , 600 )			
			--SN.controlWater2(_ENV["jm"..i]  , 600 )
		    SN.controlRotation1(_ENV["jm"..i]  , 800 )			
			切换(i) end,
			
			{TextView,
			Typeface=font,	
			id="jm"..i.."t",
			text=stab[i],
			textSize="15sp",
			textColor="#1C1C1C",
			background=slctb[i],
			padding={"10dp","6dp","10dp","6dp"},
			}
		})
		cebian[#cebian+1]=_ENV["jm"..i]
		tmp={
			LinearLayout,
			layout_height="wrap_content",
			layout_width="match_parent",
			orientation="vertical",
			
		}
		
	
				
		for k = 1,#views[i] do
if type(views[i][k]) == "userdata" then
tmp[#tmp+1] = views[i][k]
else
	tmp[#tmp+1] = views[i][k]["view"]
end
end
		_ENV["layout"..i]={
			ScrollView,
			--orientation="vertical",
			layout_height="match_parent",
			layout_width="match_parent",
			tmp,
			--onTouch=Gundong,
			padding={"8dp","3dp","8dp","3dp"},
		}
		layout[#layout + 1] =_ENV["layout"..i]
	end
	
	当前ui=1
	--jm1t:setTextColor(0xffE8AC3E)
--	jm1text:setTextColor(控件颜色)
		
	local ui = require('ui')
	ViewPager = ui.ViewPager(layout)
	luajava.setInterface(ViewPager, 'addOnPageChangeListener', 
		{onPageSelected=function(view)
		for i=1,#stab do
			_ENV["jm"..i .."t"]:setTextColor(0xFFFFFFFF)
			_ENV["jm"..i .."t"]:setBackground(slctb[i])
			
		end
		view=tonumber(string.sub(view,1,1))
		当前ui=view+1
		_ENV["jm"..view+1 .."t"]:setTextColor(0xffffffff)
_ENV["jm"..view+1 .."t"]:setBackground(slcta[view+1])	
		end})
				

	
	ckou={FrameLayout,
		layout_height='match_parent',
		layout_width='match_parent',
		id=luajava.newId("ckbg"),
		background=newbg({0xFF141118,0xFF141118},0,0xffffffff,0,0,35,35),
		{LinearLayout,
			id='webv_',
			layout_height='match_parent',
		layout_width='match_parent',
		},
		{
		LinearLayout,
		layout_height="5dp",
		layout_width="match_parent",
		padding={"2.5dp","0dp","2.5dp","0dp"},
		{
		LinearLayout,
		layout_height="match_parent",
		layout_width="match_parent",
		background=newbg({0xFF141118,0xFF141118},0,0xffffffff,0,0,0,0),
		}
		},
		{
		LinearLayout,
		layout_height="match_parent",
		layout_width="match_parent",
		elevation='3dp',
		layout_marginLeft='3dp',
		layout_marginRight='3dp',
		layout_marginBottom='3dp',
		layout_marginTop='3dp',
		padding={"0dp","0dp","0dp","50dp"},
		ViewPager,
	},
	{FrameLayout,
			layout_height='wrap_content',
		layout_width='match_parent',
		layout_gravity = 'bottom',
			background="#00000000",
			padding={"5dp","0dp","5dp","0dp"},
			orientation = "horizontal",
				{HorizontalScrollView,
			layout_width='wrap_content',
			layout_height='wrap_content',
			background="#00000000",
			cebian,
			}
			
			}
	}



extralis={LinearLayout,
	layout_height="wrap_content",
	layout_width="match_parent",
	id=luajava.newId("extralist"),
	orientation="vertical",
	}
for k,v in pairs(ewsv) do
	extralis[#extralis+1]=ewsv[k]
end
function topSelect()
local selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, getVerticalBG({0x22161616,0x22161616},20))
selector:addState({
	-android.R.attr.state_pressed
}, empty)
return selector
end
ckdx=true
topbar = luajava.loadlayout({
	LinearLayout,
	layout_width="fill_parent",
	layout_height="35dp",
	background=getCorner({0xffffffff,0xffffffff},15,0,0xff232323,35,35,0,0),
	onClick=function() end,
	onTouch=hanshu,
	orientation="vertical",
	{LinearLayout,
	layout_width="match_parent",
	layout_height="match_parent",
	
	{LinearLayout,
	layout_width="35dp",
	layout_height="match_parent",
	gravity="center",
	{
			FrameLayout,
			
			background=getVerticalBG({0xffE6E6E6,0xffE6E6E6},90),
			layout_width = "20dp",
			layout_height = "20dp",
	gravity="center",
			onClick = 隐藏,
			onTouch = hanshu,
				{
			LinearLayout,
			layout_gravity="center",
			background=getVerticalBG({0xff2C2C2C,0xff2C2C2C},8),
			layout_width = "11dp",
			layout_height = "2.2dp",
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
			src = getRes("xz_gg"),
			id = "lxytp2",
			background=getVerticalBG({0xffE6E6E6,0xffE6E6E6},90),
			layout_width = "20dp",
			layout_height = "20dp",
			layout_marginRight = "5dp",
			 onClick= function() luajava.newThread(function() gg.alert(公告内容) end):start() end,
        onTouch = hanshu,
		}
	},
	{LinearLayout,
	layout_width="wrap_content",
	layout_height="match_parent",
	gravity="center",
	{
			LinearLayout,
			id='cvv',
			layout_width='80dp',
			layout_height='match_parent',
			gravity="center",
		}
	},
	{LinearLayout,
		layout_width="fill_parent",
		layout_marginLeft='-80dp',
		layout_weight=1,
		layout_height="35dp",
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
		id='tops',
		background=getVerticalBG({控件颜色,控件颜色},20)
		
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
			src = getRes("heis"),
			background=getVerticalBG({0xffE6E6E6,0xffE6E6E6},90),
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
			src = getRes("heix"),
			background=getVerticalBG({0xffE6E6E6,0xffE6E6E6},90),
			layout_width = "20dp",
			layout_height = "20dp",
			layout_marginRight = "5dp",
			onClick = 隐藏,
			onTouch = hanshu,
		}
	}
	
	},
			
})


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
	{
	LinearLayout,
	id = "chuangk",
	visibility = "gone",
	layout_height='match_parent',
	layout_width='match_parent',
	orientation = "vertical",
	elevation="8dp",
		layout_marginLeft='8dp',
		layout_marginRight='8dp',
		layout_marginBottom='8dp',
		layout_marginTop='8dp',
		background=newbg({0xffffffff,0xffffffff},0,0xffffffff,45,45,45,45),
		topbar,

			
		{
	FrameLayout,
	layout_height='match_parent',
	layout_width='match_parent',
	orientation = "vertical",
	ckou,
	
	}

},
	{LinearLayout,
	visibility="gone",
	id=luajava.newId("extra"),
	layout_height='match_parent',
	layout_width='match_parent',
	orientation="vertical",
	background=getVerticalBG({0xffffffff,0xffffffff},25,2,0xaa161616),
	
		{LinearLayout,
			layout_width="match_parent",
			layout_height="40dp",
			background=getCorner({0xff161616,0xff161616},25,nil,nil,25,25,0,0),
			onClick=function() end,
			onTouch=hanshu,
			gravity="center_vertical",
			{ImageView,
				id=luajava.newId("backv"),
				layout_height="34dp",
				layout_width="34dp",
				src=getRes("opoback"),
				background=getVerticalBG({0x00ffffff,0x00ffffff},360,10,0xffffffff),
				padding="8dp",
				onClick=关闭窗口,
				layout_marginLeft="10dp",
			},
			{TextView,
			Typeface=font,
				id=luajava.newId("extrat"),
				text="标题",
				layout_height="match_parent",
				layout_width="match_parent",
				layout_weight=1,
				gravity="center",
			},
		{ImageView,
				id=luajava.newId("suov"),
				layout_height="34dp",
				layout_width="34dp",
				src=getRes("heix"),
				background=getVerticalBG({0x00ffffff,0x00ffffff},360,10,0xffffffff),
				padding="10dp",
				onClick=隐藏,
				layout_marginRight="10dp",
			}
		},
	{ScrollView,
	padding="10dp",
	layout_height="match_parent",
	layout_width="match_parent",
	extralis
	}
	},
	{
		ImageView,
		id = "control2",
		background = 获取图片(悬浮窗图标),
		layout_width = "40dp",
		layout_height = "40dp",
		onTouch = hanshu,
		onClick = 隐藏,
	},{FrameLayout,
	id="smallc",
	visibility="gone",
	onClick=显示2,
	onTouch=hanshu,
	layout_height="45dp",
	layout_width="25dp",
	gravity="center",
	background=getCorner({0x88161616,0x88161616},12,0,0xff232323,0,35,35,0),
			{FrameLayout,
	layout_width="match_parent",
	layout_height="match_parent",
	gravity="center",
		{
			ImageView,
			padding = "5dp",
			src = getRes("heir"),
			layout_width = "wrap_content",
			layout_height = "wrap_content",
			layout_marginRight = "5dp",
		},
		{
			ImageView,
			padding = "5dp",
			src = getRes("heir"),
			layout_width = "wrap_content",
			layout_height = "wrap_content",
			layout_marginRight = "8dp",
		}
	},
	},{FrameLayout,
	id='reme',
	layout_height='match_parent',
	layout_width='match_parent',
	elevation='3dp',
	{
			LinearLayout,
			id="sf",
			padding = "2dp",
			layout_width = "30dp",
			layout_height = "30dp",
			layout_marginRight = "0dp",
			layout_marginBottom = "0dp",
			layout_gravity = "right|bottom",
			onClick = function() end,
			onTouch = suofang,
		}}
}

local function invoke()
local ok
local RawX, RawY, x, y
mainLayoutParams = getLayoutParams()
mainLayoutParams.x = 10
mainLayoutParams.y = dheight/4
floatWindow = luajava.loadlayout(floatWindow)
local function invoke2()
window:addView(floatWindow, mainLayoutParams)
webv_:addView(parti)
end
local runnable = luajava.getRunnable(invoke2)
local handler = luajava.getHandler()
handler:post(runnable)

local isMove


end

invoke(swib1,swib2)
gg.setVisible(false)
for i=1,#stab do
			_ENV["jm"..i .."t"]:setTextColor(0xFFFFFFFF)
			_ENV["jm"..i .."t"]:setBackground(slctb[i])
		end
		_ENV["jm1t"]:setTextColor(0xffffffff)
_ENV["jm1t"]:setBackground(slcta[1])	
	--	_ENV["jm1text"]:setTextColor(控件颜色)
luajava.getIdView("backv"):setColorFilter(控件颜色)
luajava.getIdView("suov"):setColorFilter(控件颜色)
--luajava.getIdView("tosearch"):setHintTextColor(控件颜色)

隐藏()


setOnExitListener(function()
	
	tuichu=1
	luajava.setFloatingWindowHide(false)
	luajava.post(function()
	window:removeView(floatWindow)
	end)
luajava.setFloatingWindowHide(false)
end)
luajava.setFloatingWindowHide(true)
qhkai = 0
qiehuan = function()
if qhkai == 0 then
qhkai = 1
draw.remove()
luajava.runUiThread(function()
	SN.controlSmall(floatWindow,400)
	end)
gg.sleep(400)
luajava.runUiThread(function()
	floatWindow:setVisibility(View.GONE)
	end)
else
	qhkai = 0
huiz()
luajava.runUiThread(function() floatWindow:setVisibility(View.VISIBLE) end)
luajava.runUiThread(function()
	SN.controlBig(floatWindow,400)
	end)

end
end
if loadingBox~=nil then loadingBox['关闭']() end
huiz()


already=true
while true do
if tuichu==1 then break end
if 音量键 then
jianting3(qiehuan)
end gg.sleep(300)
end
end



function 滚(x)
luajava.runUiThread(function()
local cbsc=luajava.getIdView("cbscro")
local targetLeft = _ENV["jm"..x]:getTop()/2

cbsc:smoothScrollTo(0,targetLeft);
end)
end
function 切换(x)
窗口=false
luajava.runUiThread(function()
	local searchUI = luajava.getIdView("tosearch")

	当前ui=x
	ViewPager:setCurrentItem(x-1)
end)
end
显示=0
function 隐藏()

if 显2==true then return 0 end
luajava.runUiThread(function()
	if 显示 == 0 then
	control2:setVisibility(View.GONE)
	sf:setVisibility(View.VISIBLE)
	显示 = 1
	if 窗口 then
	luajava.getIdView("extra"):setVisibility(View.VISIBLE)
	else
	chuangk:setVisibility(View.VISIBLE)
	end
	YoYoImpl:with("ZoomInLeft"):duration(300):playOn(floatWindow)
	floatWindow:setBackground(beij)
	mainLayoutParams.height = mubx
		mainLayoutParams.width = muby
	mainLayoutParams.flags = LayoutParams.FLAG_NOT_TOUCH_MODAL
	window : updateViewLayout (floatWindow , mainLayoutParams)
	else
		sf:setVisibility(View.GONE)
	if tuichuing then return 0 end
	tuichuing=true
	luajava.newThread(function()
	luajava.runUiThread(function()
		YoYoImpl:with("FadeOut"):duration(300):playOn(floatWindow)
		end)
	gg.sleep(300)
	luajava.runUiThread(function()
	chuangk:setVisibility(View.GONE)
	floatWindow:setBackground(beij2)
	YoYoImpl:with("FadeIn"):duration(200):playOn(floatWindow)
	luajava.getIdView("extra"):setVisibility(View.GONE)
	mainLayoutParams.width = LayoutParams.WRAP_CONTENT -- 布局宽度
	mainLayoutParams.height = LayoutParams.WRAP_CONTENT -- 布局高度
	control2:setVisibility(View.VISIBLE) 显示 = 0
	mainLayoutParams.flags = LayoutParams.FLAG_NOT_FOCUSABLE
	window : updateViewLayout (floatWindow , mainLayoutParams)
	end)
	tuichuing=false
	end):start()
end
	end)
end
function 打开窗口(x)
if ewsv[x]==nil then
	gg.alert("没有窗口“"..x.."”\n请检查是否写错了名字或者没创建")
	return 0
end
luajava.runUiThread(function()
	窗口=true
	SN.controlBigX(floatWindow,600)--横向
	--AN.controlBigX1(floatWindow,400)竖向
YoYoImpl:with("FadeIn"):duration(600):playOn(floatWindow)	
	chuangk:setVisibility(View.GONE)
	luajava.getIdView("extra"):setVisibility(View.VISIBLE)
	for k,v in pairs(ewsv) do
		
		if k~=x then v:setVisibility(View.GONE) end
	end
	luajava.getIdView("extrat"):setText(x)
	ewsv[x]:setVisibility(View.VISIBLE)
end)
end
function 关闭窗口()
	luajava.getIdView("extra"):setVisibility(View.GONE)
	chuangk:setVisibility(View.VISIBLE)
	窗口=false
	vibra:vibrate(10)
end
ewsv={}
function 创建窗口(name,v)
if type(v)~="table" then gg.alert("窗口"..name.."格式错误") end
local t={
	LinearLayout,
	orientation="vertical",
	visibility="gone",
	layout_width="match_parent",
}

for i = 1,#v do
if type(v[i]) == "userdata" then
t[#t+1]=v[i]
else
	t[#t+1]=v[i]["view"]
end
end

	ewsv[name]=luajava.loadlayout(t)
	
end

function getShape3()
jianbians = luajava.loadlayout({
	GradientDrawable,
	type = "linear",
	angle = "135",

})
jianbians:setCornerRadius(22)
jianbians:setOrientation(GradientDrawable.Orientation.TL_BR)
jianbians:setColors({
	0x55ffffff,0x55ffffff
})
jianbians:setStroke(5,0xffffffff)--边框宽度和颜色
return jianbians
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
	--luajava.getIdValue(nid.."k"):setVisibility(View.GONE)
	--YoYoImpl:with("ZoomInLeft"):duration(600):playOn(switches["2s"..sname])
	--luajava.getIdValue(nid.."g"):setVisibility(View.VISIBLE)
	luajava.getIdValue(nid):setChecked(true)
--luajava.getIdValue(nid):setBackground(checkbg)
	end)
_ENV[name] = "开"
pcall(func1)

else
	vibra:vibrate(9)
luajava.runUiThread(function()
	--luajava.getIdValue(nid.."g"):setVisibility(View.GONE)
	--YoYoImpl:with("ZoomInRight"):duration(600):playOn(switches["1s"..sname])
	--luajava.getIdValue(nid.."k"):setVisibility(View.VISIBLE)
	luajava.getIdValue(nid):setChecked(false)
--luajava.getIdValue(nid):setBackground(checkbga)
end)
_ENV[name] = "关"
pcall(func2)

end
end
if localname=="摇一摇隐藏UI" then yyfunc=outfunc end
if localname=="音量键隐藏UI" then ylfunc=outfunc end
return outfunc
end
end


function getTimeStamp(t)
local str = os.date("%Y/%m/%d %H:%M:%S",t)
return str
end
function getShape(tmp0,tmp1,tmp2,tmp3)
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(tmp0)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors(tmp1)
jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
jianbians:setStroke(7,tmp3)--边框宽度和颜色
return jianbians
end
function getShape2(tmp0,tmp1,tmp2,tmp3)
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(tmp0)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors(tmp1)
jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
jianbians:setStroke(24,tmp3)--边框宽度和颜色
return jianbians
end
function SN.m3switch(name,func1,func2)  
  rest = luajava.loadlayout({
    LinearLayout,
    layout_width = 'fill_parent',
    layout_height = "47dp",
    gravity = "center",
    {
      LinearLayout,
      layout_width = 'fill_parent',
      layout_height = "40dp",
      gravity = "center",
      elevation = "2dp",
      layout_marginRight = "15dp",
      layout_marginLeft = "15dp",
      background = getButtonBG(),
      padding = {"0dp","0dp","6dp","0dp"},
      {
        TextView,
        Typeface=font,
        gravity = "top",
        text = name,
        textColor = "#FFFFFFFF",
        textSize = "13sp",
        layout_weight = 1,
        layout_width = 'fill_parent',
        layout_marginLeft = "10dp",
        layout_marginRight = "20dp",
      },
      {
        MaterialSwitch,
        layout_weight = 1,
        layout_width = 'match_parent',
        layout_height = 'wrap_content',
        onCheckedChange = function(compoundButton, isChecked)
          luajava.newThread(function()
            if isChecked then
              pcall(func1)              
             else
              pcall(func2)
            end
          end):start()
        end
      }
    }
  })  
  return rest
end
function SN.switch(name,func1,func2,miaoshu)
if not checkbg then
	checkbg = getShape2(
	45,
	{
		控件颜色,控件颜色
	},
	4,控件颜色)
checkbga = getShape2(
	45,
	{
		0xffE3E3E3,0xffE3E3E3
	},
	4,0xffE3E3E3)
switchbg1 = getShape(
	45,
	{
		0xffffffff,0xffffffff
	},
	4,0xffffffff)
switchbg2 = luajava.loadlayout {
			GradientDrawable ,
			color = "#ffffff" ,
			cornerRadius = 360
		}
end
local nid = name..guid()
local func = 开关3(name,func1,func2,nid)
if not name then name = "未设置" end

local rest = luajava.loadlayout({
	LinearLayout,
	elevation = "5dp",
	layout_width = 'fill_parent',
	layout_height = "48dp",
	gravity = "center_vertical",
	{
		LinearLayout,
		layout_width = 'fill_parent',
		layout_height = "40dp",
		gravity = "center_vertical",
		id = luajava.newId(nid.."bg"),
		background = getButtonBG(),padding = {
		"0dp","0dp","6dp","0dp"
	},
	elevation="2dp",
	layout_marginLeft = "5dp",
			layout_marginRight = "5dp",
		{
			TextView,
			Typeface=font,
			gravity = "top",
			text = name,
			id=luajava.newId(nid.."txt"),
			textColor = "#FFFFFFFF",
			textSize = "13sp",
			layout_weight = 1,
			layout_width = '80dp',
			layout_marginLeft = "10dp",
			layout_marginRight = "20dp",
		},
		{
			TextView,
			Typeface=font,
			gravity = "center",
			layout_height = "match_parent",
			text = miaoshu,
			textSize = "11sp",
			layout_width = "wrap_content",
			layout_marginLeft = "-50dp",
			layout_weight = 1,
			textColor = "#A5A5A5",
		},
		{
			MaterialSwitch,
			id=luajava.newId(nid),
			--elevation = "1dp",
			onClick = function() luajava.newThread(function() func() end):start() end,
			layout_width = 'wrap_content',
			layout_height = 'wrap_content',
			gravity = "left",
			padding="4dp",
		}}
})
return {["view"] = rest,
	["name"] = name,
	["func1"] = func1,
	["func2"] = func2,
	["type"] = "开关",
}
end
switchs={}

isLocked=false
inlock=getRes("heisuo")
uiunlock=getRes("heis")
function uiLock()
vibra:vibrate(15)
if isLocked==false then
	isLocked=true
	luajava.newThread(function()
		gg.toast("UI缩放已锁定")
	end):start()
	lockui:setImageDrawable(inlock)
else
	isLocked=false
	luajava.newThread(function()
		gg.toast("UI缩放已解锁")
	end):start()
	lockui:setImageDrawable(uiunlock)
end
end

suofang = function(v, event)
if isLocked then hanshu(v,event) return 0 end
local Action = event:getAction()
if Action == MotionEvent.ACTION_DOWN then--0xFF141118,0xFF141118 黑色
luajava.getIdValue("ckbg"):setBackground(newbg({0xFF141118,0xFF141118},6,控件颜色,0,0,35,35))
isMove = false
RawX = event:getRawX()
RawY = event:getRawY()
hx = mainLayoutParams.height
hy = mainLayoutParams.width
if hx == 0 or hx==-2 then hx = 810 hy = 1150 end
elseif Action == MotionEvent.ACTION_UP then
luajava.getIdValue("ckbg"):setBackground(newbg({0xFF141118,0xFF141118},0,0xffffffff,0,0,35,35))
elseif Action == MotionEvent.ACTION_MOVE then
isMove = true
mubx = tonumber(hx) + (event:getRawY() - RawY)
if mubx >= 250 and mubx <= 11100 then
mainLayoutParams.height = mubx
end
muby = tonumber(hy) + (event:getRawX() - RawX)
if muby >= 250 and muby <= 24500 then
mainLayoutParams.width = muby
end
if muby<=250 and mubx<=250 then muby=250 mubx=250
--隐藏()
return 0 end
window:updateViewLayout(floatWindow, mainLayoutParams)
end
end

ckbg=getVerticalBG({0xff3A3A3C,0xff3A3A3C},360)
SN.controlRotation9 = function(control, time,t)
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
local tview = luajava.getIdValue (tid)
local ttview = luajava.getIdValue (ttid)
if not tview then
return 0
end
if tonumber (tostring (tview : getVisibility ())) == 8.0 then
tview : setVisibility (View.VISIBLE)
YoYoImpl:with("FadeIn"):duration(200):playOn(boxes[tid])
SN.controlRotation9(boxpic[tid],0,90)
boxpic[tid]:setColorFilter(控件颜色)
else
	tview : setVisibility (View.GONE)
SN.controlWater (_ENV [tid.."6"] , 200)
SN.controlRotation9(boxpic[tid],90,0)
boxpic[tid]:setColorFilter(nil)
end
end
function newcheck(radio)
local rest = {
	GridLayout,
	columnCount = 2,
	layout_weight = 1,
	layout_width = 'fill_parent',
	layout_height = "wrap_content",
	layout_marginLeft = "3dp",
	layout_marginRight = "3dp",
	gravity = "left"

}
for i = 1,#radio do
local name = radio[i][1]
local func1 = radio[i][2]
local func2 = radio[i][3]
if not name then name = "未设置" end
--func=开关(name,func1,func2)
rstt = SN.intcheck2(name,func1,func2,size)
rest[#rest+1] = rstt
end
return luajava.loadlayout({
	LinearLayout,rest
})
end
function SN.intcheck2(name,func1,func2,size)
nid = name..guid()
lname=name
local func = 开关(nid,func1,func2,lname)
if not name then name = "未设置" end
local rest = luajava.loadlayout({
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
	{
	CheckBox,
	text=name,
	textSize="15sp",
	textColor = "#FFFFFFFF",
	onClick=function() 
	luajava.newThread(function() 
	pcall(func)
	end):start() end
	}
	}
})

return rest
end

buts={}
heir=getRes("heir")
function SN.button(txt,func,txtc)
if not txt then txt = "未设置" end
if not txtc then txtc="#FFFFFFFF" end
local tid="Cbutton"..guid()
buts[tid]=luajava.loadlayout(
	{
		LinearLayout,
		layout_width = 'match_parent',
		layout_height = "wrap_content",
		 {
			LinearLayout,
			layout_width = "fill_parent",
			gravity = "center_vertical",
			layout_marginTop = "5dp",
			layout_marginBottom = "5dp",
			background = getButtonBG(),
			elevation="2dp",
			layout_marginLeft = "5dp",
			layout_marginRight = "5dp",
			id = luajava.newId(tid.."bg"),
			padding="10dp",
			onClick = function() 
				SN.controlWater(buts[tid],300)
				vibra:vibrate(10)
			luajava.newThread(func):start() end,
			{
				TextView,
				Typeface=font,
--id = luajava.newId(tid),
				textColor = txtc,
				text = txt,
				id = luajava.newId(tid.."txt"),
				textSize = "13sp",
				layout_height = "wrap_content",
				layout_width = "fill_parent",
				layout_weight=1,
			},{ImageView,
				src=heir,
				layout_height="14dp",
				layout_width="14dp",
				
			}
		}})
return {["view"]= buts[tid],
["name"] = txt,
	["func"] = func,
	["type"] = "按钮",
}
end




function getButtonBG()
local jianbians = luajava.loadlayout({
GradientDrawable,
color = 0xFFFFFFFF,
gradientType = GradientDrawable.LINEAR_GRADIENT,
orientation = GradientDrawable.Orientation.TOP_BOTTOM ,
})
jianbians:setColors({0xFF1D1B20,0xFF1D1B20})
jianbians:setStroke(0,0xffffffff)--边框宽度和颜色
jianbians:setCornerRadii({20,20,20,20,20,20,20,20})
return jianbians
end

radiog={}
function SN.radio (cklist)
if not radoff then
radon=getVerticalBG({0xffffffff,0xffffffff},360,20,控件颜色)
radoff=getVerticalBG({0x00ffffff,0x00ffffff},360,8,0xffaaaaaa)
--radon=getRes("heiraon")
--radoff=getRes("heiraoff")
end
local rid=guid()
local vs={}
radiog[rid]={}
rest = {
	LinearLayout ,
	layout_width = 'match_parent' ,
	layout_height = "wrap_content" ,
	layout_marginTop = "10dp" ,
	gravity = "top" ,
	orientation = "vertical" ,

}
if type (cklist [1]) == "string" then
	rds=2
rest [# rest + 1] = {
	TextView ,
	Typeface=font,
	gravity = "left" ,
	padding="5dp",
	text = cklist [1] ,
	textSize = "13sp" ,
	textColor = "#FFFFFFFF" ,
	layout_width = 'fill_parent' ,
	layout_height = 'wrap_content' ,
	layout_marginLeft = "10dp" ,
	layout_marginRight = "5dp" ,
	layout_marginTop = "0dp" ,
	layout_marginBottom = "0dp" ,
}
else
	rds=1
end
local restt={
	LinearLayout ,
	layout_width = 'match_parent' ,
	layout_height = "wrap_content" ,
	id=luajava.newId (rid.."radiobg") ,
	gravity = "top" ,
	orientation = "vertical" ,
	background=getButtonBG(),
    elevation="3dp",
    layout_marginLeft = "5dp",
	layout_marginRight = "5dp",
	layout_marginTop = "15dp",
	layout_marginBottom = "3dp",
	padding={"0dp","14dp","0dp","10dp"},
}
for i = rds , # cklist do
local name = cklist [i] [1]
local func = cklist [i] [2]
if not name then
name = "未设置"
end
nid = name..guid ()
radiog[rid][nid]=false
local func = radin(rid,nid,func)
local tid = nid..guid ()
_ENV [tid] = luajava.loadlayout ( {
	LinearLayout ,
	layout_width = '250dp' ,
	layout_height = "30dp" ,
	layout_marginTop = "5dp" ,
	layout_marginBottom = "15dp" ,
	layout_marginLeft = "4dp" ,
	layout_marginRight = "10dp" ,
	gravity = "center_vertical" ,
	onClick = function ()
	SN.controlWater (_ENV [tid] , 400)
	func()
	end

	,
	{
		ImageView ,
		id = luajava.newId (nid) ,
		layout_width = '20dp' ,
		layout_height = "20dp" ,
		layout_marginLeft = "5dp" ,
		layout_marginRight = "0dp" ,
		background =radoff ,
	} , {
		TextView ,
		Typeface=font,
		gravity = "top" ,
		id = luajava.newId (nid.."radiotxt") ,
		text = name ,
		textSize="13sp",
		textColor = "#FFFFFFFF" ,
		layout_width = 'wrap_content' ,
		layout_height = 'wrap_content' ,
		layout_marginLeft = "10dp" ,
		layout_marginRight = "5dp" ,
	}
})
restt [# restt + 1] = _ENV [tid]
vs[#vs+1]={
	view=_ENV[tid],
	name=name,
	func=func,
	type='单选选项'
}
end
rest [# rest + 1] = restt
return {["view"]= luajava.loadlayout (rest),
["name"] = "单选",
	["type"] = "radio",
	["vs"] = vs
}
end
function radin(rid,nid,func)
return function()
for k,v in pairs(radiog[rid]) do
	luajava.getIdValue(k):setBackground(radoff)
	if k==nid and v~=true then
		luajava.getIdValue(k):setBackground(radon)
		v=true
		luajava.newThread(func):start()
	end
end
end
end
当前ui=1
checkbg1 = getRes("quarkcheckoff")
checkbg2 = getRes("quarkcheckon")
switchs={}
function SN.intcheck(name,func1,func2)
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
			MaterialCheckBox,
			id = luajava.newId(nid),
			onClick = function() luajava.newThread(function() func() end):start() end,
			--background = checkbg1,
			layout_width = '32dp',
			layout_height = '32dp',
			padding = "0dp",
		},{
			TextView,
			Typeface=font,	
			id=luajava.newId(nid.."t"),
			gravity = "left",
			text = name,
			textColor=0xffffffff,
			textSize = "14sp",
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
	luajava.getIdValue(nid):setChecked(true)
	--luajava.getIdValue(nid.."t"):setTextColor(0xff232323)
	--SN.controlWater(switchs[nid],300)
	end)
_ENV[name] = "开"
pcall(func1)
else
	vibra:vibrate(9)
luajava.runUiThread(function()
	luajava.getIdValue(nid):setChecked(false)
	--luajava.getIdValue(nid.."t"):setTextColor(0xff232323)
	--SN.controlWater(switchs[nid],300)
	end)
_ENV[name] = "关"
pcall(func2)
end
end
end
end
function SN.check(cklist)
if #cklist==0 then return nil end
local rest = {
	LinearLayout,
	layout_width = 'fill_parent',
	layout_height = "wrap_content",
	gravity = "center",
	orientation="vertical",

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
local name = cklist[i + j][1]
local func1 = cklist[i + j][2]
local func2 = cklist[i + j][3]
if not name then name = "未设置" end
rstt = SN.intcheck(name,func1,func2)
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

spics={
}
for i=1,55 do
	spics[i]="opo"..i
end
switchs={}
tcheck=10
function SN.intcard(name,name2,func1,func2)
if tcheck==56 then
	tcheck=1
else
	tcheck=tcheck+1
end
tocheck=spics[tcheck]
gid = name..guid()
local func = 开关6(name,name2,func1,func2,gid)
if not name then name = "未设置" end
if not name2 then name2="" end
switchs[gid] = {
	LinearLayout,
	id = luajava.newId(gid),
	layout_width = 'match_parent',
	layout_weight=1,
	layout_height = "wrap_content",
	layout_marginTop="5dp",
	layout_marginBottom="5dp",
	layout_marginLeft="3dp",
	layout_marginRight="3dp",
	
	{
		LinearLayout,
		padding="3dp",
		onClick = function() luajava.newThread(function() func() end):start() end,
		layout_width = 'fill_parent',
		layout_height = "wrap_content",
		gravity = "left",
		background=getButtonBG(),
		layout_marginLeft = "5dp",
			layout_marginRight = "5dp",
			layout_marginTop = "5dp",
			layout_marginBottom = "5dp",
			elevation="2dp",
		id = luajava.newId(gid.."cardbg"),
		orientation="vertical",
		padding="5dp",
		--background=getVerticalBG({0xffFFFDF2,0xddffffff,0xffFFFDF2},15,8,0xffFFDA71),
		{
			ImageView,
			id = luajava.newId(gid.."p"),
			src = getRes(tocheck),
			gravity="left",
			layout_width = '30dp',
			layout_height = '30dp',
			padding = "3dp",
		},{
			TextView,
			Typeface=font,	
			id=luajava.newId(gid.."t"),
			gravity = "left",
			text = name,
			textColor="#d7d7d7",
			textSize = "12sp",
			layout_width = 'match_parent',
			layout_weight=1,
		},{
			TextView,
			Typeface=font,	
			id=luajava.newId(gid.."t2"),
			gravity = "left",
			text = name2,
			textColor="#aaaaaa",
			textSize = "9sp",
			layout_width = 'match_parent',
			layout_weight=1,
		}
		}
}
return switchs[gid]
end

function SN.card(cklist)
if #cklist==0 then return nil end
local rest = {
	LinearLayout,
	layout_width = 'fill_parent',
	layout_height = "wrap_content",
	gravity = "center",
	orientation="vertical",

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
local name = cklist[i + j][1]
local name2 = cklist[i + j][2]
local func1 = cklist[i + j][3]
local func2 = cklist[i + j][4]
if not name then name = "未设置" end
rstt = SN.intcard(name,name2,func1,func2)
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


shous={}
function 收起ck(gid,ii)
if shous[gid] ==false then
		shous[gid]=true
		luajava.getIdView(gid.."p"):setRotation(0)
	for i=1,ii-1 do
		if i>=9 then
			luajava.post(function()
			luajava.getIdView(gid):removeView(luajava.getIdView(gid..i))
			end)
		end
	end
	else
		shous[gid]=false
			luajava.post(function()
			luajava.getIdView(gid):removeView(luajava.getIdView(gid))
			for i=1,ii-1 do
				if i>=9 then
					luajava.getIdView(gid):addView(luajava.getIdView(gid..i))
				end
			end
			luajava.getIdView(gid):addView(luajava.getIdView(gid))
			end)
		luajava.getIdView(gid.."p"):setRotation(180)
	end
end
opou=getRes("opou")
function SN.checkbox(gid,ii)
local func = function() 收起ck(gid,ii) end
if not name then name = "未设置" end
switchs[gid] = {
	LinearLayout,
	id=luajava.newId(gid),
	layout_width = '70dp',
	layout_height = "wrap_content",
	layout_marginTop = "1dp",
	layout_marginBottom = "1dp",
	padding = "1dp",
	{
		LinearLayout,
		padding="3dp",
		onClick = func,
		layout_width = 'fill_parent',
		layout_height = "wrap_content",
		gravity = "center_horizontal",
		orientation="vertical",
		--background=getVerticalBG({0xffFFFDF2,0xddffffff,0xffFFFDF2},15,8,0xffFFDA71),
		{
			ImageView,
			id = luajava.newId(gid.."p"),
			src = opou,
			background=ckbg,
			gravity="center",
			layout_width = '30dp',
			layout_height = '30dp',
			padding = "8dp",
		},{
			TextView,
			Typeface=font,	
			id=luajava.newId(gid.."t"),
			gravity = "center",
			text = "展开",
			textColor="#d7d7d7",
			textSize = "9sp",
--layout_marginLeft="8dp",
			layout_width = 'match_parent',
	layout_weight=1,
		},
		}
}
return switchs[gid]
end
function 开关6(name,name2,func1,func2,nid)
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
	luajava.getIdValue(nid.."t"):setTextColor(控件颜色)
	luajava.getIdValue(nid.."t2"):setTextColor(控件颜色)
	luajava.getIdValue(nid.."p"):setColorFilter(控件颜色)
	--SN.controlWater(switchs[nid],300)
	end)
_ENV[name] = "开"
pcall(func1)
else
	vibra:vibrate(9)
luajava.runUiThread(function()
	luajava.getIdValue(nid.."t"):setTextColor(0xffd7d7d7)
	luajava.getIdValue(nid.."p"):setColorFilter(0xffd7d7d7)
	luajava.getIdValue(nid.."t2"):setTextColor(0xffaaaaaa)
	--SN.controlWater(switchs[nid],300)
	end)
_ENV[name] = "关"
pcall(func2)
end
end
end
end









function SN.image(img,height,width,pad,func)
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
function SN.edit (name , hint)
_ENV [name] = name..guid ()
nid = name..guid ()
if not hint then
hint = name
end
rest = luajava.loadlayout ( {
	LinearLayout ,
	layout_width = 'fill_parent' ,
	layout_height = "wrap_content",
	{
		LinearLayout ,
		layout_width = 'fill_parent' ,
		layout_height = "wrap_content" ,
		gravity = "center_vertical" ,
		{
			TextInputEditText ,
			background = getButtonBG(),
			elevation="2dp",
			layout_marginTop = "5dp" ,
		layout_marginBottom = "5dp" ,
		layout_marginLeft = "5dp",
			layout_marginRight = "5dp",
			gravity = "center" ,
			hint = hint ,
			textColor="#FFFFFFFF",
			textSize = "13sp",
			id=luajava.newId(_ENV [name]),
			layout_width = 'match_parent' ,
			layout_height = "wrap_content" ,
		}
	}
})
luajava.getIdValue(_ENV [name]):setHintTextColor(0xFFCCC3DC)
return {["view"] = rest,
	["name"] = name,
	["type"] = "输入框",
}
end
function SN.getedit (name)
edit = tostring (luajava.getIdValue (_ENV [name]) : getText ())
return edit
end
function SN.setedit (name , txt)
txt = tostring (txt)
luajava.runUiThread (function ()
	luajava.getIdValue (_ENV [name]) : setText (txt)
	end

)
end



function SN.seek(name,bian,smin,smax,nows,size)
_ENV[bian] =nows
if _ENV[bian] == nil then _ENV[bian] = 1.0 end
if size == nil then size = 1 end
if not name then name = "未设置" end
local names = name..guid()
rest = luajava.loadlayout({
	LinearLayout,
	layout_width = 'fill_parent',
	layout_hight = "fill_parent",
	{
			Slider,
				id=luajava.newId(name.."Slider"),
				layout_width = 'match_parent',
				layout_height = 'wrap_content',
				value = nows,
				valueTo = smax,
				valueFrom = smin,
				stepSize = size,
				addOnChangeListener = function(slider, value, fromUser) -- 如果执行的功能不是修改器的函数,或者不带阻塞的,可以不用 window:threadWraper 包裹,性能更好(属于UI线程)
				-- 如果不是用户触发的,不处理
				if not fromUser then
					return
				end
				Snackbar:make(floatWindow, '拖动条进度 > '..value, Snackbar.LENGTH_SHORT):show()
				_ENV[bian] = value
				
			end
				
	}})
	
return {["view"] = rest,
	["name"] = name,
	["type"] = "拉条",
}
end


levels={}
function SN.seek2(name , bian , smin , smax , nows,level)
local smin=math.ceil(smin* 10)/10
local smax=math.ceil(smax* 10)/10
local nows=math.ceil(nows* 10)/10
local level=math.ceil(level* 10)/10
if _ENV [bian] == nil then
_ENV [bian] = nows
else
	gg.alert("seek控件的变量名称:"..bian.."重复！\n请换一个名称") os.exit()
end

if not name then
name = "未设置"
end
local names = name..guid ()
if not level then level=1 end
levels[bian]=math.ceil(level* 10)/10
local shuzhi=luajava.loadlayout({
			TextView ,
			gravity = "center" ,
			text = tostring(nows) ,
			textColor=switch颜色,
			id = luajava.newId (names) ,
			layout_width = '50dp' ,
			layout_marginLeft = "5dp" ,
			layout_marginRight = "0dp" ,
		})
local tmp1={TextView,
		background=getVerticalBG({0xeeffffff,0xeeffffff},15,2.5,0xff161616),
		layout_height="24dp",
		layout_width="24dp",
		gravity="center",
		elevation="2dp",
		layout_marginTop = "5dp" ,
		layout_marginBottom = "5dp" ,
		layout_marginLeft = "5dp" ,
		layout_marginRight = "5dp" ,
		text="-",
		textColor="#000000",
		onClick=function()
			vibra:vibrate(4)
			if _ENV[bian]>smin then
			_ENV[bian]=_ENV[bian]-levels[bian]
			_ENV[bian]=tonumber(string.format("%.1f", _ENV[bian]))
			if _ENV[bian]<smin then _ENV[bian]=smin end
			_ENV[bian]=math.ceil(_ENV[bian]* 10)/10
			luajava.getIdValue(names):setText(tostring(_ENV[bian]))
			end
		end,
		}
local tmp2={TextView,
		background=getVerticalBG({0xeeffffff,0xeeffffff},15,2.5,0xff161616),
		layout_height="24dp",
		layout_width="24dp",
		gravity="center",
		elevation="2dp",
		layou_marginTop = "5dp" ,
		layout_marginBottom = "5dp" ,
		layout_marginLeft = "5dp" ,
		layout_marginRight = "5dp" ,
		text="+",
		textColor="#000000",
		onClick=function()
			vibra:vibrate(4)
			if _ENV[bian]<smax then
			_ENV[bian]=_ENV[bian]+levels[bian]
			_ENV[bian]=tonumber(string.format("%.1f", _ENV[bian]))
			if _ENV[bian]>smax then _ENV[bian]=smax end
			_ENV[bian]=math.ceil(_ENV[bian]* 10)/10
			luajava.getIdValue(names):setText(tostring(_ENV[bian]))
			end
		end,
		}
rest = luajava.loadlayout ( {
	LinearLayout ,
	layout_width = 'fill_parent' ,
	gravity = "center" ,
	layout_height = "wrap_content" ,
	{
		LinearLayout ,
		layout_width = 'fill_parent' ,
		layout_height = "fill_parent" ,
		
		gravity = "center_vertical" ,
		
		background = getVerticalBG({按钮颜色,按钮颜色},15),
		{
			TextView ,
			gravity = "top" ,
			text = name ,
			textColor="#000000",
			layout_weight=1,
			textSize='12sp',
			layout_width = 'match_parent' ,
			layout_marginLeft = "10dp" ,
			layout_marginRight = "0dp" ,
		},
		tmp1,shuzhi,tmp2
	}
})
return rest
end



function SN.text(text,color,size,isjz)
if not color then color="#FFFFFFFF" end
if isjz then
	return luajava.loadlayout(
	{
	TextView,
	Typeface=font,	
	text=text,
	textColor=color,
	textSize=size,
	gravity="center",
	layout_height="wrap_content",
	layout_width="match_parent",
	autoSizeTextType="uniform",
})
else
return luajava.loadlayout({
	TextView,
	Typeface=font,	
	text=text,
	textColor=color,
	textSize=size,
	layout_height="wrap_content",
	layout_width="match_parent",
	autoSizeTextType="uniform",
})
end
end
function SN.alertDialog(title,text,control)
local Tit = {LinearLayout,
			layout_height="wrap_content",
			layout_width="match_parent",
			orientation="vertical",}
    context = baseWindow:getContext()
    if control==nil then
    view={}
    else
    for i, v in ipairs(control) do
    Tit[#Tit+1] = v.view
    end
    view=Tit
    end
local dialogBuilder = MaterialAlertDialogBuilder(context)
        :setTitle(title)
        :setMessage(text)
        :setView(luajava.loadlayout(view))
        :setPositiveButton('确定')
        luajava.showAlert(dialogBuilder)
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
function getShape00(tmp0,tmp1,tmp2,tmp3)
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(tmp0)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({
	tmp1,tmp2
})
return jianbians
end


if loadingBox~=nil then loadingBox['关闭']() end

colorvs = {}
kgs = {}




function SN.group(cklist)
	local vs={}
    local gid = guid()
    local parentLayout = {
        LinearLayout,
        layout_width = "match_parent",
        layout_height = "wrap_content",
        gravity = "center",
        orientation = "vertical",
        background=getVerticalBG({0xFF1D1B20,0xFF1D1B20},25),
    }
    for i = 1, #cklist,3 do
    	local tempTable = {LinearLayout,
    		id=luajava.newId(gid..'p'..i),
			layout_width = 'fill_parent',
			layout_height = "wrap_content",
			gravity = "left",
			orientation="horizontal"
		}
		for j = 0, 2 do
			if cklist[i+j]~=nil then
	        local name = cklist[i+j][1] or "未设置"
	        local func1 = cklist[i+j][2] or nulfunc
	        local func2 = cklist[i+j][3] or nulfunc
	        local pic = cklist[i+j][4]
	        local t=SN.intgroup(name, func1, func2, i+j, gid, pic)
	        local rstt = t.view
	        table.insert(vs,t)
			if i+j >= 9 then
	            -- 当组件数量达到9个时，执行原逻辑
	            if #cklist > 9 then--大于9的整体情况
	            	lastrstt=rstt
	            	if i+j==9 then--第九个
		                local rs = SN.groupbox(gid,'box')
		                table.insert(tempTable, rs)
		                table.insert(cklist,9,{nil,nil,nil,nil})
		                shous[gid]={false,{}}
	                else
	                	--10以后的情况
	                	--rstt.visibility='gone'
	                	tempTable.visibility='gone'
	                	table.insert(shous[gid][2],gid..'p'..i)
	    				table.insert(tempTable, lastrstt)
	            	end
	            else
	            	table.insert(tempTable, rstt)
	            end
			else
				--正常情况
				table.insert(tempTable, rstt)
			end
			else
				table.insert(tempTable, {LinearLayout,
				layout_width = 'match_parent',
				layout_weight=1,})
			end
		end
		table.insert(parentLayout,tempTable)
	end
    return {
        view = luajava.loadlayout(parentLayout),
        type = "BOX",
        vs = vs,
        name = "开关合集"
    }
end


opou=getRes("opou")
function SN.groupbox(gid,ii)
local func = function() 收起ck(gid,ii) end
if not name then name = "未设置" end
_ENV[gid..ii.."p"]=luajava.loadlayout{
			ImageView,
			src = opou,
			id=luajava.newId(gid..ii.."p"),
			background=ckbg,
			gravity="center",
			layout_width = '30dp',
			layout_height = '30dp',
			padding = "8dp",
		}
switchs[gid..ii] = {
	LinearLayout,
	id=luajava.newId(gid..ii),
	layout_width = 'match_parent',
	layout_weight=1,
	layout_height = "wrap_content",
	layout_marginTop = "1dp",
	layout_marginBottom = "1dp",
	padding = "1dp",
	{
		LinearLayout,
		padding="3dp",
		onClick = func,
		layout_width = 'fill_parent',
		layout_height = "wrap_content",
		gravity = "center_horizontal",
		orientation="vertical",
		--background=getVerticalBG({0xffFFFDF2,0xddffffff,0xffFFFDF2},15,8,0xffFFDA71),
		_ENV[gid..ii.."p"],{
			TextView,
			Typeface=font,	
			id=luajava.newId(gid..ii.."t"),
			gravity = "center",
			text = "展开",
			textColor="#d7d7d7",
			textSize = "9sp",
--layout_marginLeft="8dp",
			layout_width = 'match_parent',
	layout_weight=1,
		},
		}
}
colorvs[gid..ii.."p"]={false,"img"}
colorvs[gid..ii.."t"]={gid..ii.."t",false,"txt"}
return switchs[gid..ii]
end




function SN.intgroup(name,func1,func2,ii,gid,pic)
if pic~=nil then
	tocheck=获取图片(pic)
else
if tcheck==56 then
	tcheck=1
else
	tcheck=tcheck+1
end
tocheck=getRes(spics[tcheck])
end
local func = 开关group(name,func1,func2,gid..ii)
if not name then name = "未设置" end
switchs[gid..ii] = {
	LinearLayout,
	id = luajava.newId(gid..ii),
	layout_width = "match_parent",
	layout_weight=1,
	layout_height = "wrap_content",
	layout_marginTop = "1dp",
	layout_marginBottom = "1dp",
	padding = "1dp",
	{
		LinearLayout,
		padding="3dp",
		onClick = function() luajava.newThread(function() func() end):start() end,
		layout_width = 'fill_parent',
		layout_height = "wrap_content",
		gravity = "center_horizontal",
		orientation="vertical",
		--background=getVerticalBG({0xffFFFDF2,0xddffffff,0xffFFFDF2},15,8,0xffFFDA71),
		{
			ImageView,
			id = luajava.newId(gid..ii.."p"),
			src=tocheck,
			gravity="center",
			layout_width = '30dp',
			layout_height = '30dp',
			padding = "2dp",
		},{
			TextView,
			Typeface=font,	
			id=luajava.newId(gid..ii.."t"),
			gravity = "center",
			text = name,
			textColor="#d7d7d7",
			textSize = "9sp",
--layout_marginLeft="8dp",
			layout_width = 'match_parent',
	layout_weight=1,
		},
		}
}
colorvs[gid..ii.."p"]={false,"img"}
colorvs[gid..ii.."t"]={gid..ii.."t",false,"txt"}
return {["view"] = switchs[gid..ii],
	["name"] = name,
	["func"] = func,
	["type"] = "勾选",
}
end


function 开关group(name,func1,func2,nid)
local sname = nid
local localname=name
name = name
kgs[name] = "关"
if func1 == nil then func1 = "" end
if func2 == nil then func2 = "" end
if type(func1) == "function" then
return function()
namers = kgs[name]
if namers ~= "开" then
vibra:vibrate(9)
luajava.runUiThread(function()
	luajava.getIdValue(nid.."t"):setTextColor(控件颜色)
	luajava.getIdValue(nid.."p"):setColorFilter(控件颜色)
	colorvs[nid.."p"]={true,"img"}
	colorvs[nid.."t"]={true,"txt"}
	--SN.controlWater(switchs[nid],300)
	end)
kgs[name] = "开"


pcall(func1)
else
	vibra:vibrate(9)
luajava.runUiThread(function()
	luajava.getIdValue(nid.."t"):setTextColor(0xffd7d7d7)
	luajava.getIdValue(nid.."p"):setColorFilter(0xffd7d7d7)
	colorvs[nid.."p"]={false,"img"}
	colorvs[nid.."t"]={false,"txt"}
	--SN.controlWater(switchs[nid],300)
	end)
kgs[name] = "关"


pcall(func2)
end
end
end
end

function visi2 (tid , ttid)
local tview = luajava.getIdValue (tid)
local ttview = luajava.getIdValue (ttid)
if not tview then
return 0
end
if tonumber (tostring (tview : getVisibility ())) == 8.0 then
	tview : setVisibility (View.VISIBLE)
else
	tview : setVisibility (View.GONE)
end
end
MSwitch = {}
boxes = {} boxpic = {}
function SN.box2 (views,func1,func2)
local tid = "box"..guid ()
local ttid = tid.."6"
local t1id = guid ()
kgid = views[1].."关"
id = views[1].."id"
local func = 开关(views[1],func1,func2)
boxpic[tid] = luajava.loadlayout {
	MaterialSwitch,
	id = luajava.newId(views[1]),
    layout_width = 'match_parent',
    layout_height = 'wrap_content',
	onCheckedChange = function(Switch,var2,var3)
			if var2 == true then var2 = "开" else var2 = "关" end
			luajava.newThread(function() func() end):start()
	end,
}
MSwitch[#MSwitch+1]=views[1]
firadio = {
	LinearLayout,
	layout_width = 'fill_parent' ,
	layout_height = "wrap_content" ,
	elevation = "2dp",
	layout_marginRight = "4dp",
	layout_marginLeft = "4dp",
	orientation = "vertical",
	background = getButtonBG()
}
if type (views [1]) == "string" or type (views [1]) == "number" then
firadio [# firadio + 1] = {
LinearLayout,
	elevation = "5dp",
	layout_width = 'fill_parent',
	layout_height = "47dp",
	gravity = "center_vertical",
	{
	LinearLayout ,
	layout_width = 'fill_parent' ,
	layout_height = "40dp" ,
	layout_marginRight = "4dp",
      layout_marginLeft = "4dp",
	gravity = "center_vertical" ,	
	onClick = function () visi2 (tid , ttid) end,
	elevation = "3dp",
	--background = getButtonBG(),
	{
		TextView , text = views [1] ,
		textSize = "12sp" ,
		layout_marginLeft = "15dp" ,
		layout_width = "match_parent" ,
		layout_weight=1,
		textColor = "#FFFFFFFF",
		gravity = "left" ,
	},{
		LinearLayout ,
		padding={"0dp","0dp","0dp","0dp"},
		layout_width = "60dp" ,
		layout_height = "47dp" ,
		gravity = "center",
		--background = getHorizontalBG({0xffe9e9e9,0xffe9e9e9},25),
		boxpic[tid],
	}
} 
}else
	gg.alert ("SN.box的table内第一个元素必须是string") os.exit ()
end
radios = {
	LinearLayout ,
	layout_marginLeft = "5dp" ,
	layout_marginRight = "5dp" ,
	orientation = "vertical" ,
	visibility = "gone" ,
	id = luajava.newId (tid) ,	
	layout_marginRight = "4dp",
      layout_marginLeft = "4dp",
	layout_width = 'fill_parent' ,
	elevation = "3dp",
	--background = getHorizontalBG({0xffe9e9e9,0xffe9e9e9},25),
}
for i = 2 , # views do
radios [# radios + 1] = views [i]
end
boxes[tid] = luajava.loadlayout(radios)
firadio [# firadio + 1] = boxes[tid]
_ENV [t1id] = luajava.loadlayout (firadio)
return _ENV [t1id]
end

function SN.check2(name,func1,func2)
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
		--background = getHorizontalBG({0xffe9e9e9,0xffe9e9e9},25),
		{
			CheckBox,
			text = name,
			textColor = "#FFFFFFFF",
			--gravity = "top",
			layout_width = 'match_parent',
			layout_hight = "10dp",
--id=luajava.newId(tid),
			onCheckedChange = function(Switch,var2,var3)
			if var2 == true then var2 = "开" else var2 = "关" end
			luajava.newThread(function() func() end):start()
			end,

		}
		}
})

return rest
end

function 开关(name,func1,func2,lname)
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
MSwitch = {}
function SN.box3 (views)
local tid = "box"..guid ()
local ttid = tid.."6"
local t1id = guid ()
kgid = views[1].."关"
id = views[1].."id"
local func = 开关(views[1],func1,func2)
boxpic[tid] = luajava.loadlayout {
	MaterialSwitch,
	id = luajava.newId(views[1].."id"),
    layout_width = 'match_parent',
    layout_height = 'wrap_content',
	onClick = function() visi2 (tid , ttid)  end
}
MSwitch[#MSwitch+1] = views[1].."id"
firadio = {
	LinearLayout,
	layout_width = 'fill_parent' ,
	layout_height = "wrap_content" ,
	elevation = "2dp",
	layout_marginRight = "4dp",
	layout_marginLeft = "4dp",
	orientation = "vertical",
	background = getButtonBG()
}
if type (views [1]) == "string" or type (views [1]) == "number" then
firadio [# firadio + 1] = {
LinearLayout,
	elevation = "5dp",
	layout_width = 'fill_parent',
	layout_height = "47dp",
	gravity = "center_vertical",
	{
	LinearLayout ,
	layout_width = 'fill_parent' ,
	layout_height = "40dp" ,
	layout_marginRight = "4dp",
      layout_marginLeft = "4dp",
	gravity = "center_vertical" ,	
	--onClick = function () visi2 (tid , ttid) end,
	elevation = "3dp",
	--background = getButtonBG(),
	{
		TextView , text = views [1] ,
		textSize = "12sp" ,
		layout_marginLeft = "15dp" ,
		layout_width = "match_parent" ,
		layout_weight=1,
		textColor = "#FFFFFFFF",
		gravity = "left" ,
	},{
		LinearLayout ,
		padding={"0dp","0dp","6dp","0dp"},
		layout_width = "60dp" ,
		layout_height = "47dp" ,
		gravity = "center",
		--background = getHorizontalBG({0xffe9e9e9,0xffe9e9e9},25),
		boxpic[tid],
	}
} 
}else
	gg.alert ("SN.box的table内第一个元素必须是string") os.exit ()
end
radios = {
	LinearLayout ,
	layout_marginLeft = "5dp" ,
	layout_marginRight = "5dp" ,
	orientation = "vertical" ,
	visibility = "gone" ,
	id = luajava.newId (tid) ,	
	layout_marginRight = "4dp",
      layout_marginLeft = "4dp",
	layout_width = 'fill_parent' ,
	elevation = "3dp",
	--background = getHorizontalBG({0xffe9e9e9,0xffe9e9e9},25),
}
for i = 2 , # views do
radios [# radios + 1] = views [i]
end
boxes[tid] = luajava.loadlayout(radios)
firadio [# firadio + 1] = boxes[tid]
_ENV [t1id] = luajava.loadlayout (firadio)
return _ENV [t1id]
end

boxes = {} boxpic = {}
function SN.box (views)
local tid = "box"..guid ()
boxpic[tid] = luajava.loadlayout {
	ImageView ,
	src = getRes("hei_right"),
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
	layout_height = "40dp" ,
	gravity = "center_vertical" ,
	layout_marginTop = "2dp" ,
	layout_marginBottom = "4dp" ,
	onClick = function ()
	visi (tid , ttid)
	end
	,
	id=luajava.newId(tid.."bg"),
	background = getButtonBG(),
	layout_marginLeft = "5dp",
			layout_marginRight = "5dp",
			elevation="2dp",
	{
		TextView , text = views [1] ,
		textSize = "13sp" ,
		id=luajava.newId(tid.."txt"),
		layout_marginLeft = "15dp" ,
		layout_width = "match_parent" ,
		layout_weight=1,
		textColor = "#FFFFFFFF" ,
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
	gg.alert ("SN.box的table内第一个元素必须是string") os.exit ()
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
local vs={}
for i = 2,#views do
if type(views[i]) == "userdata" then
radios[#radios+1] = views[i]
else
	radios[#radios+1] = views[i].view
	vs[#vs+1]=views[i]
end
end
boxes[tid] = luajava.loadlayout(radios)
firadio [# firadio + 1] = boxes[tid]
_ENV [t1id] = luajava.loadlayout (firadio)
return {["view"] = _ENV[t1id],
	["name"] = views[1],
	["type"] = "BOX",
	["vs"]=vs
}
end
function SN.check2(name,func1,func2)
local func = 开关(name,func1,func2)
ID = name..guid()
if not name then name = "未设置" end
rest = luajava.loadlayout({
	LinearLayout,
	layout_width = 'match_parent',
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
		{
			CheckBox,
			text = name,
			id = luajava.newId(ID),
			textColor = "#FFFFFFFF",
			--gravity = "top",
			layout_hight = "10dp",
--id=luajava.newId(tid),
			onCheckedChange = function(Switch,var2,var3)
			if var2 == true then var2 = "开" else var2 = "关" end
			luajava.newThread(function() func() end):start()
			end,

		}
		}
})

return rest
end

function 开关(name,func1,func2,lname)
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
boxes = {} boxpic = {}



function SN.box4(views)
local tid = "box"..guid ()
local ttid = tid.."6"
local t1id = guid ()
kgid = views[1].."关"
id = views[1].."id"
local func = 开关(views[1],func1,func2)
ID = views[1].."id"..guid()
boxpic[tid] = luajava.loadlayout {
	MaterialSwitch,
	id = luajava.newId(ID),
    layout_width = 'match_parent',
    layout_height = 'wrap_content',
	onClick = function() visi2 (tid , ttid)  end
}
MSwitch[#MSwitch+1] = ID
firadio = {
    LinearLayout,
    layout_width="match_parent",
    layout_height = "wrap_content" ,
    gravity = "center",
    orientation = "vertical",
    background = luajava.loadlayout{GradientDrawable,color=0xffffffff,cornerRadius=20},
    LayoutTransition=layoutTransition
}
if type (views [1]) == "string" or type (views [1]) == "number" then
firadio [# firadio + 1] = {
      LinearLayout,
      layout_width = 'match_parent',
      layout_height = "40dp",
      gravity = "center",
      elevation = "2dp",
      layout_marginRight = "4dp",
	  layout_marginLeft = "4dp",
	gravity = "center_vertical",
	LayoutTransition=layoutTransition,
	{
	LinearLayout ,
	layout_width = 'fill_parent' ,
	layout_height = "40dp",
	gravity = "center_vertical" ,	
	--onClick = function () visi2 (tid , ttid) end,
	--background = getButtonBG(),
	{
		TextView , text = views [1] ,
		textSize = "13sp" ,
		layout_marginLeft = "15dp" ,
		layout_width = "match_parent" ,
		layout_weight=1,
		textColor = "#FFFFFFFF",
		gravity = "left" ,
	},{
		LinearLayout ,
		padding={"0dp","0dp","0dp","0dp"},
		layout_width = "60dp" ,
		layout_height = "47dp" ,
		gravity = "center",
		--background = getHorizontalBG({0xffe9e9e9,0xffe9e9e9},25),
		boxpic[tid],
	}
} 
}else
	gg.alert ("SN.box的table内第一个元素必须是string") os.exit ()
end
radios = {
	LinearLayout ,
	orientation = "vertical" ,
	visibility = "gone" ,
	id = luajava.newId (tid) ,
	layout_width = 'fill_parent' ,
	elevation = "3dp",
	
}
for i = 2 , # views do
radios [# radios + 1] = views [i]
end
boxes[tid] = luajava.loadlayout(radios)
firadio [# firadio + 1] = boxes[tid]
_ENV [t1id] = luajava.loadlayout ({
    LinearLayout,
    layout_width="match_parent",
    layout_height = "wrap_content",
    gravity = "center",
    {
      LinearLayout,
      layout_width = 'match_parent',
      layout_height = "wrap_content",
      gravity = "center",
      elevation = "2dp",
      layout_marginRight = "4dp",
	  layout_marginLeft = "4dp",
      background = luajava.loadlayout{GradientDrawable,color=0xffffffff,cornerRadius=20},
      firadio
      }
      })
return _ENV [t1id]
end

function 公告栏()
return luajava.loadlayout({
	LinearLayout,
	background=getVerticalBG({0x00ffffff,0x00ffffff},12,2,0xff989898),
	layout_width='match_parent',
	padding='2dp',
	{TextView,
		layout_width='match_parent',
		text=公告,
		textColor = "#FFFFFFFF",
		textSize='8sp',
	}
})
end
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
jianbians:setStroke(4,"0xddffffff")--边框宽度和颜色
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
	mustxt = luajava.getIdView("搜索"):getText()
	if string.len(tostring(mustxt)) <= 2 or tostring(mustxt) == nil then
		gg.alert("至少输入2个字符")
		return 0
	end
	mustxt = tostring(mustxt)
	luajava.runUiThread(function()
		luajava.getIdView("jzz"):setVisibility(View.VISIBLE)
		luajava.getIdView("stxt"):setVisibility(View.GONE)
	end)
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
				--Typeface=font,
				layout_marginTop = "5dp",
				textSize = "15sp",
				textColor = "#EF8A5C",
				layout_marginBottom = "0dp",
				text = musname,
				layout_hight = "10dp",
				layout_width = "228dp",
				gravity = "center"

			},
			{
				TextView,
				--Typeface=font,
				layout_marginTop = "0dp",
				textColor = "#ffffff",
				textSize = "12sp",
				layout_marginBottom = "5dp",
				text = musart,
				layout_hight = "10dp",
				layout_width = "200dp",
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
	luajava.runUiThread(function()
		luajava.getIdView("jzz"):setVisibility(View.GONE)
		luajava.getIdView("stxt"):setVisibility(View.VISIBLE)
	end)
	-- gg.alert(tostring(wrfun))
end
function bofang(gqmz, gdmn)
	luajava.runUiThread(function()
		luajava.getIdView("搜索结果"):setVisibility(View.GONE)
		luajava.getIdView("加载"):setVisibility(View.VISIBLE)

	end)

	gg.playMusic("http://music.163.com/song/media/outer/url?id="..gdmn..".mp3" or huoqu(gdmn).data[0].url)
	-- gg.sleep(2000)
	luajava.runUiThread(function()
		luajava.getIdView("加载"):setVisibility(View.GONE)
		luajava.getIdView("搜索结果"):setVisibility(View.VISIBLE)
	end)
end
stxt = {
	TextView,
	--Typeface=font,
	text = "搜索",
	textColor="#ffffff",
	background=getbg(),
	layout_height="match_parent",
	visibility = "visible",
	gravity="center",
	layout_marginRight="10dp",
	id = luajava.newId("stxt"),
	layout_marginLeft = "3dp",
	textSize = "15sp",
	padding={"13.5dp","0dp","13.5dp","0dp"},
	onClick = function()
		thread = luajava.getThread(function()
			searchmusic()
		end)
		thread:start()
	end
}
jzz = {
	TextView,
	--Typeface=font,
	text = "加载中",
	visibility = "gone",
	id = luajava.newId("jzz"),
	layout_marginLeft = "10dp",
	textSize = "20sp",
	textColor="#ffffff",
}
jiaz = {
	TextView,
	--Typeface=font,
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
			id=luajava.newId("固定音乐"),
			},
			
			id = luajava.newId("搜索列表"),
			layout_hight = "300dp",
			orientation = "vertical",
			layout_width = "match_parent",
			gravity="center_horizontal",
			
			{
				LinearLayout,
				orientation = "horizontal",
				layout_width = "match_parent",
				padding={"10dp","0dp","10dp","0dp"},
				{
					EditText,
					--Typeface=font,
					hint = "搜索歌曲名称",
					textColor="#ffffff",
					id = luajava.newId("搜索"),
					background = getbg(),
					focusableInTouch = "true",
					focusable = "true",
					selectAllOnFocus = "true",
					singleLine = "true",
					layout_weight=1,
					gravity="center",
					layout_width = "match_parent"
				},
				stxt,
				jzz
			},
			jiaz
		}
	}
})
function getLyric(id)
    local lyric = table.json(gg.makeRequest("https://music.163.com/api/song/media?id="..id).content).lyric
    if lyric == nil then return "纯音乐，请欣赏 \n By SN" end
    local lyricData = {}
    local split = string.split(lyric:gsub("]","],"), "\n")
    for index, line in ipairs(split) do
        local splitLine = string.split(line, ",")
        if #splitLine >= 2 and (splitLine[1] ~= '' or splitLine[2] ~= '') then
            local time = splitLine[1]
            time = string.gsub(time, "%[", "")
            time = string.gsub(time, "%]", "")
            local minutes, second, millisecond = string.match(time, "(%d+):(%d+).(%d+)")
            local time = tonumber(minutes) * 60000 + tonumber(second) * 1000
            local time = time + millisecond
            local musicLyric = splitLine[2]
            table.insert(lyricData, {time, musicLyric})
        end
    end
    return lyricData
end
jiaz=SN.text('绘制耗时 17.308ms  目前帧率57.8FPS','#00B0FF','9sp')

luajava.startThread(function()
	while true do
		luajava.runUiThread(function()
			jiaz:setText('绘制耗时 '.. string.sub( math.random(10,20)*1 ,0,5) ..' ms\n当前帧率 ' .. string.sub( math.random(588,600)*0.1 ,0,5) .. ' FPS')
		end)
		gg.sleep(math.random(100,500))
	end
end)
namelist = {}
param1 = {}
floattable = {}
function 打开页面(name)
if _ENV['fenye'..name]==nil then gg.alert(name..'页面未创建') return 0 end
if floattable['fenye'..name]==1 then 关闭页面(name) return end
floattable['fenye'..name]=1
window = context:getSystemService("window") -- 获取窗口管理器
local function invoke(name,func1,func2)
local function invoke2()
window:addView(_ENV['fenye'..name], param1[name])
end

local runnable = luajava.getRunnable(invoke2)
local handler = luajava.getHandler()
handler:post(runnable)

end

invoke(name,func1,func2)
end

function 关闭页面(name)
if _ENV['fenye'..name]==nil then gg.alert(name..'页面未创建') return 0 end
if floattable['fenye'..name]==0 then return 0 end
floattable['fenye'..name]=0
local function invoke2()
window:removeView(_ENV['fenye'..name])
end
local runnable = luajava.getRunnable(invoke2)
local handler = luajava.getHandler()
handler:post(runnable)
end


function 创建页面(name,vs)
	if type(vs)~='table' then gg.alert(name..'创建页面格式错误') os.exit() end
	local tmp={LinearLayout,
				layout_width='match_parent',
				orientation='vertical'
			}
for i=1,#vs do
	table.insert(tmp,vs[i])
end
param1[name] = getLayoutParams2()
_ENV['fenye'..name] = luajava.loadlayout(
	{
		LinearLayout,
		layout_width = "wrap_content",
		layout_height = "wrap_content",
		orientation='vertical',
		gravity='center_horizontal',
		background=luajava.loadlayout({
		GradientDrawable ,
		color = "0x90000000",
		cornerRadius = 15
	} ),
		padding={'10dp','5dp','10dp','5dp'},
		{
			TextView,
			text = name,
			Typeface=font,
			textColor="0xffffffff",
			textSize='14sp',
			gravity = "center",
			layout_width = "130dp",
			layout_height = "wrap_content",
			
			onClick=function()
				local vis=luajava.getIdView(name)
				if vis:getVisibility()==8.0 then
					vis:setVisibility(View.VISIBLE)
				else
					vis:setVisibility(View.GONE)
				end
			end,
			onTouch=function(v, event)
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
		window:updateViewLayout(_ENV['fenye'..name], param1[name])
		end
		end,
		},
		{ScrollView,
			visibility='gone',
			id=luajava.newId(name),
			layout_width='130dp',
			layout_height='350dp',
			tmp
		}
	})
if type(_ENV['fenye'..name])~='userdata' then gg.alert(name..'生成失败') os.exit() end
end
paramt = {}
titletable = {}
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
function launch(appstart)
local loadBox = getLoadingBox('正在启动游戏\n'..appstart)
loadBox['显示']()
if appstart ~= nil then
gg.setProcess(appstart)
gg.sleep(500)
if tostring(gg.getTargetPackage()) == appstart then
gg.toast("正在启动游戏")
gg.processKill()
tuichu=true
luajava.setFloatingWindowHide(false)
os.exit()
end
gg.toast("正在启动游戏...")
app.startActivity(appstart)
jci=0
--gg.sleep(5000)
while true do
	gg.setProcess(appstart)
	gg.sleep(400)
	if tostring(gg.getTargetPackage()) == appstart then
		loadBox['关闭']()
		gg.alert("启动成功")
	else
		jci=jci+1
		if jci==14 then
			loadBox['关闭']()
			gg.alert("自动获取进程失败\n请手动选择游戏进程")
			gg.setProcessX()
			break
		end
	end
	gg.sleep(100)
end

end
end

local nulfunc=function() end
		
		
	----可使用控件
--SN.switch		
--SN.button
--SN.text		
--SN.box
--SN.box2
--SN.box3
function huiz()
--绘制内容必须写在这里否则会消失
	
end
huiz()

muby=625
--初始宽度


mubx=825
--初始高度

lzby=500
--点击左上角按钮后改变的宽度

lzbx=500
创建页面('功能',
	{
	SN.button('选择进程',gg.setProcessX),
	SN.switch(
		"防封1",
		function()
			
		end,
		function()
			
		end),
	SN.switch(
		"防封2",
		function()
			
		end,
		function()
			
		end),
	
	
})
--点击左上角按钮后改变的高度
公告=[[本次更新：
euro更新功能通知
1.时间检测(局内开)
2.删除邮件(娱乐功能)
时间检测注意事项：使用前开启快速冻结,间隔改0
]]
公告内容="euro全防"
--初始颜色，填写十六进制RGB
--可在功能按钮里调用changeColor()随时自定义切换
--例如：changeColor(0xffFF0023)
--可以在开启某个功能的同时变色，比如开了防封变绿色，开了高危功能变红色
控件颜色=0xff6750A4

悬浮窗图标="https://peizhi.by.4yym.cn/SN"
stab={
	"公告",
	"防封",
	"刷号",
	"竞赛",
	"娱乐",
	"音乐",
	"设置",
}



loadingBox = getLoadingBox('HarmonyOS UI加载中...')
loadingBox['显示']()
SN.menu({
	{---第一页
	SN.switch(
					"功能菜单",
					function()
					
						打开页面('功能')
					end,
					function()
						关闭页面('功能')
					end),
	SN.text("euro全防" , "#3399FF" , "15sp" ) ,
		SN.text("SN" , "#3399CC" , "15sp" ) ,
		SN.text("深圳x32" , "#FF66FF" , "15sp" ) ,
			SN.text("QQ群1[总]:728183930[未满]" , "#66CCFF" , "15sp" ) ,
		SN.text("QQ群2[分]:327444112[未满]" , "#66CCFF" , "15sp" ) ,
		SN.text("QQ群聊天[总]:211584470[未满]" , "#66CCFF" , "15sp" ) ,
		SN.button ("选择进程" ,
				function()
				string.toMusic ("请选择地铁跑酷进程")
				gg.setProcessX()
				end),
					SN.button('加入我们',
function()
qq.joinGroup("728183930")	
end),

	SN.button("💰使用指南💰",
function()
string.toMusic("道具赛使用指南1.无宝聚能在捡能量的时候不要开滑板否则会断网在没有捡能量的状态开即是稳定2.无视道具第一把是没有效果要完整的打完第一把之后才会有效果中途退出即是无效3.如果想稳定的话开无视道具和无宝聚能打的时候演一点即可")
gg.alert("道具赛使用指南1.无宝聚能在捡能量的时候不要开滑板否则会断网在没有捡能量的状态开即是稳定2.无视道具第一把是没有效果要完整的打完第一把之后才会有效果中途退出即是无效3.如果想稳定的话开无视道具和无宝聚能打的时候演一点即可")

end),

SN.button("打开水印", function()
      draw.setSize(49)
      draw.setStyle("填充")
      draw3 = require("draw3")
      text1 = draw3.text("euro全防", 40, 120)
      text3 = draw3.text("euro稳定奔放", 40, 180)
      text1.setColor((math.random(0, 16777215)))
      text2.setColor((math.random(0, 16777215)))
      text3.setColor((math.random(0, 16777215)))
    end
    ),

SN.box({
"防风区",
SN.switch("[登录]防闪退",
function()
io.open("/sdcard/.xa","w+"):write([[
10308
Var #C0E0E0A8|c0e0e0a8|4|ffffd8f1|1|0|0|0|r-xp|/data/data/com.limentudj/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|a8
Var #C119C0A8|c119c0a8|4|ffffd8f1|1|0|0|0|rw-p|/data/data/com.limentudj/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|a8
Var #C13F2D94|c13f2d94|4|ffffd8f1|1|0|0|0|rw-p|/data/data/com.limentudj/gameplugins/com.kiloo.subwaysurf/lib/libtprt.so|10d94
gg.loadList("/sdcard/.防行为",gg.LOAD_VALUES)
os.remove("/sdcard/.防行为")
]])
			string.toMusic('euro以为老板开启防止闪退')
					end),
					SN.switch("登录防",
function()
io.open("/sdcard/.xa","w+"):write([[
10308
Var #C1036714|c1036714|4|0|1|0|0|0|r-xp|/data/data/com.limentudj/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|226714
Var #C1083708|c1083708|4|0|1|0|0|0|r-xp|/data/data/com.limentudj/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|273708
Var #C11DF84C|c11df84c|4|0|1|0|0|0|rw-p|/data/data/com.limentudj/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|84c
Var #C11DF864|c11df864|4|0|1|0|0|0|rw-p|/data/data/com.limentudj/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|864
Var #C11DF86C|c11df86c|4|0|1|0|0|0|rw-p|/data/data/com.limentudj/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|86c
Var #C11DF89C|c11df89c|4|0|1|0|0|0|rw-p|/data/data/com.limentudj/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|89c
Var #C11DFA6C|c11dfa6c|4|0|1|0|0|0|rw-p|/data/data/com.limentudj/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|a6c
Var #C11DFA8C|c11dfa8c|4|0|1|0|0|0|rw-p|/data/data/com.limentudj/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|a8c
Var #C11E4588|c11e4588|4|0|1|0|0|0|rw-p|/data/data/com.limentudj/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|5588
Var #C11E46A4|c11e46a4|4|0|1|0|0|0|rw-p|/data/data/com.limentudj/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|56a4
Var #C11E46C0|c11e46c0|4|0|1|0|0|0|rw-p|/data/data/com.limentudj/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|56c0
Var #C11E7700|c11e7700|4|0|1|0|0|0|rw-p|/data/data/com.limentudj/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|8700
Var #C11E7708|c11e7708|4|0|1|0|0|0|rw-p|/data/data/com.limentudj/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|8708
Var #C11F3028|c11f3028|4|0|1|0|0|0|rw-p|/data/data/com.limentudj/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|14028
gg.loadList("/sdcard/.防",gg.LOAD_VALUES)
os.remove("/sdcard/.防")
]])
			string.toMusic('euro以为老板开启登录防')
					end),
					SN.switch("[大厅]防",
function()
io.open("/sdcard/.xa","w+"):write([[
10308
Var #AB79AD0C|ab79ad0c|4|0|1|0|0|0|rw-p|/data/data/com.limentudj/gameplugins/com.kiloo.subwaysurf/lib/libil2cpp.so:bss|12d0c
Var #BBAFFBF4|bbaffbf4|4|0|1|0|0|0|rw-p|/data/data/com.limentudj/gameplugins/com.kiloo.subwaysurf/lib/libunity.so:bss|6dbf4
Var #C11DF81C|c11df81c|4|0|1|0|0|0|rw-p|/data/data/com.limentudj/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|81c
Var #C11DFA0C|c11dfa0c|4|0|1|0|0|0|rw-p|/data/data/com.limentudj/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|a0c
Var #C11DFA60|c11dfa60|4|0|1|0|0|0|rw-p|/data/data/com.limentudj/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|a60
Var #C11E0B94|c11e0b94|4|0|1|0|0|0|rw-p|/data/data/com.limentudj/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|1b94
Var #C11E0BA0|c11e0ba0|4|0|1|0|0|0|rw-p|/data/data/com.limentudj/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|1ba0
Var #C11E4598|c11e4598|4|0|1|0|0|0|rw-p|/data/data/com.limentudj/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|5598
gg.loadList("/sdcard/大厅防",gg.LOAD_VALUES)
os.remove("/sdcard/大厅防")
]])
			string.toMusic('euro以为老板开启登录防')
					end),
	}),
	},{---第二页
SN.switch("过新手教程[任意界面]",
function()
BN(0xbb1268, 4, "~A MOVW  R0, #1")
gg.alert("新手教程已跳跃，直接结算即可")
string.toMusic('新手教程已跳跃，直接结算即可')
end),
SN.box({"防御系统①",
SN.switch("[登录]防止闪退",
function()
io.open("/sdcard/.xa","w+"):write([[
28329
Var #B4468038|b4468038|4|0|1|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|38
Var #B4468044|b4468044|4|0|1|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|44
Var #B4468058|b4468058|4|0|1|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|58
Var #B4468074|b4468074|4|0|1|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|74
Var #B44680A8|b44680a8|4|0|1|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|a8
Var #B44680AC|b44680ac|4|0|1|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|ac
Var #B44680B0|b44680b0|4|0|1|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|b0
Var #B44680B4|b44680b4|4|0|1|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|b4
Var #B44680B8|b44680b8|4|0|1|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|b8


gg.loadList("/sdcard/.防行为",gg.LOAD_VALUES)
os.remove("/sdcard/.防行为")
]])
			string.toMusic('euro以为老板开启防止闪退')
					end),
SN.switch("[登录]防止环境",
function()
local File = io.open ( "/storage/emulated/0/.Environmental_protection" , "r" )
		if not File then
			io.open ( "/storage/emulated/0/.Environmental_protection" , "w+" ) : write ( [[22769
Var #B4459134|b4459134|4|0|1|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|2134
Var #B4459140|b4459140|4|0|1|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|2140
Var #B4459204|b4459204|4|0|1|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|2204
Var #B4459210|b4459210|4|0|1|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|2210
Var #B445C4DC|b445c4dc|4|0|1|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|54dc
Var #B445C58C|b445c58c|4|0|1|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|558c
Var #B445C594|b445c594|4|0|1|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|5594
Var #B445C6A4|b445c6a4|4|0|1|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|56a4
Var #B445C6C0|b445c6c0|4|0|1|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|56c0
Var #B445F738|b445f738|4|0|1|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|8738
Var #B445F73C|b445f73c|4|0|1|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|873c
Var #B445F740|b445f740|4|0|1|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|8740
Var #B445F748|b445f748|4|0|1|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|8748
Var #B445F74C|b445f74c|4|0|1|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|874c
Var #B445F754|b445f754|4|0|1|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|8754
Var #B445F758|b445f758|4|0|1|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|8758
Var #B445F760|b445f760|4|0|1|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|8760
Var #B445F764|b445f764|4|0|1|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|8764
Var #BC169A6C|bc169a6c|4|0|1|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|a6c
Var #BC169A78|bc169a78|4|0|1|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|a78
Var #BC169A84|bc169a84|4|0|1|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|a84
Var #BC169A88|bc169a88|4|0|1|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|a88
Var #BC169A8C|bc169a8c|4|0|1|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|a8c
Var #BC169AC0|bc169ac0|4|0|1|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|ac0

]] )
		else
			gg.loadList ( "/storage/emulated/0/.Environmental_protection" , gg.LOAD_VALUES_FREEZE )
			gg.clearList ( )
			string.toMusic('euro以为老板开启防止环境')
			end
					end),
SN.switch("[加载]独家全防",
function()
io.open("/sdcard/.xa","w+"):write([[
9923
Var #BC1260A8|bc1260a8|4|270f|1|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|a8
Var #BC1694D0|bc1694d0|4|0|1|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|4d0
Var #BC1694D4|bc1694d4|4|0|1|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|4d4
Var #BC1694DC|bc1694dc|4|0|1|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|4dc
Var #BC169528|bc169528|4|0|1|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|528
Var #BC169574|bc169574|4|0|1|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|574
Var #BC169580|bc169580|4|0|1|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|580
Var #BC169584|bc169584|4|0|1|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|584
Var #BC1695D0|bc1695d0|4|0|1|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|5d0
Var #BC16981C|bc16981c|4|0|1|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|81c
Var #BC16983C|bc16983c|4|0|1|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|83c
Var #BC16984C|bc16984c|4|0|1|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|84c
Var #BC16985C|bc16985c|4|0|1|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|85c
Var #BC169864|bc169864|4|0|1|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|864
Var #BC16986C|bc16986c|4|0|1|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|86c
Var #BC16989C|bc16989c|4|0|1|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|89c
Var #BC169924|bc169924|4|0|1|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|924
Var #BC1699AC|bc1699ac|4|0|1|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|9ac
Var #BC1699D8|bc1699d8|4|0|1|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|9d8
Var #BC1699E4|bc1699e4|4|0|1|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|9e4
Var #BC169A0C|bc169a0c|4|0|1|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|a0c
Var #BC169A4C|bc169a4c|4|0|1|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|a4c
Var #BC169A60|bc169a60|4|0|1|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|a60
Var #BC169A6C|bc169a6c|4|0|1|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|a6c
Var #BC169A78|bc169a78|4|0|1|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|a78
Var #BC169A84|bc169a84|4|0|1|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|a84
Var #BC169A88|bc169a88|4|0|1|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|a88
Var #BC169A8C|bc169a8c|4|0|1|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|a8c
Var #BC169AC0|bc169ac0|4|0|1|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|ac0
Var #BC169B30|bc169b30|4|0|1|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|b30
Var #BC16AB94|bc16ab94|4|0|1|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|1b94
Var #BC16ABA0|bc16aba0|4|0|1|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|1ba0
Var #BC16ABD0|bc16abd0|4|0|1|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|1bd0
Var #BC16AC60|bc16ac60|4|0|1|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|1c60
Var #BC16ACE8|bc16ace8|4|0|1|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|1ce8
Var #BC16ACF4|bc16acf4|4|0|1|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|1cf4
Var #BC16AD00|bc16ad00|4|0|1|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|1d00
Var #BC322D94|bc322d94|4|270f|1|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtprt.so|10d94

gg.loadList("/sdcard/.防行为",gg.LOAD_VALUES)
os.remove("/sdcard/.防行为")
]])
string.toMusic('euro以为老板开启独家全防')
					end),	
SN.switch("[登录]过ACE",
					function()
function MR_MkPointer(SONC,NCFW,PYL,TYPE,VALUE,NAME,DJ)
local Somod=gg.getRangesList(SONC)[1]
if Somod==nil then
gg.alert(NAME..'开启失败\n━━━━━━━━━━━━━━━\n错误原因:未找到相关内存\n解决方法:请重新选择游戏进程\n━━━━━━━━━━━━━━━')
else
function S_Pointer(t_So, t_Offset, _bit)
	local function getRanges()
		local ranges = {}
		local t = gg.getRangesList('^/data/*.so*$')
		for i, v in pairs(t) do
			if v.type:sub(2, 2) == 'w' then
				table.insert(ranges, v)
			end
		end
		return ranges
	end
	local function Get_Address(N_So, Offset, ti_bit)
		local ti = gg.getTargetInfo()
		local S_list = getRanges()
		local t = {}
		local _t
		local _S = nil
		if ti_bit then
			_t = 32
		else
			_t = 4
		end
		for i in pairs(S_list) do
			local _N = S_list[i].internalName:gsub('^.*/', '')
			if N_So[1] == _N and N_So[2] == S_list[i].state then
				_S = S_list[i]
				break
			end
		end
		if _S then
			t[#t + 1] = {}
			t[#t].address = _S.start + Offset[1]
			t[#t].flags = _t
			if #Offset ~= 1 then
				for i = 2, #Offset do
					local S = gg.getValues(t)
					t = {}
					for _ in pairs(S) do
						if not ti.x64 then
							S[_].value = S[_].value & 0xFFFFFFFF
						end
						t[#t + 1] = {}
						t[#t].address = S[_].value + Offset[i]
						t[#t].flags = _t
					end
				end
			end
			_S = t[#t].address
		end
		return _S
	end
	local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit))
	return _A
end
time=os.clock()
local DZT = S_Pointer({SONC, NCFW},{0x0})
local PY_offsets = PYL
for _,MR in pairs(PY_offsets) do
gg.addListItems({{address = DZT+MR, flags = TYPE, value = VALUE, freeze = DJ}})
end
local time=string.sub(os.clock()-time,0,5)
gg.toast(NAME..'️开启成功\n当前进程名称:'..gg.getTargetInfo().label..'\n当前进程包名:'..gg.getTargetPackage()..'\n总共耗时:'..time..'秒')
end
end
			
			
MR_MkPointer("libtersafe2.so","Cd",{0x8,0xC,0x10,0x14,0x3C,0x40,0x58,0x60,0x74,0x78,0x7C,0x84,0xA8,0xAC,0xB0,0xB4,0xB8,0x128,0x12C,0x130,0x134,0x200,0x204,0x208},4,-1,"过ACE",true)
			string.toMusic('euro以为老板开启过ACE开启成功')
					end),
SN.switch("[下线]防追封",
					function()
			io.open("/sdcard/.线下防追","w+"):write([[
28077
Var #BE941508|be941508|4|ffffffff|1|0|0|0|r-xp|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so|334508
Var #BE94155C|be94155c|4|ffffffff|1|0|0|0|r-xp|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so|33455c
Var #BE941568|be941568|4|ffffffff|1|0|0|0|r-xp|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so|334568
Var #BE945C14|be945c14|4|ffffffff|1|0|0|0|r-xp|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so|338c14
Var #BE94BFF0|be94bff0|4|ffffffff|1|0|0|0|r-xp|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so|33eff0
Var #BE9504E8|be9504e8|4|ffffffff|1|0|0|0|r-xp|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so|3434e8
Var #BE951064|be951064|4|ffffffff|1|0|0|0|r-xp|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so|344064
Var #BE951068|be951068|4|ffffffff|1|0|0|0|r-xp|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so|344068
Var #BE95109C|be95109c|4|ffffffff|1|0|0|0|r-xp|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so|34409c
Var #BE9CAF10|be9caf10|4|ffffffff|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so|31f10
Var #BE9CB578|be9cb578|4|ffffffff|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so|32578
Var #BE9CB7D0|be9cb7d0|4|ffffffff|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so|327d0
Var #BE9CB7E8|be9cb7e8|4|ffffffff|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so|327e8
Var #BE9CD690|be9cd690|4|ffffffff|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so|34690
Var #BE9CD6E0|be9cd6e0|4|ffffffff|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so|346e0
Var #BE9CD8B0|be9cd8b0|4|ffffffff|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so|348b0
Var #B2F1D288|b2f1d288|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|59288
Var #B310DE58|b310de58|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|249e58
Var #B31940BC|b31940bc|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|2d00bc
Var #B31940EC|b31940ec|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|2d00ec
Var #B3195C94|b3195c94|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|2d1c94
Var #B3195DF8|b3195df8|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|2d1df8
Var #B3250038|b3250038|4|ffffffff|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|38
Var #B3250044|b3250044|4|ffffffff|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|44
Var #B3250058|b3250058|4|ffffffff|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|58
Var #B3250074|b3250074|4|ffffffff|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|74
Var #B3298694|b3298694|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|5694
Var #B31AB288|b31ab288|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|59288
Var #B339BE58|b339be58|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|249e58
Var #B34220BC|b34220bc|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|2d00bc
Var #B34220EC|b34220ec|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|2d00ec
Var #B3423C94|b3423c94|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|2d1c94
Var #B3423DF8|b3423df8|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|2d1df8
Var #B3526694|b3526694|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|5694

]])
																		gg.loadList("/sdcard/.线下防追", gg.LOAD_VALUES_FREEZE)
																		os.remove("/sdcard/.线下防追")
																		gg.toast("可以退出游戏了")
																		gg.alert("请老板退出游戏")
			string.toMusic('euro以为老板开启过ACE开启成功')
					end),
}),	
SN.box({"防御系统②",
SN.switch("[登录]登录全防",
function()
					      io.open("/sdcard/全防", "w+"):write([[
25922
Var #B4498014|b4498014|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|1014
Var #B4498C34|b4498c34|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|1c34
Var #B4498CD4|b4498cd4|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|1cd4
Var #B4498D24|b4498d24|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|1d24
Var #B4498E14|b4498e14|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|1e14
Var #B4498E18|b4498e18|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|1e18
Var #B4498E1C|b4498e1c|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|1e1c
Var #B4498E20|b4498e20|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|1e20
Var #B4498E24|b4498e24|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|1e24
Var #B4498E74|b4498e74|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|1e74
Var #B4498E80|b4498e80|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|1e80
Var #B4498E98|b4498e98|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|1e98
Var #B4498EB4|b4498eb4|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|1eb4
Var #B4498EC0|b4498ec0|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|1ec0
Var #B4498EEC|b4498eec|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|1eec
Var #B4498F0C|b4498f0c|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|1f0c
Var #B4498F2C|b4498f2c|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|1f2c
Var #B47B92C0|b47b92c0|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3222c0
Var #B47B92C4|b47b92c4|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3222c4
Var #B47B92DC|b47b92dc|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3222dc
Var #B47B92E8|b47b92e8|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3222e8
Var #B47B92F4|b47b92f4|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3222f4
Var #B47B9308|b47b9308|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|322308
Var #B47B930C|b47b930c|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|32230c
Var #B47BA364|b47ba364|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|323364
Var #B47BA368|b47ba368|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|323368
Var #B47BA384|b47ba384|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|323384
Var #B47BA394|b47ba394|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|323394
Var #B47BA3AC|b47ba3ac|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3233ac
Var #B47BA3B4|b47ba3b4|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3233b4
Var #B47BD63C|b47bd63c|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|32663c
Var #B47BD648|b47bd648|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|326648
Var #B47BDFEC|b47bdfec|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|326fec
Var #B47C80D4|b47c80d4|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3310d4
Var #B47C8108|b47c8108|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|331108
Var #B47C8120|b47c8120|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|331120
Var #B47C813C|b47c813c|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|33113c
Var #B47C816C|b47c816c|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|33116c
Var #B47C8188|b47c8188|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|331188
Var #B47C81AC|b47c81ac|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3311ac
Var #B47C81B0|b47c81b0|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3311b0
Var #B47C81E4|b47c81e4|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3311e4
Var #B47C821C|b47c821c|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|33121c
Var #B47C8228|b47c8228|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|331228
Var #B47C822C|b47c822c|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|33122c
Var #B47CBEEC|b47cbeec|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|334eec
Var #B47CBF60|b47cbf60|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|334f60
Var #B47CBF88|b47cbf88|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|334f88
Var #B47CBFAC|b47cbfac|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|334fac
Var #B47CBFE8|b47cbfe8|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|334fe8
Var #B47CBFF0|b47cbff0|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|334ff0
Var #B47CE394|b47ce394|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|337394
Var #B47CE3C8|b47ce3c8|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3373c8
Var #B47CE630|b47ce630|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|337630
Var #B47CE63C|b47ce63c|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|33763c
Var #B47CE6B4|b47ce6b4|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3376b4
Var #B47CE818|b47ce818|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|337818
Var #B47CE844|b47ce844|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|337844
Var #B47CF07C|b47cf07c|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|33807c
Var #B47D50F4|b47d50f4|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|33e0f4
Var #B47D55D0|b47d55d0|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|33e5d0
Var #B47D5EC0|b47d5ec0|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|33eec0
Var #B47D5F00|b47d5f00|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|33ef00
Var #B47D5FF0|b47d5ff0|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|33eff0
Var #B47F3A7C|b47f3a7c|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|35ca7c
Var #B47F3B30|b47f3b30|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|35cb30
Var #B47F3C0C|b47f3c0c|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|35cc0c
Var #B47F3C7C|b47f3c7c|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|35cc7c
Var #B47F4090|b47f4090|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|35d090
Var #B47F42AC|b47f42ac|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|35d2ac
Var #B47F42B0|b47f42b0|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|35d2b0
Var #B47F42BC|b47f42bc|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|35d2bc
Var #B47F42C0|b47f42c0|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|35d2c0
Var #B47F42C8|b47f42c8|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|35d2c8
Var #B47F42CC|b47f42cc|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|35d2cc
Var #B47F42D0|b47f42d0|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|35d2d0
Var #B47F42D8|b47f42d8|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|35d2d8
Var #B47F42DC|b47f42dc|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|35d2dc
Var #B47F42E0|b47f42e0|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|35d2e0
Var #B47F42E8|b47f42e8|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|35d2e8
Var #B47F42EC|b47f42ec|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|35d2ec
Var #B47F42F0|b47f42f0|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|35d2f0
Var #B47F5F08|b47f5f08|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|35ef08
Var #B47F65D4|b47f65d4|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|35f5d4
Var #B47F6664|b47f6664|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|35f664
Var #B47F683C|b47f683c|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|35f83c
Var #B47F6940|b47f6940|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|35f940
Var #B47F7C60|b47f7c60|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|360c60
Var #B47F7C70|b47f7c70|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|360c70
Var #B47F7D34|b47f7d34|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|360d34
Var #B47F8220|b47f8220|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|361220
Var #B47F8554|b47f8554|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|361554
Var #B47F8E50|b47f8e50|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|361e50
Var #B47F8F08|b47f8f08|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|361f08
Var #B47F8FC8|b47f8fc8|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|361fc8
Var #B47ED004|b47ed004|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|356004
Var #B47ED048|b47ed048|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|356048
Var #B47ED178|b47ed178|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|356178
Var #B47ED530|b47ed530|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|356530
Var #B47ED5C4|b47ed5c4|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3565c4
Var #B47ED5CC|b47ed5cc|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3565cc
Var #B47ED5D4|b47ed5d4|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3565d4
Var #B47ED6C4|b47ed6c4|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3566c4
Var #B47ED824|b47ed824|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|356824
Var #B47EDC6C|b47edc6c|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|356c6c
Var #B47EDC70|b47edc70|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|356c70
Var #B47EDD9C|b47edd9c|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|356d9c
Var #B47EE374|b47ee374|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|357374
Var #B47EE6A0|b47ee6a0|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3576a0
Var #B47EE6B8|b47ee6b8|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3576b8
Var #B47EEA48|b47eea48|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|357a48
Var #B47EEA4C|b47eea4c|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|357a4c
Var #B47EEA54|b47eea54|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|357a54
Var #B47EEA5C|b47eea5c|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|357a5c
Var #B47EECBC|b47eecbc|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|357cbc
Var #B47EED08|b47eed08|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|357d08
Var #B47EEF50|b47eef50|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|357f50
Var #B47EEF54|b47eef54|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|357f54
Var #B480DFF0|b480dff0|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|376ff0
Var #B480E280|b480e280|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|377280
Var #B480E2B0|b480e2b0|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3772b0
Var #B480E808|b480e808|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|377808
Var #B480E830|b480e830|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|377830
Var #B480E874|b480e874|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|377874
Var #B480E9F8|b480e9f8|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3779f8
Var #B480E9FC|b480e9fc|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3779fc
Var #B480EDE0|b480ede0|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|377de0
Var #B480EF4C|b480ef4c|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|377f4c
Var #B480EF6C|b480ef6c|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|377f6c
Var #B480EFD8|b480efd8|4|0|0|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|377fd8
15828
Var #B3250038|b3250038|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|38
Var #B3250044|b3250044|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|44
Var #B3250058|b3250058|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|58
Var #B3250074|b3250074|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|74
Var #B32500A8|b32500a8|4|ffffffff|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|a8
Var #AC6CC7F8|ac6cc7f8|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libil2cpp.so:bss|c37f8
Var #B323BF4C|b323bf4c|4|0|1|0|0|0|r-xp|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|377f4c
Var #B329384C|b329384c|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|84c
Var #B329858C|b329858c|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|558c
Var #B32985A4|b32985a4|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|55a4
Var #B32986D8|b32986d8|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|56d8
Var #B329B700|b329b700|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|8700
Var #B329B728|b329b728|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|8728
Var #B329B730|b329b730|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|8730
Var #B32500A8|b32500a8|4|ffffffff|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|a8
Var #B3282578|b3282578|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|32578
Var #B32827D0|b32827d0|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|327d0
Var #B32827E8|b32827e8|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|327e8
Var #B3284690|b3284690|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|34690
Var #B32846E0|b32846e0|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|346e0
Var #B32848B0|b32848b0|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|348b0
Var #B32934D0|b32934d0|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|4d0
Var #B3293510|b3293510|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|510
Var #B3293528|b3293528|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|528
Var #B3293574|b3293574|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|574
Var #B329383C|b329383c|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|83c
Var #B329385C|b329385c|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|85c
Var #B3293864|b3293864|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|864
Var #B329386C|b329386c|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|86c
Var #B329389C|b329389c|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|89c
Var #B3293924|b3293924|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|924
Var #B32939AC|b32939ac|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|9ac
Var #B32939D8|b32939d8|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|9d8
Var #B3293A4C|b3293a4c|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|a4c
Var #B3293A6C|b3293a6c|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|a6c
Var #B3293A78|b3293a78|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|a78
Var #B3293A84|b3293a84|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|a84
Var #B3293A88|b3293a88|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|a88
Var #B3293A8C|b3293a8c|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|a8c
Var #B3293B30|b3293b30|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|b30
Var #B3294B64|b3294b64|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|1b64
Var #B3294BD0|b3294bd0|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|1bd0
Var #B3294CE8|b3294ce8|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|1ce8
Var #B3294CF4|b3294cf4|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|1cf4
Var #B3295134|b3295134|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|2134
Var #B3295140|b3295140|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|2140
Var #B3295204|b3295204|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|2204
Var #B3297294|b3297294|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|4294
Var #B3297298|b3297298|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|4298
Var #B3297354|b3297354|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|4354
Var #B3297358|b3297358|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|4358
Var #B32984AC|b32984ac|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|54ac
Var #B32984DC|b32984dc|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|54dc
Var #B329855C|b329855c|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|555c
Var #B3298588|b3298588|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|5588
Var #B32985B0|b32985b0|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|55b0
Var #B3298614|b3298614|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|5614
Var #B3298620|b3298620|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|5620
Var #B3298690|b3298690|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|5690
Var #B32986A4|b32986a4|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|56a4
Var #B32986C0|b32986c0|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|56c0
Var #B329B73C|b329b73c|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|873c
Var #B32A7004|b32a7004|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|14004
Var #B32A7020|b32a7020|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|14020
Var #B32A7028|b32a7028|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|14028
Var #B3250038|b3250038|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|38
Var #B3250044|b3250044|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|44
Var #B3250058|b3250058|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|58
Var #B3250074|b3250074|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|74
Var #B32500A8|b32500a8|4|ffffffff|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|a8
Var #B3282578|b3282578|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|32578
Var #B32827D0|b32827d0|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|327d0
Var #B32827E8|b32827e8|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|327e8
Var #B3284690|b3284690|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|34690
Var #B32846E0|b32846e0|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|346e0
Var #B32848B0|b32848b0|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|348b0
Var #B32934D0|b32934d0|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|4d0
Var #B3293510|b3293510|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|510
Var #B3293528|b3293528|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|528
Var #B3293574|b3293574|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|574
Var #B329383C|b329383c|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|83c
Var #B3293858|b3293858|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|858
Var #B329385C|b329385c|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|85c
Var #B3293864|b3293864|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|864
Var #B329386C|b329386c|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|86c
Var #B329389C|b329389c|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|89c
Var #B3293924|b3293924|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|924
Var #B32939AC|b32939ac|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|9ac
Var #B32939D8|b32939d8|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|9d8
Var #B3293A4C|b3293a4c|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|a4c
Var #B3293A6C|b3293a6c|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|a6c
Var #B3293A78|b3293a78|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|a78
Var #B3293A84|b3293a84|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|a84
Var #B3293A88|b3293a88|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|a88
Var #B3293A8C|b3293a8c|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|a8c
Var #B3293B30|b3293b30|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|b30
Var #B3294B64|b3294b64|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|1b64
Var #B3294BD0|b3294bd0|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|1bd0
Var #B3294CE8|b3294ce8|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|1ce8
Var #B3294CF4|b3294cf4|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|1cf4
Var #B3295134|b3295134|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|2134
Var #B3295140|b3295140|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|2140
Var #B3295204|b3295204|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|2204
Var #B3297294|b3297294|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|4294
Var #B3297298|b3297298|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|4298
Var #B3297354|b3297354|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|4354
Var #B3297358|b3297358|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|4358
Var #B32984AC|b32984ac|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|54ac
Var #B32984DC|b32984dc|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|54dc
Var #B329855C|b329855c|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|555c
Var #B3298588|b3298588|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|5588
Var #B329858C|b329858c|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|558c
Var #B32985B0|b32985b0|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|55b0
Var #B3298614|b3298614|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|5614
Var #B3298620|b3298620|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|5620
Var #B3298690|b3298690|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|5690
Var #B32986A4|b32986a4|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|56a4
Var #B32986C0|b32986c0|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|56c0
Var #B32986D8|b32986d8|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|56d8
Var #B329B728|b329b728|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|8728
Var #B329B730|b329b730|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|8730
Var #B329B73C|b329b73c|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|873c
Var #B32A7004|b32a7004|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|14004
Var #B32A7020|b32a7020|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|14020
Var #B32A7028|b32a7028|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|14028




		      ]])
      gg.loadList("/sdcard/全防", gg.LOAD_VALUES)
      os.remove("/sdcard/全防")
      gg.alert("euro提醒您防封开启成功，可以稳定奔放了，祝您游戏愉快")	
end,
function ()
end),	
SN.switch("[大厅]防止行为",
function()
function QiuQing(FUNCTIONADD,TYPE,VALUE)------防检测模板
local SOMOD=gg.getRangesList("il2cpp.so")
if SOMOD[1]==nil then _error() else
gg.setValues({{address=SOMOD[1].start+FUNCTIONADD,flags=TYPE,value=VALUE}})
gg.setValues({{address=SOMOD[1].start+FUNCTIONADD+4,flags=TYPE,value="1EFF2FE1r"}})
end
end
QiuQing(0x18f2a88,4,"~A MOVW	 R0, #0")--关闭1分40秒检测
QiuQing(0x2d2d960 ,4,"~A MOVW	 R0, #1")--人物总数检测1
QiuQing(0x2d26140 ,4,"~A MOVW	 R0, #0")--金币数量检测2
QiuQing(0x2d2dd80 ,4,"~A MOVW	 R0, #0")--关闭1分40秒检测3
QiuQing(0x2d2da10 ,4,"~A MOVW	 R0, #0")--速度异常检测4
QiuQing(0x2d2db70 ,4,"~A MOVW	 R0, #0")--钥匙数量检测5
QiuQing(0x2bcc480 ,4,"~A MOVW	 R0, #0")--隐藏信息6
gg.alert("euro以为您开启防行为")
end,
function ()
end),	
SN.switch("[大厅]防止人工",
function()
					      io.open("/sdcard/全防", "w+"):write([[
10111
Var #B35E3008|b35e3008|4|ffffffff|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|8
Var #B35E300C|b35e300c|4|ffffffff|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|c
Var #B35E3010|b35e3010|4|ffffffff|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|10
Var #B35E3014|b35e3014|4|ffffffff|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|14
Var #B35E3038|b35e3038|4|ffffffff|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|38
Var #B35E303C|b35e303c|4|ffffffff|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3c
Var #B35E3040|b35e3040|4|ffffffff|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|40
Var #B35E3044|b35e3044|4|ffffffff|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|44
Var #B35E3058|b35e3058|4|ffffffff|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|58
Var #B35E3060|b35e3060|4|ffffffff|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|60
Var #B35E3074|b35e3074|4|ffffffff|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|74
Var #B35E3078|b35e3078|4|ffffffff|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|78
Var #B35E307C|b35e307c|4|ffffffff|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|7c
Var #B35E3084|b35e3084|4|ffffffff|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|84
Var #B35E30A8|b35e30a8|4|ffffffff|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|a8
Var #B35E30AC|b35e30ac|4|ffffffff|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|ac
Var #B35E30B0|b35e30b0|4|ffffffff|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|b0
Var #B35E30B4|b35e30b4|4|ffffffff|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|b4
Var #B35E30B8|b35e30b8|4|ffffffff|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|b8
Var #B35E3128|b35e3128|4|ffffffff|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|128
Var #B35E312C|b35e312c|4|ffffffff|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|12c
Var #B35E3130|b35e3130|4|ffffffff|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|130
Var #B35E3134|b35e3134|4|ffffffff|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|134
Var #B35E3200|b35e3200|4|ffffffff|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|200
Var #B35E3204|b35e3204|4|ffffffff|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|204
Var #B35E3208|b35e3208|4|ffffffff|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|208
Var #B35EBEE8|b35ebee8|4|ffffffff|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|8ee8
Var #B35ECA28|b35eca28|4|ffffffff|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|9a28
Var #B3612D20|b3612d20|4|ffffffff|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|2fd20
Var #B3625FB8|b3625fb8|4|ffffffff|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|42fb8
Var #B3625FBC|b3625fbc|4|ffffffff|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|42fbc
Var #B3625FC0|b3625fc0|4|ffffffff|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|42fc0
Var #B3625FC4|b3625fc4|4|ffffffff|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|42fc4
Var #B3625FC8|b3625fc8|4|ffffffff|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|42fc8
Var #B3625FCC|b3625fcc|4|ffffffff|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|42fcc
Var #B3625FD0|b3625fd0|4|ffffffff|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|42fd0
Var #B3625FD4|b3625fd4|4|ffffffff|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|42fd4
Var #B3625FD8|b3625fd8|4|ffffffff|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|42fd8
Var #B3625FDC|b3625fdc|4|ffffffff|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|42fdc
Var #B36264D0|b36264d0|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|4d0
Var #B3626510|b3626510|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|510
Var #B3626528|b3626528|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|528
Var #B3626574|b3626574|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|574
Var #B362681C|b362681c|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|81c
Var #B362684C|b362684c|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|84c
Var #B362685C|b362685c|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|85c
Var #B3626864|b3626864|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|864
Var #B362686C|b362686c|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|86c
Var #B36268A4|b36268a4|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|8a4
Var #B36268A8|b36268a8|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|8a8
Var #B36268AC|b36268ac|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|8ac
Var #B36268B0|b36268b0|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|8b0
Var #B36268B4|b36268b4|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|8b4
Var #B36268B8|b36268b8|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|8b8
Var #B36268BC|b36268bc|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|8bc
Var #B36268C0|b36268c0|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|8c0
Var #B36268C4|b36268c4|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|8c4
Var #B36268C8|b36268c8|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|8c8
Var #B36268CC|b36268cc|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|8cc
Var #B36268D0|b36268d0|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|8d0
Var #B36268D4|b36268d4|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|8d4
Var #B36268D8|b36268d8|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|8d8
Var #B3626924|b3626924|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|924
Var #B3626A4C|b3626a4c|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|a4c
Var #B3626A6C|b3626a6c|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|a6c
Var #B3626A78|b3626a78|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|a78
Var #B3626A84|b3626a84|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|a84
Var #B3626A88|b3626a88|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|a88
Var #B3626A8C|b3626a8c|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|a8c
Var #B3626B30|b3626b30|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|b30
Var #B3627B64|b3627b64|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|1b64
Var #B3627BD0|b3627bd0|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|1bd0
Var #B3627CE8|b3627ce8|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|1ce8
Var #B3627CF4|b3627cf4|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|1cf4
Var #B3628134|b3628134|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|2134
Var #B3628140|b3628140|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|2140
Var #B3628204|b3628204|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|2204
Var #B362A294|b362a294|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|4294
Var #B362A298|b362a298|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|4298
Var #B362A354|b362a354|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|4354
Var #B362A358|b362a358|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|4358
Var #B362B4AC|b362b4ac|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|54ac
Var #B362B4DC|b362b4dc|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|54dc
Var #B362B588|b362b588|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|5588
Var #B362B58C|b362b58c|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|558c
Var #B362B5B0|b362b5b0|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|55b0
Var #B362B614|b362b614|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|5614
Var #B362B620|b362b620|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|5620
Var #B362B690|b362b690|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|5690
Var #B362B6A4|b362b6a4|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|56a4
Var #B362B6C0|b362b6c0|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|56c0
Var #B362B6D8|b362b6d8|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|56d8
Var #B362E728|b362e728|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|8728
Var #B362E730|b362e730|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|8730
Var #B362E73C|b362e73c|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|873c
Var #B3639E64|b3639e64|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|13e64
Var #B3639E68|b3639e68|4|0|0|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|13e68



		      ]])
      gg.loadList("/sdcard/全防", gg.LOAD_VALUES)
      os.remove("/sdcard/全防")	
      	string.toMusic("euro已为老板开启防止人工")	end,
function ()
end),		
SN.switch("[下线]防追封",
					function()
				io.open("/sdcard/全防", "w+"):write([[    
26627
Var #BCA8A014|bca8a014|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|1014
Var #BCA8AC34|bca8ac34|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|1c34
Var #BCA8ACD4|bca8acd4|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|1cd4
Var #BCA8AD24|bca8ad24|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|1d24
Var #BCA8AE14|bca8ae14|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|1e14
Var #BCA8AE18|bca8ae18|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|1e18
Var #BCA8AE1C|bca8ae1c|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|1e1c
Var #BCA8AE20|bca8ae20|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|1e20
Var #BCA8AE24|bca8ae24|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|1e24
Var #BCA8AE74|bca8ae74|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|1e74
Var #BCA8AE80|bca8ae80|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|1e80
Var #BCA8AE98|bca8ae98|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|1e98
Var #BCA8AEB4|bca8aeb4|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|1eb4
Var #BCA8AEC0|bca8aec0|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|1ec0
Var #BCA8AEEC|bca8aeec|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|1eec
Var #BCA8AF0C|bca8af0c|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|1f0c
Var #BCA8AF2C|bca8af2c|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|1f2c
Var #BCDAB2C0|bcdab2c0|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3222c0
Var #BCDAB2C4|bcdab2c4|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3222c4
Var #BCDAB2DC|bcdab2dc|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3222dc
Var #BCDAB2E8|bcdab2e8|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3222e8
Var #BCDAB2F4|bcdab2f4|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3222f4
Var #BCDAB308|bcdab308|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|322308
Var #BCDAB30C|bcdab30c|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|32230c
Var #BCDAC364|bcdac364|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|323364
Var #BCDAC368|bcdac368|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|323368
Var #BCDAC384|bcdac384|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|323384
Var #BCDAC394|bcdac394|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|323394
Var #BCDAC3AC|bcdac3ac|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3233ac
Var #BCDAC3B4|bcdac3b4|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3233b4
Var #BCDAF63C|bcdaf63c|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|32663c
Var #BCDAF648|bcdaf648|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|326648
Var #BCDAFFEC|bcdaffec|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|326fec
Var #BCDBA0D4|bcdba0d4|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3310d4
Var #BCDBA108|bcdba108|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|331108
Var #BCDBA120|bcdba120|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|331120
Var #BCDBA13C|bcdba13c|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|33113c
Var #BCDBA16C|bcdba16c|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|33116c
Var #BCDBA188|bcdba188|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|331188
Var #BCDBA1AC|bcdba1ac|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3311ac
Var #BCDBA1B0|bcdba1b0|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3311b0
Var #BCDBA1E4|bcdba1e4|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3311e4
Var #BCDBA21C|bcdba21c|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|33121c
Var #BCDBA228|bcdba228|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|331228
Var #BCDBA22C|bcdba22c|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|33122c
Var #BCDBDEEC|bcdbdeec|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|334eec
Var #BCDBDF60|bcdbdf60|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|334f60
Var #BCDBDF88|bcdbdf88|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|334f88
Var #BCDBDFAC|bcdbdfac|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|334fac
Var #BCDBDFE8|bcdbdfe8|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|334fe8
Var #BCDBDFF0|bcdbdff0|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|334ff0
Var #BCDC0394|bcdc0394|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|337394
Var #BCDC03C8|bcdc03c8|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3373c8
Var #BCDC0630|bcdc0630|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|337630
Var #BCDC063C|bcdc063c|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|33763c
Var #BCDC06B4|bcdc06b4|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3376b4
Var #BCDC0818|bcdc0818|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|337818
Var #BCDC0844|bcdc0844|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|337844
Var #BCDC107C|bcdc107c|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|33807c
Var #BCDC70F4|bcdc70f4|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|33e0f4
Var #BCDC75D0|bcdc75d0|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|33e5d0
Var #BCDC7EC0|bcdc7ec0|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|33eec0
Var #BCDC7F00|bcdc7f00|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|33ef00
Var #BCDC7FF0|bcdc7ff0|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|33eff0
Var #BCDE5A7C|bcde5a7c|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|35ca7c
Var #BCDE5B30|bcde5b30|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|35cb30
Var #BCDE5C0C|bcde5c0c|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|35cc0c
Var #BCDE5C7C|bcde5c7c|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|35cc7c
Var #BCDE6090|bcde6090|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|35d090
Var #BCDE62AC|bcde62ac|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|35d2ac
Var #BCDE62B0|bcde62b0|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|35d2b0
Var #BCDE62BC|bcde62bc|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|35d2bc
Var #BCDE62C0|bcde62c0|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|35d2c0
Var #BCDE62C8|bcde62c8|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|35d2c8
Var #BCDE62CC|bcde62cc|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|35d2cc
Var #BCDE62D0|bcde62d0|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|35d2d0
Var #BCDE62D8|bcde62d8|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|35d2d8
Var #BCDE62DC|bcde62dc|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|35d2dc
Var #BCDE62E0|bcde62e0|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|35d2e0
Var #BCDE62E8|bcde62e8|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|35d2e8
Var #BCDE62EC|bcde62ec|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|35d2ec
Var #BCDE62F0|bcde62f0|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|35d2f0
Var #BCDE7F08|bcde7f08|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|35ef08
Var #BCDE85D4|bcde85d4|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|35f5d4
Var #BCDE8664|bcde8664|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|35f664
Var #BCDE883C|bcde883c|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|35f83c
Var #BCDE8940|bcde8940|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|35f940
Var #BCDE9C60|bcde9c60|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|360c60
Var #BCDE9C70|bcde9c70|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|360c70
Var #BCDE9D34|bcde9d34|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|360d34
Var #BCDEA220|bcdea220|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|361220
Var #BCDEA554|bcdea554|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|361554
Var #BCDEAE50|bcdeae50|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|361e50
Var #BCDEAF08|bcdeaf08|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|361f08
Var #BCDEAFC8|bcdeafc8|4|0|0|0|0|0|r-xp|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|361fc8
Var #BCE15008|bce15008|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|8
Var #BCE1500C|bce1500c|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|c
Var #BCE15010|bce15010|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|10
Var #BCE15014|bce15014|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|14
Var #BCE15038|bce15038|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|38
Var #BCE1503C|bce1503c|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3c
Var #BCE15040|bce15040|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|40
Var #BCE15044|bce15044|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|44
Var #BCE15058|bce15058|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|58
Var #BCE15060|bce15060|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|60
Var #BCE15074|bce15074|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|74
Var #BCE15078|bce15078|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|78
Var #BCE1507C|bce1507c|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|7c
Var #BCE15084|bce15084|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|84
Var #BCE150A8|bce150a8|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|a8
Var #BCE150AC|bce150ac|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|ac
Var #BCE150B0|bce150b0|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|b0
Var #BCE150B4|bce150b4|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|b4
Var #BCE150B8|bce150b8|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|b8
Var #BCE15128|bce15128|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|128
Var #BCE1512C|bce1512c|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|12c
Var #BCE15130|bce15130|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|130
Var #BCE15134|bce15134|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|134
Var #BCE15200|bce15200|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|200
Var #BCE15204|bce15204|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|204
Var #BCE15208|bce15208|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|208
Var #BCE1DEE8|bce1dee8|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|8ee8
Var #BCE1EA28|bce1ea28|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|9a28
Var #BCE44D20|bce44d20|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|2fd20
Var #BCE57FB8|bce57fb8|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|42fb8
Var #BCE57FBC|bce57fbc|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|42fbc
Var #BCE57FC0|bce57fc0|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|42fc0
Var #BCE57FC4|bce57fc4|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|42fc4
Var #BCE57FC8|bce57fc8|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|42fc8
Var #BCE57FCC|bce57fcc|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|42fcc
Var #BCE57FD0|bce57fd0|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|42fd0
Var #BCE57FD4|bce57fd4|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|42fd4
Var #BCE57FD8|bce57fd8|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|42fd8
Var #BCE57FDC|bce57fdc|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|42fdc
Var #BCE584D0|bce584d0|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|4d0
Var #BCE58510|bce58510|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|510
Var #BCE58528|bce58528|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|528
Var #BCE58574|bce58574|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|574
Var #BCE5881C|bce5881c|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|81c
Var #BCE5884C|bce5884c|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|84c
Var #BCE5885C|bce5885c|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|85c
Var #BCE58864|bce58864|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|864
Var #BCE5886C|bce5886c|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|86c
Var #BCE588A4|bce588a4|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|8a4
Var #BCE588A8|bce588a8|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|8a8
Var #BCE588AC|bce588ac|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|8ac
Var #BCE588B0|bce588b0|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|8b0
Var #BCE588B4|bce588b4|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|8b4
Var #BCE588B8|bce588b8|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|8b8
Var #BCE588BC|bce588bc|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|8bc
Var #BCE588C0|bce588c0|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|8c0
Var #BCE588C4|bce588c4|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|8c4
Var #BCE588C8|bce588c8|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|8c8
Var #BCE588CC|bce588cc|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|8cc
Var #BCE588D0|bce588d0|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|8d0
Var #BCE588D4|bce588d4|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|8d4
Var #BCE588D8|bce588d8|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|8d8
Var #BCE58924|bce58924|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|924
Var #BCE58A4C|bce58a4c|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|a4c
Var #BCE58A6C|bce58a6c|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|a6c
Var #BCE58A78|bce58a78|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|a78
Var #BCE58A84|bce58a84|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|a84
Var #BCE58A88|bce58a88|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|a88
Var #BCE58A8C|bce58a8c|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|a8c
Var #BCE58B30|bce58b30|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|b30
Var #BCE59B64|bce59b64|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|1b64
Var #BCE59BD0|bce59bd0|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|1bd0
Var #BCE59CE8|bce59ce8|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|1ce8
Var #BCE59CF4|bce59cf4|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|1cf4
Var #BCE5A134|bce5a134|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|2134
Var #BCE5A140|bce5a140|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|2140
Var #BCE5A204|bce5a204|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|2204
Var #BCE5C294|bce5c294|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|4294
Var #BCE5C298|bce5c298|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|4298
Var #BCE5C354|bce5c354|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|4354
Var #BCE5C358|bce5c358|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|4358
Var #BCE5D4AC|bce5d4ac|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|54ac
Var #BCE5D4DC|bce5d4dc|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|54dc
Var #BCE5D588|bce5d588|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|5588
Var #BCE5D58C|bce5d58c|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|558c
Var #BCE5D5B0|bce5d5b0|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|55b0
Var #BCE5D614|bce5d614|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|5614
Var #BCE5D620|bce5d620|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|5620
Var #BCE5D690|bce5d690|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|5690
Var #BCE5D6A4|bce5d6a4|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|56a4
Var #BCE5D6C0|bce5d6c0|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|56c0
Var #BCE5D6D8|bce5d6d8|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|56d8
Var #BCE60728|bce60728|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|8728
Var #BCE60730|bce60730|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|8730
Var #BCE6073C|bce6073c|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|873c
Var #BCE6BE64|bce6be64|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|13e64
Var #BCE6BE68|bce6be68|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|13e68
Var #BCE6BE6C|bce6be6c|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|13e6c
Var #BCE6BE70|bce6be70|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|13e70
Var #BCE6BE74|bce6be74|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|13e74
Var #BCE6BE78|bce6be78|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|13e78
Var #BCE6BE7C|bce6be7c|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|13e7c
Var #BCE6BE80|bce6be80|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|13e80
Var #BCE6BE84|bce6be84|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|13e84
Var #BCE6BE88|bce6be88|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|13e88
Var #BCE6BF60|bce6bf60|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|13f60
Var #BCE6BF64|bce6bf64|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|13f64
Var #BCE6BF68|bce6bf68|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|13f68
Var #BCE6BF6C|bce6bf6c|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|13f6c
Var #BCE6BF70|bce6bf70|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|13f70
Var #BCE6BF74|bce6bf74|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|13f74
Var #BCE6BF78|bce6bf78|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|13f78
Var #BCE6C004|bce6c004|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|14004
Var #BCE6C020|bce6c020|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|14020
Var #BCE6C028|bce6c028|4|0|0|0|0|0|rw-p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|14028


						 	       ]])
      gg.loadList("/sdcard/全防", gg.LOAD_VALUES)
      os.remove("/sdcard/全防")	
							gg.alert("euro提醒您防追封开启成功")
end,
function ()
end),	
}),	
SN.box({"防御系统③",
	SN.switch(
	"超级防闪[登录界面开启]",
	function()
	function YX_MkPointer(SONC,NCFW,PYL,TYPE,VALUE,NAME,DJ)
local Somod=gg.getRangesList(SONC)[1]
if Somod==nil then
gg.alert(NAME..'开启失败\n━━━━━━━━━━━━━━━\n错误原因:未找到相关内存\n解决方法:请重新选择游戏进程\n━━━━━━━━━━━━━━━')
else
function S_Pointer(t_So, t_Offset, _bit)
	local function getRanges()
		local ranges = {}
		local t = gg.getRangesList('^/data/*.so*$')
		for i, v in pairs(t) do
			if v.type:sub(2, 2) == 'w' then
				table.insert(ranges, v)
			end
		end
		return ranges
	end
	local function Get_Address(N_So, Offset, ti_bit)
		local ti = gg.getTargetInfo()
		local S_list = getRanges()
		local t = {}
		local _t
		local _S = nil
		if ti_bit then
			_t = 32
		else
			_t = 4
		end
		for i in pairs(S_list) do
			local _N = S_list[i].internalName:gsub('^.*/', '')
			if N_So[1] == _N and N_So[2] == S_list[i].state then
				_S = S_list[i]
				break
			end
		end
		if _S then
			t[#t + 1] = {}
			t[#t].address = _S.start + Offset[1]
			t[#t].flags = _t
			if #Offset ~= 1 then
				for i = 2, #Offset do
					local S = gg.getValues(t)
					t = {}
					for _ in pairs(S) do
						if not ti.x64 then
							S[_].value = S[_].value & 0xFFFFFFFF
						end
						t[#t + 1] = {}
						t[#t].address = S[_].value + Offset[i]
						t[#t].flags = _t
					end
				end
			end
			_S = t[#t].address
		end
		return _S
	end
	local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit))
	return _A
end
time=os.clock()
local DZT = S_Pointer({SONC, NCFW},{0x0})
local PY_offsets = PYL
for _,MR in pairs(PY_offsets) do
gg.addListItems({{address = DZT+MR, flags = TYPE, value = VALUE, freeze = DJ}})
end
local time=string.sub(os.clock()-time,0,5)
gg.toast(NAME..'️开启成功\n当前进程名称:'..gg.getTargetInfo().label..'\n当前进程包名:'..gg.getTargetPackage()..'\n总共耗时:'..time..'秒')
end
end

	YX_MkPointer("libtersafe2.so","Cd",{0x38,0x74,0x58,0x44,0x32578,0x327D0,0x327E8,0x34690,0x346E0,0x348B0},4,0,"防2次",true)
YX_MkPointer("libtersafe2.so","Cd",{0xA8},4,-1,"防闪",true)
YX_MkPointer("libtersafe2.so:bss","Cb",{0x14028,0x14004,0x56C0,0x5614,0x558C,0x54AC,0x5588,0x2204,0x2140,0x2134,0x2140,0x1CF4,0x1CE8,0xA4C,0x924,0x864,0x56B8,0x54DC,0x4298,0xA70,0xA6C,0x93C,0x86C,0x4354,0x1B74,0x9C0,0xA78,0x5740,0x1B80,0x1B70,0x54C8,0x54E4,0x9B4,0x9C0,0x9D4,0x9E0,0x9F8,0xAA4,0xB30,0x1B3C,0x1B48,0x1B6C,0x1BD0,0x5544,0x56A4,0x55B0,0x5690,0x1B8C,0x1B64,0x574,0x528,0x8730,0x873C,0x8728,0x54C,0x99C,0x4294,0x56D8,0x1B7C,0x9AC,0x14020,0x5620,0xA8C,0x9FC,0x1B50,0xA88,0x85C554C,0x8718,0xAB4},4,0,"全防",true)
string.toMusic("开启成功")
gg.alert("开启成功")
	end,
						function()
							
						end),
						SN.switch("过滤ACE[登录界面必开]",
						function()
						io.open("/sdcard/.xa","w+"):write([[
						12600
Var #C06544D0|c06544d0|4|0|1|0|0|0|rw-p|/data/data/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|4d0
Var #C06544D4|c06544d4|4|0|1|0|0|0|rw-p|/data/data/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|4d4
Var #C06544DC|c06544dc|4|0|1|0|0|0|rw-p|/data/data/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|4dc
Var #C06544EC|c06544ec|4|0|1|0|0|0|rw-p|/data/data/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|4ec
Var #C06544F0|c06544f0|4|0|1|0|0|0|rw-p|/data/data/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|4f0
Var #C06544F4|c06544f4|4|0|1|0|0|0|rw-p|/data/data/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|4f4
Var #C06544F8|c06544f8|4|0|1|0|0|0|rw-p|/data/data/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|4f8
Var #C06544FC|c06544fc|4|0|1|0|0|0|rw-p|/data/data/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|4fc
Var #C0654500|c0654500|4|0|1|0|0|0|rw-p|/data/data/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|500
Var #C0654504|c0654504|4|0|1|0|0|0|rw-p|/data/data/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|504
Var #C0654508|c0654508|4|0|1|0|0|0|rw-p|/data/data/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|508
Var #C065450C|c065450c|4|0|1|0|0|0|rw-p|/data/data/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|50c
Var #C0654510|c0654510|4|0|1|0|0|0|rw-p|/data/data/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|510
Var #C0654528|c0654528|4|0|1|0|0|0|rw-p|/data/data/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|528
Var #C0654574|c0654574|4|0|1|0|0|0|rw-p|/data/data/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|574
Var #C0654580|c0654580|4|0|1|0|0|0|rw-p|/data/data/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|580
Var #C0654584|c0654584|4|0|1|0|0|0|rw-p|/data/data/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|584
Var #C06545D0|c06545d0|4|0|1|0|0|0|rw-p|/data/data/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|5d0
Var #C065481C|c065481c|4|0|1|0|0|0|rw-p|/data/data/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|81c
Var #C065485C|c065485c|4|0|1|0|0|0|rw-p|/data/data/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|85c
Var #C0654924|c0654924|4|0|1|0|0|0|rw-p|/data/data/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|924
Var #C06549AC|c06549ac|4|0|1|0|0|0|rw-p|/data/data/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|9ac
Var #C0655B44|c0655b44|4|ffffffff|1|0|0|0|rw-p|/data/data/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|1b44
Var #C0655BDC|c0655bdc|4|ffffffff|1|0|0|0|rw-p|/data/data/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so:bss|1bdc
gg.loadList("/sdcard/秋情抓取",gg.LOAD_VALUES)
os.remove("/sdcard/秋情抓取")
]])
gg.alert("开启成功")
string.toMusic("开启成功")
	end,
						function()
							
						end),
						SN.switch(
	"超级防封[登录界面开启]",
function()
io.open("/sdcard/.xa","w+"):write([[
7476
Var #B433C8F0|b433c8f0|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|1f8f0
Var #B433C90C|b433c90c|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|1f90c
Var #B433C918|b433c918|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|1f918
Var #B433C92C|b433c92c|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|1f92c
Var #B433C930|b433c930|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|1f930
Var #B433C950|b433c950|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|1f950
Var #B433C954|b433c954|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|1f954
Var #B433C958|b433c958|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|1f958
Var #B433C95C|b433c95c|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|1f95c
Var #B433C964|b433c964|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|1f964
Var #B433C968|b433c968|4|0|1|0|0|0|rw-p|/data/user/0/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|1f968
gg.loadList("/sdcard/.防行为",gg.LOAD_VALUES)
os.remove("/sdcard/.防行为")
]])
gg.alert("开启成功")
string.toMusic("开启成功")
	end,
						function()
							
						end),
							SN.switch(
	"防环境[进度条界面开启]",
function()
io.open("/sdcard/.xa","w+"):write([[
22804
Var #B2BDCF00|b2bdcf00|4|ffffffff|1|0|0|0|r--p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3f00
Var #B2BDCF14|b2bdcf14|4|ffffffff|1|0|0|0|r--p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3f14
Var #B2BDCF24|b2bdcf24|4|ffffffff|1|0|0|0|r--p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3f24
Var #B2BDCF28|b2bdcf28|4|ffffffff|1|0|0|0|r--p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3f28
Var #B2BDCF3C|b2bdcf3c|4|ffffffff|1|0|0|0|r--p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3f3c
Var #B2BDCF4C|b2bdcf4c|4|ffffffff|1|0|0|0|r--p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3f4c
Var #B2BDCF50|b2bdcf50|4|ffffffff|1|0|0|0|r--p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3f50
Var #B2BDCF64|b2bdcf64|4|ffffffff|1|0|0|0|r--p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3f64
Var #B2BDCF74|b2bdcf74|4|ffffffff|1|0|0|0|r--p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3f74
Var #B2BDCF78|b2bdcf78|4|ffffffff|1|0|0|0|r--p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3f78
Var #B2BDCF8C|b2bdcf8c|4|ffffffff|1|0|0|0|r--p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3f8c
Var #B2BDCF9C|b2bdcf9c|4|ffffffff|1|0|0|0|r--p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3f9c
Var #B2BDCFA0|b2bdcfa0|4|ffffffff|1|0|0|0|r--p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3fa0
Var #B2BDCFB4|b2bdcfb4|4|ffffffff|1|0|0|0|r--p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3fb4
Var #B2BDCFC4|b2bdcfc4|4|ffffffff|1|0|0|0|r--p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3fc4
Var #B2BDCFC8|b2bdcfc8|4|ffffffff|1|0|0|0|r--p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3fc8
Var #B2BDCFDC|b2bdcfdc|4|ffffffff|1|0|0|0|r--p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3fdc
Var #B2BDCFEC|b2bdcfec|4|ffffffff|1|0|0|0|r--p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3fec
Var #B2BDCFF0|b2bdcff0|4|ffffffff|1|0|0|0|r--p|/data/user/0/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3ff0
gg.loadList("/sdcard/.防行为",gg.LOAD_VALUES)
os.remove("/sdcard/.防行为")
]])
gg.alert("开启成功")
string.toMusic("开启成功")
	end,
						function()
							
						end),

	SN.switch(
	"进度绕检[进度条界面开启]",
function()
io.open("/sdcard/.xa","w+"):write([[
5150
Var #B9528850|b9528850|4|0|1|0|0|0|r-xp|/data/user/0/love.QiuQing/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|31f850
Var #B9528880|b9528880|4|0|1|0|0|0|r-xp|/data/user/0/love.QiuQing/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|31f880
Var #B95288AC|b95288ac|4|0|1|0|0|0|r-xp|/data/user/0/love.QiuQing/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|31f8ac
Var #B95288BC|b95288bc|4|0|1|0|0|0|r-xp|/data/user/0/love.QiuQing/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|31f8bc
Var #B95288D4|b95288d4|4|0|1|0|0|0|r-xp|/data/user/0/love.QiuQing/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|31f8d4
Var #B95288E8|b95288e8|4|0|1|0|0|0|r-xp|/data/user/0/love.QiuQing/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|31f8e8
Var #B9528914|b9528914|4|0|1|0|0|0|r-xp|/data/user/0/love.QiuQing/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|31f914
Var #B9528934|b9528934|4|0|1|0|0|0|r-xp|/data/user/0/love.QiuQing/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|31f934
Var #B9528944|b9528944|4|0|1|0|0|0|r-xp|/data/user/0/love.QiuQing/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|31f944
Var #B9528A44|b9528a44|4|0|1|0|0|0|r-xp|/data/user/0/love.QiuQing/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|31fa44
Var #B9528A54|b9528a54|4|0|1|0|0|0|r-xp|/data/user/0/love.QiuQing/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|31fa54
Var #B9528A7C|b9528a7c|4|0|1|0|0|0|r-xp|/data/user/0/love.QiuQing/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|31fa7c
Var #B9528AA8|b9528aa8|4|0|1|0|0|0|r-xp|/data/user/0/love.QiuQing/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|31faa8
Var #B9528AEC|b9528aec|4|0|1|0|0|0|r-xp|/data/user/0/love.QiuQing/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|31faec
Var #B9528AF4|b9528af4|4|0|1|0|0|0|r-xp|/data/user/0/love.QiuQing/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|31faf4
Var #B9528B38|b9528b38|4|0|1|0|0|0|r-xp|/data/user/0/love.QiuQing/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|31fb38
Var #B9528B64|b9528b64|4|0|1|0|0|0|r-xp|/data/user/0/love.QiuQing/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|31fb64
Var #B9529D54|b9529d54|4|0|1|0|0|0|r-xp|/data/user/0/love.QiuQing/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|320d54
Var #B9529D78|b9529d78|4|0|1|0|0|0|r-xp|/data/user/0/love.QiuQing/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|320d78
Var #B9529D88|b9529d88|4|0|1|0|0|0|r-xp|/data/user/0/love.QiuQing/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|320d88
Var #B9529E40|b9529e40|4|0|1|0|0|0|r-xp|/data/user/0/love.QiuQing/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|320e40
Var #B9529E50|b9529e50|4|0|1|0|0|0|r-xp|/data/user/0/love.QiuQing/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|320e50
Var #B9529E68|b9529e68|4|0|1|0|0|0|r-xp|/data/user/0/love.QiuQing/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|320e68
Var #B9529E78|b9529e78|4|0|1|0|0|0|r-xp|/data/user/0/love.QiuQing/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|320e78
Var #B9529E90|b9529e90|4|0|1|0|0|0|r-xp|/data/user/0/love.QiuQing/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|320e90
Var #B9529EA0|b9529ea0|4|0|1|0|0|0|r-xp|/data/user/0/love.QiuQing/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|320ea0
Var #B952A4B8|b952a4b8|4|0|1|0|0|0|r-xp|/data/user/0/love.QiuQing/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3214b8
Var #B952A530|b952a530|4|0|1|0|0|0|r-xp|/data/user/0/love.QiuQing/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|321530
Var #B952A540|b952a540|4|0|1|0|0|0|r-xp|/data/user/0/love.QiuQing/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|321540
Var #B952A568|b952a568|4|0|1|0|0|0|r-xp|/data/user/0/love.QiuQing/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|321568
Var #B952A5B0|b952a5b0|4|0|1|0|0|0|r-xp|/data/user/0/love.QiuQing/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3215b0
Var #B952A5BC|b952a5bc|4|0|1|0|0|0|r-xp|/data/user/0/love.QiuQing/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3215bc
Var #B952A5D4|b952a5d4|4|0|1|0|0|0|r-xp|/data/user/0/love.QiuQing/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3215d4
Var #B952A600|b952a600|4|0|1|0|0|0|r-xp|/data/user/0/love.QiuQing/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|321600
Var #B952A610|b952a610|4|0|1|0|0|0|r-xp|/data/user/0/love.QiuQing/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|321610
Var #B953C220|b953c220|4|0|1|0|0|0|r-xp|/data/user/0/love.QiuQing/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|333220
Var #B953C240|b953c240|4|0|1|0|0|0|r-xp|/data/user/0/love.QiuQing/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|333240
Var #B953C280|b953c280|4|0|1|0|0|0|r-xp|/data/user/0/love.QiuQing/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|333280
Var #B953C978|b953c978|4|0|1|0|0|0|r-xp|/data/user/0/love.QiuQing/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|333978
Var #B953C9F8|b953c9f8|4|0|1|0|0|0|r-xp|/data/user/0/love.QiuQing/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|3339f8
Var #B953CA28|b953ca28|4|0|1|0|0|0|r-xp|/data/user/0/love.QiuQing/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|333a28
Var #B953CD38|b953cd38|4|0|1|0|0|0|r-xp|/data/user/0/love.QiuQing/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|333d38
Var #B953CD44|b953cd44|4|0|1|0|0|0|r-xp|/data/user/0/love.QiuQing/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|333d44
Var #B953CEF4|b953cef4|4|0|1|0|0|0|r-xp|/data/user/0/love.QiuQing/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|333ef4
Var #B953CFA4|b953cfa4|4|0|1|0|0|0|r-xp|/data/user/0/love.QiuQing/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|333fa4
Var #B953CFF4|b953cff4|4|0|1|0|0|0|r-xp|/data/user/0/love.QiuQing/gameplugins/com.kiloo.subwaysurf/lib/libtersafe2.so|333ff4
gg.loadList("/sdcard/.防行为",gg.LOAD_VALUES)
os.remove("/sdcard/.防行为")
]])
gg.alert("开启成功")
	end,
						function()
							
						end),
	SN.switch(
	"大厅全防[大厅界面开启]",
function()

function YX_MkPointer(SONC,NCFW,PYL,TYPE,VALUE,NAME,DJ)
local Somod=gg.getRangesList(SONC)[1]
if Somod==nil then
gg.alert(NAME..'开启失败\n━━━━━━━━━━━━━━━\n错误原因:未找到相关内存\n解决方法:请重新选择游戏进程\n━━━━━━━━━━━━━━━')
else
function S_Pointer(t_So, t_Offset, _bit)
	local function getRanges()
		local ranges = {}
		local t = gg.getRangesList('^/data/*.so*$')
		for i, v in pairs(t) do
			if v.type:sub(2, 2) == 'w' then
				table.insert(ranges, v)
			end
		end
		return ranges
	end
	local function Get_Address(N_So, Offset, ti_bit)
		local ti = gg.getTargetInfo()
		local S_list = getRanges()
		local t = {}
		local _t
		local _S = nil
		if ti_bit then
			_t = 32
		else
			_t = 4
		end
		for i in pairs(S_list) do
			local _N = S_list[i].internalName:gsub('^.*/', '')
			if N_So[1] == _N and N_So[2] == S_list[i].state then
				_S = S_list[i]
				break
			end
		end
		if _S then
			t[#t + 1] = {}
			t[#t].address = _S.start + Offset[1]
			t[#t].flags = _t
			if #Offset ~= 1 then
				for i = 2, #Offset do
					local S = gg.getValues(t)
					t = {}
					for _ in pairs(S) do
						if not ti.x64 then
							S[_].value = S[_].value & 0xFFFFFFFF
						end
						t[#t + 1] = {}
						t[#t].address = S[_].value + Offset[i]
						t[#t].flags = _t
					end
				end
			end
			_S = t[#t].address
		end
		return _S
	end
	local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit))
	return _A
end
time=os.clock()
local DZT = S_Pointer({SONC, NCFW},{0x0})
local PY_offsets = PYL
for _,MR in pairs(PY_offsets) do
gg.addListItems({{address = DZT+MR, flags = TYPE, value = VALUE, freeze = DJ}})
end
local time=string.sub(os.clock()-time,0,5)
gg.toast(NAME..'️开启成功\n当前进程名称:'..gg.getTargetInfo().label..'\n当前进程包名:'..gg.getTargetPackage()..'\n总共耗时:'..time..'秒')
end
end

YX_MkPointer("libtersafe2.so","Cd",{0x21D1C,0x21E60,0x21D2C,0x21DE0,0x21CAC,0x21214,0x21D48,0x21090,0x21F8C,0x210E0,0x21D68,0x21F18,0x21F80,0x21DD0,0x21E40,0x21D54,0x21E20,0x21D28,0x21220,0x21EBC,0x21E14,0x211D4,0x21D80,0x21EB8,0x21F68,0x21D4C,0x21D9C,0x21F58,0x21FD0,0x21ED8,0x21E08,0x21F24,0x21E6C,0x21E70,0x21DDC,0x21E64,0x21D58,0x21EB4,0x21ECC,0x21EC0,},4,0,"环境",true)
gg.alert("开启成功")
toMusic('开启成功')
	end,
						function()
							
						end),
						SN.switch("下线防追封",
						function()
						function MR_MkPointer(SONC,NCFW,PYL,TYPE,VALUE,NAME,DJ)
local Somod=gg.getRangesList(SONC)[1]
if Somod==nil then
gg.alert(NAME..'开启失败\n━━━━━━━━━━━━━━━\n错误原因:未找到相关内存\n解决方法:请重新选择游戏进程\n━━━━━━━━━━━━━━━')
else
function S_Pointer(t_So, t_Offset, _bit)
	local function getRanges()
		local ranges = {}
		local t = gg.getRangesList('^/data/*.so*$')
		for i, v in pairs(t) do
			if v.type:sub(2, 2) == 'w' then
				table.insert(ranges, v)
			end
		end
		return ranges
	end
	local function Get_Address(N_So, Offset, ti_bit)
		local ti = gg.getTargetInfo()
		local S_list = getRanges()
		local t = {}
		local _t
		local _S = nil
		if ti_bit then
			_t = 32
		else
			_t = 4
		end
		for i in pairs(S_list) do
			local _N = S_list[i].internalName:gsub('^.*/', '')
			if N_So[1] == _N and N_So[2] == S_list[i].state then
				_S = S_list[i]
				break
			end
		end
		if _S then
			t[#t + 1] = {}
			t[#t].address = _S.start + Offset[1]
			t[#t].flags = _t
			if #Offset ~= 1 then
				for i = 2, #Offset do
					local S = gg.getValues(t)
					t = {}
					for _ in pairs(S) do
						if not ti.x64 then
							S[_].value = S[_].value & 0xFFFFFFFF
						end
						t[#t + 1] = {}
						t[#t].address = S[_].value + Offset[i]
						t[#t].flags = _t
					end
				end
			end
			_S = t[#t].address
		end
		return _S
	end
	local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit))
	return _A
end
time=os.clock()
local DZT = S_Pointer({SONC, NCFW},{0x0})
local PY_offsets = PYL
for _,MR in pairs(PY_offsets) do
gg.addListItems({{address = DZT+MR, flags = TYPE, value = VALUE, freeze = DJ}})
end
local time=string.sub(os.clock()-time,0,5)
gg.toast(NAME..'️开启成功\n当前进程名称:'..gg.getTargetInfo().label..'\n当前进程包名:'..gg.getTargetPackage()..'\n总共耗时:'..time..'秒')
end
end

MR_MkPointer("libtersafe2.so","Cd",{0x241A4,0x24204,0x24128,0x2418C,0x24164,0x2414C,0x24184,0x241FC,0x24180,0x24108,0x241C0,0x24170,0x24174,0x24158,0x241E8,0x241F0,0x241DC,0x24168,0x2411C,0x241A8,0x241B4,0x241AC,0x24208,0x24124,0x2416C,0x24118,0x241B8,0x24144,0x241F4,0x240E8,0x241EC,0x24160,0x24198,0x240EC,0x241D0,0x2412C,0x241C4,0x24150,0x241E0,0x24194,0x241CC,0x24200,0x24178,0x241C8,0x24188,0x241BC,0x241B0,0x24148,0x2415C,0x24140,},4,0,"追封",true)
gg.alert("开启成功")
toMusic('开启成功')
end),
}),
},{---第三
	
	SN.button('备份数据',
					function()
BN(0x2d1b44c ,4,"~A MOVW R0, #1")
string.toMusic("数据备份成功")
end),
SN.button('屏蔽刷号检测',
function()
BN(0x2d2dd80, 4, "~A MOVW  R0, #0")
BN(0x2d2db70, 4, "~A MOVT  R0, #9999")
BN(0x2d2dcd0, 4, "~A MOVT  R0, #9999")
BN(0x2d2dc20, 4, "~A MOVT  R0, #9999")
BN(0x2d249ec, 4, "~A MOVT  R0, #9999")
BN(0xc00994, 4, "~A MOVW  R0, #0")
BN(0x2d2dac0, 4, "~A MOVW  R0, #0")
BN(0xc00b2c, 4, "~A MOVW  R0, #0")
BN(0xc00c40, 4, "~A MOVW  R0, #0")
BN(0x2d2dcd0, 4, "~A MOVT  R0, #9999")
string.toMusic("开启成功")
end),							
SN.button("拉满套餐",
function()
BN(0xbd4f14, 4, "~A MOV R0, #6")--炫跑卡
BN(0xba7240, 4, "~A MOVW  R0, #1")--人物全解
BN(0xba8244 ,4,"~A MOVW  R0, #1")--滑板全解
BN(0xbd3144 ,4,"~A MOVW  R0, #1")--背饰全解
BN(0xb993d0 ,4,"~A MOVW  R0, #1")--角色装扮
BN(0xd14e80 ,4,"~A MOVW  R0, #1")--滑板技能
BN(0x1bd229c ,4,"~A MOVW R0, #1")--相框全解
BN(0xb8df84 ,4,"~A MOVW	 R0, #1")--双倍金币
BN(0x17fcc4c ,4,"~A MOVW	 R0, #1")--微博特权
BN(0x2d254a0 ,4,"~A MOVW  R0, #1")--获取十倍
BN(0x15c5c34 ,4,"~A MOVW R0, #1")--解锁十倍
BN(0x10d90bc,4,"~A MOV R0, #25")--替换奖杯
gg.alert("euro已为老板开启拉满套餐\n本次套餐解锁为:\n炫跑卡全解✓ 人物全解✓\n装扮全解✓ 滑板全解✓\n相框全解✓ 双倍金币✓\n微博特权✓ 十倍得分✓\n背饰全解✓ 替换奖杯✓")
end),


SN.box({"全解功能",
SN.switch("人物全解",
function()
BN(0xba7240, 4, "~A MOVW  R0, #1")
string.toMusic('人物全解成功')
					end),
SN.switch("滑板全解",
function()
BN(0xba8244 ,4,"~A MOVW  R0, #1")
string.toMusic('滑板全解成功')
					end),
SN.switch("背饰全解",
function()
BN(0xbd3144 ,4,"~A MOVW  R0, #1")
string.toMusic('背饰全解成功')
					end),	
SN.switch("装扮全解",
					function()
BN(0xb993d0 ,4,"~A MOVW  R0, #1")
string.toMusic("角色装扮全解成功")
					end),
SN.switch("技能全解",
					function()
BN(0xd14e80 ,4,"~A MOVW  R0, #1")
string.toMusic("滑板技能全解成功")
					end),
SN.switch("像框全解",
					function()
BN(0x1bd229c ,4,"~A MOVW R0, #1")
string.toMusic("头像框全解成功")

					end)
}),
SN.box({"宝物解锁",
SN.switch("十抽宝物",
function ()
BN(0x1087d30 ,4,"~A B +0x1930")
string.toMusic("十抽全宝物修改成功请前往宝物箱子界面进行十抽")
end,
function ()
end),
SN.switch("十抽保存",
function ()
BN(0x1087d30 ,4,"~A B -0x1E48")---十抽保存
string.toMusic("十抽宝物备份修改成功请前往保护箱子界面进行十抽")
string.toMusic('请去十抽')
end,
function ()
end),
SN.switch("十抽半饰",
function ()
BN(0x1087d30 ,4,"~A B -0x44E22C")
string.toMusic("十抽半饰修改成功请前往宝物箱子界面进行十抽")
end,
function ()
end),
SN.switch("十抽全饰",
function ()
BN(0x1087d30 ,4,"~A B -0x44F5FC")
string.toMusic("十抽全饰修改成功请前往宝物箱子界面进行十抽")
end,
function ()
end),					
					SN.switch("金币人物",
function()
function SearchWrite(Search, Write, Type, Name)
    local time=os.clock()
    gg.clearResults()
    gg.setVisible(false)
    gg.searchNumber(Search[1][1], Type)
    local count = gg.getResultCount()
    local result = gg.getResults(count)
    gg.clearResults()
    local data = {}
    local base = Search[1][2] 
   if (count > 0) then
        for i, v in ipairs(result) do
            v.isUseful = true
        end
        for k=2, #Search do
            local tmp = {}
            local offset = Search[k][2] - base
            local num = Search[k][1]          
            for i, v in ipairs(result) do
                tmp[#tmp+1] = {}
                tmp[#tmp].address = v.address + offset
                tmp[#tmp].flags = v.flags
            end 
            tmp = gg.getValues(tmp)
            for i, v in ipairs(tmp) do
                if ( tostring(v.value) ~= tostring(num) ) then
                    result[i].isUseful = false
                end
            end
        end
  
        for i, v in ipairs(result) do
            if (v.isUseful) then
                data[#data+1] = v.address
            end
        end
        if (#data > 0) then
           gg.toast("搜索到"..#data.."条数据")
           local t = {}
           local base = Search[1][2]
           for i=1, #data do
               for k, w in ipairs(Write) do
                   offset = w[2] - base
                   t[#t+1] = {}
                   t[#t].address = data[i] + offset
                   t[#t].flags = Type
                   t[#t].value = w[1]
                   if (w[3] == true) then
                       local item = {}
                       item[#item+1] = t[#t]
                       item[#item].freeze = true
                       gg.addListItems(item)
                   end
               end
           end
           gg.setValues(t)
           local time=string.sub(os.clock()-time,0,5)
          gg.toast("开启成功 修改"..#data.."条数据 启动耗时:"..time.."秒")
          gg.addListItems(t)
        else
            gg.toast("开启失败未搜索到任何数据", false)
            return false
        end
    else
        gg.toast("开启失败未搜索到任何数据")
        return false
    end
end 
local Ly=gg.prompt({"请输入金币数量"},{""},{"text"})    
     local tb1 = {{99999, 0x0}, {-1, 0x14}, {1,0x34},}
        local tb2 = {{0,0x30},{0,0x5C},{2,0x44},{Ly[1],0x2C},{0,0x3C},} 
    local dataType = 4--类型
gg.setRanges(32)
 SearchWrite(tb1,tb2, dataType)        
string.toMusic("金币人物开启成功")
end), 
SN.switch("金币滑板",
function()
function SearchWrite(Search, Write, Type, Name)
    local time=os.clock()
    gg.clearResults()
    gg.setVisible(false)
    gg.searchNumber(Search[1][1], Type)
    local count = gg.getResultCount()
    local result = gg.getResults(count)
    gg.clearResults()
    local data = {}
    local base = Search[1][2] 
   if (count > 0) then
        for i, v in ipairs(result) do
            v.isUseful = true
        end
        for k=2, #Search do
            local tmp = {}
            local offset = Search[k][2] - base
            local num = Search[k][1]          
            for i, v in ipairs(result) do
                tmp[#tmp+1] = {}
                tmp[#tmp].address = v.address + offset
                tmp[#tmp].flags = v.flags
            end 
            tmp = gg.getValues(tmp)
            for i, v in ipairs(tmp) do
                if ( tostring(v.value) ~= tostring(num) ) then
                    result[i].isUseful = false
                end
            end
        end
  
        for i, v in ipairs(result) do
            if (v.isUseful) then
                data[#data+1] = v.address
            end
        end
        if (#data > 0) then
           gg.toast("搜索到"..#data.."条数据")
           local t = {}
           local base = Search[1][2]
           for i=1, #data do
               for k, w in ipairs(Write) do
                   offset = w[2] - base
                   t[#t+1] = {}
                   t[#t].address = data[i] + offset
                   t[#t].flags = Type
                   t[#t].value = w[1]
                   if (w[3] == true) then
                       local item = {}
                       item[#item+1] = t[#t]
                       item[#item].freeze = true
                       gg.addListItems(item)
                   end
               end
           end
           gg.setValues(t)
           local time=string.sub(os.clock()-time,0,5)
          gg.toast("开启成功 修改"..#data.."条数据 启动耗时:"..time.."秒")
          gg.addListItems(t)
        else
            gg.toast("开启失败未搜索到任何数据", false)
            return false
        end
    else
        gg.toast("开启失败未搜索到任何数据")
        return false
    end
end 
local Ly=gg.prompt({"请输入金币数量"},{""},{"text"})    
     local tb1 = {{99999, 0x0}, {-1, 0x18}, {1,0x34},{1,0x3C}}
    local tb2 = {{0,0x68},{2,0x54},{0,0x3C},{0,0x30},{Ly[1],0x2C},} 
    local dataType = 4--类型
gg.setRanges(32)
 SearchWrite(tb1,tb2, dataType)
string.toMusic("金币滑板开启成功")
end), 
}),
SN.box({"其他功能",
SN.switch("破解内购",
function()
BN(21693360, 4, "~AB +0x11060")
string.toMusic("破解内购成功")
end),
SN.switch("删除邮件",
function()
euro(0xeb079c,4,"~A B	 +0x00003004")--删除
string.toMusic("删除邮件成功")
end),
  SN.switch("炫跑卡等级",
function()
BN(0xbd4f14 ,4,"~A MOV R0, #"..gg.prompt({"请输入等级1～6"},{"6"},{"text"})[1])
string.toMusic("euro以为老板修改成功请花掉查看")	
string.toMusic("己为您开启满级炫跑卡")
end),
SN.switch("开超长名字",
function()
local il2cppmod=gg.getRangesList('il2cpp.so')
gg.setValues({{address=il2cppmod[1].start+0x1096c50,flags=4,value='0100A0E3r'}})
gg.setValues({{address=il2cppmod[1].start+0x1096c50+4,flags=4,value='~A BX LR'}})
gg.setValues({{address=il2cppmod[1].start+0x1096c50,flags=4,value='~A B	 +0x00000148'}})
string.toMusic("超长名字开启成功")
end),
SN.switch("双倍金币" ,
function()
BN(0xb8df84 ,4,"~A MOVW	 R0, #1")
string.toMusic("双倍金币获取成功请前往主页查看")
end),
SN.switch("修改等级" ,
function()
AS=gg.prompt({"请输入你要修改的等级"},{"520"},{"numbrt"})[1]
if not AS then return end
BN(0xb95240 ,4,"~A MOVW	 R0, #"..AS.."")
string.toMusic("修改等级"..AS.."成功请前往主页查看")
end),

				SN.switch("十倍得分" ,
						function()
co = gg.prompt({"调出","解锁"}, {}, {'checkbox',"checkbox"})
if co == nil then Main() end
if co[1] == true then
BN(0x2d254a0 ,4,"~A MOVW R0, #1")
string.toMusic("十倍得分调出成功请前往主页查看")
         end
if co[2] == true then
BN(0x15c5c34 ,4,"~A MOVW R0, #1")
string.toMusic("十倍得分解锁成功请前往主页查看")
        end
						end),
				SN.switch("微博特权" ,
						function()
BN(0x17fcc4c ,4,"~A MOVW	 R0, #1")
string.toMusic("euro已为老板微博特权获取成功请前往主页查看")
						end),
						
}),
SN.box({"替换解锁",
SN.switch("奖杯替换",
function()
BN(0x10d90bc,4,"~A MOV R0, #25")
gg.toast("奖杯替换成功")
string.toMusic('euro已为老板奖杯替换成功')
end),
SN.switch("金币数量",
					function()
a=gg.prompt({"请输入你要修改的钥匙数量"},{"520"},{"number"})[1]
if not a then return end
BN(0xb912f0 ,4,"~A MOVW	 R0, #"..a.."")
string.toMusic("euro已为老板锁定修改金币数量"..a.."成功")
end),
SN.switch("钥匙数量",
					function()
a=gg.prompt({"请输入你要修改的钥匙数量"},{"520"},{"number"})[1]
if not a then return end
BN(0xb9169c ,4,"~A MOVW	 R0, #"..a.."")
string.toMusic("euro已为老板锁定修改钥匙数量"..a.."成功")
end),
SN.switch("宝钥数量",
					function()
a=gg.prompt({"请输入你要修改的宝物钥匙数量"},{"520"},{"number"})[1]
if not a then return end
BN(0xbdbb30 ,4,"~A MOVW	 R0, #"..a.."")
string.toMusic("euro已为老板锁定修改宝物钥匙数量"..a.."成功")
end),	
				
}),

},{---第五页
		SN.button("竞赛防封",
function()
euro(0x18f2a88 ,4,"~A MOV	 R0, #0")		
euro(0xc00c40 ,4,"~A MOV	 R0, #0")--钥匙作弊上传
euro(0xc00b2c ,4,"~A MOV	 R0, #0")--金币作弊上传
euro(0x2d26140 ,4,"~A MOV	 R0, #0")--作弊次数检测
euro(0x2d2dd80 ,4,"~A MOV	 R0, #0")--人物总数检测
euro(0x18f340c ,4,"~A MOV	 R0, #0")--金币数量检测
euro(0x2d249ec ,4,"~A MOVT	 R0, #9999")--硬币数量检测
euro(0x2d2dac0 ,4,"~A MOV	 R0, #0")--货币作弊检测
euro(0x2d2e264 ,4,"~A MOVT	 R0, #9999")--等级限制检测
euro(0x2d2dc20 ,4,"~A MOVT	 R0, #9999")--宝物钥匙数量检测
euro(0x2d2dcd0 ,4,"~A MOVT	 R0, #9999")--炫跑卡作弊检测
euro(0x2d2db70 ,4,"~A MOVT	 R0, #9999")--钥匙数量检测
euro(0x1ce3c98 ,4,"~A MOVT R0, #1")--防卡顿	
euro(0x2d2d960 ,4,"~A MOVW	 R0, #1")--关闭1分40秒检测
string.toMusic('euro已为老板开启竞赛防封')				
end),
SN.switch("[可关]断网状态",
function()
function BB(FUNCTIONADD,TYPE,VALUE)
local SOMOD=gg.getRangesList("il2cpp.so")
if SOMOD[1]==nil then _error() else
gg.setValues({{address=SOMOD[1].start+FUNCTIONADD,flags=TYPE,value=VALUE}})
gg.setValues({{address=SOMOD[1].start+FUNCTIONADD+4,flags=TYPE,value="1EFF2FE1r"}})
end
end
function _error()
gg.alert([[
   开启失败


   失败原因：进程存储太小！
   
   
   解决方案：刷新进程后重启开启
]])
end
gg.alert("使用方法:道具赛开局开,到跳秒结束后关闭,一局一开")
BB(0x2b04764 ,4,"~A MOVW	 R0, #1")
string.toMusic('euro已为老板开启断网状态')			
			end,
			function()
function BB(FUNCTIONADD,TYPE,VALUE)
local SOMOD=gg.getRangesList("il2cpp.so")
if SOMOD[1]==nil then _error() else
gg.setValues({{address=SOMOD[1].start+FUNCTIONADD,flags=TYPE,value=VALUE}})
gg.setValues({{address=SOMOD[1].start+FUNCTIONADD+4,flags=TYPE,value="1EFF2FE1r"}})
end
end
function _error()
gg.alert([[
   开启失败


   失败原因：进程存储太小！
   
   
   解决方案：刷新进程后重启开启
]])
end
BB(0x2b04764,4,"~A MOVW	 R0, #0")
string.toMusic('euro已为老板恢复断网状态')		
			end),
			
SN.button("时间检测(局内)",
function()
gg.alert("秋情提醒使用须知:使用前开启快速冻结,间隔改0")
euro(0x1900fd4, 4, "~A MOVW  R0, #0") --时间
string.toMusic('euro已为老板开启竞赛防封')				
end),
SN.box({"道具赛",
SN.switch("[可关]防止道具",
function()
function TT(FUNCTIONADD,TYPE,VALUE)
local SOMOD=gg.getRangesList("il2cpp.so")
if SOMOD[1]==nil then _error() else
gg.setValues({{address=SOMOD[1].start+FUNCTIONADD,flags=TYPE,value=VALUE}})
gg.setValues({{address=SOMOD[1].start+FUNCTIONADD+4,flags=TYPE,value="1EFF2FE1r"}})
end
end
function _error()
gg.alert([[
   开启失败


   失败原因：进程存储太小！
   
   
   解决方案：刷新进程后重启开启
]])
end
TT(0x1e7ac44,4,"~A MOVW	 R0, #1")
string.toMusic('euro已为老板开启防止道具')
end,
function()
CYC(0x1e7ac44,4,"~A MOVW	 R0, #0")
string.toMusic('euro已为老板恢复防止道具')
			end),
SN.switch("[可关]无宝聚能",
function()
function BY(FUNCTIONADD,TYPE,VALUE)
local SOMOD=gg.getRangesList("il2cpp.so")
if SOMOD[1]==nil then _error() else
gg.setValues({{address=SOMOD[1].start+FUNCTIONADD,flags=TYPE,value=VALUE}})
gg.setValues({{address=SOMOD[1].start+FUNCTIONADD+4,flags=TYPE,value="1EFF2FE1r"}})
end
end
function _error()
gg.alert([[
   开启失败


   失败原因：进程存储太小！
   
   
   解决方案：刷新进程后重启开启
]])
end
BY(0x1ce20ec ,4,"~A B +0x19EC")
string.toMusic("euro已为老板开启无宝聚能")	
end,
function()
CYC(0x1ce20ec,"F04F2DE9r","1CB08DE2r")
string.toMusic("euro已为老板恢复无宝聚能")		
                    end),			

SN.switch("无视减速带",
function()
MR(0x1dc6288, 4, "~A MOVW  R0, #1")   
gg.toast("开启成功")
string.toMusic('开启成功')
end),
SN.switch("无视障碍",
function()
BN(0x1dbaf34, 4, "~A MOVW  R0, #1")
string.toMusic("开启成功")
end),
SN.switch("无视能量",
function()
Ax(0xf5f7e4,4,"~A MOV	 R0, #1")---无限能量
Ax(0x1e94a08,4,"~A MOV	 R0, #0")---防踢出
string.toMusic("euro已为老板开启无视能量")
end),
SN.switch("无限护盾",
function()
BN(0x1ce8f04, 4, "~A MOVW  R0, #1")
gg.toast("开启成功")
string.toMusic('开启成功')
end),

SN.switch("能量倍增",
function()
function BB(FUNCTIONADD,TYPE,VALUE)
local SOMOD=gg.getRangesList("il2cpp.so")
if SOMOD[1]==nil then _error() else
gg.setValues({{address=SOMOD[1].start+FUNCTIONADD,flags=TYPE,value=VALUE}})
gg.setValues({{address=SOMOD[1].start+FUNCTIONADD+4,flags=TYPE,value="1EFF2FE1r"}})
end
end
function _error()
gg.alert([[
   开启失败


   失败原因：进程存储太小！
   
   
   解决方案：刷新进程后重启开启
]])
end
BB(0xe7cfc4, 4, "~AB +0xE02940") 
string.toMusic('euro已为老板开启能量倍增')
end),

}),
SN.box({"分数赛",     
SN.switch("区域排名",
function()
function BB(FUNCTIONADD,TYPE,VALUE)
local SOMOD=gg.getRangesList("il2cpp.so")
if SOMOD[1]==nil then _error() else
gg.setValues({{address=SOMOD[1].start+FUNCTIONADD,flags=TYPE,value=VALUE}})
gg.setValues({{address=SOMOD[1].start+FUNCTIONADD+4,flags=TYPE,value="1EFF2FE1r"}})
end
end

CQ(0x1625cb8,4,"~A MOV R0, #"..gg.prompt({"修改分数赛区域排名"},{""},{"text"})[1])
string.toMusic('euro已为老板开启区域排名')	
end),      
SN.switch("得分倍增",
function()
BN(0xb969f4, 4, "~A MOVW  R0, #300")
string.toMusic("开启成功")
end),
SN.switch("人物无敌",
function()
BN(0x2b77650, 4, "~A MOVW  R0, #1")
string.toMusic("开启成功")
end),
SN.switch("滑板大跃",
function()
BN(0x1e182f8, 4, "~A MOVW  R0, #1") 
string.toMusic("开启成功")
end),
SN.switch("滑板瞬移",
function()
BN(0x1e18848, 4, "~A MOVW  R0, #1")
string.toMusic("开启成功")
end),
SN.switch("滑板滑翔",
function()
BN(0x1e186d8, 4, "~A MOVW  R0, #1")
string.toMusic("开启成功")
end),
SN.switch("二段跳",
function()
BN(0x1e183f0, 4, "~A MOVW  R0, #1")
string.toMusic("开启成功")
end),
SN.switch("无限跳",
function()
BN(0x1ad4f48, 4, "~A MOVW  R0, #1")
string.toMusic("开启成功")
end),

}),
	},{---第二页
		
SN.box({"爹妈生成器",
SN.switch("生成一个爹",
function()
gg.alert("已生成一个爹")
					end),
SN.switch("生成一个妈",
function()
gg.alert("已生成一个妈")
					end),
SN.switch("生成全家",
function()
gg.alert("恭喜你全家满血复活")
					end),	
SN.switch("复活全家",
					function()
gg.alert("全家已生成，包括\n爸爸妈妈，爷爷奶奶，姥姥姥爷，大舅大姨\n等等一些上下族谱十八代的人") 
					end),
}),
SN.box({"美女视频",
		SN.switch(
			"美女视频①",
			function()
			gg.alert(os.date'❤️请耐心等待❤️')
        gg.playVideo("https://jsmov2.a.yximgs.com/upic/2022/03/13/00/BMjAyMjAzMTMwMDIzMTZfMjEzNTE2NzkwXzY5NTA0Njk0Njk3XzJfMw==_b_Bde3d495575e9313cb4df105f8a421808.mp4?clientCacheKey=3xqqw6w224t9c4w_b.mp4&tt=b&di=2f6342ca&bp=10000")
			end,
			function()
				
			end),
		SN.switch(
			"美女视频②",
			function()
			gg.alert(os.date'❤️请耐心等待❤️')
	 gg.playVideo("https://jsmov2.a.yximgs.com/upic/2022/04/09/11/BMjAyMjA0MDkxMTEzMjVfMjEzNTE2NzkwXzcxNjA4MjI2OTE2XzJfMw==_b_Bcd73123c667dca08400226bc35a0a4cc.mp4?clientCacheKey=3xy4skvcfxhpsv2_b.mp4&tt=b&di=2f6342ca&bp=10000")
			end,
			function()
				
			end),

		SN.switch(
			"美女视频③",
			function()
gg.alert(os.date'❤️请耐心等待❤️')
gg.playVideo("https://txmov2.a.kwimgs.com/upic/2024/01/17/12/BMjAyNDAxMTcxMjAxMTlfMjE4MjUyMzY0OV8xMjIzMTUwMzU4OTlfMV8z_b_B17e3d212dbe1bbb022cbc4f50ea84e92.mp4?tag=1-1718218427-std-1-urlcwqldik-4bfd4fec8c4e13f3&type=hot&clientCacheKey=3xjrd4qywsagqp4_b.mp4&tt=b&di=2f783d9d&bp=12681&ali_redirect_ex_hot=66666800&ali_redirect_ex_beacon=1")
			end,
			function()
				
			end),
		SN.switch(
			"美女视频④",
			function()
gg.alert(os.date'❤️请耐心等待❤️')
gg.playVideo("https://txmov2.a.kwimgs.com/upic/2024/06/12/17/BMjAyNDA2MTIxNzQ0MDJfMzA4NjY5ODExMV8xMzQ3OTg3MzY0ODlfMV8z_b_B6147b18e2c8625044e7fc2f6ffe43c4a.mp4?tag=1-1718219281-std-1-fo5jof2td9-fa3c2600a403aa6c&clientCacheKey=3x2v7c7945fif3a_b.mp4&tt=b&di=2f783d9d&bp=12681&ali_redirect_ex_hot=66666800&ali_redirect_ex_beacon=1")
			end,
			function()
				
			end),
		
		SN.switch(
			"美女视频⑤",
			function()
gg.alert(os.date'❤️请耐心等待❤️')
gg.playVideo("https://txmov2.a.kwimgs.com/upic/2024/06/06/12/BMjAyNDA2MDYxMjE3MzNfMTk3OTYxNDE5XzEzNDIyMzQxNTQ3M18yXzM=_b_Bf73662b8aaeaf40f316f7ae810046650.mp4?tag=1-1718219984-std-1-agctqlfrgn-3332cec133c27fea&type=hot&clientCacheKey=3xee3jqxnzce49m_b.mp4&tt=b&di=31e8080c&bp=12681&ali_redirect_ex_hot=66666800&ali_redirect_ex_beacon=1")
			end,
			function()
				
			end),
}),
		},{---第二页
	SN.switch("停止音乐",
function ()
 gg.toast("已停止音乐")
for i=1,100 do
gg.playMusic("stop")
gg.playMusic("stop")
gg.playMusic("stop")
end
sp="关闭成功"
end,


function ()
end),
SN.switch("随机播放",
			function()
	        A="https://api.uomg.com/api/rand.music?sort=热歌榜&format=json"
	Obtain=gg.makeRequest(A).content
	muchen=Obtain:match('url":"(.-)","picurl')
	name=Obtain:match('name":"(.-)","')
	gg.toast('开始播放['..name..']')
	gg.playMusic(muchen)
			end),
wyylog,
	SN.switch(
			"歌词绘制演示",
			function()
			
		MusicId=2157482467---音乐ID
lyric=getLyric(MusicId)
gg.playMusic("http://music.163.com/song/media/outer/url?id="..MusicId..".mp3")
gg.sleep(2000)---自行根据网速调配
for index, value in ipairs(lyric) do
draw.remove()
draw.setSize(40)draw.setStyle('描边并填充')
drawColor="#00ffff"
if index-1>0 then
--draw.text("TINY内部 总群818963998", 100,100)
draw.setColor("#00ffff")
draw.setSize(40)draw.setStyle('描边并填充')
draw.text(lyric[index-1][2], 100,200)
draw.setColor("#00ffff")
draw.setSize(40)draw.setStyle('描边并填充')
draw.text(value[2], 100,300)
draw.setColor("#00ffff")
draw.setSize(40)draw.setStyle('描边并填充')
draw.text(lyric[index+1][2], 100,400)
draw.setColor("#00ffff")
draw.setSize(40)draw.setStyle('描边并填充')

gg.sleep(value[1]-lyric[index-1][1])

else
--draw.text("TINY内部 总群818963998", 100,100)
draw.setColor("#00ffff")
draw.setSize(40)draw.setStyle('描边并填充')
draw.text(value[2], 100,300)
draw.setColor("#00ffff")
draw.setSize(40)draw.setStyle('描边并填充')
draw.text(lyric[index+1][2], 100,400)
draw.setColor("#00ffff")
draw.setSize(40)draw.setStyle('描边并填充')
gg.sleep(value[1])

end
end
				
			end,
			'功能介绍xxx\nxxx'--switch第四参数是描述
		),
		
	},{---第四页
		SN.text("\n"),
		SN.image(
			"https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/quarkphone",
			"100dp","100dp",--图片高度宽度（可省略）
			"10dp",--内边距（可省略）
			function()
				隐藏()
				qq.joinGroup("728183930")	
				--gg.QQgroup("群号")---qq群
				--gg.intent("链接")--网页（tg群）
			end--点击图片执行的功能（可省略）
			),
		SN.text("点击加入euro总群",nil,"15sp",true),---第四参数true为居中文字
		SN.text("\n"),
		SN.switch(
			'摇一摇隐藏UI',
			function()
				摇一摇=true
			end,
			function()
				摇一摇=false
			end),
		SN.switch(
			"音量键隐藏UI",--改名会出错
			function()
				音量键=true
			end,
			function()
				音量键=false
			end
		),
		SN.switch(
			'流星雨开关',
			function()
			webv_ : setVisibility (View.GONE)
			end,
			function()
			webv_ : setVisibility (View.VISIBLE)
			end),
		SN.button(
			"退出",
			function()
				tuichu=1
				
			end),
		--	SN.seek2("小数演示","ltxx2",0.1,2,0.4,0.1),--注意seek2多了一个参数是每次加减大小
	},{---第五页
		
	},{---第六页
		
	},
})
