

vibra = context:getSystemService(Context.VIBRATOR_SERVICE)
changan = {}
local changan = changan
local android = import('android.*')
write=file.write
function panduan(rec) fille,err = io.open(rec) if fille == nil then return false else return true end end
read=file.read
function checkimg(tmp)
if panduan("/sdcard/长安/图片/"..tmp) ~= true then
gg.toast("正在加载资源"..tmp)
download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..tmp,"/sdcard/长安/图片/"..tmp)
end
end
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
ckimg = {
	"pubgT","pubgG","pubgY","pubgR","leimu","quarkpic",
	"right","down","xz_gg","yehu",
	"quarkconfw","arwhitex",
	'skin',	"star1","star2","heix",
	'bm_launch','safe','bm_gn',
	'bm_music','bm_sz','mh',
	'heir','hei_right',"zhiyin1","lmx",
	'star1','star2','ringon','ringoff',	'Shimmer2.dex',
	"blackx",
}
for i = 1,#ckimg do
checkimg(ckimg[i])
end
context = app.context
window = context:getSystemService("window") -- 获取窗口管理器
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


local ui = require('ui')
import("android.ext.*")
vibra = context:getSystemService(Context.VIBRATOR_SERVICE)
local android = import('android.*')
local windowManager = require('windowManager')
local viewManager

function getVerticalBG(gtvb1,gtvb3,gtvb4,gtvb5)
if not gtvb4 then gtvb4 = 0 gtvb5 = 0xff000000 end
local jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(gtvb3)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors(gtvb1)
jianbians:setStroke(gtvb4,gtvb5)--边框宽度和颜色
return jianbians
end

function getRes(x)
return 获取图片("/sdcard/长安/图片/"..x)
end
function getHorizontalBG(gtvb1,gtvb3,gtvb4,gtvb5)
if not gtvb4 then gtvb4 = 0 gtvb5 = 0xfff4f4f4 end
local jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(gtvb3)
jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors(gtvb1)
jianbians:setStroke(gtvb4,gtvb5)--边框宽度和颜色
return jianbians
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
	return string.format('%s%s%s',
	string.sub(sid,1,8),
	string.sub(sid,10,12),
	string.sub(sid,21,22))
end

function 获取图片(txt)
ntxt = string.sub(string.gsub(txt,"/","."),-10,-1)
if string.find(tostring(txt),"http") ~= nil then
if panduan("/sdcard/长安/图片/"..ntxt) == false then
luajava.download(txt,"/sdcard/长安/图片/"..ntxt)
end
txt = "/sdcard/长安/图片/"..ntxt
--txt="https://www.baidu.com/img/flexible/logo/pc/result.png"
end
return luajava.getBitmapDrawable(txt)
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
function getButtonBG()
local selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, getVerticalBG({0x55545454,0x55545454},15))
selector:addState({
	-android.R.attr.state_pressed
}, getVerticalBG({0x44ffffff,0x44ffffff},15,4,0xff232323))
return selector
end
controlWater = function(control,time)
  luajava.runUiThread(function()
    import "android.animation.ObjectAnimator"
    ObjectAnimator():ofFloat(control,"scaleX", {
      1, 0.8, 0.9, 1
    }):setDuration(time):start()
    ObjectAnimator():ofFloat(control,"scaleY", {
      1,0.8,0.9,1
    }):setDuration(time):start()
end) end
	
controlRotation = function(control, time,t)
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
function line()
rest = luajava.loadlayout({
	LinearLayout,
	layout_width = 'fill_parent',
	layout_height = "1dp",
	background = "#50000000",
})
return rest
end
function cardpartL(views)
local tid = "box"..guid()
local ttid = tid.."678"
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
} else

