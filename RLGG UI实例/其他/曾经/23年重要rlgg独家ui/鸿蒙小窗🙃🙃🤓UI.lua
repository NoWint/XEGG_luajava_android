


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
S[_].value = S[_].value & 0xFF82FFFF
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
		g.sel = {"我知道你","5"}
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
	toMusic("祝你天天开心正在播放音乐："..name,true)
	gg.playMusic("http://music.163.com/song/media/outer/url?id="..id..".mp3")
end
--停止播放
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

function setvalue(address,flags,value)
local tt = {} tt[1] = {}
tt[1].address = address
tt[1].flags = flags
tt[1].value = value
gg.setValues(tt)
end

function addListltems(address,flags,value,freeze)
t = {} t[1] = {}
t[1].address = address
t[1].flags = flags
t[1].value = value
t[1].freeze = freeze
gg.addListItems(t)
end

function xfnb(add,lx)
return gg.getValues({
	{
		address = add,flags = lx
	}
})[1].value
end

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
addr[1].value = addr[1].value & 0xBAE0FFFF
end
addr = addr[1].value + offset[i]
end
return addr
end
end


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

for i in pairs(ranges) do
local _name = ranges[i]["internalName"]:gsub('^.*/', '')
if so[1] == _name and so[2] == ranges[i]["state"] then
sostart = ranges[i]["start"]
break
end
end

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
sostart = rest[1].value & 0xBAE0FFFF--对值进行补位操作
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
	"我知道你","5"
}
end
end
bei()




function start(name,sl)
fw = gg.makeRequest("http://music.163.com/api/search/get?s="..name.."&type=1&offset=0&total=true&limit="..sl) return fw end
function play(id,name)
toMusic("祝你天天开心正在播放音乐："..name,true)
gg.playMusic("http://music.163.com/song/media/outer/url?id="..id..".mp3") end

function Play(gqlb,idb)
SN = gg.choice(gqlb,nil,ts) if SN == nil then XGCK =-1 else sn = gg.choice({
	"播放歌曲","播放并下载"
},nil,"歌曲："..gqlb[SN]) if sn == nil then end if sn == 1 then play(idb[SN],gqlb[SN]) end if sn == 2 then
local XEY = gg.makeRequest("http://music.163.com/song/media/outer/url?id="..idb[SN]..".mp3").content local XEY1 = gg.getFile():gsub("[^/]+$","")..gqlb[SN]..".mp3" io.open(XEY1,"w"):write(XEY) gg.toast("提示:\n\n音乐已成功下载位置:\n\n"..XEY1) end XGCK=-1 end end

function zjson(jsonr)
local str = jsonr local pattern = "\"[%w]+\":" string.gsub(str, pattern, function(v) if string.find(str, v) then str = string.gsub(str, v, string.gsub(v, "\"", "")) end end) str = string.gsub(str, ":", "=") str = string.gsub(str, "%[", "{") str = string.gsub(str, "%]", "}") local data = "-- WSG PRO 1.0.9(109)\nreturn " .. str local res = load(data)() return res end

function json(con)
res = zjson(con) zd = res.result.songCount pd = go3-zd if pd <= 0 then else go3 = zd end ts = "《"..go1.."》找到"..zd.."首，当前显示"..go3.."首" gqlb = {} idb = {} for i = 1,go3 do gqlb[i] = res.result.songs[i].name idb[i] = res.result.songs[i].id
end end

function S_Pointer(t_So, t_Offset, _bit)
local function getRanges() local ranges = {} local t = gg.getRangesList('^/data/*.so*$') for i, v in pairs(t) do if v.type:sub(2, 2) == 'w' then table.insert(ranges, v) end end return ranges end local function Get_Address(N_So, Offset, ti_bit) local ti = gg.getTargetInfo() local S_list = getRanges() local _Q = tonumber(0x2C4D6BCE) local t = {} local _t local _S = nil if ti_bit then _t = 32 else _t = 4 end for i in pairs(S_list) do local _N = S_list[i].internalName:gsub('^.*/', '') if N_So[1] == _N and N_So[2] == S_list[i].state then _S = S_list[i] break end end if _S then t[#t + 1] = {} t[#t].address = _S.start + Offset[1] t[#t].flags = _t if #Offset ~= 1 then for i = 2, #Offset do local S = gg.getValues(t) t = {} for _ in pairs(S) do if not ti.x64 then S[_].value = S[_].value & 0xBAE0FFFF end t[#t + 1] = {} t[#t].address = S[_].value + Offset[i] t[#t].flags = _t end end end _S = t[#t].address end return _S end local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit)) return _A end


----动态基址写法配置

function PS() end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要256)') local tt = {} tt[1] = {} tt[1].address = address tt[1].flags = flags tt[1].value = value gg.setValues(tt) end
---静态基址写法配置


function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {
	address = xgpy, flags = xglx, value = xgsz
}}) else gg.addListItems({[1] = {
	address = xgpy, flags = xglx, freeze = xgdj, value = xgsz
}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "地址成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "失败") end end end end

--仿SX写法配置

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
		address = addr, flags = va[x64]}}) if not x64 then addr[1].value = addr[1].value & 0xBAE0FFFF end addr = addr[1].value + offset[i] end return addr end end
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

local Table = {}
local function Modify(address,value,flags)
Table[#Table+1] = {
	address = address,value = value,flags = flags
}
end



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

function setvalue(address,flags,value)
local t = {}
t[1] = {}
t[1].address = address
t[1].flags = flags
t[1].value = value
gg.setValues(t)
gg.addListItems(t)
end


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



---前置代码不要动
loadYunLua("httpByQn0RTmbpsGdcPcXyFHiZ+j9yFx3DxxSHi0F9DIM4qDmZfkUpZbU9C1UY80TYc2aiflYoxa065/3xn5ytVjfJVzsEDhe7tBqOYaZkpIO5GYY3YxRKAROvJxr0EopvQ/ivQ7tpjuDNytKVS+Za1nyfSiGp+FKweZMJ4wdz/lWx0bv9Ddx5qYhTCJhOnuVTX1HgLnnNgu13b2A2S/zKPsA85E5FokmzL6ydrzzhlWBUQImTOo5WIa1XITcqzAXHCeppdDskcCYKyso34mIn02HUqhxkNtY4Jnbcl6KPiOv+qNY+i4x2pVNClxRhFu2/19ukuqoNXKdqlh7qcq9cHsc7XUfv6MQGpv42g")
















----自带的控件有:
----changan.button按钮
----changan.switch开关
----changan.check勾选
----changan.seek拉条
----changan.radio单选
----changan.edit输入框
----changan.box收起展开
----全部在下边配置区都有例子 请参考





function getJMBG()--底部导航栏（未选中）背景
return getVerticalBG({0x99ffffff,0x99ffffff},15,0,0xaa232323)
end


slcta=getVerticalBG({0xff004EFF,0xff004EFF},15,0,0xaa242937)
--底部导航栏（选中）背景


muby=700
--初始宽度 竖屏建议850 横屏建议1310


mubx=1150
--初始高度 竖屏建议1310 横屏建议850



背景颜色=0xffF2F3F5

check字体颜色=0xff000000

按钮颜色=0xffffffff

switch颜色=0xff0062FF

function huiz()
--绘制内容必须写在这里否则会消失

	
end

悬浮窗图标="https://cccimg.com/view.php/118a6ab9348e00760871fef90d5cd811.jpg"

stab={
	"防封",
	"美化",
	"功能",
	"设置",
}


