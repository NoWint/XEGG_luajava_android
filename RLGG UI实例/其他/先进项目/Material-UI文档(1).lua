

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


local home = baseWindow:new({
	id = "Title",
	onCreate = function(window)
		local ids = luajava.newIds()
		window:setIconLayout({
			ShapeableImageView,
			layout_height="45dp",
			layout_width="45dp",
			src = "https://cccimg.com/view.php/b0d65af95dd8a4e500b0ea4be24ca8be.png",--悬浮球xfq
			__onFinish = function(view)	
    view:setShapeAppearanceModel(view:getShapeAppearanceModel()
    :toBuilder()
    :setAllCorners(CornerFamily.CUT, 30) -- 设置所有角为圆角，半径为16dp
    :build())
	end
		})
		
		                  
		local bottomTab = window:BottomTab()

		local function newPager()
			local layouts = {
				LinearLayout,
				layout_width = "match_parent",
				layout_height = "match_parent",
				orientation = "vertical",		
			}

			local t = {}

			function t:addLayout(layout)
				layouts[#layouts+1]=layout
			end

			function t:submit(title,icon)
				bottomTab:addLayout({
                title = title,
					{
						ScrollView,
						layout_width = "match_parent",
						layout_height = "match_parent",
						layouts
					}
				})
				bottomTab:notifyDataSetChanged()
			end


			function t:addCardDemo(className, layout)
				self:addLayout({
					MaterialCardView,
					layout_width = "match_parent",
					layout_height = "wrap_content",
					layout_margin = "12dp",
					setCardElevation = "1dp",--阴影
				{
						LinearLayout,
						layout_margin = "8dp",
						layout_width = "match_parent",
						layout_height = "wrap_content",
						orientation = "vertical",
						{
							MaterialTextView,
							layout_width = "match_parent",
							layout_height = "wrap_content",
							text = className,
							onClick = function(tv)
							local text = tostring(tv:getText())
							Snackbar:make(tv, text, Snackbar.LENGTH_INDEFINITE)
							:setDuration(1000)
							:setAction("复制",function()
								gg.copyText(text, false)
							end)							
							:show()							
							end
						},
						layout
					}
				})
			end


			function t:addDemo(className, onClick)
				self:addCardDemo(className, {
					MaterialButton,
					layout_width = "match_parent",
					layout_height = "wrap_content",
					textColor="#000000",
					text = string.match(className, "([^%.]+)$") or className,
					onClick = onClick and window:threadWraper(onClick)
				})
			end
			
			return t
		end

function getVerticalBG(gtvb1,gtvb3,gtvb4,gtvb5)
  if not gtvb4 then gtvb4=0 gtvb5=0xff161616 end
  local jianbians=luajava.new(GradientDrawable)
  jianbians:setCornerRadius(gtvb3)
  jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
  jianbians:setColors(gtvb1)
  jianbians:setStroke(gtvb4,gtvb5)--边框宽度和颜色
  return jianbians
end

    RGBcolor = "A9D9FF"

		local element = newPager()
		window:addMenuLayouts({
			{
			title = "退出",
			icon="@drawable/ic_3d_rotation_24dp",
				onMenuItemClick = function(item)
					window:onFinish()
				end,
			},
			{
			title = "关于",
			icon="@drawable/ic_accelerator_24dp",
			onMenuItemClick = function(item)
			end,
		    }		
		})


		window:addMenuLayouts2({
			{
				title = "音乐",
				icon="@android:drawable/ic_audio_media",
				onMenuItemClick = function(item)
				end,
			},
			{
				title = "电报",
				icon = "@android:drawable/ic_input_extract_action_send",
				onMenuItemClick = function(item)

				end,
			},
			{
				title = "Q群",
				icon = "@android:drawable/perm_group_sms",
				onMenuItemClick = function(item)	        	
				end,
			},
			{
				title = "退出",
				icon = "@android:drawable/ic_lock_power_off",
				onMenuItemClick = function(item)
				window:onFinish()
				end,
			}
		})

    
		element:addCardDemo("com.google.android.material.materialswitch.MaterialSwitch", {
			MaterialSwitch,
			layout_width = "match_parent",
			layout_height = "wrap_content",
			text = "MaterialSwitch",
            trackTintList=(ColorStateList({{android.R.attr.state_checked},{}},{"0xff"..RGBcolor,0x28FFFFFF})),
            thumbTintList=(ColorStateList({{android.R.attr.state_checked},{-android.R.attr.state_checked}},{0xFFFFFFFF,0xFF4B484F})),      			
			onCheckedChange = window:threadWraper(function(compoundButton, isChecked)
				if isChecked then	
					
				else

				end
			end)
		})


		element:addCardDemo("com.google.android.material.checkbox.MaterialCheckBox", {
			MaterialCheckBox,
			layout_width = "match_parent",
			layout_height = "wrap_content",
			text = "MaterialCheckBox",
            buttonTintList=ColorStateList({{android.R.attr.state_checked},{-android.R.attr.state_checked}},{"0xff"..RGBcolor,0xff49454F}),			
			onCheckedChange = window:threadWraper(function(compoundButton, isChecked)
				if isChecked then

				else

				end
			end)
		})
		

		element:addCardDemo("com.google.android.material.tabs.TabLayout", {
            TabLayout,
            layout_width = "match_parent",
            layout_height = "wrap_content",
            background=getVerticalBG({0x109C9D9F,0x109C9D9F},10),
            __onFinish = function(view)
            view:setTabTextColors(0xFF44474E,"0xff"..RGBcolor)
            view:setSelectedTabIndicatorColor("0xff"..RGBcolor)
            view:setTabIconTint(ColorStateList({{-android.R.attr.state_selected},{android.R.attr.state_selected}},{0xFF44474E,"0xff"..RGBcolor}))
            --view:setTabRippleColor(ColorStateList({{android.R.attr.state_pressed},{-android.R.attr.state_pressed}},{"0x20"..RGBcolor,0x00000000})) 
            for i = 1, 3 do
            local tab = view:newTab()
            tab:setText("预览" .. i)
            tab:setIcon(MDC_R.drawable.abc_ic_search_api_material)
            view:addTab(tab)
            end
          end
		})		


        element:addCardDemo("com.google.android.material.navigationrail.NavigationRailView", {
            NavigationRailView,
            layout_width = "wrap_content", -- 侧边导航通常是 `wrap_content`
            layout_height = "match_parent",
            LabelVisibilityMode = 0,  --1 是否显示标签	
            background = getVerticalBG({0x109C9D9F, 0x109C9D9F}, 10),
            __onFinish = function(view)
    		view:setItemTextColor(ColorStateList({{android.R.attr.state_checked},{}},{"0xff"..RGBcolor,0xFF44474E}))          
		    view:setItemIconTintList(ColorStateList({{android.R.attr.state_checked},{}},{"0xff"..RGBcolor,0xFF44474E}))
		    view:setItemRippleColor(ColorStateList({{android.R.attr.state_checked},{}},{"0x35"..RGBcolor,"0x35"..RGBcolor}))
	    	view:setItemActiveIndicatorColor(ColorStateList({{android.R.attr.state_checked},{}},{"0x50"..RGBcolor,"0x50"..RGBcolor}))                        
            local menu = view:getMenu()
            for i = 1,3 do
            local item = menu:add(0, i, i, "预览" .. i) -- 添加菜单项
            item:setIcon(MDC_R.drawable.abc_ic_search_api_material) -- 设置默认图标
            end
        end
    })


        element:addCardDemo("com.google.android.material.bottomnavigation.BottomNavigationView", {
            BottomNavigationView,
            layout_width = "match_parent", -- 侧边导航通常是 `wrap_content`
            layout_height = "77dp",
            LabelVisibilityMode = 0,  --1 是否显示标签	
            background = getVerticalBG({0x109C9D9F, 0x109C9D9F}, 10),
            __onFinish = function(view)
    		view:setItemTextColor(ColorStateList({{android.R.attr.state_checked},{}},{"0xff"..RGBcolor,0xFF44474E}))          
		    view:setItemIconTintList(ColorStateList({{android.R.attr.state_checked},{}},{"0xff"..RGBcolor,0xFF44474E}))
		    view:setItemRippleColor(ColorStateList({{android.R.attr.state_checked},{}},{"0x35"..RGBcolor,"0x35"..RGBcolor}))
	    	view:setItemActiveIndicatorColor(ColorStateList({{android.R.attr.state_checked},{}},{"0x50"..RGBcolor,"0x50"..RGBcolor}))            
            local menu = view:getMenu()
            for i = 1,3 do
            local item = menu:add(0, i, i, "预览" .. i) -- 添加菜单项
            item:setIcon(MDC_R.drawable.abc_ic_search_api_material) -- 设置默认图标
            end
        end
    })


		element:addCardDemo("com.google.android.material.progressindicator.LinearProgressIndicator", {
        LinearLayoutCompat,
        gravity="center",
        orientation="vertical",
        layout_width="match",
        layout_height="80dp",
        {		
            LinearProgressIndicator,
	        layout_width = "match_parent",
            layout_height = "wrap_content", 
			__onFinish=function(v)
				v:setIndicatorColor({0xFFFF4F4F, 0xFFF8BD46, 0xff1D8FFF})
				v:setIndeterminateAnimationType(0)
	            v:setIndeterminate(true) 		
			end,			            
        }    
    })


		element:addCardDemo("com.google.android.material.progressindicator.CircularProgressIndicator", {
        LinearLayoutCompat,
        gravity="center",
        orientation="vertical",
        layout_width="match",
        layout_height="80dp",
        {		
            CircularProgressIndicator,
	        layout_width = "match_parent",
            layout_height = "wrap_content", 
			__onFinish=function(v)
            v:setIndicatorColor({0xff1D8FFF})             
            v:setIndeterminate(true) 		
			end,			            
        }    
    })


		element:addCardDemo("com.google.android.material.dialog.MaterialAlertDialog", {
			MaterialButton,
			layout_width = "match_parent",
			layout_height = "wrap_content",
			text="MaterialButton",
			textColor="#000000",
            setBackgroundTintList=(ColorStateList({{}},{"0xff"..RGBcolor})), 
            onClick = function()	
			local dialogBuilder = MaterialAlertDialogBuilder(baseWindow:getContext())-- 创建对话框构造器	
			:setTitle("Title") -- 设置标题
			:setMessage("A dialog is a type of model window that appears in front of app content to provide critical information, or ask for a decision.") -- 设置消息
			:setPositiveButton("Accept", window:threadWraper(function() 
			
			end))
            :setNegativeButton("Deline", window:threadWraper(function() 

			end))
			:setNeutralButton("Cancel", window:threadWraper(function() 

           	end))			
            :setCancelable(false)--禁止用户通过点击外部关闭对话框
			luajava.showAlert(dialogBuilder)            
            end,	
    })


element:addCardDemo("MaterialButton | FloatingActionButton", 
    {
	CoordinatorLayout,
	layout_width = "match_parent",
	layout_height = "match_parent",	
			{
			MaterialButton,
			layout_width = "wrap_content",
			layout_height = "wrap_content",
			layout_marginLeft = "12dp" ,
			text="MaterialButton",
			textColor="#000000",
			setIconTint=(ColorStateList({{}},{0xFF011B3E})),       
			cornerRadius="15dp",--圆角
			setIconResource = (MDC_R.drawable.material_ic_edit_black_24dp),
            setBackgroundTintList=(ColorStateList({{}},{"0xff"..RGBcolor})),       
			__onFinish=function(v)
            v:setTooltipText("长按查看详情")
			end,			                                    
            },				
			{
			MaterialButton,
			layout_width = "wrap_content",
			layout_height = "wrap_content",
			layout_marginLeft = "12dp" ,
			layout_marginTop = "49dp",      
			text="Outlined Button",
			textColor="#6D58A3",
			setIconTint=(ColorStateList({{}},{0xFF6D58A3})),  --   0xFF011B3E  
			cornerRadius="15dp",--圆角
			setIconResource = (MDC_R.drawable.material_ic_edit_black_24dp),
            setBackgroundTintList=(ColorStateList({{}},{0x00FFFFFF})),  	
			__onFinish=function(v)
            v:setStrokeWidth(2) 
            v:setStrokeColor(ColorStateList({{}},{0xFF6D58A3}))
			end,			                        
            },	
			{
			MaterialButton,
			layout_width = "wrap_content",
			layout_height = "wrap_content",
			layout_marginLeft = "12dp" ,
			layout_marginTop = "96dp",      
			text="Filled tonal button",
			textColor="#000000",
--			setIconTint=(ColorStateList({{}},{0xFF6D58A3})),  --   0xFF011B3E  
			cornerRadius="15dp",--圆角
--			setIconResource = (MDC_R.drawable.material_ic_edit_black_24dp),
            setBackgroundTintList=(ColorStateList({{}},{0xFFE8DEF7})),  	
			__onFinish=function(v)

			end,			                        
            },            	
			{
			FloatingActionButton,
			layout_width = "wrap_content",
			layout_height = "wrap_content",			
			gravity="bottom|end",
			layout_margin="16dp",
			layout_marginTop = "148dp",          
            setImageResource = (MDC_R.drawable.material_ic_edit_black_24dp),
--            setRippleColor=(ColorStateList({{}},{"0x20"..RGBcolor})),
            setBackgroundTintList=(ColorStateList({{}},{"0xff"..RGBcolor})), 
			__onFinish=function(v)

			end,			                                    
			},	
			{
            ExtendedFloatingActionButton,
            layout_width = "wrap_content",
			layout_height = "wrap_content",
	        gravity = "center",
	        layout_margin="16dp",   
	       	layout_marginTop = "212dp",          
            text="Extended FAB",
            setIconResource = (MDC_R.drawable.material_ic_edit_black_24dp),
--            setRippleColor=(ColorStateList({{}},{"0x20"..RGBcolor})),
            setBackgroundTintList=(ColorStateList({{}},{"0xff"..RGBcolor})),                   
            onClick = function(v)
            if v:isExtended() then
            v:shrink()  -- 收缩
            else
            v:extend()  -- 展开
         end
      end
       },
})


element:addCardDemo("com.google.android.material.divider.MaterialDivider", {
    LinearLayoutCompat,
    layout_width = "match_parent",
    layout_height = "wrap_content",
    orientation = "vertical",
    __onFinish = function(parent)
        local context = parent:getContext()
        for i = 1, 10 do
            local textView = luajava.new(MaterialTextView, context)
            textView:setLayoutParams(LinearLayoutCompat.LayoutParams(-2, -2))
            textView:setText("Item " .. i)
            parent:addView(textView)
            -- 不是最后一个 item，就添加分割线
            if i < 10 then
                local divider = luajava.new(MaterialDivider, context)
                divider:setLayoutParams(LinearLayoutCompat.LayoutParams(-1, 3))
--                divider:setDividerColor(0xFF6200EE) -- 分割线颜色
                parent:addView(divider)
            end
        end
    end
})






element:submit("菜单1")--菜单1标题

bottomTab:notifyDataSetChanged()


end
})

gg.setVisible(false)
home:start()
home:join()
gg.setVisible(true)
