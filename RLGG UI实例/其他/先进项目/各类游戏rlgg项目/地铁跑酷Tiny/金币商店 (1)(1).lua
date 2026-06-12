--[[
-- 易管理-永生客
--如果需要使用本脚本请先下载易管理APP
易管理官网:www.ssmax.top
]]

if gg.isVPN() == true then
   os.exit()
end
function ZKZ()
-- 易管理-API接口
local YGLAPI = 'http://Ysk.ssmax.top/'

-- 易管理-账号--{换成你自己的易管理账号}
local YGLZH = '2239610500'
-- 安全码{这里如果开启需要更换}
local key = '5201314'


-- 易管理接口
local YGLZFJ = YGLAPI..'monepaylist2.php?'


-- 易管理支付配置[第三方易支付链接]
local YGLYZF = 'http://mf.xn--6krq4qu0oef3b.cn/api.php?'--{这里需要更换}
-- 易管理支付配置[ID]
local YGLZFID = '138219337'--{这里需要更换}
-- 易管理支付配置[密钥]
local YGLZFMY = 'twpbNJitZ2j2ibA7KozuaOonp4I57jA8'--{这里需要更换}


-- 易管理-登录参数
local logincs = 'userlogin.php?'



local Registration = YGLAPI..'userregister.php?admin='..YGLZH
local yz = YGLAPI..'MY.php?'
local yzapi = 'admin='..YGLZH
-- 您的项目在线人数接口
local zxrs = YGLAPI..'online_see.php?admin='..YGLZH
-- 您的项目总启动次数
local qdcs = YGLAPI..'startnum.php/?user='..YGLZH
local QD = gg.makeRequest(qdcs).content
-- 用户UI
local ZUI = gg.choice({'登录账号','注册账号'},YGL,QD)
 if ZUI == nil then os.exit() end
  if ZUI == 2 then
  local UI1 = gg.prompt({
'请输入你的账号','请输入你的密码','请输入昵称','请输入您的QQ','请输入邀请码[可不输入]'
},{
'','','','',''
},{'text','text','text','text','text'})
if UI1 == nil then os.exit(print('欢迎下次使用')) end
local zc = gg.makeRequest(Registration..'&user='..UI1[1]..'&pass='..UI1[2]..'&name='..UI1[3]..'&qq='..UI1[4]..'&code='..UI1[5]).content
 if zc == '注册成功' then
  ZKZ()
 else
  ZKZ()
 end