end
radios = {

	LinearLayout,
	layout_marginLeft = "33dp",
	layout_marginRight = "33dp",
	layout_marginTop = "33dp",
	layout_marginBottom = "33dp",
	orientation = "horizontal",
	padding = "6dp",
	background = luajava.loadlayout {
			GradientDrawable ,
			color = views[1] ,
			cornerRadius = 65
		} ,
		elevation='2dp',
	layout_width = 'fill_parent',

	{
            ImageView,  -- 左侧图片
            layout_width = "150dp",
            layout_height = "200dp",
            gravity  = "center",
            
        --    src = "/storage/emulated/0/云烛/图片/abc.png",  -- 请替换为实际图片路径
        src="/storage/emulated/0/云烛/图片/ca_llz",
            layout_marginLeft = "-10dp",
	layout_marginRight = "3dp",
	layout_marginTop = "0dp",
	layout_marginBottom = "3dp",
        }
	--[[
	        {
            ImageView,  -- 左侧图片
            layout_width = "match_parent",
            layout_height = "200dp",
            gravity  = "center|top",
            src = "https://img0.baidu.com/it/u=1991821569,3551667704&fm=253&fmt=auto&app=120&f=JPEG?w=1422&h=800",  -- 请替换为实际图片路径
            layout_marginLeft = "3dp",
	layout_marginRight = "3dp",
	layout_marginTop = "1dp",
	layout_marginBottom = "3dp",
        },]]
},{
LinearLayout,
orientation = "vertical",
}

