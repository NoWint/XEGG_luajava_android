-- 内存模式识别函数库
local PatternScanner = {}

function PatternScanner.hexToPattern(hexString)
    local pattern = {}
    local bytes = {}
    
    -- 处理十六进制字符串
    hexString = hexString:gsub(" ", ""):gsub("%[%-%]", "??")
    
    for byte in hexString:gmatch("%S+") do
        if byte == "??" then
            table.insert(pattern, {0, true}) -- 通配符
        else
            local value = tonumber(byte, 16)
            if value then
                table.insert(pattern, {value, false})
            end
        end
    end
    
    return pattern
end

function PatternScanner.scanPattern(pattern, startAddress, endAddress, step)
    step = step or 1
    local results = {}
    
    for addr = startAddress, endAddress, step do
        local match = true
        
        for i, patternByte in ipairs(pattern) do
            local currentAddr = addr + i - 1
            if currentAddr > endAddress then
                match = false
                break
            end
            
            if not patternByte[2] then -- 不是通配符
                local currentValue = gg.getValues({{address = currentAddr, flags = gg.TYPE_BYTE}})[1].value
                if currentValue ~= patternByte[1] then
                    match = false
                    break
                end
            end
        end
        
        if match then
            table.insert(results, addr)
        end
    end
    
    return results
end

function PatternScanner.aobScan(aobString, region)
    region = region or gg.REGION_ANONYMOUS
    local pattern = PatternScanner.hexToPattern(aobString)
    local results = {}
    
    gg.setRanges(region)
    gg.clearResults()
    
    -- 简化版AOB扫描，实际需要更复杂的实现
    local memRanges = gg.getRangesList(region)
    
    for _, range in ipairs(memRanges) do
        if range.state == "rw" or range.state == "rwe" then
            local found = PatternScanner.scanPattern(
                pattern, 
                range.start, 
                range["end"], 
                1
            )
            for _, addr in ipairs(found) do
                table.insert(results, addr)
            end
        end
    end
    
    return results
end

return PatternScanner