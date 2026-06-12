
-- 把以上代码复制到你脚本最前面即可


----------------------------------------动态基址--------------------------------------
gg.setConfig("隐藏辅助", 23)
gg.setConfig("运行守护", 3)
gg.setConfig("冻结间隔", 0)
gg.setConfig("快速冻结", 2)










function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "地址成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "失败") end end end end
--仿xj写法配置

function xqmnb(Search,Modification)
gg.clearResults() gg.setRanges(Search[1].memory) gg.searchNumber(Search[3].value,Search[3].type,false,536870912,0,-1) if gg.getResultCount()==0 then gg.toast(Search[2].name..'开启失败')  return end local Result=gg.getResults(gg.getResultCount()) local sum for index=4,#Search do  sum=0 for i=1,#Result do  if gg.getValues({{address=Result[i].address+Search[index].offset,flags=Search[index].type}})[1].value~=Search[index].lv then Result[i].Usable=true  sum=sum+1 end  end  if sum==#Result then gg.toast(Search[2].name..'开启失败') return end end  local Data,Freeze,Freezes={},{},0  sum=0 for index,value in ipairs(Modification)do for index=1,#Result do if not Result[index].Usable then  local Value={address=Result[index].address+value.offset,flags=value.type,value=value.value,freeze=true} if value.freeze then Freeze[#Freeze+1]=Value Freezes=Freezes+1 else Data[#Data+1]=Value  end  sum=sum+1 end end end gg.setValues(Data) gg.addListItems(Freeze)  if Freezes==0 then gg.toast(Search[2].name..'开启成功,共修改'..sum..'条数据') else gg.toast(Search[2].name..'开启成功,共修改'..sum..'条数据,冻结'..Freezes..'条数据') end gg.clearResults() end



