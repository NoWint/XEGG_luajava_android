

项目名字="云烛UI编辑器"
changan={}
local ui = require("ui")
local context = material3:getContext()
local material3 = require 'material3'
context:setTheme(R.style.AppTheme)
YoYoImpl=luajava.getYoYoImpl()
vibra = context:getSystemService(Context.VIBRATOR_SERVICE)
import "com.google.android.material.bottomnavigation.BottomNavigationView"
import "com.google.android.material.navigationrail.NavigationRailView"
import "com.google.android.material.navigation.NavigationView"
import "com.google.android.material.floatingactionbutton.FloatingActionButton"
import "com.google.android.material.dialog.MaterialAlertDialogBuilder"
import "androidx.coordinatorlayout.widget.CoordinatorLayout"
import "com.google.android.material.button.MaterialButton"
import "com.google.android.material.slider.Slider"
import "com.google.android.material.card.MaterialCardView"
import "com.google.android.material.progressindicator.*" 
import "com.google.android.material.chip.Chip"
import "com.google.android.material.chip.ChipGroup"
import "com.google.android.material.appbar.MaterialToolbar"
import "com.google.android.material.appbar.AppBarLayout"
import "androidx.core.widget.NestedScrollView"
import "androidx.recyclerview.widget.RecyclerView"
import "android.content.res.ColorStateList"
local window = require("windowManager")
local LayoutParams = luajava.bindClass("android.view.WindowManager$LayoutParams")
local MDC_R = luajava.bindClass("com.google.android.material.R")
local LinearLayoutCompat = luajava.bindClass("androidx.appcompat.widget.LinearLayoutCompat")
dex.loadfile("/sdcard/云烛/编辑器/Lottie.dex")
import "com.airbnb.lottie.*"

local typeface = import("android.graphics.Typeface")
local FontPath = "/sdcard/云烛/编辑器/font.ttf"--字体路径
local font = typeface:createFromFile(FontPath)

function getIcon(icon)
	return luajava.getBitmapDrawable("/sdcard/云烛/编辑器/".. icon)
end

function addTab(data)
    local bottomMenu = luajava.getIdView("navigation"):getMenu()
    for i, tab in ipairs(data) do
        local bottomItem = bottomMenu:add(0, i, i, tab[1])
        bottomItem:setIcon(getIcon(tab[2]))
    end
end


function getRes(x)
	return 获取图片("/sdcard/云烛/编辑器/"..x)
end

function 获取图片(txt)
	ntxt = string.sub(string.gsub(txt,"/","."),-10,-1)
	if string.find(tostring(txt),"http") ~= nil then
		if panduan("/sdcard/云烛/编辑器/"..ntxt) == false then
			luajava.download(txt,"/sdcard/云烛/编辑器/"..ntxt)
		end
		txt = "/sdcard/云烛/编辑器/"..ntxt
	end
	return luajava.getBitmapDrawable(txt)
end

