





function huiz()
	--绘制内容必须写在这里否则会消失
	draw.setSize(56)
	draw.setStyle('填充')
	draw3 = require('draw3')
	text1 = draw3.text("......",300,285)draw.setColor('#6293FF')
end
huiz()

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
-- telegram: @Darling
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
changan = {} 
window = context:getSystemService("window") -- 获取窗口管理器
function panduan(rec) fille,err = io.open(rec) if fille == nil then return false else return true end end
function checkimg(tmp,ii)
if panduan("/sdcard/长安/图片/"..tmp) ~= true then
gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
luajava.download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..tmp,"/sdcard/长安/图片/"..tmp)
else
if file.length("/sdcard/长安/图片/"..tmp) <= 1 then
gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
luajava.download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..tmp,"/sdcard/长安/图片/"..tmp)
end
end
if panduan("/sdcard/长安/图片/"..tmp) ~= true then
gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
luajava.download("https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/"..tmp,"/sdcard/长安/图片/"..tmp)
else
	if file.length("/sdcard/长安/图片/"..tmp) <= 1 then
gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
luajava.download("https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/"..tmp,"/sdcard/长安/图片/"..tmp)
end
end
end
ckimg = {
	"heir",
	"hei_right",
	"heir",
	"heic",
	'heis','heisuo',
	'quarkcheckoff','quarkcheckon',
	'sscoR','Shimmer2.dex'
}

for i = 1,#ckimg do
jindu = i
checkimg(ckimg[i],i)
end

shimmer=dex.loadfile('/sdcard/长安/图片/Shimmer2.dex')
import "com.romainpiel.shimmer.Shimmer"
import "com.romainpiel.shimmer.ShimmerTextView"
function 获取图片(txt)
txt = string.url(txt,"de")
ntxt = string.sub(string.gsub(txt,"/","-"),-10,-1)
if string.find(tostring(txt),"http") ~= nil then
if panduan("/sdcard/长安/图片/"..ntxt) == false then
file.download(txt,"/sdcard/长安/图片/"..ntxt)
else
	if file.length("/sdcard/长安/图片/"..ntxt) <= 1 then
file.download(txt,"/sdcard/长安/图片/"..ntxt)
end
end
txt = "/sdcard/长安/图片/"..ntxt
end
return luajava.getBitmapDrawable(txt)
end
function getRes(x)
return 获取图片("/sdcard/长安/图片/"..x)
end
isLocked=false
inlock=getRes("heisuo")
uiunlock=getRes("heis")
function uiLock()
vibra:vibrate(15)
if isLocked==false then
	isLocked=true
	luajava.newThread(function()
		string.toMusic("UI缩放已锁定")
	end):start()
	lockui:setImageDrawable(inlock)
else
	isLocked=false
	luajava.newThread(function()
		string.toMusic("UI缩放已解锁")
	end):start()
	lockui:setImageDrawable(uiunlock)
end
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
searchlist={}
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
suofang = function(v, event)
if isLocked then hanshu(v,event) return 0 end
local Action = event:getAction()

