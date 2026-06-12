if (rlgg.VERSION < 2.09) then
	gg.alert('请使用大于等于2.09版本的RLGG')
	os.exit()
end

local baseWindow = require 'floatingWindowManager2'
import 'com.google.android.material.imageview.ShapeableImageView'
import 'com.google.android.material.shape.CornerFamily'
import 'android.widget.LinearLayout'
import 'android.widget.Button'
-----material组件库-----
import 'com.google.android.material.materialswitch.MaterialSwitch'
import 'com.google.android.material.button.MaterialButton'
import 'com.google.android.material.floatingactionbutton.FloatingActionButton'
import 'com.google.android.material.bottomnavigation.BottomNavigationView'
import 'com.google.android.material.textfield.TextInputLayout'  
import 'com.google.android.material.card.MaterialCardView'
import 'com.google.android.material.dialog.MaterialAlertDialogBuilder'
import 'android.widget.SeekBar'
function f1()
	gg.alert('功能1')
end



-- 浅色模式
--baseWindow:lightMode()

-- 深色模式
baseWindow:darkMode()


---@type BaseWindow
local a = baseWindow:new({
	id = '主页',
	---@param self BaseWindow
	---@param window BaseWindow
	onCreate = function(window)

		window:setIconLayout({
			ShapeableImageView,
			layout_height='48dp',
			layout_width='48dp',
			src = 'http://q4.qlogo.cn/headimg_dl?dst_uin=507522729&spec=640 ',
			__onFinish = function(view)
				view:setShapeAppearanceModel(view:getShapeAppearanceModel():toBuilder():setAllCorners(CornerFamily.ROUNDED, 50):build())
			end
		})


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


		local bottomTab=window:BottomTab()
		bottomTab:addLayout({
			title = '首页',
			{
				LinearLayout,
				layout_width = 'match_parent',
				layout_height = 'match_parent',
				orientation = 'vertical',
				{
					MaterialSwitch,
					layout_width = 'match_parent',
					layout_height = 'wrap_content',
					text = '功能1',
					onClick = window:threadWraper(f1)
				},
			
				{
					MaterialButton,
					layout_width = 'match_parent',
					layout_height = 'wrap_content',
					text = '功能2',
					onClick = window:threadWraper(function()
						gg.alert('功能2')
					end)
				},
				{
					SeekBar,
					layout_width = 'match_parent',
					layout_height = 'wrap_content',
					text = '功能3'
				},
				{
			MaterialCardView,
				layout_width = 'match_parent',
				layout_height = 'wrap_content',
				text = '功能3'
			}
			}
		})

		bottomTab:addLayout({
			title = '其它',
			{
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
				},
			}
		})

		bottomTab:notifyDataSetChanged()


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
