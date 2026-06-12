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

文档目前没写,如有疑惑可咨询我QQ507522729
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
import 'androidx.coordinatorlayout.widget.CoordinatorLayout'
import 'com.google.android.material.progressindicator.LinearProgressIndicator'
import 'com.google.android.material.progressindicator.CircularProgressIndicator'
import 'com.google.android.material.checkbox.MaterialCheckBox'
import 'androidx.core.widget.NestedScrollView'
import 'android.widget.ScrollView'
import 'com.google.android.material.chip.ChipGroup'
import 'com.google.android.material.chip.Chip'
import 'android.widget.CompoundButton'
import 'android.graphics.drawable.Icon'
import 'com.google.android.material.radiobutton.MaterialRadioButton'

import 'android.widget.LinearLayout'
import 'android.widget.Button'
import 'android.widget.TextView'


function f1()
	gg.alert('功能1')
end

-- 浅色模式
baseWindow:lightMode()

-- 深色模式
--baseWindow:darkMode()

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
print("本次运行包含套餐：尊享版")
function panduan(rec) fille,err = io.open(rec) if fille == nil then return false else return true end end
function checkimg(tmp,ii)
if panduan("/sdcard/云烛/原神/"..tmp) ~= true then
gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
luajava.download("https://peizhi.by.4yym.cn/"..tmp,"/sdcard/云烛/原神/"..tmp)
else
if file.length("/sdcard/云烛/原神/"..tmp) <= 1 then
gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
luajava.download("https://peizhi.by.4yym.cn/"..tmp,"/sdcard/云烛/原神/"..tmp)
end
end
if panduan("/sdcard/云烛/原神/"..tmp) ~= true then
gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
luajava.download("https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/"..tmp,"/sdcard/云烛/原神/"..tmp)
else
	if file.length("/sdcard/云烛/原神/"..tmp) <= 1 then
gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
luajava.download("https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/"..tmp,"/sdcard/云烛/原神/"..tmp)
end
end
end
ckimg = {

	"草神.zip"
	
}

for i = 1,#ckimg do
jindu = i
checkimg(ckimg[i],i)
gg.toast("正在加载资源")
end
if panduan("/sdcard/云烛/原神/opo1")~=true then
	file.unzip("/sdcard/云烛/原神/草神.zip","/sdcard/云烛/原神/")
end
function getRes(x)
  return 获取图片("/sdcard/云烛/原神/"..x)
end
function 获取图片(txt)
  ntxt = string.sub(string.gsub(txt,"/","-"),-10,-1)
  if string.find(tostring(txt),"http") ~= nil then
    if panduan("/sdcard/云烛/原神/"..ntxt) == false then
      download(txt,"/sdcard/云烛/原神/"..ntxt)
    end
    txt = "/sdcard/云烛/原神/"..ntxt
  end
  return luajava.getBitmapDrawable(txt)
end
Yunzhu = {}
colorvs = {}
local Yunzhu = Yunzhu
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
dex.loadfile("/storage/emulated/0/云烛/原神/CircleImageView.dex")
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
dexloader=dex.loadfile('/sdcard/云烛/原神/classes3.dex')
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
  if Yunzhu == 1 then
        jiemian:setVisibility(View.VISIBLE)
        xfq:setVisibility(View.GONE)   
        floatWindow:setBackground(getVerticalBG({0x308FC577,0x308FC577,0x708FC577},20,4,0xff8FC577))     
        YoYoImpl:with("FadeIn"):duration(500):playOn(floatWindow)           
	    mainLayoutParams.flags = LayoutParams.FLAG_NOT_TOUCH_MODA
        Yunzhu=nil
    else
        jiemian:setVisibility(View.GONE)
        xfq:setVisibility(View.VISIBLE)  
        floatWindow:setBackground(getVerticalBG({0x008FC577,0x008FC577},20,0,0xff8FC577))          
        YoYoImpl:with("FadeIn"):duration(500):playOn(floatWindow)        
		mainLayoutParams.flags = LayoutParams.FLAG_NOT_FOCUSABLE		
        Yunzhu=1
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
Yunzhu.menu = function(sview)
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
    local function invoke2()      
      window:addView(floatWindow,mainLayoutParams)      
    end
    local runnable = luajava.getRunnable(invoke2)
    local handler = luajava.getHandler()
    handler:post(runnable)   
  end
  
  invoke(swib1,swib2)
  gg.setVisible(false)
  setOnExitListener(function()
    window:removeView(floatWindow)
    tuichu=1
  end)
  luajava.setFloatingWindowHide(true)
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
function Yunzhu.switch(name,func1,func2,miaoshu)
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
				LinearLayout,
				layout_width = 'match_parent',
				layout_height = 'match_parent',
				orientation = 'vertical',
				{
					MaterialSwitch,
					layout_width = 'match_parent',
					layout_height = 'wrap_content',
					text = name,
					textSize = "13sp",
        
        layout_marginLeft = "10dp",
        layout_weight = 1,
        textColor = "0xff8FC577",
					onClick = function() luajava.newThread(function() func() end):start() end,
					
				},
			
		
			}
  }})
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
buts={}
function Yunzhu.button(txt,func,txtc)
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
function Yunzhu.text(txt,color,size,ftc)
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
else
	tview : setVisibility (View.GONE)