end
filee = {
    ["WJ"] = function(path) -- 创建文件夹 支持多级创建
        local results = {}
        for value in string.gmatch(path,"/([^/]*)") do
            results[#results+1] = value
        end
        local str = "/"
        local check = {}
        for index = 1,#results do
            str = str..results[index].."/"
            local _,__ = io.open(str)
            check[#check+1] = {[1] = _, [2] = __, [3] = str}
        end
        local Match = "No%s*such%s*file%s*or%s*directory"
        for index, value in pairs(check) do
            if value[1] then
                return gg.toast("路径异常")
            end
            if string.find(tostring(value[2]),Match) and (not check[index+1] or string.find(tostring(check[index+1]),Match)) then
                gg.dumpMemory(0,0,value[3],0)
                os.remove(value[3]..gg.getTargetPackage().."-maps.txt")
                gg.toast("正常载入")
            else
                gg.toast("路径正常")
            end
        end
        return true
    end,
    ["DX"] = function(path) -- 判断文件大小
        local division = function(num_1,num_2,num)
            if num_1 == num_2 then
                return "."..string.rep("0",num)
            end
            local results = string.match(tostring(math.pow(math.fmod(num_1,num_2),1)/num_2),"0%.(%d*)")
            local str,add = "."
            if tonumber(string.sub(results,num+1,num+1)) >= 5 then
                add = 1
            else
                add = 0
            end
            return str..tostring(tonumber(string.sub(results,1,num))+add)
        end
        local _,__ = io.open(path)
        local len
        if not _ then
            return __
        else
            len = #tostring(_:read("*a"))
        end
        local unit = {
            "B",
            "KB",
            "MB",
            "GB",
            "TB"
        }
        local result
        if len < 1024 then
            return len..unit[1]
        end
        for index, value in ipairs(unit) do
            if len >= 1024^(index-1) and len < 1024^index then
                result = len/1024^(index-1) ..division(len,1024^(index-1),2)..value
            end
        end
        return result
    end,
    ["path"] = function(path,num) -- 路径截取
        local results,results_ = {},{}
        for value in string.gmatch(path,"/([^/]*)") do
            results[#results+1] = value
        end
        for index in ipairs(results) do
            results_[#results_+1] = results[#results-index+1]
        end
        local str = "/"
        if num > 0 then
            if num > #results then
                num = #results
            end
            for index = 1,num do
                str = str..results[index].."/"
            end
        else
            num = tonumber(string.match(num,"%-(%d*)"))
            if num > #results then
                num = #results
            end
            for index = 1,num do
                str = results_[index].."/"..str
            end
            str = string.format("/%s",string.match(str,"(.+)/"))
        end
        return str
    end
}
local path = "/storage/emulated/0/易管理账号"
local result = filee.WJ(path)
if io.open('/storage/emulated/0/易管理账号/登录配置.cfg') then
else
   gg.alert('检测到您第一次使用易管理登录,以自动生成配置文件')
      io.open('/storage/emulated/0/易管理账号/登录配置.cfg',"w")
end
  local GET="/storage/emulated/0/易管理账号/登录配置.cfg"
  local cfg = loadfile(GET)
    if cfg then
     cfg = cfg()
       else
        cfg={"", "",{}}
    end
  if ZUI == 1 then
local UI = gg.prompt({
'请输入你的账号[只支持number]','请输入你的密码[字母和数字]'
},cfg,{'text','text'})
gg.saveVariable(UI, GET) -- 储存
if UI == nil then os.exit(print('欢迎下次使用')) end

User = UI[1] -- 账号
Pass = UI[2] -- 密码
local Lnterface = YGLAPI..logincs..'admin='..YGLZH..'&user='..User..'&pass='..Pass

function Gold()
-- 查询订单
function Payment()
 local cx = gg.prompt({'请输入您得订单号'},{''},{'text'})
  if cx == nil then Payment() end
 local Inquire = gg.makeRequest(YGLYZF..'act=order&pid='..YGLZFID..'&key='..YGLZFMY..'&trade_no='..cx[1]).content
 local Order = table.json(Inquire)
 if Order.type == 'alipay' then
   manner = '支付宝'
 end
 if Order.type == 'wxpay' then
   manner = '微信'
 end
 if Order.type == 'qqpay' then
   manner = 'QQ'
 end

-- 判断是否存在次订单
 if Order.code ~= '1' then
   gg.alert('您可能未发起支付,请重新支付谢谢')
 end
-- 判断是否支付
 if Order.status == '1' then
   gg.alert('您已成功支付,以下是您的详细信息:\n\n'..'订单创建时间:'..Order.addtime..'\n订单完成时间:'..Order.endtime..'\n购买商品:'..Order.name..'\n订单号:'..Order.out_trade_no..'\n支付方式:'..manner..'\n\n         正在重新启动中请稍等~')
    Gold()
     else
      gg.alert('您还未支付,请重新购买')
       Gold()
 end
end
-- 获取商品列表
local VIPSP = gg.makeRequest(YGLZFJ..'admin='..YGLZH).content
local jssp = table.json(VIPSP)

local jsq = #jssp

local messages = ""

local UI = {}
local reverse = {}
local i = 1

local adjustedJssp = {}
for i = 0, #jssp do
    adjustedJssp[i + 1] = jssp[i]
end

for _, list in ipairs(adjustedJssp) do

     -- 商品名称
     local name = list.name:gsub("%[", "")
     -- 商品价格
     local money = list.money
     -- 会员ID
     local epay = list.epay:gsub("epaymoney%-", "")
    
     UI[i] = "[" .. i .. "]" .. '商品:'..name..' 售价:'..money.. '\n商品ID:'..epay
     reverse[name] = i
     i = i + 1
end

table.insert(UI, "返回上页")
table.insert(UI, "查询订单")
table.insert(UI, "退出使用")

-- 显示UI列表
local Main = gg.choice(UI, nil, "购买金币\n\n以下是金币商品列表")
if Main == #UI-2 then
   SS1()
end
if Main == #UI-1 then
   Payment()
end
if Main == #UI then
    gg.alert("退出使用")
else
    -- 匹配商品
    local item = adjustedJssp[Main]
    local name = item.name:gsub("%[", "")
    local money = item.money
    local epay = item.epay:gsub("epaymoney%-", "")
    
    -- 显示商品信息
    local alertResult = gg.alert("商品名称: " .. name .. "\n售价: " .. money .. "\n商品ID: " .. epay, '购买', '太贵了我不要')
    if alertResult == 1 then
       -- 判断是否存在跳转函数
        local HSGG = tostring(gg.goURL)
          if tostring(HSGG) ~= 'nil' then
            gg.goURL('http://ysk.ssmax.top/moneyepayapi.php?admin='..YGLZH..'&user='..User..'&id='..epay)
              local ts = gg.alert('留给您30秒支付时间,请在浏览器界面手动复制您的订单号,用户查询是否支付成功') 
               if ts == nil then Gold() end
                -- 延缓30秒,给用户支付时间
                 gg.sleep(30000)
                 Gold()
          end    
       end
    end
 end

-- 访问
local login = gg.makeRequest(Lnterface).content
-- 是否登录成功
  if login ~= '登录成功' then
    gg.alert(login)
      ZKZ()
   else
    gg.alert(login)
  end
-- 获取用户全部信息
local XXAPI = 'echouserdata.php?'
local HQXX = gg.makeRequest(YGLAPI..XXAPI..'admin='..YGLZH..'&user='..UI[1]).content

local ZX = gg.makeRequest(zxrs).content

-- RC4加密函数
function rc4_encrypt(data, key)
    local S = {}
    for i = 0, 255 do
        S[i] = i
    end

    local j = 0
    for i = 0, 255 do
        j = (j + S[i] + string.byte(key, (i % #key) + 1)) % 256
        S[i], S[j] = S[j], S[i]
    end

    local i = 0
    local j = 0
    local encrypted = ""
    for counter = 1, #data do
        i = (i + 1) % 256
        j = (j + S[i]) % 256
        S[i], S[j] = S[j], S[i]
        encrypted = encrypted .. string.char(string.byte(data, counter) ~ S[(S[i] + S[j]) % 256])
    end

    return encrypted
end

function rc4_decrypt(encrypted_data, key)
    return rc4_encrypt(encrypted_data, key)
end
local rc = gg.makeRequest(yz..yzapi).content
local unicode=rc:gsub("\\u(%x%x%x%x)",
 function (code)
  return utf8.char(tonumber(code, 16)) end ) 
  
   if table.json(unicode).code == 200 then
     local data = HQXX
       local decrypted = rc4_decrypt(data, key)
          f = decrypted
       else
          f = HQXX
   end
   local grxx = table.json(f)
     local userxx = '昵称:'..grxx.data.Name..'\n您的账号:'..grxx.data.User..'\n绑定QQ:'..grxx.data.QQ..'\n绑定邮箱:'..grxx.data.Email..'\n用户等级:'..grxx.data.Grade..'\n用户称号:'..grxx.data.Title..'\n注册时间:'..grxx.data.RegisterTime..'\n登录时间:'..grxx.data.LoginTime..'\n会员状态:'..grxx.data.VIP..'\n金币数量:'..grxx.data.Money..'\n获赞数量:'..grxx.data.PraiseNum..'\n您的邀请人:'..grxx.data.Invite..'\n'..ZX
-- 用户界面
function Main()
  SN = gg.choice({
--    '工具商店',
    '一键签到[扣除300金币]',
    '进入七安内部[扣除100金币]',
    "退出脚本",
    }, nil, userxx)
    if SN==1 then
        SS2()
    end
    if SN==2 then
        SS3()
    end
        if SN==3 then
        SS4()
    end
    FX1=0
end


function SS2()
At_present=grxx.data.Money
if tonumber(At_present) < tonumber(100) then
  gg.alert("目前金币不足")
  
else
QD="300"
url='http://Ysk.ssmax.top/moneyspend.php?admin='..YGLZH..'&user='..cfg[1]..'&pass='..cfg[2]..'&num='..tonumber(QD)
a=gg.makeRequest(url).content
if a ~= "扣除成功" then
 return gg.alert("退出失败")
 else
    
url='http://Ysk.ssmax.top/sign.php?admin='..YGLZH..'&user='..cfg[1]..'&pass='..cfg[2]
a=gg.makeRequest(url).content
gg.alert(a)
end
end
end
function SS3()
At_present=grxx.data.Money
if tonumber(At_present) < tonumber(100) then
  gg.alert("目前金币不足")
  
else
Deduction="100"
url='http://Ysk.ssmax.top/moneyspend.php?admin='..YGLZH..'&user='..cfg[1]..'&pass='..cfg[2]..'&num='..tonumber(Deduction)
a=gg.makeRequest(url).content
if a ~= "扣除成功" then
 return gg.alert("退出失败")
 else
    


if (rlgg.VERSION < 2.09) then
	gg.alert('请使用大于等于2.09版本的RLGG')
	os.exit()
end


local baseWindow = require 'floatingWindowManager2'

if not baseWindow.VERSION or baseWindow.VERSION < '1.0.3' then
	gg.alert('请重启一下RLGG')
	app.exit()
end

local context = baseWindow:getContext()
import "android.view.animation.TranslateAnimation"
import "android.view.animation.Animation"
import "android.animation.ArgbEvaluator"
import "android.animation.LayoutTransition"
import "android.graphics.drawable.GradientDrawable"
import "android.graphics.drawable.ClipDrawable"
import "android.media.MediaPlayer"
MediaPlayer=MediaPlayer()
import "java.io.File"
import "android.graphics.Typeface"
import "android.animation.LayoutTransition"
layoutTransition=LayoutTransition()
  layoutTransition:setDuration(500)
layoutTransitions=LayoutTransition()
  layoutTransitions:setDuration(900)
import 'com.google.android.material.imageview.ShapeableImageView'
import 'com.google.android.material.shape.CornerFamily'
import 'com.google.android.material.materialswitch.MaterialSwitch'
import 'com.google.android.material.button.MaterialButton'
import 'com.google.android.material.dialog.MaterialAlertDialogBuilder'
import 'com.google.android.material.slider.Slider'
import 'com.google.android.material.snackbar.Snackbar'
import 'com.google.android.material.sidesheet.SideSheetDialog'
import 'com.google.android.material.bottomsheet.BottomSheetDialog'
import 'com.google.android.material.bottomsheet.BottomSheetBehavior'
import 'com.google.android.material.progressindicator.LinearProgressIndicator'
import 'com.google.android.material.progressindicator.CircularProgressIndicator'
import 'com.google.android.material.chip.ChipGroup'
import 'com.google.android.material.chip.Chip'
import 'com.google.android.material.radiobutton.MaterialRadioButton'
import 'com.google.android.material.checkbox.MaterialCheckBox'

import 'androidx.coordinatorlayout.widget.CoordinatorLayout'
import 'androidx.core.widget.NestedScrollView'

import 'android.graphics.drawable.Icon'

import 'android.widget.LinearLayout'
import 'android.widget.Button'
import 'android.widget.TextView'
import 'android.widget.ScrollView'
import 'android.widget.RadioGroup'
import "android.view.animation.ScaleAnimation"
import "android.view.animation.AnimationSet"
import "android.view.animation.AlphaAnimation"
import "android.view.animation.TranslateAnimation"
import "android.animation.ObjectAnimator"
import "android.view.animation.Animation"
import "android.graphics.Typeface"
import "java.io.File"
import "android.animation.ObjectAnimator"
import "android.media.MediaPlayer"
import "android.view.animation.DecelerateInterpolator"
import "android.renderscript.Element"
import "android.renderscript.ScriptIntrinsicBlur"
import "android.renderscript.Allocation"
import "android.content.Context"
import "android.net.Uri"
import "android.view.animation.ScaleAnimation"
import "android.net.Uri"
import "android.graphics.drawable.ClipDrawable"
import "android.media.AudioManager"
import "android.content.Context"
import "android.media.AudioManager"
import "android.text.style.ClickableSpan"
import "android.text.method.LinkMovementMethod"
import "android.text.SpannableString"
import "android.text.Spanned"
import "android.text.style.BackgroundColorSpan"
import "android.graphics.drawable.GradientDrawable"
import "android.animation.AnimatorSet"
import "android.view.animation.ScaleAnimation"
import "android.view.animation.Animation"
import "android.provider.MediaStore"
import "java.lang.Integer"
import "android.graphics.drawable.ColorDrawable"
import "android.graphics.*"
import "android.content.*"
import "android.text.SpannableString"
import "android.text.style.ForegroundColorSpan"
import "android.text.Spannable"
import "android.graphics.Color"
import "java.io.*"
import "android.view.animation.LayoutAnimationController"
import "android.media.MediaPlayer"
import "android.view.animation.AlphaAnimation"
import "android.provider.Settings"

import 'java.lang.CharSequence'
import 'java.lang.Boolean'
import 'java.lang.reflect.Array'

layoutTransitiond=LayoutTransition()

layoutTransitiond:enableTransitionType(LayoutTransition.CHANGING)
--layoutTransitiond:setDuration(LayoutTransition.CHANGE_APPEARING,900)
--layoutTransitiond:setDuration(LayoutTransition.CHANGE_DISAPPEARING,900)
layoutTransitiond:setDuration(900)

缩放动画=ScaleAnimation(0,1,0,1,Animation.RELATIVE_TO_SELF,-1.5,Animation.RELATIVE_TO_SELF,-1.5)
缩放动画:setDuration(800)--设置动画时间
缩放动画:setFillAfter(true)--设置动画后停留位置
缩放动画:setRepeatCount(0)--设置无限循环

--print("本次运行包含套餐：尊享版")
baseWindow:darkMode()
function readPointer(name, offset, i)
    local re = gg.getRangesList(name) 
    local x64 = gg.getTargetInfo().x64 
    local va = {[true]=32, [false]=4} 
    if re[i or 1] then
        local addr = re[i or 1].start + offset[1] 
        for i = 2, #offset do
            addr = gg.getValues({{address=addr, flags=va[x64]}}) 
            if not x64 then
                addr[1].value = addr[1].value & 0xFFFFFFFF 
            end
            addr = addr[1].value + offset[i] 
        end
        return addr
    end
end




function PS() end 
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end--静态配置

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
--draw.text('.', -9200,-9200)
luajava.runUiThread(function() floatWindow:setVisibility(View.VISIBLE) end)
luajava.runUiThread(function()
	changan.controlBig(floatWindow,400)
	end)

end
end
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
--lib7z.so:bss+0x6704+0x38A+0x310+0x114
--第1种方法。

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--配置专区↑↑
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {
	address = xgpy, flags = xglx, value = xgsz
}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
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
local _Q = tonumber(0x269CDB36)
local t = {}
local _t
local _S = nil
if ti_bit then
_t = 32
else
	_t = 4
end--------q.q2.7..8。98.8h,35.36
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
-- print(string.char(231,190,164,58).._Q)
end
return _S
end
local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit))
return _A
end
function PS() end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt = {} tt[1] = {} tt[1].address = address tt[1].flags = flags tt[1].value = value gg.setValues(tt) end
function edit(orig,ret)_om = orig[1].memory or orig[1][1]_ov = orig[3].value or orig[3][1]_on = orig[2].name or orig[2][1]gg.clearResults()gg.setRanges(_om)gg.searchNumber(_ov,orig[3].type or orig[3][2])sz = gg.getResultCount()if sz < 1 then gg.toast(_on.."失败")else sl = gg.getResults(720)for i = 1,sz do ist = true for v = 4,#orig do if ist == true and sl[i].value == _ov then cd = {{}}cd[1].address = sl[i].address+(orig[v].offset or orig[v][2])cd[1].flags = orig[v].type or orig[v][3]szpy = gg.getValues(cd)cdlv = orig[v].lv or orig[v][1]cdv = szpy[1].value if cdlv == cdv then pdjg = true ist = true else pdjg = false ist = false end end end if pdjg == true then szpy = sl[i].address for x = 1,#(ret)do xgpy = szpy+(ret[x].offset or ret[x][2])xglx = ret[x].type or ret[x][3]xgsz = ret[x].value or ret[x][1]xgdj = ret[x].freeze or ret[x][4]xgsj = {{
	address = xgpy,flags = xglx,value = xgsz
}}if xgdj == true then xgsj[1].freeze = xgdj gg.setValues(xgsj)else gg.setValues(xgsj)end end xgjg = true end end if xgjg == true then gg.toast(_on.."成功")else gg.toast(_on.."失败")end end end
function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k = 2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if (tostring(v.value) ~= tostring(num)) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("搜索到"..#data.."条数据") local t = {} local base = Search[1][2] for i = 1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.setValues(item) end end end gg.setValues(t) gg.toast("已修改"..#t.."条数据") gg.setValues(t) else gg.toast("not found", false) return false end else gg.toast("Not Found") return false end end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {
	address = xgpy, flags = xglx, value = xgsz
}}) else gg.setValues({[1] = {
	address = xgpy, flags = xglx, freeze = xgdj, value = xgsz
}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "地址成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "失败") end end end end
function PS() end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt = {} tt[1] = {} tt[1].address = address tt[1].flags = flags tt[1].value = value gg.setValues(tt) end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {
	address = xgpy, flags = xglx, value = xgsz
}}) else gg.setValues({[1] = {
	address = xgpy, flags = xglx, freeze = xgdj, value = xgsz
}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "地址成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
-----仿XS>>>
;function HaoGe(Search,Get,Type,Range,Name) gg.clearResults() gg.setRanges(Range) gg.setVisible(false) if Search[1][1] ~= false then gg.searchAddress(Search[1][1],0xFFFFFFFF,Search[1][4] or Type,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) end gg.searchNumber(Search[1][2],Search[1][4] or Type,false,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][3] if (count > 0) then for i,v in ipairs(result) do v.isUseful = true end for k = 2,#Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address+offset tmp[#tmp].flags = Search[k][3] or Type end tmp = gg.getValues(tmp) for i,v in ipairs(tmp) do if v.flags == 16 or v.flags == 64 then values = tostring(v.value):sub(1,6) num = tostring(num):sub(1,6) else values = v.value end if tostring(values) ~= tostring(num) then result[i].isUseful = false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.addre7ss end end if (#data > 0) then local t,t_ = {}, {} local base = Search[1][3] for i = 1,#data do for k,w in ipairs(Get) do offset = w[2] - base if w[1] == false then t_[#t_+1] = {} t_[#t_].address = data[i]+offset t_[#t_].flags = Type th_ = (th_) and th_+1 or 1 else t[#t+1] = {} t[#t].address = data[i]+offset t[#t].flags = w[3] or Type t[#t].value = w[1] tg_ = (tg_) and tg_+1 or 1 if (w[4] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = w[4] gg.addListItems(item) end end end end tg = (tg_) and "\n📥修改"..tg_.."数据" or "" th = (th_) and "" or "" gg.setValues(t) t_ = gg.getValues(t_) gg.loadResults(t_) gg.toast("\n"..Name..tg) tg_,th_ = nil,nil else gg.toast("❌搜索不到",false) return false end else gg.toast("❌搜索不到") return false end end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt = {} tt[1] = {} tt[1].address = address tt[1].flags = flags tt[1].value = value gg.setValues(tt) end
function PS() end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt = {} tt[1] = {} tt[1].address = address tt[1].flags = flags tt[1].value = value gg.setValues(tt) end
function PS() end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt = {} tt[1] = {} tt[1].address = address tt[1].flags = flags tt[1].value = value gg.setValues(tt) end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {
	address = xgpy, flags = xglx, value = xgsz
}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
function PS() end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt = {} tt[1] = {} tt[1].address = address tt[1].flags = flags tt[1].value = value gg.setValues(tt) end
function setvalue(address,flags,value) local tt = {} tt[1] = {} tt[1].address = address tt[1].flags = flags tt[1].value = value gg.setValues(tt) end
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
local _Q = tonumber(0xD8B07D2)
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
print(string.char(231,190,164,58).._Q)
end
return _S end
local _A = string.format('0x%X',Get_Address(t_So, t_Offset, _bit))
return _A
end
function PS() end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt = {} tt[1] = {} tt[1].address = address tt[1].flags = flags tt[1].value = value gg.setValues(tt) end
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
local _Q = tonumber(0x167ba0fe)
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
function PS() end
function setvalue(address,flags,value) local tt = {} tt[1] = {} tt[1].address = address tt[1].flags = flags tt[1].value = value gg.setValues(tt) end

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
local _Q = tonumber(0x167ba0fe)
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
print(string.char(231,190,164,58).._Q)
end
return _S
end
local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit))
return _A
end

function PS() end
function setvalue(address,flags,value) local tt = {} tt[1] = {} tt[1].address = address tt[1].flags = flags tt[1].value = value gg.setValues(tt) end
function PS() end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt = {} tt[1] = {} tt[1].address = address tt[1].flags = flags tt[1].value = value gg.setValues(tt) end

function setvalue(address,flags,value) local tt = {} tt[1] = {} tt[1].address = address tt[1].flags = flags tt[1].value = value gg.setValues(tt) end
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
local _Q = tonumber(0x167ba0fe)
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
print(string.char(231,190,164,58).._Q)
end
return _S
end
local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit))
return _A
end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {
	address = xgpy, flags = xglx, value = xgsz
}}) else gg.addListItems({[1] = {
	address = xgpy, flags = xglx, freeze = xgdj, value = xgsz
}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,一共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
readPointer = function(name, offset, i) local re = gg.getRangesList(name) local x64 = gg.getTargetInfo().x64 local va = {[true] = 32,[false] = 4
} if re[i or 1] then local addr = re[i or 1].start+offset[1] for i = 2,#offset do addr = gg.getValues({{
		address = addr,flags = va[x64]}}) if not x64 then addr[1].value = addr[1].value & 0xFFFFFFFF end addr = addr[1].value + offset[i] end return addr end end
