



gg.setConfig("隐藏辅助", 23)
gg.setConfig("运行守护", 3)
gg.setConfig("冻结间隔", 0)
gg.setConfig("旁路模式", 1)
string.toMusic('尊敬的用户你已进入夜初全防')

   -------开头语音
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
    gg.toast((name or "") .. "开启成功, 共修改"..#Table.."个值by.科比")
end






function xqmnb(Search,Modification)
   gg.clearResults()
   gg.setRanges(Search[1].memory)
   gg.searchNumber(Search[3].value,Search[3].type,false,536870912,0,-1)
   if gg.getResultCount()==0 then
      gg.toast(Search[2].name..'开启失败')
      return
   end
   local Result=gg.getResults(gg.getResultCount())
   local sum
   for index=4,#Search do
      sum=0
      for i=1,#Result do
         if gg.getValues({{address=Result[i].address+Search[index].offset,flags=Search[index].type}})[1].value~=Search[index].lv then
            Result[i].Usable=true
            sum=sum+1
         end
      end
      if sum==#Result then
         gg.toast(Search[2].name..'开启失败')
         return
      end
   end
   local Data,Freeze,Freezes={},{},0
   sum=0
   for index,value in ipairs(Modification)do
      for index=1,#Result do
         if not Result[index].Usable then
            local Value={address=Result[index].address+value.offset,flags=value.type,value=value.value,freeze=true}
            if value.freeze then
               Freeze[#Freeze+1]=Value
               Freezes=Freezes+1
            else
               Data[#Data+1]=Value
            end
            sum=sum+1
         end
      end
   end
      gg.setValues(Data)
      gg.addListItems(Freeze)
   if Freezes==0 then
      gg.toast(Search[2].name..'开启成功,共修改'..sum..'条数据')
   else
      gg.toast(Search[2].name..'开启成功,共修改'..sum..'条数据,冻结'..Freezes..'条数据')
   end
   gg.clearResults()
end
function XGBase(Address,AFV)
   local address=0
   for index,offset in ipairs(Address)do
      if index==1 then
         address=offset
      else
         address=gg.getValues({{address=address+offset,flags=4}})[1].value
      end
   end
   local Value,Freeze={},{}
   for index,value in ipairs(AFV)do
      local VALUE={address=address+value[3],flags=value[2],value=value[1],freeze=true}
      if value[4]then
         Freeze[#Freeze+1]=VALUE
      else
         Value[#Value+1]=VALUE
      end
   end
   gg.setValues(Value)
   gg.addListItems(Freeze)
end


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

local ALL = [==[
v1.0 -> 优化指针链条判断

v1.1 -> 添加多功能模板，可查看，修改，冻结，载入

v1.3 -> 修复了同一个so名称下有多个基址头，而只判断第一个基址头偏移的问题点 

v1.4 -> 修复了在64位环境下偏移异常的问题
]==]

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
    
    for i in pairs(ranges) do
		local _name = ranges[i]["internalName"]:gsub('^.*/', '')
		if so[1] == _name and so[2] == ranges[i]["state"] then
			sostart = ranges[i]["start"]
			break
		end
	end
    
    if sostart then	
        if offset[1]  then	    	    
            for i = 1, #offset do    	    
    	        rest = {{flags = valtype,address = sostart + offset[i]}}
    	        rest = gg.getValues(rest)
		        if i == #offset then
                    break
                end
	 		    if valtype == gg.TYPE_DWORD then
				    sostart = rest[1].value & 0xFFFFFFFF--对值进行补位操作 
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
    print("功能开启失败原因: 未找到基址头")
    return os.exit()
end
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end






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
    gg.toast((name or "") .. "开启成功, 共修改"..#Table.."个值by.科比")
end






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

local function readD ( a )
    return gg.getValues ( { {
            address = a ,
            flags = 4
        } } ) [ 1 ].value
end
function setvalue(address,flags,value)
local tt={} tt[1]={}
tt[1].address=address
tt[1].flags=flags
tt[1].value=value
gg.setValues(tt)
end

function addListltems(address,flags,value,freeze)
t={} t[1]={}
t[1].address=address
t[1].flags=flags
t[1].value=value
t[1].freeze=freeze
gg.addListItems(t)
end
function xfnb(add,lx)
return gg.getValues({
{
address=add,flags = lx
}
})[1].value
end


local function RUI(address)
return gg.getValues({{address = address, flags = gg.TYPE_QWORD}})[1].value
end
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function addListltems(address,flags,value,freeze) t={} t[1]={} t[1].address=address t[1].flags=flags t[1].value=value t[1].freeze=freeze gg.addListItems(t) end
local function RUI(address)
return gg.getValues({{address = address, flags = gg.TYPE_QWORD}})[1].value
end

function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
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
	function PS() end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
--基址



function readPointer(name, offset, i)--读取内存函数
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
-- telegram: @XZNB886
-- 仙执PUBG
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
			-- print(string.char(231,190,164,58).._Q)
		end
		return _S
	end
	local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit))
	return _A
end

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
------------------↑↑↑↑防封调用---------------------
	  
if tonumber(device.width)==nil then
dwidth=1340
dheight=2300
else
dwidth=device.width
dheight=device.height
end
function getTimeStamp(t)
local str = os.date("%m/%d-%H:%M:%S",t)
return str
end
sviews={} for i=1,15 do sviews['第'..i..'页']={} end
function gif()
local webView = luajava.webView(function(webView)
	webView:loadData([[
	<!DOCTYPE html>
<html>
<img src="https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/fire.gif" alt="长安ui" style="max-height: 50px; max-width: 50px;">
</html>]], 'text/html', 'UTF-8')
	webView:setBackgroundColor(0x0)
	webView:setVerticalScrollBarEnabled(false)
		webView:setHorizontalScrollBarEnabled(false)
		webView:setScrollContainer(false)
end)
return webView
end
gif=gif()
function particle2()
local webView = luajava.webView(function(webView)
	webView:loadData([[
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <style>
      html,
*{
    /* 初始化 */
    margin: 0;
    padding: 0;
}
body{
    height: 15vw;
    /* 弹性布局 水平+垂直居中 */
    display: flex;
    justify-content: center;
    align-items: center;
    background-color: #hsjjsb;
}
h1{
    /* 文本透明 */
    color: transparent;
    font-size: 20px;
    /* 渐变背景 */
    background-image: -webkit-linear-gradient(92deg, #f35626, #feab3a);
    /* 裁剪掉文字以外的区域 */
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    background-size: 80%;
    background-repeat: repeat;
    background-position: center;
    /* 执行动画：动画名 时长 线性 无线播放 */
    -webkit-animation: hue 3s infinite linear;
    position:absolute;
    top:0px
}
/* 定义动画 */
@-webkit-keyframes hue {
from {
-webkit-filter: hue-rotate(0deg);
-moz-filter: hue-rotate(0deg);
}
to {
-webkit-filter: hue-rotate(-360deg);
-moz-filter: hue-rotate(-360deg);
}
}
    </style>
  </head>
  <body>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
</head>

<body>
     <h1>欢迎使用夜初全防</h1>
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
	"rgba(0,0,0,0.1)",
	"rgba(0,0,0,1)",
	"#909090")
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
colorvs={}
changan = {} huiz = function() end
window = context:getSystemService("window") -- 获取窗口管理器
function panduan(rec) fille,err = io.open(rec) if fille == nil then return false else return true end end
function checkimg(tmp,ii)
if panduan("/sdcard/夜初/图片/"..tmp) ~= true then
gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
luajava.download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..tmp,"/sdcard/夜初/图片/"..tmp)
else
if file.length("/sdcard/夜初/图片/"..tmp) <= 1 then
gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
luajava.download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..tmp,"/sdcard/夜初/图片/"..tmp)
end
end
if panduan("/sdcard/夜初/图片/"..tmp) ~= true then
gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
luajava.download("https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/"..tmp,"/sdcard/夜初/图片/"..tmp)
else
	if file.length("/sdcard/夜初/图片/"..tmp) <= 1 then
gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
luajava.download("https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/"..tmp,"/sdcard/夜初/图片/"..tmp)
end
end
end
ckimg = {
	"opo",
	"heir",
	"opou",
	"hei_right",
	"opoback",
	"heir",
	"xz_run",
	"heic",
	"xz_end"
}

for i = 1,#ckimg do
jindu = i
checkimg(ckimg[i],i)
gg.toast("正在开启")
end
if panduan("/sdcard/夜初/图片/opo1")~=true then
	file.unzip("/sdcard/夜初/图片/opo","/sdcard/长安1/图片/")
end
function 获取图片(txt)
txt = string.url(txt,"de")
ntxt = string.sub(string.gsub(txt,"/","-"),-10,-1)
if string.find(tostring(txt),"http") ~= nil then
if panduan("/sdcard/夜初/图片/"..ntxt) == false then
file.download(txt,"/sdcard/夜初/图片/"..ntxt)
else
	if file.length("/sdcard/夜初/图片/"..ntxt) <= 1 then
file.download(txt,"/sdcard/夜初/图片/"..ntxt)
end
end
txt = "/sdcard/夜初/图片/"..ntxt
end
return luajava.getBitmapDrawable(txt)
end
function getRes(x)
return 获取图片("/sdcard/夜初/图片/"..x)
end
YoYoImpl = luajava.getYoYoImpl()
vibra = context:getSystemService(Context.VIBRATOR_SERVICE)
function getLayoutParams2()
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
function changan.line()
return luajava.loadlayout ( {
	LinearLayout ,
	layout_width = 'fill_parent' ,
	
	    layout_height = "3dp" ,
		background = pe0,
		
})
end
function getShape8()
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(10)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({
	0xff000000,0xddffffff,
})
jianbians:setOrientation(GradientDrawable.Orientation.BL_TR)
return jianbians
end
pe0 = getShape8()
function getLayoutParams()
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
	AudioManager.STREAM_SYSTEM, --手机系统的声音
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

local ui = require('ui')

changan.menu = function(sviews)
if isswitch then
return false
end
isswitch = true
local layout = {
		'ui.ViewPager',
		layout_height = ( (tonumber(string.replace(界面长度,"dp","")) -54)).."dp",
	
		layout_width=界面宽度,
		focusable="false",
		focusableInTouchMode="false",
	}
	cebian={
		LinearLayout,
		layout_height="50dp",
		layout_width="wrap_content",
		orientation="horizontal",
		gravity="center_horizontal",
		}
	slcta={} slctb={}
	for i=1,#stab do
		slcta[i]=getVerticalBG({0x55ffffff,0x53ffffff},15,4,0xffffffff)
		slctb[i]=getVerticalBG({0x33161616,0x33161616},15,4,0xff232323)
		
		_ENV["jm"..i]=luajava.loadlayout({
			LinearLayout,
			layout_height="50dp",
			layout_width="58dp",
			gravity="center",
			orientation="vertical",
			onClick=function() 切换(i) end,
			onTouch=hanshu,
			{TextView,
			id="jm"..i.."t",
			text=stab[i],
			textSize="11sp",
			textColor="#aad7d7d7",
			background=slctb[i],
			padding={"10dp","6dp","10dp","6dp"},
			}
		})
		cebian[#cebian+1]=_ENV["jm"..i]
		tmp1={
			LinearLayout,
			layout_height="wrap_content",
			layout_width="match_parent",
			
			orientation="vertical",
			
		}
		tmp2={
			LinearLayout,
			layout_height="wrap_content",
			layout_width="match_parent",
			
			orientation="vertical",
			
		}
		for h=1,#sviews['第'..i..'页']['第1栏'] do
			tmp1[#tmp1 +1]=sviews['第'..i..'页']['第1栏'][h]
		end
		for h=1,#sviews['第'..i..'页']['第2栏'] do
			tmp2[#tmp2 +1]=sviews['第'..i..'页']['第2栏'][h]
		end
		tmp1={
			LinearLayout,
			layout_height="match_parent",
			layout_width="match_parent",
			layout_weight=1,
			orientation="vertical",
			{ScrollView,
				layout_height='match_parent',
				layout_width='match_parent',
				tmp1
				
			}
		}
		tmp2={
			LinearLayout,
			layout_height="match_parent",
			layout_width="match_parent",
			layout_weight=1,
			orientation="vertical",
			{ScrollView,
				layout_height='match_parent',
				layout_width='match_parent',
				tmp2
				
			}
		}
		_ENV["layout"..i]={
			LinearLayout,
			--orientation="vertical",
			layout_height="match_parent",
			layout_width="match_parent",
			orientation='horizontal',
			{LinearLayout,
				layout_height="match_parent",
			layout_width="match_parent",
			layout_weight=1,
			padding={'8dp','10dp','8dp','10dp'},
			background=getCorner({0x00ffffff,0x00ffffff},20,4,0xaa161616,20,0,0,20),
			tmp1},
			{LinearLayout,
				layout_height="match_parent",
				--padding={'0dp','10dp','0dp','10dp'},
			layout_width="wrap_content",
				background=getVerticalBG({0x00ffffff,0x00ffffff},0,4,0xaa161616),
				tiaose()},
			{LinearLayout,
				layout_height="match_parent",
				padding={'8dp','10dp','8dp','10dp'},
			layout_width="match_parent",
			layout_weight=1,
				background=getCorner({0x00ffffff,0x00ffffff},20,4,0xaa161616,0,20,20,0),
				tmp2},
			--onTouch=Gundong,
			padding={"8dp","3dp","8dp","3dp"},
		}
		layout[#layout + 1] =_ENV["layout"..i]
	end
	当前ui=1
	jm1t:setTextColor(0xffffffff)
	jm1t:setBackground(slcta[1])
	ViewPager = ui.ViewPager(layout)
	luajava.setInterface(ViewPager, 'addOnPageChangeListener', 
		{onPageSelected=function(view)
		view=tonumber(string.sub(view,1,1))
		for i=1,#stab do
			_ENV["jm"..i .."t"]:setTextColor(0xaad7d7d7)
			_ENV["jm"..i .."t"]:setBackground(slctb[i])
			
		end
		当前ui=view+1
		--滚(当前ui)
		_ENV["jm"..view+1 .."t"]:setTextColor(0xffffffff)
_ENV["jm"..view+1 .."t"]:setBackground(slcta[view+1])

	end})
	ckou={
		FrameLayout,
		layout_height="wrap_content",
		layout_width="wrap_content",
		orientation="vertical",
		background=getVerticalBG({0xeeeeeeee,0xeeeeeeee},15,4,0xff008CFF,25,25,25,25),
		{LinearLayout,
		id="canv",
		layout_height="349dp",
		layout_width="349dp",
		gravity="center",
	},
		{LinearLayout,
			onTouch=hanshu,
			onClick=function() end,
			id=luajava.newId("cbscro"),
			background=getHorizontalBG({0xff00A8FF,0xff286BFF},15,4,0xff008AFF,25,25,25,25),
			layout_width="347.5dp",
			
			orientation="vertical",
			{LinearLayout,
			layout_height="wrap_content",
			layout_width="match_parent",
				{LinearLayout,
					layout_height="wrap_content",
					layout_width="70dp",
					orientation="vertical",
					gravity="center_horizontal",
					onClick=function() 切换(1) end,
					onTouch=hanshu,
					{ImageView,
					src=getRes("xz_run"),
					layout_height="30dp",
					layout_width="30dp",
					padding="4dp",
					},{TextView,
					text="主页",
					textColor="#ffffff",
					textSize="9sp",
					}
				},{LinearLayout,
					layout_height="wrap_content",
					layout_width="70dp",
					orientation="vertical",
					gravity="center_horizontal",
					onClick=function() 切换(#stab) end,
					onTouch=hanshu,
					{ImageView,
					src=getRes("xz_end"),
					layout_height="30dp",
					layout_width="30dp",
					padding="4dp",
					},{TextView,
					text="尾页",
					textColor="#ffffff",
					textSize="9sp",
					}
				},{LinearLayout,
					layout_height="wrap_content",
					layout_width="70dp",
					orientation="vertical",
					gravity="center_horizontal",
					onClick=隐藏,
					onTouch=hanshu,
					{ImageView,
					src=getRes("heic"),
					layout_height="30dp",
					layout_width="30dp",
					padding="6dp",
					},{TextView,
					text="收起",
					textColor="#ffffff",
					textSize="9sp",
					}
				},{LinearLayout,
					layout_height="match_parent",
					layout_width="match_parent",
					orientation="vertical",
					layout_weight=1,
					gravity="center",
					onClick=隐藏,
					onTouch=hanshu,
{FrameLayout,
	layout_height="fill_parent",
layout_width="fill_parent",
	{LinearLayout,
id="webv_",
layout_height="fill_parent",
layout_width="fill_parent",
gravity="center",
},{LinearLayout,
onClick=function() end,
onTouch=hanshu,
layout_height="fill_parent",
layout_width="fill_parent",
gravity="center",
}}
				},
			},
			},
		{LinearLayout,
		layout_marginTop="44dp",
		orientation='vertical',
		{LinearLayout,
		layout_width='match_parent',
		layout_height='80dp',
		padding='10dp',
		{LinearLayout,
			layout_height='match_parent',
			layout_width='match_parent',
			background=getHorizontalBG({0xff158EFF,0xff845AFF},30),
			{LinearLayout,
				layout_height='match_parent',
				layout_width='match_parent',
				layout_weight=1,
				padding='4dp',
				{LinearLayout,
					layout_height='match_parent',
					layout_width='match_parent',
					background=getVerticalBG({0x44ffffff,0x44ffffff},30),
					padding='3dp',
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
				}},
			},{LinearLayout,
				layout_height='match_parent',
				layout_width='60dp',
				background=getVerticalBG({0x880097FF ,0x880097FF},30),
				id='cvv',
			}
		}
		
		},
		ViewPager,{LinearLayout,
			layout_width='wrap_content',
			layout_height='wrap_content',
			background=getCorner({0xff0097FF,0x884953DD,0x883352FF,0xff0097FF},30,4,0xff0097FF,0,0,20,20),
			cebian}},
	}

function uiadtext(txt,color,size)
if not txt then txt = "" end
if not color then color = "#ffffff" end
if not size then size = "10sp" end
local tmp=luajava.loadlayout(
	{
		TextView,
		text = string.fromHtml(" <font color=#333333>"..getTimeStamp(os.time()).."</font> <font color="..color..">"..txt.."</font>"),
		textSize = size,
		--textColor = color,
		gravity="left",
		layout_width = "wrap_content",
	})
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
ckou = {
	LinearLayout,
	id = "chuangk",
	visibility = "gone",
	layout_width = "wrap_content",
	layout_height = "wrap_content",
	orientation = "vertical",
	ckou

}
ckou = luajava.loadlayout(ckou)
extralis={LinearLayout,
	layout_height="match_parent",
	layout_width="match_parent",
	id=luajava.newId("extralist"),
	orientation="vertical",
	}
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
	{LinearLayout,
	visibility="gone",
	id=luajava.newId("extra"),
	layout_height = ( (tonumber(string.replace(界面长度,"dp","")) +50)).."dp",
	layout_width=界面宽度,
	orientation="vertical",
	background=getHorizontalBG({0xeeeeeeee,0xeeeeeeee},15,nil,nil,25,25,25,25),
	
		{LinearLayout,
			layout_width="match_parent",
			layout_height="50dp",
			background=getHorizontalBG({0xff00A8FF,0xff286BFF},15,4,0xff008AFF,25,25,25,25),
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
				id=luajava.newId("extrat"),
				text="标题",
				layout_height="match_parent",
				layout_width="match_parent",
				layout_weight=1,
				gravity="center",
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
	},{LinearLayout,
	id="smallc",
	visibility="gone",
	onClick=显示2,
	onTouch=hanshu,
	layout_height="56dp",
	layout_width="20dp",
	gravity="center",
	background=getCorner({0x88161616,0x88161616},12,0,0xff232323,0,35,35,0),
		
	},
}
stitle2=particle2()
local function invoke()
local ok
local RawX, RawY, x, y
mainLayoutParams = getLayoutParams()
mainLayoutParams.x = 10
mainLayoutParams.y = dheight/4
param2=getLayoutParams2()
floatWindow = luajava.loadlayout(floatWindow)
local function invoke2()
webv_:addView(stitle2)
window:addView(floatWindow, mainLayoutParams)
canv:addView(parti)
cvv:addView(gif)
end
if loadingBox~=nil then
loadingBox['关闭']()
end

local runnable = luajava.getRunnable(invoke2)
local handler = luajava.getHandler()
handler:post(runnable)

local isMove


end

invoke(swib1,swib2)
gg.setVisible(false)
luajava.getIdView("backv"):setColorFilter(控件颜色[1])
隐藏()
setOnExitListener(function()
	luajava.post(function()
	window:removeView(floatWindow)
	end)
	tuichu=1
	luajava.setFloatingWindowHide(false)
end)
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
luajava.runUiThread(function() floatWindow:setVisibility(View.VISIBLE) end)
luajava.runUiThread(function()
	changan.controlBig(floatWindow,400)
	end)

end
end
huiz()
while true do
if tuichu == 1 then break end
jianting3(qiehuan)
gg.sleep(300)
end

luajava.setFloatingWindowHide(false)
end
function 滚(x)
luajava.runUiThread(function()
local cbsc=luajava.getIdView("cbscro")
local targetLeft = _ENV["jm"..x]:getLeft()/2

cbsc:smoothScrollTo(targetLeft, 0);
end)
end
function 切换(x)
窗口=false
x=x-1
luajava.runUiThread(function()
	当前ui=x
	ViewPager:setCurrentItem(x)
end)
end
显示=0
function 隐藏()
luajava.runUiThread(function()
	if 显示 == 0 then
	control2:setVisibility(View.GONE)
	显示 = 1
	if 窗口 then
	luajava.getIdView("extra"):setVisibility(View.VISIBLE)
	else
	ckou:setVisibility(View.VISIBLE)
	end
	YoYoImpl:with("ZoomIn"):duration(300):playOn(floatWindow)
	canv:setVisibility(View.VISIBLE)
	floatWindow:setBackground(beij)
	mainLayoutParams.flags = LayoutParams.FLAG_NOT_TOUCH_MODAL
	window : updateViewLayout (floatWindow , mainLayoutParams)
	else
	canv:setVisibility(View.GONE)
	if tuichuing then return 0 end
	tuichuing=true
	luajava.newThread(function()
	luajava.runUiThread(function()
		YoYoImpl:with("FadeOut"):duration(200):playOn(floatWindow)
		end)
	gg.sleep(200)
	luajava.runUiThread(function()
	ckou:setVisibility(View.GONE)
	floatWindow:setBackground(beij2)
	YoYoImpl:with("FadeIn"):duration(200):playOn(floatWindow)
	luajava.getIdView("extra"):setVisibility(View.GONE)
	
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
	ckou:setVisibility(View.GONE)
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
	ckou:setVisibility(View.VISIBLE)
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
	for i=1,#v do
		t[#t+1]=v[i]
	end
	ewsv[name]=luajava.loadlayout(t)
	
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
luajava.getIdValue(nid):setBackground(checkbg)
	end)
_ENV[name] = "开"
colorvs[nid]={true,"switch"}
pcall(func1)
uiadtext(localname.." 已开启.","#ffffff")

else
	vibra:vibrate(9)
luajava.runUiThread(function()
	luajava.getIdValue(nid.."g"):setVisibility(View.GONE)
	YoYoImpl:with("ZoomInRight"):duration(600):playOn(switches["1s"..sname])
	luajava.getIdValue(nid.."k"):setVisibility(View.VISIBLE)
luajava.getIdValue(nid):setBackground(checkbga)
end)
colorvs[nid]={false,"switch"}
_ENV[name] = "关"
pcall(func2)
uiadtext(localname.." 已关闭.","#545454")

end
end
return outfunc
end
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

function changan.switch(name,func1,func2,miaoshu)
if not checkbg then
	checkbg = getShape2(
	45,
	{控件颜色[1],控件颜色[2]},
	4,控件颜色[1])
checkbga = getShape2(
	45,
	{
		0xffaaaaaa,0xffaaaaaa
	},
	4,0xffaaaaaa)
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
	layout_height = "48dp",
	gravity = "center_vertical",
	{
		LinearLayout,
		layout_width = 'fill_parent',
		layout_height = "40dp",
		gravity = "center_vertical",
		background = luajava.loadlayout {
			GradientDrawable ,
			color = 0xaa1a1b1d ,
			cornerRadius = 15
		} ,padding = {
		"0dp","0dp","6dp","0dp"
	},
		{
			TextView,
			gravity = "top",
			text = name,
			textColor = "#d7d7d7",
			textSize = "13sp",
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
			textSize = "11sp",
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
function changan.intcheck(name,func1,func2,ii,gid,pic)
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
local func = 开关5(name,func1,func2,gid..ii)
if not name then name = "未设置" end
if pic~=nil then
switchs[gid..ii] = luajava.loadlayout{
	LinearLayout,
	id = luajava.newId(gid..ii),
	layout_width = ( (tonumber(string.replace(界面宽度,"dp","")) -16)/3).."dp",
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
			background=tocheck,
			gravity="center",
			layout_width = '30dp',
			layout_height = '30dp',
			padding = "8dp",
		},{
			TextView,
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

else
switchs[gid..ii] = luajava.loadlayout{
	LinearLayout,
	id = luajava.newId(gid..ii),
	layout_width = ( (tonumber(string.replace(界面宽度,"dp","")) -16)/3).."dp",
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
			src = tocheck,
			background=ckbg,
			gravity="center",
			layout_width = '30dp',
			layout_height = '30dp',
			padding = "8dp",
		},{
			TextView,
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

end
return switchs[gid..ii]
end
function changan.intcard(name,name2,func1,func2,ii,gid)
if tcheck==56 then
	tcheck=1
else
	tcheck=tcheck+1
end
tocheck=spics[tcheck]
local func = 开关6(name,func1,func2,gid..ii)
if not name then name = "未设置" end
if not name2 then name2="" end
switchs[gid..ii] = {
	LinearLayout,
	id = luajava.newId(gid..ii),
	layout_width = 'wrap_content',
	layout_height = "wrap_content",
	
	layout_marginTop="5dp",
	layout_marginBottom="5dp",
	layout_marginLeft="3dp",
	layout_marginRight="3dp",
	
	{
		LinearLayout,
		padding="3dp",
		onClick = function() luajava.newThread(function() func() end):start() end,
		layout_width = ( (tonumber(string.replace(界面宽度,"dp","")) -30)/2).."dp",
		layout_height = "wrap_content",
		gravity = "left",
		background=getVerticalBG({0xaa1a1b1d,0xaa1a1b1d},30),
		orientation="vertical",
		padding="5dp",
		--background=getVerticalBG({0xffFFFDF2,0xddffffff,0xffFFFDF2},15,8,0xffFFDA71),
		{
			ImageView,
			id = luajava.newId(gid..ii.."p"),
			src = getRes(tocheck),
			gravity="left",
			layout_width = '30dp',
			layout_height = '30dp',
			padding = "3dp",
		},{
			TextView,
			id=luajava.newId(gid..ii.."t"),
			gravity = "left",
			text = name,
			textColor="#ffffff",
			textSize = "12sp",
			layout_width = 'match_parent',
			layout_weight=1,
		},{
			TextView,
			id=luajava.newId(gid..ii.."t2"),
			gravity = "left",
			text = name2,
			textColor="#aaaaaa",
			textSize = "9sp",
			layout_width = 'match_parent',
			layout_weight=1,
		}
		}
}
colorvs[gid..ii.."p"]={false,"img"}
colorvs[gid..ii.."t"]={false,"txt"}

return switchs[gid..ii]
end
shous={}
function 收起ck(gid,ii)
if shous[gid] ==false then
		shous[gid]=true
		luajava.getIdView(gid..ii.."p"):setRotation(0)
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
			luajava.getIdView(gid):removeView(luajava.getIdView(gid..ii))
			for i=1,ii-1 do
				if i>=9 then
					luajava.getIdView(gid):addView(luajava.getIdView(gid..i))
				end
			end
			luajava.getIdView(gid):addView(luajava.getIdView(gid..ii))
			end)
		luajava.getIdView(gid..ii.."p"):setRotation(180)
	end
end
opou=getRes("opou")
function changan.checkbox(gid,ii)
local func = function() 收起ck(gid,ii) end
if not name then name = "未设置" end
switchs[gid..ii] = {
	LinearLayout,
	id=luajava.newId(gid..ii),
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
			id = luajava.newId(gid..ii.."p"),
			src = opou,
			background=ckbg,
			gravity="center",
			layout_width = '30dp',
			layout_height = '30dp',
			padding = "8dp",
		},{
			TextView,
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
return switchs[gid..ii]
end
function 开关6(name,func1,func2,nid)
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
	luajava.getIdValue(nid.."t"):setTextColor(控件颜色[1])
	luajava.getIdValue(nid.."t2"):setTextColor(控件颜色[1])
	luajava.getIdValue(nid.."p"):setColorFilter(控件颜色[1])
	colorvs[nid.."p"]={true,"img"}
	colorvs[nid.."t"]={true,"txt"}
	colorvs[nid.."t2"]={true,"txt"}
	--changan.controlWater(switchs[nid],300)
	end)
_ENV[name] = "开"

pcall(func1)
else
	vibra:vibrate(9)
luajava.runUiThread(function()
	luajava.getIdValue(nid.."t"):setTextColor(0xffffffff)
	luajava.getIdValue(nid.."p"):setColorFilter(0xffd7d7d7)
	luajava.getIdValue(nid.."t2"):setTextColor(0xffaaaaaa)
	colorvs[nid.."p"]={false,"img"}
	colorvs[nid.."t"]={false,"txt"}
	colorvs[nid.."t2"]={false,"txt"}
	--changan.controlWater(switchs[nid],300)
	end)
_ENV[name] = "关"
pcall(func2)
end
end
end
end
function hexTo255(rgbHex)
local rgbHex = string.format("%x", rgbHex)
local red = tonumber(rgbHex:sub(3, 4), 16)
local green = tonumber(rgbHex:sub(5, 6), 16)
local blue = tonumber(rgbHex:sub(7, 8), 16)
return {red,green,blue}
end
function changeColor(co)
控件颜色=co
luajava.runUiThread(function()
luajava.post(function() canv:removeView(parti) end)
parti:destroy()
parti=nil
local t=hexTo255(控件颜色[1])
local a,b,c=t[1],t[2],t[3]
parti=particle(
	"rgba("..a..","..b..","..c..",0.1)",
	"rgba("..a..","..b..","..c..",1)",
	"#"..string.sub(string.format("%x", 控件颜色[2]),3,-1))
luajava.post(function() canv:addView(parti) end)

tpbbg=getVerticalBG({控件颜色[1],控件颜色[2]},20)
--luajava.getIdView("topb1"):setBackground(tpbbg)
--luajava.getIdView("topb2"):setBackground(tpbbg)

if _ENV["jm"..当前ui.."t"]~=nil then
_ENV["jm"..当前ui.."t"]:setTextColor(0xffffffff)
for i=1,#stab do
slcta[i]=getVerticalBG({控件颜色[1],控件颜色[2]},15,4,0xff232323)
end
_ENV["jm"..当前ui.."t"]:setBackground(slcta[当前ui])
--_ENV["jm"..当前ui.."p"]:setColorFilter(控件颜色)
end
luajava.getIdView("backv"):setColorFilter(控件颜色[1])
checkbg = getShape2(45,{控件颜色[1],控件颜色[2]},4,控件颜色[1])
radon=getVerticalBG({0xffffffff,0xffffffff},360,20,控件颜色[1])
for k,v in pairs(colorvs) do
	if v[1]==true then
		if v[2]=="switch" then
			luajava.getIdValue(k):setBackground(checkbg)
		elseif v[2]=="box" then
			boxpic[k]:setColorFilter(控件颜色[1])
		elseif v[2]=="txt" then
			luajava.getIdValue(k):setTextColor(控件颜色[1])
		elseif v[2]=="img" then
			luajava.getIdValue(k):setColorFilter(控件颜色[1])
		elseif v[2]=="rad" then
			luajava.getIdValue(k):setBackground(radon)
		elseif v[2]=="seek" then
			luajava.getIdView(k):setProgressDrawable( getVerticalBG({控件颜色[1],控件颜色[2]},45))
		end
	end
	if v[2]=="check" then
			swits[k][1]=getVerticalBG({控件颜色[1],控件颜色[2]},15,4,0xff232323)
			swits[k][2]=getVerticalBG({控件颜色[1],控件颜色[2]},15,4,0xff232323)
			if v[1]==true then
			luajava.getIdValue(k.."g"):setBackground(swits[k][1])
			else
				luajava.getIdValue(k.."k"):setBackground(swits[k][2])
				end
	end
end
end)
end
currentIndex = 1
function 预置颜色()
local currentItem = 颜色表[currentIndex]
changeColor(currentItem)
currentIndex = currentIndex + 1
if currentIndex > #颜色表 then
currentIndex = 1
end
end
ckbg=getVerticalBG({0xff3A3A3C,0xff3A3A3C},360)
nowbg=1
swits={}
function changan.intcheck(name,func1,func2)
nid = name..guid()
swits[nid]={
	getVerticalBG({0xff00ACFF,0xff4472FF},18),
	false
}
local func = 开关5(name,func1,func2,nid)
if not name then name = "未设置" end
local rest = luajava.loadlayout({
	LinearLayout,
	layout_width = 'wrap_content',
	layout_height = "wrap_content",
	layout_marginTop = "1dp",
	layout_marginBottom = "1dp",
	padding={"8dp","3dp","8dp","3dp"},
	{
		LinearLayout,
		onClick = function() luajava.newThread(function() func() end):start() end,
		layout_width = 'fill_parent',
		layout_height = "wrap_content",
		gravity = "center_vertical",
		--background = randbg2(),
		orientation="vertical",
		{
			TextView,
			gravity = "left",
			text = name,
			textColor="#000000",
			textSize = "11sp",
			layout_height="wrap_content",
			layout_width = '80dp',
		},
		{
			LinearLayout,
			id = luajava.newId(nid),
			background = getVerticalBG({0xeeeeeeee,0xeeeeeeee},18,3,0xaa1a1b1d),
			layout_width = 'wrap_content',
			layout_height = 'wrap_content',
			padding = "5dp",
			{
				TextView,
				id = luajava.newId(nid.."k"),
				background = swits[nid][1],
				layout_width = 'wrap_content',
				layout_height = 'wrap_content',
				padding={"10dp","3dp","10dp","3dp"},
				gravity="center",
				text="关",
				textColor="#161616",
				textSize="13sp",
			}, {
				TextView,
				layout_marginLeft="5dp",
				id = luajava.newId(nid.."g"),
				background = empty,
				layout_width = 'wrap_content',
				layout_height = 'wrap_content',
				padding={"10dp","3dp","10dp","3dp"},
				gravity="center",
				text="开",
				textColor="#000000",
				textSize="13sp",
			}
		}}
})
colorvs[nid]={false,"check"}
return rest
end
function 开关5(name,func1,func2,nid)
local sname = nid
local localname=name
name = nid..guid()
_ENV[name] = "关"
if func1 == nil then func1 = "" end
if func2 == nil then func2 = "" end
if type(func1) == "function" then
return function()
namers = _ENV[name]
vibra:vibrate(8)
if namers ~= "开" then
swits[sname][2]=true
--vibra:vibrate(14)
luajava.runUiThread(function()
	luajava.getIdValue(sname.."k"):setBackground(empty)
	luajava.getIdValue(sname.."g"):setBackground(swits[sname][1])
	end)
_ENV[name] = "开"
pcall(func1)
colorvs[sname]={true,"check"}
uiadtext(localname.." 已开启.","#ffffff")

else
swits[sname][2]=false
	--vibra:vibrate(14)
luajava.runUiThread(function()
	luajava.getIdValue(sname.."k"):setBackground(swits[sname][1])
	luajava.getIdValue(sname.."g"):setBackground(empty)
	end)
_ENV[name] = "关"
pcall(func2)
colorvs[sname]={false,"check"}
uiadtext(localname.." 已关闭.","#545454")

end
end
end
end
function changan.check(cklist)
local rest = {
	GridLayout,
	columnCount = '1',
	layout_width = 'fill_parent',
	layout_height = "wrap_content",
	gravity = "center"

}
for i = 1,#cklist do
local name = cklist[i][1]
local func1 = cklist[i][2]
local func2 = cklist[i][3]
if not name then name = "未设置" end
local rstt = changan.intcheck(name,func1,func2)
rest[#rest+1] = rstt
end
return luajava.loadlayout({
	LinearLayout,rest
})
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

界面宽度="349dp"

界面长度="349dp"
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
changan.controlRotation9(boxpic[tid],0,90)
boxpic[tid]:setColorFilter(控件颜色[1])
colorvs[tid]={true,"box"}
else
	tview : setVisibility (View.GONE)
changan.controlWater (_ENV [tid.."6"] , 200)
changan.controlRotation9(boxpic[tid],90,0)
boxpic[tid]:setColorFilter(nil)
colorvs[tid]={false,"box"}
end
end
boxes = {} boxpic = {}
function changan.box (views)
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
	background = getButtonBG(),
	{
		TextView , text = views [1] ,
		textSize = "13sp" ,
		layout_marginLeft = "15dp" ,
		layout_width = "match_parent" ,
		layout_weight=1,
		textColor = "#ffffff" ,
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
buts={}
heir=getRes("heir")
function changan.Bigbutton(txt,func,txtc)
if not txt then txt = "未设置" end
if not txtc then txtc="#ffffff" end
local tid="Cbutton"..guid()
buts[tid]=luajava.loadlayout(
	{
		LinearLayout,
		layout_width = 'match_parent',
		layout_height = "wrap_content", {
			LinearLayout,
			layout_width = "fill_parent",
			gravity = "center_vertical",
			layout_marginTop = "5dp",
			layout_marginBottom = "5dp",
			background = getButtonBG(),
			padding="10dp",
			onClick = function() 
				changan.controlWater(buts[tid],300)
				vibra:vibrate(10)
			luajava.newThread(func):start() end,
			{
				TextView,
--id = luajava.newId(tid),
				textColor = txtc,
				text = txt,
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
return buts[tid]
end
function getButtonBG()
local selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, getVerticalBG({0x55000000,0x55000000},15))
selector:addState({
	-android.R.attr.state_pressed
}, getVerticalBG({0xaa1a1b1d,0xaa1a1b1d},15))
return selector
end

radiog={}
function changan.radio (cklist)
if not radoff then
radon=getVerticalBG({0xffffffff,0xffffffff},360,20,控件颜色[1])
radoff=getVerticalBG({0x00ffffff,0x00ffffff},360,8,0xffaaaaaa)

end
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
	textColor = "#d7d7d7" ,
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
	layout_marginTop = "10dp" ,
	gravity = "top" ,
	orientation = "vertical" ,
	background=getVerticalBG({0xaa1a1b1d,0xaa1a1b1d},45),
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
		uiadtext('选择了 '..name.."","#ffffff")
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
		textColor = "#d7d7d7" ,
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
	colorvs[k]={false,"rad"}
	luajava.getIdValue(k):setBackground(radoff)
	if k==nid and v~=true then
		luajava.getIdValue(k):setBackground(radon)
		colorvs[k]={true,"rad"}
		v=true
		luajava.newThread(func):start()
	end
end
end
end
当前ui=1
function changan.button (txt , func)
if not txt then
txt = "未设置"
end
function initbg()
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(10)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({
--0x00444444,0x00ffffff
	0xff191A1D,0xff191A1D
})
jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
jianbians:setStroke(0,0xff000000)--边框宽度和颜色
return jianbians
end

local tid = guid ()..guid ()
_ENV [tid] = luajava.loadlayout (
	{
		LinearLayout ,
		layout_width = 'fill_parent' ,
	layout_height = "35dp" , {
			LinearLayout ,
			layout_width = "fill_parent" ,
			gravity = "center_horizontal" ,
			layout_marginTop = "2dp" ,
			layout_marginBottom = "2dp" ,
layout_height = "30dp" ,
			background = initbg(),
			onClick = function ()
			uiadtext('执行: '..txt)
			changan.controlWater (_ENV [tid] , 200)
			luajava.newThread (function ()
				vibra:vibrate(4)
				pcall (func)
				end

			) : start ()
			end

			,
			{
				TextView ,
				text = txt ,
				padding = "2dp",
				textColor = "#ffffff",
				gravity='center',
				textSize = "13sp" ,
				layout_width = "wrap_content" ,
			} ,
		}
	})
return _ENV [tid]
end
function changan.text(text,color,size,isjz)
if not color then color="#161616" end
if isjz then
	return luajava.loadlayout(
	{
	TextView,
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
	text=text,
	textColor=color,
	textSize=size,
	layout_height="wrap_content",
	layout_width="match_parent",
	autoSizeTextType="uniform",
})
end
end

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
function changan.edit (name , hint)
_ENV [name] = name..guid ()
if not hint then
hint = name
end
rest = luajava.loadlayout ( {
	LinearLayout ,
	layout_width = 'fill_parent' ,
	{
		LinearLayout ,
		layout_width = 'fill_parent' ,
		layout_height = "40dp" ,
		layout_marginTop = "5dp" ,
		layout_marginBottom = "5dp" ,
		layout_marginLeft = "0dp" ,
		layout_marginRight = "0dp" ,
		gravity = "center_vertical" ,
		{
			EditText ,
			background = getButtonBG(),
			gravity = "center" ,
			hint = hint ,
			textColor=ffffff,
			textSize = "13sp",
			layout_height = "40dp" ,
			layout_marginBottom = "-2dp",
			id=luajava.newId(_ENV [name]),
			layout_width = 'fill' ,
			
		}
	}
})
luajava.getIdValue(_ENV [name]):setHintTextColor(0xffd7d7d7)
return rest
end
function changan.getedit (name)
edit = tostring (luajava.getIdValue (_ENV [name]) : getText ())
return edit
end
function changan.setedit (name , txt)
txt = tostring (txt)
luajava.runUiThread (function ()
	luajava.getIdValue (_ENV [name]) : setText (txt)
	end

)
end
chazhi={} chajv={}
function changan.seek(name,bian,smin,smax,nows)
_ENV[bian] =nows
local thum= getVerticalBG({0xffffffff,0xffffffff},4,10,switch颜色)
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
		gravity = "center_vertical",
		background = getVerticalBG({0xaa1a1b1d,0xaa1a1b1d},45),
		{
			TextView,
			padding={"5dp","10dp","0dp","10dp",},
			gravity = "top",
			textColor="#ffffff",
			text = name..":"..nows,
			id = luajava.newId(names),
			layout_width = '100dp',
			--layout_marginLeft = "5dp",
			layout_marginRight = "0dp",
		},
		{
			SeekBar,
			layout_width = 'fill_parent',
			layout_weight=1,
			id=luajava.newId(name.."seekbar"),
			min = truesmin,
			max = truesmax,
			progress=tnows,
			--paddingStart="0dp",
			--paddingEnd="0dp",
			progressDrawable={ getVerticalBG({控件颜色[1],控件颜色[2]},45)},
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
colorvs[name.."seekbar"]={true,"seek"}
return rest
end

function tiaose()
if 颜色表==nil then return 0 end
local tt={
	LinearLayout,
	gravity="center_horizontal",
	orientation='vertical',
	layout_height="wrap_content",
	layout_width='40dp'
}
for i=1,#颜色表 do
	tt[#tt+1]={
		LinearLayout,
		layout_height="40dp",
		layout_width="40dp",
		gravity="center",
		id=luajava.newId("yans"..i),
		onClick=function() xuanse(i) end,
		{LinearLayout,
		layout_width="25dp",
		layout_height="25dp",
		background=getVerticalBG({颜色表[i][1],颜色表[i][2]},15)
		}
	}
end
local t=luajava.loadlayout{
	ScrollView,
	layout_height="match_parent",
	layout_width="40dp",
	tt
}
return t
end
xze2=getVerticalBG({0x00ffffff,0x00ffffff},15,3,0xff232323)

xze=getVerticalBG({0x00ffffff,0x00ffffff},15,3,0xff232323)
function xuanse(x)
for i=1,#颜色表 do
	luajava.getIdValue("yans"..i):setBackground(empty)
end
luajava.getIdValue("yans"..x):setBackground(xze)
changeColor(颜色表[x])
end
-------------------------------------------------------

local c1
setOnAudioListener(function()
 if not isUserdata(floatWindow) then
  return
 end

 local c2 = os.time()
 if not c1 or c2 - c1 > 1 then
  c1 = c2
  luajava.runUiThread(function()
   local isGONE=floatWindow:getVisibility() == floatWindow.GONE
   if isGONE then
    floatWindow:setVisibility(floatWindow.VISIBLE)
    luajava.startThread(huizhi_1234)
   else
    floatWindow:setVisibility(floatWindow.GONE)
    draw.remove()
   end
  end)

 end
end)

function huizhi_1234()--
draw.text('夜初全防@zmayybs',240,200)
draw.setSize(48)
draw.setColor('#00FFFF')
end
huizhi_1234()

gg.alert("夜初全防\n支持PUBG四服3.0\n一一一一一一一一一一一一\n\n电报:@zmayybs\n\n想长期稳定就玩绘制自瞄\n观察期高风险与防无关 得会演戏\n有什么问题可反映我们会全力解决\n感谢您的使用！\n技术支持:杰格\n一一一一一一一一一一一一一一一\n更新内容：更新LOGO① 加3防 新增大厅4 更新时间：2月15日")


--初始颜色，填写十六进制RGB
--可在功能按钮里调用changeColor()随时自定义切换
--例如：changeColor(0xffFF0023)
控件颜色={0xff33AF61,0xff5ADAD7}


颜色表={--切换颜色的列表
	{0xff33AF61,0xff5ADAD7},
	{0xffFFB94D,0xffFF854D},
	{0xffFF0023,0xffAD3ACD},
	{0xff008CFF,0xffFF8AFB},
	{0xff00FF7B,0xff0049FF},
	{0xffFF95F2,0xff514CFF},
	{0xff946AFF,0xff1E8CFF},
	{0xdd1C66FF,0xddB124FF},
	{0xdd33CE5D,0xdd3282FF},
	{0xddCE1D24,0xdd9100FF},
	{0xdd2D80FF,0xddFF7EBB},
	{0x7c000000,0x7c000000},
	{0x99000000,0x99ffffff},
}






悬浮窗图标="https://99778.cn/wp/view.php/f1101b50e56e2bdbedbb45ea4bfeaa92.png"



stab={
	"公告",
	"防封",
	"功能",
	"美化",
	"音乐",
	"设置",
}

loadingBox = getLoadingBox('正在启动...')
loadingBox['显示']()



sviews["第1页"]["第1栏"]={
	changan.button(
			"选择进程",
			function()
string.toMusic('请选择游戏进程')
				gg.setProcessX()			
			end),
			changan.button(
			"欢迎",
			function()
string.toMusic('欢迎')---语音
			end),
			changan.button(
			"夜初",
			function()
string.toMusic('夜初')---语音
			end),
changan.button("⚡美化查询",
function()
local a = gg.makeRequest("http://wp.gglua.cc/down.php/8191a74791d3ff1bf194bb5ceb02daf3.txt").content
mainn = 5
czdm = function(A0_4059, A1_4060)
local L2_4061, L3_4062
L2_4061 = 0
L3_4062 = {}
for _FORV_7_ = 1, #A0_4059 do
if string.find(A0_4059[_FORV_7_], A1_4060) then
L3_4062[_FORV_7_] = A0_4059[_FORV_7_]
L2_4061 = L2_4061 + 1
gg.toast("已搜索到[" .. L2_4061 .. "]条")
end
end
local el1 = gg.choice(L3_4062, nil, "共找到[" .. L2_4061 .. "]条")
if el1 == nil then
if nil then
end
else
gg.copyText(L3_4062[el1])
end
end
local el2 = gg.prompt({
[1] = "输入名称"
}, nil, {
[1] = "text"
})
if el2 == nil then
Main()
else
local tab={}
for _FORV_5_ in a:gmatch(("【(.-)】")) do
table.insert(tab, _FORV_5_)
end
czdm(tab, el2[1])
end
gg.toast("开启成功")
string.toMusic('开启成功')
end),
changan.button("清理冻结", 
	function()
	gg.clearList()
string.toMusic('开启成功')
end),
}

sviews["第1页"]["第2栏"]={
changan.button(
			"选择进程",
			function()
string.toMusic('请选择游戏进程')
				gg.setProcessX()			
			end),
			changan.button(
			"使用",
			function()
string.toMusic('使用')---语音
			end),
			changan.button(
			"全防",
			function()
string.toMusic('全防')---语音			
			end),
changan.button(
			"退出",
			function()
			tuichu = 1
			end),
}

sviews["第2页"]["第1栏"]={
changan.button(
			"选择进程",
			function()
string.toMusic('请选择游戏进程')
				gg.setProcessX()			
			end),
changan.check({
					{
						"防闪" ,
						function()

						end,
						function()
							
						end
					} , {
						"不禁网防闪" ,
						function()

						end,
						function()
							
						end
					} , {
						"LOGO①" ,
						function()
		
						end,
						function()
							
						end
					},
					{
						"LOGO②" ,
						function()

						string.toMusic("开启成功")							
						end,
						function()
							
						end
					},
					{
						"大厅1" ,
						function()

						end,
						function()
							
						end
					}
				}),	
}

sviews["第2页"]["第2栏"]={
changan.box({ "防封" , ---box示例 可以删掉
changan.button(
			"选择进程",
			function()
string.toMusic('请选择游戏进程')
				gg.setProcessX()			
			end),
					changan.switch("大厅2" ,
						function()

			
						end,
						function()
							
						end,"无"),
					changan.switch("大厅3" ,
						function()
						
						end,
						function()
							
						end),
					changan.switch("大厅4" ,
						function()
					
						end,
						function()			
						end) ,
					changan.switch("全局离线" ,
						function()
							
						end) ,
						changan.switch("防追风" ,
						function()

				string.toMusic('防追封开启成功')				
						end,
						function()
				
						end) ,
				} ) ,	
}

sviews["第3页"]["第1栏"]={
changan.button(
			"选择进程",
			function()
string.toMusic('请选择游戏进程')
				gg.setProcessX()			
			end),
changan.check({
					{
						"静态广角" ,
						function()
SK = gg.prompt({"静态基址自改广角"}, {[1] = "1.7"}, {[1] = "text"})
if SK == nil or SK[1] == "" or SK[1] == "" then
gg.toast("取消")
else
so=gg.getRangesList('libUE4.so')[1].start
py=0x334BE48
setvalue(so+py,16,SK[1])
string.toMusic('广角开启成功')		
end					
						end,
						function()
							
						end
					} , {
						"动态广角" ,
						function()
local r = gg.prompt({'推荐120'}, {'120'}, {'text'}) 
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38, 0x0, 0x1A28, 0x32C}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = r[1]}})
string.toMusic("动态广角开启成功")							
						end,
						function()
							
						end
					} , {
						"枪械无后" ,
						function()
so=gg.getRangesList('libUE4.so')[1].start
py=0x54EC3E8
setvalue(so+py,16,8.8411673e-21)
string.toMusic("枪械无后开启成功")							
						end,
						function()
							
						end
					},
					{
						"枪械防抖" ,
						function()
so=gg.getRangesList('libUE4.so')[1].start
py=0x8A09CFC
setvalue(so+py,4,505872707)
so=gg.getRangesList('libUE4.so')[1].start
py=0x60C9E14
setvalue(so+py,4,1409287341)
string.toMusic("防抖开启成功")							
						end,
						function()
							
						end
					},
					{
						"枪械据点" ,
						function()
so=gg.getRangesList('libUE4.so')[1].start
py=0x54E7870
setvalue(so+py,16,8.47963525e-21)
string.toMusic('开启成功')---语音							
						end,
						function()
							
						end
					},
					{
						"枪械瞬击" ,
						function()
so=gg.getRangesList('libUE4.so')[1].start
py=0x8B59130
setvalue(so+py,16,8.95671814e-21)
string.toMusic('瞬击开启成功')---语音					
						end,
						function()
							
						end
					},
					{
						"除雾" ,
						function()
so=gg.getRangesList('libUE4.so')[1].start
py=0x7BC8528
setvalue(so+py,16,8.95671814e-21)
string.toMusic('除雾开启成功')---语音							
						end,
						function()
							
						end
					},
					{
						"不拉回加速" ,
						function()
so=gg.getRangesList('libUE4.so')[1].start
py=0x3B17A30
setvalue(so+py,16,0)
so=gg.getRangesList('libUE4.so')[1].start
py=0x334B364
setvalue(so+py,16,22)
so=gg.getRangesList('libUE4.so')[1].start
py=0x334A7D8
setvalue(so+py,16,0)
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x49DD20,0x34}--120
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = 120, freeze = true}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x49DD20,0x38}--120
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = 120, freeze = true}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x2F0,0x40,0x168,0x170,0x4}--微加速
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = 99999, freeze = true}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x4A1F80, 0x80, 0x30, 0x400, 0x698}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = 0.35, freeze = true}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x2F0,0x40,0x168,0x170,0x0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = 0.1, freeze = true}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x84}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = 3, freeze = true}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x2F0,0x10,0x2F8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = 0.1, freeze = true}})
string.toMusic("开启成功杰格同款")							
						end,
						function()
so=gg.getRangesList('libUE4.so')[1].start
py=0x3B17A30
setvalue(so+py,16,9.99999997e-7)
so=gg.getRangesList('libUE4.so')[1].start
py=0x334B364
setvalue(so+py,16,25.72529029846)
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x2F0,0x40,0x168,0x170,0x4}--微加速
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = 479.5}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x4A1F80, 0x80, 0x30, 0x400, 0x698}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = 1}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x2F0,0x40,0x168,0x170,0x0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = 1}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x84}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = 1}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x2F0,0x10,0x2F8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = 1}})
					string.toMusic("加速关闭成功")							
						end
					},
					{
						"跳伞加速" ,
						function()
local tt = {0x3AD38, 0x0, 0x84}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = 3.5, freeze = true}})
string.toMusic("跳伞加速开启成功")						
						end,
						function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38, 0x0, 0x84}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = 1, freeze = true}})
