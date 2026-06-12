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
	gg.toast((name or "") .. "开启成功, 共修改"..#Table.."个值FUNC.蕉灼")
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
		if offset[1] then
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
	gg.toast((name or "") .. "开启成功, 共修改"..#Table.."个值FUNC.蕉灼")
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
	-- telegram: @ruolNB886
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

if tonumber(device.width)==nil then
	dwidth=1340
	dheight=2300
	else
	dwidth=device.width
	dheight=device.height
end


function address_into()
so = gg.getRangesList('libil2cpp.so')[1].start
function BaseAddressD(address, value)
  local tt = {}
  tt[1] = {}
  tt[1].address = so + address
  tt[1].flags = 4
  tt[1].value = value
  tt[2] = {}
  tt[2].address = so + address + 0x4
  tt[2].flags = 4
  tt[2].value = '~A BX LR'
  gg.setValues(tt)
gg.toast("\n          \n           \n          \n")
end

so = gg.getRangesList('libil2cpp.so')[1].start
function BaseAddressQ(address, value)
  local tt = {}
  tt[1] = {}
  tt[1].address = so + address
  tt[1].flags = 4
  tt[1].value = value
  tt[2] = {}
  tt[2].address = so + address + 0x4
  tt[2].flags = 4
  tt[2].value = '-494030820'
  gg.setValues(tt)
gg.toast("\n          \n           \n          \n")
end

so = gg.getRangesList('libil2cpp.so')[1].start
function BaseAddressB(address, value)
  local tt = {}
  tt[1] = {}
  tt[1].address = so + address
  tt[1].flags = 4
  tt[1].value = value
  tt[2] = {}
  tt[2].address = so + address + 0x4
  tt[2].flags = 4
  tt[2].value = '-494030842'
  gg.setValues(tt)
gg.toast("\n          \n           \n          \n")
end

so = gg.getRangesList('libil2cpp.so')[1].start
function BaseAddressA(address, value)
  local tt = {}
  tt[1] = {}
  tt[1].address = so + address
  tt[1].flags = 4
  tt[1].value = value
  tt[2] = {}
  tt[2].address = so + address + 0x4
  tt[2].flags = 4
  tt[2].value = '-494030840'
  gg.setValues(tt)
gg.toast("\n          \n           \n          \n")
end

so = gg.getRangesList('libil2cpp.so')[1].start
function BaseAddressC(address, value)
  local tt = {}
  tt[1] = {}
  tt[1].address = so + address
  tt[1].flags = 4
  tt[1].value = value
  tt[2] = {}
  tt[2].address = so + address + 0x4
  tt[2].flags = 4
  tt[2].value = '-494030824'
  gg.setValues(tt)
gg.toast("\n          \n           \n          \n")
end

so = gg.getRangesList('libil2cpp.so')[1].start
function BaseAddressAA(address, value)
  local tt = {}
  tt[1] = {}
  tt[1].address = so + address
  tt[1].flags = 4
  tt[1].value = value
  tt[2] = {}
  tt[2].address = so + address + 0x4
  tt[2].flags = 4
  tt[2].value = '-494030832'
  gg.setValues(tt)
gg.toast("\n          \n           \n          \n")
end

so = gg.getRangesList('libil2cpp.so')[1].start
function BaseAddressF(address, value)
  local tt = {}
  tt[1] = {}
  tt[1].address = so + address
  tt[1].flags = 16
  tt[1].value = value
  gg.setValues(tt)
gg.toast("\n          \n           \n          \n")
end

so = gg.getRangesList('libil2cpp.so')[1].start
function BaseAddressZZZ(address, value)
  local tt = {}
  tt[1] = {}
  tt[1].address = so + address
  tt[1].flags = 32
  tt[1].value = value
  gg.setValues(tt)
gg.toast("\n          \n           \n          \n")
end



so = gg.getRangesList('libil2cpp.so')[1].start
function BaseAddressY(address, value)
  local tt = {}
  tt[1] = {}
  tt[1].address = so + address
  tt[1].flags = 4
  tt[1].value = value
  gg.setValues(tt)
gg.toast("\n          \n           \n          \n")
end
end

function fastsearch(search, write)
	gg.setVisible(false)
	gg.clearResults()
	gg.setRanges(search[1][3])
	gg.searchNumber(search[1][1], search[1][2])
	if gg.getResultsCount() == 0 then
		gg.toast("开启失败")
		return false
	else
		local result = gg.getResults(gg.getResultsCount())
		gg.clearResults()
		for i = 2, #search do
			local mtp = {}
			for w, r in ipairs(result) do
				mtp[#mtp + 1] = { address = r.address + search[i][2], flags = search[i][3] }
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
					local p = {address = v.address + vv[2], flags = vv[3], value = vv[1], freeze = vv[4]}
					if vv[4] then --- true 就是冻结
						table.insert(tb[2], p)
					else
						table.insert(tb[1], p)
					end
				end
			end
			gg.addListItems(tb[2])
			gg.setValues(tb[1])
			gg.toast("修改成功, 共修改" .. (#tb[1] + #tb[2]) .. "条结果")
		else
			gg.toast("开启失败")
		end
	end
end
local gg = gg
local info = gg.getTargetInfo()
local off1, off2, ptrType = 0x8, 0x4, 4
--if info.x64 then off1, off2, ptrType = 0x10, 0x8, 32 end
local metadata = {}

function tohex(val)
  return string.format('%x', val)
end

function getMetadata()
  local a = gg.getRangesList('global-metadata.dat')
  if #a>0 then return a
  else return false end
end

function isSameRegion(one, two)
  if not info.x64 then one=one&0xffffffff two=two&0xffffffff end
  local a=gg.getRangesList()
  for i, v in ipairs(a) do
    if one>=v.start and two<v['end'] then
      return true else return false
    end
  end
end

function getCorrectClassname(tab)
  local t={}
  local temp = {}
  for i, v in ipairs(tab) do
    temp[#temp+1], temp[#temp+2] = {address=v.address-1, flags=1}, {address=v.address+v.strLen, flags=1}
  end
  temp = gg.getValues(temp)
  for i=1, #temp, 2 do
    if temp[i].value==0 and temp[i+1].value==0 then table.insert(t, tab[(i+1)/2]) end
  end
  return t
end

function is_already_in_table(val, tab)
  for i, v in ipairs(tab) do
    if val==v.address then return true end
  end
  return false
end

function getField(Name,Offset,SJLX,XGNR)
  gg.setVisible(false)
  local offForField = 0x8
  if info.x64 then offForField = 0x10 end 
  gg.clearResults()
  gg.setRanges(-2080896)
  gg.searchNumber(':'..Name, 4, false, gg.SIGH_EQUAL, metadata[1].start, metadata[1]['end'])
  local r = gg.getResults(gg.getResultsCount())
  gg.clearResults()
  if #r==0 then return gg.alert('Not found class name\n找不到类名') end
  
  local count = #r/#Name
  local t={}
  for i=1, count do
    local index = ((i-1)*#Name)+1
    r[index].strLen = #Name
    table.insert(t, r[index])
  end
  local a = getCorrectClassname(t)
  if #a==0 then return gg.alert('Not found class name\n找不到类名') end
  --check Ca addresses
  gg.setRanges(4)
  gg.loadResults(a)
  gg.searchPointer(0)
  local r = gg.getResults(gg.getResultsCount())
  local t = {}
  for i, v in ipairs(r) do
    local a = {{address=v.address-off1, flags=1}, {address=v.address+off2, flags=ptrType}}
    a = gg.getValues(a)
    if not info.x64 then a[2].value=a[2].value&0xffffffff end
    if a[2].value>=metadata[1].start and a[2].value<metadata[1]['end'] then table.insert(t, a[1]) end
  end
  
  gg.setRanges(32)
  gg.loadResults(t)
  gg.searchPointer(0)
  gg.loadResults(gg.getResults(gg.getResultsCount()))
  gg.searchPointer(0)
  local r = gg.getResults(gg.getResultsCount())
  local t = {}
  for i, v in ipairs(r) do
    if not is_already_in_table(v.value, t) then table.insert(t, {address=v.value+Offset, flags=SJLX}) end
  end
  if #t==0 then return gg.alert('not found. may be this class is not allocated yet into memory.\n没有找到，可能这个类还没有分配到内存中。') end
  gg.loadResults(t)
  gg.getResults(150)
  gg.editAll(tostring(XGNR),SJLX)
end

local function LMss(LM,PY,SJLX,XGNR)
  local a = gg.getFile()..'.cfg'
  local file = loadfile(a)
  local t = nil
  local pkg = info.packageName
  if not file then t={} else t=file() end
  
  ::here::
  local name_offset = t[pkg]
  if not name_offset then name_offset = {'PlayerScript', '0x4'} end
  
  local str = {}
  str[1]=LM
  str[2]=tostring(PY)
  if not str then return end
  if str[1]=='' then gg.alert('请输入类名！！') goto here end
  if str[2]=='' then gg.alert('请输入偏移量！！') goto here end
  
  if tostring(str[2])~='0' and tostring(str[2])~='0x0' and not tonumber(str[2]) then gg.alert('Error in offset. Put correct one.\n偏移量输入错误。请填写正确的。\nFor example,\n例如：\n\n0x1c --for hex offset\n50 --for decimal offset') goto here end
  str[2] = '0x'..tohex(str[2])
  t[pkg] = str
  str[2] = tonumber(tostring(str[2])) 
  local available = {}
  getField(str[1], str[2], SJLX,XGNR)
end

metadata = getMetadata()
--if not metadata then return gg.alert('找不到metadata') end

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
function Utf_16(address,shhs)
    local Table = {}
    for k = 0, shhs*2, 2 do
        Table[#Table + 1] = {
          ["address"] = address + k,
          ["flags"] = 2
        }
    end
    local Get = gg.getValues(Table)
    char = ""
    for k, v in pairs(Get) do
    if v["value"]<-1 then 
        char = char .. utf8.char(v["value"]&0xFFFF)       
        else 
                char = char .. utf8.char(v["value"])    
    end
    end 
    return char
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

function Get_value()
    local result = {}   
    local Table = {}
    while true do
        local get = gg.getResults(100000)
        result[#result + 1] = get
        gg.removeResults(get)--然后移除列表，避免gg卡死
        if not get or #get == 0 then
            break
        end
    end
    for k = 1, #result do
        for k, v in pairs(result[k]) do
            Table[#Table + 1] = v
        end
    end        
    return Table	
end       

function LSQ_pointer(search, write)	
	if search[5] or search[6] then
	    local region_start = search[5]
        local region_end = search[6]
	    else
	    local region_start = 0
        local region_end = -1
    end
    gg.clearResults()
	gg.setRanges(search[1][3])
	gg.searchNumber(search[1][1], search[1][2], false, gg.SIGN_EQUAL, region_start, region_end)
	gg.refineNumber(search[1][1], search[1][2], false, gg.SIGN_EQUAL, region_start, region_end)--优化搜索的数据		
	if gg.getResultsCount() == 0 then
		gg.toast("没有搜索到指针数据")
		return false
	else
		local result = Get_value()--获取搜索到的所有数据		
		gg.clearResults()		
		for i = 2, #search do--遍历副特征码数据
			local offset_array = {}--存放偏移数组的表
			for k, v in ipairs(result) do		
			
				offset_array[#offset_array + 1] = {
				["address"] = v["address"] + search[i][2],--把所有搜索出来的结果, 加上偏移量
				["flags"] = search[i][3] 
				}
			end			
			offset_array = gg.getValues(offset_array)--获取所有副特征数据
			local verify_array = {}--验证数组表	
			for k, v in ipairs(offset_array) do--遍历偏移后的数据			
				if v["value"] == search[i][1] then--如果值等于主特征
					verify_array[#verify_array + 1] = result[k]						
				end
			end					
			result = verify_array
		end	
		if #result > 0 then
			local Table = {
			{}, 
			{}
			}
			for k, v in ipairs(result) do				
				for kk, vv in ipairs(write) do
					local Modifythe_array = {
					["address"] = v["address"] + vv[2], 
					["flags"] = vv[3], 
					["value"] = vv[1], 
					["freeze"] = vv[4]
					}
					if vv[4] then
						Table[2][#Table[2] + 1] = Modifythe_array
					else
						Table[1][#Table[1] + 1] = Modifythe_array
					end
				end
			end			
			gg.addListItems(Table[2])
			gg.setValues(Table[1])			
			gg.toast("功能: [" .. search[1][4] .. "]开启成功共修改" .. (#Table[1] + #Table[2]) .. "条数据")
		else
			gg.toast("未找到偏移数据")
		end
	end
end

readPointer = function(name, offset, i)
  local re=gg.getRangesList(name)
  local x64=gg.getTargetInfo().x64
  local va={[true]=32,[false]=4}
  if re[i or 1] then
    local addr=re[i or 1].start+offset[1]
    for i = 2,#offset do
      addr = gg.getValues({{address=addr,flags=va[x64]}})
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
    local value = {address = addr+v[3], value = v[1], flags = v[2], freeze = v[4]}
    if v[4] then
      Table1[2][#Table1[2]+1] = value
    else
      Table1[1][#Table1[1]+1] = value
    end    
  end
  gg.addListItems(Table1[2])
  gg.setValues(Table1[1])
  gg.toast((name or "") .. "修改成功 [ 修改"..#Table.."个值 ] ")
end

local il2cppStart = 0
for k, v in pairs(gg.getRangesList('libil2cpp.so$')) do
	if (v.state == 'Xa') then
		il2cppStart = v['start']
		break
	end
end
---------------------------------------------------------------------------------------------------------
DWORD = gg.TYPE_DWORD
DOUBLE = gg.TYPE_DOUBLE
FLOAT = gg.TYPE_FLOAT
WORD = gg.TYPE_WORD
BYTE = gg.TYPE_BYTE
XOR = gg.TYPE_XOR
QWORD = gg.TYPE_QWORD
-- 【【 核心代码，不懂勿动 】】
--   JF Script编辑器
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

gg.edits = function(addr, Table, name)
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
	gg.toast((name or "") .. "修改成功, 共修改" .. #Table .. "个值")
end

function setvalue(address,value,flags)
	gg.setValues({{address=address,flags=flags,value=value}})
end


vibra = context:getSystemService(Context.VIBRATOR_SERVICE)
changan = {}
local changan = changan
local android = import('android.*')
write=file.write
function panduan(rec) fille,err = io.open(rec) if fille == nil then return false else return true end end
read=file.read
function checkimg(tmp,ii)
	if panduan("/sdcard/AR-red/图片/"..tmp) ~= true then
		gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
		luajava.download("https://99778.cn/wp/down.php/7c382865ec8dbb58cf77876b63751c42.zip"..tmp,"/sdcard/AR-red/图片/"..tmp,"正在下载图片资源")
		else
		if file.length("/sdcard/AR-red/图片/"..tmp) <= 1 then
			gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
			luajava.download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..tmp,"/sdcard/AR-red/图片/"..tmp,"正在下载图片资源")
		end
	end
	if panduan("/sdcard/AR-red/图片/"..tmp) ~= true then
		gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
		luajava.download("https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/"..tmp,"/sdcard/AR-red/图片/"..tmp,"正在下载图片资源")
		else
		if file.length("/sdcard/AR-red/图片/"..tmp) <= 1 then
			gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
			luajava.download("https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/"..tmp,"/sdcard/AR-red/图片/"..tmp,"正在下载图片资源")
		end
	end
end

function getRes(x)
	return 获取图片("/sdcard/AR-red/图片/"..x)
end
function 获取图片(txt)
	ntxt=string.sub(string.gsub(txt,"/","."),-10,-1)
	if string.find(tostring(txt),"http")~=nil then
		if panduan("/sdcard/AR-red/图片/"..ntxt)==false then
			download(txt,"/sdcard/AR-red/图片/"..ntxt)
		end
		txt="/sdcard/AR-red/图片/"..ntxt
	end
	return luajava.getBitmapDrawable(txt)
end
ckimg = {
	"xiaomai.zip",
	--"xmsj",
}
for i = 1,#ckimg do
	checkimg(ckimg[i],i)
end
if panduan("/sdcard/AR-red/图片/xiaomai.gif")~=true then
	file.unzip("/sdcard/AR-red/图片/xiaomai.zip","/sdcard/AR-red/图片/")
end

function panduan(rec) fille,err = io.open(rec) if fille == nil then return false else return true end end
--file.getdirs("/sdcard/AR-red/图片/zip/")
file.getdirs("/sdcard/AR-red/zip/")
checkimg=function(tmp)
for i=1,#tmp do
jd=i.."/"..#tmp
file.getdirs("/sdcard/AR-red/图片/zip/")
local url = 'https://chuxinya.top/f/'..tmp[i][2].."/"..tmp[i][1]
local path = "/sdcard/AR-red/zip/"..tmp[i][1]
local msg = '正在下载'..tmp[i][2]..'，请稍后...' .. '\n目标路径->' .. path
if panduan(path) ~= true then 
local ok, err = luajava.download(url, path, msg)
else
end
gg.toast("正在加载"..tmp[i][1].."资源\n目标进度:"..jd)
unzip("/sdcard/AR-red/zip/"..tmp[i][1],"/sdcard/AR-red/图片/")
gg.sleep(1000)
gg.toast(tmp[i][1].."资源已下载完成\n目标进度:"..jd)
end
end
tmp={
{"iOSPro","80BtY"}
}
checkimg(tmp)

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
	jianbians:setStroke(gtvb4,gtvb5)
	return jianbians
end
function newbg2(gtvb1,gtvb3,gtvb4,gtvb5)
	if not gtvb4 then gtvb4 = 0 gtvb5 = 0xff000000 end
	local jianbians = luajava.loadlayout({
		GradientDrawable,
		color = {gtvb1},
		cornerRadius=gtvb3,
		gradientType = GradientDrawable.LINEAR_GRADIENT,
		orientation = GradientDrawable.Orientation.TOP_BOTTOM ,
		strokeWidth = 10,
		strokeColor = gtvb5
	})
	return jianbians
end
function searchmenu()
	luajava.runUiThread (function ()
		local searchUI = luajava.getIdValue("tosearch")
		if tonumber(tostring(searchUI: getVisibility ())) == 8.0 then
			searchUI:setVisibility(View.VISIBLE)
			ggscro:setVisibility(View.GONE)
			else
			searchUI:setVisibility(View.GONE)
			ggscro:setVisibility(View.VISIBLE)
		end
	end)
end
function searchStart()
	luajava.runUiThread(function()
		local toSearch=tostring(luajava.getIdValue("tosearch"):getText())
		if toSearch~="" and toSearch~=nil then
			searchInSview(toSearch)
			searchmenu()
			--searchInTz(toSearch)
			else
			searchmenu()
		end
	end)
end
function searchInSview(besearch)
	changan.setedit("tosearch","")
	if besearch=="退出" then
		adtext("<br>确定要退出？请输入“确认退出”","#C5053C")
		luajava.newThread(function()
			gg.sleep(200)
			luajava.post(function()
				ggscro:fullScroll(View.FOCUS_DOWN)
			end)
		end):start()
		return 0
	end
	if besearch=="确认退出" then
		tuichu=1
		return 0
	end
	local tobesearch=besearch
	local result={} --print(forsview)
	for i=1,#forsview do
		for k=1,#forsview[i] do
			if type(forsview[i][k])=="table" then
				if forsview[i][k].name~=nil then
					if string.find(forsview[i][k].name,tobesearch)~=nil then
						result[#result+1]={i,k}
					end
					if forsview[i][k].type=="BOX" or forsview[i][k].type=="BOX2" then
						--print(forsview[i][k])
						for key,v in pairs(forsview[i][k].vs) do
if v.name~=nil then
	if string.find(v.name,tobesearch)~=nil then
		result[#result+1]={i,k,key}
	end

	if v.type=="BOX" or v.type=="BOX2" then
		--print(forsview[i][k])
		for kk,vv in pairs(v.vs) do
			if vv.name~=nil then
				if string.find(vv.name,tobesearch)~=nil then
					result[#result+1]={i,k,kk,vv}
				end

			end
		end
	end

end
						end
					end
				end
			end
		end
	end
	if #result>=1990 then
		adtext("关于“"..besearch.."”的功能超过10个!请输入更详细的关键词.","#262626")
		elseif #result==0 then
		adtext("<br>未搜索到包含“"..besearch.."”的功能","#262626")
		else
		adtext("<br>你是否在找:","#191B26")
		for i=1,#result do
			if #result[i]==2 then
				adtext("第</font><font color=#296BE1>"..result[i][1].."</font><font color=#262626>页的</font><font color=#5C0002>“"..forsview[result[i][1]][result[i][2]].name.."”".."</font><font color=#475FA0>("..forsview[result[i][1]][result[i][2]].type..")","#262626")
				elseif #result[i]==3 then
				adtext("第</font><font color=#296BE1>"..result[i][1].."</font><font color=#262626>页的BOX:</font><font color=#5C0002>“"..forsview[result[i][1]][result[i][2]].name.."”".."</font>中第"..result[i][3].."项：<font color=#475FA0>"..forsview[result[i][1]][result[i][2]].vs[result[i][3]].name.."("..forsview[result[i][1]][result[i][2]].vs[result[i][3]].type..")","#262626")
				elseif #result[i]==4 then
				--print(result[i])
				--print(forsview[result[i][1]][result[i][2]].vs[1].vs[result[i][3]])
				adtext("第</font><font color=#296BE1>"..result[i][1]..
				"</font><font color=#262626>页的BOX:</font><font color=#5C0002>“"
				..forsview[result[i][1]][result[i][2]].name..
				"”".."</font>中第"..result[i][3]..
				"项：<font color=#475FA0>"
				..result[i][4].name
				.."("..result[i][4].type..")","#262626")
			end
		end
		切换(result[1][1])
	end
	luajava.newThread(function()
		gg.sleep(200)
		luajava.post(function()
			ggscro:fullScroll(View.FOCUS_DOWN)
		end)
	end):start()

end
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
	luajava.runUiThread(function()
		local searchUI = luajava.getIdValue("tosearch")
		if tonumber(tostring(searchUI: getVisibility ())) == 8.0 then
			else
			searchUI:setVisibility(View.GONE)
			ggscro:setVisibility(View.VISIBLE)
		end
	end)
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
function adtext(txt,color,size)
	if not txt then txt = "" end
	if not color then color = "#ffffff" end
	if not size then size = "10sp" end
	local tmp=luajava.loadlayout(
	{
		TextView,
		text = string.fromHtml("  <font color="..color..">"..txt.."</font>"),
		textSize = size,
		--textColor = color,
		gravity="left",
		layout_width = "wrap_content",
	})
	luajava.post(function()
		gggscro:addView(tmp)
	end)
end
function newbg(gtvb1,gtvb3,gtvb4,gtvb5)
	if not gtvb4 then gtvb4 = 0 gtvb5 = 0xff000000 end
	local jianbians = luajava.loadlayout({
		GradientDrawable,
		color = {gtvb1},
		cornerRadius=45,
		gradientType = GradientDrawable.LINEAR_GRADIENT,
		orientation = GradientDrawable.Orientation.TOP_BOTTOM ,
		strokeWidth = 10,
		strokeColor = gtvb5
	})
	return jianbians
end
function getj6()
	jianbian6 = luajava.new(GradientDrawable)
	jianbian6:setCornerRadius(20)
	jianbian6:setGradientType(GradientDrawable.LINEAR_GRADIENT)
	jianbian6:setColors({0xffffffff,0xffffffff})
	jianbian6:setStroke(0,"0xdd000000")--边框宽度和颜色
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
function topSelect()
	local selector = luajava.getStateListDrawable()
	selector:addState({
		android.R.attr.state_pressed
	}, getVerticalBG({0x22161616,0x22161616},30))
	selector:addState({
		-android.R.attr.state_pressed
	}, empty)
	return selector
end
slcta1 = luajava.loadlayout({
	GradientDrawable,
	color = "#331E1C27",
	cornerRadius = 20
})
function getSelector3()
	return getButtonBG()
end

slctb = getRes("xmslctb")
slcta = getRes("xmslcta")
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

	forsview = sview
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
		padding={"8dp","3dp","8dp","3dp"},
		layout_height = "wrap_content",
		layout_width = "match_parent",
	}
	gund = {
		LinearLayout,
		--background=getblue(),
		gravity = "center",
		orientation = "horizontal",
		layout_height = "wrap_content",
		layout_width = "wrap_content",
	}
	for i = 1,#stab do
		_ENV["jm"..i]=luajava.loadlayout({
			LinearLayout,
			id = "jm"..i,
			layout_height = "38dp",
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
				id="jm"..i.."t1",
				visibility="gone",
				gravity = "top",
				layout_height = "match_parent",
				textColor="#342B27",
				textSize="11sp",
				text = stab[i],
				--onClick = function() 切换(i) end
			},{
				TextView,
				id="jm"..i.."t2",
				gravity = "center",
				layout_height = "match_parent",
				textColor="#000000",
				textSize="13sp",
				text = stab[i],
				--onClick = function() 切换(i) end
			}})
		gund[#gund+1] = _ENV["jm"..i]

	end
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
		local tmp={
			LinearLayout,
			--background = getj6(),
			id = "layoutm"..i,
			gravity = "top",
			layout_width = "250dp",
			orientation = "vertical",
			gravity = "center_horizontal",
		}
		for k = 1,#sview[i] do
			if type(sview[i][k]) == "userdata" then
				tmp[#tmp+1] = sview[i][k]
				else
				tmp[#tmp+1] = sview[i][k]["view"]
			end
		end
		_ENV["layout"..i] = luajava.loadlayout(
		{
			ScrollView,
			--background = getj6(),
			fillViewport = true,
			padding = "3dp",
			id = "layout"..i,
			visibility = "gone",
			padding={"8dp","3dp","8dp","10dp"},
			layout_width = "wrap_content",
			layout_height = "match",
			orientation = "vertical",
			{FrameLayout,
				{LinearLayout,
					layout_height="250dp",
				},
				tmp},

		})
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
	gggscro=luajava.loadlayout({LinearLayout,
		id="gggscro",
		layout_width = "match_parent",
		orientation="vertical",
		padding="1dp",
		layout_marginRight="50dp",
	})
	xiaomai=luajava.loadlayout({ImageView,
		layout_height = "40dp",
		layout_width = "40dp",
		layout_marginTop="0dp",
		layout_marginLeft="0dp",
		padding="7dp",
		src=getRes("xiaomai"),
		onClick=function() searchStart() changan.controlWater(xiaomai,200) vibra:vibrate(10) end,
		onTouch=hanshu,
		background = getVerticalBG({
			0x22262626,0x22262626
		},360,5,0x33ffffff),
	})
	ckou = {
		LinearLayout,
		id = "chuangk",
		visibility = "gone",
		layout_width = "wrap_content",
		layout_height = "wrap_content",
		orientation = "vertical",
		{
			LinearLayout,
			layout_width="match_parent",
			layout_height="35dp",
			background=getCorner({0xffffffff,0xffffffff},15,0,0xff232323,45,45,0,0),
			{LinearLayout,
				layout_width="35dp",
				layout_height="match_parent",
				gravity="center",
				{LinearLayout,
					gravity="center",
					background=getVerticalBG({0xffE6E6E6,0xffE6E6E6},90),
					layout_width = "20dp",
					layout_height = "20dp",
					layout_marginLeft = "5dp",
					onClick = 隐藏,
					onTouch = hanshu,
					{LinearLayout,
						layout_height="2dp",
						layout_width="10dp",
						background=getVerticalBG({0xff2c2c2c,0xff2c2c2c},45),
					}
				}
			},
			{LinearLayout,
				layout_width="35dp",
				layout_height="match_parent",
				gravity="center",
			},
			{LinearLayout,
				layout_width="fill_parent",
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
						background=getVerticalBG({0xff6293FF,0xff6293FF},20)
					}
				}
			},
			{LinearLayout,
				layout_width="35dp",
				layout_height="match_parent",
				gravity="center",
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
		{LinearLayout,
			layout_height="wrap_content",
			layout_width="match_parent",
			padding="4dp",
			{FrameLayout,
				layout_marginTop = "4dp" ,
				layout_marginBottom = "4dp" ,
				layout_marginLeft="4dp",
				layout_marginRight="4dp",
				layout_height="50dp",
				layout_width="match_parent",
				elevation="3dp",
				padding="2dp",
				background=newbg2(0xff6293FF,25),
				{LinearLayout,
					gravity="center_vertical",
					layout_height="match_parent",
					layout_width = "match_parent",
					{
						ScrollView,
						id="ggscro",
						visibility="gone",
						layout_weight=1,
						layout_gravity="center",
						layout_height = "match_parent",
						layout_width = "match_parent",
						gggscro
					},
					{
						EditText,
						visibility="visible",
						layout_weight=1,
						layout_marginTop="0dp",
						id=luajava.newId("tosearch"),
						orientation = "vertical",
						layout_width = "match_parent",
						layout_height="match_parent",
						hint = "请输入需要搜索的功能关键词",
						textColor = "#ffffff",
						gravity = "center",
						layout_marginLeft="0dp",
						textSize = "12sp",
						background = getVerticalBG({
0x00262626,0x00262626
						},15,5,0x00ffffff),
					},
					xiaomai}
			}
		},
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
		textColor="#000000",
		gravity = "center",
		textSize = "19sp",
		layout_marginTop = "20dp",
		layout_width = "280dp",
	})
	xfcpic=获取图片(xfcpic)
	floatWindow = {
		LinearLayout,
		id = "motion",
		elevation="4dp",
		orientation="vertical",
		{FrameLayout,
			layout_width="wrap_content",
			{LinearLayout,
				gravity = "center",
				{ImageView,
					id = "control",
					background = xfcpic,
					layout_width = "40dp",
					layout_height = "40dp",
				}
			},
			{
				ImageView,
				id = "exit",
				layout_gravity="right",
				visibility="gone",
				src = "/sdcard/AR-red/图片/blackx",
				layout_width = "20dp",
				layout_height = "20dp",
				layout_marginTop = "10dp",
				layout_marginRight = "20dp",
			}},
		ckou
	}
	local function invoke()
		local ok
		local RawX, RawY, x, y
		mainLayoutParams = getLayoutParams()
		mainLayoutParams.x = 100
		mainLayoutParams.y = dheight/4
		floatWindow = luajava.loadlayout(floatWindow)
		local function invoke2()
			block('start')
			window:addView(floatWindow, mainLayoutParams)
			block('end')
		end

		local runnable = luajava.getRunnable(invoke2)
		local handler = luajava.getHandler()
		handler:post(runnable)
		
		block('join')
		control.onClick = 隐藏
		exit.onClick = 隐藏
隐藏()
		local isMove

		motion.onTouch = hanshu
		control.onTouch = hanshu
		exit.onTouch = hanshu
	end

	invoke(swib1,swib2)
	gg.setVisible(false)
	luajava.setFloatingWindowHide(true)
	切换(1)

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
	qhkai = 0
	qiehuan = function()
if 音量键 == true then
		if qhkai == 0 then		
			qhkai = 1
			draw.remove()
			luajava.newThread(function()
				luajava.runUiThread(function()
					changan.controlSmall(floatWindow,400)
				end)
				gg.sleep(400)
				luajava.runUiThread(function()
					floatWindow:setVisibility(View.GONE)
				end)
			end):start()
			else
			qhkai = 0
			
			huiz()
			luajava.runUiThread(function() floatWindow:setVisibility(View.VISIBLE) 
			end)
			luajava.runUiThread(function()
				changan.controlBig(floatWindow,400)
			end)

		end
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
function changan.line()
	rest = luajava.loadlayout({LinearLayout,
		layout_width = 'fill_parent',
		{
			LinearLayout,
			layout_width = 'fill_parent',
			layout_height = "1dp",
			background = "#88C2CAD7",
			layout_marginLeft="20dp",
			layout_marginRight="20dp"
		}})
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
	jianbians:setCornerRadius(6)
	jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
	jianbians:setColors({0xffffffff,0xffffffff})
	jianbians:setStroke(4,"0xff6293FF")--边框宽度和颜色
	return jianbians
end
function getShape3()
	jianbians = luajava.new(GradientDrawable)
	jianbians:setCornerRadius(10)
	jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
	jianbians:setColors({0xffffffff,0xffffffff})
	jianbians:setStroke(4,"0x77000000")--边框宽度和颜色
	return jianbians
end
function getShape5()
	jianbians = luajava.new(GradientDrawable)
	jianbians:setCornerRadius(4)
	jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
	jianbians:setColors({0xffffffff,0xff6293FF})
	jianbians:setOrientation(GradientDrawable.Orientation.TL_BR)
	jianbians:setStroke(2,"0x77000000")--边框宽度和颜色
	return jianbians
end
function getShape()
	jianbians = luajava.new(GradientDrawable)
	jianbians:setCornerRadius(90)
	jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
	jianbians:setColors({0xff49C263,0xff49C263})
	jianbians:setStroke(0,"0xffffffff")--边框宽度和颜色

	return jianbians
end
function getShape2()
	jianbians = luajava.new(GradientDrawable)
	jianbians:setCornerRadius(10)
	jianbians:setShape(GradientDrawable.RECTANGLE)
	jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
	jianbians:setColors({0xffffffff,0xffffffff})
	jianbians:setStroke(8,"0xff000000")--边框宽度和颜色
	return jianbians
end
corbk = true
当前ui = 1
显示 = 0
beij = newbg(0xffeeeeee,nil)
--beijw
beij2 = luajava.loadlayout({
	GradientDrawable,
	color = "#001E1C27",
	cornerRadius = 10
})
changan.controlRotation9 = function(control, time,t)
	luajava.runUiThread(function()
		import "android.view.animation.Animation"
		import "android.animation.ObjectAnimator"
		xuanzhuandonghua = ObjectAnimator:ofFloat(control, "rotation", {
			time,t
		})
		xuanzhuandonghua:setRepeatCount(0)
		xuanzhuandonghua:setRepeatMode(Animation.RESTART)
		xuanzhuandonghua:setDuration(4)
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
		changan.controlRotation9(boxpic[tid],90,-90)
		else
		tview : setVisibility (View.GONE)
		changan.controlRotation9(boxpic[tid],-90,90)
	end
end
boxes = {} boxpic = {}
function changan.box2 (views)
	if tcheck>=6 then
		tcheck=1
		else
		tcheck=tcheck+1
	end
	btpic=spics[tcheck]
	local tid = "box"..guid ()
	boxpic[tid] = luajava.loadlayout {
		ImageView ,
		background = getRes("heir"),
		layout_width = "20dp" ,
		layout_height = "20dp" ,
	}
	changan.controlRotation9(boxpic[tid],0,90)

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
			layout_marginTop = "4dp" ,
			layout_marginBottom = "4dp" ,
			layout_marginLeft="4dp",
			layout_marginRight="4dp",
			onClick = function ()
				visi (tid , ttid)
			end
			,
			background = getButtonBG(),
			elevation="2dp",
			{ImageView,
				layout_marginLeft = "10dp" ,
				src=getRes(btpic),
				layout_height="20dp",
				layout_width="20dp",

			},{
				TextView , text = views [1] ,
				textSize = "13sp" ,
				layout_marginLeft = "8dp" ,
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
		["type"] = "BOX2",
		["vs"]=vs
	}
end

function getButtonBG()
	local selector = luajava.getStateListDrawable()
	selector:addState({
		android.R.attr.state_pressed
	}, getVerticalBG({0x55d7d7d7,0x55d7d7d7},35))
	selector:addState({
		-android.R.attr.state_pressed
	}, newbg(0xffffffff,35))
	return selector
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
		layout_marginLeft = "4dp",
		layout_marginRight = "4dp",
		layout_marginTop="4dp",
		layout_marginBottom="4dp",
		orientation = "vertical",
		padding = "0dp",
		elevation="2dp",
		background = getButtonBG(),
		layout_width = 'fill_parent',
	}
	local vs={}
	for i = 2,#views do
		if type(views[i]) == "userdata" then
			radios[#radios+1] = views[i]
			else
			radios[#radios+1] = views[i].view
			vs[#vs+1]=views[i]
		end
		if i~=#views then
			radios[#radios+1] = changan.line()
		end
	end
	firadio[#firadio+1] = radios
	if views[1]=="" then bxn="BOX" else bxn=views[1] end
	return {["view"] = luajava.loadlayout(firadio),
		["name"] = bxn,
		["type"] = "BOX",
		["vs"]=vs
	}
end
当前ui = 1
function 切换(x)
	当前ui = x
	luajava.runUiThread(function()
		for i = 1,#stab do
			_ENV["jm"..i]:setBackground(_ENV["jmb"..i])
			_ENV["jm"..i.."t1"]:setVisibility(View.GONE)
			_ENV["jm"..i.."t2"]:setVisibility(View.VISIBLE)
			_ENV["layout"..i]:setVisibility(View.GONE)
		end
		_ENV["layout"..当前ui]:setVisibility(View.VISIBLE)
		_ENV["jm"..当前ui]:setBackground(slcta)
		_ENV["jm"..当前ui.."t1"]:setVisibility(View.VISIBLE)
		_ENV["jm"..当前ui.."t2"]:setVisibility(View.GONE)
		--YoYoImpl:with("FadeIn"):duration(200):playOn(_ENV["layout"..当前ui])
	end)
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

function 隐藏()
	luajava.runUiThread(function()
		if tonumber(tostring(ckou:getVisibility())) == 8.0 then
			control:setVisibility(View.GONE)
			ckou:setVisibility(View.VISIBLE)
			mainLayoutParams.flags = LayoutParams.FLAG_NOT_TOUCH_MODAL
			window:updateViewLayout(floatWindow, mainLayoutParams)
			--YoYoImpl:with("FadeIn"):duration(300):playOn(title)
			_ENV["layout"..当前ui]:setVisibility(View.VISIBLE)
			changan.controlBig(floatWindow,300)
			floatWindow:setBackground(beij)
			else
			luajava.newThread(function()
				luajava.runUiThread(function()
					changan.controlSmall(floatWindow,300)
				end)
				gg.sleep(300)
				luajava.runUiThread(function()
					changan.controlBig(floatWindow,1)
					control:setVisibility(View.VISIBLE)
					mainLayoutParams.flags = LayoutParams.FLAG_NOT_FOCUSABLE
					window:updateViewLayout(floatWindow, mainLayoutParams)
					floatWindow:setBackground(beij2)
					ckou:setVisibility(View.GONE)
					YoYoImpl:with("FadeIn"):duration(200):playOn(floatWindow)
					_ENV["layout"..当前ui]:setVisibility(View.GONE)
				end)
			end):start()
		end
	end)
end
function 退出UI()
	window:removeView(floatWindow)
	luajava.setFloatingWindowHide(false)
	tuichu=1
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
local thum= getVerticalBG({0xffffffff,0xffffffff},4,10,switch颜色)
thum:setSize(30, 40)
_ENV[bian] =nows
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
  background = getVerticalBG({按钮颜色,按钮颜色},45),
  {
   TextView,
   padding={"5dp","10dp","0dp","10dp",},
   gravity = "top",
   textColor="#000000",
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
   progressDrawable={ getVerticalBG({switch颜色,switch颜色},45)},
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
	jianbians:setStroke(8,tmp3)--边框宽度和颜色
	return jianbians
end
checkbg=getShape(
45,
{0xffB8B8B8,0xffB8B8B8},
4,0xffB8B8B8)
checkbga=getShape(
45,
{0xff6293FF,0xff6293FF},
4,0xff6293FF)
checkbg1=getRes("xmsj")
checkbg2=getRes("xiaomai")

function 开关3(name,func1,func2,nid)
	local gnname=name
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
				uiadtext(gnname.." 已开启.","#ffffff")

				else
				luajava.runUiThread(function()
					luajava.getIdValue(nid.."g"):setVisibility(View.GONE)
					luajava.getIdValue(nid.."k"):setVisibility(View.VISIBLE)
					luajava.getIdValue(nid):setBackground(checkbg)
				end)
				_ENV[name] = "关"
				vibra:vibrate(10)

				pcall(func2)
				uiadtext(gnname.." 已关闭.","#545454")

			end
		end
	end
end

function changan.switch(name,func1,func2,yans)
		nid = name..guid()
		if not yans then yans="#FFC1C1" end

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
					textSize="15sp",
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
		return {["view"] = rest,
			["name"] = name,
			["func1"] = func1,
			["func2"] = func2,
			["type"] = "开关",
		}
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
   textColor=check字体颜色,
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
	function box(views)
		local mbox={
			LinearLayout,
			layout_height="wrap_content",
			layout_width="match_parent",
			orientation="vertical",
			padding="8dp",
			layout_marginTop="15dp",
			layout_marginLeft="7dp",
			layout_marginRight="7dp",
			layout_marginBottom="15dp",
			elevation="3dp",
			background=newbg(0xffffffff,35),
		}
		for i=1,#views do
			mbox[#mbox+1]=views[i]
		end
		return mbox
	end
check字体颜色=0xff000000
按钮颜色=0xffffffff
switch颜色=0xff0062FF
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
 textColor = check字体颜色 ,
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
 background=getVerticalBG({按钮颜色,按钮颜色},45),
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
 changan.controlWater (_ENV [tid] , 200)
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
		return {["view"] = luajava.loadlayout(firadio),
			["name"] = radio[1],
			["type"] = "单选",
		}end
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
  textColor = check字体颜色 ,
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
 textColor = check字体颜色 ,
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
 background=getVerticalBG({按钮颜色,按钮颜色},45),
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
  textColor = check字体颜色 ,
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
	function getTimeStamp(t)
		local str = os.date("%m/%d-%H:%M:%S",t)
		return str
	end
	spics={
	}
	for i=1,6 do
		spics[i]="xmai"..i
	end
	tcheck=0
	buts={}
	heir=getRes("heir")
	function changan.button(txt,func,txtc,btpic)
		if tcheck>=6 then
			tcheck=1
			else
			tcheck=tcheck+1
		end
		btpic=spics[tcheck]
		if not txt then txt = "未设置" end

		if not txtc then txtc="#FFC1C1" end
		local tid="Cbutton"..guid()
		if not btpic then
			buts[tid]=luajava.loadlayout(
			{
				LinearLayout,
				layout_width = 'match_parent',
				layout_height = "wrap_content", {
					LinearLayout,
					layout_width = "fill_parent",
					gravity = "center_vertical",
					layout_marginTop = "0dp",
					layout_marginBottom = "0dp",
					background = getButtonBG(),
					padding="6dp",
					onClick = function()
						luajava.newThread(function()
changan.controlWater(buts[tid],300)
uiadtext("执行 "..txt.."","#ffffff")
func()
						end):start() end,
					{
						TextView,
						--id = luajava.newId(tid),
						textColor = txtc,
						text = txt,
						textSize = "15sp",
						layout_marginLeft="15dp",
						layout_height = "wrap_content",
						layout_width = "fill_parent",
						layout_weight=1,
					},{ImageView,
						src=heir,
						layout_height="14dp",
						layout_width="14dp",

					}
				}})
			else
			buts[tid]=luajava.loadlayout(
			{
				LinearLayout,
				layout_width = 'match_parent',
				layout_height = "wrap_content",
				padding={"8dp","0dp","8dp","0dp"},
				{
					LinearLayout,
					layout_width = "fill_parent",
					gravity = "center_vertical",
					layout_marginTop = "0dp",
					layout_marginBottom = "0dp",
					background = getButtonBG(),
					padding="6dp",
					onClick = function()
						changan.controlWater(buts[tid],300)
						luajava.newThread(function()
uiadtext("执行 "..txt.."","#ffffff")
func()
						end):start() end,
					{ImageView,
						src=getRes(btpic),
						layout_height="20dp",
						layout_width="20dp",

					},{
						TextView,
						--id = luajava.newId(tid),
						textColor = txtc,
						text = txt,
						textSize = "15sp",
						layout_marginLeft="5dp",
						layout_height = "wrap_content",
						layout_width = "fill_parent",
						layout_weight=1,
					},{ImageView,
						src=heir,
						layout_height="14dp",
						layout_width="14dp",

					}
				}})
		end
		return {["view"]= buts[tid],
			["name"] = txt,
			["func1"] = func,
			["type"] = "按钮",
		}
	end

	function changan.text(txt,color,size)
		if not txt then txt = "未设置文字" end
		if not color then color = "#ffffff" end
		if not size then size = "18sp" end
		return {["view"] = luajava.loadlayout(
			{
				TextView,
				text = txt,
				textSize = size,
				textColor = color,
				layout_width = "wrap_content",
			}),
			["name"] = txt,
			["type"] = "文本",
		}
	end
	corb = true
	_ENV["tosearch"]="tosearch"
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
	function changan.getedit2(name)
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
	function changan.card(txt,info,tg,qqun)
		local tmp={
			LinearLayout,
			layout_width="match_parent",
			padding="6dp",
			{TextView,
				layout_height="wrap_content",
				layout_width="match_parent",
				layout_weight=1,
				text=txt,
				layout_marginLeft="1dp",
				textColor="#FFC1C1",
				textSize="15sp",
			}
		}
		local bx= box({
			tmp,
			{LinearLayout,
				gravity="center_vertical",
				changan.text(info,"#000000","12sp").view,
				{
					'ui.GifImageView',
					src = "/sdcard/AR-red/图片/xiaomaigif",

				}
			},
			luajava.loadlayout{LinearLayout,
				layout_width="match_parent",
				{LinearLayout,
					gravity="center_horizontal",
					layout_width="match_parent",
					layout_weight=1,
					orientation="vertical",
					padding="10dp",
					background=getButtonBG(),
					onClick=function()
						luajava.newThread(function()
app.openUrl(tg)
gg.copyText(tg)
gg.alert("TG链接："..tg.."\n已为你复制到剪切板")
隐藏()
						end):start()
					end,
					{
						ImageView,
						layout_height="20dp",
						layout_width="20dp",
						src=getRes("xmtg"),
					}
				},
				{LinearLayout,
					gravity="center_horizontal",
					layout_width="match_parent",
					layout_weight=1,
					orientation="vertical",
					padding="10dp",
					background=getButtonBG(),
					onClick=function()
						luajava.newThread(function()
gg.QQgroup(qqun)
gg.copyText(qqun)
gg.alert("Q群："..qqun.."\n已为你复制到剪切板")
隐藏()
						end):start()
					end,
					{
						ImageView,
						layout_height="24dp",
						layout_width="24dp",
						src=getRes("xmq"),
					}
				},
			}
		})

		return {
			["view"]=bx
		}
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
	function card(cdv)
		logo=cdv[1]
		name=cdv[2]
		tags=cdv[3]
		func=cdv[4]
		if not x then x = 2 end
		tag = {
			LinearLayout,
		}
		for i = 1,#tags do
			tag[#tag+1] = {
				TextView,
				background = getShape22(45,0x00FF9700,0x00FF9700,0xffFF9700),
				layout_height = "20dp",
				padding = "2dp",
				textColor = 0xffFF9700,
				layout_marginLeft = "10dp",
				gravity = "center_vertical",
				text = " "..tags[i].." ",
				textSize = "9sp",
			}
		end
		tags = tag
		tmp = luajava.loadlayout(
		{
			FrameLayout,
			layout_height = "wrap_content",
			layout_width = "fill_parent",
			{
				LinearLayout,
				orientation = "vertical",
				layout_height = "100dp",
				layout_marginLeft = "14dp",
				layout_marginRight = "14dp",
				layout_marginTop = "10dp",
				layout_marginBottom = "10dp",
				layout_width = "match_parent",
				{
					LinearLayout,
					layout_marginLeft = "10dp",
					layout_marginRight = "10dp",
					layout_marginTop = "10dp",
					layout_marginBottom = "10dp",
					layout_width = "match_parent",
					layout_height = "40dp",
					{
						ImageView,
						layout_width = "40dp",
						layout_height = "40dp",
						background = 获取图片(logo),
					},
					{
						TextView,
						layout_height = "40dp",
						layout_marginLeft = "10dp",
						gravity = "center_vertical",
						text = name,
						textColor="#161616",
						textSize = "13sp",
					}
				},
				tags
			},
			{
				LinearLayout,
				onClick = function()
					luajava.newThread(function() 隐藏() func() end):start() end,
				background = getShape00(90,0xff28FEB9,0xff28FEB9,0xff28FEB9),
				layout_height = "25dp",
				layout_width = "55dp",
				layout_gravity = "right",
				layout_marginRight = "30dp",
				layout_marginTop = "70dp",
				gravity = "center",
				{
					ImageView,
					layout_height = "20dp",
					layout_width = "15dp",
					background = getRes("rw1"),
				},
				{
					TextView,
					textColor = "#000000",
					text = "启动",
					textSize = "10sp",
					layout_height = "20dp",
					gravity = "center",
					layout_width = "30dp",
				}
			}
		})
		return {
			["view"]=tmp
		}
	end
	wyyget="http://120.24.160.246:3000/"
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
	function getbg()--[[
		jianbians = luajava.new(GradientDrawable)
		jianbians:setCornerRadius(15)
		jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
		jianbians:setColors({0x11000000,0x11000000})
		jianbians:setStroke(4,"0x33000000")--边框宽度和颜色

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
		]]return getButtonBG()
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
					layout_marginTop = "5dp",
					textSize = "15sp",
					textColor = "#FFC1C1",
					layout_marginBottom = "0dp",
					text = musname,
					layout_hight = "10dp",
					layout_width = "228dp",
					gravity = "center"

				},
				{
					TextView,
					layout_marginTop = "0dp",
					textColor = "#535353",
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
		textColor="#000000",
		background=getbg(),
		layout_height="match_parent",
		visibility = "visible",
		gravity="center",
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
		textColor="#000000",
	}
	jiaz = {
		TextView,
		text = "正在加载歌曲资源",
		visibility = "gone",
		id = luajava.newId("加载"),
		textSize = "20sp",
		gravity = "center",
		textColor="#000000",
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
				layout_hight = "200dp",
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
						hint = "搜索歌曲名称",
						textColor="000000",
						id = luajava.newId("搜索"),
						background = getbg(),
						focusableInTouch = "false",
						focusable = "false",
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
	gg.setConfig("隐藏辅助", 23)
	gg.setConfig("运行守护", 3)
	gg.setConfig("冻结间隔", 0)
	gg.setConfig("快速冻结", 1)
	gg.setConfig("旁路模式", 1)
	---↑↑↑你的脚本放在这里，下面菜单调用
	function huiz()
		--绘制内容必须写在这里否则会消失
		draw.setSize(55)
		draw.setStyle('填充')
		draw3 = require('draw3')
		text1 = draw3.text('AR-red',300,285)
		draw.setColor('#FF0100')
	end
	stitle = "AR-red"
--changan.text("FUNC")
	stab = {--←菜单导航栏
		"主页",
		"稳定",
		"娱乐",
		"火力",
		"音乐",--可自行拓展，需要对应下边菜单配置
	}

	xfcpic = "https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/arlogo"
	--↑悬浮窗链接或路径↑

	--changan.button   按钮
	--changan.switch   开关
	--changan.box   区域框
	--changan.text   文字
	--changan.seek  拖动条
	--changan.edit  输入框（changan.getedit和changan.setedit调用
	--以上是本UI模块包含的控件，在下面都有示例参考


	changan.menu(
	
	{
	
		{----1
		changan.text("𝘽𝙔 𝘾𝙃𝙀𝘼𝙏","#FFC1C1","30sp"),
			changan.button("选择进程",
			function()
				string.toMusic('请选择游戏进程')
				gg.setProcessX()
			end),

			changan.button("每日语录",
			function()
				Y=gg.makeRequest("https://v1.hitokoto.cn/").content
				--获取云端数据
				Q=string.match(Y,'hitokoto(.+)type')
				--模式匹配他们中的一切字符
				F=string.gsub(Q,'":"',"")
				K=string.gsub(F,'","',"")
				--删除多余垃圾
				string.toMusic("\n\n"..""..K.."")
				QD = gg.alert("今日语录:\n\n"..""..K.."")
				if QD == 1 then
				end
				if QD == 3 then
				end
			end),
			changan.button("显示帧率",
			function()
			local cglib = require('cglib')
local windowManager = require('windowManager')
local function FpsView()
	local fps = 0
	local fpsView = cglib.createInterceptor(TextView, {'onDraw'}, function(thisObject, param, methodProxy)
		methodProxy:invokeSuper(thisObject, param)
		fps = fps + 1
		thisObject:postInvalidateDelayed(2)
	end, context)
	fpsView:setText('fps')
	fpsView:setTextColor(0xff00ff00)
	fpsView:setTextSize(25)
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
end),
			changan.box2({
				"使用公告",
				changan.card(
				"公告",
				[[AR_RED逃跑内置
交流群577764156
公益免费，采用独家UI，超多功能
吊打70的sz收费内置，采用YL云更
可以不用但清勿喷
火速分享给你身边玩挂的学生党让他们玩上免费的挂]],--公告
				"https://t.me/funcqun",--tg链接
				"577764156"),--群号
			}),
			--changan.text("欢迎使用xxxx","#008EFF","13sp"),




			--[[
				changan.button("设置输入框", function()
					changan.setedit("输入演示", "修改了输入框内容")
				end),]]

			--end, "#000000"),


			changan.box2({--如果不需要请删除box2，注意括号的对应。如果需要请注意用box2套box，不然会很丑
				"启动游戏",
				changan.box({--box开头
					"",--box名字
					card({"/sdcard/AR-red/图片/pubgT",
						"PUBG（台服）",
						{

"𝘽𝙔 𝘾𝙃𝙀𝘼𝙏"
						},
						function()
launch("com.rekoo.pubgm")
						end
					}),
					card({"/sdcard/AR-red/图片/pubgG",
						"PUBG（全球服）",
						{
"𝘽𝙔 𝘾𝙃𝙀𝘼𝙏",
						},
						function()
launch("com.tencent.ig")
						end
					}),
					card({"/sdcard/AR-red/图片/pubgY",
						"PUBG（越南服）",
						{
"𝘽𝙔 𝘾𝙃𝙀𝘼𝙏",
						},
						function()
launch("com.vng.pubgmobile")
						end
					}),
					card({"/sdcard/AR-red/图片/pubgR",
						"PUBG（日韩服）",
						{
"𝘽𝙔 𝘾𝙃𝙀𝘼𝙏",
						},
						function()
launch("com.pubg.krmobile")
						end

					})



				}),--box结尾




			}),

			changan.button("退出脚本",
			function()
				退出UI()
			end,
			"#DB202C"),

changan.switch("音量键隐藏UI",
						function()
						音量键=true
						gg.toast("音量键隐藏已开启")
						end,
						function()
						音量键=false
						gg.toast("音量键隐藏已关闭")
						end
					),
changan.switch("基础初始化",
						function()
						address_into()
		if so==nil then 
		gg.toast("初始化失败您的进程有误")
		gg.setProcessX()
		else
		gg.toast("初始化成功")
		end
						end,
						function()

						end
					),


		}, {----2
changan.box({"",
changan.switch("解锁模式",
			function()
BaseAddressD(0x16E1A2C,'-476053503')
gg.toast("开启成功")
			end,
			function()
			end
					),
changan.switch("道具皮肤",
			function()
BaseAddressD(0x13561B8,'-476053503')
gg.toast("开启成功")
			end,
			function()
			
			
			end
					),
changan.switch("角色皮肤",
			function()
BaseAddressD(0x24A3998,'-476053503')
			end,
			function()
			
			
			end
					),
changan.switch("遍历道具皮肤美化",
			function()
allSkin={
{'疾跑',500001,600981},
{'皮卡',500002,602721},
{'侦查眼',500003,600251},
{'手榴弹',500004,600521},
{'医疗箱',500005,600966},
{'跳高',500006,600116},
{'生命护盾',500007,600786},
{'阻挡箱',500008,601366},
{'雷达',500009,500009},
{'巡逻犬',500200,601641},
{'肾上腺素',500300,650591},
{'酒桶',500400,600311},
{'飞爪',500500,600161},
{'传送门',500600,600331},
{'自走球',500700,650081},
{'毒液',500800,600956},
{'滑板',500900,600946},
{'魔法墙',501000,650141},
{'引力场',501100,601221},
{'治疗球',501200,602726},
{'充气垫',501300,602711},
{'捣蛋',501400,601256},
{'追踪雷',501500,602306},
{'震荡波',501600,601331},
{'小灰机',501700,602681},
{'时光机',501800,601931},
{'跳跳杆',501900,601566},
{'吼吼号',502100,601836},
{'噗噗蛋',502200,601881},
{'互拉圈',502300,601976},
{'车轮滚滚',502400,602236},
{'弹簧拳套',502000,601571},
{'磁吸小宝',503200,602736},}

function mhpz(addr, Table, name)
local Table1 = {}
local name = {}
local namet=''
for k, v in ipairs(Table) do
local value = {address = addr + v[1], flags = 4}
Table1[#Table1 + 1] = value
end
pf=gg.getValues(Table1)
for y,m in ipairs(pf) do
for i,v in ipairs(allSkin) do
if m.value == v[2] then 
m.value=v[3]
table.insert(name,v[1])
end
end
end
if #name == 0 then
gg.toast('美化失败')
else
for i=1,#name do
namet=namet..'第'..i..'张道具卡为: '..name[i]..'\n'
end
gg.toast('道具美化')
gg.setValues(pf)
end
end
local t = {"libil2cpp.so", "Cd"}
local tt = {0x142F88,0xBC,0x5C,0x20,0x64,0x38}
local ttt = S_Pointer(t, tt)
local ioq={{address = ttt, flags = 4}}
addr = ioq[1].address
mhpz(addr, { {0},{4},{8},{12},{16},{20} })
			end,
			function()
			
			
			end
					),
changan.switch("渲染透视",
			function()
fastsearch({{34359738369,32,32},{4,-20,4},{4,-12,4},{8.0,-8,16}},{{1,37,4,false}},'渲染透视')
			end,
			function()
			
			
			end
					),
changan.switch("人物穿墙",
			function()
fastsearch({{-10.0,16,32},{49.0,20,16}},{{999999,0,16,false}},'人物穿墙')
			end,
			function()
			
			
			end
					),
changan.switch("实体回血",
			function()
fastsearch
({{2.0, 16, 32},
{1.5, 4, 16},{10.0, 8, 16}}
,{{9999, 0, 16, false},{9999, 8
, 16, false}},
'实体回血')
			end,
			function()
			
			
			end
					),
changan.switch("倒车跳跃",
			function()
fastsearch({{1064613045, 4, 32},{1.0, -4, 16}, {1062251404, 4, 4}, {1021726665, 8, 4}, {1051536686, 32, 4}, {1051620137, 36, 4}, {1051620137, 40, 4}, },{{0, -224, 4},},'倒车跳跃')
			end,
			function()
			
			
			end
					),
changan.switch("道具戏法",
			function()
fastsearch({{102, 4, 32}, {3, -8, 4}, {101, -4, 4}, {100, 4, 4}}, {{112,0,4,false},{112,-4,4,false},{112, 4, 4, false}},'道具戏法')
fastsearch({{50.0, 16, 32}, {60.0, -4, 16}, {30.0, 4, 16}}, {{0.8,0,16,true},{0.8, -4, 16, true}, {0.8, 4, 16, true}},'道具戏法')
			end,
			function()
			
			
			end
					),
changan.switch("六格道具",
			function()
fastsearch({{211.0,16,32},{4.0,-20,16},{70.0,-4,16},{26.0,8,16}},{{6,-16,4}},'六格道具')	
			end,
			function()
			
			
			end
					),
changan.switch("稳定移速",
			function()
fastsearch({{0.3749999701976776,16,32},{49.0,-44,16},{1956496814,-40,4},{992204554,-4,4}},{{520,-44,4},{-0.2,-84,16,true}},'自用移速')	
			end,
			function()
			
			
			end
					),
changan.switch("医疗箱范围",
			function()
LSQ_pointer({{4608083138725491507,32,32},{3689348813882916864,-4,32}},{{20,0,64}})
			end,
			function()
			
			
			end
					),
changan.switch("走路动作",
			function()
BaseAddressF(0xEA3558,'-2')
			end,
			function()
BaseAddressD(0x1e5cc78,'2.646')			
			
			end
					),
changan.switch("动作美化",
			function()
fastsearch({{950001,4,32},{8,-4,4}},{{965501,0,4,false},{954741,4,4,false},{960271,8,4,false},{962901,12,4,false},{960431,16,4,false},{960271,20,4,false},{961351,24,4,false},{954701,28,4,false}})
			end,
			function()
			
			
			end
					),
changan.switch("超级上色",
			function()
fastsearch({{1.2000000476837158, 16, 32}, {0.19999998807907104, -4, 16}}, {{9, 0, 16, false}},'超级上色')		
			end,
			function()
			
			
			end
					),
changan.switch("手雷范围",
			function()
LSQ_pointer({{4612811918334230528,32,32},{2,72,64}},{{20,72,64}})
			end,
			function()
			
			
			end
					),
changan.switch("三倍移速",
			function()
BaseAddressD(0xEF20BC,'-482082700')
BaseAddressD(0xEF20C0,'~A bx lr')		
			end,
			function()
			
			
			end
					),
changan.switch("秒开锁位",
			function()
fastsearch({{0.6875, 16, 16384},  {0.0, -4, 16}}, {{5, 0, 16, false}})
			end,
			function()
fastsearch({{5, 16, 16384},  {0.0, -4, 16}}, {{0.6875, 0, 16, false}})
			end
					),
changan.switch("CS吸人",
			function()
BaseAddressD(0xDFC5C4,'-516948194')
			end,
			function()
BaseAddressD(0xDFC5C4,'-382908368')
			end
					),
changan.switch("自调视角",
			function()
NH=gg.prompt({"初始值12"},{[1]="20"})
readWrite({{false,12.0,0,16,nil,nil}},{{40,0,16,false}},16,32,"视野范围变大")
			end,
			function()
			
			
			end
					),
changan.switch("无视夹子",
			function()
BaseAddressD(0x158093C,'-516948194')
			end,
			function()
			
			
			end
					),


})

					},{----6
changan.box({"",
changan.switch("强制送猪",
			function()
fastsearch({{1120403456, 4, 32}, {1063256063, -244, 4}, {0, -32, 4}}, {{1, -32, 4, true}})
			end,
			function()
			
			
			end
					),
changan.switch("不死捐钱",
			function()
fastsearch({{37,4,32},{-1,8,4},{0,16,4},{-1,24,4}},{{1,16,4,true}},'')	
			end,
			function()
			
			
			end
					),
changan.switch("实体防托",
function()
BaseAddressD(0xEB07FC,'-476053503')
end,
function()
BaseAddressD(0xEB07FC,'-382908368')
end),
changan.switch("强制开门",
function()
BaseAddressY(0x1D109B0,'-369098341')
end),
changan.switch("雷达扫描",
function()
BaseAddressD(0xED4D04,'-365395017')
gg.sleep(300)
BaseAddressD(0xED4D04,'-382906384')
end),
changan.switch("分期开物",
function()
BaseAddressD(0x14F9B08,'-476053504')
end,
function()
BaseAddressAA(0x14F9B08,'-382907280')
end),
changan.switch("左下复活",
function()
BaseAddressY(0xED4D04,'-368439610')
gg.sleep(345)
BaseAddressY(0xED4D04,'-382906384')
end),
changan.switch("变身时间",
function()
BaseAddressD(0x2454054,'0')
end,
function()
BaseAddressQ(0x2454054,'-309065203')
end),
changan.switch("触发天赋",
function()
BaseAddressY(0x40B6E2C,'-369098576')
end,
function()
BaseAddressY(0x40B6E2C,'-382907280')
end),
changan.switch("超级导弹",
function()
BaseAddressY(0x1F129B0,'-352323000')
BaseAddressY(0x1F1131C,'-369097776')
end,
function()
BaseAddressY(0x1F129B0,'-382906896')
BaseAddressY(0x1F1131C,'-382906896')
end),
changan.switch("全员延迟",
function()
BaseAddressD(0x3DC7CAC,'-516948194')
end,
function()
BaseAddressA(0x3DC7CAC,'-382908368')
end),
changan.switch("调用道具",
function()
local ID=gg.prompt({"变身道具二号代码"},{100001})
BaseAddressY(0x2453E60,'-368282452')
BaseAddressY(0x2771118,'-509591552')
BaseAddressY(0x277111C,'-442560500')
BaseAddressY(0x2771120,'-442556404')
BaseAddressY(0x2771124,'-442552308')
BaseAddressY(0x2771128,'-336358639')
BaseAddressY(0x277112C,'-353137844')
BaseAddressY(0x2771130,ID[1])
BaseAddressY(0x2771134,'100')
BaseAddressY(0x2771138,'5002')
BaseAddressY(0x2453E60,'-509591552')
end),
changan.switch("箱子千金",
function()
BaseAddressD(0x23E3B18,'-476053439')
end,
function()
BaseAddressAA(0x23E3B18,'-382908176')
end),
changan.switch("金币翻倍",
function()
BaseAddressD(0x16DD674,'-516948194')
end,
function()
BaseAddressD(0x16DD674,'-382906384')
end),
changan.switch("自我救赎",
function()
BaseAddressY(0x1156218,'-352323164')
end,
function()
BaseAddressY(0x1156218,'-382907280')
end),
changan.switch("手雷跃击",
function()
gg.setRanges(32)gg.searchNumber("500004", 
gg.TYPE_DWORD, false, 
gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", 
gg.TYPE_DWORD, false, 
gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("50050006", 
gg.TYPE_DWORD)
gg.clearResults()
end,
function()
gg.setRanges(32)gg.searchNumber("50050006", 
gg.TYPE_DWORD, false, 
gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", 
gg.TYPE_DWORD, false, 
gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("500004", 
gg.TYPE_DWORD)
gg.clearResults()
end),
changan.switch("跃击进化",
function()
qmnb = {
{['memory']=32},
{['name']=''},
{['value']=3.0, ['type']=16},
{['lv']=35.0,['offset']=-8, ['type']=16},
{['lv']=1.7000000476837158,['offset']=-4, ['type']=16},
{['lv']=1.0,['offset']=4, ['type']=16},
{['lv']=0.10000000149011612,['offset']=8, ['type']=16},
{['lv']=0.30000001192092896,['offset']=12, ['type']=16},
{['lv']=0.30000001192092896,['offset']=20, ['type']=16},
{['lv']=0.5,['offset']=28, ['type']=16},
}
qmxg = {
{['value']=30,['offset']=-8,['type']=16},
{['value']=30,['offset']=-4,['type']=16},
}
xqmnb(qmnb)
end,
function()
qmnb = {
{['memory']=32},
{['name']=''},
{['value']=3.0, ['type']=16},
{['lv']=35.0,['offset']=-8, ['type']=16},
{['lv']=1.7000000476837158,['offset']=-4, ['type']=16},
{['lv']=1.0,['offset']=4, ['type']=16},
{['lv']=0.10000000149011612,['offset']=8, ['type']=16},
{['lv']=0.30000001192092896,['offset']=12, ['type']=16},
{['lv']=0.30000001192092896,['offset']=20, ['type']=16},
{['lv']=0.5,['offset']=28, ['type']=16},
}
qmxg = {
{['value']=1,['offset']=-8,['type']=16},
{['value']=1,['offset']=-4,['type']=16},
}
xqmnb(qmnb)
end),
changan.switch("远程开物",
function()
fastsearch({{50, 4, 32}, {1, 36,16}, {256, 60, 4}}, {{10, 288, 16, true}})
end),
changan.switch("人物吸血",
function()
BaseAddressD(0x212665C,'~A MOVT R0, #16500;~A BX LR')
end),
changan.switch("飞机进化",
function()
fastsearch({{4608083137866498050,32,32},{8589934637,-4,32},{1085276160,12,32}},{{0,-12,4},{0,-8,16},{0,8,16}})
end),
changan.switch("人物防烧",
function()
BaseAddressY(0x114B3B4,'-516948194')
end,
function()
BaseAddressC(0x114B3B4,'-382906896')
end),
changan.switch("开锁加速",
function()
qmnb = {{["memory"] = 32},{["name"] = ""},
{["value"] = 1065353215, ["type"] = 32},
{["lv"] = 2147483647, ["offset"] = 8, ["type"] = 32},
{["lv"] = 2147483647, ["offset"] = 16, ["type"] = 32},
{["lv"] = 2147483647, ["offset"] = 24, ["type"] = 32},
{["lv"] = 2147483647, ["offset"] = 32, ["type"] = 32},}
qmxg = {{["value"] = 4, ["offset"] = 24, ["type"] = 16},}
xqmnb(qmnb) 
end,
function()
qmnb = {{["memory"] = 32},{["name"] = ""},
{["value"] = 1065353215, ["type"] = 32},
{["lv"] = 2147483647, ["offset"] = 8, ["type"] = 32},
{["lv"] = 2147483647, ["offset"] = 16, ["type"] = 32},
{["lv"] = 2147483647, ["offset"] = 24, ["type"] = 32},
{["lv"] = 2147483647, ["offset"] = 32, ["type"] = 32},}
qmxg = {{["value"] = 1, ["offset"] = 24, ["type"] = 16},}
xqmnb(qmnb) 
end),
changan.switch("开物加速",
function()
qmnb = {{["memory"] = 32},{["name"] = ""},
{["value"] = 1065353215, ["type"] = 32},
{["lv"] = 2147483647, ["offset"] = 8, ["type"] = 32},
{["lv"] = 2147483647, ["offset"] = 16, ["type"] = 32},
{["lv"] = 2147483647, ["offset"] = 24, ["type"] = 32},
{["lv"] = 2147483647, ["offset"] = 32, ["type"] = 32},}
qmxg = {
{["value"] = 4, ["offset"] = 8, ["type"] = 16},
{["value"] = 4, ["offset"] = 16, ["type"] = 16},
{["value"] = 4, ["offset"] = 24, ["type"] = 16},
{["value"] = 4, ["offset"] = 32, ["type"] = 16},}
xqmnb(qmnb) 
end,
function()
qmnb = {{["memory"] = 32},{["name"] = ""},
{["value"] = 1065353215, ["type"] = 32},
{["lv"] = 2147483647, ["offset"] = 8, ["type"] = 32},
{["lv"] = 2147483647, ["offset"] = 16, ["type"] = 32},
{["lv"] = 2147483647, ["offset"] = 24, ["type"] = 32},
{["lv"] = 2147483647, ["offset"] = 32, ["type"] = 32},}
qmxg = {
{["value"] = 1, ["offset"] = 8, ["type"] = 16},
{["value"] = 1, ["offset"] = 16, ["type"] = 16},
{["value"] = 1, ["offset"] = 24, ["type"] = 16},
{["value"] = 1, ["offset"] = 32, ["type"] = 16},}
xqmnb(qmnb) 
end),
changan.switch("全局加速",
function()
qmnb = {{["memory"] = 32},{["name"] = ""},
{["value"] = 4381101719396139663, ["type"] = 32},
{["lv"] = 40.0,["offset"] =-0xA8, ["type"] = 16},
{["lv"] = 0.02500000037252903,["offset"] =0x4, ["type"] = 16},}
qmxg = {{["value"] = 3,["offset"] =-0x4, ["type"] = 16,["freeze"] = false},}
xqmnb(qmnb) 
end,
function()
qmnb = {{["memory"] = 32},{["name"] = ""},
{["value"] = 4381101719396139663, ["type"] = 32},
{["lv"] = 40.0,["offset"] =-0xA8, ["type"] = 16},
{["lv"] = 0.02500000037252903,["offset"] =0x4, ["type"] = 16},}
qmxg = {{["value"] = 1,["offset"] =-0x4, ["type"] = 16,["freeze"] = false},}
xqmnb(qmnb) 
end),
changan.switch("倒地丢物",
function()
BaseAddressD(0x144FF64,'-476053504')
end,
function()
BaseAddressAA(0x144FF64,'-382907280')
end),
changan.switch("返回大厅",
function()
BaseAddressY(0xDFC61C,'-369092144')
BaseAddressY(0xDFC61C,'-382906896')
end),
changan.switch("自动走路",
function()
fastsearch({{0.3749999701976776,16,32,""},{49.0,-44,16},{1956496814,-40,4},{992204554,-4,4}},{{0.09876530617,-108,16,true}})
end),
changan.switch("草丛透视",
function()
BaseAddressD(0xE0CA84,'-476053504')
end,
function()
BaseAddressC(0xE0CA84,'-382907408')
end),
changan.switch("人物跳高",
function()
fastsearch({{50, 4, 32}, {1, 36,16}, {256, 60, 4}}, {{6, 432, 16, false}})
end,
function()
fastsearch({{50, 4, 32}, {1, 36,16}, {256, 60, 4}}, {{1, 432, 16, false}})
end),
changan.switch("视角范围",
function()
local SL=gg.prompt({'视角范围\n[700;999]','√','X'},{0,0},{'number','checkbox','checkbox','checkbox'})
if SL == nil then gg.toast('未选择')else
if SL [2] == true then
BaseAddressD(0x1CACDA4,'~A MOVT R0, #16'..SL[1])
end
if SL [3] == true then
BaseAddressD(0x1CACDA4,'-382908176')
end end
end),
changan.switch("全图秒开",
function()
BaseAddressY(0x14F8DAC,'-369094542')
gg.sleep(100)
BaseAddressY(0x14F8DAC,'-382906896')
end),
changan.switch("倒车跳跃",
function()
BaseAddressD(0x245D59C,'-476053504')
end,
function()
BaseAddressA(0x245D59C,'-382908368')
end),
changan.switch("人物爬墙",
function()
fastsearch({{452984764,4,16384},{-498347968,0x4,4},{-323122424,0x8,4},{-494022652,0xC,4}},{{-1,0x14,16}})
end,
function()
fastsearch({{452984764,4,16384},{-498347968,0x4,4},{-323122424,0x8,4},{-494022652,0xC,4}},{{0.95,0x14,16}})
end),
changan.switch("移动开物",
function()
BaseAddressD(0x13D43A8,'-516948194')
BaseAddressD(0x14FB658,'-516948194')
end,
function()
BaseAddressD(0x13D43A8,'-382906384')
BaseAddressD(0x14FB658,'-382906384')
end),
changan.switch("无视指针",
function()
BaseAddressY(0x18CE5BC,'-352321920')
end,
function()
BaseAddressY(0x18CE5BC,'-382906384')
end),
changan.switch("人物加速",
function()
BaseAddressD(0xEDE140,'-482082700')
end,
function()
BaseAddressAA(0xEDE140,'-382908176')
end),

})
					},{
changan.box({"",
changan.switch("武器间隔",
function()
BaseAddressY(0x2A4942C,'-369091863')
BaseAddressY(0x2A4FCF4,'~A bx lr')
end,
function()
BaseAddressY(0x2A4942C,'-382906384')
BaseAddressY(0x2A4FCF4,'-382906896')
end),
changan.switch("实体子弹",
function()
local t = {"libil2cpp.so", "Cd"}
local tt = {0xFB844, 0x5C, 0x50, 0x54, 0x7C}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 4, value = 520}})
end),
changan.switch("锁定子弹",
function()
BaseAddressY(0x2A4EFAC,'~A bx lr')
end,
function()
BaseAddressY(0x2A4EFAC,'-382907408')
end),
changan.switch("无后坐力",
function()
BaseAddressY(0x2A599C4,'1.0')
end,
function()
BaseAddressY(0x2A599C4,'0.00100000005')
end),
changan.switch("子弹穿墙",
function()
BaseAddressY(0x2A58974,'-516948194')
end,
function()
BaseAddressY(0x2A58974,'-382906384')
end),
changan.switch("子弹射程",
function()
BaseAddressY(0x137D53C,'-516948194')
end,
function()
BaseAddressY(0x137D53C,'-382907408')
end),
changan.switch("子弹速度",
function()
BaseAddressF(0x23A3E9C,'10.5')
end,
function()
BaseAddressF(0x23A3E9C,'0')
end),
changan.switch("枪枪暴击",
function()
BaseAddressF(0x19782E0,'1')
end,
function()
BaseAddressF(0x19782E0,'0')
end),
changan.switch("无视护盾",
function()
BaseAddressY(0x1F52EA0,'~A BX LR')
end,
function()
BaseAddressY(0x1F52EA0,'-382906896')
end),
changan.switch("子弹合体",
function()
BaseAddressD(0x23A5508,'-476053504')
end,
function()
BaseAddressAA(0x23A5508,'-382908176')
end),
changan.switch("超级秒杀",
function()
BaseAddressD(0x476FAC0,'-485552129')
end),
changan.switch("斧头平扫",
function()
local t = {"libil2cpp.so", "Cd"}
local tt = {0xFB844, 0x5C, 0x50, 0x54, 0x144}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 1, freeze = true}})
end),
changan.switch("子弹伤害",
function()
local SL = gg.prompt({'子弹伤害\n[1;1000]'},{''},{'number'})
if SL == nil then gg.toast('未选择')else
local t = {"libil2cpp.so", "Cd"}
local tt = {0xFB844, 0x5C, 0x50, 0x54, 0x128}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 16, value = SL[1], freeze = true}})
end
end),
changan.switch("子弹瞬移",
function()
local SL = gg.prompt({'子弹瞬移\n[-100;100]'},{''},{'number'})
if SL == nil then gg.toast('未选择')else
local t = {"libil2cpp.so", "Cd"}
local tt = {0xFB844, 0x5C, 0x50, 0x54, 0x50}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 16, value = SL[1], freeze = true}})
end 
end),
changan.switch("子弹高度",
function()
local SL = gg.prompt({'子弹高度\n[1;10]'},{''},{'number'})
if SL == nil then gg.toast('未选择')else
local t = {"libil2cpp.so", "Cd"}
local tt = {0xFB844, 0x5C, 0x50, 0x54, 0x40}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 16, value = SL[1], freeze = true}})
end
end),
changan.switch("蹦枪穿墙",
function()
BaseAddressY(0x2EE9F50,'~A bx lr')
end,
function()
BaseAddressY(0x2EE9F50,'-382906384')
end),
changan.switch("腕炮伤害",
function()
BaseAddressD(0x1973924,'0')
end,
function()
BaseAddressA(0x1973924,'-382908368')
end),
changan.switch("迫碗自瞄",
function()
BaseAddressD(0x1CE78D8,'-482082352')
end,
function()
BaseAddressA(0x1CE78D8,'-382908368')
end),
changan.switch("变身攻击",
function()
BaseAddressY(0x2A509C4,'-516948194')
end,
function()
BaseAddressY(0x2A509C4,'-382907280')
end),
changan.switch("迫腕射程",
function()
BaseAddressD(0x1CE78D8,'-482082352')
end,
function()
BaseAddressD(0x1CE78D8,'-382908368')
end),
changan.switch("超级武器",
function()
gg.addListItems({{address = S_Pointer({"libil2cpp.so","Cd"}, {1062148,92,380,24,12,748,64}),flags = 4,freeze = false}})
cnm = gg.getListItems()
gg.setValues({{address = S_Pointer({"libil2cpp.so","Cd"}, {1030212,92,80,84,144,64}),flags = 4,value = "" .. cnm[1].value}})
end),
changan.switch("修改武器",
function()
local SL = gg.prompt(
{'火箭筒改武器\n请输入代码'},{''},{'number'})
if SL == nil then gg.toast('未选择') else
local Search_array = {{
1198410030, 4, 32,''},
{1399156065, 4, 4},
{1632526190, 20, 4},
{841901421, 24, 4},
{16396336, 28, 4}}
local Modifythe_array = {
{SL[1]*65536, 36, 4, false}}
LSQ_pointer(Search_array, Modifythe_array)
end
end),
changan.switch("刷新武器",
function()
local t = {"libil2cpp.so", "Cd"}
local tt = {0xFB844, 0x5C, 0x50, 0x54, 0x8C}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 4, value = 1}})
end),
changan.switch("改道具栏",
function()
local SL = gg.prompt({
'一级火箭筒','二级火箭筒','三级火箭筒',--1
'一级迫击炮','二级迫击炮','三级迫击炮',--2
'一级能量剑','二级能量剑','三级能量剑',--3
'一级冲锋枪','二级冲锋枪','三级冲锋枪',--4
'一级蹦蹦枪','二级蹦蹦枪','三级蹦蹦枪',--5
'一级霸天斧','二级霸天斧','三级霸天斧',--6
'一级霰弹枪','二级霰弹枪','三级霰弹枪',--7
'一级能量炮','二级能量炮','三级能量炮',--8
'一级聚合弓','二级聚合弓','三级聚合弓',--9
'一级换风标','二级换风标','三级换风标',--10
'改恢复值','自调道具',
},{
'',
},{
'checkbox','checkbox','checkbox',--1
'checkbox','checkbox','checkbox',--2
'checkbox','checkbox','checkbox',--3
'checkbox','checkbox','checkbox',--4
'checkbox','checkbox','checkbox',--5
'checkbox','checkbox','checkbox',--6
'checkbox','checkbox','checkbox',--7
'checkbox','checkbox','checkbox',--8
'checkbox','checkbox','checkbox',--9
'checkbox','checkbox','checkbox',--10
'checkbox','checkbox',
})if SL == nil then gg.toast('未选择') else
if SL [1] == true then
BaseAddressD(0x1361AF4,'~A MOVW R0, #'..200)
gg.toast('一级火箭筒->修改成功')
end
if SL [2] == true then
BaseAddressD(0x1361AF4,'~A MOVW R0, #'..201)
gg.toast('二级火箭筒->修改成功')
end
if SL [3] == true then
BaseAddressD(0x1361AF4,'~A MOVW R0, #'..202)
gg.toast('三级火箭筒->修改成功')
end
if SL [4] == true then
BaseAddressD(0x1361AF4,'~A MOVW R0, #'..210)
gg.toast('一级迫击炮->修改成功')
end
if SL [5] == true then
BaseAddressD(0x1361AF4,'~A MOVW R0, #'..211)
gg.toast('二级迫击炮->修改成功')
end
if SL [6] == true then
BaseAddressD(0x1361AF4,'~A MOVW R0, #'..212)
gg.toast('三级迫击炮->修改成功')
end
if SL [7] == true then
BaseAddressD(0x1361AF4,'~A MOVW R0, #'..240)
gg.toast('一级能量剑->修改成功')
end
if SL [8] == true then
BaseAddressD(0x1361AF4,'~A MOVW R0, #'..241)
gg.toast('二级能量剑->修改成功')
end
if SL [9] == true then
BaseAddressD(0x1361AF4,'~A MOVW R0, #'..242)
gg.toast('三级能量剑->修改成功')
end
if SL [10] == true then
BaseAddressD(0x1361AF4,'~A MOVW R0, #'..230)
gg.toast('一级冲锋枪->修改成功')
end
if SL [11] == true then
BaseAddressD(0x1361AF4,'~A MOVW R0, #'..231)
gg.toast('二级冲锋枪->修改成功')
end
if SL [12] == true then
BaseAddressD(0x1361AF4,'~A MOVW R0, #'..232)
gg.toast('三级冲锋枪->修改成功')
end
if SL [13] == true then
BaseAddressD(0x1361AF4,'~A MOVW R0, #'..250)
gg.toast('一级蹦蹦枪->修改成功')
end
if SL [14] == true then
BaseAddressD(0x1361AF4,'~A MOVW R0, #'..251)
gg.toast('二级蹦蹦枪->修改成功')
end
if SL [15] == true then
BaseAddressD(0x1361AF4,'~A MOVW R0, #'..252)
gg.toast('三级蹦蹦枪->修改成功')
end
if SL [16] == true then
BaseAddressD(0x1361AF4,'~A MOVW R0, #'..310)
gg.toast('一级霸天斧->修改成功')
end
if SL [17] == true then
BaseAddressD(0x1361AF4,'~A MOVW R0, #'..311)
gg.toast('二级霸天斧->修改成功')
end
if SL [18] == true then
BaseAddressD(0x1361AF4,'~A MOVW R0, #'..312)
gg.toast('三级霸天斧->修改成功')
end
if SL [19] == true then
BaseAddressD(0x1361AF4,'~A MOVW R0, #'..290)
gg.toast('一级霰弹枪->修改成功')
end
if SL [20] == true then
BaseAddressD(0x1361AF4,'~A MOVW R0, #'..291)
gg.toast('二级霰弹枪->修改成功')
end
if SL [21] == true then
BaseAddressD(0x1361AF4,'~A MOVW R0, #'..292)
gg.toast('三级霰弹枪->修改成功')
end
if SL [22] == true then
BaseAddressD(0x1361AF4,'~A MOVW R0, #'..280)
gg.toast('一级能量炮->修改成功')
end
if SL [23] == true then
BaseAddressD(0x1361AF4,'~A MOVW R0, #'..281)
gg.toast('二级能量炮->修改成功')
end
if SL [24] == true then
BaseAddressD(0x1361AF4,'~A MOVW R0, #'..282)
gg.toast('三级能量炮->修改成功')
end
if SL [25] == true then
BaseAddressD(0x1361AF4,'~A MOVW R0, #'..320)
gg.toast('一级聚合弓->修改成功')
end
if SL [26] == true then
BaseAddressD(0x1361AF4,'~A MOVW R0, #'..321)
gg.toast('二级聚合弓->修改成功')
end
if SL [27] == true then
BaseAddressD(0x1361AF4,'~A MOVW R0, #'..322)
gg.toast('三级聚合弓->修改成功')
end
if SL [28] == true then
BaseAddressD(0x1361AF4,'~A MOVW R0, #'..300)
gg.toast('一级换风标->修改成功')
end
if SL [29] == true then
BaseAddressD(0x1361AF4,'~A MOVW R0, #'..301)
gg.toast('二级换风标->修改成功')
end
if SL [30] == true then
BaseAddressD(0x1361AF4,'~A MOVW R0, #'..302)
gg.toast('三级换风标->修改成功')
end
if SL [31] == true then
BaseAddressAA(0x1361AF4,'-382907280')
gg.toast('改道具栏->改回原值')
end
if SL [32] == true then
local SL = gg.prompt(
{''..SL2..'改道具栏\n请输入代码'},
{''},{'number'})
if SL == nil then else
BaseAddressD(0x1361AF4,'~A MOVW R0, #'..SL[1])
end end end
end),
changan.switch("迫击射程",
function()
local SL = gg.prompt({'迫击射程\n[1;100]'},{''},{'number'})
if SL == nil then gg.toast('未选择')else
local Search_array = {{
1028443341, 4, 32,''},
{1008981770, -16, 4}}
local Modifythe_array = {
{SL[1], -32, 16, false}
}
LSQ_pointer(Search_array, Modifythe_array)
end
end),
changan.switch("腕炮范围",
function()
local SL = gg.prompt({'腕炮范围\n[1;100]'},{''},{'number'})
if SL == nil then gg.toast('未选择') else
local Search_array = {{
5.0, 16, 32,''},
{0.0, 8, 16},
{280, 48, 4}}
local Modifythe_array = {
{SL[1], 4, 16, false}
}
LSQ_pointer(Search_array, Modifythe_array)
end
end),
changan.switch("弓箭蓄力",
function()
BaseAddressY(0x1CE9A88,'-516948194')
end,
function()
BaseAddressY(0x1CE9A88,'-382906384')
end),
changan.switch("子弹buff",
function()
BaseAddressD(0x2125CA4,'-476053503')
end,
function()
BaseAddressC(0x2125CA4,'-382907408')
end),
changan.switch("斧头全屏",
function()
BaseAddressY(0x22C1CD4,'-516948194')
end,
function()
BaseAddressY(0x22C1CD4,'-382906384')
end),
changan.switch("攻击姿势",
function()
BaseAddressY(0x2A538F4,'-516948194')
end,
function()
BaseAddressY(0x2A538F4,'-382907408')
end),
})
					},{----
		changan.button(
	"停止歌曲",
	function()
		gg.playMusic("stop")
		gg.playMusic("stop")
		gg.playMusic("stop")
		string.toMusic('关闭成功')
	end,0xff0056FF),
		{
			view = wyylog,
			["name"] = "搜索音乐",
			["type"] = "View"
		}
					}
				})