Yunzhu.controlWater (_ENV [tid.."6"] , 200)
Yunzhu.controlRotation9(boxpic[tid],90,0)
end
end
boxes = {} boxpic = {}
function Yunzhu.box (views)
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
	gg.alert ("Yunzhu.box的table内第一个元素必须是string") os.exit ()
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
function Yunzhu.edit (name , hint)
_ENV [name] = name..guid ()
if not hint then
hint = name
end
rest = luajava.loadlayout ( {
	LinearLayout ,
	layout_width = 'fill_parent' ,
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
			layout_width = 'match_parent' ,			
		}
	}
})
luajava.getIdValue(_ENV [name]):setHintTextColor(0xff8FC577)
return rest
end
function Yunzhu.getedit (name)
edit = tostring (luajava.getIdValue (_ENV [name]) : getText ())
return edit
end
function Yunzhu.setedit (name , txt)
txt = tostring (txt)
luajava.runUiThread (function ()
	luajava.getIdValue (_ENV [name]) : setText (txt)
	end

)
end
chazhi={} chajv={}
function Yunzhu.seek(name,bian,smin,smax,nows)
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
function Yunzhu.radio (cklist)
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
	Yunzhu.controlWater (_ENV [tid] , 200)
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

spics={
}
for i=1,55 do
	spics[i]="opo"..i
end
switchs={}
tcheck=10
function Yunzhu.intcheck(name,func1,func2,ii,gid,pic)
if pic~=nil then
	tocheck=获取图片(pic)
else
if tcheck==56 then
	tcheck=1
else
	tcheck=tcheck+1
end
tocheck=getRes(spics[tcheck])
end
local func = 开关5(name,func1,func2,gid..ii)
if not name then name = "未设置" end
if pic~=nil then
switchs[gid..ii] = luajava.loadlayout{
	LinearLayout,
	id = luajava.newId(gid..ii),
	layout_width = ( (tonumber(string.replace(界面宽度,"dp","")) -16)/3).."dp",
	layout_height = "wrap_content",
	layout_marginTop = "1dp",
	layout_marginBottom = "1dp",
	padding = "1dp",
	{
		LinearLayout,
		padding="3dp",
		onClick = function() luajava.newThread(function() func() end):start() end,
		layout_width = 'fill_parent',
		layout_height = "wrap_content",
		gravity = "center_horizontal",
		orientation="vertical",
		--background=getVerticalBG({0xffFFFDF2,0xddffffff,0xffFFFDF2},15,8,0xffFFDA71),
		{
			ImageView,
			id = luajava.newId(gid..ii.."p"),
			background=tocheck,
			setColorFilter=0xff000000,
			gravity="center",
			layout_width = '30dp',
			layout_height = '30dp',
			padding = "8dp",
		},{
			TextView,
			id=luajava.newId(gid..ii.."t"),
			gravity = "center",
			text = name,
			textColor="#000000",
			textSize = "9sp",
--layout_marginLeft="8dp",
			layout_width = 'match_parent',
	layout_weight=1,
		},
		}
}
colorvs[gid..ii.."p"]={false,"img"}
colorvs[gid..ii.."t"]={gid..ii.."t",false,"txt"}

