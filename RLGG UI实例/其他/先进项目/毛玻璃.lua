-- 引入必要的库
require("import")
import "android.graphics.*"
import "android.graphics.drawable.*"
import "android.graphics.PorterDuff"
import "android.graphics.drawable.shapes.RoundRectShape"
import "android.graphics.Paint"
import "android.graphics.BitmapFactory"
import "android.renderscript.*"

-- 模糊函数：使用 RenderScript 进行图像模糊
function blurBitmap(bitmap, radius)
    local rs = RenderScript.create(activity)
    local input = Allocation.createFromBitmap(rs, bitmap)
    local output = Allocation.createTyped(rs, input.getType())
    local script = ScriptIntrinsicBlur.create(rs, Element.U8_4(rs))
    script.setRadius(radius)
    script.setInput(input)
    script.forEach(output)
    output.copyTo(bitmap)
    rs.destroy()
    return bitmap
end

-- 创建自定义视图
