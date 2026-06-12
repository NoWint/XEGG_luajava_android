-- GameGuardian Lua 脚本格式化工具（增强版）
-- 版本: 2.0
-- 功能: 格式化 Lua 脚本，识别相关代码并分组，提高可读性

local function organizeCodeBlocks(script)
    if not script or script == "" then
        return script
    end
    
    -- 代码块类型识别
    local blocks = {}
    local currentBlock = {}
    local currentType = "other"
    
    -- 定义代码块类型和模式
    local blockPatterns = {
        {pattern = "^gg%.clearResults", type = "gg_clear"},
        {pattern = "^gg%.setRanges", type = "gg_setup"},
        {pattern = "^gg%.search", type = "gg_search"},
        {pattern = "^gg%.getResults", type = "gg_results"},
        {pattern = "^gg%.addListItems", type = "gg_actions"},
        {pattern = "^gg%.toast", type = "gg_ui"},
        {pattern = "^gg%.alert", type = "gg_ui"},
        {pattern = "^(local%s+)?%w+%s*=%s*gg%.getResults", type = "gg_results"},
        {pattern = "^for.*in.*ipairs", type = "loop"},
        {pattern = "^while", type = "loop"},
        {pattern = "^if", type = "condition"},
        {pattern = "^function", type = "function_def"},
        {pattern = "^local%s+function", type = "function_def"},
    }
    
    -- 辅助函数：检测代码行类型
    local function detectLineType(line)
        local trimmed = line:match("^%s*(.-)%s*$")
        if trimmed == "" then
            return "empty"
        end
        
        for _, patternInfo in ipairs(blockPatterns) do
            if trimmed:match(patternInfo.pattern) then
                return patternInfo.type
            end
        end
        
        -- 检查是否是赋值语句
        if trimmed:match("^(local%s+)?%w+%s*=") then
            return "assignment"
        end
        
        -- 检查是否是函数调用
        if trimmed:match("%w+%s*%(%s*[^)]") then
            return "function_call"
        end
        
        return "other"
    end
    
    -- 辅助函数：是否为同一类型的代码块
    local function isSameBlockType(currentType, newType)
        local relatedTypes = {
            gg_setup = {"gg_setup", "gg_search", "gg_results", "gg_actions", "gg_ui"},
            gg_search = {"gg_setup", "gg_search", "gg_results", "gg_actions", "gg_ui"},
            gg_results = {"gg_setup", "gg_search", "gg_results", "gg_actions", "gg_ui"},
            gg_actions = {"gg_setup", "gg_search", "gg_results", "gg_actions", "gg_ui"},
            gg_ui = {"gg_setup", "gg_search", "gg_results", "gg_actions", "gg_ui"},
            assignment = {"assignment", "function_call"},
            function_call = {"assignment", "function_call"},
        }
        
        if currentType == newType then
            return true
        end
        
        if relatedTypes[currentType] then
            for _, relatedType in ipairs(relatedTypes[currentType]) do
                if relatedType == newType then
                    return true
                end
            end
        end
        
        return false
    end
    
    -- 分割代码行
    local lines = {}
    for line in script:gmatch("([^\r\n]*)\r?\n?") do
        table.insert(lines, line)
    end
    
    -- 组织代码块
    for _, line in ipairs(lines) do
        local lineType = detectLineType(line)
        
        if #currentBlock == 0 then
            -- 第一个代码行
            table.insert(currentBlock, line)
            currentType = lineType
        elseif isSameBlockType(currentType, lineType) then
            -- 相同或相关类型的代码行
            table.insert(currentBlock, line)
        else
            -- 不同类型，开始新块
            table.insert(blocks, {
                type = currentType,
                lines = currentBlock
            })
            currentBlock = {line}
            currentType = lineType
        end
    end
    
    -- 添加最后一个块
    if #currentBlock > 0 then
        table.insert(blocks, {
            type = currentType,
            lines = currentBlock
        })
    end
    
    -- 重新组合代码，在块之间添加空行
    local organizedLines = {}
    local lastBlockType = nil
    
    for i, block in ipairs(blocks) do
        -- 在不同类型的块之间添加空行
        if lastBlockType and lastBlockType ~= block.type and 
           not (lastBlockType:find("gg_") and block.type:find("gg_")) then
            table.insert(organizedLines, "")
        end
        
        -- 添加块注释（用于调试，可选）
        -- table.insert(organizedLines, "-- [Block: " .. block.type .. "]")
        
        -- 添加块内容
        for _, line in ipairs(block.lines) do
            table.insert(organizedLines, line)
        end
        
        lastBlockType = block.type
    end
    
    return table.concat(organizedLines, "\n")
end

