--[[以下是内置代码(第2行),如需内置请将它复制粘贴到apk/resources.arsc/__包名__/string/string/__0354
httpByQn0RTmbpsGdcPcXyFHiZ+j9yFx3DxxS8o4F7365IpTfJLgFcN4Pn8VMus73gs8PM18XMTsy67CnaBdoWo30CXfRsnoSMxAgTQiGvapAcaMbPdYJQnQ9CyhlMv79RzKh8iaaOaUk5RnReMwOkYXx34MhrPLIq+xJDEw5QQwHwUBfXAKUTyjQUgBS8lLyoPj20+n1gkwiVUTw9rsW848xEVeUkicbHysIQWvR23SsUw5rE0hySXIBX9IJ0agZrhmreeKueX/xKRR6GLr8aZLWRFZpcSF09MrLiGSD/vDfjGBaa0FuJmDX7Iqs0v5wnYN1lDeSX+NVBvvVF2Qd3t7KHZ1eZiN0hnk
--]]


--如果想要以脚本的方式执行,请使用以下代码当前文件可以使用RLGG执行
assert(loadfile(file.checkUrl("https://image.rlyun.fun/down.php/4bb21b06e1ccaf8c4e769aa81295456a.lua", "4bb21b06e1ccaf8c4e769aa81295456a")))(...)
悬浮窗图标 = "https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/changan"

function huiz()---绘制必须放在这里面
	
	
	
end


创建页面('防封',
	{
	changan.button('选择进程',gg.setProcessX),
	changan.switch(
		"防封1",
		function()
			
		end,
		function()
			
		end),
	changan.switch(
		"防封2",
		function()
			
		end,
		function()
			
		end),
	
	
})





第一页 = {--创建分页，结尾调用
	['分页名字']="首页",
	[1]={--第一分区
		['分区名字']="公告",
		['功能配置']={
			changan.text("   公告xxxxx","#ffffff","15sp"),	
		}
	},
	[2]={--第二分区
		['分区名字']="聊天",
		['功能配置']={
			ltsui
		}
	},
	[3]={--第三分区
		['分区名字']="功能",
		['功能配置']={
				changan.button('选择进程',gg.setProcessX),
				changan.switch(
					"防封菜单",
					function()
						打开页面('防封')
					end,
					function()
						关闭页面('防封')
					end),
				changan.card({
					{
						"功能1",
						function()
							
						end,
						function()
							
						end,
						"功能介绍xxx"
					}, {
						"功能2",
						function()
							
						end,
						function()
							
						end,
						"功能介绍xxx"
					},
				}),
				changan.box({
					"例子",
					changan.check({
					{
						"例子xxxxxx",--名称
						function()--开
							
						end,
						function()--关
							
						end,
						--check第四个参数图片可自定义，删掉不写就是随机
						--"https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/changan"
					}, {
						"例子",
						function()
							
						end,
						function()
							
						end,
						--没写图片链接就是随机
						--"https://rl-1303126286.cos.ap-beijing-fsi.myqcloud.com/changan"
					}, {
						"测试1",
						function()
							
						end,
						function()
							
						end
					},
					{
						"例子",
						function()
							
						end,
						function()
							
						end
					},
				}),
			}),
			
			
			
			
			
			
			
			
			
		}
	},
	
	
	
}
第二页 = {
	['分页名字']="功能",
	[1]={--第一分区
		['分区名字']="功能",
		['功能配置']={
			
			
			
			
			
		}
	},
	[2]={--第二分区
		['分区名字']="功能",
		['功能配置']={
				
				
				
		}
	},
	
	
	
}

第三页={
	['分页名字']='美化',
	[1]={
		['分区名字']='套装美化',
		['功能配置']={
			
		}
	},
	[2]={
			['分区名字']='枪械美化',
			['功能配置']={
				
				
				
				
			}
	},
	[3]={
			['分区名字']='头盔美化',
			['功能配置']={
				
				
				
			}
	},
	[4]={
			['分区名字']='背包美化',
			['功能配置']={
				
				
				
				
			}
	},
	
}


第四页 = {
	['分页名字']="设置",
	[1]={--第一分区
		['分区名字']="脚本设置",
		['功能配置']={
				changan.button(
					"加群",
					function()
						--gg.joinGroup('群号')---q群
						--app.openUrl('http://www.baidu.com')---tg链接
					end),
				changan.button(
					"退出",
					function()
						tuichu=1
					end),
				
				
				
		}
	},
	
	
	
}

changan.menu({
	第一页,--调用上边的分页配置
	第二页,
	第三页,
	第四页,
})