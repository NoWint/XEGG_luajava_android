Yunzhu.menu(
    {
        {--1 页面1
            -- 您原有的控件...
            Yunzhu.button("测试按钮", function()
                gg.toast("按钮点击")
            end),
            Yunzhu.switch("测试开关", function()
                gg.toast("开关开启")
            end, function()
                gg.toast("开关关闭")
            end, "测试描述")
        },
        {--2 控件列表页面
            {
                LinearLayout,
                layout_width = "match_parent",
                layout_height = "match_parent",
                orientation = "vertical",
                padding = "10dp",
                background = getVerticalBG({0x78000000,0x78000000},15),
                {
                    TextView,
                    text = "🛠️ 控件列表",
                    textSize = "16sp",
                    textColor = "#ffffff",
                    layout_marginBottom = "10dp",
                    gravity = "center"
                },
                -- 直接在内部创建 ListView
                createControlsListViewInside(sview, stab)
            }
        }
    })

-- 在 Yunzhu.menu 函数外部定义这个函数
function createControlsListViewInside(sviewData, tabNames)
    if not sviewData or not tabNames then
        return TextView{text="数据加载中...", textSize="14sp", textColor="#ffffff"}
    end
    
    -- 收集所有控件信息
    local controlList = {}
    
    for pageIndex, pageControls in ipairs(sviewData) do
        local pageName = tabNames[pageIndex] or ("页面" .. pageIndex)
        
        for controlIndex, control in ipairs(pageControls) do
            local controlInfo = pageName .. " - 控件" .. controlIndex
            
            -- 根据控件类型添加更多信息
            if type(control) == "table" then
                if control.text then
                    controlInfo = controlInfo .. " (文本: " .. tostring(control.text) .. ")"
                elseif control.onClick then
                    controlInfo = controlInfo .. " (按钮)"
                end
            end
            
            table.insert(controlList, controlInfo)
        end
    end
    
    -- 创建适配器
    local adapter = ArrayAdapter(context, android.R.layout.simple_list_item_1, controlList)
    
    -- 创建 ListView
    local listView = ListView(context)
    listView:setAdapter(adapter)
    
    -- 设置布局参数
    local layoutParams = luajava.new(ViewGroup.LayoutParams, 
        ViewGroup.LayoutParams.MATCH_PARENT, 
        ViewGroup.LayoutParams.MATCH_PARENT)
    listView:setLayoutParams(layoutParams)
    
    -- 设置样式
    listView:setBackgroundColor(0x33000000)
    
    -- 设置点击事件
    luajava.setInterface(listView, 'setOnItemClickListener', function(parent, view, position, id)
        local selectedItem = controlList[position + 1]
        gg.toast("选中: " .. selectedItem)
    end)
    
    return listView
end