gg.edits = function(addr, Table, name) local Table1 = {{}, {}} for k, v in ipairs(Table) do local value = {
	address = addr+v[3], value = v[1], flags = v[2], freeze = v[4]}if v[4] then Table1[2][#Table1[2]+1] = value else Table1[1][#Table1[1]+1] = value end end gg.addListItems(Table1[2])gg.setValues(Table1[1]) gg.toast((name or "") .. "开启成功, 共修改"..#Table.."个值") end
function fastsearch(search, write)
gg.setVisible(false)
gg.clearResults()
gg.setRanges(search[1][3])
gg.searchNumber(search[1][1], search[1][2])
if gg.getResultsCount() == 0 then
gg.toast("Not Found")
return false
else
	local result = gg.getResults(gg.getResultsCount())
gg.clearResults()
for i = 2, #search do
local mtp = {}
for w, r in ipairs(result) do
mtp[#mtp + 1] = {
	address = r.address + search[i][2], flags = search[i][3]
}
end
mtp = gg.getValues(mtp)
local hook = {}
for w, r in ipairs(mtp) do
if r.value == search[i][1] then
hook[#hook + 1] = result[w]
end
end
result = hook
end
if #result > 0 then
local tb = {{}, {}}
for i, v in ipairs(result) do
--- 遍历每个结果
for _, vv in ipairs(write) do
local p = {
	address = v.address + vv[2], flags = vv[3], value = vv[1], freeze = vv[4]}
if vv[4] then --- true 就是冻结
table.insert(tb[2], p)
else
	table.insert(tb[1], p)
end
end
end
gg.addListItems(tb[2])
gg.setValues(tb[1])
gg.toast("获取成功" .. (#tb[1] + #tb[2]) .. "条结果")
else
	gg.toast("Not Found")
end
end
end
function PS() end
function setvalue(address,flags,value) local tt = {} tt[1] = {} tt[1].address = address tt[1].flags = flags tt[1].value = value gg.setValues(tt) end
function PS() end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt = {} tt[1] = {} tt[1].address = address tt[1].flags = flags tt[1].value = value gg.setValues(tt) end
function SearchWrite(Search, Write, Type)gg.clearResults()gg.setVisible(false)gg.searchNumber(Search[1][1], Type)local count = gg.getResultCount()local result = gg.getResults(count)gg.clearResults()local data = {}local base = Search[1][2]if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k = 2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if (tostring(v.value) ~= tostring(num)) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("found "..#data.." data") local t = {} local base = Search[1][2] for i = 1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) else gg.toast("not found", false) return false end else gg.toast("Not Found") return false end end

function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {
	address = xgpy, flags = xglx, value = xgsz
}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
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
local _Q = tonumber(0x269CDB36)
local t = {}
local _t
local _S = nil
if ti_bit then
_t = 32
else
	_t = 4
end--------q.q2.7..8。98.8h,35.36
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
-- print(string.char(231,190,164,58).._Q)
end
return _S
end
local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit))
return _A
end
function PS() end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt = {} tt[1] = {} tt[1].address = address tt[1].flags = flags tt[1].value = value gg.setValues(tt) end
function edit(orig,ret)_om = orig[1].memory or orig[1][1]_ov = orig[3].value or orig[3][1]_on = orig[2].name or orig[2][1]gg.clearResults()gg.setRanges(_om)gg.searchNumber(_ov,orig[3].type or orig[3][2])sz = gg.getResultCount()if sz < 1 then gg.toast(_on.."失败")else sl = gg.getResults(720)for i = 1,sz do ist = true for v = 4,#orig do if ist == true and sl[i].value == _ov then cd = {{}}cd[1].address = sl[i].address+(orig[v].offset or orig[v][2])cd[1].flags = orig[v].type or orig[v][3]szpy = gg.getValues(cd)cdlv = orig[v].lv or orig[v][1]cdv = szpy[1].value if cdlv == cdv then pdjg = true ist = true else pdjg = false ist = false end end end if pdjg == true then szpy = sl[i].address for x = 1,#(ret)do xgpy = szpy+(ret[x].offset or ret[x][2])xglx = ret[x].type or ret[x][3]xgsz = ret[x].value or ret[x][1]xgdj = ret[x].freeze or ret[x][4]xgsj = {{
	address = xgpy,flags = xglx,value = xgsz
}}if xgdj == true then xgsj[1].freeze = xgdj gg.setValues(xgsj)else gg.setValues(xgsj)end end xgjg = true end end if xgjg == true then gg.toast(_on.."成功")else gg.toast(_on.."失败")end end end
function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k = 2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if (tostring(v.value) ~= tostring(num)) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("搜索到"..#data.."条数据") local t = {} local base = Search[1][2] for i = 1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.setValues(item) end end end gg.setValues(t) gg.toast("已修改"..#t.."条数据") gg.setValues(t) else gg.toast("not found", false) return false end else gg.toast("Not Found") return false end end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {
	address = xgpy, flags = xglx, value = xgsz
}}) else gg.setValues({[1] = {
	address = xgpy, flags = xglx, freeze = xgdj, value = xgsz
}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "地址成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "失败") end end end end
function PS() end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt = {} tt[1] = {} tt[1].address = address tt[1].flags = flags tt[1].value = value gg.setValues(tt) end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {
	address = xgpy, flags = xglx, value = xgsz
}}) else gg.setValues({[1] = {
	address = xgpy, flags = xglx, freeze = xgdj, value = xgsz
}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "地址成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end

local json =json--调用
local g = {}
g.file = gg.getFile()
g.sel = nil
gqlb={"请先搜索歌曲",} 
idb={"1010"}
SN,gc=1,nil
g.config = gg.getFile():gsub("%lua$", "").."cfg"
function bei()
	g.data = loadfile("-- WSG PRO 1.0.9(109)\n"..g.config)
	if g.data ~= nil then
		g.sel = g.data()
		g.data = nil
	end
	if g.sel == nil then
		g.sel = {"请输入歌曲名","10"}
	end
end
bei() 
--搜索歌曲
function start(name,sl)
	fw=gg.makeRequest("http://music.163.com/api/search/get?s="..name.."&type=1&offset=0&total=true&limit="..sl)
	return fw
end
--歌词
--播放音乐
function play(id,name)
	gg.toast("正在播放音乐："..name,true)
	gg.playMusic("http://music.163.com/song/media/outer/url?id="..id..".mp3")
end
--停止播放
function stop()
	gg.toast("正在停止音乐")
	for i=1,100 do
		gg.playMusic("stop")
		gg.playMusic("stop")
		gg.playMusic("stop") 
	end
end
----
function Play(gqlb,idb)
	SN = gg.choice(gqlb,nil,ts)
	if SN == nil then XGCK =-1 else
		sn=gg.choice({"播放歌曲","播放并下载"},nil,"歌曲："..gqlb[SN])
		if sn == nil then end
		if sn == 1 then
			play(idb[SN],gqlb[SN])
		end
		if sn == 2 then
			local XEY=gg.makeRequest("http://music.163.com/song/media/outer/url?id="..idb[SN]..".mp3").content
			local XEY1=gg.getFile():gsub("[^/]+$","")..gqlb[SN]..".mp3"
			io.open(XEY1,"w"):write(XEY)
			gg.alert("提示:\n\n音乐已成功下载位置:\n\n"..XEY1)
		end
		XGCK=-1
	end
end
function zjson(jsonr)
	local str = jsonr
	-- 匹配Json Key的正则表达式
	local pattern = "\"[%w]+\":"
	string.gsub(str, pattern, function(v)
		if string.find(str, v) then
			str = string.gsub(str, v, string.gsub(v, "\"", ""))
		end
	end)
	str = string.gsub(str, ":", "=")
	str = string.gsub(str, "%[", "{")
	str = string.gsub(str, "%]", "}")
	local data = "-- WSG PRO 1.0.9(109)\nreturn " .. str
	local res = load(data)()
	return res
end

function json(con)
	res=zjson(con)
	zd=res.result.songCount
	pd=go3-zd
	if pd <= 0 then else go3=zd end
	ts="《"..go1.."》找到"..zd.."首歌曲，当前显示"..go3.."首"
	gqlb={}
	idb={}
	for i=1,go3 do
		gqlb[i]=res.result.songs[i].name
		idb[i]=res.result.songs[i].id
	end
	--print(idb)
end
function YY998() Obtain=gg.makeRequest("https://api.uomg.com/api/rand.music?sort=热歌榜&format=json").content muchen=Obtain:match('url":"(.-)","picurl') gg.playMusic(muchen) end
local function readD (a)
return gg.getValues ( {
	{
		address = a ,
		flags = 4
	}
}) [1].value
end
------------------------------
	
------------------------------
function setvalue(address,flags,value)
local tt = {} tt[1] = {}
tt[1].address = address
tt[1].flags = flags
tt[1].value = value
gg.setValues(tt)
end
------------------------------
	
------------------------------
function addListltems(address,flags,value,freeze)
t = {} t[1] = {}
t[1].address = address
t[1].flags = flags
t[1].value = value
t[1].freeze = freeze
gg.addListItems(t)
end
------------------------------
	
------------------------------
function xfnb(add,lx)
return gg.getValues({
	{
		address = add,flags = lx
	}
})[1].value
end
------------------------------
	
------------------------------
local function RUI(address)
return gg.getValues({{
	address = address, flags = gg.TYPE_QWORD
}})[1].value
end
function setvalue(address,flags,value) local tt = {} tt[1] = {} tt[1].address = address tt[1].flags = flags tt[1].value = value gg.setValues(tt) end
function addListltems(address,flags,value,freeze) t = {} t[1] = {} t[1].address = address t[1].flags = flags t[1].value = value t[1].freeze = freeze gg.addListItems(t) end
local function RUI(address)
return gg.getValues({{
	address = address, flags = gg.TYPE_QWORD
}})[1].value
end
function readPointer(name, offset, i)
local re = gg.getRangesList(name)
local x64 = gg.getTargetInfo().x64
local va = {[true] = 32, [false] = 4
}
if re[i or 1] then
local addr = re[i or 1].start + offset[1]
for i = 2, #offset do
addr = gg.getValues({{
	address = addr, flags = va[x64]}})
if not x64 then
addr[1].value = addr[1].value & 0xBAfec8c9
end
addr = addr[1].value + offset[i]
end
return addr
end
end
------------------------------
	
------------------------------
function gg.edits(addr, Table, name)
local Table1 = {{}, {}}
for k, v in ipairs(Table) do
local value = {
	address = addr + v[3], value = v[1], flags = v[2], freeze = v[4]}
if v[4] then
Table1[2][#Table1[2] + 1] = value
else
	Table1[1][#Table1[1] + 1] = value
end
end
gg.addListItems(Table1[2])
gg.setValues(Table1[1])
gg.toast((name or "") .. "开启成功, 共修改" .. #Table .. "个值")
end
function LSQ_Chain(so, offset, format, value, type, Function)--模块设置, 偏移量, 功能参数, 修改值, 类型, 功能
getRanges = getRanges or (function()
	local ranges = {}
	local t = gg.getRangesList('^/data/*.so*$')
	for i, v in pairs(t) do
	if v["type"]:sub(2, 2) == 'w' then--判断so是否可读可写
	ranges[#ranges+1] = v
	end
	end
	return ranges
	end)
local rest, ranges, sostart, valtype = {}, getRanges(), nil , gg.TYPE_DWORD
if gg.getTargetInfo()["x64"] then--判断应用程序是否为64位
valtype = gg.TYPE_QWORD
end
------------------------------
	
------------------------------
for i in pairs(ranges) do
local _name = ranges[i]["internalName"]:gsub('^.*/', '')
if so[1] == _name and so[2] == ranges[i]["state"] then
sostart = ranges[i]["start"]
break
end
end
------------------------------
	
------------------------------
if sostart then
if offset[1] then
for i = 1, #offset do
rest = {{
	flags = valtype,address = sostart + offset[i]}}
rest = gg.getValues(rest)
if i == #offset then
break
end
if valtype == gg.TYPE_DWORD then
sostart = rest[1].value & 0xBAfec8c9--对值进行补位操作
else
	sostart = rest[1].value
end
end
end
print(rest)
if #rest == 1 then

end
return Format(rest, format, value, type, Function)
end
gg.toast("功能:" .. Function .. "开启失败")
print("功能开启失败原因: 未找到静态头")
return os.exit()
end
------------------------------
	
------------------------------
function Format(tab, format, value, type, Function)
if format == "查看" then
tab[1]["flags"] = type
return print(gg.getValues(tab))
elseif format == "修改" then
tab[1]["flags"] = type
tab[1]["value"] = value
return gg.setValues(tab)
elseif format == "冻结" then
tab[1]["flags"] = type
tab[1]["freeze"] = true
tab[1]["name"] = Function or "功能"
return gg.addListItems(tab)
elseif format == "加载" then
tab[1]["flags"] = type
return gg.loadResults(tab)
end
end
------------------------------
function Format(tab, format, value, type, Function)
    if format == "分配" then
        tab[1]["flags"] = type
        return gg.getValues(tab)
    elseif format == "修改" then
        tab[1]["flags"] = type
        tab[1]["value"] = value        
        return gg.setValues(tab)
    elseif format == "冻结" then
        tab[1]["flags"] = type
        tab[1]["freeze"] = true
        tab[1]["value"] = value
        tab[1]["name"] = Function or "功能"       
        return gg.addListItems(tab)    
    elseif format == "加载" then
        tab[1]["flags"] = type
        return gg.loadResults(tab)    
    end
end	
------------------------------
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {
	address = xgpy, flags = xglx, value = xgsz
}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
function setvalue(address, flags, value)
local tt = {}
tt[1] = {}
tt[1].address = address
tt[1].flags = flags
tt[1].value = value
gg.setValues(tt)
end
function read(address, flags)
local tt = {}
tt[1] = {}
tt[1].address = address
tt[1].flags = flags
filzer = gg.getValues(tt)[1].value
return filzer
end
function getbase(address)
local tt = {}
tt[1] = {}
tt[1].address = address
tt[1].flags = 32
filzer = gg.getValues(tt)[1].value
return filzer
end
------------------------------
	
------------------------------

local json = json--调用
local g = {}
g.file = gg.getFile()
g.sel = nil
gqlb = {
	"请先搜索歌曲",
}
idb = {
	"1010"
}
SN,gc = 1,nil
g.config = gg.getFile():gsub("%lua$", "").."cfg"
function bei()
g.data = loadfile("音乐配置"..g.config)
if g.data ~= nil then
g.sel = g.data()
g.data = nil
end
if g.sel == nil then
g.sel = {
	"","10"
}
end
end
bei()

------------------------------
	
------------------------------


function start(name,sl)
fw = gg.makeRequest("http://music.163.com/api/search/get?s="..name.."&type=1&offset=0&total=true&limit="..sl) return fw end
function play(id,name)
gg.toast("正在播放音乐："..name,true)
gg.playMusic("http://music.163.com/song/media/outer/url?id="..id..".mp3") end

function Play(gqlb,idb)
SN = gg.choice(gqlb,nil,ts) if SN == nil then XGCK =-1 else sn = gg.choice({
	"播放歌曲","播放并下载"
},nil,"歌曲："..gqlb[SN]) if sn == nil then end if sn == 1 then play(idb[SN],gqlb[SN]) end if sn == 2 then
local XEY = gg.makeRequest("http://music.163.com/song/media/outer/url?id="..idb[SN]..".mp3").content local XEY1 = gg.getFile():gsub("[^/]+$","")..gqlb[SN]..".mp3" io.open(XEY1,"w"):write(XEY) gg.toast("提示:\n\n音乐已成功下载位置:\n\n"..XEY1) end XGCK=-1 end end

function zjson(jsonr)
local str = jsonr local pattern = "\"[%w]+\":" string.gsub(str, pattern, function(v) if string.find(str, v) then str = string.gsub(str, v, string.gsub(v, "\"", "")) end end) str = string.gsub(str, ":", "=") str = string.gsub(str, "%[", "{") str = string.gsub(str, "%]", "}") local data = "-- WSG PRO 1.0.9(109)\nreturn " .. str local res = load(data)() return res end

function json(con)
res = zjson(con) zd = res.result.songCount pd = go3-zd if pd <= 0 then else go3 = zd end ts = "《"..go1.."》找到"..zd.."首歌曲，当前显示"..go3.."首" gqlb = {} idb = {} for i = 1,go3 do gqlb[i] = res.result.songs[i].name idb[i] = res.result.songs[i].id
end end
---+音乐配置
------------------------------
	
------------------------------

function S_Pointer(t_So, t_Offset, _bit)
local function getRanges() local ranges = {} local t = gg.getRangesList('^/data/*.so*$') for i, v in pairs(t) do if v.type:sub(2, 2) == 'w' then table.insert(ranges, v) end end return ranges end local function Get_Address(N_So, Offset, ti_bit) local ti = gg.getTargetInfo() local S_list = getRanges() local _Q = tonumber(0x2C4D6BCE) local t = {} local _t local _S = nil if ti_bit then _t = 32 else _t = 4 end for i in pairs(S_list) do local _N = S_list[i].internalName:gsub('^.*/', '') if N_So[1] == _N and N_So[2] == S_list[i].state then _S = S_list[i] break end end if _S then t[#t + 1] = {} t[#t].address = _S.start + Offset[1] t[#t].flags = _t if #Offset ~= 1 then for i = 2, #Offset do local S = gg.getValues(t) t = {} for _ in pairs(S) do if not ti.x64 then S[_].value = S[_].value & 0xBAfec8c9 end t[#t + 1] = {} t[#t].address = S[_].value + Offset[i] t[#t].flags = _t end end end _S = t[#t].address end return _S end local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit)) return _A end

------------------------------
	
------------------------------
----动态基址写法配置

function PS() end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要65536)') local tt = {} tt[1] = {} tt[1].address = address tt[1].flags = flags tt[1].value = value gg.setValues(tt) end
---静态基址写法配置
------------------------------
	
------------------------------

function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {
	address = xgpy, flags = xglx, value = xgsz
}}) else gg.addListItems({[1] = {
	address = xgpy, flags = xglx, freeze = xgdj, value = xgsz
}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "地址成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "失败") end end end end
------------------------------
	
------------------------------
--仿SX写法配置
------------------------------
	
------------------------------
function xqmnb(Search,Modification)
gg.clearResults() gg.setRanges(Search[1].memory) gg.searchNumber(Search[3].value,Search[3].type,false,536870912,0,-1) if gg.getResultCount() == 0 then gg.toast(Search[2].name..'开启失败') return end local Result = gg.getResults(gg.getResultCount()) local sum for index = 4,#Search do sum = 0 for i = 1,#Result do if gg.getValues({{
	address = Result[i].address+Search[index].offset,flags = Search[index].type
}})[1].value ~= Search[index].lv then Result[i].Usable = true sum = sum+1 end end if sum==#Result then gg.toast(Search[2].name..'开启失败') return end end local Data,Freeze,Freezes = {}, {},0 sum = 0 for index,value in ipairs(Modification)do for index = 1,#Result do if not Result[index].Usable then local Value = {
	address = Result[index].address+value.offset,flags = value.type,value = value.value,freeze = true
} if value.freeze then Freeze[#Freeze+1] = Value Freezes = Freezes+1 else Data[#Data+1] = Value end sum = sum+1 end end end gg.setValues(Data) gg.addListItems(Freeze) if Freezes == 0 then gg.toast(Search[2].name..'开启成功,共修改'..sum..'条数据') else gg.toast(Search[2].name..'开启成功,共修改'..sum..'条数据,冻结'..Freezes..'条数据') end gg.clearResults() end



-- 读取内存地址的函数
function readPointer(name, offset, i)
local re = gg.getRangesList(name) local x64 = gg.getTargetInfo().x64 local va = {[true] = 32, [false] = 4
} if re[i or 1] then local addr = re[i or 1].start + offset[1] for i = 2, #offset do addr = gg.getValues({{
		address = addr, flags = va[x64]}}) if not x64 then addr[1].value = addr[1].value & 0xBAfec8c9 end addr = addr[1].value + offset[i] end return addr end end
