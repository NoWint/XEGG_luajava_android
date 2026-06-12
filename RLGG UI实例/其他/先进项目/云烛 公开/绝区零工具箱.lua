loadingBox = getLoadingBox("正在检查更新...")
loadingBox['显示']()	
gg.sleep(1000)
if loadingBox~=nil then loadingBox['关闭']() end
loadingBox = getLoadingBox("正在极速加载工具箱布局...")
loadingBox['显示']()


changan = {}
local changan = changan
local threshold = 5  -- 拖拽阈值
local canSwipeRight = true  -- 允许向右拖拽
local canSwipeLeft = true   -- 允许向左拖拽
local material3 = require 'material3'
local context=material3:getContext()
context:setTheme(0x7f090069)
context = app.context
baseWindow=require('floatingWindowManager2')
import("android.content.res.ColorStateList")
import("androidx.drawerlayout.widget.DrawerLayout")
import("com.google.android.material.card.MaterialCardView")
import("com.google.android.material.snackbar.Snackbar")
import("com.google.android.material.appbar.AppBarLayout")
import("com.google.android.material.appbar.MaterialToolbar")
import("android.animation.LayoutTransition")
import("androidx.coordinatorlayout.widget.CoordinatorLayout")
import("androidx.recyclerview.widget.RecyclerView")
import("android.view.animation.LayoutAnimationController")
import("android.ext.*")
baseWindow:darkMode()
baseWindow:lightMode()
local ui = require('ui')
local android = import('android.*')
local editTextManager
local editText = EditText(context)
local viewManager
local windowManager = require('windowManager')
local LottieDex=dex.loadfile('/sdcard/云烛/图片/Lottie.dex')
local LottieAnimationView=LottieDex:loadClass("com.airbnb.lottie.LottieAnimationView")  
local MaterialColors = bindClass "com.google.android.material.color.MaterialColors"
local RecyclerView = luajava.bindClass("androidx.recyclerview.widget.RecyclerView")
local LinearLayoutManager = luajava.bindClass("androidx.recyclerview.widget.LinearLayoutManager")
local ImageView = luajava.bindClass("android.widget.ImageView")
local Animation = luajava.bindClass("android.view.animation.Animation")
local ScaleAnimation = luajava.bindClass("android.view.animation.ScaleAnimation")
local RotateAnimation = luajava.bindClass("android.view.animation.RotateAnimation")
local AlphaAnimation = luajava.bindClass("android.view.animation.AlphaAnimation")
local AnimationSet = luajava.bindClass("android.view.animation.AnimationSet")
local ffmpeg = luajava.bindClass("com.arthenica.mobileffmpeg.FFmpeg")
local GLES20 = luajava.bindClass("android.opengl.GLES20")


luajava.setInterface(editText, 'setOnFocusChangeListener', function(view, hasFocus)
	editTextManager:getLayoutParams().flags = hasFocus and LayoutParams.FLAG_NOT_TOUCH_MODAL or LayoutParams.FLAG_NOT_FOCUSABLE
	editTextManager:updateView()
end)

luajava.setInterface(editText, 'setOnKeyListener', function(view, keyCode, KeyEvent)
	if keyCode == KeyEvent.KEYCODE_BACK then
		view:setFocusable(false)
	end
end)

luajava.setInterface(editText, 'setOnClickListener', function(view)
	if not view:isFocused() then
		view:setFocusableInTouchMode(true)
		view:setFocusable(true)
	end
end)

context:setTheme(0xFFFFFFFF)
vibra = context:getSystemService(Context.VIBRATOR_SERVICE)
write=file.write
function panduan(rec) fille,err = io.open(rec) if fille == nil then return false else return true end end
read=file.read
function panduan(rec) fille,err = io.open(rec) if fille == nil then return false else return true end end

function checkimg(tmp,ii)
if file.length("/sdcard/云烛/图片/工具箱/"..tmp[1],false)<200 then
gg.toast("正在下载资源"..tmp[1].."\n请耐心等待")
luajava.download(tmp[2],"/sdcard/云烛/图片/工具箱/"..tmp[1])
end
end