changan.menu({
	{---第一页
		changan.text("清水扶摇",switch颜色,"15sp"),
		changan.switch(
			"必看公告",
			function()
			gg.alert("自己测试自己适合哪一套别无脑开\n自己游客号测试")
			end
		),
		changan.button(
			"选择进程",
			function()
				gg.setProcessX()
			end),
		changan.switch(
			"大厅防封[①]",
			function()
			
local t = {"libanogs.so:bss", "Cb"}
local tt = {0x1B80, 0x2A8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 98857}})

local t = {"libanogs.so:bss", "Cb"}--过搜检
local tt = {0x1B80, 0x8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 131328}})

so=gg.getRangesList('libanogs.so')[1].start--13过校验
py=0x527A60
setvalue(so+py,4,-698416192)
--[1].地址:7A91AB6014    数值:17490
so=gg.getRangesList('libUE4.so')[1].start
py=0x3A8A014
setvalue(so+py,4,-698416192)
--[2].地址:7A91AB63A8    数值:17490
so=gg.getRangesList('libUE4.so')[1].start
py=0x3A8A3A8
setvalue(so+py,4,-698416192)
--[3].地址:7A91AB647C    数值:17490
so=gg.getRangesList('libUE4.so')[1].start
py=0x3A8A47C
setvalue(so+py,4,-698416192)
--[4].地址:7A91AB6B2C    数值:17490
so=gg.getRangesList('libUE4.so')[1].start
py=0x3A8AB2C
setvalue(so+py,4,-698416192)
--[5].地址:7A91AB6F64    数值:17490
so=gg.getRangesList('libUE4.so')[1].start
py=0x3A8AF64
setvalue(so+py,4,-698416192)
--[6].地址:7A91AB7094    数值:17490
so=gg.getRangesList('libUE4.so')[1].start
py=0x3A8B094
setvalue(so+py,4,-698416192)
--[7].地址:7A91AB7114    数值:17490
so=gg.getRangesList('libUE4.so')[1].start
py=0x3A8B114
setvalue(so+py,4,-698416192)
--[8].地址:7A91AB795C    数值:17490
so=gg.getRangesList('libUE4.so')[1].start
py=0x3A8B95C
setvalue(so+py,4,-698416192)
--[9].地址:7A91AB7A04    数值:17490
so=gg.getRangesList('libUE4.so')[1].start
py=0x3A8BA04
setvalue(so+py,4,-698416192)
--[10].地址:7A91AB7BB4    数值:17490
so=gg.getRangesList('libUE4.so')[1].start
py=0x3A8BBB4
setvalue(so+py,4,-698416192)
--[11].地址:7A91AB7CFC    数值:17490
so=gg.getRangesList('libUE4.so')[1].start
py=0x3A8BCFC
setvalue(so+py,4,-698416192)
gg.alert("大厅过检测成功")
			end
		),
		
		changan.switch(
			"大厅防封[②]",
			function()
			string.toMusic("开启时间较长，请耐心等待")
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x67FE6C}--原值0
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1}})			
			
	local t = {"libanogs.so:bss", "Cb"}--过搜检
local tt = {0x1B80, 0x8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 131328}})

so=gg.getRangesList('libanogs.so')[1].start--13过校验
py=0x527A60
setvalue(so+py,4,-698416192)

gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("144387;135682", gg.TYPE_DWORD)
gg.searchNumber("135682", gg.TYPE_DWORD)
gg.getResults(999999)
gg.editAll("84149249", gg.TYPE_DWORD)
gg.clearResults()

gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("135682;133634", gg.TYPE_DWORD)
gg.searchNumber("135682", gg.TYPE_DWORD)
gg.getResults(999999)
gg.editAll("84149249", gg.TYPE_DWORD)
gg.clearResults()


gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("135,682;133,378;67109633;131330", gg.TYPE_DWORD)
gg.searchNumber("135682", gg.TYPE_DWORD)
gg.getResults(999999)
gg.editAll("84149249", gg.TYPE_DWORD)
gg.clearResults()
gg.alert("Double!大厅过检测开启成功")		
		end
		),
		
		
	},
	{---第二页
	changan.button("⚔️解除冻结⚔️",
					function()
					gg.clearList()
					string.toMusic("开启成功")
					end,
					0xff0062FF),
		
			changan.box({
			"局内自改",													
		changan.check({
				{
					"全套自改",
					function()
						local cfg_file = gg.EXT_FILES_DIR.."/"..gg.getFile():match("[^/]+$")..'(3.1美化参数).lua'
local chunk = loadfile(cfg_file)
local cfg = nil
if chunk ~= nil then --如果访问的文件存在的话那就执行下面代码
 cfg = chunk() --有的话cfg从空变成导入进去的模块，就是这个表
end
if cfg == nil then--如果cfg等于空的话就设置默认
cfg = {40606001,401993,1400129,404000,405000,501006,503003,true}
end
mmm=gg.prompt({
"头发=当前头发代码:",
"脸部=当前脸部代码:",
"衣服=当前衣服代码:",
"裤子=当前裤子代码:",
"鞋子=当前鞋子代码:",
"背包=当前背包代码:",
"头盔=当前头盔代码:",
"是否开启头盔背包",
},cfg,{"text","text","text","text","text","text","text","checkbox"})
if mmm == nil then else
gg.saveVariable(mmm, cfg_file)

if mmm[8] == true then
local addr = readPointer("libUE4.so:bss",{0x391E0, 0x0, 0x340, 0x30, 0x388, 0x1C0})
local new = {}
gg.addListItems({{address = addr, flags = 4, value = mmm[6], freeze = true}})
gg.setValues(new)

local addr = readPointer("libUE4.so:bss",{0x391E0, 0x0, 0x340, 0x30, 0x388, 0x1F8})
local new = {}
gg.addListItems({{address = addr, flags = 4, value = mmm[7], freeze = true}})
gg.setValues(new)
while true do
YK = gg.alert("检测到你开启头盔背包美化，游戏结束前或者人物死亡前请清除保存列表的值","返回主页","清除")
if YK == 1 then Main() break end
if YK == 2 then Qc() break end
end
end



local addr = readPointer("libUE4.so:bss",{0x391E0, 0x0, 0x340, 0x30, 0x388, 0x70})
local new = {}
table.insert(new, {address = addr,flags=4,value=mmm[1]})
gg.setValues(new)


local addr = readPointer("libUE4.so:bss",{0x391E0, 0x0, 0x340, 0x30, 0x388, 0x38})
local new = {}
table.insert(new, {address = addr,flags=4,value=mmm[2]})
gg.setValues(new)


local addr = readPointer("libUE4.so:bss",{0x391E0, 0x0, 0x340, 0x30, 0x388, 0x118})
local new = {}
table.insert(new, {address = addr,flags=4,value=mmm[3]})
gg.setValues(new)


local addr = readPointer("libUE4.so:bss",{0x391E0, 0x0, 0x340, 0x30, 0x388, 0x150})
local new = {}
table.insert(new, {address = addr,flags=4,value=mmm[4]})
gg.setValues(new)


local addr = readPointer("libUE4.so:bss",{0x391E0, 0x0, 0x340, 0x30, 0x388, 0x188})
local new = {}
table.insert(new, {address = addr,flags=4,value=mmm[5]})
gg.setValues(new)

end

function Qc()
gg.clearList()
end
					end,
					function()
						
					end
				}, {
					"单衣自改",
					function()
						local r = gg.prompt({'自改美化'}, {'1407195'}, {'text'})
if r then
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0, 0x0, 0x340, 0x30, 0x388, 0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value =r[1]}})
end
					end,
					function()
						
					end
				},
			}),
				}),--box结尾
				changan.box({
			"自选衣服",													
		changan.check({
				{
					"重置衣服",
						function()
   local t = {"libUE4.so:bss", "Cb"}
	local tt = {0x391E0,0x0,0x340,0x30,0x388,0x118}
			local ttt = S_Pointer(t, tt, true) gg.setValues({{address = ttt, flags = 4, value =1400129}})--衣服1405269 
			
					local tt = {0x3AD38,0x0,0x2F0,0x280,0x388,0x150}
			local ttt = S_Pointer(t, tt, true) gg.setValues({{address = ttt, flags = 4, value =404000}})--裤子404000

			local tt = {0x3AD38,0x0,0x2F0,0x280,0x388,0x188}
			local ttt = S_Pointer(t, tt, true) gg.setValues({{address = ttt, flags = 4, value = 405000}})--鞋子405000
					
			local tt = {0x3AD38,0x0,0x2F0,0x280,0x388,0x38}
			local ttt = S_Pointer(t, tt, true) gg.setValues({{address = ttt, flags = 4, value = 401993}})--面部401993
			
			local tt = {0x3AD38,0x0,0x2F0,0x280,0x388,0x70}
			local ttt = S_Pointer(t, tt, true) gg.setValues({{address = ttt, flags = 4, value =40601001}})--头发40601001
			        
		
string.toMusic('开启成功')
end,
					function()

					end
				},{
					"秘渊灵主",
					function()
local t = {"libUE4.so:bss", "Cb"}--果冻
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1406971}})----衣服链条

gg.toast("开启成功")
					end,
					function()

					end
				
							},{
							"正义魔女",
						function()
       local t = {"libUE4.so:bss", "Cb"}
	local tt = {0x391E0,0x0,0x340,0x30,0x388,0x118}
			local ttt = S_Pointer(t, tt, true) gg.setValues({{address = ttt, flags = 4, value =1406272}})--衣服1405269 
			
			local tt = {0x391E0,0x0,0x340,0x30,0x388,0x70}
local ttt = S_Pointer(t, tt, true) gg.setValues({{address = ttt, flags = 4, value =40604012}})--头发40601001
			
string.toMusic('开启成功')
	end,
					function()

					end
				},{
	"正义使者",
						function()
       local t = {"libUE4.so:bss", "Cb"}
	local tt = {0x391E0,0x0,0x340,0x30,0x388,0x118}
			local ttt = S_Pointer(t, tt, true) gg.setValues({{address = ttt, flags = 4, value =1406552}})--衣服1405269 
			
			local tt = {0x391E0,0x0,0x340,0x30,0x388,0x70}
local ttt = S_Pointer(t, tt, true) gg.setValues({{address = ttt, flags = 4, value =1410184}})--头发40601001
			
string.toMusic('开启成功')
	end,
					function()

					end
		


		},{
"废墟猎手",
						function()
       local t = {"libUE4.so:bss", "Cb"}
	local tt = {0x391E0,0x0,0x340,0x30,0x388,0x118}
			local ttt = S_Pointer(t, tt, true) gg.setValues({{address = ttt, flags = 4, value =1405163}})--衣服1405269 
			
			local tt = {0x391E0,0x0,0x340,0x30,0x388,0x70}
			local ttt = S_Pointer(t, tt, true) gg.setValues({{address = ttt, flags = 4, value = 1404198}})--面部401993
			
			
		
string.toMusic('开启成功')
end,
					function()

					end		
		},{
"小丑鱼",
						function()
       local t = {"libUE4.so:bss", "Cb"}
	local tt = {0x391E0,0x0,0x340,0x30,0x388,0x118}
			local ttt = S_Pointer(t, tt, true) gg.setValues({{address = ttt, flags = 4, value =1405238}})--衣服1405269 
		
string.toMusic('开启成功')
end,
					function()

					end	
			
			
					},{
					"黄金风衣",
						function()
           local t = {"libUE4.so:bss", "Cb"}
			local tt = {0x391E0,0x0,0x340,0x30,0x388,0x118}
			local ttt = S_Pointer(t, tt, true) gg.setValues({{address = ttt, flags = 4, value = 1400779}})--面部401993
		
string.toMusic('开启成功')
end,
					function()

					end
				},{
					"明日香",
					function()
local t = {"libUE4.so:bss", "Cb"}--明日香
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1406387}})----衣服链条
gg.toast("开启成功")
					end,
					function()

					end
				},{
					"银色风衣",
					function()
	local t = {"libUE4.so:bss", "Cb"}--银色风衣
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1400779}})----衣服链条
gg.toast("开启成功")
					end,
					function()

					end

				},{
					"千面鬼煌",
					function()
local t = {"libUE4.so:bss", "Cb"}--千面
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1406638}})----衣服链条
gg.toast("开启成功")
					end,
					function()

					end

},{
					"零战斗服",
					function()
			local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1406386}})----衣服链条
					gg.toast("开启成功")
					end,
					function()

					end
           },{
					"白木乃伊",
					function()
	local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1400687}})----衣服链条
					gg.toast("开启成功")
					end,
					function()

					end
					                    },{
					"寒冰圣装",
					function()
			local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1406151}})----衣服链条
					gg.toast("开启成功")
					end,
					function()

					end
                    },{
					"极乐愚者",
					function()
			local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1407079}})----衣服链条
					gg.toast("开启成功")
					end,
					function()

					end
                    },{
					"冰蝶新娘",
					function()
			local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1407049}})----衣服链条
					gg.toast("开启成功")
					end,
					function()

					end
                    },{
					"怒涛主宰",
					function()
			local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1406977}})----衣服链条
					gg.toast("开启成功")
					end,
					function()

					end
                    },{
					"金尊法老",
					function()
			local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1406469}})----衣服链条
					gg.toast("开启成功")
					end,
					function()

					end
            
},{
					"血鸦圣装",
					function()
			local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1405870}})----衣服链条
					gg.toast("开启成功")
					end,
					function()

					end

},{
					"海洋之王",
					function()
			local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1405983}})----衣服链条
					gg.toast("开启成功")
					end,
					function()

					end
                    },{
					"怒涛主宰",
					function()
			local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1406977}})----衣服链条
					gg.toast("开启成功")
					end,
					function()
					end
                    },{
					"冥河艳后",
					function()
			local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1406394}})----衣服链条
					gg.toast("开启成功")
					end,
					function()

					end
                    
                    },{
					"满级艳后",
					function()
			local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1406475}})----衣服链条
					gg.toast("开启成功")
					end,
					function()

					end
				},
			}),
				}),--box结尾
				changan.box({
			"丧尸专区",													
		changan.check({
				{
					"丧尸美化①",
					function()
						local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1407193}})----衣服链条	
					end,
					function()
						
					end
						}, {
						"丧尸美化②",
					function()
						local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1407194}})----衣服链条	
					end,
					function()
						
					end
						}, {
						"丧尸美化③",
					function()
						local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1407195}})----衣服链条	
					end,
					function()
						
					end
					}, {
					"丧尸美化④",
					function()
						local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1407196}})----衣服链条	
					end,
					function()
						
					end
				}, {
					"丧尸美化⑤",
					function()
						local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1407197}})----衣服链条	
					end,
					function()
						
					end
					}, {
				"丧尸美化⑥",
					function()
						local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1407198}})----衣服链条	
					end,
					function()
						
					end
				},
			}),
				}),--box结尾
				changan.box({
			"地铁枪械",													
		changan.check({
				{
					"龙吟国度-MK14",
					function()
						local t = {"libUE4.so:bss", "Cb"}--龙吟
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x94940}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1103007028, freeze = true}})--钢铁阵线MK14

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x94818}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1103007020, freeze = true}})--独眼蛇MK14

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x946F0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1103007028, freeze = true}})--精致MK14

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x945C8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1103007028, freeze = true}})--改进MK14

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x944A0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1103007028, freeze = true}})
string.toMusic("开启成功")
					end,
					function()
						
					end
				}, {
					"星云妹控-MK14",
					function()
						local t = {"libUE4.so:bss", "Cb"}
local tt = { 0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x944A0 }
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1103007020}})----完好