else
switchs[gid..ii] = luajava.loadlayout{
	LinearLayout,
	id = luajava.newId(gid..ii),
	layout_width = ( (tonumber(string.replace(界面宽度,"dp","")) -16)/3).."dp",
	layout_height = "wrap_content",
	layout_marginTop = "1dp",
	layout_marginBottom = "1dp",
	padding = "1dp",
	{
		LinearLayout,
		padding="3dp",
		onClick = function() luajava.newThread(function() func() end):start() end,
		layout_width = 'fill_parent',
		layout_height = "wrap_content",
		gravity = "center_horizontal",
		orientation="vertical",
		--background=getVerticalBG({0xffFFFDF2,0xddffffff,0xffFFFDF2},15,8,0xffFFDA71),
		{
			ImageView,
			id = luajava.newId(gid..ii.."p"),
			src = tocheck,
			background=ckbg,
			setColorFilter=0xff000000,
			gravity="center",
			layout_width = '30dp',
			layout_height = '30dp',
			padding = "8dp",
		},{
			TextView,
			id=luajava.newId(gid..ii.."t"),
			gravity = "center",
			text = name,
			textColor="#000000",
			textSize = "9sp",
--layout_marginLeft="8dp",
			layout_width = 'match_parent',
	layout_weight=1,
		},
		}
}
colorvs[gid..ii.."p"]={false,"img"}
colorvs[gid..ii.."t"]={gid..ii.."t",false,"txt"}

end
return switchs[gid..ii]
end
function Yunzhu.intcard(name,name2,func1,func2,ii,gid)
if tcheck==56 then
	tcheck=1
else
	tcheck=tcheck+1
end
tocheck=spics[tcheck]
local func = 开关6(name,func1,func2,gid..ii)
if not name then name = "未设置" end
if not name2 then name2="" end
switchs[gid..ii] = {
	LinearLayout,
	id = luajava.newId(gid..ii),
	layout_width = 'wrap_content',
	layout_height = "wrap_content",
	
	layout_marginTop="5dp",
	layout_marginBottom="5dp",
	layout_marginLeft="3dp",
	layout_marginRight="3dp",
	
	{
		LinearLayout,
		padding="3dp",
		onClick = function() luajava.newThread(function() func() end):start() end,
		layout_width = ( (tonumber(string.replace(界面宽度,"dp","")) -30)/2).."dp",
		layout_height = "wrap_content",
		gravity = "left",
		background=getVerticalBG({0xFFFFFFFF,0xFFFFFFFF},30),
		orientation="vertical",
		padding="5dp",
		--background=getVerticalBG({0xffFFFDF2,0xddffffff,0xffFFFDF2},15,8,0xffFFDA71),
		{
			ImageView,
			id = luajava.newId(gid..ii.."p"),
			src = getRes(tocheck),
			setColorFilter=0xff000000,
			gravity="left",
			layout_width = '30dp',
			layout_height = '30dp',
			padding = "3dp",
		},{
			TextView,
			id=luajava.newId(gid..ii.."t"),
			gravity = "left",
			text = name,
			textColor="#000000",
			textSize = "12sp",
			layout_width = 'match_parent',
			layout_weight=1,
		},{
			TextView,
			id=luajava.newId(gid..ii.."t2"),
			gravity = "left",
			text = name2,
			textColor="#000000",
			textSize = "9sp",
			layout_width = 'match_parent',
			layout_weight=1,
		}
		}
}
colorvs[gid..ii.."p"]={false,"img"}
colorvs[gid..ii.."t"]={false,"txt"}

return switchs[gid..ii]
end
shous={}
function 收起ck(gid,ii)
if shous[gid] ==false then
		shous[gid]=true
		luajava.getIdView(gid..ii.."p"):setRotation(0)
	for i=1,ii-1 do
		if i>=9 then
			luajava.post(function()
			luajava.getIdView(gid):removeView(luajava.getIdView(gid..i))
			end)
		end
	end
	else
		shous[gid]=false
			luajava.post(function()
			luajava.getIdView(gid):removeView(luajava.getIdView(gid..ii))
			for i=1,ii-1 do
				if i>=9 then
					luajava.getIdView(gid):addView(luajava.getIdView(gid..i))
				end
			end
			luajava.getIdView(gid):addView(luajava.getIdView(gid..ii))
			end)
		luajava.getIdView(gid..ii.."p"):setRotation(180)
	end
