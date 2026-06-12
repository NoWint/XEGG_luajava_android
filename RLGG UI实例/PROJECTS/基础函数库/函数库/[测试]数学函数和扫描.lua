--数学库
local lib = require("math_logic_list_lib")
lib.test()

--其他
-- 主程序示例
local PatternScanner = require("PatternScanner")
local EncryptionUtils = require("EncryptionUtils")
local UIBuilder = require("UIBuilder")

local mainMenuOptions = {
    {
        title = "内存模式扫描",
        callback = function()
            local pattern = UIBuilder.inputDialog("输入AOB模式", {
                "十六进制模式 (支持??通配符)"
            })
            
            if pattern and pattern[1] then
                local results = PatternScanner.aobScan(pattern[1])
                UIBuilder.resultBrowser(results, "扫描结果")
            end
        end
    },
    {
        title = "加密检测",
        callback = function()
            local input = UIBuilder.inputDialog("检测加密", {
                "内存地址 (十六进制)",
                "样本大小"
            })
            
            if input then
                local addr = tonumber(input[1], 16)
                local size = tonumber(input[2]) or 10
                local encryptionType = EncryptionUtils.detectEncryptionType(addr, size)
                gg.alert("检测到的加密类型: " .. encryptionType)
            end
        end
    },
    {
        title = "退出",
        callback = function()
            os.exit()
        end
    }
}

-- 启动主菜单
UIBuilder.createMainMenu(mainMenuOptions)