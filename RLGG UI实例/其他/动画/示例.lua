package.path = package.path .. ";/storage/emulated/0/.AAAA RLGGui/2025 7月开始/动画/YunzhuTransition.lua"
local mymodule = require("YunzhuTransition")
local function showFloatWindow()
    local revealAnim = CircularReveal.new()
        :setStartView(control)
        :setEndView(floatwindow)
        :setRadius(0, 1000)
        :setDuration(500)
        :setStartCallback(function()
            xfcpic:setVisibility(gg.VIEW_GONE)
        end)
        :start()
end

-- 切换回 xfcpic（圆形收缩）
local function hideFloatWindow()
    local hideAnim = CircularReveal.new()
        :setStartView(floatwindow)
        :setEndView(control)
        :setRadius(1000, 0)
        :setDuration(500)
        :setStartCallback(function()
            floatwindow:setVisibility(gg.VIEW_GONE)
        end)
        :start()
end
