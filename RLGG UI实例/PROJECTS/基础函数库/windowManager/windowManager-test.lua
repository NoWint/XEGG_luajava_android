--[[


如果你想了解该模块的实现源码，请查看源代码
https://gitee.com/rlyun/rlgg/blob/master/src/windowManager/windowManager.lua



使用 windowManager 模块把组件(View)添加到悬浮窗操作只需要两步

--1.导入 windowManager 模块
local windowManager = require('windowManager')

--2.执行
windowManager:addView(你的组件)



注意事项，回调函数（如 onClick 之类的）不可以执行耗时任务（比如搜索函数 gg.searchNumber），
如果有这个需求请使用多线程执行，luajava.startThread(function() end)

--]]

local windowManager = require('windowManager')
local rootViewManager
local rootView

rootView = luajava.loadlayout({
	LinearLayout,
	layout_width = 'wrap_content',
	layout_height = 'wrap_content',
	padding = '20dp',
	orientation = 'vertical',
	backgroundColor = 0x40000000,
	{
		Button,
		text = '可以移动',
		onClick = function()
			rootViewManager:setMoveable(true)
		end
	},
	{
		Button,
		text = '禁止移动',
		onClick = function()
			rootViewManager:setMoveable(false)
		end
	},
	{
		Button,
		text = '隐藏3秒',
		onClick = function()
			rootViewManager:hide()

			luajava.startThread(function()
				local len = 3
				for i = 1, len do
					gg.toast(len - (i - 1))
					gg.sleep(1000)
				end
				rootViewManager:show()
			end)

		end
	},
	{
		Button,
		text = '退出悬浮窗',
		onClick = function()
			rootViewManager:exit()
		end
	}
})


-- 绑定View之后的调用函数默认第一个参数就是该View，如果把self也计算则 View 算第二个参数
rootViewManager = windowManager:bindView(rootView)

-- 等价于 windowManager:addView(rootView)
rootViewManager:addView()

-- 设置可以移动
rootViewManager:setMoveable(true)

gg.setVisible(false)

-- 等待悬浮窗退出
rootViewManager:wait()