-- 读取内存地址的函数
function readPointer(name, offset, i)
local re = gg.getRangesList(name)  local x64 = gg.getTargetInfo().x64  local va = {[true]=32, [false]=4}  if re[i or 1] then local addr = re[i or 1].start + offset[1]  for i = 2, #offset do addr = gg.getValues({{address=addr, flags=va[x64]}})  if not x64 then addr[1].value = addr[1].value & 0xFFFFFFFF end addr = addr[1].value + offset[i] end return addr end end
-- 修改内存地址的函数
function gg.edits(addr, Table, name)
local Table1 = {{}, {}}  for k, v in ipairs(Table) do local value = {address = addr+v[3], value = v[1], flags = v[2], freeze = v[4]} if v[4] then Table1[2][#Table1[2]+1] = value else Table1[1][#Table1[1]+1] = value end end gg.addListItems(Table1[2]) gg.setValues(Table1[1]) gg.toast((name or "") .. "开启成功, 共修改"..#Table.."个值") end

local a = gg.makeRequest("http://wp.gglua.cc/down.php/8191a74791d3ff1bf194bb5ceb02daf3.txt").content
function setvalue(address,flags,value)  local refinevalues={}  refinevalues[1]={}  refinevalues[1].address=address  refinevalues[1].flags=flags  refinevalues[1].value=value  gg.setValues(refinevalues)  end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
--记得放在第一行哦
function HuLi(Nc,Type,Search,Write) gg.clearResults() gg.setRanges(Nc) gg.setVisible(false) gg.searchNumber(Search[1][1],Type) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][2] if(count>0)then for i,v in ipairs(result)do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2]-base local num=Search[k][1] for i,v in ipairs(result)do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=v.flags end tmp=gg.getValues(tmp) for i,v in ipairs(tmp)do if(tostring(v.value)~=tostring(num))then result[i].isUseful=false end end end for i,v in ipairs(result)do if(v.isUseful)then data[#data+1]=v.address end end if(#data>0)then gg.toast("\n🚬️检测到"..#data.."条漏洞\n🛠️开始进行修改") local t={} local base=Search[1][2] for i=1,#data do for k,w in ipairs(Write)do offset=w[2]-base t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=Type t[#t].value=w[1] if(w[3]==true)then local item={} item[#item+1]=t[#t] item[#item].freeze=true gg.addListItems(item) end end end gg.setValues(t) gg.sleep(400) gg.toast("\n🚬"..Name.."成功\n🛠共修改"..#t.."数据") else gg.toast("\n❌"..Name.."\n❌未找到游戏漏洞") return false end else gg.toast("\n❌"..Name.."\n❌未找到游戏漏洞") return false end end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end

function PS() end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值4,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end

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
	gg.toast((name or "") .. "开启成功, 共修改" .. #Table .. "个值")
end
function LSQ_Chain(so, offset, format, value, type, Function)--模块设置, 偏移量, 功能参数, 17024, 4, 功能
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
    print("功能开启失败原因: 未找到静态头")
    return os.exit()
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


-----------------------------------------遍历--------------------------------------
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
	gg.toast((name or "") .. "开启成功, 共修改" .. #Table .. "个值")
end
function LSQ_Chain(so, offset, format, value, type, Function)--模块设置, 偏移量, 功能参数, 17024, 4, 功能
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
    print("功能开启失败原因: 未找到静态头")
    return os.exit()
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
-----------------------------------------配置--------------------------------------


-----------------------------------------静态基址--------------------------------------
function PS() end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值4,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
-----------------------------------------静态基址--------------------------------------


-----------------------------------------动态基址--------------------------------------
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

	function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
	
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
local c1
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
	gg.toast((name or "") .. "开启成功, 共修改" .. #Table .. "个值")
end
function LSQ_Chain(so, offset, format, value, type, Function)--模块设置, 偏移量, 功能参数, 17024, 4, 功能
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
    print("功能开启失败原因: 未找到静态头")
    return os.exit()
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


-----------------------------------------静态基址--------------------------------------
function PS() end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值4,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
-----------------------------------------静态基址--------------------------------------


-----------------------------------------动态基址--------------------------------------
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

-----------------------------------------遍历--------------------------------------
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
	gg.toast((name or "") .. "开启成功, 共修改" .. #Table .. "个值")
end
function LSQ_Chain(so, offset, format, value, type, Function)--模块设置, 偏移量, 功能参数, 17024, 4, 功能
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
    print("功能开启失败原因: 未找到静态头")
    return os.exit()
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
-----------------------------------------配置--------------------------------------

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
-----------------------------------------音乐--------------------------------------




yunzhu = {}
YoYoImpl = luajava.getYoYoImpl()
vibra = context:getSystemService(Context.VIBRATOR_SERVICE)
function guid()
seed = {'e','1','2','3','4','5','6','7','8','9','a','b','c','d','e','f'}
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

function 获取图片(txt)
gg.toast("正在加载资源...")
txt = string.url(txt,"de")
txt = file.checkUrl(txt)
return luajava.getBitmapDrawable(txt)
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

function changebg()
	luajava.runUiThread(function()

	if nowbg<#bglist then
		nowbg=nowbg+1
	else
		nowbg=1
	end 
	beij=bglist[nowbg]
	ckou:setBackground(beij)
	end)
end

function launch(pkg)
隐藏()
gg.setProcess(pkg)
gg.sleep(500)
if tostring(gg.getTargetPackage()) == pkg then
return 0
end
print(gg.isPackageInstalled(pkg))
app.start(pkg)
jci = 0
while true do
gg.setProcess(pkg)
gg.sleep(400)
if tostring(gg.getTargetPackage()) == pkg then
gg.alert("启动成功")
break
else
jci = jci+1
if jci == 14 then
gg.alert("自动获取进程失败\n请手动选择游戏进程")
gg.setProcessX()
break
end
end
gg.sleep(100)
end
end












function particlelz()
local webView = luajava.webView(function(webView)
	webView:loadData([[
	<!DOCTYPE html>
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <style>
    *{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins', sans-serif;
}
section{
  position: relative;
  height: 100vw;
  width: 100vw;
  overflow: hidden;
  display: flex;
  align-items: center;
  justify-content: center;
}
section .wave{
  position: absolute;
  left: 0;
  height: 100vw;
  width: 100vw;
  background: #4972FF;
}

section .wave span{
  position: absolute;
  width: 230vw;
  height: 230vw;
  top:0;
  left: 50%;
  transform: translate(-50%, -75%);
  background: #000;
}
section .wave span:nth-child(1) {
  animation: animate 5s linear infinite;
  border-radius: 40%;
  background: rgba(255,255,255, 1);
}
section .wave span:nth-child(2) {
  animation: animate 10s linear infinite;
  border-radius: 35%;
  background: rgba(255,255,255, 0.5);
}
section .wave span:nth-child(3) {
  animation: animate 15s linear infinite;
  border-radius: 37.5%;
  background: rgba(255,255,255, 0.5);
}

@keyframes animate{
  0%{
    transform: translate(-50%, -75%) rotate(0deg);
  }
  100%{
    transform: translate(-50%, -75%) rotate(360deg);
  }
}

section .content{
  position: relative;
  z-index: 1;
  color: #f5f5f5;
  font-size: 3em;
}
    </style>
  </head>
  <body>
    <section>
      <div class="wave">
        <span></span>
        <span></span>
        <span></span>
      </div>
      <div class="content">
        <h2></h2>
      </div>
    </section>
  

</body></html>
]], 'text/html', 'UTF-8')
	webView:setBackgroundColor(0x0)
	webView:setVerticalScrollBarEnabled(false)
		webView:setHorizontalScrollBarEnabled(false)
		webView:setScrollContainer(false)
end)
return webView
end
function particle(text1,text2,text3,color)
local webView = luajava.webView(function(webView)
webView:loadData([[
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <title>]]..text1..[[</title>
 
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
    background-color: 0x33000000;
}
h1{
    /* 文本透明 */
    color: transparent;
    font-size: 18px;
    letter-spacing: 5px;
    /* 渐变背景 */
    background: linear-gradient(to right,]]..color[1]..[[,]]..color[2]..[[,]]..color[3]..[[);
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
    <h1>]]..text2..[[<br>  <p>]]..text3..[[</p></h1>
    

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

vibra = context:getSystemService(Context.VIBRATOR_SERVICE)
yunzhu = {}
local yunzhu = yunzhu
local android = import('android.*')
function write(fileName, content)
file.write(fileName, content)
end
function panduan(rec) fille,err = io.open(rec) if fille == nil then return false else return true end end
function checkimg(tmp)
if panduan("/sdcard/MT全防/图片/"..tmp) ~= true then
gg.toast("正在下载资源"..tmp.."\n请耐心等待")
download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..tmp,"/sdcard/MT全防/图片/"..tmp)
end
end
file.getdirs("/sdcard/MT全防/状态读取/")
ckimg = {
	"quarkhome",
	"quarkconf",
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
jianbian6:setStroke(1,"0xffffffff")--边框宽度和颜色
return jianbian6
end
slctb = getHorizontalBG({0xaad7d7d7,0xaad7d7d7},35)
slcta = getHorizontalBG({0xaad7d7d7,0xaad7d7d7},35)
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
	color = "#ffffff",
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
yunzhu.menu = function(sview)
if isswitch then
return false
end

isswitch = true
cebian = {
	LinearLayout,
	id = "侧边",
	layout_height = "wrap_content",
	layout_width = "108dp",
	orientation = "vertical",
	gravity = "center_horizontal",
}
for i = 1,#stab do
cebian[#cebian+1] = {
	LinearLayout,
	id = "jm"..i,
	layout_height = "30dp",
	layout_width = "88dp",
	layout_marginTop = "3dp",
	layout_marginBottom = "3dp",
	layout_marginRight = "10dp",
	layout_marginLeft = "10dp",
	background = getSelector(),
	onClick = function() 切换(i) end,
	{
		TextView,
		text = stab[i],
		gravity = "center",
		textSize = "12sp",
		textColor = "#000000",
		layout_height = "30dp",
		layout_width = "88dp",
	}}
end
cebian = luajava.loadlayout(
	{
		ScrollView,
		visibility = "gone",
		layout_height = "230dp",
		layout_width = "108dp",
		cebian
	})
for i = 1,#stab do
_ENV["layout"..i] = luajava.loadlayout({
	FrameLayout,
	layout_width = "275dp",
	layout_height = "235dp",
	visibility = "gone",
	orientation = "vertical",
	background=getHorizontalBG({0xaad7d7d7,0xaad7d7d7},35),
	{
		TextView,
		layout_width = "250dp",
		padding = {
			"10dp","10dp","10dp","2dp"
		},
		layout_height = "30dp",
		text = stab[i],
		textColor = "#000000",
		textSize = "14sp",
	},
	{
		ScrollView,
		fillViewport = "true",
--padding = "10dp",
		gravity = "center",
		layout_width = "350dp",
		layout_height = "200dp",
		orientation = "horizontal",
		{
			LinearLayout,
			id = "layoutm"..i,
			layout_marginRight = "5dp",
			layout_marginLeft = "5dp",
			layout_width = "270dp",
			orientation = "vertical",
			gravity = "center_horizontal",
		}
	}})
end

ck2={LinearLayout,
	orientation='vertical',
	{LinearLayout,
	id='ck2',
	visibility='gone',
				layout_height='30dp',
				layout_marginTop='3dp',
				layout_marginBottom='3dp',
				layout_marginLeft='3dp',
				layout_marginRight='3dp',
				layout_width='match_parent',
				
				background=getVerticalBG({0xaad7d7d7,0xaad7d7d7},20),
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
				}
			}
}
for i = 1,#stab do
ck2[#ck2+1] = _ENV["layout"..i]
end
ckou = {
		FrameLayout,
		orientation = "horizontal",
		padding = "0dp",
		visibility='gone',
		id = "dt",
		{LinearLayout,
			gravity='center',
			
			layout_height='300dp',
			layout_width='383dp',
			onTouch=hanshu,
			id='canv'
		},{
		LinearLayout,
		layout_height = "230dp",
		layout_width = "108dp",
		cebian,
		},
		{
		LinearLayout,
		layout_height = "wrap_content",
		layout_width = "wrap_content",
		layout_marginLeft ="108dp",
		ck2,
		},
	
}
ckou = luajava.loadlayout({
	LinearLayout,
	id = "chuangk",
	visibility = "visible",
	layout_width = "wrap_content",
	layout_height = "wrap_content",
	orientation = "vertical",
	{--顶部栏
		FrameLayout,
		id = "titlebar",
		visibility = "gone",
		orientation = "horizontal",
		padding = "2dp",
		layout_height="30dp",
		layout_width="fill_parent",
		background=getCorner({0xFFFFFFFF,0xFFFFFFFF,0xFFFFFFFF,0xFFFFFFFF},30,0,0xff0097FF,35,35,0,0),
		{
			ImageView,
			layout_gravity="center_vertical|left",
			src = 获取图片("http://xg.1919810.vip/down.php/2014c45d65e5288b016f1034eb25eb34.png"),
			padding="2dp",
			--visibility = "gone",
			layout_width = "30dp",
			layout_height = "30dp",
			gravity = "center",
			onClick = 隐藏,
			onTouch = hanshu,
		},{
			ImageView,
			layout_gravity="center_vertical",
			src = 获取图片("http://xg.1919810.vip/down.php/aec2140ec549c610424f91a7290e0a9a.png"),
			padding="2dp",
			layout_width = "30dp",
			layout_height = "30dp",
			gravity = "center",
			onClick = function() 切换(1) end,
			onTouch = hanshu,
			layout_marginLeft="40dp",
		},{ImageView,
			
			src = 获取图片("http://xg.1919810.vip/down.php/a86f01882d9fce77ff68e284e0c699e1.png"),
			padding="4dp",
			gravity="center",
			layout_gravity="center",
			layout_width="match_parent",
			layout_height="match_parent",
		},{
			ImageView,
			layout_gravity="center_vertical",
			src = 获取图片("http://xg.1919810.vip/down.php/2aefce715d8bbd7cf47fa39bf1d507d5.png"),
			padding="2dp",
			layout_width = "30dp",
			layout_height = "30dp",
			gravity = "center",
			onClick = function() 切换(1) end,
			onTouch = hanshu,
			layout_marginLeft="380dp",
		},{
			ImageView,
			layout_gravity="center|right",
			src = 获取图片("https://99778.cn:443/wp/view.php/636f6753bb73b262495946dfea32f6b2.png"),
			padding="2dp",
			layout_width = "25dp",
			layout_height = "25dp",
			gravity = "center",
			onClick = 隐藏,
			onTouch = hanshu,
			layout_marginRight="10dp",
		}
	},
	ckou})
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
		TextView,
		id = "control",
		text = xfcwz,
		textColor=xfcys,
		textSize=xfcsp,
		layout_width = "wrap_content",
		layout_height = "wrap_content",
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
canv:addView(particlelz())
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
function getseekgra()
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(10)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({
	0x6600c6ff,0x660072ff
})
jianbians:setStroke(2,"0xEEEEEEEE")--边框宽度和颜色

return ji*anbians
end
corbk = true
当前ui = 1
function 切换(x)
当前ui = x
luajava.runUiThread(function()
	for i = 1,#stab do
	_ENV["layout"..i]:setVisibility(View.GONE)
	end
	_ENV["layout"..当前ui]:setVisibility(View.VISIBLE)
	YoYoImpl:with("FadeIn"):duration(200):playOn(_ENV["layout"..当前ui])
	end)
end
显示 = 0
beij = luajava.loadlayout({
	GradientDrawable,
	color = "#EEEEEE",
	cornerRadius = 35
})
beij2 = luajava.loadlayout({
	GradientDrawable,
	color = "#001E1C27",
	cornerRadius = 10
})
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
function getTimeStamp(t)
local str = os.date("%m-%d %H:%M:%S",t)
return str
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
	if tonumber(tostring(cebian:getVisibility())) == 8.0 then
	control:setVisibility(View.GONE)
	显示 = 1
	ck2:setVisibility(View.VISIBLE)
	dt:setVisibility(View.VISIBLE)
	titlebar:setVisibility(View.VISIBLE)
	cebian:setVisibility(View.VISIBLE)
	YoYoImpl:with("SlideInDown"):duration(200):playOn(cebian)
	_ENV["layout"..当前ui]:setVisibility(View.VISIBLE)
	YoYoImpl:with("FadeIn"):duration(800):playOn(_ENV["layout"..当前ui])
	floatWindow:setBackground(beij)
	yunzhu.controlBig(floatWindow,500)
	else
		ck2:setVisibility(View.GONE)
		titlebar:setVisibility(View.GONE)
		dt:setVisibility(View.GONE)
	floatWindow:setBackground(beij2)
	control:setVisibility(View.VISIBLE) 显示 = 0
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


local function exit()
tuichu = 1
luajava.setFloatingWindowHide(false)

luajava.post(function()
	window:removeView(floatWindow)
	end)
end


setExitEvent(exit)
yunzhu.controlWater = function(control,time)
luajava.runUiThread(function()
	import "android.animation.ObjectAnimator"
	ObjectAnimator():ofFloat(control,"scaleX", {
		1, 0.8, 0.9, 1
	}):setDuration(time):start()
	ObjectAnimator():ofFloat(control,"scaleY", {
		1,0.8,0.9,1
	}):setDuration(time):start()
end) end
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
qhkai = 0
qiehuan = function()
if qhkai == 0 then
qhkai = 1
draw.remove()
gg.toast("已隐藏")
luajava.runUiThread(function()
	yunzhu.controlSmall(floatWindow,400)
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
	yunzhu.controlBig(floatWindow,400)
	end)

end
end
yunzhu.controlSmall = function(control,time)
luajava.runUiThread(function()
	import "android.animation.ObjectAnimator"
	ObjectAnimator():ofFloat(control,"scaleX", {
		1, 0.7, 0.4, 0
	}):setDuration(time):start()
	ObjectAnimator():ofFloat(control,"scaleY", {
		1, 0.7, 0.4, 0
	}):setDuration(time):start()
	end) end
yunzhu.controlBig = function(control,time)
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
name = name..guid()
_ENV[name] = "关"
if func1 == nil then func1 = function() end end
if func2 == nil then func2 = function() end end
if type(func1) == "function" then
return function()
namers = _ENV[name]
if namers ~= "开" then
luajava.runUiThread(function()
	yunzhu.controlWater(_ENV[nid],200)
	luajava.getIdValue(nid):setBackground(check2)
	luajava.getIdValue(nid.."k"):setVisibility(View.GONE)
	luajava.getIdValue(nid.."g"):setVisibility(View.VISIBLE)
	end)
_ENV[name] = "开"
vibra:vibrate(6)
pcall(func1)
else
	luajava.runUiThread(function()
	yunzhu.controlWater(_ENV[nid],200)
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
jianbians:setStroke(4,0xFFFFFFFF)--边框宽度和颜色
return jianbians
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
jianbians:setStroke(10,tmp3)--边框宽度和颜色
return jianbians
end
function getShape0(tmp0,tmp1,tmp2,tmp3)
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(tmp0)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors(tmp1)
jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
jianbians:setStroke(2,tmp3)--边框宽度和颜色
return jianbians
end

function getShape8()
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(10)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({
	0xff0044ff,0xddffffff,
})
jianbians:setOrientation(GradientDrawable.Orientation.BL_TR)
return jianbians
end


checkbg1 = getHorizontalBG({0xff000000,0xff000000},35)
checkbg2 = getHorizontalBG({0xff000000,0xff000000},35)
checkbg = getShape0(
	90,
	{
		0x00FF9DBC,0x00FF9DBC
	},
	4,0xff000000)
switches={}
function yunzhu.switch(name,func1,func2,miaoshu)
nid = name..guid()
local func = 开关3(name,func1,func2,nid)
if not name then name = "未设置" end
switches["1s"..nid] = luajava.loadlayout {
	FrameLayout,
	layout_width = '45dp',
	layout_marginRight = "10dp",
	layout_marginLeft = "-10dp",
	layout_height = '24dp',
	gravity = "center_vertical",
	padding = {
		"6dp","0dp","6dp","0dp"
	},
	{
		LinearLayout,
		layout_gravity = "left|center_vertical",
		id = luajava.newId(nid.."k"),
		background = checkbg1,
		onClick = function() luajava.newThread(function() func() end):start() end,
		layout_width = '14dp',
		layout_height = '14dp',
		elevation = "10dp",
	},
}
switches["2s"..nid] = luajava.loadlayout {
	FrameLayout,
	onClick = function() luajava.newThread(function() func() end):start() end,
	layout_width = '45dp',
	layout_marginRight = "10dp",
	layout_marginLeft = "-10dp",
	layout_height = '24dp',
	gravity = "center_vertical",
	padding = {
		"6dp","0dp","6dp","0dp"
	}
	, {
		LinearLayout,
		visibility = "gone",
		layout_gravity = "right|center_vertical",
		id = luajava.newId(nid.."g"),
		background = checkbg2,
		onClick = function() luajava.newThread(function() func() end):start() end,
		layout_width = '14dp',
		layout_height = '14dp',

		elevation = "10dp",
	}
}
rest = luajava.loadlayout({
	LinearLayout,
	elevation = "5dp",
	layout_width = 'fill_parent',
	layout_height = "38dp",
	gravity = "center_vertical",
	{
		LinearLayout,
		layout_width = 'fill_parent',
		layout_height = "30dp",
		gravity = "center_vertical",
		padding={"0dp","0dp","3dp","0dp"},
		background = getHorizontalBG({0xffffffff,0xffffffff},95),
		{
			TextView,
			gravity = "top",
			text = name,
			textColor = "#000000",
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
			layout_width = "130dp",
			layout_marginLeft = "-50dp",
			layout_weight = 1,
			textColor = "#777777",
		},
		{
			FrameLayout,
			background = checkbg,
			elevation = "10dp",
			onClick = function() luajava.newThread(function() func() end):start() end,
			layout_width = '45dp',
			layout_height = '24dp',
			gravity = "center",
			switches["1s"..nid],switches["2s"..nid]
		}}
})
return rest
end
function 开关3(name,func1,func2,nid)
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
vibra:vibrate(14)
luajava.runUiThread(function()
	luajava.getIdValue(nid.."k"):setVisibility(View.GONE)
	luajava.getIdValue(nid.."g"):setVisibility(View.VISIBLE)
--luajava.getIdValue(nid):setBackground(checkbga)
	end)
_ENV[name] = "开"
uiadtext(''..localname..' 已开启',"#161616")
pcall(func1)
else
	vibra:vibrate(14)
luajava.runUiThread(function()
	luajava.getIdValue(nid.."g"):setVisibility(View.GONE)
	luajava.getIdValue(nid.."k"):setVisibility(View.VISIBLE)
--luajava.getIdValue(nid):setBackground(checkbg)
	end)
_ENV[name] = "关"
uiadtext(' '..localname ..' 已关闭',"#161616")
pcall(func2)
end
end
end
end

function yunzhu.text(txt,color,size)
if not txt then txt = "未设置文字" end
if not color then color = "#545454" end
if not size then size = "18sp" end
return luajava.loadlayout(
	{
		TextView,
		text = txt,
		textSize = size,
		textColor = "#000000",
		layout_width = "wrap_content",
	})
end
function gang()
return luajava.loadlayout({
	LinearLayout,
	layout_width = "fill_parent",
	layout_height = "3dp",
	background = getShape8(),
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


function 开关2(name,func1,func2,nid)
if func1 == nil then func1 = "" end
if func2 == nil then func2 = "" end
if type(func1) == "function" then
return function()
namers = _ENV[name]
if namers ~= "开" then
luajava.runUiThread(function()
	luajava.getIdValue(nid):setBackground(luajava.getBitmapDrawable("/sdcard/MT全防/图片/check2"))
	end)
_ENV[name] = "开"
func1()
else
	luajava.runUiThread(function()
	luajava.getIdValue(nid):setBackground(luajava.getBitmapDrawable("/sdcard/MT全防/图片/check1"))
	end)
_ENV[name] = "关"
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
ttview:setBackground(luajava.getBitmapDrawable("/sdcard/MT全防/图片/hsj"))
else
	tview:setVisibility(View.GONE)
ttview:setBackground(luajava.getBitmapDrawable("/sdcard/MT全防/图片/sj"))
end
end
function yunzhu.box(views)
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
		background = "/sdcard/MT全防/图片/sj",
		layout_width = "13dp",
		layout_height = "13dp",
		layout_marginTop = "0dp",
	},
	{
		TextView,text = views[1],
		textSize = "13sp",
		layout_width = "220dp",
		textColor = "#545454",
		layout_gravity = "center",
		gravity = "center"
	}} else
	gg.alert("yunzhu.box第一个参数必须是string") os.exit()
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
function yunzhu.button(txt,func)
if not txt then txt = "未设置" end
return luajava.loadlayout(
	{
		LinearLayout,
		layout_width = 'fill_parent',
		layout_hight = "30dp", {
			LinearLayout,
			layout_width = "fill_parent",
			gravity = "center_horizontal",
			layout_marginTop = "5dp",
			layout_marginBottom = "5dp",
			background = getSelector3(),
			onClick = function() uiadtext('执行 '..txt,"#161616") luajava.newThread(function() pcall(func) end):start() end,
			{
				TextView,
--id = luajava.newId(tid),
				textColor = "#4DFFFF",
				text = txt,
				textSize = "16sp",
				layout_width = "wrap_content",
			},
		}})
end
print("本次运行包含套餐：个人版")


function huiz()
--绘制内容请写到这里面，否则会消失	

end

gg.prevent(3)
gg.ptrace(1)
	

图片1 = "http://baidu.com"


xfcwz="云烛"--悬浮窗文字
xfcys="#000000"--悬浮窗文字演示
xfcsp="25sp"--悬浮窗文字大小
	
stab = {
--菜单名字，添加即可加页数，需要与结尾配置表对应
"首页",
"防封",
"功能",
"美化",
"退出",
}




yunzhu.menu(
{
{
gang(),

yunzhu.text("\n","#FF00FFFF","10sp"),
particle("","测试","@MTQF886",{"#4A0075","#ffffff","#FF0100"}),
yunzhu.text("听与云与江","#FF00FFFF","10sp"),

yunzhu.button("选择进程",
function()
string.toMusic('请选择游戏进程')
gg.setProcessX()
end),
yunzhu.switch("使用须知",
function()
gg.alert("大厅第一套为ROOT防封四服可开 大厅二为框架防封只能玩日韩台湾越南服 ")
end,
function()
end,"使用必看"),



},{
--第二页
gang(),

yunzhu.button("选择进程",
function()
string.toMusic('请选择游戏进程')
gg.setProcessX()
end),
yunzhu.switch("LOGO防闪",
function()
local t = {"libanogs.so:bss", "Cb"}
local tt = {0x4E8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 64, freeze = true}})
string.toMusic('开启成功.')
end,
function()
end,""),

yunzhu.text("ROOT防封","#FF00FFFF","10sp"),

yunzhu.switch("腾讯过检测①",
function()

string.toMusic('开启成功')
end,
function()
end,"使用过检①必须开启"),
yunzhu.switch("大厅过检测①",
function()

end,
function()
end,"必须有ca内存"),

yunzhu.text("框架防封","#FF00FFFF","10sp"),

yunzhu.switch("腾讯过检测②",
function()

string.toMusic('开启成功')
end,
function()
end,"框架LOGO"),



yunzhu.switch("大厅过检测②",
function()
string.toMusic('开启时间较长请耐心等待')


string.toMusic('大厅过检测开启成功')
end,
function()
end,"日韩台过检"),



},{
--第三页
gang(),
yunzhu.switch("持枪聚点",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x20,0x3E0,0x7E0,0xBA0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 0}})
string.toMusic("基址聚点开启成功")
end,
function()
string.toMusic("无法关闭")
end,"安全功能"),

yunzhu.switch("持枪防抖",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x20,0x3E0,0x7E0,0xC74}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 0}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x20,0x3E0,0x7E0,0xC58}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 0}})
string.toMusic("基址防抖开启成功")	
end,
function()
string.toMusic("无法关闭")
end,"安全功能"),

yunzhu.switch("除雾",
function()
so=gg.getRangesList('libUE4.so')[1].start---除雾
py=0x7A4ACC0
setvalue(so+py,16, 1.41233867e-13)
string.toMusic("开启成功")	
end,
function()
string.toMusic("无法关闭")
end,"安全功能"),

yunzhu.switch("基址广角",
function()
local r = gg.prompt({'推荐1.7'}, {'1.4'}, {'text'})--广角
so=gg.getRangesList('libUE4.so')[1].start
py=0x32b1608
setvalue(so+py,16,r[1])
string.toMusic("基址广角开启成功")	
end,
function()

string.toMusic("关闭成功")
end,"安全功能"),



yunzhu.switch("掉血显示",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391e0,0x0,0x90,0x93c}--掉血提示
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 2, freeze = true}})--famas
string.toMusic("开启成功")	
end,
function()
string.toMusic("无法关闭")
end,"安全功能"),


