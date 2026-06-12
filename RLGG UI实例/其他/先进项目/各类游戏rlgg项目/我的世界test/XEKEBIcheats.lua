function sc ()
t2 = gg.multiChoice ({
 ' 🔰FLY🔰[ON] ',
 ' 👉BACK👈 '},nil,'🔰FLY🔰')
 
if t2 == nil then else
if t2 [1] == true then sA () end
if t2 [2] == true then   end
 end
end

function HS1()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("61,547.5;61,440.328125;-1.18880239e-10;10,266.1884765625::", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("-1.18880239e-10",FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("61,472.00390625", FLOAT)
gg.toast("破解市场开启成功")
gg.clearResults()
end
end



function HS2()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("0.54600006342", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("0.54600006342",FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("1", FLOAT)
gg.toast("人物速度开启成功")
gg.clearResults()
end
end



function HS3()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("0.42", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("0.42",FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("1", FLOAT)
gg.toast("人物高跳开启成功")
gg.clearResults()
end
end



function HS4()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-0.50289440155;0.30000001192;15,341.375::", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("0.30000001192",FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("1", FLOAT)
gg.toast("快速潜行开启成功")
gg.clearResults()
end
end



function HS5()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-0.50352662802;0.0;0.05000000075::", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("0.0",FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("5", FLOAT)
gg.toast("人物高度开启成功")
gg.clearResults()
end
end



function HS6()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1.10000002384;0.60000002384;-0.10000000149;0.00999999978::", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("0.60000002384",FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("-1.4", FLOAT)
gg.toast("放大镜开启成功")
gg.clearResults()
end
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
local qmnb=
{
{['memory']=4},
{['name']='杀戮'},
{['value']=98312, ['type']=4},
{['lv']=524288,['offset']=-4, ['type']=4},
}
local qmxg=
{
{['value']=8486920,['offset']=0,['type']=4,['freeze']=true},
}

function sA ()
gg.clearResults()
gg.searchNumber("0B;0.05000000075F;0.10000000149F::49", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
revert = gg.getResults(5000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1", gg.TYPE_BYTE)
gg.refineNumber("99", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.clearResults()
end

function dv ()
t3 = gg.multiChoice ({
 ' 🔰GODMODE🔰[ON] ',
 ' 👉BACK👈 '},nil,'🔰GODMODE🔰')
 
if t3 == nil then else
if t3 [1] == true then A () end
if t3 [2] == true then   end
 end
end

function A ()
gg.clearResults()
gg.searchNumber("0B;0.05000000075F;0.10000000149F::73", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("0", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
revert = gg.getResults(5000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1", gg.TYPE_BYTE)
gg.refineNumber("99", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.clearResults()
end

function df ()
t4 = gg.multiChoice ({
 ' 🔰JumpFly🔰[ON] ',
 ' 🔰JumpFly🔰[OFF]',
 ' 👉BACK👈 '},nil,'🔰JumpFly🔰')
 
if t4 == nil then else
if t4 [1] == true then AA () end
if t4 [2] == true then AB () end
if t4 [3] == true then   end
 end
end

function AA ()
gg.setRanges(gg.REGION_C_ALLOC)
gg.clearResults()
gg.searchNumber("-0.07840000093", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(5000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(5000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_FLOAT then
		v.value = "0"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
gg.refineNumber("99999999999999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.clearResults()
end

function AB ()
gg.clearResults()
revert = gg.getListItems()
local t = gg.getListItems()
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_FLOAT then
		v.value = "-0.07840000093"
		v.freeze = false
		v.freezeType = gg.FREEZE_NORMAL
	end
end
gg.addListItems(t)
t = nil
if revert ~= nil then gg.setValues(revert) end
gg.processResume()
gg.refineNumber("99999999999999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.clearResults()
end

function dL ()
t5 = gg.multiChoice ({
 ' 🔰Jump🔰[ON] ',
 ' 🔰Jump🔰[OFF]',
 ' 👉BACK👈 '},nil,'🔰Jump🔰')
 
if t5 == nil then else
if t5 [1] == true then AO() end
if t5 [2] == true then AI () end
if t5 [3] == true then   end
 end
end

function AO ()
gg.searchNumber("16777473D;0.5625::81", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("16777473", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(5000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(5000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "16777473"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
gg.refineNumber("999999999", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
t = nil
gg.clearResults()
end

function AI ()
revert = gg.getListItems()
local t = gg.getListItems()
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "16777473"
		v.freeze = false
		v.freezeType = gg.FREEZE_NORMAL
	end
end
gg.addListItems(t)
t = nil
gg.clearResults()
end

function da ()
t6 = gg.multiChoice ({
 ' 🔰JumpBlock🔰[ON] ',
 ' 🔰JumpBlock🔰[OFF]',
 ' 👉BACK👈 '},nil,'🔰JumpBlock🔰')
 
if t6 == nil then else
if t6 [1] == true then AAA() end
if t6 [2] == true then ABB () end
if t6 [3] == true then   end
 end
end

function AAA ()
gg.clearResults()
gg.searchNumber("0.5625", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
revert = gg.getResults(5000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("999.555", gg.TYPE_FLOAT)
gg.refineNumber("99999999999999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.clearResults()
end

function ABB ()
gg.clearResults()
gg.searchNumber("999.555", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
revert = gg.getResults(5000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("0.5625", gg.TYPE_FLOAT)
gg.refineNumber("99999999999999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.clearResults()
end

function dB ()
t7 = gg.multiChoice ({
 ' 🔰SpeedHack🔰[ON] ',
 ' 🔰SpeedHack🔰[OFF]',
 ' 👉BACK👈 '},nil,'🔰SpeedHack🔰')
 
if t7 == nil then else
if t7 [1] == true then AAAA() end
if t7 [2] == true then ABBB () end
if t7 [3] == true then   end
 end
end

function AAAA ()
gg.setRanges(gg.REGION_C_ALLOC)
gg.clearResults()
gg.searchNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(5000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("0.85200000149", gg.TYPE_FLOAT)
gg.refineNumber("99999999999999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.clearResults()
end
function ABBB ()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("0.85200000149", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(5000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("0.1", gg.TYPE_FLOAT)
gg.refineNumber("99999999999999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.clearResults()
end

function dxz ()
t8 = gg.multiChoice ({
 ' 🔰Tast🔰[ON] ',
 ' 🔰Tast🔰[OFF]',
 ' 👉BACK👈 '},nil,'🔰Tast🔰')
 
if t8 == nil then else
if t8 [1] == true then AAAAA () end
if t8 [2] == true then ABBBB () end
if t8 [3] == true then   end
 end
end

function AAAAA ()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("4 604 480 258 364 250 522", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(5000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("4 604 480 258 398 224 384", gg.TYPE_QWORD)
gg.refineNumber("999999999", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.clearResults()
end

function ABBBB ()
gg.clearReuslts()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("4 604 480 258 398 224 384", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(5000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("4 604 480 258 364 250 522", gg.TYPE_QWORD)
gg.refineNumber("999999999", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.clearResults()
end

function llk ()
t9 = gg.multiChoice ({
 ' 🔰NoFall🔰[ON] ',
 ' 🔰NoFall🔰[OFF]',
 ' 👉BACK👈 '},nil,'🔰NoFall🔰')
 
if t9 == nil then else
if t9 [1] == true then AAAAAA () end
if t9 [2] == true then ABBBBB () end
if t9 [3] == true then   end
 end
end

function AAAAAA ()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("0F;16777473D::5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(5000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(5000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_FLOAT then
		v.value = "0.0"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
gg.refineNumber("999999999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.clearResults()
end

function ABBBBB ()
gg.clearResults()
revert = gg.getListItems()
local t = gg.getListItems()
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_FLOAT then
		v.value = "0.0"
		v.freeze = false
		v.freezeType = gg.FREEZE_NORMAL
	end
end
gg.addListItems(t)
t = nil
gg.clearResults()
end

function iiu ()
t10 = gg.multiChoice ({
 ' 🔰Bot🔰[ON] ',
 ' 🔰Bot🔰[OFF]',
 ' 👉BACK👈 '},nil,'🔰Bot🔰')
 
if t10 == nil then else
if t10 [1] == true then AAAAAAA () end
if t10 [2] == true then ABBBBBB () end
if t10 [3] == true then   end
 end
end
function AAAAAAA ()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("0,60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("0,60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("0,60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("0,60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("0,60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("0,60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("0,60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("0,60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("0,60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("0,60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("0,60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("0,60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("0,60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("0,60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("0,60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("0,60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("0,60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("0,60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("0,60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("0,60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("0,60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("0,60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("0,60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("0,60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("0,60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("0,60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("0,60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("0,60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("0,60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("0,60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("0,60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("0,60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("0,60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("0,60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("0,60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("0,60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("0,60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("0,60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("0,60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("0,60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("0,60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("0,60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("0,60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("0,60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("0,60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("0,60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("0,60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("0,60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("0,60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("0,60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("0,60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("0,60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("0,60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("0,60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("0,60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("0,60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("0,60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("0,60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("0,60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("0,60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(5000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("2.4536", gg.TYPE_FLOAT)
gg.refineNumber("999999999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.clearResults()
end

function ABBBBBB ()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("2.4536", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(5000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("0,60000002384", gg.TYPE_FLOAT)
gg.refineNumber("999999999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.clearResults()
end

function ppq ()
t11 = gg.multiChoice ({
 ' 🔰AutoSpeedFov🔰[ON] ',
 ' 🔰AutoSpeedFov🔰[OFF]',
 ' 👉BACK👈 '},nil,'🔰AutoSpeedFov🔰')
 
if t11 == nil then else
if t11 [1] == true then AAAAAAAA () end
if t11 [2] == true then ABBBBBBB () end
if t11 [3] == true then   end
 end
end

function AAAAAAAA ()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("9 640 188 314", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(5000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("9666 088141", gg.TYPE_QWORD)
gg.clearResults()
end

function ABBBBBBB ()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
revert = gg.getResults(5000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.searchNumber("9666088141", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
if revert ~= nil then gg.setValues(revert) end
gg.clearResults()
end

local baseWindow = require 'floatingWindowManager2'

if not baseWindow.getContext then
	gg.alert('请重启一下RLGG')
	app.exit()
end

function 设置控件宽(控件,宽度)
  local linearParams = 控件.getLayoutParams()
  linearParams.width=宽度
  控件.setLayoutParams(linearParams)
end
function 设置控件高(控件,高度)
  local linearParams = 控件.getLayoutParams()
  linearParams.height=高度
  控件.setLayoutParams(linearParams)
end

local context = baseWindow:getContext()
local path = '/storage/emulated/0/长安/配置文件/tagcloud'
local dexloader = dex.loadfile(path)

---@type com.moxun.tagcloudlib.view.TagCloudView
local TagCloudView = dexloader:loadClass('com.moxun.tagcloudlib.view.TagCloudView')
local MyTagsAdapter = dexloader:loadClass('cn.rlyun.a3dtagcloudandroid.MyTagsAdapter')

--[[

floatingWindowManager2 是基于RLGG开发的悬浮窗模块,帮助开发者高效实现UI

目前模块尚未完成开发,还有大量工作需要完成
暂时提供一个示例简单,具体自己探索实现 (后期逐步更新更多示例)


]]
--[[material={"animation","appbar","badge","behavior","bottomappbar","bottomnavigation","bottomsheet","button","canvas","card","checkbox","chip","circularreveal","color","datepicker","dialog","divider","drawable","elevation","expandable","floatingactionbutton","imageview","internal","math","navigation","navigationrail","progressindicator","radiobutton","resources","ripple","shadow","shape","slider","snackbar","stateful","switchmaterial","tabs","textfield","textview","theme","timepicker","tooltip","transformation","transition",}
local path="com.google.android.material."
import (path.."*")
for _,v in pairs(material) do
  import(path..v..".*")
end
]]

import "android.graphics.Color"
import "android.content.res.ColorStateList"
function SliderColor(id,color1,color2,color3)
  id:setTrackActiveTintList(ColorStateList({{}},{"0xff"..color1}))
  id:setTrackInactiveTintList(ColorStateList({{}},{"0x50"..color2}))
  id:setThumbTintList(ColorStateList({{}},{"0xff"..color3}))
  end
  function SwitchColor(id,color1,color2)
  id:setTrackTintList(ColorStateList({{android.R.attr.state_checked},{}},{color1,color2}))
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


import 'java.lang.CharSequence'
import 'java.lang.Boolean'
import 'java.lang.reflect.Array'




--Snackbar:make(ckou,"启动进程结束 欢迎使用",Snackbar.LENGTH_SHORT):setBackgroundTint("0xff161616"):show()
-- 浅色模式
baseWindow:lightMode()

-- 深色模式
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
    background-color: #00000000;
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
  font-size: 5px;
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
gg.setVisible(false)
luajava.setFloatingWindowHide(true)
changan = {} swits = {}
swits["第1页"] = {}
swits["第2页"] = {}
swits["第3页"] = {}
swits["第4页"] = {}
swits["第5页"] = {}

YoYoImpl = luajava.getYoYoImpl()
vibra = context:getSystemService(Context.VIBRATOR_SERVICE)
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

function getTimeStamp(t)
local str = os.date("%Y年%m月%d日%H:%M:%S",t)
return str
end
function camusic(x)
	if audiokg==true then
		luajava.newThread(function()
		gg.playMusic(x)
		end):start()
	end
end
function panduan(rec) fille,err = io.open(rec) if fille == nil then return false else return true end end
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
function panduan(rec) fille,err = io.open(rec) if fille == nil then return false else return true end end
function pdcf(lujing) rec = "/sdcard/BY/配置文件/"..lujing fille,err = io.open(rec) if fille == nil then return false else return true end end
sleep = gg.sleep
--if gg.isHTTPdump()==true and panduan("/sdcard/BY/配置文件/vpn.txt") == false then gg.alert("\n抓包？") os.exit() end
function read(fileName) f = assert(io.open(fileName, 'r')) content = f:read("*all") f:close() return content end
function wtcf(lujing,neirong)
write("/sdcard/BY/配置文件/"..lujing,neirong)
end
function rdcf(lujing)
return read("/sdcard/BY/配置文件/"..lujing)
end
开 = "开" 关 = "关"
function checkimg(tmp)
if panduan("/sdcard/BY/图片/"..tmp) ~= true then
gg.toast("正在下载资源"..tmp.."\n请耐心等待")
download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..tmp,"/sdcard/BY/图片/"..tmp)
end
end
ckimg = {
	"BY/boom.mp3","BY/kgstart.mp3","BY/kgend.mp3",
	"BY/quarkringon",
	"BY/quarkringoff",
	"BY/quarksearchw",
	"pubgT","pubgY","pubgR","pubgG"
}
for i = 1,#ckimg do
jindu = i
checkimg(ckimg[i]) 
end


empty = luajava.loadlayout {
	GradientDrawable,
	color = "#00dddddd",
	cornerRadius = 30
}
empty2 = luajava.getBitmap("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/jot8z1zy")


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
layoutParams.flags = LayoutParams.FLAG_NOT_TOUCH_MODAL -- 焦点设置Finish
layoutParams.gravity = Gravity.TOP|Gravity.LEFT -- 重力设置
layoutParams.width = LayoutParams.WRAP_CONTENT -- 布局宽度
layoutParams.height = LayoutParams.WRAP_CONTENT -- 布局高度

return layoutParams
end
mainLayoutParams = getLayoutParams()
function changan.menu()
searchlist={}
for i=1,#stab-2 do
	searchlist[i]={}
	for j=1,4 do
		searchlist[i][j]={}
	end
end
cebian = {
	LinearLayout,
	layout_height = "wrap_content",
	layout_width = "120dp",
	gravity = "left",
	layout_marginBottom = "5dp",
	padding = "3dp",
	orientation = "vertical",
}
for i = 1,#stab do
_ENV["jm"..i.."bg"] = getSelector()
_ENV["jm"..i] = luajava.loadlayout({
	LinearLayout,
	gravity = "center",
	layout_height = "35dp",
	layout_width = "110dp",
	background = _ENV["jm"..i.."bg"],
	--onTouch = hanshu,
	onClick = function() 切换(i) end,
	{ImageView,
	src=获取图片(stab[i][2]),
	layout_height = "25dp",
	layout_width="25dp",
	},
	{
		TextView,
		id = "jmt"..i,
		layout_marginLeft = "10dp",
		textSize = "12sp",
		textColor = "#ffffff",
		text = stab[i][1].."          ",
	}
})
cebian[#cebian+1] = _ENV["jm"..i]
end
leftbar = luajava.loadlayout({
	LinearLayout,
	layout_height = "fill_parent",
	layout_width = "120dp",
	orientation = "vertical",
	--background = getShape0(),
	{
		TextView,
		onTouch = hanshu,
		id = "control1",
		onClick = 隐藏,
		gravity = "center",
		layout_height = "50dp",
		layout_width = "100dp",
		layout_marginLeft="10dp",
		padding = "8dp",
		text = sname,
		textSize="23sp",
		textColor="#ffffff",
		--background = getShape0(),
	}, {
		ScrollView,
		layout_height = "218dp",
		layout_marginTop = "8dp",
		layout_width = "120dp",
		cebian
	}


})
for a = 1,#stab-2 do
	for b = 1,4 do
		_ENV["switchs"..a..b]={
						LinearLayout,
						layout_height = "wrap_content",
						layout_width = "match_parent",
						gravity = "center_vertical",
						orientation = "vertical",
					}
		for i = 1,#swits["第"..a.."页"]["第"..b.."板块"] do
			_ENV["switchs"..a..b][#_ENV["switchs"..a..b]+1]=swits["第"..a.."页"]["第"..b.."板块"][i][1]
			searchlist[a][b][#searchlist[a][b]+1]={swits["第"..a.."页"]["第"..b.."板块"][i][2],swits["第"..a.."页"]["第"..b.."板块"][i][3],swits["第"..a.."页"]["第"..b.."板块"][i][4]}
		end
		if b==1 then
			_ENV["switchs"..a..b][#_ENV["switchs"..a..b]+1]=changan.text("\n\n\n\n\n\n\n\n\n\n\n\n\n\n")[1]
		end
	end
end

for i = 1,#stab-2 do
_ENV["layout"..i] = luajava.loadlayout({
	LinearLayout,
	id = "layout"..i,
--fillViewport = true,
	visibility = "gone",
	layout_height = "fill_parent",
	layout_width = "match_parent",
	{
		LinearLayout,
		id = "layoutm"..i,
		layout_height = "wrap_content",
		layout_width = "match_parent",
		orientation = "vertical",
		{
			LinearLayout,
			layout_height = "match_parent",
			layout_width = "match_parent",
			layout_marginLeft = "-3dp",
			orientation = "horizontal",
			gravity = "center",
			padding = "5dp",
			{
				LinearLayout,
				gravity = "top",
				layout_height = "match_parent",
				layout_width = "match_parent",
				layout_weight = 1,
				layout_marginLeft = "8dp",
				orientation = "vertical",
				{
					ScrollView,
					layout_height = "match_parent",
					layout_weight = 1,
					layout_width = "match_parent",
					background = getShape0(),
					gravity = "center_vertical",
					orientation = "vertical",
					_ENV["switchs"..i.."1"]
				},
			}, {
				LinearLayout,
				gravity = "top",
				layout_height = "match_parent",
				layout_width = "match_parent",
				layout_weight = 1,
				layout_marginLeft = "8dp",
				orientation = "vertical",
				{
					ScrollView,
					layout_height = "match_parent",
					layout_weight = 1,
					layout_width = "match_parent",
					background = getShape0(),
					gravity = "center_vertical",
					orientation = "vertical",
					_ENV["switchs"..i.."2"]
				},{
					ScrollView,
					layout_height = "match_parent",
					layout_weight = 1,
					layout_marginTop = "5dp",
					layout_width = "match_parent",
					background = getShape0(),
					gravity = "center_vertical",
					orientation = "vertical",
					_ENV["switchs"..i.."3"]
				},
				{
					ScrollView,
					layout_height = "match_parent",
					layout_weight = 1,
					layout_marginTop = "5dp",
					layout_width = "match_parent",
					background = getShape0(),
					gravity = "center_vertical",
					orientation = "vertical",
					_ENV["switchs"..i.."4"]
				},
			}
		}

	}})


end



_ENV["layout"..#stab-1] = luajava.loadlayout({
	HorizontalScrollView,
	id = "layout6",
	padding = "10dp",
	visibility = "gone",
	layout_height = "fill_parent",
	layout_width = "match_parent",
	{
		LinearLayout,
		id = "layoutm5",
		layout_height = "match_parent",
		layout_width = "wrap_content",
		orientation = "horizontal",
		gravity = "center_vertical",
		{
			FrameLayout,
			layout_height = "210dp",
			layout_width = "170dp",
			gravity = "center",
			{
				FrameLayout,
				layout_height = "210dp",
				layout_width = "150dp",
--layout_weight = 1,
				gravity = "center",
				layout_gravity = "center_horizontal",
				background = luajava.loadlayout {
					GradientDrawable,
					color = "#44dddddd",
					cornerRadius = 30
				},
				{
					ImageView,
					src = "/sdcard/BY/图片/pubgT",
					layout_marginTop = "20dp",
					layout_gravity = "center_horizontal",
					layout_height = "60dp",
					layout_width = "60dp",
				},
				{
					TextView,
					text = "PUBG 台湾服\n3.0 ✔",
					textSize = "16dp",
					layout_marginTop = "90dp",
					layout_gravity = "center_horizontal",
					gravity = "center",
				},
				{
					LinearLayout,

					onClick = function()
					luajava.newThread(function() 切换(1) launch("com.rekoo.pubgm") end):start() end,
					background = getShape99(90,0xff28FEB9,0xff28FEB9,0xff28FEB9),
					layout_height = "25dp",
					layout_width = "55dp",
					layout_gravity = "center_horizontal",
					layout_marginTop = "160dp",
					gravity = "center",
					{
						TextView,
						textColor = "#000000",
						text = "启动",
						textSize = "12sp",
						layout_height = "20dp",
						gravity = "center",
						layout_width = "30dp",
					}
				}
			},
		},
		{
			FrameLayout,
			layout_height = "210dp",
			layout_width = "170dp",
			gravity = "center",
			{
				FrameLayout,
				layout_height = "210dp",
				layout_width = "150dp",
--layout_weight = 1,
				gravity = "center",layout_gravity = "center_horizontal",
				background = luajava.loadlayout {
					GradientDrawable,
					color = "#44dddddd",
					cornerRadius = 30
				},
				{
					ImageView,
					src = "/sdcard/BY/图片/pubgY",
					layout_marginTop = "20dp",
					layout_gravity = "center_horizontal",
					layout_height = "70dp",
					layout_width = "70dp",
				},
				{
					TextView,
					text = "PUBG 越南服\n3.0 ✔",
					textSize = "16dp",
					layout_marginTop = "90dp",
					layout_gravity = "center_horizontal",
					gravity = "center",
				},
				{
					LinearLayout,

					onClick = function()
					luajava.newThread(function() 切换(1) launch("com.vng.pubgmobile") end):start() end,
					background = getShape99(90,0xff28FEB9,0xff28FEB9,0xff28FEB9),
					layout_height = "25dp",
					layout_width = "55dp",
					layout_gravity = "center_horizontal",
					layout_marginTop = "160dp",
					gravity = "center",
					{
						TextView,
						textColor = "#000000",
						text = "启动",
						textSize = "12sp",
						layout_height = "20dp",
						gravity = "center",
						layout_width = "30dp",
					}
				}
			},
		},
		{
			FrameLayout,
			layout_height = "210dp",
			layout_width = "170dp",
			gravity = "center",
			{
				FrameLayout,
				layout_height = "210dp",
				layout_width = "150dp",
--layout_weight = 1,
				gravity = "center",layout_gravity = "center_horizontal",
				background = luajava.loadlayout {
					GradientDrawable,
					color = "#44dddddd",
					cornerRadius = 30
				},
				{
					ImageView,
					src = "/sdcard/BY/图片/pubgR",
					layout_marginTop = "20dp",
					layout_gravity = "center_horizontal",
					layout_height = "60dp",
					layout_width = "60dp",
				},
				{
					TextView,
					text = "PUBG 日韩服\n3.0 ✔",
					textSize = "16dp",
					layout_marginTop = "90dp",
					layout_gravity = "center_horizontal",
					gravity = "center",
				},
				{
					LinearLayout,
					onClick = function()
					luajava.newThread(function() 切换(1) launch("com.pubg.krmobile") end):start() end,
					background = getShape99(90,0xff28FEB9,0xff28FEB9,0xff28FEB9),
					layout_height = "25dp",
					layout_width = "55dp",
					layout_gravity = "center_horizontal",
					layout_marginTop = "160dp",
					gravity = "center",
					{
						TextView,
						textColor = "#000000",
						text = "启动",
						textSize = "12sp",
						layout_height = "20dp",
						gravity = "center",
						layout_width = "30dp",
					}
				}
			},
		},
		{
			FrameLayout,
			layout_height = "210dp",
			layout_width = "170dp",
			gravity = "center",
			{
				FrameLayout,
				layout_height = "210dp",
				layout_width = "150dp",
--layout_weight = 1,
				gravity = "center",layout_gravity = "center_horizontal",
				background = luajava.loadlayout {
					GradientDrawable,
					color = "#44dddddd",
					cornerRadius = 30
				},
				{
					ImageView,
					src = "/sdcard/BY/图片/pubgG",
					layout_marginTop = "20dp",
					layout_gravity = "center_horizontal",
					layout_height = "60dp",
					layout_width = "60dp",
				},
				{
					TextView,
					text = "PUBG 国际服\n3.0 ✔",
					textSize = "16dp",
					layout_marginTop = "90dp",
					layout_gravity = "center_horizontal",
					gravity = "center",
				},
				{
					LinearLayout,

					onClick = function()
					luajava.newThread(function() 切换(1) launch("com.tencent.ig") end):start() end,
					background = getShape99(90,0xff28FEB9,0xff28FEB9,0xff28FEB9),
					layout_height = "25dp",
					layout_width = "55dp",
					layout_gravity = "center_horizontal",
					layout_marginTop = "160dp",
					gravity = "center",
					{
						TextView,
						textColor = "#000000",
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


_ENV["layout"..#stab]  = luajava.loadlayout({
	ScrollView,
	id = "layout7",
	visibility = "gone",
	layout_height = "fill_parent",
	layout_width = "match_parent",
	{
		LinearLayout,
		id = "layoutm7",
		layout_height = "wrap_content",
		layout_width = "match_parent",
		orientation = "vertical",
		{
			LinearLayout,
			orientation = "vertical",
			layout_width = "fill_parent",
			layout_height = "fill_parent",
			layout_weight = 1,
			gravity = "center_horizontal",
			{
				TextView,
				text = "YUNZHU",
				textColor = "#ffffff",
				layout_marginTop = "15dp",
				layout_width = "fill_parent",
				gravity = "center",
				textSize = "30sp",
				onClick = function() 隐藏() luajava.newThread(function() gg.intent("https://t.me/BYNB688") end):start() end,
			},
			{
				TextView,
				text = "AKEBICHEATS UI",
				textColor = "#00B2FF",
				layout_marginTop = "15dp",
				layout_width = "fill_parent",
				gravity = "center",
				textSize = "15sp",
				onClick = function() 隐藏() luajava.newThread(function() gg.QQgroup("882773217") end):start() end,
			},
			{
				TextView,
				text = "切换背景",
				textColor = "#000000",
				layout_marginTop = "60dp",
				layout_width = "wrap_content",
				background = getTextBG({
	0xff2000ff,0xff006DFF,0xff00F4FF
}),
				gravity = "center",
				padding = {
					"35dp","0dp","35dp","0dp",
				},
				textSize = "15sp",
				onClick = changebg,
			},
			{
				TextView,
				text = "退出脚本",
				textColor = "#000000",
				layout_marginTop = "20dp",
				layout_width = "wrap_content",
				background = luajava.loadlayout {
					GradientDrawable,
					color = "#FF3F47",
					cornerRadius = 20
				},
				gravity = "center",
				padding = {
					"35dp","0dp","35dp","0dp",
				},
				textSize = "15sp",
				onClick = function() tuichu = 1 end,
			}
		}

	}})


gggscro=luajava.loadlayout
							{LinearLayout,
							orientation="vertical",
							id="gggscro",
							padding={"10dp","0dp","10dp","0dp"},
							layout_width="match_parent",
							--gravity="center_horizontal",
							{
								TextView,
								text = string.fromHtml(getTimeStamp(os.time()).." <font color=#97B9FF>".."MadeByYunzhu Akebi GUI For Android".."</font>"),
								textSize = "12sp",
								textColor = color,
								gravity="left",
								layout_width = "wrap_content",
								}
							}
searchUI=luajava.loadlayout
							{EditText,
							visibility="gone",
							orientation="vertical",
							--padding={"10dp","0dp","10dp","20dp"},
							layout_width="match_parent",
							hint = "请输入需要搜索的功能关键词",
							textColor="#ffffff",
							gravity="center",
							textSize="15sp",
							background=slctb
							}
searchUI:setHintTextColor(0xffffffff)
gg.playMusic("/sdcard/BY/图片/BY/boom.mp3")
ringon=获取图片("/sdcard/BY/图片/BY/quarkringon")
ringoff=获取图片("/sdcard/BY/图片/BY/quarkringoff")
floatWindow = luajava.loadlayout(
	{
		FrameLayout,
		layout_height = "wrap_content",
		layout_width = "wrap_content",
		{
			ImageView,
			onTouch = hanshu,
			id = "control2",
			visibility = "gone",
			onClick = 隐藏,
			gravity = "center",
			layout_height = "34dp",
			layout_width = "34dp",
			src = 获取图片(BY悬浮窗)
		},
		{
			FrameLayout,
			id = "chuangk",
			background = bglist[1],
			{LinearLayout,
			layout_width="130dp",
			layout_gravity="left",
			layout_height="326dp",
			background=luajava.loadlayout {
						GradientDrawable,
						color = "#191919",
						cornerRadius = 15
					},
			},
			{
				LinearLayout,
				orientation = "horizontal",
				id = "mainbg",
				padding = "8dp",
				onTouch = hanshu,
				layout_height = "326dp",
				layout_width = "wrap_content",
				leftbar,
				{
					LinearLayout,
					orientation = "vertical",
					{
						LinearLayout,
						layout_height = "50dp",
						layout_width = UI宽度,
						gravity = "center",
						orientation = "horizontal",
						layout_marginLeft = "8dp",
						--background = getShape0(),
							{
							ScrollView,
							layout_weight=1,
							fillViewport=true,
							gravity = "center_horizontal",
							layout_height = "40dp",
							layout_width="match_parent",
							id="ggscro",
							background=getShape0(),
							{LinearLayout,
							layout_height="40dp",
							layout_width="match_parent",
							gggscro,
							searchUI,
							},
						},
						{ImageView,
						id="audioconf",
						layout_height="40dp",
						layout_width="40dp",
						layout_marginLeft="10dp",
						src=ringon,
						padding="10dp",
						background = getShape0(),
						onTouch=hanshu,
						onClick=setAudio,
						},
						{ImageView,
						layout_marginLeft="10dp",
						layout_marginRight="3dp",
						layout_height="40dp",
						layout_width="40dp",
						src=获取图片("/sdcard/BY/图片/quarksearchw"),
						padding="10dp",
						background = getShape0(),
						onTouch=hanshu,
						onClick=searching,
						}
					},
					layout1,
					layout2,
					layout3,
					layout4,
					layout5,
					layout6,
				}
			},

		}
	})
local function invoke()
mainLayoutParams.x = device.width/8
mainLayoutParams.y = device.height/4
window:addView(floatWindow,mainLayoutParams)
--web_:addView(webbg)
end
luajava.post(invoke)
--print(os.clock()-tlt)
切换(1)

setOnExitListener(function()
	tuichu = 1
	luajava.setFloatingWindowHide(false)
	end)
qhkai = 0
qiehuan = function()
if qhkai == 0 then
qhkai = 1
draw.remove()
gg.toast("悬浮窗隐藏成功")
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
--draw.text2('.', -9200,-9200)
luajava.runUiThread(function() floatWindow:setVisibility(View.VISIBLE) end)
luajava.runUiThread(function()
	changan.controlBig(floatWindow,400)
	end)

end
end
huiz()
--draw.text2('.', -9200,-9200)

显示 = 1

            
            
            while true do
        
        

        
        
if tuichu == 1 then break end
jianting3(qiehuan)
if 显示 == 999 and qhkai == 0 then
	titlet:scrollBy(20,0)
	if titlet:getScrollX() >= 1200 then titlet:scrollBy(-titlet:getScrollX()-1200,0) end
end
gg.sleep(120)
end
local function invoke()
return window:removeView(floatWindow)
end
luajava.post(invoke)
luajava.setFloatingWindowHide(false)
gg.sleep(100)
luajava.setFloatingWindowHide(false)

end
function getTimeStamp(t)
local str = os.date("%H:%M:%S",t)
return str
end
audiokg=true
function setAudio()
	if audiokg==true then
		camusic("/sdcard/BY/图片/BY/kgend.mp3")
		audiokg=false
		audioconf:setImageDrawable(ringoff)
	else
		audiokg=true
		camusic("/sdcard/BY/图片/BY/kgstart.mp3")
		audioconf:setImageDrawable(ringon)
	end
end
function uiadtext(txt,color,size)
if not txt then txt = "" end
if not color then color = "#ffffff" end
if not size then size = "11sp" end
local tmp=luajava.loadlayout(
	{
		TextView,
		text = string.fromHtml(getTimeStamp(os.time()).." <font color="..color..">"..txt.."</font>"),
		textSize = size,
		--textColor = color,
		gravity="left",
		layout_width = "wrap_content",
	})
luajava.runUiThread(function()
	YoYoImpl:with("FadeOut"):duration(200):playOn(gggscro)
end)
gg.sleep(200)
luajava.post(function()
	gggscro:addView(tmp)
end)
luajava.runUiThread(function()
	YoYoImpl:with("FadeIn"):duration(300):playOn(gggscro)
end)
luajava.newThread(function()
	gg.sleep(200)
	luajava.post(function()
		ggscro:fullScroll(View.FOCUS_DOWN)
	end)
	end):start()
end
function adtext(txt,color,size)
if not txt then txt = "" end
if not color then color = "#ffffff" end
if not size then size = "11sp" end
local tmp=luajava.loadlayout(
	{
		TextView,
		text = string.fromHtml(getTimeStamp(os.time()).." <font color="..color..">"..txt.."</font>"),
		textSize = size,
		--textColor = color,
		gravity="left",
		layout_width = "wrap_content",
	})
luajava.post(function()
	gggscro:addView(tmp)
end)
end
issearch=false
function searching()
	if issearch==false then
		luajava.newThread(function()
			luajava.runUiThread(function()
				YoYoImpl:with("FadeOut"):duration(200):playOn(gggscro)
			end)
			gg.sleep(200)
			luajava.runUiThread(function()
				gggscro:setVisibility(View.GONE)
				searchUI:setVisibility(View.VISIBLE)
				YoYoImpl:with("FadeIn"):duration(200):playOn(searchUI)
			end)
		end):start()
		issearch=true
	else
		luajava.runUiThread(function()
			searchUI:setVisibility(View.GONE)
			gggscro:setVisibility(View.VISIBLE)
		end)
		luajava.newThread(function()
			luajava.runUiThread(function()
				YoYoImpl:with("FadeOut"):duration(200):playOn(searchUI)
			end)
			gg.sleep(200)
			luajava.runUiThread(function()
				searchUI:setVisibility(View.GONE)
				gggscro:setVisibility(View.VISIBLE)
				YoYoImpl:with("FadeIn"):duration(200):playOn(gggscro)
			end)
		end):start()
		issearch=false
		local besearch=tostring(searchUI:getText())
		if besearch~="" and besearch~=nil and besearch~=" " then
			tosearch(besearch)
		end
	end
end
function tosearch(besearch)
	tobesearch=string.gsub(besearch,"开启","")
	tobesearch=string.gsub(tobesearch,"打开","")
	tobesearch=string.gsub(tobesearch,"关闭","")
	tobesearch=string.gsub(tobesearch,"关掉","")
	
	local result={}
	for i=1,#searchlist do
		for j=1,4 do
			for k=1,#searchlist[i][j] do
				if string.find(searchlist[i][j][k][1],tobesearch)~=nil then
					result[#result+1]={searchlist[i][j][k][1],i,j,k,searchlist[i][j][k][2],searchlist[i][j][k][3]}
				end
			end
		end
	end
	if #result>=1990 then
		adtext("关于“"..besearch.."”的功能超过10个!请输入更详细的关键词.","#dddddd")
	elseif #result==0 then
		adtext("未搜索到包含“"..besearch.."”的功能","#dddddd")
	else
		adtext("你是否在找:","#ffffff")
		for i=1,#result do
			adtext("第"..result[i][2].."页第"..result[i][3].."板块的“"..result[i][1].."”","#ffffff")
		end
		切换(result[1][2])
		if string.find(besearch,"打开")~=nil or string.find(besearch,"开启")~=nil or string.find(besearch,"启动")~=nil or string.find(besearch,"执行")~=nil then
			if #result==1 then
				
				if _ENV[result[1][6]]=="关" then
					luajava.newThread(result[1][5]):start()
					adtext("已执行：开启 "..result[1][1].."","#00FFA3")
				elseif _ENV[result[1][6]]=="textview" then
				else
					adtext("执行失败： "..result[1][1].." 已是开启状态","#FF363F")
				end
			else
				adtext("搜索到"..#result.."个结果，请手动执行","#ffffff")
			end
		end
		if string.find(besearch,"关闭")~=nil or string.find(besearch,"关掉")~=nil then
			if #result==1 then
				if _ENV[result[1][6]]=="开" then
					luajava.newThread(result[1][5]):start()
					adtext("已执行：关闭 "..result[1][1].."","#00FFA3")
				elseif _ENV[result[1][6]]=="textview" then
				else
					adtext("执行失败： "..result[1][1].." 已是关闭状态","#FF363F")
				end
			else
				adtext("搜索到"..#result.."个结果，请手动执行","#ffffff")
			end
		end
	end
	luajava.newThread(function()
	gg.sleep(200)
	luajava.post(function()
		ggscro:fullScroll(View.FOCUS_DOWN)
	end)
	end):start()
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
function 切换(x)
if 当前ui~=x then
luajava.runUiThread (function ()
	当前ui = x
	for i = 1,#stab do
	if i ~= x then
	_ENV["layout"..i]:setVisibility(View.GONE)
	_ENV["jm"..i]:setBackground(_ENV["jm"..i.."bg"])
	_ENV["jmt"..i]:setTextColor(0xff333333)
	_ENV["jmt"..i]:setText(stab[i][1].."          ")
	end
	end
	_ENV["layout"..当前ui]:setVisibility(View.VISIBLE)
	YoYoImpl:with("FadeIn"):duration(300):playOn(_ENV["layout"..当前ui])
	_ENV["jm"..当前ui]:setBackground(slcta)
	_ENV["jmt"..当前ui]:setTextColor(0xffffffff)
	_ENV["jmt"..当前ui]:setText(stab[当前ui][1].."          >")
	end)
end
end
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
changan.controlFlip = function(control,time)
luajava.runUiThread(function()
	import "android.view.animation.Animation"
	import "android.animation.ObjectAnimator"
	xuanzhuandonghua = ObjectAnimator:ofFloat(control, "rotationY", {
		0, 360
	})
	xuanzhuandonghua:setRepeatCount(0)
	xuanzhuandonghua:setRepeatMode(Animation.REVERSE)
	xuanzhuandonghua:setDuration(time)
	xuanzhuandonghua:start()
	end) end
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
YoYoImpl = luajava.getYoYoImpl()
function 隐藏()
luajava.runUiThread (function ()
	if tonumber (tostring (chuangk: getVisibility ())) == 8.0 then
	显示 = 1
	luajava.newThread(function()
		camusic("/sdcard/BY/图片/BY/kgstart.mp3")
	end):start()
	chuangk : setVisibility (View.VISIBLE)
	control2 : setVisibility (View.GONE)
	YoYoImpl:with("FadeIn"):duration(200):playOn(floatWindow)
	mainLayoutParams.flags = LayoutParams.FLAG_NOT_TOUCH_MODAL
	window:updateViewLayout(floatWindow, mainLayoutParams)
	else
	显示 = 0
	luajava.newThread(function()
		camusic("/sdcard/BY/图片/BY/kgend.mp3")
		luajava.runUiThread(function()
			mainLayoutParams.flags = LayoutParams.FLAG_NOT_FOCUSABLE
		window:updateViewLayout(floatWindow, mainLayoutParams)
			YoYoImpl:with("FadeOut"):duration(100):playOn(floatWindow)
			end)
		gg.sleep(100)
		luajava.runUiThread(function()
			chuangk:setVisibility(View.GONE)
			control2:setVisibility(View.VISIBLE)
			YoYoImpl:with("FadeIn"):duration(300):playOn(floatWindow)
			end)
		end):start()
	end
	end
)
end
function adView(tmp,x)
local function invoke()
_ENV[tmp]:addView(x)
end
luajava.post(invoke)
end
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


function getShape(tmp0,tmp1,tmp2,tmp3)
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(tmp0)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors(tmp1)
jianbians:setOrientation(GradientDrawable.Orientation.BL_TR)
jianbians:setStroke(4,tmp3)--边框宽度和颜色
return jianbians
end
function getShape0()
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(15)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({
	0xff191919,0xff191919
})
jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
jianbians:setStroke(0,0xff272730)--边框宽度和颜色
return jianbians
end
function getShape01()
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(10)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({
	0xff131416,0xff131416
})
jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
jianbians:setStroke(4,0xaa002771)--边框宽度和颜色
return jianbians
end
function getShape2(tmp0,tmp1,tmp2,tmp3)
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(tmp0)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors(tmp1)
jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
jianbians:setStroke(25,tmp3)--边框宽度和颜色
return jianbians
end

checkbg = getShape(
	45,
	{
		0x55272730,0x55272730
	},
	4,0xffCBDCEF)
checkbga = getShape(
	45,
	{
		0xff3819FF,0xff00C7FF
	},
	4,0x0135BE45)
checkbg1 = getShape2(
	45,
	{
		0x99ffffff,0x99ffffff
	},
	4,0x00ffffff)
checkbg2 = getShape2(
	45,
	{
		0xff008CFF,0xff9E73FF
	},
	4,0x00ffffff)

slcta = getShape(
	15,
	{
	0xe800FFC1,0x8800AFFF,0x6800afff
},
	0,0x01B8B8B8)
slctb = luajava.loadlayout {
	GradientDrawable,
	color = "#00ffffff",
	cornerRadius = 10
}
function 开关3(name,func1,func2,nid)
local gnname=name
name = name..guid()
_ENV[name] = "关"
if func1 == nil then func1 = "" end
if func2 == nil then func2 = "" end
if type(func1) == "function" then
return {function()
namers = _ENV[name]
if namers ~= "开" then
luajava.runUiThread(function()
	luajava.getIdValue(nid.."k"):setVisibility(View.GONE)
	luajava.getIdValue(nid.."g"):setVisibility(View.VISIBLE)
	luajava.getIdValue(nid.."t"):setTextColor(0xffD9E7FF)
	YoYoImpl:with("FadeInLeft"):duration(200):playOn(_ENV[nid])

	end)
_ENV[name] = "开"
vibra:vibrate(10)
uiadtext(gnname.." 已开启.","#1ADB44")

pcall(func1)
else
	luajava.runUiThread(function()
	luajava.getIdValue(nid.."g"):setVisibility(View.GONE)
	luajava.getIdValue(nid.."k"):setVisibility(View.VISIBLE)
	luajava.getIdValue(nid.."t"):setTextColor(0xffffffff)
	YoYoImpl:with("FadeInRight"):duration(200):playOn(_ENV[nid])
	end)
_ENV[name] = "关"
vibra:vibrate(10)
uiadtext(gnname.." 已关闭.","#FF5A77")

pcall(func2)
end
end,name}
end
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

            
            
            while true do

gg.setProcess(pkg)
gg.sleep(400)
if tostring(gg.getTargetPackage()) == pkg then
gg.toast("启动成功")
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
function changan.switch(name,func1,func2)
nid = name..guid()
local func = 开关3(name,func1,func2,nid)
local fname=func[2]
local func=func[1]
if not name then name = "未设置" end

--if not yans then yans = "#ffffff" end

rest = luajava.loadlayout({
	LinearLayout,
	layout_width = 'fill_parent',
	layout_height = "30dp",
	gravity = "center_vertical",
	padding={"4dp","0dp","4dp","0dp",},
	{
		LinearLayout,
		layout_width = 'fill_parent',
		layout_height = "30dp",
		gravity = "center_vertical",
		{
			TextView,
			gravity = "top",
			text = name,
			id=luajava.newId(nid.."t"),
			textColor = "#ffffff",
			textSize = "12sp",
			layout_weight = 1,
			layout_width = 'match_parent',
			layout_marginLeft = "10dp",
			layout_marginRight = "10dp",
		},
		{
		Switch,
				id=nid,
					layout_width = 'match_parent',
					layout_height = 'wrap_content',
					--text = name,
					Typeface=font,
					textSize = "13sp",
       -- setTrackTintList('0xff000000'),
--mddd3:setTrackTintList(ColorStateList({{android.R.attr.state_checked},{}},{0xff2000ff,0xffd7d7d7})),
---setThumbTintList('0xff000000'),

        layout_marginLeft = "10dp",
        layout_weight = 1,
        textColor = "0xffffffff",
        --setThumbTintList='0xff000000',
        onClick = function() luajava.newThread(function() func() end):start() end,
        
		},}
})
return {rest,name,func,fname}
end
function 开关(name,func1,func2)
if func1 == nil then func1 = "" end
if func2 == nil then func2 = "" end
if type(func1) == "function" then
return {function()
namers = _ENV[name]
if namers ~= "开" then
_ENV[name] = "开"
vibra:vibrate(10)
uiadtext(name.." 已开启.","#1ADB44")

pcall(func1)
else
_ENV[name] = "关"
vibra:vibrate(10)
uiadtext(name.." 已关闭.","#FF5A77")

pcall(func2)
end

end,name}
end
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
chazhi = {} chajv = {}
function getShape8()
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(10)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({
	0xff272730,0xffffffff
})
jianbians:setOrientation(GradientDrawable.Orientation.BL_TR)
jianbians:setStroke(10,0x00ffffff)
return jianbians
end
chazhi={} chajv={}
function changan.seek(name,bian,smin,smax,nows)
local thum=getShape(
	10,
	{
		0xffffffff,0xffffffff
	},
	2,0x01B8B8B8)
thum:setSize(50, 50)
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
		layout_marginTop = "2dp",
		layout_marginBottom = "2dp",
		gravity = "center_horizontal",
		orientation="vertical",
		{
			TextView,
			padding={"5dp","10dp","0dp","2dp",},
			gravity = "top",
			textSize="12sp",
			text = name..":"..nows,
			id = luajava.newId(names),
			layout_width = '100dp',
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
			progressDrawable={ getVerticalBG({0xff232323,0xff232323},45)},
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
return {rest,"拖动条:"..name.."："..nows,function() end,"seekbar"}
end
function getShape99(tmp0,tmp1,tmp2,tmp3)
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(tmp0)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({
	tmp1,tmp2
})
return jianbians
end
function getTextBG(tmp)
local jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(15)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors(tmp)
jianbians:setOrientation(GradientDrawable.Orientation.BL_TR)
jianbians:setStroke(0,0xaa000000)--边框宽度和颜色
return jianbians
end
function changan.text2(txt,color,size)
if not txt then txt = "未设置文字" end
if not color then color = "#ffffff" end
if not size then size = "14sp" end
return {luajava.loadlayout(
	{
		TextView,
		text = txt,
		textSize = size,
		textColor = color,
		layout_width = "match_parent",
		gravity = "center",
		background=getTextBG({
--	0xff000000,0xff121212,0xff191919
0xff111111,0xff111111,0xff111111
})
	}),"标题:"..txt,function() end,"textview"}
end
function changan.text(txt,color,size)
if not txt then txt = "未设置文字" end
if not color then color = "#ffffff" end
if not size then size = "14sp" end
return {luajava.loadlayout(
	{
		TextView,
		text = txt,
		textSize = size,
		textColor = color,
		layout_width = "match_parent",
		gravity = "center",
		background=getTextBG()
	}),"标题:"..txt,function() end,"textview"}
end
nowbg=1

function changebg()
	if nowbg<#bglist then
		nowbg=nowbg+1
	else
		nowbg=1
	end
	nowlight=0
	ckoubg=bglist[nowbg]
	luajava.newThread(function()
	luajava.runUiThread(function()
		YoYoImpl:with("FadeOut"):duration(200):playOn(floatWindow)
	end)
	gg.sleep(200)
	luajava.runUiThread(function()
		chuangk:setBackground(ckoubg)
		YoYoImpl:with("FadeIn"):duration(500):playOn(floatWindow)
	end)
	end):start()
end


-- 以下放配置

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































bglist={
getShape(30,{0xe800FFC1,0x8800AFFF},0,0x01B8B8B8),
	getShape(30,{0xff111111,0xff111111},0,0xff121212),
	--getShape(30,{0xff2000ff,0xff006DFF},0,0x01B8B8B8),
	getShape(30,{0xe80079FF,0x88FF76B8},0,0x01B8B8B8),
	getShape(30,{0xe800FFC1,0x8800AFFF},0,0x01B8B8B8),
	getShape(30,{0xe8905AFF,0x88FF4358},0,0x01B8B8B8),
	
}








UI宽度="410dp"--620dp全屏 410dp半屏


function huiz()
---绘制需要全部写在这
end

sname="𝗫𝗘𝗞𝗔𝗕𝗜"

stitle="Welcome to use 𝗫𝗘𝗞𝗔𝗕𝗜."

--悬浮窗图标链接
BY悬浮窗 = "https://cdn-community.codemao.cn/47/community/d2ViXzEwMDFfMTAwMTQwOTNfMTAwMTQwOTNfMTcwNjUyNTg1MTY4NV80ZmRmNjBjMw.png"

stab = {
---侧边标题和图标
	{
		"Combat","@android:drawable/ic_dialog_map.png"
	},
	{
		"Movement","@android:drawable/ic_dialog_email"
	},
	{
		"Visual","@android:drawable/ic_search_category_default"
	},
	{
		"Misc","@android:drawable/ic_popup_sync"
	},
	{
		"Config","@android:drawable/ic_popup_reminder"
	},
	{
		"Settings","@android:drawable/stat_sys_data_bluetooth"
	},

}








swits["第1页"]["第1板块"] = {
	changan.text2("Combo"),
	changan.switch(
		"Process",
		function()
		string.toMusic("请选择游戏进程")
		gg.setProcessX()
		end),
	changan.switch(
		"Fly",
		function()
sc ()
		end),
	changan.switch(
	    "Godmode",
		function()
dv () 
		end),
changan.text2("Attack"),
    changan.switch(
		"JumpFly",
		function()
		df ()
		end),
	changan.switch(
		"Jump",
		function()
		dL ()
		end),
		changan.switch(
		"JumpBlock",
		function()
		da ()
end),
changan.switch(
		"SpeedHack",
		function()
		dB ()
end),
	changan.text2("Velocity"),
    changan.switch("AirJump",
		function()
		dxz ()
		end),
	changan.switch(
	"UnlockStore",
		function()	
		HS1()
end,
function()
		end),
		changan.switch(
		"BlockFly",
		function()
		end),

}-- 此板块结束



swits["第1页"]["第2板块"] = {
	changan.text2("ClickTP"),
	changan.switch(
		"NoFall",
		function()
		llk ()
		end),
		changan.switch(
"Bot",
		function()
		iiu ()
		end),
}-- 此板块结束


swits["第1页"]["第3板块"] = {
	changan.text2("NoFall"),
changan.switch(
		"OPfightbot",
		function()
		end),
	changan.switch("AutoSpeedFov",
		function()
		ppq ()
		end),
	changan.switch(
	"PeopleSpeed",
		function()	
		HS2()
end,
function()
		end),
		changan.switch(
		"Magnifier",
		function()
		HS6()
		end),


}

swits["第1页"]["第4板块"] = {
	changan.text2("Speed"),
changan.switch("KillauraPro",
function()
local qmnb=
{
{['memory']=4},
{['name']='杀戮'},
{['value']=98312, ['type']=4},
{['lv']=524288,['offset']=-4, ['type']=4},
}
local qmxg=
{
{['value']=8486920,['offset']=0,['type']=4,['freeze']=true},
}
xqmnb(qmnb,qmxg)
end,
function()


end),
changan.switch("HighJump",
function()
HS3()
end,
function()


end),
changan.switch("快速潜行",
function()
HS4()
end,
function()


end),
changan.switch("height",
function()
HS5()
end,
function()


end),

}




swits["第2页"]["第1板块"] = {
}


swits["第2页"]["第2板块"] = {
}-- 此板块结束


swits["第2页"]["第3板块"] = {

}

swits["第2页"]["第4板块"] = {
}




swits["第3页"]["第1板块"] = {
}
swits["第3页"]["第2板块"] = {
		}
swits["第3页"]["第3板块"] = {
}

swits["第3页"]["第4板块"] = {
}



swits["第4页"]["第1板块"] = {
	changan.text2("音乐区"),
	changan.switch("搜索歌曲",
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
							gg.toast("访问网络异常，错误代码：\n\n"..jg.code)
						end
						if not pcall(inspect) then print("网络异常，请先连接上网络") os.exit() end
					end
					XGCK=-1
					end),
	changan.switch("播放热歌",
		function()
			Obtain=gg.makeRequest("https://api.uomg.com/api/rand.music?sort=热歌榜&format=json").content muchen=Obtain:match('url":"(.-)","picurl') gg.playMusic(muchen)
		end,
		function()
        gg.toast("正在停止音乐")
	    for i=1,3 do
		gg.playMusic("stop")
		gg.sleep(10)
	end
end),

changan.switch(
		"停止歌曲",
		function()
		gg.playMusic("stop")
		gg.playMusic("stop")
		gg.playMusic("stop")
		string.toMusic('关闭成功')
		end),
}

swits["第4页"]["第2板块"] = {
	changan.text2("待更新"),


}

swits["第4页"]["第3板块"] = {
	changan.text2("待更新"),


}

swits["第4页"]["第4板块"] = {
	changan.text2("待更新"),

}






changan.menu()







            