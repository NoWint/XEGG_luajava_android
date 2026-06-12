-- ------------------------------------------------------------
-- EMPTY BLOCK
-- ------------------------------------------------------------




-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

    local info = {
    example_version = '1.0.3', 
    name = 'TINY', 
    appid = '71421', 
    appkey = 'pNpeRRzqTgPrGlNs', 
    rc4key = 'RV1Dp52d81M68rrR', 
    version = '1.0', 
    mi_type = '3'
}

-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

local rlyunyz = getrlyunyz(info)

-- ------------------------------------------------------------
-- EMPTY BLOCK
-- ------------------------------------------------------------





-- ------------------------------------------------------------
-- FUNCTION_DEF BLOCK
-- ------------------------------------------------------------

function panduan(rec) fille, err = io.open(rec) if fille == nil then return false else return true end end

-- ------------------------------------------------------------
-- CONDITION BLOCK
-- ------------------------------------------------------------

if panduan("/sdcard/rlgg/YC/pictures")~=true then

-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

file.download("https://xg-cloudreve.cloud-k1.riyx.cn/f/QzzRcD/pictures", '/sdcard/rlgg/YC/pictures')
unzip("/sdcard/rlgg/YC/pictures", "/sdcard/rlgg/YC/")

-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

end

-- ------------------------------------------------------------
-- EMPTY BLOCK
-- ------------------------------------------------------------





-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

file.checkFile("/sdcard/rlgg/YC/color") -- 判断文件是否存在
local RGBcolor = file.read("/sdcard/rlgg/YC/color") -- 读取文件内容

-- ------------------------------------------------------------
-- CONDITION BLOCK
-- ------------------------------------------------------------

if RGBcolor ~= "" then -- 判断内容是否为空

-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

else
RGBcolor="4180FF"
end

-- ------------------------------------------------------------
-- EMPTY BLOCK
-- ------------------------------------------------------------



-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

changan={}
local colorvs = {} --控件颜色

-- ------------------------------------------------------------
-- IMPORT BLOCK
-- ------------------------------------------------------------

local windowManager = require('windowManager')
local baseWindow = require('floatingWindowManager2')
local ui = require("ui")
local material3 = require 'material3'
local context = baseWindow:getContext()
YoYoImpl=luajava.getYoYoImpl()

-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

vibra = context:getSystemService(Context.VIBRATOR_SERVICE)
dex.loadfile("/sdcard/rlgg/YC/Googlematerial.dex")

-- ------------------------------------------------------------
-- IMPORT BLOCK
-- ------------------------------------------------------------

import("com.google.android.material.card.MaterialCardView")
import("com.google.android.material.snackbar.Snackbar")
import("com.google.android.material.navigationrail.NavigationRailView")
import("com.google.android.material.navigation.NavigationView")
import("com.google.android.material.search.SearchView")
import("com.google.android.material.search.SearchBar")
import("com.google.android.material.floatingactionbutton.FloatingActionButton")
import("android.animation.LayoutTransition")
import("com.google.android.material.textfield.TextInputLayout")
import("com.google.android.material.textfield.TextInputEditText")
import("android.content.res.ColorStateList")
import("androidx.coordinatorlayout.widget.CoordinatorLayout")
import("androidx.core.widget.NestedScrollView")
import("androidx.recyclerview.widget.RecyclerView")
import('android.content.res.ColorStateList')
import'com.google.android.material.dialog.MaterialAlertDialogBuilder'

-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

dex.loadfile("/sdcard/rlgg/YC/CircleImageView.dex")

-- ------------------------------------------------------------
-- IMPORT BLOCK
-- ------------------------------------------------------------

import("android.widget.CircleImageView")

-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

local LottieDex=dex.loadfile('/sdcard/rlgg/YC/Lottie.dex')
local LottieAnimationView=LottieDex:loadClass("com.airbnb.lottie.LottieAnimationView")

-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

local MaterialColors = bindClass "com.google.android.material.color.MaterialColors"

-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

local ImageView = luajava.bindClass("android.widget.ImageView")
local MDC_R = luajava.bindClass("com.google.android.material.R")
local PathInterpolator = luajava.bindClass("android.view.animation.PathInterpolator")
local LayoutParams = luajava.bindClass('android.view.WindowManager$LayoutParams')

-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

layoutTransition=LayoutTransition()

-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

local pathInterpolator = PathInterpolator(0.35,  0.2,  0.35,  1.0)
layoutTransition:setInterpolator(LayoutTransition.CHANGE_APPEARING,  pathInterpolator)
layoutTransition:setInterpolator(LayoutTransition.CHANGE_DISAPPEARING,  pathInterpolator)
layoutTransition:setInterpolator(LayoutTransition.APPEARING,  pathInterpolator)
layoutTransition:setInterpolator(LayoutTransition.DISAPPEARING,  pathInterpolator)
layoutTransition:setDuration(500)

-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

baseWindow:darkMode()
baseWindow:lightMode()

-- ------------------------------------------------------------
-- EMPTY BLOCK
-- ------------------------------------------------------------



-- ------------------------------------------------------------
-- FUNCTION_DEF BLOCK
-- ------------------------------------------------------------

function getIcon(icon)

-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

return luajava.getBitmapDrawable("/sdcard/rlgg/YC/".. icon)

-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

end

-- ------------------------------------------------------------
-- EMPTY BLOCK
-- ------------------------------------------------------------



-- ------------------------------------------------------------
-- FUNCTION_DEF BLOCK
-- ------------------------------------------------------------

function addTab(data)

-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

local menu = luajava.getIdView("navigation"):getMenu()

-- ------------------------------------------------------------
-- LOOP BLOCK
-- ------------------------------------------------------------

for i,  tab in ipairs(data) do

-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

local item = menu:add(0,  i,  i,  tab[1])
item:setIcon(getIcon(tab[2]))

-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

end
end

-- ------------------------------------------------------------
-- EMPTY BLOCK
-- ------------------------------------------------------------




-- ------------------------------------------------------------
-- FUNCTION_DEF BLOCK
-- ------------------------------------------------------------

function getRes(x)

-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

return 获取图片("/sdcard/rlgg/YC/"..x)
end

-- ------------------------------------------------------------
-- EMPTY BLOCK
-- ------------------------------------------------------------



-- ------------------------------------------------------------
-- FUNCTION_DEF BLOCK
-- ------------------------------------------------------------

function 获取图片(txt)

-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

ntxt = string.sub(string.gsub(txt, "/", "."), -10, -1)

-- ------------------------------------------------------------
-- CONDITION BLOCK
-- ------------------------------------------------------------

if string.find(tostring(txt), "http") ~= nil then
if panduan("/sdcard/rlgg/YC/"..ntxt) == false then

-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

luajava.download(txt, "/sdcard/rlgg/YC/"..ntxt)

-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

end
txt = "/sdcard/rlgg/YC/"..ntxt
end

-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

return luajava.getBitmapDrawable(txt)

-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

end

-- ------------------------------------------------------------
-- FUNCTION_DEF BLOCK
-- ------------------------------------------------------------

function getVerticalBG(gtvb1, gtvb3, gtvb4, gtvb5)

-- ------------------------------------------------------------
-- CONDITION BLOCK
-- ------------------------------------------------------------

if not gtvb4 then gtvb4 = 0 gtvb5 = 0xff000000 end

-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

local jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(gtvb3)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors(gtvb1)
jianbians:setStroke(gtvb4, gtvb5)

-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

return jianbians
end

-- ------------------------------------------------------------
-- FUNCTION_DEF BLOCK
-- ------------------------------------------------------------

function cardbg(gtvb1, gtvb4, gtvb5, g1, g2, g3, g4)

-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

        local jianbians = luajava.loadlayout({

        -- ------------------------------------------------------------
        -- OTHER BLOCK
        -- ------------------------------------------------------------

        GradientDrawable, 
        color = 0xff000000, 
        gradientType = GradientDrawable.LINEAR_GRADIENT, 
        orientation = GradientDrawable.Orientation.TOP_BOTTOM , 
})

-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

jianbians:setColors(gtvb1)
jianbians:setStroke(gtvb4, gtvb5)--边框宽度和颜色
jianbians:setCornerRadii({g1, g1, g2, g2, g3, g3, g4, g4})

-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

return jianbians
end

-- ------------------------------------------------------------
-- FUNCTION_DEF BLOCK
-- ------------------------------------------------------------

function newbg(gtvb1, gtvb3, gtvb4, gtvb5)

-- ------------------------------------------------------------
-- CONDITION BLOCK
-- ------------------------------------------------------------

if not gtvb4 then gtvb4 = 0 gtvb5 = 0xff000000 end

-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

        local jianbians = luajava.loadlayout({

        -- ------------------------------------------------------------
        -- OTHER BLOCK
        -- ------------------------------------------------------------

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

-- ------------------------------------------------------------
-- FUNCTION_DEF BLOCK
-- ------------------------------------------------------------

function getCorner(gtvb1, gtvb3, gtvb4, gtvb5, g1, g2, g3, g4)

-- ------------------------------------------------------------
-- CONDITION BLOCK
-- ------------------------------------------------------------

if not gtvb4 then gtvb4 = 0 gtvb5 = 0xff000000 end

-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

local jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(gtvb3)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors(gtvb1)
jianbians:setStroke(gtvb4, gtvb5)--边框宽度和颜色
jianbians:setCornerRadii({g1, g1, g2, g2, g3, g3, g4, g4})

-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

return jianbians
end

-- ------------------------------------------------------------
-- FUNCTION_DEF BLOCK
-- ------------------------------------------------------------

function getButtonBG()

-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

local selector = luajava.getStateListDrawable()

-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

        selector:addState({

        -- ------------------------------------------------------------
        -- OTHER BLOCK
        -- ------------------------------------------------------------

        android.R.attr.state_pressed

        -- ------------------------------------------------------------
        -- FUNCTION_CALL BLOCK
        -- ------------------------------------------------------------

},  getVerticalBG({0x55d7d7d7, 0x55d7d7d7}, 35))
        selector:addState({

        -- ------------------------------------------------------------
        -- OTHER BLOCK
        -- ------------------------------------------------------------

        -android.R.attr.state_pressed

        -- ------------------------------------------------------------
        -- FUNCTION_CALL BLOCK
        -- ------------------------------------------------------------

},  getVerticalBG({0x00ffffff, 0x00ffffff}, 35))

-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

return selector
end

-- ------------------------------------------------------------
-- EMPTY BLOCK
-- ------------------------------------------------------------



-- ------------------------------------------------------------
-- FUNCTION_DEF BLOCK
-- ------------------------------------------------------------

function guid()

-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

    seed = {
    'e', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'
}
tb = {}
for i = 1, 32 do

-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

table.insert(tb, seed[math.random(1, 16)])

-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

end

-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

sid = table.concat(tb)
    return string.format('%s%s%s', 
    string.sub(sid, 1, 8), 
    string.sub(sid, 10, 12), 
string.sub(sid, 21, 22))

-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

end

-- ------------------------------------------------------------
-- EMPTY BLOCK
-- ------------------------------------------------------------



-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

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
                layout_marginBottom="-10dp", 
                    {
                    TextView, 
                    textSize="15sp", 
                    textColor="#161616", 
                    text="R：", 
                    layout_height='33dp', 
                    layout_marginLeft="5dp", 
                    gravity="right|bottom"
                }, 
                    {
                    Slider, 
                    id="Rslider", 
                    stepSize=1, 
                    valueTo=255, 
                    valueFrom=0, 
                    trackHeight="14dp", 
                    ThumbHeight="22dp", 
                    tickVisible=false, 
                    trackStopIndicatorSize="0dp", 
                    thumbWidth="5dp", 
                    layout_width='wrap_content', 
                    layout_height='wrap_content', 

                    -- ------------------------------------------------------------
                    -- FUNCTION_CALL BLOCK
                    -- ------------------------------------------------------------

                    addOnChangeListener=function(slider, value, fromUser)

                    -- ------------------------------------------------------------
                    -- OTHER BLOCK
                    -- ------------------------------------------------------------

                    Rvalue=value

                    -- ------------------------------------------------------------
                    -- FUNCTION_CALL BLOCK
                    -- ------------------------------------------------------------

                    Rcolor=rgb2hex(value)

                    -- ------------------------------------------------------------
                    -- OTHER BLOCK
                    -- ------------------------------------------------------------

                    seeColor()
                    end, 
                }
            }, 
                {
                LinearLayout, 
                layout_width="wrap_content", 
                layout_height='35dp', 
                layout_marginBottom="-10dp", 
                    {
                    TextView, 
                    textSize="15sp", 
                    textColor="#161616", 
                    text="G：", 
                    layout_height='33dp', 
                    layout_marginLeft="5dp", 
                    gravity="right|bottom"
                }, 
                    {
                    Slider, 
                    id="Gslider", 
                    stepSize=1, 
                    valueTo=255, 
                    valueFrom=0, 
                    trackHeight="14dp", 
                    ThumbHeight="22dp", 
                    tickVisible=false, 
                    trackStopIndicatorSize="0dp", 
                    thumbWidth="5dp", 
                    layout_width='wrap_content', 
                    layout_height='wrap_content', 

                    -- ------------------------------------------------------------
                    -- FUNCTION_CALL BLOCK
                    -- ------------------------------------------------------------

                    addOnChangeListener=function(slider, value, fromUser)

                    -- ------------------------------------------------------------
                    -- OTHER BLOCK
                    -- ------------------------------------------------------------

                    Gvalue=value

                    -- ------------------------------------------------------------
                    -- FUNCTION_CALL BLOCK
                    -- ------------------------------------------------------------

                    Gcolor=rgb2hex(value)

                    -- ------------------------------------------------------------
                    -- OTHER BLOCK
                    -- ------------------------------------------------------------

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
                    layout_marginLeft="5dp", 
                    gravity="right|bottom"
                }, 
                    {
                    Slider, 
                    id="Bslider", 
                    stepSize=1, 
                    valueTo=255, 
                    valueFrom=0, 
                    trackHeight="14dp", 
                    ThumbHeight="22dp", 
                    tickVisible=false, 
                    thumbWidth="5dp", 
                    trackStopIndicatorSize="0dp", 
                    layout_width='wrap_content', 
                    layout_height='wrap_content', 

                    -- ------------------------------------------------------------
                    -- FUNCTION_CALL BLOCK
                    -- ------------------------------------------------------------

                    addOnChangeListener=function(slider, value, fromUser)

                    -- ------------------------------------------------------------
                    -- OTHER BLOCK
                    -- ------------------------------------------------------------

                    Bvalue=value

                    -- ------------------------------------------------------------
                    -- FUNCTION_CALL BLOCK
                    -- ------------------------------------------------------------

                    Bcolor=rgb2hex(value)

                    -- ------------------------------------------------------------
                    -- OTHER BLOCK
                    -- ------------------------------------------------------------

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
            layout_height="75dp", 
            orientation="vertical", 
                {
                LinearLayout, 
                id="ColorDisplay", 
                layout_marginRight="15dp", 
                background=luajava.loadlayout{GradientDrawable, color="0xff"..RGBcolor, cornerRadius=15}, 
                layout_height="match_parent", 
                layout_width="match_parent", 
                layout_marginBottom="5dp", 
                layout_weight=1, 
            }, 
                {
                TextView, 
                id="ColorText", 
                layout_height="match_parent", 
                layout_marginRight="15dp", 
                background=luajava.loadlayout{GradientDrawable, color=0xFFFFFFFF, cornerRadius=10}, 
                layout_width="match_parent", 
                layout_weight=2, 
                textColor="0xff161616", 
                text=""..RGBcolor, 
                textSize="10sp", 
                gravity="center", 
            }
        }
    }, 
}