end
opou=getRes("opou")
function Yunzhu.checkbox(gid,ii)
local func = function() 收起ck(gid,ii) end
if not name then name = "未设置" end
switchs[gid..ii] = {
	LinearLayout,
	id=luajava.newId(gid..ii),
	layout_width = '70dp',
	layout_height = "wrap_content",
	layout_marginTop = "1dp",
	layout_marginBottom = "1dp",
	padding = "1dp",
	{
		LinearLayout,
		padding="3dp",
		onClick = func,
		layout_width = 'fill_parent',
		layout_height = "wrap_content",
		gravity = "center_horizontal",
		orientation="vertical",
		--background=getVerticalBG({0xffFFFDF2,0xddffffff,0xffFFFDF2},15,8,0xffFFDA71),
		{
			ImageView,
			id = luajava.newId(gid..ii.."p"),
			src = opou,
			background=ckbg,
			gravity="center",
			layout_width = '30dp',
			layout_height = '30dp',
			padding = "8dp",
		},{
			TextView,
			id=luajava.newId(gid..ii.."t"),
			gravity = "center",
			text = "展开",
			textColor="#000000",
			textSize = "9sp",
--layout_marginLeft="8dp",
			layout_width = 'match_parent',
	layout_weight=1,
		},
		}
}
return switchs[gid..ii]
end
function 开关6(name,func1,func2,nid)
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
	luajava.getIdValue(nid.."t"):setTextColor(0xff8FC577)
	luajava.getIdValue(nid.."t2"):setTextColor(0xff8FC577)
	luajava.getIdValue(nid.."p"):setColorFilter(0xff8FC577)
	colorvs[nid.."p"]={true,"img"}
	colorvs[nid.."t"]={true,"txt"}
	colorvs[nid.."t2"]={true,"txt"}
	--Yunzhu.controlWater(switchs[nid],300)
	end)
_ENV[name] = "开"
uiadtext(localname.." 已开启.")
pcall(func1)
else
	vibra:vibrate(9)
luajava.runUiThread(function()
	luajava.getIdValue(nid.."t"):setTextColor(0xff000000)
	luajava.getIdValue(nid.."p"):setColorFilter(0xff000000)
	luajava.getIdValue(nid.."t2"):setTextColor(0xff000000)
	colorvs[nid.."p"]={false,"img"}
	colorvs[nid.."t"]={false,"txt"}
	colorvs[nid.."t2"]={false,"txt"}
	--Yunzhu.controlWater(switchs[nid],300)
	end)
_ENV[name] = "关"
uiadtext(localname.." 已关闭.","#d4d4d4")
pcall(func2)
end
end
end
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
	luajava.getIdValue(nid.."t"):setTextColor(0xff8FC577)
	luajava.getIdValue(nid.."p"):setColorFilter(0xff8FC577)
	colorvs[nid.."p"]={true,"img"}
	colorvs[nid.."t"]={true,"txt"}
	--Yunzhu.controlWater(switchs[nid],300)
	end)
_ENV[name] = "开"
uiadtext(localname.." 已开启.")
pcall(func1)
else
	vibra:vibrate(9)
luajava.runUiThread(function()
	luajava.getIdValue(nid.."t"):setTextColor(0xff000000)
	luajava.getIdValue(nid.."p"):setColorFilter(0xff000000)
	colorvs[nid.."p"]={false,"img"}
	colorvs[nid.."t"]={false,"txt"}
	--Yunzhu.controlWater(switchs[nid],300)
	end)
_ENV[name] = "关"
uiadtext(localname.." 已关闭.","#d4d4d4")
pcall(func2)
end
end
end
end