local t = {"libUE4.so:bss", "Cb"}
local tt = { 0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x945C8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1103007020}})----改进

local t = {"libUE4.so:bss", "Cb"}
local tt = { 0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x946F0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1103007020}})----精致

local t = {"libUE4.so:bss", "Cb"}
local tt = { 0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x94818}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1103007020}})----独眼

local t = {"libUE4.so:bss", "Cb"}
local tt = { 0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x94940}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1103007020}})----钢铁

local t = {"libUE4.so:bss", "Cb"}
local tt = { 0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x9B4E0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1108004027}})----平顶锅

local t = {"libUE4.so:bss", "Cb"}
local tt = { 0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x9B3B8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1108002059}})----大砍刀
string.toMusic("开启成功")
					end,
					function()
						
					end
				}, {
					"苍穹之龙-MG3",
					function()
						local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x9A6E8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1105010008, freeze = true}})--钢铁阵线MG3

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x9A810}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1105010008, freeze = true}})--独眼蛇MG3

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x9A938}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1105010008, freeze = true}})--精致MG3

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x9AA60}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1105010008, freeze = true}})--改进MG3

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x9AB88}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1105010008, freeze = true}})--完好MG3
string.toMusic("开启成功")
					end,
					function()
						
					end
					}, {
					"铜铸神兽-MG3",
					function()
						local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x9A6E8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1105010010, freeze = true}})--钢铁阵线MG3

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x9A810}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1105010010, freeze = true}})--独眼蛇MG3

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x9A938}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1105010010, freeze = true}})--精致MG3

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x9AA60}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1105010010, freeze = true}})--改进MG3

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x9AB88}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1105010010, freeze = true}})--完好MG3
string.toMusic("开启成功")
					end,
					function()
						
					end
					}, {
					"两面宿傩-Groza",
					function()
							local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x89608}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101005038, freeze = true}})--钢铁阵线狗砸

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x89730}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101005038, freeze = true}})--独眼蛇狗砸

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x89858}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101005038, freeze = true}})--精致狗砸

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x8998089AA8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101005038, freeze = true}})--改进狗砸

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x85B10}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101005038, freeze = true}})--完好狗砸
string.toMusic("开启成功")
					end,
					function()
						
					end
					}, {
					"冥河烈焰-Groza",
					function()
							local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x89608}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101005052, freeze = true}})--钢铁阵线狗砸

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x89730}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101005052, freeze = true}})--独眼蛇狗砸

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x89858}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101005052, freeze = true}})--精致狗砸

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x8998089AA8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101005052, freeze = true}})--改进狗砸

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x85B10}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101005052, freeze = true}})--完好狗砸
					end,
					function()
						
					end
					}, {
					"嗜血龙魇-AMR",
					function()
						local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x96188}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1103012010, freeze = true}})--钢铁阵线AMR

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x962B0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1103012010, freeze = true}})--独眼蛇AMR

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x963D8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1103012010, freeze = true}})--精致AMR

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x96500}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1103012010, freeze = true}})--改进AMR

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x96628}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1103012010, freeze = true}})--完好AMR
gg.alert("美化成功") 
					end,
					function()
						
					end
					}, {
					"玲珑白蛇-AWM",
					function()
						local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x92568}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1103003087, freeze = true}})--钢铁阵线AMR

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x92690}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1103003087, freeze = true}})--独眼蛇AMR

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x927B8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1103003087, freeze = true}})--精致AMR

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x928E0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1103003087, freeze = true}})--改进AMR

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x928E0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value =1103003087, freeze = true}})--完好AMR
gg.alert("美化成功") 
					end,
					function()
						
					end
					}, {
					"乖张怪客-M762",
					function()
						local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x8AF78}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101008081, freeze = true}})--钢铁阵线M762

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x8B0A0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101008081, freeze = true}})--独眼蛇M762

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x8B1C8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101008081, freeze = true}})--精致M762

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x8B2F0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101008081, freeze = true}})--改进M762

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x8B418}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101008081, freeze = true}})--完好M762
gg.alert("美化成功") 
					end,
					function()
						
					end
					}, {
					"神庭冰棘－ace",
					function()
						local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x8D6C8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101102017, freeze = true}})--钢铁ACE

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x8D7F0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101102017, freeze = true}})--独眼ACE

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x8D918}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101102017, freeze = true}})--精致ACE

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x8DA40}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101102017, freeze = true}})--改进ACE

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x8DB68}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101102017, freeze = true}})--完好ACE
gg.alert("美化成功")
					end,
					function()
						
					end
					}, {
					"冰霜核心-AKM",
					function()
						local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x87480}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101001089, freeze = true}})--AK完好

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x875A8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101001089, freeze = true}})--改进ak

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x876D0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101001089, freeze = true}})--精致ak

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x877F8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101001089, freeze = true}})--ak独眼

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x87920}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101001089, freeze = true}})--ak钢铁

gg.alert("美化成功") 
					end,
					function()
						
					end
					}, {
					"邪能植物-scar",
					function()
						local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x88388}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101003146, freeze = true}})--死干玩好

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x884B0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101003146, freeze = true}})--改进

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x885D8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101003146, freeze = true}})--精致

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x88700}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101003146, freeze = true}})--独眼

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x88828}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101003146, freeze = true}})--完好MK14
gg.alert("美化成功") 
					end,
					function()
						
					end
					}, {
					"冰霜核心-M416",
					function()
						local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x88A78}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101004046, freeze = true}})--famas
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x88BA0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101004046, freeze = true}})--famas

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x88CC8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101004046, freeze = true}})--famas


local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x88DF0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101004046, freeze = true}})--famas

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x88F18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101004046, freeze = true}})--famas

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x89040}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101004046,freeze = true}})--famas
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x89168}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101004046, freeze = true}})--famas
gg.alert("美化成功") 
					end,
					function()
						
					end
					}, {
					"武魂宗师-M416",
					function()
						local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x88A78}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101004199, freeze = true}})--famas
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x88BA0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101004199, freeze = true}})--famas

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x88CC8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101004199, freeze = true}})--famas


local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x88DF0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101004199, freeze = true}})--famas

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x88F18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101004199, freeze = true}})--famas

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x89040}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101004199,freeze = true}})--famas
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0x89168}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101004046, freeze = true}})--famas