string.toMusic("跳伞加速关闭成功")							
						end
					}
				}),	
}

sviews["第3页"]["第2栏"]={
changan.button(
			"选择进程",
			function()
string.toMusic('请选择游戏进程')
				gg.setProcessX()			
			end),
changan.check({
					{
						"人物旋转" ,
						function()
function S_Pointer(t_So, t_Offset, _bit)
 local function getRanges()--@WYNB667
  local ranges = {}
  local t = gg.getRangesList('^/data/*.so*$')--@WYNB667
  for i, v in pairs(t) do
   if v.type:sub(2, 2) == 'w' then
    table.insert(ranges, v)--@WYNB667
   end
  end
  return ranges--@WYNB667
 end
 local function Get_Address(N_So, Offset, ti_bit)--@WYNB667
  local ti = gg.getTargetInfo()
  local S_list = getRanges()
  local _Q = tonumber(0x167ba0fe)--@WYNB667
  local t = {}
  local _t
  local _S = nil
  if ti_bit then
   _t = 32
   else
   _t = 4
  end
  for i in pairs(S_list) do
   local _N = S_list[i].internalName:gsub('^.*/', '')--@WYNB667
   if N_So[1] == _N and N_So[2] == S_list[i].state then--@WYNB667
    _S = S_list[i]--@WYNB667
    break
   end
  end
  if _S then--@WYNB667
   t[#t + 1] = {}--@WYNB667
   t[#t].address = _S.start + Offset[1]--@WYNB667
   t[#t].flags = _t
   if #Offset ~= 1 then--@WYNB667
    for i = 2, #Offset do
     local S = gg.getValues(t)--@WYNB667
     t = {}
     for _ in pairs(S) do--@WYNB667
      if not ti.x64 then
       S[_].value = S[_].value & 0xFFFFFFFF--@WYNB667
      end
      t[#t + 1] = {}
      t[#t].address = S[_].value + Offset[i]--@WYNB667
      t[#t].flags = _t
     end
    end--@WYNB667
   end
   _S = t[#t].address
   print(string.char(231,190,164,58).._Q)--@WYNB667
  end
  return _S
 end
 local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit))
 return _A
end


while(true)do
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38, 0x0, 0x468, 0x1A0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = -1}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38, 0x0, 0x1B0, 0x19C}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = -1}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38, 0x0, 0x468, 0x1A0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38, 0x0, 0x1B0, 0x19C}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1}})
end
string.toMusic('开启成功')							
						end,
						function()
							
						end
					} , {
						"微高伤" ,
						function()
gg.searchNumber("90.775703430176;0;8;15;16;18;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("100", gg.TYPE_FLOAT)
						string.toMusic('开启成功')							
						end,
						function()
							
						end
					} , {
						"锁帧率" ,
						function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x49DD28, 0x0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 144}})
