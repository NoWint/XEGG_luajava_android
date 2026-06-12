function dongtai()
local webView = luajava.webView(function(webView)
	webView:loadData([[
	<!DOCTYPE html>
<html>
<img src="https://out.zxglife.top/view.php/dc232cf4152df06d99a4d0c1d0c7d627.gif" alt="李白" style="max-height: 300px; max-width: 320px;">
</html>]], 'text/html', 'UTF-8')
	webView:setBackgroundColor(0x0)
	webView:setVerticalScrollBarEnabled(false)
		webView:setHorizontalScrollBarEnabled(false)
		webView:setScrollContainer(false)
end)
return webView
end

function y()
SN = gg.choice({
"- - - - - - - - - - - - - - - - - - - - - - - - - -\n🌏项目名称：水生雨燕内部\n🌏兼容游戏：全球-日韩-越南-台服\n🌏位数兼容：64bit\n- - - - - - - - - - - - - - - - - - - - - - - - - -",
"退出",
}, nil, "❤️水生雨燕内部\n⚽️支持  框架√   root√  虚拟机√\n⭐️TG：SSYYNB")
if SN==1 then t() end
if SN==2 then ex() end
XGCK=-1
end

function t()---放脚本或者内置代码



--local r = gg.prompt({'卡密随便输'}, {''}, {'text'}) 
--local loadingBox = getLoadingBox('验证卡密中...')
--loadingBox['显示']()
--gg.sleep(2000)
--loadingBox['关闭']()--加载框

--gg.alert('到期时间2099.12-30 00.00')
--gg.toast("到期时间2099.12-30 00.00")





function panduan(rec) fille,err = io.open(rec) if fille == nil then return false else return true end end

function checkimg(tmp)
if panduan("/storage/emulated/0/TL/图片/"..tmp) ~= true then
gg.toast("正在下载资源"..tmp.."\n请耐心等待")
download("http://glgy.g8.chat/down.php/bb5d692aadee8943473fb644fae8d6fd.mp3"..tmp,"/storage/emulated/0/TL/图片/"..tmp)
end
end
ckimg = {
	"saice",
}
for i = 1,#ckimg do
jindu = i
checkimg(ckimg[i])
end

--------------------------------------------------配置文件--------------------------------------------------
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
	fw=gg.makeRequest("http://music.163.com/api/search/get?s="..name.."&type=1&offset=0&total=true&limit="..sl)
	return fw
end

function play(id,name)
	gg.toast("正在播放音乐："..name,true)
	gg.playMusic("http://music.163.com/song/media/outer/url?id="..id..".mp3")
end

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
end

function PS() end
function setvalue(address,flags,value) 
PS('修改地址数值(地址,数值类型,要修改的值)') 
local tt={} tt[1]={} 
tt[1].address=address 
tt[1].flags=flags 
tt[1].value=value 
gg.setValues(tt) 
end

function setvalue(address,flags,value) 
local CatWill={} 
CatWill[1]={} 
CatWill[1].address=address 
CatWill[1].flags=flags 
CatWill[1].value=value 
gg.setValues(CatWill) 
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
			
		end
		return _S
	end
	local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit))
	return _A
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

function split(szFullString, szSeparator)
local nFindStartIndex = 1 
local nSplitIndex = 1 
local nSplitArray = {} while true do 
local 
nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) 
if not nFindLastIndex then 
nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) 
break end 
nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) 
nFindStartIndex = nFindLastIndex + string.len(szSeparator) 
nSplitIndex = nSplitIndex + 1 end return 
nSplitArray end function 
xgxc(szpy, qmxg) for x = 1, #(qmxg) do 
xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] 
xgsz = qmxg[x]["value"] 
gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) 
xgsl = xgsl + 1 end end function 
xqmnb(qmnb) 
gg.clearResults() 
gg.setRanges(qmnb[1]["memory"]) 
gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) 
if gg.getResultCount() == 0 then 
gg.toast(qmnb[2]["name"] .. "开启失败")
else 
gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) 
gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) 
gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) 
if gg.getResultCount() == 0 then 
gg.toast(qmnb[2]["name"] .. "开启失败") 
else 
sl = gg.getResults(999999) 
sz = gg.getResultCount() 
xgsl = 0 if sz > 999999 then 
sz = 999999 end for i = 1, sz do 
pdsz = true for v = 4, #(qmnb) do if 
pdsz == true then 
pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] 
pysz[1].flags = qmnb[v]["type"] 
szpy = gg.getValues(pysz) 
pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") 
tzszpd = szpd[1] 
pyszpd = szpd[2] 
if tzszpd == pyszpd then 
pdjg = true pdsz = true else 
pdjg = false pdsz = false end end end 
if pdjg == true then 
szpy = sl[i].address xgxc(szpy, qmxg) 
xgjg = true end end 
if xgjg == true then 
gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") 
else 
gg.toast(qmnb[2]["name"] .. "开启失败") 
end 
end 
end 
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
function ErrSyx()gg.alert("语法错误 | Syntax Error")end
function ErrUnk()gg.alert("未知错误 | Unknown Error")end
function RdFlag(Flag)
    if type(Flag) == "number" then
        if Flag == 1 or Flag == 2 or Flag == 4 or Flag == 8 or Flag == 16 or Flag == 32 or Flag == 64 then
            return Flag
        else
            return 127
        end
    elseif type(Flag) == "string" then
        if Flag == "Byte" or Flag == "B" then
            return 1
        elseif Flag == "Word" or Flag == "W" then
            return 2
        elseif Flag == "Dword" or Flag == "D" then
            return 4
        elseif Flag == "Xor" or Flag == "X" then
            return 8
        elseif Flag == "Float" or Flag == "F" then
            return 16
        elseif Flag == "Qword" or Flag == "Q" then
            return 32
        elseif Flag == "Double" or Flag == "E" then
            return 64
        else
            return 127
        end
    else
        ErrSyx()
        return nil
    end
