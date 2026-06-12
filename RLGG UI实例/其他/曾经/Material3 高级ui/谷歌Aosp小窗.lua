if (rlgg.VERSION < 2.09) then
	gg.alert('请使用大于等于2.09版本的RLGG')
	os.exit()
end

local baseWindow = require 'floatingWindowManager2'

if not baseWindow.getContext then
	gg.alert('请重启一下RLGG')
	app.exit()
end

local context = baseWindow:getContext()

--[[

floatingWindowManager2 是基于RLGG开发的悬浮窗模块,帮助开发者高效实现UI

目前模块尚未完成开发,还有大量工作需要完成
暂时提供一个示例简单,具体自己探索实现 (后期逐步更新更多示例)


]]

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
--import 'androidx.compose.material3.ColorScheme'  
--import 'androidx.compose.ui.graphics.Color'  
  
--[[local colorScheme = ColorScheme{
    primary = '0xFF6200EE', 
    onPrimary = '0xFfffffff', 
    
}]]
--SwitchMaterial switchMaterial = findViewById(R.id.switchMaterial);



function f1()
	gg.alert('功能1')
end
--Snackbar:make(ckou,"启动进程结束 欢迎使用",Snackbar.LENGTH_SHORT):setBackgroundTint("0xffffffff"):show()
-- 浅色模式
--baseWindow:lightMode()

-- 深色模式
baseWindow:darkMode()

local t = {}
function t:addCardDemo(className, layout)
				self:addLayout({
					MaterialCardView,
					layout_width = 'match_parent',
					layout_height = 'wrap_content',
					layout_margin = "12dp",
					elevation = '8dp',
					{
						LinearLayout,
						layout_margin = "8dp",
						layout_width = 'match_parent',
						layout_height = 'wrap_content',
						orientation = 'vertical',
						{
							TextView,
							layout_width = 'match_parent',
							layout_height = 'wrap_content',
							text = className,
						},
						layout
					}
				})
			end
		
		
----md3配置--

