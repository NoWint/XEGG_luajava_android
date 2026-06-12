--[[
加载一个多页导航组件
luajava.getViewPagerMagicIndicator
加载的布局支持2个额外的字段

getTitle			标题文本	返回的类型必须是string
getIconDrawable		标题图标	返回的类型必须是android.graphics.drawable.Drawable

https://gitee.com/rlyun/rlgg/blob/master/RLGG%E5%87%BD%E6%95%B0%E5%BA%93%E6%96%87%E6%A1%A3.md#luajavagetViewPagerMagicIndicator


apk有图标，符合测试，所有下面用的是安装包来演示

]]--

local list = app.runList()

local layouts = {}
for i, v in ipairs(list) do
	v = tostring(v) -- 包名
	if gg.isPackageInstalled(v) then

		layouts[#layouts + 1] = {
			LinearLayout,
			orientation = 'vertical',
			{
				LinearLayout,
				orientation = 'horizontal',
				{
					TextView,
					text = '包名：'
				},
				{
					TextView,
					text = v
				}
			},
			{
				LinearLayout,
				orientation = 'horizontal',
				{
					TextView,
					text = '查看安装路径'
				},
				onClick = function()
					local path = app.getPath(v)
					if gg.alert2(v, path, '复制') == 1 then
						gg.copyText(path, false)
					end
				end
			},
			getTitle = function()
				-- 获取应用名称
				return app.getName(v)
			end,
			getIconDrawable = function()
				local Drawable
				local ok, err = pcall(function()
					-- 获取应用图标
					Drawable = app.getPackageInfo(v).applicationInfo:loadIcon(app.pm)
				end)
				return Drawable
			end
		}
	end

end

local view = luajava.getViewPagerMagicIndicator(layouts)

local frameLayout = luajava.loadlayout({
	FrameLayout,
	layout_width = '200dp', -- 宽高200dp的正方形组件
	layout_height = '200dp',
	{view}
})

local floatingWindowManager = require('floatingWindowManager')

floatingWindowManager:init()

floatingWindowManager:newWindow('底部导航\n页面布局', {
	onCreate = function(floatingWindow)
		floatingWindow:addView(frameLayout)
	end
})

-- 运行悬浮窗
floatingWindowManager:run()