local ckimg = {
	{'ca_x','https://xg-cloudreve.cloud-k1.riyx.cn/f/l14hG/ca_x'},
	{'ca_file','https://xg-cloudreve.cloud-k1.riyx.cn/f/DaYuz/ca_file'},
	{'ca_back','https://xg-cloudreve.cloud-k1.riyx.cn/f/gmeH6/ca_back'},		
	{'ca_buy','https://xg-cloudreve.cloud-k1.riyx.cn/f/azwtE/ca_buy'},		
	{'ca_dy','https://xg-cloudreve.cloud-k1.riyx.cn/f/pPXSx/ca_dy'},		
	{'ca_gd','https://xg-cloudreve.cloud-k1.riyx.cn/f/9aPtb/ca_gd'},		
	{'ca_hm','https://xg-cloudreve.cloud-k1.riyx.cn/f/wO6H8/ca_hm'},		
	{'ca_xz','https://xg-cloudreve.cloud-k1.riyx.cn/f/oe9sd/ca_xz'},
	{'ca_llz','https://xg-cloudreve.cloud-k1.riyx.cn/f/qGqSO/ca_llz'},	
	{'ca_yl','https://xg-cloudreve.cloud-k1.riyx.cn/f/E9KHd/ca_yl'},		
	{'ca_zd','https://xg-cloudreve.cloud-k1.riyx.cn/f/xndTm/ca_zd'},			
	{'ca_hua','https://xg-cloudreve.cloud-k1.riyx.cn/f/KrYiB/ca_hua'},				
	{'ca_zl','https://xg-cloudreve.cloud-k1.riyx.cn/f/rkRsb/ca_zl'},			
	{'ca_ldjj','https://xg-cloudreve.cloud-k1.riyx.cn/f/0KWig/ca_ldjj'},				
	{'ca_bg2','https://xg-cloudreve.cloud-k1.riyx.cn/f/YkmTm/ca_bg2'},		
	{'ca_bgsp','https://xg-cloudreve.cloud-k1.riyx.cn/f/Rk0Sr/ca_bgsp'},		
	{'heir','https://xg-cloudreve.cloud-k1.riyx.cn/f/NAkFb/heir'},			
	{'right','https://xg-cloudreve.cloud-k1.riyx.cn/f/WOjiJ/right'},		
	{'ca_pictures','https://xg-cloudreve.cloud-k1.riyx.cn/f/OemCq/ca_pictures'},			
	}

for i = 1,#ckimg do
checkimg(ckimg[i],i)
end

function getRes(x)
return 获取图片("/sdcard/云烛/图片/工具箱/"..x)
end

function 获取图片(txt)
ntxt = string.sub(string.gsub(txt,"/","."),-10,-1)
if string.find(tostring(txt),"http") ~= nil then
if panduan("/sdcard/云烛/图片/工具箱/"..ntxt) == false then
luajava.download(txt,"/sdcard/云烛/图片/工具箱/"..ntxt)
end
txt = "/sdcard/云烛/图片/工具箱/"..ntxt
end
return luajava.getBitmapDrawable(txt)
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

function getCorner(gtvb1,gtvb3,gtvb4,gtvb5,g1,g2,g3,g4)
  if not gtvb4 then gtvb4=0 gtvb5=0xff000000 end
  local jianbians=luajava.new(GradientDrawable)
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

function getTimeStampC(t)
local str = os.date("%Y-%m-%d %H:%M",t)
return str
end


function changan.text(text,color,size,isjz)
	if not color then color="#161616" end
	if isjz then
		return luajava.loadlayout(
		{
			TextView,
			text=text,
			textColor=color,
			textSize=size,
			gravity="center",
			layout_height="wrap_content",
			layout_width="match_parent",
			ellipsize="marquee",
			singleLine=true,
			selected=true,
			autoSizeTextType="uniform",
		})
		else
		return luajava.loadlayout({
			TextView,
			text=text,
			textColor=color,
			textSize=size,
			layout_height="wrap_content",
			layout_width="match_parent",
			ellipsize="marquee",
			singleLine=true,
			selected=true,
			autoSizeTextType="uniform",
		})
	end
end

function Card(text,src,func)
return {
	LinearLayout,
	layout_width = "match_parent",
	layout_height = "wrap_content",
	layout_margin = "5dp",
	onClick = function()
		func()
		title:setText(text)
		切换(text)
	end,
	{
		ImageView,
		layout_height = "15dp",
		layout_width = "15dp",
		layout_margin = "10dp",
		gravity = "center",
		src = getRes(src),
	},
	{
		TextView,
		layout_weight = 1,
		text = text,
		layout_marginLeft = "5dp",
		textSize = "15sp",
		textColor = 0xFF000000,
		gravity = "center_vertical",
		layout_height = "match_parent",
	},
	{
		ImageView,
		layout_height = "20dp",
		layout_width = "20dp",
		layout_margin = "5dp",
		gravity = "center",
		src = getRes("heir"),
	},
	}
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

