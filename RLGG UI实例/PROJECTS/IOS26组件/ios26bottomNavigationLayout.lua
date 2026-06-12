local floatingWindowManager = require('floatingWindowManager')
---@type ui
floatingWindowManager:init()

local ui = require('ui')

local layout = {
	'ui.ViewPager'
}

for i = 1, 10, 1 do
	layout[#layout + 1] = {
		
			
			'ui.FileListView',
			layout_height = "100dp",
			layout_width = "80dp",
			padding = '6dp',
			dir = gg.getFile():getdir(),
			onSelectedListener = function(parent, view, position, id, data)
				local mfile = data
				local textView = luajava.getIdView(text_title)
				if textView then
					textView:setText(mfile:getAbsolutePath())
				end
			end,
			-- fileFilter = 'lua'
		
	}
end

local viewPager = luajava.loadlayout(layout)

--local alert = luajava.newAlert()
--alert:setView(viewPager)
--gg.showAlert(alert)
floatingWindow:addView(viewPager)
floatingWindowManager:run()
