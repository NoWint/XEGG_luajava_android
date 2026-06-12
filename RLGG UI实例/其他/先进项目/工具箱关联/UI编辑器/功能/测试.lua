
-- 创建主界面
local function createMainUI()
    -- 使用luajava.loadlayout创建布局
    local layout = {
        LinearLayout,
        orientation = 'vertical',
        layout_width = 'fill',
        layout_height = 'fill',
        background = '#FF222222',  -- 深灰色背景
        {
            LinearLayout,
            orientation = 'horizontal',
            layout_width = 'fill',
            layout_height = '48dp',
            background = '#FF333333',
            gravity = 'center',
            {
                TextView,
                id = 'titleText',
                text = 'RLGG脚本控制面板',
                textColor = '#FFFFFFFF',
                textSize = '18sp',
                layout_weight = 1
            },
            {
                Button,
                id = 'closeBtn',
                text = 'X',
                textColor = '#FFFF0000',
                layout_width = '48dp',
                onClick = function()
                    gg.setVisible(false)
                end
            }
        },
        {
            ScrollView,
            layout_width = 'fill',
            layout_height = 'fill',
            {
                LinearLayout,
                orientation = 'vertical',
                layout_width = 'fill',
                padding = '16dp',
                {
                    TextView,
                    text = '功能选择',
                    textColor = '#FF00FF00',
                    textSize = '16sp',
                    layout_marginBottom = '8dp'
                },
                {
                    Button,
                    id = 'searchBtn',
                    text = '内存搜索',
                    layout_width = 'fill',
                    layout_marginTop = '8dp',
                    onClick = function()
                        showSearchDialog()
                    end
                },
                {
                    Button,
                    id = 'editBtn',
                    text = '内存编辑',
                    layout_width = 'fill',
                    layout_marginTop = '8dp',
                    onClick = function()
                        showEditDialog()
                    end
                },
                {
                    Button,
                    id = 'scriptBtn',
                    text = '运行脚本',
                    layout_width = 'fill',
                    layout_marginTop = '8dp',
                    onClick = function()
                        runScript()
                    end
                },
                {
                    TextView,
                    text = '设置选项',
                    textColor = '#FF00FF00',
                    textSize = '16sp',
                    layout_marginTop = '16dp',
                    layout_marginBottom = '8dp'
                },
                {
                    CheckBox,
                    id = 'autoRefresh',
                    text = '自动刷新',
                    textColor = '#FFFFFFFF',
                    layout_width = 'fill'
                },
                {
                    TextView,
                    text = '刷新间隔(ms):',
                    textColor = '#FFFFFFFF',
                    layout_marginTop = '8dp'
                },
                {
                    EditText,
                    id = 'refreshInterval',
                    text = '1000',
                    inputType = 'number',
                    textColor = '#FFFFFFFF',
                    layout_width = 'fill'
                },
                {
                    Button,
                    id = 'saveBtn',
                    text = '保存设置',
                    layout_width = 'fill',
                    layout_marginTop = '16dp',
                    onClick = function()
                        saveSettings()
                    end
                }
            }
        }
    }
    
    -- 加载布局
    local view = luajava.loadlayout(layout)
    
    -- 获取UI元素引用
    local titleText = luajava.getIdView('titleText')
    local closeBtn = luajava.getIdView('closeBtn')
    local autoRefresh = luajava.getIdView('autoRefresh')
    local refreshInterval = luajava.getIdView('refreshInterval')
    
    -- 设置标题点击事件
    titleText.onClick = function()
        gg.toast('RLGG UI Demo v1.0')
    end
    
    -- 返回UI视图
    return view
end

-- 显示搜索对话框
local function showSearchDialog()
    local dialogLayout = {
        LinearLayout,
        orientation = 'vertical',
        padding = '16dp',
        {
            TextView,
            text = '内存搜索',
            textColor = '#FF00FF00',
            textSize = '18sp',
            layout_gravity = 'center'
        },
        {
            EditText,
            id = 'searchValue',
            hint = '输入搜索值',
            inputType = 'number',
            textColor = '#FFFFFFFF',
            layout_width = 'fill',
            layout_marginTop = '16dp'
        },
        {
            Spinner,
            id = 'searchType',
            entries = {'DWORD', 'FLOAT', 'WORD', 'BYTE', 'DOUBLE'},
            layout_width = 'fill',
            layout_marginTop = '8dp'
        },
        {
            LinearLayout,
            orientation = 'horizontal',
            layout_width = 'fill',
            layout_marginTop = '16dp',
            {
                Button,
                text = '取消',
                layout_weight = 1,
                onClick = function(v, dialog)
                    dialog:dismiss()
                end
            },
            {
                Button,
                text = '搜索',
                layout_weight = 1,
                onClick = function(v, dialog)
                    local value = luajava.getIdView('searchValue').getText().toString()
                    local typeIndex = luajava.getIdView('searchType').getSelectedItemPosition() + 1
                    local types = {'DWORD', 'FLOAT', 'WORD', 'BYTE', 'DOUBLE'}
                    
                    if value == '' then
                        gg.toast('请输入搜索值')
                        return
                    end
                    
                    gg.toast(string.format('正在搜索 %s 类型的值: %s', types[typeIndex], value))
                    dialog:dismiss()
                    
                    -- 实际搜索代码
                    -- gg.searchNumber(value, types[typeIndex])
                end
            }
        }
    }
    
    -- 创建并显示对话框
    local dialog = gg.newAlert()
        :setTitle('内存搜索')
        :setView(luajava.loadlayout(dialogLayout))
        :setCancelable(false)
        :create()
    
    dialog:show()