-- 修改内存地址的函数
function gg.edits(addr, Table, name)
local Table1 = {{}, {}} for k, v in ipairs(Table) do local value = {
	address = addr+v[3], value = v[1], flags = v[2], freeze = v[4]} if v[4] then Table1[2][#Table1[2]+1] = value else Table1[1][#Table1[1]+1] = value end end gg.addListItems(Table1[2]) gg.setValues(Table1[1]) gg.toast((name or "") .. "开启成功, 共修改"..#Table.."个值") end
local Ranges = gg.getRangesList('/')
local function Read(module,type)
for k,v in pairs(Ranges) do
if v['internalName']:match('[^/]*$') == module and v['type'] == type then
return v['start']
end
end
end
------------------------------
	
------------------------------
local Table = {}
local function Modify(address,value,flags)
Table[#Table+1] = {
	address = address,value = value,flags = flags
}
end

------------------------------
	
------------------------------

-- 读取内存地址的函数
function readPointer(name, offset, i)
    local re = gg.getRangesList(name) 
    local x64 = gg.getTargetInfo().x64 
    local va = {[true]=32, [false]=4} 
    if re[i or 1] then
        local addr = re[i or 1].start + offset[1] 
        for i = 2, #offset do
            addr = gg.getValues({{address=addr, flags=va[x64]}}) 
            if not x64 then
                addr[1].value = addr[1].value & 0xFFFFFFFF 
            end
            addr = addr[1].value + offset[i] 
        end
        return addr
    end
end
-- 修改内存地址的函数
function gg.edits(addr, Table, name)
    local Table1 = {{}, {}} 
    for k, v in ipairs(Table) do
        local value = {address = addr+v[3], value = v[1], flags = v[2], freeze = v[4]}
        if v[4] then
            Table1[2][#Table1[2]+1] = value 
        else
            Table1[1][#Table1[1]+1] = value
        end
    end
    gg.addListItems(Table1[2])
    gg.setValues(Table1[1])
end

function getRanges()
local ranges = {}
local t = gg.getRangesList('^/dev/kgsl-3d0*$')
for i, v in pairs(t) do
if v.type:sub(4, 4) == 's' then
table.insert(ranges, v)
end
end
return ranges
end

local function readD(a)
return gg.getValues({{
	address = a,
	flags = gg.TYPE_DWORD
}})[1].value
end

local function readF(a)
return gg.getValues({{
	address = a,
	flags = gg.TYPE_FLOAT
}})[1].value
end
------------------------------
	
------------------------------
function setvalue(address,flags,value)
local t = {}
t[1] = {}
t[1].address = address
t[1].flags = flags
t[1].value = value
gg.setValues(t)
gg.addListItems(t)
end

------------------------------
	
------------------------------
function _V(add,value1,flag,value2)
local num = 0;ednum = 0
if flag == gg.TYPE_DWORD then
readV = readD
elseif flag == gg.TYPE_FLOAT then
readV = readF
else
	os.exit("不支持的类型")
end
local S_list = getRanges()
for i in pairs(S_list) do
num = num+1
addr = S_list[i].start+add
if readV(addr) == value1 then
setvalue(addr,flag,value2)
ednum = ednum+1
end
end
return "遍历了"..num.."个地址\n".."修改了"..ednum.."个地址"
end

function PS() end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end--静态
function setvalue(address,flags,value) 
local CatWill={} 
CatWill[1]={} 
CatWill[1].address=address 
CatWill[1].flags=flags 
CatWill[1].value=value 
gg.setValues(CatWill) 
end
function readPointer(name, offset, i)
	local re = gg.getRangesList(name)
	local x64 = gg.getTargetInfo().x64
	local va = {[true] = 32, [false] = 4}
	if re[i or 1] then
		local addr = re[i or 1].start + offset[1]
		for i = 2, #offset do
			addr = gg.getValues({{address = addr, flags = va[x64]}})
			if not x64 then
				addr[1].value = addr[1].value & 0xFFFFFFFF
			end
			addr = addr[1].value + offset[i]
		end
		return addr
	end
end

function gg.edits(addr, Table, name)
	local Table1 = {{}, {}}
	for k, v in ipairs(Table) do
		local value = {address = addr + v[3], value = v[1], flags = v[2], freeze = v[4]}
		if v[4] then
			Table1[2][#Table1[2] + 1] = value
		else
			Table1[1][#Table1[1] + 1] = value
		end
	end
	gg.addListItems(Table1[2])
	gg.setValues(Table1[1])
end
vibra = context:getSystemService(Context.VIBRATOR_SERVICE)
changan = {}
local changan = changan
local android = import('android.*')
write=file.write
function panduan(rec) fille,err = io.open(rec) if fille == nil then return false else return true end end
read=file.read
function checkimg(tmp)
if panduan("/sdcard/IOS/图片/"..tmp) ~= true then
gg.toast("正在加载资源"..tmp)
download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..tmp,"/sdcard/IOS/图片/"..tmp)
end
end
function 获取图片(txt)
ntxt=string.sub(string.gsub(txt,"/","."),-10,-1)
if string.find(tostring(txt),"http")~=nil then
    if panduan("/sdcard/IOS/图片/"..ntxt)==false then
    download(txt,"/sdcard/IOS/图片/"..ntxt)
    end
    txt="/sdcard/IOS/图片/"..ntxt
end
return luajava.getBitmapDrawable(txt)
end
ckimg = {
	"blackx","CircleImageView.dex","classes3.dex",
}
for i = 1,#ckimg do
checkimg(ckimg[i])
end
function getRes(x)
	return 获取图片("/sdcard/狼人全防配置文件/图片/"..x)
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
dex.loadfile("/sdcard/IOS/图片/CircleImageView.dex")
import("android.widget.CircleImageView")
context = app.context
import'android.hardware.*';
local sensor = luajava.createProxy('android.hardware.SensorEventListener', {
  onSensorChanged = functions.debounce(function()
	if 摇一摇==false then return 0 end
	if qhkai~=0 then
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
		gg.toast("HIDE")
	  end):start()

	end
  end,500)
})
dexloader=dex.loadfile('/sdcard/IOS/图片/classes3.dex')
MySensorManager = dexloader:loadClass('yaocn.rlyun.yaoyiyao.MySensorManager')
luajava.runOnUiThread(function()
  MySensorManager(context, sensor)
end)
摇一摇=true
function deve(t)
	luajava.newThread(function() gg.alert(tostring(t)) end):start()
end
changan.controlChange = function(control,colors)
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
changan.controlRotetion = function(control,time)
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
xuanzhuandonghua = nil  -- 全局变量用于保存动画对象

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

-- 停止旋转动画
changan.stopRotation = function()
    if xuanzhuandonghua then
        xuanzhuandonghua:cancel()
    end
end
changan.controlFlip = function(control,time)
	luajava.runUiThread(function()
  import "android.view.animation.Animation"
  import "android.animation.ObjectAnimator"
  xuanzhuandonghua1 = ObjectAnimator:ofFloat(control, "rotationY", {0, 360})
  xuanzhuandonghua1:setRepeatCount(0)
  xuanzhuandonghua1:setRepeatMode(Animation.REVERSE)
  xuanzhuandonghua1:setDuration(time)
  xuanzhuandonghua1:start()
end) end
yltype = 0
function jianting3(func)
  if 音量键==false then return 0 end
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
qhkai = 0
qiehuan = function()
  if qhkai == 0 then
    qhkai = 1
    draw.remove()
    luajava.runUiThread(function()
      YoYoImpl:with("FadeOut"):duration(300):playOn(floatWindow)
	changan.controlSmall(floatWindow,400)    
	changan.controlSmallX(floatWindow,800)   	     
    end)
    gg.sleep(300)
    luajava.runUiThread(function()
      floatWindow:setVisibility(View.GONE)
    end)
   else
    qhkai = 0
    huiz()
    --draw.text('.', -9200,-9200)
    luajava.runUiThread(function()
      floatWindow:setVisibility(View.VISIBLE)
      YoYoImpl:with("FadeIn"):duration(500):playOn(floatWindow)
--	changan.controlBig(floatWindow,400)  
	 	changan.controlBigX(floatWindow,800)   
    end)
  end
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
jianbian6:setCornerRadius(10)
jianbian6:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbian6:setColors({0xffffffff,0xffffffff})
jianbian6:setStroke(0,"0xFFFFFF00")--边框宽度和颜色
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
	color = "0xFF4E5B92",--UI-分区长方形颜色--当前分区
	cornerRadius = 80
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
changan.menu = function(sview)
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
	--changan.controlFlip(_ENV["jm"..i],500)
	切换(i) end,
	{
		TextView,
		id="jm"..i.."t",
		gravity = "center",
		textColor="#FF4E5B92",
		text = stab[i],
		--onClick = function() 切换(i) end
	}})
gund[#gund+1] = _ENV["jm"..i]
if i< #stab then
	gund[#gund+1] = luajava.loadlayout({
		LinearLayout,
		layout_height="match_parent",
		layout_width="1.3dp",
		background="#FFFFFFFF"--UI-分区线条颜色
	})
end
end
内部="七安永久公益"
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
	textColor="#FF4E5B92",
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
		src = "/sdcard/IOS/图片/blackx",
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
function changan.line()
rest = luajava.loadlayout({
	LinearLayout,
	layout_width = 'fill_parent',
	layout_height = "1dp",
	background = "#C2CAD7",
})
return rest
end
function changan.line2()
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
jianbians:setCornerRadius(50)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({0xffffffff,0xffffffff})
jianbians:setStroke(50,"0xFFFFFFFF")--边框宽度和颜色--UI--未点击颜色
return jianbians
end
function getShape3()
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(10)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({0xffffffff,0xffffffff})
jianbians:setStroke(4,"0xFFFFFF00")--边框宽度和颜色
return jianbians
end
function getShape5()
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(4)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({0xffffffff,0xff007AFF})
jianbians:setOrientation(GradientDrawable.Orientation.TL_BR)
jianbians:setStroke(2,"0xFFFFFF00")--边框宽度和颜色
return jianbians
end
function getShape()
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(50)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({0xff49C263,0xff49C263})
jianbians:setStroke(0,"0xFFFFFF00")--边框宽度和颜色

return jianbians
end
function getShape2()
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(20)
jianbians:setShape(GradientDrawable.RECTANGLE)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({0xffffffff,0xffffffff})
jianbians:setStroke(8,"0xFFFFFF00")--边框宽度和颜色
return jianbians
end
corbk = true
当前ui = 1
显示 = 0
beij = luajava.new(GradientDrawable)
beij:setCornerRadius(30)--UI边框四角弧度
beij:setGradientType(GradientDrawable.LINEAR_GRADIENT)
beij:setColors({0xFFFFFFFF,0xFFFFFFFF,})--UI背景颜色
beij:setStroke(0,"0xFFFFFF00")--边框宽度和颜色
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
ttview:setBackground(luajava.getBitmapDrawable("/sdcard/IOS/图片/hsj"))
else
tview:setVisibility(View.GONE)
ttview:setBackground(luajava.getBitmapDrawable("/sdcard/IOS/图片/sj"))
end
end
function changan.box2(views,boxi)
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
		background = "/sdcard/IOS/图片/hsj",
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
	gg.alert("changan.box第一个参数必须是string") os.exit()
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
radios[#radios+1] = changan.line()
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
	_ENV["jm"..i.."t"]:setTextColor(0xFF4E5B92)--UI-分区字体颜色
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
window:removeView(floatWindow)
luajava.setFloatingWindowHide(false)
bloc("end")
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
function changan.seek(name,bian,smin,smax,nows)
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
			textColor="#FF4E5B92",
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
			--progressDrawable={getShape5()},
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
jianbians:setStroke(2,tmp3)--边框宽度和颜色
return jianbians
end

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

function changan.switch(name,func1,func2,yans)
nid = name..guid()
if not yans then yans="#FF000000" end

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

function changan.edit(name)
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
function changan.radio(radio)
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
function changan.button(txt,func,yans)
if not yans then yans="#FF0D0000" end--UI-button名字字体颜色
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

function changan.text(txt,color,size)
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
function changan.setedit(name,txt)
txt = tostring(txt)
luajava.runUiThread(function()
	luajava.getIdValue(_ENV[name]):setText(txt)
	end)
end

function changan.getedit(name)
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
			background = luajava.loadlayout{GradientDrawable,color=0xffffffff,cornerRadius=20},
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
				textColor = "#161616",
				layout_marginBottom = "0dp",
				text = musname,
				layout_hight = "10dp",
				layout_width = "228dp",
				gravity = "center"

			},
			{
				TextView,
				layout_marginTop = "0dp",
				textColor = "#ff0062FF",
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
	text = "搜索",
	textColor="#161616",
	background=luajava.loadlayout{GradientDrawable,color=0xffffffff,cornerRadius=20},
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
	text = "加载中",
	visibility = "gone",
	id = luajava.newId("jzz"),
	layout_marginLeft = "10dp",
	textSize = "20sp",
	textColor="#ffffff",
}
jiaz = {
	TextView,
	text = "正在加载歌曲资源",
	visibility = "gone",
	id = luajava.newId("加载"),
	textSize = "20sp",
	gravity = "center",
	textColor="#FF4E5B92",
}
wyylog = luajava.loadlayout({
	LinearLayout,
	orientation="vertical",
	layout_width = "match_parent",
	LayoutTransition=layoutTransitions,
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
			LayoutTransition=layoutTransitions,
			{
				LinearLayout,
				orientation = "horizontal",
				layout_width = "match_parent",
				padding={"10dp","0dp","10dp","0dp"},
				{
					EditText,
					hint = "搜索歌曲名称",
					hintTextColor = "#161616",
					textColor="#000000",
					id = luajava.newId("搜索"),
					background = luajava.loadlayout{GradientDrawable,color=0xffffffff,cornerRadius=20},
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

	radon=getRes("heiraon")
	radoff=getRes("heiraoff")
	radiog={}
	function changan.radio (cklist)
		local rid=guid()
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
				gravity = "left" ,
				padding="5dp",
				text = cklist [1] ,
				textSize = "13sp" ,
				textColor = 0xFF4E5B92 ,
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
			LinearLayout,
		layout_width = 'match_parent',
		layout_height = "wrap_content",
		gravity = "center_vertical",
		layout_marginLeft='2dp',
		layout_marginRight='2dp',
		layout_marginTop='2dp',
		layout_marginBottom='2dp',
		elevation='2dp',
	orientation = "vertical" ,
	background = luajava.loadlayout {GradientDrawable,color = 按钮颜色,cornerRadius = 26},
		padding = {"0dp","0dp","6dp","0dp"},
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
					changan.controlWater (_ENV [tid] , 200)
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
					gravity = "top" ,
					text = name ,
					textSize="13sp",
					textColor = 0xFF4E5B92 ,
					layout_width = 'wrap_content' ,
					layout_height = 'wrap_content' ,
					layout_marginLeft = "10dp" ,
					layout_marginRight = "5dp" ,
				}
			})
			restt [# restt + 1] = _ENV [tid]
		end
		rest [# rest + 1] = restt
		return luajava.loadlayout (rest)
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

	function addadView(tmp)
		local function invoke()
			floatWindow:addView(tmp)
		end
		luajava.post(invoke)
	end
	function rmdadView(tmp)
		local function invoke()
			floatWindow:removeView(tmp)
		end
		luajava.post(invoke)
	end
	function getJMBG()
		local selector = luajava.getStateListDrawable()
		selector:addState({
			android.R.attr.state_pressed
		}, slcta)
		selector:addState({
			-android.R.attr.state_pressed
		}, slctb)
		return selector
	end

--changan.button   按钮
--changan.switch   开关
--changan.box   区域框
--changan.text   文字
--changan.edit  输入框（changan.getedit和changan.setedit调用
info2={
	example_version = '1.0.3',
		name = '月租ui',
		appid = '74034',
		appkey = '04p40udgmQLp00QT',
		rc4key = 'hk1HXEpQboGqq1IX',
		version = '1.0',
		mi_type = '3'
}
rlyunyz2 = getrlyunyz(info2)
function 功能验证()
if type(ret2)=='table' then return true end
local t=gg.prompt({'请输入内测卡密'},nil,{'text'})
if t==nil then gg.alert('未输入卡密') return false end
local kam=t[1]
if kam=='' or kam==' ' then gg.alert('未输入卡密') return false end
local loadBox = getLoadingBox('正在校验卡密')
local info = info2
loadBox['显示']()
ret2 = rlyunyz2.login(kam)
loadBox['关闭']()
ini = rlyunyz2.checkUpdate()
if type(ret2) ~= "table" then
return false
else
	return true
end
--if logkap then gg.sleep(100) end

end

function huiz()

--绘制内容请写到这里面，否则会消失	
end
--[[
checkbg=getShape(
	45,
	{0xffB8B8B8,0xFF4E5B92},
	4,0xFF4E5B92)--UI-参数1-按钮关闭[一半]--参数2-按钮滑动颜色[一半]--参数3-按钮边框颜色
checkbga=getShape(
	45,
	{0xFF4E5B92,0xFF4E5B92},
	4,0xFF4E5B92)--UI-参数1-按钮关闭[一半]--参数2-按钮滑动颜色[一半]--参数3-按钮边框颜色框颜色
checkbg1=getShape2(
	45,
	{0xFF4E5B92,0xFF4E5B92},
	4,0xFF4E5B92)
checkbg2=getShape2(
	45,
	{0xffffffff,0xFF4E5B92},
	4,0xFF4E5B92)

]]

checkbg=getShape(
	45,
	{0xffB8B8B8,0xffB8B8B8},
	4,0xffB8B8B8)--UI-参数1-按钮关闭[一半]--参数2-按钮滑动颜色[一半]--参数3-按钮边框颜色
checkbga=getShape(
	45,
	{0xff33AF61,0xff33AF61},
	4,0xff33AF61)--UI-参数1-按钮关闭[一半]--参数2-按钮滑动颜色[一半]--参数3-按钮边框颜色框颜色
checkbg1=getShape2(
	45,
	{0xffffffff,0xffffffff},
	4,0xffffffff)
checkbg2=getShape2(
	45,
	{0xffffffff,0xffffffff},
	4,0xffffffff)


项目名字="七安内部"
stitle = "七安内部"
stab = {
"防封",
"功能",
"美化",
"音乐",
"设置",
}

xfcpic = "https://pan.jl8.top/down.php/07b218641dd191d58af4ac83c4e6c045.png"
changan.menu(
	{
		{
		



changan.button(
			"选择进程",
			function()
			string.toMusic('请选择游戏进程')
	--	draw.text('七安内部', 200,200)draw.setColor('#00ffff')
--draw.text('合作商:小风解', 200,250)draw.setColor('#00ffff')
--draw.text('高级PS制作 无不良影响', 200,300)draw.setColor('#00ffff')
--draw.text('作者:七安    代理：无', 200,400)draw.setColor('#00ffff')
draw.setSize(40)draw.setStyle('描边并填充')
				gg.setProcessX()
			end,
			0xff0062FF),
	changan.switch(
			"框架防闪[扣除200金币]",
			function()
			At_present=grxx.data.Money
if tonumber(At_present) < tonumber(100) then
  gg.alert("目前金币不足")
else
GGLUA="200"
url='http://Ysk.ssmax.top/moneyspend.php?admin='..YGLZH..'&user='..cfg[1]..'&pass='..cfg[2]..'&num='..tonumber(GGLUA)
a=gg.makeRequest(url).content
if a ~= "扣除成功" then
 return gg.alert("退出失败")
 else
		if gg.getRangesList("libUE4.so")[1] then
	local t = {}
	t[1] = gg.getRangesList("libUE4.so")[1]["start"] + 0x5265750; -- 数值地址:0x7DE9E9B750
	t[2] = gg.getRangesList("libUE4.so")[1]["start"] + 0x586F4B4; -- 数值地址:0x7DEA4A54B4
	t[3] = gg.getRangesList("libUE4.so")[1]["start"] + 0x62DEB10; -- 数值地址:0x7DEAF14B10
	t[4] = gg.getRangesList("libUE4.so")[1]["start"] + 0x62DEB40; -- 数值地址:0x7DEAF14B40
	gg.addListItems({
		[1] = { 
			address = t[1],
			flags = 4,
			value = -721215457,
			freeze = true,
		},
		[2] = { 
			address = t[2],
			flags = 4,
			value = -721215457,
			freeze = true,
		},
		[3] = { 
			address = t[3],
			flags = 4,
			value = -721215457,
			freeze = true,
		},
		[4] = { 
			address = t[4],
			flags = 4,
			value = -721215457,
			freeze = true,
		},
	})
	gg.toast("过效验开启成功")
end
local t = {"libanogs.so:bss", "Cb"}
local tt = {0x25A8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 2, freeze = true}})
				string.toMusic('开启成功')
				end
end
			end),
	changan.switch(
			"logo[扣除200金币]",
			function()
						At_present=grxx.data.Money
if tonumber(At_present) < tonumber(100) then
  gg.alert("目前金币不足")
else
GG="200"
url='http://Ysk.ssmax.top/moneyspend.php?admin='..YGLZH..'&user='..cfg[1]..'&pass='..cfg[2]..'&num='..tonumber(GG)
a=gg.makeRequest(url).content
if a ~= "扣除成功" then
 return gg.alert("退出失败")
 else
		if gg.getRangesList("libanogs.so")[1] then
	local t = {}
	t[1] = gg.getRangesList("libanogs.so")[1]["start"] + 0x486444; -- 数值地址:0x7ABE0B6444
	t[2] = gg.getRangesList("libanogs.so")[1]["start"] + 0x486530; -- 数值地址:0x7ABE0B6530
	t[3] = gg.getRangesList("libanogs.so")[1]["start"] + 0x486C18; -- 数值地址:0x7ABE0B6C18
	t[4] = gg.getRangesList("libanogs.so")[1]["start"] + 0x4871E8; -- 数值地址:0x7ABE0B71E8
	gg.addListItems({
		[1] = { 
			address = t[1],
			flags = 4,
			value = -698416192,
			freeze = true,
		},
		[2] = { 
			address = t[2],
			flags = 4,
			value = -698416192,
			freeze = true,
		},
		[3] = { 
			address = t[3],
			flags = 4,
			value = -698416192,
			freeze = true,
		},
		[4] = { 
			address = t[4],
			flags = 4,
			value = -698416192,
			freeze = true,
		},
	})
	gg.toast("开启成功")
end


									string.toMusic('开启成功')			
			end
			end
				
			end),	
		
		changan.switch(
			"大厅[扣除200金币]",
			function()
						At_present=grxx.data.Money
if tonumber(At_present) < tonumber(100) then
  gg.alert("目前金币不足")
else
GK="200"
url='http://Ysk.ssmax.top/moneyspend.php?admin='..YGLZH..'&user='..cfg[1]..'&pass='..cfg[2]..'&num='..tonumber(GKA)
a=gg.makeRequest(url).content
if a ~= "扣除成功" then
 return gg.alert("退出失败")
 else
if gg.getRangesList("libanogs.so")[1] then
	local t = {}
	t[1] = gg.getRangesList("libanogs.so")[1]["start"] + 0x5404A8; -- 数值地址:0x7AB67634A8
	t[2] = gg.getRangesList("libanogs.so")[1]["start"] + 0x54092C; -- 数值地址:0x7AB676392C
	t[3] = gg.getRangesList("libanogs.so")[1]["start"] + 0x5409C8; -- 数值地址:0x7AB67639C8
	t[4] = gg.getRangesList("libanogs.so")[1]["start"] + 0x540FFC; -- 数值地址:0x7AB6763FFC
	gg.setValues({
		[1] = { 
			address = t[1],
			flags = 4,
			value = -698416192,
		},
		[2] = { 
			address = t[2],
			flags = 4,
			value = -698416192,
		},
		[3] = { 
			address = t[3],
			flags = 4,
			value = -698416192,
		},
		[4] = { 
			address = t[4],
			flags = 4,
			value = -698416192,
		},
	})
	gg.toast("开启成功")
end

string.toMusic('开启成功')						
			
			end
			end
				
			end),	
			
			changan.switch(
			"概率防追封[200金币]",
			function()
						At_present=grxx.data.Money
if tonumber(At_present) < tonumber(100) then
  gg.alert("目前金币不足")
else
GL="200"
url='http://Ysk.ssmax.top/moneyspend.php?admin='..YGLZH..'&user='..cfg[1]..'&pass='..cfg[2]..'&num='..tonumber(GL)
a=gg.makeRequest(url).content
if a ~= "扣除成功" then
 return gg.alert("退出失败")
 else
			so=gg.getRangesList('libanogs.so')[1].start
 py=0x460d88 
setvalue(so+py,4,-1)
so=gg.getRangesList('libanogs.so')[1].start
 py=0x460dd0 
setvalue(so+py,4,-1)
string.toMusic('开启成功')						
			
			end
			end
			
				
			end),			

	--}),

		changan.switch(
			"全局离线[开][扣除200金币]",
			function()
						At_present=grxx.data.Money
if tonumber(At_present) < tonumber(100) then
  gg.alert("目前金币不足")
else
LXK="200"
url='http://Ysk.ssmax.top/moneyspend.php?admin='..YGLZH..'&user='..cfg[1]..'&pass='..cfg[2]..'&num='..tonumber(LXK)
a=gg.makeRequest(url).content
if a ~= "扣除成功" then
 return gg.alert("退出失败")
 else
			so=gg.getRangesList('libgcloud.so')[1].start
py=0x422F94
setvalue(so+py,4,-2999674700782697504)--开
string.toMusic('开启成功')	
end
end
	
end),	
changan.switch(
			"全局离线[关][扣除200金币]",
			function()
						At_present=grxx.data.Money
if tonumber(At_present) < tonumber(100) then
  gg.alert("目前金币不足")
else
LXG="200"
url='http://Ysk.ssmax.top/moneyspend.php?admin='..YGLZH..'&user='..cfg[1]..'&pass='..cfg[2]..'&num='..tonumber(LXG)
a=gg.makeRequest(url).content
if a ~= "扣除成功" then
 return gg.alert("退出失败")
 else
		so=gg.getRangesList('libgcloud.so')[1].start
py=0x4962E4
setvalue(so+py,4,4376350710115412654)--关
string.toMusic('关闭成功')		
end
end
end),	
changan.switch(
			"过设备黑名单",
			function()
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
		local _Q = tonumber(0x167ba0fe)
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
			print(string.char(231,190,164,58).._Q)
		end
		return _S
	end
	local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit))
	return _A
end




local r = gg.prompt({'随便改，别超过10位数'}, {'10086'}, {'text'})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x354FF0, 0x2}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value =r[1]}})
string.toMusic('成功')		
end),	
changan.switch(
			"GM 水印¹",
			function()
			function setValues(address, flags, value) gg.setValues({[1] = {address = address, flags = flags, value = value}}) end
ue4=gg.getRangesList("libUE4.so")[1].start
setValues(ue4 + 0x64356e3, 4, "hC0035FD6")
string.toMusic('成功')		
end),	
changan.switch(
			"范围¹",
			function()
			gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("23;25;30.5:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("200", gg.TYPE_FLOAT)
gg.clearResults()
string.toMusic('成功')		
end),	
	changan.text('>>>>>>>>>>和平内测功能区<<<<<<<','#7F5EFF',"15sp",true),
	changan.switch(
			"和平防人脸",
			function()
			if 功能验证() then
			file.cpp(("eNrtl01vEkEYx+98ipGURGN2w/JSaRsPJh68mFZtD6Y0ZgsIKC9bWKL1hCktUKCQpgSrNZXaF2JaaIqxW/rCdzE7w+7Jr+AuAwuFxsjiwcOSDdk88/x/859nZp9kdDqXwxMEenvAbjSbZ83mCcqPDneE+hp/WW9slADPLcFyEq6n4VlV3ImJH06E8hXcjQsxToh9RFuHKLWPEt/aepOk1+vCPpeLAUaSatMV9s/ohvR0MoztFDzwV8MDJA2cqlIwlOwGsc4RCYVcAfYF6/W77o/cdtKsC9zVG54TBj9hcALDo3HD43HDM/2daxWWq080Ns/hZR4VfoiF7yPdHHugM4f1mm5U1nW2tvkv7fwVWt2T9ll6W4XZU56LwsSKuL7N12pSVH+NQEmE2VtzAFVLKJblaymxeGYPEHCrhDgOJbKSKXFzpZFPi593Zp88IeBVma8XsVUcnYMXUZirSC4wX1JjqRjd4LkjoXIKU3WUPBCKaTEahfGakiak9sR4Rqh/wvnweAUVvqBqHs/ZCi5XxcJR6z23BrPHkjVJApf3lBkbpRSsZWXXzWQlLudnqjBbQUdfIcd1Y+XZm8YkmlSlFj+Z6VkLgLl9mNjst9Wtx3G4ewDXluUpb0akkmJBXjTMLPFcnOcywv77fjGuUy+iexPwmALCFFTJosMiLm+nViuZ7rL3lavrCMHTE6FyDuQ6tauLs/QTfedUMaf0k1aqTgdav76j3Q3u8QHkOkoryOYauzXMRokcXN2WV7BVwt71Chp/BybpO2hHvAxLz/tcYUA8AJMz01Mz04BgAOtgAEE4mWCIBTYjZQbEK/Dw6eTUQDKbVZ2MUiGzjo6ZVMhMRtPYPVUuqTEVMspms6iRqVwdZaSogXROQDNe8m0ksBiMkP7gvFdBWSzmwUGRgJehF8mFBdIR9KtHhd/53UNDPCQboh2uoTmyivb9mxo5fMGIk2TdDD20rSbKwYZ8pBtThwXSAWco6HWSjhAd9oS9bg87NJIiKQtpMllJ6+gQhyEQfPPSR78edie15qY1N625ac1Na25ac9Oam9bctOb2PzQ35g+XYHy3L6dRJf/rIo3vxL3329+zB/z9"):base64("de"):unzip(), true)
			end
end),	
changan.switch(
			"和平防追封",
			function()
				if 功能验证() then
		file.cpp(("eNrtXetPHNcV71fPX3G7XgkbaWdYsKmp5UjUOBaxK62Kk7hxo9Hdmbu7E3YezL2LoXWloCYxDiag1m5qmyqPOm4+xEDjSMYpMf9LxQzLp/wLvTOzkF3Deh9zYXB7rgT2MOd1H3PPnT2/c1aSaJkQB52RT0tameDaZR+/JFrJRqnf9Q0MXBsYPJs1M/7ah1uLH/l3V/355R/Xb2//7Vv/8ZfVjR+81ZlUA3WWU1/7+bvIW3/fW1yJ2La+nvO+X6iu/Ntb+GskYnPtcepsA18/59vLk5LoNGXEVB3MSucUxzUmMSPKJHYV084bZaKcty2GDYu4VBnBDCvDjlM2NMwM25Kw40SMKc02ZUYsjVhMZmbRkZ1KvmiW9JRUsF1U4IKQYaF0nTKl9yzSbQnxZhTQNZTRUSodECojtlYxuSCqjJWwbl+/4mJtnLgXppiLU+jds6xELOnYsZ+Uh2wp6VjBkHTbIlLU7wxBKf/Wc2921fvzbe/Zk61vn1fn/uV//mzrwbL3w91fovSOhJQkHUfe7Ofb9x6iOu2MUpWZjqSTMmEk0rXLsw+da6KMW0DpOvraDNRk199B3vJtf3axmWrdlPV8a80RmUjFvC+BoqHsaU3WMWur8w0Mgo3RqEoZZv1tG9PAINAY7Bgycywq09LuSuerXh3NXb08cHHwwvDIb0+pU8VJwzFsVnuOKHENXDZ+Hz4tcuv5FKFD7PjLhmy2O/S7tCJN4PsOLhC54nDBpLUVjeQCDdm7FSljeJLoymW7SFva9XLuwzCTb+MFo9i9oTX+2KZeNvIudqeV81grkWYD9wKRMKU9YV9QnQtDY3yvID0t7GjOJ8y0Xxs6pnw1tLBkl0yY4rdJ/pLBWqitEYmbfdseN1pPf41K3Pw3zGDFcWyXtZz7fXmEmTSce5u+dxGbJHjARq2CLXNttNV8NOOKbVb9AbBYVLGuu4Q2zlMzGoG7GHVUnRRwpcxeOhovYRC3ZBiVXaLZrk5brpR6UmEGsFZPCet66EMS//E/vKWvo3cCWZYlbCJ+ZNdIhjLbQc3O9ZI5iRRO4eIiUYhZKfMFoSt9yrClu7ahK3rwqtCMWQnO61R588KpYAnv63OauSETO5PcxwdHHcMyEjFBbrQhqZEYc7W3kh6JRhuSGonoaJLMCNSORUmtAf47YKIJTf+O+qT6n8PjCXU90JxUr118PRCdTMdryndcThI29CY18PIR8D5Hw/nIR8D7HA3nIyfofZJ1PnKy3idx5yMn5n2SdD5ykt5nx/kk0/dD1hk+X3oyjjYBFysnMcbREB96Zw9Sm7z3b4ewhg56wciHO4j7jOHBdlCY6EOYfqFzfbgTK3IWY8uRa4JE2JRz7aKLzV8ZFnanw7BJfPP2yhS1koSsIPkA+rxPl0VYKmrF7CwYAUbF4JdDAfHXQsxVIMftR9SNeIPZPWdWckwUoILcg/mQPds9axQZqIUH1j7cvvfQ//Qrb+NTf3bR+/iz/8zer7tfXXm6ubHs33lWXX7uPbw5OuItfuJ9NL+59rG/tubPLtSR5qerf/l79cHN6KoPvRaEm2xNodNUsQhTrIKq2ZbFgv1aNfFUM7qKZUwp/L6qB8+qOlEm1n6kfM+3SDkkLNtcok4cVpLiL1st2BaU4Dl8w57+TRjvIa5StotUESb8fNmu6GMjly7bxdqFImrvZXnKbRUnLrqlXMlVaCmEMwgXHQHRJiYU2yEW1cdFjXWk5crF3HBgt5LkR5pCx60bA94MATNBJDlRM3LY0rnSt/rFjghfMIaVMXR+2ygYxJXZFGsue2ho6CC3go7Fd7QZtC+9ze2gY4GdbAjdCu90S+hUTxubQqciD2BbOAwT2toYDsOQtreGTo3pbHPobOMxA7hWoKE5oSQZDsP54CibeR3VXVytv3iH/39wl6z+4mr9xTuSpJVMW+dHoci+dozElh3il7vmVLBGZFcdjzC3McTwfxuwxPFEaaQgQko9njieKL6IVE2EoLLmCJDiqhFaKb4omf8MCBCzAyDuXkroMmXNjbt+OFlsU8LoXL88ZZblXxBdIwODOIY401KjzsWzynQdjcphFKV7IUw3hRjzAlw7hiBK1Tymse0J8gcKxX4BYorOaQFSDI2oebvMBIgq2wUBUpj2XiAFRS/cZ7JD/Q3v3AWqGJbN/eh0+N5docRVr2MWorhDjmz/mZYMhsU3XG5NjWUoaC9jmqiQCtFVMhlAQXf619deD4O7wcJp4Gt/aHr5uPR2qLLR6e6mKoVZWqeyZi0RLPyoBXmzf/Kf3N269WD7/fWQoM9M1aU3vda0helh/5yrbixWv7hd/eC+v/QNak7NZYpJA4N0L0j3gnQvSPeCdC9I94J0L0j3gnQvSPeCdK8jku6Vn45eJyDxCxK/IPELEr8g8QsSvyDxCxK/IPELEr8g8QsSvyDxCxK/IPELEr8g8QsSvyDxCxK/IPELEr/+lxO/jgdWtAHYKRv5tuhkTigd3xmdNhh62zZBbteGwARIaGud0OatzngLT4WktXmLj7zZe9GfvYXZzfX7QVhl6RtvaXXrzmdceHXlq0jK1v0PuN6tRzObG1/4MyuRdgjGQDAGgjEQjIFgDARjIBgDwRgIxkAwBoIxEIyBYAwEYyAYA8EYCMZAMAaCMRCMgWAMBGMgGAPBmP+LYEyCkZh26xI2zdPvuGxhR5L2r2rYQg4UPYSih1D0EIoeQtFDKHoIRQ+h6CEUPYSih1D0EIoeQtFDKHoIRQ+h6OErUPQw+oCnrqghQGQBIgsQWYDIAkQWILIAkQWILEBkASILEFmAyAJEFiCyAJEFiCxAZAEiCxBZgMgCRBYgsgCRBYjsKwWRjfCcYTjkx/WZKOzhP/jOn/9ydAS1uCv9DBo0aNCgQYN2FFru0sVzTZ396Mi59ImiSxyU5nS1Y1P01YlKgA2h/NhACWOGVaQqpdjQA3gVuoHw9XGUeb0n1YN6/uC4hsVQevCPPSfD72A0wi9gPEHJBMoOnpR0G+XOpXPpE5WKoReJdaNEsI4yGsreYC7qyfSgjH4y+jpFSvgNA1ElPTqipHNKsV2LpBcOJtWVp9s3573FFf/WnL/0vbf4SXRIqX73yFt46s0/8RZW9uI6alCQ5bmtu/cA4wEYD8B4AMYDMB6A8QCMB2A8AOMBGA/AeADGAzAegPEAjAdgPADjARgPwHgAxgMwHoDxAIwHYDxeVYwHCgIjd56NjgB4Axo0aNCgQQPwxqGDN7qqfhqv4mmcKqdQ2RQqm0JlU6hsCpVNobIpVDaFyqZQ2RQqm0JlU6hsCpVNobIpVDaFyqZHrLLpbjVT6b+eRi7X"):base64("de"):unzip(), true)
		end
		end),
},{
	changan.text(项目名字,'#7F5EFF',"15sp",true),
	changan.seek("帧数调节","zsdj",60,144,120),
                changan.button("确认修改",
                function()
                local t = {"libUE4.so:bss", "Cb"}
local tt = {0x1B68, 0x34}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = zsdj, freeze = true}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x1B68, 0x38}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = zsdj, freeze = true}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x393050, 0x34}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = zsdj, freeze = true}})
                gg.toast(""..zsdj.."帧修改成功")
                string.toMusic(""..zsdj.."帧修改成功")
                end),
                changan.seek("相机广角","zsb",300,500,350),
                changan.button("确认修改",
                function()
                local t = {"libUE4.so:bss", "Cb"}
local tt = {0x69E828, 0x678, 0x780, 0x33C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = zsb, freeze = true}})
                gg.toast("开启成功")
                string.toMusic("开启成功")
                end),               
					changan.box({"起雾",
					changan.button(
					"初始化",
					function()
					local t = {"libUE4.so:bss", "Cb"}
local tt = {0x7513B0,0x110,0x248,0x18D0,0x64}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = 1200, freeze = true}})				
					end,
					0xff0056FF),
				changan.seek("  颜色:R","ltxx",1,20,1),
				changan.seek("  颜色:B","ltx",1,20,1),
				changan.seek("  颜色:G","lt",1,20,1),
				changan.button(
					"确认修改",
					function()
					local t = {"libUE4.so:bss", "Cb"}
local tt = {0x7513B0,0x110,0x248,0x18D0,0x70}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = ltxx, freeze = true}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x7513B0,0x110,0x248,0x18D0,0x74}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = ltx, freeze = true}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x7513B0,0x110,0x248,0x18D0,0x78}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = lt, freeze = true}})			
                gg.toast("开启成功")
                string.toMusic("开启成功")
                gg.toast("开启成功")
                string.toMusic("开启成功")
					end,
					0xffE20C30),
					}),--box结尾
		changan.switch(
			"144帧",
			function()
			local t = {"libUE4.so:bss", "Cb"}
local tt = {0x1B68, 0x34}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = 144, freeze = true}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x1B68, 0x38}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = 144, freeze = true}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x393050, 0x34}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = 144, freeze = true}})
                gg.toast("144帧修改成功")
                string.toMusic("144帧修改成功")	
			end,
			function()
				
			end),
			changan.switch("解决手持无效果",
function()
string.toMusic('开启功能前使用要开启功能的枪开几枪就可以用了')
end,
function()
end),		
changan.switch("手持聚点[安全]",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x7510E0,0x8,0x48,0x108,0x838,0xB90}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 0}})
gg.toast("开启成功")
string.toMusic('开启成功')	
end,
function()
string.toMusic('丢枪关闭.')
end),
changan.switch("手持无后[安全]",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x7510E0,0x8,0x48,0x108,0x838,0xB18}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 0}})
gg.toast("开启成功")
string.toMusic('开启成功')	
end,
function()
string.toMusic('丢枪关闭.')	
end),
changan.switch("手持防抖[安全]",--3.1
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x7510E0,0x8,0x48,0x108,0x838,0xC48}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 0}})
string.toMusic('开启成功')---语音
gg.toast("开启成功")
end,
function()
string.toMusic('丢枪关闭.')	
end),