function getVerticalBG(gtvb1,gtvb3,gtvb4,gtvb5)
if not gtvb4 then gtvb4 = 0 gtvb5 = 0xff000000 end
local jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(gtvb3)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors(gtvb1)
jianbians:setStroke(gtvb4,gtvb5)
return jianbians
end
function cardbg(gtvb1,gtvb4,gtvb5,g1,g2,g3,g4)
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
function newbg(gtvb1,gtvb3,gtvb4,gtvb5)
if not gtvb4 then gtvb4 = 0 gtvb5 = 0xff000000 end
local jianbians = luajava.loadlayout({
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

function fadein(control,time)
  import("android.animation.ObjectAnimator")
  luajava.runOnUiThread(function()
    ObjectAnimator():ofFloat(control,"alpha",{0.0,1.0})
    :setDuration(time)
    :start()
end) end

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

function changan.text(text,color,size,isjz)
if not color then color="#000000" end
if not size then size="13sp" end
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

function getTimeStamp(t)
local str = os.date("%Y/%m/%d %H:%M:%S",t)
return str
end

  function MaterialAlert(text,anniu1)
  MaterialAlertDialog=MaterialAlertDialogBuilder(material3:getContext())
    :setTitle(项目名字) -- 设置标题
    :setMessage(text)
    :setPositiveButton(anniu1,function()
    end)
    luajava.showAlert(MaterialAlertDialog)
  end
  
  
  function createCard(username, avatar, time, title, content)
  return {
            MaterialCardView,
            layout_width = "match_parent",
            layout_margin = "8dp",
            layout_marginLeft = "16dp",
            layout_marginRight = "16dp",
            cardElevation = "2dp",
    		cardBackgroundColor=0xFFF4F8FE,
    		strokeColor=0xFFF4F8FE,        
		__onCreate=function(v)
			v:setRadius(35)
			local c=ColorStateList({
				{android.R.attr.state_pressed},
				{-android.R.attr.state_pressed}
				}, {
				0x00ffffff,
				0x00ffffff
			})
			v:setRippleColor(c)
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
                        src = getRes(avatar),
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

function smallCard(title, size, imageRes)
    return {
        MaterialCardView,
        layout_width = "195dp",
        layout_height = "220dp",
        layout_margin = "8dp",
		cardBackgroundColor=0xFFF4F8FE,
		strokeColor=0xFFF4F8FE,  
        layout_marginLeft = "16dp",
        cardElevation = "2dp",
		__onCreate=function(v)
			v:setRadius(35)
			local c=ColorStateList({
				{android.R.attr.state_pressed},
				{-android.R.attr.state_pressed}
				}, {
				0x00ffffff,
				0x00ffffff
			})
			v:setRippleColor(c)
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
                src = getRes(imageRes),
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





            
local stab = {
	{"主页", "home"},
	{"发现", "explore"},
	{"音乐", "music"},
	{"聊天", "chat"},
}



local layout1 = {
ScrollView,
{
	LinearLayout,
	layout_width = "match_parent",
	layout_height = "match_parent",
	orientation="vertical",
}}

local layout2 = {
ScrollView,
{
	LinearLayout,
	layout_width = "match_parent",
	layout_height = "match_parent",
	orientation="vertical",
    createCard("老强","laoqiang", "10 min ago", "豆花鱼", "最近忙吗？昨晚我去了你最爱的那家饭馆，点了他们的特色豆花鱼，吃着吃着就想你了。有空咱们视频？"),
    
    createCard("So Duri","duri", "20 min ago", "Dinner Club", "I think it's time for us to finally try that new noodle shop downtown that doesn't use menus. Anyone els..."),    

    createCard("Lily MacDonald","flower", "2 hours ago", "This food show is made for you", "Ping- you'd love this new food show I started watching. It's produced by a Thai drummer who star..."),    	

    smallCard("Moon Harvest", "25 MB", "moon_harvest"),
    smallCard("Moon Harvest", "25 MB", "moon_harvest"),


}}


local layout3 = {
ScrollView,
{
	LinearLayout,
	layout_width = "match_parent",
	layout_height = "match_parent",
	orientation="vertical",
}}


local layout4 = {
ScrollView,
{
	LinearLayout,
	layout_width = "match_parent",
	layout_height = "match_parent",
	orientation="vertical",	
}}



local main_titlebar_layout = {
    LinearLayout,
    layout_width = "match_parent",
    layout_height = "56dp",
    backgroundColor = 0xFFF8F9FE,
    orientation = "horizontal",
    gravity = "center_horizontal",
    setElevation = "1dp",
    {
        TextView,
        id = luajava.newId("titlebar_text"),
        layout_weight = 1,
        Typeface = font,
        gravity = "center_vertical|left",
        layout_height = "match_parent",
        layout_width = "0dp",
        layout_marginLeft = "16dp",
        textColor = "#161616",
        textSize = "20sp",
    },
    {
        LinearLayout,
        layout_width = "wrap_content",
        layout_height = "match_parent",
        orientation = "vertical",
        gravity = "center|vertical",
        layout_gravity = "center_vertical",
        layout_marginRight = "16dp",
        {
            LottieAnimationView,
            layout_height = "30dp",
            layout_width = "30dp",
            layout_gravity = "center_horizontal",
            __onFinish = function(v)
                v:setRepeatCount(Integer.MAX_VALUE)
                v:setAnimationFromJson(file.read('/sdcard/云烛/编辑器/layers1.json'))
                v:playAnimation()
            end,
            onClick = function(view)
                local menu = {
                    {
                        "退出",
                        onClick = function()
                            tuichu = 1
                        end
                    }
                }
                local popupMenu = ui.SimplePopupMenu({
                    bindView = view,
                    menu = menu,
                    icon = icon,
                    onSelectedListener = function(parent, view, position) end
                })
                popupMenu:show()
            end
        },
        {
            TextView,
            Typeface = font,
            text = "菜单",
            textSize = "9sp",
            textColor = "#161616",
            layout_width = "wrap_content",
            layout_height = "wrap_content",
            layout_gravity = "center_horizontal", 
        },
    }
}



local floatWindow = luajava.loadlayout({
	LinearLayout,
	orientation = "vertical",
	main_titlebar_layout,
	{
		CoordinatorLayout,
		id = luajava.newId("menu"),
		layout_width = "match_parent",
		layout_height = "match_parent",
		backgroundColor = 0xFFF8F9FE,
		layout_weight = 1,		
		{
			'ui.ViewPager',
			id = luajava.newId("pagerView"),
			layout_width = "match_parent",
			layout_height = "match_parent",
			layout1,
			layout2,
			layout3,
			layout4			
		}
	},
	{
    	BottomNavigationView,
    	id = luajava.newId("navigation"),
    	layout_width = "match_parent",
		layout_height = "wrap_content",
		backgroundColor = 0xFFEDEEF3,
    }
})

addTab(stab)
local titleTextView = luajava.getIdView("titlebar_text")
local paperListener = luajava.createProxy("androidx.viewpager.widget.ViewPager$OnPageChangeListener", {
    onPageSelected = function(menuItem)
        luajava.getIdView("navigation"):getMenu():getItem(menuItem):setChecked(true)        
        local tab = stab[menuItem + 1]
        if tab then
            titleTextView:setText(tab[1])
        end
    end
})

local bottomListener = luajava.createProxy("com.google.android.material.bottomnavigation.BottomNavigationView$OnNavigationItemSelectedListener", {
    onNavigationItemSelected = function(menuItem)
        local itemId = menuItem:getItemId()
        luajava.getIdView("pagerView"):setCurrentItem(itemId - 1)
        local tab = stab[itemId]
        if tab then
            titleTextView:setText(tab[1])
        end        
        return true
    end
})

luajava.getIdView("pagerView"):setOnPageChangeListener(paperListener)
luajava.getIdView("navigation"):setOnNavigationItemSelectedListener(bottomListener)


-- 设置初始标题
if stab[1] then
    titleTextView:setText(stab[1][1])
end

floatWindow:setAlpha(0.0) -- 初始透明度为0
local viewManager = windowManager:bindView(floatWindow)
viewManager:addView({
	width = WindowManager.LayoutParams.MATCH_PARENT,
	height = WindowManager.LayoutParams.MATCH_PARENT,
	flags = WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL
})
fadein(floatWindow, 1000)


gg.setVisible(false)
while true do
if tuichu == 1 then
gg.sleep(100)
 break 
end
end  
  
  
  
  
  
  