yunzhu.switch("持枪午后",
function()
              string.toMusic("攀爬穿墙开启成功")
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391e0,0x0,0x2f0,0x1e0,0x2cc}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = 999999}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391e0,0x0,0x390,0x58,0x2cc}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = 999999}})
end,
function()
string.toMusic("无法关闭")
end,"安全功能"),

yunzhu.switch("持枪午后",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x20,0x3E0,0x7E0,0xB28}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 0}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x20,0x3E0,0x7E0,0xB2C}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 0}})
string.toMusic("开启成功")
end,
function()
string.toMusic("无法关闭")
end,"安全功能"),
yunzhu.switch("微加速",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x70BA98, 0x2B8, 0x664}--频道TYNB666666
--删了撕母
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = 999, freeze = true}})--频道TYNB666666
--删了撕母

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x70BAE8, 0x2C0, 0x664}--频道TYNB666666
--删了撕母
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = 999, freeze = true}})--频道TYNB666666
string.toMusic("开启成功")
end,
function()
string.toMusic("无法关闭")
end,"安全功能"),

},{
--第四页
gang(),

yunzhu.box({
"自改美化",
yunzhu.switch("自改动作",
function()
gg.setConfig("冻结间隔", 0)
gg.setConfig("快速冻结", 1)
local cfg_file = gg.EXT_FILES_DIR.."/"..gg.getFile():match("[^/]+$")..'(动作美化.).lua'
local chunk = loadfile(cfg_file)
local cfg = nil
if chunk ~= nil then
cfg = chunk()
end if cfg == nil then
cfg = {
12219502,12219619,2201201,true}
end
qing = gg.prompt({
"地狱正午动作",
"蓝色木乃伊动作",
"鼓掌",
},cfg,{

"text",
"text",
"text",
})
if qing == nil then else
gg.saveVariable(qing, cfg_file)
if qing[1] == true then xsnb1() end
a=0x0
while(a <=0xAF0)
do
a=a+0x10
mk=gg.getRangesList('libUE4.so')[1].start
add = RUI(RUI(RUI(RUI(RUI(mk + 0xC516A80) + 0x558) + a) + 0x30) + 0x38)--动态DD900
adpd = RUI(RUI(RUI(RUI(RUI(mk + 0xC516A80) + 0x558) + a) + 0x30) + 0x30) +0x18
if readD(adpd) == 1000 then
addListltems(add,4,0,false)
break
add=add
end
end
nmsl=0x4148
while(nmsl <=0x866E218)
do
nmsl=nmsl+0x18
addr=RUI(add+nmsl)
if readD(addr+0x58) == 2200101 then --AKM
setvalue(addr+0x18,4,qing[1])
end
if readD(addr+0x58) == 2200201 then --AKM
setvalue(addr+0x18,4,qing[2])
end
if readD(addr+0x58) == 2200301 then --AKM
setvalue(addr+0x18,4,qing[3])
string.toMusic('开启成功')
break
end
end
end
end,
function()
end,
""),	

yunzhu.switch("自改衣服",
function()
local cfg_file = "/storage/emulated/0/衣服配置.ini"
local chunk = loadfile(cfg_file)
local cfg = nil
if chunk ~= nil then
cfg = chunk()
end
if cfg == nil then
cfg = {1403119,40604012,1404207,1404160,405000,1501002009,0,true}
end
xj = gg.prompt({
"面部修改:",--1
"头发修改:",--2
"衣服修改",--3
"裤子修改:",--4
"鞋子修改:",--5
"背包修改:\n改0不显示",--6
"头盔修改:\n改0不显示",--7
},cfg,{"text","text","text", "text","text","text","text","text","text","text", "text","text","text","text","text"})
if xj == nil then else
gg.saveVariable(xj, cfg_file)
if xj[1] == true then xj1() end
if xj[2] == true then xj2() end
if xj[3] == true then xj3() end
if xj[4] == true then xj4() end
if xj[5] == true then xj5() end
if xj[6] == true then xj6() end
if xj[7] == true then xj7() end

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x38}
local ttt = S_Pointer(t, tt, true) gg.setValues({{address = ttt, flags = 4, value = xj[1]}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x70}
local ttt = S_Pointer(t, tt, true) gg.setValues({{address = ttt, flags = 4, value =xj[2]}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true) gg.setValues({{address = ttt, flags = 4, value =xj[3]}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x150}
local ttt = S_Pointer(t, tt, true) gg.setValues({{address = ttt, flags = 4, value = xj[4]}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x188}
local ttt = S_Pointer(t, tt, true) gg.setValues({{address = ttt, flags = 4, value = xj[5]}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x1C0}
local ttt = S_Pointer(t, tt, true) gg.setValues({{address = ttt, flags = 4, value = xj[6]}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x1F8}
local ttt = S_Pointer(t, tt, true) gg.setValues({{address = ttt, flags = 4, value = xj[7]}})
end
string.toMusic('开启成功')
end,
function()


end,
""),	



}),--box结尾
yunzhu.box({--box开头
"自选淘汰播报",--box名字

yunzhu.switch(
"自改播报",
function()
jr = gg.prompt({"AKM华丽浮雕击杀播报 1101001042 AKM怒海争锋击杀播报1101001063 AKM白虎咆哮击杀播报 1101001068 AKM冰霜核心击杀播报 1101001089 AKM积木龙骨击杀播报1101001103 AKM奇异之夜击杀播报 1101001116 AKM金牌海盗击杀播报 1101001143 AKM吉利龙王击杀播报 1101001128 AKM奇幻工坊击杀播报 1101001154 AKM部落之王击杀播报1101001174 AKM星海提督击杀播报 1101001213 AKM俏皮兔宝击杀播报 1101001231M16A4血风暴击杀播报1101002029 M16A4极光脉冲击杀播报 1101002056 M16A4缤纷利刃击杀播报 1101002068 M16A4猩红血月击杀播报 1101002081M16A4古堡龙卫击杀播报1101002103死噶梦幻水枪击杀播报 1101003057死噶魔法南瓜击杀播报1101003070死噶翌日行动击杀播报 1101003080 死噶诡秘之夜击杀播报 1101003099 死噶魔力结晶击杀播报 1101003119死噶邪能植物击杀播报 1101003146 死噶血魂魔皇击杀播报 1101003167M416冰霜核心击杀播报1101004046 M416愚人小丑击杀播报 1101004062M416异域游者击杀播报 1101004078 M416萌龙咆哮击杀播报1101004086M416野性呼唤击杀播报 1101004098 M416科技核心击杀播报 1101004138 M416潮鸣宫廷击杀播报 1101004163 M416庇护之潮击杀播报1101004209Groza幻夜音乐击杀播报1101005025 Groza绚烂之战1101005043 Groza冥河烈焰1101005052AUG流浪马戏团 1101006033 AUG第四使徒 1101006044 QBZ极致绝杀 1101007036 QBZ瑰绮灵姬1101007046 M762比特宝莉 1101008026妹控星云力量"},nil,{"number"})
if jr ~= nil then


local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x90,0x161C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = jr[1], freeze = true}})
end
string.toMusic('开启成功')
end,
function()

end,
""),	

yunzhu.switch("庇护之潮播报",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x90,0x161C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101004209, freeze = true}})
gg.toast("美化成功")
end,
function()

end,
""),	


yunzhu.switch("愚人小丑播报",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x90,0x161C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101004062, freeze = true}})
gg.toast("美化成功")
end,
function()

