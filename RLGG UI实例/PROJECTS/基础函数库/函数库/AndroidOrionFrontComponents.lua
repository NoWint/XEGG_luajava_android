-- GameGuardian 屏幕绘制UI函数库
-- 版本: 1.0
-- 作者: AI助手
-- 描述: 提供屏幕绘制UI功能，支持按钮、文本、进度条等

local ScreenUI = {}
ScreenUI.__index = ScreenUI

-- 颜色常量
ScreenUI.COLORS = {
    WHITE = 0xFFFFFFFF,
    BLACK = 0xFF000000,
    RED = 0xFFFF0000,
    GREEN = 0xFF00FF00,
    BLUE = 0xFF0000FF,
    YELLOW = 0xFFFFFF00,
    CYAN = 0xFF00FFFF,
    MAGENTA = 0xFFFF00FF,
    GRAY = 0xFF808080,
    LIGHT_GRAY = 0xFFC0C0C0,
    DARK_GRAY = 0xFF404040,
    TRANSPARENT = 0x00000000
}

-- 对齐方式
ScreenUI.ALIGN = {
    LEFT = 1,
    CENTER = 2,
    RIGHT = 3,
    TOP = 1,
    MIDDLE = 2,
    BOTTOM = 3
}

-- 初始化
function ScreenUI:new()
    local instance = {
        elements = {},
        activeElement = nil,
        screenWidth = 1080, -- 默认值，实际需要获取
        screenHeight = 1920,
        touchEnabled = true,
        visible = true,
        zIndex = 0
    }
    setmetatable(instance, ScreenUI)
    return instance
end

-- 获取屏幕尺寸（需要实际实现）
function ScreenUI:getScreenSize()
    -- 这里需要根据具体设备获取屏幕尺寸
    -- 伪代码，实际需要调用相关API
    return 1080, 1920
end

-- 基础绘制函数
function ScreenUI:drawRect(x, y, width, height, color, cornerRadius)
    cornerRadius = cornerRadius or 0
    gg.drawRectangle(x, y, x + width, y + height, color, 0, cornerRadius)
end

function ScreenUI:drawCircle(x, y, radius, color)
    gg.drawCircle(x, y, radius, color, 0, 360)
end

function ScreenUI:drawText(text, x, y, color, size, alignX, alignY)
    size = size or 20
    alignX = alignX or ScreenUI.ALIGN.LEFT
    alignY = alignY or ScreenUI.ALIGN.TOP
    
    -- 处理文本对齐
    local textWidth = #text * size * 0.6 -- 估算文本宽度
    local textHeight = size
    
    if alignX == ScreenUI.ALIGN.CENTER then
        x = x - textWidth / 2
    elseif alignX == ScreenUI.ALIGN.RIGHT then
        x = x - textWidth
    end
    
    if alignY == ScreenUI.ALIGN.MIDDLE then
        y = y - textHeight / 2
    elseif alignY == ScreenUI.ALIGN.BOTTOM then
        y = y - textHeight
    end
    
    gg.drawText(text, x, y, color, size, 0, false)
end

function ScreenUI:drawLine(x1, y1, x2, y2, color, thickness)
    thickness = thickness or 2
    gg.drawLine(x1, y1, x2, y2, color, thickness)
end

-- UI元素基类
function ScreenUI:createElement(type, id, x, y, width, height)
    local element = {
        id = id or #self.elements + 1,
        type = type,
        x = x,
        y = y,
        width = width,
        height = height,
        visible = true,
        enabled = true,
        zIndex = 0,
        onClick = nil,
        onTouch = nil,
        onDrag = nil,
        data = {}
    }
    table.insert(self.elements, element)
    return element
end

-- 按钮元素
function ScreenUI:createButton(id, x, y, width, height, text, onClick)
    local button = self:createElement("button", id, x, y, width, height)
    button.text = text or "Button"
    button.color = ScreenUI.COLORS.BLUE
    button.textColor = ScreenUI.COLORS.WHITE
    button.cornerRadius = 8
    button.onClick = onClick
    button.pressed = false
    
    button.draw = function(self)
        if not self.visible then return end
        
        local btnColor = self.pressed and self:darkenColor(self.color, 0.3) or self.color
        ScreenUI:drawRect(self.x, self.y, self.width, self.height, btnColor, self.cornerRadius)
        ScreenUI:drawText(
            self.text, 
            self.x + self.width / 2, 
            self.y + self.height / 2, 
            self.textColor, 
            18, 
            ScreenUI.ALIGN.CENTER, 
            ScreenUI.ALIGN.MIDDLE
        )
    end
    
    return button
end

