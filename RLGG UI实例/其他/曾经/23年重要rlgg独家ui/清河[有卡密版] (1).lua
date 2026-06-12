
--下面这个改成自己的
	local info = {
		name = 'demo',
		appid = '10009',
		appkey = '4u33n332djlniFEF',
		rc4key = 'LgEXia1aAg810009',
		version = '1.0.2',
		mi_type = '3'
	}

rlyunyz = getrlyunyz(info)

local L0_0
L0_0 = "particle"
_ENV[L0_0] = function(A0_1, A1_2, A2_3, A3_4)
  return (luajava.webView(function(A0_5)
    A0_5:loadData([[
<!DOCTYPE html>
<html>
  <head>
    <meta charset=utf-8 />
    <title>]] .. A0_1 .. "</title>\n \n    <style>\n      html,\n      *{\n    /* 初始化 */\n    margin: 0;\n    padding: 0;\n}\nbody{\n    height: 15vw;\n    /* 弹性布局 水平+垂直居中 */\n    display: flex;\n    justify-content: center;\n    align-items: center;\n    \n}\nh1{\n    /* 文本透明 */\n    color: transparent;\n    font-size: 18px;\n    letter-spacing: 5px;\n    /* 渐变背景 */\n    background: linear-gradient(to right," .. A3_4[1] .. "," .. A3_4[2] .. "," .. A3_4[3] .. ");\n    /* 裁剪掉文字以外的区域 */\n    -webkit-background-clip: text;\n    -webkit-text-fill-color: transparent;\n    background-size: 80%;\n    background-repeat: repeat;\n    background-position: center;\n    /* 执行动画：动画名 时长 线性 无线播放 */\n    animation: move 4s linear infinite;\n    position:absolute;\n    top:10px\n}\np{\n  color: white;\n  font-size: 6px;\n  align-items: center;\n  }\n/* 定义动画 */\n@keyframes move {\n    0%{\n        background-position: -400%;\n    }\n    100%{\n        background-position: 400%;\n    }\n}\n    </style>\n  </head>\n  <body>\n\n    <meta http-equiv=content-type content=text/html; charset=utf-8>\n    <meta name=viewport content=width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no>\n\n    <title>纯CSS实现文本背景扫光效果</title>\n    <link rel=stylesheet href=113.css>\n</head>\n\n<body>\n    <h1>" .. A1_2 .. "<br>  <p>" .. A2_3 .. [[
</p></h1>
    

</body>

    </script>
  </body>
 
</html>
]], "text/html", "UTF-8")
    A0_5:setBackgroundColor(0)
    A0_5:setVerticalScrollBarEnabled(false)
    A0_5:setHorizontalScrollBarEnabled(false)
    A0_5:setScrollContainer(false)
  end
  ))
end

L0_0 = "vibra"
_ENV[L0_0] = context:getSystemService(Context.VIBRATOR_SERVICE)
L0_0 = "changan"
_ENV[L0_0] = {}
L0_0 = "changan"
L0_0 = _ENV[L0_0]
function write(A0_6, A1_7)
  file.write(A0_6, A1_7)
end

function panduan(A0_8)
  fille, err = io.open(A0_8)
  if fille == nil then
    return false
  else
    return true
  end
end

function pdcf(A0_9)
  rec = "/sdcard/长安/配置文件/" .. A0_9
  fille, err = io.open(rec)
  if fille == nil then
    return false
  else
    return true
  end
end

sleep = gg.sleep
function read(A0_10)
  f = assert(io.open(A0_10, "r"))
  content = f:read("*all")
  f:close()
  return content
end

function wtcf(A0_11, A1_12)
  write("/sdcard/长安/配置文件/" .. A0_11, A1_12)
end

function rdcf(A0_13)
  return read("/sdcard/长安/配置文件/" .. A0_13)
end

_ENV["开"] = "开"
_ENV["关"] = "关"
function checkimg(A0_14)
  if panduan("/sdcard/长安/图片/" .. A0_14) ~= true then
    gg.toast("正在下载资源" .. A0_14 .. "\n请耐心等待")
    download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/" .. A0_14, "/sdcard/长安/图片/" .. A0_14)
  end
end

ckimg = {
  "leimu",
  "pubgLogo",
  "quarkhole"
}
for _FORV_5_ = 1, #ckimg do
  jindu = _FORV_5_
  checkimg(ckimg[_FORV_5_])
end
context = app.context
window = context:getSystemService("window")
function getLayoutParams()
  local L0_15
  L0_15 = "LayoutParams"
  _ENV[L0_15] = WindowManager.LayoutParams
  L0_15 = "layoutParams"
  _ENV[L0_15] = luajava.new(LayoutParams)
  L0_15 = "Build"
  L0_15 = _ENV[L0_15]
  L0_15 = L0_15.VERSION
  L0_15 = L0_15.SDK_INT
  if L0_15 >= 26 then
    L0_15 = "layoutParams"
    L0_15 = _ENV[L0_15]
    L0_15.type = LayoutParams.TYPE_APPLICATION_OVERLAY
  else
    L0_15 = "layoutParams"
    L0_15 = _ENV[L0_15]
    L0_15.type = LayoutParams.TYPE_PHONE
  end
  L0_15 = "layoutParams"
  L0_15 = _ENV[L0_15]
  L0_15.format = PixelFormat.RGBA_8888
  L0_15 = "layoutParams"
  L0_15 = _ENV[L0_15]
  L0_15.flags = LayoutParams.FLAG_NOT_FOCUSABLE
  L0_15 = "layoutParams"
  L0_15 = _ENV[L0_15]
  L0_15.gravity = Gravity.TOP | Gravity.LEFT
  L0_15 = "layoutParams"
  L0_15 = _ENV[L0_15]
  L0_15.width = LayoutParams.WRAP_CONTENT
  L0_15 = "layoutParams"
  L0_15 = _ENV[L0_15]
  L0_15.height = LayoutParams.WRAP_CONTENT
  L0_15 = "layoutParams"
  L0_15 = _ENV[L0_15]
  return L0_15
end