function Yunzhu.card(cklist)
if #cklist==0 then return nil end
local rest = {
	LinearLayout,
	layout_width = 'fill_parent',
	layout_height = "wrap_content",
	gravity = "center",
	orientation="vertical",
	layout_marginTop="5dp",
	layout_marginBottom="5dp",
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
local name2 = cklist[i + j][4]
if not name then name = "未设置" end
local gid=guid()
rstt = Yunzhu.intcard(name,name2,func1,func2,1,gid)
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
function Yunzhu.check(cklist)
local gid=guid()
local rest = {
	GridLayout,
	id=luajava.newId(gid),
	columnCount = '3',
	layout_width = ( tonumber(string.replace(界面宽度,"dp","")) -16).."dp",
	layout_height = "wrap_content",
	
	gravity = "center",
	background = luajava.loadlayout {
			GradientDrawable ,
			color = 0xFFFFFFFF ,
			cornerRadius = 35
		} ,

}
for i = 1,#cklist do
local name = cklist[i][1]
local func1 = cklist[i][2]
local func2 = cklist[i][3]
local pic = cklist[i][4]
if not name then name = "未设置" end
rstt = Yunzhu.intcheck(name,func1,func2,i,gid,pic)
if i<9 then
rest[#rest+1] = rstt
end
end
if #cklist>=9 then
rstt = Yunzhu.checkbox(gid,#cklist+1)
rest[#rest+1] = rstt
end
return luajava.loadlayout({
	LinearLayout,rest
})
end
界面宽度="320dp"

界面长度="400dp"

xfqic="http://q1.qlogo.cn/g?b=qq&nk=2488329753&s=40"

function huiz()
end


左上角文字="云烛M3"
下方文字="Developed by Yunzhu."
stab = {
  --菜单名字，添加即可加页数，需要与结尾配置表对应
  { "启动", getRes("launch")},
  { "防封", getRes("fang")},
  { "功能", getRes("gn")},
  { "音乐", getRes("music")},
  { "设置", getRes("sz")},
}




Yunzhu.menu(
{
  {--1   
    Yunzhu.text("文本"),
    Yunzhu.text("彩色文本","0xff8FC577"),
    Yunzhu.text("文本居中","0xffffffff","18sp",true),
    Yunzhu.switch("开关",function() end,function() end),
    Yunzhu.button("按钮",function() end),
    Yunzhu.box({
			"XXX区",	
			Yunzhu.edit("输入框演示"),
				Yunzhu.button(
					"调用输入框",
					function()
						local tmp=Yunzhu.getedit("输入框演示")
						gg.alert(tmp)
					end),
					Yunzhu.seek("拉条演示","ltxx",1,20,1),
					Yunzhu.button(
					"调用拉条",
					function()
						gg.alert(ltxx)						
					end),
					
		}),--box结尾
		Yunzhu.radio({--单选
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
			Yunzhu.card({
					{
						"防封",
						function()
							
						end,
						function()
							
						end,
						"防封用法xxx"
					}, {
						"功能",
						function()
							
						end,
						function()
							
						end,
						"功能介绍xxx"
					},{
						"功能",
						function()
							
						end,
						function()
							
						end,
						--"xxxxxxx"--可留空
					},
					
					
			}),
		Yunzhu.check({
					{
						"例子xxxxxx",--名称
						function()--开
							
						end,
						function()--关
							
						end,
						--check第四个参数图片可自定义，删掉不写就是随机
						--"https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/XG"
					}, {
						"例子",
						function()
							
						end,
						function()
							
						end,
						--没写图片链接就是随机
						--"https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/XG"
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
					},
				}),
    }, {--2
    Yunzhu.switch("测试",function() end,function() end),
    }, {--3
    Yunzhu.switch("测试",function() end,function() end),
    }, {--4
    Yunzhu.switch("测试",function() end,function() end),
    }, {--5
    Yunzhu.switch(
    '音量键隐藏UI',
    function()
      音量键=true
    end,
    function()
      音量键=false
    end),
    Yunzhu.switch(
    '摇一摇隐藏UI',
    function()
      摇一摇=true
    end,
    function()
      摇一摇=false
    end),
    Yunzhu.switch("退出",function()     
    退出UI()
    end),    
    },{
    
    },{

    },{

    },{

    },{

    },{

    },{

  }
})

