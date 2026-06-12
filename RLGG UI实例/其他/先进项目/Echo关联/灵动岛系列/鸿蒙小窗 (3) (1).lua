
print("本次运行包含套餐：个人版")

function getTimeStamp(t)
  local str = os.date("%m-%d-%H:%M:%S", t)
  return str
end
缩放=true
changan = {}
colorvs = {}
local changan = changan
local android = import("android.*")
write=file.write
function panduan(rec) fille,err = io.open(rec) if fille == nil then return false else return true end end
read=file.read
function panduan(rec) fille,err = io.open(rec) if fille == nil then return false else return true end end
function checkimg(tmp,ii)
if panduan("/sdcard/余词/图片/"..tmp) ~= true then
gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
luajava.download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..tmp,"/sdcard/余词/图片/"..tmp)
else
if file.length("/sdcard/余词/图片/"..tmp) <= 1 then
gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
luajava.download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..tmp,"/sdcard/余词/图片/"..tmp)
end
end
if panduan("/sdcard/余词/图片/"..tmp) ~= true then
gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
luajava.download("https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/"..tmp,"/sdcard/余词/图片/"..tmp)
else
	if file.length("/sdcard/余词/图片/"..tmp) <= 1 then
gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
luajava.download("https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/"..tmp,"/sdcard/余词/图片/"..tmp)
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
dex.loadfile("/sdcard/余词/图片/CircleImageView.dex")
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
dexloader=dex.loadfile('/sdcard/余词/图片/classes3.dex')
MySensorManager = dexloader:loadClass('yaocn.rlyun.yaoyiyao.MySensorManager')
luajava.runOnUiThread(function()
  MySensorManager(context, sensor)
end)

if ylfunc~=nil then ylfunc() end
qhkai=0
zhubj=floatWindow
qiehuan=function()
    if qhkai==0 then
    	yinll=0
        qhkai=1
        draw.remove()
        gg.toast("隐藏")
        luajava.runUiThread(function()
        changan.controlSmall(floatWindow,400)
        YoYoImpl:with("FadeOut"):duration(300):playOn(zhubj)
		end)
        gg.sleep(400)
        luajava.runUiThread(function()
        zhubj:setVisibility(View.GONE)
        end)
    else
        qhkai=0
        yinll=1
        huiz()
        luajava.runUiThread(function() zhubj:setVisibility(View.VISIBLE) end)
        luajava.runUiThread(function()
        YoYoImpl:with("FadeIn"):duration(300):playOn(zhubj)
		changan.controlBig(floatWindow,400)
        end)
        
    end
end
setExitEvent(function() luajava.post(function() window:removeView(floatWindow) 
	for k,v in pairs(floattable) do
		if v==1 then
			window:removeView(_ENV[k])
		end
	end
	end)
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
  }, getVerticalBG({0xFFFFFFFF,0xFFFFFFFF},30))
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
      --  ckou:setBackground(getVerticalBG({0xffF2F3F5,0xffF2F3F5},45,10,0xff004EFF))     
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
    --  ckou:setBackground(getVerticalBG({0xffF2F3F5,0xffF2F3F5},45,0,0xaa232323))
    end
    window:updateViewLayout(floatWindow, mainLayoutParams)
  end
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
  return 获取图片("/sdcard/余词/图片/"..x)
end
function 获取图片(txt)
  ntxt=string.sub(string.gsub(txt,"/","."),-10,-1)
  if string.find(tostring(txt),"http")~=nil then
    if panduan("/sdcard/余词/图片/"..ntxt)==false then
      download(txt,"/sdcard/余词/图片/"..ntxt)
    end
    txt="/sdcard/余词/图片/"..ntxt
  end
  return luajava.getBitmapDrawable(txt)