end
function RdMod(Key,Type,Memory,Module,Offset) --读取模块
    if type(Key) == "string" then
        local OutTable = {}
        local ranges = gg.getRangesList(Module)
        for _, range in ipairs(ranges) do
            if range.state == Memory and range.type == Type then
                if Key == "Head" then
                    table.insert(OutTable,range)
                elseif Key == "End" or Key == "Offset" then
                    table.insert(OutTable,range)
                    break
                end
            end
        end
        if OutTable and OutTable[#OutTable] ~= nil and OutTable[1] ~= nil then
            if Key == "Head" then
                return OutTable[#OutTable]["end"]-Offset
            elseif Key == "End" or Key == "Offset" then
                return OutTable[1]["start"]+Offset
            else
                ErrSyx()
                return "?"
            end
        else
            ErrUnk()
            return "?"
        end
    else
        ErrSyx()
        return "?"
    end
end
function AddItem(Table,Address,Flag,Value)
    if Table and Flag and Value then
        Table[#Table+1] = {address = Address,value = Value,flags = RdFlag(Flag)}
    end
end
function WrRam(first,Flag,Value,Freeze)
    if type(first) == "table" then
        if #first ~= 0 then
            gg.setValues(first)
        end
    else
        Address = first
        if Address then
            local Values = {[1] = {address = Address,value = Value,flags = RdFlag(Flag)}}
        end
    end
    if Values and type(Values[1].address) == "number" and type(Values[1].flags) == "number" and type(Values[1].value) == "number" then
        if Freeze == nil then
            gg.setValues(Values)
        else
            if Freeze == true then
                Values[1].freeze = true
                gg.addListItems(Values)
            else
                Values[1].freeze = false
                gg.addListItems(Values)
            end
        end
    end
end

--------------------------------------------------配置文件--------------------------------------------------


vibra = context:getSystemService(Context.VIBRATOR_SERVICE)
function getVerticalBG(gtvb1,gtvb3,gtvb4,gtvb5)
if not gtvb4 then gtvb4 = 0 gtvb5 = 0xff000000 end
local jianbians = luajava.new(GradientDrawable)
jianbians:setOrientation(GradientDrawable.Orientation.TL_BR)
jianbians:setCornerRadius(gtvb3)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors(gtvb1)
jianbians:setStroke(gtvb4,gtvb5)--边框宽度和颜色
return jianbians
end

changan = {}
local changan = changan
local android = import('android.*')
function write(fileName, content)
file.write(fileName, content)
end
function panduan(rec) fille,err = io.open(rec) if fille == nil then return false else return true end end
function pdcf(lujing) rec = "/sdcard/长安/配置文件/"..lujing fille,err = io.open(rec) if fille == nil then return false else return true end end
sleep = gg.sleep
function read(fileName) f = assert(io.open(fileName, 'r')) content = f:read("*all") f:close() return content end
function wtcf(lujing,neirong)
write("/sdcard/长安/配置文件/"..lujing,neirong)
end
function rdcf(lujing)
return read("/sdcard/长安/配置文件/"..lujing)
end

开 = "开" 关 = "关"
function checkimg(tmp)
if panduan("/sdcard/长安/图片/"..tmp) ~= true then
gg.toast("正在下载资源"..tmp.."\n请耐心等待")
download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..tmp,"/sdcard/长安/图片/"..tmp)
end
end
ckimg = {
	"sj",
	"hsj",
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
jianbian6:setCornerRadius(20)
jianbian6:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbian6:setColors(菜单小背景颜色)
jianbian6:setStroke(3,菜单小背景边框)--边框宽度和颜色
return jianbian6
end
function getseekgra()
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(10)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors(其他控件背景)
jianbians:setStroke(4,"0xeeffffff")--边框宽度和颜色
return jianbians
end
function getseekgra2()
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(8)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({0xeeffffff,0xccffffff})
jianbians:setStroke(1,"0xee000000")--边框宽度和颜色
return jianbians
end
jianbian7 = luajava.new(GradientDrawable)
jianbian7:setCornerRadius(30)
jianbian7:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbian7:setOrientation(GradientDrawable.Orientation.TL_BR)
jianbian7:setColors({0xfffffff,0xfffffff})
jianbian7:setStroke(1,"0xB3000000")

jianbian8 = luajava.new(GradientDrawable)
jianbian8:setCornerRadius(30)
jianbian8:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbian8:setOrientation(GradientDrawable.Orientation.TL_BR)
jianbian8:setColors({0xB08C4EE2,0xB0F14F4F})
jianbian8:setStroke(1,"0xB3000000")
function 获取图片(txt)
ntxt=string.sub(string.gsub(txt,"/","."),-10,-1)
if string.find(tostring(txt),"http")~=nil then
    if panduan("/sdcard/长安/图片/"..ntxt)==false then
    download(txt,"/sdcard/长安/图片/"..ntxt)
    end
    txt="/sdcard/长安/图片/"..ntxt
end
return luajava.getBitmapDrawable(txt)
end
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(10)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors(侧边按钮背景1)
jianbians:setStroke(4,"0xaa000000")--边框宽度和颜色
slctb = jianbians
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(10)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors(侧边按钮背景2)
jianbians:setStroke(4,"0xaa000000")--边框宽度和颜色

slcta = jianbians

slctb = luajava.loadlayout({
    GradientDrawable, color = "#001E1C27", cornerRadius = 0
})
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
	cornerRadius = 15
}
function chatbg2()
selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, luajava.loadlayout {
	GradientDrawable,
	color = "#aa0082FF",
	cornerRadius = 12
}) -- 点击时候的背景
selector:addState({
	-android.R.attr.state_pressed
}, getjb()) -- 没点击的背景
return selector
end
function getshape9()
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(10)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors(button颜色)
jianbians:setStroke(3,"0xeeFFffff")--边框宽度和颜色
return jianbians
end
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(10)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({0xaaFF6EBF,0x660072ff})
jianbians:setStroke(1,"0xB3000000")--边框宽度和颜色

jianbians886 = luajava.new(GradientDrawable)
jianbians886:setCornerRadius(10)
jianbians886:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians886:setColors({0x00000000,0x00000000})
jianbians886:setStroke(1,"0xffffffff")--边框宽度和颜色

jianbians123 = luajava.new(GradientDrawable)
jianbians123:setCornerRadius(10)
jianbians123:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians123:setColors({0xaaFF6EBF,0x660072ff})
jianbians123:setStroke(1,"0xB3000000")--边框宽度和颜色

jianbians88 = luajava.new(GradientDrawable)
jianbians88:setCornerRadius(10)
jianbian8:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians88:setColors({0xffffffff,0xffffffff})
jianbians88:setStroke(2,"0xffffffff")--边框宽度和颜色

jianbians89 = luajava.new(GradientDrawable)
jianbians89:setCornerRadius(10)
jianbian8:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians89:setColors({0xffffffff,0xffffffff})
jianbians89:setStroke(2,"0xB3000000")--边框宽度和颜色

jianbians986 = luajava.new(GradientDrawable)
jianbians986:setCornerRadius(10)
jianbians986:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians986:setColors({0x00000000,0x00000000})
jianbians986:setStroke(2,"0xffffffff")--边框宽度和颜色


t3s=jianbians
t4s=luajava.loadlayout {
	GradientDrawable,
	color = "#87000000",
	cornerRadius = 30
}
t5s=jianbians
t6s=luajava.loadlayout {
	GradientDrawable,
	color = "#87000000",
	cornerRadius = 30
}
function getSelector3()
 t9s=getshape9()
selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, t4s) -- 点击时候的背景
selector:addState({
	-android.R.attr.state_pressed
}, t9s) -- 没点击的背景
return selector
end
function getSelector5()
selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, t6s) -- 点击时候的背景
selector:addState({
	-android.R.attr.state_pressed
}, t5s) -- 没点击的背景
return selector
end
function getSelector()
selector = luajava.getStateListDrawable()
selector:addState({
    android.R.attr.state_pressed
}, slcta)
selector:addState({
    -android.R.attr.state_pressed
}, slctb)
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
jianbian = luajava.new(GradientDrawable)
jianbian:setCornerRadius(30)
jianbian:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbian2 = luajava.new(GradientDrawable)
jianbian2:setCornerRadius(30)
jianbian2:setGradientType(GradientDrawable.LINEAR_GRADIENT)
local isswitch
YoYoImpl = luajava.getYoYoImpl()
changan.menu = function(sview)
for i = 1,#bglist do
if type(bglist[i])=="string" then
bglist[i] = 获取图片(bglist[i])
end end
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
	layout_height = "fill_parent",
	layout_width = "wrap_content",
	orientation = "horizontal",
	gravity = "center",
		background = jianbians89,
}
jmbg={}
for i = 1,#stab do
jmbg[i]=getSelector()
cebian[#cebian+1] = {
	LinearLayout,
	id = "jm"..i,
	layout_height = "30dp",
	layout_width = "48dp", 
	layout_marginTop = "3dp",
	layout_marginBottom = "3dp",
	layout_marginRight = "1dp",
	layout_marginLeft = "10dp",
	background = getSelector(),
	onClick = function() 切换(i) end,
	
	background = getSelector(),
	onTouch = hanshu,

	{
		TextView,
		text = stab[i],
		gravity = "center",
		textSize = "18sp",
        textColor = "#B3000000",
		layout_height = "30dp",
		layout_width = "48dp",
	}}
end
cebian = luajava.loadlayout(
	{
		HorizontalScrollView,
		visibility = "gone",
		layout_height = "wrap_content",
		layout_width = "400dp",
		cebian,
	})
for i = 1,#stab do
_ENV["layout"..i] = luajava.loadlayout({
	LinearLayout,
	layout_width = "fill_parent",
	layout_height = "230dp",
	visibility = "gone",
	orientation = "vertical",
	background=jianbian7,
	{
		TextView,--二级分页
		layout_width = "250dp",
		padding = {
			"10dp","10dp","10dp","2dp"
		},
		layout_height = "30dp",
		text = "",
		textColor = "#80C3F9",
		textSize = "14sp",
	},
	{
		ScrollView,
		fillViewport = "true",
--padding = "10dp",
		gravity = "center",
		layout_width = "fill_parent",
		layout_height = "230dp",
		orientation = "horizontal",
		{
			LinearLayout,
			id = "layoutm"..i,
			layout_marginRight = "5dp",
			layout_marginLeft = "5dp",
			layout_width = "fill_parent",
			orientation = "vertical",
			gravity = "center_horizontal",
		}
	}})
