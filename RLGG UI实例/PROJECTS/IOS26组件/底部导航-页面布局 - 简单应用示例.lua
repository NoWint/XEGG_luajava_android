--[[
加载一个多页导航组件
luajava.getViewPagerMagicIndicator
加载的布局支持2个额外的字段

getTitle			标题文本	返回的类型必须是string
getIconDrawable		标题图标	返回的类型必须是android.graphics.drawable.Drawable

https://gitee.com/rlyun/rlgg/blob/master/RLGG%E5%87%BD%E6%95%B0%E5%BA%93%E6%96%87%E6%A1%A3.md#luajavagetViewPagerMagicIndicator



]] --


local floatingWindowManager = require('floatingWindowManager')

floatingWindowManager:init()



local layouts = {
	[0] = nil,
	{
		LinearLayout,
		orientation = 'vertical',
		{
			Button,
			text = '功能1',
			onClick = function()
				floatingWindowManager:start('功能1')
			end
		},
		{
			Button,
			text = '功能2'
		},
		getTitle = function()
			return '功能'
		end,
		getIconDrawable = function()
			return luajava.getDrawable('@android:drawable/ic_menu_home')
		end

	},
	{
		LinearLayout,
		orientation = 'vertical',
		{
			Button,
			text = '选择进程',
			onClick = function()
				gg.setProcessX()
			end
		},
		{
			Button,
			text = '其它设置'
		},
		getTitle = function()
			return '设置'
		end,
		getIconDrawable = function()
			return luajava.getDrawable('@android:drawable/ic_menu_preferences')
		end

	},
	{
		LinearLayout,
		orientation = 'vertical',
		{
			Button,
			text = '加入交流群',
			onClick = function()
				qq.joinGroup('694700750')
			end
		},
		{
			Button,
			text = '加我QQ',
			onClick = function()
				qq.join('507522729')
			end
		},
		getTitle = function()
			return '发现'
		end,
		getIconDrawable = function()
			return luajava.getDrawable('@android:drawable/ic_menu_search')
		end
	},
	{
		LinearLayout,
		orientation = 'vertical',
		{
			TextView,
			text = '没有开发',
		},
		getTitle = function()
			return '我'
		end,
		getIconDrawable = function()
			return luajava.getDrawable('@android:drawable/ic_menu_invite')
		end

	}

}

local view = luajava.getViewPagerMagicIndicator(layouts)

local frameLayout = luajava.loadlayout({
	FrameLayout,
	layout_width = '200dp', -- 宽高200dp的正方形组件
	layout_height = '200dp',
	{view}
})


floatingWindowManager:newWindow('底部导航\n页面布局', {
	onCreate = function(floatingWindow)
		floatingWindow:addView(frameLayout)
	end
})

floatingWindowManager:newWindow('功能1', {
	onCreate = function(floatingWindow)
		floatingWindow:addlayout({
			ScrollView,
			layout_width = 'match_parent',
			layout_height = 'match_parent',
			{
				LinearLayout,
				background = floatingWindowManager:getStateListDrawable(),
				layout_width = 'match_parent',
				layout_height = 'match_parent',
				orientation = 'vertical',
				padding = '4dp',
				{
					Button,
					background = floatingWindowManager:getStateListDrawable(),
					layout_width = 'match_parent',
					layout_margin = '5dp',
					text = '按钮1',
					textSize = '16sp',
				},
				{
					Button,
					background = floatingWindowManager:getStateListDrawable(),
					layout_width = 'match_parent',
					layout_margin = '5dp',
					text = '按钮2',
					textSize = '16sp',
				}
			}
		})

	end
})

-- 运行悬浮窗
floatingWindowManager:run()

