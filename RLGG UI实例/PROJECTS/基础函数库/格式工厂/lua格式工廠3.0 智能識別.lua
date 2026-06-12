-- GameGuardian Lua 脚本格式化工具（增强版）
-- 版本: 3.0
-- 功能: 格式化 Lua 脚本，识别相关代码并分组，检测 RLGG 常见错误

local function detectRlggErrors(script)
    local errors = {}
    local errorPatterns = {
        -- 空指针异常
        {pattern = ":%s*[%w_]+%s*=%s*nil", type = "空指针异常", desc = "变量被赋值为nil，可能导致后续访问时出错"},
        {pattern = "%.[%w_]+%s*%(%s*%)%s*$", type = "空指针异常", desc = "可能调用了一个nil值的方法"},
        
        -- 布局加载错误
        {pattern = "MaterialCardView", type = "布局加载错误", desc = "RLGG不支持MaterialCardView，请使用标准组件"},
        {pattern = "android%.fix%.", type = "布局加载错误", desc = "使用了RLGG不支持的android.fix包中的类"},
        
        -- 类绑定错误
        {pattern = "getCurrentActivity%(%)", type = "类绑定错误", desc = "getCurrentActivity()函数在RLGG中不存在"},
        {pattern = "luajava%.bindClass%([^)]+[Mm]aterial[^)]+%)", type = "类绑定错误", desc = "绑定了RLGG可能不支持的Material类"},
        
        -- 权限错误
        {pattern = "newFloating", type = "权限错误", desc = "悬浮窗创建可能需要额外权限"},
        
        -- 语法错误
        {pattern = "function%s+%w+%s*%([^)]*$", type = "语法错误", desc = "函数定义不完整，缺少闭合括号"},
       -- {pattern = "[^\\]\"[^\"]*$", type = "语法错误", desc = "字符串引号未正确闭合"},
       -- {pattern = "[^\\]'[^']*$", type = "语法错误", desc = "字符串引号未正确闭合"},
        
        -- 内存错误
        {pattern = "while%s+true%s+do", type = "内存错误", desc = "无限循环可能导致内存溢出或脚本超时"},
        {pattern = "while%s+[^%s]+%s+do%s*$", type = "内存错误", desc = "循环条件可能永远不会为false"},
        
        -- 网络错误
        {pattern = "http%.get%(", type = "网络错误", desc = "网络请求可能需要错误处理机制"},
        {pattern = "http%.post%(", type = "网络错误", desc = "网络请求可能需要错误处理机制"},
        
        -- 文件错误
        {pattern = "io%.open%(", type = "文件错误", desc = "文件操作需要错误处理和权限检查"},
        {pattern = "file%.write%(", type = "文件错误", desc = "文件操作需要错误处理和权限检查"},
    }
    
    local lines = {}
    for line in script:gmatch("([^\r\n]*)\r?\n?") do
        table.insert(lines, line)
    end
    
    for lineNum, line in ipairs(lines) do
        for _, patternInfo in ipairs(errorPatterns) do
            if line:match(patternInfo.pattern) then
                table.insert(errors, {
                    line = lineNum,
                    type = patternInfo.type,
                    desc = patternInfo.desc,
                    code = line:gsub("^%s*(.-)%s*$", "%1")
                })
            end
        end
    end
    
    return errors
