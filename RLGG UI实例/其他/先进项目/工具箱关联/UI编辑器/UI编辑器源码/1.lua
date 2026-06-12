dex.loadfile("/sdcard/云烛/配置文件/GifView.dex")
import("pl.droidsonroids.gif.GifImageView")
-- 引入必要的库
require("import")
import "android.graphics.*"
import "android.graphics.drawable.*"
import "android.graphics.PorterDuff"
import "android.graphics.drawable.shapes.RoundRectShape"
import "android.graphics.Paint"
import "android.graphics.BitmapFactory"
import "android.renderscript.*"

local baseWindow = require "floatingWindowManager2"
if not baseWindow.VERSION or baseWindow.VERSION < "1.0.3" then
	gg.alert("请重启一下RLGG")
	os.exit()
end
local context = baseWindow:getContext()
local material3 = require "material3"
context:setTheme(R.style.AppTheme)
import "android.content.res.ColorStateList"
import "com.google.android.material.imageview.ShapeableImageView"
import "com.google.android.material.shape.CornerFamily"
import "com.google.android.material.dialog.MaterialAlertDialogBuilder"
import "com.google.android.material.tabs.TabLayout"
import "com.google.android.material.tabs.TabItem"
import "com.google.android.material.card.MaterialCardView"
import "com.google.android.material.bottomappbar.BottomAppBar"
import "com.google.android.material.materialswitch.MaterialSwitch"
import "com.google.android.material.slider.Slider"
import "com.google.android.material.snackbar.Snackbar"
import "com.google.android.material.checkbox.MaterialCheckBox"
import "com.google.android.material.chip.Chip"
import "com.google.android.material.chip.ChipGroup"
import "com.google.android.material.textview.MaterialTextView"
import "com.google.android.material.divider.MaterialDivider"
import "com.google.android.material.button.MaterialButton"
import "com.google.android.material.button.MaterialButtonToggleGroup"
import "com.google.android.material.floatingactionbutton.FloatingActionButton"
import "com.google.android.material.search.SearchView"
import "com.google.android.material.search.SearchBar"
import "com.google.android.material.progressindicator.LinearProgressIndicator"
import "com.google.android.material.progressindicator.CircularProgressIndicator"
import "com.google.android.material.radiobutton.MaterialRadioButton"
import "com.google.android.material.navigationrail.NavigationRailView"
import "com.google.android.material.bottomnavigation.BottomNavigationView"
import "com.google.android.material.navigation.NavigationView"
import "com.google.android.material.floatingactionbutton.FloatingActionButton"
import "com.google.android.material.textfield.TextInputLayout"
import "com.google.android.material.textfield.TextInputEditText"
import "com.google.android.material.carousel.MaskableFrameLayout"
import "com.google.android.material.datepicker.MaterialDatePicker"
import "androidx.coordinatorlayout.widget.CoordinatorLayout"
import "androidx.core.widget.NestedScrollView"
import "androidx.recyclerview.widget.RecyclerView"
local MDC_R = luajava.bindClass("com.google.android.material.R")
local LinearLayoutCompat = bindClass "androidx.appcompat.widget.LinearLayoutCompat"


-- 模糊函数：使用 RenderScript 进行图像模糊
function blurBitmap(bitmap, radius)
    local rs = RenderScript.create(activity)
    local input = Allocation.createFromBitmap(rs, bitmap)
    local output = Allocation.createTyped(rs, input.getType())
    local script = ScriptIntrinsicBlur.create(rs, Element.U8_4(rs))
    script.setRadius(radius)
    script.setInput(input)
    script.forEach(output)
    output.copyTo(bitmap)
    rs.destroy()
    return bitmap
end
--毛玻璃


--luajava.setFloatingWindowHide(true)
file.checkFile("/sdcard/云烛/图片/color") -- 判断文件是否存在
local RGBcolor = file.read("/sdcard/云烛/图片/color") -- 读取文件内容
if RGBcolor ~= "" then -- 判断内容是否为空
 else
  RGBcolor="6750A4"
end
RGBcolor = "6750A4"
local Yunzhu = {}
local colorvs = {} --控件颜色
local threshold = 5 -- 设定拖动阈值
local canSwipeUp = false -- 设定第一次上拖动是否触发
local canSwipeDown = true -- 设定第一次下拖动是否触发
local isPlaying = false --设定歌曲播放状态
local isReady = false --歌曲是否准备完毕
local 音量键=true
local 摇一摇=true
local ckimg = {
		{'Lottie.dex','https://image.rlyun.fun/down.php/962553ebd72772588c447cbde4ddf8e0.dex'},
		{'Pause','https://image.rlyun.fun/down.php/74cf3f3ed14816b3f55445820d066cf1.'},
		{'hei_right','https://image.rlyun.fun/down.php/dfcc155180c66711a66a1c6540db5e03.'},
		{'heir','https://image.rlyun.fun/down.php/1f8c38a24d8adda4f8f4f897ab2abfbd.'},
		{'heix','https://image.rlyun.fun/down.php/1631f943c3cad4fd0aee9e611638198e.'},
		{'listloop','https://image.rlyun.fun/down.php/95c0a82922a7a6a2ae5d12494942521c.'},
		{'stoploop','https://image.rlyun.fun/down.php/d38e8c42f3c661433fe33797e1a46ae0.'},
		{'repeatone','https://image.rlyun.fun/down.php/c8fbb72a8b77a07c54262874988534e9.'},
		{'setPlay','https://image.rlyun.fun/down.php/11843b5be6f1568eda187a8f8ff0ba2c.'},
		{'headset','https://image.rlyun.fun/down.php/7d54e887c30bf89e62c70c3e3e2f7de2.'},
		{'next','https://image.rlyun.fun/down.php/55eaad311b2f86fead7ca636e7321014.'},
		{'playlist','https://image.rlyun.fun/down.php/4750102c379a4a3efd734921a0e026bf.'},
		{'last','https://image.rlyun.fun/down.php/f2b9eb293e35d099b2e0ab210e5f019f.'},
		{'unlove','https://image.rlyun.fun/down.php/361cb58b13cea27c00cfcae5cf33913c.'},
		{'love','https://image.rlyun.fun/down.php/daf454d8153d3234747f281d4f4fb0e1.'},
		{'ts','https://image.rlyun.fun/down.php/ab0d30a20ba2b0e4d4249e3114bdd30e.'},
		{'classes3.dex','https://image.rlyun.fun/down.php/29e1a4722ddf781d8f8d95a68f4e07ad.dex'},
	}
material3=require('material3')
context = material3:getContext()
context:setTheme(R.style.AppTheme)
import("android.content.res.ColorStateList")
import("com.google.android.material.card.MaterialCardView")
import("com.google.android.material.materialswitch.MaterialSwitch")
import("com.google.android.material.slider.Slider")
import("com.google.android.material.progressindicator.LinearProgressIndicator")
import("android.animation.LayoutTransition")

local window = require('windowManager')
baseWindow=require'floatingWindowManager2'
baseWindow:darkMode()
baseWindow:lightMode()

function getLayoutParam()
  LayoutParams = window.LayoutParams
  layoutParams = luajava.new(LayoutParams)
  if (Build.VERSION.SDK_INT >= 26) then
    layoutParams.type = LayoutParams.TYPE_APPLICATION_OVERLAY
   else
    layoutParams.type = LayoutParams.TYPE_PHONE
  end
  layoutParams.gravity=Gravity.TOP|Gravity.LEFT
  layoutParams.format = PixelFormat.RGBA_8888
  layoutParams.flags = LayoutParams.FLAG_NOT_TOUCH_MODAL
  layoutParams.width = LayoutParams.WRAP_CONTENT
  layoutParams.height = LayoutParams.WRAP_CONTENT
  return layoutParams
end

function getVerticalBG(gtvb1,gtvb3,gtvb4,gtvb5)
  if not gtvb4 then gtvb4=0 gtvb5=0xff000000 end
  local jianbians=luajava.new(GradientDrawable)
  jianbians:setCornerRadius(gtvb3)
  jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
  jianbians:setColors(gtvb1)
  jianbians:setStroke(gtvb4,gtvb5)--边框宽度和颜色
  return jianbians
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
vibra=context:getSystemService(Context.VIBRATOR_SERVICE)

local displayMetrics = context:getResources():getDisplayMetrics()
function dp2px(dp)
  dp=string.replace(dp,"dp","")
  return math.floor(dp * displayMetrics.density + 0.5)
end

function big(control,time)
  import("android.animation.ObjectAnimator")
  luajava.runOnUiThread(function()
    ObjectAnimator():ofFloat(control,"scaleX",{
      0,0.3,0.6,1
    }):setDuration(time):start()
    ObjectAnimator():ofFloat(control,"scaleY",{
      0,0.3,0.6,1
    }):setDuration(time):start()
end) end

hanshu=function(v,event)
  local Action=event:getAction()
  if Action==MotionEvent.ACTION_DOWN then
    RawX=event:getRawX()
    RawY=event:getRawY()
    x=mainLayoutParams.x
    y=mainLayoutParams.y
   elseif Action==MotionEvent.ACTION_MOVE then
    mainLayoutParams.x=tonumber(x) +(event:getRawX() - RawX)
    mainLayoutParams.y=tonumber(y) +(event:getRawY() - RawY)
    window:updateViewLayout(floatWindow,mainLayoutParams)
   elseif Action==MotionEvent.ACTION_UP then
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
function nowProgress(value)
luajava.runOnUiThread(function()
Downprogress:setSecondaryProgress(value)
end)
end
function panduan(rec) fille,err = io.open(rec) if fille == nil then return false else return true end end
function checkimg(tmp,value)
DownAlert:setText("正在检查资源("..tmp[1]..")")
if panduan("/sdcard/云烛/图片/"..tmp[1]) ~= true then
DownAlert:setText("资源缺失,正在下载资源("..tmp[1]..")")
file.download(tmp[2],"/sdcard/云烛/图片/"..tmp[1])
end
nowProgress(value)
end

function Yunzhu.menu(sview)
--[[
--要改全屏改这个
  mubx=device.height * 0.95
  muby=device.width
  ]]
