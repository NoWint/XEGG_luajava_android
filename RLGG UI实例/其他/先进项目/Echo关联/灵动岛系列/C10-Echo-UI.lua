

UI宽度='300dp'
--初始宽度 竖屏建议300dp 横屏建议400dp


UI高度='500dp'
--初始高度 竖屏建议500dp 横屏建议300dp

项目名字='长安UI'

---前置代码不要动
loadYunLua('httpByQn0RTmbpsGdcPcXyFHiZ+j9yFx3DxxSHi0F9DIM4qDmZfkUpZbU9C1UY80TYc2aiflYoxa065/3xn5ytVjfJVzsEDhe7tBqOYaZkpIO5GYY3YxRKAROvJxr0EopvQ/ivQ7tpjuDNytKVS+Za1nyfSiGp+FK3d50d6wdz/lWx0bv9Ddx5qYhTCJhOnubbaUpd7inLmyTt2WxeWFNNClkiriOAxbGtH/iCTr288mYoZoqQlOmHCuZf3HDOhnJS9yr07M2t8r/dfQS9hIpV8JJ4hzjShHNYkUdevkF1YbXbQKLQNM7Au5ft23U3Gy4UTzl0SEDnK8gMsAn7xZoJidao6hJfaoS1qhvr1Y')































function huiz()
--绘制内容必须写在这里否则会消失
draw3 = require("draw3")
draw.setStyle("填充")
draw.setColor('#00ffff')
	
end

悬浮窗图标="https://changan-1303126286.cos.ap-beijing.myqcloud.com/changan"

分页名字={
	"公告",
	"防封",
	"功能",
	"设置",
}

changan.menu({
	{---第一页
		changan.text(项目名字,'#7F5EFF',"15sp",true),
		changan.switch(
			"功能",
			function()
				
			end,
			function()
				
			end
		),
		changan.box({
			"XXX区",
				changan.edit("输入框演示"),
				changan.button(
					"调用输入框",
					function()
						local tmp=changan.getedit("输入框演示")
						gg.alert(tmp)
					end,
					0xff0056FF),
				changan.seek("拉条演示","ltxx",1,20,1),--“ltxx”为此拉条变量名字，使用时每个拉条不可重复
				changan.button(
					"调用拉条",
					function()
						gg.alert(ltxx)
					end,
					0xffE20C30),
				
				
		}),--box结尾
		changan.switch(
			"功能",
			function()
				
			end,
			function()
				
			end
		),
		changan.check({
				{
					"例子",
					function()
						
					end,
					function()
						
					end
				}, {
					"例子",
					function()
						
					end,
					function()
						
					end
				}, {
					"测试1",
					function()
						
					end,
					function()
						
					end
				},
			}),
		changan.button(
			"彩色字体演示",
			function()
				
			end,
			0xff0062FF),
		changan.button(
			"进程",
			function()
				gg.setProcessX()
			end),
		
		
		
		
	},
	{---第二页
		changan.switch(
			"功能",
			function()
				
			end,
			function()
				
			end
		),
		changan.switch(
			"功能",
			function()
				
			end,
			function()
				
			end
		),
		changan.button(
			"功能",
			function()
				
			end),
		changan.radio({--单选
				{
					"防环境 [登录界面必开]" ,
					function ()
						gg.alert(1)
					end
				} , {
					"防行为 [大厅界面必开]" ,
					function ()
						
					end
				} , {
					"防人工一 [大厅界面]" ,
					function ()
						
					end
				} , {
					"防人工二 [大厅界面]" ,
					function ()
						
					end
				} ,
			}),
		
		
		
	},{---第三页
		changan.switch(
			"功能",
			function()
				
			end,
			function()
				
			end
		),
		changan.switch(
			"功能",
			function()
				
			end,
			function()
				
			end
		),
		changan.switch(
			"功能",
			function()
				
			end,
			function()
				
			end
		),
		changan.switch(
			"功能",
			function()
				
			end,
			function()
				
			end
		),changan.switch(
			"功能",
			function()
				
			end,
			function()
				
			end
		),
		changan.switch(
			"功能",
			function()
				
			end,
			function()
				
			end
		),changan.switch(
			"功能",
			function()
				
			end,
			function()
				
			end
		),
		changan.switch(
			"功能",
			function()
				
			end,
			function()
				
			end
		),
		changan.button(
			"功能",
			function()
				
			end),
		
		
		
		
	},{---第四页
		changan.switch(
			"音量键隐藏UI",
			function()
				音量键=true
			end,
			function()
				音量键=false
			end
		),
		changan.switch(
			"摇一摇隐藏UI",
			function()
				摇一摇=true
			end,
			function()
				摇一摇=false
			end
		),
		changan.button(
			"退出",
			function()
				tuichu=1
			end),
	},
})