end

-- 显示编辑对话框
local function showEditDialog()
    local dialogLayout = {
        LinearLayout,
        orientation = 'vertical',
        padding = '16dp',
        {
            TextView,
            text = '内存编辑',
            textColor = '#FF00FF00',
            textSize = '18sp',
            layout_gravity = 'center'
        },
        {
            EditText,
            id = 'editAddress',
            hint = '输入内存地址',
            inputType = 'number',
            textColor = '#FFFFFFFF',
            layout_width = 'fill',
            layout_marginTop = '16dp'
        },
        {
            EditText,
            id = 'editValue',
            hint = '输入新值',
            inputType = 'number',
            textColor = '#FFFFFFFF',
            layout_width = 'fill',
            layout_marginTop = '8dp'
        },
        {
            Spinner,
            id = 'editType',
            entries = {'DWORD', 'FLOAT', 'WORD', 'BYTE', 'DOUBLE'},
            layout_width = 'fill',
            layout_marginTop = '8dp'
        },
        {
            LinearLayout,
            orientation = 'horizontal',
            layout_width = 'fill',
            layout_marginTop = '16dp',
            {
                Button,
                text = '取消',
                layout_weight = 1,
                onClick = function(v, dialog)
                    dialog:dismiss()
                end
            },
            {
                Button,
                text = '修改',
                layout_weight = 1,
                onClick = function(v, dialog)
                    local address = luajava.getIdView('editAddress').getText().toString()
                    local value = luajava.getIdView('editValue').getText().toString()
                    local typeIndex = luajava.getIdView('editType').getSelectedItemPosition() + 1
                    local types = {'DWORD', 'FLOAT', 'WORD', 'BYTE', 'DOUBLE'}
                    
                    if address == '' or value == '' then
                        gg.toast('请输入地址和值')
                        return
                    end
                    
                    gg.toast(string.format('正在修改地址 %s 为 %s 类型的值: %s', address, types[typeIndex], value))
                    dialog:dismiss()
                    
                    -- 实际编辑代码
                    -- local results = {{address = address, flags = types[typeIndex]}}
                    -- gg.editAll(value, results)
                end
            }
        }
    }
    
    -- 创建并显示对话框
    local dialog = gg.newAlert()
        :setTitle('内存编辑')
        :setView(luajava.loadlayout(dialogLayout))
        :setCancelable(false)
        :create()
    
    dialog:show()
end

-- 运行脚本
local function runScript()
    local choices = {
        '脚本1 - 无敌模式',
        '脚本2 - 无限金币',
        '脚本3 - 一击必杀',
        '脚本4 - 自定义脚本'
    }
    
    gg.multiChoice(choices, nil, function(selected)
        for i, v in ipairs(selected) do
            if v then
                gg.toast('正在运行: ' .. choices[i])
                -- 实际运行脚本代码
            end
        end
    end)
end

-- 保存设置
local function saveSettings()
    local autoRefresh = luajava.getIdView('autoRefresh').isChecked()
    local interval = tonumber(luajava.getIdView('refreshInterval').getText().toString()) or 1000
    
    -- 保存设置到storage
    local storage = storages.create('settings')
    storage.put('autoRefresh', autoRefresh)
    storage.put('refreshInterval', interval)
    storage.save()
    
    gg.toast('设置已保存')
end

-- 加载设置
local function loadSettings()
    local storage = storages.create('settings')
    local autoRefresh = storage.get('autoRefresh', false)
    local interval = storage.get('refreshInterval', 1000)
    
    luajava.getIdView('autoRefresh').setChecked(autoRefresh)
    luajava.getIdView('refreshInterval').setText(tostring(interval))
end

-- 主函数
local function main()
    -- 创建主UI
    local mainUI = createMainUI()
    
    -- 加载设置
    loadSettings()
    
    -- 显示UI
    luajava.showViewAlert(mainUI)
    
    -- 设置退出监听
    setOnExitListener(function()
        gg.toast('脚本已结束')
    end)
end

-- 启动脚本
luajava.postMain(main)