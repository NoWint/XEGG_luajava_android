
-- https://gitee.com/rlyun/rlgg/releases/latest
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

local function initMenu(window)
	window:addMenuLayouts({
		{
			title = '设置',
			icon = '@android:drawable/ic_settings_24dp',
			onMenuItemClick = function(item)
				window:startById('设置')
			end,
		},
		{
			title = '关于',
			icon = '@android:drawable/ic_perm_device_info',
			onMenuItemClick = function(item)

			end,
		}
	})

	window:addMenuLayouts2({
		{
			title = '音乐',
			icon = '@android:drawable/ic_audio_media',
			onMenuItemClick = function(item)
				window:startById('音乐')
			end,
		},
		{
			title = '电报',
			icon = '@android:drawable/ic_input_extract_action_send',
			onMenuItemClick = function(item)
				
			end,
		},
		{
			title = '企鹅',
			icon = '@android:drawable/perm_group_sms',
			onMenuItemClick = function(item)
				qq.join('507522729')
			end,
		},
		{
			title = '分享',
			icon = '?drawable/abc_ic_menu_share_mtrl_alpha',
			onMenuItemClick = function(item)

			end,
		},
		{
			title = '退出',
			icon = '@android:drawable/ic_lock_power_off',
			onMenuItemClick = function(item)
				window:onFinish()
			end,
		}
	})
end


