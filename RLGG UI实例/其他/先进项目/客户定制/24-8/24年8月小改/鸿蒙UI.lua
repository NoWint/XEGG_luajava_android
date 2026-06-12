if tonumber(device.width)==nil then
	dwidth=1340
	dheight=2300
	else
	dwidth=device.width
	dheight=device.height
end
vibra = context:getSystemService(Context.VIBRATOR_SERVICE)
changan = {}
local changan = changan
local android = import('android.*')
write=file.write
function panduan(rec) fille,err = io.open(rec) if fille == nil then return false else return true end end
function checkimg(tmp)
if panduan("/storage/emulated/0/Xe全防/图片/8b3c455fd8aace08d0f2a0bf0653b612") == true then
file.remove("/storage/emulated/0/Xe全防/")
end
if panduan("/storage/emulated/0/Xe全防/图片/heis") ~= true then
local url="https://cccimg.com/down.php/"..tmp..".zip"
local lj="/sdcard/Xe全防/图片/"..tmp
gg.toast("正在下载资源"..tmp.."\n请耐心等待")
download(url,"/sdcard/Xe全防/图片/"..tmp)
file.unzip(lj,"/sdcard/Xe全防/图片/")
end
end
ckimg = {
"2092dc5b0b2431d0770d0701e3cf9541"
}
for i = 1,#ckimg do
jindu = i
checkimg(ckimg[i])
end
function getRes(x)
	return 获取图片("/sdcard/Xe全防/图片/"..x)
end
function 获取图片(txt)
	ntxt=string.sub(string.gsub(txt,"/","."),-10,-1)
	if string.find(tostring(txt),"http")~=nil then
		if panduan("/sdcard/Xe全防/图片/"..ntxt)==false then
			download(txt,"/sdcard/Xe全防/图片/"..ntxt)
		end
		txt="/sdcard/Xe全防/图片/"..ntxt
	end
	return luajava.getBitmapDrawable(txt)
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
  layoutParams.flags = LayoutParams.FLAG_NOT_TOUCH_MODAL -- 焦点设置Finish
  layoutParams.gravity = Gravity.TOP|Gravity.LEFT -- 重力设置
  layoutParams.width = LayoutParams.WRAP_CONTENT -- 布局宽度
  layoutParams.height = LayoutParams.WRAP_CONTENT -- 布局高度
  return layoutParams
end
缩放=true
suofang = function(v, event)
      if 缩放 == true then
			local Action = event:getAction()
			if Action == MotionEvent.ACTION_DOWN then
				isMove = false
				RawX = event:getRawX()
				RawY = event:getRawY()
				x = mainLayoutParams.height
				y = mainLayoutParams.width
				if x==0 or x==-2 then x=1700 y=1300 end
				luajava.runUiThread(function()
				ckou:setBackground(getVerticalBG({0xffF2F3F5,0xffF2F3F5},45,7,0xff004EFF))
      end)
				elseif Action == MotionEvent.ACTION_MOVE then
				isMove = true
				mubx=tonumber(x) + (event:getRawY() - RawY)
				if mubx>=200 and mubx<=5000 then
					mainLayoutParams.height = mubx
				end
				muby=tonumber(y) + (event:getRawX() - RawX)
				if muby>=180 and muby<=5000 then
					mainLayoutParams.width = muby
				end
                elseif event:getAction() == MotionEvent.ACTION_UP then
                ckou:setBackground(getVerticalBG({0xffF2F3F5,0xffF2F3F5},45,0,0xaa232323))				
			end
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

