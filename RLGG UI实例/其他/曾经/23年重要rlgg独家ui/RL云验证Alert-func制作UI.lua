do
	if type(getrlyunyz) ~= 'function' then
		gg.alert('请使用RLGG执行')
		os.exit()
		return
	end

	local info = {
	    example_version = '1.0.3',
		name = 'FUNC',
		appid = '48980',
		appkey = 'rRuK0o50SQMMojaw',
		rc4key = '28Zg8p8K4XX82T88',
		version = '1.0',
		mi_type = '3'
	}
file.mkdirs("/sdcard/"..info.name..'')
卡网="https://yun.kaapi.cn/links/44A1A5AF"--填卡网
方式="qq"--tg就填tgqq就填qq
qun = '824784947'--填qq群号
TG=""--填tg加群链接
	local rlyunyz = getrlyunyz(info)

	local function login(rlyunyz)
		local result

		-- 如果为自动登录，则直接登录
		if rlyunyz.getAutoLogin() then
			return rlyunyz.start()
		end

		-- 验证是否有更新
		local ini = rlyunyz.checkUpdate()

		-- 公告
		local notice = rlyunyz.notice()

		-- 用于同步的锁
		local lock = luajava.getBlock()

		-- android.app.AlertDialog$Builder
		local alert = luajava.newAlert()
		luajava.post(function()
			-- android.app.AlertDialog
			alert = alert:create()
		end)

		-- 获取卡密
		local function getkami()
			local name = 'RL云验证卡密'
			local editText = luajava.getIdView(name)
			if not isUserdata(editText) then
				gg.alert(string.format('%s-控件不存在', name))
				return
			end
			return editText:getText()
		end

		-- 退出弹窗，并结束堵塞
		local function exit()
			alert:dismiss()
			lock('end')
		end

		-- 工厂方式创建复用 GradientDrawable layout
slctc = luajava.loadlayout {
	GradientDrawable,
	color = "#11ffffff",
	cornerRadius = 8
}
slctd = luajava.loadlayout {
	GradientDrawable,
	color = "#55ffffff",
	cornerRadius = 8
}
slcte = luajava.loadlayout {
	GradientDrawable,
	color = "#11ffffff",
	cornerRadius = 12
}
slctf = luajava.loadlayout {
	GradientDrawable,
	color = "#aa1E1C27",
	cornerRadius = 12
}
baidi = luajava.loadlayout({
	GradientDrawable,
	color = "#F9F2F9",
	cornerRadius = 0
})
heidi = luajava.loadlayout({
	GradientDrawable,
	color = "#555555",
	cornerRadius = 0
})		

function getShape3()
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(12)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({0xff49505E,0xff49505E})
jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
jianbians:setStroke(4,0xaaffffff)--边框宽度和颜色
return jianbians
end

function getShape(tmp0,tmp1,tmp2,tmp3)
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(tmp0)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors(tmp1)
jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
jianbians:setStroke(14,tmp3)--边框宽度和颜色
return jianbians
end

function getSelector3()
selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, luajava.loadlayout {
	GradientDrawable,
	color = "#aa49505E",
	cornerRadius = 10
}) -- 点击时候的背景
selector:addState({
	-android.R.attr.state_pressed
}, getShape3()) -- 没点击的背景
return selector
end
		
		local function newGradientDrawableLayout(layout)
			local baseLayout = {
				GradientDrawable,
				cornerRadius = '15dp',
				color = 0x20000000
			}
			return table.copy(baseLayout, layout)
		end

		local function newTextViewLayout(layout)
			local baseLayout = {
				TextView,
				layout_width = 'match_parent',
				layout_margin = margin_dp,
				gravity = 'center',
				padding = '5dp'
			}

			return table.copy(baseLayout, layout)
		end

		-- 工厂方式创建复用 Button layout
		local function newButtonLayout(layout)
			local baseLayout = {
				Button,
				layout_width = 'match_parent',
				layout_margin = '20dp',
				textSize = '15sp',
				textColor = "#00A3FF",
				background = getSelector3()
			}

			return table.copy(baseLayout, layout)
		end
