-- Lua 数学运算、逻辑运算和列表操作函数库
-- by deepseek Promoter Yunzhu

local Yunzhu = {}

-- 数学常量
Yunzhu.PI = math.pi
Yunzhu.E = math.exp(1)
Yunzhu.PHI = (1 + math.sqrt(5)) / 2  -- 黄金比例

-- 基础数学运算函数
function Yunzhu.clamp(value, min, max)
    return value < min and min or (value > max and max or value)
end

function Yunzhu.lerp(a, b, t)
    return a + (b - a) * Yunzhu.clamp(t, 0, 1)
end

function Yunzhu.inverseLerp(a, b, value)
    if a == b then return 0 end
    return Yunzhu.clamp((value - a) / (b - a), 0, 1)
end

function Yunzhu.round(num, decimalPlaces)
    decimalPlaces = decimalPlaces or 0
    local mult = 10^(decimalPlaces)
    return math.floor(num * mult + 0.5) / mult
end

function Yunzhu.isEven(num)
    return num % 2 == 0
end

function Yunzhu.isOdd(num)
    return num % 2 ~= 0
end

function Yunzhu.factorial(n)
    if n < 0 then return nil end
    if n == 0 then return 1 end
    local result = 1
    for i = 1, n do
        result = result * i
    end
    return result
end

function Yunzhu.permutations(n, r)
    if n < r or n < 0 or r < 0 then return nil end
    return Yunzhu.factorial(n) / Yunzhu.factorial(n - r)
end

function Yunzhu.combinations(n, r)
    if n < r or n < 0 or r < 0 then return nil end
    return Yunzhu.factorial(n) / (Yunzhu.factorial(r) * Yunzhu.factorial(n - r))
end

-- 几何函数
function Yunzhu.distance(x1, y1, x2, y2)
    return math.sqrt((x2 - x1)^2 + (y2 - y1)^2)
end

function Yunzhu.manhattanDistance(x1, y1, x2, y2)
    return math.abs(x2 - x1) + math.abs(y2 - y1)
end

function Yunzhu.chebyshevDistance(x1, y1, x2, y2)
    return math.max(math.abs(x2 - x1), math.abs(y2 - y1))
end

-- 角度和弧度转换
function Yunzhu.degreesToRadians(deg)
    return deg * Yunzhu.PI / 180
end

function Yunzhu.radiansToDegrees(rad)
    return rad * 180 / Yunzhu.PI
end

-- 逻辑运算函数
function Yunzhu.andAll(...)
    local args = {...}
    if #args == 0 then return true end
    for _, v in ipairs(args) do
        if not v then return false end
    end
    return true
end

function Yunzhu.orAny(...)
    local args = {...}
    if #args == 0 then return false end
    for _, v in ipairs(args) do
        if v then return true end
    end
    return false
end

function Yunzhu.xor(a, b)
    return (a and not b) or (not a and b)
end

function Yunzhu.nand(a, b)
    return not (a and b)
end

function Yunzhu.nor(a, b)
    return not (a or b)
end

function Yunzhu.xnor(a, b)
    return not Yunzhu.xor(a, b)
end

-- 条件函数
function Yunzhu.ifElse(condition, trueValue, falseValue)
    if condition then
        return trueValue
    else
        return falseValue
    end
end

function Yunzhu.switch(value, cases, default)
    for caseVal, caseResult in pairs(cases) do
        if value == caseVal then
            return caseResult
        end
    end
    return default
end

-- 列表操作函数
function Yunzhu.list(...)
    return {...}
end

function Yunzhu.range(start, stop, step)
    step = step or 1
    local t = {}
    if step > 0 then
        for i = start, stop, step do
            table.insert(t, i)
        end
    else
        for i = start, stop, step do
            table.insert(t, i)
        end
    end
    return t
end

function Yunzhu.map(t, func)
    local result = {}
    for k, v in pairs(t) do
        result[k] = func(v, k)
    end
    return result
end