string.toMusic("锁帧开启成功")
string.toMusic('开启成功')							
						end,
						function()
							
						end
					},
					{
						"斗宗" ,
						function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x39AA8,0x0,0x84}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 0.1}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x39AA8,0x0,0x2F0,0x40,0x160,0x170,0x0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 5}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x39AA8,0x0,0x528}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 99999}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x39AA8,0x0,0x2F0,0x40,0x160,0x120,0xD0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 70}})

OP=gg.prompt({'443到4000,飞行高度'},{[1]='1000'},{[1]='number'})
	if OP == nil or OP[1] == '' or OP[1] == '0' then gg.toast("取消")
		else
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3A1D8, 0x0, 0x48, 0x8, 0x184}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = OP[1]}})

OP=gg.prompt({'9999到999999,飞行速度'},{[1]='99999'},{[1]='number'})
	if OP == nil or OP[1] == '' or OP[1] == '0' then gg.toast("取消")
		else
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x39AA8,0x0,0x460,0x208}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = OP[1]}})

so=gg.getRangesList('libUE4.so')[1].start
py=0x8675E3C
setvalue(so+py,16,-3.4564993e10)
end
end
string.toMusic("斗宗开启成功")							
						end,
						function()
							
						end
					},
					{
						"建筑上色" ,
						function()
function S_Pointer(t_So, t_Offset, _bit)
	local function getRanges()
		local ranges = {}
		local t = gg.getRangesList('^/data/*.so*$')
		for i, v in pairs(t) do
			if v.type:sub(2, 2) == 'w' then
				table.insert(ranges, v)
			end
		end--不进q群s全家907470680
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
		end--不进q群s全家907470680
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
	end--不进q群s全家907470680
	local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit))
	return _A