local function formatLuaScript(script)
    if not script or script == "" then
        return ""
    end
    
    -- 首先组织代码块
    script = organizeCodeBlocks(script)
    
    -- 初始化变量
    local formatted = {}
    local indentLevel = 0
    local inString = false
    local stringChar = nil
    local inComment = false
    local inBlockComment = false
    local escapeNext = false
    
    -- 辅助函数：添加缩进
    local function addIndent()
        return string.rep("    ", indentLevel)
    end
    
    -- 处理每一行
    for line in script:gmatch("([^\r\n]*)\r?\n?") do
        local trimmed = line:match("^%s*(.-)%s*$")
        if trimmed == "" and not inBlockComment then
            table.insert(formatted, "")
        else
            local processed = ""
            local i = 1
            local len = #trimmed
            
            while i <= len do
                local char = trimmed:sub(i, i)
                
                -- 处理转义字符
                if escapeNext then
                    processed = processed .. char
                    escapeNext = false
                    i = i + 1
                elseif char == "\\" and inString then
                    processed = processed .. char
                    escapeNext = true
                    i = i + 1
                
                -- 处理字符串
                elseif (char == '"' or char == "'") and not inComment and not inBlockComment then
                    if not inString then
                        inString = true
                        stringChar = char
                        processed = processed .. char
                    elseif char == stringChar then
                        inString = false
                        stringChar = nil
                        processed = processed .. char
                    else
                        processed = processed .. char
                    end
                    i = i + 1
                
                -- 处理注释
                elseif not inString then
                    if not inComment and not inBlockComment and char == "-" and trimmed:sub(i, i+1) == "--" then
                        if trimmed:sub(i, i+2) == "--[[" or trimmed:sub(i, i+2) == "--[=" then
                            inBlockComment = true
                            processed = processed .. "--[["
                            i = i + 3
                        else
                            inComment = true
                            processed = processed .. "--"
                            i = i + 2
                        end
                    elseif inBlockComment and char == "]" and trimmed:sub(i, i+1) == "]]" then
                        inBlockComment = false
                        processed = processed .. "]]"
                        i = i + 2
                    else
                        if not inComment and not inBlockComment then
                            -- 处理关键字和缩进
                            if char == "(" or char == "{" or char == "[" then
                                processed = processed .. char
                                indentLevel = indentLevel + 1
                            elseif char == ")" or char == "}" or char == "]" then
                                indentLevel = math.max(0, indentLevel - 1)
                                processed = processed .. char
                            elseif char == ";" then
                                processed = processed .. char .. "\n" .. addIndent()
                            elseif char == "," then
                                processed = processed .. char .. " "
                            else
                                processed = processed .. char
                            end
                        else
                            processed = processed .. char
                        end
                        i = i + 1
                    end
                else
                    processed = processed .. char
                    i = i + 1
                end
            end
            
            -- 添加处理后的行
            if not inBlockComment then
                if inComment then
                    table.insert(formatted, addIndent() .. processed)
                    inComment = false
                else
                    table.insert(formatted, addIndent() .. processed)
                end
            else
                table.insert(formatted, addIndent() .. processed)
            end
        end
    end
    
    return table.concat(formatted, "\n")
end

-- 主函数
local function main()
    -- 提示用户输入文件路径
    gg.toast("请输入要格式化的Lua脚本路径")
    local inputPath = gg.prompt({"Lua脚本路径:"}, {""}, {"file"})
    
    if not inputPath or not inputPath[1] or inputPath[1] == "" then
        gg.alert("未提供文件路径，程序退出")
        return
    end
    
    local filePath = inputPath[1]
    
    -- 读取文件
    local file, err = io.open(filePath, "r")
    if not file then
        gg.alert("无法打开文件: " .. tostring(err))
        return
    end
    
    local content = file:read("*a")
    file:close()
    
    -- 格式化内容
    gg.toast("正在格式化脚本...")
    local formattedContent = formatLuaScript(content)
    
    -- 生成输出路径
    local outputPath = filePath .. ".formatted.lua"
    
    -- 写入格式化后的内容
    local outputFile, err = io.open(outputPath, "w")
    if not outputFile then
        gg.alert("无法创建输出文件: " .. tostring(err))
        return
    end
    
    outputFile:write(formattedContent)
    outputFile:close()
    
    -- 显示完成消息
    gg.alert("脚本格式化完成!\n\n输出文件: " .. outputPath)
    
    -- 显示格式化前后的对比（可选）
    local originalLines = #content:gmatch("([^\r\n]*)\r?\n?")()
    local formattedLines = #formattedContent:gmatch("([^\r\n]*)\r?\n?")()
    
    gg.toast(string.format("格式化完成: %d → %d 行", originalLines, formattedLines))
end

-- 启动主函数
main()