function Tuicard(text,func)
return {
	LinearLayout,
	layout_width = "match_parent",
	layout_height = "wrap_content",
	layout_margin = "8dp",
	onClick = function()
		func()
	end,
	{
		ImageView,
		layout_height = "15dp",
		layout_width = "15dp",
		layout_margin = "10dp",
		gravity = "center",
		src = getRes("ca_dy"),
	},
	{
		TextView,
		layout_weight = 1,
		text = text,
		layout_marginLeft = "5dp",
		textSize = "15sp",
		textColor = "#FF0000",
		gravity = "center_vertical",
		layout_height = "match_parent",
	},
	{
		ImageView,
		layout_height = "15dp",
		layout_width = "15dp",
		layout_marginTop = "10dp",
		layout_margin = "5dp",
		gravity = "center",
		src = getRes("heir"),
	},
	}
end

context = app.context


function 切换(id)
for i=1,#Ids do
luajava.getIdValue(Ids[i]):setVisibility(View.GONE)
end
luajava.getIdValue(id):setVisibility(View.VISIBLE)
end

LoadLayout = function()

local drawerView
local text_title = string.randomMD5()

local main_titlebar_layout = {
	LinearLayout,
	layout_marginTop = "10dp",
	layout_width = "match_parent",
	{
		LottieAnimationView,
		id = "ca_zd",
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
		id = "title",
		text = "首页",
		layout_weight = 1,
		gravity = "center_vertical",
		layout_height = "match_parent",
		gravity = "center"
	},
	{
		LottieAnimationView,
		id = "ca_gd",
		layout_marginRight = "15dp",
		layout_height = "30dp",
		layout_width = "30dp",
		onClick = function(view)
		-- drawerLayout:openDrawer(Gravity.START)
			local menu = {
				{
				"加群",
				onClick = function()					
				end	 					
				},{
				"TG频道",
				onClick = function()					
				end	 	
				},{			
				"退出",
				onClick = function()			
		 		UI=0   
				end
				}
			}
			---@type android.widget.PopupMenu
			local popupMenu = ui.SimplePopupMenu({
				bindView = view,
				menu = menu,
				icon = icon,
				onSelectedListener = function(parent, view, position)	end
			})
			popupMenu:show()
		end
	}
}

layout = {
		LinearLayout,
		layout_width = "match_parent",
		layout_height = "match_parent",
		orientation = "vertical",
	}

layoutm = {}
for i=1,#Ids do
layoutm[Ids[i]] = {
			LinearLayout,
			id = luajava.newId(Ids[i]),
			visibility='gone',
			layout_width = "match_parent",
			layout_height = "match_parent",
			orientation = "vertical",
			gravity = "vertical",
		}
	for v=1,#views[Ids[i]] do
	table.insert(layoutm[Ids[i]],views[Ids[i]][v])
	end
	table.insert(layout,layoutm[Ids[i]])
end


local mian_layout = {
	LinearLayout,
	layout_width = "match_parent",
	layout_height = "match_parent",
	orientation = "vertical",
	background = getShape00(0,0xff111111,0xff111111,0xff111111),
	
	main_titlebar_layout,
	{
		ScrollView,
		layout_height = "match_parent",
		layout_width = "wrap_content",
		onTouch=function(view, event)
        local action = event:getAction()
        if action == MotionEvent.ACTION_DOWN then
            initialX = event:getX()
        elseif action == MotionEvent.ACTION_MOVE then
            local currentX = event:getX()
            local deltaX = currentX - initialX
            if deltaX > threshold then
                drawerView:openDrawer(Gravity.START)
                canSwipeRight = false
                canSwipeLeft = true 
            elseif deltaX < -threshold and canSwipeLeft then
                drawerView:closeDrawer(Gravity.START)
                canSwipeLeft = false 
                canSwipeRight = true 
            end
        end
        return true
    end,
		layout
	}
}