end


--不进q群s全家907470680
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x34C6C8, 0x4}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 999}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3B80D8, 0x4}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 999}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x48B370, 0x38}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 999}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x48B378, 0x4}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 999}})
--不进q群s全家907470680
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x48B388, 0xF8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 999}})
         --不进q群s全家907470680
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x48B390, 0xC4}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 999}})
   --不进q群s全家907470680
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x48B1C8, 0x8, 0xB8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 999}})
--不进q群s全家907470680
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x48B268, 0xA8, 0xB8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 999}})
--不进q群s全家907470680
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x48B288, 0xF8, 0xB8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 999}})
gg.alert("上色开启成功")
string.toMusic('上色开启成功')							
						end,
						function()
							
						end
					},
					{
						"除草除树" ,
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
			
		end
		return _S
	end
	local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit))
	return _A
end
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x479970, 0x38}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x479978, 0x4}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x47A0A8, 0xB8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x47A0B0, 0x84}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1}})
gg.alert('开启成功')
string.toMusic('开启成功')---语音							
						end,
						function()
							
						end
					},
					{
						"攀爬穿墙" ,
						function()
local addr = readPointer("libUE4.so:bss", {0x3AD38, 0x0, 0x390, 0x58, 0x2CC},1)
gg.edits(addr, {{9999, 16, 0, false}})
string.toMusic('开启成功')---语音				
						end,
						function()
local addr = readPointer("libUE4.so:bss", {0x3AD38, 0x0, 0x390, 0x58, 0x2CC},1)
gg.edits(addr, {{10, 16, 0, false}})
string.toMusic('开启成功')---语音							
						end
					},
					{
						"自改高度" ,
						function()
kk = gg.prompt({"1.5对应150亮度"},{1.5},{"number"})
local addr = readPointer("libUE4.so:bss", {0x4A0530, 0x5B4},1)
gg.edits(addr, {{kk[1], 16, 0, false}})
string.toMusic('开启成功')---语音							
						end,
						function()
							
						end
					},
					{
						"打药加速" ,
						function()
local addr = readPointer("libUE4.so:bss", {0x3AD38, 0x0, 0x2F0, 0x40, 0x168, 0x210, 0x0},1)
gg.edits(addr, {{1.2, 16, -0x4, false}})
local addr = readPointer("libUE4.so:bss", {0x3AD38, 0x0, 0x460, 0x1B4},1)
---gg.edits(addr, {{1000, 16, 0x78, false}})----惯性
gg.edits(addr, {{81920, 16, 0x54, false}})-----惯性2)
					string.toMusic("开启成功")					
						end,
						function()
							
						end
					}
				}),	
}