--[[
radios = {
	LinearLayout,
	layout_marginLeft = "3dp",
	layout_marginRight = "3dp",
	layout_marginTop = "3dp",
	layout_marginBottom = "3dp",
	orientation = "horizontal",
	padding = "0dp",
	background = luajava.loadlayout( {
	
			GradientDrawable ,
			color = views[1] ,
			cornerRadius = 15,

			
		}) ,
		elevation='2dp',
--	layout_width = 'fill_parent',
	        {
            ImageView,  -- 左侧图片
            layout_width = "100dp",
            layout_height = "100dp",
            scaleType = "centerCrop",
            src = "https://pan.jl8.top/view.php/5e036f2451d7c2bd6bb1d8fc173d7231.jpg"  -- 请替换为实际图片路径
        },},
        {
            LinearLayout,  -- 右侧垂直布局容器
            layout_width = "match_parent",
            layout_height = "match_parent",
            layout_weight = 1,
            orientation = "vertical"
            -- 这里可以继续添加内容
        }

]]
for i = 2,#views do
radios[#radios+1] = views[i]
if i~=#views then
--radios[#radios+1] = line()
end
end
firadio[#firadio+1] = radios
return luajava.loadlayout(firadio)
end

function cardpartR(views)
local tid = "box"..guid()
local ttid = tid.."678"
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
} else

end
radios = {

	LinearLayout,
	layout_marginLeft = "33dp",
	layout_marginRight = "33dp",
	layout_marginTop = "33dp",
	layout_marginBottom = "33dp",
	orientation = "horizontal",
	padding = "6dp",
	background = luajava.loadlayout {
			GradientDrawable ,
			color = views[1] ,
			cornerRadius = 65
		} ,
		elevation='2dp',
	layout_width = 'fill_parent',

	{
            ImageView,  -- 左侧图片
            layout_width = "150dp",
            layout_height = "200dp",
            gravity  = "center",
            
        --    src = "/storage/emulated/0/云烛/图片/abc.png",  -- 请替换为实际图片路径
        src="/storage/emulated/0/云烛/图片/ca_zl",
            layout_marginLeft = "-10dp",
	layout_marginRight = "3dp",
	layout_marginTop = "0dp",
	layout_marginBottom = "3dp",
        }
	--[[
	        {
            ImageView,  -- 左侧图片
            layout_width = "match_parent",
            layout_height = "200dp",
            gravity  = "center|top",
            src = "https://img0.baidu.com/it/u=1991821569,3551667704&fm=253&fmt=auto&app=120&f=JPEG?w=1422&h=800",  -- 请替换为实际图片路径
            layout_marginLeft = "3dp",
	layout_marginRight = "3dp",
	layout_marginTop = "1dp",
	layout_marginBottom = "3dp",
        },]]
},{
LinearLayout,
orientation = "vertical",
}

--[[
radios = {
	LinearLayout,
	layout_marginLeft = "3dp",
	layout_marginRight = "3dp",
	layout_marginTop = "3dp",
	layout_marginBottom = "3dp",
	orientation = "horizontal",
	padding = "0dp",
	background = luajava.loadlayout( {
	
			GradientDrawable ,
			color = views[1] ,
			cornerRadius = 15,

			
		}) ,
		elevation='2dp',
--	layout_width = 'fill_parent',
	        {
            ImageView,  -- 左侧图片
            layout_width = "100dp",
            layout_height = "100dp",
            scaleType = "centerCrop",
            src = "https://pan.jl8.top/view.php/5e036f2451d7c2bd6bb1d8fc173d7231.jpg"  -- 请替换为实际图片路径
        },},
        {
            LinearLayout,  -- 右侧垂直布局容器
            layout_width = "match_parent",
            layout_height = "match_parent",
            layout_weight = 1,
            orientation = "vertical"
            -- 这里可以继续添加内容
        }

]]
for i = 2,#views do
radios[#radios+1] = views[i]
if i~=#views then
--radios[#radios+1] = line()
end
end
firadio[#firadio+1] = radios
return luajava.loadlayout(firadio)
end
	buts={}
	heir=getRes("heir")
function Anniu(name, func, color)
  local nid = name..string.randomUUID(true)
  if not color then color = "0xff161616" end
  return {
    LinearLayout,
    id = luajava.newId(nid),
    layout_width='fill_parent',
    layout_height="40dp",
    layout_margin="4dp",    
    gravity = "center",
    elevation = "2dp",
   -- background = getButtonBG(),
    onClick = function()
      controlWater(luajava.getIdView(nid), 300)
      luajava.newThread(function()
        pcall(func)
      end):start()
    end,
    {
      TextView,
      text = name,
      textColor = color,
      textSize = "10sp",
      layout_weight = 1,
      layout_margin="10dp",
      layout_width = 'fill_parent',
    },
    {
      ImageView,
      layout_weight = 1,
      src = "/sdcard/云烛/图片/heir",
      layout_marginRight = "10dp",
      layout_height = "35dp",
      layout_width = "35dp",
    }
  }
end
function quyu(views)
local tid = "box"..guid()
local ttid = tid.."678"
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
} else

end
radios = {
	LinearLayout,
	layout_marginLeft = "3dp",
	layout_marginRight = "3dp",
	layout_marginTop = "3dp",
	layout_marginBottom = "3dp",
	orientation = "vertical",
	padding = "0dp",
	background = luajava.loadlayout {
			GradientDrawable ,
			color = 按钮颜色 ,
			cornerRadius = 15
		} ,
		elevation='2dp',
	layout_width = 'fill_parent',
}
for i = 2,#views do
radios[#radios+1] = views[i]
if i~=#views then
radios[#radios+1] = line()
end
end
firadio[#firadio+1] = radios
return luajava.loadlayout(firadio)
end

local drawerView

local main_titlebar_layout = {
	LinearLayout,
	layout_marginTop = "10dp",
	layout_width = "match_parent",
	{
		ImageView,
		src = getRes("ca_zd"),
		layout_marginLeft = "15dp",
		layout_height = "30dp",
		layout_width = "30dp",
		scaleType = 'fitCenter',
		onClick = function()
			drawerView:openDrawer(Gravity.START)
		end
	},
	{
		TextView,
		layout_weight = 1,
		gravity = "center_vertical",
		layout_height = "match_parent",
		gravity = "center",
		text="云烛Ui工具箱",
		textColor = "0xff161616",
      textSize = "13sp",
	},
	{
		ImageView,
		src = getRes("ca_gd"),
		layout_marginRight = "15dp",
		layout_height = "30dp",
		layout_width = "30dp",
		onClick = function(view)
			-- drawerLayout:openDrawer(Gravity.START)
			local menu = {
				{
					'退出',
					onClick = function()
						tuichu=1
					end
				}
			}
			---@type android.widget.PopupMenu
			local popupMenu = ui.SimplePopupMenu({
				bindView = view,
				menu = menu,
				onSelectedListener = function(parent, view, position)	end
			})
			popupMenu:show()
		end
	}
}
----------------------主页
local mian_layout = {
	LinearLayout,
	layout_width = "match_parent",
	layout_height = "match_parent",
	orientation = "vertical",
	background = getShape00(0,0xffffffff,0xffffffff,0xffffffff),
	{
		LinearLayout,
		--backgroundColor = 0x50000000,
		layout_width = "match_parent",
		layout_height = "match_parent",
		orientation = "vertical",
		main_titlebar_layout,
		{
		LinearLayout,
		--backgroundColor = 0x50000000,
		--background = luajava.getBitmapDrawable("/sdcard/个人仓库/UI/自制/图片资源/星光背景"),
		layout_width = "match_parent",
		layout_height = "match_parent",
		orientation = "vertical",
		gravity = "center|top",
		--[[	{
			Button,
			layout_width = 'fill_parent',
			layout_hight = "60dp",
			layout_margin = '10dp',
			textSize = '15sp',
			background = getButtonBG(),
			textColor = "#00A3FF",
			text = "启动辅助",
			onClick = function()
			luajava.startThread(function()
			viewManager:setVisibility(View.GONE)
			gg.alert("正在启动")
			end)
			end
			},
		]]	
			{
			
			--流浪者
			cardpartL({"0xff7BB3CA",
			
     quyu({
     "",
     Anniu(
      "功能启动 下载配置",
      function()
       -- gg.alert(ltxx)
      end,
      0xff161616),
      Anniu(
      "功能启动 下载配置",
      function()
       -- gg.alert(ltxx)
      end,
      0xff161616),
      Anniu(
      "功能启动 下载配置",
      function()
       -- gg.alert(ltxx)
      end,
      0xff161616),
      Anniu(
      "功能启动 下载配置",
      function()
       -- gg.alert(ltxx)
      end,
      0xff161616),
     })}),
     
     cardpartR({"0xffD7C0A1",
			
     quyu({
     "",
     Anniu(
      "功能启动 下载配置",
      function()
       -- gg.alert(ltxx)
      end,
      0xff161616),
      Anniu(
      "功能启动 下载配置",
      function()
       -- gg.alert(ltxx)
      end,
      0xff161616),
      Anniu(
      "功能启动 下载配置",
      function()
       -- gg.alert(ltxx)
      end,
      0xff161616),
      Anniu(
      "功能启动 下载配置",
      function()
       -- gg.alert(ltxx)
      end,
      0xff161616),
     })}),
			},
						
		}
	}
}

local drawer_titlebar_layout = {
	LinearLayout,
	--background = getShape00(0,0xffffffff,0xffffffff,0xffffffff),
	layout_width = "match_parent",
	layout_height = "50dp",
	orientation = "vertical",
	{
		LinearLayout,
		layout_width = "match_parent",
		gravity="right",
		{
			TextView,
			textColor = "#ffffff",
			text = "UI工具箱",
			layout_height = "match_parent",
			layout_marginTop = "15dp",
			layout_marginRight = "10dp",
		},
		
	

		{
			ImageView,
			background = getShape00(360,0x66fffffff,0x66ffffff,0x66ffffff),
			src = getRes("ca_x"),
			layout_height = "30dp",
			layout_width = "30dp",
			layout_marginRight = "10dp",
	layout_marginTop = "10dp",
			onClick = function(view)
				drawerView:closeDrawer(Gravity.START)
			end
		 }
	   
	}
}
---------------------------
local expandableList_layout = {
LinearLayout,
	layout_width = "match_parent",
	layout_height = "match_parent",
	orientation = "vertical",
	background = getShape00(0,0xffffffff,0xffffffff,0xffffffff),
}
----------------------------
local drawer_layout = {
	LinearLayout,
	layout_gravity = Gravity.START,
	layout_height = "match_parent",
	layout_width = "320dp",
	backgroundColor = 0xb0000000,
	orientation = "vertical",
	drawer_titlebar_layout,
	expandableList_layout
}

drawerView = luajava.loadlayout({
	'ui.DrawerLayoutx',
	layout_width = "match_parent",
	layout_height = "match_parent",
	mian_layout,
	
	drawer_layout
})



viewManager = windowManager:bindView(drawerView)

-- ui.DrawerLayoutx 的容器的宽高必须是 MATCH_PARENT 
viewManager:addView({
	width = WindowManager.LayoutParams.MATCH_PARENT,
	height = WindowManager.LayoutParams.MATCH_PARENT
})

gg.setVisible(false)
while true do
if tuichu == 1 then
 break 

end
end