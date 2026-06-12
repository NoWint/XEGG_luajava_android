-- UI界面生成函数库
local UIBuilder = {}

function UIBuilder.createMainMenu(options)
    local menuItems = {}
    
    for i, option in ipairs(options) do
        table.insert(menuItems, option.title)
    end
    
    while true do
        local choice = gg.choice(menuItems, nil, "GameGuardian 工具菜单")
        
        if choice == nil then
            break
        end
        
        local selected = options[choice]
        if selected and selected.callback then
            selected.callback()
        end
    end
end

function UIBuilder.inputDialog(title, fields)
    local defaults = {}
    for _, field in ipairs(fields) do
        table.insert(defaults, field.default or "")
    end
    
    local result = gg.prompt(fields, defaults, title)
    return result
end

function UIBuilder.resultBrowser(results, title)
    title = title or "搜索结果"
    local items = {}
    
    for i, result in ipairs(results) do
        if i <= 50 then -- 限制显示数量
            local text = string.format("0x%X: %s", result.address, result.value)
            table.insert(items, text)
        else
            table.insert(items, "... 更多结果未显示")
            break
        end
    end
    
    if #items == 0 then
        table.insert(items, "没有找到结果")
    end
    
    local choice = gg.choice(items, nil, title)
    if choice and choice <= #results then
        return results[choice]
    end
    
    return nil
end

function UIBuilder.progressBar(message, maxValue)
    local progress = 0
    
    return {
        update = function(value)
            progress = value
            gg.toast(string.format("%s: %d/%d", message, progress, maxValue))
        end,
        
        complete = function()
            gg.toast(message .. " 完成!")
        end
    }
end

return UIBuilder