end,
""),	


yunzhu.switch("冰霜核心播报",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x90,0x161C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101004046, freeze = true}})
gg.toast("美化成功")
end,
function()

end,
""),	

yunzhu.switch(
"决胜之日ak播放",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x90,0x161C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101001242, freeze = true}})
gg.toast("美化成功")
end,
function()

end,
""),	




}),--box结尾
yunzhu.box({--box开头
"头盔背包自选",--box名字

yunzhu.switch(
"胖达头盔",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x1F8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1502003027}})----头盔链条
end,
function()

end,
""),	

yunzhu.switch(
"刺头头盔",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x1F8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1502003014}})----头盔链条
end,
function()

end,
""),	


yunzhu.switch(
"冰头头盔",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x1F8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1502003023}})----头盔链条
end,
function()

end,
""),	

yunzhu.switch(
"星云屏障头盔",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x1F8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1502003299}})----头盔链条
end,
function()

end,
""),	

yunzhu.switch(
"星云捕猎头盔",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x1F8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1502003295}})----头盔链条
end,
function()

end,
""),	

yunzhu.switch(
"熔岩魔君头盔",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x1F8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1502003327}})----头盔链条
end,
function()

end,
""),	

yunzhu.switch(
"精灵龙卫头盔",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x1F8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1502003336}})----头盔链条
end,
function()

end,
""),	

yunzhu.switch(
"御灵师头盔",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x1F8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1502003069}})----头盔链条
end,
function()

end,
""),	

yunzhu.switch(
"愤怒胖红头盔",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x1F8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1502003072}})----头盔链条
end,
function()

end,
""),	

yunzhu.switch(
"欢乐雪豹头盔",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x1F8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1502003075}})----头盔链条
end,
function()

end,
""),	


yunzhu.switch(
"瞌睡虫先生头盔",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x1F8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1502003080}})----头盔链条
end,
function()

end,
""),	

yunzhu.switch(
"坏蛋猫咪头盔",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x1F8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1502003091}})----头盔链条
end,
function()

end,
""),	

yunzhu.switch(
"金尊皇帝头盔",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x1F8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1502003151}})----头盔链条
end,
function()

end,
""),	


yunzhu.switch(
"吉利狮王头盔",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x1F8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1502003173}})----头盔链条
end,
function()

end,
""),	

yunzhu.switch(
"蔚蓝风暴背包",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x1C0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1501003009}})----背包链条
end,
function()

end,
""),	

yunzhu.switch(
"愚人小丑背包",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x1C0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1501003051}})----背包链条
end,
function()

end,
""),	


yunzhu.switch(
"法老圣装背包",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x1C0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1501003174}})----背包链条
end,
function()

end,
""),	

yunzhu.switch(
"血鸦圣装背包",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x1C0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1501003220}})----背包链条
end,
function()

end,
""),	

yunzhu.switch(
"怒潮金狮背包",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x1C0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1501003471}})----背包链条
end,
function()

end,
""),	

yunzhu.switch(
"愤怒猪王背包",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x1C0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1501003112}})----背包链条
end,
function()