if Action == MotionEvent.ACTION_DOWN then
isMove = false
RawX = event:getRawX()
RawY = event:getRawY()
hx = mainLayoutParams.height
hy = mainLayoutParams.width
if hx == 0 or hx==-2 then hx = 810 hy = 1150 end
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
changan.menu = function(sviews)
if isswitch then
return false
end
isswitch = true
local layout = {
		'ui.ViewPager',
		layout_height ="match_parent",
		
		layout_width='match_parent',
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
		slcta[i]=getVerticalBG({0xff004EFF,0xff004EFF},15)
		slctb[i]=getVerticalBG({0xffffffff,0xffffffff},15)
		
		_ENV["jm"..i]=luajava.loadlayout({
			LinearLayout,
			layout_height="50dp",
			layout_width="58.4dp",
			gravity="center",
			orientation="vertical",
			onClick=function() 切换(i) end,
			
			{TextView,
			id="jm"..i.."t",
			text=stab[i],
			textSize="11sp",
			textColor="#161616",
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
		
		for h=1,#sviews[i] do
			local t=sviews[i][h]
			if type(t)=='userdata' then
			tmp1[#tmp1 +1]=t
			else
				tmp1[#tmp1+1]=t.view
			end
			
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
		_ENV["layout"..i]={
			LinearLayout,
			layout_height="wrap_content",
			layout_width="match_parent",
			orientation='vertical',
			{LinearLayout,
			layout_height="wrap_content",
			layout_width="match_parent",
			background=getCorner({0x00ffffff,0x00ffffff},20,0,0xaa161616,20,20,20,20),
			tmp1},
			--onTouch=Gundong,
			padding={'15dp','0dp','15dp','0dp'},
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
			_ENV["jm"..i .."t"]:setTextColor(0xff212121)
			_ENV["jm"..i .."t"]:setBackground(slctb[i])
			
		end
		当前ui=view+1
		_ENV["jm"..view+1 .."t"]:setTextColor(0xffffffff)
_ENV["jm"..view+1 .."t"]:setBackground(slcta[view+1])

		end})
_ENV['tosearch']='tosearch'
function topSelect()
local selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, getVerticalBG({0xE0E0E0E0,0xE0E0E0E0},60))
selector:addState({
	-android.R.attr.state_pressed
}, empty)
return selector
end
topbar=luajava.loadlayout({
	LinearLayout,
	layout_width="fill_parent",
	layout_height="37.5dp",
	background=getCorner({0xffffffff,0xffffffff},40,0,0xff232323,40,40,0,0),
	onClick=function() end,
	onTouch=hanshu,
	{LinearLayout,
	layout_width="37.5dp",
	layout_height="match_parent",
	gravity="center",
	{
			ImageView,
			padding = "5dp",
			id="lockui",
			src = getRes("heis"),
			background=getVerticalBG({0xffE6E6E6,0xffE6E6E6},100),
			layout_width = "20dp",
			layout_height = "20dp",
			layout_marginRight = "5dp",
			onClick = uiLock,
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
			layout_width='70dp',
			layout_height='match_parent',
			gravity="center",
		}
	},
	{LinearLayout,
		layout_width="fill_parent",
		layout_marginLeft='-80dp',
		layout_weight=1,
		layout_height="match_parent",
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
		background=getVerticalBG({0xff004EFF,0xff004EFF},20)
		
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
			src = getRes("heix"),
			background=getVerticalBG({0xffE6E6E6,0xffE6E6E6},90),
			layout_width = "20dp",
			layout_height = "20dp",
			layout_marginRight = "5dp",
			onClick = 隐藏,
			onTouch = hanshu,
		}
	}
})

	ckou={
		FrameLayout,
		layout_height="match_parent",
		layout_width="match_parent",
		orientation="vertical",
		id='chuangkou',
		background=getVerticalBG({0xffeeeeee,0xffeeeeee},40,0,0xff01CBFF,25,25,25,25),
		{LinearLayout,
		id="canv",
		layout_height="match_parent",
		layout_width="match_parent",
		gravity="bottom",
		orientation='vertical',
		{LinearLayout,
			layout_height='150dp',
			
		}
	},
		topbar,
		{LinearLayout,--top
		layout_marginTop="19dp",
		layout_marginRight="0dp",
		layout_marginLeft="0dp",
		orientation='vertical',
		{LinearLayout,
		layout_width='match_parent',
		layout_height='match_parent',
		padding='4dp',
			{LinearLayout,
				{LinearLayout,
					layout_height="match_parent",
					layout_width="100dp",
					orientation="vertical",
					
					gravity="center",
					onClick=隐藏,
					onTouch=hanshu,
					{LinearLayout,
					onClick=function() end,
					onTouch=hanshu,
					layout_height="fill_parent",
					layout_width="fill_parent",
					gravity="center",
					stit
						
					}
				},
				
				{HorizontalScrollView,
					layout_height='match_parent',
					layout_width='match_parent',
					layout_weight=1,
					padding='4dp',
					{LinearLayout,
						layout_height='match_parent',
						layout_width='match_parent',
						background=getVerticalBG({0x44ffffff,0x44ffffff},10),
						padding='3dp',
						
						},
				},
			}
		
		},
		{LinearLayout,layout_height='match_parent',layout_width='match_parent',layout_weight=1,ViewPager,},
		{HorizontalScrollView,
			layout_width='match_parent',
			layout_height='wrap_content',
			background=getCorner({0x11232323,0x11232323},10,0,0xff0097FF,0,0,20,20),
			{LinearLayout,
			layout_width='wrap_content',
			layout_height='wrap_content',
			padding={'0dp','0dp','20dp','0dp'},
			cebian}}},
	}


ckou = {
	LinearLayout,
	id = "chuangk",
	layout_width = "match_parent",
	layout_height = "match_parent",
	orientation = "vertical",
	ckou

}
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
		id = "control2",
		background = 获取图片(悬浮窗),
		layout_width = "45dp",
		layout_height = "45dp",
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
		
	},{FrameLayout,
	id='reme',
	layout_height='match_parent',
	layout_width='match_parent',
	elevation='3dp',
	{
			ImageView,
			id="sf",
			padding = "2dp",
			src = getRes("sscoR"),
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
param2=getLayoutParams2()
floatWindow = luajava.loadlayout(floatWindow)
local function invoke2()
window:addView(floatWindow, mainLayoutParams)
canv:addView(parti)
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
shimmer = Shimmer();
luajava.runUiThread(function()
  shimmer:setDuration(2000)
  shimmer:setStartDelay(50)
end)
gg.setVisible(false)
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
luajava.newThread(function()
luajava.runUiThread(function()
YoYoImpl:with("FadeOut"):duration(400):playOn(floatWindow)
	end)
gg.sleep(400)
luajava.runUiThread(function()
	floatWindow:setVisibility(View.GONE)
end)
end):start()
else
qhkai = 0
huiz()
luajava.runUiThread(function() floatWindow:setVisibility(View.VISIBLE) end)
luajava.runUiThread(function()
YoYoImpl:with("FadeIn"):duration(400):playOn(floatWindow)
	end)

end
end

while true do
if tuichu == 1 then break end
if 音量隐藏UI then
jianting3(qiehuan)
gg.sleep(120)
end
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
	YoYoImpl:with("FadeIn"):duration(300):playOn(floatWindow)
	canv:setVisibility(View.VISIBLE)
	mainLayoutParams.height = mubx
		mainLayoutParams.width = muby
	mainLayoutParams.flags = LayoutParams.FLAG_NOT_TOUCH_MODAL
	window : updateViewLayout (floatWindow , mainLayoutParams)
	reme:setVisibility(View.VISIBLE)
	ckou:setVisibility(View.VISIBLE)
	else
	canv:setVisibility(View.GONE)
	
	if tuichuing then return 0 end
	tuichuing=true
	luajava.newThread(function()
	luajava.runUiThread(function()
		YoYoImpl:with("FadeOut"):duration(300):playOn(floatWindow)
		end)
	gg.sleep(300)
	luajava.runUiThread(function()
	ckou:setVisibility(View.GONE)
	reme:setVisibility(View.GONE)
	YoYoImpl:with("FadeIn"):duration(300):playOn(floatWindow)
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
jianbians:setStroke(26,tmp3)--边框宽度和颜色
return jianbians
end

function changan.switch(name,func1,func2,miaoshu)
if not checkbg then
	checkbg = getShape2(
	45,
	{0xff004EFF,0xff004EFF},
	4,0xff004EFF)
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
			color = 0xffffffff ,
			cornerRadius = 30
		} ,padding = {
		"0dp","0dp","6dp","0dp"
	},
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
return {view=rest,
	type='switch',
	name=name,
	func1=func1,func2=func2
}
end

switchs={}
tcheck=10
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
		background=getVerticalBG({0xaa1a1b1d,0xaa1a1b1d},10),
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

return {view=switchs[gid..ii],
	type='card',
	name=name,
	func1=func1,
	func2=func2,
}
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
	luajava.getIdValue(nid.."t"):setTextColor(0xff004EFF)
	luajava.getIdValue(nid.."t2"):setTextColor(0xff004EFF)
	luajava.getIdValue(nid.."p"):setColorFilter(0xff004EFF)
	colorvs[nid.."p"]={true,"img"}
	colorvs[nid.."t"]={true,"txt"}
	colorvs[nid.."t2"]={true,"txt"}
	--changan.controlWater(switchs[nid],100)
	end)
_ENV[name] = "开"

pcall(func1)
else
	vibra:vibrate(9)
luajava.runUiThread(function()
	luajava.getIdValue(nid.."t"):setTextColor(0xffffffff)
	luajava.getIdValue(nid.."p"):setColorFilter(0xff212121)
	luajava.getIdValue(nid.."t2"):setTextColor(0xffaaaaaa)
	colorvs[nid.."p"]={false,"img"}
	colorvs[nid.."t"]={false,"txt"}
	colorvs[nid.."t2"]={false,"txt"}
	--changan.controlWater(switchs[nid],100)
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

ckbg=getVerticalBG({0xff3A3A3C,0xff3A3A3C},360)
nowbg=1
swits={}
checkbg1 = getRes("quarkcheckoff")
checkbg2 = getRes("quarkcheckon")
switchs={}
function changan.intcheck(name,func1,func2)
nid = name..guid()
local func = 开关5(name,func1,func2,nid)
if not name then name = "未设置" end
switchs[nid] = {
	LinearLayout,
	layout_width = 'match_parent',
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
		gravity = "center_vertical",
		--background=getVerticalBG({0xffFFFDF2,0xddffffff,0xffFFFDF2},15,8,0xffFFDA71),
		{
			FrameLayout,
			id = luajava.newId(nid),
			background = checkbg1,
			layout_width = '32dp',
			layout_height = '32dp',
			padding = "0dp",
		},{
			TextView,
			id=luajava.newId(nid.."t"),
			gravity = "left",
			text = name,
			textColor='#000000',
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
	luajava.getIdValue(nid):setBackground(checkbg2)
	luajava.getIdValue(nid.."t"):setTextColor(0xff004EFF)
	--changan.controlWater(switchs[nid],300)
	end)
_ENV[name] = "开"
pcall(func1)
else
	vibra:vibrate(9)
luajava.runUiThread(function()
	luajava.getIdValue(nid):setBackground(checkbg1)
	luajava.getIdValue(nid.."t"):setTextColor(0xff232323)
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
changan.controlRotation9 = function(control, time,t)
luajava.runUiThread(function()
	import "android.view.animation.Animation"
	import "android.animation.ObjectAnimator"
	xuanzhuandonghua = ObjectAnimator:ofFloat(control, "rotation", {
		time,t
	})
	xuanzhuandonghua:setRepeatCount(0)
	xuanzhuandonghua:setRepeatMode(Animation.RESTART)
	xuanzhuandonghua:setDuration(600)
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
boxpic[tid]:setColorFilter(0xff004EFF)
colorvs[tid]={true,"box"}
else
	tview : setVisibility (View.GONE)
changan.controlWater (_ENV [tid.."6"] , 200)
changan.controlRotation9(boxpic[tid],90,0)
boxpic[tid]:setColorFilter(nil)
colorvs[tid]={false,"box"}
end
end
function particle(co1,co2,cor)
local webView = luajava.webView(function(webView)
	webView:loadData([[
	
	
	]], 'text/html', 'UTF-8')
	webView:setBackgroundColor(0x0)
	end)
return webView
end





parti=particle(
	"rgba(0,0,0,0.1)",
	"rgba(0,0,0,1)",
	"#909090")
boxes = {} boxpic = {}
function changan.box (views)
local tid = "box"..guid ()
local vs={}
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
		textColor = "#000000" ,
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
	if type(views[i])=='table' then
		radios [# radios + 1] = views [i].view
		vs[#vs+1]=views [i]
		else
radios [# radios + 1] = views [i]
end
end
boxes[tid] = luajava.loadlayout(radios)
firadio [# firadio + 1] = boxes[tid]
_ENV [t1id] = luajava.loadlayout (firadio)
return {view=_ENV [t1id],
	type='BOX',
	name=views[1],
	vs=vs
	}
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
				changan.controlWater(buts[tid],200)
				vibra:vibrate(1)
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
return {view=buts[tid],
	name=txt,
	func=func,
	type='button'
	}





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
radon=getVerticalBG({0xffffffff,0xffffffff},360,20,0xff004EFF)
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
	textColor = "#212121" ,
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
	background=getVerticalBG({0xffffffff,0xffffffff},45),
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
	changan.controlWater (_ENV [tid] , 600)
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
		textColor = "#212121" ,
		layout_width = 'wrap_content' ,
		layout_height = 'wrap_content' ,
		layout_marginLeft = "10dp" ,
		layout_marginRight = "5dp" ,
	}
})
restt [# restt + 1] = _ENV [tid]
end
rest [# rest + 1] = restt
return {view=luajava.loadlayout(rest),
	type='radio',
	name='单选',
}
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
function changan.text(text,color,size,isjz)
if not color then color="#161616" end
if isjz then
	rst= luajava.loadlayout(
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
rst= luajava.loadlayout({
	TextView,
	text=text,
	textColor=color,
	textSize=size,
	layout_height="wrap_content",
	layout_width="match_parent",
	autoSizeTextType="uniform",
})
end
return {view=rst,
	name=text,
}
end

function getButtonBG()
local selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, getVerticalBG({0xffffffff,0xffffffff},35))
selector:addState({
	-android.R.attr.state_pressed
}, getVerticalBG({0xffffffff,0xffffffff},35))
return selector
end

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
buts={}
heir=getRes("heir")
function changan.button(txt,func,txtc)
if not txt then txt = "未设置" end
if not txtc then txtc="#000000" end
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
hint = "点击输入文字"
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
			textColor=0xff212121,
			textSize = "13sp",
			layout_height = "40dp" ,
			layout_marginBottom = "-2dp",
			id=luajava.newId(_ENV [name]),
			layout_width = 'fill' ,
			
		}
	}
})
luajava.getIdValue(_ENV [name]):setHintTextColor(0xff545454)
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
			progressDrawable={ getVerticalBG({0xff004EFF,0xff004EFF},45)},
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
return {view=rest,
	name=name,
	type='拉条'
}
end













































muby=850
--初始宽度 竖屏建议850 横屏建议1310


mubx=1310
--初始高度 竖屏建议1310 横屏建议850

























































































    

















































    

















































    

















































    

















































    

















































    

















































    

















































    

















































    

















































    

















































    

















































    

















































    

















































    

















































    

















































    

















































    

















































    


悬浮窗="http://43.139.24.211/view.php/56ed408081e205154e32ac83c353aa2f.png"

stab={
	"公告",
	"防封",
	"刷号",
	"竞赛",
	"音乐",
	"设置",
}


















































    
loadingBox = getLoadingBox('正在启动...')
loadingBox['显示']()























































    
changan.menu({
	{---第一页

















































    
		changan.text("长安UI",nil,"15sp"),
		changan.switch(
			"功能",
			function()

















































    
				a()--例子 对应上面前置函数function a
			end,
			function()
				
			end
		),
		changan.box({
			"XXX区",
				changan.edit("输入框演示"),
				changan.button(
					"调用输入框",
					function()
						local tmp=changan.getedit("输入框演示")
						gg.alert(tmp)
					end),
				
				
				
				
		}),--box结尾
		changan.switch(
			"功能",
			function()
				
			end,
			function()
				
			end
		),
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
				},
			}),
		changan.button(
			"功能",
			function()
				
			end),
		changan.button(
			"进程",
			function()
				gg.setProcessX()
			end),
		
		
		
		
	},{---第二页
		changan.box({
			"XXX区",
		changan.check({
				{
					"重置衣服",
					function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x25468,0x0,0x340,0x30,0x388,0x1F8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 0}})----衣服
gg.toast("开启成功")
						
					end,
					function()
						
					end





				}, {
					"至尊银龙",
					function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x25468,0x0,0x340,0x30,0x388,0x1F8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1400779}})----衣服
gg.toast("开启成功")
						
					end,
					function()
						










					end
				}, {
					"身法套装",
					function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x25468,0x0,0x340,0x30,0x388,0x38}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1403119}})----面部

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x25468,0x0,0x340,0x30,0x388,0x70}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 40605012}})----头发

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x25468,0x0,0x340,0x30,0x388,0x1F8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1404133}})----衣服

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x25468,0x0,0x340,0x30,0x388,0x150}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1404160}})--裤子

