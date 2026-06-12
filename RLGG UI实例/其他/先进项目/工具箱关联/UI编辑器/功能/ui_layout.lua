local luajava = require('luajava')
local floatingWindowManager = require('floatingWindowManager')
floatingWindowManager:init()
floatingWindowManager:newWindow('Yunzhu编辑器', {
onCreate = function(floatingWindow)
floatingWindow:addView(YUNZHU)
end
})
floatingWindowManager:run()
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
            text = "YunzhuNB",
            background = "#FF2196F3",
        },
    }, nil, context)
floatingWindowManager:run()