end
local isswitch
YoYoImpl = luajava.getYoYoImpl()
changan.menu = function(sview)
  cebian = {
    LinearLayout,
    id = "侧边",
    layout_height = "match_parent",
    layout_width = "wrap_content",
    orientation = "horizontal",
    gravity = "center",
    background = {
      GradientDrawable,
      color = "#0xFFFFFFFF",
      cornerRadius = 10
    }
  }
  function 切换(x)
	当前ui = x
	luajava.runUiThread(function()
	  for i = 1, #stab do
		_ENV["jmt"..i]:setTextColor(0xFF000000)--未选中的字体颜色
		--_ENV["jm"..i]:setBackground(getVerticalBG({0xffffffff,0xffffffff},15))--未选中的颜色
		_ENV["layout"..i]:setVisibility(View.GONE)
	  end
	  _ENV["jmt"..当前ui]:setTextColor(0xff004EFF)--选中的字体颜色
	  --_ENV["jm"..当前ui]:setBackground(getVerticalBG({0xff004EFF,0xff004EFF},15))--选中后颜色
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
    --background=getVerticalBG({0xffffffff,0xffffffff},15),
      onClick = function()
        切换(i)
      end,
      {
        TextView,
        text = stab[i],
        id="jmt"..i,
        gravity = "center",
        textColor = "#201E1E",
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
          background=getVerticalBG({0xff004EFF,0xff004EFF},20)
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
          id="xchangan",
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
    background = getVerticalBG({0xFFFFFFFF,0xFFFFFFFF},45),--背景图
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
function changan.setedit(name,txt)
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
function changan.switch(name,func1,func2,miaoshu)
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
        color = 0xffffffff ,
        cornerRadius = 10
        } ,padding = {
        "0dp","0dp","6dp","0dp"
      },
      {
        TextView,
        gravity = "top",
        text = name,
        textColor = "#000000",
        textSize = "15sp",
        layout_weight = 1,
        layout_width = '80dp',
        layout_marginLeft = "10dp",
        layout_marginRight = "20dp",
      },
      {
        TextView,
        gravity = "center",
        layout_height = "match_parent",
        text = miaoshu,
        textSize = "13sp",
        layout_width = "wrap_content",
        layout_marginLeft = "-50dp",
        layout_weight = 1,
        textColor = "#A5A5A5",
      },
      {
        FrameLayout,
        id=luajava.newId(nid),
        background = checkbga,
        elevation = "1dp",
        onClick = function() luajava.newThread(function() func() end):start() end,
        layout_width = 'wrap_content',
        layout_height = 'wrap_content',
        gravity = "left",
        padding="1dp",
        switches["1s"..nid],switches["2s"..nid]
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
buts={}
function changan.button(txt,func,txtc)
  if not txt then txt = "未设置" end
  if not txtc then txtc="#201E1E" end
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
        changan.controlWater(buts[tid],300)
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
  }, getVerticalBG({0xFFFFFFFF,0xFFFFFFFF},17))
  return selector
end


boxes = {} boxpic = {}
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
end





function getwyyv()
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
function getbg()
return getButtonBG()
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
		layout_width = "match_parent",
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
			layout_width = "match_parent",
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
				textSize = "13sp",
				textColor = "#0062ff",
				layout_marginBottom = "0dp",
				text = musname,
				layout_hight = "10dp",
				layout_width = "match_parent",
				gravity = "center"

			},
			{
				TextView,
				layout_marginTop = "0dp",
				textColor = "#000000",
				textSize = "11sp",
				layout_marginBottom = "5dp",
				text = musart,
				layout_hight = "10dp",
				layout_width = "match_parent",
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
	gg.sleep(2000)
	luajava.runUiThread(function()
		luajava.getIdView("加载"):setVisibility(View.GONE)
		luajava.getIdView("搜索结果"):setVisibility(View.VISIBLE)
	end)
end
stxt = {
	TextView,
	text = "搜索",
	textColor="#0062ff",
	background=getbg(),
	layout_height="match_parent",
	visibility = "visible",
	gravity="center",
	layout_marginRight="10dp",
	id = luajava.newId("stxt"),
	layout_marginLeft = "3dp",
	textSize = "13sp",
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
	textSize = "12sp",
	textColor="#000000",
}
jiaz = {
	TextView,
	text = "正在加载歌曲资源...",
	visibility = "gone",
	id = luajava.newId("加载"),
	textSize = "15sp",
	gravity = "center",
	textColor="#000000",
}
wyylog = luajava.loadlayout({
	LinearLayout,
	orientation="vertical",
	layout_width = "match_parent",
	{
		ScrollView,
		layout_hight = "match_parent",
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
			layout_hight = "300dp",
			orientation = "vertical",
			layout_width = "match_parent",
			gravity="center_horizontal",
			
			{
				LinearLayout,
				orientation = "horizontal",
				layout_width = "match_parent",
				
				{
					EditText,
					hint = "搜索歌曲名称",
					textColor="#000000",
					id = luajava.newId("搜索"),
					background = getbg(),
					textSize='13sp',
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
luajava.getIdView('搜索'):setHintTextColor(0xff999999)
return wyylog
end



-------------------------------------------------------------------------

muby=850
--初始宽度 竖屏建议850 横屏建议1310 （适用于主流分辨率下，低分辨率需要调低）


mubx=1050
--初始高度 竖屏建议1310 横屏建议850 （适用于主流分辨率下，低分辨率需要调低）


function huiz()

--这里放绘制

end




stab = {
  "主页",
  "防封",
  "功能",
  "美化",
  "音乐",
  "设置"
}



xfcpic="/sdcard/余词/图片/arlogo"




changan.menu(
{
  {
  
  
    changan.button("测试",
    function()

    end),
 
               
    changan.switch("1",
    function()
    end,
    
    function() 
     
    end),




    }, {



    }, {



    }, {



    }, {

	getwyyv()--音乐勿动

    }, {


    
    changan.switch(
    '音量键隐藏UI',
    function()
      音量键=true
    end,
    function()
      音量键=false
    end),
    
    changan.switch(
    '摇一摇隐藏UI',
    function()
      摇一摇=true
    end,
    function()
      摇一摇=false
    end),
    
     changan.button("退出UI",
     function()
     退出UI()
    
     end),
       

    },{

    },{

    },{

    },{

    },{

    },{

  }
})