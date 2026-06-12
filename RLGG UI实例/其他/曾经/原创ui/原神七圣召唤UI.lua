loadYunLua("httpByQn0RTmbpsGdcPcXyFHiZ+j9yFx3DxxSEiAF7359v1QWnbmc4/eVBdScB68IcJv+4xAxBFiZRwBHnlKDubnWVxFLu0qQAEuLbUshTWt98plwVoX32mVxuDBgSZufCMIsCKWTMm6D")

---↑↑↑⭐️把你的UI模块卡密填在上面这个引号里

---解绑网址：http://111.180.201.13:804/unbind.php
---或在UI工具箱首页解绑

---❗️请执行UI工具箱在首页查看使用教程

---👇这里可以改初始大小

UI宽度='300dp'
--初始宽度 竖屏建议300dp 横屏建议400dp


UI高度='500dp'
--初始高度 竖屏建议500dp 横屏建议300dp

项目名字='长安UI'

---前置代码不要动
loadYunLua('httpByQn0RTmbpsGdcPcXyFHiZ+j9yFx3DxxSHi0F9DIM4qDmZfkUpZbU9C1UY80TYc2aiflYoxa065/3xn5ytVjfJVzsEDhe7tBqOYaZkpIO5GYY3YxRKAROvJxr0EopvQ/ivQ7tpjuDNytKVS+Za1nyfSiGp+FK3c48V+wdz/lWx0bv9Ddx5qYhTCJhOntg7x0mz/io7mxneEQrJaSqF8hQuOUqtGhm9ABydmt2shtXbzj2S6XYjcqNi8QvFMWGxc5wgGNPsf1CebhJeNDx7M09Xign4gupFbAL+UFy9SoP1W5q2NF7YxVtgsvEN6p5JFCUuVg2KRQ3edncfl0Cr7TjarrwVMAQPN33Rw')


print("本次运行包含套餐：尊享版")
function panduan(rec) fille,err = io.open(rec) if fille == nil then return false else return true end end
  if panduan("/sdcard/余词/原神/原神.zip") ~= true then
    gg.toast("正在下载资源原神.zip\n请耐心等待")
    file.download("http://wdl.kkkkoo.cn/down.php/430bc296527d1f0455df9298276c89f1.zip","/sdcard/余词/原神/原神.zip")
  end
  if panduan("/sdcard/余词/原神/CircleImageView.dex")~=true then
    file.unzip("/sdcard/余词/原神/原神.zip","/sdcard/余词/原神/")
  end
function getRes(x)
  return 获取图片("/sdcard/余词/原神/"..x)
end
function 获取图片(txt)
  ntxt = string.sub(string.gsub(txt,"/","-"),-10,-1)
  if string.find(tostring(txt),"http") ~= nil then
    if panduan("/sdcard/余词/原神/"..ntxt) == false then
      download(txt,"/sdcard/余词/原神/"..ntxt)
    end
    txt = "/sdcard/余词/原神/"..ntxt
  end
  return luajava.getBitmapDrawable(txt)
end
YC = {}
colorvs = {}
local YC = YC
local android = import("android.*")
write = file.write
context = app.context
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
function jybg(color,jiao)
  return luajava.loadlayout{GradientDrawable,color=color,
  cornerRadius=jiao}
end
hanshu = function(v, event)
  local Action = event:getAction()
  if Action == MotionEvent.ACTION_DOWN then    
    RawX = event:getRawX()
    RawY = event:getRawY()
    x = mainLayoutParams.x
    y = mainLayoutParams.y
   elseif Action == MotionEvent.ACTION_MOVE then    
    mainLayoutParams.x = tonumber(x) + (event:getRawX() - RawX)
    mainLayoutParams.y = tonumber(y) + (event:getRawY() - RawY)
    window:updateViewLayout(floatWindow, mainLayoutParams)
  end