mubx=dp2px(UI高度)
  muby=dp2px(UI宽度)
  floatWindow=luajava.loadlayout{
    FrameLayout,
    layout_width="match_parent",
    layout_height="match_parent",
    onTouch=hanshu,
    {
      MaterialCardView,
      background = getHorizontalBG({0xffFEF7FF,0xffFEF7FF},40,3,0xffCAC4D0),
      layout_width="match_parent",
      id=luajava.newId("loading"),
      radius=20,
      strokeWidth=0,
      layout_height = 'match_parent',
      onClick=function() end,
      onTouch=hanshu,
      {
        LinearLayout,
        layout_gravity="center",
        layout_height="wrap_content",
        layout_width="match_parent",
        orientation="vertical",
        {
          luajava.post(LinearProgressIndicator,material3:getContext()),
          id="Downprogress",
          layout_width = 'match_parent',
          layout_height = 'wrap_content',
          layout_marginBottom="5dp",
          max=1700,
        },
        {
          TextView,
          id="DownAlert",
          gravity="center",
          layout_width="match_parent",
          layout_height="wrap_content",
          text="正在检查资源...",
          textColor="#000000",
          textSize="12dp",
        },
        {
          luajava.post(LinearProgressIndicator,material3:getContext()),
          id=luajava.newId("progressIndicator"),
          layout_width = 'match_parent',
          layout_height = 'wrap_content',
          indeterminate=true,
          layout_marginTop="15dp",
          layout_marginBottom="5dp",
        },
        {
          TextView,
          gravity="center",
          layout_width="match_parent",
          layout_height="wrap_content",
          text=项目名字.."启动中...",
          textColor="#000000",
          textSize="12dp",
        },
      },
    },
  }
  Downprogress:setIndicatorColor({0xff161616})
  Downprogress:setTrackColor(0x16161616)
  --luajava.getIdView("progressIndicator"):setIndicatorColor({0xff1E8FFF, 0xff3555FF, 0xff682BFF})
  luajava.getIdView("progressIndicator"):setIndicatorColor({0xFFF44336, 0xFFFF9800, 0xFFFFEB3B, 0xFF4CAF50, 0xFF00BCD4, 0xFF2196F3, 0xFF673AB7, 0xFFE91E63})
  luajava.getIdView("progressIndicator"):setIndeterminateAnimationType("contiguous")
  mainLayoutParams=getLayoutParam()
  mainLayoutParams.width=muby
  mainLayoutParams.height=mubx
  big(floatWindow,800)
  window:addView(floatWindow,mainLayoutParams)
  for i=1,#ckimg do
checkimg(ckimg[i],i*100)
gg.sleep(100)
end
DownAlert:setText("资源检查完毕")

import("com.google.android.material.dialog.MaterialAlertDialogBuilder")
import("com.google.android.material.tabs.TabItem")
import("com.google.android.material.tabs.TabLayout")

  local LottieDex=dex.loadfile('/sdcard/云烛/图片/Lottie.dex')
  local LottieAnimationView=LottieDex:loadClass("com.airbnb.lottie.LottieAnimationView")  
  local AccelerateInterpolator = luajava.bindClass("android.view.animation.AccelerateInterpolator")
  local PathInterpolator = luajava.bindClass("android.view.animation.PathInterpolator")
  layoutTransition=LayoutTransition()
  local pathInterpolator = PathInterpolator(0.35, 0.2, 0.35, 1.0)
  layoutTransition:setInterpolator(LayoutTransition.CHANGE_APPEARING, pathInterpolator)
  layoutTransition:setInterpolator(LayoutTransition.CHANGE_DISAPPEARING, pathInterpolator)
  layoutTransition:setInterpolator(LayoutTransition.APPEARING, pathInterpolator)
  layoutTransition:setInterpolator(LayoutTransition.DISAPPEARING, pathInterpolator)
  layoutTransition:setDuration(400)
  file.checkFile("/sdcard/云烛/图片/收藏歌单") -- 判断文件是否存在
  local musiclist = file.read("/sdcard/云烛/图片/收藏歌单") -- 读取文件内容
  if musiclist ~= "" then -- 判断内容是否为空
    musiclist = load("return"..musiclist)() -- string转table后赋值
   else
    musiclist = {} -- 给变量赋值
  end
  local nowMusic = #musiclist -- 设定当前歌曲序号
  import("android.media.MediaPlayer")
  mediaPlayer=MediaPlayer() -- 音乐播放器
  import("android.view.animation.ScaleAnimation")
import("android.view.animation.Animation")
YoYoImpl=luajava.getYoYoImpl()

function controlSmall(control,time)
  luajava.runOnUiThread(function()
    缩放动画=ScaleAnimation(1,0,1,0,Animation.RELATIVE_TO_SELF,0,Animation.RELATIVE_TO_SELF,0)
    缩放动画:setDuration(time)
    control:startAnimation(缩放动画)
end) end
function controlBig(control,time)
  luajava.runOnUiThread(function()
    缩放动画=ScaleAnimation(0,1,0,1,Animation.RELATIVE_TO_SELF,0,Animation.RELATIVE_TO_SELF,0)
    缩放动画:setDuration(time)
    control:startAnimation(缩放动画)
end) end
lastTime=0
  function 隐藏()
        vibra:vibrate(15)
  local nowTime=os.time()
  if nowTime - lastTime < 0.5 then
    return 0
  end lastTime=nowTime
  if tonumber(tostring(menuView:getVisibility())) ~=8.0 then
    luajava.newThread(function()
      luajava.runOnUiThread(function()
        controlWindow:setVisibility(View.VISIBLE)
        controlSmall(menuView,500)
        controlBig(controlWindow,500)
      end)
      gg.sleep(500)
      luajava.runOnUiThread(function()
        menuView:setVisibility(View.GONE)
        mainLayoutParams.width=LayoutParams.WRAP_CONTENT -- 布局宽度
        mainLayoutParams.height=LayoutParams.WRAP_CONTENT -- 布局高度
        mainLayoutParams.flags=LayoutParams.FLAG_NOT_FOCUSABLE
        window:updateViewLayout(floatWindow,mainLayoutParams)
      end)
    end):start()
   else
    luajava.newThread(function()
      luajava.runOnUiThread(function()
        mainLayoutParams.width=muby -- 布局宽度
        mainLayoutParams.height=mubx -- 布局高度
        mainLayoutParams.flags=LayoutParams.FLAG_NOT_TOUCH_MODAL
        window:updateViewLayout(floatWindow,mainLayoutParams)
        menuView:setVisibility(View.VISIBLE)
        controlSmall(controlWindow,500)
        controlBig(menuView,500)
      end)
      gg.sleep(500)
      luajava.runOnUiThread(function()
        controlWindow:setVisibility(View.GONE)
      end)
    end):start()
  end
  end
  function 滚(x)
    targetLeft=0
    for i=1,x+1 do
      local tabView = tab:getTabAt(i-1).view
      local tabWidth = tabView:getWidth()
      if i ~= x+1 then
        targetLeft = targetLeft+tabWidth
      end
    end
    luajava.runOnUiThread(function()
      ScrollTab:smoothScrollTo(targetLeft,0);
    end)
  end
  suofang=function(v,event)
    local Action=event:getAction()
    if Action==MotionEvent.ACTION_DOWN then
      RawX=event:getRawX()
      RawY=event:getRawY()
      x=mainLayoutParams.height
      y=mainLayoutParams.width
      if x==0 or x==-2 then x=1700 y=1300 end
     elseif Action==MotionEvent.ACTION_MOVE then
      mubx=tonumber(x) +(event:getRawY() - RawY)
      if mubx>=530 and mubx<=11000 then
        mainLayoutParams.height=mubx
      end
      muby=tonumber(y) +(event:getRawX() - RawX)
      if muby>=800 and muby<=11000 then
        mainLayoutParams.width=muby
      end
    end
    window:updateViewLayout(floatWindow,mainLayoutParams)
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
  yltype = 0
  function jianting3(func)
    if 音量键==false then return 0 end
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
      luajava.runUiThread(function()
        floatWindow:setVisibility(View.VISIBLE)
        YoYoImpl:with("FadeIn"):duration(500):playOn(floatWindow)
      end)
    end
  end
  import'android.hardware.*';
  local sensor = luajava.createProxy('android.hardware.SensorEventListener', {
    onSensorChanged = functions.debounce(function()
      if 摇一摇==false then return 0 end
      if qhkai~=0 then
        qhkai=0
        huiz()
        luajava.runUiThread(function()
          floatWindow:setVisibility(View.VISIBLE)
          YoYoImpl:with("FadeIn"):duration(300):playOn(floatWindow)
        end)
       else
        qhkai=1
        draw.remove()
        luajava.newThread(function()
          luajava.runUiThread(function()
            YoYoImpl:with("FadeOut"):duration(300):playOn(floatWindow)
          end)
          gg.sleep(400)
          luajava.runUiThread(function()
            floatWindow:setVisibility(View.GONE)
          end)
          draw.remove()
        end):start()
      end
    end,500)
  })
  dexloader=dex.loadfile('/sdcard/云烛/图片/classes3.dex')
  MySensorManager = dexloader:loadClass('yaocn.rlyun.yaoyiyao.MySensorManager')
  luajava.runOnUiThread(function()
    MySensorManager(context, sensor)
  end)

  local hourStr=os.date("%H")
  local hour=tonumber(hourStr) -- 获取当前小时
  if hour >=0 and hour < 3 then
    timeA="夜深了，早点休息"
   elseif hour >=3 and hour < 5 then
    timeA="凌晨了，注意身体"
   elseif hour >=5 and hour < 12 then
    timeA="上午好☁️"
   elseif hour >=12 and hour < 14 then
    timeA="中午好🌞"
   elseif hour >=14 and hour < 19 then
    timeA="下午好🍵"
   elseif hour >=19 and hour < 24 then
    timeA="晚上好🌙"
  end
