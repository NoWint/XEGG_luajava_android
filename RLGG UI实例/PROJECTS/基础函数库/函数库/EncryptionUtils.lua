-- 加密数值处理函数库
local EncryptionUtils = {}

-- 常见加密算法识别和处理
function EncryptionUtils.detectEncryptionType(address, sampleSize)
    sampleSize = sampleSize or 10
    local values = {}
    
    -- 读取样本值
    for i = 1, sampleSize do
        local val = gg.getValues({{address = address + (i-1)*4, flags = gg.TYPE_DWORD}})[1].value
        table.insert(values, val)
    end
    
    -- 检测加密模式
    if EncryptionUtils._isXOREncrypted(values) then
        return "XOR"
    elseif EncryptionUtils._isAddEncrypted(values) then
        return "ADD"
    elseif EncryptionUtils._isMultiplicative(values) then
        return "MULTIPLY"
    end
    
    return "UNKNOWN"
end

function EncryptionUtils._isXOREncrypted(values)
    -- 简单的XOR加密检测逻辑
    local patterns = {}
    for i = 2, #values do
        local pattern = bit32.bxor(values[i-1], values[i])
        patterns[pattern] = (patterns[pattern] or 0) + 1
    end
    
    -- 如果有明显的重复模式，可能是XOR加密
    for _, count in pairs(patterns) do
        if count > #values / 2 then
            return true
        end
    end
    return false
end

function EncryptionUtils._isAddEncrypted(values)
    -- 检测加法加密
    local differences = {}
    for i = 2, #values do
        local diff = values[i] - values[i-1]
        table.insert(differences, diff)
    end
    
    -- 检查差值是否相对稳定
    local avgDiff = 0
    for _, diff in ipairs(differences) do
        avgDiff = avgDiff + diff
    end
    avgDiff = avgDiff / #differences
    
    local variance = 0
    for _, diff in ipairs(differences) do
        variance = variance + (diff - avgDiff)^2
    end
    variance = variance / #differences
    
    return variance < 1000 -- 阈值可调整
end

function EncryptionUtils.bruteForceXOR(address, expectedValue, maxKey)
    maxKey = maxKey or 0xFFFF
    local original = gg.getValues({{address = address, flags = gg.TYPE_DWORD}})[1].value
    
    for key = 0, maxKey do
        if bit32.bxor(original, key) == expectedValue then
            return key
        end
    end
    
    return nil
end

return EncryptionUtils