gg.alert("美化成功") 
					end,
					function()
						
					end
				},
			}),
				}),--box结尾
				changan.box({
			"遍历美化",													
		changan.check({
				{
					"全枪遍历",
					function()
							local cfg_file = "/sdcard/枪械配置/.txt"
	local chunk = loadfile(cfg_file)
	local cfg = nil
	if chunk ~= nil then
		cfg = chunk()
	end
	if cfg == nil then
	cfg = {
		1101001242--ak
		, 1101002029--m16
		, 1101003188--sc
		, 1101004209--m416
		, 1101005052--GROZA
		, 1101006062--AUG
		, 1101007046--QBZ
		, 1101008126--M762
		, 1101102007--ACE32
		, 1101010012--g36c
		, 10101200--蜜罐11
		, 1020010241--UZI12
		, 1102002061--UMP45
		, 1102003080--Vector
		, 1102004018--汤姆逊
		, 1102005007--野牛
		, 1107001019--MP5K
		, 1102105002--P90
		, 1103001179--98K
		, 1103002087--m24
		, 1103003062--awm
		, 1103004037--sks22
		, 1103005024--vss23
		, 1030060301--mini14
		, 1103007020--mk1425
		, 1103008014--win94
		, 1030090122--slr27
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
		, 1010042022--m4苗具
		, 1010042023--m4枪托
		, 1010042021--m4弹夹
		 }
end
qing = gg.prompt({
	"AKM美化代码:",--1
	"M16A4美化代码:",--2
	"SCAR-L美化代码:",--3
	"M416美化代码:",--4
	"GROZA美化代码:",--5
	"AUG美化代码:",--6
	"QBZ美化代码:",--7
	"M762美化代码:",--8
	"ACE32美化代码:",--9
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
	"M4瞄具美化代码:",--43
	"M4枪托美化代码:",--44
	"M4弹夹美化代码:",--45
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
	"text"--45
})
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
	if qing[18] == true then qing18() end
	if qing[19] == true then qing19() end
	if qing[20] == true then qing20() end
	if qing[21] == true then qing21() end
	if qing[22] == true then qing22() end
	if qing[23] == true then qing23() end
	if qing[24] == true then qing24() end
	if qing[25] == true then qing25() end
	if qing[26] == true then qing26() end
	if qing[27] == true then qing27() end
	if qing[28] == true then qing28() end
	if qing[29] == true then qing29() end
	if qing[30] == true then qing30() end
	if qing[31] == true then qing31() end
	if qing[32] == true then qing32() end
	if qing[33] == true then qing33() end
	if qing[34] == true then qing34() end
	if qing[35] == true then qing35() end
	if qing[36] == true then qing36() end
	if qing[37] == true then qing37() end
	if qing[38] == true then qing38() end
	if qing[39] == true then qing39() end
	if qing[40] == true then qing40() end
	if qing[41] == true then qing41() end
	if qing[42] == true then qing42() end
	if qing[43] == true then qing43() end
	if qing[44] == true then qing44() end
	if qing[45] == true then qing45() end



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
			setvalue(addr+0x18,4,qing[1])
			gg.toast("修改目标:AKM")
		end
		if readD(addr+0x58) == 101002 then--M16A4
			setvalue(addr+0x18,4,qing[2])
			gg.toast("修改目标:M16A4")
		end
		if readD(addr+0x58) == 101003 then--SCAR
			setvalue(addr+0x18,4,qing[3])
			gg.toast("修改目标:SCAR")
		end
		if readD(addr+0x58) == 101004 then--M416
			setvalue(addr+0x18,4,qing[4])
			gg.toast("修改目标:M416")
		end
		if readD(addr+0x58) == 101005 then --GROZA
			setvalue(addr+0x18,4,qing[5])
			gg.toast("修改目标:GROZA")
		end
		if readD(addr+0x58) == 101006 then --AUG
			setvalue(addr+0x18,4,qing[6])
			gg.toast("修改目标:AUG")
		end
		if readD(addr+0x58) == 101007 then--QBZ
			setvalue(addr+0x18,4,qing[7])
			gg.toast("修改目标:QBZ")
		end
		if readD(addr+0x58) == 101008 then--M762
			setvalue(addr+0x18,4,qing[8])
			gg.toast("修改目标:M762")
		end
		if readD(addr+0x58) == 101102 then--MK47
			setvalue(addr+0x18,4,qing[9])
			gg.toast("修改目标:ACE32")
		end
		if readD(addr+0x58) == 101010 then--G36C
			setvalue(addr+0x18,4,qing[10])
			gg.toast("修改目标:G36C")
		end
		if readD(addr+0x58) == 101012 then--蜜罐
			setvalue(addr+0x18,4,qing[11])
			gg.toast("修改目标:蜜罐")
		end
		if readD(addr+0x58) == 102001 then--UZI
			setvalue(addr+0x18,4,qing[12])
			gg.toast("修改目标:UZI")
		end
		if readD(addr+0x58) == 102002 then--UMP45
			setvalue(addr+0x18,4,qing[13])
			gg.toast("修改目标:UMP45")
		end
		if readD(addr+0x58) == 102003 then--Vector
			setvalue(addr+0x18,4,qing[14])
			gg.toast("修改目标:Vector")
		end
		if readD(addr+0x58) == 102004 then--汤姆逊
			setvalue(addr+0x18,4,qing[15])
			gg.toast("修改目标:汤姆逊")
		end
		if readD(addr+0x58) == 102005 then--野牛
			setvalue(addr+0x18,4,qing[16])
			gg.toast("修改目标:野牛")
		end
		if readD(addr+0x58) == 102006 then--MP5K
			setvalue(addr+0x18,4,qing[17])
			gg.toast("修改目标:MP5K")
		end
		if readD(addr+0x58) == 102007 then--P90
			setvalue(addr+0x18,4,qing[18])
			gg.toast("修改目标:P90")
		end
		if readD(addr+0x58) == 103001 then--98K
			setvalue(addr+0x18,4,qing[19])
			gg.toast("修改目标:98K")
		end
		if readD(addr+0x58) == 103002 then--M24
			setvalue(addr+0x18,4,qing[20])
			gg.toast("修改目标:M24")
		end
		if readD(addr+0x58) == 103003 then--awm
			setvalue(addr+0x18,4,qing[21])
			gg.toast("修改目标:AWM")
		end
		if readD(addr+0x58) == 103004 then--SKS
			setvalue(addr+0x18,4,qing[22])
			gg.toast("修改目标:SKS")
		end
		if readD(addr+0x58) == 103005 then--VSS
			setvalue(addr+0x18,4,qing[23])
			gg.toast("修改目标:VSS")
		end
		if readD(addr+0x58) == 103006 then--Mini14
			setvalue(addr+0x18,4,qing[24])
			gg.toast("修改目标:MINI14")
		end
		if readD(addr+0x58) == 103007 then--MK14
			setvalue(addr+0x18,4,qing[25])
			gg.toast("修改目标:MK14")
		end
		if readD(addr+0x58) == 103008 then--Win94
			setvalue(addr+0x18,4,qing[26])
			gg.toast("修改目标:Win94")
		end
		if readD(addr+0x58) == 103009 then--SLR
			setvalue(addr+0x18,4,qing[27])
			gg.toast("修改目标:SLR")
		end
		if readD(addr+0x58) == 103010 then--QBU
			setvalue(addr+0x18,4,qing[28])
			gg.toast("修改目标:QBU")
		end
		if readD(addr+0x58) == 103011 then--莫辛纳甘
			setvalue(addr+0x18,4,qing[29])
			gg.toast("修改目标:莫辛纳甘")
		end
		if readD(addr+0x58) == 103012 then--AMR
			setvalue(addr+0x18,4,qing[30])
			gg.toast("修改目标:AMR")
		end
		if readD(addr+0x58) == 103013 then--M417
			setvalue(addr+0x18,4,qing[31])
			gg.toast("修改目标:M417")
		end
		if readD(addr+0x58) == 104001 then--S686
			setvalue(addr+0x18,4,qing[32])
			gg.toast("修改目标:S686")
		end
		if readD(addr+0x58) == 104002 then--S1897
			setvalue(addr+0x18,4,qing[33])
			gg.toast("修改目标:S1897")
		end
		if readD(addr+0x58) == 104003 then--S12K
			setvalue(addr+0x18,4,qing[34])
			gg.toast("修改目标:S12K")
		end
		if readD(addr+0x58) == 104004 then--DBS
			setvalue(addr+0x18,4,qing[35])
			gg.toast("修改目标:DBS")
		end
		if readD(addr+0x58) == 105001 then--M249
			setvalue(addr+0x18,4,qing[36])
			gg.toast("修改目标:M249")
		end
		if readD(addr+0x58) == 105002 then--大盘鸡
			setvalue(addr+0x18,4,qing[37])
			gg.toast("修改目标:大盘鸡")
		end
		if readD(addr+0x58) == 105010 then--MG3
			setvalue(addr+0x18,4,qing[38])
			gg.toast("修改目标:MG3")
		end
		if readD(addr+0x58) == 108001 then--大砍刀
			setvalue(addr+0x18,4,qing[39])
			gg.toast("修改目标:砍刀")
		end
		if readD(addr+0x58) == 108002 then--撬棍
			setvalue(addr+0x18,4,qing[40])
			gg.toast("修改目标:撬棍")
		end
		if readD(addr+0x58) == 108003 then--镰刀
			setvalue(addr+0x18,4,qing[41])
			gg.toast("修改目标:镰刀")
		end
		if readD(addr+0x58) == 108004 then--平底锅
			setvalue(addr+0x18,4,qing[42])
			gg.toast("修改目标:平底锅")
		end
		if readD(addr+0x58) == 203008 then--m4瞄具
			setvalue(addr+0x18,4,qing[43])
			gg.toast("修改目标M416鸡苗:")
		end
		if readD(addr+0x58) == 205005 then--m4张托
			setvalue(addr+0x18,4,qing[44])
			gg.toast("修改目标:M416枪托")
		end
		if readD(addr+0x58) == 291004 then --m4弹夹
			setvalue(addr+0x18,4,qing[45])
			gg.toast("修改目标:M416弹夹")
			
			gg.alert("开启成功")
			break
		end
	end
end
	string.toMusic('美化成功')---语音
					end,
					function()
						
					end
				}, {
					"冰霜满配",
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
1010040481,
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
string.toMusic('美化成功')
					end,
					function()
						
					end
				}, {
					"庇护满配",
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
1010042024,
1010042025,
1010042026,
1010042027,
1010042028,
1010042029,
1010042034,
1010042035,
1010042036,
1010042038,
1010042037,
1010042039,
1010042044,
1010042045,
1010042046,
1010042047,
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
string.toMusic('美化成功')
					end,
					function()
						
					end
					
				},
			}),
				}),--box结尾
				changan.box({
			"倍镜美化",													
		changan.check({
				{
					"冰霜倍镜",
					function()
						local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0xDa88}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1010040470, freeze = true}})--红点

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0xDa88+0x128}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1010040469, freeze = true}})--全息

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0xDa88+0x128+0x128}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1010040468, freeze = true}})--二倍

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0xDa88+0x128+0x128+0x128}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1010040466, freeze = true}})--4倍

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0xE990}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1010040467, freeze = true}})--3倍

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0xE990+0x128}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1010040481, freeze = true}})--6倍

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0xDa88+0x128+0x128+0x128+0x128}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1030011731, freeze = true}})--8倍

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0xE740}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1011020045, freeze = true}})--侧面
string.toMusic('美化成功')
					end,
					function()
						
					end
				}, {
					"武魂倍镜",
					function()
							local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0xDa88+0x128+0x128+0x128+0x128}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1030011731, freeze = true}})--8倍			
			
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0xE990+0x128}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1010041967}})----6倍

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0xDa88+0x128+0x128+0x128}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1010041944}})----4倍

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0xE990}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1010041945}})----3倍

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0xDa88+0x128+0x128}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1010041946}})----2倍

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0xDa88+0x128}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1010041947}})----全息

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0xDa88}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1010041948}})----红点

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0xE740}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1011020045, freeze = true}})--侧面
string.toMusic('美化成功')
					end,
					function()
						
					end
				}, {
					"庇护倍镜",
					function()
								local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0xDa88+0x128+0x128+0x128+0x128}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1030020812, freeze = true}})--8倍			
			
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0xE990+0x128}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1010042024}})----6倍

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0xDa88+0x128+0x128+0x128}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1010042025}})----4倍

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0xE990}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1010042026}})----3倍

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0xDa88+0x128+0x128}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1010042027}})----2倍

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0xDa88+0x128}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1010042028}})----全息

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0xDa88}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1010042029}})----红点

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0xE740}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1010042055, freeze = true}})--侧面
string.toMusic('美化成功')
					end,
					function()
						
					end
						}, {
					"龙魇倍镜",
					function()
						local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0xDa88+0x128+0x128+0x128+0x128}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1030120032, freeze = true}})--8倍			
			
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0xE990+0x128}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1030120033}})----6倍

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0xDa88+0x128+0x128+0x128}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1030120034}})----4倍

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0xE990}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1030120035}})----3倍

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0xDa88+0x128+0x128}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1030120036}})----2倍

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0xDa88+0x128}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1030120037}})----全息

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0xDa88}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1030120038}})----红点

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0xE740}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1010042055, freeze = true}})--侧面
string.toMusic('美化成功')
					end,
					function()
						
					end
						}, {
					"终极倍镜",
					function()
						local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0xDa88+0x128+0x128+0x128+0x128}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1030120032, freeze = true}})--8倍			
			
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0xE990+0x128}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1011020014}})----6倍

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0xDa88+0x128+0x128+0x128}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1011020015}})----4倍

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0xE990}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1011020016}})----3倍

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0xDa88+0x128+0x128}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1011020017}})----2倍

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0xDa88+0x128}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1011020018}})----全息

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0xDa88}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1011020019}})----红点

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0xE740}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1030120039, freeze = true}})--侧面
string.toMusic('美化成功')
					end,
					function()
						
					end
						}, {
					"冰刺倍镜",
					function()
						local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0xDa88+0x128+0x128+0x128+0x128}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1030011731, freeze = true}})--8倍			
			
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0xE990+0x128}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1020021302}})----6倍

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0xDa88+0x128+0x128+0x128}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1020021303}})----4倍

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0xE990}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1020021304}})----3倍

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0xDa88+0x128+0x128}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1020021305}})----2倍

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0xDa88+0x128}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1020021306}})----全息

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0xDa88}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 1020021307}})----红点

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x4700,0x18+0xE740}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1020021325, freeze = true}})--侧面
string.toMusic('美化成功')
					end,
					function()
						
					end
				},
			}),
				}),--box结尾
				changan.box({
			"头盔美化",													
		changan.check({
				{
				"头盔自改",
					function()
						local r = gg.prompt({'头盔自改'}, {''}, {'text'})
if r then
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1F8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value =r[1]}})
end
					end,
					function()
						
					end
						}, {
					"身法刺头",
					function()
						local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1F8}--头盔
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1502002014, freeze = true}})
					end,
					function()
						
					end
				}, {
					"冰雪晶核",
					function()
						local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1F8}--头盔
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1502000023, freeze = true}})
					end,
					function()
						
					end
				}, {
					"性感胖达",
					function()
						local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1F8}--头盔
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1502000027, freeze = true}})
					end,
					function()
						
					end
				},{
					"猩红恶兽",
					function()
						local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1F8}--头盔
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1502000028, freeze = true}})
					end,
					function()
						
					end
						},{
					"幼龙咆哮",
					function()
						local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1F8}--头盔
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1502000039, freeze = true}})
					end,
					function()
						
					end
						},{
					"机械萌龙",
					function()
						local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1F8}--头盔
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1502000230, freeze = true}})
					end,
					function()
						
					end
						},{
					"可爱雪怪",
					function()
						local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1F8}--头盔
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1502000233, freeze = true}})
					end,
					function()
						
					end
						},{
					"海洋之主",
					function()
						local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1F8}--头盔
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1502000261, freeze = true}})
					end,
					function()
						
					end
						},{
					"EVA初号机",
					function()
						local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x340,0x30,0x388,0x1F8}--头盔
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1502000278, freeze = true}})
					end,
					function()
						
					end
						},
			}),
			
				}),--box结尾
				changan.box({
			"背包美化",													
		changan.check({
				{
					"自改背包",
					function()
						local r = gg.prompt({'背包自改'}, {''}, {'text'})
if r then
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x1C0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value =r[1]}})
end
					end,
					function()
						
					end
				}, {
					"隐藏背包",
					function()
						local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x1C0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})----背包
					end,
					function()
						
					end
				}, {
					"小猫宠物",
					function()
						local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x1C0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1501000050, freeze = true}})----背包
					end,
					function()
						
					end
					}, {
					"愚人小丑",
					function()
						local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x1C0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1501000051, freeze = true}})----背包
					end,
					function()
						
					end
						}, {
					"蔚蓝风暴",
					function()
						local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x1C0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1501002009, freeze = true}})----背包
					end,
					function()
						
					end
						}, {
					"废墟猎手",
					function()
						local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x1C0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1501002035, freeze = true}})----背包
					end,
					function()
						
					end
							}, {
					"恐龙布朗",
					function()
						local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x1C0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1501003261, freeze = true}})----背包
					end,
					function()
						
					end
						}, {
					"法老圣装",
					function()
						local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x1C0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1501002174, freeze = true}})----背包
					end,
					function()
						
					end
						}, {
					"哥特少女",
					function()
						local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x1C0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1501002175, freeze = true}})----背包
					end,
					function()
						
					end
						}, {
					"EVA初号机",
					function()
						local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x1C0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1501003387, freeze = true}})----背包
					end,
					function()
						
					end
						}, {
					"愤怒猪猪",
					function()
						local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x1C0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1501000112, freeze = true}})----背包
					end,
					function()
						
					end
					}, {
					"天使之翼",
					function()
						local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x340,0x30,0x388,0x1C0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1501002081, freeze = true}})----背包
					end,
					function()
						
					end
				},
			}),
				}),--box结尾
				changan.box({
			"打击美化",													
		changan.check({
				{
					"冰霜核心",
					function()
						local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x1A0,0x8,0x6E0,0x3D0,0x18,0x8C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101004046, freeze = true}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x1A0,0x0,0x6E0,0x3D0,0x10,0x8C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101004046, freeze = true}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x1A0,0x0,0x6E0,0x3D0,0x8,0x8C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101004046, freeze = true}})
					end,
					function()
						
					end
				}, {
					"武魂宗师",
					function()
						local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x1A0,0x8,0x6E0,0x3D0,0x18,0x8C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101004201, freeze = true}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x1A0,0x0,0x6E0,0x3D0,0x10,0x8C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101004201, freeze = true}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x1A0,0x0,0x6E0,0x3D0,0x8,0x8C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101004201, freeze = true}})
					end,
					function()
						
					end
				}, {
					"庇护之潮",
					function()
						local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x1A0,0x8,0x6E0,0x3D0,0x18,0x8C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101004209, freeze = true}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x1A0,0x0,0x6E0,0x3D0,0x10,0x8C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101004209, freeze = true}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x1A0,0x0,0x6E0,0x3D0,0x8,0x8C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101004209, freeze = true}})
					end,
					function()
						
					end
					}, {
					"龙吟国度",
					function()
						local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x1A0,0x8,0x6E0,0x3D0,0x18,0x8C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1103007028, freeze = true}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x1A0,0x0,0x6E0,0x3D0,0x10,0x8C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1103007028, freeze = true}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x1A0,0x0,0x6E0,0x3D0,0x8,0x8C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1103007028, freeze = true}})
					end,
					function()
						
					end
					}, {
					"终极对撞",
					function()
						local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x1A0,0x8,0x6E0,0x3D0,0x18,0x8C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101102007, freeze = true}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x1A0,0x0,0x6E0,0x3D0,0x10,0x8C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101102007, freeze = true}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x1A0,0x0,0x6E0,0x3D0,0x8,0x8C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101102007, freeze = true}})
					end,
					function()
						
					end
					}, {
					"机魂忍神",
					function()
						local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x1A0,0x8,0x6E0,0x3D0,0x18,0x8C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101004218, freeze = true}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x1A0,0x0,0x6E0,0x3D0,0x10,0x8C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101004218, freeze = true}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x1A0,0x0,0x6E0,0x3D0,0x8,0x8C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101004218, freeze = true}})
					end,
					function()
						
					end
				},
			}),
				}),--box结尾
				changan.box({
			"淘汰播报",													
		changan.check({
				{
				"自改播报",
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
						
					end
				}, {
					"冰霜播报",
					function()
						local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x90,0x1618}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101004209, freeze = true}})
gg.toast("美化成功")
					end,
					function()
						
					end
				}, {
					"宗师播报",
					function()
						local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x90,0x1618}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101004199, freeze = true}})