function getj7()
  jianbian6 = luajava.new(GradientDrawable)
  jianbian6:setCornerRadius(20)
  jianbian6:setGradientType(GradientDrawable.LINEAR_GRADIENT)
  jianbian6:setColors({3092530, 3092530})
  jianbian6:setStroke(3, "0xff0091FE")
  return jianbian6
end

slctb = luajava.loadlayout({
  GradientDrawable,
  color = "#EFEFEF",
  cornerRadius = 10
})
slcta = luajava.loadlayout({
  GradientDrawable,
  color = "#0077FF",
  cornerRadius = 10
})
slctc = luajava.loadlayout({
  GradientDrawable,
  color = "#11ffffff",
  cornerRadius = 8
})
slctd = luajava.loadlayout({
  GradientDrawable,
  color = "#55ffffff",
  cornerRadius = 8
})
slcte = luajava.loadlayout({
  GradientDrawable,
  color = "#11ffffff",
  cornerRadius = 12
})
slctf = luajava.loadlayout({
  GradientDrawable,
  color = "#aa1E1C27",
  cornerRadius = 12
})
function getSelector3()
  local L0_16
  L0_16 = "selector"
  _ENV[L0_16] = luajava.getStateListDrawable()
  L0_16 = "selector"
  L0_16 = _ENV[L0_16]
  L0_16 = L0_16.addState
  L0_16(L0_16, {
    _UPVALUE1_.R.attr.state_pressed
  }, luajava.loadlayout({
    GradientDrawable,
    color = "#b9b9b9",
    cornerRadius = 10
  }))
  L0_16 = "selector"
  L0_16 = _ENV[L0_16]
  L0_16 = L0_16.addState
  L0_16(L0_16, {
    _UPVALUE1_.R.attr.state_pressed
  }, luajava.loadlayout({
    GradientDrawable,
    color = "#ffffff",
    cornerRadius = 10
  }))
  L0_16 = "selector"
  L0_16 = _ENV[L0_16]
  return L0_16
end

function getSelector()
  selector = luajava.getStateListDrawable()
  selector:addState({
    _UPVALUE1_.R.attr.state_pressed
  }, slcta)
  selector:addState({
    _UPVALUE1_.R.attr.state_pressed
  }, slctb)
  return selector
end

function hanshu(A0_17, A1_18)
  if A1_18:getAction() == MotionEvent.ACTION_DOWN then
    isMove = false
    RawX = A1_18:getRawX()
    RawY = A1_18:getRawY()
    x = mainLayoutParams.x
    y = mainLayoutParams.y
  elseif A1_18:getAction() == MotionEvent.ACTION_MOVE then
    isMove = true
    mainLayoutParams.x = tonumber(x) + (A1_18:getRawX() - RawX)
    mainLayoutParams.y = tonumber(y) + (A1_18:getRawY() - RawY)
    window:updateViewLayout(floatWindow, mainLayoutParams)
  end
end

function getSelector2()
  selector = luajava.getStateListDrawable()
  selector:addState({
    _UPVALUE1_.R.attr.state_pressed
  }, slctd)
  selector:addState({
    _UPVALUE1_.R.attr.state_pressed
  }, slctc)
  return selector
end

jianbian = luajava.new(GradientDrawable)
jianbian:setCornerRadius(30)
jianbian:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbian2 = luajava.new(GradientDrawable)
jianbian2:setCornerRadius(30)
jianbian2:setGradientType(GradientDrawable.LINEAR_GRADIENT)
_ENV["获取图片"] = function(A0_19)
  A0_19 = file.checkUrl(A0_19)
  return luajava.getBitmapDrawable(A0_19)
end

