local bindClass = luajava.bindClass
local RecyclerView = bindClass("androidx.recyclerview.widget.RecyclerView")
local LinearLayoutManager = bindClass("androidx.recyclerview.widget.LinearLayoutManager")
local DividerItemDecoration = bindClass("androidx.recyclerview.widget.DividerItemDecoration")

-- 创建 RecyclerView
function createRecyclerView(activity)
    local recyclerView = RecyclerView(activity)
    
    -- 设置布局管理器
    local layoutManager = LinearLayoutManager(activity)
    recyclerView.setLayoutManager(layoutManager)
    
    -- 添加分隔线
    local divider = DividerItemDecoration(activity, DividerItemDecoration.VERTICAL)
    recyclerView.addItemDecoration(divider)
    
    -- 设置适配器
    local adapter = createAdapter()
    recyclerView.setAdapter(adapter)
    
    return recyclerView
end

-- 数据示例
local gameItems = {
    {name = "生命值", value = "100", type = "health"},
    {name = "金币", value = "5000", type = "coin"},
    {name = "经验值", value = "2500", type = "exp"},
    {name = "攻击力", value = "50", type = "attack"},
    {name = "防御力", value = "30", type = "defense"}
}

-- 列表项布局
local itemLayout = {
    LinearLayout = {
        layout_width = "match_parent",
        layout_height = "wrap_content",
        orientation = "horizontal",
        padding = "16dp",
        background = "?android:attr/selectableItemBackground",
        
        TextView = {
            id = "text_name",
            layout_width = "0dp",
            layout_height = "wrap_content",
            layout_weight = "1",
            textSize = "16sp",
            textColor = "#000000"
        },
        
        TextView = {
            id = "text_value",
            layout_width = "wrap_content",
            layout_height = "wrap_content",
            textSize = "16sp",
            textColor = "#FF5722",
            textStyle = "bold"
        }
    }
}

-- 创建适配器的方法
local adapterMethods = {
    onBindViewHolder = function(holder, position, views, itemData)
        views.text_name.setText(itemData.name)
        views.text_value.setText(itemData.value)
        
        -- 添加点击事件
        holder.view.setOnClickListener(function()
            gg.toast("点击了: " .. itemData.name)
            -- 这里可以添加修改游戏数据的逻辑
        end)
    end
}

-- 创建适配器
local adapter = createAdapter(gameItems, itemLayout, adapterMethods)