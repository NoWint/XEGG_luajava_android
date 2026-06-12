


a = gg.alert('购卡请点击“点我购买”\n如不想买请关注群消息\n会时不时推出送卡活动','点我购买','跳过')
if a == nil then
elseif a == 1 then 
gg.goURL('https://fak.riyx.cn//links/2D66C988')
gg.copyText("https://fak.riyx.cn//links/2D66C988")
gg.alert("已复制卡网链接\n并跳转至卡网")
elseif a == 2 then
end

title = "<font color='#70f3ff'>脚本使用提醒</font>"
message = "<font color='#ffbefffff'>欢迎老板使用Tiny全防\n一定要按群内教程来开\n不看而导致封号的后果自负</font>"
gg.htmlAlert(title, message, "我明白了")



function SOGSPY_ST(HDZ,DYZ)
if HDZ >= DYZ then
py=string.format("-0x%X",HDZ-DYZ)
return py
else
py=string.format("+0x%X",DYZ-HDZ)
return py
end
end

So_32 = function ( Ad , Value , IF )
if gg.getRangesList ( 'libil2cpp.so' ) [ 1 ] == nil then
gg.alert("请重新选择进程")
else
gg.clearResults ( )
local Ret = "~A BX LR"
local So = gg.getRangesList ( 'libil2cpp.so' )
for key , value in pairs ( So ) do
if value.state ~= "Xa" then
return
else
local Soad = value.start
local Add = Soad + Ad
gg.processPause ( )
gg.setValues ( { { address = Add , flags = 4 , value = Value } } )
gg.processResume ( )
if IF == true then
gg.setValues ( { { address = Add + 4 , flags = 4 , value = Ret } } )
gg.processResume ( )
elseif IF == nil then
gg.processPause ( )
gg.setValues ( { { address = Add + 4 , flags = 4 , value =Ret } } )
gg.processResume ( )
elseif IF == false then
break
end
end
end
end
end
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
Sy_x32 = function ( Address , Value )
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

function SO_FLPTXG(FUNCTIONADD,TYPE,VALUE)
local SOMOD=gg.getRangesList("il2cpp.so")
if SOMOD[1]==nil then gg.alert("开启失败\n━━━━━━━━━━━━━━━\n错误原因:未找到相关内存\n解决方法:请重新选择游戏进程\n━━━━━━━━━━━━━━━") else
local SOMOD1=gg.getRangesList("libil2cpp.so")[1].start
gg.setValues({{address=SOMOD1+FUNCTIONADD,flags=TYPE,value=VALUE}})
gg.setValues({{address=SOMOD1+FUNCTIONADD+4,flags=TYPE,value="100A00EEr"}})
gg.setValues({{address=SOMOD1+FUNCTIONADD+8,flags=TYPE,value="C00AB8EEr"}})
gg.setValues({{address=SOMOD1+FUNCTIONADD+12,flags=TYPE,value="100A10EEr"}})
gg.setValues({{address=SOMOD1+FUNCTIONADD+16,flags=TYPE,value="1EFF2FE1r"}})
end
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
gg.clearResults() sj={} xgz={} function search(ss,lx,nc,dz1,dz2) if ss~=nil then if lx~=nil then if nc==nil then nc=32 end gg.setRanges(nc) if dz1==nil then dz1="-1" end if dz2==nil then dz1="0" end gg.searchNumber(ss,lx,false,gg.SIGN_EQUAL,dz1,dz2) sl=gg.getResultCount() if sl~=0 then sj=gg.getResults(sl) gg.toast("搜索到 "..sl.." 个结果") gg.clearResults() else gg.toast("未搜索到结果") end else gg.toast("无搜索值类型") end else gg.toast("无需搜索值") end end function py1(value,lx,py) if #sj~=nil then z1={} z2={} for i=1,#sj do z1[i]={} z1[i].address=sj[i].address+py z1[i].flags=lx end z1=gg.getValues(z1) for i=1,#sj do if z1[i].value==value then z2[#z2+1]={} z2[#z2]=sj[i] end end sj=z2 z1={} z2={} gg.toast("共偏移 "..#sj.." 个数据") else gg.toast("没有搜索数据") end end function py2(value,lx,py) if #sj~=nil then z1={} z2={} for i=1,#sj do z1[i]={} z1[i].address=sj[i].address+py z1[i].flags=lx end z1=gg.getValues(z1) for i=1,#sj do if z1[i].value~=value then z2[#z2+1]={} z2[#z2]=sj[i] end end sj=z2 z1={} z2={} gg.toast("共偏移 "..#sj.." 个数据") else gg.toast("没有搜索数据") end end function xg1(value,lx,py,dj) if #sj~=nil then z={} for i=1,#sj do z[i]={} z[i].address=sj[i].address+py z[i].flags=lx z[i].value=value if dj==true then z[i].freeze=true end end if dj==true then gg.addListItems(z) else gg.clearList() gg.setValues(z) end gg.toast("共修改 "..#z.." 个数据") else gg.toast("没有搜索数据") end end function xg2(bz,value,lx,py,dj) if #bz~=nil then z={} for i=1,#bz do z[i]={} z[i].address=bz[i].address+py z[i].flags=lx z[i].value=value if dj==true then z[i].freeze=true end end if dj==true then gg.addListItems(z) else gg.clearList() gg.setValues(z) end gg.toast("共修改 "..#z.." 个数据") else gg.toast("没有搜索数据") end end function bc(bz) if sj~=nil then _ENV[bz]=sj else gg.toast("无数据") end end function BaAdd(add) if gg.getTargetInfo().x64==true then t=gg.getValues({[1]={address=add,flags=32}}) return t[1].value else t=gg.getValues({[1]={address=add,flags=4}}) return t[1].value&0xFFFFFFFF end end function set(dz,xg,lx,dj) if dj=="true" then gg.addListItems({{address=dz,flags=lx,value=xg,freeze=true}}) else gg.setValues({{address=dz,flags=lx,value=xg}}) end gg.toast("已修改完成~") end

DWORD=gg.TYPE_DWORD  DOUBLE=gg.TYPE_DOUBLE  FLOAT=gg.TYPE_FLOAT WORD=gg.TYPE_WORD BYTE=gg.TYPE_BYTE XOR=gg.TYPE_XOR QWORD=gg.TYPE_QWORD

