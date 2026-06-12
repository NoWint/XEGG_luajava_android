local function require_from(path, module_name)
    local original_path = package.path
    package.path = path .. "/?.lua;" .. package.path
    local success, module = pcall(require, module_name)
    package.path = original_path
    if success then
        return module
    else
        error("Cannot require module: " .. module_name)
    end
end

-- 使用
local mymodule = require_from("/absolute/path/to/modules", "mymodule")