end
ckou = {
	LinearLayout,
	id = "chuangk",
	visibility = "gone",
	layout_width = "wrap_content",
	layout_height = "wrap_content",
	orientation = "vertical",
	{--顶部栏
		FrameLayout,
		background = jianbians88,
		orientation = "horizontal",
		padding = "6dp",
		layout_width="fill_parent",
		{
			TextView,
			textSize = "18sp",
			text = "水生雨燕",
			id = "titlebar",
			
			visibility = "gone",
			textColor = "#B3000000",
			layout_width = "108dp",
			layout_height = "30dp",
			gravity = "center",
			onClick = 隐藏,
			onTouch = hanshu,
		},{
		TextView,
			textSize="18sp",
			text=titlet,
			textColor="#323232",
			gravity="center",
			layout_gravity="center",
			layout_width="match_parent",
			layout_height="match_parent",
			},{
				ImageView,
			layout_gravity="center_vertical",
			src = 获取图片("http://glgy.g8.chat/down.php/c1986da84b628f953ff99a4c34b420a1.png"),
			padding="2dp",
			layout_width = "40dp",
			layout_height = "30dp",
			gravity = "center",
			onTouch = hanshu,
			layout_marginLeft="280dp",
				
				onClick = changebg,
	
			},{
			ImageView,
			layout_gravity="center_vertical",
			src = 获取图片("http://glgy.g8.chat/down.php/3192addea41b771e0b098936302d812c.png"),
			padding="2dp",
			layout_width = "40dp",
			layout_height = "30dp",
			gravity = "center",
			onTouch = hanshu,
			layout_marginLeft="315dp",
			onClick = function()
			luajava.startThread(function()
			app.openUrl(频道)			
			end)
			end
			},{
			ImageView,
			layout_gravity="center_vertical|right",
			src = 获取图片("http://glgy.g8.chat/down.php/7230a2e344e91c7252f9668bfd68d357.png"),
			padding="2dp",
			layout_width = "40dp",
			layout_height = "30dp",
			gravity = "center",
			onClick = 隐藏,
			onTouch = hanshu,
			layout_marginRight="5dp",
		}
	},
	{
		LinearLayout,
		layout_marginBottom = "1dp",
		layout_marginTop = "1dp",
		layout_width = "fill_parent",
		layout_height = "1dp",
		background = "#B3000000"
	}

}
for i = 1,#stab do
ckou[#ckou+1] = _ENV["layout"..i]
end

ckou[#ckou+1] = {
		LinearLayout,
		layout_marginBottom = "1dp",
		layout_marginTop = "1dp",
		layout_width = "fill_parent",
		layout_height = "1dp",
		background = "#B3000000"
	}
ckou[#ckou+1] = cebian
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
		id = "control",
		background = 获取图片(xfcpic),
		layout_width = "40dp",
		layout_height = "40dp",
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
block('start')
for k = 1,#stab do
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
for i = 1,#stab do
_ENV["jm"..i].onTouch = hanshu
end
end

invoke(swib1,swib2)
jm1:setBackground(slcta)
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
jianbians:setStroke(2,"0x44ffffff")--边框宽度和颜色

return jianbians
end
corbk = true
当前ui = 1
function 切换(x)
当前ui = x
luajava.runUiThread(function()
	for i = 1,#stab do
	_ENV["layout"..i]:setVisibility(View.GONE)
	_ENV["jm"..i]:setBackground(_ENV["jmb"..i])
	end
	_ENV["layout"..当前ui]:setVisibility(View.VISIBLE)
	YoYoImpl:with("FadeIn"):duration(200):playOn(_ENV["layout"..当前ui])
	_ENV["jm"..当前ui]:setBackground(slcta)
	_ENV["jm"..当前ui.."t"]:setTextColor(0xffffffff)
	end)
end

显示 = 0
beij = 获取图片('http://glgy.g8.chat/down.php/de01f33396890549e700213687773717.png')
beij2 = luajava.loadlayout({
	GradientDrawable,
	color = "#00ffff",
	cornerRadius = 20
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
显示 = 0
function 隐藏()
luajava.runUiThread(function()
	if tonumber(tostring(cebian:getVisibility())) == 8.0 then
	control:setVisibility(View.GONE)
	显示 = 1
	ckou:setVisibility(View.VISIBLE)
	titlebar:setVisibility(View.VISIBLE)
	cebian:setVisibility(View.VISIBLE)
	YoYoImpl:with("SlideInDown"):duration(200):playOn(cebian)
	_ENV["layout"..当前ui]:setVisibility(View.VISIBLE)
	YoYoImpl:with("FadeIn"):duration(800):playOn(_ENV["layout"..当前ui])
	ckou:setBackground(beij)
	else
		ckou:setVisibility(View.GONE)
		titlebar:setVisibility(View.GONE)
	ckou:setBackground(beij2)
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
besz = {}-----不能改
besz.controlSmall = function(control,time)
luajava.runUiThread(function()
    import "android.animation.ObjectAnimator"
    ObjectAnimator():ofFloat(control,"scaleX", {
        1, 0.7, 0.4, 0
    }):setDuration(time):start()
    ObjectAnimator():ofFloat(control,"scaleY", {
        1, 0.7, 0.4, 0
    }):setDuration(time):start()
    end) end
besz.controlBig = function(control,time)-----图标
luajava.runUiThread(function()
    import "android.animation.ObjectAnimator"
    ObjectAnimator():ofFloat(control,"scaleX", {
        0, 0.4, 0.7, 1
    }):setDuration(time):start()
    ObjectAnimator():ofFloat(control,"scaleY", {
        0, 0.4, 0.7, 1
    }):setDuration(time):start()
    end) end
chazhi = {} chajv = {}

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
jianbians:setCornerRadius(90)
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
jianbians:setStroke(2,tmp3)--边框宽度和颜色
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
jianbians:setStroke(15,tmp3)--边框宽度和颜色
return jianbians
end

check1 = getShape(
	45,
	{
		0x00000000,0x00000000
	},
	4,0xffffffff)
check2 = getShape(
	45,
	{
		0x00000000,0x00000000
	},
	4,0xffffffff)
checkbg1 = getShape0(
	90,
	{
		0xffffffff,0xffffffff
	},
	4,0x00ffffff)
checkbg2 = getShape2(
	90,
	{
		0xB3000000,0xB3000000
	},
	4,0x00ffffff)
function changan.intcheck(name,func1,func2)
nid = name..guid()
_ENV[nid] = luajava.loadlayout({
	FrameLayout,
	id = luajava.newId(nid),
	background = check1,
	layout_width = '40dp',
	layout_height = '20dp',
	padding = "0dp",
	{
		LinearLayout,
		layout_gravity = "left|center",
		id = luajava.newId(nid.."k"),
		background = checkbg1,
		layout_width = '20dp',
		layout_height = '20dp',
	}, {
		LinearLayout,
		visibility = "gone",
		layout_gravity = "right|center",
		id = luajava.newId(nid.."g"),
		background = checkbg2,
		layout_width = '20dp',
		layout_height = '20dp',
	}
})
local func = 开关3(name,func1,func2,nid)
if not name then name = "未设置" end
local rest = luajava.loadlayout({
	LinearLayout,
	layout_width = '105dp',
	layout_height = "42dp",
	layout_marginTop = "1dp",
	layout_marginBottom = "1dp",
	padding = "1dp",
	{
		LinearLayout,
		onClick = function() luajava.newThread(function() func() end):start() end,
		layout_width = 'fill_parent',
		layout_height = "30dp",
		gravity = "center_vertical",
		background = jianbians886,
	
		{
			TextView,
			gravity = "center",
			text = name,
			textColor = "#"..颜色2,
			textSize = "11sp",
--layout_marginLeft="8dp",
			layout_width = '55dp',
		},
		_ENV[nid]}
})

return rest
end




function changan.check(cklist)
local rest = {
	GridLayout,
	columnCount = '3',
	layout_width = 'match_parent',
	layout_height = "wrap_content",
	layout_marginLeft = "10dp",
	layout_marginRight = "10dp",
	gravity = "center"

}
for i = 1,#cklist do
local name = cklist[i][1]
local func1 = cklist[i][2]
local func2 = cklist[i][3]
if not name then name = "未设置" end
rstt = changan.intcheck(name,func1,func2)
rest[#rest+1] = rstt
end
return luajava.loadlayout({
	LinearLayout,rest
})
end
function changan.button(txt,func)
if not txt then txt = "未设置" end
return luajava.loadlayout(
	{
		LinearLayout,
		layout_width = '220dp',
		layout_hight = "30dp", {
			LinearLayout,
			layout_width = "fill_parent",
			gravity = "center_horizontal",
			layout_marginTop = "5dp",
			layout_marginBottom = "5dp",
			background = jianbians986,
			onClick = function() luajava.newThread(function() pcall(func) end):start() end,
			{
				TextView,
--id = luajava.newId(tid),
				textColor = "#"..颜色2,
				text = txt,
				textSize = "16sp",
				layout_width = "wrap_content",
			},
		}})
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
function visi(tid,ttid)
local tview = luajava.getIdValue(tid)
local ttview = luajava.getIdValue(ttid)
if not tview then return 0 end
if tonumber(tostring(tview:getVisibility())) == 8.0 then
tview:setVisibility(View.VISIBLE)
ttview:setBackground(luajava.getBitmapDrawable("/sdcard/长安/图片/hsj"))
else
	tview:setVisibility(View.GONE)
ttview:setBackground(luajava.getBitmapDrawable("/sdcard/长安/图片/sj"))
end
end
function changan.box(views)
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
	background = jianbians123,
	
	{
		ImageView,
		layout_gravity = "left|center",
		layout_marginLeft = "10dp",
		id = luajava.newId(ttid),
		background = "/sdcard/长安/图片/sj",
		layout_width = "13dp",
		layout_height = "13dp",
		layout_marginTop = "0dp",
	},
	{
		TextView,text = views[1],
		textSize = "13sp",
		layout_width = "220dp",
		textColor = "#"..颜色2,
		layout_gravity = "center",
		gravity = "center"
	}} else
	gg.alert("changan.box第一个参数必须是string") os.exit()
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

nowbg=1

function changebg()
	luajava.runUiThread(function()
	
	if nowbg<#bglist then
		nowbg=nowbg+1
	else
		nowbg=1
	end 
	gg.playMusic("/storage/emulated/0/TL/图片/saice")
	beij=bglist[nowbg]
		ckou:setBackground(beij)
	end)
end


dingbian = luajava.loadlayout({
			LinearLayout,
			id = "dingbian",
			layout_width = "300dp",
			layout_height = "45dp",
			{
			TextView,
			text = "游戏\n启动",
			textSize = "11dp",
			layout_height = "28dp",
			layout_width = "40dp",
			gravity = "center",
			layout_marginLeft = "10dp",
			layout_marginRight = "10dp",
			onClick = function()
			luajava.runUiThread(function()
		ui=当前ui
_ENV["layout"..ui]:setVisibility(View.GONE)
layoutqd:setVisibility(View.VISIBLE)
当前ui=qd
			end)
			end
			},
			Title,
			})

function checkimg(tmp)
if panduan("/sdcard/XARG/图片/"..tmp) ~= true then
gg.toast("正在下载资源"..tmp.."\n请耐心等待")
luajava.download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..tmp,"/sdcard/XARG/图片/"..tmp)
end
end
ckimg = {
	"pubgT",
	"pubgG",
	"pubgY",
	"pubgR",
	"hong"
}
for i = 1,#ckimg do
jindu = i
checkimg(ckimg[i])
gg.toast("正在加载游戏启动图片")
end

function getShape0(tmp0,tmp1,tmp2,tmp3)
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(tmp0)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({
	tmp1,tmp2
})
jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
jianbians:setStroke(5,tmp3)--边框宽度和颜色
return jianbians
end
function launch(pkg)
隐藏()
gg.setProcess(pkg)
gg.sleep(500)
if tostring(gg.getTargetPackage()) == pkg then
gg.toast("进程已选择:"..pkg)
return 0
end
gg.toast("正在启动游戏...")
print(gg.isPackageInstalled(pkg))
app.start(pkg)
jci = 0
--gg.sleep(5000)

            
            

        
        
gg.setProcess(pkg)
gg.sleep(400)
if tostring(gg.getTargetPackage()) == pkg then
gg.alert("启动成功")
else
	jci = jci+1
if jci == 14 then
gg.alert("自动获取进程失败\n请手动选择游戏进程")
gg.setProcessX()
end
end
gg.sleep(100)
end


layoutqd = luajava.loadlayout({
	HorizontalScrollView,
	padding="10dp",
	layout_height = "wrap_content",
	layout_width = "match_parent",
	{
		LinearLayout,
		layout_height = "wrap_content",
		layout_width = "wrap_content",
		orientation = "horizontal",
		gravity="center",
		{FrameLayout,
		layout_height = "200dp",
		layout_width = "130dp",
		gravity="center",
		{
			FrameLayout,
			layout_height = "200dp",
			layout_width = "110dp",
			--layout_weight = 1,
			gravity = "center",layout_gravity="center_horizontal",
			background = luajava.loadlayout {
				GradientDrawable,
				color = "#44dddddd",
				cornerRadius = 30
			},
			{
				ImageView,
				src = "/sdcard/XARG/图片/pubgG",
				layout_marginTop="23dp",
				layout_gravity="center_horizontal",
				layout_height="60dp",
				layout_width="60dp",
			},
			{
				TextView,
				text = "PUBG 全球服",
				textSize = "16dp",
				layout_marginTop="90dp",
				layout_gravity="center_horizontal",
				gravity = "center",
			},
			{
			LinearLayout,
			
			onClick = function() 
			luajava.newThread(function() app.start("com.tencent.ig") end):start() end,
			background = getShape0(90,0xff28FEB9,0xff28FEB9,0xff28FEB9),
			layout_height = "25dp",
			layout_width = "55dp",
			layout_gravity="center_horizontal",
			layout_marginTop="150dp",
			gravity = "center",
			{
				TextView,
				textColor = "#FFFFFF",
				text = "启动",
				textSize = "12sp",
				layout_height = "20dp",
				gravity = "center",
				layout_width = "30dp",
			}
		}
		},
		},
	{FrameLayout,
		layout_height = "200dp",
		layout_width = "130dp",
		gravity="center",
		{
			FrameLayout,
			layout_height = "200dp",
			layout_width = "110dp",
			--layout_weight = 1,
			gravity = "center",layout_gravity="center_horizontal",
			background = luajava.loadlayout {
				GradientDrawable,
				color = "#44dddddd",
				cornerRadius = 30
			},
			{
				ImageView,
				src = "/sdcard/XARG/图片/pubgR",
				layout_marginTop="20dp",
				layout_gravity="center_horizontal",
				layout_height="70dp",
				layout_width="70dp",
			},
			{
				TextView,
				text = "PUBG 日韩服",
				textSize = "16dp",
				layout_marginTop="90dp",
				layout_gravity="center_horizontal",
				gravity = "center",
			},
			{
			LinearLayout,
			
			onClick = function() 
			luajava.newThread(function() app.start("com.pubg.krmobile") end):start() end,
			background = getShape0(90,0xff28FEB9,0xff28FEB9,0xff28FEB9),
			layout_height = "25dp",
			layout_width = "55dp",
			layout_gravity="center_horizontal",
			layout_marginTop="150dp",
			gravity = "center",
			{
				TextView,
				textColor = "#FFFFFF",
				text = "启动",
				textSize = "12sp",
				layout_height = "20dp",
				gravity = "center",
				layout_width = "30dp",
			}
		}
		},
		},
		{FrameLayout,
		layout_height = "200dp",
		layout_width = "130dp",
		gravity="center",
		{
			FrameLayout,
			layout_height = "200dp",
			layout_width = "110dp",
			--layout_weight = 1,
			gravity = "center",layout_gravity="center_horizontal",
			background = luajava.loadlayout {
				GradientDrawable,
				color = "#44dddddd",
				cornerRadius = 30
			},
			{
				ImageView,
				src = "/sdcard/XARG/图片/pubgY",
				layout_marginTop="20dp",
				layout_gravity="center_horizontal",
				layout_height="70dp",
				layout_width="70dp",
			},
			{
				TextView,
				text = "PUBG 越南服",
				textSize = "16dp",
				layout_marginTop="90dp",
				layout_gravity="center_horizontal",
				gravity = "center",
			},
			{
			LinearLayout,
			
			onClick = function() 
			luajava.newThread(function() app.start("com.vng.pubgmobile") end):start() end,
			background = getShape0(90,0xff28FEB9,0xff28FEB9,0xff28FEB9),
			layout_height = "25dp",
			layout_width = "55dp",
			layout_gravity="center_horizontal",
			layout_marginTop="150dp",
			gravity = "center",
			{
				TextView,
				textColor = "#FFFFFF",
				text = "启动",
				textSize = "12sp",
				layout_height = "20dp",
				gravity = "center",
				layout_width = "30dp",
			}
		}
		},
		},{FrameLayout,
		layout_height = "200dp",
		layout_width = "130dp",
		gravity="center",
		{
			FrameLayout,
			layout_height = "200dp",
			layout_width = "110dp",
			--layout_weight = 1,
			gravity = "center",
			layout_gravity="center_horizontal",
			background = luajava.loadlayout {
				GradientDrawable,
				color = "#44dddddd",
				cornerRadius = 30
			},
			{
				ImageView,
				src = "/sdcard/XARG/图片/pubgT",
				layout_marginTop="20dp",
				layout_gravity="center_horizontal",
				layout_height="60dp",
				layout_width="60dp",
			},
			{
				TextView,
				text = "PUBG 台湾服",
				textSize = "16dp",
				layout_marginTop="90dp",
				layout_gravity="center_horizontal",
				gravity = "center",
			},
			{
			LinearLayout,
			
			onClick = function() 
			luajava.newThread(function() app.start("com.rekoo.pubgm") end):start() end,
			background = getShape0(90,0xff28FEB9,0xff28FEB9,0xff28FEB9),
			layout_height = "25dp",
			layout_width = "55dp",
			layout_gravity="center_horizontal",
			layout_marginTop="150dp",
			gravity = "center",
			{
				TextView,
				textColor = "#FFFFFF",
				text = "启动",
				textSize = "12sp",
				layout_height = "20dp",
				gravity = "center",
				layout_width = "30dp",
			}
		}
		},
		}
		
		
	}})





wyyget="http://120.24.160.246:3000/"
function huoqu(txt)
return table.json(gg.makeRequest(wyyget.."song/url/v1?id="..txt.."").content)
end
function souyy(txt)
tbttt=gg.makeRequest(wyyget.."search?keywords="..txt.."&limit=10")
if tbttt==nil or type(tbttt)=="string" then gg.alert("网络异常") luajava.runUiThread(function()
luajava.getIdView("jzz"):setVisibility(View.GONE)
luajava.getIdView("sstxt"):setVisibility(View.VISIBLE)
end) end
return table.json(tbttt.content)
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
function searchmusic()
if not lasttm then lasttm=os.time() else
if os.time()-lasttm<=5 then gg.alert("请在"..(5-(os.time()-lasttm)).."秒冷却后搜索")
    return 0 end end
if not wryt then else runnable = luajava.getRunnable(function() luajava.getIdView("搜索列表"):removeView(wyr) end)
handler = luajava.getHandler()
handler:post(runnable) end
mustxt=luajava.getIdView("搜索"):getText()
if string.len(tostring(mustxt))<=2 or tostring(mustxt)==nil then gg.alert("至少输入2个字符") return 0 end
mustxt=tostring(mustxt)
luajava.runUiThread(function()
luajava.getIdView("jzz"):setVisibility(View.VISIBLE)
luajava.getIdView("sstxt"):setVisibility(View.GONE)
end)
lasttm=os.time()
mustable=souyy(mustxt)
mustable=mustable.result.songs
musnames={} musids={} musarts={}
musictable={}
for k,v in pairs(mustable) do
if tonumber(v.fee)==0 or tonumber(v.fee)==8 then
musictable[#musictable+1]=v
end
end
--gg.alert(tostring(mustable))
--gg.alert(tostring(musictable))
--gg.copyText(tostring(mustable))
--gg.alert(#musictable)
wrfun={}
wryt={LinearLayout,
    id=luajava.newId("搜索结果"),
    layout_marginTop="5dp",
    layout_marginBottom="5dp",
    orientation="vertical",
    
}
for i=1,#musictable do
musid=musictable[i].id
musids[#musids+1]=musid
musname=musictable[i].name
if tablekIn(musictable[i], "transNames")~=false then
musname=musname .."\n(".. musictable[i].transNames[0]..")"
end
musnames[#musnames+1]=musname
musart=musictable[i].artists[0].name
musarts[#musarts+1]=musart
wryt[#wryt+1]={LinearLayout,
    orientation="vertical",
    layout_marginTop="2dp",
    layout_marginBottom="2dp",
    background=getSelector3(),
    id=luajava.newId("音"..musid),
    onClick=function() 
        thread = luajava.getPThread(function()  bofang(musname,musid) end)
		thread:start()
    end,
    {
            TextView,
            layout_marginTop="5dp",
            textSize="17sp",
            textColor="#FF5DDB",
    layout_marginBottom="0dp",
            text = musname,
            layout_hight="10dp",
            layout_width = "190dp",
            gravity="center",
            
},{
            TextView,
            layout_marginTop="0dp",
            textColor="#A0A0A0",
            textSize="12sp",
    layout_marginBottom="5dp",
            text = musart,
            layout_hight="10dp",
            layout_width = "match_parent",
            gravity="center",
            
}

}
--gg.sleep(50)
wryt[#wryt].onClick=function() 
        luajava.getPThread(function() 
        bofang(musnames[i]..musarts[i],musids[i])
        end):start()
end
end
wyr=luajava.loadlayout(wryt)
runnable = luajava.getRunnable(function() luajava.getIdView("搜索列表"):addView(wyr) end)
handler = luajava.getHandler()
handler:post(runnable)
luajava.runUiThread(function()
luajava.getIdView("jzz"):setVisibility(View.GONE)
luajava.getIdView("sstxt"):setVisibility(View.VISIBLE)
end)
--gg.alert(tostring(wrfun))
end
function bofang(gqmz,gdmn)
luajava.runUiThread(function()
luajava.getIdView("搜索结果"):setVisibility(View.GONE)
luajava.getIdView("加载"):setVisibility(View.VISIBLE)
end)

if panduan("/sdcard/长安/音频/"..gqmz..".mp3")==true then
gg.playMusic("/sdcard/长安/音频/"..gqmz..".mp3")
else
gg.toast("下载中..."..gqmz)
musurl=huoqu(gdmn).data[0].url
if musurl=="" or musurl=="null" then gg.alert("由于版权问题\n这首歌不能播放","你干嘛哈哈哎呦","呀啊哈哈嘛干") else
 download(musurl,"/sdcard/长安/音频/"..gqmz..".mp3")
 gg.playMusic("/sdcard/长安/音频/"..gqmz..".mp3")
gg.sleep(1000)
end
end

luajava.runUiThread(function()
luajava.getIdView("加载"):setVisibility(View.GONE)
luajava.getIdView("搜索结果"):setVisibility(View.VISIBLE)
end)
end
sstxt={LinearLayout,
	visibility="visible",
    id=luajava.newId("sstxt"),
	gravity="center",
    layout_hight="70dp",
    layout_width="70dp",
    gravity="center",
    orientation="vertical",
	{TextView,
    text="搜索",
    background=luajava.loadlayout({
    GradientDrawable,
    color = "#dd3FD198",
    cornerRadius = 10
}),
    gravity="center",
    layout_hight="30dp",
    layout_width="70dp",
    textSize="15sp",
    onClick=function() thread = luajava.getPThread(function() searchmusic() end)
			thread:start() end,
    },
	{TextView,
    text="停止",
    background=luajava.loadlayout({
    GradientDrawable,
    color = "#ddFF4A6F",
    cornerRadius = 10
}),
    gravity="center",
    layout_hight="30dp",
    layout_width="70dp",
    textSize="15sp",
    onClick=function() thread = luajava.getPThread(function() gg.playMusic("stop") end)
			thread:start() end,
    }
}
jzz={TextView,
    text="加载中",
    visibility="gone",
    id=luajava.newId("jzz"),
    layout_marginLeft="10dp",
    textSize="15sp",
    }
jiaz={TextView,text="正在加载歌曲资源",
    visibility="gone",
    id=luajava.newId("加载"),
    textSize="17sp",
    gravity="center"
}
wyylog=luajava.loadlayout({LinearLayout,
    
    layout_hight="wrap_content",
    layout_width = "fill_parent",
    {ScrollView,
    layout_hight="wrap_content",
    layout_width = "fill_parent",
    {LinearLayout,
    id=luajava.newId("搜索列表"),
    layout_hight="wrap_content",
    layout_width = "fill_parent",
    orientation="vertical",
    layout_width = "fill_parent",
    gravity="center",
    {LinearLayout,orientation="horizontal",
    layout_width = "wrap_content",
    
    {
            EditText,
            hint = "搜索歌曲",
            id=luajava.newId("搜索"),
            background=luajava.loadlayout({
    GradientDrawable,
    color = "#88000000",
    cornerRadius = 10
}),
            focusableInTouch="false",
			focusable="false",
			selectAllOnFocus="true",
			singleLine="true",
			gravity="center",
            layout_width = "120dp",
            layout_height = "42dp",
        },
    sstxt,
    jzz
    },jiaz}}
})















频道="https://t.me/SSYYNB"--填卡网


颜色1 = "ffffffff"--用于标题
颜色2 = "ffffffff"--用于文本

bglist={


   'http://glgy.g8.chat/down.php/de01f33396890549e700213687773717.png',
  
    'http://glgy.g8.chat/down.php/4303da35865d01fe03e9414f5af4f926.jpg',
}


stab = {
--菜单名字，添加即可加页数，需要与结尾配置表对应
	"启动",
	"防封",
	"功能",
	"美化",
	"音乐",
	"设置",
}

xfcpic = "http://glgy.g8.chat/down.php/b7161e28915d0b8934d37b7705e33857.heif"
--悬浮窗链接或路径

changan.menu(
	{
		{--1
			
--3
layoutqd,
		
		}, {
		
			changan.button("选择进程",gg.setProcessX),
		
				changan.box({"⭐️防封专区",
			changan.check({
				{
					"腾讯",
					function()
so=gg.getRangesList('libUE4.so')[1].start
py=0x0
 setvalue(so+py,4,67109633)
so=gg.getRangesList('libUE4.so')[1].start
py=0x4E7950
 setvalue(so+py,4,67109633)
 string.toMusic("开启成功")
					end,
					function()

					end
				}, {
					"4服通用大厅①",
					function()
					local Ranges=gg.getRangesList('/')
local function Read(module,type)
    for k,v in pairs(Ranges) do
        if v['internalName']:match('[^/]*$')==module and v['type']==type then
            return v['start']
        end
    end
end

local Table={}
local function Modify(address,value,flags)
    Table[#Table+1]={address=address,value=value,flags=flags}
end

Modify(Read('libUE4.so','r--p')+0x25ebf58,17024,4)
Modify(Read('libUE4.so','r--p')+0x267e074,17024,4)
Modify(Read('libUE4.so','r--p')+0x267e204,17024,4)
Modify(Read('libUE4.so','r--p')+0x267e270,17024,4)
Modify(Read('libUE4.so','r--p')+0x267e2a4,17024,4)
Modify(Read('libUE4.so','r--p')+0x2702014,17024,4)
Modify(Read('libUE4.so','r--p')+0x2702048,17024,4)
Modify(Read('libUE4.so','r--p')+0x27020a8,17024,4)
Modify(Read('libUE4.so','r--p')+0x27020b0,17024,4)
Modify(Read('libUE4.so','r--p')+0x2702200,17024,4)
Modify(Read('libUE4.so','r--p')+0x2702208,17024,4)
Modify(Read('libUE4.so','r--p')+0x2702234,17024,4)
Modify(Read('libUE4.so','r--p')+0x2702270,17024,4)
Modify(Read('libUE4.so','r--p')+0x27030c4,17024,4)
Modify(Read('libUE4.so','r--p')+0x27031f8,17024,4)
Modify(Read('libUE4.so','r--p')+0x2703234,17024,4)
Modify(Read('libUE4.so','r--p')+0x27a401c,17024,4)
Modify(Read('libUE4.so','r--p')+0x27a4050,17024,4)
Modify(Read('libUE4.so','r--p')+0x27a4194,17024,4)
Modify(Read('libUE4.so','r--p')+0x27a5f30,17024,4)
Modify(Read('libUE4.so','r--p')+0x27a5f7c,17024,4)
Modify(Read('libUE4.so','r--p')+0x27a5f84,17024,4)
Modify(Read('libUE4.so','r--p')+0x27a5fb0,17024,4)
Modify(Read('libUE4.so','r--p')+0x27a5fb8,17024,4)
Modify(Read('libUE4.so','r--p')+0x27a5fbc,17024,4)
Modify(Read('libUE4.so','r--p')+0x27a5ff8,17024,4)
Modify(Read('libUE4.so','r--p')+0x27abec4,17024,4)
Modify(Read('libUE4.so','r--p')+0x27abef0,17024,4)
Modify(Read('libUE4.so','r--p')+0x27abef8,17024,4)
Modify(Read('libUE4.so','r--p')+0x27abf8c,17024,4)
Modify(Read('libUE4.so','r--p')+0x27abf90,17024,4)
Modify(Read('libUE4.so','r--p')+0x27abf94,17024,4)
Modify(Read('libUE4.so','r--p')+0x27abfdc,17024,4)
Modify(Read('libUE4.so','r--p')+0x284028c,17024,4)
Modify(Read('libUE4.so','r--p')+0x2840298,17024,4)
Modify(Read('libUE4.so','r--p')+0x28b6064,17024,4)
Modify(Read('libUE4.so','r--p')+0x28b6104,17024,4)
Modify(Read('libUE4.so','r--p')+0x28b6154,17024,4)
Modify(Read('libUE4.so','r--p')+0x28b6188,17024,4)
Modify(Read('libUE4.so','r--p')+0x28b61bc,17024,4)
Modify(Read('libUE4.so','r--p')+0x28b621c,17024,4)
Modify(Read('libUE4.so','r--p')+0x28b6250,17024,4)
Modify(Read('libUE4.so','r--p')+0x28b6290,17024,4)
Modify(Read('libUE4.so','r--p')+0x28b6310,17024,4)
Modify(Read('libUE4.so','r--p')+0x28b6340,17024,4)
Modify(Read('libUE4.so','r--p')+0x28b63ac,17024,4)
Modify(Read('libUE4.so','r--p')+0x28b76bc,17024,4)
Modify(Read('libUE4.so','r--p')+0x28b7720,17024,4)
gg.setValues(Table)
string.toMusic("开启成功")
					end,
					function()

					end
				}, {
					"台湾大厅①",
					function()
					local Ranges=gg.getRangesList('/')
local function Read(module,type)
    for k,v in pairs(Ranges) do
        if v['internalName']:match('[^/]*$')==module and v['type']==type then
            return v['start']
        end
    end
end

local Table={}
local function Modify(address,value,flags)
    Table[#Table+1]={address=address,value=value,flags=flags}
end

Modify(Read('libUE4.so','r--p')+0x251c0fc,-698416192,4)
Modify(Read('libUE4.so','r--p')+0x251c14c,-698416192,4)
Modify(Read('libUE4.so','r--p')+0x251c30c,-698416192,4)
Modify(Read('libUE4.so','r--p')+0x251c6a8,-698416192,4)
Modify(Read('libUE4.so','r--p')+0x251c710,-698416192,4)
Modify(Read('libUE4.so','r--p')+0x251c764,-698416192,4)
Modify(Read('libUE4.so','r--p')+0x251c7dc,-698416192,4)
Modify(Read('libUE4.so','r--p')+0x251cfa8,-698416192,4)
Modify(Read('libUE4.so','r--p')+0x251d1cc,-698416192,4)
Modify(Read('libUE4.so','r--p')+0x293213c,-698416192,4)
Modify(Read('libUE4.so','r--p')+0x29323d0,-698416192,4)
Modify(Read('libUE4.so','r--p')+0x29325b4,-698416192,4)
Modify(Read('libUE4.so','r--p')+0x2932648,-698416192,4)
Modify(Read('libUE4.so','r--p')+0x29327bc,-698416192,4)
Modify(Read('libUE4.so','r--p')+0x2932824,-698416192,4)
Modify(Read('libUE4.so','r--p')+0x2932994,-698416192,4)
Modify(Read('libUE4.so','r--p')+0x29329c8,-698416192,4)
Modify(Read('libUE4.so','r--p')+0x2932a44,-698416192,4)
Modify(Read('libUE4.so','r--p')+0x2932b48,-698416192,4)
Modify(Read('libUE4.so','r--p')+0x2932b7c,-698416192,4)
Modify(Read('libUE4.so','r--p')+0x2932be4,-698416192,4)
Modify(Read('libUE4.so','r--p')+0x2932c4c,-698416192,4)
Modify(Read('libUE4.so','r--p')+0x2932d08,-698416192,4)
Modify(Read('libUE4.so','r--p')+0x2f90360,-698416192,4)
Modify(Read('libUE4.so','r--p')+0x2f903d4,-698416192,4)
Modify(Read('libUE4.so','r--p')+0x2f90478,-698416192,4)
Modify(Read('libUE4.so','r--p')+0x2f908f8,-698416192,4)
Modify(Read('libUE4.so','r--p')+0x2f90b38,-698416192,4)
Modify(Read('libUE4.so','r--p')+0x2f90cc0,-698416192,4)
Modify(Read('libUE4.so','r--p')+0x2f90f58,-698416192,4)
Modify(Read('libUE4.so','r--p')+0x31800b0,-698416192,4)
Modify(Read('libUE4.so','r--p')+0x3180100,-698416192,4)
Modify(Read('libUE4.so','r--p')+0x31802a0,-698416192,4)
Modify(Read('libUE4.so','r--p')+0x3180388,-698416192,4)
Modify(Read('libUE4.so','r--p')+0x31804c0,-698416192,4)
Modify(Read('libUE4.so','r--p')+0x3180708,-698416192,4)
Modify(Read('libUE4.so','r--p')+0x3180790,-698416192,4)
Modify(Read('libUE4.so','r--p')+0x31807d4,-698416192,4)
Modify(Read('libUE4.so','r--p')+0x3180a8c,-698416192,4)
gg.setValues(Table)
 string.toMusic("开启成功")
					end,
					function()

					end
				}, {
					"越南大厅①",
					function()
					local Ranges=gg.getRangesList('/')
local function Read(module,type)
    for k,v in pairs(Ranges) do
        if v['internalName']:match('[^/]*$')==module and v['type']==type then
            return v['start']
        end
    end
end

local Table={}
local function Modify(address,value,flags)
    Table[#Table+1]={address=address,value=value,flags=flags}
end

Modify(Read('libUE4.so','r--p')+0x25726c4,17024,4)
Modify(Read('libUE4.so','r--p')+0x2572924,17024,4)
Modify(Read('libUE4.so','r--p')+0x257298c,17024,4)
Modify(Read('libUE4.so','r--p')+0x2572c84,17024,4)
Modify(Read('libUE4.so','r--p')+0x2572cec,17024,4)
Modify(Read('libUE4.so','r--p')+0x2572d8c,17024,4)
Modify(Read('libUE4.so','r--p')+0x2573138,17024,4)
Modify(Read('libUE4.so','r--p')+0x25732b4,17024,4)
Modify(Read('libUE4.so','r--p')+0x2573484,17024,4)
Modify(Read('libUE4.so','r--p')+0x2573544,17024,4)
Modify(Read('libUE4.so','r--p')+0x25736cc,17024,4)
Modify(Read('libUE4.so','r--p')+0x2573744,17024,4)
Modify(Read('libUE4.so','r--p')+0x2573794,17024,4)
Modify(Read('libUE4.so','r--p')+0x2573944,17024,4)
Modify(Read('libUE4.so','r--p')+0x25739ac,17024,4)
Modify(Read('libUE4.so','r--p')+0x25739e0,17024,4)
Modify(Read('libUE4.so','r--p')+0x2573a14,17024,4)
Modify(Read('libUE4.so','r--p')+0x26cc218,17024,4)
Modify(Read('libUE4.so','r--p')+0x26cc280,17024,4)
Modify(Read('libUE4.so','r--p')+0x26cc2b4,17024,4)
Modify(Read('libUE4.so','r--p')+0x26cc31c,17024,4)
Modify(Read('libUE4.so','r--p')+0x26cc350,17024,4)
Modify(Read('libUE4.so','r--p')+0x26cc3b8,17024,4)
Modify(Read('libUE4.so','r--p')+0x26cc4ac,17024,4)
Modify(Read('libUE4.so','r--p')+0x26cc578,17024,4)
Modify(Read('libUE4.so','r--p')+0x26cc60c,17024,4)
Modify(Read('libUE4.so','r--p')+0x26cc7c0,17024,4)
Modify(Read('libUE4.so','r--p')+0x26cc8ec,17024,4)
Modify(Read('libUE4.so','r--p')+0x26cc958,17024,4)
Modify(Read('libUE4.so','r--p')+0x26cce9c,17024,4)
Modify(Read('libUE4.so','r--p')+0x26ccf28,17024,4)
Modify(Read('libUE4.so','r--p')+0x26ccf5c,17024,4)
Modify(Read('libUE4.so','r--p')+0x26ccff8,17024,4)
Modify(Read('libUE4.so','r--p')+0x26cd02c,17024,4)
Modify(Read('libUE4.so','r--p')+0x26cd2c4,17024,4)
Modify(Read('libUE4.so','r--p')+0x26cd894,17024,4)
Modify(Read('libUE4.so','r--p')+0x26cd900,17024,4)
Modify(Read('libUE4.so','r--p')+0x26cdb3c,17024,4)
Modify(Read('libUE4.so','r--p')+0x26cdb70,17024,4)
Modify(Read('libUE4.so','r--p')+0x26cdc74,17024,4)
Modify(Read('libUE4.so','r--p')+0x26cdd10,17024,4)
Modify(Read('libUE4.so','r--p')+0x26cdd78,17024,4)
Modify(Read('libUE4.so','r--p')+0x26cddac,17024,4)
Modify(Read('libUE4.so','r--p')+0x26cdde0,17024,4)
Modify(Read('libUE4.so','r--p')+0x26cde58,17024,4)
Modify(Read('libUE4.so','r--p')+0x26cde74,17024,4)
Modify(Read('libUE4.so','r--p')+0x26cdea8,17024,4)
Modify(Read('libUE4.so','r--p')+0x26cdf30,17024,4)
gg.setValues(Table)
string.toMusic("开启成功")
					end,
					function()

					end
						}, {
					"全球大厅①",
					function()
					local t = {}
		AddItem(t,RdMod("End","r-xp","Xa","libdiscord_connect_sdk_android.so",0x5B1D4C),"DWORD",17024) -- 4
AddItem(t,RdMod("End","r-xp","Xa","libdiscord_connect_sdk_android.so",0x5B1D98),"DWORD",17024) -- 4
AddItem(t,RdMod("End","r-xp","Xa","libdiscord_connect_sdk_android.so",0x5B1F20),"DWORD",17024) -- 4
AddItem(t,RdMod("End","r-xp","Xa","libINTLCompliance.so",0xF90B4),"DWORD",17024) -- 4
AddItem(t,RdMod("End","r-xp","Xa","libINTLCompliance.so",0xF9218),"DWORD",17024) -- 4
AddItem(t,RdMod("End","r-xp","Xa","libINTLCompliance.so",0xF9294),"DWORD",17024) -- 4
AddItem(t,RdMod("End","r-xp","Xa","libINTLCompliance.so",0xF9444),"DWORD",17024) -- 4
AddItem(t,RdMod("End","r-xp","Xa","libINTLCompliance.so",0xF95F4),"DWORD",17024) -- 4
AddItem(t,RdMod("End","r-xp","Xa","libINTLCompliance.so",0xF9828),"DWORD",17024) -- 4
AddItem(t,RdMod("End","r-xp","Xa","libINTLCompliance.so",0xF9F9C),"DWORD",17024) -- 4
AddItem(t,RdMod("End","r-xp","Xa","libINTLCompliance.so",0xFA400),"DWORD",17024) -- 4
AddItem(t,RdMod("End","r-xp","Xa","libINTLCompliance.so",0xFA7D0),"DWORD",17024) -- 4
AddItem(t,RdMod("End","r-xp","Xa","libINTLCompliance.so",0xFAAE0),"DWORD",17024) -- 4
AddItem(t,RdMod("End","r-xp","Xa","libINTLCompliance.so",0xFAC60),"DWORD",17024) -- 4
AddItem(t,RdMod("End","r-xp","Xa","libINTLCompliance.so",0xFACF0),"DWORD",17024) -- 4
AddItem(t,RdMod("End","r-xp","Xa","libINTLFoundation.so",0x22003C),"DWORD",17024) -- 4
AddItem(t,RdMod("End","r-xp","Xa","libINTLFoundation.so",0x2200AC),"DWORD",17024) -- 4
AddItem(t,RdMod("End","r-xp","Xa","libINTLFoundation.so",0x220140),"DWORD",17024) -- 4
AddItem(t,RdMod("End","r-xp","Xa","libINTLFoundation.so",0x2201B4),"DWORD",17024) -- 4
AddItem(t,RdMod("End","r-xp","Xa","libINTLFoundation.so",0x2202D0),"DWORD",17024) -- 4
AddItem(t,RdMod("End","r-xp","Xa","libINTLFoundation.so",0x2204EC),"DWORD",17024) -- 4
AddItem(t,RdMod("End","r-xp","Xa","libINTLFoundation.so",0x220610),"DWORD",17024) -- 4
AddItem(t,RdMod("End","r-xp","Xa","libINTLFoundation.so",0x220824),"DWORD",17024) -- 4
AddItem(t,RdMod("End","r-xp","Xa","libINTLFoundation.so",0x220E44),"DWORD",17024) -- 4
AddItem(t,RdMod("End","r-xp","Xa","libINTLFoundation.so",0x220F4C),"DWORD",17024) -- 4
AddItem(t,RdMod("End","r-xp","Xa","libINTLFoundation.so",0x2210A0),"DWORD",17024) -- 4
AddItem(t,RdMod("End","r-xp","Xa","libINTLFoundation.so",0x2212BC),"DWORD",17024) -- 4
AddItem(t,RdMod("End","r-xp","Xa","libINTLFoundation.so",0x2212F4),"DWORD",17024) -- 4
AddItem(t,RdMod("End","r-xp","Xa","libINTLFoundation.so",0x22155C),"DWORD",17024) -- 4
AddItem(t,RdMod("End","r-xp","Xa","libINTLFoundation.so",0x221990),"DWORD",17024) -- 4
AddItem(t,RdMod("End","r-xp","Xa","libINTLFoundation.so",0x221F6C),"DWORD",17024) -- 4
AddItem(t,RdMod("End","r-xp","Xa","libTDataMaster.so",0x390F94),"DWORD",17024) -- 4
AddItem(t,RdMod("End","r-xp","Xa","libTDataMaster.so",0x3910F8),"DWORD",17024) -- 4
AddItem(t,RdMod("End","r-xp","Xa","libTDataMaster.so",0x39112C),"DWORD",17024) -- 4
AddItem(t,RdMod("End","r-xp","Xa","libTDataMaster.so",0x391C10),"DWORD",17024) -- 4
AddItem(t,RdMod("End","r-xp","Xa","libTDataMaster.so",0x391DFC),"DWORD",17024) -- 4
AddItem(t,RdMod("End","r-xp","Xa","libTDataMaster.so",0x391EE4),"DWORD",17024) -- 4
WrRam(t)
string.toMusic("开启成功")
						end,
					function()

					end
				}, {
					"离线",
					function()
so=gg.getRangesList('libgcloud.so')[1].start
py=0x424158
 setvalue(so+py,4,0)
so=gg.getRangesList('libgcloud.so')[1].start
py=0x4971B8
 setvalue(so+py,4,0)
string.toMusic("开启成功")
					end,
					function()
so=gg.getRangesList('libgcloud.so')[1].start
py=0x424158
 setvalue(so+py,4,-1750889146)
so=gg.getRangesList('libgcloud.so')[1].start
py=0x4971B8
 setvalue(so+py,4,-1750889146)
string.toMusic("关闭成功")
					end
				}
				
			})
			}),
				changan.box({"🧸其他",
			changan.check({
				{
					"防闪",
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



local t = {"libanogs.so:bss", "Cb"}
local tt = {0x628}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 64, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x6B8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 64, freeze = true}})
	string.toMusic("开启成功")		
		    		end,
					function()

					end
				}, {
					"过86",
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



local t = {"libanogs.so:bss", "Cb"}
local tt = {0x628}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 64, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x6B8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 64, freeze = true}})
string.toMusic("开启成功")
					end,
					function()

					end
				
				}
			})
			}),
			
		}, {
--2
	changan.check({
				{
					"广角",
					function()
local r = gg.prompt({'推荐1~2'}, {'1.0'}, {'text'}) 
so=gg.getRangesList('libUE4.so')[1].start
py=0x334be48
setvalue(so+py,16,r[1])	
string.toMusic("开启成功")
					end,
					function()

					end
				}, {
					"无后",
					function()
so=gg.getRangesList('libUE4.so')[1].start
py=0x54EC3E8
setvalue(so+py,16,8.8411673e-21)
string.toMusic("开启成功")
					end,
					function()

					end
				}, {
					"据点",
					function()
so=gg.getRangesList('libUE4.so')[1].start
py=0x54E7870
setvalue(so+py,16,8.47963525e-21)
string.toMusic("开启成功")
					end,
					function()

					end
				}, {
					"除雾",
					function()
so=gg.getRangesList('libUE4.so')[1].start
py=0x7BC8528
setvalue(so+py,16,8.95671814e-21)
string.toMusic("开启成功")
					end,
					function()

					end
				}, {
					"瞬击",
					function()
so=gg.getRangesList('libUE4.so')[1].start
py=0x8B59130
setvalue(so+py,16,8.95671814e-21)
string.toMusic("开启成功")
					end,
					function()

					end
				}, {
					"跳远",
					function()
					
	SBXXS=gg.prompt({"自行调整人物跳远参数[1;10]","人物悬空\n建议搭配人物跳远"},{[1]="5",[2]="9999"},{[1]="number",[2]="number"})	

																													if SBXXS == nil   then gg.toast("开启失败：原因：你点击了取消")
																																			else
				
																												
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x4DC160,0x2AA8,0x30,0x560,0x2E1C}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = SBXXS[1]}})--跳远

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x4DE9E0,0x30,0x78,0x560,0x5D8,0x238}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = SBXXS[2]}})--悬空
end
string.toMusic("开启成功")
					end,
					function()
string.toMusic("改1关闭")
					end
				}, {
					"防抖",
					function()
so=gg.getRangesList('libUE4.so')[1].start
py=0x8A09CFC
setvalue(so+py,4,505872707)
so=gg.getRangesList('libUE4.so')[1].start
py=0x60C9E14
setvalue(so+py,4,1409287341)
string.toMusic("开启成功")
					end,
					function()

					end
							}, {
					"自改锁帧",
					function()
					
kk = gg.prompt({"帧率0到你手机支持的刷新率"},{90},{"number"})
local addr = readPointer("libUE4.so:bss", {0x4A0530, 0x5B4},1)
gg.edits(addr, {{kk[1], 16, 0, false}})
string.toMusic("开启成功")
						end,
					function()

					end
					
								}, {
					"微加速",
					function()
					local addr = readPointer("libUE4.so:bss", {0x3AD38, 0x0, 0x2F0, 0x40, 0x168, 0x210, 0x0},1)
gg.edits(addr, {{579.5, 16, 0, false}})
local addr = readPointer("libUE4.so:bss", {0x3AD38, 0x0, 0x460, 0x1B4},1)
---gg.edits(addr, {{1000, 16, 0x78, false}})----惯性
gg.edits(addr, {{81920, 16, 0x54, false}})-----惯性2
string.toMusic("开启成功")
						end,
					function()
local addr = readPointer("libUE4.so:bss", {0x3AD38, 0x0, 0x2F0, 0x40, 0x168, 0x210, 0x0},1)
gg.edits(addr, {{479.5, 16, 0, false}})
string.toMusic("关闭成功")
					end
					
								}, {
					"自改人物大小",
					function()
					kk = gg.prompt({"左右宽度"},{1.2},{"number"})
kk2 = gg.prompt({"前后宽度"},{1.2},{"number"})
kk3 = gg.prompt({"上下宽度"},{1.2},{"number"})
local addr = readPointer("libUE4.so:bss", {0x3AD38, 0x0, 0x458, 0x194},1)
addr2=addr
addr3=addr2-----/addr
gg.edits(addr, {{kk[1], 16, 8, false}})
gg.edits(addr2, {{kk2[1], 16, 12, false}})
gg.edits(addr3, {{kk3[1], 16, 16, false}})
string.toMusic("开启成功")
						end,
					function()
string.toMusic("改一关闭")
					end
								}, {
					"谝历内透",
					function()
					gg.toast(_V(0x048,8200,gg.TYPE_DWORD,11))--人物上色


gg.toast(_V(0x8B0,2,gg.TYPE_FLOAT,120))--头发
gg.toast(_V(0x528,2,gg.TYPE_FLOAT,120))--透
gg.toast(_V(0x930,2,gg.TYPE_FLOAT,120))--马赛克
gg.toast(_V(0x180,2,gg.TYPE_FLOAT,99999))--掩体防闪
string.toMusic("开启成功")
						end,
					function()

					end
								}, {
					"自改亮度",
					function()
					
kk = gg.prompt({"1.5对应150亮度"},{1.5},{"number"})
local addr = readPointer("libUE4.so:bss", {0x167CA8, 0x4F8},1)
gg.edits(addr, {{kk[1], 16, 0, false}})
string.toMusic("开启成功")
						end,
					function()

					end
							}, {
					"攀爬穿墙",
					function()
					local addr = readPointer("libUE4.so:bss", {0x3AD38, 0x0, 0x390, 0x58, 0x2CC},1)
gg.edits(addr, {{9999, 16, 0, false}})
					string.toMusic("开启成功")
						end,
					function()
local addr = readPointer("libUE4.so:bss", {0x3AD38, 0x0, 0x390, 0x58, 0x2CC},1)
gg.edits(addr, {{10, 16, 0, false}})
string.toMusic("关闭成功")
					end
							}, {
					"自改上色",
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

					OP=gg.prompt({'改999999是黑色'},{[1]='70'},{[1]='number'})
					if OP == nil or OP[1] == '' or OP[1] == '0' then gg.toast("取消")
						else
						local t = {"libUE4.so:bss", "Cb"}
						local tt = {0x343388, 0x4}
						local ttt = S_Pointer(t, tt, true)
						gg.addListItems({{address = ttt, flags = 16, value = OP[1], freeze = true}})

						local t = {"libUE4.so:bss", "Cb"}
						local tt = {0x343398, 0x84}
						local ttt = S_Pointer(t, tt, true)
						gg.addListItems({{address = ttt, flags = 16, value = OP[1], freeze = true}})

						local t = {"libUE4.so:bss", "Cb"}
						local tt = {0x3C1748, 0x84}
						local ttt = S_Pointer(t, tt, true)
						gg.addListItems({{address = ttt, flags = 16, value = OP[1], freeze = true}})

						local t = {"libUE4.so:bss", "Cb"}
						local tt = {0x4917D0, 0x38}
						local ttt = S_Pointer(t, tt, true)
						gg.addListItems({{address = ttt, flags = 16, value = OP[1], freeze = true}})

						local t = {"libUE4.so:bss", "Cb"}
						local tt = {0x4917D8, 0x4}
						local ttt = S_Pointer(t, tt, true)
						gg.addListItems({{address = ttt, flags = 16, value = OP[1], freeze = true}})

						local t = {"libUE4.so:bss", "Cb"}
						local tt = {0x4917E8, 0xB8}
						local ttt = S_Pointer(t, tt, true)
						gg.addListItems({{address = ttt, flags = 16, value = OP[1], freeze = true}})

						local t = {"libUE4.so:bss", "Cb"}
						local tt = {0x4917F0, 0x84}
						local ttt = S_Pointer(t, tt, true)
						gg.addListItems({{address = ttt, flags = 16, value = OP[1], freeze = true}})
					end
string.toMusic("开启成功")
					end,
					function()

					end
				}
			})
	}, {
--3
	changan.check({
				{
					"人物美化",
					function()	
					local r = gg.prompt({'自改美化'}, {'1406387'}, {'text'})
if r then
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value =r[1]}})
end

string.toMusic("美化成功")
					end,
					function()

					end
				}, {
				"背包自改",
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

					end
				}, {
					"经典枪械美化",
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
add = RUI(RUI(RUI(RUI(RUI(mk + 0xC656D90) + 0x558) + a) + 0x30) + 0x38)--动态DD900
adpd = RUI(RUI(RUI(RUI(RUI(mk + 0xC656D90) + 0x558) + a) + 0x30) + 0x30) +0x18
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
time=os.clock()-time
time=string.format("%1.1f",tonumber(time))
gg.alert("修改完毕\n修改总耗时" .. time .. "秒")
break
end
end
end
string.toMusic("美化成功")
					end,
					function()

					end
					}, {
					"自改瞄准镜",
					function()
					string.toMusic('请耐心等待美化完成')
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
add = RUI(RUI(RUI(RUI(RUI(mk + 0xC656D90) + 0x558) + a) + 0x30) + 0x38)--动态DD900
adpd = RUI(RUI(RUI(RUI(RUI(mk + 0xC656D90) + 0x558) + a) + 0x30) + 0x30) +0x18
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
string.toMusic('美化完成')
			gg.alert("遍历完毕")
			break
		end
	end
end	
					
						end,
					function()

					end
						}, {
					"播报美化",
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
string.toMusic('美化完成')
						end,
					function()

					end
						}, {
					"地铁妹控美化",
					function()
					
					
	if not gg.getRangesList(("libUE4.so")) or #gg.getRangesList(("libUE4.so")) == 0 then
os.exit(print(("so模块不存在 libUE4.so 请检查游戏进程是否正确？")))
end

local cfg_file = gg.EXT_FILES_DIR.."/"..gg.getFile():match("[^/]+$")..'(枪械地铁mk14.).lua'
local chunk = loadfile(cfg_file)
local cfg = nil
if chunk ~= nil then
 cfg = chunk()
end
if cfg == nil then
cfg = {1103007020 ,1103007020 ,1103007020 , 1103007020 , 1103007020 ,1103007020 ,1103007020, true}
end
qing = gg.prompt({
"破损:",
"修复:",
"完好",
"改进:",--4
"精致:",--5
"钢铁",--6
"独眼",--7
},cfg,{"text","text","text", "text","text","text","text"})
if qing == nil then else
gg.saveVariable(qing, cfg_file)
if qing[1] == true then qing1() end
if qing[2] == true then qing2() end
if qing[3] == true then qing3() end
if qing[4] == true then qing4() end
if qing[5] == true then qing5() end
if qing[6] == true then qing6() end
if qing[7] == true then qing7() end


a=0x0
while(a <=0xAF0)
do
a=a+0x10
mk=gg.getRangesList('libUE4.so')[1].start
add = RUI(RUI(RUI(RUI(RUI(mk + 0xC656D90) + 0x558) + a) + 0x30) + 0x38)--动态DD900
adpd = RUI(RUI(RUI(RUI(RUI(mk + 0xC656D90) + 0x558) + a) + 0x30) + 0x30) +0x18
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
----------qingnb
if readD(addr+0x58) == 1030071 then --AKM
setvalue(addr+0x18,4,qing[1])

end
if readD(addr+0x58) == 1030072 then --AKM
setvalue(addr+0x18,4,qing[2])

end
if readD(addr+0x58) == 1030073 then --AKM
setvalue(addr+0x18,4,qing[3])

end
if readD(addr+0x58) == 1030074 then --AKM
setvalue(addr+0x18,4,qing[4])

end
if readD(addr+0x58) == 1030075 then --AKM
setvalue(addr+0x18,4,qing[5])

end
if readD(addr+0x58) == 1030076 then --AKM
setvalue(addr+0x18,4,qing[6])

end
if readD(addr+0x58) == 1030077 then --AKM
setvalue(addr+0x18,4,qing[7])

gg.alert("遍历完毕")
break
end
end
end
string.toMusic('美化完成')
						end,
					function()

					end
					
						}, {
					"地铁m4美化",
					function()
						if not gg.getRangesList(("libUE4.so")) or #gg.getRangesList(("libUE4.so")) == 0 then
os.exit(print(("so模块不存在 libUE4.so 请检查游戏进程是否正确？")))
end

local cfg_file = gg.EXT_FILES_DIR.."/"..gg.getFile():match("[^/]+$")..'(枪械地铁m416.).lua'
local chunk = loadfile(cfg_file)
local cfg = nil
if chunk ~= nil then
 cfg = chunk()
end
if cfg == nil then
cfg = {1101004046 ,1101004046 ,1101004046 , 1101004046 , 1101004046 ,1101004046 ,1101004046, true}
end
qing = gg.prompt({
"破损:",
"修复:",
"完好",
"改进:",--4
"精致:",--5
"钢铁",--6
"独眼",--7
},cfg,{"text","text","text", "text","text","text","text"})
if qing == nil then else
gg.saveVariable(qing, cfg_file)
if qing[1] == true then qing1() end
if qing[2] == true then qing2() end
if qing[3] == true then qing3() end
if qing[4] == true then qing4() end
if qing[5] == true then qing5() end
if qing[6] == true then qing6() end
if qing[7] == true then qing7() end


a=0x0
while(a <=0xAF0)
do
a=a+0x10
mk=gg.getRangesList('libUE4.so')[1].start
add = RUI(RUI(RUI(RUI(RUI(mk + 0xC656D90) + 0x558) + a) + 0x30) + 0x38)--动态DD900
adpd = RUI(RUI(RUI(RUI(RUI(mk + 0xC656D90) + 0x558) + a) + 0x30) + 0x30) +0x18
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
----------qing666
if readD(addr+0x58) == 1010041 then --AKM
setvalue(addr+0x18,4,qing[1])
end
if readD(addr+0x58) == 1010042 then --AKM
setvalue(addr+0x18,4,qing[2])
end
if readD(addr+0x58) == 1010043 then --AKM
setvalue(addr+0x18,4,qing[3])

end
if readD(addr+0x58) == 1010044 then --AKM
setvalue(addr+0x18,4,qing[4])

end
if readD(addr+0x58) == 1010045 then --AKM
setvalue(addr+0x18,4,qing[5])

end
if readD(addr+0x58) == 1010046 then --AKM
setvalue(addr+0x18,4,qing[6])

end
if readD(addr+0x58) == 1010047 then --AKM
setvalue(addr+0x18,4,qing[7])

gg.alert("遍历完毕")
break
end
end
end
string.toMusic('美化完成')
						end,
					function()
					end
						}, {
					"地铁G3美化",
					function()
					if not gg.getRangesList(("libUE4.so")) or #gg.getRangesList(("libUE4.so")) == 0 then
os.exit(print(("so模块不存在 libUE4.so 请检查游戏进程是否正确？")))
end

local cfg_file = gg.EXT_FILES_DIR.."/"..gg.getFile():match("[^/]+$")..'(枪械地铁MG3.).lua'
local chunk = loadfile(cfg_file)
local cfg = nil
if chunk ~= nil then
 cfg = chunk()
end
if cfg == nil then
cfg = {1105010008 ,1105010008 ,1105010008 ,1105010008 ,1105010008 ,1105010008 ,1105010008, true}--苍穹之龙-MG3(5级) 1105010008
end
qing = gg.prompt({
"破损:",
"修复:",
"完好",
"改进:",--4
"精致:",--5
"枪托",--6
"瞄具",--7
},cfg,{"text","text","text", "text","text","text","text"})
if qing == nil then else
gg.saveVariable(qing, cfg_file)
if qing[1] == true then qing1() end
if qing[2] == true then qing2() end
if qing[3] == true then qing3() end
if qing[4] == true then qing4() end
if qing[5] == true then qing5() end
if qing[6] == true then qing6() end
if qing[7] == true then qing7() end


a=0x0
while(a <=0xAF0)
do
a=a+0x10
mk=gg.getRangesList('libUE4.so')[1].start
add = RUI(RUI(RUI(RUI(RUI(mk + 0xC656D90) + 0x558) + a) + 0x30) + 0x38)--动态DD900
adpd = RUI(RUI(RUI(RUI(RUI(mk + 0xC656D90) + 0x558) + a) + 0x30) + 0x30) +0x18
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
----------qingnb
if readD(addr+0x58) == 1050101 then --AKM
setvalue(addr+0x18,4,qing[1])

end
if readD(addr+0x58) == 1050102 then --AKM
setvalue(addr+0x18,4,qing[2])

end
if readD(addr+0x58) == 1050103 then --AKM
setvalue(addr+0x18,4,qing[3])

end
if readD(addr+0x58) == 1050104 then --AKM
setvalue(addr+0x18,4,qing[4])

end
if readD(addr+0x58) == 1050105 then --AKM
setvalue(addr+0x18,4,qing[5])

end
if readD(addr+0x58) == 205008 then --AKMMK47默认枪托 205008Mk47机械瞄具 203016
setvalue(addr+0x18,4,qing[6])

end
if readD(addr+0x58) == 203016 then --AKM
setvalue(addr+0x18,4,qing[7])

gg.alert("遍历完毕")
break
end
end
end
string.toMusic('美化完成')
						end,
					function()

					end
					},{
					"查询代码",
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
gg.toast("已搜索到" .. L2_4061 .. "条")
end
end
local el1 = gg.choice(L3_4062, 2018, "共找到" .. L2_4061 .. "条")
if el1 == nil then
if nil then
end
else
gg.copyText(L3_4062[el1])
end
end
local el2 = gg.prompt({
[1] = "输入美化代码名称"
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
					end,
					function()

					end
			
				}
			})
		}, {
--第四页	
wyylog,
		},{
	
			--changan.switch("6"),
		--	changan.button("切换背景",changebg),
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
--配置表添加表即可加页数，需要与上边菜单标题数对应


gg.sleep(2000)
--倒计时(ret.vip)
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

langj = 1
function proo()
besz.controlRotation2(control1,3000)
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
qhkai = 0
qiehuan = function()
if qhkai == 0 then
qhkai = 1
draw.remove()
luajava.runUiThread(function()
besz.controlSmall(floatWindow,400)
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
besz.controlBig(floatWindow,400)
end)

end
end
huiz()
draw.text('.', -9200,-9200)
while true do
if tuichu == 1 then break end
jianting3(qiehuan)
gg.sleep(300)
end
end



function ex()---退出
os.exit()
end

while(true)do
if gg.isVisible(true) then
XGCK=1
gg.setVisible(false)
end
gg.clearResults()
if XGCK==1 then
y()
end
end