gg.toast("开启成功")
						
					end,
					function()
						
					end
				}, {
					"自改全身",
					function()
local cfg_file = "/sdcard/国际衣服配置.ini"
local chunk = loadfile(cfg_file)
local cfg = nil
if chunk ~= nil then
 cfg = chunk()
end
if cfg == nil then
cfg = {1403130,0,1406891,0,0,0,0,true}
end
XS = gg.prompt({
"面部修改:",--1
"头发修改:",--2
"衣服修改",--3
"裤子修改:",--4
"鞋子修改:",--5
"背包修改:\n改0不显示",--6
"头盔修改:\n改0不显示",--7
},cfg,{"text","text","text", "text","text","text","text","text","text","text", "text","text","text","text","text"})
if XS == nil then else
gg.saveVariable(XS, cfg_file)
if XS[1] == true then XS1() end
if XS[2] == true then XS2() end
if XS[3] == true then XS3() end
if XS[4] == true then XS4() end
if XS[5] == true then XS5() end
if XS[6] == true then XS6() end
if XS[7] == true then XS7() end


local t = {"libUE4.so:bss", "Cb"}
local tt = {0x25468,0x0,0x340,0x30,0x388,0x38}
local ttt = S_Pointer(t, tt, true) gg.setValues({{address = ttt, flags = 4, value = XS[1]}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x25468,0x0,0x340,0x30,0x388,0x70}
local ttt = S_Pointer(t, tt, true) gg.setValues({{address = ttt, flags = 4, value =XS[2]}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x25468,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true) gg.setValues({{address = ttt, flags = 4, value =XS[3]}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x25468,0x0,0x340,0x30,0x388,0x150}
local ttt = S_Pointer(t, tt, true) gg.setValues({{address = ttt, flags = 4, value = XS[4]}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x25468,0x0,0x340,0x30,0x388,0x188}
local ttt = S_Pointer(t, tt, true) gg.setValues({{address = ttt, flags = 4, value = XS[5]}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x25468,0x0,0x340,0x30,0x388,0x1C0}
local ttt = S_Pointer(t, tt, true) gg.setValues({{address = ttt, flags = 4, value = XS[6]}})











local t = {"libUE4.so:bss", "Cb"}
local tt = {0x25468,0x0,0x340,0x30,0x388,0x1F8}
local ttt = S_Pointer(t, tt, true) gg.setValues({{address = ttt, flags = 4, value = XS[7]}})
string.toMusic('开启成功')
end

						
					end,
					function()
						
					end
				},
			}),
				
				
				
				
		}),--box结尾
			changan.box({
			"XXX区",
		changan.check({
				{
					"全枪遍历",
					function()
local function RUI(address)
    return gg.getValues({{address = address, flags = gg.TYPE_QWORD}})[1].value
end
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function addListltems(address,flags,value,freeze) t={} t[1]={} t[1].address=address t[1].flags=flags t[1].value=value t[1].freeze=freeze gg.addListItems(t) end
local function readD ( a )
    return gg.getValues ( { {
            address = a ,
            flags = 4
        } } ) [ 1 ].value
end

a=0x0
--C95AEA0
	--0xBFEA0
	
		while(a <=0xAF0)--0xBFEA0,0x558,0x30,0x30,0x38,0x288阿狸宝宝
			do
			a=a+0x10
			mk=gg.getRangesList('libUE4.so')[1].start
			add = RUI(RUI(RUI(RUI(RUI(mk + 0xC95AEA0) + 0x558) + a) + 0x30) + 0x38)
            adpd = RUI(RUI(RUI(RUI(RUI(mk + 0xC95AEA0) + 0x558) + a) + 0x30) + 0x30) +0x18
			if readD(adpd) == 1000 then
				break
				add=add
			end






























		end
		nmsl=0x3FF8--0x3FF8初始 0x5000 0x4148 0x7500
		while(nmsl <=0x866E218)--10850最大
			do
			nmsl=nmsl+0x18
			addr=RUI(add+nmsl)


if readD(addr+0x58) == 101001 then
setvalue(addr+0x18,4,1101001231)
gg.toast("俏皮兔宝-AKM(7级)开启成功")




















end
--58不用管，只用动101001，101001就是ak的值，但是要去掉那2个0，怎么说呢，原本是10100100的，我们就把那两个0去掉就行了，
--
if readD(addr+0x58) == 101001 then
setvalue(addr+0x18,4,1101001231)--0x18就是枪这个也不要动，4就是d类型，1101001231这个就是要改的值，就是这样很简单的，
gg.toast("俏皮兔宝-AKM(7级)开启成功")
end



if readD(addr+0x58) == 101002 then
setvalue(addr+0x18,4,1101002056)
gg.toast("极光脉冲-M16A4(7级)开启成功")
end
if readD(addr+0x58) == 101003 then
setvalue(addr+0x18,4,1101003057)
gg.toast("梦幻水枪-SCAR-L(7级)开启成功")
end
if readD(addr+0x58) == 101002 then
setvalue(addr+0x18,4,1101002056)
gg.toast("极光脉冲-M16A4(7级)开启成功")
end

if readD(addr+0x58) == 101102 then
setvalue(addr+0x18,4,1101102017)
gg.toast("神庭冰棘-ace32(7级)开启成功")
end

if readD(addr+0x58) == 101005 then
setvalue(addr+0x18,4,1101005052)
gg.toast("冥河烈焰-Groza(7级)开启成功")
end
if readD(addr+0x58) == 101006 then
setvalue(addr+0x18,4,1101006062)
gg.toast("弃誓冰灵-AUG开启成功")
end
if readD(addr+0x58) == 101007 then
setvalue(addr+0x18,4,1101007046)
gg.toast("瑰绮灵姬-QBZ(7级)开启成功")
end
if readD(addr+0x58) == 101008 then
setvalue(addr+0x18,4,1101008104)
gg.toast("星云机械-M762(8级)开启成功")
end
if readD(addr+0x58) == 101009 then
setvalue(addr+0x18,4,1101009013)
gg.toast("混沌锁链-MK47开启成功")
end
if readD(addr+0x58) == 101010  then
setvalue(addr+0x18,4,1101010016)
gg.toast("草原之王-G36C开启成功")
end
if readD(addr+0x58) == 102001 then
setvalue(addr+0x18,4,1102001103)
gg.toast("果园橙子-UZI(5级)开启成功")
end
if readD(addr+0x58) == 102002 then
setvalue(addr+0x18,4,1102002043)
gg.toast("龙焰之怒-UMP45(7级)开启成功")
end
if readD(addr+0x58) == 102003 then
setvalue(addr+0x18,4,1102003080)
gg.toast("掠空之翼-Vector(7级)开启成功")
end
if readD(addr+0x58) == 102004 then
setvalue(addr+0x18,4,1102004018)
gg.toast("糖果加农-汤姆逊(5级)开启成功")
end
if readD(addr+0x58) == 102005 then
setvalue(addr+0x18,4,1102005007)
gg.toast("青铜龙骨-野牛冲锋枪(5级)开启成功")
end
if readD(addr+0x58) == 103001 then
setvalue(addr+0x18,4,1103001179)
gg.toast("恐怖齿痕-Kar98K(7级)开启成功")
end
if readD(addr+0x58) == 103002 then
setvalue(addr+0x18,4,1103002087)
gg.toast("黄金权杖-M24(7级)开启成功")
end
if readD(addr+0x58) == 103003 then
setvalue(addr+0x18,4,1103003062)
gg.toast("紫夜苍穹-AWM(7级)开启成功")
end
if readD(addr+0x58) == 103004 then
setvalue(addr+0x18,4,1103004037)
gg.toast("猩红女士-SKS(7级)开启成功")
end
if readD(addr+0x58) == 103005 then
setvalue(addr+0x18,4,1103004058)





gg.toast("野性杀戮-VSS(5级)开启成功")
end
if readD(addr+0x58) == 103006 then
setvalue(addr+0x18,4,1030060461)
gg.toast("Mini14(7级)开启成功")
end
if readD(addr+0x58) == 103007 then
setvalue(addr+0x18,4,1103007020)
gg.toast("星云力量-Mk14(5级)开启成功")
end
if readD(addr+0x58) == 103008 then
setvalue(addr+0x18,4,1103008017)
gg.toast("缤纷彩绘-Win94开启成功")
end
if readD(addr+0x58) == 103009 then
setvalue(addr+0x18,4,1103009022)





gg.toast("落樱金花-SLR(5级)开启成功")
end
if readD(addr+0x58) == 103010 then
setvalue(addr+0x18,4,1103010001)
gg.toast("月夜奔狼-QBU开启成功")
end
if readD(addr+0x58) == 103011 then
setvalue(addr+0x18,4,1103011001)





gg.toast("微笑小丑-莫辛纳甘开启成功")
end
if readD(addr+0x58) == 103012 then
setvalue(addr+0x18,4,1103012010)
gg.toast("嗜血龙魇-AMR(8级)开启成功")
end
if readD(addr+0x58) == 103100 then
setvalue(addr+0x18,4,1103100013)
gg.toast("静谧雪夜-MK12开启成功")
end
if readD(addr+0x58) == 104001 then
setvalue(addr+0x18,4,1104001027)
gg.toast("绿野金饰-S686开启成功")
end
if readD(addr+0x58) == 104002 then
setvalue(addr+0x18,4,1104002022)
gg.toast("落日捕猎-S1897(5级)开启成功")
end
if readD(addr+0x58) == 104003 then
setvalue(addr+0x18,4,1104003026)
gg.toast("S12K(GACKT)(7级)开启成功")
end
if readD(addr+0x58) == 104004 then
setvalue(addr+0x18,4,1104004021)
gg.toast("极速迅影DBS(7级)开启成功")
end





if readD(addr+0x58) == 105001 then
setvalue(addr+0x18,4,1105001048)
gg.toast("极辉女帝-M249(7级)开启成功")
end
if readD(addr+0x58) == 105002 then
setvalue(addr+0x18,4,1105002063)





gg.toast("神龙之怒DP28(5级)开启成功")
end
if readD(addr+0x58) == 105010 then
setvalue(addr+0x18,4,1105010008)





gg.toast("苍穹之龙-MG3(5级)开启成功")
end
if readD(addr+0x58) == 106001 then
setvalue(addr+0x18,4,1106001015)
gg.toast("火焰风息-P92开启成功")





end
if readD(addr+0x58) == 106002 then
setvalue(addr+0x18,4,1106002024)
gg.toast("邪能战甲-P1911开启成功")
end
if readD(addr+0x58) == 106003 then
setvalue(addr+0x18,4,1106003012)
gg.toast("魔女俏女仆-R1895开启成功")





end
if readD(addr+0x58) == 106004 then
setvalue(addr+0x18,4,1106004002)
gg.toast("JK兔-P18C开启成功")
end
if readD(addr+0x58) == 106005 then
setvalue(addr+0x18,4,1106005002)
gg.toast("勇敢小鸡-R45开启成功")
end





if readD(addr+0x58) == 106006 then
setvalue(addr+0x18,4,1106006014)
gg.toast("瑰宝匣子-短管霰弹枪开启成功")
end
if readD(addr+0x58) == 106008 then
setvalue(addr+0x18,4,1106008013)





gg.toast("黄金秘锁-蝎式手枪(5级)开启成功")
end
if readD(addr+0x58) == 106010 then
setvalue(addr+0x18,4,1106010002)





gg.toast("神殿守护者-沙漠之鹰开启成功")
end
if readD(addr+0x58) == 107001 then
setvalue(addr+0x18,4,1107001018)





gg.toast("小丑之怒-十字弩(3级)开启成功")
gg.toast("开启成功")
break
end
end
						
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
				},
			}),
				
		
				





				
		}),--box结尾
				changan.box({
			"XXX区",
		changan.check({
				{
					"M4冰霜",
					function()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x25468,0x0,0x90,0x1668}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101004046, freeze = true}})--播报

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x25468,0x0,0x2740,0xA18,0x11C}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1101004046}})--手持枪

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x25468,0x0,0x1A0,0x0,0x710,0x300,0x8,0x108,0x8C}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1101004046}})--手持枪
						
					end,
					function()
						
					end
				},
			}),
				
				
				
		}),--box结尾
		
		





		
	
	},{---第三页
		changan.switch(
			"功能",
			function()
				
			end,





			function()
				
			end
		),





		changan.switch(
			"功能",
			function()
				
			end,
			function()
				
			end
		),





		changan.button(
			"功能",
			function()
				
			end),
		
		
		





		
	},{---第四页
		
		
		





		
	},{---第五页
		





	},{---第六页
		
		changan.text("\n"),
		changan.image(
			"https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/quarkphone",
			"60dp","60dp",--图片高度宽度（可省略）
			"10dp",--内边距（可省略）
			function()
				隐藏()
				gg.QQgroup("xxxx")
				--gg.QQgroup("群号")---qq群
				--gg.intent("链接")--网页（tg群）
			end--点击图片执行的功能（可省略）
			),





		changan.text("点击加入官方群",nil,"11sp",true),---第四参数true为居中文字
		changan.text("\n"),
		changan.switch(
			"音量键隐藏UI",--改名会出错
			function()
				音量隐藏UI=true
			end,
			function()
				音量隐藏UI=false
			end
		),





		changan.button(
			"退出",
			function()
				tuichu=1
			end),
	},
})