---@type BaseWindow
local a = baseWindow:new({
	id = '主页',
	---@param self BaseWindow
	---@param window BaseWindow
	onCreate = function(window)
		local ids = luajava.newIds()

		window:setIconLayout({
			ShapeableImageView,
			layout_height='48dp',
			layout_width='48dp',
			src = 'http://q4.qlogo.cn/headimg_dl?dst_uin=507522729&spec=640',
			__onFinish = function(view)
				view:setShapeAppearanceModel(view:getShapeAppearanceModel():toBuilder():setAllCorners(CornerFamily.ROUNDED, 50):build())
			end
		})


		initMenu(window)


		local bottomTab = window:BottomTab()

		local function newPager()
			local layouts = {
				LinearLayout,
				layout_width = 'match_parent',
				layout_height = 'match_parent',
				orientation = 'vertical',
			}

			local t = {}

			function t:addLayout(layout)
				layouts[#layouts+1]=layout
			end

			function t:submit(title)
				bottomTab:addLayout({
					title = title,
					{
						ScrollView,
						layout_width = 'match_parent',
						layout_height = 'match_parent',
						layouts
					}
				})
				bottomTab:notifyDataSetChanged()
			end

			function t:addCardDemo(className, layout)
				self:addLayout({
					MaterialCardView,
					layout_width = 'match_parent',
					layout_height = 'wrap_content',
					layout_margin = "12dp",
					elevation = '8dp',
					{
						LinearLayout,
						layout_margin = "8dp",
						layout_width = 'match_parent',
						layout_height = 'wrap_content',
						orientation = 'vertical',
						{
							TextView,
							layout_width = 'match_parent',
							layout_height = 'wrap_content',
							text = className,
						},
						layout
					}
				})
			end

			function t:addDemo(className, onClick)
				self:addCardDemo(className, {
					MaterialButton,
					layout_width = 'match_parent',
					layout_height = 'wrap_content',
					text = string.match(className, '([^%.]+)$') or className,
					onClick = onClick and window:threadWraper(onClick)
				})
			end
			
			return t
		end

		local element = newPager()

		element:addCardDemo('com.google.android.material.materialswitch.MaterialSwitch', {
			MaterialSwitch,
			layout_width = 'match_parent',
			layout_height = 'wrap_content',
			text = 'MaterialSwitch',
			onCheckedChange = window:threadWraper(function(compoundButton, isChecked)
				if isChecked then
					gg.alert2('onCheckedChange','打开')
				else
					gg.alert2('onCheckedChange','关闭')
				end
			end)
		})

		element:addCardDemo('com.google.android.material.checkbox.MaterialCheckBox', {
			MaterialCheckBox,
			layout_width = 'match_parent',
			layout_height = 'wrap_content',
			text = 'MaterialCheckBox',
			onCheckedChange = window:threadWraper(function(compoundButton, isChecked)
				if isChecked then
					gg.alert2('onCheckedChange','打开')
				else
					gg.alert2('onCheckedChange','关闭')
				end
			end)
		})

		element:addCardDemo('com.google.android.material.slider.Slider'..'\n\n'..'com.google.android.material.snackbar.Snackbar', {
			Slider,
			layout_width = 'match_parent',
			layout_height = 'wrap_content',
			value = 100,
			valueTo = 1000,
			valueFrom = 1,
			stepSize = 1,
			addOnChangeListener = window:threadWraper(function(slider, value, fromUser) -- 如果执行的功能不是修改器的函数,或者不带阻塞的,可以不用 window:threadWraper 包裹,性能更好(属于UI线程)

				-- 如果不是用户触发的,不处理
				if not fromUser then
					return
				end

				Snackbar:make(slider, '拖动条进度 > '..value, Snackbar.LENGTH_SHORT):show()
			end)
		})

		-- 无状态 线性进度条
		element:addCardDemo('com.google.android.material.progressindicator.LinearProgressIndicator', {
			LinearProgressIndicator,
			layout_width = 'match_parent',
			layout_height = 'wrap_content',
			indeterminate = true,
		})

		-- 无状态 环形进度条
		element:addCardDemo('com.google.android.material.progressindicator.CircularProgressIndicator', {
			CircularProgressIndicator,
			layout_width = 'match_parent',
			layout_height = 'wrap_content',
			indeterminate = true,
		})

		element:addCardDemo('可控制进度条', {
			LinearLayout,
			layout_width = 'match_parent',
			layout_height = 'wrap_content',
			orientation = 'vertical',
			{
				LinearProgressIndicator,
				id = ids.linear_progress_1,
				layout_width = 'match_parent',
				layout_height = 'wrap_content',
				max = 100,
			},
			{
				CircularProgressIndicator,
				id = ids.circular_progress_2,
				layout_width = 'match_parent',
				layout_height = 'wrap_content',
				max = 100,
			},
			{
				Slider,
				layout_width = 'match_parent',
				layout_height = 'wrap_content',
				value = 50,
				valueTo = 100,
				valueFrom = 0,
				stepSize = 1,
				addOnChangeListener = function(slider, value, fromUser)
					-- window:runOnUiThread 是确保代码出错时不会异常
					window:runOnUiThread(function()
						local p = slider:getRootView()

						local linear_progress = p:findViewById(ids.linear_progress_1)
						linear_progress:setProgress(value)
	
						local linear_progress = p:findViewById(ids.circular_progress_2)
						linear_progress:setProgress(value)
					end)
				end
			}
		})

		element:addCardDemo('com.google.android.material.button.MaterialButton', {
			MaterialButton,
			layout_width = 'match_parent',
			layout_height = 'wrap_content',
			text = '带图标按钮',
			setCompoundDrawablesWithIntrinsicBounds = {window:getDrawable('@android:drawable/ic_restart')},
		})

		element:addDemo('com.google.android.material.button.MaterialButton', function(materialButton)
			gg.alert2('onClick','点击事件')
		end)

		element:addDemo('com.google.android.material.snackbar.Snackbar', function(materialButton)
			window:snackbar('Snackbar')
		end)

		element:addDemo('com.google.android.material.dialog.MaterialAlertDialogBuilder', function(materialButton)
			local dialogBuilder = MaterialAlertDialogBuilder(context) -- 创建对话框构造器
			:setTitle('MaterialAlertDialogBuilder') -- 设置标题
			:setMessage(string.rep('1',128)) -- 设置消息
			:setPositiveButton('确定', window:threadWraper(function() -- 设置确定事件, 建议用 window:threadWraper 包裹,避免代码异常时导致UI线程崩溃,会引起APP卡死
				
				gg.toast('`确定事件`处理中...')

				-- 在 window:threadWraper 中的代码是安全的,即便不小心出错了也不会引起什么不良反应
				-- os.exit()
			end))

			luajava.showAlert(dialogBuilder)
		end)

		element:addDemo('com.google.android.material.sidesheet.SideSheetDialog', function(materialButton)
			local sheetDialog

			local contentView = luajava.loadlayout({
				LinearLayout,
				layout_width = 'match_parent',
				layout_height = 'wrap_content',
				orientation = 'vertical',
				{

					MaterialButton,
					text = 'SideSheetDialog',
				},
				{
					TextView,
					text = string.rep('1',1024)
				}
			})

			window:runOnUiThread(function()
				sheetDialog = SideSheetDialog(context)
				sheetDialog:setContentView(contentView)
				luajava.showAlert(sheetDialog)
			end)
		end)

		element:addDemo('com.google.android.material.bottomsheet.BottomSheetDialog', function(materialButton)
			local sheetDialog
		
			local contentView = luajava.loadlayout({
				LinearLayout,
				layout_width = 'match_parent',
				layout_height = 'wrap_content',
				orientation = 'vertical',
				{

					MaterialButton,
					text = 'BottomSheetDialog',
				},
				{
					TextView,
					text = string.rep('1',1024)
				}
			})

			window:runOnUiThread(function()
				sheetDialog = BottomSheetDialog(context)
				sheetDialog:setContentView(contentView)
				luajava.showAlert(sheetDialog)
			end)
		end)

		element:submit('M3')

		local element = newPager()
		element:addCardDemo('android.widget.EditText', {
			LinearLayout,
			layout_width = 'match_parent',
			layout_height = 'wrap_content',
			orientation = 'vertical',
			{
				EditText,
				id = ids.edit1,
				layout_width = 'match_parent',
				layout_height = 'wrap_content',
				hint = 'EditText',
			},
			{
				MaterialRadioButton,
				layout_width = 'match_parent',
				layout_height = 'wrap_content',
				text = '保存',
			},
			{
				MaterialButton,
				layout_width = 'match_parent',
				layout_height = 'wrap_content',
				text = '登录',
				onClick = function(view)
					local edit = view:getParent():findViewById(ids.edit1)
					local text = tostring(edit:getText())

					Snackbar:make(view, text, Snackbar.LENGTH_SHORT):show()
				end
			}
		})
		element:addCardDemo('android.widget.Button', {
			Button,
			layout_width = 'match_parent',
			layout_height = 'wrap_content',
			text = 'Button',
		})

		element:submit('View')



		local windowApi = newPager()

		local shoppingCart = window:ShoppingCartTag()
		shoppingCart:MaterialCheckBox({
			text = '功能1',
			run = function(view)
				gg.alert('执行 功能1')
			end
		})
		shoppingCart:MaterialCheckBox({
			text = '功能2',
			run = function(view)
				gg.alert('执行 功能2')
			end
		})
		shoppingCart:MaterialSwitch({
			text = '功能3',
			run = function(view)
				gg.alert('执行 功能3')
			end
		})
		shoppingCart:MaterialSwitch({
			text = '功能4',
			run = function(view)
				gg.alert('执行 功能4')
			end
		})
		windowApi:addCardDemo('ShoppingCartTag', shoppingCart:newInstance())

		windowApi:submit('Api')

	end
})


baseWindow:new({
	id = '设置',
	onCreate = function(window)
		window:addLayout({
			LinearLayout,
			layout_width = 'match_parent',
			layout_height = 'match_parent',
			orientation = 'vertical',
			{
				Button,
				layout_width = 'match_parent',
				layout_height = 'wrap_content',
				text = '功能1'
			},
			{
				Button,
				layout_width = 'match_parent',
				layout_height = 'wrap_content',
				text = '功能2'
			},
			{
				Button,
				layout_width = 'match_parent',
				layout_height = 'wrap_content',
				text = '功能3'
			}
		})
	end
})


baseWindow:new({
	id = '音乐',
	---@param window BaseWindow
	onCreate = function(window)
		window:NestedScrollView()

		window:addMenuLayout2({
			title = '退出',
			icon = '@android:drawable/ic_lock_power_off',
			onMenuItemClick = function(item)
				window:onFinish()
			end
		})

		for i = 1, 100 do
			window:addLayout({
				Button,
				layout_width = 'match_parent',
				text = string.format('bt%s',i)
			})
		end
	end,
})



gg.setVisible(false)


a:start()
a:join()

gg.setVisible(true)