end
dex.loadfile("/sdcard/余词/原神/CircleImageView.dex")
import("android.widget.CircleImageView")
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
dexloader=dex.loadfile('/sdcard/余词/原神/classes3.dex')
MySensorManager = dexloader:loadClass('yaocn.rlyun.yaoyiyao.MySensorManager')
luajava.runOnUiThread(function()
  MySensorManager(context, sensor)
end)
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
    --draw.text('.', -9200,-9200)
    luajava.runUiThread(function()
      floatWindow:setVisibility(View.VISIBLE)
      YoYoImpl:with("FadeIn"):duration(500):playOn(floatWindow)
    end)
  end
end
function getTimeStamp(t)
  local str = os.date("%H:%M:%S", t)
  return str
end
function uiadtext(txt,color,size)
  if not txt then txt = "" end
  if not color then color = "#ffffff" end
  if not size then size = "9sp" end
  local tmp=luajava.loadlayout(
  {
    TextView,
    text = string.fromHtml(" <font color=#d4d4d4>"..getTimeStamp(os.time()).."</font> <font color="..color..">"..txt.."</font>"),
    textSize = size,
    background = jybg(0x40111111,25),
    padding="1dp",   
    gravity="left",
    layout_width = "wrap_content",
  })
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
function 隐藏()
  if yc == 1 then
        jiemian:setVisibility(View.VISIBLE)
        xfq:setVisibility(View.GONE)   
        floatWindow:setBackground(getVerticalBG({0x308FC577,0x308FC577,0x708FC577},20,4,0xff8FC577))     
        YoYoImpl:with("FadeIn"):duration(500):playOn(floatWindow)           
	    mainLayoutParams.flags = LayoutParams.FLAG_NOT_TOUCH_MODA
        yc=nil
    else
        jiemian:setVisibility(View.GONE)
        xfq:setVisibility(View.VISIBLE)  
        floatWindow:setBackground(getVerticalBG({0x008FC577,0x008FC577},20,0,0xff8FC577))          
        YoYoImpl:with("FadeIn"):duration(500):playOn(floatWindow)        
		mainLayoutParams.flags = LayoutParams.FLAG_NOT_FOCUSABLE		
        yc=1
    end
    window:updateViewLayout(floatWindow, mainLayoutParams)
  end
    function 切换(x)
    当前ui = x
    luajava.runUiThread(function()
      for i = 1, #stab do
        _ENV["jmt" .. i]:setTextColor(0xffACABAE) --未选中的字体颜色
        _ENV["jmi" .. i]:setColorFilter(0xffACABAE) --未选中的图片颜色
        _ENV["layout"..i]:setVisibility(View.GONE)
      end
      _ENV["jmt" .. 当前ui]:setTextColor(0xff8FC577) --选中的字体颜色
      _ENV["jmi" .. 当前ui]:setColorFilter(0xff8FC577) --选中的图片颜色
      _ENV["layout"..当前ui]:setVisibility(View.VISIBLE)
      YoYoImpl:with("FadeIn"):duration(400):playOn(_ENV['layout'..当前ui])
    end)
  end