gg.alert('开启成功')---语音
					end,
					function()
						
					end
						}, {
					"小丑播报",
					function()
						local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x90,0x1618}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101004062, freeze = true}})
gg.toast("美化成功")
					end,
					function()
						
					end
						}, {
					"忍神播报",
					function()
						local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x90,0x1618}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 1101004218, freeze = true}})
gg.toast("美化成功")
					end,
					function()
						
					end
				},
			}),
				}),--box结尾
				changan.box({
			"动作美化",													
		changan.check({
				{
					"自改动作",
					function()
						local cfg_file = gg.EXT_FILES_DIR.."/"..gg.getFile():match("[^/]+$")..'(SX全枪配件.).lua'
local chunk = loadfile(cfg_file)
local cfg = nil
if chunk ~= nil then
 cfg = chunk()
end
if cfg == nil then
cfg = {12219818,12212101,12219207,  true}
end
h= gg.prompt({
"你好＝修改",
"谢谢＝修改",
"鼓掌＝修改",
},cfg,{"text","text","text"})
if h == nil then else
gg.saveVariable(h, cfg_file)
if h[1] == true then h1() end
if h[2] == true then h2() end
if h[3] == true then h3() end


local t = {"libUE4.so:bss", "Cb"}
local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x86750,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = h[1], freeze = true}})--你好

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x86738,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = h[2], freeze = true}})--谢谢