-- ------------------------------------------------------------
-- EMPTY BLOCK
-- ------------------------------------------------------------



-- ------------------------------------------------------------
-- FUNCTION_DEF BLOCK
-- ------------------------------------------------------------

local function MaterialAlert(title,  message)

-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

-- 在主线程上执行UI操作

-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

    luajava.post(function()

    -- ------------------------------------------------------------
    -- OTHER BLOCK
    -- ------------------------------------------------------------

    -- 创建一个MaterialAlertDialogBuilder实例

    -- ------------------------------------------------------------
    -- FUNCTION_CALL BLOCK
    -- ------------------------------------------------------------

    local alertBuilder = MaterialAlertDialogBuilder(context)

    -- ------------------------------------------------------------
    -- EMPTY BLOCK
    -- ------------------------------------------------------------



    -- ------------------------------------------------------------
    -- OTHER BLOCK
    -- ------------------------------------------------------------

    -- 设置对话框的标题和消息

    -- ------------------------------------------------------------
    -- FUNCTION_CALL BLOCK
    -- ------------------------------------------------------------

    alertBuilder:setTitle(title):setMessage(message)

    -- ------------------------------------------------------------
    -- EMPTY BLOCK
    -- ------------------------------------------------------------



    -- ------------------------------------------------------------
    -- OTHER BLOCK
    -- ------------------------------------------------------------

    -- 创建对话框实例
    local alert = alertBuilder:create()
    -- 设置对话框窗口的类型，适配Android版本

    -- ------------------------------------------------------------
    -- FUNCTION_CALL BLOCK
    -- ------------------------------------------------------------

    alert:getWindow():setType(gg.ANDROID_SDK_INT >= 26 and LayoutParams.TYPE_APPLICATION_OVERLAY or LayoutParams.TYPE_PHONE)

    -- ------------------------------------------------------------
    -- OTHER BLOCK
    -- ------------------------------------------------------------

    -- 显示对话框
    alert:show()
end)
end

-- ------------------------------------------------------------
-- FUNCTION_DEF BLOCK
-- ------------------------------------------------------------

function rgb2hex(value)

-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

return string.format("%02X",  value)

-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

end

-- ------------------------------------------------------------
-- EMPTY BLOCK
-- ------------------------------------------------------------



-- ------------------------------------------------------------
-- FUNCTION_DEF BLOCK
-- ------------------------------------------------------------

function hex2rgb(hex)

-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

hex = hex:gsub("#",  "")  -- 确保去掉 `#`
local Rvalue = tonumber(hex:sub(1,  2),  16)
local Gvalue = tonumber(hex:sub(3,  4),  16)
local Bvalue = tonumber(hex:sub(5,  6),  16)

-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

return Rvalue,  Gvalue,  Bvalue
end

-- ------------------------------------------------------------
-- EMPTY BLOCK
-- ------------------------------------------------------------



-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

Rvalue,  Gvalue,  Bvalue = hex2rgb(""..RGBcolor)

-- ------------------------------------------------------------
-- FUNCTION_DEF BLOCK
-- ------------------------------------------------------------

function seeColor()

-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

Rcolor = rgb2hex(Rvalue)  -- 防止 `nil` 值
Gcolor = rgb2hex(Gvalue)
Bcolor = rgb2hex(Bvalue)

-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

RGBcolor = Rcolor .. Gcolor .. Bcolor  -- 确保拼接出的字符串是有效颜色值

-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

--    luajava.startThread(function()
    luajava.runUiThread(function()
    ColorText:setText(""..RGBcolor)  -- 颜色文本前面加 `#`
    ColorDisplay:setBackground(luajava.loadlayout{GradientDrawable, color="#"..RGBcolor, cornerRadius=15})
    SliderColor(Rslider, RGBcolor, RGBcolor, RGBcolor)
    SliderColor(Gslider, RGBcolor, RGBcolor, RGBcolor)
    SliderColor(Bslider, RGBcolor, RGBcolor, RGBcolor)

    -- ------------------------------------------------------------
    -- OTHER BLOCK
    -- ------------------------------------------------------------

    --      end)
end)
end

-- ------------------------------------------------------------
-- EMPTY BLOCK
-- ------------------------------------------------------------



-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

lastClickTime4=0

-- ------------------------------------------------------------
-- FUNCTION_DEF BLOCK
-- ------------------------------------------------------------

function 自定义主题()

-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

local currentTime4=os.time()

-- ------------------------------------------------------------
-- CONDITION BLOCK
-- ------------------------------------------------------------

if currentTime4 - lastClickTime4 < 1 then return 0 end lastClickTime4=currentTime4

-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

    luajava.runUiThread(function()

    -- ------------------------------------------------------------
    -- OTHER BLOCK
    -- ------------------------------------------------------------

    local parent = Custom:getParent()

    -- ------------------------------------------------------------
    -- CONDITION BLOCK
    -- ------------------------------------------------------------

    if parent then

    -- ------------------------------------------------------------
    -- FUNCTION_CALL BLOCK
    -- ------------------------------------------------------------

    parent:removeView(Custom)

    -- ------------------------------------------------------------
    -- OTHER BLOCK
    -- ------------------------------------------------------------

    end

    -- ------------------------------------------------------------
    -- FUNCTION_CALL BLOCK
    -- ------------------------------------------------------------

    Rslider:setValue(Rvalue)
    Gslider:setValue(Gvalue)
    Bslider:setValue(Bvalue)

    -- ------------------------------------------------------------
    -- OTHER BLOCK
    -- ------------------------------------------------------------

end)

-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

CustomTheme=MaterialAlertDialogBuilder(material3:getContext()) -- 创建对话框构造器
:setTitle('自定义控件颜色') -- 设置标题
:setView(Custom)
    :setPositiveButton('应用', function()
    local file=io.open("/sdcard/rlgg/YC/color", "w")

    -- ------------------------------------------------------------
    -- OTHER BLOCK
    -- ------------------------------------------------------------

    修改控件颜色(RGBcolor)

    -- ------------------------------------------------------------
    -- FUNCTION_CALL BLOCK
    -- ------------------------------------------------------------

    file:write(RGBcolor)

    -- ------------------------------------------------------------
    -- OTHER BLOCK
    -- ------------------------------------------------------------

end)

-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

luajava.showAlert(CustomTheme)

-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

end

-- ------------------------------------------------------------
-- EMPTY BLOCK
-- ------------------------------------------------------------



-- ------------------------------------------------------------
-- FUNCTION_DEF BLOCK
-- ------------------------------------------------------------

function SliderColor(id, color1, color2, color3)

-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

id:setTrackActiveTintList(ColorStateList({{}}, {"0xff"..color1}))
id:setTrackInactiveTintList(ColorStateList({{}}, {"0x50"..color2}))
id:setThumbTintList(ColorStateList({{}}, {"0xff"..color3}))

-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

end

-- ------------------------------------------------------------
-- EMPTY BLOCK
-- ------------------------------------------------------------




-- ------------------------------------------------------------
-- FUNCTION_DEF BLOCK
-- ------------------------------------------------------------

function changan.text(text, color, size, isjz)

-- ------------------------------------------------------------
-- CONDITION BLOCK
-- ------------------------------------------------------------

if not color then color="#000000" end
if not size then size="13sp" end
if isjz then

-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

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