YoYoImpl = luajava.getYoYoImpl()
function L0_0.menu(A0_20)
  local L1_21
  L1_21 = _UPVALUE0_
  if L1_21 then
    L1_21 = false
    return L1_21
  end
  L1_21 = true
  _UPVALUE0_ = L1_21
  L1_21 = "cebian"
  _ENV[L1_21] = {
    LinearLayout,
    id = "侧边",
    layout_height = "fill_parent",
    layout_width = "wrap_content",
    orientation = "horizontal",
    gravity = "center",
    background = {
      GradientDrawable,
      color = "#00ffffff",
      cornerRadius = 10
    }
  }
  L1_21 = "jmbg"
  _ENV[L1_21] = {}
  L1_21 = 1
  for _FORV_4_ = 1, #stab do
    jmbg[_FORV_4_] = getSelector()
    cebian[#cebian + 1] = {
      LinearLayout,
      id = "jm" .. _FORV_4_,
      gravity = "center",
      layout_height = "23dp",
      layout_width = "wrap_content",
      layout_marginTop = "3dp",
      layout_marginBottom = "3dp",
      layout_marginRight = "3dp",
      layout_marginLeft = "10dp",
      background = getSelector(),
      onClick = function()
        _ENV["切换"](_UPVALUE1_)
      end
      ,
      {
        ImageView,
        src = _ENV["获取图片"]("" .. stab[_FORV_4_][2]),
        layout_height = "20dp",
        layout_width = "20dp",
        padding = "2dp",
        layout_marginRight = "-4dp"
      },
      {
        TextView,
        text = stab[_FORV_4_][1],
        id = "jmt" .. _FORV_4_,
        gravity = "center",
        textSize = "12sp",
        textColor = "#" .. _ENV["颜色2"],
        layout_height = "23dp",
        layout_width = "68dp"
      }
    }
  end
  L1_21 = "cebian"
  _ENV[L1_21] = luajava.loadlayout({
    HorizontalScrollView,
    visibility = "gone",
    layout_height = "wrap_content",
    layout_width = "450dp",
    cebian
  })
  L1_21 = 1
  for _FORV_4_ = 1, #stab do
    _ENV["layout" .. _FORV_4_] = luajava.loadlayout({
      LinearLayout,
      layout_width = "fill_parent",
      layout_height = "230dp",
      visibility = "gone",
      orientation = "vertical",
      background = {
        GradientDrawable,
        color = "#33ffffff",
        cornerRadius = 20
      },
      {
        TextView,
        layout_width = "250dp",
        padding = {
          "10dp",
          "10dp",
          "10dp",
          "2dp"
        },
        layout_height = "30dp",
        text = "",
        textColor = "#80C3F9",
        textSize = "14sp"
      },
      {
        ScrollView,
        fillViewport = "true",
        gravity = "center",
        layout_width = "fill_parent",
        layout_height = "230dp",
        orientation = "horizontal",
        {
          LinearLayout,
          id = "layoutm" .. _FORV_4_,
          layout_marginRight = "5dp",
          layout_marginLeft = "5dp",
          layout_width = "fill_parent",
          orientation = "vertical",
          gravity = "center_horizontal"
        }
      }
    })
  end
  L1_21 = "ckou"
  _ENV[L1_21] = {
    LinearLayout,
    id = "chuangk",
    visibility = "gone",
    layout_width = "wrap_content",
    layout_height = "wrap_content",
    orientation = "vertical",
    {
      FrameLayout,
      orientation = "horizontal",
      padding = "2dp",
      layout_width = "fill_parent",
      {
        ImageView,
        layout_gravity = "center_vertical|left",
        src = _ENV["获取图片"]("/sdcard/长安/图片/pubgLogo"),
        id = "titlebar",
        padding = "2dp",
        layout_width = "58dp",
        layout_height = "32dp",
        gravity = "center",
        onClick = _ENV["隐藏"],
        onTouch = hanshu
      },
      {
        TextView,
        textSize = "14sp",
        text = titlet,
        textColor = "#323232",
        gravity = "center",
        layout_gravity = "center",
        layout_width = "match_parent",
        layout_height = "match_parent"
      },
      {
        ImageView,
        layout_gravity = "center_vertical|right",
        src = _ENV["获取图片"]("/sdcard/长安/图片/quarkhole"),
        padding = "2dp",
        layout_width = "40dp",
        layout_height = "30dp",
        gravity = "center",
        onClick = _ENV["隐藏"],
        onTouch = hanshu,
        layout_marginRight = "5dp"
      }
    },
    {
      LinearLayout,
      layout_marginBottom = "1dp",
      layout_marginTop = "1dp",
      layout_width = "fill_parent",
      layout_height = "2dp",
      background = "#D7D7D7"
    }
  }
  L1_21 = 1
  for _FORV_4_ = 1, #stab do
    ckou[#ckou + 1] = _ENV["layout" .. _FORV_4_]
  end
  L1_21 = "ckou"
  L1_21 = _ENV[L1_21]
  L1_21[#ckou + 1] = {
    LinearLayout,
    layout_marginBottom = "1dp",
    layout_marginTop = "1dp",
    layout_width = "fill_parent",
    layout_height = "2dp",
    background = "#D7D7D7"
  }
  L1_21 = "ckou"
  L1_21 = _ENV[L1_21]
  L1_21[#ckou + 1] = cebian
  L1_21 = "ckou"
  _ENV[L1_21] = luajava.loadlayout(ckou)
  L1_21 = "floatWindow"
  _ENV[L1_21] = {
    FrameLayout,
    id = "motion",
    elevation = "10dp",
    onTouch = hanshu,
    onClick = function()
      local L0_22, L1_23
    end
    ,
    layout_width = "wrap_content",
    orientation = "vertical",
    gravity = "center_vertical",
    layout_height = "wrap_content",
    {
      FrameLayout,
      id = "parentv",
      ckou
    },
    {
      ImageView,
      id = "control",
      background = _ENV["获取图片"](xfcpic),
      layout_width = "40dp",
      layout_height = "40dp",
      onTouch = hanshu,
      onClick = _ENV["隐藏"]
    }
  }
  function L1_21()
    local L0_24, L1_25, L2_26, L3_27, L4_28
    L0_24, L1_25, L2_26, L3_27, L4_28 = nil, nil, nil, nil, nil
    mainLayoutParams = getLayoutParams()
    floatWindow = luajava.loadlayout(floatWindow)
    _ENV["切换"](1)
    luajava.getHandler():post((luajava.getRunnable(function()
      for _FORV_3_ = 1, #stab do
        for _FORV_7_ = 1, #A0_20[_FORV_3_] do
          _ENV["layoutm" .. _FORV_3_]:addView(A0_20[_FORV_3_][_FORV_7_])
        end
        _ENV["layoutm" .. _FORV_3_]:addView((luajava.loadlayout({
          LinearLayout,
          layout_height = "60dp"
        })))
      end
      window:addView(floatWindow, mainLayoutParams)
      block("end")
    end
    )))
    block("join")
  end
  
  L1_21(swib1, swib2)
  gg.setVisible(false)
  _ENV["隐藏"]()
  luajava.setFloatingWindowHide(true)
  qhkai = 0
  function qiehuan()
    if qhkai == 0 then
      qhkai = 1
      draw.remove()
      luajava.runUiThread(function()
        L0_0.controlSmall(floatWindow, 400)
      end
      )
      gg.sleep(400)
      luajava.runUiThread(function()
        floatWindow:setVisibility(View.GONE)
      end
      )
    else
      qhkai = 0
      huiz()
      draw.text(".", -9200, -9200)
      luajava.runUiThread(function()
        floatWindow:setVisibility(View.VISIBLE)
      end
      )
      luajava.runUiThread(function()
        L0_0.controlBig(floatWindow, 400)
      end
      )
    end
  end
  
  huiz()
  draw.text(".", -9200, -9200)
  while tuichu ~= 1 do
    jianting3(qiehuan)
    gg.sleep(300)
  end
  luajava.setFloatingWindowHide(false)
end

function L0_0.box(A0_29)
  local L1_30
  L1_30 = "tid"
  _ENV[L1_30] = "box" .. guid()
  L1_30 = {
    LinearLayout
  }
  L1_30.gravity = "left|center_vertical"
  L1_30.layout_width = "fill_parent"
  L1_30.layout_height = "fill_parent"
  L1_30.orientation = "horizontal"
  L1_30[#L1_30 + 1] = {
    LinearLayout,
    orientation = "vertical",
    layout_height = "fill_parent",
    {
      TextView,
      layout_marginTop = "3dp",
      layout_width = "wrap_content",
      layout_height = "27.5dp",
      padding = "2dp",
      textColor = "#000000",
      textSize = "12sp",
      text = A0_29
    },
    {
      LinearLayout,
      layout_width = "fill_parent",
      layout_height = "2dp",
      background = "#0077FF",
      layout_gravity = "bottom"
    }
  }
  return (luajava.loadlayout({
    FrameLayout,
    layout_width = "400dp",
    layout_height = "32dp",
    {
      LinearLayout,
      layout_width = "400dp",
      layout_height = "2dp",
      background = "#d7d7d7",
      layout_gravity = "bottom"
    },
    L1_30
  }))
end

function getVerticalBG(A0_31, A1_32, A2_33, A3_34)
  if _ENV["渐变强制横向"] then
    return getHorizontalBG(A0_31, A1_32, A2_33, A3_34)
  end
  if not A2_33 then
    A2_33 = 0
    A3_34 = 4278190080
  end
  luajava.new(GradientDrawable):setCornerRadius(A1_32)
  luajava.new(GradientDrawable):setGradientType(GradientDrawable.LINEAR_GRADIENT)
  luajava.new(GradientDrawable):setColors(A0_31)
  luajava.new(GradientDrawable):setStroke(A2_33, A3_34)
  return (luajava.new(GradientDrawable))
end

function getHorizontalBG(A0_35, A1_36, A2_37, A3_38)
  if not A2_37 then
    A2_37 = 0
    A3_38 = 4278190080
  end
  luajava.new(GradientDrawable):setCornerRadius(A1_36)
  luajava.new(GradientDrawable):setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
  luajava.new(GradientDrawable):setGradientType(GradientDrawable.LINEAR_GRADIENT)
  luajava.new(GradientDrawable):setColors(A0_35)
  luajava.new(GradientDrawable):setStroke(A2_37, A3_38)
  return (luajava.new(GradientDrawable))
end

corbk = true
_ENV["当前ui"] = 1
_ENV["切换"] = function(A0_39)
  if type(ret) ~= "table" then
    log_init()
    return 0
  end
  _ENV["当前ui"] = A0_39
  luajava.runUiThread(function()
    for _FORV_3_ = 1, #stab do
      _ENV["jmt" .. _FORV_3_]:setTextColor(4278190080)
      _ENV["jm" .. _FORV_3_]:setBackground(jmbg[_FORV_3_])
      _ENV["layout" .. _FORV_3_]:setVisibility(View.GONE)
    end
    _ENV["jmt" .. _ENV["当前ui"]]:setTextColor(4294967295)
    _ENV["jm" .. _ENV["当前ui"]]:setBackground(slcta)
    _ENV["layout" .. _ENV["当前ui"]]:setVisibility(View.VISIBLE)
  end
  )
end

_ENV["显示"] = 0
beij = luajava.loadlayout({
  GradientDrawable,
  color = "#ffE9E9E9",
  cornerRadius = 10
})
beij2 = luajava.loadlayout({
  GradientDrawable,
  color = "#001E1C27",
  cornerRadius = 10
})
function getcolor(A0_40)
  A0_40[1] = tonumber(math.ceil(A0_40[1] * 2.6, 0, 5))
  if A0_40[1] > 255 then
    A0_40[1] = "0xff"
  else
    A0_40[1] = "0x" .. string.format("%x", A0_40[1])
  end
  for _FORV_4_ = 1, 3 do
    A0_40[_FORV_4_ + 1] = string.format("%x", A0_40[_FORV_4_ + 1])
    if string.len(A0_40[_FORV_4_ + 1]) == 1 then
      A0_40[_FORV_4_ + 1] = "0" .. A0_40[_FORV_4_ + 1]
    end
  end
  A0_40 = A0_40[1] .. A0_40[2] .. A0_40[3] .. A0_40[4]
  return A0_40
end

function getrgb(A0_41)
  if string.sub(A0_41, 1, 1) == "#" then
    A0_41 = "0x" .. string.sub(A0_41, 2, -1)
  end
  A0_41 = {
    tonumber(string.sub(A0_41, 0, 4)),
    tonumber("0x" .. string.sub(A0_41, 5, 6)),
    tonumber("0x" .. string.sub(A0_41, 7, 8))
  }
  return A0_41
end

_ENV["显示"] = 0
_ENV["隐藏"] = function()
  luajava.runUiThread(function()
    if tonumber(tostring(cebian:getVisibility())) == 8 then
      control:setVisibility(View.GONE)
      _ENV["显示"] = 1
      ckou:setVisibility(View.VISIBLE)
      cebian:setVisibility(View.VISIBLE)
      _ENV["layout" .. _ENV["当前ui"]]:setVisibility(View.VISIBLE)
      L0_0.controlBig(floatWindow, 500)
      floatWindow:setBackground(beij)
      mainLayoutParams.flags = LayoutParams.FLAG_NOT_TOUCH_MODAL
      window:updateViewLayout(floatWindow, mainLayoutParams)
    else
      mainLayoutParams.flags = LayoutParams.FLAG_NOT_FOCUSABLE
      window:updateViewLayout(floatWindow, mainLayoutParams)
      floatWindow:setBackground(beij2)
      ckou:setVisibility(View.GONE)
      control:setVisibility(View.VISIBLE)
      _ENV["显示"] = 0
      cebian:setVisibility(View.GONE)
      _ENV["layout" .. _ENV["当前ui"]]:setVisibility(View.GONE)
    end
  end
  )
end

import("android.media.AudioManager")
audi = context:getSystemService("audio")
audiotype = {
  AudioManager.STREAM_ALARM,
  AudioManager.STREAM_MUSIC,
  AudioManager.STREAM_NOTIFICATION,
  AudioManager.STREAM_RING,
  AudioManager.STREAM_SYSTEM,
  AudioManager.STREAM_VOICE_CALL,
  AudioManager.STREAM_DTMF
}
yinl = {}
for _FORV_6_ = 1, #audiotype do
  yinl[_FORV_6_] = {}
  yinl[_FORV_6_].type = audiotype[_FORV_6_]
  yinl[_FORV_6_].min = audi:getStreamMinVolume(audiotype[_FORV_6_])
  yinl[_FORV_6_].max = audi:getStreamMaxVolume(audiotype[_FORV_6_])
  yinl[_FORV_6_].now = audi:getStreamVolume(audiotype[_FORV_6_])
end
function jianting2()
  local L0_42, L2_43, L3_44
  L0_42 = "yinln"
  L2_43 = {}
  _ENV[L0_42] = L2_43
  L0_42 = 1
  L2_43 = "audiotype"
  L2_43 = _ENV[L2_43]
  L2_43 = #L2_43
  for _FORV_3_ = 1, #L2_43 do
    yinln[_FORV_3_] = {}
    yinln[_FORV_3_].type = audiotype[_FORV_3_]
    yinln[_FORV_3_].min = audi:getStreamMinVolume(audiotype[_FORV_3_])
    yinln[_FORV_3_].max = audi:getStreamMaxVolume(audiotype[_FORV_3_])
    yinln[_FORV_3_].now = audi:getStreamVolume(audiotype[_FORV_3_])
    if yinln[_FORV_3_].now > yinl[_FORV_3_].now then
      audi:adjustStreamVolume(yinln[_FORV_3_].type, AudioManager.ADJUST_LOWER, 0)
      gg.alert("up")
    elseif yinln[_FORV_3_].now < yinl[_FORV_3_].now then
      audi:adjustStreamVolume(yinln[_FORV_3_].type, AudioManager.ADJUST_RAISE, 0)
      gg.alert("down\n" .. yinln[_FORV_3_].now .. "\n" .. yinl[_FORV_3_].now)
    end
  end
end

yltype = 0
function jianting3(A0_45)
  local L1_46, L3_47, L4_48
  L1_46 = "yinln"
  L3_47 = {}
  _ENV[L1_46] = L3_47
  L1_46 = 1
  L3_47 = "audiotype"
  L3_47 = _ENV[L3_47]
  L3_47 = #L3_47
  for _FORV_4_ = 1, #L3_47 do
    yinln[_FORV_4_] = {}
    yinln[_FORV_4_].type = audiotype[_FORV_4_]
    yinln[_FORV_4_].now = audi:getStreamVolume(audiotype[_FORV_4_])
    if yinln[_FORV_4_].now > yinl[_FORV_4_].now then
      yinl[_FORV_4_].now = yinln[_FORV_4_].now
      if yltype == 1 then
        yltype = 0
        A0_45()
      end
    elseif yinln[_FORV_4_].now < yinl[_FORV_4_].now then
      yinl[_FORV_4_].now = yinln[_FORV_4_].now
      if yltype == 0 then
        yltype = 1
        A0_45()
      end
    end
  end
end

function jianting(A0_49)
  local L1_50, L3_51, L4_52
  L1_50 = "yinln"
  L3_51 = {}
  _ENV[L1_50] = L3_51
  L1_50 = 1
  L3_51 = "audiotype"
  L3_51 = _ENV[L3_51]
  L3_51 = #L3_51
  for _FORV_4_ = 1, #L3_51 do
    yinln[_FORV_4_] = {}
    yinln[_FORV_4_].type = audiotype[_FORV_4_]
    yinln[_FORV_4_].now = audi:getStreamVolume(audiotype[_FORV_4_])
    if yinln[_FORV_4_].now >= yinl[_FORV_4_].max then
      audi:adjustStreamVolume(yinln[_FORV_4_].type, AudioManager.ADJUST_LOWER, 0)
    end
    if yinln[_FORV_4_].now > yinl[_FORV_4_].now then
      audi:setStreamVolume(yinln[_FORV_4_].type, yinl[_FORV_4_].now, 0)
      A0_49()
    end
  end
end

function guid()
  seed = {
    "e",
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "a",
    "b",
    "c",
    "d",
    "e",
    "f"
  }
  tb = {}
  for _FORV_3_ = 1, 32 do
    table.insert(tb, seed[math.random(1, 16)])
  end
  sid = table.concat(tb)
  return string.format("%s%s%s%s%s", string.sub(sid, 1, 8), string.sub(sid, 10, 12), string.sub(sid, 21, 22)) .. string.format("%s%s%s%s%s", string.sub(sid, 1, 6), string.sub(sid, 21, 25))
end

setExitEvent(function()
  tuichu = 1
  luajava.setFloatingWindowHide(false)
  luajava.post(function()
    window:removeView(floatWindow)
  end
  )
end
)
function L0_0.controlWater(A0_53, A1_54)
  luajava.runUiThread(function()
    import("android.animation.ObjectAnimator")
    ObjectAnimator():ofFloat(A0_53, "scaleX", {
      1,
      0.8,
      0.9,
      1
    }):setDuration(A1_54):start()
    ObjectAnimator():ofFloat(A0_53, "scaleY", {
      1,
      0.8,
      0.9,
      1
    }):setDuration(A1_54):start()
  end
  )
end

function L0_0.controlSmall(A0_55, A1_56)
  luajava.runUiThread(function()
    import("android.animation.ObjectAnimator")
    ObjectAnimator():ofFloat(A0_55, "scaleX", {
      1,
      0.7,
      0.4,
      0
    }):setDuration(A1_56):start()
    ObjectAnimator():ofFloat(A0_55, "scaleY", {
      1,
      0.7,
      0.4,
      0
    }):setDuration(A1_56):start()
  end
  )
end

function L0_0.controlBig(A0_57, A1_58)
  luajava.runUiThread(function()
    import("android.animation.ObjectAnimator")
    ObjectAnimator():ofFloat(A0_57, "scaleX", {
      0,
      0.4,
      0.7,
      1
    }):setDuration(A1_58):start()
    ObjectAnimator():ofFloat(A0_57, "scaleY", {
      0,
      0.4,
      0.7,
      1
    }):setDuration(A1_58):start()
  end
  )
end

_ENV["开关3"] = function(A0_59, A1_60, A2_61, A3_62)
  A0_59 = A0_59 .. guid()
  _ENV[A0_59] = "关"
  if A1_60 == nil then
    function A1_60()
      local L0_63, L1_64
    end
    
  end
  if A2_61 == nil then
    function A2_61()
      local L0_65, L1_66
    end
    
  end
  if type(A1_60) == "function" then
    return function()
      if type(ret) ~= "table" then
        log_init()
        return 0
      end
      namers = _ENV[A0_59]
      if namers ~= "开" then
        luajava.runUiThread(function()
          L0_0.controlWater(_ENV[A3_62], 200)
          luajava.getIdValue(A3_62):setBackground(check2)
          luajava.getIdValue(A3_62 .. "k"):setVisibility(View.GONE)
          luajava.getIdValue(A3_62 .. "g"):setVisibility(View.VISIBLE)
        end
        )
        _ENV[A0_59] = "开"
        vibra:vibrate(6)
        pcall(A1_60)
      else
        luajava.runUiThread(function()
          L0_0.controlWater(_ENV[A3_62], 200)
          luajava.getIdValue(A3_62):setBackground(check1)
          luajava.getIdValue(A3_62 .. "g"):setVisibility(View.GONE)
          luajava.getIdValue(A3_62 .. "k"):setVisibility(View.VISIBLE)
        end
        )
        _ENV[A0_59] = "关"
        vibra:vibrate(6)
        pcall(A2_61)
      end
    end
    
  end
end

function getShape3()
  jianbians = luajava.new(GradientDrawable)
  jianbians:setCornerRadius(20)
  jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
  jianbians:setColors({1442815420, 1442815420})
  jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
  jianbians:setStroke(8, 2860565497)
  return jianbians
end

function getShape(A0_67, A1_68, A2_69, A3_70)
  jianbians = luajava.new(GradientDrawable)
  jianbians:setCornerRadius(A0_67)
  jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
  jianbians:setColors(A1_68)
  jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
  jianbians:setStroke(8, A3_70)
  return jianbians
end

function getShape2(A0_71, A1_72, A2_73, A3_74)
  jianbians = luajava.new(GradientDrawable)
  jianbians:setCornerRadius(A0_71)
  jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
  jianbians:setColors(A1_72)
  jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
  jianbians:setStroke(15, A3_74)
  return jianbians
end

function getShape0(A0_75, A1_76, A2_77, A3_78)
  jianbians = luajava.new(GradientDrawable)
  jianbians:setCornerRadius(A0_75)
  jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
  jianbians:setColors(A1_76)
  jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
  jianbians:setStroke(30, A3_78)
  return jianbians
end

check1 = getShape(45, {4294967295, 4294967295}, 4, 4286628857)
check2 = getShape(45, {4286628857, 4286628857}, 4, 4286628857)
checkbg1 = getShape0(90, {4294942140, 4294942140}, 4, 16777215)
checkbg2 = getShape2(90, {4294967295, 4294967295}, 4, 4286628857)
checkbg2 = _ENV["获取图片"]("/sdcard/长安/图片/leimu")
_ENV["开关5"] = function(A0_79, A1_80, A2_81, A3_82)
  local L4_83, L5_84
  L4_83 = A3_82
  L5_84 = A0_79
  A0_79 = A0_79 .. guid()
  _ENV[A0_79] = "关"
  if A1_80 == nil then
    A1_80 = ""
  end
  if A2_81 == nil then
    A2_81 = ""
  end
  if type(A1_80) == "function" then
    return function()
      if type(ret) ~= "table" then
        log_init()
        return 0
      end
      namers = _ENV[A0_79]
      if namers ~= "开" then
        vibra:vibrate(14)
        luajava.runUiThread(function()
          luajava.getIdValue(A3_82 .. "g"):setText("已开启")
          luajava.getIdValue(A3_82 .. "g"):setTextColor(4288746274)
        end
        )
        _ENV[A0_79] = "开"
        pcall(A1_80)
      else
        vibra:vibrate(14)
        luajava.runUiThread(function()
          luajava.getIdValue(A3_82 .. "g"):setText("开启")
          luajava.getIdValue(A3_82 .. "g"):setTextColor(4278220799)
        end
        )
        _ENV[A0_79] = "关"
        pcall(A2_81)
      end
    end
    
  end
end

function initbg()
  jianbians = luajava.new(GradientDrawable)
  jianbians:setCornerRadius(10)
  jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
  jianbians:setColors({4294967295, 4294967295})
  jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
  jianbians:setStroke(0, 4278190080)
  return jianbians
end

function L0_0.check(A0_85)
  local L1_86
  L1_86 = {
    GridLayout
  }
  L1_86.columnCount = "3"
  L1_86.layout_width = "match_parent"
  L1_86.layout_height = "wrap_content"
  L1_86.layout_marginLeft = "10dp"
  L1_86.layout_marginRight = "10dp"
  L1_86.gravity = "center"
  for _FORV_5_ = 1, #A0_85 do
    rstt = L0_0.intcheck(A0_85[_FORV_5_][1] or "未设置", A0_85[_FORV_5_][2], A0_85[_FORV_5_][3])
    L1_86[#L1_86 + 1] = rstt
  end
  return luajava.loadlayout({
    LinearLayout,
    L1_86
  })
end

function L0_0.intcheck(A0_87, A1_88, A2_89)
  nid = A0_87 .. guid()
  A0_87 = A0_87 or "未设置"
  return (luajava.loadlayout({
    LinearLayout,
    layout_width = "133dp",
    layout_height = "24dp",
    layout_marginTop = "1dp",
    layout_marginBottom = "1dp",
    padding = "1dp",
    {
      LinearLayout,
      onClick = function()
        luajava.newThread(function()
          _UPVALUE0_()
        end
        ):start()
      end
      ,
      layout_width = "fill_parent",
      layout_height = "fill_parent",
      gravity = "center_vertical",
      background = initbg(),
      {
        TextView,
        gravity = "left",
        text = A0_87,
        textColor = "#000000",
        textSize = "12sp",
        layout_marginLeft = "7dp",
        layout_width = "68dp"
      },
      {
        TextView,
        id = luajava.newId(nid .. "g"),
        text = "开启",
        textColor = "#0077FF",
        textSize = "12sp",
        gravity = "center",
        layout_width = "wrap_content",
        layout_height = "fill_parent",
        layout_marginLeft = "4dp"
      }
    }
  }))
end

function L0_0.button(A0_90, A1_91)
  A0_90 = A0_90 or "未设置"
  return luajava.loadlayout({
    LinearLayout,
    layout_width = "220dp",
    layout_hight = "30dp",
    {
      LinearLayout,
      layout_width = "fill_parent",
      gravity = "center_horizontal",
      layout_marginTop = "5dp",
      layout_marginBottom = "5dp",
      background = getSelector3(),
      onClick = function()
        if type(ret) ~= "table" then
          log_init()
          return 0
        end
        luajava.newThread(function()
          pcall(A1_91)
        end
        ):start()
      end
      ,
      {
        TextView,
        textColor = "#" .. _ENV["颜色2"],
        text = A0_90,
        textSize = "16sp",
        layout_width = "wrap_content"
      }
    }
  })
end

function L0_0.text(A0_92, A1_93, A2_94)
  A0_92 = A0_92 or "未设置文字"
  A1_93 = A1_93 or "#" .. _ENV["颜色2"]
  A2_94 = A2_94 or "18sp"
  return luajava.loadlayout({
    TextView,
    text = A0_92,
    textSize = A2_94,
    textColor = A1_93,
    layout_width = "wrap_content"
  })
end

_ENV["开关"] = function(A0_95, A1_96, A2_97)
  if A1_96 == nil then
    function A1_96()
      local L0_98, L1_99
    end
    
  end
  if A2_97 == nil then
    function A2_97()
      local L0_100, L1_101
    end
    
  end
  if type(A1_96) == "function" then
    return function()
      if type(ret) ~= "table" then
        log_init()
        return 0
      end
      namers = _ENV[A0_95]
      if namers ~= "开" then
        _ENV[A0_95] = "开"
        pcall(A1_96)
      else
        _ENV[A0_95] = "关"
        pcall(A2_97)
      end
    end
    
  end
end

_ENV["颜色1"] = "80C3F9"
_ENV["颜色2"] = "545454"
_ENV["开关2"] = function(A0_102, A1_103, A2_104, A3_105)
  if type(ret) ~= "table" then
    log_init()
    return 0
  end
  if A1_103 == nil then
    A1_103 = ""
  end
  if A2_104 == nil then
    A2_104 = ""
  end
  if type(A1_103) == "function" then
    return function()
      namers = _ENV[A0_102]
      if namers ~= "开" then
        luajava.runUiThread(function()
          luajava.getIdValue(A3_105):setBackground(luajava.getBitmapDrawable("/sdcard/长安/图片/check2"))
        end
        )
        _ENV[A0_102] = "开"
        A1_103()
      else
        luajava.runUiThread(function()
          luajava.getIdValue(A3_105):setBackground(luajava.getBitmapDrawable("/sdcard/长安/图片/check1"))
        end
        )
        _ENV[A0_102] = "关"
        A2_104()
      end
    end
    
  end
end

function L0_0.getedit(A0_106)
  local L1_107, L2_108
  L1_107 = "edit"
  L2_108 = "tostring"
  L2_108 = _ENV[L2_108]
  L2_108 = L2_108(luajava.getIdValue(A0_106):getText())
  _ENV[L1_107] = L2_108
  L1_107 = "edit"
  L1_107 = _ENV[L1_107]
  return L1_107
end

function log_init()
  if type(ret) ~= "table" then
    if vv ~= nil then
      return 0
    end
    luajava.newThread(function()
      draw.remove()
    end
    ):start()
    tmp = {
      LinearLayout,
      orientation = "vertical",
      gravity = "center_horizontal"
    }
    if panduan("/sdcard/长安/配置文件/km.lua") ~= false then
      dofile("/sdcard/长安/配置文件/km.lua")
      logkapian = luajava.loadlayout({
        LinearLayout,
        orientation = "vertical",
        gravity = "center",
        layout_height = "50dp",
        layout_width = "160dp",
        background = getHorizontalBG({4294967295, 4294967295}, 25, 2, 4294967295),
        elevation = "10dp",
        onClick = function()
          luajava.newThread(function()
            logkap = true
            login(kam)
          end
          ):start()
        end
        ,
        {
          TextView,
          gravity = "center",
          textSize = "18sp",
          textColor = "#000000",
          text = "******" .. string.sub(kam, -4, -1)
        },
        {
          TextView,
          gravity = "center",
          textSize = "11sp",
          textColor = "#4E98FF",
          text = "快捷登录"
        }
      })
      tmp[#tmp + 1] = logkapian
      tmp[#tmp + 1] = {
        LinearLayout,
        layout_height = "10dp"
      }
    end
    jianbians = luajava.new(GradientDrawable)
    jianbians:setCornerRadius(30)
    jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
    jianbians:setColors({
      4285202668,
      4278217471,
      4278227199,
      4285202668
    })
    jianbians:setOrientation(GradientDrawable.Orientation.TL_BR)
    luajava.newThread(function()
      luajava.runUiThread(function()
        vv = luajava.loadlayout({
          LinearLayout,
          orientation = "vertical",
          visibility = "gone",
          background = getVerticalBG({2283148822, 2283148822}, 10),
          layout_width = "450dp",
          layout_height = "303dp",
          gravity = "center",
          onTouch = hanshu,
          onClick = function()
            if vv ~= nil then
              YoYoImpl:with("FadeOut"):duration(300):playOn(vv)
              luajava.newThread(function()
                gg.sleep(300)
                rmdadView(vv)
                vv = nil
              end
              ):start()
            end
          end
          ,
          tmp,
          {
            LinearLayout,
            orientation = "vertical",
            {
              LinearLayout,
              layout_height = "60dp",
              {
                EditText,
                id = luajava.newId("卡密"),
                textColor = "#000000",
                hint = "请输入卡密",
                elevation = "10dp",
                gravity = "center",
                background = luajava.loadlayout({
                  GradientDrawable,
                  color = "#ffffffff",
                  cornerRadius = 30
                }),
                layout_height = "50dp",
                layout_width = "160dp",
                layout_marginBottom = "20dp"
              }
            },
            {
              TextView,
              background = getVerticalBG({4278220799, 4278220799}, 15),
              text = "登录",
              textColor = "#ffffff",
              textSize = "16sp",
              gravity = "center",
              elevation = "10dp",
              layout_height = "30dp",
              layout_width = "160dp",
              onClick = function()
                luajava.newThread(function()
                  local L0_109
                  L0_109 = "login"
                  L0_109 = _ENV[L0_109]
                  L0_109(L0_0.getedit("卡密"))
                end
                ):start()
              end
              
            },
            {
              TextView,
              background = luajava.loadlayout({
                GradientDrawable,
                color = "#37383D",
                cornerRadius = 20
              }),
              text = "购卡",
              textColor = "#ffffff",
              textSize = "16sp",
              layout_marginTop = "5dp",
              gravity = "center",
              elevation = "10dp",
              layout_height = "30dp",
              layout_width = "160dp",
              onClick = function()
                luajava.newThread(function()
                  gg.intent(_ENV["卡网"])
                  _ENV["隐藏"]()
                  rmdadView(vv)
                  vv = nil
                end
                ):start()
              end
              
            },
            {
              TextView,
              background = luajava.loadlayout({
                GradientDrawable,
                color = "#37383D",
                cornerRadius = 20
              }),
              text = "解绑",
              textColor = "#ffffff",
              textSize = "16sp",
              layout_marginTop = "5dp",
              gravity = "center",
              elevation = "10dp",
              layout_height = "30dp",
              layout_width = "160dp",
              onClick = function()
                luajava.newThread(function()
                  if L0_0.getedit("卡密") ~= "" and L0_0.getedit("卡密") ~= " " then
                    rlyunyz.unbind((L0_0.getedit("卡密")))
                  end
                end
                ):start()
              end
              
            },
            {
              TextView,
              background = luajava.loadlayout({
                GradientDrawable,
                color = "#37383D",
                cornerRadius = 20
              }),
              text = "退出",
              textColor = "#ffffff",
              textSize = "16sp",
              layout_marginTop = "5dp",
              gravity = "center",
              elevation = "10dp",
              layout_height = "30dp",
              layout_width = "160dp",
              onClick = function()
                local L0_110, L1_111
                L0_110 = "tuichu"
                L1_111 = 1
                _ENV[L0_110] = L1_111
              end
              
            }
          }
        })
        addadView(vv)
        luajava.getIdValue("卡密"):setHintTextColor(4288848546)
        vv:setVisibility(View.VISIBLE)
        YoYoImpl:with("FadeIn"):duration(300):playOn(vv)
      end
      )
      huiz()
    end
    ):start()
  else
  end
end

function login(A0_112)
  if tostring(A0_112) == "" or tostring(A0_112) == " " then
    return 0
  end
  if vv ~= nil then
    luajava.runUiThread(function()
      YoYoImpl:with("FadeOut"):duration(400):playOn(vv)
    end
    )
    luajava.newThread(function()
      gg.sleep(400)
      rmdadView(vv)
      vv = nil
    end
    ):start()
  end
  getLoadingBox("正在校验卡密").显示()
  ret = rlyunyz.login(A0_112)
  getLoadingBox("正在校验卡密").关闭()
  ini = rlyunyz.checkUpdate()
  if type(ret) ~= "table" then
  else
    ktmp = "kam='" .. ret.kami .. "'"
    luajava.newThread(function()
      write("/sdcard/长安/配置文件/km.lua", ktmp)
    end
    ):start()
  end
end

function getTimeStamp(A0_113)
  return (os.date("%Y/%m/%d %H:%M:%S", A0_113))
end

function addadView(A0_114)
  luajava.post(function()
    parentv:addView(A0_114)
  end
  )
end

function rmdadView(A0_115)
  luajava.post(function()
    parentv:removeView(A0_115)
  end
  )
end



--FUNC-RLGG ui交流群824784947
--[[
前缀可以改例子在下面
UI本来是长安的我只是加了卡密验证
]]

func=changan--替换前缀





function huiz()---绘制必须放在这里面
	
	
end

卡网="http://www.baidu.com"

titlet="大标题演示"

stitle = "长安UI"

stab = {
--菜单名字，添加即可加页数，需要与结尾配置表对应
	{"公告","https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/quarkweb"},
	{"防封","https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/quarkuser"},
	{"功能","https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/quarkcore"},
	{"设置","https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/quarkconf"},
}



xfcpic = "https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/func"
--悬浮窗链接或路径

func.menu(
	{
		{--1
		particle("FUNC","FUNC全防","FUNC",{"#000000","#ffffff","#FF0100"}),
			func.button("选择进程",gg.setProcessX),
			--func.text("文字演示","#0077FF","20sp"),
			--func.text("文字演示文字演示文字演示","#545454","10sp"),
			func.box("安全功能"),
			func.check({
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
				},{
					"测试1",
					function()

					end,
					function()

					end
				},
				
			}),
			
			
			--func.text("文字演示","#A11322","20sp"),
			
			func.box("危险功能"),
			func.check({
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
				},{
					"测试1",
					function()

					end,
					function()

					end
				},
			}),
			
			
		}, {
--2
particle("FUNC","FUNC全防","FUNC",{"#000000","#ffffff","#FF0100"}),

		}, {
--3
particle("FUNC","FUNC全防","FUNC",{"#000000","#ffffff","#FF0100"}),

		}, {
--第四页
particle("FUNC","FUNC全防","FUNC",{"#000000","#ffffff","#FF0100"}),
			--func.switch("6"),
			func.text("\n\n\n"),
			func.button("退出",function()
				luajava.setFloatingWindowHide(false)
				tuichu=1
				end),
		}, {
--第五页，没有写菜单标题所以不显示

		},{
			
		},{
			
		},{
			
		},{
			
		},{
			
		},{
			
		},{
			
		}


	})
--配置表添加表即可加页数，只需要与上边菜单标题数对应