local drawer_titlebar_layout = luajava.loadlayout{
	LinearLayout,
	layout_width = "match_parent",
	layout_height="170dp",
	orientation = "vertical",
	{
		FrameLayout,
		layout_width = "match_parent",
		layout_height="170dp",
	{
				VideoView,
		id = "bj",
		layout_width = "match_parent",
		layout_height="180dp",
		gravity="right",
		__onFinish = function(v)
		v:setVideoPath("/sdcard/云烛/图片/工具箱/ca_bgsp")  --ca_bgsp
		v.start(v)
--	    v:setZOrderOnTop(true) --top播放
        v:getHolder():setFormat(PixelFormat.TRANSLUCENT) --避免黑屏闪烁
		v:setOnCompletionListener({
			onCompletion = function()
			v.start(v)
			end
		})
		end
	},
	{
	LinearLayout,
	layout_width = "match_parent",
	layout_height="170dp",
	gravity="right",
		{
			TextView,			
			textColor = "#000000",
			text = "云烛Tools",
			textSize="25dp",
			layout_height = "match_parent",
			layout_marginTop = "15dp",
			layout_marginRight = "25dp",
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
}


---------------------------
local expandableList_layout = {
	LinearLayout,
	layout_width = "match_parent",
	layout_height = "match_parent",
	layout_marginTop = "160dp",
	orientation = "vertical",
	background=getCorner({0xFFFFFFFF,0xFFFFFFFF},0,0,0xFFFFFFFF,50,50,0,0),
	{
		LinearLayout,
		layout_width = "match_parent",
		layout_height = "wrap_content",
		orientation = "vertical",
		elevation = "2dp",
		layout_margin = "15dp",
		background=getCorner({0xFFFFFFFF,0xFFFFFFFF},0,0,0xFFFFFFFF,50,50,50,50),
		Card("首页",'ca_hm',
			function()
			drawerView:closeDrawer(Gravity.START)
			end
		),
		line(),
		Card("资源下载中心",'ca_xz',
			function()
			drawerView:closeDrawer(Gravity.START)
			end
		),
		line(),
		Card("月租UI预览",'ca_yl',
			function()
			drawerView:closeDrawer(Gravity.START)
			end
		),
		line(),
		Card("定制UI咨询",'ca_buy',
			function()
			drawerView:closeDrawer(Gravity.START)
			end
		),
	},
	{
		LinearLayout,
		layout_width = "match_parent",
		layout_height = "wrap_content",
		layout_marginTop = "20dp",
		layout_marginRight = "15dp",
		layout_marginLeft = "15dp",
		orientation = "vertical",
		elevation = "5dp",
		layout_margin = "10dp",
		background=getCorner({0xFFFFFFFF,0xFFFFFFFF},0,0,0xFFFFFFFF,35,35,35,35),
		Tuicard("退出",
			function()
			UI = 0
			end
		)
	}

}
----------------------------

local drawer_layout = {--左上背景		 
	LinearLayout,
	layout_gravity = Gravity.START,
	layout_height = "match_parent",
	layout_width = "320dp",
	orientation = "vertical",
	backgroundColor = 0xFF000000,
	{
		FrameLayout,
		layout_width = "match_parent",
		layout_height = "match_parent",
		drawer_titlebar_layout,
		expandableList_layout
	}
}


drawerView = luajava.loadlayout({
	'ui.DrawerLayoutx',
	id = "drawerView",
	layout_width = "match_parent",
	layout_height = "match_parent",
	
	mian_layout,	
	drawer_layout
})


viewManager = windowManager:bindView(drawerView)
-- ui.DrawerLayoutx 的容器的宽高必须是 MATCH_PARENT 
gg.sleep(1200)
viewManager:addView({
	width = WindowManager.LayoutParams.MATCH_PARENT,
	height = WindowManager.LayoutParams.MATCH_PARENT
})
drawerView = drawerView

drawerView:openDrawer(Gravity.START)

--gg.sleep(900)
end
gg.setVisible(false)














Ids = {
	"首页",
	"资源下载中心",
	"月租UI预览",
	"定制UI咨询",
}

views = {}
views["首页"]={
	--changan.text("UI工具箱还未搭建完成\nQQ群:742098534\n如有问题请联系QQ2862379480"),
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
}

views["资源下载中心"] = {
	changan.text("资源中心"),
}

views["月租UI预览"] = {
	changan.text("UI预览"),
}

views["定制UI咨询"] = {
	{
		LinearLayout,
		layout_width = "fill_parent",
		layout_height = "wrap_content",
		layout_marginTop = "10dp",
		layout_marginRight = "15dp",
		layout_marginLeft = "15dp",
		orientation = "vertical",
		elevation = "5dp",
		layout_margin = "10dp",
		background=getCorner({0xFFFFFFFF,0xFFFFFFFF},0,0,0xFFFFFFFF,20,20,20,20),
		{
			TextView,
			layout_width = "match_parent",
			layout_height = "wrap_content",
			layout_weight = 1,
			text = "定制UI200起步，拜师288起步，2888可享受超级福利",
			layout_gravity = "center",
			textSize = "20sp",
			textColor = 0xFF000000,
		}
	}
}



LoadLayout()
切换("首页")
ca_zd:setAnimationFromJson(io.open("/sdcard/云烛/图片/Lottie/layers.json", "r"):read("*all"))  
ca_zd:setSpeed(1) ca_zd:playAnimation()
ca_zd:setRepeatCount(-1) 
ca_zd:setVisibility(View.VISIBLE)		
ca_gd:setAnimationFromJson(io.open("/sdcard/云烛/图片/Lottie/edit.json", "r"):read("*all"))  
ca_gd:setSpeed(1) ca_gd:playAnimation()
ca_gd:setRepeatCount(-1)
ca_gd:setVisibility(View.VISIBLE)		

if loadingBox~=nil then loadingBox['关闭']() end

while true do
if (UI==0) then break end
end