-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

        return luajava.loadlayout({

        -- ------------------------------------------------------------
        -- OTHER BLOCK
        -- ------------------------------------------------------------

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

-- ------------------------------------------------------------
-- FUNCTION_DEF BLOCK
-- ------------------------------------------------------------

function changan.edit (name ,  hint)

-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

_ENV [name] = name..guid ()

-- ------------------------------------------------------------
-- CONDITION BLOCK
-- ------------------------------------------------------------

if not hint then

-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

hint = name
end

-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

        rest = luajava.loadlayout ( {

        -- ------------------------------------------------------------
        -- OTHER BLOCK
        -- ------------------------------------------------------------

        LinearLayout , 
        layout_width = 'match_parent' , 
            {
            LinearLayout , 
            layout_width = 'match_parent' , 
            layout_height = "40dp" , 
            gravity = "center_vertical" , 
                {
                EditText , 
                background = getButtonBG(), 
                gravity = "center" , 
                hint = hint , 
                textColor="#000000", 
                textSize = "13sp", 
                layout_height = "40dp" , 
                layout_marginBottom = "-2dp", 

                -- ------------------------------------------------------------
                -- FUNCTION_CALL BLOCK
                -- ------------------------------------------------------------

                id=luajava.newId(_ENV [name]), 

                -- ------------------------------------------------------------
                -- OTHER BLOCK
                -- ------------------------------------------------------------

                layout_width = 'match_parent' , 

                -- ------------------------------------------------------------
                -- EMPTY BLOCK
                -- ------------------------------------------------------------



                -- ------------------------------------------------------------
                -- OTHER BLOCK
                -- ------------------------------------------------------------

            }
        }
})

-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

luajava.getIdValue(_ENV [name]):setHintTextColor(0xff545454)

-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

return rest
end

-- ------------------------------------------------------------
-- EMPTY BLOCK
-- ------------------------------------------------------------





-- ------------------------------------------------------------
-- FUNCTION_DEF BLOCK
-- ------------------------------------------------------------

function getTimeStamp(t)

-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

local str = os.date("%Y/%m/%d %H:%M:%S", t)

-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

return str
end

-- ------------------------------------------------------------
-- FUNCTION_DEF BLOCK
-- ------------------------------------------------------------

function changan.getedit (name)

-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

edit = tostring (luajava.getIdValue (_ENV [name]) : getText ())

-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

return edit
end

-- ------------------------------------------------------------
-- EMPTY BLOCK
-- ------------------------------------------------------------



-- ------------------------------------------------------------
-- FUNCTION_DEF BLOCK
-- ------------------------------------------------------------

function changan.setedit (name ,  txt)

-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

txt = tostring (txt)
    luajava.runUiThread (function ()
    luajava.getIdValue (_ENV [name]) : setText (txt)

    -- ------------------------------------------------------------
    -- OTHER BLOCK
    -- ------------------------------------------------------------

    end
)
end

-- ------------------------------------------------------------
-- EMPTY BLOCK
-- ------------------------------------------------------------




-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

buts={}

-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

heir=getRes("heir")

-- ------------------------------------------------------------
-- FUNCTION_DEF BLOCK
-- ------------------------------------------------------------

function changan.button(txt, func, txtc, btpic)

-- ------------------------------------------------------------
-- CONDITION BLOCK
-- ------------------------------------------------------------

if not txt then txt = "未设置" end
if not txtc then txtc="#000000" end

-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

local tid="Cbutton"..guid()

-- ------------------------------------------------------------
-- CONDITION BLOCK
-- ------------------------------------------------------------

if not btpic then

-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

    buts[tid]=luajava.loadlayout(
        {
        LinearLayout, 
        layout_width = 'match_parent', 
            layout_height = "wrap_content",  {
            LinearLayout, 
            layout_width = "fill_parent", 
            gravity = "center_vertical", 
            layout_marginTop = "0dp", 
            layout_marginBottom = "0dp", 
            background = getButtonBG(), 
            padding="10dp", 
            onTouch=huad, 
            onClick = function()

            -- ------------------------------------------------------------
            -- FUNCTION_CALL BLOCK
            -- ------------------------------------------------------------

            luajava.newThread(func):start() end, 

            -- ------------------------------------------------------------
            -- OTHER BLOCK
            -- ------------------------------------------------------------

                {
                TextView, 
                textColor = txtc, 
                text = txt, 
                textSize = "15sp", 
                layout_marginLeft="15dp", 
                layout_height = "wrap_content", 
                layout_width = "fill_parent", 
                layout_weight=1, 
            }, 
                {ImageView, 
                src=heir, 
                layout_height="14dp", 
                layout_width="14dp", 
            }
}})
else
    buts[tid]=luajava.loadlayout(
        {
        LinearLayout, 
        layout_width = 'match_parent', 
            layout_height = "wrap_content",  {
            LinearLayout, 
            layout_width = "fill_parent", 
            gravity = "center_vertical", 
            layout_marginTop = "0dp", 
            layout_marginBottom = "0dp", 
            background = getButtonBG(), 
            padding="10dp", 
            onClick = function()

            -- ------------------------------------------------------------
            -- FUNCTION_CALL BLOCK
            -- ------------------------------------------------------------

            luajava.newThread(func):start() end, 

            -- ------------------------------------------------------------
            -- OTHER BLOCK
            -- ------------------------------------------------------------

                {ImageView, 

                -- ------------------------------------------------------------
                -- FUNCTION_CALL BLOCK
                -- ------------------------------------------------------------

                src=getRes(btpic), 

                -- ------------------------------------------------------------
                -- OTHER BLOCK
                -- ------------------------------------------------------------

                layout_height="14dp", 
                layout_width="14dp", 
                }, {
                TextView, 
                textColor = txtc, 
                text = txt, 
                textSize = "15sp", 
                layout_marginLeft="15dp", 
                layout_height = "wrap_content", 
                layout_width = "fill_parent", 
                layout_weight=1, 
                }, {ImageView, 
                src=heir, 
                layout_height="14dp", 
                layout_width="14dp", 

                -- ------------------------------------------------------------
                -- EMPTY BLOCK
                -- ------------------------------------------------------------



                -- ------------------------------------------------------------
                -- OTHER BLOCK
                -- ------------------------------------------------------------

            }
}})
end
return buts[tid]
end

-- ------------------------------------------------------------
-- FUNCTION_DEF BLOCK
-- ------------------------------------------------------------

function changan.button2(txt, func, txtc, btpic)

-- ------------------------------------------------------------
-- CONDITION BLOCK
-- ------------------------------------------------------------

if not txt then txt = "未设置" end
if not txtc then txtc="#000000" end

-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

local tid="Cbutton"..guid()

-- ------------------------------------------------------------
-- CONDITION BLOCK
-- ------------------------------------------------------------

if not btpic then

-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

    buts[tid]=luajava.loadlayout(
        {
        LinearLayout, 
        layout_width = 'match_parent', 
            layout_height = "wrap_content",  {
            LinearLayout, 
            layout_width = "fill_parent", 
            gravity = "center_vertical", 
            layout_marginTop = "0dp", 
            layout_marginBottom = "0dp", 
            background = getButtonBG(), 
            padding="10dp", 
            onTouch=huad, 
            onClick = function()

            -- ------------------------------------------------------------
            -- FUNCTION_CALL BLOCK
            -- ------------------------------------------------------------

            luajava.newThread(func):start() end, 

            -- ------------------------------------------------------------
            -- OTHER BLOCK
            -- ------------------------------------------------------------

                {
                TextView, 
                textColor = txtc, 
                text = txt, 
                textSize = "12sp", 
                layout_marginLeft="15dp", 
                layout_height = "wrap_content", 
                layout_width = "fill_parent", 
                layout_weight=1, 
                }, {ImageView, 
                src=heir, 
                layout_height="14dp", 
                layout_width="14dp", 

                -- ------------------------------------------------------------
                -- EMPTY BLOCK
                -- ------------------------------------------------------------



                -- ------------------------------------------------------------
                -- OTHER BLOCK
                -- ------------------------------------------------------------

            }
}})
else
    buts[tid]=luajava.loadlayout(
        {
        LinearLayout, 
        layout_width = 'match_parent', 
        layout_height = "wrap_content", 
            {
            LinearLayout, 
            layout_width = "fill_parent", 
            gravity = "center_vertical", 
            layout_marginTop = "0dp", 
            layout_marginBottom = "0dp", 
            background = getButtonBG(), 
            padding="10dp", 
            onClick = function()

            -- ------------------------------------------------------------
            -- FUNCTION_CALL BLOCK
            -- ------------------------------------------------------------

            luajava.newThread(func):start() end, 

            -- ------------------------------------------------------------
            -- OTHER BLOCK
            -- ------------------------------------------------------------

                {ImageView, 

                -- ------------------------------------------------------------
                -- FUNCTION_CALL BLOCK
                -- ------------------------------------------------------------

                src=getRes(btpic), 

                -- ------------------------------------------------------------
                -- OTHER BLOCK
                -- ------------------------------------------------------------

                layout_height="14dp", 
                layout_width="14dp", 

                -- ------------------------------------------------------------
                -- EMPTY BLOCK
                -- ------------------------------------------------------------



                -- ------------------------------------------------------------
                -- OTHER BLOCK
                -- ------------------------------------------------------------

                }, {
                TextView, 

                -- ------------------------------------------------------------
                -- FUNCTION_CALL BLOCK
                -- ------------------------------------------------------------

                --id = luajava.newId(tid),

                -- ------------------------------------------------------------
                -- OTHER BLOCK
                -- ------------------------------------------------------------

                textColor = txtc, 
                text = txt, 
                textSize = "15sp", 
                layout_marginLeft="15dp", 
                layout_height = "wrap_content", 
                layout_width = "fill_parent", 
                layout_weight=1, 
                }, {ImageView, 
                src=heir, 
                layout_height="14dp", 
                layout_width="14dp", 

                -- ------------------------------------------------------------
                -- EMPTY BLOCK
                -- ------------------------------------------------------------



                -- ------------------------------------------------------------
                -- OTHER BLOCK
                -- ------------------------------------------------------------

            }
}})
end
return buts[tid]
end

-- ------------------------------------------------------------
-- FUNCTION_DEF BLOCK
-- ------------------------------------------------------------

function changan.line(linec)

-- ------------------------------------------------------------
-- CONDITION BLOCK
-- ------------------------------------------------------------

if not linec then linec="#EEEFF1" end

-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

        return luajava.loadlayout({

        -- ------------------------------------------------------------
        -- OTHER BLOCK
        -- ------------------------------------------------------------

        LinearLayout, 
        layout_height="wrap_content", 
        layout_width="match_parent", 
        padding={"15dp", "0dp", "15dp", "0dp"}, 
            {LinearLayout, 
            layout_height="1dp", 
            layout_width="match_parent", 
            background=linec, 
        }
})
end

-- ------------------------------------------------------------
-- EMPTY BLOCK
-- ------------------------------------------------------------



-- ------------------------------------------------------------
-- FUNCTION_DEF BLOCK
-- ------------------------------------------------------------

function 退出()

-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

gg.setVisible(false)
    luajava.runUiThread(function()

    -- ------------------------------------------------------------
    -- OTHER BLOCK
    -- ------------------------------------------------------------

    tuichu = 1
end)
end

-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

changan.controlRotation9 = function(control,  time, t)
    luajava.runUiThread(function()

    -- ------------------------------------------------------------
    -- IMPORT BLOCK
    -- ------------------------------------------------------------

    import "android.view.animation.Animation"
    import "android.animation.ObjectAnimator"

    -- ------------------------------------------------------------
    -- FUNCTION_CALL BLOCK
    -- ------------------------------------------------------------

            xuanzhuandonghua = ObjectAnimator:ofFloat(control,  "rotation",  {

            -- ------------------------------------------------------------
            -- OTHER BLOCK
            -- ------------------------------------------------------------

            time, t
    })

    -- ------------------------------------------------------------
    -- FUNCTION_CALL BLOCK
    -- ------------------------------------------------------------

    xuanzhuandonghua:setDuration(4)

    -- ------------------------------------------------------------
    -- OTHER BLOCK
    -- ------------------------------------------------------------

    xuanzhuandonghua:start()
end)
end

-- ------------------------------------------------------------
-- FUNCTION_DEF BLOCK
-- ------------------------------------------------------------

function visi (tid ,  ttid)

-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

vibra:vibrate(4)
local tview = luajava.getIdValue (tid)
local ttview = luajava.getIdValue (ttid)

-- ------------------------------------------------------------
-- CONDITION BLOCK
-- ------------------------------------------------------------

if not tview then

-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

return 0
end

-- ------------------------------------------------------------
-- CONDITION BLOCK
-- ------------------------------------------------------------

if tonumber (tostring (tview : getVisibility ())) == 8.0 then

-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

tview : setVisibility (View.VISIBLE)
YoYoImpl:with("FadeIn"):duration(200):playOn(boxes[tid])
changan.controlRotation9(boxpic[tid], 90, -90)

-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

else

-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

tview : setVisibility (View.GONE)
changan.controlRotation9(boxpic[tid], -90, 90)

-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

end
end
boxes = {} boxpic = {}

-- ------------------------------------------------------------
-- FUNCTION_DEF BLOCK
-- ------------------------------------------------------------

function changan.box (views)

-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

local tid = "box"..guid ()
    boxpic[tid] = luajava.loadlayout {
    ImageView , 

    -- ------------------------------------------------------------
    -- FUNCTION_CALL BLOCK
    -- ------------------------------------------------------------

    background = getRes("heir"), 

    -- ------------------------------------------------------------
    -- OTHER BLOCK
    -- ------------------------------------------------------------

    layout_width = "20dp" , 
    layout_height = "20dp" , 
}

-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

changan.controlRotation9(boxpic[tid], 0, 90)

-- ------------------------------------------------------------
-- EMPTY BLOCK
-- ------------------------------------------------------------



-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

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

-- ------------------------------------------------------------
-- CONDITION BLOCK
-- ------------------------------------------------------------

if type (views [1]) == "string" or type (views [1]) == "number" then

-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

    firadio [# firadio + 1] = {
    LinearLayout , 
    layout_width = 'fill_parent' , 
    layout_height = "40dp" , 
    gravity = "center_vertical" , 
    layout_marginTop = "2dp" , 
    layout_marginBottom = "4dp" , 
    onClick = function ()

    -- ------------------------------------------------------------
    -- FUNCTION_CALL BLOCK
    -- ------------------------------------------------------------

    visi (tid ,  ttid)

    -- ------------------------------------------------------------
    -- OTHER BLOCK
    -- ------------------------------------------------------------

    end
    , 
    background = getButtonBG(), 
        {
        TextView ,  text = views [1] , 
        textSize = "13sp" , 
        layout_marginLeft = "15dp" , 
        layout_width = "match_parent" , 
        layout_weight=1, 
        textColor = "#000000" , 
        gravity = "left" , 
        }, {
        LinearLayout , 
        padding={"0dp", "0dp", "10dp", "0dp"}, 
        layout_width = "30dp" , 
        layout_height = "30dp" , 
        gravity = "center", 
        boxpic[tid], 
    }
} else

-- ------------------------------------------------------------
-- GG_UI BLOCK
-- ------------------------------------------------------------

gg.alert ("changan.box的table内第一个元素必须是string") os.exit ()

-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

end
    radios = {
    LinearLayout , 
    layout_marginLeft = "0dp" , 
    layout_marginRight = "0dp" , 
    orientation = "vertical" , 
    visibility = "gone" , 

    -- ------------------------------------------------------------
    -- FUNCTION_CALL BLOCK
    -- ------------------------------------------------------------

    id = luajava.newId (tid) , 

    -- ------------------------------------------------------------
    -- OTHER BLOCK
    -- ------------------------------------------------------------

    padding = "0dp" , 
    layout_width = 'fill_parent' , 
}
for i = 2 ,  # views do
radios [# radios + 1] = views [i]
end

-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

boxes[tid] = luajava.loadlayout(radios)

-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

firadio [# firadio + 1] = boxes[tid]

-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

_ENV [t1id] = luajava.loadlayout (firadio)

-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

return _ENV [t1id]
end

-- ------------------------------------------------------------
-- EMPTY BLOCK
-- ------------------------------------------------------------



-- ------------------------------------------------------------
-- FUNCTION_DEF BLOCK
-- ------------------------------------------------------------

function box(views)

-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

    local mbox={
    LinearLayout, 
    layout_height="wrap_content", 
    layout_width="match_parent", 
    orientation="vertical", 
    padding="8dp", 
    layout_marginTop="15dp", 
    layout_marginRight="35dp", 
    layout_marginLeft="35dp", 
    layout_marginBottom="15dp", 
    elevation="5dp", 

    -- ------------------------------------------------------------
    -- FUNCTION_CALL BLOCK
    -- ------------------------------------------------------------

    background=newbg(0xffffffff, 35), 

    -- ------------------------------------------------------------
    -- OTHER BLOCK
    -- ------------------------------------------------------------

}
for i=1, #views do
mbox[#mbox+1]=views[i]
end
return mbox
end

-- ------------------------------------------------------------
-- FUNCTION_DEF BLOCK
-- ------------------------------------------------------------

function picbar(txt, pic, views)

-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

    local mbox={
    LinearLayout, 
    layout_height="wrap_content", 
    layout_width="match_parent", 
    orientation="vertical", 
}
for i=1, #views do
mbox[#mbox+1]=views[i]
end
    return {LinearLayout, 
    layout_height="wrap_content", 
    layout_width="match_parent", 

    -- ------------------------------------------------------------
    -- FUNCTION_CALL BLOCK
    -- ------------------------------------------------------------

    background=newbg(0xFF7BB3CA, 35), 

    -- ------------------------------------------------------------
    -- OTHER BLOCK
    -- ------------------------------------------------------------

    padding="8dp", 
    elevation="5dp", 
    layout_marginTop="15dp", 
    layout_marginRight="35dp", 
    layout_marginLeft="35dp", 
    layout_marginBottom="15dp", 
        {LinearLayout, 
        layout_height="184dp", 
        layout_width="115dp", 
        gravity="center_horizontal", 

        -- ------------------------------------------------------------
        -- FUNCTION_CALL BLOCK
        -- ------------------------------------------------------------

        background=getRes(pic), 

        -- ------------------------------------------------------------
        -- OTHER BLOCK
        -- ------------------------------------------------------------

            {TextView, 
            textSize="14sp", 
            textColor="#ffffff", 
            text=txt, 
            layout_marginTop="155dp", 
            layout_width="match_parent", 
            layout_height="30dp", 
            gravity="center", 

            -- ------------------------------------------------------------
            -- FUNCTION_CALL BLOCK
            -- ------------------------------------------------------------

            background=getCorner({0xdd161616, 0xdd161616}, 25, nil, nil, 0, 0, 24, 24), 

            -- ------------------------------------------------------------
            -- OTHER BLOCK
            -- ------------------------------------------------------------

        }
    }, 
        {ScrollView, 
        layout_height="match_parent", 
        layout_marginLeft="8dp", 
        layout_width="match_parent", 
    mbox}
}
end

-- ------------------------------------------------------------
-- FUNCTION_DEF BLOCK
-- ------------------------------------------------------------

function picbar2(txt, pic, views)

-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

    local mbox={
    LinearLayout, 
    layout_height="wrap_content", 
    layout_width="match_parent", 
    orientation="vertical", 
}
for i=1, #views do
mbox[#mbox+1]=views[i]
end
    return {LinearLayout, 
    layout_height="wrap_content", 
    layout_width="match_parent", 

    -- ------------------------------------------------------------
    -- FUNCTION_CALL BLOCK
    -- ------------------------------------------------------------

    background=newbg(0xFFD8C3A5, 35), 

    -- ------------------------------------------------------------
    -- OTHER BLOCK
    -- ------------------------------------------------------------

    padding="8dp", 
    elevation="5dp", 
    layout_marginTop="15dp", 
    layout_marginRight="35dp", 
    layout_marginLeft="35dp", 
    layout_marginBottom="15dp", 
        {ScrollView, 
        layout_height="match_parent", 
        layout_width="match_parent", 
        layout_weight=1, 
    mbox}, 
        {LinearLayout, 
        layout_marginLeft="8dp", 
        layout_height="184dp", 
        layout_width="115dp", 
        gravity="center_horizontal", 

        -- ------------------------------------------------------------
        -- FUNCTION_CALL BLOCK
        -- ------------------------------------------------------------

        background=getRes(pic), 

        -- ------------------------------------------------------------
        -- OTHER BLOCK
        -- ------------------------------------------------------------

            {TextView, 
            textSize="14sp", 
            textColor="#ffffff", 
            text=txt, 
            layout_marginTop="154dp", 
            layout_width="match_parent", 
            layout_height="30dp", 
            gravity="center", 

            -- ------------------------------------------------------------
            -- FUNCTION_CALL BLOCK
            -- ------------------------------------------------------------

            background=getCorner({0xdd161616, 0xdd161616}, 25, nil, nil, 0, 0, 24, 24), 

            -- ------------------------------------------------------------
            -- OTHER BLOCK
            -- ------------------------------------------------------------

        }
    }, 
}
end

-- ------------------------------------------------------------
-- FUNCTION_DEF BLOCK
-- ------------------------------------------------------------

function yulan(name, big, inf, url, pat, md)

-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

    local pic=luajava.loadlayout{
    ImageView, 
    layout_height="20dp", 
    layout_width="20dp", 

    -- ------------------------------------------------------------
    -- FUNCTION_CALL BLOCK
    -- ------------------------------------------------------------

    src=getRes("ca_file"), 

    -- ------------------------------------------------------------
    -- OTHER BLOCK
    -- ------------------------------------------------------------

}

-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

pic:setColorFilter(0xff4A80EB)

-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

    local tmp={
    LinearLayout, 
    layout_width="match_parent", 
    padding="10dp", 
    pic, 
        {TextView, 
        layout_height="wrap_content", 
        layout_width="match_parent", 
        layout_weight=1, 
        text=name, 
        layout_marginLeft="10dp", 
        textColor="#000000", 
        textSize="12sp", 
    }
}

-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

        local jb=luajava.loadlayout({

        -- ------------------------------------------------------------
        -- OTHER BLOCK
        -- ------------------------------------------------------------

        ImageView, 
        layout_height="24dp", 
        layout_width="24dp", 

        -- ------------------------------------------------------------
        -- FUNCTION_CALL BLOCK
        -- ------------------------------------------------------------

        src=getRes("ca_xz"), 

        -- ------------------------------------------------------------
        -- OTHER BLOCK
        -- ------------------------------------------------------------

})

-- ------------------------------------------------------------
-- EMPTY BLOCK
-- ------------------------------------------------------------



-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

        local bx= box({

        -- ------------------------------------------------------------
        -- OTHER BLOCK
        -- ------------------------------------------------------------

        tmp, 

        -- ------------------------------------------------------------
        -- FUNCTION_CALL BLOCK
        -- ------------------------------------------------------------

        changan.text("   大小: "..big, "#000000", "12sp"), 
        changan.text("   详情: "..inf.."\n", "#000000", "12sp"), 

        -- ------------------------------------------------------------
        -- OTHER BLOCK
        -- ------------------------------------------------------------

            luajava.loadlayout{LinearLayout, 
            layout_width="match_parent", 

            -- ------------------------------------------------------------
            -- EMPTY BLOCK
            -- ------------------------------------------------------------



            -- ------------------------------------------------------------
            -- OTHER BLOCK
            -- ------------------------------------------------------------

                {LinearLayout, 
                gravity="center_horizontal", 
                layout_width="match_parent", 
                layout_weight=1, 
                orientation="vertical", 
                padding="10dp", 
                background=getButtonBG(), 
                onClick=function()

                -- ------------------------------------------------------------
                -- FUNCTION_CALL BLOCK
                -- ------------------------------------------------------------

                    luajava.newThread(function()
                    lanzou2(url, pat, md)

                    -- ------------------------------------------------------------
                    -- OTHER BLOCK
                    -- ------------------------------------------------------------

                end):start()
                end, 
                jb
            }, 
        }
})

-- ------------------------------------------------------------
-- EMPTY BLOCK
-- ------------------------------------------------------------



-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

return bx
end

-- ------------------------------------------------------------
-- EMPTY BLOCK
-- ------------------------------------------------------------



-- ------------------------------------------------------------
-- FUNCTION_DEF BLOCK
-- ------------------------------------------------------------

function lanzou(url, pat, md)

-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

local loadingBox = getLoadingBox('正在下载')

-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

loadingBox['显示']()
local url = url
local path = pat

-- ------------------------------------------------------------
-- CONDITION BLOCK
-- ------------------------------------------------------------

if not panduan(path) then

-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

--print(url)
local res,  err = file.download(url,  path)

-- ------------------------------------------------------------
-- CONDITION BLOCK
-- ------------------------------------------------------------

if not res then

-- ------------------------------------------------------------
-- GG_UI BLOCK
-- ------------------------------------------------------------

gg.alert(err)

-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

end
end

-- ------------------------------------------------------------
-- CONDITION BLOCK
-- ------------------------------------------------------------

if opens[md]~=true then

-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

    luajava.runUiThread(function()
    luajava.getIdView("file"..md):setColorFilter(0xff4A80EB)
    luajava.getIdView("file"..md.."bg"):setBackground(getButtonBG())

    -- ------------------------------------------------------------
    -- OTHER BLOCK
    -- ------------------------------------------------------------

end)
opens[md]=true
end
loadingBox['关闭']()

-- ------------------------------------------------------------
-- GG_UI BLOCK
-- ------------------------------------------------------------

gg.alert("下载完毕，已保存至\n\n"..pat.."\n\n已为你复制路径\n可打开MT管理器 长按右下角箭头 粘贴此路径直达")

-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

gg.copyText(pat)

-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

end

-- ------------------------------------------------------------
-- FUNCTION_DEF BLOCK
-- ------------------------------------------------------------

function lanzou2(url, pat, md)

-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

local loadingBox = getLoadingBox('正在下载')

-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

loadingBox['显示']()
local url = url
local path = pat

-- ------------------------------------------------------------
-- CONDITION BLOCK
-- ------------------------------------------------------------

if not panduan(path) then

-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

--print(url)
local res,  err = file.download(url,  path)

-- ------------------------------------------------------------
-- CONDITION BLOCK
-- ------------------------------------------------------------

if not res then

-- ------------------------------------------------------------
-- GG_UI BLOCK
-- ------------------------------------------------------------

gg.alert(err)

-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

end
end
loadingBox['关闭']()

-- ------------------------------------------------------------
-- GG_UI BLOCK
-- ------------------------------------------------------------

gg.alert("下载完毕，已保存至\n\n"..pat.."\n\n已为你复制路径\n可打开MT管理器 长按右下角箭头 粘贴此路径直达")

-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

gg.copyText(pat)

-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

end

-- ------------------------------------------------------------
-- EMPTY BLOCK
-- ------------------------------------------------------------



-- ------------------------------------------------------------
-- FUNCTION_DEF BLOCK
-- ------------------------------------------------------------

function fileui(name, big, inf, url, pat, md)

-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

    local pic=luajava.loadlayout{
    ImageView, 
    layout_height="20dp", 
    layout_width="20dp", 

    -- ------------------------------------------------------------
    -- FUNCTION_CALL BLOCK
    -- ------------------------------------------------------------

    src=getRes("ca_file"), 

    -- ------------------------------------------------------------
    -- OTHER BLOCK
    -- ------------------------------------------------------------

}

-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

pic:setColorFilter(0xff4A80EB)

-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

    local tmp={
    LinearLayout, 
    layout_width="match_parent", 
    padding="10dp", 
    pic, 
        {TextView, 
        layout_height="wrap_content", 
        layout_width="match_parent", 
        layout_weight=1, 
        text=name, 
        layout_marginLeft="10dp", 
        textColor="#000000", 
        textSize="12sp", 
    }
}

-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

        local jb=luajava.loadlayout({

        -- ------------------------------------------------------------
        -- OTHER BLOCK
        -- ------------------------------------------------------------

        ImageView, 

        -- ------------------------------------------------------------
        -- FUNCTION_CALL BLOCK
        -- ------------------------------------------------------------

        id=luajava.newId("file"..md), 

        -- ------------------------------------------------------------
        -- OTHER BLOCK
        -- ------------------------------------------------------------

        layout_height="24dp", 
        layout_width="24dp", 

        -- ------------------------------------------------------------
        -- FUNCTION_CALL BLOCK
        -- ------------------------------------------------------------

        src=getRes("right"), 

        -- ------------------------------------------------------------
        -- OTHER BLOCK
        -- ------------------------------------------------------------

})

-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

luajava.getIdView("file"..md):setColorFilter(0xffCACBCC)
        local bx= box({

        -- ------------------------------------------------------------
        -- OTHER BLOCK
        -- ------------------------------------------------------------

        tmp, 

        -- ------------------------------------------------------------
        -- FUNCTION_CALL BLOCK
        -- ------------------------------------------------------------

        changan.text("   大小: "..big, "#000000", "12sp"), 
        changan.text("   详情: "..inf.."\n", "#000000", "12sp"), 

        -- ------------------------------------------------------------
        -- OTHER BLOCK
        -- ------------------------------------------------------------

            luajava.loadlayout{LinearLayout, 
            layout_width="match_parent", 
                {LinearLayout, 
                gravity="center_horizontal", 
                layout_width="match_parent", 
                layout_weight=1, 
                orientation="vertical", 
                padding="10dp", 
                background=getButtonBG(), 
                onClick=function()

                -- ------------------------------------------------------------
                -- FUNCTION_CALL BLOCK
                -- ------------------------------------------------------------

                    luajava.newThread(function()
                    lanzou(url, pat, md)

                    -- ------------------------------------------------------------
                    -- OTHER BLOCK
                    -- ------------------------------------------------------------

                end):start()
                end, 
                    {
                    ImageView, 
                    layout_height="20dp", 
                    layout_width="20dp", 

                    -- ------------------------------------------------------------
                    -- FUNCTION_CALL BLOCK
                    -- ------------------------------------------------------------

                    src=getRes("ca_xz"), 

                    -- ------------------------------------------------------------
                    -- OTHER BLOCK
                    -- ------------------------------------------------------------

                }
            }, 
                {LinearLayout, 

                -- ------------------------------------------------------------
                -- FUNCTION_CALL BLOCK
                -- ------------------------------------------------------------

                id=luajava.newId("file"..md.."bg"), 

                -- ------------------------------------------------------------
                -- OTHER BLOCK
                -- ------------------------------------------------------------

                gravity="center_horizontal", 
                layout_width="match_parent", 
                layout_weight=1, 
                orientation="vertical", 
                padding="10dp", 
                onClick=function()

                -- ------------------------------------------------------------
                -- FUNCTION_CALL BLOCK
                -- ------------------------------------------------------------

                    luajava.newThread(function()
                    dofile(pat)

                    -- ------------------------------------------------------------
                    -- OTHER BLOCK
                    -- ------------------------------------------------------------

                end):start()
                end, 
                jb
            }, 
        }
})

-- ------------------------------------------------------------
-- CONDITION BLOCK
-- ------------------------------------------------------------

if panduan(pat)~=false then
if opens[md]~=true then

-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

    luajava.runUiThread(function()
    luajava.getIdView("file"..md):setColorFilter(0xff4A80EB)
    luajava.getIdView("file"..md.."bg"):setBackground(getButtonBG())

    -- ------------------------------------------------------------
    -- OTHER BLOCK
    -- ------------------------------------------------------------

end)
opens[md]=true
end
end
return bx
end
opens={}

-- ------------------------------------------------------------
-- EMPTY BLOCK
-- ------------------------------------------------------------




-- ------------------------------------------------------------
-- FUNCTION_DEF BLOCK
-- ------------------------------------------------------------

function createCard(username,  avatar,  time,  title,  content)

-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

    return {
    MaterialCardView, 
    layout_width = "match_parent", 
    layout_margin = "8dp", 
    layout_marginLeft = "16dp", 
    layout_marginRight = "16dp", 
    cardElevation = "2dp", 
    cardBackgroundColor=0xFFF4F8FE, 
    strokeColor=0xFFF4F8FE, 

    -- ------------------------------------------------------------
    -- FUNCTION_CALL BLOCK
    -- ------------------------------------------------------------

    __onCreate=function(v)
    v:setRadius(35)
            local c=ColorStateList({

            -- ------------------------------------------------------------
            -- OTHER BLOCK
            -- ------------------------------------------------------------

            {android.R.attr.state_pressed}, 
            {-android.R.attr.state_pressed}
            },  {
            0x00ffffff, 
            0x00ffffff
    })

    -- ------------------------------------------------------------
    -- FUNCTION_CALL BLOCK
    -- ------------------------------------------------------------

    v:setRippleColor(c)

    -- ------------------------------------------------------------
    -- OTHER BLOCK
    -- ------------------------------------------------------------

    end, 
        {
        LinearLayout, 
        layout_width = "match_parent", 
        layout_height = "wrap_content", 
        orientation = "vertical", 
            {
            LinearLayout, 
            layout_width = "match_parent", 
            layout_height = "wrap_content", 
            orientation = "horizontal", 
            layout_margin = "16dp", 
                {
                ImageView, 
                id = "avatar", 
                layout_width = "40dp", 
                layout_height = "40dp", 
                scaleType = "centerCrop", 
                layout_marginRight = "16dp", 

                -- ------------------------------------------------------------
                -- FUNCTION_CALL BLOCK
                -- ------------------------------------------------------------

                src = getRes(avatar), 

                -- ------------------------------------------------------------
                -- OTHER BLOCK
                -- ------------------------------------------------------------

            }, 
                {
                LinearLayout, 
                layout_width = "0dp", 
                layout_height = "wrap_content", 
                layout_weight = 1, 
                orientation = "vertical", 
                    {
                    TextView, 
                    id = "username", 
                    layout_width = "wrap_content", 
                    layout_height = "wrap_content", 
                    textSize = "16sp", 
                    textColor = "#000000", 
                    text = username, 
                    Typeface = font, 
                }, 
                    {
                    TextView, 
                    id = "time", 
                    layout_width = "wrap_content", 
                    layout_height = "wrap_content", 
                    textSize = "12sp", 
                    textColor = "#888888", 
                    text = time, 
                    Typeface = font, 
                }
            }, 
        }, 
            {
            TextView, 
            id = "title", 
            layout_width = "match_parent", 
            layout_height = "wrap_content", 
            layout_marginLeft = "16dp", 
            layout_marginRight = "16dp", 
            textSize = "18sp", 
            textColor = "#000000", 
            text = title, 
            Typeface = font, 
        }, 
            {
            TextView, 
            id = "content", 
            layout_width = "match_parent", 
            layout_height = "wrap_content", 
            layout_marginLeft = "16dp", 
            layout_marginRight = "16dp", 
            layout_marginTop = "8dp", 
            layout_marginBottom = "16dp", 
            textSize = "14sp", 
            textColor = "#333333", 
            Typeface = font, 
            text = content, 
        }, 
    }
}
end

-- ------------------------------------------------------------
-- EMPTY BLOCK
-- ------------------------------------------------------------



-- ------------------------------------------------------------
-- FUNCTION_DEF BLOCK
-- ------------------------------------------------------------

function smallCard(title,  size,  imageRes)

-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

    return {
    MaterialCardView, 
    layout_width = "195dp", 
    layout_height = "220dp", 
    layout_margin = "8dp", 
    cardBackgroundColor=0xFFF4F8FE, 
    strokeColor=0xFFF4F8FE, 
    layout_marginLeft = "16dp", 
    cardElevation = "2dp", 

    -- ------------------------------------------------------------
    -- FUNCTION_CALL BLOCK
    -- ------------------------------------------------------------

    __onCreate=function(v)
    v:setRadius(35)
            local c=ColorStateList({

            -- ------------------------------------------------------------
            -- OTHER BLOCK
            -- ------------------------------------------------------------

            {android.R.attr.state_pressed}, 
            {-android.R.attr.state_pressed}
            },  {
            0x00ffffff, 
            0x00ffffff
    })

    -- ------------------------------------------------------------
    -- FUNCTION_CALL BLOCK
    -- ------------------------------------------------------------

    v:setRippleColor(c)

    -- ------------------------------------------------------------
    -- OTHER BLOCK
    -- ------------------------------------------------------------

    end, 
        {
        LinearLayout, 
        layout_width = "match_parent", 
        layout_height = "match_parent", 
        orientation = "vertical", 
            {
            ImageView, 
            layout_width = "match_parent", 
            layout_height = "155dp", 
            scaleType = "centerCrop", 

            -- ------------------------------------------------------------
            -- FUNCTION_CALL BLOCK
            -- ------------------------------------------------------------

            src = getRes(imageRes), 

            -- ------------------------------------------------------------
            -- OTHER BLOCK
            -- ------------------------------------------------------------

        }, 
            {
            LinearLayout, 
            layout_width = "match_parent", 
            layout_height = "wrap_content", 
            layout_marginTop = "8dp", 
            orientation = "vertical", 
                {
                TextView, 
                layout_width = "match_parent", 
                layout_height = "wrap_content", 
                layout_marginLeft = "8dp", 
                layout_marginRight = "8dp", 
                textSize = "14sp", 
                textColor = "#000000", 
                text = title, 
                Typeface = font, 
            }, 
                {
                TextView, 
                layout_width = "match_parent", 
                layout_height = "wrap_content", 
                layout_marginLeft = "8dp", 
                layout_marginRight = "8dp", 
                layout_marginTop = "4dp", 
                textSize = "12sp", 
                textColor = "#888888", 
                text = size, 
                Typeface = font, 
            }
        }
    }
}
end

-- ------------------------------------------------------------
-- EMPTY BLOCK
-- ------------------------------------------------------------







-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

    local layouta1 = {
    ScrollView, 
        {
        LinearLayout, 
        layout_width = "match_parent", 
        layout_height = "match_parent", 
        orientation="vertical", 
}}

-- ------------------------------------------------------------
-- EMPTY BLOCK
-- ------------------------------------------------------------



-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

    local layouta2 = {
    ScrollView, 
        {
        LinearLayout, 
        layout_width = "match_parent", 
        layout_height = "match_parent", 
        orientation="vertical", 

        -- ------------------------------------------------------------
        -- FUNCTION_CALL BLOCK
        -- ------------------------------------------------------------

        createCard("老强", "laoqiang",  "10 min ago",  "豆花鱼",  "最近忙吗？昨晚我去了你最爱的那家饭馆，点了他们的特色豆花鱼，吃着吃着就想你了。有空咱们视频？"), 

        -- ------------------------------------------------------------
        -- EMPTY BLOCK
        -- ------------------------------------------------------------



        -- ------------------------------------------------------------
        -- FUNCTION_CALL BLOCK
        -- ------------------------------------------------------------

        createCard("So Duri", "duri",  "20 min ago",  "Dinner Club",  "I think it's time for us to finally try that new noodle shop downtown that doesn't use menus. Anyone els..."), 

        -- ------------------------------------------------------------
        -- EMPTY BLOCK
        -- ------------------------------------------------------------



        -- ------------------------------------------------------------
        -- FUNCTION_CALL BLOCK
        -- ------------------------------------------------------------

        createCard("Lily MacDonald", "flower",  "2 hours ago",  "This food show is made for you",  "Ping- you'd love this new food show I started watching. It's produced by a Thai drummer who star..."), 

        -- ------------------------------------------------------------
        -- EMPTY BLOCK
        -- ------------------------------------------------------------



        -- ------------------------------------------------------------
        -- FUNCTION_CALL BLOCK
        -- ------------------------------------------------------------

        smallCard("Moon Harvest",  "25 MB",  "moon_harvest"), 
        smallCard("Moon Harvest",  "25 MB",  "moon_harvest"), 

        -- ------------------------------------------------------------
        -- EMPTY BLOCK
        -- ------------------------------------------------------------




        -- ------------------------------------------------------------
        -- OTHER BLOCK
        -- ------------------------------------------------------------

}}

-- ------------------------------------------------------------
-- EMPTY BLOCK
-- ------------------------------------------------------------




-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

    local layouta3 = {
    ScrollView, 
        {
        LinearLayout, 
        layout_width = "match_parent", 
        layout_height = "match_parent", 
        orientation="vertical", 
}}

-- ------------------------------------------------------------
-- EMPTY BLOCK
-- ------------------------------------------------------------




-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

    local layouta4 = {
    ScrollView, 
        {
        LinearLayout, 
        layout_width = "match_parent", 
        layout_height = "match_parent", 
        orientation="vertical", 
}}

-- ------------------------------------------------------------
-- EMPTY BLOCK
-- ------------------------------------------------------------




-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

--RGBcolor = "4180FF"

-- ------------------------------------------------------------
-- EMPTY BLOCK
-- ------------------------------------------------------------




-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

    local stab = {
    {"主页",  "home"}, 
    {"模块",  "down"}, 
    {"泛滥",  "file"}, 
    {"用户",  "person"}, 
}

-- ------------------------------------------------------------
-- EMPTY BLOCK
-- ------------------------------------------------------------




-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

    local layout1 = {
    LinearLayout, 
    layout_width = "match_parent", 
    layout_height = "match_parent", 
    orientation="vertical", 

    -- ------------------------------------------------------------
    -- FUNCTION_CALL BLOCK
    -- ------------------------------------------------------------

            box({

            -- ------------------------------------------------------------
            -- EMPTY BLOCK
            -- ------------------------------------------------------------



            -- ------------------------------------------------------------
            -- FUNCTION_CALL BLOCK
            -- ------------------------------------------------------------

            changan.text("   云烛UI模块(通用卡)查询", "#4180FF", "14sp", true), 

            -- ------------------------------------------------------------
            -- OTHER BLOCK
            -- ------------------------------------------------------------

            changan.line(), 

            -- ------------------------------------------------------------
            -- FUNCTION_CALL BLOCK
            -- ------------------------------------------------------------

            changan.edit("请输入通用UI卡密"), 

            -- ------------------------------------------------------------
            -- OTHER BLOCK
            -- ------------------------------------------------------------

            changan.line(), 

            -- ------------------------------------------------------------
            -- FUNCTION_CALL BLOCK
            -- ------------------------------------------------------------

                changan.button("查询到期时间", 

                -- ------------------------------------------------------------
                -- FUNCTION_DEF BLOCK
                -- ------------------------------------------------------------

                function()

                -- ------------------------------------------------------------
                -- FUNCTION_CALL BLOCK
                -- ------------------------------------------------------------

                local km=changan.getedit("请输入通用UI卡密")

                -- ------------------------------------------------------------
                -- CONDITION BLOCK
                -- ------------------------------------------------------------

                if km=="" or km==" " then return 0 end
                if gg.alert("查询卡密到期时间将执行一次解绑\n请注意尽量别用UI调试工具或内置云脚本之外的修改器执行你的项目源码，否则需要重新解绑。\n是否查询？", "查询")==1 then

                -- ------------------------------------------------------------
                -- FUNCTION_CALL BLOCK
                -- ------------------------------------------------------------

                changan.setedit("请输入通用UI卡密", "")
                local loadingBox = getLoadingBox('正在连接到RL验证服务器...')

                -- ------------------------------------------------------------
                -- OTHER BLOCK
                -- ------------------------------------------------------------

                loadingBox['显示']()

                -- ------------------------------------------------------------
                -- FUNCTION_CALL BLOCK
                -- ------------------------------------------------------------

                ret = rlyunyz.postApi('kmunmachine', {kami=km})

                -- ------------------------------------------------------------
                -- CONDITION BLOCK
                -- ------------------------------------------------------------

                if type(ret)~="table" then

                -- ------------------------------------------------------------
                -- GG_UI BLOCK
                -- ------------------------------------------------------------

                gg.alert(tostring(ret))

                -- ------------------------------------------------------------
                -- OTHER BLOCK
                -- ------------------------------------------------------------

                else
                end

                -- ------------------------------------------------------------
                -- FUNCTION_CALL BLOCK
                -- ------------------------------------------------------------

                ret = rlyunyz.postApi('kmlogon', {kami=km, markcode=app.md5})

                -- ------------------------------------------------------------
                -- CONDITION BLOCK
                -- ------------------------------------------------------------

                if type(ret)~="table" then

                -- ------------------------------------------------------------
                -- OTHER BLOCK
                -- ------------------------------------------------------------

                loadingBox['关闭']()

                -- ------------------------------------------------------------
                -- GG_UI BLOCK
                -- ------------------------------------------------------------

                gg.alert(tostring(ret))

                -- ------------------------------------------------------------
                -- OTHER BLOCK
                -- ------------------------------------------------------------

                else
                loadingBox['关闭']()

                -- ------------------------------------------------------------
                -- GG_UI BLOCK
                -- ------------------------------------------------------------

                gg.alert("到期时间:\n"..getTimeStamp(ret.msg.vip))

                -- ------------------------------------------------------------
                -- OTHER BLOCK
                -- ------------------------------------------------------------

                end

                -- ------------------------------------------------------------
                -- FUNCTION_CALL BLOCK
                -- ------------------------------------------------------------

                ret = rlyunyz.postApi('kmunmachine', {kami=km})

                -- ------------------------------------------------------------
                -- CONDITION BLOCK
                -- ------------------------------------------------------------

                if type(ret)~="table" then

                -- ------------------------------------------------------------
                -- GG_UI BLOCK
                -- ------------------------------------------------------------

                gg.alert(tostring(ret))

                -- ------------------------------------------------------------
                -- OTHER BLOCK
                -- ------------------------------------------------------------

                else
                end
                end
            end), 
            changan.line(), 

            -- ------------------------------------------------------------
            -- FUNCTION_CALL BLOCK
            -- ------------------------------------------------------------

                changan.button("解绑卡密", 

                -- ------------------------------------------------------------
                -- FUNCTION_DEF BLOCK
                -- ------------------------------------------------------------

                function()

                -- ------------------------------------------------------------
                -- FUNCTION_CALL BLOCK
                -- ------------------------------------------------------------

                local km=changan.getedit("请输入通用UI卡密")

                -- ------------------------------------------------------------
                -- CONDITION BLOCK
                -- ------------------------------------------------------------

                if km=="" or km==" " then return 0 end

                -- ------------------------------------------------------------
                -- FUNCTION_CALL BLOCK
                -- ------------------------------------------------------------

                changan.setedit("请输入通用UI卡密", "")
                local loadingBox = getLoadingBox('正在连接到RL验证服务器...')

                -- ------------------------------------------------------------
                -- OTHER BLOCK
                -- ------------------------------------------------------------

                loadingBox['显示']()

                -- ------------------------------------------------------------
                -- FUNCTION_CALL BLOCK
                -- ------------------------------------------------------------

                ret = rlyunyz.postApi('kmunmachine', {kami=km})

                -- ------------------------------------------------------------
                -- CONDITION BLOCK
                -- ------------------------------------------------------------

                if type(ret)~="table" then

                -- ------------------------------------------------------------
                -- OTHER BLOCK
                -- ------------------------------------------------------------

                loadingBox['关闭']()

                -- ------------------------------------------------------------
                -- GG_UI BLOCK
                -- ------------------------------------------------------------

                gg.alert(tostring(ret))

                -- ------------------------------------------------------------
                -- OTHER BLOCK
                -- ------------------------------------------------------------

                else
                loadingBox['关闭']()

                -- ------------------------------------------------------------
                -- GG_UI BLOCK
                -- ------------------------------------------------------------

                gg.alert(tostring(ret.msg))

                -- ------------------------------------------------------------
                -- OTHER BLOCK
                -- ------------------------------------------------------------

                end
            end), 
    }), 

    -- ------------------------------------------------------------
    -- EMPTY BLOCK
    -- ------------------------------------------------------------



    -- ------------------------------------------------------------
    -- FUNCTION_CALL BLOCK
    -- ------------------------------------------------------------

            picbar("公告", "ca_llz", {
                changan.button2("购买卡密", 

                -- ------------------------------------------------------------
                -- FUNCTION_DEF BLOCK
                -- ------------------------------------------------------------

                function()

                -- ------------------------------------------------------------
                -- CONDITION BLOCK
                -- ------------------------------------------------------------

                if gg.alert("云烛UI模块已整合为一卡通用\n￥14/月  ￥36/季  包更新\n一张卡包括以后推出的UI模块也能用\n点击右下角跳转打开卡网", "打开卡网")==1 then

                -- ------------------------------------------------------------
                -- FUNCTION_CALL BLOCK
                -- ------------------------------------------------------------

                app.openUrl(卡网)
                gg.copyText(卡网)

                -- ------------------------------------------------------------
                -- GG_UI BLOCK
                -- ------------------------------------------------------------

                gg.alert("已复制卡网链接，如果没有跳转浏览器请手动打开\n打开卡网如果提示安全检查请耐心等待5秒")

                -- ------------------------------------------------------------
                -- OTHER BLOCK
                -- ------------------------------------------------------------

                --退出()
                end
            end), 

            -- ------------------------------------------------------------
            -- FUNCTION_CALL BLOCK
            -- ------------------------------------------------------------

            changan.line("#44161616"), 
                changan.button2("联系方式", 

                -- ------------------------------------------------------------
                -- FUNCTION_DEF BLOCK
                -- ------------------------------------------------------------

                function()

                -- ------------------------------------------------------------
                -- GG_UI BLOCK
                -- ------------------------------------------------------------

                    gg.alert(

                    -- ------------------------------------------------------------
                    -- OTHER BLOCK
                    -- ------------------------------------------------------------

                    "FUNC 2862379480\n"..
                    "XG 3687782427\n"..
                    "小月 3898140354\n"..
                    "云烛 1524278420\n"..
                    "在此声明无小号 被骗一律跟我们云烛没关系"
                )
            end), 

            -- ------------------------------------------------------------
            -- FUNCTION_CALL BLOCK
            -- ------------------------------------------------------------

            changan.line("#44161616"), 
                changan.button2("3-23 更新日志", 

                -- ------------------------------------------------------------
                -- FUNCTION_DEF BLOCK
                -- ------------------------------------------------------------

                function()

                -- ------------------------------------------------------------
                -- GG_UI BLOCK
                -- ------------------------------------------------------------

                    gg.alert(

                    -- ------------------------------------------------------------
                    -- OTHER BLOCK
                    -- ------------------------------------------------------------

                    "3月3日 23:0\n修复部分模块无法执行问题\n"..
                    "以及部分资源无法下载问题\n"..
                    "遇到无法执行的模块请从工具箱重新下载UI模块就行了\n"..
                    "并归整UI月租模块顺序"
                )
            end), 
    }), 

    -- ------------------------------------------------------------
    -- EMPTY BLOCK
    -- ------------------------------------------------------------



    -- ------------------------------------------------------------
    -- FUNCTION_CALL BLOCK
    -- ------------------------------------------------------------

            picbar2("常见问题", "ca_zl", {
                changan.button2("为什么月租UI一直弹解绑？", 

                -- ------------------------------------------------------------
                -- FUNCTION_DEF BLOCK
                -- ------------------------------------------------------------

                function()

                -- ------------------------------------------------------------
                -- GG_UI BLOCK
                -- ------------------------------------------------------------

                    gg.alert("使用教程：\n"..

                    -- ------------------------------------------------------------
                    -- OTHER BLOCK
                    -- ------------------------------------------------------------

                    "请到资源下载区安装云烛UI调试工具\n"..
                    "现在你需要准备三个修改器：\n"..
                    "1.内置前的rlgg\n2.内置后的rlgg\n3.我的UI调试工具\n\n操作流程：\n"..
                    "①首先，把UI用内置修改器执行一下，以绑定内置后的修改器\n"..
                    "②然后，在本地执行lua源码测试时，请使用我的UI调试工具执行，它不会与内置修改器抢绑定\n"..
                    "③最后，如果需要加密和上传，还是在你内置前的rlgg加密上传\n"..
                    "\n如果你用了自己的非内置的修改器执行了月租UI，则需要解绑，然后就会绑定到你这个修改器。再用内置执行时，又会需要解绑。\n使用我的UI调试工具则不需要解绑，只需要绑定一次内置即可。"..
                    "\n\n❗️不要动UI调试工具的安装包❗️\n修改后会导致校验不通过，与普通rlgg无异，会跟内置修改器抢绑定\n\n如果安装不了UI调试工具：\n"..
                    "则只能按照以前的方法，用解绑来切换内置前/内置后的修改器，每次切换时解绑，请认真阅读模板内注释的教程"
                )
            end), 

            -- ------------------------------------------------------------
            -- FUNCTION_CALL BLOCK
            -- ------------------------------------------------------------

            changan.line("#44161616"), 
                changan.button2("什么时候更新免费UI？", 

                -- ------------------------------------------------------------
                -- FUNCTION_DEF BLOCK
                -- ------------------------------------------------------------

                function()

                -- ------------------------------------------------------------
                -- GG_UI BLOCK
                -- ------------------------------------------------------------

                gg.alert("答：你们在群里反馈")

                -- ------------------------------------------------------------
                -- OTHER BLOCK
                -- ------------------------------------------------------------

            end), 

            -- ------------------------------------------------------------
            -- FUNCTION_CALL BLOCK
            -- ------------------------------------------------------------

            changan.line("#44161616"), 
                changan.button2("什么时候更新月租UI？", 

                -- ------------------------------------------------------------
                -- FUNCTION_DEF BLOCK
                -- ------------------------------------------------------------

                function()

                -- ------------------------------------------------------------
                -- GG_UI BLOCK
                -- ------------------------------------------------------------

                gg.alert("答：看情况，有好看的就给你上")

                -- ------------------------------------------------------------
                -- OTHER BLOCK
                -- ------------------------------------------------------------

            end), 

            -- ------------------------------------------------------------
            -- FUNCTION_CALL BLOCK
            -- ------------------------------------------------------------

            changan.line("#44161616"), 
                changan.button2("云烛团队真的圈了十万吗？", 

                -- ------------------------------------------------------------
                -- FUNCTION_DEF BLOCK
                -- ------------------------------------------------------------

                function()

                -- ------------------------------------------------------------
                -- GG_UI BLOCK
                -- ------------------------------------------------------------

                gg.alert("答：网友擦亮眼睛，不信谣不传谣")

                -- ------------------------------------------------------------
                -- OTHER BLOCK
                -- ------------------------------------------------------------

            end), 

            -- ------------------------------------------------------------
            -- EMPTY BLOCK
            -- ------------------------------------------------------------



            -- ------------------------------------------------------------
            -- OTHER BLOCK
            -- ------------------------------------------------------------

    }), 

    -- ------------------------------------------------------------
    -- FUNCTION_CALL BLOCK
    -- ------------------------------------------------------------

    --				changan.text("\nTips:向右滑动可拉出导航栏\n","#7C8084","13sp",true),

    -- ------------------------------------------------------------
    -- OTHER BLOCK
    -- ------------------------------------------------------------

}

-- ------------------------------------------------------------
-- EMPTY BLOCK
-- ------------------------------------------------------------



-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

    local layout2 = {
    LinearLayout, 
    layout_width = "match_parent", 
    layout_height = "match_parent", 
    orientation="vertical", 

    -- ------------------------------------------------------------
    -- FUNCTION_CALL BLOCK
    -- ------------------------------------------------------------

    changan.text("\n下载保存路径为:\n/storage/emulated/0/云烛/模块/\n或\n/sdcard/云烛/模块/", "#4180FF", "12sp", true), 
    changan.text("如果有文件打不开\n请到文件管理器删除，回来重新下载", "#A92026", "12sp", true), 

    -- ------------------------------------------------------------
    -- EMPTY BLOCK
    -- ------------------------------------------------------------



    -- ------------------------------------------------------------
    -- OTHER BLOCK
    -- ------------------------------------------------------------

        yulan(
        "云烛UI调试.apk", 
        "3.54 MB", 
        "［月租UI专用］用于执行本地lua源码开发测试，可避免解绑内置端，执行会跳过UI卡密验证", 
        "https://xg-cloudreve.cloud-k1.riyx.cn/f/LnnPub/YC.0.9.apk", 
        "/sdcard/云烛/模块/云烛UI调试.apk", 
        "a375d12ea22248aa6ab64594fe7e678a"
    ), 

    -- ------------------------------------------------------------
    -- FUNCTION_CALL BLOCK
    -- ------------------------------------------------------------

            box({
            changan.text("月租UI模块 (1)", "#000000", "13sp"), 
            changan.text("关于月租UI的使用方法：\n请下载UI调试工具来本地测试，用其他的会需要频繁解绑\n详情请阅读工具箱首页的教程", "#D90300", "10sp"), 

            -- ------------------------------------------------------------
            -- EMPTY BLOCK
            -- ------------------------------------------------------------



            -- ------------------------------------------------------------
            -- OTHER BLOCK
            -- ------------------------------------------------------------

                fileui(
                "[⭐new⭐]Y01 Echo UI模块.lua", 
                "6.08 KB", 
                "[月租UI]-Y01模板 这是可以使用的模板[特点流畅]", 
                "https://xg-cloudreve.cloud-k1.riyx.cn/f/D9Zotz/Y01.lua", 
                "/sdcard/云烛/模块/Y01-Echo-UI模块.lua", 
                "f8401e23d817a51298dc89e1a8dbeb4c"
            ), 

            -- ------------------------------------------------------------
            -- EMPTY BLOCK
            -- ------------------------------------------------------------




            -- ------------------------------------------------------------
            -- OTHER BLOCK
            -- ------------------------------------------------------------

    })
}

-- ------------------------------------------------------------
-- EMPTY BLOCK
-- ------------------------------------------------------------




-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

    local layout3 = {
    LinearLayout, 
    layout_width = "match_parent", 
    layout_height = "match_parent", 
    orientation="vertical", 
        {
        LinearLayout, 
        layout_width = "match_parent", 
        layout_height = "match_parent", 
        orientation="vertical", 

        -- ------------------------------------------------------------
        -- FUNCTION_CALL BLOCK
        -- ------------------------------------------------------------

        createCard("老强", "laoqiang",  "10 min ago",  "豆花鱼",  "最近忙吗？昨晚我去了你最爱的那家饭馆，点了他们的特色豆花鱼，吃着吃着就想你了。有空咱们视频？"), 

        -- ------------------------------------------------------------
        -- EMPTY BLOCK
        -- ------------------------------------------------------------



        -- ------------------------------------------------------------
        -- FUNCTION_CALL BLOCK
        -- ------------------------------------------------------------

        createCard("So Duri", "duri",  "20 min ago",  "Dinner Club",  "I think it's time for us to finally try that new noodle shop downtown that doesn't use menus. Anyone els..."), 

        -- ------------------------------------------------------------
        -- EMPTY BLOCK
        -- ------------------------------------------------------------



        -- ------------------------------------------------------------
        -- FUNCTION_CALL BLOCK
        -- ------------------------------------------------------------

        createCard("Lily MacDonald", "flower",  "2 hours ago",  "This food show is made for you",  "Ping- you'd love this new food show I started watching. It's produced by a Thai drummer who star..."), 

        -- ------------------------------------------------------------
        -- EMPTY BLOCK
        -- ------------------------------------------------------------



        -- ------------------------------------------------------------
        -- FUNCTION_CALL BLOCK
        -- ------------------------------------------------------------

        smallCard("Moon Harvest",  "25 MB",  "moon_harvest"), 
        smallCard("Moon Harvest",  "25 MB",  "moon_harvest"), 

        -- ------------------------------------------------------------
        -- EMPTY BLOCK
        -- ------------------------------------------------------------




        -- ------------------------------------------------------------
        -- OTHER BLOCK
        -- ------------------------------------------------------------

    }

    -- ------------------------------------------------------------
    -- EMPTY BLOCK
    -- ------------------------------------------------------------



    -- ------------------------------------------------------------
    -- OTHER BLOCK
    -- ------------------------------------------------------------

}

-- ------------------------------------------------------------
-- EMPTY BLOCK
-- ------------------------------------------------------------




-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

    local layout4 = {
    LinearLayout, 
    layout_width = "match_parent", 
    layout_height = "match_parent", 
    orientation="vertical", 

    -- ------------------------------------------------------------
    -- EMPTY BLOCK
    -- ------------------------------------------------------------



    -- ------------------------------------------------------------
    -- OTHER BLOCK
    -- ------------------------------------------------------------

        {
        MaterialCardView, 
        setCardBackgroundColor="0xFFF1F2F3", 
        layout_width="match_parent", 
        layout_height='100dp', 
        --gravity = "center_vertical",
        layout_marginTop="10dp", 
        setCardElevation="3dp", 
        layout_margin="10dp", 
        radius=100, 
        strokeWidth=0, 
        clickable=true, --点击效果
        focusable=true, 
        checkable=true, 
        onClick=function()

        -- ------------------------------------------------------------
        -- FUNCTION_CALL BLOCK
        -- ------------------------------------------------------------

            luajava.newThread(function()
            MaterialAlert("CS", "你点你妈呢\n没写好你搁这点点点")

            -- ------------------------------------------------------------
            -- OTHER BLOCK
            -- ------------------------------------------------------------

        end):start()
        end, 

        -- ------------------------------------------------------------
        -- EMPTY BLOCK
        -- ------------------------------------------------------------



        -- ------------------------------------------------------------
        -- OTHER BLOCK
        -- ------------------------------------------------------------

            {CircleImageView, 

            -- ------------------------------------------------------------
            -- FUNCTION_CALL BLOCK
            -- ------------------------------------------------------------

            src=getRes("person"), 

            -- ------------------------------------------------------------
            -- OTHER BLOCK
            -- ------------------------------------------------------------

            gravity = "center_vertical", 
            layout_marginTop="15dp", 
            layout_marginLeft="10dp", 
            layout_marginRight = "10dp", 
            layout_height="70dp", 
            layout_width="70dp", 

            -- ------------------------------------------------------------
            -- EMPTY BLOCK
            -- ------------------------------------------------------------



            -- ------------------------------------------------------------
            -- OTHER BLOCK
            -- ------------------------------------------------------------

        }, 

        -- ------------------------------------------------------------
        -- EMPTY BLOCK
        -- ------------------------------------------------------------




        -- ------------------------------------------------------------
        -- OTHER BLOCK
        -- ------------------------------------------------------------

            {
            TextView, 
            layout_width="match_parent", 
            layout_height="match_parent", 
            layout_marginTop="18dp", 
            text="未登录", 
            layout_marginLeft="60dp", 
            layout_gravity="center", 
            textSize="16sp", 
            textColor="#161616", 
        }, 
            {
            TextView, 
            layout_width="match_parent", 
            layout_height="match_parent", 
            layout_marginTop="38dp", 
            text="点我即可前往登陆", 
            layout_marginLeft="60dp", 
            layout_gravity="center", 
            textSize="12sp", 
            textColor="#161616", 
        }

        -- ------------------------------------------------------------
        -- EMPTY BLOCK
        -- ------------------------------------------------------------



        -- ------------------------------------------------------------
        -- OTHER BLOCK
        -- ------------------------------------------------------------

    }
}

-- ------------------------------------------------------------
-- EMPTY BLOCK
-- ------------------------------------------------------------





-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

    local main_titlebar_layout = {
    LinearLayout, 
    layout_width = "match_parent", 
    layout_height = "56dp",  -- 标准 AppBar 高度

    -- ------------------------------------------------------------
    -- FUNCTION_CALL BLOCK
    -- ------------------------------------------------------------

    id = luajava.newId("titlebar"), 

    -- ------------------------------------------------------------
    -- OTHER BLOCK
    -- ------------------------------------------------------------

    orientation = "horizontal", 
    backgroundColor = 0xFFF1F2F3, 
    gravity = "center_vertical", 
    elevation = "1dp", 
        {
        CircleImageView, 
        src=获取图片("http://q1.qlogo.cn/g?b=qq&nk=3687782427&s=5"), 
        gravity = "center_vertical", 
        layout_marginLeft="25dp", 
        layout_height = "30dp", 
        layout_width = "30dp", 
    }, 
        {
        TextView, 
        id = "title", 
        textColor = "#212121",  --MaterialDesign 标准黑色
        textSize="20dp", 
        text = "云烛UI工具箱", 
        layout_weight = 1,  -- 使用权重来填充剩余空间
        layout_marginLeft = "25dp", 
        gravity = "center_vertical", 
        layout_height = "match_parent", 
    }, 
        {
        LottieAnimationView, 
        id=luajava.ids['tsb'], 
        layout_marginRight = "10dp", 
        layout_height = "30dp", 
        layout_width = "30dp", 
        scaleType = 'fitCenter', 

        -- ------------------------------------------------------------
        -- FUNCTION_CALL BLOCK
        -- ------------------------------------------------------------

        __onFinish=function(v)
        v:setRepeatCount(Integer.MAX_VALUE)
        v:setAnimationFromJson(file.read('/sdcard/rlgg/YC/edit.json'))

        -- ------------------------------------------------------------
        -- OTHER BLOCK
        -- ------------------------------------------------------------

        v:playAnimation()
        end, 
        onClick = function()
        自定义主题()
        end
    }, 
        {
        LottieAnimationView, 
        id=luajava.ids['caid'], 
        layout_height = "30dp", 
        layout_width = "30dp", 
        layout_marginRight = "25dp", 
        scaleType = 'fitCenter', 

        -- ------------------------------------------------------------
        -- FUNCTION_CALL BLOCK
        -- ------------------------------------------------------------

        __onFinish=function(v)
        v:setRepeatCount(Integer.MAX_VALUE)
        v:setAnimationFromJson(file.read('/sdcard/rlgg/YC/magic.json'))

        -- ------------------------------------------------------------
        -- OTHER BLOCK
        -- ------------------------------------------------------------

        v:playAnimation()
        end, 

        -- ------------------------------------------------------------
        -- FUNCTION_CALL BLOCK
        -- ------------------------------------------------------------

        onClick = function(view)

        -- ------------------------------------------------------------
        -- OTHER BLOCK
        -- ------------------------------------------------------------

            local menu = {
                {
                "加群", 
                onClick = function()

                -- ------------------------------------------------------------
                -- EMPTY BLOCK
                -- ------------------------------------------------------------



                -- ------------------------------------------------------------
                -- OTHER BLOCK
                -- ------------------------------------------------------------

                end
                }, {
                "退出", 
                onClick = function()
                tuichu=1
                end
            }
        }

        -- ------------------------------------------------------------
        -- FUNCTION_CALL BLOCK
        -- ------------------------------------------------------------

                local popupMenu = ui.SimplePopupMenu({

                -- ------------------------------------------------------------
                -- OTHER BLOCK
                -- ------------------------------------------------------------

                bindView = view, 
                menu = menu, 
                icon = icon, 

                -- ------------------------------------------------------------
                -- FUNCTION_CALL BLOCK
                -- ------------------------------------------------------------

                onSelectedListener = function(parent,  view,  position) end

                -- ------------------------------------------------------------
                -- OTHER BLOCK
                -- ------------------------------------------------------------

        })
        popupMenu:show()
        end
    }
}

-- ------------------------------------------------------------
-- EMPTY BLOCK
-- ------------------------------------------------------------





-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

        local floatWindow = luajava.loadlayout({

        -- ------------------------------------------------------------
        -- OTHER BLOCK
        -- ------------------------------------------------------------

        LinearLayout, 
        orientation = "vertical", 
        main_titlebar_layout, 
            {
            CoordinatorLayout, 

            -- ------------------------------------------------------------
            -- FUNCTION_CALL BLOCK
            -- ------------------------------------------------------------

            id = luajava.newId("menu"), 

            -- ------------------------------------------------------------
            -- OTHER BLOCK
            -- ------------------------------------------------------------

            layout_width = "match_parent", 
            layout_height = "match_parent", 
            backgroundColor = 0xFFF1F2F3, 
            layout_marginBottom = "-5dp", 
            layout_weight = 1, 
                {
                FloatingActionButton, 

                -- ------------------------------------------------------------
                -- FUNCTION_CALL BLOCK
                -- ------------------------------------------------------------

                id = luajava.newId("fab"), 

                -- ------------------------------------------------------------
                -- OTHER BLOCK
                -- ------------------------------------------------------------

                layout_width="wrap_content", 
                layout_height="wrap_content", 
                layout_margin="16dp", 
                layout_gravity="bottom|end", 

                -- ------------------------------------------------------------
                -- EMPTY BLOCK
                -- ------------------------------------------------------------




                -- ------------------------------------------------------------
                -- OTHER BLOCK
                -- ------------------------------------------------------------

            }, 
                {
                'ui.ViewPager', 

                -- ------------------------------------------------------------
                -- FUNCTION_CALL BLOCK
                -- ------------------------------------------------------------

                id = luajava.newId("pagerView"), 

                -- ------------------------------------------------------------
                -- OTHER BLOCK
                -- ------------------------------------------------------------

                layout_width = "match_parent", 
                layout_height = "match_parent", 
                --		gravity = "center_vertical",

                -- ------------------------------------------------------------
                -- EMPTY BLOCK
                -- ------------------------------------------------------------



                -- ------------------------------------------------------------
                -- OTHER BLOCK
                -- ------------------------------------------------------------

                layout1, 
                layout2, 
                layout3, 
                layout4
            }
        }, 
            {
            BottomNavigationView, 

            -- ------------------------------------------------------------
            -- FUNCTION_CALL BLOCK
            -- ------------------------------------------------------------

            id = luajava.newId("navigation"), 

            -- ------------------------------------------------------------
            -- OTHER BLOCK
            -- ------------------------------------------------------------

            layout_width = "match_parent", 
            layout_height = "75dp", 
            layout_marginBottom = "-5dp", 
            backgroundColor = 0xFFFFFFFF, 
            LabelVisibilityMode = 0,   --1 是否显示标签

            -- ------------------------------------------------------------
            -- FUNCTION_CALL BLOCK
            -- ------------------------------------------------------------

            --		setItemTextColor=(ColorStateList({{android.R.attr.state_checked},{}},{"0xff"..RGBcolor,0xFF000000})),  --text颜色
            setItemIconTintList=(ColorStateList({{android.R.attr.state_checked}, {}}, {"0xff"..RGBcolor, 0xFF757575})),   --icon颜色
            setItemRippleColor=(ColorStateList({{android.R.attr.state_checked}, {}}, {"0x20"..RGBcolor, "0x20"..RGBcolor})),   --波纹颜色
            setItemActiveIndicatorColor=(ColorStateList({{android.R.attr.state_checked}, {}}, {"0x20"..RGBcolor, "0x20"..RGBcolor})),   --指示器颜色

            -- ------------------------------------------------------------
            -- EMPTY BLOCK
            -- ------------------------------------------------------------



            -- ------------------------------------------------------------
            -- OTHER BLOCK
            -- ------------------------------------------------------------

        }
})

-- ------------------------------------------------------------
-- EMPTY BLOCK
-- ------------------------------------------------------------



-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

addTab(stab)
local menuView = luajava.getIdView("menu")
local searchbar = luajava.getIdView("searchbar")
local searchview = luajava.getIdView("searchview")
local fab = luajava.getIdView("fab")
fab:setImageResource(MDC_R.drawable.material_ic_edit_black_24dp)
-- fab:setRippleColor(ColorStateList({{}},{"0x50"..RGBcolor}))
            fab:setOnClickListener(luajava.createProxy("android.view.View$OnClickListener",  {
            onClick = function(v)

            -- ------------------------------------------------------------
            -- OTHER BLOCK
            -- ------------------------------------------------------------

            end
}))

-- ------------------------------------------------------------
-- EMPTY BLOCK
-- ------------------------------------------------------------




-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

local navigationView = luajava.getIdView("navigation")
        local paperListener = luajava.createProxy("androidx.viewpager.widget.ViewPager$OnPageChangeListener",  {
        onPageSelected=function(menuItem)
        luajava.getIdView("navigation"):getMenu():getItem(menuItem):setChecked(true)

        -- ------------------------------------------------------------
        -- OTHER BLOCK
        -- ------------------------------------------------------------

        end
})

-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

        local bottomListener = luajava.createProxy("com.google.android.material.bottomnavigation.BottomNavigationView$OnNavigationItemSelectedListener",  {
        onNavigationItemSelected = function(menuItem)

        -- ------------------------------------------------------------
        -- OTHER BLOCK
        -- ------------------------------------------------------------

        local itemId = menuItem:getItemId()

        -- ------------------------------------------------------------
        -- FUNCTION_CALL BLOCK
        -- ------------------------------------------------------------

        luajava.getIdView("pagerView"):setCurrentItem(itemId-1)

        -- ------------------------------------------------------------
        -- OTHER BLOCK
        -- ------------------------------------------------------------

        return true
        end
})
--[[

-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

            luajava.getIdView("pagerView"):setPageTransformer(true,  luajava.createProxy("androidx.viewpager.widget.ViewPager$PageTransformer",  {
            transformPage = function(view,  position)
            local scaleFactor = math.max(0.85,  1 - math.abs(position))
            view:setScaleX(scaleFactor)
            view:setScaleY(scaleFactor)
            view:setAlpha(0.5 + (scaleFactor - 0.85) / (1 - 0.85) * (1 - 0.5))

            -- ------------------------------------------------------------
            -- OTHER BLOCK
            -- ------------------------------------------------------------

            end
}))
--]]

-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

    luajava.setInterface(luajava.getIdView(_ENV["请输入通用UI卡密"]),  'setOnKeyListener',  function(view,  keyCode,  KeyEvent)

    -- ------------------------------------------------------------
    -- CONDITION BLOCK
    -- ------------------------------------------------------------

    if keyCode == KeyEvent.KEYCODE_BACK then
    if not totui then

    -- ------------------------------------------------------------
    -- OTHER BLOCK
    -- ------------------------------------------------------------

    totui=true

    -- ------------------------------------------------------------
    -- FUNCTION_CALL BLOCK
    -- ------------------------------------------------------------

        luajava.newThread(function()

        -- ------------------------------------------------------------
        -- CONDITION BLOCK
        -- ------------------------------------------------------------

        if gg.alert("确定要退出？", "是", "否")==1 then

        -- ------------------------------------------------------------
        -- OTHER BLOCK
        -- ------------------------------------------------------------

        tuichu=1
        end
        totui=false
    end):start()
    end
    end
end)

-- ------------------------------------------------------------
-- EMPTY BLOCK
-- ------------------------------------------------------------



-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

    luajava.setInterface(luajava.getIdView(_ENV["请输入通用UI卡密"]),  'setOnFocusChangeListener',  function(view,  hasFocus)

    -- ------------------------------------------------------------
    -- OTHER BLOCK
    -- ------------------------------------------------------------

    viewManager:getLayoutParams().flags = hasFocus and WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL or WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE
    viewManager:updateView()
end)

-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

    luajava.setInterface(luajava.getIdView(_ENV["请输入通用UI卡密"]),  'setOnClickListener',  function(view)

    -- ------------------------------------------------------------
    -- CONDITION BLOCK
    -- ------------------------------------------------------------

    if not view:isFocused() then

    -- ------------------------------------------------------------
    -- FUNCTION_CALL BLOCK
    -- ------------------------------------------------------------

    view:setFocusableInTouchMode(true)
    view:setFocusable(true)

    -- ------------------------------------------------------------
    -- OTHER BLOCK
    -- ------------------------------------------------------------

    end
end)

-- ------------------------------------------------------------
-- EMPTY BLOCK
-- ------------------------------------------------------------



-- ------------------------------------------------------------
-- FUNCTION_DEF BLOCK
-- ------------------------------------------------------------

function 修改控件颜色(color)

-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

    luajava.runOnUiThread(function()
    navigationView:setItemIconTintList(ColorStateList({{android.R.attr.state_checked}, {}}, {"0xff"..RGBcolor, 0xFF757575}))  --icon颜色
    navigationView:setItemRippleColor(ColorStateList({{android.R.attr.state_checked}, {}}, {"0x20"..RGBcolor, "0x20"..RGBcolor}))  --波纹颜色
    navigationView:setItemActiveIndicatorColor(ColorStateList({{android.R.attr.state_checked}, {}}, {"0x20"..RGBcolor, "0x20"..RGBcolor}))  --指示器颜色
    -- fab:setRippleColor(ColorStateList({{}},{"0x50"..RGBcolor}))
    for key, value in pairs(colorvs) do

    -- ------------------------------------------------------------
    -- EMPTY BLOCK
    -- ------------------------------------------------------------



    -- ------------------------------------------------------------
    -- OTHER BLOCK
    -- ------------------------------------------------------------

    end
end)
end

-- ------------------------------------------------------------
-- EMPTY BLOCK
-- ------------------------------------------------------------



-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

luajava.getIdView("pagerView"):setOnPageChangeListener(paperListener)
luajava.getIdView("navigation"):setOnNavigationItemSelectedListener(bottomListener)

-- ------------------------------------------------------------
-- EMPTY BLOCK
-- ------------------------------------------------------------



-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

local viewManager = windowManager:bindView(floatWindow)
        viewManager:addView({

        -- ------------------------------------------------------------
        -- OTHER BLOCK
        -- ------------------------------------------------------------

        width = WindowManager.LayoutParams.MATCH_PARENT, 
        height = WindowManager.LayoutParams.MATCH_PARENT, 
        flags = WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL
})

-- ------------------------------------------------------------
-- EMPTY BLOCK
-- ------------------------------------------------------------




-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

gg.setVisible(false)

-- ------------------------------------------------------------
-- EMPTY BLOCK
-- ------------------------------------------------------------



-- ------------------------------------------------------------
-- LOOP BLOCK
-- ------------------------------------------------------------

while true do

-- ------------------------------------------------------------
-- CONDITION BLOCK
-- ------------------------------------------------------------

if tuichu == 1 then

-- ------------------------------------------------------------
-- FUNCTION_CALL BLOCK
-- ------------------------------------------------------------

gg.sleep(100)

-- ------------------------------------------------------------
-- OTHER BLOCK
-- ------------------------------------------------------------

break
end
end

-- ------------------------------------------------------------
-- END OF SCRIPT
-- ------------------------------------------------------------