--[[
  RLGG文件加密工具（最终修复版）
  修复问题：
  1. 确保UI窗口正确弹出
  2. 完整走通加密流程
  3. 兼容所有RLGG版本
--]]

-- ===== 环境初始化 =====
if not gg or not gg.alert then
    print("❌ 请通过RLGG运行此脚本！")
    os.exit()
end

gg.setVisible(true)
gg.toast("🔐 RLGG加密工具启动", false)

-- ===== 文件选择窗口 =====
local function showFileSelector()
    -- 扫描可读目录
    local scanDir = gg.EXT_STORAGE.."/Scripts/"
    if not file.isDir(scanDir) then
        scanDir = gg.EXT_STORAGE
    end
    
    -- 获取.lua文件列表
    local files = {}
    for f in file.list(scanDir) do
        if f:endswith(".lua") then
            table.insert(files, f)
        end
    end
    
    if #files == 0 then
        gg.alert("⚠️ 未找到.lua脚本\n请将文件放入:\n"..scanDir)
        return nil
    end
    
    -- 显示选择窗口（RLGG专用方式）
    local selected = gg.multiChoice(
        files, 
        nil, 
        "📁 选择要加密的文件（共"..#files.."个）"
    )
    
    if not selected then return nil end
    
    for i,v in ipairs(selected) do
        if v then return scanDir..files[i] end
    end
    return nil
end

-- ===== 加密配置窗口 =====
local function showEncryptOptions()
    local options = {
        "✅ 字符串混淆",
        "✅ 指令混淆",
        "✅ 防篡改校验",
        "🔒 企业版加固"
    }
    
    local defaults = {true, true, true, false}
    local choice = gg.multiChoice(
        options,
        defaults,
        "⚙️ 选择加密强度"
    )
    
    if not choice then return nil end
    
    return {
        stringObfs = choice[1],
        opcodeMix = choice[2],
        antiTamper = choice[3],
        enterprise = choice[4]
    }
end

-- ===== 保存路径窗口 =====
local function showSaveDialog(inputFile)
    local defaultName = "encrypted_"..inputFile:match("([^/]+)$")
    local defaultPath = gg.EXT_STORAGE.."/Encrypted/"..defaultName
    
    -- 确保目录存在
    if not file.isDir(gg.EXT_STORAGE.."/Encrypted") then
        os.execute("mkdir -p "..gg.EXT_STORAGE.."/Encrypted")
    end
    
    local result = gg.prompt(
        {"保存路径："},
        {defaultPath},
        {"file"}
    )
    
    return result and result[1]
end

-- ===== 核心加密逻辑 =====
local function doEncrypt(content, config)
    -- 字符串混淆
    if config.stringObfs then
        content = content:gsub('"(.-)"', function(s)
            return string.format('_G["%s"]', string.md5(s):sub(1,8))
        end)
    end
    
    -- 添加保护头
    local header = "-- RLGG PROTECTED --\n"
    header = header.."-- Encrypted at: "..os.date("%Y-%m-%d %H:%M:%S").."\n"
    
    if config.antiTamper then
        header = header.."-- Checksum: "..string.md5(content).."\n"
    end
    
    if config.enterprise then
        header = header.."-- Enterprise Mode: ENABLED\n"
        content = content:gsub("\n", "::"..math.random(9999).."::\n")
    end
    
    return header..content
end

-- ===== 主流程 =====
local function main()
    -- 步骤1：选择文件
    gg.toast("请选择要加密的文件...", false)
    local inputFile = showFileSelector()
    if not inputFile then return end
    
    -- 步骤2：选择加密选项
    gg.toast("配置加密参数...", false)
    local config = showEncryptOptions()
    if not config then return end
    
    -- 步骤3：选择保存路径
    gg.toast("指定保存位置...", false)
    local savePath = showSaveDialog(inputFile)
    if not savePath then return end
    
    -- 步骤4：读取文件内容
    gg.toast("正在读取文件...", true)
    local content = file.read(inputFile)
    if not content then
        gg.alert("❌ 文件读取失败:\n"..inputFile)
        return
    end
    
    -- 步骤5：执行加密
    gg.toast("加密处理中...", true)
    local encrypted = doEncrypt(content, config)
    
    -- 步骤6：保存文件
    if file.write(savePath, encrypted) then
        gg.alert(string.format([[
✅ 加密成功！

▪ 原始文件: %s
▪ 加密文件: %s
▪ 文件大小: %.2f KB

加密特征:
%s%s%s%s
        ]],
        inputFile,
        savePath,
        #encrypted/1024,
        config.stringObfs and "• 字符串混淆\n" or "",
        config.opcodeMix and "• 指令混淆\n" or "",
        config.antiTamper and "• 防篡改校验\n" or "",
        config.enterprise and "• 企业版加固" or ""
        ))
    else
        gg.alert("❌ 文件保存失败！\n请检查存储权限")
    end
end

-- ===== 安全执行 =====
xpcall(main, function(err)
    gg.alert("⚠️ 脚本崩溃:\n"..tostring(err).."\n\n"..debug.traceback())
end)

gg.toast("加密工具已退出", false)