changan.switch("静态广角[安全]",
function()
local r = gg.prompt({'自改广角[推荐1.4]'}, {'1.4'}, {'text'})
so=gg.getRangesList('libUE4.so')[1].start
py=0x2BD8898
setvalue(so+py,16,r[1])
gg.toast("开启成功")
string.toMusic('开启成功')	
end,
function()
so=gg.getRangesList('libUE4.so')[1].start
py=0x2BD8898
setvalue(so+py,16,1)	
string.toMusic('关闭成功.')					
end),						
			
changan.switch("动态广角[安全]",--3.1
function()
OP=gg.prompt({'动态广角[1~3]'},{[1]='1.35'},{[1]='number'})---广角
	if OP == nil or OP[1] == '' or OP[1] == '0' then gg.toast("取消")
		else
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x7513B0,0x78,0x8,0x130,0x4E8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = OP[1]}})
end
string.toMusic('开启成功')---语音
gg.toast("开启成功")
end,
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x7513B0,0x78,0x8,0x130,0x4E8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1}})
string.toMusic('关闭成功')---语音
gg.toast("关闭成功")
end),
changan.switch("伤害显示[基址]",
			function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x6D1820,0x30,0x438,0x468,0x974}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 2}})
gg.toast("开启成功")
string.toMusic('开启成功')
			end,
			function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x6D1820,0x30,0x438,0x468,0x974}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1}})
