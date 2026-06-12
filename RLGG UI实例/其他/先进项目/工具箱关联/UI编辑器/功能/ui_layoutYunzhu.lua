local luajava = require('luajava')
local floatingWindowManager = require('floatingWindowManager')
floatingWindowManager:init()
floatingWindowManager:newWindow('Yunzhu编辑器', {
onCreate = function(floatingWindow)
floatingWindow:addView(YUNZHU)
end
})
    YUNZHU= luajava.loadlayout({
        LinearLayout,
        weightSum = "1",
        orientation = "vertical",
        gravity = "left|top",
        {
            Switch,
            checked = "false",
            textOff = "关",
            textOn = "开",
        },
        {
            Button,
            onClick = function() gg.toast('点击事件') end,
            textColor = "#FFFFFFFF",
            text = "按钮文本",
            background = "#FF2196F3",
        },
        {
            TextView,
            gravity = "left|top",
            textSize = "14",
            textColor = "#FFFFFFFF",
            text = "Yunzhu",
        },
    }, nil, context)
floatingWindowManager:run()