-- 标签元素
function ScreenUI:createLabel(id, x, y, text, color, size, alignX, alignY)
    local label = self:createElement("label", id, x, y, 0, 0)
    label.text = text or ""
    label.color = color or ScreenUI.COLORS.WHITE
    label.size = size or 16
    label.alignX = alignX or ScreenUI.ALIGN.LEFT
    label.alignY = alignY or ScreenUI.ALIGN.TOP
    
    label.draw = function(self)
        if not self.visible then return end
        ScreenUI:drawText(
            self.text, 
            self.x, 
            self.y, 
            self.color, 
            self.size, 
            self.alignX, 
            self.alignY
        )
    end
    
    return label
end

-- 进度条元素
function ScreenUI:createProgressBar(id, x, y, width, height, min, max, value)
    local progressBar = self:createElement("progressbar", id, x, y, width, height)
    progressBar.min = min or 0
    progressBar.max = max or 100
    progressBar.value = value or 0
    progressBar.bgColor = ScreenUI.COLORS.DARK_GRAY
    progressBar.fgColor = ScreenUI.COLORS.GREEN
    progressBar.borderColor = ScreenUI.COLORS.LIGHT_GRAY
    progressBar.showText = true
    progressBar.cornerRadius = 4
    
    progressBar.draw = function(self)
        if not self.visible then return end
        
        -- 绘制背景
        ScreenUI:drawRect(self.x, self.y, self.width, self.height, self.borderColor, self.cornerRadius)
        ScreenUI:drawRect(self.x + 2, self.y + 2, self.width - 4, self.height - 4, self.bgColor, self.cornerRadius - 2)
        
        -- 绘制进度
        local progressWidth = ((self.value - self.min) / (self.max - self.min)) * (self.width - 4)
        if progressWidth > 0 then
            ScreenUI:drawRect(self.x + 2, self.y + 2, progressWidth, self.height - 4, self.fgColor, self.cornerRadius - 2)
        end
        
        -- 绘制文本
        if self.showText then
            local percent = math.floor(((self.value - self.min) / (self.max - self.min)) * 100)
            ScreenUI:drawText(
                string.format("%d%%", percent),
                self.x + self.width / 2,
                self.y + self.height / 2,
                ScreenUI.COLORS.WHITE,
                14,
                ScreenUI.ALIGN.CENTER,
                ScreenUI.ALIGN.MIDDLE
            )
        end
    end
    
    progressBar.setValue = function(self, newValue)
        self.value = math.max(self.min, math.min(self.max, newValue))
    end
    
    return progressBar
end

-- 滑动条元素
function ScreenUI:createSlider(id, x, y, width, height, min, max, value, onChange)
    local slider = self:createElement("slider", id, x, y, width, height)
    slider.min = min or 0
    slider.max = max or 100
    slider.value = value or 50
    slider.bgColor = ScreenUI.COLORS.DARK_GRAY
    slider.fgColor = ScreenUI.COLORS.BLUE
    slider.handleColor = ScreenUI.COLORS.WHITE
    slider.onChange = onChange
    slider.dragging = false
    
    slider.draw = function(self)
        if not self.visible then return end
        
        -- 绘制轨道
        local trackHeight = math.min(8, self.height)
        local trackY = self.y + (self.height - trackHeight) / 2
        
        ScreenUI:drawRect(self.x, trackY, self.width, trackHeight, self.bgColor, trackHeight / 2)
        
        -- 绘制进度
        local progressWidth = ((self.value - self.min) / (self.max - self.min)) * self.width
        if progressWidth > 0 then
            ScreenUI:drawRect(self.x, trackY, progressWidth, trackHeight, self.fgColor, trackHeight / 2)
        end
        
        -- 绘制滑块
        local handleX = self.x + progressWidth
        local handleSize = math.min(24, self.height)
        ScreenUI:drawCircle(handleX, self.y + self.height / 2, handleSize / 2, self.handleColor)
    end
    
    slider.setValue = function(self, newValue)
        self.value = math.max(self.min, math.min(self.max, newValue))
        if self.onChange then
            self.onChange(self.value)
        end
    end
    
    return slider
end

-- 面板/容器元素
function ScreenUI:createPanel(id, x, y, width, height)
    local panel = self:createElement("panel", id, x, y, width, height)
    panel.backgroundColor = ScreenUI.COLORS.TRANSPARENT
    panel.borderColor = ScreenUI.COLORS.LIGHT_GRAY
    panel.borderWidth = 1
    panel.cornerRadius = 8
    panel.children = {}
    
    panel.draw = function(self)
        if not self.visible then return end
        
        -- 绘制背景
        if self.backgroundColor ~= ScreenUI.COLORS.TRANSPARENT then
            ScreenUI:drawRect(self.x, self.y, self.width, self.height, self.backgroundColor, self.cornerRadius)
        end
        
        -- 绘制边框
        if self.borderWidth > 0 then
            ScreenUI:drawRect(
                self.x - self.borderWidth, 
                self.y - self.borderWidth, 
                self.width + self.borderWidth * 2, 
                self.height + self.borderWidth * 2, 
                self.borderColor, 
                self.cornerRadius + self.borderWidth
            )
        end
        
        -- 绘制子元素
        for _, child in ipairs(self.children) do
            if child.draw then
                child:draw()
            end
        end
    end
    
    panel.addChild = function(self, child)
        table.insert(self.children, child)
        -- 调整子元素坐标为相对坐标
        child.originalX = child.x
        child.originalY = child.y
        child.x = self.x + child.x
        child.y = self.y + child.y
    end
    
    panel.removeChild = function(self, childId)
        for i, child in ipairs(self.children) do
            if child.id == childId then
                table.remove(self.children, i)
                break
            end
        end
    end
    
    return panel
