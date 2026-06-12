if (rlgg.VERSION < 2.09) then
	gg.alert('请使用大于等于2.09版本的RLGG')
	os.exit()
end

local baseWindow = require 'floatingWindowManager2'

if not baseWindow.getContext then
	gg.alert('请重启一下RLGG')
	app.exit()
end

local context = baseWindow:getContext()

--[[

floatingWindowManager2 是基于RLGG开发的悬浮窗模块,帮助开发者高效实现UI

目前模块尚未完成开发,还有大量工作需要完成
暂时提供一个示例简单,具体自己探索实现 (后期逐步更新更多示例)

文档目前没写,如有疑惑可咨询我QQ507522729
]]

import 'com.google.android.material.imageview.ShapeableImageView'
import 'com.google.android.material.shape.CornerFamily'
import 'com.google.android.material.materialswitch.MaterialSwitch'
import 'com.google.android.material.button.MaterialButton'
import 'com.google.android.material.dialog.MaterialAlertDialogBuilder'
import 'com.google.android.material.slider.Slider'
import 'com.google.android.material.snackbar.Snackbar'
import 'com.google.android.material.sidesheet.SideSheetDialog'
import 'com.google.android.material.bottomsheet.BottomSheetDialog'
import 'com.google.android.material.bottomsheet.BottomSheetBehavior'
import 'androidx.coordinatorlayout.widget.CoordinatorLayout'
import 'com.google.android.material.progressindicator.LinearProgressIndicator'
import 'com.google.android.material.progressindicator.CircularProgressIndicator'
import 'com.google.android.material.checkbox.MaterialCheckBox'
import 'androidx.core.widget.NestedScrollView'
import 'android.widget.ScrollView'
import 'com.google.android.material.chip.ChipGroup'
import 'com.google.android.material.chip.Chip'
import 'android.widget.CompoundButton'
import 'android.graphics.drawable.Icon'
import 'com.google.android.material.radiobutton.MaterialRadioButton'

import 'android.widget.LinearLayout'
import 'android.widget.Button'
import 'android.widget.TextView'


function f1()
	gg.alert('功能1')
end

-- 浅色模式
--baseWindow:lightMode()

-- 深色模式
baseWindow:darkMode()