local t = {"libUE4.so:bss", "Cb"}
local tt = {0xD9A80,0x558,0x30,0x30,0x38,0x865D0,0x18}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = h[3], freeze = true}})--鼓掌
end
gg.toast("开启成功")

					end,
					function()
						
					end
			
				},
			}),
				}),--box结尾
		
		
	},{---第三页
		changan.switch(
			"全枪据点",
			function()
			so=gg.getRangesList('libUE4.so')[1].start--据点
py=0x53f26d0
setvalue(so+py,4,505425152)
gg.toast("聚点开启成功")	
			end,
			function()
				
			end
		),
		changan.switch(
			"喷子据点",
			function()
			local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x2708,0x7E0,0xBA0}--喷子聚点
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = 0, freeze = true}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x2708,0x7E0,0xBA0+0x10}--喷子聚点
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = 0, freeze = true}})
--3.5

gg.toast("开启成功")
			end,
			function()
				
			end
		),
		changan.switch(
			"全枪防抖",
			function()
			so=gg.getRangesList('libUE4.so')[1].start
py=0x88c0fb4
setvalue(so+py,16, 8.8411673e-21)
so=gg.getRangesList('libUE4.so')[1].start
py=0x5fa8748
setvalue(so+py,16, 2.19929222e12)
gg.toast("防抖开启成功")	
			end,
			function()
				
			end
		),
		changan.switch(
			"全枪无后",
			function()
			so=gg.getRangesList('libUE4.so')[1].start--无后座
py=0x542B894
setvalue(so+py,16,8.8411673e-21)
			end,
			function()
				
			end
		),
		changan.switch(
			"全枪瞬击",
			function()
			so=gg.getRangesList('libUE4.so')[1].start--瞬击
py=0x8B59130
setvalue(so+py,16,8.95671814e-21)
gg.alert("瞬🐔开启成功")
			end,
			function()
				
			end
		),
		changan.switch(
			"辐射除雾",
			function()
			so=gg.getRangesList('libUE4.so')[1].start
py=0x7a4acc0
setvalue(so+py,16, 1.41233867e-13)	
			end,
			function()
				
			end
		),
		changan.switch(
			"人物红色",
			function()
				so=gg.getRangesList('libUE4.so')[1].start
py=0x8D1A5A8
setvalue(so+py,4,505425152)
			end,
			function()
				
			end
		),
		changan.switch(
			"人物粉色",
			function()
			so=gg.getRangesList('libUE4.so')[1].start
py=0x8D1A5B0
setvalue(so+py,4,505425152)
so=gg.getRangesList('libUE4.so')[1].start
py=0x8D1A5A8
setvalue(so+py,4,505425152)
			end,
			function()
				
			end
		),
		changan.switch(
			"静态广角",
			function()
			local r = gg.prompt({'自改基址超广角[推荐1.5]'}, {'1.5'}, {'text'})
local so = gg.getRangesList('libUE4.so')[1].start
local offset =0x32b1608
setvalue(so+offset, 16, r[1])
gg.toast("开启成功")
			end,
			function()
				
			end
		),
		changan.switch(
			"动态广角",
			function()
			OP=gg.prompt({'推荐90-120'},{[1]='120'},{[1]='number'})
if OP == nil or OP[1] == '' or OP[1] == '0' then gg.toast("取消")
else

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0, 0x0, 0x2F0, 0x170, 0x32C}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = OP[1]}})
end
			end,
			function()
				
			end
		),
		changan.switch(
			"锁定帧率",
			function()
			local t = {"libUE4.so:bss", "Cb"}
local tt = {0x6920E0,0x34}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = 144, freeze = true}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x6920E0,0x38}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = 144, freeze = true}})
						gg.toast("开启成功")
			end,
			function()
				
			end
		),
		changan.switch(
			"攀爬穿墙",
			function()
			local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x2F0,0x1E0,0x2CC}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 9999}})
