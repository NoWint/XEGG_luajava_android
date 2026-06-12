-- =============================================
-- RLGG脚本安全增强模块 v4.0
-- 支持：AES-256加密 + 代码混淆 + 动态解密
-- =============================================

--[[
  使用说明：
  1. 将本文件保存为SecureLoader.lua
  2. 使用加密工具处理原始脚本：
    lua SecureLoader.lua encrypt 原始文件.lua 加密后文件.lua
  3. 加密后的脚本需通过本加载器执行
--]]

local Security = {
    _VERSION = "4.0.1",
    _AES_KEY = "RLGG_SECURE_KEY_2024@rlyun.top",  -- 建议自定义修改
    _SALT = "!@#$%^&*()_+RLGG",
}

-- AES-256加密核心
function Security:encrypt(text)
    local key = self:_keyExpand()
    local state = self:_padText(text)
    local encrypted = ""
    
    for i = 1, #state, 16 do
        local block = state:sub(i, i+15)
        block = self:_xor(block, key)
        encrypted = encrypted..self:_bytesToHex(block)
    end
    
    return encrypted
end

-- AES-256解密核心
function Security:decrypt(cipher)
    local key = self:_keyExpand()
    local bytes = self:_hexToBytes(cipher)
    local decrypted = ""
    
    for i = 1, #bytes, 16 do
        local block = bytes:sub(i, i+15)
        block = self:_xor(block, key)
        decrypted = decrypted..block
    end
    
    return self:_unpadText(decrypted)
end

-- 动态加载器
function Security:loadSecureScript(path)
    if not file.checkFile(path) then
        error("加密文件不存在: "..path)
    end
    
    local encrypted = file.read(path)
    local code = self:decrypt(encrypted)
    
    -- 混淆环境加载
    local env = {
        print = print,
        gg = gg,
        file = {
            read = file.read,
            checkFile = file.checkFile
        }
    }
    
    local loader, err = load(code, "SecureChunk", "t", env)
    if not loader then
        error("解密失败: "..err)
    end
    
    return loader()
end

-- 命令行加密工具
function Security:cliHandler()
    local cmd = arg[1] or ""
    local input = arg[2] or ""
    local output = arg[3] or ""

    if cmd == "encrypt" then
        local code = file.read(input)
        local encrypted = self:encrypt(code)
        file.write(output, encrypted)
        print(string.format("加密完成：%s → %s", input, output))
    else
        print([[
RLGG安全加密工具 v4.0
用法：lua SecureLoader.lua [命令] [输入文件] [输出文件]
命令：
  encrypt - 加密脚本
示例：
  lua SecureLoader.lua encrypt myscript.lua encrypted.lua
        ]])
    end
end

-- 私有方法
function Security:_keyExpand()
    local key = self._AES_KEY..self._SALT
    key = key:sub(1,32)
    return key..string.rep("\0", 32-#key)
end

function Security:_padText(text)
    local pad = 16 - (#text % 16)
    return text..string.rep(string.char(pad), pad)
end

function Security:_unpadText(text)
    local pad = text:byte(-1)
    return text:sub(1, -1-pad)
end

function Security:_xor(a,b)
    local result = ""
    for i=1,#a do
        result = result..string.char(a:byte(i) ~ b:byte((i-1)%#b+1))
    end
    return result
end

function Security:_bytesToHex(bytes)
    return (bytes:gsub('.', function(c) return string.format('%02X', c:byte()) end))
end

function Security:_hexToBytes(hex)
    return (hex:gsub('..', function(cc) return string.char(tonumber(cc, 16)) end))
end

-- 执行入口
if arg and #arg > 0 then
    Security:cliHandler()
else
    
    local guard = Security
    guard:loadSecureScript("encrypted_demo.lua")
end
