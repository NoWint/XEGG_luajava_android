function particle()
local webView = luajava.webView(function(webView)
	webView:loadData([[
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
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
    background-color: #hsjjsb;
}
h1{
    /* 文本透明 */
    color: transparent;
    font-size: 20px;
    /* 渐变背景 */
    background-image: -webkit-linear-gradient(92deg, #f35626, #feab3a);
    /* 裁剪掉文字以外的区域 */
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    background-size: 80%;
    background-repeat: repeat;
    background-position: center;
    /* 执行动画：动画名 时长 线性 无线播放 */
    -webkit-animation: hue 3s infinite linear;
    position:absolute;
    top:0px
}
/* 定义动画 */
@-webkit-keyframes hue {
from {
-webkit-filter: hue-rotate(0deg);
-moz-filter: hue-rotate(0deg);
}
to {
-webkit-filter: hue-rotate(-360deg);
-moz-filter: hue-rotate(-360deg);
}
}
    </style>
  </head>
  <body>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
</head>

<body>
     <h1>AC全防</h1>
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
----以下是配置 By yunzhu
function _error()
  ts = gg.alert("开启失败\n失败原因：进程存储太小或选择了错误的进程\n解决方案：重选进程后开启", "确定", "选择进程", "")
  if ts == 2 then
    gg.setProcessX()
  end
end

function package_Anti_module()
  gg.setVisible(false)
  while true do
    if gg.isVisible() == true then
      if not gg.prompt({
        "进入主页面",
        "继续此状态",
        "1.正在获取游戏进程...\n2.正在捕捉环境检测..."
      }, {
        [3] = "我正在等待进程的到来"
      }, {
        "checkbox",
        "checkbox",
        "text"
      }) then
        gg.setVisible(false)
      else
        if gg.prompt({
          "进入主页面",
          "继续此状态",
          "1.正在获取游戏进程...\n2.正在捕捉环境检测..."
        }, {
          [3] = "我正在等待进程的到来"
        }, {
          "checkbox",
          "checkbox",
          "text"
        })[1] == true then
          break
        end
        gg.setVisible(false)
      end
    end
    for _FORV_5_, _FORV_6_ in pairs((gg.getProcess())) do
      if _FORV_6_.cmdLine == "com.kiloo.subwaysurf" then
        gg.setProcess("com.kiloo.subwaysurf")
        for _FORV_10_ = 1, math.huge do
          if gg.getRangesList("libtersafe2.so")[1] == nil then
            gg.setRanges(gg.REGION_C_DATA | gg.REGION_C_BSS)
            gg.clearResults()
            gg.searchNumber("1433223", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
            gg.clearResults()
          else
            gg.setProcess("com.kiloo.subwaysurf")
            gg.setProcess("com.kiloo.subwaysurf")
            gg.setProcess("com.kiloo.subwaysurf")
            gg.setProcess("com.kiloo.subwaysurf")
            gg.setProcess("com.kiloo.subwaysurf")
            gg.setProcess("com.kiloo.subwaysurf")
            gg.setProcess("com.kiloo.subwaysurf")
            gg.setProcess("com.kiloo.subwaysurf")
            gg.toast("正在开启全防")
            io.open("/sdcard/环境检测", "w+"):write([[
16818
Var #B6ED44D0|b6ed44d0|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|4d0
Var #B6ED44D4|b6ed44d4|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|4d4
Var #B6ED44DC|b6ed44dc|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|4dc
Var #B6ED44EC|b6ed44ec|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|4ec
Var #B6ED44F0|b6ed44f0|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|4f0
Var #B6ED44F4|b6ed44f4|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|4f4
Var #B6ED44F8|b6ed44f8|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|4f8
Var #B6ED44FC|b6ed44fc|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|4fc
Var #B6ED4500|b6ed4500|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|500
Var #B6ED4504|b6ed4504|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|504
Var #B6ED4508|b6ed4508|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|508
Var #B6ED450C|b6ed450c|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|50c
Var #B6ED4510|b6ed4510|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|510
Var #B6ED4528|b6ed4528|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|528
Var #B6ED4574|b6ed4574|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|574
Var #B6ED4580|b6ed4580|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|580
Var #B6ED4584|b6ed4584|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|584
Var #B6ED45D0|b6ed45d0|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|5d0
Var #B6ED481C|b6ed481c|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|81c
Var #B6ED483C|b6ed483c|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|83c
Var #B6ED484C|b6ed484c|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|84c
Var #B6ED485C|b6ed485c|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|85c
Var #B6ED4864|b6ed4864|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|864
Var #B6ED486C|b6ed486c|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|86c
Var #B6ED489C|b6ed489c|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|89c
Var #B6ED48A4|b6ed48a4|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|8a4
Var #B6ED48A8|b6ed48a8|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|8a8
Var #B6ED48AC|b6ed48ac|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|8ac
Var #B6ED48B0|b6ed48b0|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|8b0
Var #B6ED48B4|b6ed48b4|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|8b4
Var #B6ED48B8|b6ed48b8|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|8b8
Var #B6ED48BC|b6ed48bc|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|8bc
Var #B6ED48C0|b6ed48c0|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|8c0
Var #B6ED48C4|b6ed48c4|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|8c4
Var #B6ED48C8|b6ed48c8|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|8c8
Var #B6ED48CC|b6ed48cc|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|8cc
Var #B6ED48D0|b6ed48d0|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|8d0
Var #B6ED48D4|b6ed48d4|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|8d4
Var #B6ED4924|b6ed4924|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|924
Var #B6ED49D8|b6ed49d8|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|9d8
Var #B6ED49E4|b6ed49e4|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|9e4
Var #B6ED4A0C|b6ed4a0c|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|a0c
Var #B6ED4A4C|b6ed4a4c|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|a4c
Var #B6ED4A54|b6ed4a54|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|a54
Var #B6ED4A58|b6ed4a58|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|a58
Var #B6ED4A60|b6ed4a60|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|a60
Var #B6ED4A6C|b6ed4a6c|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|a6c
Var #B6ED4A78|b6ed4a78|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|a78
Var #B6ED4A84|b6ed4a84|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|a84
Var #B6ED4A88|b6ed4a88|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|a88
Var #B6ED4A8C|b6ed4a8c|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|a8c
Var #B6ED4AC0|b6ed4ac0|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|ac0
Var #B6ED4AD4|b6ed4ad4|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|ad4
Var #B6ED4ADC|b6ed4adc|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|adc
Var #B6ED4AE4|b6ed4ae4|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|ae4
Var #B6ED4AEC|b6ed4aec|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|aec
Var #B6ED4AF4|b6ed4af4|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|af4
Var #B6ED4AFC|b6ed4afc|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|afc
Var #B6ED4B04|b6ed4b04|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|b04
Var #B6ED4B0C|b6ed4b0c|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|b0c
Var #B6ED4B14|b6ed4b14|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|b14
Var #B6ED4B1C|b6ed4b1c|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|b1c
Var #B6ED4B24|b6ed4b24|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|b24
Var #B6ED4B30|b6ed4b30|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|b30
Var #B6ED5B5C|b6ed5b5c|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|1b5c
Var #B6ED5B64|b6ed5b64|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|1b64
Var #B6ED5B94|b6ed5b94|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|1b94
Var #B6ED5BA0|b6ed5ba0|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|1ba0
Var #B6ED5BDC|b6ed5bdc|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|1bdc
Var #B6ED5BE0|b6ed5be0|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|1be0
Var #B6ED5BE4|b6ed5be4|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|1be4
Var #B6ED5BE8|b6ed5be8|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|1be8
Var #B6ED5CE8|b6ed5ce8|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|1ce8
Var #B6ED5CF4|b6ed5cf4|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|1cf4
Var #B6ED5D00|b6ed5d00|4|0|1|0|0|0|rw-p|/data/app/~~fHl87aLpnDSkzF50VloL-w==/com.kiloo.subwaysurf-bWyBa6XpOqFTI3PNJeyeiQ==/lib/arm/libtersafe2.so:bss|1d00
]])
            gg.loadList("/sdcard/环境检测", gg.LOAD_VALUES)
            os.remove("/sdcard/环境检测")
            gg.alert("自动防开启成功")
            string.toMusic("欢迎使用云烛全防")
            break
          end
        end
        break
      end
    end
    if true then
      break
    end
  end
end
function Anti_module()
  if pcall(package_Anti_module) then
  else
    return Anti_module()
  end
end
---------------------语音播报↑↑↑

--------------------以上为自动防环境↑↑↑







-----------------------------配置1号↓
function 
bycy(FUNCTIONADD,TYPE,VALUE)
local SOMOD=gg.getRangesList("il2cpp.so")
if SOMOD[1]==nil then _error() else
gg.setValues({{address=SOMOD[1].start+FUNCTIONADD,flags=TYPE,value=VALUE}})
gg.setValues({{address=SOMOD[1].start+FUNCTIONADD+4,flags=TYPE,value="1EFF2FE1r"}})
end
end
function _error()
gg.alert([[
   开启失败


   失败原因：进程存储太小！
   
   
   解决方案：刷新进程后重启开启
]])
end

function S_Pointer(t_So, t_Offset, _bit)
	local function getRanges()
		local ranges = {}
		local t = gg.getRangesList('^/data/*.so*$')
		for i, v in pairs(t) do
			if v.type:sub(2, 2) == 'w' then
				table.insert(ranges, v)
			end
		end
		return ranges
	end
	local function Get_Address(N_So, Offset, ti_bit)
		local ti = gg.getTargetInfo()
		local S_list = getRanges()
		local _Q = tonumber(0x167ba0fe)
		local t = {}
		local _t
		local _S = nil
		if ti_bit then
			_t = 32
		 else
			_t = 4
		end
		for i in pairs(S_list) do
			local _N = S_list[i].internalName:gsub('^.*/', '')
			if N_So[1] == _N and N_So[2] == S_list[i].state then
				_S = S_list[i]
				break
			end
		end
		if _S then
			t[#t + 1] = {}
			t[#t].address = _S.start + Offset[1]
			t[#t].flags = _t
			if #Offset ~= 1 then
				for i = 2, #Offset do
					local S = gg.getValues(t)
					t = {}
					for _ in pairs(S) do
						if not ti.x64 then
							S[_].value = S[_].value & 0xFFFFFFFF
						end
						t[#t + 1] = {}
						t[#t].address = S[_].value + Offset[i]
						t[#t].flags = _t
					end
				end
			end
			_S = t[#t].address

		end
		return _S
	end
	local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit))
	return _A
end

function bycy(FUNCTIONADD,VALUE,SETRANGES)
local SOMOD=gg.getRangesList("il2cpp.so")
if SOMOD[1]==nil then gg.toast("开启失败") else
gg.setRanges(SETRANGES)
gg.searchNumber(FUNCTIONADD, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(FUNCTIONADD, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
local jg=gg.getResults(100)
local sl=gg.getResultCount()
for i=1, sl do
dzy=jg[i].address
gg.clearResults()
gg.addListItems({[1]={address=dzy,flags=gg.TYPE_DWORD,freeze=true,value=VALUE}})
end
gg.toast("开启成功")
end
end


function bycy(FUNCTIONADD,TYPE,VALUE)
local SOMOD=gg.getRangesList("il2cpp.so")
if SOMOD[1]==nil then _error() else
gg.setValues({{address=SOMOD[1].start+FUNCTIONADD,flags=TYPE,value=VALUE}})
gg.setValues({{address=SOMOD[1].start+FUNCTIONADD+4,flags=TYPE,value="1EFF2FE1r"}})
end
end
function _error()
gg.alert([[
   开启失败


   失败原因：进程存储太小！
   
   
   解决方案：刷新进程后重启开启
]])
end
---------------------------------完
--------------------------------配置2号
function readValue(address, flags) return gg.getValues({{address = address, flags = flags}})[1]["value"]end
 ms = { }
function setvalue ( add , value , falgs , dj )
	local WY = { } WY [ 1 ] = { } WY [ 1 ].address = add WY [ 1 ].value = value WY [ 1 ].flags = falgs
	if dj == true then
		WY [ 1 ].freeze = true gg.addListItems ( WY )
	else
		
	end
end
--------------------------------完
--------------------------------秒开配置↓
function YX_MkPointer(SONC,NCFW,PYL,TYPE,VALUE,NAME,DJ)
local Somod=gg.getRangesList(SONC)[1]
if Somod==nil then
gg.alert(NAME..'开启失败\n━━━━━━━━━━━━━━━\n错误原因:未找到相关内存\n解决方法:请重新选择游戏进程\n━━━━━━━━━━━━━━━')
else
function S_Pointer(t_So, t_Offset, _bit)
	local function getRanges()
		local ranges = {}
		local t = gg.getRangesList('^/data/*.so*$')
		for i, v in pairs(t) do
			if v.type:sub(2, 2) == 'w' then
				table.insert(ranges, v)
			end
		end
		return ranges
	end
	local function Get_Address(N_So, Offset, ti_bit)
		local ti = gg.getTargetInfo()
		local S_list = getRanges()
		local t = {}
		local _t
		local _S = nil
		if ti_bit then
			_t = 32
		else
			_t = 4
		end
		for i in pairs(S_list) do
			local _N = S_list[i].internalName:gsub('^.*/', '')
			if N_So[1] == _N and N_So[2] == S_list[i].state then
				_S = S_list[i]
				break
			end
		end
		if _S then
			t[#t + 1] = {}
			t[#t].address = _S.start + Offset[1]
			t[#t].flags = _t
			if #Offset ~= 1 then
				for i = 2, #Offset do
					local S = gg.getValues(t)
					t = {}
					for _ in pairs(S) do
						if not ti.x64 then
							S[_].value = S[_].value & 0xFFFFFFFF
						end
						t[#t + 1] = {}
						t[#t].address = S[_].value + Offset[i]
						t[#t].flags = _t
					end
				end
			end
			_S = t[#t].address
		end
		return _S
	end
	local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit))
	return _A
end
time=os.clock()
local DZT = S_Pointer({SONC, NCFW},{0x0})
local PY_offsets = PYL
for _,YX in pairs(PY_offsets) do
gg.addListItems({{address = DZT+YX, flags = TYPE, value = VALUE, freeze = DJ}})
end
local time=string.sub(os.clock()-time,0,5)
gg.alert(NAME..'️开启成功\n当前进程名称:'..gg.getTargetInfo().label..'\n当前进程包名:'..gg.getTargetPackage()..'\n总共耗时:'..time..'秒')
end
end
-----------------------------------------------秒开配置↑完
----------------------------------------------配置4号
function x云烛nb(云烛nb) gg.clearResults() gg.setRanges(云烛nb[1]["memory"]) if gg.searchNumber(云烛nb[3]["value"],云烛nb[3]["type"],false,gg.SIGN_EQUAL,0,-1)~=true then gg.searchAddress(云烛nb[3]["value"],-1,云烛nb[3]["type"]) end if gg.getResultCount()==0 then gg.toast(云烛nb[2]["name"].."开启失败")return end szxx=gg.getResults(gg.getResultCount()) szpd={} a=0 for i=4,#云烛nb do for s=1,#szxx do if szpd[s]~="false" then if gg.getValues({{address=szxx[s].address+云烛nb[i]["offset"],flags=云烛nb[i]["type"]}})[1].value+0~=云烛nb[i]["lv"]then szpd[s]="false" a=a+1 end end end end if a==#szxx then gg.toast(云烛nb[2]["name"].."开启失败")return end b=0 t={} for x=1,#云烛xg do if 云烛xg[x]["freeze"]==true then a=1 end for i=1,#szxx do if szpd[i]==nil then b=b+1 table.insert(t,{address=szxx[i].address+云烛xg[x]["offset"],flags=云烛xg[x]["type"],freeze=云烛xg[x]["freeze"],value=云烛xg[x]["value"]}) end end end gg.setValues(t) gg.addListItems(t) gg.clearResults() if a~=1 then gg.clearList()else a=nil end gg.toast(云烛nb[2]["name"].."开启成功,共修改了"..b.."条数据") end
--------------------------------------------------------------------完

-----------------------------------------------------------------基础指针配置↓
function SearchWrite(Search, Write, Type, Name)
    local time=os.clock()
    gg.clearResults()
    gg.setVisible(false)
    gg.searchNumber(Search[1][1], Type)
    local count = gg.getResultCount()
    local result = gg.getResults(count)
    gg.clearResults()
    local data = {}
    local base = Search[1][2] 
   if (count > 0) then
        for i, v in ipairs(result) do
            v.isUseful = true
        end
        for k=2, #Search do
            local tmp = {}
            local offset = Search[k][2] - base
            local num = Search[k][1]          
            for i, v in ipairs(result) do
                tmp[#tmp+1] = {}
                tmp[#tmp].address = v.address + offset
                tmp[#tmp].flags = v.flags
            end 
            tmp = gg.getValues(tmp)
            for i, v in ipairs(tmp) do
                if ( tostring(v.value) ~= tostring(num) ) then
                    result[i].isUseful = false
                end
            end
        end
  
        for i, v in ipairs(result) do
            if (v.isUseful) then
                data[#data+1] = v.address
            end
        end
        if (#data > 0) then
           gg.toast("搜索到"..#data.."条数据")
           local t = {}
           local base = Search[1][2]
           for i=1, #data do
               for k, w in ipairs(Write) do
                   offset = w[2] - base
                   t[#t+1] = {}
                   t[#t].address = data[i] + offset
                   t[#t].flags = Type
                   t[#t].value = w[1]
                   if (w[3] == true) then
                       local item = {}
                       item[#item+1] = t[#t]
                       item[#item].freeze = true
                       gg.addListItems(item)
                   end
               end
           end
           gg.setValues(t)
           local time=string.sub(os.clock()-time,0,5)
          gg.toast("开启成功 已修改:"..#t.."条数据 本次启动耗时:"..time.."秒")
          gg.addListItems(t)
        else
            gg.toast("开启失败未搜索到任何数据", false)
            return false
        end
    else
        gg.toast("开启失败未搜索到任何数据")
        return false
    end
end 
----------------------------------------------------------基础指针配置↑完

----------------------------------------------------------指针配置↓
function readPointer(name, offset, i)
	local re = gg.getRangesList(name)
	local x64 = gg.getTargetInfo().x64
	local va = {[true] = 32, [false] = 4}
	if re[i or 1] then
		local addr = re[i or 1].start + offset[1]
		for i = 2, #offset do
			addr = gg.getValues({{address = addr, flags = va[x64]}})
			if not x64 then
				addr[1].value = addr[1].value & 0xFFFFFFFF
			end
			addr = addr[1].value + offset[i]
		end
		return addr
	end
end
function gg.edits(addr, Table, name)
	local Table1 = {{}, {}}
	for k, v in ipairs(Table) do
		local value = {address = addr + v[3], value = v[1], flags = v[2], freeze = v[4]}
		if v[4] then
			Table1[2][#Table1[2] + 1] = value
		else
			Table1[1][#Table1[1] + 1] = value
		end
	end
	gg.addListItems(Table1[2])
	gg.setValues(Table1[1])
	gg.toast((name or "") .. "开启成功, 共修改" .. #Table .. "个值")
end
--------------------------------------------------------指针配置↑完

----------------------------------------------------------配置7号
function readPointer(name, offset, i)
	local re = gg.getRangesList(name)
	local x64 = gg.getTargetInfo().x64
	local va = {[true] = 32, [false] = 4}
	if re[i or 1] then
		local addr = re[i or 1].start + offset[1]
		for i = 2, #offset do
			addr = gg.getValues({{address = addr, flags = va[x64]}})
			if not x64 then
				addr[1].value = addr[1].value & 0xFFFFFFFF
			end
			addr = addr[1].value + offset[i]
		end
		return addr
	end
end

function gg.edits(addr, Table, name)
	local Table1 = {{}, {}}
	for k, v in ipairs(Table) do
		local value = {address = addr + v[3], value = v[1], flags = v[2], freeze = v[4]}
		if v[4] then
			Table1[2][#Table1[2] + 1] = value
		else
			Table1[1][#Table1[1] + 1] = value
		end
	end
	gg.addListItems(Table1[2])
	gg.setValues(Table1[1])
	gg.toast((name or "") .. "开启成功, 共修改" .. #Table .. "个值")
end
--------------------------------------------------------------配置7号完↑

----------------------------------------------------------配置8号↓
function Searssjc(FUNCTIONADD,VALUE,SETRANGES)
local SOMOD=gg.getRangesList("il2cpp.so")
if SOMOD[1]==nil then gg.toast("开启失败") else
gg.setRanges(SETRANGES)
gg.searchNumber(FUNCTIONADD, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(FUNCTIONADD, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
local jg=gg.getResults(100)
local sl=gg.getResultCount()
for i=1, sl do
dzy=jg[i].address
gg.clearResults()
gg.addListItems({[1]={address=dzy,flags=gg.TYPE_DWORD,freeze=true,value=VALUE}})
end
gg.toast("开启成功")
end
end
----------------------------------------------------------配置8号完↑
---------------------------------------------------------配置9号↓
j={}
xgz={}
ZY='Main'
gg.clearResults()  sj={}  xgz={}   function search(ss,lx,nc,dz1,dz2)  if ss~=nil then if lx~=nil then  if nc==nil then nc=32 end  gg.setRanges(nc)  if dz1==nil then dz1="-1" end  if dz2==nil then dz1="0" end  gg.searchNumber(ss,lx,false,gg.SIGN_EQUAL,dz1,dz2)  sl=gg.getResultCount()  if sl~=0 then  sj=gg.getResults(sl)   gg.clearResults()  else    end  else   end  else    end  end  function py1(value,lx,py)  if #sj~=nil then  z1={} z2={}  for i=1,#sj do  z1[1]={}  z1[1].address=sj[i].address+py  z1[1].flags=lx  z1=gg.getValues(z1)  if z1[1].value==value then  z2[#z2+1]={}  z2[#z2]=sj[i]  end end  sj=z2  z1={} z2={}   else    end  end  function py2(value,lx,py)  if #sj~=nil then  z1={} z2={}  for i=1,#sj do  z1[1]={}  z1[1].address=sj[i].address+py  z1[1].flags=lx  z1=gg.getValues(z1)  if z1[1].value~=value then  z2[#z2+1]={}  z2[#z2]=sj[i]  end end  sj=z2  z1={} z2={}   else   end  end  function xg1(value,lx,py,dj)  if #sj~=nil then  z={}  for i=1,#sj do  z[i]={}  z[i].address=sj[i].address+py  z[i].flags=lx  z[i].value=value  if dj==true then z[i].freeze=true end  end  if dj==true then  gg.addListItems(z)  else  gg.clearList()  gg.setValues(z)  end    else    end  end  function xg2(bz,value,lx,py,dj)  if #bz~=nil then  z={}  for i=1,#bz do  z[i]={}  z[i].address=bz[i].address+py  z[i].flags=lx  z[i].value=value  if dj==true then z[i].freeze=true end  end  if dj==true then  gg.addListItems(z)  else  gg.clearList()  gg.setValues(z)  end    else    end  end  function bc(bz)  if sj~=nil then  _ENV[bz]=sj  else    end
end        
------------------------------------------------------------配置9号完↑
------------------------------------------------------------配置10号↓






----------------------------------------------------------------配置10号完↑
--------------*-------*-*---------------------------------搜索冻结配置↓
function Searssjc(FUNCTIONADD,VALUE,SETRANGES)
local SOMOD=gg.getRangesList("il2cpp.so")
if SOMOD[1]==nil then gg.toast("开启失败") else
gg.setRanges(SETRANGES)
gg.searchNumber(FUNCTIONADD, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(FUNCTIONADD, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
local jg=gg.getResults(100)
local sl=gg.getResultCount()
for i=1, sl do
dzy=jg[i].address
gg.clearResults()
gg.addListItems({[1]={address=dzy,flags=gg.TYPE_DWORD,freeze=true,value=VALUE}})
end
gg.toast("开启成功")
end
end
---------------------------------------------搜索冻结模块↑完
-----------------------------------------------------------------------so配置↓
function bybycy(FUNCTIONADD,TYPE,VALUE)
local SOMOD=gg.getRangesList("il2cpp.so")
if SOMOD[1]==nil then gg.alert("开启失败\n━━━━━━━━━━━━━━━\n错误原因:未找到相关内存\n解决方法:请重新选择游戏进程\n━━━━━━━━━━━━━━━") else
local SOMOD1=gg.getRangesList("libil2cpp.so")[1].start
gg.setValues({{address=SOMOD1+FUNCTIONADD,flags=TYPE,value=VALUE}})
gg.setValues({{address=SOMOD1+FUNCTIONADD+4,flags=TYPE,value="100A00EEr"}})
gg.setValues({{address=SOMOD1+FUNCTIONADD+8,flags=TYPE,value="C00AB8EEr"}})
gg.setValues({{address=SOMOD1+FUNCTIONADD+12,flags=TYPE,value="100A10EEr"}})
gg.setValues({{address=SOMOD1+FUNCTIONADD+16,flags=TYPE,value="1EFF2FE1r"}})
end
end
---------------------------*----------------------------------------以上so配置

---------------------------------------------------------------------基址配置↓
function S_Pointer(t_So, t_Offset, _bit)
	local function getRanges()
		local ranges = {}
		local t = gg.getRangesList('^/data/*.so*$')
		for i, v in pairs(t) do
			if v.type:sub(2, 2) == 'w' then
				table.insert(ranges, v)
			end
		end
		return ranges
	end
	local function Get_Address(N_So, Offset, ti_bit)
		local ti = gg.getTargetInfo()
		local S_list = getRanges()
		local t = {}
		local _t
		local _S = nil
		if ti_bit then
			_t = 32
		else
			_t = 4
		end
		for i in pairs(S_list) do
			local _N = S_list[i].internalName:gsub('^.*/', '')
			if N_So[1] == _N and N_So[2] == S_list[i].state then
				_S = S_list[i]
				break
			end
		end
		if _S then
			t[#t + 1] = {}
			t[#t].address = _S.start + Offset[1]
			t[#t].flags = _t
			if #Offset ~= 1 then
				for i = 2, #Offset do
					local S = gg.getValues(t)
					t = {}
					for _ in pairs(S) do
						if not ti.x64 then
							S[_].value = S[_].value & 0xFFFFFFFF
						end
						t[#t + 1] = {}
						t[#t].address = S[_].value + Offset[i]
						t[#t].flags = _t
					end
				end
			end
			_S = t[#t].address
		end
		return _S
	end
	local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit))
	return _A
end
---------------------------------------------------------------------------以上为配置↑
--------------------------------------------------------防抓包
ffvpn = "https://vpn.uibe.edu.cn/por/phone_index.csp?rnd=0.23178949332658605#https%3A%2F%2Fvpn.uibe.edu.cn%2F"
x = tostring(gg.makeRequest(ffvpn))
if not x or not x:sub(1, 20) then
  gg.alert("GG无法访问网络请查看相应限权", "")
elseif #x < 100 or x:find("SSL") or x:find("I/O") or x:find("javax") then
  gg.alert("你已开启了NPN环境请勿用抓包���=�防抓包开启成功=�=�警告=�否则发现关闭使用权")
  for _FORV_3_ = 1, 3 do
    function AA(A0_325, A1_326, A2_327)
      local L3_328, L4_329, L5_330, L6_331
      L3_328 = 1
      L4_329 = 999999
      for _FORV_6_ = 1, 999999 do
      end
    end
    
    function BB()for _FORV_4_, _FORV_5_ in pairs({"999999", "0000000"}) do
        bytes = tonumber(_FORV_5_)
        AA(bytes, result1, result2)
      end
    end
    
    BB()
    print("网络请求警告:\n\n~~~~~ 警告 �~~~~~ \n检测到您正在使用恶意抓包软件破解脚本\n已自动删除原脚本\n请勿有违规行为\n~~~~~� 警告 �~~~~~ ")
  end
  for _FORV_3_ = 1, 10 do
    gg.setVisible(true)
    gg.setVisible(false)
  end
  while true do
    os.exit(gg.setVisible(true))
  end
end
string.toMusic("NPN环境开启成功")string.toMusic("正在检测环境，请稍等.....")
if gg.isHTTPdump() == false then
  string.toMusic("环境正常，正在开启脚本")
end
if gg.isHTTPdump() == true then
  gg.alert("环境异常，检测到你使用了抓包W\n正在退出脚本W")
  os.exit()
end
if gg.isHTTPdump() == "error" then
  gg.alert("请检查网络是否良好W")
end
string.toMusic("正在二次检测环境，请稍等.....")
if gg.isHTTPdump() == false then
  string.toMusic("环境正常，正在开启脚本")
end
if gg.isHTTPdump() == true then
  string.toMusic("环境异常，检测到你使用了抓包W\n正在退出脚本W")
  os.exit()
end
if gg.isHTTPdump() == "error" then
  string.toMusic("请检查网络是否良好W")
end
string.toMusic("开启成功正在连接脚本")if gg.isPackageInstalled("sstool.only.com.sstool") or gg.isPackageInstalled("sstool.only.com.sstool") or gg.isPackageInstalled("sstool.only.com.sstool") then
  gg.alert("检测到解密解密工具\n赶紧删除不然不给你进=")
  os.remove(string.gsub(gg.getFile(), "@", ""))
  gg.alert("检测到解密工具\n赶紧删除不然不给你进=")
  os.exit()
  while true do
  end
end
if gg.isPackageInstalled("com.fan.ggluadec") or gg.isPackageInstalled("com.fan.ggxxls") or gg.isPackageInstalled("com.fan.ggxxls-1.10") then
  gg.alert("花里胡哨的东西没用的!")
  os.exit()
  while true do
  end
end
if gg.isPackageInstalled("com.guoshi.httpcanary") then
  gg.alert("检测到你有黄鸟抓包!\n赶紧删除不然不给你进=")
  gg.processKill()
  os.exit()
  while true do
  end
end
if gg.isPackageInstalled("com.maggienorth.max.postdata") then
  gg.alert("检测到你有抓包软件!\n赶紧删除不然不给你进=")
  gg.processKill()
  os.exit()
  while true do
  end
end
if gg.isPackageInstalled("com.chenlun.autumncloudlua") then
  gg.alert("检测到你有云解密工具!\n赶紧删除不然不给你进=")
  gg.processKill()
  os.exit()
  while true do
  end
end
function panduan(A0_332)
  fille, err = io.open(A0_332)
  if fille == nil then
    do return false end
    return
  end
  return true
end
function panduan(A0_333)fille, err = io.open(A0_333)
  if fille == nil then
    do return false end
    return
  end
  return true
end
--------------------------------------------------------防抓包
---------------------------------------------------------------------------以下为模板配置↓
流光=true
if tonumber(device.width)==nil then
dwidth=1340
dheight=2300
else
dwidth=device.width
dheight=device.height
end
colorvs={}
changan = {} huiz = function() end
window = context:getSystemService("window") -- 获取窗口管理器
local function panduan(rec) fille,err = io.open(rec) if fille == nil then return false else return true end end
local function checkimg(tmp,ii)
if panduan("/sdcard/长安/图片/"..tmp) ~= true then
gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
luajava.download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..tmp,"/sdcard/长安/图片/"..tmp)
else
if file.length("/sdcard/长安/图片/"..tmp) <= 1 then
gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
luajava.download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..tmp,"/sdcard/长安/图片/"..tmp)
end
end
if panduan("/sdcard/长安/图片/"..tmp) ~= true then
gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
luajava.download("https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/"..tmp,"/sdcard/长安/图片/"..tmp)
else
	if file.length("/sdcard/长安/图片/"..tmp) <= 1 then
gg.toast("正在下载资源"..ii.."/"..#ckimg.."\n请耐心等待")
luajava.download("https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/"..tmp,"/sdcard/长安/图片/"..tmp)
end
end
end
ckimg = {
'xf2.zip'	
}

for i = 1,#ckimg do
jindu = i
checkimg(ckimg[i],i)
gg.toast("正在加载资源")
end
if panduan("/sdcard/长安/图片/Shimmer2.dex")~=true then
	file.unzip("/sdcard/长安/图片/xf2.zip","/sdcard/长安/图片/")
end
dex.loadfile('/sdcard/长安/图片/support.dex')
if 流光 then
shimmer=dex.loadfile('/sdcard/长安/图片/Shimmer2.dex')
import "com.romainpiel.shimmer.Shimmer"
import "com.romainpiel.shimmer.ShimmerTextView"
end
local function 获取图片2(txt)
txt = string.url(txt,"de")
ntxt = string.sub(string.gsub(txt,"/","-"),-10,-1)
if string.find(tostring(txt),"http") ~= nil then
if panduan("/sdcard/长安/图片/"..ntxt) == false then
file.download(txt,"/sdcard/长安/图片/"..ntxt)
else
	if file.length("/sdcard/长安/图片/"..ntxt) <= 1 then
file.download(txt,"/sdcard/长安/图片/"..ntxt)
end
end
txt = "/sdcard/长安/图片/"..ntxt
end
return luajava.getBitmap(txt)
end
local function getBit(x)
return 获取图片2("/sdcard/长安/图片/"..x)
end
local reso=context:getResources()
local function getP(bitm,radi)
local lixin = RoundedBitmapDrawableFactory:create(reso,获取图片2(bitm))
lixin:setCornerRadius(radi)
lixin:setAntiAlias(true)
return lixin
end
local function newbg(gtvb1,gtvb4,gtvb5,g1,g2,g3,g4)
local jianbians = luajava.loadlayout({
GradientDrawable,
color = 0xff000000,
gradientType = GradientDrawable.LINEAR_GRADIENT,
orientation = GradientDrawable.Orientation.TOP_BOTTOM ,
})
jianbians:setColors(gtvb1)
jianbians:setStroke(gtvb4,gtvb5)--边框宽度和颜色
jianbians:setCornerRadii({g1,g1,g2,g2,g3,g3,g4,g4})
return jianbians
end
local function 获取图片(txt)
txt = string.url(txt,"de")
ntxt = string.sub(string.gsub(txt,"/","-"),-10,-1)
if string.find(tostring(txt),"http") ~= nil then
if panduan("/sdcard/长安/图片/"..ntxt) == false then
file.download(txt,"/sdcard/长安/图片/"..ntxt)
else
	if file.length("/sdcard/长安/图片/"..ntxt) <= 1 then
file.download(txt,"/sdcard/长安/图片/"..ntxt)
end
end
txt = "/sdcard/长安/图片/"..ntxt
end
return luajava.getBitmapDrawable(txt)
end
local function getRes(x)
return 获取图片("/sdcard/长安/图片/"..x)
end
local YoYoImpl = luajava.getYoYoImpl()
local vibra = context:getSystemService(Context.VIBRATOR_SERVICE)
local function getLayoutParams2()
LayoutParams2 = WindowManager.LayoutParams
layoutParams2 = luajava.new(LayoutParams2)
if (Build.VERSION.SDK_INT >= 26) then -- 设置悬浮窗方式
layoutParams2.type = LayoutParams2.TYPE_APPLICATION_OVERLAY
else
	layoutParams2.type = LayoutParams2.TYPE_PHONE
end

layoutParams2.format = PixelFormat.RGBA_8888 -- 设置背景
layoutParams2.flags = LayoutParams2.FLAG_NOT_TOUCH_MODAL -- 焦点设置Finish
layoutParams2.gravity = Gravity.CENTER -- 重力设置
layoutParams2.width = LayoutParams2.MATCH_PARENT -- 布局宽度
layoutParams2.height = LayoutParams2.MATCH_PARENT -- 布局高度

return layoutParams2
end

local function getLayoutParams()
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
local function particle()
local webView = luajava.webView(function(webView)
	webView:loadData([[<html>

<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">

    <title>炫彩流光圆环加载动画</title>
    <style>
    	
    	*{
    /* 初始化 取消内外边距 */
    margin: 0;
    padding: 0;
}
.container{
    width: 100%;
    /* 100%窗口高度 */
    height: 130vw;
    /* 弹性布局 水平垂直居中 */
    display: flex;
    justify-content: center;
    align-items: center;
    /* 相对定位 */
    position: relative;
    background-color: #;
}
.circle{
    /* 绝对定位 */
    position: absolute;
    display: flex;
    justify-content: center;
    align-items: center;
    width: 40px;
    height: 40px;
    border-radius: 50%;
    /* 渐变背景 */
    background: linear-gradient(0deg,
#FF0000,
                #000000 30%,
                #000000 60%,
                #ff0000 100%);
    /* 执行动画：动画名 时长 线性的 无限次播放 */
    animation: circleRotate 1s linear infinite;
}
/* 发光效果 */
.circle::before{
    content: "";
    position: absolute;
    width: 40px;
    height: 40px;
    border-radius: 50%;
    /* 渐变背景 */
    background: linear-gradient(0deg,
                #FF0000,
                #000000 30%,
                #000000 60%,
                #ff0000 100%);
    /* 模糊 */
    filter: blur(8px);
}
/* 黑圆 */
.circle::after{
    content: "";
    position: absolute;
    width: 34px;
    height: 34px;
    border-radius: 50%;
    background: #000000;
}
span{
    color: #fff;
    position: absolute;
}

/* 定义动画 */
@keyframes circleRotate {
    0%{
        transform: rotate(0deg);
    }
    100%{
        transform: rotate(360deg);
    }
}
    </style>
</head>

<body>
    <div class="container">
        <div class="circle"></div>
        <span></span>
    </div>
</body>

</html>]], 'text/html', 'UTF-8')
	webView:setBackgroundColor(0x0)
	end)
return webView
end
parti=particle()
显2=false
function 隐藏2()
显2=true
chuangk:setVisibility(View.GONE)
control2:setVisibility(View.GONE)
smallc:setVisibility(View.VISIBLE)
end
function 显示2()
显2=false
mainLayoutParams.x=20
window:updateViewLayout(floatWindow, mainLayoutParams)

if 显示==1 then
	chuangk:setVisibility(View.VISIBLE)
	smallc:setVisibility(View.GONE)
else
	control2:setVisibility(View.VISIBLE)
	smallc:setVisibility(View.GONE)
	隐藏()
end
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
if mainLayoutParams.x<=0 then
	mainLayoutParams.x=0
end
mainLayoutParams.y = tonumber(y) + (event:getRawY() - RawY)
window:updateViewLayout(floatWindow, mainLayoutParams)
elseif Action == MotionEvent.ACTION_UP then
mainLayoutParams.x = tonumber(x) + (event:getRawX() - RawX)
if mainLayoutParams.x<=0 then
	mainLayoutParams.x=0
	if 显示==0 and 显2==false then 隐藏2() end
end
if mainLayoutParams.x>=20 then
	if 显2==true then 显示2() end
end
mainLayoutParams.y = tonumber(y) + (event:getRawY() - RawY)
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
jianbians:setStroke(gtvb4,gtvb5)--边框宽度和颜色
return jianbians
end
mainLayoutParams = getLayoutParams()

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
gg.setVisible(false)
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

function getJMselect()
local selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, getRes('jian'))
selector:addState({
	-android.R.attr.state_pressed
}, getVerticalBG({0x00ffffff,0x00ffffff},20,2,0xffff0000))
return selector
end
changan.menu = function(views)
if isswitch then
return false
end

isswitch = true
local layout = {
		'ui.ViewPager',
		layout_height='match_parent',
		layout_width='match_parent',
		focusable="false",
		focusableInTouchMode="false",
	}
	cebian={
		LinearLayout,
		onClick=function() end,
			onTouch=hanshu,
		layout_height="match_parent",
		layout_width="60dp",
		orientation="vertical",
		gravity="center_horizontal",
		layout_weight=1,
		}
		jian=getRes('jian')
		jmselect={}
		
	for i=1,#stab do
		jmselect[i]=getJMselect()
if 流光 then
		_ENV["jm"..i..'t']=luajava.loadlayout{ShimmerTextView,
			text=stab[i],
			textSize="13sp",
			textColor="#161616",
			reflectionColor='#ff0000',
			gravity='center',
			layout_height='20dp',
			layout_width='match_parent',
			background=jmselect[i],
			}
else
	_ENV["jm"..i..'t']=luajava.loadlayout{TextView,
			text=stab[i],
			textSize="13sp",
			textColor="#161616",
			gravity='center',
			layout_height='20dp',
			layout_width='match_parent',
			background=jmselect[i],
			}
end
		_ENV["jm"..i]=luajava.loadlayout({
			LinearLayout,
			layout_height="wrap_content",
			layout_width="60dp",
			gravity="center",
			orientation="vertical",
			onClick=function() 切换(i) end,
			onTouch=hanshu,
			padding={'0dp','4dp','0dp','4dp'},
			--onTouch=hanshu,
			_ENV["jm"..i..'t']
		})
		cebian[#cebian+1]=_ENV["jm"..i]
		tmp={
			LinearLayout,
			layout_height="wrap_content",
			layout_width="match_parent",
			orientation="vertical",
			
		}
		for k=1,#views[i] do
			
			tmp[#tmp+1]=views[i][k]
		end
		_ENV["layout"..i]={
			ScrollView,
			--orientation="vertical",
			layout_height="match_parent",
			layout_width="match_parent",
			tmp,
			--onTouch=Gundong,
			padding={"8dp","3dp","8dp","3dp"},
		}
		layout[#layout + 1] =_ENV["layout"..i]
	end
	当前ui=1
	--jm1t:setTextColor(0xffff0000)
	jm1t:setBackground(jian)
	ViewPager = ui.ViewPager(layout)
	luajava.setInterface(ViewPager, 'addOnPageChangeListener', 
		{onPageSelected=function(view)
		view=tonumber(string.sub(view,1,1))
		for i=1,#stab do
			--_ENV["jm"..i .."t"]:setTextColor(0xffffffff)
			_ENV["jm".. i .."t"]:setBackground(jmselect[i])
		end
		当前ui=view+1
		--滚(当前ui)
		--_ENV["jm"..view+1 .."t"]:setTextColor(0xffff0000)
		_ENV["jm"..view+1 .."t"]:setBackground(jian)
		end})
	if 流光 then
	stit=luajava.loadlayout{ShimmerTextView,
				textSize="18sp",
				gravity='center_horizontal',
				layout_width='match_parent',
				shimmerEnable='true',
				reflectionColor="#ff0000";
				textColor="#151515",
				text=右上角标题,
	}
	else
		stit=luajava.loadlayout{TextView,
				textSize="18sp",
				gravity='center_horizontal',
				layout_width='match_parent',
				textColor="#151515",
				text=右上角标题,
	}
	end
	ckou={
		LinearLayout,
		layout_height="wrap_content",
		layout_width="wrap_content",
		elevation='3dp',
		layout_marginLeft='3dp',
		layout_marginRight='3dp',
		layout_marginBottom='3dp',
		layout_marginTop='3dp',
		background=newbg({0x70030507,0x70030507},0,0xffffffff,25,25,25,25),----功能背景颜色
		{LinearLayout,
			id=luajava.newId('cbscro'),
			onClick=function() end,
			onTouch=hanshu,
			elevation='3dp',
		layout_marginLeft='0dp',
		layout_marginRight='3dp',
		layout_marginBottom='0dp',
		layout_marginTop='0dp',
		background=newbg({0x70000000,0x70000000},0,0xffffffff,25,25,25,25),---翻页键的背景颜色
			layout_height="match_parent",
			orientation='vertical',
			layout_width='60dp',
			cebian,
			{
	FrameLayout,
	layout_height='105dp',
	layout_width='60dp',
	padding={'0dp','0dp','0dp','5dp'},
	{LinearLayout,
	layout_height='wrap_content',
	layout_width='60dp',
	layout_gravity='center_horizontal',
	gravity='center',
	id='canv',
	onClick=function() end,
	onTouch=hanshu,
	},
	{LinearLayout,
	layout_height='68dp',
	layout_width='50dp',
	layout_gravity='bottom|center_horizontal',
	onClick=function() end,
	onTouch=hanshu,
	},
}
		},
		ViewPager,
	}



extralis={LinearLayout,
	layout_height="wrap_content",
	layout_width="match_parent",
	id=luajava.newId("extralist"),
	orientation="vertical",
	}
for k,v in pairs(ewsv) do
	extralis[#extralis+1]=ewsv[k]
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
topbar = luajava.loadlayout({
	LinearLayout,
	layout_width="fill_parent",
	layout_height="35dp",
	background=getCorner({0xff000000,0xff000000},15,0,0xff232323,20,20,0,0),---顶边颜色
	onClick=function() end,
	onTouch=hanshu,
	{LinearLayout,
	layout_width="35dp",
	layout_height="match_parent",
	gravity="center",
	{
			LinearLayout,
			gravity="center",
			background=获取图片(悬浮窗图标),
			layout_width = "20dp",
			layout_height = "20dp",
			layout_marginLeft = "5dp",
			onClick = 隐藏,
			onTouch = hanshu,
			
		}
	},
	{LinearLayout,
	layout_width="wrap_content",
	layout_height="match_parent",
	gravity="center",
	{
			LinearLayout,
			id='cvv',
			layout_width='100dp',
			layout_height='match_parent',
			gravity="center",
		}
	},
	{LinearLayout,
		layout_width="fill_parent",
		layout_marginLeft='-80dp',
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
		id='tops',
		background=getVerticalBG({控件颜色,控件颜色},20)
		
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
			id="lockui",
			src = getRes("heis"),
			background=getVerticalBG({0xffE6E6E6,0xffE6E6E6},90),
			layout_width = "20dp",
			layout_height = "20dp",
			layout_marginRight = "5dp",
			onClick = uiLock,
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
})

floatWindow = {
	FrameLayout,
	id = "motion",
	elevation = "10dp",
	onTouch = hanshu,
	onClick = function() end,
	layout_width = "wrap_content",
	orientation = "vertical",
	gravity = "center_vertical",
	layout_height = "wrap_content",
	{
	LinearLayout,
	id = "chuangk",
	visibility = "gone",
	layout_height='match_parent',
	layout_width='match_parent',
	orientation = "vertical",
	elevation='2dp',
		layout_marginLeft='2dp',
		layout_marginRight='2dp',
		layout_marginBottom='2dp',
		layout_marginTop='2dp',
		background=newbg({0xff000000,0x70353535},0,0xffffffff,25,25,25,25),
		topbar,
		{LinearLayout,
		layout_width='match_parent',
		layout_height='40dp',
		{LinearLayout,
			layout_weight=1,
				layout_height='34dp',
				layout_marginTop='3dp',
				layout_marginBottom='3dp',
				layout_marginLeft='3dp',
				layout_marginRight='3dp',
				layout_width='match_parent',
				
				background=newbg({0x70353535,0x70353535},0,0xffffffff,10,10,10,10),
				padding='3dp',
				elevation='2dp',
				{ScrollView,
					id='ggscro',
					layout_height='match_parent',
					layout_width='match_parent',
					{LinearLayout,
						id='gggscro',
						orientation='vertical',
						layout_width='match_parent',
						layout_height='wrap_content',
					}
				},{EditText,
					visibility='gone',
					id=luajava.newId("tosearch"),
					layout_height='match_parent',
					layout_width='match_parent',
					padding='-8dp',
					hint = "请输入需要搜索的音乐关键词",
					gravity = "center",
					textColor='#000000',
							layout_marginLeft="0dp",
							textSize = "12sp",
							background = getVerticalBG({
								0x00262626,0x00262626
							},15,5,0x00ffffff),
				}
			},{ImageView,
				id='musici',
				layout_width='34dp',
				layout_height='match_parent',
				gravity='center',
				elevation='2dp',
		layout_marginTop='3dp',
				layout_marginBottom='3dp',
				layout_marginLeft='3dp',
				layout_marginRight='3dp',
		background=newbg({0x70353535,0x70353535},0,0xffffffff,10,10,10,10),
				src=getRes('bm_music'),
				padding='4dp',
				onTouch=hanshu,onClick=searchmenu
				
			},{LinearLayout,
				layout_width='80dp',
				layout_height='match_parent',
				gravity='center',
				elevation='2dp',
		layout_marginTop='3dp',
				layout_marginBottom='3dp',
				layout_marginLeft='3dp',
				layout_marginRight='3dp',
		background=newbg({0x70353535,0x70353535},0,0xffffffff,10,10,10,10),
				stit
			}
		--topbar
	},
	ckou,

},
	{LinearLayout,
	visibility="gone",
	id=luajava.newId("extra"),
	layout_height='match_parent',
	layout_width='match_parent',
	orientation="vertical",
	background=getVerticalBG({0xffffffff,0xffffffff},25,2,0xaa161616),
	
		{LinearLayout,
			layout_width="match_parent",
			layout_height="40dp",
			background=getCorner({0xff161616,0xff161616},25,nil,nil,25,25,0,0),
			onClick=function() end,
			onTouch=hanshu,
			gravity="center_vertical",
			{ImageView,
				id=luajava.newId("backv"),
				layout_height="34dp",
				layout_width="34dp",
				src=getRes("opoback"),
				background=getVerticalBG({0x00ffffff,0x00ffffff},360,10,0xffffffff),
				padding="8dp",
				onClick=关闭窗口,
				layout_marginLeft="10dp",
			},
			{TextView,
				id=luajava.newId("extrat"),
				text="标题",
				layout_height="match_parent",
				layout_width="match_parent",
				layout_weight=1,
				gravity="center",
			},
		{ImageView,
				id=luajava.newId("suov"),
				layout_height="34dp",
				layout_width="34dp",
				src=getRes("heix"),
				background=getVerticalBG({0x00ffffff,0x00ffffff},360,10,0xffffffff),
				padding="10dp",
				onClick=隐藏,
				layout_marginRight="10dp",
			}
		},
	{ScrollView,
	padding="10dp",
	layout_height="match_parent",
	layout_width="match_parent",
	extralis
	}
	},
	{
		ImageView,
		id = "control2",
		background = 获取图片(悬浮窗图标),
		layout_width = "40dp",
		layout_height = "40dp",
		onTouch = hanshu,
		onClick = 隐藏,
	},{LinearLayout,
	id="smallc",
	visibility="gone",
	onClick=显示2,
	onTouch=hanshu,
	layout_height="56dp",
	layout_width="20dp",
	gravity="center",
	background=getCorner({0x88161616,0x88161616},12,0,0xff232323,0,35,35,0),
		
	},{FrameLayout,
	id='reme',
	layout_height='match_parent',
	layout_width='match_parent',
	elevation='3dp',
	{
			ImageView,
			id="sf",
			padding = "2dp",
			src = getRes("sscoR"),
			layout_width = "30dp",
			layout_height = "30dp",
			layout_marginRight = "0dp",
			layout_marginBottom = "0dp",
			layout_gravity = "right|bottom",
			onClick = function() end,
			onTouch = suofang,
		}}
}
local function invoke()
local ok
local RawX, RawY, x, y
mainLayoutParams = getLayoutParams()
mainLayoutParams.x = 10
mainLayoutParams.y = dheight/4
floatWindow = luajava.loadlayout(floatWindow)
local function invoke2()
window:addView(floatWindow, mainLayoutParams)
canv:addView(parti)
end
local runnable = luajava.getRunnable(invoke2)
local handler = luajava.getHandler()
handler:post(runnable)

local isMove


end

invoke(swib1,swib2)
gg.setVisible(false)
musici:setColorFilter(0xffFF0F00)
luajava.getIdView("backv"):setColorFilter(控件颜色)
luajava.getIdView("suov"):setColorFilter(控件颜色)
luajava.getIdView("tosearch"):setHintTextColor(控件颜色)

隐藏()
if 流光 then
shimmer = Shimmer();
luajava.runUiThread(function()
  shimmer:setDuration(2000)
  shimmer:setStartDelay(50)
  shimmer:start(stit)
  for i=1,#stab do
  	shimmer:start(_ENV["jm"..i..'t'])
  end
end)
end
setOnExitListener(function()
	
	tuichu=1
	luajava.setFloatingWindowHide(false)
	luajava.post(function()
	window:removeView(floatWindow)
	end)
luajava.setFloatingWindowHide(false)
end)
luajava.setFloatingWindowHide(true)
qhkai = 0
qiehuan = function()
if qhkai == 0 then
qhkai = 1
draw.remove()
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
luajava.runUiThread(function() floatWindow:setVisibility(View.VISIBLE) end)
luajava.runUiThread(function()
	changan.controlBig(floatWindow,400)
	end)

end
end
if loadBox~=nil then loadBox['关闭']() end
huiz()
if ylfunc~=nil then ylfunc() end
while true do
if tuichu == 1 then break end
if 音量键 then
jianting3(qiehuan)
end
gg.sleep(300)
end

end
isLocked=false
inlock=getRes("heisuo")
uiunlock=getRes("heis")
function uiLock()
vibra:vibrate(15)
if isLocked==false then
	isLocked=true
	luajava.newThread(function()
		gg.toast("UI缩放已锁定")
	end):start()
	lockui:setImageDrawable(inlock)
else
	isLocked=false
	luajava.newThread(function()
		gg.toast("UI缩放已解锁")
	end):start()
	lockui:setImageDrawable(uiunlock)
end
end
function tiaose()
if 颜色表==nil then return 0 end
local tt={
	LinearLayout,
	gravity="center_vertical",
	layout_height="wrap_content",
	layout_width='40dp'
}
for i=1,#颜色表 do
	tt[#tt+1]={
		LinearLayout,
		layout_height="33dp",
		layout_width="33dp",
		gravity="center",
		id=luajava.newId("yans"..i),
		onClick=function() xuanse(i) end,
		{LinearLayout,
		layout_width="25dp",
		layout_height="25dp",
		background=getVerticalBG({颜色表[i],颜色表[i]},15)
		}
	}
end
local t=luajava.loadlayout{
	HorizontalScrollView,
	layout_height="40dp",
	layout_width="wrap_content",
	tt
}
return t
end
xze2=getVerticalBG({0x00ffffff,0x00ffffff},15,3,0xff232323)

xze=getVerticalBG({0x00ffffff,0x00ffffff},15,3,0xff232323)
function xuanse(x)
for i=1,#颜色表 do
	luajava.getIdValue("yans"..i):setBackground(empty)
end
luajava.getIdValue("yans"..x):setBackground(xze)
changeColor(颜色表[x])
end
function 滚(x)
luajava.runUiThread(function()
local cbsc=luajava.getIdView("cbscro")
local targetLeft = _ENV["jm"..x]:getTop()/2

cbsc:smoothScrollTo(0,targetLeft);
end)
end
function 切换(x)
窗口=false
luajava.runUiThread(function()
	local searchUI = luajava.getIdView("tosearch")
	if x==5 then
		searchUI:setVisibility(View.VISIBLE)
ggscro:setVisibility(View.GONE)
else
	searchUI:setVisibility(View.GONE)
ggscro:setVisibility(View.VISIBLE)

	end
	当前ui=x
	ViewPager:setCurrentItem(x-1)
end)
end
显示=0
function 隐藏()
if 显2==true then return 0 end
luajava.runUiThread(function()
	if 显示 == 0 then
	control2:setVisibility(View.GONE)
	sf:setVisibility(View.VISIBLE)
	显示 = 1
	if 窗口 then
	luajava.getIdView("extra"):setVisibility(View.VISIBLE)
	else
	chuangk:setVisibility(View.VISIBLE)
	end
	YoYoImpl:with("ZoomInLeft"):duration(300):playOn(floatWindow)
	floatWindow:setBackground(beij)
	mainLayoutParams.height = mubx
		mainLayoutParams.width = muby
	mainLayoutParams.flags = LayoutParams.FLAG_NOT_TOUCH_MODAL
	window : updateViewLayout (floatWindow , mainLayoutParams)
	else
		sf:setVisibility(View.GONE)
	if tuichuing then return 0 end
	tuichuing=true
	luajava.newThread(function()
	luajava.runUiThread(function()
		YoYoImpl:with("FadeOut"):duration(300):playOn(floatWindow)
		end)
	gg.sleep(300)
	luajava.runUiThread(function()
	chuangk:setVisibility(View.GONE)
	floatWindow:setBackground(beij2)
	YoYoImpl:with("FadeIn"):duration(200):playOn(floatWindow)
	luajava.getIdView("extra"):setVisibility(View.GONE)
	mainLayoutParams.width = LayoutParams.WRAP_CONTENT -- 布局宽度
	mainLayoutParams.height = LayoutParams.WRAP_CONTENT -- 布局高度
	control2:setVisibility(View.VISIBLE) 显示 = 0
	mainLayoutParams.flags = LayoutParams.FLAG_NOT_FOCUSABLE
	window : updateViewLayout (floatWindow , mainLayoutParams)
	end)
	tuichuing=false
	end):start()
end
	end)
end
function 打开窗口(x)
if ewsv[x]==nil then
	gg.alert("没有窗口“"..x.."”\n请检查是否写错了名字或者没创建")
	return 0
end
luajava.runUiThread(function()
	窗口=true
	chuangk:setVisibility(View.GONE)
	luajava.getIdView("extra"):setVisibility(View.VISIBLE)
	for k,v in pairs(ewsv) do
		
		if k~=x then v:setVisibility(View.GONE) end
	end
	luajava.getIdView("extrat"):setText(x)
	ewsv[x]:setVisibility(View.VISIBLE)
end)
end
function 关闭窗口()
	luajava.getIdView("extra"):setVisibility(View.GONE)
	chuangk:setVisibility(View.VISIBLE)
	窗口=false
	vibra:vibrate(10)
end
ewsv={}
function 创建窗口(name,v)
if type(v)~="table" then gg.alert("窗口"..name.."格式错误") end
local t={
	LinearLayout,
	orientation="vertical",
	visibility="gone",
	layout_width="match_parent",
}
	for i=1,#v do
		t[#t+1]=v[i]
	end
	ewsv[name]=luajava.loadlayout(t)
	
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
uiadtext(localname.." </font><font color='#ff0000'>已开启.","#161616")

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
uiadtext(localname.." </font><font color='#B9342D'>已关闭.","#545454")

end
end
if localname=="摇一摇隐藏UI" then yyfunc=outfunc end
if localname=="音量键隐藏UI" then ylfunc=outfunc end
return outfunc
end
end
function uiadtext(txt,color,size)
if not txt then txt = "" end
if not color then color = "#000000" end
if not size then size = "10sp" end
local tmp=luajava.loadlayout(
	{
		TextView,
		text = string.fromHtml(" <font color=#545454>"..getTimeStamp(os.time()).."</font> <font color="..color..">"..txt.."</font>"),
		textSize = size,
		--textColor = color,
		gravity="left",
		layout_width = "wrap_content",
	})
luajava.runUiThread (function ()
	local searchUI = luajava.getIdView("tosearch")
	searchUI:setVisibility(View.GONE)
ggscro:setVisibility(View.VISIBLE)
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
function searchmenu()
luajava.runUiThread (function ()
	local searchUI = luajava.getIdView("tosearch")
	if tonumber(tostring(searchUI: getVisibility ())) == 8.0 then
	searchUI:setVisibility(View.VISIBLE)
ggscro:setVisibility(View.GONE)

	else
		luajava.newThread(searchmusic):start()
	end
	end)
end
function getTimeStamp(t)
local str = os.date("%m-%d %H:%M:%S",t)
return str
end
function getShape(tmp0,tmp1,tmp2,tmp3)
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(tmp0)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors(tmp1)
jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
jianbians:setStroke(7,tmp3)--边框宽度和颜色
return jianbians
end
function getShape2(tmp0,tmp1,tmp2,tmp3)
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(tmp0)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors(tmp1)
jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
jianbians:setStroke(24,tmp3)--边框宽度和颜色
return jianbians
end
local ui = require('ui')

function changan.switch(name,func1,func2,miaoshu)
if not checkbg then
	checkbg = getShape2(
	45,
	{
		控件颜色,控件颜色
	},
	4,控件颜色)
checkbga = getShape2(
	45,
	{
		0xffaaaaaa,0xffaaaaaa
	},
	4,0xffaaaaaa)
switchbg1 = getShape(
	45,
	{
		0xffffffff,0xffffffff
	},
	4,0xffffffff)
switchbg2 = luajava.loadlayout {
			GradientDrawable ,
			color = "#ffffff" ,
			cornerRadius = 360
		}
end
local nid = name..guid()
local func = 开关3(name,func1,func2,nid)
if not name then name = "未设置" end
switches["1s"..nid] = luajava.loadlayout {
	FrameLayout,
	layout_width = '40dp',
	layout_height = '20dp',
	gravity = "center_vertical",
	padding = {
		"1dp","0dp","1dp","0dp"
	},
	{
		LinearLayout,
		layout_gravity = "left|center_vertical",
		id = luajava.newId(nid.."k"),
		background = switchbg1,
		onClick = function() luajava.newThread(function() func() end):start() end,
		layout_width = '17dp',
		layout_height = '17dp',
		
	},
}
switches["2s"..nid] = luajava.loadlayout {
	FrameLayout,
	onClick = function() luajava.newThread(function() func() end):start() end,
	layout_width = '40dp',
	layout_height = '20dp',
	gravity = "center_vertical",
	padding = {
		"1dp","0dp","1dp","0dp"
	}
	, {
		LinearLayout,
		visibility = "gone",
		layout_gravity = "right|center_vertical",
		id = luajava.newId(nid.."g"),
		background = switchbg2,
		onClick = function() luajava.newThread(function() func() end):start() end,
		layout_width = '17dp',
		layout_height = '17dp',

		
	}
}
local rest = luajava.loadlayout({
	LinearLayout,
	elevation = "5dp",
	layout_width = 'fill_parent',
	layout_height = "48dp",
	gravity = "center_vertical",
	{
		LinearLayout,
		layout_width = 'fill_parent',
		layout_height = "40dp",
		gravity = "center_vertical",
		background = luajava.loadlayout {
			GradientDrawable ,
			color = 0xaa161616 ,
			cornerRadius = 35
		} ,padding = {
		"0dp","0dp","6dp","0dp"
	},
		{
			TextView,
			gravity = "top",
			text = name,
			textColor = "#d7d7d7",
			textSize = "13sp",
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
			textSize = "11sp",
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
switchs={}

suofang = function(v, event)
if isLocked then hanshu(v,event) return 0 end
local Action = event:getAction()

if Action == MotionEvent.ACTION_DOWN then
isMove = false
RawX = event:getRawX()
RawY = event:getRawY()
hx = mainLayoutParams.height
hy = mainLayoutParams.width
if hx == 0 or hx==-2 then hx = 810 hy = 1150 end
elseif Action == MotionEvent.ACTION_MOVE then
isMove = true
mubx = tonumber(hx) + (event:getRawY() - RawY)
if mubx >= 250 and mubx <= 11100 then
mainLayoutParams.height = mubx
end
muby = tonumber(hy) + (event:getRawX() - RawX)
if muby >= 250 and muby <= 24500 then
mainLayoutParams.width = muby
end
if muby<=250 and mubx<=250 then muby=250 mubx=250
--隐藏()
return 0 end
window:updateViewLayout(floatWindow, mainLayoutParams)
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
	luajava.getIdValue(nid.."t"):setTextColor(控件颜色)
	luajava.getIdValue(nid.."p"):setColorFilter(控件颜色)
	colorvs[nid.."p"]={true,"img"}
	colorvs[nid.."t"]={true,"txt"}
	--changan.controlWater(switchs[nid],300)
	end)
_ENV[name] = "开"
pcall(func1)
uiadtext(localname.." </font><font color='#ff0000'>已开启.","#161616")

else
	vibra:vibrate(9)
luajava.runUiThread(function()
	luajava.getIdValue(nid.."t"):setTextColor(0xff000000)
	luajava.getIdValue(nid.."p"):setColorFilter(0xff000000)
	colorvs[nid.."p"]={false,"img"}
	colorvs[nid.."t"]={false,"txt"}
	--changan.controlWater(switchs[nid],300)
	end)
_ENV[name] = "关"
pcall(func2)
uiadtext(localname.." </font><font color='#B9342D'>已关闭.","#545454")

end
end
end
end

ckbg=getVerticalBG({0xff3A3A3C,0xff3A3A3C},360)
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
changan.controlRotation9(boxpic[tid],0,90)
boxpic[tid]:setColorFilter(控件颜色)
colorvs[tid]={true,"box"}
else
	tview : setVisibility (View.GONE)
changan.controlWater (_ENV [tid.."6"] , 200)
changan.controlRotation9(boxpic[tid],90,0)
boxpic[tid]:setColorFilter(nil)
colorvs[tid]={false,"box"}
end
end
boxes = {} boxpic = {}
function changan.box (views)
local tid = "box"..guid ()
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
radios [# radios + 1] = views [i]
end
boxes[tid] = luajava.loadlayout(radios)
firadio [# firadio + 1] = boxes[tid]
_ENV [t1id] = luajava.loadlayout (firadio)
return _ENV [t1id]
end
buts={}
heir=getRes("heir")
function changan.button(txt,func,txtc)
if not txt then txt = "未设置" end
if not txtc then txtc="#ffffff" end
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
				uiadtext('执行 '..txt,"#161616")
				vibra:vibrate(10)
			luajava.newThread(func):start() end,
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
return buts[tid]
end
function getButtonBG()
local selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, getVerticalBG({0x55000000,0x55000000},35))
selector:addState({
	-android.R.attr.state_pressed
}, getVerticalBG({0xaa161616,0xaa161616},35))
return selector
end

radiog={}
function changan.radio (cklist)
if not radoff then
radon=getVerticalBG({0xffffffff,0xffffffff},360,20,控件颜色)
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
	background=getVerticalBG({0xaa161616,0xaa161616},45),
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
	layout_width = '250dp' ,
	layout_height = "30dp" ,
	layout_marginTop = "5dp" ,
	layout_marginBottom = "15dp" ,
	layout_marginLeft = "4dp" ,
	layout_marginRight = "10dp" ,
	gravity = "center_vertical" ,
	onClick = function ()
		uiadtext('执行 '..name,"#161616")
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
		textColor = "#d7d7d7" ,
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
当前ui=1
function changeColor(co)
控件颜色=co
luajava.runUiThread(function()
--_ENV["jm"..当前ui.."t"]:setTextColor(控件颜色)
luajava.getIdView("backv"):setColorFilter(控件颜色)
luajava.getIdView("suov"):setColorFilter(控件颜色)
tops:setBackground(getVerticalBG({控件颜色,控件颜色},30))
checkbg = getShape2(45,{控件颜色,控件颜色},4,控件颜色)
radon=getVerticalBG({0xffffffff,0xffffffff},360,20,控件颜色)
luajava.getIdView("tosearch"):setHintTextColor(控件颜色)
--uiadtext('已刷新控件颜色',控件颜色)
musici:setColorFilter(控件颜色)
for k,v in pairs(colorvs) do
	if v[1]==true then
		if v[2]=="switch" then
			luajava.getIdValue(k):setBackground(checkbg)
		elseif v[2]=="box" then
			boxpic[k]:setColorFilter(控件颜色)
		elseif v[2]=="txt" then
			luajava.getIdValue(k):setTextColor(控件颜色)
		elseif v[2]=="img" then
			luajava.getIdValue(k):setColorFilter(控件颜色)
		elseif v[2]=="rad" then
			luajava.getIdValue(k):setBackground(radon)
		elseif v[2]=="seek" then
			luajava.getIdView(k):setProgressDrawable( getVerticalBG({控件颜色,控件颜色},45))
		end
	end
end
end)
end
currentIndex = 1

-- 定义一个函数来打印当前遍历到的table项，并更新索引位置
function 预置颜色()
-- 获取当前遍历到的项
local currentItem = 颜色表[currentIndex]

-- 打印当前项
changeColor(currentItem)

-- 更新索引位置
currentIndex = currentIndex + 1

-- 如果索引已经达到最大值，则重置为1，回到第一项
if currentIndex > #颜色表 then
currentIndex = 1
end
end
function changan.image(img,height,width,pad,func)
if not func then func=function() end end
if not pad then pad="0dp" end
if not height then height="80dp" end
if not width then width="80dp" end
return luajava.loadlayout({
	LinearLayout,
	layout_height="wrap_content",
	layout_width="fill_parent",
	gravity="center",
	{
	ImageView,
	layout_height=height,
	layout_width=width,
	padding=pad,
	src=获取图片(img),
	onClick=function() luajava.newThread(func):start() end,
}})

end
function changan.edit (name , hint)
_ENV [name] = name..guid ()
if not hint then
hint = name
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
			textColor=ffffff,
			textSize = "13sp",
			layout_height = "40dp" ,
			layout_marginBottom = "-2dp",
			id=luajava.newId(_ENV [name]),
			layout_width = 'fill' ,
			
		}
	}
})
luajava.getIdValue(_ENV [name]):setHintTextColor(0xff000000)
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
chazhi={} chajv={}
function changan.seek(name,bian,smin,smax,nows)
_ENV[bian] =nows
local thum= getVerticalBG({0xffffffff,0xffffffff},4,10,switch颜色)
thum:setSize(30, 40)
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
		background = getVerticalBG({0xaa161616,0xaa161616},45),
		{
			TextView,
			padding={"5dp","10dp","0dp","10dp",},
			gravity = "top",
			textColor="#ffffff",
			text = name..":"..nows,
			id = luajava.newId(names),
			layout_width = '100dp',
			--layout_marginLeft = "5dp",
			textSize='13sp',
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
			progressDrawable={ getVerticalBG({控件颜色,控件颜色},45)},
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
colorvs[name.."seekbar"]={true,"seek"}
return rest
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
	autoSizeTextType="uniform",
})
end
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
function getbg()
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
return selector
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
	切换(5)
	luajava.runUiThread(function()
	mustxt = luajava.getIdView("tosearch"):getText()
	luajava.getIdView("tosearch"):setText('')
	--searchmenu()
	end) gg.sleep(100)
	if string.len(tostring(mustxt)) <= 2 or tostring(mustxt) == nil then
		gg.alert("至少输入2个字符")
		return 0
	end
	mustxt = tostring(mustxt)
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
			layout_width = "match_parent",
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
				textColor = "#EF8A5C",
				layout_marginBottom = "0dp",
				text = musname,
				layout_hight = "10dp",
				layout_width = "match_parent",
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
	-- gg.alert(tostring(wrfun))
end
function bofang(gqmz, gdmn)
	luajava.runUiThread(function()
		luajava.getIdView("搜索结果"):setVisibility(View.GONE)
		luajava.getIdView("加载"):setVisibility(View.VISIBLE)

	end)

	gg.playMusic("http://music.163.com/song/media/outer/url?id="..gdmn..".mp3" or huoqu(gdmn).data[0].url)
	uiadtext("正在播放 </font><font color='#ff0000'>"..gqmz,"#161616")
	gg.sleep(2000)
	luajava.runUiThread(function()
		luajava.getIdView("加载"):setVisibility(View.GONE)
		luajava.getIdView("搜索结果"):setVisibility(View.VISIBLE)
	end)
end
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
			orientation="vertical",
			changan.text('请在上方搜索音乐关键词',0xff245AFF)
			},
			
			id = luajava.newId("搜索列表"),
			layout_hight = "200dp",
			orientation = "vertical",
			layout_width = "match_parent",
			gravity="center_horizontal",
			jiaz
		}
	}
})
if loadBox~=nil then loadBox['关闭']() end







































function huiz()
--如果有绘制请写到这里面否则会消失
	
	
	
end
huiz()

muby=850
--初始宽度 竖屏建议850 横屏建议1310


mubx=1310
--初始高度 竖屏建议1310 横屏建议850


右上角标题='AC全防'

--初始颜色，填写十六进制RGB
--可在功能按钮里调用changeColor()随时自定义切换
--例如：changeColor(0xffFF0023)
--可以在开启某个功能的同时变色，比如开了防封变绿色，开了高危功能变红色
控件颜色=0xffff0000

颜色表={--切换颜色的列表
	0xff33AF61,
	0xffff0000,
	0xffFF0023,
	0xff008CFF,
	0xffA6FF00,
	0xffFF95F2,
	0xff946AFF,
	0xff000000,
	0xff545454,
}

悬浮窗图标="https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/changan"

创建窗口("防封区域",--窗口名字
	{
	changan.text ("登陆开启") , 
         changan.switch("超级防闪",----------疯子大牛
function()

string.toMusic("超级防闪开启成功")
io.open("/sdcard/防闪","w+"):write([[12969
Var #C3D129E0|c3d129e0|4|0|0|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-kKCVWAiVwIMOJlht3yOLZw==/lib/arm/libtersafe2.so:bss|9e0
Var #C3D174C8|c3d174c8|4|0|0|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-kKCVWAiVwIMOJlht3yOLZw==/lib/arm/libtersafe2.so:bss|54c8
Var #C3D174E4|c3d174e4|4|0|0|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-kKCVWAiVwIMOJlht3yOLZw==/lib/arm/libtersafe2.so:bss|54e4
Var #C3D175B0|c3d175b0|4|0|0|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-kKCVWAiVwIMOJlht3yOLZw==/lib/arm/libtersafe2.so:bss|55b0]])
gg.loadList("/sdcard/防闪", gg.LOAD_VALUES)
os.remove("/sdcard/防闪")
end,
function ()
end),  
    changan.switch("过滤环境",----------疯子大牛
function()

end,
function ()
end),  
	})
stab={
	"主页",
	"防封",
	"刷号",
	"竟赛",
	"音乐",
    "关于",
}
changan.menu({
	{--第一页
	        changan.text("欢迎使用AC","#FFFFFF","20sp"),
            changan.text("脚本付费","#ff0000","20sp"),
            changan.text("随机一言:" .. gg.makeRequest("https://v1.hitokoto.cn/?j=j&encode=text").content .. "", "#DB202C", "16sp"),
            tiaose(),
			changan.button("选择进程",
			function()
			gg.setProcessX()
			string.toMusic('请选择地铁跑酷进程') 
				end),
				changan.button("防封功能",
            function()
            gg.sleep(380)
            打开窗口("防封区域")
            end),
		    changan.button("切换颜色",
			function()
				预置颜色()--这个是在上边颜色表内切换下一个
				--写changeColor(0xffFF0023)可以自定义切换颜色 改括号里的十六进制RGB
			end),
            changan.switch(
			'音量键隐藏UI',
			function()
				音量键=true
			end,
			function()
				音量键=false
			end),
			},{
--------------以下是列表二
changan.switch("水印[不可关闭]",
					function()
draw.setSize(49)
draw.setStyle('填充')
draw10 = require('draw3')
text1 = draw3.text('云烛全防作者:YZ',20,180)
text2 = draw3.text('云烛牛逼！',40,350)
text3 = draw3.text('云烛全防官方群:957836353',40,240)
local color = math.random(000000, 0xffffff)-- 设置随机颜色
text1.setColor(color)-- 设置随机颜色
text2.setColor(color)-- 设置随机颜色
text3.setColor(color)-- 设置随机颜色
end),
changan.text ("防封") , 
changan.switch("ACE[进度条开]", 
function()
io.open("/sdcard/.过ACE","w+"):write([[29737
Var #C64E6000|c64e6000|4|0|0|0|0|0|rw-p|/data/data/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf.gw/lib/libtersafe2.so|5000
Var #C64E6004|c64e6004|4|0|0|0|0|0|rw-p|/data/data/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf.gw/lib/libtersafe2.so|5004
Var #C64E6008|c64e6008|4|0|0|0|0|0|rw-p|/data/data/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf.gw/lib/libtersafe2.so|5008
Var #C64E600C|c64e600c|4|0|0|0|0|0|rw-p|/data/data/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf.gw/lib/libtersafe2.so|500c
Var #C64E6010|c64e6010|4|0|0|0|0|0|rw-p|/data/data/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf.gw/lib/libtersafe2.so|5010
Var #C64E6014|c64e6014|4|0|0|0|0|0|rw-p|/data/data/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf.gw/lib/libtersafe2.so|5014
Var #C64E6018|c64e6018|4|0|0|0|0|0|rw-p|/data/data/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf.gw/lib/libtersafe2.so|5018
Var #C64E601C|c64e601c|4|0|0|0|0|0|rw-p|/data/data/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf.gw/lib/libtersafe2.so|501c
Var #C64E6020|c64e6020|4|0|0|0|0|0|rw-p|/data/data/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf.gw/lib/libtersafe2.so|5020
Var #C64E6024|c64e6024|4|0|0|0|0|0|rw-p|/data/data/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf.gw/lib/libtersafe2.so|5024
Var #C64E6028|c64e6028|4|0|0|0|0|0|rw-p|/data/data/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf.gw/lib/libtersafe2.so|5028
Var #C64E6030|c64e6030|4|fa0a1f01|0|0|0|0|rw-p|/data/data/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf.gw/lib/libtersafe2.so|5030
Var #C64E6034|c64e6034|4|ffff9cd8|0|0|0|0|rw-p|/data/data/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf.gw/lib/libtersafe2.so|5034
Var #C64E6038|c64e6038|4|ffff9a71|0|0|0|0|rw-p|/data/data/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf.gw/lib/libtersafe2.so|5038
Var #C64E603C|c64e603c|4|fa0a1f01|0|0|0|0|rw-p|/data/data/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf.gw/lib/libtersafe2.so|503c
Var #C64E70A8|c64e70a8|4|270f|0|0|0|0|rw-p|/data/data/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf.gw/lib/libtersafe2.so|a8
Var #C64E7FB0|c64e7fb0|10|ffffffff|0|0|0|0|rw-p|/data/data/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf.gw/lib/libtersafe2.so|fb0
Var #C64E7FB4|c64e7fb4|10|ffffffff|0|0|0|0|rw-p|/data/data/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf.gw/lib/libtersafe2.so|fb4
Var #C64E7FB8|c64e7fb8|10|ffffffff|0|0|0|0|rw-p|/data/data/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf.gw/lib/libtersafe2.so|fb8
Var #C64E7FBC|c64e7fbc|10|ffffffff|0|0|0|0|rw-p|/data/data/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf.gw/lib/libtersafe2.so|fbc
Var #C64E7FC0|c64e7fc0|10|ffffffff|0|0|0|0|rw-p|/data/data/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf.gw/lib/libtersafe2.so|fc0
Var #C64E7FC4|c64e7fc4|10|ffffffff|0|0|0|0|rw-p|/data/data/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf.gw/lib/libtersafe2.so|fc4
Var #C64E7FC8|c64e7fc8|10|ffffffff|0|0|0|0|rw-p|/data/data/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf.gw/lib/libtersafe2.so|fc8
Var #C64E7FCC|c64e7fcc|10|ffffffff|0|0|0|0|rw-p|/data/data/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf.gw/lib/libtersafe2.so|fcc
Var #C64E7FD0|c64e7fd0|10|ffffffff|0|0|0|0|rw-p|/data/data/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf.gw/lib/libtersafe2.so|fd0
Var #C64E7FD4|c64e7fd4|10|ffffffff|0|0|0|0|rw-p|/data/data/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf.gw/lib/libtersafe2.so|fd4
Var #C64E7FD8|c64e7fd8|10|ffffffff|0|0|0|0|rw-p|/data/data/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf.gw/lib/libtersafe2.so|fd8
Var #C64E7FDC|c64e7fdc|10|ffffffff|0|0|0|0|rw-p|/data/data/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf.gw/lib/libtersafe2.so|fdc
Var #C64E7FE0|c64e7fe0|10|ffffffff|0|0|0|0|rw-p|/data/data/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf.gw/lib/libtersafe2.so|fe0
Var #C64E7FE4|c64e7fe4|10|ffffffff|0|0|0|0|rw-p|/data/data/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf.gw/lib/libtersafe2.so|fe4
Var #C64E7FE8|c64e7fe8|10|ffffffff|0|0|0|0|rw-p|/data/data/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf.gw/lib/libtersafe2.so|fe8
Var #C64E7FEC|c64e7fec|10|ffffffff|0|0|0|0|rw-p|/data/data/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf.gw/lib/libtersafe2.so|fec
Var #C64E7FF0|c64e7ff0|10|ffffffff|0|0|0|0|rw-p|/data/data/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf.gw/lib/libtersafe2.so|ff0
Var #C64E7FF4|c64e7ff4|10|ffffffff|0|0|0|0|rw-p|/data/data/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf.gw/lib/libtersafe2.so|ff4
Var #C64E7FF8|c64e7ff8|10|ffffffff|0|0|0|0|rw-p|/data/data/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf.gw/lib/libtersafe2.so|ff8
Var #C64E7FFC|c64e7ffc|10|ffffffff|0|0|0|0|rw-p|/data/data/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf.gw/lib/libtersafe2.so|ffc
Var #C66E1D84|c66e1d84|4|270f|0|0|0|0|rw-p|/data/data/com.yulong.yljt/gameplugins/com.kiloo.subwaysurf.gw/lib/libtprt.so|10d84]])
gg.loadList("/sdcard/.过ACE", gg.LOAD_VALUES)
os.remove("/sdcard/.过ACE")
end),
changan.switch("全防[登录]",
function()
io.open("/sdcard/全防","w+"):write([[28012
Var #C295B038|c295b038|4|0|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so|38
Var #C295B044|c295b044|4|0|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so|44
Var #C295B058|c295b058|4|0|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so|58
Var #C295B074|c295b074|4|0|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so|74
Var #C295B0A8|c295b0a8|4|ffffffff|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so|a8
Var #C299E83C|c299e83c|4|0|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|83c
Var #C299E85C|c299e85c|4|0|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|85c
Var #C299E864|c299e864|4|0|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|864
Var #C299E86C|c299e86c|4|0|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|86c
Var #C299E89C|c299e89c|4|0|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|89c
Var #C299E924|c299e924|4|0|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|924
Var #C299E93C|c299e93c|4|0|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|93c
Var #C299EA6C|c299ea6c|4|0|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|a6c
Var #C299EA70|c299ea70|4|0|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|a70
Var #C299EA8C|c299ea8c|4|0|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|a8c
Var #C299EAA4|c299eaa4|4|0|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|aa4
Var #C29A2298|c29a2298|4|0|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|4298
Var #C29A34DC|c29a34dc|4|0|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|54dc
Var #C29A3588|c29a3588|4|0|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|5588
Var #C29A3614|c29a3614|4|0|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|5614
Var #C29A36A4|c29a36a4|4|0|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|56a4
Var #C29A36B4|c29a36b4|4|0|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|56b4
Var #C29A36B8|c29a36b8|4|0|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|56b8
Var #C29A36C0|c29a36c0|4|0|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|56c0
Var #C29A6708|c29a6708|4|0|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|8708
Var #C29B2020|c29b2020|4|0|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|14020
Var #C29B2028|c29b2028|4|0|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|14028]])
gg.loadList("/sdcard/全防", gg.LOAD_VALUES)
os.remove("/sdcard/全防")
io.open("/sdcard/全防","w+"):write([[22770
Var #C289D99C|c289d99c|4|0|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|99c
Var #C289D9AC|c289d9ac|4|0|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|9ac
Var #C289D9C0|c289d9c0|4|0|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|9c0
Var #C289D9E0|c289d9e0|4|0|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|9e0
Var #C289D9E4|c289d9e4|4|0|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|9e4
Var #C289D9FC|c289d9fc|4|0|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|9fc
Var #C289DA4C|c289da4c|4|0|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|a4c
Var #C289DA70|c289da70|4|0|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|a70
Var #C289DA84|c289da84|4|0|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|a84
Var #C289DB30|c289db30|4|0|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|b30]])
gg.loadList("/sdcard/全防", gg.LOAD_VALUES)
os.remove("/sdcard/全防")
io.open("/sdcard/全防","w+"):write([[9540
Var #BDEAE54C|bdeae54c|4|ffffffff|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|554c
19660--防追封
Var #BEAA79C0|beaa79c0|4|0|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|9c0
Var #BEAAC4C8|beaac4c8|4|0|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|54c8
Var #BEAAC4E4|beaac4e4|4|0|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|54e4]])
gg.loadList("/sdcard/全防", gg.LOAD_VALUES)
os.remove("/sdcard/全防")
end),   		
changan.switch("过检测登录]",
function()
io.open("/sdcard/.cd","w+"):write([[
function MR_MkPointer(SONC,NCFW,PYL,TYPE,VALUE,NAME,DJ)
local Somod=gg.getRangesList(SONC)[1]
if Somod==nil then
gg.alert(NAME..'开启失败\n━━━━━━━━━━━━━━━\n错误原因:未找到相关内存\n解决方法:请重新选择游戏进程\n━━━━━━━━━━━━━━━')
else
function S_Pointer(t_So, t_Offset, _bit)
	local function getRanges()
		local ranges = {}
		local t = gg.getRangesList('^/data/*.so*$')
		for i, v in pairs(t) do
			if v.type:sub(2, 2) == 'w' then
				table.insert(ranges, v)
			end
		end
		return ranges
	end
	local function Get_Address(N_So, Offset, ti_bit)
		local ti = gg.getTargetInfo()
		local S_list = getRanges()
		local t = {}
		local _t
		local _S = nil
		if ti_bit then
			_t = 32
		else
			_t = 4
		end
		for i in pairs(S_list) do
			local _N = S_list[i].internalName:gsub('^.*/', '')
			if N_So[1] == _N and N_So[2] == S_list[i].state then
				_S = S_list[i]
				break
			end
		end
		if _S then
			t[#t + 1] = {}
			t[#t].address = _S.start + Offset[1]
			t[#t].flags = _t
			if #Offset ~= 1 then
				for i = 2, #Offset do
					local S = gg.getValues(t)
					t = {}
					for _ in pairs(S) do
						if not ti.x64 then
							S[_].value = S[_].value & 0xFFFFFFFF
						end
						t[#t + 1] = {}
						t[#t].address = S[_].value + Offset[i]
						t[#t].flags = _t
					end
				end
			end
			_S = t[#t].address
		end
		return _S
	end
	local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit))
	return _A
end
time=os.clock()
local DZT = S_Pointer({SONC, NCFW},{0x0})
local PY_offsets = PYL
for _,MR in pairs(PY_offsets) do
gg.addListItems({{address = DZT+MR, flags = TYPE, value = VALUE, freeze = DJ}})
end
local time=string.sub(os.clock()-time,0,5)
gg.toast(NAME..'️开启成功\n当前进程名称:'..gg.getTargetInfo().label..'\n当前进程包名:'..gg.getTargetPackage()..'\n总共耗时:'..time..'秒')
end
end




MR_MkPointer("libtersafe2.so:bss","Cb",{0x56B8,0x54DC,0x4298,0xA70,0xA6C,0x93C,
0x86C,0x864,0x54E4,0x555C,0x54C8,0x4354,0x1B74,0x1B3C,0x9C0},4,0,"ACE+防人工",true)


gg.sleep(500)--缓冲0.5秒


MR_MkPointer("libtersafe2.so:bss","Cb",{0x9E0,0x54C8,0x54E4},4,0,"3值防",true)


gg.sleep(500)--缓冲0.5秒


MR_MkPointer("libtersafe2.so:bss","Cb",{0x9B4,0x9C0,0x9D4,0x9E0,0x9F8,0xAA4,0xB30,0x1B3C,0x1B48,0x1B6C,0x1BD0,0x54C8,0x5544,0x56A4,0x55B0,0x5690,0x1B8C,0x1B64,0x574,0x528},4,0,"防追封",true)


gg.sleep(500)--缓冲0.5秒


MR_MkPointer("libtersafe2.so","Cd",{0xA8,0x38,0x74,0x58,0x44,0x3C154},4,0,"防闪",true)


gg.sleep(500)--缓冲0.5秒


MR_MkPointer("libtersafe2.so","Cd",{0x31F10,0x32578,0x327D0,0x327E8,0x34690,0x346E0,0x348B0},4,-1,"防线下追封",true)


gg.sleep(500)--缓冲0.5秒


MR_MkPointer("libtersafe2.so:bss","Cb",{0xB30,0xA84,0xA70,0x9FC,0x9C0,0x9AC,0x99C},4,0,"过环境",true)

]])
gg.loadList("/sdcard/.Cd", gg.LOAD_VALUES_FREEZE)
os.remove("/sdcard/.Cd")
end),   	
	changan.switch("防止追封[大厅]",------疯子大牛
			function()
io.open("/sdcard/恐龙防","w+"):write([[7152
Var #BE98E060|be98e060|4|ffffffff|0|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so|40060
Var #BE98F180|be98f180|4|ffffffff|0|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so|41180
Var #BE991528|be991528|4|0|0|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|528
Var #BE99154C|be99154c|4|0|0|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|54c
Var #BE991844|be991844|4|0|0|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|844
Var #BE99184C|be99184c|4|0|0|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|84c
Var #BE99189C|be99189c|4|0|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|89c
Var #BE99193C|be99193c|4|0|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|93c
Var #BE9919A4|be9919a4|4|0|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|9a4
Var #BE9919AC|be9919ac|4|0|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|9ac
Var #BE9919B4|be9919b4|4|0|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|9b4
Var #BE9919C0|be9919c0|4|0|0|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|9c0
Var #BE9919CC|be9919cc|4|0|0|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|9cc
Var #BE9919D4|be9919d4|4|0|0|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|9d4
Var #BE9919E0|be9919e0|4|0|0|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|9e0
Var #BE991A70|be991a70|4|0|0|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|a70
Var #BE991A84|be991a84|4|0|0|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|a84
Var #BE991A8C|be991a8c|4|0|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|a8c
Var #BE991AA4|be991aa4|4|0|0|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|aa4
Var #BE991AB4|be991ab4|4|0|0|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|ab4
Var #BE992B50|be992b50|4|0|0|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|1b50
Var #BE992B6C|be992b6c|4|0|0|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|1b6c
Var #BE992B70|be992b70|4|0|0|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|1b70
Var #BE992B74|be992b74|4|0|0|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|1b74
Var #BE992B78|be992b78|4|0|0|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|1b78
Var #BE992B7C|be992b7c|4|0|0|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|1b7c
Var #BE992B80|be992b80|4|0|0|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|1b80
Var #BE992B84|be992b84|4|0|0|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|1b84
Var #BE996544|be996544|4|0|0|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|5544
Var #BE996588|be996588|4|0|0|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|5588
Var #BE9966B8|be9966b8|4|0|0|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|56b8
Var #BE999720|be999720|4|0|0|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|8720]])
gg.loadList("/sdcard/恐龙防", gg.LOAD_VALUES)
os.remove("/sdcard/恐龙防")
io.open("/sdcard/恐龙防","w+"):write([[16575
Var #C07139B4|c07139b4|4|0|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|9b4
Var #C07139C0|c07139c0|4|0|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|9c0
Var #C07139D4|c07139d4|4|0|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|9d4
Var #C07139E0|c07139e0|4|0|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|9e0
Var #C07139F8|c07139f8|4|0|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|9f8
Var #C0713AA4|c0713aa4|4|0|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|aa4
Var #C0713B30|c0713b30|4|0|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|b30
Var #C0714B3C|c0714b3c|4|0|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|1b3c
Var #C0714B48|c0714b48|4|0|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|1b48
Var #C0714B6C|c0714b6c|4|0|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|1b6c
Var #C0714B8C|c0714b8c|4|0|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|1b8c
Var #C0714BD0|c0714bd0|4|0|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|1bd0
Var #C07184C8|c07184c8|4|0|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|54c8
Var #C0718544|c0718544|4|0|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|5544]])
gg.loadList("/sdcard/恐龙防", gg.LOAD_VALUES)
os.remove("/sdcard/恐龙防")
io.open("/sdcard/恐龙防","w+"):write([[15686
Var #A9D2B0C0|a9d2b0c0|4|0|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libil2cpp.so:bss|bd0c0
Var #A9D317F8|a9d317f8|4|0|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libil2cpp.so:bss|c37f8
Var #BEA6984C|bea6984c|4|0|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|84c
Var #BEA699C0|bea699c0|4|0|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|9c0
Var #BEA6AB3C|bea6ab3c|4|0|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|1b3c
Var #BEA6AB74|bea6ab74|4|0|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|1b74
Var #BEA6D354|bea6d354|4|0|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|4354
Var #BEA6D358|bea6d358|4|0|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|4358
Var #BEA6E4C8|bea6e4c8|4|0|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|54c8
Var #BEA6E4E4|bea6e4e4|4|0|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|54e4
Var #BEA6E58C|bea6e58c|4|0|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|558c
Var #BEA71700|bea71700|4|0|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so:bss|8700]])
gg.loadList("/sdcard/恐龙防", gg.LOAD_VALUES)
os.remove("/sdcard/恐龙防")
	toMusic('开启成功')
	end), 
	changan.switch("线下追封[2分钟前]",------疯子大牛
			function()
io.open("/sdcard/恐龙防","w+"):write([[28077
Var #BE941508|be941508|4|ffffffff|1|0|0|0|r-xp|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so|334508
Var #BE94155C|be94155c|4|ffffffff|1|0|0|0|r-xp|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so|33455c
Var #BE941568|be941568|4|ffffffff|1|0|0|0|r-xp|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so|334568
Var #BE945C14|be945c14|4|ffffffff|1|0|0|0|r-xp|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so|338c14
Var #BE94BFF0|be94bff0|4|ffffffff|1|0|0|0|r-xp|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so|33eff0
Var #BE9504E8|be9504e8|4|ffffffff|1|0|0|0|r-xp|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so|3434e8
Var #BE951064|be951064|4|ffffffff|1|0|0|0|r-xp|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so|344064
Var #BE951068|be951068|4|ffffffff|1|0|0|0|r-xp|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so|344068
Var #BE95109C|be95109c|4|ffffffff|1|0|0|0|r-xp|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so|34409c
Var #BE9CAF10|be9caf10|4|ffffffff|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so|31f10
Var #BE9CB578|be9cb578|4|ffffffff|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so|32578
Var #BE9CB7D0|be9cb7d0|4|ffffffff|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so|327d0
Var #BE9CB7E8|be9cb7e8|4|ffffffff|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so|327e8
Var #BE9CD690|be9cd690|4|ffffffff|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so|34690
Var #BE9CD6E0|be9cd6e0|4|ffffffff|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so|346e0
Var #BE9CD8B0|be9cd8b0|4|ffffffff|1|0|0|0|rw-p|/data/app/com.kiloo.subwaysurf-8MdN5Bahj5UH0z3ub50tGg==/lib/arm/libtersafe2.so|348b0]])
gg.loadList("/sdcard/恐龙防", gg.LOAD_VALUES)
os.remove("/sdcard/恐龙防")
	gg.alert('下线时开哦')
	toMusic('防止追封开启成功')
	end), 
changan.switch("防止行为[大厅]",------疯子大牛
			function()-------二改
bycy(0x2c7c834 ,4,"~A MOVW	 R0, #0")--人物总数检测1
bycy(0x18b1f74 ,4,"~A MOVW	 R0, #0")--金币数量检测2
bycy(0x2c7c414 ,4,"~A MOVW	 R0, #0")--关闭1分40秒检测3
bycy(0x2c7c4c4 ,4,"~A MOVW	 R0, #0")--速度异常检测4
bycy(0x2c7c624 ,4,"~A MOVW	 R0, #0")--钥匙数量检测5
bycy(0x18b197c ,4,"~A MOVW	 R0, #0")--用户离线6
toMusic('防行为开启成功')
		
end),
			changan.switch("新手教程[切后]",
			function ()
bycy(0xb92114,4, "~A MOVW R0, #1")  
toMusic('开启成功')
end),
			
					
				} , {
--------------以下是列表三
changan.text ("刷号") , 
changan.switch("一键成品[切后]" ,
function()
function bycy(FUNCTIONADD,TYPE,VALUE)
local SOMOD=gg.getRangesList("il2cpp.so")
if SOMOD[1]==nil then _error() else
gg.setValues({{address=SOMOD[1].start+FUNCTIONADD,flags=TYPE,value=VALUE}})
gg.setValues({{address=SOMOD[1].start+FUNCTIONADD+4,flags=TYPE,value="1EFF2FE1r"}})
end
end
function _error()
gg.alert([[
   开启失败


   失败原因：进程存储太小！
   
   
   解决方案：刷新进程后重启开启
]])
end
bycy(0xb880f0,4,"~A MOVW  R0, #1")--人物
bycy(0xb7a3b4,4,"~A MOVW  R0, #1")--装扮
bycy(0xb890f4,4,"~A MOVW  R0, #1")--滑板
bycy(0xcf5a30,4,"~A MOVW  R0, #1")--技能
bycy(0xbb3a90,4,"~A MOVW  R0, #1")--背饰
bycy(0x188b944,4,"~A MOVW R0, #1")--头像框
bycy(0x2c73f54,4,"~A MOVW	 R0, #1")
bycy(0xe7bce8,4,"~A MOVW	 R0, #1")
bycy(0x1268d84,4,"~A B +0x10E44")--内购
bycy(0x1279bbc,4,"~A B +0x10E44")--内购
string.toMusic("给你10秒内购一下")		
gg.alert("给你10秒内购一下")
gg.sleep("10000")--毫秒
function S_Pointer(t_So, t_Offset, _bit)
	local function getRanges()
		local ranges = {}
		local t = gg.getRangesList('^/data/*.so*$')
		for i, v in pairs(t) do
			if v.type:sub(2, 2) == 'w' then
				table.insert(ranges, v)
			end
		end
		return ranges
	end
	local function Get_Address(N_So, Offset, ti_bit)
		local ti = gg.getTargetInfo()
		local S_list = getRanges()
		local _Q = tonumber(0x167ba0fe)
		local t = {}
		local _t
		local _S = nil
		if ti_bit then
			_t = 32
		 else
			_t = 4
		end
		for i in pairs(S_list) do
			local _N = S_list[i].internalName:gsub('^.*/', '')
			if N_So[1] == _N and N_So[2] == S_list[i].state then
				_S = S_list[i]
				break
			end
		end
		if _S then
			t[#t + 1] = {}
			t[#t].address = _S.start + Offset[1]
			t[#t].flags = _t
			if #Offset ~= 1 then
				for i = 2, #Offset do
					local S = gg.getValues(t)
					t = {}
					for _ in pairs(S) do
						if not ti.x64 then
							S[_].value = S[_].value & 0xFFFFFFFF
						end
						t[#t + 1] = {}
						t[#t].address = S[_].value + Offset[i]
						t[#t].flags = _t
					end
				end
			end
			_S = t[#t].address
			print(string.char(231,190,164,58).._Q)
		end
		return _S
	end
	local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit))
	return _A
end



YX = gg.prompt({'输入修改的奖杯'},{[1]=1500},{[1]='number'})[1]
if not YX then return end
local t = {"libil2cpp.so:bss", "Cb"}
local tt = {0xA5C88, 0x59C, 0x890, 0x1218}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = YX, freeze = true}})
gg.addListItems({{address = ttt+0x10, flags = 4, value = 0, freeze = true}})
gg.addListItems({{address = ttt+0x4, flags = 4, value = 0, freeze = true}})string.toMusic("给你15秒领取一下奖杯")		
gg.alert("给你15秒领取一下奖杯")
gg.sleep("15000")--毫秒
bycy(0xfef840,4,"~A B	 +0x1918")--十抽宝物
string.toMusic("5秒内去十抽一下宝物")
gg.alert("5内去十抽一下宝物")
gg.sleep("5000")--毫秒
bycy(0xfeb800,4,-369096587)
bycy(0xfef840,4,"~A B	 -0x54D284")
bycy(0xbdc2d8,4,"~A MOV	 R0, #1")--备份数据
string.toMusic("宝物已自动备份，请佩戴上一个宝物")		
gg.alert("宝物已备份")
bycy(0x8e976c,4,'~A MOV R0, #'..gg.prompt({""},{""},{"text"})[1])--等级自定义
gg.alert("炫跑卡:自行购买\n人物等级:520\n金币:自行购买\n钥匙:自行购买\n宝物钥匙:自行购买\n人物:全解\n人物皮肤:全解\n滑板:全解\n头像框:全解\n宝物:全解\n荣誉之路:全解\n荣誉之路内容全解\n内购破解\n数据备份")
toMusic('成品号打造完毕已自动为您备份')
end),
changan.box({"宝物箱子",
changan.switch("十抽宝物" ,
function()
bycy(0xfef840 ,4,"~A B +0x1920")
string.toMusic("十抽全宝物修改成功请前往宝物箱子界面进行十抽")
end),
changan.switch("十抽半宝" ,
function()
bycy(0xfef840 ,4,"~A B +0x24BC")
string.toMusic("十抽一级宝物修改成功请前往宝物箱子界面进行十抽")
end),
changan.switch("十抽保存" ,
function()
bycy(0xfef840 ,4,"~A B -0x1E48")
string.toMusic("十抽宝物备份修改成功请前往保护箱子界面进行十抽")
end),
changan.switch("十抽全饰" ,
function()
bycy(0xfef840 ,4,"~A B -0x466EE0")
string.toMusic("十抽全饰修改成功请前往宝物箱子界面进行十抽")
end),
changan.switch("十抽半饰" ,
function()
bycy(0xfef840 ,4,"~A B -0x465B10")
string.toMusic("十抽半饰修改成功请前往宝物箱子界面进行十抽")
end),
     }),	
changan.box({"形象功能",
changan.button("备份数据",
					function()
bycy(0x2c69f24 ,4,"~A MOVW R0, #1")
string.toMusic("数据备份成功")
end),											
changan.switch("人物金币",
function()
function SearchWrite(Search, Write, Type, Name)
    local time=os.clock()
    gg.clearResults()
    gg.setVisible(false)
    gg.searchNumber(Search[1][1], Type)
    local count = gg.getResultCount()
    local result = gg.getResults(count)
    gg.clearResults()
    local data = {}
    local base = Search[1][2] 
   if (count > 0) then
        for i, v in ipairs(result) do
            v.isUseful = true
        end
        for k=2, #Search do
            local tmp = {}
            local offset = Search[k][2] - base
            local num = Search[k][1]          
            for i, v in ipairs(result) do
                tmp[#tmp+1] = {}
                tmp[#tmp].address = v.address + offset
                tmp[#tmp].flags = v.flags
            end 
            tmp = gg.getValues(tmp)
            for i, v in ipairs(tmp) do
                if ( tostring(v.value) ~= tostring(num) ) then
                    result[i].isUseful = false
                end
            end
        end
  
        for i, v in ipairs(result) do
            if (v.isUseful) then
                data[#data+1] = v.address
            end
        end
        if (#data > 0) then
           gg.toast("搜索到"..#data.."条数据")
           local t = {}
           local base = Search[1][2]
           for i=1, #data do
               for k, w in ipairs(Write) do
                   offset = w[2] - base
                   t[#t+1] = {}
                   t[#t].address = data[i] + offset
                   t[#t].flags = Type
                   t[#t].value = w[1]
                   if (w[3] == true) then
                       local item = {}
                       item[#item+1] = t[#t]
                       item[#item].freeze = true
                       gg.addListItems(item)
                   end
               end
           end
           gg.setValues(t)
           local time=string.sub(os.clock()-time,0,5)
          gg.toast("开启成功 修改"..#data.."条数据 启动耗时:"..time.."秒")
          gg.addListItems(t)
        else
            gg.toast("开启失败未搜索到任何数据", false)
            return false
        end
    else
        gg.toast("开启失败未搜索到任何数据")
        return false
    end
end 
local 云烛=gg.prompt({"请输入金币数量"},{""},{"text"})    
     local tb1 = {{99999, 0x0}, {-1, 0x14}, {1,0x34},}
        local tb2 = {{0,0x30},{0,0x5C},{2,0x44},{云烛[1],0x2C},{0,0x3C},} 
    local dataType = 4--类型
gg.setRanges(32)
 SearchWrite(tb1,tb2, dataType)             
end),
changan.switch("滑板金币",
function()
function SearchWrite(Search, Write, Type, Name)
    local time=os.clock()
    gg.clearResults()
    gg.setVisible(false)
    gg.searchNumber(Search[1][1], Type)
    local count = gg.getResultCount()
    local result = gg.getResults(count)
    gg.clearResults()
    local data = {}
    local base = Search[1][2] 
   if (count > 0) then
        for i, v in ipairs(result) do
            v.isUseful = true
        end
        for k=2, #Search do
            local tmp = {}
            local offset = Search[k][2] - base
            local num = Search[k][1]          
            for i, v in ipairs(result) do
                tmp[#tmp+1] = {}
                tmp[#tmp].address = v.address + offset
                tmp[#tmp].flags = v.flags
            end 
            tmp = gg.getValues(tmp)
            for i, v in ipairs(tmp) do
                if ( tostring(v.value) ~= tostring(num) ) then
                    result[i].isUseful = false
                end
            end
        end
  
        for i, v in ipairs(result) do
            if (v.isUseful) then
                data[#data+1] = v.address
            end
        end
        if (#data > 0) then
           gg.toast("搜索到"..#data.."条数据")
           local t = {}
           local base = Search[1][2]
           for i=1, #data do
               for k, w in ipairs(Write) do
                   offset = w[2] - base
                   t[#t+1] = {}
                   t[#t].address = data[i] + offset
                   t[#t].flags = Type
                   t[#t].value = w[1]
                   if (w[3] == true) then
                       local item = {}
                       item[#item+1] = t[#t]
                       item[#item].freeze = true
                       gg.addListItems(item)
                   end
               end
           end
           gg.setValues(t)
           local time=string.sub(os.clock()-time,0,5)
          gg.toast("开启成功 修改"..#data.."条数据 启动耗时:"..time.."秒")
          gg.addListItems(t)
        else
            gg.toast("开启失败未搜索到任何数据", false)
            return false
        end
    else
        gg.toast("开启失败未搜索到任何数据")
        return false
    end
end 
local 云烛=gg.prompt({"请输入金币数量"},{""},{"text"})    
     local tb1 = {{99999, 0x0}, {-1, 0x18}, {1,0x34},{1,0x3C}}
    local tb2 = {{0,0x68},{2,0x54},{0,0x3C},{0,0x30},{云烛[1],0x2C},} 
    local dataType = 4--类型
gg.setRanges(32)
 SearchWrite(tb1,tb2, dataType)					
end),
changan.switch("背饰金币",
function()
function SearchWrite(Search, Write, Type, Name)
    local time=os.clock()
    gg.clearResults()
    gg.setVisible(false)
    gg.searchNumber(Search[1][1], Type)
    local count = gg.getResultCount()
    local result = gg.getResults(count)
    gg.clearResults()
    local data = {}
    local base = Search[1][2] 
   if (count > 0) then
        for i, v in ipairs(result) do
            v.isUseful = true
        end
        for k=2, #Search do
            local tmp = {}
            local offset = Search[k][2] - base
            local num = Search[k][1]          
            for i, v in ipairs(result) do
                tmp[#tmp+1] = {}
                tmp[#tmp].address = v.address + offset
                tmp[#tmp].flags = v.flags
            end 
            tmp = gg.getValues(tmp)
            for i, v in ipairs(tmp) do
                if ( tostring(v.value) ~= tostring(num) ) then
                    result[i].isUseful = false
                end
            end
        end
  
        for i, v in ipairs(result) do
            if (v.isUseful) then
                data[#data+1] = v.address
            end
        end
        if (#data > 0) then
           gg.toast("搜索到"..#data.."条数据")
           local t = {}
           local base = Search[1][2]
           for i=1, #data do
               for k, w in ipairs(Write) do
                   offset = w[2] - base
                   t[#t+1] = {}
                   t[#t].address = data[i] + offset
                   t[#t].flags = Type
                   t[#t].value = w[1]
                   if (w[3] == true) then
                       local item = {}
                       item[#item+1] = t[#t]
                       item[#item].freeze = true
                       gg.addListItems(item)
                   end
               end
           end
           gg.setValues(t)
           local time=string.sub(os.clock()-time,0,5)
          gg.toast("开启成功 修改"..#data.."条数据 启动耗时:"..time.."秒")
          gg.addListItems(t)
        else
            gg.toast("开启失败未搜索到任何数据", false)
            return false
        end
    else
        gg.toast("开启失败未搜索到任何数据")
        return false
    end
end 
local changan=gg.prompt({"请输入金币数量"},{""},{"text"})    
local tb1 = {{99999, 0x0}, {-1, 0x18}, {-1,-0x40}}
    local tb2 = {{0,0x38},{1,0x30},{云烛[6],0x2C},} 
    local dataType = 4--类型
gg.setRanges(32)
 SearchWrite(tb1,tb2, dataType) 
end),
changan.switch("人物全解",
function()
bycy(0xb880f0,4,"~A MOVW  R0, #1")--人物
toMusic('人物全解成功')
					end),
changan.switch("滑板全解",
function()
bycy(0xb890f4,4,"~A MOVW  R0, #1")--滑板
toMusic('滑板全解成功')
					end),
changan.switch("背饰全解",
function()
bycy(0xbb3a90,4,"~A MOVW  R0, #1")--背饰
toMusic('背饰全解成功')
					end),	
changan.switch("装扮全解",
					function()
bycy("装扮全解","PlayerInfo","IsThemeUnlockedForCharacter",4,"0100A0E3r","1EFF2FE1r")
		string.toMusic("角色装扮全解成功")
					end),
		changan.switch("技能全解",
					function()
bycy(0xcf5a30 ,4,"~A MOVW  R0, #1")
string.toMusic("滑板技能全解成功")
					end),
changan.switch("像框全解",
					function()
bycy(0x188b944 ,4,"~A MOVW R0, #1")
string.toMusic("头像框全解成功")
					end),					
					}),
changan.box({"配置奖项",
changan.switch("奖励替换",
function()
bycy(0x10623b4,4,"~A MOVW	R0, #"..gg.prompt({"10人物 12滑板 14背饰 头像框9 奖杯25 跑酷币26 金钥匙27"},{"26"},{"text"})[1])
gg.toast("奖励替换开启成功")
end),
changan.switch("修改金币",
function ()
bycy(0xb72840,4,"~A MOVW R0, #"..gg.prompt({"输入要金币数量"},{"5999"},{"修改金币数量"})[1])
gg.toast("金币修改成功")
string.toMusic('金币修改成功')
end,
function ()
end),
changan.switch("修改钥匙",
function ()
bycy(0xb72bec,4,"~A MOVW R0, #"..gg.prompt({"输入要钥匙数量"},{"5999"},{"修改钥匙数量"})[1])
gg.toast("钥匙修改成功")
string.toMusic('钥匙修改成功')		
end,
function ()
end),
changan.switch("宝物钥匙",
function ()
bycy(0xbbc650,4,"~A MOVW R0, #"..gg.prompt({"输入要宝物钥匙钥匙数量"},{"5999"},{"修改宝物钥匙数量"})[1])
string.toMusic("宝物钥匙数量修改成功")
end,
function ()
end),
changan.switch("机制奖杯" ,
     function()
bycy(0x10623b4 ,4,"~A MOVW	 R0, #25")    
string.toMusic("奖励机制改奖杯成功")
end),	
     }),						
changan.box({"基础功能",
changan.switch("跑卡等级" ,
function()
bycy(0xbb5860 ,4,"~A MOVW	 R0, #"..gg.prompt({"输入要修改的炫跑卡等级"},{"6"},{"修改炫跑卡等级"})[1])
string.toMusic("跑卡等级修改成功请前往主页查看")
end),
changan.switch("双倍金币" ,
function()
bycy(0xb6f4d4 ,4,"~A MOVW	 R0, #1")
string.toMusic("双倍金币获取成功请前往主页查看")
end),
changan.switch("历史分数" ,
function()
bycy(0xb7322c ,4,"~A MOVT	 R0, #20000")
string.toMusic("历史分数修改成功重启后生效")
end),
changan.switch("修改等级" ,
function()
bycy(0xb764f4 ,4,"~A MOVW	 R0, #"..gg.prompt({"请输入要修改的等级"},{"520"},{"修改等级"})[1])
string.toMusic("等级修改成功请前往主页查看")
end),
				changan.switch("十倍得分" ,
				function()		
co = gg.prompt({"调出","解锁"}, {}, {'checkbox',"checkbox"})
if co == nil then Main() end
if co[1] == true then
bycy(0x2c73f54 ,4,"~A MOVW R0, #1")
         end
if co[2] == true then
bycy(0xe7bce8 ,4,"~A MOVW R0, #1")
        end
string.toMusic("十倍得分成功请前往主页查看")
						end),
				changan.switch("微博特权" ,
						function()						
bycy(0x13aec50 ,4,"~A MOVW	 R0, #1")
string.toMusic("微博特权获取成功请前往主页查看")
						end),
		changan.switch("破解内购" ,
						function()			
bycy(0x1268d84 ,4,"~A B +0x10E38")
string.toMusic("内购破解成功")
						end),	
changan.switch("荣耀奖杯" ,
						function()-----偷			
function readPointer(name, offset, i)
	local re = gg.getRangesList(name)
	local x64 = gg.getTargetInfo().x64
	local va = {[true] = 32, [false] = 4}
	if re[i or 1] then
		local addr = re[i or 1].start + offset[1]
		for i = 2, #offset do
			addr = gg.getValues({{address = addr, flags = va[x64]}})
			if not x64 then
				addr[1].value = addr[1].value & 0xFFFFFFFF
			end
			addr = addr[1].value + offset[i]
		end
		return addr
	end
end

function gg.edits(addr, Table, name)
	local Table1 = {{}, {}}
	for k, v in ipairs(Table) do
		local value = {address = addr + v[3], value = v[1], flags = v[2], freeze = v[4]}
		if v[4] then
			Table1[2][#Table1[2] + 1] = value
		else
			Table1[1][#Table1[1] + 1] = value
		end
	end
	gg.addListItems(Table1[2])
	gg.setValues(Table1[1])
	gg.toast((name or "") .. "开启成功, 共修改" .. #Table .. "个值")
end



MR=gg.prompt({"输入你要的奖杯数量"},{"1700"},{"text"})
addr = readPointer("libil2cpp.so:bss",{0xBFE34, 0x21C, 0x11F0, 0x1378},1)
gg.edits(addr, {{0,4,0x10,true},{0,4,0x4,true},{MR[1],4,0x0,true}},"某人制作基址奖杯")
						end),							
						changan.switch("一键领取奖杯",
function()
function MZ(FUNCTIONADD,TYPE,VALUE)
local SOMOD=gg.getRangesList("il2cpp.so")
if SOMOD[1]==nil then _error() else
gg.setValues({{address=SOMOD[1].start+FUNCTIONADD,flags=TYPE,value=VALUE}})
gg.setValues({{address=SOMOD[1].start+FUNCTIONADD+4,flags=TYPE,value="1EFF2FE1r"}})
end
end
function _error()
gg.alert([[
   开启失败


   失败原因：进程存储太小！
   
   
   解决方案：刷新进程后重启开启
]])
end 

MZ(0xbf64b0,4,"~A MOV	 R0, #1")
gg.toast("🔰奖杯领取成功🔰")
string.toMusic('奖杯领取成功')
end,
function()
end),
     }),
		} , {
--------------以下是列表四
changan.text ("竞赛") , 
changan.box({"道具赛",---box示例 可以删 掉
changan.switch("断网状态[开/关]" ,
function()
bycy(0x2ab8efc,4, "~A MOV R0, #0")--开启


bycy(0x2ab8efc,4, "~A MOV R0, #1")--关闭
end),
changan.switch("关闭检测",
function()
bycy(0x2cba7c4,4,"~A MOVW	 R0, #0")--关闭1分40秒检测        
end,
                    function()
                    end), 
changan.switch("隐藏数据",-----------二改
function()
bycy(0x2c7c574,4,"~A MOV	 R0, #0")--1检测get_Currenbycy_32CheatDetect
bycy(0x2c7c574,4,"~A MOV	 R0, #0")--1检测get_Currenbycy_32CheatDetect
bycy(0x2c7c4c4,4,"~A MOV	 R0, #0")--2检测get_SpeedCheatDetect
bycy(0x2c7c624,4,"~A MOV	 R0, #0")--3检测get_KeyCheatLimit
bycy(0x2c7c784,4,"~A MOV	 R0, #0")--4检测get_SuperRunVIPCheatLimit
bycy(0x2c7c834,4,"~A MOV	 R0, #0")--5检测get_CharacterCheatCount
bycy(0x2c7c8e4,4,"~A MOV	 R0, #0")--6检测get_BoardCheatCount
bycy(0x152ec64,4,"~A MOV	 R0, #0")--防环境public Boolean IsValid(AdditionType type) { }
bycy(0x1d79e8c,4,"E3A00000h")--隐藏1get_IsOfflineMode
bycy(0x1d7e438,4,"E3A00000h")--隐藏2set_OnDisconnected
bycy(0x1d7e4f8,4,"E3A00000h")--隐藏3OnDisconnectedFromPhoton
bycy(0x1d7e86c,4,"E3A00000h")--隐藏4xLuaBaseProxy_OnDisconnectedFromPhoton
bycy(0x1d7e4f8,4,"E3A00000h")--隐藏5OnDisconnectedFromPhoton
bycy(0x1d7e4f8,4,"E3A00000h")--隐藏6OnDisconnectedFromPhoton
bycy(0x152c8a4,4,"~A MOV	 R0, #0")
bycy(0x18b1f74,4,"~A MOV	 R0, #0")
bycy(0x109c8a8,4,"~A MOV	 R0, #0")
bycy(0x2c734a0,4,"~A MOV	 R0, #0")
bycy(0x2c73554,4,"~A MOV	 R0, #0")
bycy(0x2c74bf4,4,"~A MOV	 R0, #0")
bycy(0x2c7c414,4,"~A MOV	 R0, #0")
bycy(0x2c7c4c4,4,"~A MOV	 R0, #0")
bycy(0x2c7c574,4,"~A MOV	 R0, #0")
bycy(0x2c7c6d4,4,"~A MOV	 R0, #0")
bycy(0x2c7c784,4,"~A MOV	 R0, #0")
bycy(0x2c7c834,4,"~A MOV	 R0, #0")
bycy(0xbe0fa4,4,"~A MOV	 R0, #0")
bycy(0x18c7bbc,4,"~A MOV	 R0, #0")
bycy(0x18c0c34,4,"~A MOV	 R0, #0")
bycy(0x18bb5e4,4,"~A MOV	 R0, #0")
bycy(0x2bd9520,4,"~A MOV	 R0, #0")
bycy(0x2bdd970,4,"~A MOV	 R0, #0")
bycy(0x18b197c,4,"~A MOV	 R0, #0")
end),
changan.switch("历史段位" ,
						function()			
bycy(0xbac47c,4,"~A MOVW	R0, #"..gg.prompt({"请输入要修改的历史段位"},{"520"},{"text"})[1])
gg.alert('重启即生效')
						end),	
changan.switch("平板视角",
                    function()
search(1.5,16,32)
py1(33,16,0xC)
py1(20,16,0x18)
xg1(45,16,0x1C,true)
gg.alert('平板视角开启成功')
end,
function()
search(1.5,16,32)
py1(33,16,0xC)
py1(20,16,0x18)
xg1(40,16,0x1C,true)
                    end,
                    function()
                    end),
                    changan.switch("历史段位" ,
function()
cy(0xbac47c ,4,"~A MOVW R0, #"..gg.prompt({"请输入代码"},{""},{"text"})[1])	
string.toMusic("修改成功")
end) ,
changan.switch("匹配框" ,
function()
cy(0x17a3c9c ,4,"~A MOVW R0, #"..gg.prompt({"请输入代码"},{""},{"text"})[1])
string.toMusic("匹配框成功")
end) ,
                    changan.switch("聚能配置",
function()
gg.alert("推荐：\n时间聚能\n延迟15秒\n宝物带2个")
bf = gg.prompt({"选择等级[1;10]","扇子","卫衣","校服","相机","延迟时间[0;15]","时间聚能","跳跃聚能","下滑聚能","撞墙聚能"}, {}, {"number","checkbox","checkbox","checkbox","checkbox","number","checkbox","checkbox","checkbox","checkbox"})
if bf == nil then else
if bf[1] == "10" then gg.alert("你选择了满级宝物聚能") else gg.alert("你选择了 "..bf[1].." 级宝物聚能") end
if bf[6] == "0" then gg.alert("你选择了 默认时间 聚能一次") else gg.alert("你选择了延迟 "..bf[6].." 秒聚能一次") end
if bf[7] == true then gg.alert("你选择了时间聚能") end
if bf[8] == true then gg.alert("你选择了跳跃聚能") end
if bf[9] == true then gg.alert("你选择了下滑聚能") end
if bf[10] == true then gg.alert("你选择了撞墙聚能") end
if bf[2] == true then else if bf[3] == true then else if bf[4] == true then else if bf[5] == true then else gg.alert("请选择聚能宝物") end end end end
if bf[7] == true then else if bf[8] == true then else if bf[9] == true then else if bf[10] == true then else gg.alert("请选择聚能类型") end end end end
if bf[7] == true then
if bf[2] == true then
if bf[1] == "10" then

search(2910,4,32)
py1(1,4,0x4)
py1(1,4,-0x4)
xg1(1,16,0x74)
xg1(0,16,0x64)
xg1(0,16,0x60)
xg1(0,16,0xA8)
xg1(0,16,0x98)
xg1(bf[6],16,0x94)
xg1(0,4,0x5C)
xg1(0,4,0x50)
xg1(3,4,0x4C)
gg.clearResults()
gg.clearList()
else
search("290"..bf[1],4,32)
py1(1,4,0x4)
py1(1,4,-0x4)
xg1(1,16,0x74)
xg1(0,16,0x64)
xg1(0,16,0x60)
xg1(0,16,0xA8)
xg1(0,16,0x98)
xg1(bf[6],16,0x94)
xg1(0,4,0x5C)
xg1(0,4,0x50)
xg1(3,4,0x4C)
gg.clearResults()
gg.clearList()
end
end
if bf[3] == true then
if bf[1] == "10" then
search(3010,4,32)
py1(1,4,0x4)
py1(1,4,-0x4)
xg1(1,16,0x74)
xg1(0,16,0x64)
xg1(0,16,0x60)
xg1(0,16,0xA8)
xg1(0,16,0x98)
xg1(bf[6],16,0x94)
xg1(0,4,0x5C)
xg1(0,4,0x50)
xg1(3,4,0x4C)
gg.clearResults()
gg.clearList()
else
search("300"..bf[1],4,32)
py1(1,4,0x4)
py1(1,4,-0x4)
xg1(1,16,0x74)
xg1(0,16,0x64)
xg1(0,16,0x60)
xg1(0,16,0xA8)
xg1(0,16,0x98)
xg1(bf[6],16,0x94)
xg1(0,4,0x5C)
xg1(0,4,0x50)
xg1(3,4,0x4C)
gg.clearResults()
gg.clearList()
end
end
if bf[4] == true then
if bf[1] == "10" then
search(3110,4,32)
py1(1,4,0x4)
py1(1,4,-0x4)
xg1(1,16,0x74)
xg1(0,16,0x64)
xg1(0,16,0x60)
xg1(0,16,0xA8)
xg1(0,16,0x98)
xg1(bf[6],16,0x94)
xg1(0,4,0x5C)
xg1(0,4,0x50)
xg1(3,4,0x4C)
gg.clearResults()
gg.clearList()
else
search("310"..bf[1],4,32)
py1(1,4,0x4)
py1(1,4,-0x4)
xg1(1,16,0x74)
xg1(0,16,0x64)
xg1(0,16,0x60)
xg1(0,16,0xA8)
xg1(0,16,0x98)
xg1(bf[6],16,0x94)
xg1(0,4,0x5C)
xg1(0,4,0x50)
xg1(3,4,0x4C)
gg.clearResults()
gg.clearList()
end
end
if bf[5] == true then
if bf[1] == "10" then
search(3210,4,32)
py1(1,4,0x4)
py1(1,4,-0x4)
xg1(1,16,0x74)
xg1(0,16,0x64)
xg1(0,16,0x60)
xg1(0,16,0xA8)
xg1(0,16,0x98)
xg1(bf[6],16,0x94)
xg1(0,4,0x5C)
xg1(0,4,0x50)
xg1(3,4,0x4C)
gg.clearResults()
gg.clearList()
else
search("320"..bf[1],4,32)
py1(1,4,0x4)
py1(1,4,-0x4)
xg1(1,16,0x74)
xg1(0,16,0x64)
xg1(0,16,0x60)
xg1(0,16,0xA8)
xg1(0,16,0x98)
xg1(bf[6],16,0x94)
xg1(0,4,0x5C)
xg1(0,4,0x50)--类型
xg1(3,4,0x4C)
gg.clearResults()
gg.clearList()
end
end
end
if bf[10] == true then
if bf[2] == true then
if bf[1] == "10" then
search(2910,4,32)
py1(1,4,0x4)
py1(1,4,-0x4)
xg1(1,16,0x74)
xg1(0,16,0x64)
xg1(0,16,0x60)
xg1(0,16,0xA8)
xg1(0,16,0x98)
xg1(bf[6],16,0x94)
xg1(0,4,0x5C)
xg1(5,4,0x50)
xg1(3,4,0x4C)
gg.clearResults()
gg.clearList()
else
search("290"..bf[1],4,32)
py1(1,4,0x4)
py1(1,4,-0x4)
xg1(1,16,0x74)
xg1(0,16,0x64)
xg1(0,16,0x60)
xg1(0,16,0xA8)
xg1(0,16,0x98)
xg1(bf[6],16,0x94)
xg1(0,4,0x5C)
xg1(5,4,0x50)
xg1(3,4,0x4C)
gg.clearResults()
gg.clearList()
end
end
if bf[3] == true then
if bf[1] == "10" then
search(3010,4,32)
py1(1,4,0x4)
py1(1,4,-0x4)
xg1(1,16,0x74)
xg1(0,16,0x64)
xg1(0,16,0x60)
xg1(0,16,0xA8)
xg1(0,16,0x98)
xg1(bf[6],16,0x94)
xg1(0,4,0x5C)
xg1(5,4,0x50)
xg1(3,4,0x4C)
gg.clearResults()
gg.clearList()
else
search("300"..bf[1],4,32)
py1(1,4,0x4)
py1(1,4,-0x4)
xg1(1,16,0x74)
xg1(0,16,0x64)
xg1(0,16,0x60)
xg1(0,16,0xA8)
xg1(0,16,0x98)
xg1(bf[6],16,0x94)
xg1(0,4,0x5C)
xg1(5,4,0x50)
xg1(3,4,0x4C)
gg.clearResults()
gg.clearList()
end
end
if bf[4] == true then
if bf[1] == "10" then
search(3110,4,32)
py1(1,4,0x4)
py1(1,4,-0x4)
xg1(1,16,0x74)
xg1(0,16,0x64)
xg1(0,16,0x60)
xg1(0,16,0xA8)
xg1(0,16,0x98)
xg1(bf[6],16,0x94)
xg1(0,4,0x5C)
xg1(5,4,0x50)
xg1(3,4,0x4C)
gg.clearResults()
gg.clearList()
else
search("310"..bf[1],4,32)
py1(1,4,0x4)
py1(1,4,-0x4)
xg1(1,16,0x74)
xg1(0,16,0x64)
xg1(0,16,0x60)
xg1(0,16,0xA8)
xg1(0,16,0x98)
xg1(bf[6],16,0x94)
xg1(0,4,0x5C)
xg1(5,4,0x50)
xg1(3,4,0x4C)
gg.clearResults()
gg.clearList()
end
end
if bf[5] == true then
if bf[1] == "10" then
search(3210,4,32)
py1(1,4,0x4)
py1(1,4,-0x4)
xg1(1,16,0x74)
xg1(0,16,0x64)
xg1(0,16,0x60)
xg1(0,16,0xA8)
xg1(0,16,0x98)
xg1(bf[6],16,0x94)
xg1(0,4,0x5C)
xg1(5,4,0x50)
xg1(3,4,0x4C)
gg.clearResults()
gg.clearList()
else
search("320"..bf[1],4,32)
py1(1,4,0x4)
py1(1,4,-0x4)
xg1(1,16,0x74)
xg1(0,16,0x64)
xg1(0,16,0x60)
xg1(0,16,0xA8)
xg1(0,16,0x98)
xg1(bf[6],16,0x94)
xg1(0,4,0x5C)
xg1(5,4,0x50)--类型
xg1(3,4,0x4C)
gg.clearResults()
gg.clearList()
end
end
end
if bf[9] == true then
if bf[2] == true then
if bf[1] == "10" then
search(2910,4,32)
py1(1,4,0x4)
py1(1,4,-0x4)
xg1(1,16,0x74)
xg1(0,16,0x64)
xg1(0,16,0x60)
xg1(0,16,0xA8)
xg1(0,16,0x98)
xg1(bf[6],16,0x94)
xg1(0,4,0x5C)
xg1(6,4,0x50)
xg1(3,4,0x4C)
gg.clearResults()
gg.clearList()
else
search("290"..bf[1],4,32)
py1(1,4,0x4)
py1(1,4,-0x4)
xg1(1,16,0x74)
xg1(0,16,0x64)
xg1(0,16,0x60)
xg1(0,16,0xA8)
xg1(0,16,0x98)
xg1(bf[6],16,0x94)
xg1(0,4,0x5C)
xg1(6,4,0x50)
xg1(3,4,0x4C)
gg.clearResults()
gg.clearList()
end
end
if bf[3] == true then
if bf[1] == "10" then
search(3010,4,32)
py1(1,4,0x4)
py1(1,4,-0x4)
xg1(1,16,0x74)
xg1(0,16,0x64)
xg1(0,16,0x60)
xg1(0,16,0xA8)
xg1(0,16,0x98)
xg1(bf[6],16,0x94)
xg1(0,4,0x5C)
xg1(6,4,0x50)
xg1(3,4,0x4C)
gg.clearResults()
gg.clearList()
else
search("300"..bf[1],4,32)
py1(1,4,0x4)
py1(1,4,-0x4)
xg1(1,16,0x74)
xg1(0,16,0x64)
xg1(0,16,0x60)
xg1(0,16,0xA8)
xg1(0,16,0x98)
xg1(bf[6],16,0x94)
xg1(0,4,0x5C)
xg1(6,4,0x50)
xg1(3,4,0x4C)
gg.clearResults()
gg.clearList()
end
end
if bf[4] == true then
if bf[1] == "10" then
search(3110,4,32)
py1(1,4,0x4)
py1(1,4,-0x4)
xg1(1,16,0x74)
xg1(0,16,0x64)
xg1(0,16,0x60)
xg1(0,16,0xA8)
xg1(0,16,0x98)
xg1(bf[6],16,0x94)
xg1(0,4,0x5C)
xg1(6,4,0x50)
xg1(3,4,0x4C)
gg.clearResults()
gg.clearList()
else
search("310"..bf[1],4,32)
py1(1,4,0x4)
py1(1,4,-0x4)
xg1(1,16,0x74)
xg1(0,16,0x64)
xg1(0,16,0x60)
xg1(0,16,0xA8)
xg1(0,16,0x98)
xg1(bf[6],16,0x94)
xg1(0,4,0x5C)
xg1(6,4,0x50)
xg1(3,4,0x4C)
gg.clearResults()
gg.clearList()
end
end
if bf[5] == true then
if bf[1] == "10" then
search(3210,4,32)
py1(1,4,0x4)
py1(1,4,-0x4)
xg1(1,16,0x74)
xg1(0,16,0x64)
xg1(0,16,0x60)
xg1(0,16,0xA8)
xg1(0,16,0x98)
xg1(bf[6],16,0x94)
xg1(0,4,0x5C)
xg1(6,4,0x50)
xg1(3,4,0x4C)
gg.clearResults()
gg.clearList()
else
search("320"..bf[1],4,32)
py1(1,4,0x4)
py1(1,4,-0x4)
xg1(1,16,0x74)
xg1(0,16,0x64)
xg1(0,16,0x60)
xg1(0,16,0xA8)
xg1(0,16,0x98)
xg1(bf[6],16,0x94)
xg1(0,4,0x5C)
xg1(6,4,0x50)--类型
xg1(3,4,0x4C)
gg.clearResults()
gg.clearList()
end
end
end
if bf[8] == true then
if bf[2] == true then
if bf[1] == "10" then
search(2910,4,32)
py1(1,4,0x4)
py1(1,4,-0x4)
xg1(1,16,0x74)
xg1(0,16,0x64)
xg1(0,16,0x60)
xg1(0,16,0xA8)
xg1(0,16,0x98)
xg1(bf[6],16,0x94)
xg1(0,4,0x5C)
xg1(7,4,0x50)
xg1(3,4,0x4C)
gg.clearResults()
gg.clearList()
else
search("290"..bf[1],4,32)
py1(1,4,0x4)
py1(1,4,-0x4)
xg1(1,16,0x74)
xg1(0,16,0x64)
xg1(0,16,0x60)
xg1(0,16,0xA8)
xg1(0,16,0x98)
xg1(bf[6],16,0x94)
xg1(0,4,0x5C)
xg1(7,4,0x50)
xg1(3,4,0x4C)
gg.clearResults()
gg.clearList()
end
end
if bf[3] == true then
if bf[1] == "10" then
search(3010,4,32)
py1(1,4,0x4)
py1(1,4,-0x4)
xg1(1,16,0x74)
xg1(0,16,0x64)
xg1(0,16,0x60)
xg1(0,16,0xA8)
xg1(0,16,0x98)
xg1(bf[6],16,0x94)
xg1(0,4,0x5C)
xg1(7,4,0x50)
xg1(3,4,0x4C)
gg.clearResults()
gg.clearList()
else
search("300"..bf[1],4,32)
py1(1,4,0x4)
py1(1,4,-0x4)
xg1(1,16,0x74)
xg1(0,16,0x64)
xg1(0,16,0x60)
xg1(0,16,0xA8)
xg1(0,16,0x98)
xg1(bf[6],16,0x94)
xg1(0,4,0x5C)
xg1(7,4,0x50)
xg1(3,4,0x4C)
gg.clearResults()
gg.clearList()
end
end
if bf[4] == true then
if bf[1] == "10" then
search(3110,4,32)
py1(1,4,0x4)
py1(1,4,-0x4)
xg1(1,16,0x74)
xg1(0,16,0x64)
xg1(0,16,0x60)
xg1(0,16,0xA8)
xg1(0,16,0x98)
xg1(bf[6],16,0x94)
xg1(0,4,0x5C)
xg1(7,4,0x50)
xg1(3,4,0x4C)
gg.clearResults()
gg.clearList()
else
search("310"..bf[1],4,32)
py1(1,4,0x4)
py1(1,4,-0x4)
xg1(1,16,0x74)
xg1(0,16,0x64)
xg1(0,16,0x60)
xg1(0,16,0xA8)
xg1(0,16,0x98)
xg1(bf[6],16,0x94)
xg1(0,4,0x5C)
xg1(7,4,0x50)
xg1(3,4,0x4C)
gg.clearResults()
gg.clearList()
end
end
if bf[5] == true then
if bf[1] == "10" then
search(3210,4,32)
py1(1,4,0x4)
py1(1,4,-0x4)
xg1(1,16,0x74)
xg1(0,16,0x64)
xg1(0,16,0x60)
xg1(0,16,0xA8)
xg1(0,16,0x98)
xg1(bf[6],16,0x94)
xg1(0,4,0x5C)
xg1(7,4,0x50)
xg1(3,4,0x4C)
gg.clearResults()
gg.clearList()
else
search("320"..bf[1],4,32)
py1(1,4,0x4)
py1(1,4,-0x4)
xg1(1,16,0x74)
xg1(0,16,0x64)
xg1(0,16,0x60)
xg1(0,16,0xA8)
xg1(0,16,0x98)
xg1(bf[6],16,0x94)
xg1(0,4,0x5C)
xg1(7,4,0x50)--类型
xg1(3,4,0x4C)
gg.clearResults()
gg.clearList()
end
end
end
end
gg.alert('开启成功')

end,
function()
end),

      
                    changan.switch("聚能",
function()
                    bf = gg.prompt({"扇子","卫衣","校服","相机","选择等级[1;10]","冷却时间","聚能时间","聚能方式[1;6]",}, {}, {"checkbox","checkbox","checkbox","checkbox","number","number","number","number"})
if bf == nil then Main0() end
if bf[1] == true then
if bf[5] == "10" then
search(2910,4,32)
py1(1,4,0x4)
py1(1,4,-0x4)
xg1(1,16,0x74)
xg1(0,16,0x64)
xg1(bf[7],16,0x60)
xg1(0,16,0xA8)
xg1(0,16,0x98)
xg1(bf[6],16,0x94)
xg1(0,4,0x5C)
xg1(0,4,0x50)
xg1(bf[8],4,0x4C)
gg.clearResults()
gg.clearList()
else
search("290"..bf[1],4,32)
py1(1,4,0x4)
py1(1,4,-0x4)
xg1(1,16,0x74)
xg1(0,16,0x64)
xg1(bf[7],16,0x60)
xg1(0,16,0xA8)
xg1(0,16,0x98)
xg1(bf[6],16,0x94)
xg1(0,4,0x5C)
xg1(0,4,0x50)
xg1(bf[8],4,0x4C)
gg.toast("Done✔️")
toMusic('开启成功')
gg.clearResults()
gg.clearList()
end
end
if bf[2] == true then
if bf[5] == "10" then
search(3010,4,32)
py1(1,4,0x4)
py1(1,4,-0x4)
xg1(1,16,0x74)
xg1(0,16,0x64)
xg1(bf[7],16,0x60)
xg1(0,16,0xA8)
xg1(0,16,0x98)
xg1(bf[6],16,0x94)
xg1(0,4,0x5C)
xg1(0,4,0x50)
xg1(bf[8],4,0x4C)
gg.clearResults()
gg.clearList()
else
search("300"..bf[1],4,32)
py1(1,4,0x4)
py1(1,4,-0x4)
xg1(1,16,0x74)
xg1(0,16,0x64)
xg1(bf[7],16,0x60)
xg1(0,16,0xA8)
xg1(0,16,0x98)
xg1(bf[6],16,0x94)
xg1(0,4,0x5C)
xg1(0,4,0x50)
xg1(bf[8],4,0x4C)
gg.toast("Done✔️")
toMusic('开启成功')
gg.clearResults()
gg.clearList()
end
end
if bf[3] == true then
if bf[5] == "10" then
search(3110,4,32)
py1(1,4,0x4)
py1(1,4,-0x4)
xg1(1,16,0x74)
xg1(0,16,0x64)
xg1(bf[7],16,0x60)
xg1(0,16,0xA8)
xg1(0,16,0x98)
xg1(bf[6],16,0x94)
xg1(0,4,0x5C)
xg1(0,4,0x50)
xg1(bf[8],4,0x4C)
gg.clearResults()
gg.clearList()
else
search("310"..bf[1],4,32)
py1(1,4,0x4)
py1(1,4,-0x4)
xg1(1,16,0x74)
xg1(0,16,0x64)
xg1(bf[7],16,0x60)
xg1(0,16,0xA8)
xg1(0,16,0x98)
xg1(bf[6],16,0x94)
xg1(0,4,0x5C)
xg1(0,4,0x50)
xg1(bf[8],4,0x4C)
gg.toast("Done✔️")
toMusic('开启成功')
gg.clearResults()
gg.clearList()
end
end
if bf[4] == true then
if bf[5] == "10" then
search(3210,4,32)
py1(1,4,0x4)
py1(1,4,-0x4)
xg1(1,16,0x74)
xg1(0,16,0x64)
xg1(bf[7],16,0x60)
xg1(0,16,0xA8)
xg1(0,16,0x98)
xg1(bf[6],16,0x94)
xg1(0,4,0x5C)
xg1(0,4,0x50)
xg1(bf[8],4,0x4C)
gg.clearResults()
gg.clearList()
else
search("320"..bf[1],4,32)
py1(1,4,0x4)
py1(1,4,-0x4)
xg1(1,16,0x74)
xg1(0,16,0x64)
xg1(bf[7],16,0x60)
xg1(0,16,0xA8)
xg1(0,16,0x98)
xg1(bf[6],16,0x94)
xg1(0,4,0x5C)
xg1(0,4,0x50)
xg1(bf[8],4,0x4C)
end
end
				end,
				function()
				end),         
              changan.switch("全服排名",
function()
bycy(0xde74fc,4,"~A MOV R0, #"..gg.prompt({"请输入排名"},{"1"},{"text"})[1])
string.toMusic('全服排名修改成功成功')
end),
changan.switch("省服排名",
function()
bycy(0xde75a4,4,"~A MOV R0, #"..gg.prompt({"请输入排名"},{"1"},{"text"})[1])--省服排名
string.toMusic('省服排名修改成功')
end),                    
changan.switch("调出赛事" ,
function()
bycy(0x1237418 ,4,"~A MOVW R0, #1")
string.toMusic("bycy_32提醒您赛事调出成功请前往道具赛界面查看")
end),
changan.switch("无视碰撞" ,
function()
bycy(0x1d45644 ,4,"~A MOVW R0, #1")
string.toMusic("bycy_32提醒您无视碰撞开启成功")
end),
changan.switch("无视道具" ,
function()
bycy(0x1a567d0,4,"~A MOV R0, #2")--无视道具
bycy(0x1e22b10,4,"~A MOV R0, #0")--无视道具
string.toMusic("bycy_32提醒您无视道具开启成功")
end),
changan.switch("房间防踢" ,
function()
bycy(0x1e3770c ,4,"~A MOVW R0, #0")
string.toMusic("bycy_32提醒您开黑房间防踢开启成功")
end),
changan.switch("无宝聚能" ,
function()
bycy(0x1c6cc18 ,4,"~A B -0x1C0")
string.toMusic("bycy_32提醒您无宝聚能开启成功")
end),
changan.switch("重力聚能" ,
function()
bycy(0x1c6b06c ,4,"~A B +0x19EC")
string.toMusic("bycy_32提醒您重力聚能开启成功")
end),
changan.switch("跳跃聚能",
function()
local il2cppmod=gg.getRangesList('il2cpp.so')
gg.setValues({{address=il2cppmod[1].start+0x1c6ad7c,flags=4,value='~A B +0x1CDC'}})
gg.setValues({{address=il2cppmod[1].start+0x1c6ad7c+4,flags=4,value='~A BX LR'}})
           toMusic('成功') 
end,
function()

end),
changan.switch("修改文字",
function()
gg.clearResults()
gg.setRanges(32)
a = gg.prompt({"请输入更改前的文字","请输入更改后的文字"},{[1]="别跑!",[2]="人机!"},{"text","text"})
if not a then return end
if a[1] == "" then return end
if a[2] == "" then return end
gg.searchNumber(";"..a[1], gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1, 0)
if gg.getResultsCount() == 0 then gg.alert('搜索失败') return end
gg.getResults(99999)
gg.editAll(";"..a[2], gg.TYPE_WORD)
gg.toast("Done✔️")
toMusic('开启成功')    
end,
function()

end),
changan.switch("后程结算" ,
function()
bycy=gg.prompt({"请输入你要结算的时间"},{"80"},{"text"})[1]    
if not df then return end
gg.alert("将会在"..df.."秒后结算")
string.toMusic("将会在"..df.."秒后结算")
gg.sleep(""..df.."000")
bycy(0x17554ec ,4,"~A MOVW R0, #1")
bycy(0x17554F0 ,4,"~A BX LR")
gg.alert("结算成功")
string.toMusic("结算成功")
end,
function()
bycy(0x17554ec ,4,"~A MOVW R0, #0")
string.toMusic("关闭成功")
end),
changan.switch("直接结算" ,
function()
bycy(0x17554ec ,4,"~A MOVW R0, #1")
bycy(0x17554F0 ,4,"~A BX LR")
string.toMusic("结算成功")
end,
function()
bycy(0x17554ec ,4,"~A MOVW R0, #0")
string.toMusic("关闭成功")
end),
changan.switch("开局道具" ,
function()
bycy(0xb71f80,4,"~A MOVW	 R0, #"..gg.prompt({"1=恶魔\n2=乌龟\n3=颜料炸弹\n4=10%能量"},{"1"},{"text"})[1])
end),
changan.switch("滑板时长",
function()
		function SearchWrite(Search, Write, Type) 
gg.clearResults() 
gg.setVisible(false) 
gg.searchNumber(Search[1][1], Type) 
local count = gg.getResultCount() 
local result = gg.getResults(count) 
gg.clearResults() 
local data = {} 
local base = Search[1][2] 
if (count > 0) then 
for i, v in ipairs(result) do 
v.isUseful = true 
end 
for k=2, #Search do 
local tmp = {} 
local offset = Search[k][2] - base 
local num = Search[k][1] 
for i, v in ipairs(result) do 
tmp[#tmp+1] = {} 
tmp[#tmp].address = v.address + offset 
tmp[#tmp].flags = v.flags 
end 
tmp = gg.getValues(tmp) 
for i, v in ipairs(tmp) do 
if ( tostring(v.value) ~= tostring(num) ) then 
result[i].isUseful = false 
end 
end 
end 
for i, v in ipairs(result) do 
if (v.isUseful) then 
data[#data+1] = v.address 
end 
end 
if (#data > 0) then 
local t = {} 
local base = Search[1][2] 
for i=1, #data do 
for k, w in ipairs(Write) do 
offset = w[2] - base 
t[#t+1] = {} 
t[#t].address = data[i] + offset 
t[#t].flags = Type 
t[#t].value = w[1] 
if (w[3] == true) then 
local item = {} 
item[#item+1] = t[#t] 
item[#item].freeze = true 
gg.addListItems(item) 
end 
end 
end 
gg.setValues(t) 
else 
return false 
end 
else 
return false 
end
end


     gg.setRanges(32)
local Name="滑板加速"
    local dataType = 16
    local tb1 = {{6000.0, 0x0}}
    local tb2 = {{0,0xC},{0,0x1C},{1740.0,0x8}} 
    SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local Name="滑板延长"
    local dataType = 16
    local tb1 = {{6000.0, 0x0}}
    local tb2 = {{0,0x4},{0,-0xC},{999999,-0x10}} 
    SearchWrite(tb1, tb2, dataType)    
    toMusic('开启成功')
end),


                             
                              
                                                    }),
changan.box({"分数赛",---box示例 可以删掉
                changan.switch("倍增得分",
                    function()
 NM= gg.prompt({'请输入需要修改的倍增分数\n推荐改300\n大厅界面开启否则卡退'},{[1]=300},{[1]='number'})[1]
if not NM then return end
bycy(0xb77ca8 ,4,"~A MOVW	 R0, #"..NM.."")
string.toMusic("bycy_32提醒您超级倍增开启成功") 
                    end,
                    function()
                        
                    end),
              
changan.switch("速度起飞",         
      function ()            
local t = {"libunity.so:bss", "Cb"}
local tt = {0x831C, 0xEC}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 16, value = 30, freeze = true}})
string.toMusic("速度起飞开启成功")
end,
function ()
local t = {"libunity.so:bss", "Cb"}
local tt = {0x831C, 0xEC}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 16, value = 1, freeze = true}})
string.toMusic("bycy_32提醒您速度起飞恢复成功")
end),
changan.switch("跳跃起飞",
function ()
bycy ( 0x1a5c294 , 4 , "0100A0E3r" )
string.toMusic("bycy_32提醒您跳跃起飞开启成功")
end,
function ()
end),
changan.switch("人物无敌",
function ()
bycy(0xc15fc4 ,4,"~A MOVW R0, #1")
string.toMusic("changan_32提醒您人物无敌开启成功")
end,
function ()
end),
            }),	
changan.box({"无尽赛",---box示例 可以删
changan.switch("相反动作",
function()
bycy(0x1c6ad7c,4,"~A MOV R0, #1")
gg.alert("相反动作开启成功")
string.toMusic('相反动作开启成功')
end,
function()

bycy(0x1c6ad7c,4,"~A MOV R0, #0")
gg.alert("相反动作关闭成功")
string.toMusic('相反动作关闭成功')
end,
function ()
end),
changan.switch("滑板滑翔",
                    function()
bycy(0x1f6bf80 ,4,"~A MOVW R0, #1")
string.toMusic("bycy提醒您滑板滑翔开起成功")
                    end,
                    function()
bycy(0x1f6bf80 ,4,"~A MOVW R0, #0") 
string.toMusic("bycy提醒您滑板滑翔关闭成功")                
                    end),
changan.switch("滑板瞬移",
                    function()                
bycy(0x1dbb670 ,4,"~A MOVW R0, #1")
string.toMusic("bycy提醒您滑板瞬移开起成功")
                    end,
                    function()
bycy(0x1dbb670 ,4,"~A MOVW R0, #0")   
string.toMusic("bycy提醒您滑板瞬移关闭成功")        
                    end),                
changan.switch("滑板极速",
                    function()
bycy(0x1dbb578 ,4,"~A MOVW R0, #1")
string.toMusic("bycy提醒您滑板极速开起成功")
                    end,
                    function()
bycy(0x1dbb578 ,4,"~A MOVW R0, #0") 
string.toMusic("bycy提醒您滑板极速关闭成功")                 
                    end),         
changan.switch("正常双跳",
                    function()                   
bycy(0x1dbb388 ,4,"~A MOVW R0, #1")
string.toMusic("bycy提醒您正常双跳开起成功")
                    end,
                    function()
bycy(0x1dbb388 ,4,"~A MOVW R0, #0")             
string.toMusic("bycy提醒您正常双跳关闭成功")    
                    end),           
changan.switch("滑板高跳",
                    function()                    
bycy(0x1dbb290 ,4,"~A MOVW R0, #1")
string.toMusic("bycy提醒您滑板高跳开起成功")
                    end,
                    function()
bycy(0x1dbb290 ,4,"~A MOVW R0, #0") 
string.toMusic("bycy提醒您滑板高跳关闭成功")
                    end),        
changan.switch("无限跳跃",
                    function()                    
bycy(0x1a58888 ,4,"~A MOVW R0, #1")
string.toMusic("bycy提醒您无限跳跃开起成功")
                    end,
                    function()
bycy(0x1a58888 ,4,"~A MOVW R0, #0")      
string.toMusic("bycy提醒您无限跳跃关闭成功")               
                    end),  
          changan.switch("无尽不死",
                    function()
                    
bycy(0xc15fc4 ,4,"~A MOVW R0, #1")
string.toMusic("bycy提醒您无尽不死开起成功")
                    end,
                    function()
  bycy(0xc15fc4 ,4,"~A MOVW R0, #0")              
  string.toMusic("bycy提醒您无尽不死关闭成功")       
                    end),                  
                  
     }),           
            
            	 	changan.box({"对抗赛",---box示例 可以删掉
            	 				changan.switch("自动聚能",
                   function()
local T_1={
"宝物等级[1;10]" ,
"相机",
"校服",
"卫衣",
"扇子",
}
local T_2=nil
local T_3={"number","checkbox","checkbox","checkbox","checkbox"}
local Pr=gg.prompt(T_1,T_2,T_3)
if Pr==nil then
return
elseif Pr[2]==true then
if Pr[1]=="10" then
Name="相机自动聚能"
ms.ss("3210",4,32)
ms.py(1,4,4)
ms.py(1,-4,4)
ms.edit(0,0x5c,4)
ms.edit(0,0x50,4)
ms.edit(2,0x4c,4)
ms.edit(0,0x74,4)
ms.edit(0,0x6c,4)
ms.edit(0,0xa8,4)
ms.edit(0,0x98,4)
ms.edit(999,0x94,4)
else
Name="相机自动聚能"
ms.ss("320"..Pr[1],4,32)
ms.py(1,4,4)
ms.py(1,-4,4)
ms.edit(0,0x5c,4)
ms.edit(0,0x50,4)
ms.edit(2,0x4c,4)
ms.edit(0,0x74,4)
ms.edit(0,0x6c,4)
ms.edit(0,0xa8,4)
ms.edit(0,0x98,4)
ms.edit(999,0x94,4)
end
elseif Pr[3]==true then
if Pr[1]=="10" then
Name="校服自动聚能"
ms.ss("3110",4,32)
ms.py(1,4,4)
ms.py(1,-4,4)
ms.edit(0,0x5c,4)
ms.edit(0,0x50,4)
ms.edit(2,0x4c,4)
ms.edit(0,0x74,4)
ms.edit(0,0x6c,4)
ms.edit(0,0xa8,4)
ms.edit(0,0x98,4)
ms.edit(999,0x94,4)
else
Name="校服自动聚能"
ms.ss("310"..Pr[1],4,32)
ms.py(1,4,4)
ms.py(1,-4,4)
ms.edit(0,0x5c,4)
ms.edit(0,0x50,4)
ms.edit(2,0x4c,4)
ms.edit(0,0x74,4)
ms.edit(0,0x6c,4)
ms.edit(0,0xa8,4)
ms.edit(0,0x98,4)
ms.edit(999,0x94,4)
end
elseif Pr[4]==true then
if Pr[1]=="10" then
Name="卫衣自动聚能"
ms.ss("3010",4,32)
ms.py(1,4,4)
ms.py(1,-4,4)
ms.edit(0,0x5c,4)
ms.edit(0,0x50,4)
ms.edit(2,0x4c,4)
ms.edit(0,0x74,4)
ms.edit(0,0x6c,4)
ms.edit(0,0xa8,4)
ms.edit(0,0x98,4)
ms.edit(999,0x94,4)
else
Name="卫衣自动聚能"
ms.ss("300"..Pr[1],4,32)
ms.py(1,4,4)
ms.py(1,-4,4)
ms.edit(0,0x5c,4)
ms.edit(0,0x50,4)
ms.edit(2,0x4c,4)
ms.edit(0,0x74,4)
ms.edit(0,0x6c,4)
ms.edit(0,0xa8,4)
ms.edit(0,0x98,4)
ms.edit(999,0x94,4)
end
elseif Pr[5]==true then
if Pr[1]=="10" then
Name="扇子自动聚能"
ms.ss("2910",4,32)
ms.py(1,4,4)
ms.py(1,-4,4)
ms.edit(0,0x5c,4)
ms.edit(0,0x50,4)
ms.edit(2,0x4c,4)
ms.edit(0,0x74,4)
ms.edit(0,0x6c,4)
ms.edit(0,0xa8,4)
ms.edit(0,0x98,4)
ms.edit(999,0x94,4)
else
Name="扇子自动聚能"
ms.ss("290"..Pr[1],4,32)
ms.py(1,4,4)
ms.py(1,-4,4)
ms.edit(0,0x5c,4)
ms.edit(0,0x50,4)
ms.edit(2,0x4c,4)
ms.edit(0,0x74,4)
ms.edit(0,0x6c,4)
ms.edit(0,0xa8,4)
ms.edit(0,0x98,4)
ms.edit(999,0x94,4)
end
end

			end),            
                    }),

		},--后面可自行拓展，需要对应stab
		{----5
		changan.text ("音乐") , 
		changan.button("停止播放",
				function()
	            gg.toast("正在停止播放...")
      for i=1,100 do
        gg.playMusic("stop")
        gg.playMusic("stop")
        gg.playMusic("stop")
        gg.playMusic("stop")
        gg.playMusic("stop")
        gg.playMusic("stop")
      end
      gg.toast("云烛提醒您音乐已停止")
      gg.toast("云烛提醒您音乐已停止")
    end),
		wyylog		
		},{----6
changan.text("","#000000","18sp"),		
changan.text("云烛带你杀穿检测","#ff0000","18sp"),
changan.text("项目负责人:YZ","#000000","14sp"),
changan.text("","#000000","15sp"),
changan.button("加入我们",
function ()
qq.joinGroup ("957836353")
隐藏 ()
end),
changan.button("退出插件",
			function()
				tuichu=1
			end),
		},{----7
		
		
			

		}
	})


显示 = 1
while true do
if tuichu == 1 then break end
jianting3(qiehuan)
gg.sleep(120)
end
luajava.setFloatingWindowHide(false)

local function invoke()
return window:removeView(floatWindow)
end
luajava.post(invoke)
luajava.setFloatingWindowHide(false)