end

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
        {pattern = "^require", type = "import"},
        {pattern = "^import", type = "import"},
        {pattern = "^local%s+%w+%s*=%s*require", type = "import"},
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
            import = {"import", "other"},
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
    
    -- 重新组合代码，在块之间添加空行和注释
    local organizedLines = {}
    local lastBlockType = nil
    
    for i, block in ipairs(blocks) do
        -- 在不同类型的块之间添加分隔注释
        if lastBlockType and lastBlockType ~= block.type then
            table.insert(organizedLines, "")
            table.insert(organizedLines, "-- " .. string.rep("-", 60))
            table.insert(organizedLines, "-- " .. block.type:upper() .. " BLOCK")
            table.insert(organizedLines, "-- " .. string.rep("-", 60))
            table.insert(organizedLines, "")
        elseif i == 1 then
            table.insert(organizedLines, "-- " .. string.rep("-", 60))
            table.insert(organizedLines, "-- " .. block.type:upper() .. " BLOCK")
            table.insert(organizedLines, "-- " .. string.rep("-", 60))
            table.insert(organizedLines, "")
        end
        
        -- 添加块内容
        for _, line in ipairs(block.lines) do
            table.insert(organizedLines, line)
        end
        
        lastBlockType = block.type
    end
    
    -- 添加结束分隔符
    table.insert(organizedLines, "")
    table.insert(organizedLines, "-- " .. string.rep("-", 60))
    table.insert(organizedLines, "-- END OF SCRIPT")
    table.insert(organizedLines, "-- " .. string.rep("-", 60))
    
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
    
    -- 检测错误
    gg.toast("正在检测脚本错误...")
    local errors = detectRlggErrors(content)
    
    -- 格式化内容
    gg.toast("正在格式化脚本...")
    local formattedContent = formatLuaScript(content)
    
    -- 生成输出路径
    local basePath = filePath:match("(.+)%..+$") or filePath
    local outputPath = basePath .. ".formatted.lua"
    local errorReportPath = basePath .. ".error_report.txt"
    
    -- 写入格式化后的内容
    local outputFile, err = io.open(outputPath, "w")
    if not outputFile then
        gg.alert("无法创建输出文件: " .. tostring(err))
        return
    end
    
    outputFile:write(formattedContent)
    outputFile:close()
    
    -- 写入错误报告
    if #errors > 0 then
        local errorFile, err = io.open(errorReportPath, "w")
        if errorFile then
            errorFile:write("RLGG 脚本错误检测报告\n")
            errorFile:write("生成时间: " .. os.date("%Y-%m-%d %H:%M:%S") .. "\n")
            errorFile:write("脚本文件: " .. filePath .. "\n")
            errorFile:write(string.rep("=", 80) .. "\n\n")
            
            errorFile:write("发现 " .. #errors .. " 个潜在问题:\n\n")
            
            for i, errorInfo in ipairs(errors) do
                errorFile:write(string.format("%d. 行号: %d\n", i, errorInfo.line))
                errorFile:write("   类型: " .. errorInfo.type .. "\n")
                errorFile:write("   描述: " .. errorInfo.desc .. "\n")
                errorFile:write("   代码: " .. errorInfo.code .. "\n")
                errorFile:write(string.rep("-", 80) .. "\n")
            end
            
            errorFile:write("\n错误类型说明:\n")
            errorFile:write("1. 空指针异常 - 变量为nil时访问其属性或方法\n")
            errorFile:write("2. 布局加载错误 - 使用了RLGG不支持的UI组件\n")
            errorFile:write("3. 类绑定错误 - 绑定了RLGG不支持的Java类\n")
            errorFile:write("4. 权限错误 - 可能需要额外权限的操作\n")
            errorFile:write("5. 语法错误 - Lua语法问题\n")
            errorFile:write("6. 内存错误 - 可能导致内存泄漏或溢出的代码\n")
            errorFile:write("7. 网络错误 - 网络请求相关的问题\n")
            errorFile:write("8. 文件错误 - 文件操作相关的问题\n")
            
            errorFile:close()
        end
    end
    
    -- 显示完成消息
    local message = "脚本格式化完成!\n\n输出文件: " .. outputPath
    
    if #errors > 0 then
        message = message .. "\n\n发现 " .. #errors .. " 个潜在问题，已生成错误报告:\n" .. errorReportPath
        gg.alert(message)
        
        -- 显示错误摘要
        local errorSummary = "检测到以下问题:\n"
        for i, errorInfo in ipairs(errors) do
            if i <= 5 then  -- 只显示前5个错误
                errorSummary = errorSummary .. string.format("%d. 行%d: %s\n", i, errorInfo.line, errorInfo.type)
            end
        end
        
        if #errors > 5 then
            errorSummary = errorSummary .. "... 还有 " .. (#errors - 5) .. " 个问题，详见错误报告\n"
        end
        
        gg.toast(errorSummary)
    else
        message = message .. "\n\n未发现明显错误"
        gg.alert(message)
        gg.toast("脚本格式化完成，未发现错误")
    end
    
    -- 显示格式化前后的对比
    local originalLines = #content:gmatch("([^\r\n]*)\r?\n?")()
    local formattedLines = #formattedContent:gmatch("([^\r\n]*)\r?\n?")()
    
    gg.toast(string.format("格式化完成: %d → %d 行", originalLines, formattedLines))
end

-- 启动主函数
main()