end

-- 颜色工具函数
function ScreenUI:darkenColor(color, factor)
    local a = bit32.rshift(color, 24)
    local r = bit32.band(bit32.rshift(color, 16), 0xFF)
    local g = bit32.band(bit32.rshift(color, 8), 0xFF)
    local b = bit32.band(color, 0xFF)
    
    r = math.floor(r * (1 - factor))
    g = math.floor(g * (1 - factor))
    b = math.floor(b * (1 - factor))
    
    return bit32.lshift(a, 24) + bit32.lshift(r, 16) + bit32.lshift(g, 8) + b
end

function ScreenUI:lightenColor(color, factor)
    local a = bit32.rshift(color, 24)
    local r = bit32.band(bit32.rshift(color, 16), 0xFF)
    local g = bit32.band(bit32.rshift(color, 8), 0xFF)
    local b = bit32.band(color, 0xFF)
    
    r = math.floor(r + (255 - r) * factor)
    g = math.floor(g + (255 - g) * factor)
    b = math.floor(b + (255 - b) * factor)
    
    return bit32.lshift(a, 24) + bit32.lshift(r, 16) + bit32.lshift(g, 8) + b
end

-- 触摸处理
function ScreenUI:handleTouch(x, y, action)
    if not self.touchEnabled or not self.visible then return false end
    
    -- 按zIndex从高到低处理
    local sortedElements = {}
    for _, element in ipairs(self.elements) do
        if element.visible and element.enabled then
            table.insert(sortedElements, element)
        end
    end
    
    table.sort(sortedElements, function(a, b) return a.zIndex > b.zIndex end)
    
    for _, element in ipairs(sortedElements) do
        if self:isPointInElement(x, y, element) then
            if element.onClick and action == "down" then
                element.onClick(element)
                if element.type == "button" then
                    element.pressed = true
                end
                self.activeElement = element
                return true
            elseif element.onDrag and action == "move" and self.activeElement == element then
                element.onDrag(element, x, y)
                return true
            elseif action == "up" and self.activeElement == element then
                if element.type == "button" then
                    element.pressed = false
                end
                self.activeElement = nil
                return true
            end
        end
    end
    
    return false
end

function ScreenUI:isPointInElement(x, y, element)
    return x >= element.x and x <= element.x + element.width and
           y >= element.y and y <= element.y + element.height
end

-- 渲染所有元素
function ScreenUI:render()
    if not self.visible then return end
    
    -- 按zIndex排序
    local sortedElements = {}
    for _, element in ipairs(self.elements) do
        if element.visible then
            table.insert(sortedElements, element)
        end
    end
    
    table.sort(sortedElements, function(a, b) return a.zIndex < b.zIndex end)
    
    -- 绘制所有元素
    for _, element in ipairs(sortedElements) do
        if element.draw then
            element:draw()
        end
    end
end

-- 清除所有元素
function ScreenUI:clear()
    self.elements = {}
    self.activeElement = nil
end

-- 显示/隐藏UI
function ScreenUI:show()
    self.visible = true
end

function ScreenUI:hide()
    self.visible = false
end

-- 工具函数：创建对话框
function ScreenUI:createDialog(title, message, buttons)
    local dialog = self:createPanel("dialog", 200, 500, 600, 300)
    dialog.backgroundColor = 0xCC222222
    dialog.zIndex = 1000
    
    -- 标题
    local titleLabel = self:createLabel("dialog_title", 300, 520, title, ScreenUI.COLORS.WHITE, 24, ScreenUI.ALIGN.CENTER)
    dialog:addChild(titleLabel)
    
    -- 消息
    local messageLabel = self:createLabel("dialog_msg", 300, 580, message, ScreenUI.COLORS.WHITE, 18, ScreenUI.ALIGN.CENTER)
    dialog:addChild(messageLabel)
    
    -- 按钮
    local buttonWidth = 120
    local buttonSpacing = 20
    local totalWidth = (#buttons * buttonWidth) + ((#buttons - 1) * buttonSpacing)
    local startX = (800 - totalWidth) / 2
    
    for i, btnConfig in ipairs(buttons) do
        local btnX = startX + (i - 1) * (buttonWidth + buttonSpacing)
        local button = self:createButton("dialog_btn_" .. i, btnX, 700, buttonWidth, 60, btnConfig.text, btnConfig.callback)
        dialog:addChild(button)
    end
    
    return dialog
end

return ScreenUI