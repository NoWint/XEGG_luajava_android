-- GameGuardian Lua 代码解释器
-- 注意：需要在 GameGuardian 环境中运行

gg.alert("GameGuardian Lua 代码解释器已启动")

-- 初始化变量
local history = {}
local max_history = 10

-- 安全执行环境
local safe_env = {
    print = print,
    tostring = tostring,
    tonumber = tonumber,
    pairs = pairs,
    ipairs = ipairs,
    next = next,
    type = type,
    string = string,
    math = math,
    table = table,
    -- 添加其他安全的全局函数和库
    gg = gg -- 允许访问 GameGuardian 功能
}

setmetatable(safe_env, {
    __index = function(_, k)
        error("尝试访问不允许的全局变量: " .. tostring(k), 2)
    end,
    __newindex = function(_, k, v)
        error("尝试创建新的全局变量: " .. tostring(k), 2)
    end
})

-- 执行 Lua 代码的函数
function execute_code(code)
    if not code or code:len() == 0 then
        return "错误: 代码为空"
    end
    
    -- 添加到历史记录
    table.insert(history, 1, code)
    if #history > max_history then
        table.remove(history, max_history + 1)
    end
    
    -- 创建执行函数
    local func, err = load("return " .. code, "user_code", "t", safe_env)
    if not func then
        -- 如果不是表达式，尝试作为语句执行
        func, err = load(code, "user_code", "t", safe_env)
    end
    
    if not func then
        return "编译错误: " .. tostring(err)
    end
    
    -- 执行代码
    local success, result = pcall(func)
    
    if success then
        if result ~= nil then
            return "执行成功: " .. tostring(result)
        else
            return "执行成功 (无返回值)"
        end
    else
        return "运行时错误: " .. tostring(result)
    end
end

-- 主循环
while true do
    local choices = {
        "执行代码",
        "查看历史记录",
        "清除历史记录",
        "退出"
    }
    
    local choice = gg.choice(choices, nil, "GameGuardian Lua 代码解释器")
    
    if not choice then
        break
    end
    
    if choice == 1 then
        -- 执行代码
        local code = gg.prompt("请输入要执行的 Lua 代码:", nil, "text")
        if code then
            local result = execute_code(code)
            gg.alert(result)
        end
    elseif choice == 2 then
        -- 查看历史记录
        if #history == 0 then
            gg.alert("历史记录为空")
        else
            local history_text = "最近执行的代码:\n\n"
            for i, code in ipairs(history) do
                history_text = history_text .. i .. ": " .. code .. "\n\n"
            end
            gg.alert(history_text)
        end
    elseif choice == 3 then
        -- 清除历史记录
        history = {}
        gg.alert("历史记录已清除")
    elseif choice == 4 then
        -- 退出
        break
    end
end

gg.alert("GameGuardian Lua 代码解释器已退出")