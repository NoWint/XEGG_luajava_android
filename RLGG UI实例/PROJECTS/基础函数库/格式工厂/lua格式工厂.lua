-- GameGuardian Lua 脚本格式化工具
-- 版本: 1.0
-- 功能: 格式化 Lua 脚本，提高可读性

local function formatLuaScript(script)
    if not script or script == "" then
        return ""
    end
    
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
    local outputPath = filePath .. ".YunzhuFormatted.lua"
    
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
end

-- 启动主函数
main()