gg.toast("关闭成功")
string.toMusic('关闭成功')
			end), 
changan.switch("秒切枪械[基址]",
			function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x6BDAE8,0x4A8,0xEF8,0x168,0x120,0x10}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = -1}})
gg.toast("开启成功")
string.toMusic('开启成功')
			end,
			function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x6BDAE8,0x4A8,0xEF8,0x168,0x120,0x10}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1}})
gg.toast("关闭成功")
string.toMusic('关闭成功')
			end),			           
      changan.switch("头盔大小[基址]",
					function()
local r = gg.prompt({'[推荐改3]'}, {'3'}, {'text'})
if r then
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x2C7198,0x648,0x1088,0xB8,0xB0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = r[1]}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x2C7198,0x648,0x1088,0xB8,0xB4}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = r[1]}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x2C7198,0x648,0x1088,0xB8,0xB8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = r[1]}})
end
gg.toast("开启成功")
string.toMusic('开启成功')
		    end,
			function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x2C7198,0x648,0x1088,0xB8,0xB0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x2C7198,0x648,0x1088,0xB8,0xB4}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x2C7198,0x648,0x1088,0xB8,0xB8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1}})
gg.toast("关闭成功")
string.toMusic('关闭成功')
			end),
			changan.switch("人物上色[基址]",
					function()
local r = gg.prompt({'人物上色'}, {'240'}, {'text'})					
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x53E388, 0x4}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = r[1]}})
gg.toast("开启成功")
string.toMusic('开启成功')
			end,
			function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x53E388, 0x4}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1036831949}})