end,
""),	



}),--box结尾	
yunzhu.box({--box开头
"枪械遍历美化",--box名字

yunzhu.switch(
"全枪美化",
function()
local cfg_file = "/sdcard/息白/枪械美化配置.ini"
local chunk = loadfile(cfg_file)
local cfg = nil
if chunk ~= nil then
cfg = chunk()
end
if cfg == nil then
cfg = {
1101001213--ak
, 1101002029--m16
, 1101003146--sc
, 1101004046--m416
, 1101005055--GROZA
, 1101006033--AUG
, 10100700--QBZ
, 1101008081--M762
, 1101009011--mk47
, 1101010012--g36c
, 10101200--蜜罐11
, 1102001024--UZI12
, 1102002061--UMP45
, 1102003080--Vector
, 1102004018--汤姆逊
, 1102005007--野牛
, 10200600--MP5K
, 1102105002--P90
, 1103001154--98K
, 1103002018--m24
, 1103003022--awm
, 1103004037--sks22
, 1103005024--vss23
, 10300600--mini14
, 1103007020--mk1425
, 1103008014--win94
, 10300900--slr27
, 10301000--QBU
, 1103011001--莫辛纳甘
, 1103012010--amr
, 10301300--m417
, 1104001027--s686
, 1104002022--s189
, 1104003031--s12k
, 1104004021--dbs
, 1105001020--m249
, 1105002035--大盘鸡
, 1105010008--mg3
, 1108001057--大砍刀
, 1108002046--撬棍
, 1108003001--镰刀
, 1108004009--平底锅
, 1010042029--红点
, 1010042028--全息瞄准键
, 1010042027--2倍镜
, 1010042026--3倍镜
, 1010042025--4倍镜
, 1010042024--6被
, 1030020242--八倍
, 1010040462--m4苗具
, 1010040461--m4枪托
, 1010040463--m4弹夹
, true}
end
QiuCi = gg.prompt({
"AKM美化代码:",--1
"M16A4美化代码:",--2
"SCAR-L美化代码:",--3
"M416美化代码:",--4
"GROZA美化代码:",--5
"AUG美化代码:",--6
"QBZ美化代码:",--7
"M762美化代码:",--8
"MK47美化代码:",--9
"G36C美化代码:",--10
"蜜罐美化代码:",--11
"UZI美化代码:",--12
"UMP45美化代码:",--13
"Vector美化代码:",--14
"汤姆逊美化代码:",--15
"野牛美化代码:",--16
"MP5K美化代码:",--17
"P90美化代码:",--18
"98K美化代码:",--19
"M24美化代码:",--20
"AWM美化代码:",--21
"SKS美化代码:",--22
"VSS美化代码:",--23
"Mini14美化代码:",--24
"Mk14美化代码:",--25
"Win94美化代码:",--26
"SLR美化代码:",--27
"QBU美化代码:",--28-
"莫辛纳甘美化代码:",--29
"AMR美化代码:",--30
"M417美化代码:",--31
"S686美化代码:",--32
"S1897代码:",--33
"S12K美化代码:",--34
"DBS美化代码:",--35
"M249美化代码:",--36
"大盘鸡美化代码:",--37
"MG3美化代码:",--38
"大砍刀美化代码:",--39
"撬棍美化代码:",--40
"镰刀美化代码:",--41
"平底锅美化代码:",--42
"红点瞄准镜美化代码:",--43
"全息瞄准镜美化代码:",--44
"二倍瞄准镜美化代码:",--45
"三倍瞄准镜美化代码:",--46
"四倍瞄准镜美化代码:",--47
"六倍瞄准镜美化代码:",--48
"八倍瞄准镜美化代码:",--49
"M4瞄具美化代码:",--50
"M4枪托美化代码:",--51
"M4弹夹美化代码:",--52
},cfg,{
"text",--1
"text",--2
"text",--3
"text",--4
"text",--5
"text",--6
"text",--7
"text",--8
"text",--9
"text",--10
"text",--11
"text",--12
"text",--13
"text",--14
"text",--15
"text",--16
"text",--17
"text",--18
"text",--19
"text",--20
"text",--21
"text",--22
"text",--23
"text",--24
"text",--25
"text",--26
"text",--27
"text",--28
"text",--29
"text",--30
"text",--31
"text",--32
"text",--33
"text",--34
"text",--35
"text",--36
"text",--37
"text",--38
"text",--39
"text",--40
"text",--41
"text",--42
"text",--43
"text",--44
"text",--45
"text",--46
"text",--47
"text",--48
"text",--49
"text",--50
"text",--52
"text"--53
})
if QiuCi == nil then else
gg.saveVariable(QiuCi, cfg_file)
if QiuCi[1] == true then QiuCi1() end
if QiuCi[2] == true then QiuCi2() end
if QiuCi[3] == true then QiuCi3() end
if QiuCi[4] == true then QiuCi4() end
if QiuCi[5] == true then QiuCi5() end
if QiuCi[6] == true then QiuCi6() end
if QiuCi[7] == true then QiuCi7() end
if QiuCi[8] == true then QiuCi8() end
if QiuCi[9] == true then QiuCi9() end
if QiuCi[10] == true then QiuCi10() end
if QiuCi[11] == true then QiuCi11() end
if QiuCi[12] == true then QiuCi12() end
if QiuCi[13] == true then QiuCi13() end
if QiuCi[14] == true then QiuCi14() end
if QiuCi[15] == true then QiuCi15() end
if QiuCi[16] == true then QiuCi16() end
if QiuCi[17] == true then QiuCi17() end
if QiuCi[18] == true then QiuCi18() end
if QiuCi[19] == true then QiuCi19() end
if QiuCi[20] == true then QiuCi20() end
if QiuCi[21] == true then QiuCi21() end
if QiuCi[22] == true then QiuCi22() end
if QiuCi[23] == true then QiuCi23() end
if QiuCi[24] == true then QiuCi24() end
if QiuCi[25] == true then QiuCi25() end
if QiuCi[26] == true then QiuCi26() end
if QiuCi[27] == true then QiuCi27() end
if QiuCi[28] == true then QiuCi28() end
if QiuCi[29] == true then QiuCi29() end
if QiuCi[30] == true then QiuCi30() end
if QiuCi[31] == true then QiuCi31() end
if QiuCi[32] == true then QiuCi32() end
if QiuCi[33] == true then QiuCi33() end
if QiuCi[34] == true then QiuCi34() end
if QiuCi[35] == true then QiuCi35() end
if QiuCi[36] == true then QiuCi36() end
if QiuCi[37] == true then QiuCi37() end
if QiuCi[38] == true then QiuCi38() end
if QiuCi[39] == true then QiuCi39() end
if QiuCi[40] == true then QiuCi40() end
if QiuCi[41] == true then QiuCi41() end
if QiuCi[42] == true then QiuCi42() end
if QiuCi[43] == true then QiuCi43() end
if QiuCi[44] == true then QiuCi44() end
if QiuCi[45] == true then QiuCi45() end
if QiuCi[46] == true then QiuCi46() end
if QiuCi[47] == true then QiuCi47() end
if QiuCi[48] == true then QiuCi48() end
if QiuCi[49] == true then QiuCi49() end
if QiuCi[50] == true then QiuCi50() end
if QiuCi[51] == true then QiuCi51() end
if QiuCi[52] == true then QiuCi52() end

a=0x0
while(a <=0xAF0)
do
a=a+0x10
mk=gg.getRangesList('libUE4.so')[1].start
add = RUI(RUI(RUI(RUI(RUI(mk + 0xC516A80) + 0x558) + a) + 0x30) + 0x38)--动态DD900
adpd = RUI(RUI(RUI(RUI(RUI(mk + 0xC516A80) + 0x558) + a) + 0x30) + 0x30) +0x18
if readD(adpd) == 1000 then
--5x3000
--2.9 101001锁链0xDD900+0x558+0x10+0x30+0x30+0x0(0x18就直接到101,001,100)


break
add=add
end
end

nmsl=0x4148--0x3FF8初始 0x5000 0x4148 0x7500
while(nmsl <=0x866E218)--10850最大
do
nmsl=nmsl+0x18
addr=RUI(add+nmsl)



if readD(addr+0x58) == 101001 then--AKM
setvalue(addr+0x18,4,QiuCi[1])
gg.toast("修改目标:AKM")
end
if readD(addr+0x58) == 101002 then--M16A4
setvalue(addr+0x18,4,QiuCi[2])
gg.toast("修改目标:M16A4")
end
if readD(addr+0x58) == 101003 then--SCAR
setvalue(addr+0x18,4,QiuCi[3])
gg.toast("修改目标:SCAR")
end
if readD(addr+0x58) == 101004 then--M416
setvalue(addr+0x18,4,QiuCi[4])
gg.toast("修改目标:M416")
end
if readD(addr+0x58) == 101005 then --GROZA
setvalue(addr+0x18,4,QiuCi[5])
gg.toast("修改目标:GROZA")
end
if readD(addr+0x58) == 101006 then --AUG
setvalue(addr+0x18,4,QiuCi[6])
gg.toast("修改目标:AUG")
end
if readD(addr+0x58) == 101007 then--QBZ
setvalue(addr+0x18,4,QiuCi[7])
gg.toast("修改目标:QBZ")
end
if readD(addr+0x58) == 101008 then--M762
setvalue(addr+0x18,4,QiuCi[8])
gg.toast("修改目标:M762")
end
if readD(addr+0x58) == 101009 then--MK47
setvalue(addr+0x18,4,QiuCi[9])
gg.toast("修改目标:MK47")
end
if readD(addr+0x58) == 101010 then--G36C
setvalue(addr+0x18,4,QiuCi[10])
gg.toast("修改目标:G36C")
end
if readD(addr+0x58) == 101012 then--蜜罐
setvalue(addr+0x18,4,QiuCi[11])
gg.toast("修改目标:蜜罐")
end
if readD(addr+0x58) == 102001 then--UZI
setvalue(addr+0x18,4,QiuCi[12])
gg.toast("修改目标:UZI")
end
if readD(addr+0x58) == 102002 then--UMP45
setvalue(addr+0x18,4,QiuCi[13])
gg.toast("修改目标:UMP45")
end
if readD(addr+0x58) == 102003 then--Vector
setvalue(addr+0x18,4,QiuCi[14])
gg.toast("修改目标:Vector")
end
if readD(addr+0x58) == 102004 then--汤姆逊
setvalue(addr+0x18,4,QiuCi[15])
gg.toast("修改目标:汤姆逊")
end
if readD(addr+0x58) == 102005 then--野牛
setvalue(addr+0x18,4,QiuCi[16])
gg.toast("修改目标:野牛")
end
if readD(addr+0x58) == 102006 then--MP5K
setvalue(addr+0x18,4,QiuCi[17])
gg.toast("修改目标:MP5K")
end
if readD(addr+0x58) == 102007 then--P90
setvalue(addr+0x18,4,QiuCi[18])
gg.toast("修改目标:P90")
end
if readD(addr+0x58) == 103001 then--98K
setvalue(addr+0x18,4,QiuCi[19])
gg.toast("修改目标:98K")
end
if readD(addr+0x58) == 103002 then--M24
setvalue(addr+0x18,4,QiuCi[20])
gg.toast("修改目标:M24")
end
if readD(addr+0x58) == 103003 then--awm
setvalue(addr+0x18,4,QiuCi[21])
gg.toast("修改目标:AWM")
end
if readD(addr+0x58) == 103004 then--SKS
setvalue(addr+0x18,4,QiuCi[22])
gg.toast("修改目标:SKS")
end
if readD(addr+0x58) == 103005 then--VSS
setvalue(addr+0x18,4,QiuCi[23])
gg.toast("修改目标:VSS")
end
if readD(addr+0x58) == 103006 then--Mini14
setvalue(addr+0x18,4,QiuCi[24])
gg.toast("修改目标:MINI14")
end
if readD(addr+0x58) == 103007 then--MK14
setvalue(addr+0x18,4,QiuCi[25])
gg.toast("修改目标:MK14")
end
if readD(addr+0x58) == 103008 then--Win94
setvalue(addr+0x18,4,QiuCi[26])
gg.toast("修改目标:Win94")
end
if readD(addr+0x58) == 103009 then--SLR
setvalue(addr+0x18,4,QiuCi[27])
gg.toast("修改目标:SLR")
end
if readD(addr+0x58) == 103010 then--QBU
setvalue(addr+0x18,4,QiuCi[28])
gg.toast("修改目标:QBU")
end
if readD(addr+0x58) == 103011 then--莫辛纳甘
setvalue(addr+0x18,4,QiuCi[29])
gg.toast("修改目标:莫辛纳甘")
end
if readD(addr+0x58) == 103012 then--AMR
setvalue(addr+0x18,4,QiuCi[30])
gg.toast("修改目标:AMR")
end
if readD(addr+0x58) == 103013 then--M417
setvalue(addr+0x18,4,QiuCi[31])
gg.toast("修改目标:M417")
end
if readD(addr+0x58) == 104001 then--S686
setvalue(addr+0x18,4,QiuCi[32])
gg.toast("修改目标:S686")
end
if readD(addr+0x58) == 104002 then--S1897
setvalue(addr+0x18,4,QiuCi[33])
gg.toast("修改目标:S1897")
end
if readD(addr+0x58) == 104003 then--S12K
setvalue(addr+0x18,4,QiuCi[34])
gg.toast("修改目标:S12K")
end
if readD(addr+0x58) == 104004 then--DBS
setvalue(addr+0x18,4,QiuCi[35])
gg.toast("修改目标:DBS")
end
if readD(addr+0x58) == 105001 then--M249
setvalue(addr+0x18,4,QiuCi[36])
gg.toast("修改目标:M249")
end
if readD(addr+0x58) == 105002 then--大盘鸡
setvalue(addr+0x18,4,QiuCi[37])
gg.toast("修改目标:大盘鸡")
end
if readD(addr+0x58) == 105010 then--MG3
setvalue(addr+0x18,4,QiuCi[38])
gg.toast("修改目标:MG3")
end
if readD(addr+0x58) == 108001 then--大砍刀
setvalue(addr+0x18,4,QiuCi[39])
gg.toast("修改目标:砍刀")
end
if readD(addr+0x58) == 108002 then--撬棍
setvalue(addr+0x18,4,QiuCi[40])
gg.toast("修改目标:撬棍")
end
if readD(addr+0x58) == 108003 then--镰刀
setvalue(addr+0x18,4,QiuCi[41])
gg.toast("修改目标:镰刀")
end
if readD(addr+0x58) == 108004 then--平底锅
setvalue(addr+0x18,4,QiuCi[42])
gg.toast("修改目标:平底锅")
end
if readD(addr+0x58) == 203001 then--红点
setvalue(addr+0x18,4,QiuCi[43])
gg.toast("修改目标:红点瞄准器")
end
if readD(addr+0x58) == 203002 then--全息
setvalue(addr+0x18,4,QiuCi[44])
gg.toast("修改目标:全息瞄准器")
end
if readD(addr+0x58) == 203003 then--二倍
setvalue(addr+0x18,4,QiuCi[45])
gg.toast("修改目标:二倍瞄准器")
end
if readD(addr+0x58) == 203006 then--三倍
setvalue(addr+0x18,4,QiuCi[46])
gg.toast("修改目标:三倍瞄准器")
end
if readD(addr+0x58) == 203004 then--四倍
setvalue(addr+0x18,4,QiuCi[47])
gg.toast("修改目标:四倍瞄准器")
end
if readD(addr+0x58) == 203007 then--六倍
setvalue(addr+0x18,4,QiuCi[48])
gg.toast("修改目标:六倍瞄准器")
end
if readD(addr+0x58) == 203005 then--八倍
setvalue(addr+0x18,4,QiuCi[49])
gg.toast("修改目标:8倍瞄准器")
end
if readD(addr+0x58) == 203008 then--m4瞄具
setvalue(addr+0x18,4,QiuCi[50])
gg.toast("修改目标M416鸡苗:")
end
if readD(addr+0x58) == 205005 then--m4张托
setvalue(addr+0x18,4,QiuCi[51])
gg.toast("修改目标:M416枪托")
end
if readD(addr+0x58) == 291004 then --m4弹夹
setvalue(addr+0x18,4,QiuCi[52])
gg.toast("修改目标:M416弹夹")
string.toMusic('开启成功')
break
end
end
end
end,
function()

end,
""),	

yunzhu.switch(
"⛄自改倍镜",
function()
local cfg_file = "/sdcard/配件美化配置/.txt"
local chunk = loadfile(cfg_file)
local cfg = nil
if chunk ~= nil then
cfg = chunk()
end
if cfg == nil then
cfg = {
1030020812,
1010081218,
1010040466,
1010040467,
1010040468,
1010040469,
1010040470,
1010040471,
1010040472,
1010040473,
1010040474,
1010040475,
1010040476,
1010040477,
1010040478,
1010040479,
1010040480,
true}
end
qing = gg.prompt({


"8倍瞄准镜",
"6倍瞄准镜",
"4倍瞄准镜",
"3倍瞄准镜",
"2倍瞄准镜",
"全息瞄准镜",
"红点瞄准镜",
"扩容弹夹",
"快速弹夹",
"快速扩容弹夹",
"消焰器",
"枪口补偿器",
"消音器",
"直角前握把",
"拇指握把",
"垂直握把",
"战术枪托",
},cfg,{


"text",
"text",
"text",
"text",
"text",
"text",
"text",
"text",
"text",
"text",
"text",
"text",
"text",
"text",
"text",
"text",
"text"})
if qing == nil then else
gg.saveVariable(qing, cfg_file)
if qing[1] == true then qing1() end
if qing[2] == true then qing2() end
if qing[3] == true then qing3() end
if qing[4] == true then qing4() end
if qing[5] == true then qing5() end
if qing[6] == true then qing6() end
if qing[7] == true then qing7() end
if qing[8] == true then qing8() end
if qing[9] == true then qing9() end
if qing[10] == true then qing10() end
if qing[11] == true then qing11() end
if qing[12] == true then qing12() end
if qing[13] == true then qing13() end
if qing[14] == true then qing14() end
if qing[15] == true then qing15() end
if qing[16] == true then qing16() end
if qing[17] == true then qing17() end
a=0x0
while(a <=0xAF0)
do
a=a+0x10
mk=gg.getRangesList('libUE4.so')[1].start
add = RUI(RUI(RUI(RUI(RUI(mk + 0xC516A80) + 0x558) + a) + 0x30) + 0x38)--动态DD900
adpd = RUI(RUI(RUI(RUI(RUI(mk + 0xC516A80) + 0x558) + a) + 0x30) + 0x30) +0x18
if readD(adpd) == 1000 then
--5x3000
--2.9 101001锁链0xDD900+0x558+0x10+0x30+0x30+0x0(0x18就直接到101,001,100)


break
add=add
end
end

nmsl=0x4148--3FF8初始
while(nmsl <=0x866E218)--10850最大
do
nmsl=nmsl+0x18
addr=RUI(add+nmsl)
if readD(addr+0x58) == 203005 then --AKM
setvalue(addr+0x18,4,qing[1])

end
if readD(addr+0x58) == 203015 then --AKM
setvalue(addr+0x18,4,qing[2])

end
if readD(addr+0x58) == 203004 then --AKM
setvalue(addr+0x18,4,qing[3])

end
if readD(addr+0x58) == 203014 then --AKM
setvalue(addr+0x18,4,qing[4])

end
if readD(addr+0x58) == 203003 then --AKM
setvalue(addr+0x18,4,qing[5])

end
if readD(addr+0x58) == 203002 then --AKM
setvalue(addr+0x18,4,qing[6])

end
if readD(addr+0x58) == 203001 then --AKM
setvalue(addr+0x18,4,qing[7])

end
if readD(addr+0x58) == 204011 then --AKM1
setvalue(addr+0x18,4,qing[8])

end
if readD(addr+0x58) == 204012 then --AKM
setvalue(addr+0x18,4,qing[9])

end
if readD(addr+0x58) == 204013 then --AKM
setvalue(addr+0x18,4,qing[10])

end
if readD(addr+0x58) == 201010 then --AKM
setvalue(addr+0x18,4,qing[11])

end
if readD(addr+0x58) == 201009 then --AKM
setvalue(addr+0x18,4,qing[12])

end
if readD(addr+0x58) == 201011 then --AKMM416突击步枪默认弹匣 291004M416机械瞄具 203008M416默认枪托 205005
setvalue(addr+0x18,4,qing[13])

end
if readD(addr+0x58) == 202001 then --AKM
setvalue(addr+0x18,4,qing[14])

end
if readD(addr+0x58) == 202006 then
setvalue(addr+0x18,4,qing[15])

end
if readD(addr+0x58) == 202002 then --AKM
setvalue(addr+0x18,4,qing[16])

end
if readD(addr+0x58) == 205002 then
setvalue(addr+0x18,4,qing[17])
gg.alert("遍历完毕")
break
end
end
end
end,
function()

end,
""),	

yunzhu.switch(
"❄️自改配件",
function()
local cfg_file = "/sdcard/配件美化配置/.txt"
local chunk = loadfile(cfg_file)
local cfg = nil
if chunk ~= nil then
cfg = chunk()
end
if cfg == nil then
cfg = {
1010040471,
1010040472,
1010040473,
1010040474,
1010040475,
1010040476,
1010040477,
1010040478,
1010040479,
1010040480,
true}
end
qing = gg.prompt({


"扩容弹夹",
"快速弹夹",
"快速扩容弹夹",
"消焰器",
"枪口补偿器",
"消音器",
"直角前握把",
"拇指握把",
"垂直握把",
"战术枪托",
},cfg,{


"text",
"text",
"text",
"text",
"text",
"text",
"text",
"text",
"text",
"text"})
if qing == nil then else
gg.saveVariable(qing, cfg_file)
if qing[1] == true then qing1() end
if qing[2] == true then qing2() end
if qing[3] == true then qing3() end
if qing[4] == true then qing4() end
if qing[5] == true then qing5() end
if qing[6] == true then qing6() end
if qing[7] == true then qing7() end
if qing[8] == true then qing8() end
if qing[9] == true then qing9() end
if qing[10] == true then qing10() end
a=0x0
while(a <=0xAF0)
do
a=a+0x10
mk=gg.getRangesList('libUE4.so')[1].start
add = RUI(RUI(RUI(RUI(RUI(mk + 0xC516A80) + 0x558) + a) + 0x30) + 0x38)--动态DD900
adpd = RUI(RUI(RUI(RUI(RUI(mk + 0xC516A80) + 0x558) + a) + 0x30) + 0x30) +0x18
if readD(adpd) == 1000 then
--5x3000
--2.9 101001锁链0xDD900+0x558+0x10+0x30+0x30+0x0(0x18就直接到101,001,100)


break
add=add
end
end

nmsl=0x4148--3FF8初始
while(nmsl <=0x866E218)--10850最大
do
nmsl=nmsl+0x18
addr=RUI(add+nmsl)

if readD(addr+0x58) == 204011 then --AKM1
setvalue(addr+0x18,4,qing[1])

end
if readD(addr+0x58) == 204012 then --AKM
setvalue(addr+0x18,4,qing[2])

end
if readD(addr+0x58) == 204013 then --AKM
setvalue(addr+0x18,4,qing[3])

end
if readD(addr+0x58) == 201010 then --AKM
setvalue(addr+0x18,4,qing[4])

end
if readD(addr+0x58) == 201009 then --AKM
setvalue(addr+0x18,4,qing[5])

end
if readD(addr+0x58) == 201011 then --AKM
setvalue(addr+0x18,4,qing[6])

end
if readD(addr+0x58) == 202001 then --AKM
setvalue(addr+0x18,4,qing[7])

end
if readD(addr+0x58) == 202006 then
setvalue(addr+0x18,4,qing[8])

end
if readD(addr+0x58) == 202002 then --AKM
setvalue(addr+0x18,4,qing[9])

end
if readD(addr+0x58) == 205002 then
setvalue(addr+0x18,4,qing[10])
gg.alert("遍历完毕")
break
end
end
end
end,
function()

end,
""),	

yunzhu.switch(
"m4科技核心",
function()
a=0x0
while(a <=0xAB0)
do
a=a+0x10
mk=gg.getRangesList('libUE4.so')[1].start
add = RUI(RUI(RUI(RUI(RUI(mk + 0xC516A80) + 0x558) + a) + 0x30) + 0x38)
adpd = RUI(RUI(RUI(RUI(RUI(RUI(mk + 0xC516A80) + 0x558) + a) + 0x30) + 0x38) +0x8) +0x18
if readD(adpd) == 1000 then

addListltems(add,4,0,false)
break
add=add
end
end

SK=0x4148
while(SK <=0x866E218)
do
SK=SK+0x18
addr=RUI(add+SK)

if readD(addr) == 20 or readD(addr) == 0 or readD(addr) or readD(addr) == 1 then
if readD(addr+0x58) == 101004 then --M4
setvalue(addr+0x18,4,1101004138 )
end

if readD(addr+0x58) == 203008 then --机瞄
setvalue(addr+0x18,4,1101004138 )
end

if readD(addr) == 1 or readD(addr) == 0 then
if readD(addr+0x58) == 205005 then --枪托
setvalue(addr+0x18,4,1101004138 )
end

if readD(addr+0x58) == 291004 then --弹夹
setvalue(addr+0x18,4,1101004138 )
break
end
end
end
end
gg.alert("美化成功")
end,
function()

end,
""),	

yunzhu.switch(
"m4恶龙咆哮",
function()
a=0x0
while(a <=0xAB0)
do
a=a+0x10
mk=gg.getRangesList('libUE4.so')[1].start
add = RUI(RUI(RUI(RUI(RUI(mk + 0xC516A80) + 0x558) + a) + 0x30) + 0x38)
adpd = RUI(RUI(RUI(RUI(RUI(RUI(mk + 0xC516A80) + 0x558) + a) + 0x30) + 0x38) +0x8) +0x18
if readD(adpd) == 1000 then

addListltems(add,4,0,false)
break
add=add
end
end

SK=0x4148
while(SK <=0x866E218)
do
SK=SK+0x18
addr=RUI(add+SK)

if readD(addr) == 20 or readD(addr) == 0 or readD(addr) or readD(addr) == 1 then
if readD(addr+0x58) == 101004 then --M4
setvalue(addr+0x18,4,1101004086)
end

if readD(addr+0x58) == 203008 then --机瞄
setvalue(addr+0x18,4,1101004086)
end

if readD(addr) == 1 or readD(addr) == 0 then
if readD(addr+0x58) == 205005 then --枪托
setvalue(addr+0x18,4,1101004086)
end

if readD(addr+0x58) == 291004 then --弹夹
setvalue(addr+0x18,4,1101004086)
break
end
end
end
end
gg.alert("遍历成功")
end,
function()

end,
""),	
yunzhu.switch(
"绝圣之日",
function()
a=0x0
while(a <=0xAB0)
do
a=a+0x10
mk=gg.getRangesList('libUE4.so')[1].start
add = RUI(RUI(RUI(RUI(RUI(mk + 0xC516A80) + 0x558) + a) + 0x30) + 0x38)
adpd = RUI(RUI(RUI(RUI(RUI(RUI(mk + 0xC516A80) + 0x558) + a) + 0x30) + 0x38) +0x8) +0x18
if readD(adpd) == 1000 then

addListltems(add,4,0,false)
break
add=add
end
end

SK=0x4148
while(SK <=0x866E218)
do
SK=SK+0x18
addr=RUI(add+SK)

if readD(addr) == 20 or readD(addr) == 0 or readD(addr) or readD(addr) == 1 then
if readD(addr+0x58) == 101001 then --M4
setvalue(addr+0x18,4,1101001242)
end

if readD(addr+0x58) == 101002 then --机瞄
setvalue(addr+0x18,4,1101004086)
end

if readD(addr) == 1 or readD(addr) == 0 then
if readD(addr+0x58) == 101003 then --枪托
setvalue(addr+0x18,4,1101004086)
end

if readD(addr+0x58) == 101004 then --弹夹
setvalue(addr+0x18,4,1010012364)
break
end
end
end
end
gg.alert("遍历成功")
end,
function()

end ,
""),	
yunzhu.switch(
"武魂宗师",
function()
a=0x0
while(a <=0xAB0)
do
a=a+0x10
mk=gg.getRangesList('libUE4.so')[1].start
add = RUI(RUI(RUI(RUI(RUI(mk + 0xC516A80) + 0x558) + a) + 0x30) + 0x38)
adpd = RUI(RUI(RUI(RUI(RUI(RUI(mk + 0xC516A80) + 0x558) + a) + 0x30) + 0x38) +0x8) +0x18
if readD(adpd) == 1000 then

addListltems(add,4,0,false)
break
add=add
end
end

SK=0x4148
while(SK <=0x866E218)
do
SK=SK+0x18
addr=RUI(add+SK)

if readD(addr) == 20 or readD(addr) == 0 or readD(addr) or readD(addr) == 1 then
if readD(addr+0x58) == 101004 then --M4
setvalue(addr+0x18,4,1101004201)
end

if readD(addr+0x58) == 203008 then --机瞄
setvalue(addr+0x18,4,1010042012)
end

if readD(addr) == 1 or readD(addr) == 0 then
if readD(addr+0x58) == 205005 then --枪托
setvalue(addr+0x18,4,1010042013)
end

if readD(addr+0x58) == 291004 then --弹夹
setvalue(addr+0x18,4,1010042011)
break
end
end
end
end
gg.alert("遍历成功")
end,
function()

end,
""),	

yunzhu.switch(
"冰霜m4",
function()
a=0x0
while(a <=0xAB0)
do
a=a+0x10
mk=gg.getRangesList('libUE4.so')[1].start
add = RUI(RUI(RUI(RUI(RUI(mk + 0xC516A80) + 0x558) + a) + 0x30) + 0x38)
adpd = RUI(RUI(RUI(RUI(RUI(RUI(mk + 0xC516A80) + 0x558) + a) + 0x30) + 0x38) +0x8) +0x18
if readD(adpd) == 1000 then

addListltems(add,4,0,false)
break
add=add
end
end

SK=0x4148
while(SK <=0x866E218)
do
SK=SK+0x18
addr=RUI(add+SK)

if readD(addr) == 20 or readD(addr) == 0 or readD(addr) or readD(addr) == 1 then
if readD(addr+0x58) == 101004 then --M4
setvalue(addr+0x18,4,1101004046)
end

if readD(addr+0x58) == 203008 then --机瞄
setvalue(addr+0x18,4,1101004046)
end

if readD(addr) == 1 or readD(addr) == 0 then
if readD(addr+0x58) == 205005 then --枪托
setvalue(addr+0x18,4,1101004046)
end

if readD(addr+0x58) == 291004 then --弹夹
setvalue(addr+0x18,4,1101004046)
break
end
end
end
end
gg.alert("遍历成功")
end,
function()

end,
""),	
yunzhu.switch(
"红白妹控",
function()
local cfg_file = gg.EXT_FILES_DIR.."/"..gg.getFile():match("[^/]+$")..'(MK14星云力量.).lua'
local chunk = loadfile(cfg_file)
local cfg = nil
if chunk ~= nil then
cfg = chunk()
end
gg.alert("正在遍历 请耐心等待 有提示后再开别的")

a=0x0
while(a <=0xAF0)
do
a=a+0x10
mk=gg.getRangesList('libUE4.so')[1].start
add = RUI(RUI(RUI(RUI(RUI(mk + 0xC516A80) + 0x558) + a) + 0x30) + 0x38)--动态DD900
adpd = RUI(RUI(RUI(RUI(RUI(mk + 0xC516A80) + 0x558) + a) + 0x30) + 0x30) +0x18
if readD(adpd) == 1000 then
addListltems(add,4,0,false)
break
add=add
end
end

nmsl=0x5000--3FF8初始
while(nmsl <=0x80000)--10850最大
do
nmsl=nmsl+0x18
addr=RUI(add+nmsl)
if readD(addr+0x58) == 1030074 then ---
setvalue(addr+0x18,4,1103007010)
end

if readD(addr+0x58) == 1030075 then ---
setvalue(addr+0x18,4,1103007010)

end
if readD(addr+0x58) == 1030076 then---
setvalue(addr+0x18,4,1103007010)

end
if readD(addr+0x58) == 1030077 then ---
setvalue(addr+0x18,4,1103007010)
gg.alert("历遍完成")	
break
end
end
end,
function()

end,
""),	
yunzhu.switch(
"钢铁丛林妹控",
function()
local cfg_file = gg.EXT_FILES_DIR.."/"..gg.getFile():match("[^/]+$")..'(MK14星云力量.).lua'
local chunk = loadfile(cfg_file)
local cfg = nil
if chunk ~= nil then
cfg = chunk()
end
gg.alert("正在遍历 请耐心等待 有提示后再开别的")
a=0x0
while(a <=0xAF0)
do
a=a+0x10
mk=gg.getRangesList('libUE4.so')[1].start
add = RUI(RUI(RUI(RUI(RUI(mk + 0xC516A80) + 0x558) + a) + 0x30) + 0x38)--动态DD900
adpd = RUI(RUI(RUI(RUI(RUI(mk + 0xC516A80) + 0x558) + a) + 0x30) + 0x30) +0x18
if readD(adpd) == 1000 then
addListltems(add,4,0,false)
break
add=add
end
end

nmsl=0x5000--3FF8初始
while(nmsl <=0x80000)--10850最大
do
nmsl=nmsl+0x18
addr=RUI(add+nmsl)
if readD(addr+0x58) == 1030074 then ---
setvalue(addr+0x18,4,1103007011)
end

if readD(addr+0x58) == 1030075 then ---
setvalue(addr+0x18,4,1103007011)

end
if readD(addr+0x58) == 1030076 then---
setvalue(addr+0x18,4,1103007011)

end
if readD(addr+0x58) == 1030077 then ---
setvalue(addr+0x18,4,1103007011)
gg.alert("历遍完成")	
break
end
end
end,
function()

end,
""),	
yunzhu.switch(
"灰白妹控",
function()
local cfg_file = gg.EXT_FILES_DIR.."/"..gg.getFile():match("[^/]+$")..'(MK14星云力量.).lua'
local chunk = loadfile(cfg_file)
local cfg = nil
if chunk ~= nil then
cfg = chunk()
end
gg.alert("正在遍历 请耐心等待 有提示后再开别的")
a=0x0
while(a <=0xAF0)
do
a=a+0x10
mk=gg.getRangesList('libUE4.so')[1].start
add = RUI(RUI(RUI(RUI(RUI(mk + 0xC516A80) + 0x558) + a) + 0x30) + 0x38)--动态DD900
adpd = RUI(RUI(RUI(RUI(RUI(mk + 0xC516A80) + 0x558) + a) + 0x30) + 0x30) +0x18
if readD(adpd) == 1000 then
addListltems(add,4,0,false)
break
add=add
end
end

nmsl=0x5000--3FF8初始
while(nmsl <=0x80000)--10850最大
do
nmsl=nmsl+0x18
addr=RUI(add+nmsl)
if readD(addr+0x58) == 1030074 then ---
setvalue(addr+0x18,4,1103007015)
end

if readD(addr+0x58) == 1030075 then ---
setvalue(addr+0x18,4,1103007015)

end
if readD(addr+0x58) == 1030076 then---
setvalue(addr+0x18,4,1103007015)

end
if readD(addr+0x58) == 1030077 then ---
setvalue(addr+0x18,4,1103007015)
gg.alert("历遍完成")	
break
end
end
end,
function()

end,
""),	
yunzhu.switch(
"星云妹控",
function()
local cfg_file = gg.EXT_FILES_DIR.."/"..gg.getFile():match("[^/]+$")..'(MK14星云力量.).lua'
local chunk = loadfile(cfg_file)
local cfg = nil
if chunk ~= nil then
cfg = chunk()
end
gg.alert("正在遍历 请耐心等待 有提示后再开别的")
a=0x0
while(a <=0xAF0)
do
a=a+0x10
mk=gg.getRangesList('libUE4.so')[1].start
add = RUI(RUI(RUI(RUI(RUI(mk + 0xC516A80) + 0x558) + a) + 0x30) + 0x38)--动态DD900
adpd = RUI(RUI(RUI(RUI(RUI(mk + 0xC516A80) + 0x558) + a) + 0x30) + 0x30) +0x18
if readD(adpd) == 1000 then
addListltems(add,4,0,false)
break
add=add
end
end

nmsl=0x5000--3FF8初始
while(nmsl <=0x80000)--10850最大
do
nmsl=nmsl+0x18
addr=RUI(add+nmsl)
if readD(addr+0x58) == 1030074 then ---
setvalue(addr+0x18,4,1103007020)
end

if readD(addr+0x58) == 1030075 then ---
setvalue(addr+0x18,4,1103007020)

end
if readD(addr+0x58) == 1030076 then---
setvalue(addr+0x18,4,1103007020)

end
if readD(addr+0x58) == 1030077 then ---
setvalue(addr+0x18,4,1103007020)
gg.alert("历遍完成")	
break
end
end
end,
function()

end,
""),	
yunzhu.switch(
"MG3苍穹",
function()
local cfg_file = gg.EXT_FILES_DIR.."/"..gg.getFile():match("[^/]+$")..'(MG3.).lua'
local chunk = loadfile(cfg_file)
local cfg = nil
if chunk ~= nil then
cfg = chunk()
end

gg.alert("正在遍历 请耐心等待 有提示后再开别的")

a=0x0
while(a <=0xAF0)
do
a=a+0x10
mk=gg.getRangesList('libUE4.so')[1].start
add = RUI(RUI(RUI(RUI(RUI(mk + 0xC516A80) + 0x558) + a) + 0x30) + 0x38)--动态DD900
adpd = RUI(RUI(RUI(RUI(RUI(mk + 0xC516A80) + 0x558) + a) + 0x30) + 0x30) +0x18
if readD(adpd) == 1000 then

break
add=add
end
end

nmsl=0x5000--3FF8初始
while(nmsl <=0x80000)--10850最大
do
nmsl=nmsl+0x18
addr=RUI(add+nmsl)
if readD(addr+0x58) == 1050104 then ---
setvalue(addr+0x18,4,1105010008)
end

if readD(addr+0x58) == 1050105 then ---
setvalue(addr+0x18,4,1105010008)

end
if readD(addr+0x58) == 1050106 then---
setvalue(addr+0x18,4,1105010008)

end
if readD(addr+0x58) == 1050107 then ---
setvalue(addr+0x18,4,1105010008)
gg.alert("遍历完毕")
break
end
end
end,
function()

end,
""),	
yunzhu.switch(
"血龙魇AMR",
function()
local cfg_file = gg.EXT_FILES_DIR.."/"..gg.getFile():match("[^/]+$")..'(MK14星云力量.).lua'
local chunk = loadfile(cfg_file)
local cfg = nil
if chunk ~= nil then
cfg = chunk()
end
gg.alert("正在遍历 请耐心等待 有提示后再开别的")
a=0x0
while(a <=0xAF0)
do
a=a+0x10
mk=gg.getRangesList('libUE4.so')[1].start
add = RUI(RUI(RUI(RUI(RUI(mk + 0xC516A80) + 0x558) + a) + 0x30) + 0x38)--动态DD900
adpd = RUI(RUI(RUI(RUI(RUI(mk + 0xC516A80) + 0x558) + a) + 0x30) + 0x30) +0x18
if readD(adpd) == 1000 then
addListltems(add,4,0,false)
break
add=add
end
end

nmsl=0x5000--3FF8初始
while(nmsl <=0x80000)--10850最大
do
nmsl=nmsl+0x18
addr=RUI(add+nmsl)
if readD(addr+0x58) == 1030121 then ---
setvalue(addr+0x18,4,1103012010)
end

if readD(addr+0x58) == 1030122 then ---
setvalue(addr+0x18,4,1103012010)

end
if readD(addr+0x58) == 1030123 then---
setvalue(addr+0x18,4,1103012010)

end
if readD(addr+0x58) == 1030124 then ---
setvalue(addr+0x18,4,1103012010)
gg.alert("历遍完成")	
break
end
end

end,
function()

end,
""),	



}),--box结尾
yunzhu.box({--box开头
"衣服美化",--box名字

yunzhu.switch(
"胖达套装①",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x2F0,0x280,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1405040}})----衣服链条

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x1C0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1501002009}})----背包链条

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x1F8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1502003027}})----头盔链条
string.toMusic('开启成功')
end,
function()
string.toMusic('无法关闭')
end,
""),	
yunzhu.switch(
"胖达套装②",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x2F0,0x280,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1405039}})----衣服链条

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x1C0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1501003261}})----背包链条

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x1F8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1502003027}})----头盔链条
string.toMusic('开启成功')
end,
function()
string.toMusic('无法关闭')
end,
""),	
yunzhu.switch(
"木乃伊 [白]",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x2F0,0x280,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1400687}})----衣服链条

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x1C0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1501003310}})----背包链条

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x1F8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1502002027}})----头盔链条
gg.toast("开启成功")
gg.toast("开启成功")
end,
function()

