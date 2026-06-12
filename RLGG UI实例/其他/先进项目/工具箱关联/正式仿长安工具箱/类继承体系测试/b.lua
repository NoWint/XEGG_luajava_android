local UIHelper = require('ui.helper')
local Material3 = require('material3')
local ResourceManager = require('res.manager')

-- 初始化基础模块
local context = Material3.getContext()
local windowMgr = require('windowManager2')
local RecyclerView = luajava.bindClass("androidx.recyclerview.widget.RecyclerView")

-- 创建应用主类
local AppStore = UIHelper.createClass()

function AppStore:initialize()
    self:initResources()
    self:setupWindow()
    self:buildUIComponents()
end

function AppStore:initResources()
    self.resMgr = ResourceManager.new({
        {'ca_x', 'https://xg-cloudreve.cloud-k1.riyx.cn/f/l14hG/ca_x'},
        -- 其他资源项...
    })
    
    self.typeface = Typeface.createFromFile(
        "/storage/emulated/0/云烛/配置文件/GoogleSans-Bold.otf"
    )
end

function AppStore:setupWindow()
    self.window = windowMgr.createFloatingWindow({
        title = "Yunzhu Galaxy",
        width = 400,
        height = 600,
        theme = Material3.Theme.SURFACE
    })
    
    self.window:setDarkMode(true)
    self.window:enableSwipeGesture(true)
end

-- 卡片组件
local AppCard = UIHelper.createClass()

function AppCard:initialize(config)
    self.config = config
    self:buildCardView()
end

function AppCard:buildCardView()
    self.card = Material3.CardView({
        width = "match_parent",
        elevation = 8,
        radius = 12,
        children = {
            Material3.VideoView({
                id = "videoPreview",
                path = self.config.videoPath,
                layoutParams = { height = 180 }
            }),
            Material3.TextView({
                text = self.config.title,
                textSize = 20,
                typeface = self.typeface,
                layoutMargin = { top = 12 }
            }),
            self:buildActionButton()
        }
    })
end

function AppCard:buildActionButton()
    return Material3.Button({
        text = self.config.buttonText,
        style = Material3.ButtonStyle.FILLED,
        onClick = self.config.onClick
    })
end

-- 主界面构建
function AppStore:buildUIComponents()
    local layout = Material3.CoordinatorLayout({
        children = {
            self:buildAppBar(),
            self:buildContentList(),
            self:buildNavigationDrawer()
        }
    })
    
    self.window:setContentView(layout)
end

function AppStore:buildAppBar()
    return Material3.AppBarLayout({
        children = {
            Material3.Toolbar({
                title = "Yunzhu Galaxy",
                navigationIcon = {
                    type = "lottie",
                    path = "/sdcard/云烛/图片/Lottie/layers.json",
                    onClick = function() 
                        self.drawerLayout:openDrawer(Gravity.START)
                    end
                },
                menuItems = {
                    {
                        icon = "ca_gd",
                        onClick = self.showSettingsMenu
                    }
                }
            })
        }
    })
end

function AppStore:buildContentList()
    local adapter = Material3.Adapter({
        items = self:getDemoCards(),
        onCreateViewHolder = function(parent)
            return AppCard.new(parent.context)
        end
    })
    
    return Material3.RecyclerView({
        layoutManager = LinearLayoutManager(context),
        adapter = adapter
    })
end

function AppStore:getDemoCards()
    return {
        {
            videoPath = "/sdcard/云烛/配置文件/yunzhumax",
            title = "欢迎使用 Yunzhu Galaxy",
            buttonText = "下载",
            onClick = function() 
                self:switchTab("downloads")
            end
        },
        -- 其他卡片数据...
    }
end

-- 侧边导航菜单
function AppStore:buildNavigationDrawer()
    self.drawerLayout = Material3.DrawerLayout({
        gravity = Gravity.START,
        children = {
            Material3.NavigationView({
                header = self:buildDrawerHeader(),
                menuItems = {
                    { title = "主页", icon = "ca_hm", target = "home" },
                    { title = "下载中心", icon = "ca_xz", target = "downloads" },
                    { title = "设置", icon = "ca_yl", target = "settings" }
                }
            })
        }
    })
end

-- 初始化应用
local function main()
    local loading = getLoadingBox("初始化中...")
    loading['显示']()
    
    callAsyncTask(function()
        AppStore.new()
        if loading then loading['关闭']() end
    end)
    
    gg.ui.mainLoop()
end

-- 启动应用
pcall(main)