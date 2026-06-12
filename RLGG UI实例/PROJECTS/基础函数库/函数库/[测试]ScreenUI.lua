-- 使用示例
local ScreenUI = require("ScreenUI")

-- 创建UI实例
local ui = ScreenUI:new()

-- 创建按钮
local function onButtonClick(button)
    gg.toast("按钮被点击: " .. button.text)
end

local testButton = ui:createButton("test_btn", 100, 100, 200, 60, "点击我", onButtonClick)

-- 创建标签
local titleLabel = ui:createLabel("title", 500, 100, "游戏修改器", ScreenUI.COLORS.YELLOW, 28, ScreenUI.ALIGN.CENTER)

-- 创建进度条
local progressBar = ui:createProgressBar("progress", 100, 200, 400, 30, 0, 100, 75)

-- 创建滑动条
local function onSliderChange(value)
    progressBar:setValue(value)
end

local slider = ui:createSlider("slider", 100, 300, 400, 50, 0, 100, 75, onSliderChange)

-- 创建面板
local panel = ui:createPanel("control_panel", 50, 400, 700, 300)
panel.backgroundColor = 0xAA333333

-- 在面板中添加元素
local panelButton = ui:createButton("panel_btn", 50, 50, 200, 60, "面板按钮", onButtonClick)
panel:addChild(panelButton)

-- 添加到UI元素列表
table.insert(ui.elements, testButton)
table.insert(ui.elements, titleLabel)
table.insert(ui.elements, progressBar)
table.insert(ui.elements, slider)
table.insert(ui.elements, panel)

-- 主循环
while true do
    -- 清屏
    gg.clearResults()
    
    -- 渲染UI
    ui:render()
    
    -- 处理触摸事件（伪代码，实际需要获取触摸输入）
    -- local touchX, touchY, touchAction = getTouchInput()
    -- ui:handleTouch(touchX, touchY, touchAction)
    
    -- 刷新屏幕
    gg.sleep(100)
end