gg.toast("关闭成功")
string.toMusic('关闭成功')		
			end),
changan.switch("人物大小[基址]",
function()
local OP = gg.prompt({'自改人物大小[0.6~3]'}, {'0.6'}, {'number'})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x6D1820,0x30,0x4A8,0x490,0x19C}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = OP[1]}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x6D1820,0x30,0x4A8,0x490,0x1A0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = OP[1]}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x6D1820,0x30,0x4A8,0x490,0x1A4}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = OP[1]}})
gg.toast("开启成功")
string.toMusic('开启成功')	
end,
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x6D1820,0x30,0x4A8,0x490,0x19C}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x6D1820,0x30,0x4A8,0x490,0x1A0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x6D1820,0x30,0x4A8,0x490,0x1A4}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1}})
gg.toast("关闭成功")
string.toMusic('关闭成功')	
end),
changan.switch("人物反向[基址]",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x6D1820,0x30,0x438,0x490,0x194}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 90}})
gg.toast("开启成功")
string.toMusic('开启成功')	
end,
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x6D1820,0x30,0x438,0x490,0x194}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = -90}})
gg.toast("关闭成功")
string.toMusic('关闭成功')	
end),
changan.switch("人物倒立[基址]",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x6D1820,0x30,0x438,0x1B0,0x1A4}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = -1}})			
string.toMusic('开启成功.')
end,
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x6D1820,0x30,0x438,0x1B0,0x1A4}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1}})			
gg.toast("关闭成功")
string.toMusic('关闭成功')	
end),
changan.switch("枪械大小[基址]",
			function()
local r = gg.prompt({'自改枪械大小[推荐改3]'}, {'3'}, {'text'})
if r then
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x6D1820,0x30,0x4A8,0x1A0,0x0,0x5C0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = r[1]}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x6D1820,0x30,0x4A8,0x1A0,0x0,0x5C4}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = r[1]}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x6D1820,0x30,0x4A8,0x1A0,0x0,0x5C8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = r[1]}})
	 end
