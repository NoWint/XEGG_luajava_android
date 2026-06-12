 -- GameGuardian 文件内容检测脚本
 -- 功能：选择文件，检测是否包含指定字符串，显示匹配结果

 -- 定义要检测的字符串列表
local searchList = {
"修改器",
"外挂",
"作弊",
"GameGuardian",
"内存修改",
"数值修改",
"金币",
"钻石",
"无限",
"破解"
}

 -- 主函数
function main()
gg.alert("文件内容检测工具\n\n点击确定开始选择文件", "开始")

 -- 弹出文件选择对话框
local filePath = gg.prompt({"请输入文件完整路径:"}, {"/sdcard/"}, {"text"})

if filePath == nil or filePath[1] == "" then
    gg.alert("未选择文件，脚本退出")
    return
end

-- 读取文件内容
local fileContent = readFile(filePath[1])
if fileContent == nil then
    gg.alert("文件读取失败！\n请检查文件路径是否正确")
    return
end

-- 检测文件内容
local foundItems = checkFileContent(fileContent, searchList)

-- 显示结果
showResults(foundItems, filePath[1])
 
end

 -- 读取文件内容函数
function readFile(path)
local file = io.open(path, "r")
if not file then
return nil
end

 local content = file:read("*all")
file:close()
return content
 
end

 -- 检测文件内容函数
function checkFileContent(content, searchList)
local foundItems = {}

 for i, searchTerm in ipairs(searchList) do
    if string.find(content, searchTerm) then
        table.insert(foundItems, {
            index = i,
            term = searchTerm
        })
    end
end

return foundItems
 
end

 -- 显示结果函数
function showResults(foundItems, filePath)
local resultMessage = "文件检测结果\n"
resultMessage = resultMessage .. "文件路径: " .. filePath .. "\n\n"

 if #foundItems == 0 then
    resultMessage = resultMessage .. "未发现列表中的任何内容"
else
    resultMessage = resultMessage .. "发现以下内容:\n\n"
    
    -- 按列表顺序排序
    table.sort(foundItems, function(a, b) return a.index < b.index end)
    
    for _, item in ipairs(foundItems) do
        resultMessage = resultMessage .. "第" .. item.index .. "项: " .. item.term .. "\n"
    end
    
    resultMessage = resultMessage .. "\n共发现 " .. #foundItems .. " 项匹配内容"
end

-- 显示详细结果对话框
local choice = gg.choice({
    "查看详细信息",
    "重新选择文件",
    "退出脚本"
}, nil, resultMessage)

if choice == 1 then
    showDetailedInfo(foundItems)
elseif choice == 2 then
    main() -- 重新开始
else
    gg.alert("脚本结束")
end
 
end

 -- 显示详细信息函数
function showDetailedInfo(foundItems)
if #foundItems == 0 then
gg.alert("没有找到匹配的内容")
return
end

 local detailMessage = "匹配内容详细信息:\n\n"

for _, item in ipairs(foundItems) do
    detailMessage = detailMessage .. "列表位置: " .. item.index .. "\n"
    detailMessage = detailMessage .. "匹配内容: " .. item.term .. "\n"
    detailMessage = detailMessage .. "-------------------\n"
end

gg.alert(detailMessage, "详细信息")
 
end

 -- 错误处理包装
function safeExecute()
local success, error = pcall(main)
if not success then
gg.alert("脚本执行出错:\n" .. tostring(error))
end
end

 -- 脚本入口点
gg.alert("GameGuardian 文件内容检测脚本\n\n作者: Assistant\n版本: 1.0", "欢迎")
--safeExecute()