end,
""),	
yunzhu.switch(
"木乃伊 [黄]",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x2F0,0x280,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1405623}})----衣服链条

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x1C0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1501003261}})----背包链条

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x1F8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1502003027}})----头盔链条
end,
function()

end,
""),	
yunzhu.switch(
"木乃伊 [蓝]",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x1F8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1406891}})----衣服链条

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x1C0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1501003261}})----背包链条

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x1F8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1502003027}})----头盔链条
gg.toast("开启成功")
end,
function()

end,
""),	

yunzhu.switch(
"黄金风衣",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x2F0,0x280,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1406891}})----衣服链条

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x2F0,0x280,0x388,0x38}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1400779}})----面部链条

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x1C0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1501003261}})----背包链条

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x1F8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1502003027}})----头盔链条
gg.toast("开启成功")
end,
function()

end,
""),	

yunzhu.switch(
"身法套装",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x2F0,0x280,0x388,0x38}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1403119}})----面部链条

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x2F0,0x280,0x388,0x70}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 40605012}})----头发链条

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x2F0,0x280,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1404133}})----衣服链条

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x2F0,0x280,0x388,0x150}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1404160}})----裤子链条

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x1C0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1501003009}})----背包链条

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x1F8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1502003027}})----头盔链条
gg.toast("开启成功")
end,
function()