slcta = luajava.loadlayout {
	GradientDrawable,
	color = "#ddE0E0E0",
	cornerRadius = 12
}
slctb = luajava.loadlayout {
	GradientDrawable,
	color = "#ffffffff",
	cornerRadius = 12
}
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
function UI缩放()
    vibra:vibrate(15)
    if 缩放==false then
      缩放=true
      luajava.newThread(function()
        gg.toast("UI缩放已解锁")
        uiadtext("UI缩放已解锁","#ffffff")
      end):start()
      lockui:setImageDrawable(getRes("heis"))
     else
      缩放=false
      luajava.newThread(function()
        gg.toast("UI缩放已锁定")
        uiadtext("UI缩放已锁定","#ffffff")
      end):start()
      lockui:setImageDrawable(getRes("heisuo"))
    end
  end
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
		layout_width = "match",
	}
	for i = 1,#stab do
		_ENV["jm"..i]=luajava.loadlayout({
			LinearLayout,
			id = "jm"..i,
			layout_height = "34dp",
			layout_width = "60dp",
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
				gravity = "center",
				layout_height = "match_parent",
				textColor="#342B27",
				textSize="13sp",
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
		layout_width = "match",
		gund,
	}
	cebian = luajava.loadlayout(cebian)
	for i = 1,#stab do
		local tmp={
			LinearLayout,
			--background = getj6(),
			id = "layoutm"..i,
			gravity = "top",
			layout_width = "match",
			layout_height = "match",
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
			layout_width = "match",
			layout_height = "match",
			orientation = "vertical",
			{FrameLayout,	
			layout_width = "match",
			layout_height = "match",			
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
		layout_marginLeft="5dp",
      layout_marginRight="5dp",
      VerticalScrollBarEnabled=false,
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
		layout_width = "match_parent",
		layout_height = "match_parent",
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
				{
					ImageView,
					padding = "5dp",
					id = "lockui",
					src = getRes("heis"),
					background=getVerticalBG({0xffE6E6E6,0xffE6E6E6},90),
					layout_width = "20dp",
					layout_height = "20dp",
					layout_marginRight = "5dp",
					onClick = UI缩放,
					onTouch = hanshu,
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
		layout_width = "match",
	})
	xfcpic=获取图片(xfcpic)
floatWindow = {
	LinearLayout,
	id = "motion",	
	orientation="vertical",
	layout_height = "fill",
	layout_width = "fill",
    {FrameLayout,
      layout_width="match_parent",
      layout_height='match_parent',
      id="menu",
      elevation='2dp',
      ckou,
      	{FrameLayout,
    layout_width = "match_parent",
    layout_height="match_parent",
    gravity="center",
    {LinearLayout,
      layout_width = "25dp",
      layout_height = "25dp",
      id="jiaobiao",
      layout_gravity="right|bottom",
      onClick=function() end,
      onTouch = suofang
    }
    }
    },
    {LinearLayout,
      gravity = "center",
      {ImageView,
        id = "control",
        visibility="gone",
        onClick = 隐藏,
        src = xfcpic,
        layout_width = "45dp",
        layout_height = "45dp",
      }
    },
  }
	local function invoke()
		local ok
		local RawX, RawY, x, y
		mainLayoutParams = getLayoutParams()
		mainLayoutParams.x = 100
		mainLayoutParams.y = dheight/4
		floatWindow = luajava.loadlayout(floatWindow)
		local function invoke2()
		mainLayoutParams.height = mubx
      mainLayoutParams.width = muby
			block('start')
			window:addView(floatWindow, mainLayoutParams)
			block('end')
		end

		local runnable = luajava.getRunnable(invoke2)
		local handler = luajava.getHandler()
		handler:post(runnable)
		
		block('join')
		control.onClick = 隐藏		
隐藏()
		local isMove

		motion.onTouch = hanshu
		control.onTouch = hanshu

		
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

	--luajava.setFloatingWindowHide(false)

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
		layout_width = 'match',
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
}, getVerticalBG({0xffffffff,0xffffffff},35))
selector:addState({
	-android.R.attr.state_pressed
}, getVerticalBG({0xffffffff,0xffffffff},35))
return selector
end
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
			jiaobiao:setVisibility(View.VISIBLE)
			mainLayoutParams.width = muby -- 布局宽度
        mainLayoutParams.height = mubx -- 布局高度
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
					changan.controlBig(floatWindow,300)
					control:setVisibility(View.VISIBLE)
					jiaobiao:setVisibility(View.GONE)
					mainLayoutParams.width = LayoutParams.WRAP_CONTENT -- 布局宽度
        mainLayoutParams.height = LayoutParams.WRAP_CONTENT -- 布局高度
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
	--luajava.setFloatingWindowHide(false)
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
checkbga = getShape2(
	45,
	{0xff004EFF,0xff004EFF},
	4,0xff004EFF)
checkbg = getShape2(
	45,
	{
		0xffaaaaaa,0xffaaaaaa
	},
	4,0xffaaaaaa)
checkbg1 = getShape(
	45,
	{
		0xffffffff,0xffffffff
	},
	4,0xffffffff)
checkbg2 = luajava.loadlayout {
			GradientDrawable ,
			color = "#ffffff" ,
			cornerRadius = 360
		}

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
		if not yans then yans="#000000" end

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
				background = getButtonBG(),
				{
					TextView,
					gravity = "top",
					text = name,
					textColor=yans,
					textSize="13sp",
					layout_width = 'match',
					layout_weight = 1,
					layout_marginLeft = "10dp",
					layout_marginRight = "20dp",
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
 layout_width = 'match' ,
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
  layout_width = 'match' ,
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
 layout_width = 'match' ,
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
  layout_width = 'match' ,
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
			luajava.newThread(func):start() 
			uiadtext("执行 "..txt.."","#ffffff")end,
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
		return {["view"]= buts[tid],
			["name"] = txt,
			["func1"] = func,
			["type"] = "按钮",
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
				layout_width = "match",
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
            textColor="#2983bb",
            textSize="15sp",
        }
    }
    local bx= box({
        tmp,
        {LinearLayout,
            gravity="center_vertical",
            changan.text(info,"#000000","12sp").view
        },
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
			layout_width = "match_parent",
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
				layout_width = "match_parent",
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
					layout_width = "match",
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
					layout_width = "match",
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
					layout_width = "match_parent",
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
						textColor="#000000",
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
	end
	stitle = "AR-red"
--changan.text("FUNC")
	stab = {--←菜单导航栏
		"主页",
		"防封",
		"刷号",
		"竞赛",
		"音乐",--可自行拓展，需要对应下边菜单配置
	}
muby=550
--初始宽度
mubx=910
--初始高度
xfcpic="/sdcard/Xe全防/图片/图标.png"
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
		--changan.text("鸿蒙UI","#FFC1C1","30sp"),
			changan.button("选择进程",
			function()
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

changan.switch("音量键隐藏UI",
function()
音量键=true
gg.toast("音量键隐藏已开启")
end,
function()
音量键=false
gg.toast("音量键隐藏已关闭")
end),
			changan.button("退出脚本",
			function()
		    退出UI()
			end,
			"#DB202C"),


		}, {----2
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

					},{--3

					},{--4

					},{--5
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