import"android.graphics.Paint"

  function souyy(txt)
    return table.json(gg.makeRequest("http://music.163.com/api/search/get?s="..txt.."&type=1&offset=0&total=true&limit=20").content)
  end
  
  function searchmusic()
    mustxt=luajava.getIdView("搜索"):getText()
    mustxt=tostring(mustxt)
    luajava.runOnUiThread(function()
      luajava.getIdView("搜索"):setText("")
      luajava.getIdView("musicWindow"):setVisibility(View.GONE)
      SearchProgress:setVisibility(View.VISIBLE)  
    end)
    if string.trim(mustxt)~="" then
      musictable={}
        mustable=souyy(mustxt)
        mustable=mustable.result.songs
        for k,v in pairs(mustable) do
          musictable[#musictable + 1]=v
        end
      Sortsong(20)
    end
    luajava.runOnUiThread(function()
      luajava.getIdView("musicWindow"):setVisibility(View.VISIBLE)
      SearchProgress:setVisibility(View.GONE)
      YoYoImpl:with("FadeIn"):duration(500):playOn(luajava.getIdView("musicWindow"))
    end)
  end
  function Sortsong(formath)
    musiccheck={}
    for i=1,formath do
      musid=musictable[#musictable+1-i].id
      musname=musictable[#musictable+1-i].name
      musart=musictable[#musictable+1-i].artists[0].name
      musvip=musictable[#musictable+1-i].fee
      musiccheck[#musiccheck+1]={musid,musname,musart,musvip}
    end
    musicadapter=ui.BaseAdapter({
      getCount = function()
        return table.getn(musiccheck) -- 使用 table.getn 获取表中元素的数量
      end,
      getItem = function(position)
        return musiccheck[position + 1]
      end,
      getItemId = function(position)
        return position
      end,
         getView=function(position, convertView, parent)
        local SwitchView
        local info=musicadapter:getItem(position)
        if not convertView then
          SwitchView=luajava.loadlayout({
          MaterialCardView,
      background = getHorizontalBG({0xffFEF7FF,0xffFEF7FF},40,3,0xffCAC4D0),
      layout_width="match_parent",
      strokeWidth=0,
      {
            LinearLayout,
            orientation="vertical",
            padding="3dp",
            gravity="center",
            layout_width="match_parent",
            {
              TextView,
              textSize="14sp",
              textColor="#5A6EE7",
              layout_hight="10dp",
              layout_width="wrap_content",
              gravity="center"
            },
            {
              TextView,
              textColor="#545454",
              textSize="10sp",
              layout_hight="10dp",
              layout_width="wrap_content",
              gravity="center"
            }
            }
          })
         else
          SwitchView=convertView
        end
        SwitchView:getChildAt(0):getChildAt(0):setText(info[2])
        SwitchView:getChildAt(0):getChildAt(1):setText(info[3])
        SwitchView:setOnClickListener(function()
          bofang(info[1],info[2],info[3])
          if info[4] == 1 then
          MaterialAlert("当前为付费VIP歌曲,可能只支持部分试听")
          end
        end)
        return SwitchView
      end
    })
    luajava.runOnUiThread(function()
      musiclistview:setAdapter(musicadapter)
    end)
  end
  lastClickTime1=0
  function bofang(musicid, musicname, musicstart)
    local currentTime1=os.time()
    if currentTime1 - lastClickTime1 < 1 then return 0 end lastClickTime1=currentTime1
    isExist=false
    for i, _ in ipairs(musiclist) do
      if musiclist[i][1] == musicid then
        nowMusic = i
        播放歌曲(musiclist[i][1])
        isExist=true
      end
    end
    if not isExist then
      table.insert(musiclist, {musicid, musicname, musicstart, false})
      nowMusic = #musiclist
      播放歌曲(musicid)
    end
  end


  function 写入()
    lovemusic = {}
    for _, v in pairs(musiclist) do
      if v[4] then
        table.insert(lovemusic, v)
      end
    end
    file.write("/sdcard/云烛/图片/收藏歌单",lovemusic)
  end

  function 灵动岛()
    luajava.getIdView("Smalldisplay"):setVisibility(View.GONE)
    luajava.getIdView("music"):setVisibility(View.INVISIBLE)
    if 灵动 then
      luajava.startThread(function()
        luajava.runOnUiThread(function()
          shadow:setVisibility(View.GONE)
          luajava.getIdView("SmallIsland"):setVisibility(View.VISIBLE)
          Island:setVisibility(View.GONE)
        end)
        灵动=false
        gg.sleep(500)
        luajava.runOnUiThread(function()
          luajava.getIdView("Smalldisplay"):setVisibility(View.VISIBLE)
          YoYoImpl:with("FadeIn"):duration(400):playOn(luajava.getIdView("Smalldisplay"))
        end)
      end)
     else
      luajava.startThread(function()
        luajava.runOnUiThread(function()
          shadow:setVisibility(View.VISIBLE)
          luajava.getIdView("SmallIsland"):setVisibility(View.GONE)
          Island:setVisibility(View.VISIBLE)
        end)
        灵动=true
        gg.sleep(500)
        luajava.runOnUiThread(function()
          luajava.getIdView("music"):setVisibility(View.VISIBLE)
          YoYoImpl:with("FadeIn"):duration(400):playOn(luajava.getIdView("music"))
        end)
      end)
    end
  end


  function ctime(value)
    local minutes=math.floor(value / 60)
    local seconds=value % 60
    return string.format("%d:%02d",minutes,seconds)
  end
  function setTime(value)
    local minutes=math.floor(value/1000)
    luajava.runOnUiThread(function()
      hkuai:setValueTo(minutes)
      atime:setText(ctime(minutes))
    end)
  end

  function playMusic(id)
    pcall(function()
      mediaPlayer:reset()
      mediaPlayer:setDataSource("/sdcard/云烛/图片/音乐缓存/"..id)
      mediaPlayer:prepare()
    end)
  end

  function 播放歌曲(id)
    isReady=false
    if #musiclist == 0 then return end
    if isPlaying==false then ztkq:setSpeed(1) ztkq:playAnimation() isPlaying=true end
    if file.length("/sdcard/云烛/图片/音乐缓存/"..id) ~= 0 then
      playMusic(id)
     else
      luajava.startThread(function()
        luajava.runOnUiThread(function() DownloadProgress:setVisibility(View.VISIBLE) end)
        local co = coroutine.create(function()
          local success = file.download("http://music.163.com/song/media/outer/url?id=".. id.. ".mp3","/sdcard/云烛/图片/音乐缓存/".. id)
          return success
        end)
        local status, result = coroutine.resume(co)
        if status and result then
          luajava.runOnUiThread(function() DownloadProgress:setVisibility(View.GONE) end)
          playMusic(id)
         else
          print("下载出现问题，无法播放音乐")
        end
      end)
    end
  end

  luajava.setInterface(mediaPlayer, 'setOnPreparedListener',--资源准备完毕监听
  {onPrepared=function(media)
      isReady=true
      mediaTime=media:getDuration()
      media:start()
      setTime(mediaTime)
      luajava.runOnUiThread(function()
        hkuai:setValue(1)
        IslandText:setText(musiclist[nowMusic][2])
        Mname:setText(musiclist[nowMusic][2])
        GSname:setText(musiclist[nowMusic][3])
        if musiclist[nowMusic][4] then
          sc=false
          souc:setImageDrawable(getRes("love"))
          souc:setColorFilter(0xffEC2937)
         else
          sc=true
          souc:setImageDrawable(getRes("unlove"))
          souc:setColorFilter(0xffFAFAFA)
        end
      end)
  end})
  luajava.setInterface(mediaPlayer, 'setOnCompletionListener',--播放完毕监听
  {onCompletion=function(media)
      换一首()--问题
  end})
  
  function MaterialAlert(text)
    MaterialAlertDialog=MaterialAlertDialogBuilder(material3:getContext())
    :setTitle(项目名字) -- 设置标题
    :setMessage(text)
    :setPositiveButton('确定')
    luajava.showAlert(MaterialAlertDialog)
  end
  BSZ=0
  function 换一首()
    if BSZ==0 then--列表循环
      下一首()
     elseif BSZ==1 then--随机播放
      local randomnowMusic=math.random(1,#musiclist)
      local selectedNumber=musiclist[randomnowMusic]
      nowMusic=randomnowMusic
      播放歌曲(selectedNumber[1])
     elseif BSZ==2 then--单曲循环
      播放歌曲(musiclist[nowMusic][1])
     elseif BSZ==3 then--停止循环
      luajava.newThread(function()
        播放歌曲(musiclist[nowMusic][1])
        gg.sleep(110)
        isPlaying=false
        mediaPlayer:pause()
        luajava.runOnUiThread(function()
          ztkq:setSpeed(-1)
          ztkq:playAnimation()
        end)
      end):start()
    end
  end
  function 播放设置()
    Yunzhu.controlWater(luajava.getIdView("LoopSetting"),200)
    if BSZ==0 then--随机播放
      BSZ=BSZ+1
      bfsz:setImageDrawable(getRes("repeatone"))
     elseif BSZ==1 then--单曲循环
      BSZ=BSZ+1
      bfsz:setImageDrawable(getRes("stoploop"))
     elseif BSZ==2 then--停止循环
      BSZ=BSZ+1
      bfsz:setImageDrawable(getRes("listloop"))
     elseif BSZ==3 then--列表循环
      BSZ=0
      bfsz:setImageDrawable(getRes("setPlay"))
    end
  end
  function 暂停()
    if isPlaying then
      ztkq:setSpeed(-1)--暂停
      ztkq:playAnimation()
      if isReady then
        mediaPlayer:pause()
      end
      isPlaying=false
     else
      if isReady then
        mediaPlayer:start()
      end
      ztkq:setSpeed(1)
      ztkq:playAnimation()
      isPlaying=true
    end
  end
  function 下一首()
    if #musiclist == 0 then MaterialAlert("列表没有可播放歌曲,请前往音乐界面添加！")
    luajava.runOnUiThread(function()
     Page:setCurrentItem(#stab-2)
     end) return end
    nowMusic=nowMusic + 1
    if nowMusic > #musiclist then
      nowMusic=1
    end
    musicInfo=musiclist[nowMusic]
    播放歌曲(musicInfo[1])
  end
  function 上一首()
    if #musiclist == 0 then MaterialAlert("列表没有可播放歌曲,请前往音乐界面添加！") 
    luajava.runOnUiThread(function()
     Page:setCurrentItem(#stab-2)
     end) return end
    nowMusic=nowMusic - 1
    if nowMusic < 1 then
      nowMusic=#musiclist
    end
    musicInfo=musiclist[nowMusic]
    播放歌曲(musicInfo[1])
  end
  sc=true
  function 收藏()
  if isReady then
    if sc then
      sc=false
      musiclist[nowMusic][4]=true
      souc:setImageDrawable(getRes("love"))
      souc:setColorFilter(0xffEC2937)
     else
      sc=true
      musiclist[nowMusic][4]=false
      souc:setImageDrawable(getRes("unlove"))
      souc:setColorFilter(0xffFAFAFA)
    end
    写入()
    end
  end
  function 刷新列表()
    playadapter=ui.BaseAdapter({
      getCount = function()
        return #musiclist
      end,
      getItem = function(position)
        return musiclist[position + 1]
      end,
      getItemId = function(position)
        return position
      end,
      getView=function(position, convertView, parent)
        local SwitchView
        local info=playadapter:getItem(position)
        if info[4] then
          MTP=getRes("love")
          MTPC=0xffEC2937
         else
          MTP=getRes("unlove")
          MTPC=0xff4B484F
        end
        if not convertView then
          SwitchView=luajava.loadlayout(
          {
            FrameLayout,
            layout_width="match_parent",
            layout_height="30dp",
            paddingLeft="5dp",
            paddingRight="5dp",
            {
              ImageView,
              id="Playlike",
              src=MTP,
              layout_gravity="center|left",
              ColorFilter=MTPC,
              layout_width="22dp",
              layout_height="22dp",
            },
            {
              TextView,
              id="playname",
              layout_marginLeft="25dp",
              layout_marginRight="25dp",
              layout_width="match_parent",
              layout_height="wrap_content",
              layout_gravity="center",
              gravity="center",
              textColor="#27253A",
            },
            {
              ImageView,
              id="songremove",
              src="/sdcard/云烛/图片/heix",
              ColorFilter="#4B484F",
              layout_gravity="center|right",
              layout_width="18dp",
              layout_height="18dp",
            },
          })
         else
          SwitchView=convertView
        end
        Playlike:setOnClickListener(function()
          if info[4] then
            info[4]=false
            musiclist[position+1][4]=false
            写入()
            刷新列表()
            luajava.runOnUiThread(function()
              if nowMusic==position+1 then sc=true
                souc:setImageDrawable(getRes("unlove"))
                souc:setColorFilter(0xffFAFAFA) end
            end)
           else
            info[4]=true
            musiclist[position+1][4]=true
            写入()
            刷新列表()
            luajava.runOnUiThread(function()
              if nowMusic==position+1 then sc=false
                souc:setImageDrawable(getRes("love"))
                souc:setColorFilter(0xffEC2937) end
            end)
          end
        end)
        playname:setOnClickListener(function()
          播放歌曲(info[1],info[2],info[3],info[4])
          nowMusic=position+1
        end)
        playname:setText(info[2])
        songremove:setOnClickListener(function()
          luajava.startThread(function()
            if gg.alert('确定删除['..info[2]..']吗？','确定','点错了')==1 then
              table.remove(musiclist,position+1) 刷新列表() 写入()
              if nowMusic==position+1 then 下一首() end end
          end)
        end)
        return SwitchView
      end
    })
    luajava.runOnUiThread(function()
      songlistview:setAdapter(playadapter)
    end)
  end
  songlist={
    LinearLayout,
    orientation="vertical",
    layout_width="match_parent",
    layout_height="wrap_content",
    {
      ListView,--列表适配器
      id="songlistview",
      layout_width='match_parent',
      layout_height='match_parent',
      dividerHeight=3,
    }
  }
  function 播放列表()
    dialogBuilder=MaterialAlertDialogBuilder(material3:getContext()) -- 创建对话框构造器
    :setTitle('待播放列表') -- 设置标题
    :setView(luajava.loadlayout(songlist))
    :setPositiveButton('确定')
    luajava.showAlert(dialogBuilder)
    刷新列表()
  end

  function rgb2hex(value)
    local hex=''
    local prefix=value < 16 and '0' or ''
    while value > 0 do
      local rgb=math.fmod(value,16) + 1
      value=math.floor(value / 16)
      hex=prefix.. string.sub('0123456789ABCDEF',rgb,rgb).. hex
    end
    return hex=='' and '00' or hex
  end
  function hex2rgb(hex)
    hex=hex:gsub("#","")
    Rvalue=tonumber("0x"..hex:sub(1,2))Gvalue=tonumber("0x"..hex:sub(3,4))Bvalue=tonumber("0x"..hex:sub(5,6))
  end

  hex2rgb(RGBcolor)
  function seeColor()
    luajava.startThread(function()
      luajava.runUiThread(function()
        RGBcolor=(""..Rcolor..Gcolor..Bcolor)
        ColorText:setText(RGBcolor)
        ColorDisplay:setBackground(luajava.loadlayout{GradientDrawable,color="#"..RGBcolor,cornerRadius=15})
        SliderColor(Rslider,RGBcolor,RGBcolor,RGBcolor)
        SliderColor(Gslider,RGBcolor,RGBcolor,RGBcolor)
        SliderColor(Bslider,RGBcolor,RGBcolor,RGBcolor)
        SwitchPreview:setTrackTintList(ColorStateList({{android.R.attr.state_checked}},{"0xff"..RGBcolor}))
        luajava.getIdView("tab2"):setTabTextColors(0xff000000,"0xff"..RGBcolor)
        luajava.getIdView("tab2"):setSelectedTabIndicatorColor("0xff"..RGBcolor)
      end)
    end)
  end
  Custom=luajava.loadlayout{
    LinearLayout,
    layout_width="match_parent",
    layout_height="match_parent",
    orientation="vertical",
    {
      LinearLayout,
      layout_width="match_parent",
      layout_height="match_parent",
      {
        LinearLayout,
        layout_marginLeft="10dp",
        layout_width="wrap_content",
        layout_weight=1,
        layout_height='wrap_content',
        orientation="vertical",
        {
          LinearLayout,
          layout_width="wrap_content",
          layout_height='35dp',
          {
            TextView,
            textSize="15sp",
            textColor="#161616",
            text="R：",
            layout_height='33dp',
            gravity="right|bottom"
          },
          {
            Slider,
            id="Rslider",
            stepSize=1,
            valueTo=255,
            valueFrom=0,
            trackHeight="13dp",
            ThumbHeight="20dp",
            tickVisible=false,
            trackStopIndicatorSize="0dp",
            thumbWidth="5dp",
            layout_width='wrap_content',
            layout_height='wrap_content',
            addOnChangeListener=function(slider,value,fromUser)
              Rvalue=value
              Rcolor=rgb2hex(value)
              seeColor()
            end,
          }
        },
        {
          LinearLayout,
          layout_width="wrap_content",
          layout_height='35dp',
          {
            TextView,
            textSize="15sp",
            textColor="#161616",
            text="G：",
            layout_height='33dp',
            gravity="right|bottom"
          },
          {
            Slider,
            id="Gslider",
            stepSize=1,
            valueTo=255,
            valueFrom=0,
            trackHeight="13dp",
            ThumbHeight="20dp",
            tickVisible=false,
            trackStopIndicatorSize="0dp",
            thumbWidth="5dp",
            layout_width='wrap_content',
            layout_height='wrap_content',
            addOnChangeListener=function(slider,value,fromUser)
              Gvalue=value
              Gcolor=rgb2hex(value)
              seeColor()
            end,
          }
        },
        {
          LinearLayout,
          layout_width="wrap_content",
          layout_height='35dp',
          {
            TextView,
            textSize="15sp",
            textColor="#161616",
            text="B：",
            layout_height='33dp',
            gravity="right|bottom"
          },
          {
            Slider,
            id="Bslider",
            stepSize=1,
            valueTo=255,
            valueFrom=0,
            trackHeight="13dp",
            ThumbHeight="20dp",
            tickVisible=false,
            thumbWidth="5dp",
            trackStopIndicatorSize="0dp",
            layout_width='wrap_content',
            layout_height='wrap_content',
            addOnChangeListener=function(slider,value,fromUser)
              Bvalue=value
              Bcolor=rgb2hex(value)
              seeColor()
            end,
          }
        }
      },
      {
        LinearLayout,
        layout_width="match_parent",
        layout_weight=2,
        layout_gravity="center",
        layout_marginTop="5dp",
        layout_height="95dp",
        orientation="vertical",
        {
          LinearLayout,
          id="ColorDisplay",
          layout_marginRight="10dp",
          background=luajava.loadlayout{GradientDrawable,color="0xff"..RGBcolor,cornerRadius=15},
          layout_height="match_parent",
          layout_width="match_parent",
          layout_marginBottom="5dp",
          layout_weight=1,
        },
        {
          TextView,
          id="ColorText",
          layout_height="match_parent",
          layout_marginRight="10dp",
          background=luajava.loadlayout{GradientDrawable,color=0xFFFFFFFF,cornerRadius=15},
          layout_width="match_parent",
          layout_weight=2,
          textColor="0xff161616",
          text=""..RGBcolor,
          gravity="center",
        }
      }
    },
    {
      FrameLayout,
      layout_height="wrap_content",
      layout_marginLeft="10dp",
      layout_marginRight="10dp",
      layout_width="match_parent",

      {
        MaterialSwitch,
        id="SwitchPreview",
        text="预览:",
        checked=true,
        layout_width='wrap_content',
        layout_height='wrap_content',
      },
      {
        TabLayout,
        id=luajava.newId("tab2"),
        layout_height="wrap_content",
        layout_width="150dp",
        layout_gravity="center|right",
        background=getVerticalBG({0x00000000,0x00000000},15),
      }

    }
  }
  for i=1,3 do
    luajava.getIdView("tab2"):addTab(luajava.getIdView("tab2"):newTab():setText("演示"))
  end

  lastClickTime4=0
  function 自定义主题()
    local currentTime4=os.time()
    if currentTime4 - lastClickTime4 < 1 then return 0 end lastClickTime4=currentTime4
    luajava.runUiThread(function()
      local parent = Custom:getParent()
      if parent then
        parent:removeView(Custom)
      end
      Rslider:setValue(Rvalue)
      Gslider:setValue(Gvalue)
      Bslider:setValue(Bvalue)
    end)
    CustomTheme=MaterialAlertDialogBuilder(material3:getContext()) -- 创建对话框构造器
    :setTitle('控件颜色') -- 设置标题
    :setView(Custom)
    :setPositiveButton('应用',function()修改控件颜色(RGBcolor)local file=io.open("/sdcard/云烛/图片/color","w")
    file:write(RGBcolor)end)
    luajava.showAlert(CustomTheme)
  end
  function 修改控件颜色(color)
    luajava.runOnUiThread(function()
      tab:setTabTextColors(0xff000000,"0xff"..RGBcolor)
      tab:setSelectedTabIndicatorColor("0xff"..color)
      for key,value in pairs(colorvs) do
        if value[1]=="switch" then
          luajava.getIdView(value[2]):setTrackTintList(ColorStateList({{android.R.attr.state_checked}},{"0xff"..color}))
          elseif value[1]=="switch2" then
          luajava.getIdView(value[2]):setBackColor(ColorStateList({{android.R.attr.state_checked},{-android.R.attr.state_checked}},{"0xff"..RGBcolor,0xffD4D4D4}))
         elseif value[1]=="slider" then
          luajava.getIdView(value[2]):setTrackActiveTintList(ColorStateList({{}},{"0xff"..color}))
          luajava.getIdView(value[2]):setTrackInactiveTintList(ColorStateList({{}},{"0x50"..color}))
          luajava.getIdView(value[2]):setThumbTintList(ColorStateList({{}},{"0xff"..color}))
         elseif value[1]=="box" then
          boxpic[value[2]]:setColorFilter("0xff"..RGBcolor)
          elseif value[1]=="check" then
          luajava.getIdView(value[2]):setButtonTintList(ColorStateList({{android.R.attr.state_checked},{-android.R.attr.state_checked}},{"0xff"..RGBcolor,0xff49454F}))
          elseif value[1]=="radio" then
          luajava.getIdView(value[2]):setButtonTintList(ColorStateList({{android.R.attr.state_checked},{-android.R.attr.state_checked}},{"0xff"..RGBcolor,0xff49454F}))
        end
      end
    end)
  end
  Page={
    'ui.ViewPager',
    layout_width="match_parent",
    layout_height="match_parent",
  }
  table.insert(stab,#stab, "音乐")
  table.insert(sview,#stab - 1,{})
  for i=1,#stab do
    if i ~=#stab-1 then
      tmp={
        LinearLayout,
        layout_height="match_parent",
        layout_width="match_parent",
        orientation="vertical",
      }
      for k=1,#sview[i] do
        tmp[#tmp+1]=sview[i][k]
      end
      _ENV["layout"..i]=luajava.loadlayout{
        FrameLayout,
        layout_height="match_parent",
        layout_width="match_parent",
        {
          ScrollView,
          layout_height="match_parent",
          layout_width="match_parent",
          VerticalScrollBarEnabled=false,
          layout_marginTop="5dp",
          layout_marginBottom="5dp",
          layout_marginRight="11dp",
          layout_marginLeft="11dp",
          tmp,
        }
      }
    end
  end
  _ENV["layout"..#stab-1]=luajava.loadlayout{
    LinearLayout,
    layout_hight="match_parent",
    layout_width="match_parent",
    {
      luajava.post(LinearProgressIndicator,material3:getContext()),
      id="SearchProgress",
      visibility = "gone",
      layout_width = 'match_parent',
      layout_height = 'wrap_content',
      indeterminate = true,
      
    },
    {
      LinearLayout,
      id=luajava.newId("musicWindow"),
      orientation="vertical",
      layout_height="match_parent",
      layout_width="match_parent",
      {
        LinearLayout,
        layout_hight="wrap_content",
        layout_width="match_parent",
        layout_margin="5dp",
   --     Elevation="3dp",
        background = getHorizontalBG({0xffFEF7FF,0xffFEF7FF},40,3,0xffCAC4D0),
        {
          EditText,
          id=luajava.newId("搜索"),
          background = getHorizontalBG({0xffFEF7FF,0xffFEF7FF},40,3,0xffCAC4D0),
          gravity="center",
          hint="请输入关键词",
          textSize="13sp",
          layout_weight="1",
          HintTextColor="0x40201E1E",
          layout_width="match_parent",
          textColor="#201E1E",
          OnKeyListener={
  onKey=function(v,keyCode,event)
    if (KeyEvent.KEYCODE_ENTER == keyCode and KeyEvent.ACTION_DOWN == event:getAction()) then
thread=luajava.getThread(function()
              searchmusic()
            end)
            thread:start()
      return true;
     else
      return false;
    end
  end
  
}
        },
        {
          LinearLayout,
          layout_height="match_parent",
          layout_width="1dp",
          backgroundColor="0xffdedede",
        },
        {
          TextView,
          text="搜索",
          gravity="center",
          id=luajava.newId("stxt"),
          textSize="15sp",
          TextColor="#161616",
          layout_height="match_parent",
          layout_width="50dp",
          onClick=function()
            thread=luajava.getThread(function()
              searchmusic()
            end)
            thread:start()
          end
        },
      },
      {
        ListView,
        id="musiclistview",
        layout_width='match_parent',
        layout_height='match_parent',
        dividerHeight=3,
      },
    },
  }
  SearchProgress:setIndicatorColor({0xff161616,0xFFF44336, 0xFFFF9800, 0xFFFFEB3B, 0xFF4CAF50, 0xFF00BCD4, 0xFF2196F3, 0xFF673AB7, 0xFFE91E63})
--  SearchProgress:setTrackColor(0x16161616)  
  for i=1,#stab do
    Page[#Page+1]=_ENV["layout"..i]
  end
  Page=luajava.loadlayout(Page)
  tab=luajava.loadlayout({
    TabLayout,
    backgroundColor = 0x00000000,
    layout_width='wrap_control',
    layout_height='match_parent',
  })
  tab:setupWithViewPager(Page)
  tab:setTabTextColors(0xff000000,"0xff"..RGBcolor)
  tab:setSelectedTabIndicatorColor("0xff"..RGBcolor)

  for i=1,#stab do
    tab:getTabAt(i-1):setText(stab[i])
  end
  luajava.setInterface(Page, 'addOnPageChangeListener',
  {onPageSelected=function(view)
      view=tonumber(string.sub(view,1,1))
      当前页面=view+1
      滚(view)
  end})

  menuView= luajava.loadlayout {
    FrameLayout,
    background={GradientDrawable,color=0xFFF3EDF7,cornerRadius=20},
    layout_width="match_parent",
    layout_height="match_parent",
    {
      LinearLayout,
      id=luajava.newId("menuview2"),
      layout_width="match_parent",
      layout_height="match_parent",
      orientation="vertical",
      {
        FrameLayout,
        layout_width="match_parent",
        layout_height="35dp",
        elevation="3dp",
        background=getCorner({0xFFFFFFFF,0xFFFFFFFF},15,0,0xff232323,20,20,0,0),
        
       {
          FrameLayout,
          layout_gravity="left|center",
          background={GradientDrawable,color=0xffE6E6E6,cornerRadius=90},
          layout_width="20dp",
          layout_height="20dp",
          layout_marginLeft="9dp",
          onClick=function() 隐藏() end,
          onTouch=hanshu,
          {
            LinearLayout,
            layout_height="2dp",
            layout_width="10dp",
            layout_gravity="center",
            background={GradientDrawable,color=0xff2c2c2c,cornerRadius=45},
          }
        },
        {
          ImageView,
          padding="5dp",
          layout_gravity="right|center",
          src="/sdcard/云烛/图片/heix",
          background={GradientDrawable,color=0xffE6E6E6,cornerRadius=90},
          layout_width="20dp",
          layout_height="20dp",
          layout_marginRight="9dp",
          onClick=function()
            隐藏()
          end,
          onTouch=hanshu,
        }
      },


      {
        LinearLayout,
        layout_height="fill_parent",
        layout_width="fill_parent",
        layout_weight=1,
          {
            NavigationRailView,
            layout_width = "70dp", -- 侧边导航通常是 `wrap_content`
            layout_height = "match_parent",
            LabelVisibilityMode = 0,  --1 是否显示标签	
            elevation="3dp",
           -- layout_height = "77dp",
            LabelVisibilityMode = 0,  --1 是否显示标签	
            background = getVerticalBG({0xffFEF7FF, 0xffFEF7FF}, 10),
            __onFinish = function(view)
    		view:setItemTextColor(ColorStateList({{android.R.attr.state_checked},{}},{"0xff"..RGBcolor,0xFF44474E}))          
		    view:setItemIconTintList(ColorStateList({{android.R.attr.state_checked},{}},{"0xff"..RGBcolor,0xFF44474E}))
		    view:setItemRippleColor(ColorStateList({{android.R.attr.state_checked},{}},{"0x35"..RGBcolor,"0x35"..RGBcolor}))
	    	view:setItemActiveIndicatorColor(ColorStateList({{android.R.attr.state_checked},{}},{"0x50"..RGBcolor,"0x50"..RGBcolor}))            
            local menu = view:getMenu()
            --[[
            for i = 1,3 do
            local item = menu:add(0, i, i, "预览" .. 1) -- 添加菜单项
            item:setIcon(MDC_R.drawable.abc_ic_search_api_material) -- 设置默认图标
            end
            ]]
              local item = menu:add(0, 1, 1, "云烛" .. 1) -- 添加菜单项
            item:setIcon(MDC_R.drawable.abc_ic_search_api_material) -- 设置默认图标
              local item = menu:add(0, 2, 2, "云烛" .. 2) -- 添加菜单项
            item:setIcon(MDC_R.drawable.abc_ic_search_api_material) -- 设置默认图标
              local item = menu:add(0, 3, 3, "云烛" .. 3) -- 添加菜单项
            item:setIcon(MDC_R.drawable.abc_ic_search_api_material) -- 设置默认图标
        end
    },
        Page
      },
      {
    LinearLayout,
    layout_width='fill_parent',
    layout_height="40dp",
    gravity="center",
    elevation="2dp",
    
    background={GradientDrawable,color=0xFFFEF7FF,cornerRadius=20},
    elevation="5dp",
    
      {
        HorizontalScrollView,
        layout_height="40dp",
        layout_marginBottom="0dp",
        id="ScrollTab",
        layout_width="wrap_control",
        layout_gravity="bottom",
        HorizontalScrollBarEnabled=false,
        tab,
        
      },
      
      
      },
    },
    {
      LinearLayout,
      id="shadow",
      layout_width="match_parent",
      visibility="gone",
      layout_height='match_parent',
      onClick=function() 灵动岛() canSwipeUp=false canSwipeDown=true end
    },
    {
    FrameLayout,
    layout_marginTop="5dp",
    layout_marginLeft="20dp",
    layout_marginRight="20dp",
    layout_gravity="center|top",
    layout_width="wrap_content",
    layout_height='wrap_content',
    elevation="8dp",
    background={GradientDrawable,color=0xff161616,cornerRadius=90},
    LayoutTransition=layoutTransition,

    {
      LinearLayout,
      gravity="center",
      id=luajava.newId("SmallIsland"),
      layout_height="25dp",
      layout_width="100dp",
      onTouch=function(view, event)
        local action = event:getAction()
        if action == MotionEvent.ACTION_DOWN then
          initialY = event:getY()
         elseif action == MotionEvent.ACTION_MOVE then
          local currentY = event:getY()
          local deltaY = currentY - initialY
          if deltaY < -threshold and canSwipeUp then
            灵动岛()
            canSwipeUp = false
            canSwipeDown = true
           elseif deltaY > threshold and canSwipeDown then
            灵动岛()
            canSwipeDown = false
            canSwipeUp = true
          end
        end
        return true
      end,
      {
        LinearLayout,
        id=luajava.newId("Smalldisplay"),
        layout_height="25dp",
        layout_width="100dp",
        {
          ImageView,
          layout_gravity="center",
          layout_width="17dp",
          layout_height="17dp",
          layout_marginLeft="5dp",
          src="/sdcard/云烛/图片/headset",
          ColorFilter="#FAFAFA",
        },
        {
          TextView,
          id="IslandText",
          layout_weight=1,
          gravity="center",
          layout_width="match_parent",
          layout_height="match_parent",
          text="上下滑动长按双击交互",
          ellipsize="marquee",
          singleLine=true,
          selected=true,
          textColor="#FAFAFA",
          textSize="8dp",
        }
      }
    },
    {
      LinearLayout,
      id="Island",
      layout_height="300dp",
      visibility="gone",
      layout_width="fill_parent",
      onClick=function() end,
      onTouch=function(view, event)
        local action = event:getAction()
        if action == MotionEvent.ACTION_DOWN then
          initialY = event:getY()
         elseif action == MotionEvent.ACTION_MOVE then
          local currentY = event:getY()
          local deltaY = currentY - initialY
          if deltaY < -threshold and canSwipeUp then
            灵动岛()
            canSwipeUp = false
            canSwipeDown = true
           elseif deltaY > threshold and canSwipeDown then
            灵动岛()
            canSwipeDown = false
            canSwipeUp = true
          end
        end
        return true
      end,
      {
        LinearLayout,
        id=luajava.newId("music"),
        layout_height="fill_parent",
        layout_width="fill_parent",
        orientation="vertical",
        {
          TextView,
          id="Mname",
          gravity="center",
          layout_width="fill_parent",
          layout_height="wrap_control",
          layout_marginTop="10dp",
          text=timeA,
          ellipsize="marquee",
          singleLine=true,
          selected=true,
          textColor="#FAFAFA",
          textSize="12dp",
        },
        {
          luajava.post(LinearProgressIndicator,material3:getContext()),
          id="DownloadProgress",
          visibility = "gone",
          layout_width = 'match_parent',
          layout_height = 'wrap_content',
          indeterminate = true,
        },
        {
          FrameLayout,
          layout_marginTop="10dp",
          layout_width="fill_parent",
          layout_height="wrap_control",
          {
            ImageView,
            src="/sdcard/云烛/图片/ts",
            layout_width="20dp",
            layout_marginRight="match_parent",
            layout_marginLeft="15dp",
            layout_gravity="center|left",
            layout_height="20dp",
            onClick=function() 自定义主题() end,
            ColorFilter="#FAFAFA",
          },
          {
            TextView,
            id="GSname",
            layout_marginLeft="15dp",
            layout_gravity="center",
            layout_marginRight="15dp",
            gravity="center",
            layout_width="fill_parent",
            layout_height="wrap_control",
            text="",
            ellipsize="marquee",
            singleLine=true,
            selected=true,
            textColor="#A9B3B4",
            textSize="8dp",
          },
          {
            ImageView,
            src="/sdcard/云烛/图片/playlist",
            layout_width="20dp",
            layout_marginLeft="match_parent",
            layout_marginRight="15dp",
            layout_gravity="center|right",
            layout_height="20dp",
            onClick=function() 播放列表() end,
            ColorFilter="#FAFAFA",
          },
        },
        {
          LinearLayout,
          gravity="center",
          layout_width='match_parent',
          layout_height='wrap_content',
          {
            TextView,
            id="ntime",
            gravity="center|right",
            layout_width="45dp",
            layout_height="wrap_control",
            text="0:00",
            textColor="#FAFAFA",
            textSize="12dp",
          },
          {
            Slider,
            id="hkuai",
            trackStopIndicatorSize="0dp",
            layout_weight=1,
            stepSize=1,
            valueTo=100,
            valueFrom=0,
            trackHeight="10dp",
            ThumbHeight="17dp",
            tickVisible=false,
            thumbWidth="4dp",
            layout_width='match_parent',
            layout_height='wrap_content',
            labelFormatter=function(seconds)
              if isPlaying then return ctime(seconds) else return "0:00" end
            end,
            addOnChangeListener=function(slider, value, fromUser)
              if fromUser and isPlaying and isReady then mediaPlayer:seekTo(value*1000) end
            end
          },
          {
            TextView,
            id="atime",
            gravity="center|left",
            layout_width="45dp",
            layout_height="wrap_control",
            text="0:00",
            textColor="#FAFAFA",
            textSize="12dp",
          },
        },
        {
          LinearLayout,
          layout_width='match_parent',
          layout_height='wrap_content',
          layout_marginLeft="20dp",
          layout_marginRight="20dp",
          {
            LinearLayout,
            id=luajava.newId("Collection"),
            layout_weight=1,
            layout_width="match_parent",
            layout_height="match_parent",
            gravity="center",
            {
              ImageView,
              id="souc",
              src="/sdcard/云烛/图片/unlove",
              layout_width="20dp",
              layout_height="20dp",
              onClick=function() Yunzhu.controlWater(luajava.getIdView("Collection"),200) 收藏() end,
              ColorFilter="#FAFAFA",
            },
          },
          {
            LinearLayout,
            id=luajava.newId("PreviousAong"),
            layout_weight=1,
            layout_width="match_parent",
            layout_height="match_parent",
            gravity="center",
            {
              ImageView,
              src="/sdcard/云烛/图片/last",
              layout_width="25dp",
              layout_height="25dp",
              onClick=function() Yunzhu.controlWater(luajava.getIdView("PreviousAong"),200) 上一首() end,
              ColorFilter="#FAFAFA",
            },
          },
          {
            LinearLayout,
            layout_weight=1,
            id=luajava.newId("PauseLayout"),
            layout_width="match_parent",
            layout_height="match_parent",
            gravity="center",
            {
              LottieAnimationView,
              id="ztkq",
              layout_width="25dp",
              layout_height="25dp",
              onClick=function() 暂停() end,
            },
          },
          {
            LinearLayout,
            id=luajava.newId("NextSong"),
            layout_weight=1,
            layout_width="match_parent",
            layout_height="match_parent",
            gravity="center",
            {
              ImageView,
              src="/sdcard/云烛/图片/next",
              layout_width="25dp",
              layout_height="25dp",
              onClick=function() Yunzhu.controlWater(luajava.getIdView("NextSong"),200) 下一首() end,
              ColorFilter="#FAFAFA",
            },
          },
          {
            LinearLayout,
            layout_weight=1,
            id=luajava.newId("LoopSetting"),
            layout_width="match_parent",
            layout_height="match_parent",
            gravity="center",
            {
              ImageView,
              id="bfsz",
              src="/sdcard/云烛/图片/setPlay",
              layout_width="20dp",
              layout_height="20dp",
              onClick=function() 播放设置() end,
              ColorFilter="#FAFAFA",
            },
          },
        }
      }
    },
  },

    {
      LinearLayout,
      layout_width="25dp",
      layout_height="25dp",
      id="jiaobiao",
      layout_gravity="right|bottom",
      onClick=function() end,
      onTouch=suofang
    }
  }
  controlWindow=luajava.loadlayout{
    ImageView,
    onTouch=hanshu,
    onClick=function() 隐藏() end,
    src=xfcpic,
    visibility="gone",
    layout_width="45dp",
    layout_height="45dp",
  }
  luajava.runOnUiThread(function()
  luajava.getIdView("loading"):setVisibility(View.GONE)
  YoYoImpl:with("FadeIn"):duration(600):playOn(luajava.getIdView("menuview2"))
    floatWindow:addView(menuView)
    floatWindow:addView(controlWindow)
  end)
  SliderColor(hkuai,"42E6A2","D4D4D4","FFFFFF")
  ztkq:setAnimationFromJson(io.open("/sdcard/云烛/图片/Pause", "r"):read("*all"))
  setOnExitListener(function()
    mediaPlayer:reset()
    mediaPlayer:release()
    window:removeView(floatWindow)
    tuichu=1
  end)
  while true do
    if tuichu==1 then break end
    jianting3(qiehuan)
    if isPlaying and isReady and #musiclist ~= 0 then
      luajava.runOnUiThread(function()
        ntime:setText(ctime(math.floor(mediaPlayer:getCurrentPosition()/1000)))
        hkuai:setValue(math.floor(mediaPlayer:getCurrentPosition()/1000))
    end) end
    gg.sleep(60)
  end
end

function SliderColor(id,color1,color2,color3)
  id:setTrackActiveTintList(ColorStateList({{}},{"0xff"..color1}))
  id:setTrackInactiveTintList(ColorStateList({{}},{"0x50"..color2}))
  id:setThumbTintList(ColorStateList({{}},{"0xff"..color3}))
end
function SwitchColor(id,color)
  id:setTrackTintList(ColorStateList({{android.R.attr.state_checked}},{color}))
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
	
Yunzhu.controlRotation = function(control, time,t)
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

function SwitchDrawable(on,off)
local switchSelector = luajava.getStateListDrawable()
  switchSelector:addState({ android.R.attr.state_checked }, luajava.getBitmapDrawable("/sdcard/云烛/图片/"..on))
  switchSelector:addState({ -android.R.attr.state_checked }, luajava.getBitmapDrawable("/sdcard/云烛/图片/"..off))
  return switchSelector
  end

function Yunzhu.switch(name,func1,func2,name2)
  local nid=name..string.randomUUID(true)
  colorvs[#colorvs+1]={"switch",nid}
  if ""..name=="摇一摇隐藏UI" or ""..name=="音量键隐藏UI" then ztai=true else ztai=false end
  return{
    LinearLayout,
        layout_width='fill_parent',
        layout_height="60dp",
    gravity="center",
--    elevation="2dp",
    layout_margin="4dp",
    background = getHorizontalBG({0xffFEF7FF,0xffFEF7FF},40,3,0xffCAC4D0),
 --   blurBitmap("Yunzhu.switch","10"),
    paddingRight="6dp",
    {
              ImageView,
              id="nbnb",
              src="/sdcard/云烛/图片/N2M4Ng.png",
              layout_width="30dp",
              layout_height="30dp",
              layout_marginLeft="9dp",
              onClick=function() 播放设置() end,
              --ColorFilter="#FAFAFA",
            },
    {
      TextView,
      text=name,
      textColor="0xff000000",
      textSize="15sp",
      layout_weight=1,
      layout_width='fill_parent',
      layout_marginLeft="10dp",
      layout_marginRight="10dp",
    },
    {
      TextView,
     -- text=name2,
      text = "Powered By Yunzhu",
      textColor="0x85161616",
      textSize="11sp",
      layout_weight=1,
      layout_width='fill_parent',
      layout_marginLeft="10dp",
      layout_marginRight="10dp",
    },
    {
      MaterialSwitch,
      checked=ztai,
      id=luajava.newId(nid),
  --    thumbIconDrawable=SwitchDrawable("xyopen","xyclose"),
    --  TrackTintList=ColorStateList({{android.R.attr.state_checked}},{0xFF0062FF}),
      trackTintList=(ColorStateList({{android.R.attr.state_checked},{}},{"0xff"..RGBcolor,0x28FFFFFF})),
      thumbTintList=(ColorStateList({{android.R.attr.state_checked},{-android.R.attr.state_checked}},{0xFFFFFFFF,0xFF4B484F})),      
      
      layout_weight=1,
      layout_marginTop="-3.5dp",
      layout_marginBottom="-3.5dp",
      layout_marginRight="9dp",
      layout_width='match_parent',
      layout_height='wrap_content',
      onCheckedChange=function(compoundButton,isChecked)
        if isChecked then
          luajava.newThread(function()
            pcall(func1)
          end):start()
         else
          luajava.newThread(function()
            pcall(func2)
          end):start()
        end
      end
    }
  }
end


radiog={}
function Yunzhu.radio(cklist)
	local rid = string.randomUUID(true)
	radiog[rid] = {}
	rest = {
		LinearLayout,
		layout_width = "match_parent",
		layout_height = "wrap_content",
		layout_marginTop = "10dp",
		gravity = "top",
		orientation = "vertical",
	}

	if type(cklist[1]) == "string" then
		rds = 2
		rest[#rest + 1] = {
			TextView,
			gravity = "left",
			padding = "5dp",
			text = cklist[1],
			textSize = "13sp",
			textColor = 0xff000000,
			layout_width = "fill_parent",
			layout_height = "wrap_content",
			layout_marginLeft = "10dp",
			layout_marginRight = "5dp",
			layout_marginTop = "0dp",
			layout_marginBottom = "0dp",
		}
	else
		rds = 1
	end

	local restt = {
		RadioGroup,
		layout_width = "match_parent",
		layout_height = "wrap_content",
		gravity = "center_vertical",
		layout_marginRight = "5dp",
		layout_marginLeft = "5dp",
		layout_marginTop = "4dp",
		layout_marginBottom = "4dp",
		elevation = "2dp",
		orientation = "vertical",
		background = luajava.loadlayout({ GradientDrawable, color = 0xFFFFFFFF, cornerRadius = 15 }),
		padding = { "0dp", "0dp", "6dp", "0dp" },
	}
	for i = rds, #cklist do
		local name = cklist[i][1]
		local func = cklist[i][2]
		if not name then
			name = "未设置"
		end
		local nid = name .. string.randomUUID(true)
		colorvs[#colorvs+1]={"radio",nid}
		radiog[rid][nid] = false
		local tid = nid .. string.randomUUID(true)
		restt[#restt + 1] = {
			RadioButton,
			layout_width = "250dp",
			layout_height = "wrap_content",
			layout_marginLeft = "4dp",
			layout_marginRight = "10dp",
			id = luajava.newId(nid),
			text = name,
			textSize = "13sp",
			textColor = 0xff000000,
			buttonTintList = ColorStateList({ {} }, { "0xFF"..RGBcolor }),
			gravity = "center_vertical",
			onClick = function(v)
				--YH.controlWater (v, 200)
				luajava.startThread(func)
			end,
		}
	end
	rest[#rest + 1] = restt
	return luajava.loadlayout(rest)
end
  function Yunzhu.cardpartL(views)
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
	layout_marginLeft = "13dp",
	layout_marginRight = "13dp",
	layout_marginTop = "13dp",
	layout_marginBottom = "13dp",
	orientation = "horizontal",
	padding = "6dp",
	  background = getHorizontalBG({views[1],views[1]},40,3,0xffCAC4D0),
		elevation='2dp',
	layout_width = 'fill_parent',

	{
            ImageView,  -- 左侧图片
            layout_width = "100dp",
            layout_height = "200dp",
            gravity  = "center",
            
            src = "/storage/emulated/0/云烛/图片/abc.png",  -- 请替换为实际图片路径
            layout_marginLeft = "0dp",
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
radios[#radios+1] = Yunzhu.line()
end
end
firadio[#firadio+1] = radios
return luajava.loadlayout(firadio)
end
function Yunzhu.cardpartR(views)
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
	layout_marginLeft = "13dp",
	layout_marginRight = "13dp",
	layout_marginTop = "13dp",
	layout_marginBottom = "13dp",
	orientation = "horizontal",
	padding = "6dp",
	background = getHorizontalBG({views[1],views[1]},40,3,0xffCAC4D0),
		elevation='2dp',
	layout_width = 'fill_parent',
	{
            ImageView,  -- 左侧图片
            layout_width = "100dp",
            layout_height = "200dp",
            gravity  = "right|center",
            
            src = "/storage/emulated/0/云烛/图片/abc1.png",  -- 请替换为实际图片路径
            layout_marginLeft = "0dp",
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
radios[#radios+1] = Yunzhu.line()
end
end
firadio[#firadio+1] = radios
return luajava.loadlayout(firadio)
end
function Yunzhu.quyu(views)
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
	background = getHorizontalBG({views[1],views[1]},40,3,0xffCAC4D0),
	layout_width = 'fill_parent',
}
for i = 2,#views do
radios[#radios+1] = views[i]
if i~=#views then
--radios[#radios+1] = Yunzhu.line()
end
end
firadio[#firadio+1] = radios
return luajava.loadlayout(firadio)
end
function Yunzhu.text(text,color,size,isjz)
	if not color then color="#161616" end
	if isjz then
		return luajava.loadlayout(
		{
			TextView,
			text=text,
			textColor=color,
			textSize=size,
			gravity="left",
			padding="12dp",
			layout_height="wrap_content",
			layout_width="match_parent",
			autoSizeTextType="uniform",
		})
		else
		return luajava.loadlayout({
			TextView,
			text=text,
			textColor=color,
			textSize=size,
			padding="12dp",
			layout_height="wrap_content",
			layout_width="match_parent",
			autoSizeTextType="uniform",
		})
	end
end


	function getButtonBG()
		local selector = luajava.getStateListDrawable()
		selector:addState({
			android.R.attr.state_pressed
		}, getVerticalBG({0x55d7d7d7,0x55d7d7d7},20))
		selector:addState({
			-android.R.attr.state_pressed
		}, getHorizontalBG({0xffFEF7FF,0xffFEF7FF},40,3,0xffCAC4D0))
		return selector
	end
	
	buts={}
	heir=getRes("heir")
function Yunzhu.button(name, func, color)
  local nid = name..string.randomUUID(true)
  if not color then color = "0xff161616" end
  return {
    LinearLayout,
    id = luajava.newId(nid),
    layout_width='fill_parent',
    layout_height="40dp",
    layout_margin="4dp",    
    gravity = "center",
    --elevation = "2dp",
    background = getButtonBG(),
    onClick = function()
      Yunzhu.controlWater(luajava.getIdView(nid), 300)
      luajava.newThread(function()
        pcall(func)
      end):start()
    end,
    {
      TextView,
      text = name,
      textColor = color,
      textSize = "13sp",
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


	buts={}
	heir=getRes("heir")
function Yunzhu.button1(name, func, color)
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
  background = getHorizontalBG({0x00ff00cf,0x005500ff},15,0,0x16ffffff),
    onClick = function()
      Yunzhu.controlWater(luajava.getIdView(nid), 300)
      luajava.newThread(function()
        pcall(func)
      end):start()
    end,
    {
      TextView,
      text = name,
      textColor = color,
      textSize = "13sp",
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

function Yunzhu.intcheck(name,func1,func2)
  nid=name..string.randomUUID(true)
  colorvs[#colorvs+1]={"check",nid}
  if not name then name="未设置" end
  check={
    LinearLayout,
    layout_width='match_parent',
    layout_height="42dp",
    layout_weight=1,
    layout_marginTop="1dp",
    layout_marginBottom="1dp",
    {
      CheckBox,
      id=luajava.newId(nid),
      buttonTintList=ColorStateList({{android.R.attr.state_checked},{-android.R.attr.state_checked}},{"0xff"..RGBcolor,0xff49454F}),
      layout_gravity="center",
      layout_width='match_parent',
      layout_height='wrap_content',
      text=name,
      onCheckedChange=function(compoundButton,isChecked)
        if isChecked then
          luajava.newThread(function()
            pcall(func1)
          end):start()
         else
          luajava.newThread(function()
            pcall(func2)
          end):start()
        end
      end
    }
  }
  return check
end

function Yunzhu.check(cklist)
  if #cklist==0 then return nil end
  local rest={
    LinearLayout,
    layout_width='fill_parent',
    layout_height="wrap_content",
    layout_marginRight="4dp",
    layout_marginLeft="4dp",
    layout_marginTop="3.5dp",
    layout_marginBottom="3.5dp",
    gravity="center",
    orientation="vertical",
  }
  for i=1,#cklist,2 do
    local tempTable={LinearLayout,
      layout_width='fill_parent',
      layout_height="wrap_content",
      gravity="left",
      orientation="horizontal"
    }
    for j=0,1 do
      if cklist[i + j] ~=nil then
        local name=cklist[i + j][1]
        local func1=cklist[i + j][2]
        local func2=cklist[i + j][3]
        if not name then name="未设置" end
        rstt=Yunzhu.intcheck(name,func1,func2)
        table.insert(tempTable,rstt)
       else
        table.insert(tempTable,{LinearLayout,
          layout_width='match_parent',
          layout_weight=1,})
      end
    end
    table.insert(rest,tempTable)
  end
  return rest
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
		--YoYoImpl:with("FadeIn"):duration(200):playOn(boxes[tid])
		Yunzhu.controlRotation(boxpic[tid],0,90)
		boxpic[tid]:setColorFilter("0xff"..RGBcolor)
	
		else
		tview : setVisibility (View.GONE)
		--Yunzhu.controlWater (_ENV [tid.."6"] , 200)
		Yunzhu.controlRotation(boxpic[tid],90,0)
		boxpic[tid]:setColorFilter(nil)
	end
end

function Yunzhu.line()
rest = luajava.loadlayout({
	LinearLayout,
	layout_width = 'fill_parent',
	layout_height = "1dp",
	background = "#C2CAD7",
})
return rest
end
boxes={} boxpic={}
function Yunzhu.box(views)
  local tid="box"..string.randomUUID(true)
  colorvs[#colorvs+1]={"box",tid}
  boxpic[tid]=luajava.loadlayout {
    ImageView,
    src=getRes("hei_right"),
    layout_width="26dp",
    layout_height="26dp",
    --ColorFilter="0xff161616",
  }
  local ttid=tid.."6"
  firadio={
    LinearLayout,
    layout_width='fill_parent',
    background=luajava.loadlayout{GradientDrawable,color=0xFFFFFFFF,cornerRadius=20},
    elevation="3dp",
    layout_height="wrap_content",
    layout_margin="4dp",
    orientation="vertical",
    LayoutTransition=LayoutTransition()
  }
  if type(views[1])=="string" or type(views[1])=="number" then
    firadio[# firadio + 1]={
      LinearLayout,
      layout_width='fill_parent',
      layout_height="47dp",
      gravity="center_vertical",
      {
        LinearLayout,
        layout_width='fill_parent',
        layout_height="40dp",
        layout_marginRight="4dp",
        layout_marginLeft="4dp",
        gravity="center_vertical",
        onClick=function() visi(tid,ttid) end,
        background=getButtonBG(),
        {
          TextView,
          gravity="top",
          text=views[1],
          textColor="0xff161616",
          textSize="13sp",
          layout_weight=1,
          layout_marginTop="10dp",
          layout_marginBottom="10dp",
          layout_width='fill_parent',
          layout_marginLeft="10dp",
          layout_marginRight="20dp",
        },
        {
          LinearLayout,
          padding={"0dp","0dp","10dp","0dp"},
          layout_width="30dp",
          layout_height="30dp",
          gravity="center",
          boxpic[tid],
        }
      }
    }else
    gg.alert("Yunzhu.box 的 table 内第一个元素必须是 string") os.exit()
  end
  radios={
    LinearLayout,
    layout_marginLeft="5dp",
    layout_marginRight="5dp",
    orientation="vertical",
    visibility="gone",
    id=luajava.newId(tid),
    layout_width='fill_parent',
  }
  for i=2,# views do
    radios[# radios + 1]=views[i]
  end
  boxes[tid]=luajava.loadlayout(radios)
  firadio[# firadio + 1]=boxes[tid]
  return firadio
end

function Yunzhu.edit(name,hint)
  _ENV[name]=name..string.randomUUID(true)
  if not hint then
    hint=name
  end
  return {
    LinearLayout,
    layout_width='fill_parent',
    layout_height="44dp",
    {
      EditText,
      background=getButtonBG(),
      gravity="center",
      hint=hint,
      textColor="#161616",
      textSize="13sp",
      elevation="2dp",
      layout_height="38dp",
      layout_gravity="center",
      layout_marginRight="4dp",
      layout_marginLeft="4dp",
      id=luajava.newId(_ENV[name]),
      layout_width='match_parent',
    }
  }
end

function Yunzhu.getedit(name)
  edit=tostring(luajava.getIdValue(_ENV[name]):getText())
  return edit
end


function Yunzhu.seek(name,variable,min,max,now)
  local nid=name..string.randomUUID(true)
  colorvs[#colorvs+1]={"slider",nid}
  return{
    LinearLayout,
    layout_width='fill_parent',
    layout_height="wrap_content",
    gravity="center",
 --   elevation="2dp",
    layout_margin="4dp",
    background = getHorizontalBG({0xffFEF7FF,0xffFEF7FF},40,3,0xffCAC4D0),
    paddingRight="6dp",
    {
      TextView,
      text=name,
      textColor="0xff161616",
      textSize="13sp",
      layout_weight=1,
      layout_width='150dp',
      layout_marginLeft="10dp",
      layout_marginRight="5dp",
    },
    {
      Slider,
      id=luajava.newId(nid),
      trackStopIndicatorSize="0dp",
      layout_weight=1,
      stepSize=1,
      value=now,
      valueTo=max,
      valueFrom=min,
      trackHeight="13dp",
      ThumbHeight="20dp",
      tickVisible=false,
      thumbWidth="4dp",
      layout_marginTop="-3.5dp",
      layout_marginBottom="-3.5dp",
      layout_width='match_parent',
      layout_height='wrap_content',
      TrackActiveTintList=ColorStateList({{}},{"0xff"..RGBcolor}),
      TrackInactiveTintList=ColorStateList({{}},{"0x55"..RGBcolor}),
      ThumbTintList=ColorStateList({{}},{"0xff"..RGBcolor}),
      addOnChangeListener=function(slider,value,fromUser)
        _ENV[variable]=value
      end
    },
  }
end





项目名字="Yunzhu UI"

stab={
  "防封",
  "功能",
  "美化",
  "设置"
}



xfcpic="https://chuxinya.top/f/JZP5cK/yinghe"

--Hua:getDrawable():start()


function huiz()


end


UI宽度='300dp'
--初始宽度 竖屏建议300dp 横屏建议400dp


UI高度='500dp'
--初始高度 竖屏建议500dp 横屏建议300dp


Yunzhu.menu({
  {---第一页          
  Yunzhu.text("主页",'0xff000000',"18sp",true),
    --Yunzhu.text(项目名字,'0xff161616',"15sp",true),
    Yunzhu.quyu({
	"0xff6750A4",
--	Yunzhu.text("  ⊕\n",'0xffffffff',"38sp",true),
	Yunzhu.text("YunzhuUI",'0xffffffff',"18sp",true),
	Yunzhu.text("这是一个基于RLGG material design style的Luajava UI。简单几步实现MITM攻击。",'0xffffffff',"13sp",true),
	}),
	Yunzhu.quyu({
	"0xffEADDFF",
--	Yunzhu.text("  ⊕\n",'0xffffffff',"38sp",true),
		Yunzhu.text("这是什么？",'0xff21005D',"18sp",true),
	Yunzhu.text("YunzhuClient 是一款使用 MITM 攻击实现的Minecraft Bedrock 插件，它允许您在不修改游戏内存的情况下进行作弊。",'0xff21005D',"13sp",true),	
	}),
    Yunzhu.switch(
			"功能",
			function()
				
			end,
			function()
				
			end),
    --[[
     Yunzhu.quyu({
			"0xff6750A4",
				Yunzhu.edit("输入框演示"),
				Yunzhu.button(
					"调用输入框",
					function()
local tmp=Yunzhu.getedit("输入框演示")
local dialogBuilder = MaterialAlertDialogBuilder(material3:getContext()) -- 创建对话框构造器
:setTitle('调用输入框例子')
:setMessage(tmp)
luajava.showAlert(dialogBuilder)						
					end,
					0xff0056FF),

      Yunzhu.seek("拉条演示","ltxx",1,50,1),--“ltxx”为此拉条变量名字，使用时每个拉条不可重复
      Yunzhu.button(
      "调用拉条",
      function()
        gg.alert(ltxx)
      end,
      0xffE20C30),

		}),--box结尾

  

Yunzhu.quyu({
	"0xff6750A4",
    Yunzhu.switch(
    "功能1",
    function()
    end,
    function()

    end,
    "Powered By Yunzhu"
    ),


		Yunzhu.box({
			"XXX区",
	
				Yunzhu.edit("输入框演示"),
				Yunzhu.button(
					"调用输入框",
					function()
local tmp=Yunzhu.getedit("输入框演示")
local dialogBuilder = MaterialAlertDialogBuilder(material3:getContext()) -- 创建对话框构造器
:setTitle('调用输入框例子')
:setMessage(tmp)
luajava.showAlert(dialogBuilder)						
					end,
					0xff0056FF),
					Yunzhu.check({
      {
        "例子",
        function()

        end,
        function()

        end
        }, {
        "例子",
        function()

        end,
        function()

        end
        }, {
        "测试1",
        function()

        end,
        function()

        end
      },
    }),

      Yunzhu.seek("拉条演示","ltxx",1,50,1),--“ltxx”为此拉条变量名字，使用时每个拉条不可重复
      Yunzhu.button(
      "调用拉条",
      function()
        gg.alert(ltxx)
      end,
      0xffE20C30),

				
		}),--box结尾

       
    
		
    Yunzhu.button(
    "彩色字体演示",
    function()
    end,
    0xff0062FF),
    
    Yunzhu.button(
    "进程",
    function()
      gg.setProcessX()
    end),

		}),
		]]
		
	},{---第二页
	
		Yunzhu.switch(
			"功能",
			function()
				
			end,
			function()
				
			end),
			
		Yunzhu.switch(
			"功能",
			function()
				
			end,
			function()
				
			end),
			
        Yunzhu.button(
			"功能",
			function()
--			自定义主题()	
			end),
		Yunzhu.radio({ --单选
			{
				"防环境 [登录界面必开]",
				function()
					gg.alert(1)
				end,
			},
			{
				"防行为 [大厅界面必开]",
				function() end,
			},
			{
				"防人工一 [大厅界面]",
				function() end,
			},
			{
				"防人工二 [大厅界面]",
				function() end,
			},
		}),

			

	},{---第三页
	
		Yunzhu.switch(
			"功能",
			function()
				
			end,
			function()
				
			end),
			
		Yunzhu.switch(
			"功能",
			function()
				
			end,
			function()
				
			end),
			
		Yunzhu.switch(
			"功能",
			function()
				
			end,
			function()
				
			end),
			
		Yunzhu.switch(
			"功能",
			function()
				
			end,
			function()
				
			end),
			
		Yunzhu.switch(
			"功能",
			function()
				
			end,
			function()
				
			end),
			
		Yunzhu.switch(
			"功能",
			function()
				
			end,
			function()
				
			end),
			
		Yunzhu.switch(
			"功能",
			function()
				
			end,
			function()
				
			end),
			
		Yunzhu.switch(
			"功能",
			function()
				
			end,
			function()
				
			end),
			
		Yunzhu.switch(
			"功能",
			function()
				
			end,
			function()
				
			end),
			
        Yunzhu.button(
			"功能",
			function()
				
			end),


	},{---第五页
		Yunzhu.switch(
			"音量键隐藏UI",
			function()
				音量键=true
			end,
			function()
				音量键=false
			end),

		Yunzhu.switch(
			"摇一摇隐藏UI",
			function()
				摇一摇=true
			end,
			function()
				摇一摇=false
			end),
						
		Yunzhu.button(
			"退出",
			function()
				tuichu=1
			end),
	},{---第六页
		
	},
})