end,
""),	

yunzhu.switch(
"狂沙舞者",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x2F0,0x280,0x388,0x38}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1403119}})----面部链条

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x2F0,0x280,0x388,0x70}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 40605012}})----头发链条

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x2F0,0x280,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1404207}})----衣服链条

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x2F0,0x280,0x388,0x150}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1404160}})----裤子链条

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x1C0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1501003009}})----背包链条

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x1F8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1502002027}})----头盔链条
gg.toast("开启成功")
end,
function()

end,
""),	

yunzhu.switch(
"黑泽明日香",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x2F0,0x280,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1406381}})----衣服链条
end,
function()

end,
""),	
yunzhu.switch(
"深渊皇后",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x2F0,0x280,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1406140}})----衣服链条
end,
function()

end,
""),	

yunzhu.switch(
"齐天大圣",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x2F0,0x280,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1402627}})----衣服链条
end,
function()

end,
""),	
yunzhu.switch(
"曙光弗洛拉",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x2F0,0x280,0x388,0x118}--衣服
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1407103}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x2F0,0x280,0x388,0x38}--脸部
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1403655}})
end,
function()

end,
""),	
yunzhu.switch(
"裁決冥王",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x2F0,0x280,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1406569}})----衣服链条
end,
function()

end,
""),	
yunzhu.switch(
"至尊银龙",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x2F0,0x280,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1400779}})----衣服链条
end,
function()

