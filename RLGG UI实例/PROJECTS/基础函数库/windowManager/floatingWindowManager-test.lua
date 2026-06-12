--[[
floatingWindowManager
相关函数的使用文档
https://gitee.com/rlyun/rlgg/tree/master/%E6%82%AC%E6%B5%AE%E7%AA%97UI%E6%A1%86%E6%9E%B6


如果存在卡UI请用多线程执行功能

]] --
local floatingWindowManager = require('floatingWindowManager')
floatingWindowManager:init()

-- 中断线程
local function interruptThread(thread)
	if thread then
		pcall(function()
			thread:interrupt()
		end)
	end
end

-- 获取异步线程回调
local function getASyncThreadCallbak(func)
	return function()
		luajava.startThread(function()
			return pcall(func)
		end)
	end
end

-- 获取同步线程回调, 涉及gg类库的回调只能使用这种,否则可能不稳定
local task
local function getSyncThreadCallbak(func)
	return function()
		if task then
			gg.toast('正在运行其它任务,再稍后!')
			return
		end
		luajava.startThread(function()
			task = true
			pcall(func)
			task = nil
		end)
	end
end

-- 获取同步线程回调并执行
local function callSyncThreadCallbak(func)
	return getSyncThreadCallbak(func)()
end

-- 通过功能名称找 function 并获取同步线程回调
local function findFunctionByName(name)
	local func = _ENV[name]
	if not isFunction(func) then
		gg.alert(string.format('不存在 %q 功能', name))
		return nil
	end
	return getSyncThreadCallbak(func)
end

-- 按钮工厂-生产“按钮布局”
local function newButtonLayout(name)
	if not isString(name) then
		return
	end

	local layout = {
		Button,
		background = floatingWindowManager:getStateListDrawable(),
		layout_width = 'match_parent',
		layout_margin = '5dp',
		text = name,
		textSize = '16sp',
		onClick = findFunctionByName(name)
	}

	return layout
end

-- 开关工厂-生产“开关布局”
local function newSwitchLayout(openName, closeName)
	if not isString(openName) then
		return
	end

	local layout = {
		Switch,
		layout_width = 'match_parent',
		text = openName,
		onCheckedChange = function(CompoundButton, state)
			local func
			if state then
				-- 设置开关文本为“关闭”的文本
				if isString(closeName) then
					CompoundButton:setText(closeName)
				end

				-- 找“打开”的功能函数
				func = findFunctionByName(openName)
			else
				-- 设置开关文本为“打开”的文本
				CompoundButton:setText(openName)

				if isString(closeName) then
					-- 找“关闭”的功能函数
					func = findFunctionByName(closeName)
				end
			end

			if isFunction(func) then
				-- 通过 findFunctionByName 获取的函数已经是被多线程包裹的，所以直接执行就可以了
				func()
			end
		end
	}

	return layout
end

-- 定义功能函数

_ENV['功能1'] = function()
	gg.alert('我是功能1')
end

_ENV['功能2'] = function()
	gg.alert('我是功能2')
end

_ENV['功能3'] = function()
	gg.alert('我是功能3')
end

_ENV['功能4'] = function()
	gg.alert('我是功能4')
end

_ENV['功能5'] = function()
	gg.alert('我是功能5')
end

_ENV['关闭功能1'] = function()
	gg.alert('功能1被关闭了')
end

_ENV['关闭功能2'] = function()
	gg.alert('功能1被关闭了')
end

_ENV['关闭功能3'] = function()
	gg.alert('功能1被关闭了')
end

_ENV['关闭功能4'] = function()
	gg.alert('功能1被关闭了')
end

_ENV['关闭功能5'] = function()
	gg.alert('功能1被关闭了')
end

function A1()
	gg.alert('我是A1的功能')
end

function A2()
	gg.alert('我是A2的功能')
end

function B1()
	while true do
		gg.toast('死循环')
		gg.sleep(1000)
	end
end

function C1()
	gg.alert('我是C1的功能')
end

function C2()
	gg.alert('我是C2的功能')
end

function C3()
	gg.clearResults()
	gg.searchNumber(100)
	gg.alert(string.format('搜索到%s个结果', gg.getResultsCount()))
end

floatingWindowManager:newWindow(('FWM v%s'):format(floatingWindowManager.version), {
	onCreate = function(floatingWindow)
		floatingWindow:addlayout({
			ScrollView,
			layout_margin = '10dp',
			layout_width = 'match_parent',
			layout_height = 'match_parent',
			{
				LinearLayout,
				background = floatingWindowManager:getStateListDrawable(),
				layout_width = 'match_parent',
				layout_height = 'match_parent',
				orientation = 'vertical',
				padding = '10dp',
				{
					Button,
					background = floatingWindowManager:getStateListDrawable(),
					layout_width = 'match_parent',
					layout_margin = '5dp',
					text = '线程模式搜索测试',
					textSize = '16sp',
					onClick = getSyncThreadCallbak(C3)
				},
				{
					Button,
					background = floatingWindowManager:getStateListDrawable(),
					layout_width = 'match_parent',
					layout_margin = '5dp',
					text = '按钮功能',
					textSize = '16sp',
					onClick = function(View)
						floatingWindowManager:start('按钮功能') -- 打开 按钮功能 的窗口, 前提是 newWindow 创建好了的
					end
				},
				{
					Button,
					background = floatingWindowManager:getStateListDrawable(),
					layout_width = 'match_parent',
					layout_margin = '5dp',
					text = '开关功能',
					textSize = '16sp',
					onClick = function()
						floatingWindowManager:start('开关功能')
					end
				},
				{
					Button,
					background = floatingWindowManager:getStateListDrawable(),
					layout_width = 'match_parent',
					layout_margin = '5dp',
					text = '其它功能',
					textSize = '16sp'
				},
				{
					Button,
					background = floatingWindowManager:getStateListDrawable(),
					layout_width = 'match_parent',
					layout_margin = '5dp',
					text = '多线程功能',
					textSize = '16sp',
					onClick = function()
						floatingWindowManager:start('多线程功能')
					end
				}
			}
		})
	end,
	onDestroy = function()
		-- gg.alert('欢迎下次使用!')
	end
})

floatingWindowManager:newWindow('按钮功能', {
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
				padding = '10dp',
				newButtonLayout('功能1'),
				newButtonLayout('功能2'),
				newButtonLayout('功能3'),
				newButtonLayout('功能4'),
				newButtonLayout('功能5')
			}
		})

	end
})

floatingWindowManager:newWindow('开关功能', {
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
				padding = '10dp',
				newSwitchLayout('功能1', '关闭功能1'),
				newSwitchLayout('功能2', '关闭功能2'),
				newSwitchLayout('功能3'),
				newSwitchLayout('功能4'),
				newSwitchLayout('功能5', '关闭功能5')
			}
		})
	end
})

floatingWindowManager:newWindow('多线程功能', {
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
				padding = '10dp',
				{
					Switch,
					layout_width = 'match_parent',
					text = '开关1',
					onCheckedChange = function(CompoundButton, state)
						-- 同一个窗口中 cacheName 不可重复，必须是唯一，可以是随机乱写
						local cacheName = '多线程1'
						if state then
							gg.alert('线程开启')
							local thread1 = luajava.startThread(B1)
							floatingWindow:setCache(cacheName, thread1)
						else
							gg.alert('线程关闭')
							local thread1 = floatingWindow:getCache(cacheName)
							interruptThread(thread1)
						end
					end
				}
			}
		})
	end
})

-- 运行悬浮窗
floatingWindowManager:run()
