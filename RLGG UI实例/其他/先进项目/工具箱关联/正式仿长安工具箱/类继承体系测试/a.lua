--=============== 核心模块 ===============--
local UIHelper = {}
function UIHelper.createClass(super)
    local class = {}
    class.__index = class
    class.super = super or {}
    setmetatable(class, {__index = class.super})
    
    function class:new(...)
        local instance = setmetatable({}, class)
        if instance.initialize then instance:initialize(...) end
        return instance
    end
    return class
end

--=============== UI组件基类 ===============--
local UIComponent = UIHelper.createClass()
function UIComponent:initialize(context)
    self.context = context
    self.view = nil
end

function UIComponent:getView()
    return self.view
end

--=============== 卡片组件 ===============--
local AppStoreCard = UIHelper.createClass(UIComponent)
function AppStoreCard:initialize(config)
    self.super.initialize(self, config.context)
    self:build(config)
end

function AppStoreCard:build(config)
    self.view = luajava.loadlayout({
        MaterialCardView,
        layout_width = "match_parent",
        layout_height = "wrap_content",
        layout_margin = "16dp",
        cardBackgroundColor = config.backgroundColor or 0xFFFFFFFF,
        cardElevation = config.elevation or "4dp",
        radius = config.cornerRadius or "12dp",
        {
            LinearLayout,
            orientation = "vertical",
            padding = "16dp",
            {
                VideoView,
                id = "videoPreview",
                layout_width = "match_parent",
                layout_height = "180dp",
                __onFinish = function(v)
                    v:setVideoPath(config.videoPath)
                    v:start()
                    v:getHolder():setFormat(PixelFormat.TRANSLUCENT)
                end
            },
            {
                TextView,
                text = config.title,
                textSize = "20sp",
                textColor = config.titleColor or 0xFF000000,
                layout_marginTop = "12dp"
            },
            {
                TextView,
                text = config.description,
                textSize = "14sp",
                textColor = config.textColor or 0xFF666666,
                layout_marginTop = "8dp"
            },
            self:createActionButton(config)
        }
    })
end

function AppStoreCard:createActionButton(config)
    return {
        MaterialButton,
        text = config.buttonText or "获取",
        textColor = config.buttonTextColor or 0xFFFFFFFF,
        backgroundTint = ColorStateList.valueOf(config.buttonColor or 0xFF007AFF),
        cornerRadius = "20dp",
        layout_marginTop = "16dp",
        onClick = config.onClick
    }
end

--=============== 侧边栏管理 ===============--
local DrawerManager = UIHelper.createClass(UIComponent)
function DrawerManager:initialize(context)
    self.super.initialize(self, context)
    self.drawerLayout = nil
    self.menuItems = {}
end

function DrawerManager:buildDrawer()
    self.drawerLayout = luajava.loadlayout({
        DrawerLayout,
        layout_width = "match_parent",
        layout_height = "match_parent",
        id = "drawerRoot",
        {
            -- 主内容视图
            FrameLayout,
            id = "mainContent"
        },
        {
            -- 抽屉内容视图
            LinearLayout,
            layout_width = "320dp",
            layout_height = "match_parent",
            orientation = "vertical",
            background = 0xFFFFFFFF,
            {
                -- 抽屉头部
                self:buildDrawerHeader()
            },
            {
                -- 菜单列表
                RecyclerView,
                id = "drawerList",
                layout_width = "match_parent",
                layout_height = "match_parent"
            }
        }
    })
    
    self:setupRecyclerView()
    return self.drawerLayout
end

function DrawerManager:buildDrawerHeader()
    return {
        RelativeLayout,
        layout_width = "match_parent",
        layout_height = "180dp",
        {
            VideoView,
            layout_width = "match_parent",
            layout_height = "match_parent",
            __onFinish = function(v)
                v:setVideoPath("/sdcard/云烛/配置文件/yunzhumax")
                v:start()
            end
        },
        {
            ImageButton,
            layout_alignParentRight = true,
            layout_margin = "16dp",
            src = getRes("ca_x"),
            onClick = function() 
                self.drawerLayout:closeDrawer(Gravity.START)
            end
        }
    }
end

--=============== 主界面管理 ===============--
local MainUI = UIHelper.createClass()
function MainUI:initialize()
    self:initResources()
    self:setupWindow()
    self:buildUI()
end

--[[
function MainUI:initResources()
    self.font = Typeface.createFromFile("/storage/emulated/0/云烛/配置文件/GoogleSans-Bold.otf")
    self.resourceManager = ResourceManager.new()
end
]]
function MainUI:setupWindow()
    self.window = gg.ui.Window({
        title = "Yunzhu Galaxy",
        width = 400,
        height = 600
    })
    self.window:darkMode()
end

function MainUI:buildUI()
    self.drawerManager = DrawerManager.new()
    self.mainLayout = self.drawerManager:buildDrawer()
    
    local content = self:buildContent()
    self.drawerManager.drawerRoot.mainContent:addView(content)
    
    self.window:addChild(self.mainLayout)
    self.window:show()
end

function MainUI:buildContent()
    local scrollView = gg.ui.ScrollView({
        width = 400,
        height = 600
    })
    
    local cardContainer = gg.ui.VLayout({
        margin = 16
    })
    
    -- 添加示例卡片
    cardContainer:addChild(AppStoreCard.new({
        videoPath = "/sdcard/云烛/配置文件/yunzhumax",
        title = "歡迎使用 Yunzhu Galaxy",
        description = "在這裡，發現和創造整個世界。",
        buttonText = "Download",
        buttonColor = 0xFF131313
    }):getView())
    
    scrollView:addChild(cardContainer)
    return scrollView
end

--=============== 资源管理模块 ===============--
local ResourceManager = UIHelper.createClass()
function ResourceManager:initialize()
    self.resourceList = {
        {'ca_x', 'https://xg-cloudreve.cloud-k1.riyx.cn/f/l14hG/ca_x'},
        -- ...其他资源项
    }
    self:checkResources()
end

function ResourceManager:checkResources()
    for _, res in ipairs(self.resourceList) do
        local path = "/sdcard/云烛/图片/工具箱/"..res[1]
        if not io.open(path) then
            self:downloadResource(res[1], res[2])
        end
    end
end

function ResourceManager:downloadResource(filename, url)
    gg.toast("正在下载资源："..filename)
    luajava.download(url, "/sdcard/云烛/图片/工具箱/"..filename)
end

--=============== 初始化应用 ===============--
local function main()
    local loadingBox = getLoadingBox("正在加载...")
    loadingBox['显示']()
    
    gg.sleep(1000)
    MainUI.new()
    
    if loadingBox then loadingBox['关闭']() end
    gg.ui.mainLoop()
end

main()