end,
""),	
yunzhu.switch(
"冰衣晶核",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x2F0,0x280,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1400782}})----衣服链条
end,
function()

end,
""),	
yunzhu.switch(
"瑰宝皇后",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x2F0,0x280,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1405798}})----衣服链条
end,
function()

end,
""),	
yunzhu.switch(
"金尊皇帝",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x2F0,0x280,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1405799}})----衣服链条
end,
function()

end,
""),	
yunzhu.switch(
"暗金皇帝",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x2F0,0x280,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1405800}})----衣服链条
end,
function()

end
,
""),	
yunzhu.switch(
"诱惑麋鹿",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x2F0,0x280,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1405012}})----衣服链条
end,
function()

end,
""),	
yunzhu.switch(
"胭脂套装",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x39488,0x0,0x2F0,0x280,0x390,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1405622}})----衣服链条
end,
function()

end,
""),	
yunzhu.switch(
"永恒祭司",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x2F0,0x280,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1405585}})----衣服链条
end,
function()

end,
""),	

yunzhu.switch(
"高阶祭司",
function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x2F0,0x280,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1405785}})----衣服链条
end,
function()

end,
""),	
}),--box结尾


},{
--第五页
gang(),
yunzhu.button("搜索音乐",
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
Play(gqlb,idb)
else
function inspect()
gg.alert("访问网络异常，错误代码：\n\n"..jg.code)
end
if not pcall(inspect) then print("网络异常，请先连接上网络") os.exit() end
end
XGCK=-1
end,
"#DB202C"),	

yunzhu.button("关闭音乐",
function()
string.toMusic("关闭成功")
end,
function()
gg.alert("已关闭")
end),
yunzhu.text("\n\n"),
yunzhu.button("退出",function()
luajava.setFloatingWindowHide(false)
tuichu=1
end),	

},
})
--配置表添加表即可加页数，需要与上边菜单标题数对应



huiz()
--draw.text('.', -9200,-9200)

显示 = 1
while true do
if tuichu == 1 then break end
jianting3(qiehuan)
gg.sleep(120)
end
luajava.setFloatingWindowHide(false)

local function invoke()
return window:removeView(floatWindow)
end
luajava.post(invoke)
luajava.setFloatingWindowHide(false)