function particle3()
local webView = luajava.webView(function(webView)
	webView:loadData([[
<!DOCTYPE html>
<html lang="en">
 
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }
 
    body {
      display: flex;
      justify-content: center;
      align-items: center;
      min-height: 100vh;
      background-color:;
    }
 
    .box {
      position: relative;
      width: 300px;
      height: 600px;
      background: #666;
      border-radius: 50px;
    }
 
    .box::before {
      content: '';
      position: absolute;
      inset: 3px;
      background: #000;
      border-radius: 48px;
    }
 
    .inner {
      position: absolute;
      inset: 3px;
      background: url('https://cdn.ytechb.com/wp-content/uploads/2022/09/iPhone-14-Pro-Wallpaper-purple.webp');
      background-size: cover;
      background-position: center;
      border-radius: 48px;
      border: 10px solid #000;
      display: flex;
      justify-content: center;
      opacity: 1;
      transition: 0.5s;
    }
 
    .box:hover .inner {
      opacity: 1;
    }
 
    .btn {
      position: absolute;
      top: 110px;
      left: -2px;
      width: 3px;
      height: 26px;
      border-top-left-radius: 4px;
      border-bottom-left-radius: 4px;
      background: radial-gradient(#ccc, #666, #222);
      z-index: 10;
    }
 
    .btn.btn2 {
      top: 160px;
      height: 40px;
    }
 
    .btn.btn3 {
      top: 220px;
      height: 40px;
    }
 
    .rightSlideBtn {
      position: absolute;
      top: 170px;
      right: -2px;
      width: 3px;
      height: 70px;
      border-top-right-radius: 4px;
      border-bottom-right-radius: 4px;
      background: radial-gradient(#ccc, #666, #222);
      z-index: 10;
    }
 
    .island-popup {
      position: absolute;
      width: 90px;
      height: 25px;
      top: 10px;
      background: #000;
      border-radius: 20px;
      transition: 0.5s ease-in-out;
    }
 
    .island-popup:hover {
      width: 200px;
      height: 25px;
    }
 
    .island-popup.active {
      width: 250px;
      height: 60px;
 
    }
  </style>
</head>
 
<body>
  <div class="box">
    <div class="inner">
      <div class="island-popup">
        <div class="content">
          <div class="details">
            <div class="imgBx">
              <img src="" alt="">
            </div>
            <p</p>
          </div>
          <div class="action">
 
          </div>
        </div>
      </div>
    </div>
    <i class="btn btn1"></i>
    <i class="btn btn2"></i>
    <i class="btn btn3"></i>
    <i class="rightSlideBtn"></i>
  </div>
 
  <script>
    let popup = document.querySelector('.island-popup')
 
    popup.onclick = function () {
      popup.classList.toggle('active')
    }
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




print("本次运行包含套餐：尊享版")

function getTimeStamp(t)
  local str = os.date("%m-%d-%H:%M:%S", t)
  return str
end
缩放=true
Yunzhu = {}
colorvs = {}
local Yunzhu = Yunzhu
local android = import("android.*")
write=file.write
function panduan(rec) fille,err = io.open(rec) if fille == nil then return false else return true end end
read=file.read
function panduan(rec) fille,err = io.open(rec) if fille == nil then return false else return true end end
function checkimg(tmp,ii)
if panduan("/sdcard/云烛/图片/"..tmp) ~= true then
gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
luajava.download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..tmp,"/sdcard/云烛/图片/"..tmp)
else
if file.length("/sdcard/云烛/图片/"..tmp) <= 1 then
gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
luajava.download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..tmp,"/sdcard/云烛/图片/"..tmp)
end
end
if panduan("/sdcard/云烛/图片/"..tmp) ~= true then
gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
luajava.download("https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/"..tmp,"/sdcard/云烛/图片/"..tmp)
else
	if file.length("/sdcard/云烛/图片/"..tmp) <= 1 then
gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
luajava.download("https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/"..tmp,"/sdcard/云烛/图片/"..tmp)
end
end
end
ckimg = {
	"heir",
	"hei_right",
	"heix",
	"heic",
	"heik",
	"arlogo",
	"classes3.dex","CircleImageView.dex",
	'heis','heisuo',
	'quarkcheckoff','quarkcheckon',
}

for i = 1,#ckimg do
jindu = i
checkimg(ckimg[i],i)
end
dex.loadfile("/sdcard/云烛/图片/CircleImageView.dex")
import("android.widget.CircleImageView")
context = app.context
import'android.hardware.*';
local sensor = luajava.createProxy('android.hardware.SensorEventListener', {
  onSensorChanged = functions.debounce(function()
    if 摇一摇==false then return 0 end
    if qhkai~=0 then
      qhkai=0
      luajava.runUiThread(function()
        floatWindow:setVisibility(View.VISIBLE)
        YoYoImpl:with("FadeIn"):duration(300):playOn(floatWindow)
      end)
     else
      qhkai=1
      luajava.newThread(function()
        luajava.runUiThread(function()
          YoYoImpl:with("FadeOut"):duration(300):playOn(floatWindow)
        end)
        gg.sleep(400)
        luajava.runUiThread(function()
          floatWindow:setVisibility(View.GONE)
        end)
        draw.remove()
        gg.toast("HIDE")
      end):start()

    end
  end,500)
})
dexloader=dex.loadfile('/sdcard/云烛/图片/classes3.dex')
MySensorManager = dexloader:loadClass('yaocn.rlyun.yaoyiyao.MySensorManager')
luajava.runOnUiThread(function()
  MySensorManager(context, sensor)
end)

window = context:getSystemService("window") -- 获取窗口管理器
vibra = context:getSystemService(Context.VIBRATOR_SERVICE)
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
function getVerticalBG(gtvb1,gtvb3,gtvb4,gtvb5)
  if not gtvb4 then gtvb4 = 0 gtvb5 = 0xff000000 end
  local jianbians = luajava.new(GradientDrawable)
  jianbians:setCornerRadius(gtvb3)
  jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
  jianbians:setColors(gtvb1)
  jianbians:setStroke(gtvb4,gtvb5)--边框宽度和颜色
  return jianbians
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
suofang = function(v, event)
  if 缩放 then
    local Action = event:getAction()
    if Action == MotionEvent.ACTION_DOWN then
      isMove = false
      RawX = event:getRawX()
      RawY = event:getRawY()
      x = mainLayoutParams.height
      y = mainLayoutParams.width
      if x==0 or x==-2 then x=1700 y=1300 end
        ckou:setBackground(getVerticalBG({0xff141218,0xff141218},45,10,主题色))     
     elseif Action == MotionEvent.ACTION_MOVE then
      isMove = true
      mubx=tonumber(x) + (event:getRawY() - RawY)
      if mubx>=270 and mubx<=11000 then
        mainLayoutParams.height = mubx
      end
      muby=tonumber(y) + (event:getRawX() - RawX)
      if muby>=240 and muby<=11000 then
        mainLayoutParams.width = muby
      end
     elseif event:getAction() == MotionEvent.ACTION_UP then
      ckou:setBackground(getVerticalBG({0xff141218,0xff141218},45,0,0xaa232323))
    end
    window:updateViewLayout(floatWindow, mainLayoutParams)
  end
end

Yunzhu.controlWater = function(control,time)
  luajava.runUiThread(function()
    import "android.animation.ObjectAnimator"
    ObjectAnimator():ofFloat(control,"scaleX", {
      1, 0.8, 0.9, 1
    }):setDuration(time):start()
    ObjectAnimator():ofFloat(control,"scaleY", {
      1,0.8,0.9,1
    }):setDuration(time):start()
end) end
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
for i = 1, #audiotype do
  yinl[i] = {}
  yinl[i].type = audiotype[i]
  yinl[i].min = audi:getStreamMinVolume(audiotype[i])
  yinl[i].max = audi:getStreamMaxVolume(audiotype[i])
  yinl[i].now = audi:getStreamVolume(audiotype[i])
end
yltype = 0
function jianting3(func)
  yinln = {}
  for i = 1, #audiotype do
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
  if qhkai == 0 then
    qhkai = 1
    draw.remove()
    luajava.runUiThread(function()
      YoYoImpl:with("FadeOut"):duration(300):playOn(floatWindow)
    end)
    gg.sleep(300)
    luajava.runUiThread(function()
      floatWindow:setVisibility(View.GONE)
    end)
   else
    qhkai = 0
    huiz()
    --draw.text('.', -9200,-9200)
    luajava.runUiThread(function()
      floatWindow:setVisibility(View.VISIBLE)
      YoYoImpl:with("FadeIn"):duration(500):playOn(floatWindow)
    end)
  end
end
function getRes(x)
  return 获取图片("/sdcard/云烛/图片/"..x)
end
function 获取图片(txt)
  ntxt=string.sub(string.gsub(txt,"/","."),-10,-1)
  if string.find(tostring(txt),"http")~=nil then
    if panduan("/sdcard/云烛/图片/"..ntxt)==false then
      download(txt,"/sdcard/云烛/图片/"..ntxt)
    end
    txt="/sdcard/云烛/图片/"..ntxt
  end
  return luajava.getBitmapDrawable(txt)
end
local isswitch
YoYoImpl = luajava.getYoYoImpl()
Yunzhu.menu = function(sview)
  cebian = {
    LinearLayout,
    id = "侧边",
    layout_height = "match_parent",
    layout_width = "wrap_content",
    orientation = "horizontal",
    gravity = "center",
    background = {
      GradientDrawable,
      color = "#00ffffff",
      cornerRadius = 10
    }
  }
  function 切换(x)
    当前ui = x
    luajava.runUiThread(function()
      for i = 1, #stab do
        _ENV["jmt"..i]:setTextColor(0xffffffff)--未选中的字体颜色
        _ENV["jm"..i]:setBackground(getVerticalBG({0xff1D1B20,0xff1D1B20},15))--未选中的颜色
        _ENV["layout"..i]:setVisibility(View.GONE)
      end
      _ENV["jmt"..当前ui]:setTextColor(0xffffffff)--选中的字体颜色
      _ENV["jm"..当前ui]:setBackground(getVerticalBG({主题色,主题色},15))--选中后颜色
      _ENV["layout"..当前ui]:setVisibility(View.VISIBLE)
      YoYoImpl:with("FadeIn"):duration(400):playOn(_ENV['layout'..当前ui])      
    end)
  end
  for i = 1,#stab do
    cebian[#cebian+1] = {
      LinearLayout,
      id = 'jm'..i,
      gravity="center",
      layout_height = "31dp",
      layout_width = "50dp",
      layout_marginTop = "3dp",
      layout_marginBottom = "3dp",
      layout_marginRight = "3dp",
      layout_marginLeft = "10dp",
      background=getVerticalBG({0xff1D1B20,0xff1D1B20},15),
      onClick = function()
        切换(i)
      end,
      {
        TextView,
        text = stab[i],
        id="jmt"..i,
        gravity = "center",
        textColor = "#ffffff",
        layout_height = "23dp",
        layout_width = "68dp",
      }
    }

  end
  ViewList = {
    LinearLayout,
    orientation = "horizontal",
    layout_width = "match_parent",
    layout_height = "match_parent",
  }
  for i = 1,#stab do
    _ENV["layout"..i] =luajava.loadlayout({
      ScrollView ;
      layout_height = "match_parent" ;
      layout_width = "match_parent",
      layout_marginLeft="5dp",
      layout_marginRight="5dp",
      VerticalScrollBarEnabled=false,
      {
        LinearLayout,
        id ="layoutm"..i,
        layout_height = "match_parent" ;
        orientation = "vertical" ;
        layout_width = "match_parent" ;
        gravity = "center_horizontal",
      }
    })
    ViewList[#ViewList+1] = _ENV["layout"..i]
  end
  ViewList = luajava.loadlayout(ViewList)
  function UI缩放()
    vibra:vibrate(15)
    if 缩放==false then
      缩放=true
      luajava.newThread(function()
        gg.toast("UI缩放已解锁")      
      end):start()
      lockui:setImageDrawable(getRes("heis"))
     else
      缩放=false
      luajava.newThread(function()
        gg.toast("UI缩放已锁定")        
      end):start()
      lockui:setImageDrawable(getRes("heisuo"))
    end
  end
  function 隐藏()
    vibra:vibrate(15)
    luajava.runUiThread(function()
      if tonumber(tostring(menu:getVisibility())) ~= 8.0 then
        显示 = 0
        menu:setVisibility(View.GONE)
        control:setVisibility(View.VISIBLE)
        mainLayoutParams.width = LayoutParams.WRAP_CONTENT -- 布局宽度
        mainLayoutParams.height = LayoutParams.WRAP_CONTENT -- 布局高度
        mainLayoutParams.flags = LayoutParams.FLAG_NOT_FOCUSABLE
        window : updateViewLayout (floatWindow , mainLayoutParams)
        YoYoImpl:with("FadeIn"):duration(600):playOn(floatWindow)
       else
        显示 = 1
        mainLayoutParams.width = muby -- 布局宽度
        mainLayoutParams.height = mubx -- 布局高度
        mainLayoutParams.flags = LayoutParams.FLAG_NOT_TOUCH_MODAL
        window : updateViewLayout (floatWindow , mainLayoutParams)
        menu:setVisibility(View.VISIBLE)
        control:setVisibility(View.GONE)
        YoYoImpl:with("FadeIn"):duration(600):playOn(floatWindow)
      end
    end)
  end
  topbar = luajava.loadlayout({
    FrameLayout,
    layout_width="match_parent",
    layout_height="35dp",
    background=getCorner({0xffffffff,0xffffffff},15,0,0xff232323,45,45,0,0),
    {LinearLayout,
      layout_width="match_parent",
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
          background=getVerticalBG({主题色,主题色},20)
        }
      }
    },
    {FrameLayout,
      layout_width="wrap_content",
      layout_height="match_parent",
      background=getCorner({0xffffffff,0xffffffff},15,0,0xff232323,45,0,0,0),
      {FrameLayout,
        layout_gravity="left|center",
        background=getVerticalBG({0xffE6E6E6,0xffE6E6E6},90),
        layout_width = "20dp",
        layout_height = "20dp",
        layout_marginLeft = "9dp",
        onClick = 隐藏,
        onTouch = hanshu,
        {LinearLayout,
          layout_height="2dp",
          layout_width="10dp",
          layout_gravity="center",
          background=getVerticalBG({0xff2c2c2c,0xff2c2c2c},45),
        },
        {LinearLayout,
          layout_height="10dp",
          layout_width="2dp",
          id="xYunzhu",
          layout_gravity="center",
          visibility="gone",
          background=getVerticalBG({0xff2c2c2c,0xff2c2c2c},45),
        }
      },
      {
        ImageView,
        padding = "5dp",
        src = getRes("heic"),
        layout_gravity="left|center",
        layout_marginLeft = "40dp",
        background=getVerticalBG({0xffE6E6E6,0xffE6E6E6},90),
        layout_width = "20dp",
        layout_height = "20dp",
        onClick= function()
          vibra:vibrate(15)
          gfz=mainLayoutParams.width
          kfz=mainLayoutParams.height
          mainLayoutParams.height=gfz
          mainLayoutParams.width=kfz
          window:updateViewLayout(floatWindow, mainLayoutParams)
        end,
        onTouch = hanshu,
      }
    },
    {FrameLayout,
      layout_width="wrap_content",
      background=getCorner({0xffffffff,0xffffffff},15,0,0xff232323,0,45,0,0),
      layout_height="match_parent",
      layout_gravity="right|center",
      {
        ImageView,
        padding = "5dp",
        layout_gravity="right|center",
        src = getRes("heix"),
        background=getVerticalBG({0xffE6E6E6,0xffE6E6E6},90),
        layout_width = "20dp",
        layout_height = "20dp",
        layout_marginRight = "9dp",
        layout_marginLeft="0dp",
        onClick = 隐藏,
        onTouch = hanshu,
      },
      {
        ImageView,
        padding = "5dp",
        layout_gravity="right|center",
        src = getRes("heis"),
        id = "lockui",
        background=getVerticalBG({0xffE6E6E6,0xffE6E6E6},90),
        layout_width = "20dp",
        layout_height = "20dp",
        layout_marginRight = "40dp",
        layout_marginLeft="0dp",
        onClick = UI缩放,
        onTouch = hanshu,
      }
    }
  })
  ckou = {
    FrameLayout,
    id = "chuangk",
    layout_width = "match_parent",
    layout_height = "match_parent",
    orientation = "vertical",
    background = getVerticalBG({0xff141218,0xff141218},45),
    topbar,
    {
      LinearLayout,
      layout_height = "match_parent",
      layout_width = "match_parent",
      layout_marginLeft="5dp",
      layout_marginTop = "40dp",
      layout_marginRight="5dp",
      layout_marginBottom = "42dp",
      ViewList
    },
    {
      FrameLayout,
      layout_height = "42dp",
      layout_width = "match_parent",
      layout_gravity = "bottom",
      {
        HorizontalScrollView,
        layout_height = "35dp",
        layout_gravity="center",
        layout_marginLeft="10dp",
        layout_marginRight="10dp",
        layout_width = "match_parent",
        layout_marginBottom = "3dp",
        HorizontalScrollBarEnabled=false,
        cebian
      },
    }
  }
  ckou = luajava.loadlayout(ckou)
  motion=luajava.loadlayout({FrameLayout,
    id = "motion1",
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
  })
  floatWindow = {
	LinearLayout,
	id = "motion",	
	orientation="vertical",
	layout_height = "match_parent",
	layout_width = "match_parent",
    {FrameLayout,
      layout_width="match_parent",
      layout_height='match_parent',
      id="menu",
      elevation='2dp',
      ckou,
      motion,     
    },
    {LinearLayout,
      gravity = "center",
      {CircleImageView,
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
    mainLayoutParams = getLayoutParams()
    floatWindow = luajava.loadlayout(floatWindow)
    local function invoke2()  
    for k = 1,#stab do
        for i = 1,#sview[k] do
          _ENV["layoutm"..k]:addView(sview[k][i])
        end
      end    
      mainLayoutParams.height = mubx
      mainLayoutParams.width = muby
      window:addView(floatWindow,mainLayoutParams)      
    end
    local runnable = luajava.getRunnable(invoke2)
    local handler = luajava.getHandler()    
    handler:post(runnable)    
    local isMove
    luajava.runUiThread(function()YoYoImpl:with("FadeIn"):duration(600):playOn(floatWindow)end)
    motion.onTouch = hanshu
    control.onTouch = hanshu
  end
  invoke(swib1,swib2)
  gg.setVisible(false)
  setOnExitListener(function()
    window:removeView(floatWindow)
    tuichu=1
  end)
  huiz()  
  if ylfunc~=nil then ylfunc() end
  if yyfunc~=nil then yyfunc() end
  切换(1)
  while true do
    if tuichu == 1 then break end
    if 音量键 then
      jianting3(qiehuan)
    end
    gg.sleep(120)
  end
end
function 退出UI()
  tuichu=1
end
function Yunzhu.setedit(name,txt)
  txt = tostring(txt)
  luajava.runUiThread(function()
    luajava.getIdValue(_ENV[name]):setText(txt)
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
function Yunzhu.switch(name,func1,func2,miaoshu)
  if not checkbg then
    checkbga = getVerticalBG({0xffE4E4E4,0xffE4E4E4},360)
    checkbg = getVerticalBG({0xff006dff,0xff006dff},360)
    switchbg1 = getVerticalBG({0xffffffff,0xffffffff},360,4,0x00ffffff)
    switchbg2 = getVerticalBG({0xffffffff,0xffffffff},360,4,0x00ffffff)
  end
  nid = name..guid()
  local func = 开关3(name,func1,func2,nid)
  if not name then name = "未设置" end
  switches["1s"..nid] = luajava.loadlayout {
    FrameLayout,
    layout_width = '40dp',
    layout_height = '20dp',
    gravity = "center_vertical",
    {
      LinearLayout,
      layout_gravity = "left|center_vertical",
      id = luajava.newId(nid.."k"),
      background = switchbg1,
      onClick = function() luajava.newThread(function() func() end):start() end,
      layout_width = '20dp',
      layout_height = '20dp',

    },
  }
  switches["2s"..nid] = luajava.loadlayout {
    FrameLayout,
    onClick = function() luajava.newThread(function() func() end):start() end,
    layout_width = '40dp',
    layout_height = '20dp',
    gravity = "center_vertical",
    {
      LinearLayout,
      visibility = "gone",
      layout_gravity = "right|center_vertical",
      id = luajava.newId(nid.."g"),
      background = switchbg2,
      onClick = function() luajava.newThread(function() func() end):start() end,
      layout_width = '20dp',
      layout_height = '20dp',


    }
  }
  rest = luajava.loadlayout({
    LinearLayout,
    layout_width = 'match_parent',
    layout_height = "47dp",
    gravity = "center",
    {
      LinearLayout,
      layout_width = 'match_parent',
      layout_height = "40dp",
      layout_gravity = "center",
      gravity = "center",
      layout_marginRight = "4dp",
      layout_marginLeft = "4dp",
      background = luajava.loadlayout {
        GradientDrawable ,
        color = 0xff1D1B20 ,
        cornerRadius = 17
        } ,padding = {
        "0dp","0dp","6dp","0dp"
      },
      {
				LinearLayout,
				layout_width = 'match_parent',
				layout_height = 'match_parent',
				orientation = 'vertical',
				
				{
					MaterialSwitch,
				--	id=nid,
					layout_width = 'match_parent',
					layout_height = 'wrap_content',
					text = name,
					textSize = "13sp",
       -- setTrackTintList('0xffffffff'),
--mddd3:setTrackTintList(ColorStateList({{android.R.attr.state_checked},{}},{0xff2000ff,0xffd7d7d7})),
---setThumbTintList('0xffffffff'),

        layout_marginLeft = "10dp",
        layout_weight = 1,
        textColor = "0xffffffff",
        --setThumbTintList='0xffffffff',
        onClick = function() luajava.newThread(function() func() end):start() end,
        
		},
			
		
			}}
  })
  return rest
end
switches = {}
function 开关3(name,func1,func2,nid)
  local sname = nid
  local localname=name
  name = nid
  _ENV[name] = "关"
  if func1 == nil then func1 = "" end
  if func2 == nil then func2 = "" end
  if type(func1) == "function" then
    local outfunc=function()
      namers = _ENV[name]
      if namers ~= "开" then
        vibra:vibrate(9)
        luajava.runUiThread(function()
          luajava.getIdValue(nid.."k"):setVisibility(View.GONE)
          YoYoImpl:with("ZoomInLeft"):duration(600):playOn(switches["2s"..sname])
          luajava.getIdValue(nid.."g"):setVisibility(View.VISIBLE)
          luajava.getIdValue(nid):setBackground(checkbg)
        end)
        _ENV[name] = "开"        
        pcall(func1)        
       else
        vibra:vibrate(9)
        luajava.runUiThread(function()
          luajava.getIdValue(nid.."g"):setVisibility(View.GONE)
          YoYoImpl:with("ZoomInRight"):duration(600):playOn(switches["1s"..sname])
          luajava.getIdValue(nid.."k"):setVisibility(View.VISIBLE)
          luajava.getIdValue(nid):setBackground(checkbga)
        end)        
        _ENV[name] = "关"
        pcall(func2)        
      end
    end
    if localname=="摇一摇隐藏UI" then yyfunc=outfunc end
    if localname=="音量键隐藏UI" then ylfunc=outfunc end
    return outfunc
  end
end
function Yunzhu.text(txt,color,size,ftc)
  if not txt then txt = "未设置文字" end
  if not color then color = "0xffffffff" end
  if not size then size = "18sp" end
  if ftc then ltc = "center" else ltc = "left" end
  return luajava.loadlayout({
    TextView,
    text = txt,
    textSize = size,
    textColor = color,
    layout_width = "match_parent",
    layout_marginTop = "10dp" ,
    layout_marginBottom = "10dp" ,
    gravity = ltc,
  })
end
chazhi={} chajv={}
function Yunzhu.seek(name,bian,smin,smax,nows)
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
				layout_width = 'match_parent',
				layout_height = 'match_parent',
				orientation = 'horizontal',
				{
			TextView,
		padding={"5dp","15dp","0dp","15dp",},
			gravity = "center",
			text = name,--..":"..nows,
			id = luajava.newId(names),
			--layout_width = '100dp',
			textSize="15sp",
		--	layout_marginLeft = "5dp",
		--	layout_marginRight = "0dp",
		},
				{
				Slider,
				layout_width = 'match_parent',
				layout_height = 'wrap_content',
				value = nows,
				valueTo = smax,
				valueFrom = smin,
				stepSize = 0.5,
					onClick = function() luajava.newThread(function() func() end):start() end,
				addOnChangeListener = function(slider, value, fromUser) -- 如果执行的功能不是修改器的函数,或者不带阻塞的,可以不用 window:threadWraper 包裹,性能更好(属于UI线程)

				-- 如果不是用户触发的,不处理
				if not fromUser then
					return
				end

				Snackbar:make(slider, '已选择数值 > '..value, Snackbar.LENGTH_SHORT):show()
			end
				},
			
		
			}})
return rest
end
buts={}
function Yunzhu.button(txt,func,txtc)
  if not txt then txt = "未设置" end
  if not txtc then txtc="#ffffff" end
  local tid="Cbutton"..guid()
  buts[tid]=luajava.loadlayout(
  {
    LinearLayout,
    layout_width = 'match_parent',
    layout_height = "47dp", {
      LinearLayout,
      layout_width = "match_parent",
      layout_height = "40dp",
      layout_gravity = "center",
      layout_marginRight = "4dp",
      layout_marginLeft = "4dp",
      background = getButtonBG(),
      padding="10dp",
      onClick = function()        
        Yunzhu.controlWater(buts[tid],300)
        vibra:vibrate(10)
        luajava.newThread(func):start() end,
      {
        TextView,
        --id = luajava.newId(tid),
        textColor = txtc,
        text = txt,
        textSize = "16sp",
        layout_height = "wrap_content",
        layout_width = "match_parent",
        layout_weight=1,
        },{ImageView,
        src=getRes("heir"),
        layout_height="14dp",
        layout_gravity = "center",
        layout_width="14dp",

      }
  }})

  return buts[tid]
end
function getButtonBG()
  local selector = luajava.getStateListDrawable()
  selector:addState({
    android.R.attr.state_pressed
  }, getVerticalBG({0x34000400,0x34000400},17))
  selector:addState({
    -android.R.attr.state_pressed
  }, getVerticalBG({0xff1D1B20,0xff1D1B20},17))
  return selector
end


function getHorizontalBG(gtvb1,gtvb3,gtvb4,gtvb5)
  if not gtvb4 then gtvb4 = 0 gtvb5 = 0xff000000 end
  local jianbians = luajava.new(GradientDrawable)
  jianbians:setCornerRadius(gtvb3)
  jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
  jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
  jianbians:setColors(gtvb1)
  jianbians:setStroke(gtvb4,gtvb5)--边框宽度和颜色
  return jianbians
end
function 开关(name,func1,func2,nid)
name = name..guid()
_ENV[name] = "关"
if func1 == nil then func1 = function() end end
if func2 == nil then func2 = function() end end
if type(func1) == "function" then
return function()
namers = _ENV[name]
if namers ~= "开" then
luajava.runUiThread(function()	
	luajava.getIdValue(nid.."k"):setBackground(getHorizontalBG({0x00C24C38,0x00F78F5C},5))
	luajava.getIdValue(nid.."g"):setBackground(getHorizontalBG({主题色,主题色,主题色},5,3,主题色))
	end)
_ENV[name] = "开"
vibra:vibrate(6)
pcall(func1)
else
	luajava.runUiThread(function()
	luajava.getIdValue(nid.."g"):setBackground(getHorizontalBG({0x00C24C38,0x00F78F5C},5))
	luajava.getIdValue(nid.."k"):setBackground(getHorizontalBG({主题色,主题色,主题色},5,3,主题色))
	end)
_ENV[name] = "关"
vibra:vibrate(6)
pcall(func2)
end
end
end
end
function Yunzhu.intcheck(name,func1,func2)
nid = name..guid()
local func = 开关(name,func1,func2,nid)
if not name then name = "未设置" end
local rest = luajava.loadlayout({
	LinearLayout,
	layout_width = '111dp',
	layout_height = "60dp",	
	{
	LinearLayout,
	layout_width = 'fill_parent',
	layout_height = "fill_parent",
	layout_marginLeft = "8dp",	
	layout_marginRight = "8dp",	
	layout_marginTop="2dp",
    layout_marginBottom="2dp",
	orientation = "vertical",
	{
			TextView,
			text = name,
			textColor = "#ffffff",
			textSize = "11sp",
			layout_width = '55dp',
		},
	{
		LinearLayout,
		onClick = function() luajava.newThread(function() func() end):start() end,
		layout_width = 'fill_parent',
		layout_height = "34dp",
		gravity = "center",
		background = getHorizontalBG({0xff1D1B20,0xff1D1B20},5,3,0xff1D1B20),
		{
		TextView,
		text="关",		
		id = luajava.newId(nid.."k"),
		background = getHorizontalBG({主题色,主题色,主题色},5,3,主题色),
		textColor="#ffffff",
		layout_width = '40dp',
		gravity = "center",
		layout_height = '25dp',
	}, {
		TextView,	
		textColor="#ffffff",
		text="开",			
		id = luajava.newId(nid.."g"),
		background = getHorizontalBG({0x00C24C38,0x00F78F5C},5),
		layout_width = '40dp',
		gravity = "center",
		layout_height = '25dp',
	}
	}
}
})
return rest
end
function Yunzhu.check(cklist)
local rest = {
	GridLayout,
	columnCount = '2',
	layout_width = 'match_parent',
	layout_height = "wrap_content",
	layout_marginLeft = "12dp",
	layout_marginRight = "12dp",
	layout_marginTop="3.5dp",
      layout_marginBottom="3.5dp",
	gravity = "center"
}
for i = 1,#cklist do
local name = cklist[i][1]
local func1 = cklist[i][2]
local func2 = cklist[i][3]
if not name then name = "未设置" end
rstt = Yunzhu.intcheck(name,func1,func2)
rest[#rest+1] = rstt
end
return luajava.loadlayout({
	LinearLayout,rest
})
end

----m3check
function Yunzhu.intcheck(name,func1,func2)
nid = name..guid()
local func = 开关5(name,func1,func2,nid)
if not name then name = "未设置" end
switchs[nid] = {
	LinearLayout,
	layout_width = 'match_parent',
	layout_weight=1,
	layout_height = "42dp",
	layout_marginTop = "1dp",
	layout_marginBottom = "1dp",
	padding = "1dp",
	{
		LinearLayout,
		padding="3dp",
		onClick = function() luajava.newThread(function() func() end):start() end,
		layout_width = 'fill_parent',
		layout_height = "wrap_content",
		gravity = "center_vertical",
		--background=getVerticalBG({0xffFFFDF2,0xddffffff,0xffFFFDF2},15,8,0xffFFDA71),
		{
			MaterialCheckBox,
			id = luajava.newId(nid),
			onClick = function() luajava.newThread(function() func() end):start() end,
			--background = checkbg1,
			layout_width = '32dp',
			layout_height = '32dp',
			padding = "0dp",
		},{
			TextView,
			id=luajava.newId(nid.."t"),
			gravity = "left",
			text = name,
			textColor=0xffffffff,
			textSize = "14sp",
--layout_marginLeft="8dp",
			layout_width = 'match_parent',
	layout_weight=1,
		},
		}
}
return switchs[nid]
end
function 开关5(name,func1,func2,nid)
local sname = nid
local localname=name
name = name..guid()
_ENV[name] = "关"
if func1 == nil then func1 = "" end
if func2 == nil then func2 = "" end
if type(func1) == "function" then
return function()
namers = _ENV[name]
if namers ~= "开" then
vibra:vibrate(9)
luajava.runUiThread(function()
	luajava.getIdValue(nid):setChecked(true)
	--luajava.getIdValue(nid.."t"):setTextColor(0xff232323)
	--Yunzhu.controlWater(switchs[nid],300)
	end)
_ENV[name] = "开"
pcall(func1)
else
	vibra:vibrate(9)
luajava.runUiThread(function()
	luajava.getIdValue(nid):setChecked(false)
	--luajava.getIdValue(nid.."t"):setTextColor(0xff232323)
	--Yunzhu.controlWater(switchs[nid],300)
	end)
_ENV[name] = "关"
pcall(func2)
end
end
end
end
function Yunzhu.check(cklist)
if #cklist==0 then return nil end
local rest = {
	LinearLayout,
	layout_width = 'fill_parent',
	layout_height = "wrap_content",
	gravity = "center",
	orientation="vertical",

}

for i = 1, #cklist,2 do
local tempTable = {LinearLayout,
	layout_width = 'fill_parent',
	layout_height = "wrap_content",
	gravity = "left",
	orientation="horizontal"
}
for j = 0, 1 do
if cklist[i + j] ~= nil then
local name = cklist[i + j][1]
local func1 = cklist[i + j][2]
local func2 = cklist[i + j][3]
if not name then name = "未设置" end
rstt = Yunzhu.intcheck(name,func1,func2)
table.insert(tempTable, rstt)
else
	table.insert(tempTable, {LinearLayout,
	layout_width = 'match_parent',
	layout_weight=1,})
end
end
table.insert(rest, tempTable)
end
return luajava.loadlayout(rest)
end

spics={
}
for i=1,55 do
	spics[i]="opo"..i
end
switchs={}
tcheck=10
function Yunzhu.intcard(name,name2,func1,func2)
if tcheck==56 then
	tcheck=1
else
	tcheck=tcheck+1
end
tocheck=spics[tcheck]
gid = name..guid()
local func = 开关6(name,name2,func1,func2,gid)
if not name then name = "未设置" end
if not name2 then name2="" end
switchs[gid] = {
	LinearLayout,
	id = luajava.newId(gid),
	layout_width = 'match_parent',
	layout_weight=1,
	layout_height = "wrap_content",
	layout_marginTop="5dp",
	layout_marginBottom="5dp",
	layout_marginLeft="3dp",
	layout_marginRight="3dp",
	
	{
		LinearLayout,
		padding="3dp",
		onClick = function() luajava.newThread(function() func() end):start() end,
		layout_width = 'fill_parent',
		layout_height = "wrap_content",
		gravity = "left",
		background=getButtonBG(),
		layout_marginLeft = "5dp",
			layout_marginRight = "5dp",
			layout_marginTop = "5dp",
			layout_marginBottom = "5dp",
			elevation="2dp",
		id = luajava.newId(gid.."cardbg"),
		orientation="vertical",
		padding="5dp",
		--background=getVerticalBG({0xffFFFDF2,0xddffffff,0xffFFFDF2},15,8,0xffFFDA71),
		{
			ImageView,
			id = luajava.newId(gid.."p"),
			src = getRes(tocheck),
			gravity="left",
			layout_width = '30dp',
			layout_height = '30dp',
			padding = "3dp",
		},{
			TextView,
			id=luajava.newId(gid.."t"),
			gravity = "left",
			text = name,
			textColor="#ffffff",
			textSize = "12sp",
			layout_width = 'match_parent',
			layout_weight=1,
		},{
			TextView,
			id=luajava.newId(gid.."t2"),
			gravity = "left",
			text = name2,
			textColor="#ffffff",
			textSize = "9sp",
			layout_width = 'match_parent',
			layout_weight=1,
		}
		}
}
return switchs[gid]
end
function Yunzhu.alertDialog(title,text)
    context = baseWindow:getContext()
    view={
    	LinearLayout,
    }
local dialogBuilder = MaterialAlertDialogBuilder(context)
        :setTitle(title)
        :setMessage(text)
        :setView(luajava.loadlayout(view))
        :setPositiveButton('确定')
        luajava.showAlert(dialogBuilder)
end

function Yunzhu.alertViewDialog(title,view)
baseWindow=require 'floatingWindowManager2'
context = baseWindow:getContext()
view={
	LinearLayout,
}
local dialogBuilder = MaterialAlertDialogBuilder(context)
:setTitle(title)
:setView(luajava.loadlayout(view))
:setPositiveButton('确定')
    luajava.showAlert(dialogBuilder)
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
Yunzhu.controlRotation9 = function(control, time,t)
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
Yunzhu.controlRotation9(boxpic[tid],0,90)
boxpic[tid]:setColorFilter(控件颜色[1])
else
	tview : setVisibility (View.GONE)
Yunzhu.controlWater (_ENV [tid.."6"] , 200)
Yunzhu.controlRotation9(boxpic[tid],90,0)
boxpic[tid]:setColorFilter(0xffffffff)
end
end
boxes = {} boxpic = {}
function Yunzhu.box (views)
local tid = "box"..guid ()
boxpic[tid] = luajava.loadlayout {
	ImageView ,
	src = "https://wp.td88.cyou/view.php/dfcc155180c66711a66a1c6540db5e03.png",
	ColorFilter= 主题色,
	layout_width = "26dp" ,
	layout_height = "26dp" ,
}
local ttid = tid.."6"
local t1id = guid ()
firadio = {
	LinearLayout ,
	layout_width = 'fill_parent' ,
	layout_height = "wrap_content" ,
	layout_marginTop = "10dp" ,
	layout_marginBottom = "10dp" ,
	orientation = "vertical" ,
}
if type (views [1]) == "string" or type (views [1]) == "number" then
firadio [# firadio + 1] = {
LinearLayout,
	elevation = "5dp",
	layout_width = 'fill_parent',
	layout_height = "47.5dp",
	gravity = "center_vertical",
	{
	LinearLayout ,
	layout_width = 'fill_parent' ,
	layout_height = "40dp" ,
	gravity = "center_vertical" ,
	
	onClick = function ()
	visi (tid , ttid)
	end
	,
	background = getButtonBG(),
	{
		TextView , text = views [1] ,
		textSize = "16sp" ,
		layout_marginLeft = "10dp" ,
		layout_width = "match_parent" ,
		layout_weight=1,
		textColor = "#ffffff" ,
		gravity = "left" ,
	},{
		LinearLayout ,
		padding={"0dp","0dp","10dp","0dp"},
		layout_width = "30dp" ,
		layout_height = "30dp" ,
		gravity = "center",
		boxpic[tid],
	}
} 
}else
	gg.alert ("Yunzhu.box的table内第一个元素必须是string") os.exit ()
end
radios = {
	LinearLayout ,
	layout_marginLeft = "5dp" ,
	layout_marginRight = "5dp" ,
	orientation = "vertical" ,
	visibility = "gone" ,
	id = luajava.newId (tid) ,
	padding = "0dp" ,
	layout_width = 'fill_parent' ,
}
for i = 2 , # views do
radios [# radios + 1] = views [i]
end
boxes[tid] = luajava.loadlayout(radios)
firadio [# firadio + 1] = boxes[tid]
_ENV [t1id] = luajava.loadlayout (firadio)
return _ENV [t1id]
end
namelist = {}
param1 = {}
floattable = {}
function 打开页面(name)
if _ENV['fenye'..name]==nil then gg.alert(name..'页面未创建') return 0 end
if floattable['fenye'..name]==1 then 关闭页面(name) return end
floattable['fenye'..name]=1
window = context:getSystemService("window") -- 获取窗口管理器
local function invoke(name,func1,func2)
local function invoke2()
window:addView(_ENV['fenye'..name], param1[name])
end

local runnable = luajava.getRunnable(invoke2)
local handler = luajava.getHandler()
handler:post(runnable)

end

invoke(name,func1,func2)
end

function 关闭页面(name)
if _ENV['fenye'..name]==nil then gg.alert(name..'页面未创建') return 0 end
if floattable['fenye'..name]==0 then return 0 end
floattable['fenye'..name]=0
local function invoke2()
window:removeView(_ENV['fenye'..name])
end
local runnable = luajava.getRunnable(invoke2)
local handler = luajava.getHandler()
handler:post(runnable)
end


function 创建页面(name,vs)
	if type(vs)~='table' then gg.alert(name..'创建页面格式错误') os.exit() end
	local tmp={LinearLayout,
				layout_width='match_parent',
				orientation='vertical'
			}
for i=1,#vs do
	table.insert(tmp,vs[i])
end
param1[name] = getLayoutParams2()
_ENV['fenye'..name] = luajava.loadlayout(
	{
		LinearLayout,
		layout_width = "wrap_content",
		layout_height = "wrap_content",
		orientation='vertical',
		gravity='center_horizontal',
		background=luajava.loadlayout({
		GradientDrawable ,
		color = "0x90000000" ,
		cornerRadius = 15
	} ),
		padding={'10dp','5dp','10dp','5dp'},
		{
			TextView,
			text = name,
			Typeface=font,
			textColor="0xffffffff",
			textSize='14sp',
			gravity = "center",
			layout_width = "130dp",
			layout_height = "wrap_content",
			
			onClick=function()
				local vis=luajava.getIdView(name)
				if vis:getVisibility()==8.0 then
					vis:setVisibility(View.VISIBLE)
				else
					vis:setVisibility(View.GONE)
				end
			end,
			onTouch=function(v, event)
		local Action = event:getAction()
		if Action == MotionEvent.ACTION_DOWN then
		isMove = false
		RawX = event:getRawX()
		RawY = event:getRawY()
		x = param1[name].x
		y = param1[name].y
		elseif Action == MotionEvent.ACTION_MOVE then
		isMove = true
		param1[name].x = tonumber(x) + (event:getRawX() - RawX)
		param1[name].y = tonumber(y) + (event:getRawY() - RawY)
		window:updateViewLayout(_ENV['fenye'..name], param1[name])
		end
		end,
		},
		{ScrollView,
			visibility='gone',
			id=luajava.newId(name),
			layout_width='130dp',
			layout_height='350dp',
			tmp
		}
	})
if type(_ENV['fenye'..name])~='userdata' then gg.alert(name..'生成失败') os.exit() end
end
paramt = {}
titletable = {}
corb = true
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
创建页面('功能',
	{
	Yunzhu.button('选择进程',gg.setProcessX),
	Yunzhu.switch(
		"防封1",
		function()
			
		end,
		function()
			
		end),
	Yunzhu.switch(
		"防封2",
		function()
			
		end,
		function()
			
		end),
	
	
})
function huiz()
end
muby=850
--初始宽度
mubx=1350
--初始高度
stab = {
  "防封",
  "功能",
  "美化",
  "音乐",
  "设置"
}
主题色="0xff4F378B"


xfcpic="/sdcard/云烛/图片/arlogo"




Yunzhu.menu(
{
  {
  Yunzhu.text("Material UI","0xffD0BCFF","18sp"),
  
  Yunzhu.text("Powered by Yunzhu","0xffD0BCFF","10sp"),
  Yunzhu.switch(
					"功能菜单",
					function()
					
						打开页面('功能')
					end,
					function()
						关闭页面('功能')
					end),
    Yunzhu.switch("退出",function()
      退出UI()
    end,function() end),
    Yunzhu.seek("拉条例子","ltlz",1,100,1),--名字，变量名字，最小，最大，初始
    Yunzhu.button("按钮测试",function() Snackbar:make(ckou,"加载成功 已完成操作✅",Snackbar.LENGTH_SHORT):setBackgroundTint("0xffffffff"):show()end),
    	Yunzhu.check({
				{
					"套娃",
					function()
					--Yunzhu.alertViewDialog("布局套娃","Yunzhu.switch(    '摇一摇隐藏UI',   function()      摇一摇=true    end,    function()      摇一摇=false    end),")
						
					end,
					function()
					gg.alert("关")
						
					end
				}, {
					"例子",
					function()
						
					end,
					function()
						
					end
				},{
					"例子",
					function()
						
					end,
					function()
						
					end
				},{
					"例子",
					function()
						
					end,
					function()
						
					end
				},
				
				
			}),
			
			Yunzhu.switch(
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
    end,
    function()
      
    end),
    Yunzhu.switch(
    '音量键隐藏UI',
    function()
 --   Snackbar:make(view,text,Snackbar.LENGTH_SHORT):show()
    Snackbar:make(ckou,"加载成功 已完成操作✅",Snackbar.LENGTH_SHORT):setBackgroundTint("0xffffffff"):show()
      音量键=true
    end,
    function()
      音量键=false
    end),
    Yunzhu.switch(
    '摇一摇隐藏UI',
    function()
    Snackbar:make(ckou,"加载成功 已完成操作✅",Snackbar.LENGTH_SHORT):setBackgroundTint("0xffffffff"):show()
      摇一摇=true
    end,
    function()
      摇一摇=false
    end),
    particle3(),
    }, {
   
    
    
    Yunzhu.switch("对话框",function() --gg.alert("开") 
    
    
baseWindow=require 'floatingWindowManager2'
context = baseWindow:getContext()
local dialogBuilder = MaterialAlertDialogBuilder(context)
:setTitle('欢迎使用')
:setMessage("谷歌AOSP MaterialDesign UI")
:setPositiveButton('确定')
luajava.showAlert(dialogBuilder)
    end,function() gg.alert("关") end),
    }, {
    Yunzhu.switch("测试",function() end,function() end),
    }, {
    Yunzhu.switch("测试",function() end,function() end),
    }, {

    },{
    Yunzhu.switch("退出",function() end,function() end),
    },{

    },{

    },{

    },{

    },{

    },{

  }
})