sviews["第4页"]["第1栏"]={
changan.button(
			"选择进程",
			function()
string.toMusic('请选择游戏进程')
				gg.setProcessX()			
			end),
changan.box({
        "自选衣服",
changan.switch("作者专用",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 40605012}})----头发链条
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x38}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 474031}})----面部链条

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1F8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1502003027}})----头盔链条
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1404133}})----衣服链条

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x150}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 404001}})----裤子链条
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x188}---鞋子
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1400022}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1C0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1501003081, freeze = true}})----
string.toMusic('美化成功')
end,
function()
end),
				
				
	
	changan.switch("也是身法",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {}---头发
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 474031}})
--频道@XJNBYYDA
--删这条消息死妈
--频道@XJNBYYDA
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x39488,0x0,0x2F0,0x280,0x390,0x38}---脸部
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1402613}})
--频道@XJNBYYDA
--删这条消息死妈
--频道@XJNBYYDA
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x118}---衣服
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1404294}})
--频道@XJNBYYDA
--删这条消息死妈
--频道@XJNBYYDA
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x150}---裤子
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 404049}})
--频道@XJNBYYDA
--删这条消息死妈
--频道@XJNBYYDA
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x188}---鞋子
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1400022}})
--频道@XJNBYYDA
--删这条消息死妈
--频道@XJNBYYDA
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1F8}---头盔
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1502002014}})
--频道@XJNBYYDA
--删这条消息死妈
--频道@XJNBYYDA
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1C0}---背包
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1501003261}})
gg.alert("美化成功")

end,
function()
end),
changan.switch("胖达美化",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1405040}})----衣服链条

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1C0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1501002009}})----背包链条

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1F8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1502003027}})----头盔链条
string.toMusic('开启成功')---语音
end,
function()
end),

changan.switch("木乃伊[白]",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1400687}})----衣服链条

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1C0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1501003310}})----背包链条

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1F8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1502002027}})----头盔链条
string.toMusic('开启成功')---语音
end,
function()
end),

	

changan.switch("木乃伊[蓝]",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1406891}})----衣服链条

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1C0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1501002009}})----背包链条

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1F8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1502003027}})----头盔链条
string.toMusic('开启成功')---语音
end,				
function()
end),			
	
changan.switch("木乃伊[黄]",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1406891}})----衣服链条

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1C0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1501002009}})----背包链条

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1F8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1502003027}})----头盔链条
string.toMusic('开启成功')---语音
end,				
function()
end),			
	
changan.switch("木乃伊[黄]",
function()			
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1405623}})----衣服链条

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1C0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1501003261}})----背包链条

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1F8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1502003027}})----头盔链条
string.toMusic('开启成功')---语音
end,		
function()
end),
changan.switch("黄金风衣",
function()			
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x38}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1400779}})----面部链条


local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x150}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1404160}})----裤子链条

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1C0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1501002009}})----背包链条

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1F8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1502003027}})----头盔链条盔链条
string.toMusic('开启成功')---语音
end,		
function()
end),
changan.switch("曙光芙洛",
function()			
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1407103}})----衣服链条



local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1C0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1501002009}})----背包链条

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1F8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1502002027}})----头盔链条
string.toMusic('开启成功')---语音
end,		
function()
end),
changan.switch("金羽",
function()			
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 40605012}})----头发链条

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x38}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 140}})----面部链条

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1404133}})----衣服链条

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x150}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1404160}})----裤子链条

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1C0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1501002009}})----背包链条

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1F8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1502003027}})----头盔链条
string.toMusic('开启成功')---语音
end,		
function()
end),
changan.switch("明日香",
function()			
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1406387}})----衣服链条

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1C0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1501002009}})----背包链条

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1F8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1502003027}})----头盔链条
string.toMusic('开启成功')---语音
end,		
function()
end),
changan.switch("武魂宗师",
function()			
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1410299}})----头发链条



local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1406742}})----衣服链条



local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1C0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1501003503}})----背包链条

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1F8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1502003027}})----头盔链条
string.toMusic('开启成功')---语音
end,		
function()
end),
changan.switch("猴子",
function()			
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1406327}})----衣服链条

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1C0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1501002009}})----背包链条

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1F8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1502003027}})----头盔链条
string.toMusic('开启成功')---语音
end,		
function()
end),
changan.switch("狂沙浪漫",
			 function()
			
			

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 40605012}})----头发链条

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x38}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 474031}})----面部链条

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1404207}})----衣服链条

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x150}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1404160}})----裤子链条

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1C0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1501002009}})----背包链条

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1F8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1502002027}})----头盔链

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x188}---鞋子
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1400022}})

			toMusic("美化成功")
			
		end,
		function()
		end),
		}),	
	changan.box({
        "自选个人衣服",
	 changan.switch(
	 "自改衣服",
function()


local r = gg.prompt({'自改美化'}, {'1406387'}, {'text'})
if r then
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value =r[1]}})
end
		string.toMusic('美化成功')
end,		
function()
end),
	 changan.switch(

	"双马尾",
			 function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x70}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 40605012}})----头发链条


	string.toMusic('美化成功')
end,		
function()
end),
	 changan.switch(


	"双马尾",
			 function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x70}---头发
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 474031}})
	string.toMusic('美化成功')
end,		
function()
end),
changan.switch(


	"木乃伊(白)",
			 function()
	local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1400687}})----衣服链条

	string.toMusic('美化成功')
end,		
function()
end),
changan.switch(
	"废墟猎手面罩",
			 function()
	local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1402056}})----衣服链条

	string.toMusic('美化成功')
	end,		
function()
end),

changan.switch(
	"废墟猎手套装",
			 function()
	local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1405163}})----衣服链条

	string.toMusic('美化成功')
	end,		
function()
end),
changan.switch("清除冻结(快撤离必须点)",
function()
gg.clearList()
string.toMusic('开启成功')
end,		
function()
end),
changan.switch(
	"木乃伊(黄)",
			 function()
	local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1405623}})----衣服链条

	string.toMusic('美化成功')
end,		
function()
end),
changan.switch(
	"黄金风衣、银色",
			 function()
	local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1400779}})----衣服链条

	string.toMusic('美化成功')
end,		
function()
end),
changan.switch(
	"满级艳后",
			 function()
	local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1406475}})----衣服链条

	string.toMusic('美化成功')
end,		
function()
end),
changan.switch(
	"武魂宗师套装",
			 function()
	local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1406742}})----衣服链条

	string.toMusic('美化成功')
end,		
function()
end),
changan.switch(
	"武魂宗师头饰 ",
			 function()
	local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1410299}})----衣服链条

	string.toMusic('美化成功')
end,		
function()
end),
changan.switch(
	"猴子",
			 function()
	local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1406327}})----衣服链条

	string.toMusic('美化成功')
end,		
function()
end),
changan.switch(
	"明日香",
			 function()
	local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1406387}})----衣服链条

	string.toMusic('美化成功')
end,		
function()
end),
changan.switch(
	"寒冰",
			 function()
	local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1406151}})----衣服链条

	string.toMusic('美化成功')
end,		
function()
end),
changan.switch(
	"冰雪晶核",
			 function()
	local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1400782}})----衣服链条

	string.toMusic('美化成功')
end,		
function()
end),
changan.switch(
	"极乐愚者",
			 function()
	local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1407079}})----衣服链条

	string.toMusic('美化成功')
end,		
function()
end),

changan.switch(
	"水晶之心套装",
			 function()
	local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1405222}})----衣服链条

	string.toMusic('美化成功')
end,		
function()
end),

changan.switch(
	"金克斯",
			 function()
	local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1406140}})----衣服链条

	string.toMusic('美化成功')
	end,		
function()
end),
changan.switch(
	"胖(女))",
			 function()
	local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1405039}})----衣服链条

	string.toMusic('美化成功')
end,		
function()
end),
changan.switch(
	"绫波丽",
			 function()
	local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1406386}})----衣服链条

	string.toMusic('美化成功')
end,		
function()
end),
changan.switch(
	"星彩魅魔头饰",
					 function()
	local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1410065}})----衣服链条

	string.toMusic('美化成功')
end,		
function()
end),
changan.switch(
	"星彩魅魔套装",
			 function()
	local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1406391}})----衣服链条

	string.toMusic('美化成功')
end,
function()
end),
changan.switch(
	"迷彩裤子",
			 function()
	local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1404050}})----衣服链条

	string.toMusic('美化成功')
end,
function()
end),
changan.switch(
	"迷彩鲨鱼上衣",
			 function()
	local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1404049}})----衣服链条

	string.toMusic('美化成功')
end,
function()
end),

changan.switch(
	"凛冬冰后头饰",
			 function()
	local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1410546}})----衣服链条

	string.toMusic('美化成功')
end,		
function()
end),
changan.switch(
	"凛冬冰后套装",
			 function()
	local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1407107}})----衣服链条

	string.toMusic('美化成功')
end,		
function()
end),
changan.switch(
	"冰蝶新娘套装",
			 function()
	local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1407049}})----衣服链条

	string.toMusic('美化成功')
end,		
function()
end),
changan.switch(
	"嗜血龙魇套装",
			 function()
	local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1406897}})----衣服链条

	string.toMusic('美化成功')
end,		
function()
end),
changan.switch(
	"冥河艳后头饰",
			 function()
	local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1410068}})----衣服链条

	string.toMusic('美化成功')
end,		
function()
end),
changan.switch(
	"冥河艳后套装",
			 function()
	local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1406394}})----衣服链条

	string.toMusic('美化成功')
end,		
function()
end),
		
changan.switch("清除冻结(快撤离必须点)",
function()
gg.clearList()
string.toMusic('开启成功')
end,		
function()
end),
changan.switch("武装女仆套装",
			 function()
	local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1400106}})----衣服链条

	string.toMusic('美化成功')
end,		
function()
end),
changan.switch("蜘蛛突变者套装",
			 function()
	local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1405066}})----衣服链条

	string.toMusic('美化成功')
end,		
function()
end),
changan.switch("落樱套装",
			 function()
	local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1405103}})----衣服链条

	string.toMusic('美化成功')
end,		
function()
end),
changan.switch("怒涛主宰套装",
			 function()
	local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1406977}})----衣服链条

	string.toMusic('美化成功')
end,		
function()
end),
}),
changan.box({
        "自选圣装",
changan.switch(
	"海洋之王圣装",
			 function()
	local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1405983}})----衣服链条

	string.toMusic('美化成功')
end,		
function()
end),
changan.switch("血鸦圣装",
			 function()
	local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1405870}})----衣服链条

	string.toMusic('美化成功')
end,		
function()
end),
changan.switch("曙光芙洛拉圣装头部 ",
function()
		
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x38}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 402165}})----面部链条

gg.toast("美化成功")
end,		
function()
end),
changan.switch(
	"曙光芙洛拉圣装套装",
			 function()
	local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1407103}})----衣服链条

	string.toMusic('美化成功')
end,		
function()
end),
changan.switch(
	"曙光芙洛拉眼罩",
			 function()
		
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x38}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1403655}})----面部链条
	string.toMusic('美化成功')
end,		
function()
end),
changan.switch(
	"金尊法老",
			 function()
	local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1406469}})----衣服链条

	string.toMusic('美化成功')
end,		
function()
end),
changan.switch(
	"果冻",
			 function()
	local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1406970}})----衣服链条

	string.toMusic('美化成功')
end,		
function()
end),
	}),
changan.box({
        "自选枪械播报",
changan.switch("自改播报",
function()

gg.setConfig("冻结间隔", 0)
gg.setConfig("快速冻结", 1)
local cfg_file = gg.EXT_FILES_DIR.."/"..gg.getFile():match("[^/]+$").."(小辞).lua"
							local chunk = loadfile(cfg_file)
							local cfg = nil
							if chunk ~= nil then
								cfg = chunk()
							end
							if cfg == nil then
								cfg = {1101004046,true}
							end
							wannian=gg.prompt({
"AKM华丽浮雕击杀播报 1101001042 AKM怒海争锋击杀播报 1101001063 AKM白虎咆哮击杀播报 1101001068 AKM冰霜核心击杀播报 1101001089 AKM积木龙骨击杀播报 1101001103 AKM奇异之夜击杀播报 1101001116 AKM金牌海盗击杀播报 1101001143 AKM吉利龙王击杀播报 1101001128 AKM奇幻工坊击杀播报 1101001154 AKM部落之王击杀播报 1101001174 AKM星海提督击杀播报 1101001213 AKM俏皮兔宝击杀播报 1101001231 \nM16A4血骸风暴击杀播报 1101002029 M16A4极光脉冲击杀播报 1101002056 M16A4缤纷利刃击杀播报 1101002068 M16A4猩红血月击杀播报 1101002081 M16A4古堡龙卫击杀播报 1101002103 \n死噶梦幻水枪击杀播报 1101003057 死噶魔法南瓜击杀播报 1101003070 死噶翌日行动击杀播报 1101003080 死噶诡秘之夜击杀播报 1101003099 死噶魔力结晶击杀播报 1101003119 死噶邪能植物击杀播报 1101003146 死噶血魂魔皇击杀播报 1101003167 \nM416冰霜核心击杀播报 1101004046 M416愚人小丑击杀播报 1101004062 M416异域游荡者击杀播报 1101004078 M416萌龙咆哮击杀播报 1101004086 M416野性呼唤击杀播报 1101004098 M416科技核心击杀播报 1101004138 M416潮鸣宫廷击杀播报 1101004163 M416庇护之潮击杀播报 1101004209 \nGroza幻夜音乐击杀播报 1101005025 Groza绚烂之战 1101005043 Groza冥河烈焰 1101005052 \nAUG流浪马戏团 1101006033 AUG第四使徒 1101006044 QBZ极致绝杀 1101007036 QBZ瑰绮灵姬 1101007046 M762比特宝莉 1101008026 \n妹控星云力量",
							},cfg,{"text"})
							if wannian == nil then else
								gg.saveVariable(wannian, cfg_file)
								local t = {"libUE4.so:bss", "Cb"}
								local tt = {0x3AD38,0x0,0x90,0x161C}
								local ttt = S_Pointer(t, tt, true)
								gg.addListItems({{address = ttt, flags = 4, value = wannian[1], freeze = true}})
end
	gg.alert("开启成功")
end,
function()
end),

changan.switch("冰霜播报",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x90,0x1618}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101004046, freeze = true}})
string.toMusic('开启成功')---语音
end,
function()
end),
changan.switch(
			 
		'庇护之潮播报',
		function()
		
		local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x90,0x1618}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101004209, freeze = true}})
gg.toast("美化成功")
		end,		
function()
end),
changan.switch("武魂宗师播报",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x90,0x1618}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101004199, freeze = true}})
string.toMusic('开启成功')---语音
end,
function()
end),
			changan.switch(
			 
		'ump5播报',
		function()
		
		local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x90,0x1618}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1102002136, freeze = true}})
gg.toast("美化成功")
		end,		
function()
end),

changan.switch(
'愚人小丑播报',
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x90,0x1618}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101004062, freeze = true}})
gg.toast("美化成功")
		end,		
function()
end),

changan.switch(
'冰霜核心播报',
function()

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x90,0x1618}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101004046, freeze = true}})
gg.toast("美化成功")
		end,		
function()
end),
		changan.switch(
		
		'决胜之日ak播放',
function()

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x90,0x1618}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101001242, freeze = true}})
gg.toast("美化成功")
	end,		
function()
end),
changan.switch(
		
		'死干播放',
function()

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x90,0x1618}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101003167, freeze = true}})
gg.toast("美化成功")
	end,		
function()
end),
changan.switch(
		
		'm762播放',
function()

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x90,0x1618}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101008126, freeze = true}})
gg.toast("美化成功")
	end,		