local a = io.open('/sdcard/'..info.name..'/km.txt','r'):read("*a")
if not a then os.exit() end
km = a
		-- 回调事件不能直接执行堵塞函数，需要用线程执行
		local view = luajava.loadlayout({
			LinearLayout,
			orientation = 'vertical',
			background = getShape(30,{0xe84B7CFF,0x88974BFF},0,0x01B8B8B8), -- 主题颜色
			layout_margin = '10dp',
			padding = {'10dp', '20dp', '10dp', '20dp'},
			{
			TextView,
			text = string.format('全网累计使用次数：%s', (tonumber(ini.api_total) or 0)),
			gravity = 'center',
			},
			{
				EditText,
				layout_width = 'match_parent',
				layout_margin = '5dp',
				hint = '请输入您的卡密',
				id = luajava.newId('RL云验证卡密'),
				background = getSelector3()
			},    
			{LinearLayout,
			orientation="horizontal",
			layout_width = "wrap_content",
			{
				CheckBox,
				layout_width = 'match_parent',
				layout_margin = '10dp',
				text = '自动登录',
				onCheckedChange = function(CompoundButton, state)
					rlyunyz.setAutoLogin(state)
				end
			},
			{
			Button,
			layout_width = '60dp',
			layout_hight = "30dp",
			layout_margin = '10dp',
			textSize = '9sp',
			textColor = "#00A3FF",
			background = getSelector3(),
			text = "购卡",
			onClick = function()
			luajava.startThread(function()
			app.openUrl(卡网)			
			end)
			end
			},
			{
			Button,
			layout_width = '60dp',
			layout_hight = "30dp",
			layout_margin = '10dp',
			textSize = '9sp',
			textColor = "#00A3FF",
			background = getSelector3(),
			text = "加群/tg",
			onClick = function()
			luajava.startThread(function()
			if 方式=="tg" then
			app.openUrl(TG)
			elseif 方式=="qq" then
			qq.joinGroup(qun)
			end			
			end)
			end
			}
			},
			newButtonLayout({
				text = "快捷登录",
				onClick = function()
local function func()
local a = io.open('/sdcard/'..info.name..'/km.txt','r'):read("*a")
km = a
local loadingBox=getLoadingBox("Login...")
loadingBox["显示"]()
gg.sleep(1800)
if not km then 
gg.alert("暂不支持快捷登录") 
end
loadingBox["关闭"]()
local loadingBox=getLoadingBox("正在验验卡密可用性")
loadingBox["显示"]()
local res = rlyunyz.login(km)
						if res then
							result = res
							exit()
						end
gg.sleep(900)
loadingBox["关闭"]()
				end
				luajava.startThread(func)
				end
			}),
			newButtonLayout({
				text = '登录',
				onClick = function()
					local function func()
local loadingBox=getLoadingBox("Login...")
loadingBox["显示"]()
						local km = getkami()
						
gg.sleep(1800)
loadingBox["关闭"]()
local loadingBox=getLoadingBox("正在验验卡密可用性")
loadingBox["显示"]()
local res = rlyunyz.login(km)
						if res then
							result = res
							exit()
						end
gg.sleep(900)
loadingBox["关闭"]()
file.write('/sdcard/'..info.name..'/km.txt',km)

					end
					luajava.startThread(func)
				end
			}),
			newButtonLayout({
				text = '解绑',
				onClick = function()
					local function func()
						local km = getkami()
						rlyunyz.unbind(km)
					end
					luajava.startThread(func)
				end
			})
		})
		alert:setView(view)

		-- 弹窗被取消
		alert:setOnDismissListener(luajava.createProxy('android.content.DialogInterface$OnDismissListener', {
			onDismiss = function()
				exit()
			end
		}))

		-- 异步显示弹窗
		luajava.showAlert(alert)

		-- 堵塞，等待异步弹窗结束
		lock('join')

		return result
	end

	local ret = login(rlyunyz)
	if not ret or not isTable(ret) or ret.sign ~= '5a2b864eb28094579015759cbb3b0b88' then
		os.exit()
		return
	end
end
-- 把以上代码复制到你脚本最前面即可

gg.alert('欢迎RLGG')