string.toMusic('开启成功')
			end,
			function()
				local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x2F0,0x1E0,0x2CC}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1}})					
string.toMusic('关闭成功')
			end
		),
		changan.switch(
			"全枪射速",
			function()
			so=gg.getRangesList('libUE4.so')[1].start
py=0x5EBD698
setvalue(so+py,4,505421856)
gg.toast("开启成功")
			end,
			function()
				
			end
		),
		changan.switch(
			"掉血显示",
			function()
			local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391e0,0x0,0x90,0x93c}--掉血提示
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 2, freeze = true}})
			end,
			function()
				
			end
		),
		changan.switch(
			"X特效",
			function()
			local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x90,0x488,0x560,0xD4}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = -2000}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x90,0x488,0x560,0x94}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = -2000}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x90,0x488,0x560,0x54}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = -2000}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x3AD38,0x0,0x90,0x488,0x560,0x14}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = -2000}})
gg.toast("开启成功")
					
			end,
			function()
				
			end
		),
		changan.switch(
			"停段加速",
			function()
			while true do
gg.sleep(9000)
if gg.getRangesList("libUE4.so")[1] then
	local t = {}
	t[1] = gg.getRangesList("libUE4.so")[1]["start"] + 0xC234E9C; -- 数值地址:0x6DE0070E9C
	gg.addListItems({
		[1] = { 
			address = t[1],
			flags = 4,
			value = 1066950000,
			freeze = true,
		},
	})
end
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x460,0x208-0x1c8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value =0, freeze = true}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x460,0x208-0x3C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value =2.51953464e-42, freeze = true}})
gg.sleep(4000)
if gg.getRangesList("libUE4.so")[1] then
	local t = {}
	t[1] = gg.getRangesList("libUE4.so")[1]["start"] + 0xC234E9C; -- 数值地址:0x6DE0070E9C
	gg.addListItems({
		[1] = { 
			address = t[1],
			flags = 4,
			value = 1066950000,
		
		},
	})
	
end
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x460,0x208-0x1c8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value =0}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x460,0x208-0x3C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value =1.40129846e-45}})
end
			end,
			function()
				if gg.getRangesList("libUE4.so")[1] then
	local t = {}
	t[1] = gg.getRangesList("libUE4.so")[1]["start"] + 0xC234E9C; -- 数值地址:0x6DE0070E9C
	gg.addListItems({
		[1] = { 
			address = t[1],
			flags = 4,
			value = 1066950000,
		
		},
	})
	
end
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x460,0x208-0x1c8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value =0}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x460,0x208-0x3C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value =1.40129846e-45}})
			end
		),
		changan.switch(
			"Hook加速",
			function()
			while true do
so=gg.getRangesList('libUE4.so')[1].start
py=0x32B0AFC
setvalue(so+py,16,24)
so=gg.getRangesList('libUE4.so')[1].start
py=0x32B1608
setvalue(so+py,16,2.40000009537)
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x460,0x208}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = -99999}})--原值8192
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x460,0x40}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = 1, freeze = true}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x458,0x40}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = 1, freeze = true}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x1a18,0x540}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 16777216, freeze = true}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x1020}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 5}})--QFTCE
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x1018}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 5}})--QFTCE
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x671430,0x30,0x84}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value =15}})--QFTCE
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x460,0x570}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = -1}})--QFTCE
					end
			end,
			function()
			--Unfreeze()--解除所有冻结
				
so=gg.getRangesList('libUE4.so')[1].start
py=0x32B0AFC
setvalue(so+py,16,25.72529029846)
so=gg.getRangesList('libUE4.so')[1].start
py=0x32B1608
setvalue(so+py,16,2.40000009537)
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x460,0x208}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value =8192}})--QFTCE
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x460,0x570}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 240}})--QFTCE
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x671430,0x30,0x84}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1}})--QFTCE
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x1020}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1}})--QFTCE
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x84}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1}})--QFTCE
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0,0x0,0x460,0x570}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 240}})--QFTCEnction()
				
			end
		),
		
		
	},{---第四页
		changan.text("\n"),
		changan.image(
			"https://--1303126286.cos.ap-shenzhen-fsi.myqcloud.com/quarkphone",
			"60dp","60dp",--图片高度宽度（可省略）
			"10dp",--内边距（可省略）
			function()
				隐藏()
				--gg.alert("例子")
				--gg.QQgroup("群号")---qq群
				gg.intent("https://t.me/XS726")--网页（tg群）
			end--点击图片执行的功能（可省略）
			),
		changan.text("点击加入TG频道",nil,"11sp",true),---第四参数true为居中文字
		changan.text("\n"),
		changan.switch(
			"音量键隐藏UI",--改名会出错
			function()
				音量键=true
			end,
			function()
				音量键=false
			end
		),
		changan.switch(
			"摇一摇隐藏UI",--改名会出错
			function()
				摇一摇=true
			end,
			function()
				摇一摇=false
			end
		),
		changan.button(
			"退出",
			function()
				tuichu=1
			end),
	},{---第五页
		
	},{---第六页
		
	},
})