function()
end),


		        
			
		}),
        changan.box({
        "自选圣装播报",
        changan.switch(
	"自改淘态播报",
			 function()
gg.setConfig("冻结间隔", 0)
gg.setConfig("快速冻结", 1)
local cfg_file = gg.EXT_FILES_DIR.."/"..gg.getFile():match("[^/]+$").."(千助猪).lua"
							local chunk = loadfile(cfg_file)
							local cfg = nil
							if chunk ~= nil then
								cfg = chunk()
							end
							if cfg == nil then
								cfg = {1101004046,true}
							end
wannian=gg.prompt({
"AKM华丽浮雕击杀播报 1101001042 AKM怒海争锋击杀播报 1101001063 AKM白虎咆哮击杀播报 1101001068 AKM冰霜核心击杀播报 1101001089 AKM积木龙骨击杀播报 1101001103 AKM奇异之夜击杀播报 1101001116 AKM金牌海盗击杀播报 1101001143 AKM吉利龙王击杀播报 1101001128 AKM奇幻工坊击杀播报 1101001154 AKM部落之王击杀播报 1101001174 AKM星海提督击杀播报 1101001213 AKM俏皮兔宝击杀播报 1101001231 \nM16A4血骸风暴击杀播报 1101002029 M16A4极光脉冲击杀播报 1101002056 M16A4缤纷利刃击杀播报 1101002068 M16A4猩红血月击杀播报 1101002081 M16A4古堡龙卫击杀播报 1101002103 \n死噶梦幻水枪击杀播报 1101003057 死噶魔法南瓜击杀播报 1101003070 死噶翌日行动击杀播报 1101003080 死噶诡秘之夜击杀播报 1101003099 死噶魔力结晶击杀播报 1101003119 死噶邪能植物击杀播报 1101003146 死噶血魂魔皇击杀播报 1101003167 \nM416冰霜核心击杀播报 1101004046 M416愚人小丑击杀播报 1101004062 M416异域游荡者击杀播报 1101004078 M416萌龙咆哮击杀播报 1101004086 M416野性呼唤击杀播报 1101004098 M416科技核心击杀播报 1101004138 M416潮鸣宫廷击杀播报 1101004163 M416庇护之潮击杀播报 1101004209 \nGroza幻夜音乐击杀播报 1101005025 Groza绚烂之战 1101005043 Groza冥河烈焰 1101005052 \nAUG流浪马戏团 1101006033 AUG第四使徒 1101006044 QBZ极致绝杀 1101007036 QBZ瑰绮灵姬 1101007046 M762比特宝莉 1101008026 \n妹控星云力量",
							},cfg,{"text"})
							if wannian == nil then else
								gg.saveVariable(wannian, cfg_file)
								local t = {"libUE4.so:bss", "Cb"}
								local tt = {0x3AD38,0x0,0x90,0x1618}
								local ttt = S_Pointer(t, tt, true)
								gg.addListItems({{address = ttt, flags = 4, value = wannian[1], freeze = true}})
								end
string.toMusic('开启成功')
end,		
function()
end),
changan.switch(
	"自改圣装播报",
		function()
		local cfg_file = gg.EXT_FILES_DIR.."/"..gg.getFile():match("[^/]+$").."(千助猪).lua"
							local chunk = loadfile(cfg_file)
							local cfg = nil
							if chunk ~= nil then
								cfg = chunk()
							end
							if cfg == nil then
								cfg = {1101004046,true}
							end
							wannian=gg.prompt({
"千面诡皇播报1406716  金辉艳后播报1406474 精灵王播报1406310 寒冰播报1406151 金尊法老播报1405635 血鸦播报1405909 海洋之王播报1405982",
							},cfg,{"text"})
							if wannian == nil then else
								gg.saveVariable(wannian, cfg_file)
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x90,0x161C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = wannian[1], freeze = true}})
end
gg.alert("美化成功")
		end,		
function()
end),
changan.switch(
		"圣装播报",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x90,0x161C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1405909, freeze = true}})
gg.toast("美化成功")
		end,		
function()
end),

changan.switch(
'大果都圣装播报',
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x90,0x161C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1406970, freeze = true}})
gg.alert("美化成功")

		end,		
function()
end),

changan.switch(
		"海王播报",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x90,0x161C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1405983, freeze = true}})
gg.toast("美化成功")
		end,		
function()
end),

	changan.switch(
		"血压播报",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x90,0x161C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1405870, freeze = true}})
gg.toast("美化成功")
		end,		
function()
end),	
	changan.switch(
		"法老播报",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x90,0x161C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1406469, freeze = true}})
gg.toast("美化成功")
		end,		
function()
end),	
			}),
			changan.box({
        "自选背包",
			  changan.switch("自改背包",
function()
jr = gg.prompt({""},nil,{"number"})
 if jr ~= nil then
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1C0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1501003550, freeze = true}})----背包
end
string.toMusic('美化成功')
end,		
function()
end),
			 
			 changan.switch("霜华冰镜背包",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1C0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1501003550, freeze = true}})----背包
string.toMusic('美化成功')
end,		
function()
end),
changan.switch("EVANGELION 初号机背包",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1C0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1501003387, freeze = true}})----背包
string.toMusic('美化成功')
end,		
function()
end),
changan.switch("朋克犀牛背包",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1C0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1501003211, freeze = true}})----背包
string.toMusic('美化成功')
end,		
function()
end),

changan.switch("恐龙布朗熊背包",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1C0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1501003310, freeze = true}})----背包
string.toMusic('美化成功')
end,		
function()
end),
changan.switch("幻世裁决者背包",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1C0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value =  1501003043, freeze = true}})----背包
string.toMusic('美化成功')
end,		
function()
end),

	changan.switch(
				
"雪人姑娘背包",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1C0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1501003217, freeze = true}})----背包
string.toMusic('美化成功')
end,		
function()
end),
changan.switch(
"翡翠宝石背包",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1C0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1501000383, freeze = true}})----背包
string.toMusic('美化成功')
end,		
function()
end),
changan.switch(

"小猫背包",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1C0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1501003050, freeze = true}})----背包
string.toMusic('美化成功')
end,		
function()
end),
	
		changan.switch(

"蔚蓝风暴背包",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1C0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1501002009, freeze = true}})----背包
string.toMusic('美化成功')
end,		
function()
end),
changan.switch("小丑背包",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1C0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1501003051, freeze = true}})----背包
string.toMusic('美化成功')
end,		
function()
end),
changan.switch("武魂宗师背包",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1C0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1501003503, freeze = true}})----背包
string.toMusic('美化成功')
end,		
function()
end),
changan.switch("致命凝视背包",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1C0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1501003487, freeze = true}})----背包
string.toMusic('美化成功')
end,		
function()
end),
changan.switch("古城密探背包",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1C0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1501003053, freeze = true}})----背包
string.toMusic('美化成功')
end,		
function()
end),
changan.switch("ADIDAS背包",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1C0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1501003303, freeze = true}})----背包
string.toMusic('美化成功')
end,		
function()
end),
changan.switch("航海企鹅背包",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1C0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1501003145, freeze = true}})----背包
string.toMusic('美化成功')
end,		
function()
end),
changan.switch("天使之翼背包",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1C0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 150100308, freeze = true}})----背包
string.toMusic('美化成功')
end,		
function()
end),
changan.switch("蝴蝶花灵背包",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1C0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1501003047, freeze = true}})----背包
string.toMusic('美化成功')
end,		
function()
end),



changan.switch("极乐宝库背包",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1C0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1501003546, freeze = true}})----背包
string.toMusic('美化成功')
end,		
function()
end),
changan.switch("小黄鸭背包",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1C0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1501003243, freeze = true}})----背包
string.toMusic('美化成功')
end,		
function()
end),
changan.switch("亲吻背包",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1C0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1501003299, freeze = true}})----背包
string.toMusic('美化成功')
end,		
function()
end),
	}),
	changan.box({
        "自选头盔",
			  changan.switch("自改头盔",
function()
jr = gg.prompt({""},nil,{"number"})
 if jr ~= nil then
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1F8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1502002027}})----头盔链条
end
string.toMusic('美化成功')
end,		
function()
end),
			 changan.switch("胖达头盔",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1F8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1502002027}})----头盔链条
string.toMusic('美化成功')
end,		
function()
end),
changan.switch("四头",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1F8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1502002014}})----头盔链条
gg.toast("美化成功")
end,		
function()
end),
changan.switch("冰雪晶核头盔",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1F8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1502003023}})----头盔链条
gg.toast("美化成功")
end,		
function()
end),
changan.switch("御灵师头盔",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1F8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1502003069}})----头盔链条
gg.toast("美化成功")
end,		
function()
end),
changan.switch("地狱骑士头盔",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1F8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1502003014}})----头盔链条
gg.toast("美化成功")
end,		
function()
end),
changan.switch("清除冻结(快撤离必须点)",
function()
gg.clearList()
string.toMusic('开启成功')
end,		
function()
end),
	}),
	changan.box({
        "自选死噶枪械",
 changan.switch("scar",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18-128-0xa8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101003146, freeze = true}})--scar
gg.alert("美化成功") 
end,		
function()
end),
 changan.switch("死噶梦幻水枪",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18-128-0xa8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101003057, freeze = true}})--scar
gg.alert("美化成功") 
end,		
function()
end),
 changan.switch("死噶魔法南瓜",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18-128-0xa8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101003070, freeze = true}})--scar
gg.alert("美化成功") 
end,		
function()
end),
changan.switch("死噶",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18-128-0xa8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101003167, freeze = true}})--scar
gg.alert("美化成功") 
end,		
function()
end),
	}),
        changan.box({
        "自选AK枪械",
			  changan.switch("冰霜核心",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18-378-0x1fe}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101001089, freeze = true}})--ak

gg.alert("美化成功") 
end,		
function()
end),
  changan.switch("华丽浮雕",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18-378-0x1fe}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101001042, freeze = true}})--ak

gg.alert("美化成功") 
end,		
function()
end),
  changan.switch("怒海争锋",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18-378-0x1fe}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101001063, freeze = true}})--ak

gg.alert("美化成功") 
end,		
function()
end),
  changan.switch("白虎击杀",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18-378-0x1fe}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101001068, freeze = true}})--ak

gg.alert("美化成功") 
end,		
function()
end),
  changan.switch("积木龙骨",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18-378-0x1fe}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101001103, freeze = true}})--ak

gg.alert("美化成功") 
end,		
function()
end),
}),
        changan.box({
        "自选M762枪械",
			   changan.switch("比特宝莉",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0x4a0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101008081, freeze = true}})--m762



gg.alert("美化成功") 
end,		
function()
end),
			   changan.switch("m762",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0x4a0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101008126, freeze = true}})--m762



gg.alert("美化成功") 
end,		
function()
end),

	}),
        changan.box({
        "自选全枪",
changan.switch("全枪美化",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0xa68}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101100004, freeze = true}})--famas

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0xcb8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101102007, freeze = true}})--ace-32

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0x4a0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101008081, freeze = true}})--m762

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0x5c8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101009012, freeze = true}})--mk47

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0x6f0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101010016, freeze = true}})--g36c

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18-378-0x1fe}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101001089, freeze = true}})--ak

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18-406-0xba}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101002029, freeze = true}})--m16

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18-128-0xa8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101003146, freeze = true}})--scar

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18-250}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101002029, freeze = true}})--m16

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18-128}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101003146, freeze = true}})--scar

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101004046, freeze = true}})--m4

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+128+0xa8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101005038, freeze = true}})--groza

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+406+0xba}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101006062, freeze = true}})--aug


local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0x1BC0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1102001103, freeze = true}})--uzi

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0x1E10}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1102003080, freeze = true}})--v克托

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0x1F38}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1102004018, freeze = true}})--汤姆逊

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0x1CE8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1102002043, freeze = true}})--ump45

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0x2060}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1102005007, freeze = true}})--野牛



    local t = {"libUE4.so:bss", "Cb"}
    local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0x2628}
    local ttt = S_Pointer(t, tt, true)
    gg.addListItems({{address = ttt, flags = 4, value = 1103001179, freeze = true}})--98k
    
    local t = {"libUE4.so:bss", "Cb"}
    local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0x2750}
    local ttt = S_Pointer(t, tt, true)
    gg.addListItems({{address = ttt, flags = 4, value = 1103002047, freeze = true}})--m24
    
    local t = {"libUE4.so:bss", "Cb"}
    local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0x2878}
    local ttt = S_Pointer(t, tt, true)
    gg.addListItems({{address = ttt, flags = 4, value = 1103003022, freeze = true}})--AWM
    
    local t = {"libUE4.so:bss", "Cb"}
    local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0x29A0}
    local ttt = S_Pointer(t, tt, true)
    gg.addListItems({{address = ttt, flags = 4, value = 1103004037, freeze = true}})--sks
    
    local t = {"libUE4.so:bss", "Cb"}
    local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0x2BF0}
    local ttt = S_Pointer(t, tt, true)
    gg.addListItems({{address = ttt, flags = 4, value = 1103006030, freeze = true}})--mini14
    
    local t = {"libUE4.so:bss", "Cb"}
    local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0x2D18}
    local ttt = S_Pointer(t, tt, true)
    gg.addListItems({{address = ttt, flags = 4, value = 1103007010, freeze = true}})--MK14
    
    local t = {"libUE4.so:bss", "Cb"}
    local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0x32E0}
    local ttt = S_Pointer(t, tt, true)
    gg.addListItems({{address = ttt, flags = 4, value = 1103012010, freeze = true}})--AMR
    
 


local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0x4560}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1105001020, freeze = true}})--m249

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0x4688}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1105002018, freeze = true}})--DP-28

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0x4FC8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1105010008, freeze = true}})--MG3

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x50D8,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1108004027, freeze = true}})--MG3

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x5090,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1108001060, freeze = true}})--MG3


gg.alert("全枪美化成功") 
end,		
function()
end),
	}),
	changan.box({
        "地铁配件专区",
			 changan.switch("冰酸配件精制美化",
			  function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x7F4C0,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1010040475, freeze = true}})--补偿枪口精致

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x7F808,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1010040479, freeze = true}})--垂直精致

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x805A0,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1010040480, freeze = true}})--枪托精致

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x803C0,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1010040473, freeze = true}})--扩容精致

gg.alert("美化成功") 
end,		
function()
end),
	 changan.switch("冰酸配件改进美化",
			  function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x80588,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1010040480, freeze = true}})--枪托

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x7F4A8,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1010040475, freeze = true}})--枪口补偿器

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x7F7F0,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1010040479, freeze = true}})--垂直握把

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x80330,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1010040473, freeze = true}})--地铁扩容



gg.alert("美化成功") 
end,		
function()
end),
		 changan.switch("武魂宗师配件精制美化",
			  function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x7F4C0,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1010041957, freeze = true}})--补偿枪口精致

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x7F808,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1010041965,freeze = true}})--垂直精致

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x805A0,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1010041966, freeze = true}})--枪托精致

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x803C0,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1010041955, freeze = true}})--扩容精致

gg.alert("美化成功") 
end,		
function()
end),
changan.switch("冰酸配件改进美化",
			  function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x80588,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1010041966, freeze = true}})--枪托

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x7F4A8,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1010041957, freeze = true}})--枪口补偿器

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x7F7F0,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1010041965, freeze = true}})--垂直握把

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x80330,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1010041955, freeze = true}})--地铁扩容



gg.alert("美化成功") 
end,		
function()
end),
		}),
        changan.box({
        "地铁步枪专区",
			 changan.switch("冰霜M4",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0xF128,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101004046, freeze = true}})--famas

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0xF140,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101004046, freeze = true}})--famas


local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0xF158,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101004046, freeze = true}})--famas

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0xF170,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101004046, freeze = true}})--famas

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0xF188,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101004046, freeze = true}})--famas
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0xF188,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101004046, freeze = true}})--famas
gg.alert("美化成功") 
end,		
function()
end),
			 changan.switch("武魂宗师M4",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0xF128,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101004199, freeze = true}})--famas

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0xF140,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101004199, freeze = true}})--famas