function Yunzhu.filter(t, func)
    local result = {}
    for k, v in pairs(t) do
        if func(v, k) then
            table.insert(result, v)
        end
    end
    return result
end

function Yunzhu.reduce(t, func, initial)
    local acc = initial
    for i, v in ipairs(t) do
        if i == 1 and initial == nil then
            acc = v
        else
            acc = func(acc, v, i)
        end
    end
    return acc
end

function Yunzhu.forEach(t, func)
    for k, v in pairs(t) do
        func(v, k)
    end
end

function Yunzhu.find(t, value)
    for k, v in pairs(t) do
        if v == value then
            return k
        end
    end
    return nil
end

function Yunzhu.findIndex(t, func)
    for i, v in ipairs(t) do
        if func(v, i) then
            return i
        end
    end
    return nil
end

function Yunzhu.contains(t, value)
    return Yunzhu.find(t, value) ~= nil
end

function Yunzhu.indexOf(t, value)
    for i, v in ipairs(t) do
        if v == value then
            return i
        end
    end
    return -1
end

function Yunzhu.lastIndexOf(t, value)
    for i = #t, 1, -1 do
        if t[i] == value then
            return i
        end
    end
    return -1
end

function Yunzhu.slice(t, startIndex, endIndex)
    startIndex = startIndex or 1
    endIndex = endIndex or #t
    local result = {}
    for i = startIndex, endIndex do
        table.insert(result, t[i])
    end
    return result
end

function Yunzhu.concat(...)
    local result = {}
    local tables = {...}
    for _, t in ipairs(tables) do
        for _, v in ipairs(t) do
            table.insert(result, v)
        end
    end
    return result
end

function Yunzhu.flatten(t)
    local result = {}
    for _, v in ipairs(t) do
        if type(v) == "table" then
            local flattened = Yunzhu.flatten(v)
            for _, fv in ipairs(flattened) do
                table.insert(result, fv)
            end
        else
            table.insert(result, v)
        end
    end
    return result
end