local isswitch
YoYoImpl = luajava.getYoYoImpl()
YC.menu = function(sview)
  Selection = {
    LinearLayout,
    layout_width = "match_parent",
    layout_height = "wrap_content",
    gravity = "center",
  }
  for i = 1, #stab do
    Selection[#Selection + 1] = {
      LinearLayout,
      id = "jm" .. i,
      layout_height = "40dp",
      layout_width = "26dp",
      layout_marginTop = "3dp",
      layout_marginRight = "6dp",
      orientation = "vertical",
      onClick = function()
        切换(i)
      end,
      {
        ImageView,
        layout_height = "26dp",
        layout_width = "26dp",
        src = stab[i][2],
        id = "jmi" .. i,
        ColorFilter = "0xff8FC577",
      },
      {
        TextView,
        text = stab[i][1],
        gravity = "center",
        textSize = "9sp",
        id = "jmt" .. i,
        layout_marginTop = "2dp",
        textColor = "0xDD8FC577",
        layout_height = "match_parent",
        layout_width = "match_parent",
      },
    }
  end
    ViewList = {
    LinearLayout,
    orientation = "horizontal",
    layout_width = "match_parent",
    layout_height = "match_parent",
    layout_marginTop = "10dp",
    layout_marginRight = "3dp",
    layout_marginBottom = "15dp",
  }
  for i=1,#stab do
		tmp={
			LinearLayout,
			layout_height="wrap_content",
			layout_width="match_parent",
			orientation="vertical",			
		}
		for k=1,#sview[i] do			
			tmp[#tmp+1]=sview[i][k]
		end
		_ENV["layout"..i]=luajava.loadlayout{
			ScrollView,
			id = "layout"..i,
			layout_height="match_parent",
			layout_width="match_parent",
			tmp,			
			padding={"8dp","3dp","8dp","3dp"},
		}
    ViewList[#ViewList+1] = _ENV["layout"..i]
  end
   ViewList = luajava.loadlayout(ViewList)
  xfc = {
    LinearLayout,
    layout_height = "300dp",
    layout_width = "500dp",
    {
      FrameLayout,
      layout_height = "300dp",
      layout_width = "140dp",
      orientation = "vertical",
      {
        ImageView,
        layout_width = "match",
        layout_height = "72.5dp",
        src = getRes("cao"),
      },
      {
        TextView,
        text = 左上角文字,
        textSize = "15sp",
        layout_marginLeft="20dp";
        gravity = "center|left",
        layout_height = "62dp",
        layout_width = "fill_parent",
      },
      {
        LinearLayout,
        layout_height = "match",
        layout_marginTop="60dp";
        orientation = "vertical",
        layout_width = "match",
        background = getVerticalBG({0xffffffff,0xffffffff},15,0,0xff8FC577),
        {
          LinearLayout,
          layout_height = "50dp",
          layout_width = "match",
          layout_marginTop="5dp";
          layout_marginLeft="5dp";
          layout_marginRight="5dp";
          background = jybg(0xffffffff,20),
          elevation="5dp",
          {
            HorizontalScrollView,
            layout_width = "match_parent",
            layout_height = "match_parent",
            HorizontalScrollBarEnabled=false,
            layout_marginRight = "3dp",
            layout_marginLeft = "3dp",
            Selection
          }
        },
        {
          FrameLayout,
          layout_height = "match",
          layout_width = "match",
          layout_marginTop="5dp";
          layout_marginBottom="5dp";
          layout_marginLeft="5dp";
          orientation = "vertical",
          layout_marginRight="5dp";
          background = jybg(0xFFFFFFFF,25),
          elevation="5dp",
          {
            FrameLayout,
            layout_width = "match",
            layout_height = "167dp",
            background = getRes("nxt"),
            {
              ScrollView,
              id="ggscro",
              layout_gravity = "center|bottom",
              layout_height = "wrap",
              layout_width = "match_parent",        
              layout_marginBottom="10dp";
              layout_marginTop="3dp";    
              {LinearLayout,
                id="gggscro",                
                layout_width = "match_parent",
                layout_height = "wrap",
                layout_marginLeft="3dp";
          orientation = "vertical",
          layout_marginRight="3dp";
                padding="1dp",                                           
              }
            }
          },
          {
            TextView,
            text = 下方文字,
            gravity = "center",
            layout_gravity = "center|bottom",
            textSize = "9sp",
            textColor = "0xDD8FC577",
            layout_height = "15dp",
            background = getCorner({0xffffffff,0xffffffff},15,0,0xffffffff,0,0,25,25),
            layout_width = "match_parent",
          },
        }
      }
    },
    {
      FrameLayout,
      layout_height = "match_parent",
      layout_width = "match_parent",
      {
    LinearLayout,
    orientation = "horizontal",
    layout_width = "match_parent",
    layout_marginLeft="3dp";
    layout_height = "match_parent",
    layout_marginTop = "5dp",
    layout_marginRight = "3dp",
    layout_marginBottom = "5dp",
    ViewList
  },
      {
      FrameLayout,
      layout_height = "30dp",
      layout_width = "30dp",
      layout_gravity = "top|right",
      background = jybg(0x70FFFFFF,90),
      onLongClick = function(v) tuichu=1 end,
      onClick = 隐藏,
      {
      ImageView,      
      layout_height = "25dp",      
      layout_width = "25dp",
      layout_gravity = "center",
      src=getRes("x")
      }
      }      
      }
  }
  floatWindow = {
    LinearLayout,
    id = "motion",
    orientation="vertical",
    layout_height = "fill_parent",
    layout_width = "fill_parent",
    background=getVerticalBG({0x308FC577,0x308FC577,0x708FC577},20,4,0xff8FC577),
    onTouch=hanshu,
    {
      FrameLayout,
      layout_height = "match_parent",
      layout_width = "match_parent",
      id = "jiemian",
      xfc
    },
    {
      CircleImageView ;
      layout_width = "50dp" ;
      elevation="3dp",
      src = xfqic ;
      visibility = "gone",
      id = "xfq" ;
      onTouch=hanshu,
      onClick=隐藏,
      layout_height = "50dp"
}
  }
  local function invoke()
    mainLayoutParams = getLayoutParams()
    floatWindow = luajava.loadlayout(floatWindow)
    luajava.post(function()
      window:addView(floatWindow,mainLayoutParams)
    end)    
  end
  invoke(swib1,swib2)
  gg.setVisible(false)
  setOnExitListener(function()
    window:removeView(floatWindow)
    tuichu=1
  end)
  huiz()
  切换(1)
  if ylfunc~=nil then ylfunc() end
  if yyfunc~=nil then yyfunc() end
  while true do
    if tuichu == 1 then break end
    jianting3(qiehuan)
    gg.sleep(120)
  end
end
function 退出UI()
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
function YC.switch(name,func1,func2,miaoshu)
  if not checkbg then
    checkbga = getVerticalBG({0xffE4E4E4,0xffE4E4E4},360)
    checkbg = getVerticalBG({0xff8FC577,0xff8FC577},360)
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
    layout_width = 'fill_parent',
    layout_height = "47dp",
    gravity = "center",
    {
      LinearLayout,
      layout_width = 'fill_parent',
      layout_height = "40dp",
      gravity = "center",
      elevation = "3dp",
      layout_marginRight = "4dp",
      layout_marginLeft = "4dp",
      background = luajava.loadlayout {
        GradientDrawable ,
        color = 0xffffffff ,
        cornerRadius = 15
        } ,padding = {
        "0dp","0dp","6dp","0dp"
      },
      {
        TextView,
        gravity = "top",
        text = name,
        textColor = "0xff8FC577",
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
  name = name..guid()
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
        colorvs[nid]={true,"switch"}
        pcall(func1)
        uiadtext(localname.." 已开启.")
       else
        vibra:vibrate(9)
        luajava.runUiThread(function()
          luajava.getIdValue(nid.."g"):setVisibility(View.GONE)
          YoYoImpl:with("ZoomInRight"):duration(600):playOn(switches["1s"..sname])
          luajava.getIdValue(nid.."k"):setVisibility(View.VISIBLE)
          luajava.getIdValue(nid):setBackground(checkbga)
        end)
        colorvs[nid]={false,"switch"}
        _ENV[name] = "关"
        pcall(func2)
        uiadtext(localname.." 已关闭.","#d4d4d4")
      end
    end
    if localname=="摇一摇隐藏UI" then yyfunc=outfunc end
    if localname=="音量键隐藏UI" then ylfunc=outfunc end
    return outfunc
  end
end
YC.controlWater = function(control,time)
  luajava.runUiThread(function()
    import "android.animation.ObjectAnimator"
    ObjectAnimator():ofFloat(control,"scaleX", {
      1, 0.8, 0.9, 1
    }):setDuration(time):start()
    ObjectAnimator():ofFloat(control,"scaleY", {
      1,0.8,0.9,1
    }):setDuration(time):start()
end) end
buts={}
function YC.button(txt,func,txtc)
  if not txt then txt = "未设置" end
  if not txtc then txtc="0xff8FC577" end
  local tid="Cbutton"..guid()
  buts[tid]=luajava.loadlayout(
  {
    LinearLayout,
    layout_width = 'match_parent',
    layout_height = "47dp", 
    {
      LinearLayout,
      layout_width = "fill_parent",
      layout_height = "40dp",
      elevation = "3dp",
      layout_gravity = "center",
      layout_marginRight = "4dp",
      layout_marginLeft = "4dp",
      background = getButtonBG(),
      padding="10dp",
      onClick = function()
        uiadtext("执行 "..txt)
        YC.controlWater(buts[tid],300)
        vibra:vibrate(10)
        luajava.newThread(func):start() end,
      {
        TextView,
        --id = luajava.newId(tid),
        textColor = txtc,
        text = txt,
        textSize = "16sp",
        layout_height = "wrap_content",
        layout_width = "fill_parent",
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
  }, jybg({0x34000400,0x34000400},15))
  selector:addState({
    -android.R.attr.state_pressed
  }, jybg({0xFFFFFFFF,0xFFFFFFFF},15))
  return selector
end
function YC.text(txt,color,size,ftc)
if not txt then txt = "未设置文字" end
if not color then color = "0xffffffff" end
if not size then size = "18sp" end
if ftc then  ltc = "center" else  ltc = "left" end
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
YC.controlRotation9 = function(control, time,t)
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
YC.controlRotation9(boxpic[tid],0,90)
else
	tview : setVisibility (View.GONE)
YC.controlWater (_ENV [tid.."6"] , 200)
YC.controlRotation9(boxpic[tid],90,0)
end
end
boxes = {} boxpic = {}
function YC.box (views)
local tid = "box"..guid ()
boxpic[tid] = luajava.loadlayout {
	ImageView,
	src = getRes("hei_right"),
	layout_width = "26dp" ,
	layout_height = "26dp" ,
	ColorFilter = "0xff8FC577",
}
local ttid = tid.."6"
local t1id = guid ()
firadio = {
	LinearLayout,
	layout_width = 'fill_parent' ,
	layout_height = "wrap_content" ,
	layout_marginTop = "10dp" ,
	layout_marginBottom = "10dp" ,
	orientation = "vertical",
}
if type (views [1]) == "string" or type (views [1]) == "number" then
firadio [# firadio + 1] = {
LinearLayout,
	elevation = "5dp",
	layout_width = 'fill_parent',
	layout_height = "47dp",
	gravity = "center_vertical",
	{
	LinearLayout ,
	layout_width = 'fill_parent' ,
	layout_height = "40dp" ,
	layout_marginRight = "4dp",
      layout_marginLeft = "4dp",
	gravity = "center_vertical" ,	
	onClick = function () visi (tid , ttid) end,
	elevation = "3dp",
	background = getButtonBG(),
	{
		TextView , text = views [1] ,
		textSize = "16sp" ,
		layout_marginLeft = "15dp" ,
		layout_width = "match_parent" ,
		layout_weight=1,
		textColor = "0xff8FC577" ,
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
	gg.alert ("YC.box的table内第一个元素必须是string") os.exit ()
end
radios = {
	LinearLayout ,
	layout_marginLeft = "5dp" ,
	layout_marginRight = "5dp" ,
	orientation = "vertical" ,
	visibility = "gone" ,
	id = luajava.newId (tid) ,	
	layout_marginRight = "4dp",
      layout_marginLeft = "4dp",
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
function YC.edit (name , hint)
_ENV [name] = name..guid ()
if not hint then
hint = name
end
rest = luajava.loadlayout ( {
	LinearLayout ,
	layout_width = 'match_parent' ,
	layout_height = "47dp",
	{
		LinearLayout ,
		layout_width = 'fill_parent' ,
		layout_height = "40dp" ,
		layout_marginRight = "4dp",
      layout_marginLeft = "4dp",
      elevation = "3dp",
		layout_gravity = "center" ,
		{
			EditText ,
			background = getButtonBG(),
			gravity = "center" ,
			hint = hint ,
			textColor="#201E1E",
			textSize = "13sp",
			layout_height = "40dp" ,
			layout_marginBottom = "-2dp",
			id=luajava.newId(_ENV [name]),
			layout_width = 'fill' ,			
		}
	}
})
luajava.getIdValue(_ENV [name]):setHintTextColor(0xff8FC577)
return rest
end
function YC.getedit (name)
edit = tostring (luajava.getIdValue (_ENV [name]) : getText ())
return edit
end
function YC.setedit (name , txt)
txt = tostring (txt)
luajava.runUiThread (function ()
	luajava.getIdValue (_ENV [name]) : setText (txt)
	end

)
end
chazhi={} chajv={}
function YC.seek(name,bian,smin,smax,nows)
_ENV[bian] =nows
thum=getVerticalBG({0xffFFFFFF,0xffFFFFFF},4,10,0xff8FC577)
thum:setSize(40, 40)
seekbg=getVerticalBG({0xff8FC577,0xff8FC577},38,2,0x77000000)
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
	elevation = "5dp",
	layout_width = 'fill_parent',
	layout_height = "47dp",
	gravity = "center_vertical",
	{
	LinearLayout,
	layout_width = 'fill_parent',
	layout_height = "40dp",
		layout_marginRight = "4dp",
      layout_marginLeft = "4dp",
      elevation = "3dp",
	background = luajava.loadlayout({
							GradientDrawable,
							color = 0xffFFFFFF,
							cornerRadius = 15
						}),
	{
		LinearLayout,
		layout_width = 'fill_parent',
		layout_hight = "fill_parent",
		layout_gravity = "center",
					
		{
			TextView,
			layout_gravity = "center",
			textColor="0xff8FC577",
			textSize="16sp",
			text = name..":"..nows,
			id = luajava.newId(names),
			layout_width = '90dp',
			layout_marginLeft = "10dp",
			layout_marginRight = "0dp",
		},
		    {
			SeekBar,
			layout_width = 'fill_parent',
			layout_hight = "10dp",
			layout_gravity = "center",
			layout_weight=1,
			id=luajava.newId(name.."seekbar"),
			min = truesmin,
			max = truesmax,
			progress=tnows,
			progressDrawable={seekbg},
			thumb=thum,
			progressHeight="2dp",
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
	}}})
	return rest
end
radiog={}
function YC.radio (cklist)
if not radoff then
radon=getVerticalBG({0xffffffff,0xffffffff},360,20,0xff8FC577)
radoff=getVerticalBG({0x00ffffff,0x00ffffff},360,8,0xffaaaaaa)

end
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
	textColor = "#d7d7d7" ,
	layout_width = 'fill_parent' ,
	layout_height = 'wrap_content' ,
	layout_marginLeft = "10dp" ,
	layout_marginRight = "5dp" ,	
}
else
	rds=1
end
local restt={
	LinearLayout ,
	layout_width = 'match_parent' ,
	layout_height = "wrap_content" ,
	layout_marginTop = "3.5dp" ,
	layout_marginBottom = "3.5dp" ,
	gravity = "top" ,
	layout_marginRight = "4dp",
      layout_marginLeft = "4dp",
	orientation = "vertical" ,
	elevation = "3dp",
	background=jybg(0xffffffff,15),
	padding={"0dp","5dp","0dp","5dp"},
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
		uiadtext('执行 '..name)
	YC.controlWater (_ENV [tid] , 200)
	func()
	end,
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
		textColor = "0xff8FC577" ,
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
	colorvs[k]={false,"rad"}
	luajava.getIdValue(k):setBackground(radoff)
	if k==nid and v~=true then
		luajava.getIdValue(k):setBackground(radon)
		colorvs[k]={true,"rad"}
		v=true
		luajava.newThread(func):start()
	end
end
end
end
function YC.check(cklist)
local rest = {
	GridLayout,
	columnCount = '3',
	layout_width = 'match_parent',
	layout_height = "wrap_content",
	elevation="3dp",
	background=jybg(0xffffffff,15),
	layout_marginRight="4dp",
	layout_marginLeft="4dp",
	layout_marginTop="3.5dp",
	layout_marginBottom="3.5dp",
	gravity = "center"
}
for i = 1,#cklist do
local name = cklist[i][1]
local func1 = cklist[i][2]
local func2 = cklist[i][3]
if not name then name = "未设置" end
rstt = YC.intcheck(name,func1,func2)
rest[#rest+1] = rstt
end
return {
	LinearLayout,rest
}
end
switchs={}
function YC.intcheck(name,func1,func2)
dangxbg1=getRes("quarkcheckoff")
dangxbg2=getRes("quarkcheckon")
nid = name..guid()
local func = 开关c(name,func1,func2,nid)
if not name then name = "未设置" end
switchs[nid] = {
	LinearLayout,
	layout_width = '110dp',
	layout_height = "42dp",
	layout_marginTop = "1dp",
	layout_marginBottom = "1dp",
	padding = "1dp",
	{
		LinearLayout,		
		onClick = function() luajava.newThread(function() func() end):start() end,
		layout_width = 'fill_parent',
		layout_gravity = "center",
		layout_height = "wrap_content",
		{
			FrameLayout,
			id = luajava.newId(nid),
			background = dangxbg1,
			layout_width = '30dp',
			layout_height = '30dp',
		},{
			TextView,
			id=luajava.newId(nid.."t"),
			gravity = "left|center",
			text = name,
			textColor="0xff8FC577",
			textSize = "16sp",
layout_marginLeft="3dp",
layout_height = '30dp',
			layout_width = 'match_parent',
	layout_weight=1,
		},
		}
}
return switchs[nid]
end
function 开关c(name,func1,func2,nid)
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
	luajava.getIdValue(nid):setBackground(dangxbg2)
	luajava.getIdValue(nid.."t"):setTextColor(0xff8FC577)
	end)
_ENV[name] = "开"
pcall(func1)
uiadtext(localname.." 已开启.")
else
	vibra:vibrate(9)
luajava.runUiThread(function()
	luajava.getIdValue(nid):setBackground(dangxbg1)
	luajava.getIdValue(nid.."t"):setTextColor(0xff8FC577)
	end)
_ENV[name] = "关"
pcall(func2)
uiadtext(localname.." 已关闭.","#d4d4d4")
end
end
end
end


xfqic="https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/arlogo"

function huiz()
end


左上角文字="银河UI"
下方文字="Developed by func."
stab = {
  --菜单名字，添加即可加页数，需要与结尾配置表对应
  { "启动", getRes("launch")},
  { "防封", getRes("fang")},
  { "功能", getRes("gn")},
  { "音乐", getRes("music")},
  { "设置", getRes("sz")},
}




YC.menu(
{
  {--1   
    YC.text("文本"),
    YC.text("彩色文本","0xff8FC577"),
    YC.text("文本居中","0xffffffff","18sp",true),
    changan.switch("开关",function() end,function() end),
    YC.button("按钮",function() end),
    YC.box({
			"XXX区",	
			YC.edit("输入框演示"),
				YC.button(
					"调用输入框",
					function()
						local tmp=YC.getedit("输入框演示")
						gg.alert(tmp)
					end),
					YC.seek("拉条演示","ltxx",1,20,1),
					YC.button(
					"调用拉条",
					function()
						gg.alert(ltxx)						
					end),
					
		}),--box结尾
		YC.radio({--单选
				{
					"防环境 [登录界面必开]" ,
					function ()
						gg.alert(1)
					end
				} , {
					"防行为 [大厅界面必开]" ,
					function ()
						
					end
				} , {
					"防人工一 [大厅界面]" ,
					function ()
						
					end
				} , {
					"防人工二 [大厅界面]" ,
					function ()
						
					end
				} ,
			}),
			YC.check({
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
    }, {--2
    changan.switch("测试",function() end,function() end),
    }, {--3
    changan.switch("测试",function() end,function() end),
    }, {--4
    changan.switch("测试",function() end,function() end),
    }, {--5
    YC.switch(
    '音量键隐藏UI',
    function()
      音量键=true
    end,
    function()
      音量键=false
    end),
    YC.switch(
    '摇一摇隐藏UI',
    function()
      摇一摇=true
    end,
    function()
      摇一摇=false
    end),
    changan.switch("退出",function()     
    退出UI()
    end,function() end),    
    },{
    
    },{

    },{

    },{

    },{

    },{

    },{

  }
})