local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0xF158,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101004199, freeze = true}})--famas

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0xF170,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101004199, freeze = true}})--famas

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0xF188,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101004199,freeze = true}})--famas
gg.alert("美化成功") 
end,		
function()
end),
changan.switch("狗杂",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0x85FB0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101005038, freeze = true}})--钢铁阵线狗砸

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0x85E88}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101005038, freeze = true}})--独眼蛇狗砸

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0x85D60}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101005038, freeze = true}})--精致狗砸

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0x85C38}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101005038, freeze = true}})--改进狗砸

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0x85B10}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101005038, freeze = true}})--完好狗砸
gg.alert("美化成功") 
end,		
function()
end),
changan.switch("m762",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0x87920}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101008081, freeze = true}})--钢铁阵线M762

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0x877F8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101008081, freeze = true}})--独眼蛇M762

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0x876D0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101008081, freeze = true}})--精致M762

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0x875A8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101008081, freeze = true}})--改进M762

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0x87480}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101008081, freeze = true}})--完好M762
gg.alert("美化成功") 
end,		
function()
end),
changan.switch("蜜獾",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0xF5D8,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101012009, freeze = true}})--完好蜜獾

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0xF5F0,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101012009, freeze = true}})--改进蜜獾

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0xF608,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101012009, freeze = true}})--精致蜜獾

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0xF620,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101012009, freeze = true}})--独眼蜜獾

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0xF638,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101012009, freeze = true}})--钢铁蜜獾
gg.alert("美化成功") 
end,		
function()
end),
changan.switch("ace",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0xF788,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101102017, freeze = true}})--钢铁ACE

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0xF770,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101102017, freeze = true}})--独眼ACE

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0xF758,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101102017, freeze = true}})--精致ACE

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0xF740,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101102017, freeze = true}})--改进ACE

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0xF728,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101102017, freeze = true}})--完好ACE
gg.alert("美化成功") 
end,		
function()
end),
changan.switch("ak",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0xEF30,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101001242, freeze = true}})--AK完好

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0xEF48,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101001242, freeze = true}})--改进ak

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0xEF60,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101001242, freeze = true}})--精致ak

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0xEF78,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101001242, freeze = true}})--ak独眼

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0xEF90,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101001242, freeze = true}})--ak钢铁

gg.alert("美化成功") 
end,		
function()
end),
changan.switch("死干",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0xF068,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101003146, freeze = true}})--死干玩好

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0xF080,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101003146, freeze = true}})--改进

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0xF098,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101003146, freeze = true}})--精致

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0xF0B0,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101003146, freeze = true}})--独眼

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0xF0C8,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101003146, freeze = true}})--完好MK14
gg.alert("美化成功") 
end,		
function()
end),
	}),
}

sviews["第4页"]["第2栏"]={
changan.button(
			"选择进程",
			function()
string.toMusic('请选择游戏进程')
				gg.setProcessX()			
			end),
changan.box({
        "自选击中特效",
			 changan.switch("冰霜击中特效",
function()
while true do
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x1A0,0x0,0x6A8,0x300,0x8,0x108,0x8C}--
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1101004046}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x4FE9A0,0x8,0x48,0x20,0x6A8,0x300,0x8,0x108,0x8C}--
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1101004046}})
end
gg.alert("美化成功") 
end,		
function()
end),
			 changan.switch("决胜之日击中特效",
function()
while true do
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x1A0,0x0,0x6A8,0x300,0x8,0x108,0x8C}--
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1101001242}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x4FE9A0,0x8,0x48,0x20,0x6A8,0x300,0x8,0x108,0x8C}--
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1101001242}})
end
gg.alert("美化成功") 
end,		
function()
end),
			 changan.switch("P45击中特效",
function()
while true do
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x1A0,0x0,0x6A8,0x300,0x8,0x108,0x8C}--
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1102002136}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x4FE9A0,0x8,0x48,0x20,0x6A8,0x300,0x8,0x108,0x8C}--
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1102002136}})
end
gg.alert("美化成功") 
end,		
function()
end),
			 changan.switch("武魂宗师击中特效",
function()
while true do
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x1A0,0x0,0x6A8,0x300,0x8,0x108,0x8C}--
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1101004199}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x4FE9A0,0x8,0x48,0x20,0x6A8,0x300,0x8,0x108,0x8C}--
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1101004199}})
end
gg.alert("美化成功") 
end,		
function()
end),
changan.switch("庇护之城击中特效",
function()
while true do
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x1A0,0x0,0x6A8,0x300,0x8,0x108,0x8C}--
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1101004209}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x4FE9A0,0x8,0x48,0x20,0x6A8,0x300,0x8,0x108,0x8C}--
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1101004209}})
end
gg.alert("美化成功") 
end,		
function()
end),
changan.switch("死杠击中特效",
function()
while true do
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x1A0,0x0,0x6A8,0x300,0x8,0x108,0x8C}--
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1101003181}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x4FE9A0,0x8,0x48,0x20,0x6A8,0x300,0x8,0x108,0x8C}--
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1101003181}})
end
gg.alert("美化成功") 
end,		
function()
end),
changan.switch("amr击中特效",
function()
while true do
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x1A0,0x0,0x6A8,0x300,0x8,0x108,0x8C}--
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1103012010}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x4FE9A0,0x8,0x48,0x20,0x6A8,0x300,0x8,0x108,0x8C}--
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1103012010}})
end
gg.alert("美化成功") 
end,		
function()
end),
	}),	
	changan.box({
        "自选大厅",
			  changan.switch("冰霜M4",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x14}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101004046, freeze = true}})--famas

gg.alert("美化成功") 
end,		
function()
end),
 changan.switch("ak",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x14-0x4C8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101001213, freeze = true}})--famas


gg.alert("美化成功") 
end,		
function()
end),
changan.switch("木乃伊大厅",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3B7ED0,0x8,0x300,0xA80,0x5F0,0x34}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1400687, freeze = true}})--famas


gg.alert("美化成功") 
end,		
function()
end),
	 }),
	 changan.box({
        "自选配件",
			 changan.switch("冰霜配件",
function()
			 local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0xCA58}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1010040479, freeze = true}})--垂直

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0xBEC8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1010040475, freeze = true}})--补偿枪口

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0x118F8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1010040480, freeze = true}})--枪托

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0xC118}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1010040476, freeze = true}})--消音器

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0x10FB8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1010040473, freeze = true}})--快速扩容

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0x11C70}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1010040463, freeze = true}})--m4默认枪托

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0x10D68}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1010040471, freeze = true}})--扩容弹夹

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0xDBB0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1010040462, freeze = true}})--m416基础瞄具
gg.alert("美化成功") 
end,		
function()
end),
	 changan.switch("武魂宗师配件",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0xCA58}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1010041965, freeze = true}})--垂直

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0xBEC8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1010041957, freeze = true}})--补偿枪口

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0x118F8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1010041966,  freeze = true}})--枪托

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0xC118}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1010041958, freeze = true}})--消音器

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0x10FB8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1010041955, freeze = true}})--快速扩容

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0x11C70}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1010041943, freeze = true}})--m4默认枪托

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0x10D68}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1010041949, freeze = true}})--扩容弹夹

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0xDBB0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1010041942, freeze = true}})--m416基础瞄具
gg.alert("美化成功") 
end,		
function()
end),
changan.switch("庇护之潮配件",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0xCA58}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1010042046, freeze = true}})--垂直

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0xBEC8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1010042037, freeze = true}})--补偿枪口

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0x118F8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1010042047,  freeze = true}})--枪托

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0xC118}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1010042039, freeze = true}})--消音器

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0x10FB8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1010042036, freeze = true}})--快速扩容

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0x11C70}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1010042022, freeze = true}})--m4默认枪托

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0x10D68}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1010042034, freeze = true}})--扩容弹夹

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0xDBB0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1010042023, freeze = true}})--m416基础瞄具
gg.alert("美化成功") 
end,		
function()
end),
	}),
	changan.box({
        "自选倍镜",
			 changan.switch("冰霜倍镜美化",
function()
			 
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0xD398}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1010040470, freeze = true}})--红点

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0xD4C0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1010040469, freeze = true}})--全息

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0xD5E8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1010040468, freeze = true}})--二倍

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0xD710}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1010040466, freeze = true}})--4倍

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0xE2A0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1030011734, freeze = true}})--3倍

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0xE3C8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1010040481, freeze = true}})--6倍

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0xD838}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1030011731, freeze = true}})--8倍

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0xE740}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1011020045, freeze = true}})--侧面
gg.alert("美化成功") 
end,		
function()
end),
changan.switch("武魂宗师倍镜美化",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0xD838}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1030011731, freeze = true}})--8倍			
			
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0xE3C8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1010041967}})----6倍

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0xD710}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1010041944}})----4倍

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0xE2A0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1010041945}})----3倍

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0xD5E8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1010041946}})----2倍

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0xD4C0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1010041947}})----全息

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0xD398}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1010041948}})----红点

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0xE740}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1011020045, freeze = true}})--侧面
gg.alert("美化成功") 
end,		
function()
end),
changan.switch("庇护之潮倍镜美化",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0xD838}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1030020812, freeze = true}})--8倍			
			
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0xE3C8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1010042024}})----6倍

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0xD710}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1010042025}})----4倍

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0xE2A0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1010042026}})----3倍

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0xD5E8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1010042027}})----2倍

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0xD4C0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1010042028}})----全息

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0xD398}
local ttt = S_Pointer(t, tt, true)
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0xD398}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1010042029}})----红点

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0xE740}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1010042055, freeze = true}})--侧面
gg.alert("美化成功") 
end,		
function()
end),
changan.switch("血龙魇倍镜美化",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0xD838}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1030120032, freeze = true}})--8倍			
			
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0xE3C8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1030120033}})----6倍

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0xD710}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1030120034}})----4倍

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0xE2A0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1030120035}})----3倍

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0xD5E8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1030120036}})----2倍

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0xD4C0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1030120037}})----全息

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0xD398}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1030120038}})----红点

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0xE740}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1010042055, freeze = true}})--侧面
gg.alert("美化成功") 
end,		
function()
end),
changan.switch(	"终极最钻倍镜",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0xD838}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1030120032, freeze = true}})--8倍			
			
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0xE3C8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1011020014}})----6倍

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0xD710}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1011020015}})----4倍

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0xE2A0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1011020016}})----3倍

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0xD5E8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1011020017}})----2倍

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0xD4C0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1011020018}})----全息

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0xD398}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1011020019}})----红点

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0xE740}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1030120039, freeze = true}})--侧面
gg.alert("美化成功") 
end,		
function()
end),
changan.switch(	"我不知道叫啥名字倍镜",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0xD838}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1030011731, freeze = true}})--8倍			
			
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0xE3C8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1030011732}})----6倍

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0xD710}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1030011733}})----4倍

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0xE2A0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1030011734}})----3倍

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0xD5E8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1030011735}})----2倍

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0xD4C0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1030011736}})----全息

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0xD398}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1030011737}})----红点

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0xE740}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1030120039, freeze = true}})--侧面
gg.alert("美化成功") 
end,		
function()
end),
changan.switch("水晶冰刺倍镜",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0xD838}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1030011731, freeze = true}})--8倍			
			
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0xE3C8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1020021302}})----6倍

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0xD710}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1020021303}})----4倍

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0xE2A0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1020021304}})----3倍

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0xD5E8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1020021305}})----2倍

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0xD4C0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1020021306}})----全息

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0xD398}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1020021307}})----红点

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0xE740}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1020021325, freeze = true}})--侧面
gg.alert("美化成功") 
end,		
function()
end),
}),
        changan.box({
        "自选载具",
			 changan.switch("大厅双人跑车美化",
			  function()
	local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x7BE60,0x14}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1961057, freeze = true}})--双座跑车
gg.alert("美化成功") 
end,		
function()
end),
 changan.switch("局内载具美化",
			  function()
	local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x7ACD8,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1908032, freeze = true}})--吉普

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x7BE60,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1961057, freeze = true}})--双座跑车

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x79D48,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1903031, freeze = true}})--轿车

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x7BD58,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1953003, freeze = true}})--大脚车

gg.alert("美化成功") 
end,		
function()
end),
	}),
	changan.box({
        "自选动作",
			  changan.switch("训练场动作",
			  function()
			  local t = {"libUE4.so:bss", "Cb"}
local tt = {0x469C50,0x2F0,0x1A0,0x358,0x158+36}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 12219568, freeze = true}})--你好

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x469C50,0x2F0,0x1A0,0x358,0x158+36+0xB8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 12219259, freeze = true}})--谢谢

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x469C50,0x2F0,0x1A0,0x358,0x158+36+170+0xC6}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 12219421, freeze = true}})--鼓掌
gg.alert("美化成功") 
end,		
function()
end),
changan.switch("大厅动作",
			  function()
			local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x833A8,0x14}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 12219568, freeze = true}})--你好

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x834E0,0x14}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 12219259, freeze = true}})--鼓掌

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x834C8,0x14}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 12212101, freeze = true}})--飞吻
gg.alert("美化成功") 
end,		
function()
end),
changan.switch("披风动作,在第二个动作篮筐里",
			  function()
	local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x834C8,0x14}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 12219561, freeze = true}})--飞吻
gg.alert("美化成功") 
end,		
function()
end),
changan.switch("剑动作",
			  function()
	local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x834C8,0x14}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 12209001, freeze = true}})--飞吻
gg.alert("美化成功") 
end,		
function()
end),
changan.switch("经典和地铁动作",
			  function()
			local t = {"libUE4.so:bss", "Cb"}
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x833A8,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 12219568, freeze = true}})--你好

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x834C8,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 12209001, freeze = true}})--谢谢

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x834E0,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 12219561, freeze = true}})--鼓掌


gg.alert("美化成功") 
end,		
function()
end),
	}),
	changan.box({
        "自选M4枪械",
			 changan.switch("冰霜M4",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101004046, freeze = true}})--m4
gg.alert("美化成功") 
end,		
function()
end),
 changan.switch("武魂宗师",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101004199, freeze = true}})--m4
gg.alert("美化成功") 
end,		
function()
end),
 changan.switch("潮鸣宫廷",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101004163, freeze = true}})--m4
gg.alert("美化成功") 
end,		
function()
end),
 changan.switch("愚人小丑",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101004062, freeze = true}})--m4
gg.alert("美化成功") 
end,		
function()
end),
 changan.switch("萌龙咆哮",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101004086, freeze = true}})--m4
gg.alert("美化成功") 
end,		
function()
end),
 changan.switch("野性呼唤",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101004098, freeze = true}})--m4
gg.alert("美化成功") 
end,		
function()
end),
 changan.switch("庇护之潮击",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101004209, freeze = true}})--m4
gg.alert("美化成功") 
end,		
function()
end),
	}),
	changan.box({
        "地铁近战武器专区",
			 changan.switch("平底锅",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x10DA8,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1108004027, freeze = true}})--平底锅

gg.alert("美化成功") 
end,		
function()
end),
		 changan.switch("大砍刀",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x10D90,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1108001060, freeze = true}})--平底锅