function Yunzhu.chunk(t, size)
    local result = {}
    for i = 1, #t, size do
        local chunk = {}
        for j = i, math.min(i + size - 1, #t) do
            table.insert(chunk, t[j])
        end
        table.insert(result, chunk)
    end
    return result
end

function Yunzhu.zip(...)
    local tables = {...}
    local result = {}
    local maxLength = 0
    for _, t in ipairs(tables) do
        maxLength = math.max(maxLength, #t)
    end
    
    for i = 1, maxLength do
        local row = {}
        for j, t in ipairs(tables) do
            table.insert(row, t[i])
        end
        table.insert(result, row)
    end
    return result
end

function Yunzhu.unzip(t)
    local result = {}
    if #t == 0 then return result end
    
    for i = 1, #t[1] do
        local col = {}
        for j = 1, #t do
            table.insert(col, t[j][i])
        end
        table.insert(result, col)
    end
    return result
end

function Yunzhu.shuffle(t)
    local result = Yunzhu.copy(t)
    for i = #result, 2, -1 do
        local j = math.random(i)
        result[i], result[j] = result[j], result[i]
    end
    return result
end

function Yunzhu.sort(t, comparator)
    local result = Yunzhu.copy(t)
    table.sort(result, comparator)
    return result
end

function Yunzhu.reverse(t)
    local result = {}
    for i = #t, 1, -1 do
        table.insert(result, t[i])
    end
    return result
end

function Yunzhu.unique(t)
    local seen = {}
    local result = {}
    for _, v in ipairs(t) do
        if not seen[v] then
            seen[v] = true
            table.insert(result, v)
        end
    end
    return result
end

function Yunzhu.union(...)
    local tables = {...}
    local result = {}
    local seen = {}
    for _, t in ipairs(tables) do
        for _, v in ipairs(t) do
            if not seen[v] then
                seen[v] = true
                table.insert(result, v)
            end
        end
    end
    return result
end

function Yunzhu.intersection(...)
    local tables = {...}
    if #tables == 0 then return {} end
    
    local result = {}
    local counts = {}
    
    -- 计算每个元素的出现次数
    for i, t in ipairs(tables) do
        local seenInThisTable = {}
        for _, v in ipairs(t) do
            if not seenInThisTable[v] then
                seenInThisTable[v] = true
                counts[v] = (counts[v] or 0) + 1
            end
        end
    end
    
    -- 找出在所有表中都出现的元素
    local requiredCount = #tables
    for v, count in pairs(counts) do
        if count == requiredCount then
            table.insert(result, v)
        end
    end
    
    return result
end

function Yunzhu.difference(t1, t2)
    local result = {}
    local exclude = {}
    for _, v in ipairs(t2) do
        exclude[v] = true
    end
    for _, v in ipairs(t1) do
        if not exclude[v] then
            table.insert(result, v)
        end
    end
    return result
end

function Yunzhu.symmetricDifference(t1, t2)
    local diff1 = Yunzhu.difference(t1, t2)
    local diff2 = Yunzhu.difference(t2, t1)
    return Yunzhu.concat(diff1, diff2)
end

function Yunzhu.groupBy(t, func)
    local result = {}
    for _, v in ipairs(t) do
        local key = func(v)
        if not result[key] then
            result[key] = {}
        end
        table.insert(result[key], v)
    end
    return result
end

function Yunzhu.countBy(t, func)
    local result = {}
    for _, v in ipairs(t) do
        local key = func(v)
        result[key] = (result[key] or 0) + 1
    end
    return result
end

function Yunzhu.partition(t, func)
    local pass = {}
    local fail = {}
    for _, v in ipairs(t) do
        if func(v) then
            table.insert(pass, v)
        else
            table.insert(fail, v)
        end
    end
    return pass, fail
end

function Yunzhu.sum(t)
    return Yunzhu.reduce(t, function(acc, v) return acc + v end, 0)
end

function Yunzhu.product(t)
    return Yunzhu.reduce(t, function(acc, v) return acc * v end, 1)
end

function Yunzhu.average(t)
    if #t == 0 then return 0 end
    return Yunzhu.sum(t) / #t
end

function Yunzhu.min(t)
    if #t == 0 then return nil end
    return Yunzhu.reduce(t, function(acc, v) return math.min(acc, v) end, t[1])
end

function Yunzhu.max(t)
    if #t == 0 then return nil end
    return Yunzhu.reduce(t, function(acc, v) return math.max(acc, v) end, t[1])
end

function Yunzhu.copy(t)
    if type(t) ~= "table" then return t end
    local result = {}
    for k, v in pairs(t) do
        result[k] = Yunzhu.copy(v)
    end
    return result
end

function Yunzhu.size(t)
    local count = 0
    for _ in pairs(t) do
        count = count + 1
    end
    return count
end

function Yunzhu.isEmpty(t)
    return next(t) == nil
end

function Yunzhu.keys(t)
    local result = {}
    for k in pairs(t) do
        table.insert(result, k)
    end
    return result
end

function Yunzhu.values(t)
    local result = {}
    for _, v in pairs(t) do
        table.insert(result, v)
    end
    return result
end

function Yunzhu.entries(t)
    local result = {}
    for k, v in pairs(t) do
        table.insert(result, {key = k, value = v})
    end
    return result
end

function Yunzhu.fromEntries(entries)
    local result = {}
    for _, entry in ipairs(entries) do
        result[entry.key] = entry.value
    end
    return result
end

function Yunzhu.merge(...)
    local tables = {...}
    local result = {}
    for _, t in ipairs(tables) do
        for k, v in pairs(t) do
            result[k] = v
        end
    end
    return result
end

function Yunzhu.mergeDeep(...)
    local tables = {...}
    local result = {}
    
    local function isTable(t) return type(t) == "table" end
    
    for _, t in ipairs(tables) do
        for k, v in pairs(t) do
            if isTable(v) and isTable(result[k]) then
                result[k] = Yunzhu.mergeDeep(result[k], v)
            else
                result[k] = Yunzhu.copy(v)
            end
        end
    end
    return result
end

-- 测试函数
function Yunzhu.test()
    print("测试数学函数:")
    print("clamp(15, 0, 10):", Yunzhu.clamp(15, 0, 10))
    print("lerp(0, 100, 0.5):", Yunzhu.lerp(0, 100, 0.5))
    print("round(3.14159, 2):", Yunzhu.round(3.14159, 2))
    print("factorial(5):", Yunzhu.factorial(5))
    
    print("\n测试逻辑函数:")
    print("andAll(true, true, false):", Yunzhu.andAll(true, true, false))
    print("orAny(false, false, true):", Yunzhu.orAny(false, false, true))
    print("xor(true, false):", Yunzhu.xor(true, false))
    
    print("\n测试列表函数:")
    local numbers = Yunzhu.range(1, 10)
    print("range(1, 10):", table.concat(numbers, ", "))
    
    local doubled = Yunzhu.map(numbers, function(x) return x * 2 end)
    print("map(x*2):", table.concat(doubled, ", "))
    
    local even = Yunzhu.filter(numbers, function(x) return x % 2 == 0 end)
    print("filter(even):", table.concat(even, ", "))
    
    local sum = Yunzhu.reduce(numbers, function(acc, x) return acc + x end, 0)
    print("reduce(sum):", sum)
    
    print("contains 5:", Yunzhu.contains(numbers, 5))
    print("indexOf 7:", Yunzhu.indexOf(numbers, 7))
    
    local shuffled = Yunzhu.shuffle(numbers)
    print("shuffled:", table.concat(shuffled, ", "))
    
    local sorted = Yunzhu.sort(shuffled)
    print("sorted:", table.concat(sorted, ", "))
    
    local uniqueTest = {1, 2, 2, 3, 3, 3, 4, 4, 4, 4}
    local unique = Yunzhu.unique(uniqueTest)
    print("unique:", table.concat(unique, ", "))
    
    print("测试完成!")
end

return Yunzhu


--[[

使用示例

```lua
-- 加载函数库
local lib = require("math_logic_list_lib")

-- 使用数学函数
local clamped = lib.clamp(15, 0, 10)  -- 返回 10
local rounded = lib.round(3.14159, 2)  -- 返回 3.14
local distance = lib.distance(0, 0, 3, 4)  -- 返回 5

-- 使用逻辑函数
local result1 = lib.andAll(true, true, false)  -- 返回 false
local result2 = lib.orAny(false, false, true)  -- 返回 true
local result3 = lib.xor(true, false)  -- 返回 true

-- 使用列表函数
local numbers = lib.range(1, 10)  -- 创建 1 到 10 的列表
local doubled = lib.map(numbers, function(x) return x * 2 end)  -- 每个元素乘以 2
local even = lib.filter(numbers, function(x) return x % 2 == 0 end)  -- 筛选偶数
local sum = lib.reduce(numbers, function(acc, x) return acc + x end, 0)  -- 计算总和

-- 运行测试
lib.test()
```

功能说明

这个函数库提供了三大类功能：

1. 数学运算

· 基础运算：钳制值、线性插值、四舍五入等
· 数学工具：阶乘、排列组合、判断奇偶等
· 几何计算：距离计算、角度弧度转换等

2. 逻辑运算

· 逻辑门：与、或、非、异或、与非、或非等
· 条件判断：ifElse、switch 等条件处理

3. 列表操作

· 列表创建：range、list 等
· 列表转换：map、filter、reduce 等
· 列表查询：find、contains、indexOf 等
· 列表操作：slice、concat、shuffle、sort 等
· 集合操作：union、intersection、difference 等
· 分组统计：groupBy、countBy、partition 等

这个函数库可以大大简化 GameGuardian 脚本中的数据处理工作，提高开发效率。



]]