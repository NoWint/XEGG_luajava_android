-- 游戏数据结构分析函数库
local StructureAnalyzer = {}

function StructureAnalyzer.analyzeStructure(baseAddress, depth, maxOffset)
    depth = depth or 3
    maxOffset = maxOffset or 0x100
    local structure = {}
    
    StructureAnalyzer._analyzeRecursive(baseAddress, depth, maxOffset, structure, 0)
    return structure
end

function StructureAnalyzer._analyzeRecursive(address, depth, maxOffset, structure, currentDepth)
    if currentDepth >= depth then return end
    
    for offset = 0, maxOffset, 4 do
        local currentAddr = address + offset
        local value = gg.getValues({{address = currentAddr, flags = gg.TYPE_DWORD}})[1].value
        
        -- 检查是否是指针
        if value > 0x10000 and value < 0xFFFFFFFF then
            local memInfo = gg.getTargetInfo():getMemoryRanges(value)
            if memInfo and #memInfo > 0 then
                structure[offset] = {
                    type = "POINTER",
                    value = value,
                    points_to = value
                }
                
                -- 递归分析指向的结构
                StructureAnalyzer._analyzeRecursive(
                    value, 
                    depth, 
                    maxOffset, 
                    structure[offset], 
                    currentDepth + 1
                )
            else
                structure[offset] = {
                    type = "VALUE",
                    value = value
                }
            end
        else
            structure[offset] = {
                type = "VALUE", 
                value = value
            }
        end
    end
end

function StructureAnalyzer.findClassVTables(startAddress, endAddress)
    local vtables = {}
    
    for addr = startAddress, endAddress, 4 do
        local value = gg.getValues({{address = addr, flags = gg.TYPE_DWORD}})[1].value
        
        -- 简单的VTable检测启发式规则
        if value > 0x100000 and StructureAnalyzer._looksLikeVTable(value) then
            table.insert(vtables, {
                address = addr,
                vtable_ptr = value
            })
        end
    end
    
    return vtables
end

function StructureAnalyzer._looksLikeVTable(address)
    -- 检查前几个函数指针是否看起来合理
    for i = 0, 2 do
        local funcPtr = gg.getValues({{address = address + i*4, flags = gg.TYPE_DWORD}})[1].value
        if funcPtr < 0x100000 or funcPtr > 0xFFFFFFFF then
            return false
        end
    end
    return true
end

return StructureAnalyzer