D=gg.TYPE_DWORD  E=gg.TYPE_DOUBLE  F=gg.TYPE_FLOAT W=gg.TYPE_WORD B=gg.TYPE_BYTE X=gg.TYPE_XOR Q=gg.TYPE_QWORD
-------------不懂勿动------------
------------道具赛配置---------------
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
function Fs3Fs4(Fs1, Fs2, Fs3, Fs4, Fs5) gg.clearResults() gg.setRanges(Fs2) gg.setVisible(false) gg.searchNumber(Fs3[1][1], Fs3[1][3]) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Fs3[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Fs3 do local tmp = {} local offset = Fs3[k][2] - base local num = Fs3[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = Fs3[k][3] end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast(Fs1..'\n搜索到{'..#data..'}条数据') local t = {} local base = Fs3[1][2] if Fs5 == '' and Fs5 > 0 and Fs5 < #data then Fs5 = Fs5 else Fs5 = #data end for i=1, Fs5 do for k, w in ipairs(Fs4) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = w[3] t[#t].value = w[1] if (w[4] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast(Fs1..'️\n已修改{'..#t..'}条数据') else gg.toast(Fs1..'\n数据搜索失败', false) return false end else gg.toast(Fs1..'\n数据修改失败', false) return false end end

function search(ss,lx,nc,dz1,dz2) if ss~=nil then if lx~=nil then if nc==nil then nc=32 end gg.setRanges(nc) if dz1==nil then dz1="-1" end if dz2==nil then dz1="0" end gg.searchNumber(ss,lx,false,536870912,dz1,dz2) sl=gg.getResultCount() if sl~=0 then sj=gg.getResults(sl) gg.toast("搜索到 "..sl.." 个结果") gg.clearResults() else gg.toast("未搜索到结果") end else gg.toast("无搜索值类型") end else gg.toast("无需搜索值") end end function py1(value,lx,py) if #sj~=nil then z1={} z2={} for i=1,#sj do z1[i]={} z1[i].address=sj[i].address+py z1[i].flags=lx end z1=gg.getValues(z1) for i=1,#sj do if z1[i].value==value then z2[#z2+1]={} z2[#z2]=sj[i] end end sj=z2 z1={} z2={} gg.toast("共偏移 "..#sj.." 个数据") else gg.toast("没有搜索数据") end end function py2(value,lx,py) if #sj~=nil then z1={} z2={} for i=1,#sj do z1[i]={} z1[i].address=sj[i].address+py z1[i].flags=lx end z1=gg.getValues(z1) for i=1,#sj do if z1[i].value~=value then z2[#z2+1]={} z2[#z2]=sj[i] end end sj=z2 z1={} z2={} gg.toast("共偏移 "..#sj.." 个数据") else gg.toast("没有搜索数据") end end 
function xg1(value,lx,py,dj) if #sj~=nil then z={} for i=1,#sj do z[i]={} z[i].address=sj[i].address+py z[i].flags=lx z[i].value=value if dj==true then z[i].freeze=true end end if dj==true then gg.addListItems(z) else gg.clearList() gg.setValues(z) end gg.toast("共修改 "..#z.." 个数据") else gg.toast("没有搜索数据") end end 
function xg2(bz,value,lx,py,dj) if #bz~=nil then z={} for i=1,#bz do z[i]={} z[i].address=bz[i].address+py z[i].flags=lx z[i].value=value if dj==true then z[i].freeze=true end end if dj==true then gg.addListItems(z) else gg.clearList() gg.setValues(z) end gg.toast("共修改 "..#z.." 个数据") else gg.toast("没有搜索数据") end end function bc(bz) if sj~=nil then _ENV[bz]=sj else gg.toast("无数据") end end function BaAdd(add) t=gg.getValues({[1]={address=add,flags=4}}) return t[1].value&0xFFFFFFFF end function set(dz,xg,lx,dj) if dj=="true" then gg.addListItems({{address=dz,flags=lx,value=xg,freeze=true}}) else gg.setValues({{address=dz,flags=lx,value=xg}}) end gg.toast("已修改完成~") end
function readWrite(Search,Get,Type,Range,Name) gg.clearResults() gg.setRanges(Range) gg.setVisible(false) if Search[1][1]~=false then gg.searchAddress(Search[1][1],0xFFFFFFFF,Search[1][4] or Type,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) end gg.searchNumber(Search[1][2],Search[1][4] or Type,false,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][3] if (count > 0) then for i,v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2] - base local num=Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=Search[k][3] or Type end tmp=gg.getValues(tmp) for i,v in ipairs(tmp) do if v.flags==16 or v.flags==64 then values=tostring(v.value):sub(1,6) num=tostring(num):sub(1,6) else values=v.value end if tostring(values)~=tostring(num) then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1]=v.address end end if (#data > 0) then local t,t_={},{} local base=Search[1][3] for i=1,#data do for k,w in ipairs(Get) do offset=w[2] - base if w[1]==false then t_[#t_+1]={} t_[#t_].address=data[i]+offset t_[#t_].flags=Type th_=(th_) and th_+1 or 1 else t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=w[3] or Type t[#t].value=w[1] tg_=(tg_) and tg_+1 or 1 if (w[4]==true) then local item={} item[#item+1]=t[#t] item[#item].freeze=w[4] gg.addListItems(item) end end end end tg=(tg_) and "\n已修改"..tg_.."条数据" or "" th=(th_) and "\n已获取"..th_.."条数据" or "" gg.setValues(t) t_=gg.getValues(t_) gg.loadResults(t_) gg.alert("\n"..Name.."搜索成功！\n偏移到"..#data.."条数据"..tg..th) tg_,th_=nil,nil else gg.alert("\n"..Name.."开启失败",false) return false end else gg.alert(Name.."开启失败") return false end end
----以上为指针搜索模块
function SO_PT(FUNCTIONADD,TYPE,VALUE)
local SOMOD=gg.getRangesList("il2cpp.so")
if SOMOD[1]==nil then gg.alert("开启失败\n━━━━━━━━━━━━━━━\n错误原因:未找到相关内存\n解决方法:请重新选择游戏进程\n━━━━━━━━━━━━━━━") else
gg.setValues({{address=SOMOD[1].start+FUNCTIONADD,flags=TYPE,value=VALUE}})
gg.setValues({{address=SOMOD[1].start+FUNCTIONADD+4,flags=TYPE,value="1EFF2FE1r"}})
end
end
---SO模块.可修改
function SO_ST(FUNCTIONADD,VALUE,JZXB)
local SOMOD=gg.getRangesList("il2cpp.so")
if SOMOD[1]==nil then gg.alert("开启失败\n━━━━━━━━━━━━━━━\n错误原因:未找到相关内存\n解决方法:请重新选择游戏进程\n━━━━━━━━━━━━━━━") else
gg.setValues({{address=SOMOD[1].start+FUNCTIONADD,flags=4,value=VALUE}})
gg.setValues({{address=SOMOD[1].start+FUNCTIONADD+4,flags=4,value=JZXB}})
end
end
-----基址指针模块
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
----指针模块
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
----搜索且冻结模块
function Searssjc(FUNCTIONADD,VALUE,SETRANGES)
local SOMOD=gg.getRangesList("il2cpp.so")
if SOMOD[1]==nil then gg.toast("开启失败") else
gg.setRanges(SETRANGES)
gg.searchNumber(FUNCTIONADD, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(FUNCTIONADD, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
local jg=gg.getResults(100)
local sl=gg.getResultCount()
for i=1, sl do
dzy=jg[i].address
gg.clearResults()
gg.addListItems({[1]={address=dzy,flags=gg.TYPE_DWORD,freeze=true,value=VALUE}})
end
gg.toast("开启成功")
end
end
----秒开SO模块
YX={}
function YX.SOMODMK(Name,Address,Modify)
 if Address==nil then
    gg.alert("开启失败\n━━━━━━━━━━━━━━━\n错误原因:未找到相关内存模块\n解决方法:请重新选择游戏进程\n━━━━━━━━━━━━━━━")
 else
   time=os.clock()
   local address=0
   for index,offset in ipairs(Address)do
      if index==1 then
         address=offset
      else
         address=gg.getValues({{address=address+offset,flags=4}})[1].value
      end
   end
   local Value,Freeze={},{}
   for index,value in ipairs(Modify)do
      local VALUE={address=address+value[3],flags=value[2],value=value[1],freeze=true}
      if value[4]then
         Freeze[#Freeze+1]=VALUE
      else
         Value[#Value+1]=VALUE
      end
   end
   gg.setValues(Value)
   gg.addListItems(Freeze)
   Comodifiedvalues=#Freeze+#Value
   local time=string.sub(os.clock()-time,0,5)
---gg.toast(Name..'️开启成功\n当前进程名称:'..gg.getTargetInfo().label..'\n当前进程包名:'..gg.getTargetPackage()..'\n共修改'..Comodifiedvalues..'个值\n总共耗时:'..time..'秒')
gg.toast(Name..'️开启成功\n当前进程名称:'..gg.getTargetInfo().label..'\n当前进程包名:'..gg.getTargetPackage()..'\n总共耗时:'..time..'秒')
 end
end
----秒开基址模块
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
for _,YX in pairs(PY_offsets) do
gg.addListItems({{address = DZT+YX, flags = TYPE, value = VALUE, freeze = DJ}})
end
local time=string.sub(os.clock()-time,0,5)
gg.toast(NAME..'️开启成功\n当前进程名称:'..gg.getTargetInfo().label..'\n当前进程包名:'..gg.getTargetPackage()..'\n总共耗时:'..time..'秒')
end
end 
function ftz(xgzs,czmzs)
tzzmm = 0
gg.clearResults()
gg.setRanges(16384)--设置Xa内存
il2cpp = gg.getRangesList("il2cpp.so")[1]--获取il2cpp.so模块
gg.searchNumber("-1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, il2cpp['start'], il2cpp['end'], 0)--搜索值
for k , v in pairs(gg.getResults(xgzs)) do
tzzmm = tzzmm+1
random = math.random(1,6)
if random == 1 then
gg.setValues({{address=v.address , flags = 4 , value = czmzs}})
gg.setValues({{address=v.address + 4 , flags = 4 , value = '-516,948,194'}})
end
if random == 2 then
gg.setValues({{address=v.address , flags = 4 , value = '~A B +0x'..math.random(0,1000000)}})
gg.setValues({{address=v.address + 4 , flags = 4 , value = '-516,948,194'}})
end
if random == 3 then
gg.setValues({{address=v.address , flags = 4 , value = '~A B -0x'..math.random(0,1000000)}})
gg.setValues({{address=v.address + 4 , flags = 4 , value = '-516,948,194'}})
end
if random == 4 then
gg.setValues({{address=v.address , flags = 4 , value = '~A MOV R0, #1'}})
gg.setValues({{address=v.address + 4 , flags = 4 , value = '-516,948,194'}})
end
if random == 5 then
gg.setValues({{address=v.address , flags = 4 , value = '~A MOV R0, #0'}})
gg.setValues({{address=v.address + 4 , flags = 4 , value = '-516,948,194'}})
end
if random == 6 then
gg.setValues({{address=v.address , flags = 4 , value = '~A MOV R0, #'..math.random(1,50)}})
gg.setValues({{address=v.address + 4 , flags = 4 , value = '-516,948,194'}})
end

if tzzmm == 19 then gg.alert("开启成功") end
end
end
function HX_value(hxvalue)
gg.setRanges(gg.REGION_CODE_APP)--设置xa
gg.searchNumber(0, gg.TYPE_DWORD,false, gg.SIGN_EQUAL, 0, -1, 0)
local t = gg.getResults(hxvalue)
for i,v in pairs(t) do
gg.setValues({{address=v.address,flags=4,value=i*-9000000*i+10000}})
gg.clearResults()
end
end
function bsss()--4399
bb=1
function package_Anti_module()
gg.setVisible(false)
local isProcessFound = false
while true do
if gg.isVisible() == true then
local input = gg.prompt({
'进入主页面',
'继续此状态',
'1.正在获取游戏进程...\n2.正在捕捉环境检测...'
}, { [3] = '我正在等待进程的到来' }, { 'checkbox', 'checkbox', 'text' })
if not input then
gg.setVisible(false)
elseif input[1] == true then
break
else
gg.setVisible(false)
end
end
local Tab = gg.getProcess()
for key, value in pairs(Tab) do
if value.cmdLine == "com.kiloo.subwaysurf" then
gg.setProcess("com.kiloo.subwaysurf")
isProcessFound = true
for i = 1, math.huge do
local Get = gg.getRangesList("libil2cpp.so")
local Get_1 = gg.getRangesList("libil2cpp.so")[1]
if Get_1 == nil then
gg.setRanges(gg.REGION_C_DATA | gg.REGION_C_BSS)
gg.clearResults()
gg.searchNumber("1433223", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.clearResults()
else
YX={}
function YX.SOMODMK(Name,Address,Modify)
 if Address==nil then
    gg.alert("开启失败\n━━━━━━━━━━━━━━━\n错误原因:未找到相关内存模块\n解决方法:请重新选择游戏进程\n━━━━━━━━━━━━━━━")
 else
   time=os.clock()
   local address=0
   for index,offset in ipairs(Address)do
      if index==1 then
         address=offset
      else
         address=gg.getValues({{address=address+offset,flags=4}})[1].value
      end
   end
   local Value,Freeze={},{}
   for index,value in ipairs(Modify)do
      local VALUE={address=address+value[3],flags=value[2],value=value[1],freeze=true}
      if value[4]then
         Freeze[#Freeze+1]=VALUE
      else
         Value[#Value+1]=VALUE
      end
   end
   gg.setValues(Value)
   gg.addListItems(Freeze)
   Comodifiedvalues=#Freeze+#Value
   local time=string.sub(os.clock()-time,0,5)
---gg.toast(Name..'️开启成功\n当前进程名称:'..gg.getTargetInfo().label..'\n当前进程包名:'..gg.getTargetPackage()..'\n共修改'..Comodifiedvalues..'个值\n总共耗时:'..time..'秒')
gg.toast(Name..'️开启成功\n当前进程名称:'..gg.getTargetInfo().label..'\n当前进程包名:'..gg.getTargetPackage()..'\n总共耗时:'..time..'秒')
 end
end
YX.SOMODMK("自动防环境",{S_Pointer({"libtersafe2.so","Cd"},{0})},{{-1,4,0xA8,true},{-1,4,0xAC,true},{-1,4,0xB0,true},{-1,4,0xB4,true},{-1,4,0xB8,true}})
YX.SOMODMK("自动防环境",{gg.getRangesList('libtersafe2.so:bss')[1].start},{{0,4,0x81C,true},{0,4,0x83C,true},{0,4,0x84C,true},{0,4,0x85C,true},{0,4,0x864,true},{0,4,0x86C,true},{0,4,0x89C,true},{0,4,0x924,true}})
gg.alert("过环境检测成功")
break
end
end
break
end
end
if isProcessFound then
break
end
end
end
function Anti_module()
if pcall(package_Anti_module) then
else
return Anti_module()
end
end

zdfhjmk=gg.prompt({"进入TINY主界面","进入自动防环境\n[1.自动选择进程]\n[2.自动刷新模块]\n[3.自动执行防环境]\n[4.完成以上操作后进入TINY主界面]"}, nil, {"checkbox","checkbox"})
if zdfhjmk == nil then 
gg.alert('欢迎老板使用TINY为老板保驾护航')
string.toMusic('欢迎老板使用TINY为老板保驾护航')
elseif zdfhjmk[1]==true then
gg.alert('欢迎老板使用TINY为老板保驾护航')
string.toMusic('欢迎老板使用TINY为老板保驾护航')
elseif zdfhjmk[2]==true then
Anti_module()--调用
end


function _getTableCount(search)
local conut=0
 for k ,v in pairs(search) do
conut  = conut+1
  end
  return conut
end
loadYunLua('httpByQn0RTmbpsGdcPcXyFHiZ+j9yFx3DxxSkhAF7365IpTfJLgFcN4Pn8VMAs/N0I6/ieoXPoRl5J8bVfBY/1DVP6dDeVQPyi//DpylxjExSxWrU8rGTB3tJwxInTUnitf7cE4vqtd8jBRvwI3twPhpWAfWLev/ytt3gg9Hm3h7lxf7w8wSCMNaOWEMjWxyqSjhPKz0m7JiePZ5')


function huiz()
end
muby=850
--初始宽度
mubx=1350
--初始高度
stab = {
"公告",
	"防封",
	"刷号",
	"查询",
	"竞赛",	
	"设置",
}
主题色="0xff4F378B"


xfcpic="https://cdn-community.codemao.cn/47/community/d2ViXzUwMDFfMTAwMTQwOTNfMTQ2NzVfMTcyMTM2NTg1NTk5Nl9mMDE3NmJlYg.png"

local FB=gg.makeRequest("https://v1.hitokoto.cn/?j=j&encode=text").content


Yunzhu.menu(
{
 	{---第一页
Yunzhu.text("随机一言:"..FB.."","#7F5EFF","13sp"),	
Yunzhu.text("欢迎使用TINY内部","#ffffff","20sp"),
Yunzhu.text("当前版本号_24y7n6gx_alpha 第六次更新",主题色,"10sp"),
Yunzhu.text("Tiny通知总群:818963998","#ffffff","17sp"),
Yunzhu.text("Tiny通知一群:923441198","#ffffff","17sp"),
Yunzhu.text("TINY在新赛季带你杀出重围","#ffffff","18sp"),
Yunzhu.button("选择进程",
function ()
gg.setConfig("冻结间隔", 0)
string.toMusic('请选择地铁跑酷进程')
gg.setProcessX()
end),
Yunzhu.button("加入总群",
function ()
gg.QQgroup("923441198")
end),
		Yunzhu.button("生成账号",
function()
gg.intent("https://4399.js.mcdds.cn/")
end),
		Yunzhu.button("修改文字",
function()
gg.clearResults()
gg.setRanges(32)
a = gg.prompt({"请输入更改前的文字","请输入更改后的文字"},{[1]="别跑!",[2]="人机!"},{"text","text"})
if not a then return end
if a[1] == "" then return end
if a[2] == "" then return end
gg.searchNumber(";"..a[1], gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1, 0)
if gg.getResultsCount() == 0 then gg.alert('搜索失败') return end
gg.getResults(99999)
gg.editAll(";"..a[2], gg.TYPE_WORD)
gg.toast("Done✔️")
toMusic('开启成功')    
end),
Yunzhu.button(
    '启动AppleIOS灵动岛',
    function()
    Snackbar:make(ckou,"加载成功 已完成操作✅",Snackbar.LENGTH_SHORT):setBackgroundTint("0xffffffff"):show()
   -- Snackbar:make(view,"正在为你启动灵动岛程序",Snackbar.LENGTH_SHORT):show()
    --view弹窗
      baseWindow=require 'floatingWindowManager2'
context = baseWindow:getContext()
view={
	LinearLayout,
}
local dialogBuilder = MaterialAlertDialogBuilder(context)
:setTitle('灵动岛预览')
:setView(luajava.loadlayout(

particle3()

))
:setPositiveButton('我已知晓')
    luajava.showAlert(dialogBuilder)
    end),
Yunzhu.button("关注作者",
                function()            
co = gg.prompt({"云烛","玄烛","XG"}, {}, {'checkbox',"checkbox",'checkbox'})
if co == nil then AN() end
if co[1] == true then
qq.join("3359239164")
         end
if co[2] == true then
qq.join("3675757828")  
end

if co[3] == true then
qq.join("3687782427")     
end
    end),         
    Yunzhu.button("启动音乐和水印",
    function()
    function getLyric(id)
    local lyric = table.json(gg.makeRequest("https://music.163.com/api/song/media?id="..id).content).lyric
    if lyric == nil then return "纯音乐，请欣赏 \n By Tiny" end
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
MusicId=1827600686---音乐ID
lyric=getLyric(MusicId)
gg.playMusic("http://music.163.com/song/media/outer/url?id="..MusicId..".mp3")
gg.sleep(2000)---自行根据网速调配
for index, value in ipairs(lyric) do
draw.remove()
drawColor="0xff004eff"
if index-1>0 then
draw.text("TINY内部 总群818963998", 100,100)
draw.setColor("#713BD1")
draw.text(lyric[index-1][2], 100,200)
draw.setColor("#004eff")
draw.text(value[2], 100,300)
draw.setColor("#004eff")
draw.text(lyric[index+1][2], 100,400)
draw.setColor("#004eff")
gg.sleep(value[1]-lyric[index-1][1])
else
draw.text("TINY内部 总群818963998", 100,100)
draw.setColor("#713BD1")
draw.text(value[2], 100,300)
draw.setColor("#004eff")
draw.text(lyric[index+1][2], 100,400)
draw.setColor("#004eff")
gg.sleep(value[1])
end
end
    end
    ),
		},{
	Yunzhu.button("选择进程",
function ()
gg.setConfig("冻结间隔", 0)
string.toMusic('请选择地铁跑酷进程')
gg.setProcessX()
end),
		Yunzhu.box({"防区",
		Yunzhu.box({"登录防",
		Yunzhu.switch("框架环境[登录]",
		function()
		YX.SOMODMK("框架[1]",{gg.getRangesList('libtersafe2.so')[1].start},{{1869374464,4,0x19DC,true}})
YX.SOMODMK("框架[2]",{S_Pointer({"libtersafe2.so","Cd"},{0})},{{1952539695,4,0x42FB8,true},{1937059681,4,0x42FBC,true},{808415845,4,0x42FC0,true},{1836016431,4,0x42FC4,true},{1818848046,4,0x42FC8,true},{1932423023,4,0x42FCC,true},{1635213941,4,0x42FD0,true},{1920299897,4,0x42FD4,true},{1768304486,4,0x42FD8,true},{7562604,4,0x42FDC,true},{0,4,0x42FE0,true},{0,4,0x42FE4,true},{0,4,0x42FE8,true},{0,4,0x42FEC,true},{0,4,0x42FF0,true},{0,4,0x42FF4,true},{0,4,0x42FF8,true},{0,4,0x42FFC,true}})
string.toMusic('框架环境开启成功')											
gg.alert('框架环境开启成功')		
		end ),
		Yunzhu.switch("过滤环境[登录]",
		function()
		YX.SOMODMK("过滤检测",{gg.getRangesList('libtersafe2.so:bss')[1].start},{{0,4,0x81C,true},{0,4,0x83C,true},{0,4,0x84C,true},{0,4,0x85C,true},{0,4,0x864,true},{0,4,0x86C,true},{0,4,0x89C,true}})
		string.toMusic('过滤环境开启成功')											
gg.alert('过滤环境开启成功')		
		end ),
		Yunzhu.switch("登录检测[登录]",
		function()
		YX.SOMODMK("登录检测",{gg.getRangesList('libtersafe2.so:bss')[1].start},{{0,4,0x555C,true},{0,4,0x55D4,true},{0,4,0x56A4,true},{0,4,0x56B4,true},{0,4,0x56B8,true},{0,4,0x56C0,true},{0,4,0x56D8,true}})
		string.toMusic('登录检测开启成功')											
gg.alert('登录检测开启成功')		
		end  ),
		Yunzhu.switch("ACE检测[登录]",
		function()
		YX.SOMODMK("ace",{S_Pointer({"libtersafe2.so","Cd"},{0})},{{-1,4,0xA8,true},{-1,4,0xAC,true},{-1,4,0xB0,true},{-1,4,0xB4,true},{-1,4,0xB8,true},{-1,4,0x42FB8,true},{-1,4,0x42FBC,true},{-1,4,0x42FC0,true},{-1,4,0x42FC4,true},{-1,4,0x42FC8,true},{-1,4,0x42FCC,true},{-1,4,0x42FD0,true},{-1,4,0x42FD4,true},{-1,4,0x42FD8,true},{-1,4,0x42FDC,true}})
YX_MkPointer("libtersafe2.so","Cd",{0x8,0xC,0x10,0x14,0x3C,0x40,0x58,0x60,0x74,0x78,0x7C,0x84,0xA8,0xAC,0xB0,0xB4,0xB8,0x128,0x12C,0x130,0x134,0x200,0x204,0x208},4,-1,"过ACE",true)
string.toMusic('ACE检测开启成功')											
gg.alert('ACE检测开启成功')		
		end  ),
		Yunzhu.switch("无敌防封[登录]",
		function()
		function SafeEdit(mode,list)
    local list_ = {}
    local getsafe = gg.getRangesList(mode)[1]
    for k , v in ipairs(list) do
        list_[#list_+1] = {address=getsafe.start+v,flags=4,value=0,freeze=true}
    end
    gg.addListItems(list_)
end
SafeEdit("libtersafe2.so:bss",{0x83c,0x84c,0x85c,0x864,0x86c,0x89c,0x9e4,0x5614,0x56c0,0x56d8,0x13e64,0x13e68,0x13e6c,0x13e70,0x13e74,0x13e78,0x13e7c,0x13e80,0x13e84,0x13e88,0x13eb0,0x13eb4,0x13eb8,0x13ebc,0x13ec0,0x13ec4,0x13ec8,0x13ecc,0x13ed0,0x13ed4,0x13ed8,0x13edc,0x13ee0,0x13ee4,0x13ee8,0x13eec,0x13ef0,0x13ef4,0x13ef8,0x13efc,0x13f00,0x13f04,0x13f08,0x13f0c,0x13f10,0x13f5c,0x13f60,0x13f64,0x13f68,0x13f6c,0x13f70,0x13f74,0x13f78}) 
string.toMusic('防风开启成功')											
gg.alert('防封开启成功')	
end),
		Yunzhu.switch("防止闪退[登录]",
		function()
		YX.SOMODMK("防闪",{S_Pointer({"libtersafe2.so","Cd"},{0})},{{0,4,0x38,true},{0,4,0x44,true},{0,4,0x58,true},{0,4,0x74,true},{-1,4,0xA8,true}})
YX_MkPointer("libtersafe2.so","Cd",{0x8,0xC,0x10,0x14,0x3C,0x40,0x58,0x60,0x74,0x78,0x7C,0x84,0xA8,0xAC,0xB0,0xB4,0xB8,0x128,0x12C,0x130,0x134,0x200,0x204,0x208},4,-1,"过ACE",true)
YX_MkPointer("libtersafe2.so","Cd",{0xA8,0xAC,0xB0,0xB4,0xB8,0x8EE8,0x9A28,0x2FD20},4,-1,"防闪",true)
string.toMusic('防止闪退开启成功')											
gg.alert('防止闪退开启成功')		
		end  ),
		Yunzhu.switch("防止高检[登录]",
		function()
		YX.SOMODMK("过滤检测",{gg.getRangesList('libtersafe2.so:bss')[1].start},{{0,4,0x580,true},{0,4,0x584,true},{0,4,0x89C,true},{0,4,0x8A4,true},{0,4,0x8A8,true},{0,4,0x8AC,true},{0,4,0x8B0,true},{0,4,0x8B4,true},{0,4,0x8B8,true},{0,4,0x8BC,true},{0,4,0x8C0,true},{0,4,0x8C4,true},{0,4,0x8C8,true},{0,4,0x8CC,true},{0,4,0x8D0,true},{0,4,0x8D4,true},{0,4,0x8D8,true},{0,4,0x54DC,true},{0,4,0x555C,true},{0,4,0x13E50,true},{0,4,0x13E54,true},{0,4,0x13E58,true},{0,4,0x13E5C,true},{0,4,0x13E60,true},{0,4,0x13E64,true},{0,4,0x13E68,true},{0,4,0x13E6C,true},{0,4,0x13E70,true},{0,4,0x13E74,true},{0,4,0x13E78,true},{0,4,0x13E7C,true},{0,4,0x13E80,true},{0,4,0x13E84,true},{0,4,0x13E88,true},{0,4,0x13EB0,true},{0,4,0x13EB4,true},{0,4,0x13EB8,true},{0,4,0x13EBC,true},{0,4,0x13EC0,true},{0,4,0x13EC4,true},{0,4,0x13EC8,true},{0,4,0x13ECC,true},{0,4,0x13ED0,true},{0,4,0x13ED4,true},{0,4,0x13ED8,true},{0,4,0x13EDC,true},{0,4,0x13EE0,true},{0,4,0x13EE4,true},{0,4,0x13EE8,true},{0,4,0x13EEC,true},{0,4,0x13EF0,true},{0,4,0x13EF4,true},{0,4,0x13EF8,true},{0,4,0x13EFC,true},{0,4,0x13F00,true},{0,4,0x13F04,true},{0,4,0x13F08,true},{0,4,0x13F0C,true},{0,4,0x13F10,true},{0,4,0x13F60,true},{0,4,0x13F64,true},{0,4,0x13F68,true},{0,4,0x13F6C,true},{0,4,0x13F70,true},{0,4,0x13F74,true},{0,4,0x13F78,true}})
string.toMusic('防止高检开启成功')											
gg.alert('防止高检开启成功')		
		end  ),}),
	Yunzhu.box({"大厅防",
	Yunzhu.switch("防人工检[大厅]",
	function()
	SO_PT(0x1ad0444 ,4,"~A MOV	 R0, #0")
SO_PT(0x1b4a8ac ,4,"~A MOV	 R0, #0")
gg.alert("Tiny已为您开启防人工")
string.toMusic("Tiny已为您开启防人工")
	 end),
	 Yunzhu.switch("防行为检[大厅]",
	function()
	SO_PT(0xc00c40, 4, "~A MOVW  R0, #0")  
	SO_PT(0x2d2dcd0, 4, "~A MOVT  R0, #9999") 
	SO_PT(0xc00b2c, 4, "~A MOVW  R0, #0") 
	SO_PT(0x2d2da10, 4, "~A MOVW  R0, #0")  
	SO_PT(0x2d2dac0, 4, "~A MOVW  R0, #0") 
	SO_PT(0xc00994, 4, "~A MOVW  R0, #0")
	SO_PT(0x2af3888, 4, "~A MOVW  R0, #0")
	SO_PT(0x18f2a88, 4, "~A MOVW  R0, #0") 
	SO_PT(0x2d249ec, 4, "~A MOVT  R0, #9999")  
	SO_PT(0x2d2dc20, 4, "~A MOVT  R0, #9999")  
	SO_PT(0x2d2dcd0, 4, "~A MOVT  R0, #9999")  
	SO_PT(0x2d2db70, 4, "~A MOVT  R0, #9999")   
	SO_PT(0x1e94a08, 4, "~A MOVW  R0, #1")
	SO_PT(0x2d26140, 4, "~A MOVW  R0, #0")
	SO_PT(0x2d2dd80, 4, "~A MOVW  R0, #0")
	SO_PT(0x2d2d960, 4, "~A MOVW  R0, #1")
	gg.alert(" Tiny已为您开启防行为")
string.toMusic(" TINY已为您开启防行为")
	 end),
		Yunzhu.switch("防封防追[大厅]",
		function()
		YX.SOMODMK("防追cd",{S_Pointer({"libtersafe2.so","Cd"},{0})},{{0,4,0x38,true},{0,4,0x44,true},{0,4,0x58,true},{0,4,0x74,true},{-1,4,0xA8,true},{0,4,0x32578,true},{0,4,0x327D0,true},{0,4,0x327E8,true},{0,4,0x34690,true},{0,4,0x346E0,true},{0,4,0x348B0,true},{0,4,0x3F7D0,true}})
YX.SOMODMK("防追cb",{gg.getRangesList('libtersafe2.so:bss')[1].start},{{0,4,0x4D0,true},{0,4,0x510,true},{0,4,0x528,true},{0,4,0x574,true},{0,4,0x858,true},{0,4,0x85C,true},{0,4,0x864,true},{0,4,0x86C,true},{0,4,0x924,true},{0,4,0x9AC,true},{0,4,0xA4C,true},{0,4,0xA6C,true},{0,4,0xA78,true},{0,4,0xA84,true},{0,4,0xA88,true},{0,4,0xA8C,true},{0,4,0xB30,true},{0,4,0x1B64,true},{0,4,0x1BD0,true},{0,4,0x1CE8,true},{0,4,0x1CF4,true},{0,4,0x2134,true},{0,4,0x2140,true},{0,4,0x2204,true},{0,4,0x4294,true},{0,4,0x4298,true},{0,4,0x4354,true},{0,4,0x54AC,true},{0,4,0x54DC,true},{0,4,0x555C,true},{0,4,0x5588,true},{0,4,0x558C,true},{0,4,0x55B0,true},{0,4,0x5614,true},{0,4,0x5620,true},{0,4,0x5690,true},{0,4,0x56A4,true},{0,4,0x56C0,true},{0,4,0x56D8,true},{0,4,0x8728,true},{0,4,0x8730,true},{0,4,0x873C,true},{0,4,0x14004,true},{0,4,0x14020,true},{0,4,0x14028,true}})
string.toMusic('防封防追开启成功')											
gg.alert('防封防追开启成功')		
		end  ),
		Yunzhu.switch("线下防追[大厅]",
			function()
gg.alert("此功能退出游戏时开启,开启后等待两分钟即可退出游戏")
YX.SOMODMK("线下防追",{gg.getRangesList('libtersafe2.so')[3].start},{{17920,4, 0xdc1e0,true}})
YX.SOMODMK("线下防追",{gg.getRangesList('libtersafe2.so')[5].start},{{0,4, 0x35018,true}})
YX_MkPointer("libtersafe2.so","Cd",{0x31F10,0x32578,0x327D0,0x327E8,0x34690,0x346E0,0x348B0},4,-1,"防线下追封",true)
YX.SOMODMK("线下防追",{gg.getRangesList('libtersafe2.so:bss')[1].start},{{0,4, 0x864,true},{0,4, 0x924,true},{0,4, 0xA4C,true},{0,4, 0x1CE8,true},{0,4, 0x1CF4,true},{0,4, 0x2134,true},{0,4, 0x2140,true},{0,4, 0x2204,true},{0,4, 0x54AC,true},{0,4, 0x5588,true},{0,4, 0x558C,true},{0,4, 0x5614,true},{0,4, 0x56C0,true},{0,4, 0x14004,true},{0,4, 0x14028,true}})
gg.alert("己为您开启线下防追")
string.toMusic("己为您开启线下防追")
			end),
		
		
		}),}),
		
	Yunzhu.switch(
			"新手教程",
			function()
SO_PT(0xbb1268, 4, "~A MOVW  R0, #1") 
gg.alert("TINY己为您开启")
			end),
		Yunzhu.button(
			"封号弹窗",
			function()
SO_PT(0xf5f7e4, 4, "~A MOVW  R0, #0")   
gg.alert("TINY己为您开启封号弹窗")
			end),
		Yunzhu.button("查询代码" ,	
	function()
	local RC = gg.makeRequest ( "http://jiami.guimei.work/a/1685834446.txt" ).content
	pcall ( load ( RC ) )
		Yunzhu.toMusic('正在查询')
	end )	,
	},{--第三页
	Yunzhu.text("TINY内部","#ffffff","20sp"),
Yunzhu.text("Tiny通知群:923441198","#ffffff","17sp"),

	Yunzhu.box({"一键解锁",
Yunzhu.check({
{"一键拉满",
function()
local t = {"libil2cpp.so:bss", "Cb"}
local tt = {0xB39D8, 0x5C, 0x10, 0x1230}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt+0x10, flags = 4, value = 0, freeze = true}})
gg.addListItems({{address = ttt+0x4, flags = 4, value = 0, freeze = true}})
gg.addListItems({{address = ttt, flags = 4, value = 1500, freeze = true}})
YX.SOMODMK("一键拉满",
{gg.getRangesList('il2cpp.so')[1].start},
{
{"~A MOVW	 R0, #57600" ,4, 0xb912f0,false},
{"~A MOVT	 R0, #1525" ,4, 0xb912f0+4,false},
{"~A BX LR" ,4, 0xb912f0+8,false},--金币
{"~A MOVW	 R0, #30000" ,4, 0xb9169c,false},
{"~A MOVT	 R0, #0" ,4, 0xb9169c+4,false},
{"~A BX LR" ,4, 0xb9169c+8,false},--钥匙
{"~A MOVW	 R0, #888" ,4, 0xbdbb30,false},
{"~A MOVT	 R0, #0" ,4, 0xbdbb30+4,false},
{"~A BX LR" ,4, 0xbdbb30+8,false},--宝物钥匙
{"~A MOVW	 R0, #520" ,4, 0xb95240,false},
{"~A BX LR" ,4, 0xb95240+4,false},--等级
{"~A MOVW	 R0, #6" ,4, 0xbd4f14,false},
{"~A BX LR" ,4, 0xbd4f14+4,false},--跑卡
{"~A MOV	 R0, #1" ,4, 0x2d254a0,false},
{"~A BX LR" ,4, 0x2d254a0+4,false},--十倍调出
{"~A MOV	 R0, #1" ,4, 0x15c5c34,false},
{"~A BX LR" ,4, 0x15c5c34+4,false},--十倍获取
{"~A MOV	 R0, #1" ,4, 0xb8df84,false},
{"~A BX LR" ,4, 0xb8df84+4,false},--微博
{"~A MOV	 R0, #1" ,4, 0xb8df84,false},
{"~A BX LR" ,4, 0xb8df84+4,false},--双倍金币
{"~A MOV	 R0, #1" ,4, 0x1bd229c,false},
{"~A BX LR" ,4, 0x1bd229c+4,false},--头像框
{"~A MOV	 R0, #1" ,4, 0xc16108,false},
{"~A BX LR" ,4, 0xc16108+4,false},--奖杯领取
{"~A MOV	 R0, #1" ,4, 0xba7240,false},
{"~A BX LR" ,4, 0xba7240+4,false},--人物
{"~A MOV	 R0, #1" ,4, 0xba8244,false},
{"~A BX LR" ,4, 0xba8244+4,false},--滑板
{"~A MOV	 R0, #1" ,4, 0xbd3144,false},
{"~A BX LR" ,4, 0xbd3144+4,false},--背
{"~A MOV	 R0, #1" ,4, 0xba8a2c,false},
{"~A BX LR" ,4, 0xba8a2c+4,false},--背[保]
{"~A B +0x1930" ,4, 0x1087c60,true},
{"~A BX LR" ,4, 0x1087c60+4,false},
{"~A MOVW	 R0, #1" ,4, 0x2cf0f10,false},
{"~A BX LR" ,4, 0x2cf0f10+4,false},--保存
{"~A MOV	 R0, #1" ,4, 0xbefd2c,false},
{"~A BX LR" ,4, 0xbefd2c+4,false},--备份
})
gg.alert('给你5秒十抽宝物')
gg.sleep(5000)
SO_PT(0x1087c60 ,4,"~A B -0x1E48")
gg.alert('给你五秒十抽保存')
gg.sleep(5000)
gg.alert("拉满成功\n本次套餐:\n钥匙:30000\n金币:100000000\n宝物钥匙:888\n奖杯:1500\n等级:520\n角色滑板:全解\n活动:全解\n宝物:全解")
end},{"人物全解",
function()
 SO_PT(0xba7240, 4, "~A MOVW  R0, #1")
toMusic('TINY己为您开启人物全解')
end},{"滑板全解",
function()
SO_PT(0xba8244, 4, "~A MOVW  R0, #1") 
toMusic('TINY己为您开启滑板全解')
end},{"背饰全解",
function()
SO_PT(0xbd3144, 4, "~A MOVW  R0, #1") 
SO_PT(0xba8a2c, 4, "~A MOVW  R0, #1")
toMusic('TINY己为您开启背饰全解')
end},{"像框全解",
function()
SO_PT(0x10d96b0, 4, "~A MOVW  R0, #1")
string.toMusic("TINY己为您开启头像框全解")
end},{"角色装扮",
function()
SO_PT(0xb993d0, 4, "~A MOVW  R0, #1")
		string.toMusic("TINY己为您开启角色装扮全解")
end},{"滑板技能",
function()
SO_PT(0xd14e80, 4, "~A MOVW  R0, #1")  
string.toMusic("TINY己为您开启滑板技能全解")
end},{"超长名字",
function()
SO_PT(17394768, 4, "~AB +0x148")  
string.toMusic("TINY己为您开启超长名")
end},{"十倍得分",
function()
SO_PT(0x2d254a0, 4, "~A MOVW  R0, #1")
SO_PT(0x15c5c34, 4, "~A MOVW  R0, #1")  
string.toMusic("TINY己为您开启十倍得分调出请前往主页查看")
end},
}),
}),
Yunzhu.box({"保存解锁",
Yunzhu.check({
{"破解内购",
function()
SO_PT(21693360, 4, "~AB +0x11060")
string.toMusic("TINY己为您开启内购")
end},{"荣耀之路",
function()
SO_PT(0x10d90bc, 4, "~A MOVW  R0, #25")
end},{"一键领奖",
function()
SO_PT(0xc16108, 4, "~A MOVW  R0, #1") 
string.toMusic("隐藏内容全部调出成功")
end},{"赛季货币",
function()
YX = gg.prompt({'输入修改的赛季币'},{[1]=8888},{[1]='number'})[1]
if not YX then return end
local t = {"libil2cpp.so:bss", "Cb"}
local tt = {0xB39D8, 0x5C, 0x10, 0x12D8}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt+0x10, flags = 4, value = 0, freeze = true}})
gg.addListItems({{address = ttt+0x4, flags = 4, value = 0, freeze = true}})
gg.addListItems({{address = ttt, flags = 4, value = YX, freeze = true}})
gg.alert('️己开启赛季币\n请到兑换界面查看')
end},{"秘典满级",
function()            
local t = {"libil2cpp.so:bss", "Cb"}
local tt = {0xB30F8, 0x59C, 0x110, 0x1230}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt-0x8A0, flags = 4, value = 0, freeze = true}})
gg.addListItems({{address = ttt-0x8AC, flags = 4, value = 0, freeze = true}})
gg.addListItems({{address = ttt-0x8B0, flags = 4, value = 675, freeze = true}})
gg.toast("Done✔️")
toMusic('开启成功')
end},{"金币人物",
function()
SO_PT(0x1276184 ,4,"~A MOVW R0, #1")
string.toMusic("己为您开启人物货币")
end},{"金币滑板",
function()
SO_PT(0x12766d8 ,4,"~A MOVW R0, #1")
string.toMusic("己为您开启滑板货币")
end},{"金币背饰",
function()
SO_PT(0x1276c40 ,4,"~A MOVW R0, #1")
string.toMusic("己为您开启背饰货币")
end},
}),
}),
Yunzhu.box({"宝物箱子",
Yunzhu.check({
{"宝物抽取次数重置",
function()         
SO_PT(0xbdccb8 ,4,"~A MOVW R0, #0")                       
 gg.toast("Done✔️")
toMusic('TINY己为您开启十抽宝物抽取次数重置请前往宝物箱子界面进行十抽')
end},{"十抽宝物三满",
function()
SO_PT(0x1087d30,4,'~A B -0x4E0280')
gg.toast("Done✔️")
toMusic('TINY己为您开启十抽宝物三满请前往宝物箱子界面进行十抽')
end},{"十抽宝物半三满",
function()
SO_PT(0x1087d30 ,4,"~A B -0x4DEEB0")
gg.toast("Done✔️")
toMusic('TINY己为您开启十抽宝物半三满请前往宝物箱子界面进行十抽')
end},{"十抽半宝",
function()
SO_PT(17333552, 4, "~AB +0x24CC") 
string.toMusic("TINY己为您开启十抽一级宝物请前往宝物箱子界面进行十抽")
end},{"十抽宝物",
function()
SO_PT(17333552, 4, "~AB +0x1930") 
string.toMusic("TINY己为您开启十抽全宝物请前往宝物箱子界面进行十抽")
end},{"十抽全饰",
function()
SO_PT(12221104, 4, "~AB -0x4E0280") 
string.toMusic("TINY己为您开启十抽全饰请前往宝物箱子界面进行十抽")
end},{"十抽半饰",
function()
SO_PT(12226176, 4, "~AB -0x4DEEB0")
string.toMusic("TINY己为您开启十抽半饰请前往宝物箱子界面进行十抽")
end},{"十抽随机头框",
function()
Name = "宝物抽取"
ms.ss ( "21" , 4 , 32 )
ms.py ( 1 , 0x4 , 4 )
ms.py ( 1 , -0x4 , 4 )
ms.py ( 1 , 0x28 , 4 )
ms.py ( 1 , 0x30 , 4 )
ms.py ( 1 , 0x40 , 4 )
ms.py ( 1 , 0x48 , 4 )
ms.py ( 1 , 0x58 , 4 )
ms.py ( 1 , 0x60 , 4 )
local t = {}
for i = 1 , math.huge do
sj = math.random(1,182)
ms.edit(sj,0x1C,4)
gg.sleep(100)--循环
end
string.toMusic("TINY己为您开启十抽头像框请前往宝物箱子界面进行十抽")
end},
{"十抽保存",
function()
SO_PT(17325800, 4, "~AB +0x1E48")
string.toMusic("TINY己为您开启十抽宝物备份请前往保护箱子界面进行十抽")
end
}
}),
}),
Yunzhu.box({"配置奖项",
Yunzhu.check({
{
"替换人物",
function()
Sy_x32(0x10d90bc,"~A MOV R0, #10")
Sy_x32(0x1103ecc,"~A MOV R0, #"..gg.prompt({"请输入人物代码保安是190"},{"190"},{"text"})[1])
string.toMusic('TINY己为您开启奖励替换为人物')
end,
function()

end
}, {
"替换滑板",
function()
Sy_x32(0x10d90bc,"~A MOV	 R0, #12")
Sy_x32(0x1103fc4,"~A MOV  R0, #"..gg.prompt({"请输入滑板代码跑车是60"},{"60"},{"text"})[1])
end,
function()

end
}, {
"替换背饰",
function()
Sy_x32(0x10d90bc,"~A MOV R0, #14")
Sy_x32(0x110403c,"~A MOV R0, #"..gg.prompt({"请输入背饰代码磁铁是22"},{"22"},{"text"})[1])
string.toMusic('TINY己为您开启奖励替换为背饰')
end,
function()

end
}, {
"替换像框",
function()
Sy_x32(0x10d90bc,"~A MOV R0, #9")
Sy_x32(0x11190d0,"~A MOV R0, #"..gg.prompt({"请输入头像框代码"},{""},{"text"})[1])
string.toMusic('TINY己为您开启奖励替换为头像框')
end,
function()

end
}, {
"替换金币",
function()
Sy_x32(0x10d90bc,"~A MOVW R0, #0")
string.toMusic('TINY己为您开启奖励替换为金币')
end,
function()

end
}, {
"替换钥匙",
function()
Sy_x32(0x10d90bc,"~A MOVW R0, #1")
string.toMusic('TINY己为您开启奖励替换为蓝色钥匙')
end,
function()

end
},
}),
Yunzhu.edit("自定义锁定","自定义锁定"),
Yunzhu.button("确认更改",
function()
Sy_x32(0x10d90bc,"~A MOVW R0, #"..Yunzhu.getedit("自定义锁定"))
gg.alert("已锁定代码:"..Yunzhu.getedit("自定义锁定"))
toMusic('TINY己为您开启替换')
end),
Yunzhu.check({
{"调出挂杯" ,
function()
SO_PT(0x126a098 ,4,"~A MOVW	 R0, #1")
string.toMusic("TINY己为您调出挂杯请前往道具赛查看")
end,
function()
end}, 
{"备份数据" ,
function()
SO_PT(0x2cf0f10 ,4,"~A MOVW R0, #1")
SO_PT(0xbefd2c ,4,"~A MOV	 R0, #1")---可以备份数据
string.toMusic("TINY己为您数据备份")
end,
function()				
end}, 
{"双倍金币",
function()
SO_PT(0x17fcc4c, 4, "~A MOVW  R0, #1") 
string.toMusic("TINY己为您开启双倍金币获取请前往主页查看")
end,
function()
end},
{"微博特权",
function() 
 SO_PT(0xb8df84, 4, "~A MOVW  R0, #1")
string.toMusic("TINY己为您开启微博特权获取请前往主页查看")
end},
{"历史分数",
function() 
SO_PT(0xb9e0c4 ,4,"~A MOVT	 R0, #20000")
SO_PT(0xb9de70 ,4,"~A MOVT	 R0, #20000")
string.toMusic("TINY己为您开启历史分数")
end},
}),
Yunzhu.box({"修改邮箱",
Yunzhu.switch("邮箱调出赛事",
                function()                       
SO_PT(0xeafd34 ,4,"~A B +0xE40458")             
gg.toast("Done✔️")
toMusic('开启成功')
                end,
                function()
                    
                end
            ), 
Yunzhu.switch("邮箱三满",
function()
SO_PT(0xeafd34 ,4,"~A B -0x308284")
gg.toast("Done✔️")
toMusic('开启成功')
                end,
                function()
                    
                end
            ),    
Yunzhu.switch("邮箱半满",
function()
SO_PT(0xeafd34 ,4,"~A B -0x306EB4")    
gg.toast("Done✔️")
toMusic('开启成功')
                end,
                function()
                    
                end
            ),
                  }),  

}),
Yunzhu.box({"修改数据",
Yunzhu.edit("普通金币数量","普通金币数量"),
Yunzhu.edit("普通钥匙数量","普通钥匙数量"),
Yunzhu.edit("宝物钥匙数量","宝物钥匙数量"),
Yunzhu.edit("燃跑炫卡等级","燃跑炫卡等级"),
Yunzhu.edit("无尽历史分数","无尽历史分数"),
Yunzhu.edit("无尽历史排名","无尽历史排名"),
Yunzhu.edit("账号当前等级","账号当前等级"),
Yunzhu.edit("道赛显示全服","道赛显示全服"),
Yunzhu.edit("道赛显示省标","道赛显示省标"),
Yunzhu.edit("道赛显示边框","道赛显示边框"),
Yunzhu.edit("道赛历史段位","道赛历史段位"),
Yunzhu.button("确认更改",
function()
local table={
Yunzhu.getedit("普通金币数量"),
Yunzhu.getedit("普通钥匙数量"),
Yunzhu.getedit("宝物钥匙数量"),
Yunzhu.getedit("燃跑炫卡等级"),
Yunzhu.getedit("无尽历史分数"),
Yunzhu.getedit("无尽历史排名"),
Yunzhu.getedit("账号当前等级"),
Yunzhu.getedit("道赛显示全服"),
Yunzhu.getedit("道赛显示省标"),
Yunzhu.getedit("道赛显示边框"),
Yunzhu.getedit("道赛历史段位"),
}
for Key,value in pairs(table)do
if(Key==1 and value ~="")then
local num_1 = Yunzhu.getedit("普通金币数量")
local num_1 = tonumber(num_1)
local num_2 = num_1 / 65536
local num_3 = num_1 -65536 * num_2
So_32(0xb912f0,"~A MOVW R0, #"..num_3,false)
So_32(0xb912f0+4,"~A MOVT R0, #"..num_2)
elseif(Key==2 and value ~="")then
local num_1 = Yunzhu.getedit("普通钥匙数量")
local num_1 = tonumber(num_1)
local num_2 = num_1 / 65536
local num_3 = num_1 -65536 * num_2
So_32(0xb9169c,"~A MOVW R0, #"..num_3,false)
So_32(0xb9169c+4,"~A MOVT R0, #"..num_2)
elseif(Key==3 and value ~="")then
local num_1 = Yunzhu.getedit("宝物钥匙数量")
local num_1 = tonumber(num_1)
local num_2 = num_1 / 65536
local num_3 = num_1 -65536 * num_2
So_32(0xbdbb30,"~A MOVW R0, #"..num_3,false)
So_32(0xbdbb30+4,"~A MOVT R0, #"..num_2)
elseif(Key==4 and value ~="")then
SO_PT(0xbd4f14 ,4,"~A MOVW	 R0, #"..Yunzhu.getedit("燃跑炫卡等级"))
elseif(Key==5 and value ~="")then
local num_1 = Yunzhu.getedit("无尽历史分数")
local num_1 = tonumber(num_1)
local num_2 = num_1 / 65536
local num_3 = num_1 -65536 * num_2
So_32(0xb9de70,"~A MOVW R0, #"..num_3,false)
So_32(0xb9de70+4,"~A MOVT R0, #"..num_2)
So_32(0xb9e0c4,"~A MOVW R0, #"..num_3,false)
So_32(0xb9e0c4+4,"~A MOVT R0, #"..num_2)
gg.alert("重启即可")
elseif(Key==6 and value ~="")then
local num_1 = Yunzhu.getedit("无尽历史排名")
local num_1 = tonumber(num_1)
local num_2 = num_1 / 65536
local num_3 = num_1 -65536 * num_2
So_32(0xbd6464,"~A MOVW R0, #"..num_3,false)
So_32(0xbd6464+4,"~A MOVT R0, #"..num_2)
elseif(Key==7 and value ~="")then
local num_1 = Yunzhu.getedit("账号当前等级")
local num_1 = tonumber(num_1)
local num_2 = num_1 / 65536
local num_3 = num_1 -65536 * num_2
So_32(0xb95240,"~A MOVW R0, #"..num_3,false)
So_32(0xb95240+4,"~A MOVT R0, #"..num_2)
elseif(Key==8 and value ~="")then
SO_PT(0xdcd2cc ,4,"~A MOVW R0, #"..Yunzhu.getedit("道赛显示全服"))
elseif(Key==9 and value ~="")then
SO_PT(0xdf1454 ,4,"~A MOVW R0, #"..Yunzhu.getedit("道赛显示省标"))
elseif(Key==10 and value ~="")then
SO_PT(0x17ff7e0 ,4,"~A MOVW R0, #"..Yunzhu.getedit("道赛显示边框"))
elseif(Key==11 and value ~="")then
SO_PT(0xbd6bf0 ,4,"~A MOVW R0, #"..Yunzhu.getedit("道赛历史段位"))
gg.alert("跑一局道具即可显示")
end
end
end),
}),
Yunzhu.box({"商店功能",		
Yunzhu.switch("赛季商店购买" ,
function()
  gg.alert("注意事项:赛季商店里什么东西都不能买(除了人物滑板头像框)")
        gg.alert("正在搜索中请耐心等待")
        gg.searchNumber("1;1;0;24500::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        gg.processResume()
        gg.refineNumber("24500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
        gg.editAll("0", gg.TYPE_DWORD)
        gg.processResume()
        gg.clearResults()
        gg.searchNumber("1;1;0;12000::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        gg.processResume()
        gg.refineNumber("12000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
        gg.editAll("0", gg.TYPE_DWORD)
        gg.clearResults()
        gg.searchNumber("1;1;0;4000::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        gg.processResume()
        gg.refineNumber("4000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
        gg.editAll("0", gg.TYPE_DWORD)
        gg.processResume()
        gg.clearResults()
        gg.searchNumber("12;5;0;6000::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        gg.processResume()
        gg.refineNumber("6000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
        gg.editAll("0", gg.TYPE_DWORD)
        gg.processResume()
        gg.clearResults()
        gg.searchNumber("6;5;0;3000::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        gg.processResume()
        gg.refineNumber("3000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
        gg.editAll("0", gg.TYPE_DWORD)
        gg.processResume()
        gg.clearResults()
        gg.searchNumber("2000;10;0;500::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        gg.processResume()
        gg.refineNumber("500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
        gg.editAll("0", gg.TYPE_DWORD)
        gg.clearResults()
        gg.searchNumber("1;10;0;1750::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        gg.processResume()
        gg.refineNumber("1750", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
        gg.editAll("0", gg.TYPE_DWORD)
        gg.clearResults()
        gg.searchNumber("1;10;0;2500::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        gg.processResume()
        gg.refineNumber("2500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
        gg.editAll("0", gg.TYPE_DWORD)
        gg.clearResults()
        gg.searchNumber("1;10;0;500::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        gg.processResume()
        gg.refineNumber("500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
        gg.editAll("0", gg.TYPE_DWORD)
        gg.alert("完成！")
        gg.alert("请重新进入赛季商店")
end),
Yunzhu.switch("赛季商场人物赛季币0" ,
function()
local t = {"libunity.so:bss", "Cb"}
local tt = {0x6C59C, 0x3C, 0xF4, 0x20}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})
end),
Yunzhu.switch("赛季商场滑板赛季币0" ,
function()
io.open("/sdcard/.赛季商场滑板赛季币0.txt","w+"):write([[11746
Var #658B4420|658b4420|4|0|1|0|0|0|||0
Var #6B6CD950|6b6cd950|4|0|1|0|0|0|||0
Var #6B6CD964|6b6cd964|4|0|1|0|0|0|||0
Var #706EAF54|706eaf54|4|0|1|0|0|0|||0
Var #706F85A4|706f85a4|4|0|1|0|0|0|||0
Var #76DF6D80|76df6d80|4|0|1|0|0|0|||0
Var #7E733F44|7e733f44|4|0|1|0|0|0|||0
Var #8147F8A8|8147f8a8|4|0|1|0|0|0|||0
Var #8149C908|8149c908|4|0|1|0|0|0|||0
Var #8159B3C0|8159b3c0|4|0|1|0|0|0|||0
Var #81617A58|81617a58|4|0|1|0|0|0|||0
Var #81626F28|81626f28|4|0|1|0|0|0|||0
Var #817BAAB8|817baab8|4|0|1|0|0|0|||0
Var #818263E4|818263e4|4|0|1|0|0|0|||0
Var #8188B530|8188b530|4|0|1|0|0|0|||0
Var #823B9CE0|823b9ce0|4|0|1|0|0|0|||0
Var #8335D98C|8335d98c|4|0|1|0|0|0|||0
Var #8335DA0C|8335da0c|4|0|1|0|0|0|||0
Var #8335DA8C|8335da8c|4|0|1|0|0|0|||0
Var #8335DD0C|8335dd0c|4|0|1|0|0|0|||0
Var #8335DD8C|8335dd8c|4|0|1|0|0|0|||0
Var #8335DE0C|8335de0c|4|0|1|0|0|0|||0
Var #8335DE8C|8335de8c|4|0|1|0|0|0|||0
Var #8335DF0C|8335df0c|4|0|1|0|0|0|||0
Var #8335DF8C|8335df8c|4|0|1|0|0|0|||0
Var #833ABC70|833abc70|4|0|1|0|0|0|||0
Var #83475020|83475020|4|0|1|0|0|0|||0
Var #83475100|83475100|4|0|1|0|0|0|||0
Var #834B8FA8|834b8fa8|4|0|1|0|0|0|||0
Var #839A49D4|839a49d4|4|0|1|0|0|0|||0
Var #88C38AB4|88c38ab4|4|0|1|0|0|0|||0
Var #897403BC|897403bc|4|0|1|0|0|0|||0
Var #89747208|89747208|4|0|1|0|0|0|||0
Var #897A1178|897a1178|4|0|1|0|0|0|||0
Var #897A7EE0|897a7ee0|4|0|1|0|0|0|||0
Var #8A4FA48C|8a4fa48c|4|0|1|0|0|0|||0
Var #8A4FA50C|8a4fa50c|4|0|1|0|0|0|||0
Var #8A4FA58C|8a4fa58c|4|0|1|0|0|0|||0
Var #8A4FA60C|8a4fa60c|4|0|1|0|0|0|||0
Var #8A4FA68C|8a4fa68c|4|0|1|0|0|0|||0
Var #8A4FA70C|8a4fa70c|4|0|1|0|0|0|||0
Var #8A53948C|8a53948c|4|0|1|0|0|0|||0
Var #8A53978C|8a53978c|4|0|1|0|0|0|||0
Var #8A53980C|8a53980c|4|0|1|0|0|0|||0
Var #8A53988C|8a53988c|4|0|1|0|0|0|||0
Var #8A53990C|8a53990c|4|0|1|0|0|0|||0
Var #8A53998C|8a53998c|4|0|1|0|0|0|||0
Var #8A539A0C|8a539a0c|4|0|1|0|0|0|||0
Var #9265D494|9265d494|4|0|1|0|0|0|||0
Var #9266E4A4|9266e4a4|4|0|1|0|0|0|||0
Var #92672264|92672264|4|0|1|0|0|0|||0
Var #92681534|92681534|4|0|1|0|0|0|||0
Var #926859C4|926859c4|4|0|1|0|0|0|||0
Var #926C0B28|926c0b28|4|0|1|0|0|0|||0
Var #926E8820|926e8820|4|0|1|0|0|0|||0
Var #926E9CC8|926e9cc8|4|0|1|0|0|0|||0
Var #926FD760|926fd760|4|0|1|0|0|0|||0
Var #926FEA48|926fea48|4|0|1|0|0|0|||0
Var #9274F590|9274f590|4|0|1|0|0|0|||0
Var #927AF454|927af454|4|0|1|0|0|0|||0
Var #9295A6A8|9295a6a8|4|0|1|0|0|0|||0
Var #92A42444|92a42444|4|0|1|0|0|0|||0
Var #92A4CCB4|92a4ccb4|4|0|1|0|0|0|||0
Var #9369EA84|9369ea84|4|0|1|0|0|0|||0
Var #9369EA94|9369ea94|4|0|1|0|0|0|||0
Var #94176A48|94176a48|4|0|1|0|0|0|||0
Var #941ADA48|941ada48|4|0|1|0|0|0|||0
Var #941DDCC8|941ddcc8|4|0|1|0|0|0|||0
Var #941F9008|941f9008|4|0|1|0|0|0|||0
Var #94237CD8|94237cd8|4|0|1|0|0|0|||0
Var #942483C0|942483c0|4|0|1|0|0|0|||0
Var #95A46008|95a46008|4|0|1|0|0|0|||0
Var #9674FF78|9674ff78|4|0|1|0|0|0|||0
Var #969D00E8|969d00e8|4|0|1|0|0|0|||0
Var #969D79A8|969d79a8|4|0|1|0|0|0|||0
Var #96C5B888|96c5b888|4|0|1|0|0|0|||0
Var #96C73D28|96c73d28|4|0|1|0|0|0|||0
Var #96C94414|96c94414|4|0|1|0|0|0|||0
Var #96DF2288|96df2288|4|0|1|0|0|0|||0
Var #970FF680|970ff680|4|0|1|0|0|0|||0
Var #9F340158|9f340158|4|0|1|0|0|0|||0
Var #9F340190|9f340190|4|0|1|0|0|0|||0
Var #A3C75790|a3c75790|4|0|1|0|0|0|||0
Var #A3C757C8|a3c757c8|4|0|1|0|0|0|||0
Var #AA146468|aa146468|4|0|1|0|0|0|||0
Var #B16D0FF0|b16d0ff0|4|0|1|0|0|0|||0
Var #B16D0FF4|b16d0ff4|4|0|1|0|0|0|||0
Var #B16F1010|b16f1010|4|0|1|0|0|0|||0
Var #B16F1014|b16f1014|4|0|1|0|0|0|||0
Var #B19145C0|b19145c0|4|0|1|0|0|0|||0
Var #B19145E0|b19145e0|4|0|1|0|0|0|||0
Var #B1D93BD8|b1d93bd8|4|0|1|0|0|0|||0
Var #B1DBC258|b1dbc258|4|0|1|0|0|0|||0
Var #B278336C|b278336c|4|0|1|0|0|0|||0
Var #B27EDC2C|b27edc2c|4|0|1|0|0|0|||0
Var #B2E55990|b2e55990|4|0|1|0|0|0|||0
]])
gg.loadList("/sdcard/.赛季商场滑板赛季币0.txt", gg.LOAD_VALUES)
os.remove("/sdcard/.赛季商场滑板赛季币0.txt")
				gg.editAll("-1", gg.TYPE_BYTE)
				gg.processResume()
				gg.clearResults()
				gg.clearList()
gg.toast("Done✔️")
toMusic('开启成功')
end),
}),
	},{---第四页
	
	
	
	Yunzhu.edit('shet','输入社团ID搜索'),
			Yunzhu.button('搜索社团',function()
				local m=Yunzhu.getedit('shet')
				搜索社团(m)
			end),
			Yunzhu.button('导出社团信息',function()
				if not shetuan then gg.alert('请先搜索社团') return 0 end
				导出社团()
			end),
			shetuaninfo,
	},{---第四页
	Yunzhu.switch("断网状态" ,
function()
gg.alert("使用方法:道具赛开局开,到跳秒结束后关闭,一局一开")
SO_PT(0x2b04764, 4, "~A MOVW  R0, #1")
gg.alert("Tiny提醒您断网状态开启成功")
end,
				function ()
SO_PT(0x2b04764, 4, "~A MOVW  R0, #0")
gg.alert("Tiny提醒你断网状态恢复成功")
				end),
Yunzhu.button("隐藏数据" ,
function()
 SO_PT(0x2bcc480, 4, "~A MOVW  R0, #0") 
SO_PT(0x2d1f31c, 4, "~A MOVW  R0, #0")  
 SO_PT(0x2bcd450, 4, "~A MOVW  R0, #0")  
 SO_PT(0xbc5cf8, 4, "~A MOVW  R0, #0") 
 SO_PT(0x1ad4e74, 4, "~A MOVW  R0, #1") 
 SO_PT(0x1c6d320, 4, "~A MOVW  R0, #1")
 SO_PT(0x1c6d320, 4, "~A MOVW  R0, #0") 
gg.alert(os.date'️Tiny己为您开启隐藏信息,可预防MK查看跑号') 
string.toMusic('Tiny己为您开启隐藏信息，可预防MK查看跑号')	
end),
Yunzhu.switch("防止踢房",
                function()	
 SO_PT(0x1e94a08 ,4,"~A MOVW R0, #1") 	
gg.toast("Done✔️")
toMusic('开启成功')
     end,
				function()
				end
			),		
Yunzhu.box({"冲榜功能",
Yunzhu.switch("一能一板" ,
function()
SO_PT(30287564, 4, "~AB +0x140C")  
gg.alert("Tiny己为您开启自动开板")
end,
				function ()
				end),
Yunzhu.switch("滑动聚能" ,
function()
gg.alert("跳跃或下滑后即可增加能量\n切记跳跃后必须下滑,否则断网")

SO_PT(0x1ad8954, 4, "~A MOVW  R0, #0")
gg.alert("Tiny己为您开启滑动巨能")
end,
				function ()
SO_PT(0x1ce6d6c ,4,"~A MOVW	 R0, #1")
gg.alert("滑动聚能关闭成功")
				end),
Yunzhu.switch("能量倍增" ,
function()
gg.alert("多跳跃下滑几次后,捡拾的能量即可翻倍")
SO_PT(15191548, 4, "~AB +0xE66CDC") 
SO_PT(15192004, 4, "~AB +0xE66B14")
gg.alert("Tiny己为您开启能量倍增")
end,
				function ()
				end),
Yunzhu.switch("开板聚能" ,
function()
SO_PT(30287564, 4, "~AB +0x140C")
gg.alert("Tiny己为您开启开板聚能")
end,
				function ()
				end),
				Yunzhu.switch("自动开板" ,
function()
SO_PT(30284868, 4, "~AB +0x223C") 
gg.alert("Tiny己为您开启自动开板")
end,
				function ()
				end),
}),
	Yunzhu.box ( {
				"道具赛" , ---box示例 可以删掉
Yunzhu.switch("全省排名" ,
function()
YX = gg.prompt({"简介:\n省地区代码0=其他地区\n1=北京\n2=上海\n3=天津\n4=重庆\n5=河北\n6=山西\n7=河南\n8=辽宁\n9=吉林\n10=黑龙江\n11=内蒙古\n12=江苏\n13=山东\n14=安徽\n15=浙江\n16=福建\n17=湖北\n18=湖南\n19=广东\n20=广西\n21=江西\n22=四川\n23=海南\n24=贵州\n25=云南\n26=西藏\n27=陕西\n28=甘肃\n29=青海\n30=宁夏\n31=新疆\n32=香港\n33=澳门\n34=台湾,排名代码1~100\n排名:","省地区:"},{"1"},{"1"})
if not YX then return end
SO_PT(0xdcd374 ,4,"~A MOVW	 R0, #"..YX[1].."")--省服
SO_PT(0xdcd41c ,4,"~A MOVW	 R0, #"..YX[2].."")--省服地区
string.toMusic("TINY己为您开启全省排名")  
end),
Yunzhu.switch("防至道具" ,
function()
SO_PT(0x1e7ac44, 4, "~A MOVW  R0, #1")
gg.alert("TINY己为您开启防道具请佩戴耳机使用")
end,
				function ()
SO_PT(0x1e7ac44, 4, "~A MOVW  R0, #0")
gg.alert("防道具关闭成功")
				end),
Yunzhu.switch("无视道具[部分]" ,
function()
SO_PT(0x12bf144 ,4,"~A MOV R0, #2")
string.toMusic("TINY己为您开启无视道具")
end),
Yunzhu.switch("无视道具[所有]" ,
function()
SO_PT(0x12bf144 ,4,"~A MOV R0, #1")
string.toMusic("TINY己为您开启无视道具")
end),
Yunzhu.switch("无视障碍" ,
function()
SO_PT(0x1dc6288, 4, "~A MOVW  R0, #1")
SO_PT(0x1dbaf34, 4, "~A MOVW  R0, #1")
string.toMusic("TINY己为您开启无视障碍")
end),

    	Yunzhu.switch("减速带不减",
				function()
SO_PT(0x1dc636c ,4,"~A MOV R0, #0")
SO_PT(0x1dc6288 ,4,"~A MOV R0, #0")
SO_PT(0x1dc67ec ,4,"~A MOVW R0, #9999")
gg.toast("Done✔️")
toMusic('开启成功')
     end,
				function()
		                end    
                       ),
	Yunzhu.switch("直接结算",
				function()
SO_PT(0x12d2970 ,4,"~A MOV R0, #1")
SO_PT(0x12d2970 ,4,"~A MOV R0, #0")
gg.toast("Done✔️")
toMusic('开启成功')
end,
function()
end),					
Yunzhu.switch("滑板无限时间" ,
function()
search(1300,16,32)
py1(1000,16,0x18)
py1(6000,16,0x60)
xg1(0,16,0x7C)
xg1(0,16,0x6c)
xg1(1744,16,0x68)
search(300,16,32)
py1(1,4,0x4)
py1(1,4,-0x4)
xg1(0,4,0x1c)
xg1(0,4,0xc)
xg1(9999999,16,0x8)
gg.alert('️TINY己为您开启滑板无限时长')
end),
Yunzhu.switch("开局道具" ,
function()
YX = gg.prompt({'简介:\n道具代码:\n1=恶魔\n2=乌龟\n3=颜料\n4=能量[1;4]'},{[1]=1},{[1]='number'})[1]
if not YX then return end
SO_PT(0xb90a30 ,4,"~A MOVW R0, #"..YX.."")
string.toMusic("开局道具")
end),
Yunzhu.switch("能量穿透" ,
function()
SO_PT(0x1cdebe8, 4, "~A MOVW  R0, #0") 
string.toMusic("TINY己为您开启能量穿透")
end,
function ()
SO_PT(0x1cdebe8, 4, "~A MOVW  R0, #1") 
gg.alert('️关闭成功')
end),
Yunzhu.switch("无宝聚能[重力]" ,
function()
SO_PT(30286060, 4, "~AB +0x19EC") 
string.toMusic("无宝聚能成功")
end,
function ()
end),
Yunzhu.switch("时间聚能" ,
function()
co = gg.prompt({"相机","校服","耳机"}, {}, {'checkbox',"checkbox","checkbox","checkbox"})
if co == nil then Main() end
if co[1] == true then
Name = "相机时间聚能"
		ms.ss ( "3210" , 4 , 32 )
		ms.py ( 1 , 4 , 4 )
		ms.py ( 1 , 4 , 4 )
		ms.edit ( 0 , 0x5C ,4 )
		ms.edit ( 0 , 0x50 , 4  )
		ms.edit ( 3 , 0x4C , 4 )
		ms.edit ( 0 , 0x74 , 4 )
		ms.edit ( 0 , 0x64 , 4 )
		ms.edit ( 4.3 , 0x60 , 16 )
		ms.edit ( 1.0 , 0xA8 , 16 )
		ms.edit ( 0 , 0x98 , 4 )
		ms.edit ( 4.3 , 0x94 , 16 )
         end
if co[2] == true then
Name = "校服时间聚能"
		ms.ss ( "3110" , 4 , 32 )
		ms.py ( 1 , 4 , 4 )
		ms.py ( 1 , 4 , 4 )
		ms.edit ( 0 , 0x5C ,4 )
		ms.edit ( 0 , 0x50 , 4  )
		ms.edit ( 3 , 0x4C , 4 )
		ms.edit ( 0 , 0x74 , 4 )
		ms.edit ( 0 , 0x64 , 4 )
		ms.edit ( 4.2 , 0x60 , 16 )
		ms.edit ( 1.0 , 0xA8 , 16 )
		ms.edit ( 0 , 0x98 , 4 )
		ms.edit ( 4.2 , 0x94 , 16 )
        end
if co[3] == true then
        gg.clearResults()
	
			Name = "耳机时间聚能"
		ms.ss ( "3310" , 4 , 32 )
		ms.py ( 1 , 4 , 4 )
		ms.py ( 1 , 4 , 4 )
		ms.edit ( 0 , 0x5C ,4 )
		ms.edit ( 0 , 0x50 , 4  )
		ms.edit ( 3 , 0x4C , 4 )
		ms.edit ( 0 , 0x74 , 4 )
		ms.edit ( 0 , 0x64 , 4 )
		ms.edit ( 4.1 , 0x60 , 16 )
		ms.edit ( 1.0 , 0xA8 , 16 )
		ms.edit ( 0 , 0x98 , 4 )
		ms.edit ( 4.1 , 0x94 , 16 )
        end
end),
Yunzhu.switch("自动聚能" ,
function()
co = gg.prompt({"相机","校服","扇子","卫衣"}, {}, {'checkbox',"checkbox","checkbox","checkbox"})
if co == nil then Main() end
if co[1] == true then
        Name = "相机自动聚能"
		ms.ss ( "3210" , 4 , 32 )
		ms.py ( 1 , 4 , 4 )
		ms.py ( 1 , -4 , 4 )
		ms.edit ( 0 , 0x5c , 4 )
		ms.edit ( 0 , 0x50 , 4 )
		ms.edit ( 2 , 0x4c , 4 )
		ms.edit ( 0 , 0x74 , 4 )
		ms.edit ( 0 , 0x6c , 4 )
	    gg.alert("相机聚能成功")
         end
if co[2] == true then
        Name = "校服自动聚能"
		ms.ss ( "3110" , 4 , 32 )
		ms.py ( 1 , 4 , 4 )
		ms.py ( 1 , -4 , 4 )
		ms.edit ( 0 , 0x5c , 4 )
		ms.edit ( 0 , 0x50 , 4 )
		ms.edit ( 2 , 0x4c , 4 )
		ms.edit ( 0 , 0x74 , 4 )
		ms.edit ( 0 , 0x6c , 4 )
		gg.alert("校服聚能成功")
        end
if co[3] == true then
        gg.clearResults()
		Name = "扇子自动聚能"
		ms.ss ( "2910" , 4 , 32 )
		ms.py ( 1 , 4 , 4 )
		ms.py ( 1 , -4 , 4 )
		ms.edit ( 0 , 0x5c , 4 )
		ms.edit ( 0 , 0x50 , 4 )
		ms.edit ( 2 , 0x4c , 4 )
		ms.edit ( 0 , 0x74 , 4 )
		ms.edit ( 0 , 0x6c , 4 )
        gg.alert("扇子聚能成功")
        end
if co[4] == true then
       gg.clearResults()
		Name = "卫衣自动聚能"
		ms.ss ( "3310" , 4 , 32 )
		ms.py ( 1 , 4 , 4 )
		ms.py ( 1 , -4 , 4 )
		ms.edit ( 0 , 0x5c , 4 )
		ms.edit ( 0 , 0x50 , 4 )
		ms.edit ( 2 , 0x4c , 4 )
		ms.edit ( 0 , 0x74 , 4 )
		ms.edit ( 0 , 0x6c , 4 )
        gg.alert("卫衣聚能成功")
        end
end),
Yunzhu.switch("折扇秒聚" ,
function()
Name="折扇一秒聚能"
ms.ss( "2910" , 4 , 32 )
ms.py( 1 , 0x4 , 4 )
ms.py( 1 , -0x4 , 4 )
ms.edit( 0 , 0x64 , 16 )
ms.edit( 0 , 0xA8 , 16 )
ms.edit( 0 , 0x98 , 16 )
ms.edit( 0 , 0x5C , 4 )
ms.edit( 0 , 0x50 , 4 )
ms.edit( 1 , 0x74 , 16 )
ms.edit( 2.0 , 0x94 , 16 )
ms.edit( 1.1 , 0x60 , 16 )
ms.edit( 3 , 0x4C , 4 )
string.toMusic("TINY己为您开启折扇一秒一能量")
end),
			}) ,

Yunzhu.box({"分数赛",---box示例 可以删掉
                Yunzhu.switch("下滑瞬移",
                    function()
qmnb = {
{["memory"] = 32},
{["name"] = "下滑瞬移"},
{["value"] = -8388608, ["type"] = 4},
{["lv"] = -1082130432, ["offset"] = -16, ["type"] = 4},
{["lv"] = 2139095040, ["offset"] = -8, ["type"] = 4},
}
qmxg = {
{["value"] = 99999, ["offset"] = -64, ["type"] = 16},
}
xqmnb(qmnb)
gg.toast("TINY己为您开启")
                    end,
                    function()
                        
qmnb = {
{["memory"] = 32},
{["name"] = "恢复瞬移"},
{["value"] = -8388608, ["type"] = 4},
{["lv"] = -1082130432, ["offset"] = -16, ["type"] = 4},
{["lv"] = 2139095040, ["offset"] = -8, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = -64, ["type"] = 16},
}
xqmnb(qmnb)
                    end),
Yunzhu.switch("分数爆满",
function ()
local t = {"libil2cpp.so:bss", "Cb"}
local tt = {0xA5C94, 0x5C, 0x0, 0x6C}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 4, value = 9999999}})
gg.setValues({{address = ttt+0x10, flags = 4, value = 0}})
gg.setValues({{address = ttt+0x4, flags = 4, value = 0}})
string.toMusic("TINY己为您开启分数爆满")
end,
function ()
end),
Yunzhu.switch("分数成倍",
function()
SO_PT(0xb969f4 ,4,"~A MOVW R0, #"..gg.prompt({"注:不可过大"},{""},{"number"})[1])
string.toMusic("分数成倍修改成功")
end),
Yunzhu.switch("分数赛三宝物",
				function()
 search(20,4,32)
py1(21,4,0x14)
py1(22,4,0x28)
xg1(0,4,0x4)
xg1(0,4,-0x8)
xg1(gg.prompt({'第一个宝物\n默认手表'}, {[1] = '7'}, {[1] = 'number'})[1],4,-0xC)
xg1(0,4,0x18)
xg1(0,4,0xC)
xg1(gg.prompt({'第二个宝物\n默认手表'}, {[1] = '7'}, {[1] = 'number'})[1],4,0x8)
xg1(0,4,0x2C)
xg1(0,4,0x20)
xg1(gg.prompt({'第三个宝物\n默认手表'}, {[1] = '7'}, {[1] = 'number'})[1],4,0x1C)
            gg.toast("Done✔️")
       toMusic('开启成功')
     end,
				function()
				end
                       ),   
Yunzhu.switch("无敌穿墙",
function()
qmnb = {
{["memory"] = 32},
{["name"] = "穿透"},
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
end),
 Yunzhu.switch("拖尾加重",
				function()
SO_PT(0x1b107fc ,4,"~A MOVW R0, #65535")		
      gg.toast("Done✔️")
toMusic('开启成功')
 end,
function()
end ),         
           Yunzhu.switch("超广角" ,
function()
io.open("/sdcard/.+++","w+"):write([[10045
Var #942C268C|942c268c|10|42700000|1|0|0|0|||0]])
gg.loadList("/sdcard/.+++", gg.LOAD_VALUES)
os.remove("/sdcard/.+++")
gg.editAll("-1", gg.TYPE_BYTE)
				gg.processResume()
				gg.clearResults()
				gg.clearList()
gg.toast("Done✔️")
toMusic('开启成功')
end), 
Yunzhu.switch("关闭超广角" ,
function()
io.open("/sdcard/.---","w+"):write([[10045
Var #942C268C|942c268c|10|42200000|0|0|0|0|||0
]])
gg.loadList("/sdcard/.---", gg.LOAD_VALUES)
os.remove("/sdcard/.---")
				gg.editAll("-1", gg.TYPE_BYTE)
				gg.processResume()
				gg.clearResults()
				gg.clearList()
gg.toast("Done✔️")
toMusic('开启成功')
end),                                  
                Yunzhu.switch("修改第一",
				function()
local a=gg.prompt({""},{"1"},{"number"})			
if a == nil then gg.alert("未发生改变") os.exit() end
if a[1] == '' then else
	num_2=a[1]/65536
	num_3=a[1]-65536*num_2
	sjx ( 0xbd6464 , "~A MOVW	 R0, #"..num_3,false )
	sjx ( 0xbd6464+4 , "~A MOVT	 R0, #"..num_2 )				
gg.toast("Done✔️")
toMusic('开启成功')
end
     end,
				function()
				end
                       ),  
          Yunzhu.switch("死亡替换撑杆跳",
				function()
local il2cppmod=gg.getRangesList('il2cpp.so')
gg.setValues({{address=il2cppmod[1].start+0x2b5cc5c,flags=4,value='~A B -0x62C'}})
gg.setValues({{address=il2cppmod[1].start+0x2b5cc5c+4,flags=4,value='~A BX LR'}})
gg.toast("Done✔️")
toMusic('开启成功')
     end,
				function()
				end
                       ),   
          Yunzhu.switch("死亡替换喷气背包",
				function()                       
local il2cppmod=gg.getRangesList('il2cpp.so')
gg.setValues({{address=il2cppmod[1].start+0x2b5cc5c,flags=4,value='~A B -0xB90'}})
gg.setValues({{address=il2cppmod[1].start+0x2b5cc5c+4,flags=4,value='~A BX LR'}})
gg.toast("Done✔️")
toMusic('开启成功')
     end,
				function()
				end
                       ),   
                       	Yunzhu.switch("历史分数",
				function()
local a=gg.prompt({""},{"2147483647"},{"number"})			
if a == nil then gg.alert("未发生改变") os.exit() end
if a[1] == '' then else
	num_2=a[1]/65536
	num_3=a[1]-65536*num_2
	sjx ( 0xb98fd8 , "~A MOVW	 R0, #"..num_3,false )
	sjx ( 0xb98fd8+4 , "~A MOVT	 R0, #"..num_2 )
    gg.toast("Done✔️")
toMusic('开启成功')
end
     end,
				function()
				end
                       ),     
              Yunzhu.switch("地上的金币数量",
				function()
				local a=gg.prompt({""},{"2147483647"},{"number"})			
if a == nil then gg.alert("未发生改变") os.exit() end
if a[1] == '' then else
	num_2=a[1]/65536
	num_3=a[1]-65536*num_2
	sjx ( 0xe8b320 , "~A MOVW	 R0, #"..num_3,false )
	sjx ( 0xe8b320+4 , "~A MOVT	 R0, #"..num_2 )
gg.toast("Done✔️")
toMusic('开启成功')
end
     end,
				function()
				end
                       ),          
           Yunzhu.switch("三倍金币",
				function()
SO_PT(0x2bd05d4 ,4,"~A MOVW R0, #1")					
gg.toast("Done✔️")
toMusic('开启成功')
     end,
				function()
		                end    
            ),

       Yunzhu.switch("速度起飞",         
      function ()            
      Yunzhu = gg.prompt({'请输入需要修改的倍数，建议改60'},{[1]=60},{[1]='number'})[1]
local t = {"libunity.so:bss", "Cb"}
local tt = {0x831C, 0xEC}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 16, value = Yunzhu, freeze = true}})
string.toMusic("TINY己为您开启速度起飞")    
end,
  function ()          
local t = {"libunity.so:bss", "Cb"}
local tt = {0x831C, 0xEC}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 16, value = 1, freeze = true}})
string.toMusic("速度起飞恢复成功")
end),
Yunzhu.switch("跳跃起飞",
function ()
SO_PT ( 0x1b16afc , 4 , "0100A0E3r" )
string.toMusic("TINY己为您开启跳跃起飞")
end,
function ()
end),
Yunzhu.switch("人物无敌",
function ()
SO_PT(0x2b77650, 4, "~A MOVW  R0, #1")
string.toMusic("TINY己为您开启人物无敌")
end,
function ()
end),
            }),	
 Yunzhu.box({"无尽赛",---box示例 可以删
Yunzhu.switch("滑板滑翔",
function()
SO_PT(0x1e186d8, 4, "~A MOVW  R0, #1") 
string.toMusic("滑板滑翔开起成功")
end,
function()
SO_PT(0x1e186d8, 4, "~A MOVW  R0, #0") 
string.toMusic("滑板滑翔关闭成功")
end),
Yunzhu.switch("滑板瞬移",
function()
SO_PT(0x1e18848, 4, "~A MOVW  R0, #1")  
string.toMusic("滑板瞬移开起成功")
end,
function()
SO_PT(0x1e18848, 4, "~A MOVW  R0, #0")  
string.toMusic("滑板瞬移关闭成功")
end),
Yunzhu.switch("滑板极速",
function()
SO_PT(0x1dd7fb0 ,4,"~A MOVW R0, #1")
string.toMusic("滑板极速开起成功")
end,
function()
SO_PT(0x1dd7fb0 ,4,"~A MOVW R0, #0") 
string.toMusic("滑板极速关闭成功") 
end), 
Yunzhu.switch("正常双跳",
function()
SO_PT(0x1b10934, 4, "~A MOVW R0, #1")
string.toMusic("正常双跳开起成功")
end,
function()
SO_PT(0x1b10934 ,4,"~A MOVW R0, #0") 
string.toMusic("正常双跳关闭成功")
end), 
Yunzhu.switch("滑板高跳",
function()
SO_PT(0x1e182f8, 4, "~A MOVW  R0, #1")  
string.toMusic("滑板高跳开起成功")
end,
function()
SO_PT(0x1e182f8, 4, "~A MOVW  R0, #0")  
string.toMusic("滑板高跳关闭成功")
end),
Yunzhu.switch("无限跳跃",
function()
SO_PT(0x1ad4f48, 4, "~A MOVW  R0, #1") 
string.toMusic("无限跳跃开起成功")
end,
function()
SO_PT(0x1ad4f48, 4, "~A MOVW  R0, #0") 
string.toMusic("无限跳跃关闭成功") 
end),
Yunzhu.switch("无尽不死",
function()
SO_PT(0x2b54760, 4, "~A MOVW R0, #1")
string.toMusic("无尽不死开起成功")
end,
function()
SO_PT(0x2b54760 ,4,"~A MOVW R0, #0")
string.toMusic("无尽不死关闭成功") 
end),
Yunzhu.edit("局内速度","局内速度"),
Yunzhu.button("开始更改",
function()
SO_PT(0x1b0e71c ,4,"~A MOVW R0, #"..Yunzhu.getedit("局内速度"))
SO_PT(0x1b0e71c+4,4,"100A00EEr")
SO_PT(0x1b0e71c+0x8,4,"C00AB8EEr")
SO_PT(0x1b0e71c+0xC,4,"100A10EEr")
SO_PT(0x1b0e71c+0x10,4,"1EFF2FE1r")
string.toMusic("速度修改成功")
end)
     }),
						Yunzhu.box({"道具赛微功能",
Yunzhu.text("切记功能要开一把道具赛后再开启，否则失效" , nil , "13sp" ) ,
			Yunzhu.check({
{"全局速度",
function()
gg.setRanges(32)
    local Name="全局速度"
    local dataType = 16
    local tb1 = {{6000,0x0},{300.0,-0x18}}
    local tb2 = {{0,-0x5C},{0,-0x6C},{1300,-0x70}}
    SearchWrite(tb1, tb2, dataType)
     gg.alert('成功')
toMusic("TINY己为您开启")
end,
function()
end},
{"全局速度",
function()
gg.setRanges(32)
    local Name="全局速度"
    local dataType = 16
    local tb1 = {{6000,0x0},{300.0,-0x18}}
    local tb2 = {{0,-0x5C},{0,-0x6C},{1300,-0x70}}
    SearchWrite(tb1, tb2, dataType)
     gg.alert('成功')
toMusic("TINY己为您开启")
end,
function()
end},
{"滑板延长",
function()
gg.setRanges(32)
    local Name="滑板延长"
    local dataType = 16
    local tb1 = {{6000,0x0},{300.0,-0x18}}
    local tb2 = {{0,0x4},{0,-0xC},{12050,-0x10}} 
    SearchWrite(tb1, tb2, dataType)    
     gg.alert('成功')
toMusic("TINY己为您开启")
end,
function()
end},
{"滑板速度",
function()
gg.setRanges(32)
    local Name="滑板速度微加"
    local dataType = 16
    local tb1 = {{6000,0x0},{300.0,-0x18}}
    local tb2 = {{0,0xC},{0,0x1C},{1995,0x8}} 
    SearchWrite(tb1, tb2, dataType)  
     gg.alert('成功')
toMusic("TINY己为您开启")
end,
function()
end},
{"加速带速度",
function()
gg.setRanges(32)
    local Name="加速带速度微加"
    local dataType = 16
    local tb1 = {{6000,0x0},{300.0,-0x18}}
    local tb2 = {{0,-0x44},{0,-0x54},{2500,-0x58}} 
    SearchWrite(tb1, tb2, dataType)
     gg.alert('成功')
toMusic("TINY己为您开启")
end,
function()
end},
{"基础速度",
function()
gg.setRanges(32)
    local Name="基础速度微加"
    local dataType = 16
    local tb1 = {{6000,0x0},{300.0,-0x18}}
    local tb2 = {{0,0x34},{0,0x24},{1400,0x20}} 
    SearchWrite(tb1, tb2, dataType)
     gg.alert('成功')
toMusic("TINY己为您开启")
end,
function()
end},
{"减速恢复",
function()
gg.setRanges(32)
    local Name="减速恢复微加"
    local dataType = 16
    local tb1 = {{6000,0x0},{300.0,-0x18}}
    local tb2 = {{0,0x3C},{0,0x4C},{10000,0x38}} 
    SearchWrite(tb1, tb2, dataType)
     gg.alert('成功')
toMusic("TINY己为您开启")
end,
function()
end},
				}),
				Yunzhu.switch("滑板倒退",
				function()
search(300,16,32)
py1(1,4,0x4)
py1(1,4,-0x4)
xg1(0,4,0x34)
xg1(0,4,0x24)
xg1(-1950,16,0x20)
gg.toast("Done✔️")
toMusic('开启成功')
				end,
				function()
				end
			),
				Yunzhu.switch("滑板定人",
				function()
             search(300,16,32)
             py1(1,4,0x4)
             py1(1,4,-0x4)
             xg1(0,4,0x34)
              xg1(0,4,0x24)
             xg1(0,16,0x20)
          gg.toast("Done✔️")
          toMusic('开启成功')
				end,
				function()
				search(300,16,32)
py1(1,4,0x4)
py1(1,4,-0x4)
xg1(0,4,0x34)
xg1(0,4,0x24)
xg1(2000,16,0x20)
gg.toast("Done✔️")
toMusic('开启成功')
				end
				),
				
				
				}),

	},{---第六页
		Yunzhu.switch(
			"音量键隐藏UI",
			function()
				音量键=true
			end,
			function()
				音量键=false
			end
		),
		Yunzhu.switch(
			"摇一摇隐藏UI",
			function()
				摇一摇=true
			end,
			function()
				摇一摇=false
			end
		),
		Yunzhu.button(
			"退出",
			function()
				tuichu=1
			end),
	},
})
end
Containerid={}
Containerid[#Containerid+1]='▤管理菜单'
Containerid[#Containerid+1]='\n辅助名称：TINY\n功能简述：已完美适配v5.05.0版本,适用于九游版本\n最后更新：2024-7-18-21:03\n\n'
Containerid[#Containerid+1]="\n辅助名称：TINY\n功能简述：片\n最后更新：2024-6-30-21:00\n\n"


Containerid2={}
for _, v in pairs(Containerid) do
	if Containerid[_]~='▤管理菜单' then
		Containerid2[#Containerid2+1]=Containerid[_]
	end
end

Containerid2[1]=function()
	bsss()
end

Containerid2[2]=function()
gg.goURL("https://xcpe.sm178.vip/")    
end



--菜单寄存
deposit={Containerid}

primaryMenu=function(first)

	while true do
		if gg['isVisible'](true) then
		
			::main::
		
			if #deposit == 1 then
				page=''
			else
				page='(第'..#deposit..'页)'
			end
		
			C1=gg['choice'](first, nil, 'TINY\n共有'..#deposit[#deposit]-(1)..'个应用 '..page)
			if C1 then
				if Containerid[C1] == '▤管理菜单' then
					local search={}
					search[#search+1]='搜索应用'
					if #deposit > 1 then
						search[#search+1]='返回上一页'
					end
					search[#search+1]='退出脚本'
					::main2::
					C2=gg['choice'](search, nil, '▤管理菜单')
					if C2 then
						if search[C2] == '搜索应用' then
							P1=gg['prompt']({'请输入关键词'}, nil, {'text'})
							if P1 then
								_1, _2={}, {}
								--for _, v in pairs(first) do
								_1[#_1+1]='▤管理菜单'
								for i=2, #first do
									if string['find'](string['lower'](first[i]), string['lower'](P1[1])) then
										table.insert(_1, first[i])
									end
								end
								if #_1 < 2 then
									gg['alert']('没有关键词为 '..P1[1]..' 的应用哦~')
									goto main
								end
								deposit[#deposit+1]=_1
								menuControl=_1
								primaryMenu(_1)
							else
								goto main2
							end
						elseif search[C2] == '返回上一页' then
							if #deposit == 1 then
								gg['alert']('已是初始页~')
								goto main
							end
							--删除菜单table元素
							deposit[#deposit]=nil
							menuControl=deposit[#deposit]
							primaryMenu(deposit[#deposit])
						elseif search[C2] == '退出脚本' then
							os.exit()
						end
					else
						goto main
					end
				else
					for i=1, #Containerid do
						if deposit[#deposit][C1]==Containerid[i] then
							fun=i-1
						end
					end
					Containerid2[fun]()
					goto main
				end
			end
			gg['setVisible'](false)
		end
	end
end

menuControl=Containerid

primaryMenu(menuControl)