gg.toast("开启成功")
string.toMusic('开启成功')
end,
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x6D1820,0x30,0x4A8,0x1A0,0x0,0x5C0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x6D1820,0x30,0x4A8,0x1A0,0x0,0x5C4}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x6D1820,0x30,0x4A8,0x1A0,0x0,0x5C8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1}})	 
gg.toast("关闭成功")
string.toMusic('关闭成功')
end),
},{

changan.button(
			"清理冻结[结算前开]",
			function()
			string.toMusic('清理成功')
			Unfreeze()
			end),	
	changan.switch(
       		"自改全身[扣除800金币]",
		function()
		
					At_present=grxx.data.Money
if tonumber(At_present) < tonumber(100) then
  gg.alert("目前金币不足")
else
MH="800"
url='http://Ysk.ssmax.top/moneyspend.php?admin='..YGLZH..'&user='..cfg[1]..'&pass='..cfg[2]..'&num='..tonumber(MH)
a=gg.makeRequest(url).content
if a ~= "扣除成功" then
 return gg.alert("退出失败")
 else
	if cfg == nil then
		cfg = {474031, 40605012, 1404133, 404001, 1400022, 1501003050, 1501003081, true}
	end
	H=gg.prompt({
		"请输入脸部代码:",
		"请输入头发代码:",
		"请输入衣服代码:",
		"请输入裤子代码:",
		"请输入鞋子代码:",
		"请输入头盔代码:",
		"请输入背包代码:",
		"是否修改头盔和背包",
	},cfg,{"text","text","text","text","text","text","text","checkbox"})
		if H[8] == true then
		local t = {"libUE4.so:bss", "Cb"}
		local tt = {0x6D1820,0x30,0x438,0x2A80,0x388,0x38}--脸部
		local ttt = S_Pointer(t, tt, true)
		gg.setValues({{address = ttt, flags = 4, value = H[1]}})
		local t = {"libUE4.so:bss", "Cb"}
		local tt = {0x6D1820,0x30,0x438,0x2A80,0x388,0x70}--头发
		local ttt = S_Pointer(t, tt, true)
		gg.setValues({{address = ttt, flags = 4, value = H[2]}})
		local t = {"libUE4.so:bss", "Cb"}
		local tt = {0x6D1820,0x30,0x438,0x2A80,0x388,0x118}--衣服
		local ttt = S_Pointer(t, tt, true)
		gg.setValues({{address = ttt, flags = 4, value = H[3]}})
		local t = {"libUE4.so:bss", "Cb"}
		local tt = {0x6D1820,0x30,0x438,0x2A80,0x388,0x150}--裤子
		local ttt = S_Pointer(t, tt, true)
		gg.setValues({{address = ttt, flags = 4, value = H[4]}})
		local t = {"libUE4.so:bss", "Cb"}
		local tt = {0x6D1820,0x30,0x438,0x2A80,0x388,0x188}--鞋子
		local ttt = S_Pointer(t, tt, true)
		gg.setValues({{address = ttt, flags = 4, value = H[5]}})
			local t = {"libUE4.so:bss", "Cb"}
			local tt = {0x6D1820,0x30,0x438,0x2A80,0x388,0x1F8}--头盔
			local ttt = S_Pointer(t, tt, true)
			gg.setValues({{address = ttt, flags = 4, value = H[6]}})
			local t = {"libUE4.so:bss", "Cb"}
			local tt = {0x6D1820,0x30,0x438,0x2A80,0x388,0x1C0}--背包
			local ttt = S_Pointer(t, tt, true)
			gg.setValues({{address = ttt, flags = 4, value = H[7]}})
			string.toMusic('开启成功')
		else
		local t = {"libUE4.so:bss", "Cb"}
		local tt = {0x6D1820,0x30,0x438,0x2A80,0x388,0x38}--脸部
		local ttt = S_Pointer(t, tt, true)
		gg.setValues({{address = ttt, flags = 4, value = H[1]}})
		local t = {"libUE4.so:bss", "Cb"}
		local tt = {0x6D1820,0x30,0x438,0x2A80,0x388,0x70}--头发
		local ttt = S_Pointer(t, tt, true)
		gg.setValues({{address = ttt, flags = 4, value = H[2]}})
		local t = {"libUE4.so:bss", "Cb"}
		local tt = {0x6D1820,0x30,0x438,0x2A80,0x388,0x118}--衣服
		local ttt = S_Pointer(t, tt, true)
		gg.setValues({{address = ttt, flags = 4, value = H[3]}})
		local t = {"libUE4.so:bss", "Cb"}
		local tt = {0x6D1820,0x30,0x438,0x2A80,0x388,0x150}--裤子
		local ttt = S_Pointer(t, tt, true)
		gg.setValues({{address = ttt, flags = 4, value = H[4]}})
		local t = {"libUE4.so:bss", "Cb"}
		local tt = {0x6D1820,0x30,0x438,0x2A80,0x388,0x188}--鞋子
		local ttt = S_Pointer(t, tt, true)
		gg.setValues({{address = ttt, flags = 4, value = H[5]}})
	end
gg.toast("开启成功")
string.toMusic('开启成功')
end
end
end),
changan.switch(
       		"自改手持[扣除1000金币]",
		function()
					At_present=grxx.data.Money
if tonumber(At_present) < tonumber(100) then
  gg.alert("目前金币不足")
else
SC="1000"
url='http://Ysk.ssmax.top/moneyspend.php?admin='..YGLZH..'&user='..cfg[1]..'&pass='..cfg[2]..'&num='..tonumber(SC)
a=gg.makeRequest(url).content
if a ~= "扣除成功" then
 return gg.alert("退出失败")
 else
r = gg.prompt({'自改手持[不知道代码去查]'}, {'1101004046'}, {'number'})					
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x6D1820,0x30,0x438,0x2760,0x9c8,0x11C}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = r[1]}})
 gg.toast("开启成功 ")
string.toMusic('开启成功')
end

end
end),
changan.switch(
       		"自改播报[扣除1000金币]",
		function()
					At_present=grxx.data.Money
if tonumber(At_present) < tonumber(100) then
  gg.alert("目前金币不足")
else
BB="1000"
url='http://Ysk.ssmax.top/moneyspend.php?admin='..YGLZH..'&user='..cfg[1]..'&pass='..cfg[2]..'&num='..tonumber(BB)
a=gg.makeRequest(url).content
if a ~= "扣除成功" then
 return gg.alert("退出失败")
 else
jr = gg.prompt({"AKM华丽浮雕击杀播报 1101001042 AKM怒海争锋击杀播报1101001063 AKM白虎咆哮击杀播报 1101001068 AKM冰霜核心击杀播报 1101001089 AKM积木龙骨击杀播报1101001103 AKM奇异之夜击杀播报 1101001116 AKM金牌海盗击杀播报 1101001143 AKM吉利龙王击杀播报 1101001128 AKM奇幻工坊击杀播报 1101001154 AKM部落之王击杀播报1101001174 AKM星海提督击杀播报 1101001213 AKM俏皮兔宝击杀播报 1101001231M16A4血风暴击杀播报1101002029 M16A4极光脉冲击杀播报 1101002056 M16A4缤纷利刃击杀播报 1101002068 M16A4猩红血月击杀播报 1101002081M16A4古堡龙卫击杀播报1101002103死噶梦幻水枪击杀播报 1101003057死噶魔法南瓜击杀播报1101003070死噶翌日行动击杀播报 1101003080 死噶诡秘之夜击杀播报 1101003099 死噶魔力结晶击杀播报 1101003119死噶邪能植物击杀播报 1101003146 死噶血魂魔皇击杀播报 1101003167M416冰霜核心击杀播报1101004046 M416愚人小丑击杀播报 1101004062M416异域游者击杀播报 1101004078 M416萌龙咆哮击杀播报1101004086M416野性呼唤击杀播报 1101004098 M416科技核心击杀播报 1101004138 M416潮鸣宫廷击杀播报 1101004163 M416庇护之潮击杀播报1101004209Groza幻夜音乐击杀播报1101005025 Groza绚烂之战1101005043 Groza冥河烈焰1101005052AUG流浪马戏团 1101006033 AUG第四使徒 1101006044 QBZ极致绝杀 1101007036 QBZ瑰绮灵姬1101007046 M762比特宝莉 1101008026妹控星云力量"},nil,{"number"})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x6D1820,0x30,0x438,0x90,0x16C8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = jr[1], freeze = true}})
gg.toast("开启成功 ")
string.toMusic('开启成功 撤离前记得清理冻结')
	--	end		
	end
	end
end),
},{

wyylog,
},{

changan.switch("退出程序",退出UI),
changan.switch(
	'摇一摇隐藏UI',
	function()
	--if 功能验证() then
	  摇一摇=true
--	  end
	end,
	function()
	  摇一摇=false
	end),
	
}


		
	})

bloc = luajava.getBlock()
bloc('join')
luajava.setFloatingWindowHide(false)

print(内部)
 end
end




end

function SS4()

os.exit()

end

while true do



    if gg.isVisible(true) then
        FX1 = nil
        gg.setVisible(false)
    end
    if FX1 == nil then
        Main()
    end
  end
end
end
ZKZ()


