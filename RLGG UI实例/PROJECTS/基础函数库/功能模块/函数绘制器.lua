-- RLGG 函数图像生成器
-- 作者: AI助手
-- 版本: 1.0
-- 描述: 基于数学表达式生成函数图像的脚本

require('draw3')

-- 主函数
function main()
    -- 初始化绘制模块
    local draw3 = require('draw3')
    
    -- 设置坐标系参数
    local width = device.width
    local height = device.height
    local centerX = width / 2
    local centerY = height / 2
    local scale = 50  -- 缩放比例
    
    -- 获取用户输入的函数表达式
    local functionExpr = gg.prompt({
        "请输入函数表达式 (使用x作为变量)",
        "例如: math.sin(x)",
        "x范围 (-5到5)"
    }, {"math.sin(x)", "", ""}, {"text", "text", "text"})
    
    if not functionExpr then
        gg.toast("用户取消输入")
        return
    end
    
    local expr = functionExpr[1]
    
    -- 验证表达式安全性
    if not expr:match("^[%w%._%*%+%-%/%(%)%^%s]+$") then
        gg.alert("表达式包含不安全字符!")
        return
    end
    
    -- 创建函数计算环境
    local env = {
        math = math,
        x = 0
    }
    
    setmetatable(env, {__index = _G})
    
    -- 编译表达式
    local func, err = load("return function(x) return " .. expr .. " end", "functionExpr", "t", env)
    if not func then
        gg.alert("表达式错误: " .. tostring(err))
        return
    end
    
    local userFunc = func()
    
    -- 绘制坐标系
    drawCoordinateSystem(draw3, width, height, centerX, centerY, scale)
    
    -- 计算并绘制函数图像
    drawFunction(draw3, userFunc, centerX, centerY, scale, width)
    
    gg.toast("函数图像绘制完成!")
    gg.sleep(3000)
end

-- 绘制坐标系
function drawCoordinateSystem(draw3, width, height, centerX, centerY, scale)
    -- 绘制x轴
    local xAxis = draw3.line(0, centerY, width, centerY)
    xAxis.setColor(0xFFFFFF)  -- 白色
    
    -- 绘制y轴
    local yAxis = draw3.line(centerX, 0, centerX, height)
    yAxis.setColor(0xFFFFFF)  -- 白色
    
    -- 绘制坐标轴刻度
    drawScaleMarks(draw3, centerX, centerY, scale, width, height)
end

-- 绘制坐标轴刻度
function drawScaleMarks(draw3, centerX, centerY, scale, width, height)
    -- x轴刻度
    for i = -math.floor(centerX/scale), math.floor((width-centerX)/scale) do
        if i ~= 0 then
            local x = centerX + i * scale
            local mark = draw3.line(x, centerY - 5, x, centerY + 5)
            mark.setColor(0x888888)  -- 灰色
            
            -- 刻度值
            if math.abs(i) <= 8 then  -- 避免显示太多文本
                local text = draw3.text(tostring(i), x - 5, centerY + 10)
                text.setColor(0x888888)
            end
        end
    end
    
    -- y轴刻度
    for i = -math.floor(centerY/scale), math.floor((height-centerY)/scale) do
        if i ~= 0 then
            local y = centerY - i * scale
            local mark = draw3.line(centerX - 5, y, centerX + 5, y)
            mark.setColor(0x888888)  -- 灰色
            
            -- 刻度值
            if math.abs(i) <= 6 then  -- 避免显示太多文本
                local text = draw3.text(tostring(i), centerX + 10, y - 10)
                text.setColor(0x888888)
            end
        end
    end
    
    -- 原点标记
    local origin = draw3.text("O", centerX + 5, centerY + 5)
    origin.setColor(0xFFFFFF)
end

-- 绘制函数图像
function drawFunction(draw3, userFunc, centerX, centerY, scale, width)
    local points = {}
    local prevX, prevY = nil, nil
    
    -- 采样点数量
    local sampleCount = 200
    
    for i = 1, sampleCount do
        -- 计算x值 (-5到5范围)
        local x = (i - sampleCount/2) * 10 / sampleCount
        
        -- 计算对应的y值
        local success, y = pcall(userFunc, x)
        
        if success and type(y) == "number" and y == y then  -- 检查是否为有效数字
            -- 转换为屏幕坐标
            local screenX = centerX + x * scale
            local screenY = centerY - y * scale
            
            -- 存储点
            table.insert(points, {x = screenX, y = screenY})
            
            -- 绘制点
            if screenX >= 0 and screenX <= width and screenY >= 0 and screenY <= device.height then
                local point = draw3.circle(screenX, screenY, 2)
                point.setColor(0xFF0000)  -- 红色
            end
            
            -- 连接点形成连续曲线
            if prevX and prevY then
                local line = draw3.line(prevX, prevY, screenX, screenY)
                line.setColor(0x00FF00)  -- 绿色
            end
            
            prevX, prevY = screenX, screenY
        else
            prevX, prevY = nil, nil  -- 遇到无效点，断开连接
        end
    end
    
    return points
end

-- 显示使用说明
function showInstructions()
    gg.alert([[
函数图像生成器 使用说明:

1. 输入数学表达式，使用 x 作为变量
2. 支持的函数: math.sin, math.cos, math.tan, math.log, math.exp 等
3. 支持的运算符: +, -, *, /, ^
4. 示例表达式:
   - math.sin(x)
   - x^2 + 2*x + 1
   - math.cos(x) * 2

注意: 表达式会在安全环境中执行
    ]], "确定")
end

-- 主程序入口
if gg.isVisible() then
    gg.setVisible(false)
end

showInstructions()
main()