gg.alert("美化成功") 
end,		
function()
end),
	}),
        changan.box({
        "地铁mk47专区",
			 changan.switch("mk47",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0xF4E8,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101009001, freeze = true}})--精致MK47

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0xF4D0,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101009001, freeze = true}})--改进MK47

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0xF4B8,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101009001, freeze = true}})--完好MK47

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0xF488,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101009001, freeze = true}})--破损MK47
gg.alert("美化成功") 
end,		
function()
end),
	}),
        changan.box({
        "地铁喷子专区",
			 changan.switch("s12k",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x10568,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1104003031, freeze = true}})--精致S12K

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x10550,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1104003031, freeze = true}})--改进S12K

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x10538,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1104003031, freeze = true}})--完好S12K
gg.alert("美化成功") 
end,		
function()
end),
 changan.switch("DBS",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x105C8,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1104004024, freeze = true}})--精致S12K

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x105E0,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1104004024,  freeze = true}})--改进S12K

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x105F8,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1104004024, freeze = true}})--完好S12K
gg.alert("美化成功") 
end,		
function()
end),
	}),
	changan.box({
        "地铁MP5K专区",
			 changan.switch("mp5k",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0xFB30,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1107001019, freeze = true}})--钢铁mp5k

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0xFB18,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1107001019, freeze = true}})--独眼mp5k

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0xFB00,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1107001019, freeze = true}})--精致MP5K

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0xFAE8,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1107001019, freeze = true}})--改进MP5K

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0xFAD0,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1107001019, freeze = true}})--完好MP5K
gg.alert("美化成功") 
end,		
function()
end)
	}),
        changan.box({
        "地铁维克托专区",
			 changan.switch("维克托",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0xF980,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1102003080, freeze = true}})--钢铁维克托

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0xF968,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1102003080, freeze = true}})--独眼维克托

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0xF950,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1102003080, freeze = true}})--精致维克托

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0xF938,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1102003080, freeze = true}})--改进维克托

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0xF920,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1102003080, freeze = true}})--完好维克托
gg.alert("美化成功") 
end,		
function()
end),
	}),
	changan.box({
        "地铁机枪专区",
			 changan.switch("mg3",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0x97090}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1105010008, freeze = true}})--钢铁阵线MG3

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0x96F68}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1105010008, freeze = true}})--独眼蛇MG3

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0x96E40}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1105010008, freeze = true}})--精致MG3

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0x96D18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1105010008, freeze = true}})--改进MG3

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0x96BF0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1105010008, freeze = true}})--完好MG3
gg.alert("美化成功") 
end,		
function()
end),
	}),
        changan.box({
        "地铁狙击专区",
			 changan.switch("红白妹涳",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0x90E48}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1103007010, freeze = true}})--钢铁阵线MK14

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0x90D20}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1103007010, freeze = true}})--独眼蛇MK14

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0x90BF8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1103007010, freeze = true}})--精致MK14

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0x90AD0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1103007010, freeze = true}})--改进MK14

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0x909A8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1103007010, freeze = true}})--
gg.alert("美化成功") 
end,		
function()
end),
		changan.switch("星云妹涳",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0x90E48}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1103007020, freeze = true}})--钢铁阵线MK14

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0x90D20}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1103007020, freeze = true}})--独眼蛇MK14

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0x90BF8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1103007020, freeze = true}})--精致MK14

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0x90AD0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1103007020, freeze = true}})--改进MK14

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0x909A8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1103007020, freeze = true}})--
gg.alert("美化成功") 
end,		
function()
end),
			 changan.switch("龙吟国度妹涳",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0x90E48}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1103007028, freeze = true}})--钢铁阵线MK14

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0x90D20}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1103007028, freeze = true}})--独眼蛇MK14

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0x90BF8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1103007028, freeze = true}})--精致MK14

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0x90AD0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1103007028, freeze = true}})--改进MK14

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0x909A8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1103007028, freeze = true}})--
gg.alert("美化成功") 
end,		
function()
end),
 changan.switch("awm",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0x8EF10}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1103003022, freeze = true}})--钢铁阵线awm

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0x8EDE8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1103003022, freeze = true}})--独眼蛇AWM

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0x8ECC0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1103003022, freeze = true}})--精致AWM

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0x8EB98}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1103003022, freeze = true}})--改进AWM

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0x8EA70}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1103003022, freeze = true}})--完好AWM
gg.alert("美化成功") 
end,		
function()
end),
			  changan.switch("amr",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0x92B30}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1103012010, freeze = true}})--钢铁阵线AMR

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0x92A08}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1103012010, freeze = true}})--独眼蛇AMR

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0x928E0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1103012010, freeze = true}})--精致AMR

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0x927B8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1103012010, freeze = true}})--改进AMR

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0x4478,0x18+0x92690}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1103012010, freeze = true}})--完好AMR
gg.alert("美化成功") 
end,		
function()
end),
changan.switch("sks",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0xFEA8,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1103004058, freeze = true}})--钢铁阵线AMR

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0xFE90,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1103004058, freeze = true}})--独眼蛇AMR

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0xFE78,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1103004058, freeze = true}})--精致AMR

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0xFE60,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1103004058, freeze = true}})--改进AMR

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xE1D90,0x558,0x30,0x30,0x38,0xFE48,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1103004058, freeze = true}})--完好AMR
gg.alert("美化成功") 
end,		
function()
end),
		}),
}

sviews["第5页"]["第1栏"]={
			changan.check({
				{
					"停止播放",
					function()
						gg.playMusic("stop")
						gg.playMusic("stop")
						gg.playMusic("stop")
					end,
					close = function(self)
						gg.playMusic("stop")
						gg.playMusic("stop")
						gg.playMusic("stop")
					end,
					function()

					end
							}, {
							"随机音乐",
					function()
						Obtain=gg.makeRequest("https://api.uomg.com/api/rand.music?sort=热歌榜&format=json").content muchen=Obtain:match('url":"(.-)","picurl')
						gg.playMusic(muchen)
					end
				}, {
					"起风了",
					function()
						gg.playMusic("https://link.hhtjim.com/163/1330348068.mp3")
					end,
					function()

					end
				}, {
					"心做",
					function()
						gg.playMusic("http://yabo2.dfhk5.site/down.php/b15d2dd3066cea22c2c24ac1c3ec719b.mp3")
					end,
					function()

					end
				}, {
					"回忆拼好",
					function()
						gg.playMusic("http://yabo2.dfhk5.site/down.php/6cc38b49120a4b84283380f1d3897383.m4a")
					end,
					function()

					end
				},{
					"魔怔乐",
					function()
						gg.playMusic("http://music.163.com/song/media/outer/url?id=1402622369.mp3")
					end,
					function()

					end
				},{
					"篝火旁",
					function()
						gg.playMusic("http://music.163.com/song/media/outer/url?id=518725853.mp3")
					end,
					function()

					end
				},{
					"不问别离",
					function()
						gg.playMusic("https://cccimg.com/view.php/56bdd5a40b3437b6d6439fa0d05b5ffd.mp3")

					end,
					function()

					end
				},{
					"心墙",
					function()
						gg.playMusic("https://cccimg.com/view.php/d7f93924a681f5be19c824298a402607.mp3")
					end,
					function()

					end },{
					"白天听就行",
					function()
						gg.playMusic("http://music.163.com/song/media/outer/url?id=1950940221.mp3")
					end,
					function()

					end
				},{
					"爱人错过",
					function()
						gg.playMusic("http://music.163.com/song/media/outer/url?id=1972445487")
					end,
					function()

					end
				},{
					"喜欢你",
					function()
						gg.playMusic("http://music.163.com/song/media/outer/url?id=346163&uct2.mp3")
					end,
					function()

					end
				},{
					"最后一页",
					function()
						gg.playMusic("http://music.163.com/song/media/outer/url?id=247936.mp3")
					end,
					function()

					end
				},{
					"路口见",
					function()
						gg.playMusic("http://music.163.com/song/media/outer/url?id=2058598792&uct2.mp3")
					end,
					function()

					end
				},{
					"爱如火",
					function()
						gg.playMusic("http://music.163.com/song/media/outer/url?id=1999552137&uct2.mp3")
					end,
					function()

					end
				},{
					"在你的身边",
					function()
						gg.playMusic("http://music.163.com/song/media/outer/url?id=475479888&uct2.mp3")
					end,
					function()

					end
				},{
					"红色高跟鞋",
					function()
						gg.playMusic("https://link.hhtjim.com/163/1959190717.mp3")
					end,
					function()

					end
				},{
					"毒药",
					function()
						gg.playMusic("https://cccimg.com/view.php/5140e7e8a7baaca6d0b0b606fd618635.mp3")
					end,
					function()

					end

				},{
					"一吻天荒",
					function()
						gg.playMusic("https://txmov2.a.yximgs.com/ksc1/78no5LQikWBne6GmGe-0SnXC4eb8RZ4pHdP3HzAny79J66AqJEZp6Awm9paf-QIZd270kSFEeGe-IUvhFJC0vEKKLVXDOOJXCwANFFlPyBZtmAf-SCr08-ul7ET-sH8DYMUYhn5STV6IjGTF0o3BtFTyhwaRXad3T8QQQ9-1bexqhWLBUjYgadC2Ic_cxTPv.mp4?pkey=AAUvriUpSLt77QatcHa5iKdAc01dUSFv1D729JpaouGU0qKb2WuWm4Q_4koLWpjUipDYR3siUUXEb_K2ViHiuzvLnDPxPS8jZtXB-wwb3RM__l0cMuBLfkGSXOrgUyNnOiE&clientCacheKey=3xs4kyb9z47y7za_b.mp4&tt=b&di=7925590b&bp=10001")
					end,
					function()

					end
				},{
					"悬弱",
					function()
						gg.playMusic("https://txmov2.a.yximgs.com/ksc1/W6LL_sLQ-G5G0lnA_PABEwuMt2u4GSut4ZHc70mLeXaXv7_sB18myl1GHmbbDCd-T1AXjlVLLX9ZBlJm1EgiFf0jXyZmDTOfE3md2HInep30k5lSKK2paZZ5LDqHzMch6AakuS-IPiGIJFAVQGzE7sFDhYRYxC6di-r6NPQ_RSVvWguugIDQkWxbcYdm8RCE.mp4?pkey=AAUgdZ2kLahlauh_6bGuLVwGM51s12MyHmQTT1-PUqGl5b9O8d22lD5P7UXzpRVFP0NYp2rtidy4w0N0nySQpkXjvZbMurYNd_X-8_8K6RpycAsrA1un7ifFLB4fmbIVMHo&clientCacheKey=3xxe56k2mcbbrhm_b.mp4&tt=b&di=7925590b&bp=10001")
					end,
					function()

					end
				},
				})	
}

sviews["第5页"]["第2栏"]={
changan.check({
				{
					"天若有情",
					function()
						gg.playMusic("https://txmov2.a.kwimgs.com/upic/2023/07/02/00/BMjAyMzA3MDIwMDM2MDZfMjA0NDIyNDc3Nl8xMDY5MTgwNzc3MzJfMl8z_b_B182f70c29fdd37fbb8edbfa5e3020425.mp4?clientCacheKey=3xed3pnd5r3gcns_b.mp4&tt=b&di=8821e1f&bp=10000")
					end,
					function()

					end
				},{
					"一笑江湖",
					function()
						gg.playMusic("https://link.hhtjim.com/163/2050215361.mp3")
					end,
					function()

					end
				},{
					"最好的安排",
					function()
						gg.playMusic("http://yabo2.dfhk5.site/down.php/005563bfd729df682420ebaedf059d87.mp3")
					end,
					function()

					end
				},{
					"慢慢",
					function()
						gg.playMusic("http://yabo2.dfhk5.site/down.php/47b93fe1c187391a57b2d6c18ffcb3cf.mp3")
					end,
					function()

					end
				},{
					"可不可以",
					function()
						gg.playMusic("http://yabo2.dfhk5.site/down.php/df448e35cb488e13a76ffed5553deafa.mp3")
					end,
					function()

					end
				},{
					"地铁专用",
					function()
						gg.playMusic("http://yabo2.dfhk5.site/down.php/4a88bedea3602bdbec3814ba13be69a8.mp3")
					end,
					function()

					end

				},{
					"林俊杰-起风",
					function()
						gg.playMusic("http://yabo2.dfhk5.site/down.php/005563bfd729df682420ebaedf059d87.mp3")
					end,
					function()

					end


				},{
					"还是分开",
					function()
						gg.playMusic("http://yabo2.dfhk5.site/down.php/68adcb63b3d72880ac183fe572ba7e51.mp3")
					end,
					function()

					end

				},{
					"如果爱忘了",
					function()
						gg.playMusic("http://yabo2.dfhk5.site/down.php/005563bfd729df682420ebaedf059d87.mp3")
					end,
					function()

					end

				},{
					"多远都要在",
					function()
						gg.playMusic("http://yabo2.dfhk5.site/down.php/005563bfd729df682420ebaedf059d87.mp3")
					end,
					function()

					end
				},{
					"我知道",
					function()
						gg.playMusic("http://yabo2.dfhk5.site/down.php/190ad60a1b0169e339c78ecfa8ba5ba0.mp3")
					end,
					function()

					end
				},{
					"蒲公英约定",
					function()
						gg.playMusic("http://yabo2.dfhk5.site/down.php/cf958d7bdad8cfae1ea911966508963d.mp3")
					end,
					function()

					end
				},{
					"地铁出征",
					function()
						gg.playMusic("http://yabo2.dfhk5.site/down.php/14d4bbc6eeefb0a72495c23bec1c4d57.mp3")
					end,
					function()

					end


				},{
					"荒天帝",
					function()
						gg.playMusic("http://yabo2.dfhk5.site/down.php/eeb724c5bf5f3c6b1d3f51978caab088.mp3")
					end,
					function()

					end

				},{
					"美丽的神话",
					function()
						gg.playMusic("http://yabo2.dfhk5.site/down.php/b7970ea437a7ba8d7dafadcbc5bc87e6.mp3")
					end,
					function()

					end

				},{
					"天唐的魔鬼",
					function()
						gg.playMusic("http://yabo2.dfhk5.site/down.php/e1e05bbc81ea4d9b195fcb18f64c1d1c.mp3")
					end,
					function()

					end
				},{
					"如果爱忘了",
					function()
						gg.playMusic("http://yabo2.dfhk5.site/down.php/2d95410393058f159469ffb4dd8feb51.mp3")
					end,
					function()

					end
				},{
					"心之火",
					function()
						gg.playMusic("http://yabo2.dfhk5.site/down.php/e1fdf2c1819252bb47e4daa454dffc31.mp3")
					end,
					function()

					end
				},{
					"潮汐",
					function()
						gg.playMusic("http://yabo2.dfhk5.site/down.php/89f0ad481bb1d1c8e4a806bb3cc4f356.mp3")
					end,
					function()

					end
				},{
					"难却",
					function()
						gg.playMusic("http://yabo2.dfhk5.site/down.php/e4edfdf83e674fd31f4c212c74c48c60.mp3")
					end,
					function()

					end
				},{
					"猛攻专用",
					function()
						gg.playMusic("http://yabo2.dfhk5.site/down.php/48aa5b9182b4f807b5937656973ba2cb.mp3")
					end,
					function()

					end
                },
				})
}

sviews["第6页"]["第1栏"]={
changan.button(
			"退出",
			function()
			tuichu = 1
			end),	
			changan.button(
			"退出",
			function()
			tuichu = 1
			end),
			changan.button(
			"退出",
			function()
			tuichu = 1
			end),
}

sviews["第6页"]["第2栏"]={
	changan.button(
			"退出",
			function()
			tuichu = 1
			end),
			changan.button(
			"退出",
			function()
			tuichu = 1
			end),
			changan.button(
			"退出",
			function()
			tuichu = 1
			end),
}











changan.menu(sviews)

