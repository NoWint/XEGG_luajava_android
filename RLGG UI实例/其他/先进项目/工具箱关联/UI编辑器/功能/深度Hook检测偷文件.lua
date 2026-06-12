-- =============================================
-- RLGG安全卫士 v3.0
-- 深度文件检测终极版
-- =============================================

-- 环境验证
if not gg or not gg.alert then
    error("本脚本需在RLGG环境中运行")
end

local SecurityGuard = {
    version = "3.0.1",
    debug = false
}

-- 初始化安全沙盒
function SecurityGuard:new()
    local obj = {
        -- 监控数据
        riskScore = 0,
        behaviorLog = {},
        -- 原始函数备份
        origin = {
            file_write = file.write,
            os_execute = os.execute,
            http_post = http.post
        },
        -- 危险操作阈值
        thresholds = {
            HIGH_RISK = 80,
            MEDIUM_RISK = 50
        }
    }
    
    -- 绑定方法
    obj.checkSensitivePath = self.checkSensitivePath
    obj.logBehavior = self.logBehavior
    obj.installHooks = self.installHooks
    obj.restoreHooks = self.restoreHooks
    obj.startScan = self.startScan
    
    return obj
end

-- 敏感路径检测
function SecurityGuard:checkSensitivePath(path)
    local sensitivePaths = {
        "/sdcard/DCIM/",
        "/sdcard/WhatsApp/",
        "/data/data/"
    }
    
    for _, p in ipairs(sensitivePaths) do
        if path:find(p, 1, true) then
            return true
        end
    end
    return false
end

-- 行为日志记录
function SecurityGuard:logBehavior(eventType, detail)
    table.insert(self.behaviorLog, {
        time = os.time(),
        type = eventType,
        detail = detail
    })
end

-- 安装安全钩子
function SecurityGuard:installHooks()
    -- Hook文件写入
    file.write = function(path, data)
        if self:checkSensitivePath(path) then
            self.riskScore = self.riskScore + 30
            self:logBehavior("高危写入", path)
        end
        return self.origin.file_write(path, data)
    end
    
    -- Hook系统命令
    os.execute = function(cmd)
        self:logBehavior("系统命令", cmd)
        if cmd:match("curl") or cmd:match("wget") then
            self.riskScore = self.riskScore + 50
        end
        return self.origin.os_execute(cmd)
    end
    
    -- Hook网络请求
    http.post = function(url, headers, data)
        self:logBehavior("网络传输", url)
        if url:match("http://") and not url:match("rlyun%.top") then
            self.riskScore = self.riskScore + 40
        end
        return self.origin.http_post(url, headers, data)
    end
end

-- 恢复原始函数
function SecurityGuard:restoreHooks()
    file.write = self.origin.file_write
    os.execute = self.origin.os_execute
    http.post = self.origin.http_post
end

-- 启动扫描流程
function SecurityGuard:startScan()
    -- 获取检测路径
    local path = gg.prompt(
        "输入待检测文件路径：", 
        {"/sdcard/Download/test.lua"}, 
        {"file"}
    )[1]
    
    if not path or path == "" then
        gg.alert("已取消操作")
        return
    end
    
    -- 预检扫描
    if not file.checkFile(path) then
        gg.alert("文件不存在或不可读")
        return
    end
    
    -- 安装监控钩子
    self:installHooks()
    
    -- 执行沙盒运行
    local chunk, err = load(file.read(path))
    if not chunk then
        gg.alert("文件加载失败："..err)
        self:restoreHooks()
        return
    end
    
    local success, runtimeErr = pcall(chunk)
    if not success then
        self:logBehavior("运行错误", runtimeErr)
    end
    
    -- 生成报告
    self:showReport()
    
    -- 清理环境
    self:restoreHooks()
end

-- 显示检测报告
function SecurityGuard:showReport()
    local report = {
        "==== 安全检测报告 ====",
        "风险评分: "..self.riskScore,
        "检测时间: "..os.date("%Y-%m-%d %H:%M:%S"),
        "---------------------",
        "可疑行为记录："
    }
    
    for _, log in ipairs(self.behaviorLog) do
        table.insert(report, string.format("[%s] %s - %s", 
            os.date("%H:%M:%S", log.time),
            log.type,
            log.detail
        ))
    end
    
    if self.riskScore >= self.thresholds.HIGH_RISK then
        table.insert(report, "⚠️ 检测到高危行为，建议立即删除文件！")
    elseif self.riskScore >= self.thresholds.MEDIUM_RISK then
        table.insert(report, "⚠️ 存在中等风险，建议谨慎处理")
    else
        table.insert(report, "✅ 未检测到明显风险")
    end
    
    gg.alert(table.concat(report, "\n"))
end

-- 主程序入口
gg.setVisible(false)
local guard = SecurityGuard:new()
guard:startScan()