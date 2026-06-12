--[[以下是内置代码(第2行),如需内置请将它复制粘贴到apk/resources.arsc/__包名__/string/string/__0354
httpByQn0RTmbpsGdcPcXyFHiZ+j9yFx3DxxSEmAF734hFu8NprrY7X0b4BZnVH4/Y6cftIn1wTSWl33RpAc2/lRF9pi8BdNZ1ajRhjitj/hH37apX9SlNdopoKek70I3R83z3YbC6eHJIz9ZOLclbw6ekYdYf8V8Wo1+E79QPDCXc8TAdowKkpDNwxNoDZxabWX0CqEwaZDVnr88ztLEPYyu0+uDlosF/WvWrzPf1cShFhde7P52uYkOJ0SYgk3zSX0mWHoxNN85ODtWbML7zmAAB2e93r7FZ6LgtB4BD6ICVb11pwX7gZxaIKE2Xo3a2YU6XtXIUSgwUMdo24VF4QHSbawjluBFcwJ+Bg/5j0NNxdIab3hlZG/UEcEOnlLMECa7q1IM2m3ljd8+bkmpqpjkqopEOp+goY2i0eFTBh7iOlFeHguYxytxCgpMSKiRRlU4wqXIZvmg53GMZ0rJjC0fXRNjSJffofOFRriOlp1viKYNhk3A7qyKa4mNuq7QCllWqoqZzqyIB0MBYNP+l9G7HI+JBNNEP0qh9Xyal8ORQUb9SFSFQUDTnYqbWORr1PQ1QPPwQBqi6EdUiZzO+dASYrNaQptW02S2n1TyF09RGJlEUOSZBU3aig
--]]


--如果想要以脚本的方式执行,请使用以下代码(当前文件可以使用RLGG执行)
loadYunLua("httpByQn0RTmbpsGdcPcXyFHiZ+j9yFx3DxxSEmAF734hFu8NprrY7X0b4BZnVH4/Y6cftIn1wTSWl33RpAc2/lRF9pi8BdNZ1ajRhjitj/hH37apX9SlNdopoKek70I3R83z3YbC6eHJIz9ZOLclbw6ekYdYf8V8Wo1+E79QPDCXc8TAdowKkpDNwxNoDZxabWX0CqEwaZDVnr88ztLEPYyu0+uDlosF/WvWrzPf1cShFhde7P52uYkOJ0SYgk3zSX0mWHoxNN85ODtWbML7zmAAB2e93r7FZ6LgtB4BD6ICVb11pwX7gZxaIKE2Xo3a2YU6XtXIUSgwUMdo24VF4QHSbawjluBFcwJ+Bg/5j0NNxdIab3hlZG/UEcEOnlLMECa7q1IM2m3ljd8+bkmpqpjkqopEOp+goY2i0eFTBh7iOlFeHguYxytxCgpMSKiRRlU4wqXIZvmg53GMZ0rJjC0fXRNjSJffofOFRriOlp1viKYNhk3A7qyKa4mNuq7QCllWqoqZzqyIB0MBYNP+l9G7HI+JBNNEP0qh9Xyal8ORQUb9SFSFQUDTnYqbWORr1PQ1QPPwQBqi6EdUiZzO+dASYrNaQptW02S2n1TyF09RGJlEUOSZBU3aig")
function huiz()

end

stitle = "UI"

stab = {
--菜单名字，添加即可加页数，需要与结尾配置表对应
	"防封",
	"功能",
	"音乐",
	"设置",
	
	
}
xfcpic = "http://cdn.u1.huluxia.com/g4/M02/20/0D/rBAAdmWimtSAYZCcAAJzHyuHgVs739.png"
--悬浮窗链接或路径

左上角图标="http://cdn.u1.huluxia.com/g4/M02/20/0D/rBAAdmWimtSAYZCcAAJzHyuHgVs739.png"

changan.menu(
	{
		{--1
		particle("云烛ui","Made by Yunzhu","",{"#004eff","#fff","#004eff"}),
		changan.radio({--单选
    {"防闪退 [登录界面开]",
     function()
     
     end
     },{
	"防环境 [登录界面开]" ,
	 function ()
						
	 end
	},{
	"防行为 [大厅界面开]" ,
	 function ()
						
	 end
	},{
	 "防人工 [大厅界面开]" ,
	 function ()
						
	 end
	}}),
					changan.box({"Combat",


			changan.switch ("杀戮光环" ,
				function ()
					
				end,
				function ()
					
				end,
				"范围自动攻击"),
			changan.switch ("无限光环" ,
				function ()
					
				end,
				function ()
					
				end,
				"自研百米大刀"),
			changan.switch ("弓箭自瞄" ,
				function ()
					
				end,
				function ()
					
				end,
				"自动瞄准玩家"),
			changan.switch ("超级击退" ,
				function ()
					
				end,
				function ()
					
				end,
				"SuperKB"),
			changan.switch ("自动黑曜石" ,
				function ()
					
				end,
				function ()
					
				end,
				"自动黑曜石"),
			changan.switch ("水晶光环" ,
				function ()
					
				end,
				function ()
					
				end,
				"自动水晶"),
			changan.switch ("自动图腾" ,
				function ()
					
				end,
				function ()
					
				end,
				"自动替换副手图腾"),
			changan.switch ("智能队友" ,
				function ()
					
				end,
				function ()
					
				end,
				"智能队友"),
			changan.switch ("上帝模式" ,
				function ()
					
				end,
				function ()
					
				end,
				"停止发包"),
			changan.switch ("自动战斗" ,
				function ()
					
				end,
				function ()
					
				end,
				"AI自动战斗"),
			changan.switch ("扩大膨胀箱" ,
				function ()
					
				end,
				function ()
					
				end,
				"碰撞箱"),
			changan.switch ("目标环绕" ,
				function ()
					
				end,
				function ()
					
				end,
				"自动环绕"),
		}),
		}, {
--2
changan.switch ("防闪-64-bit" ,
				function ()

end,
				function ()
					
				end,
			"局内界面开启即可降低被举报风险"),
changan.switch ("跳伞加速-64-bit" ,
				function ()
				
				end,
				function ()
					
				end,
				"快速落地开启约15关闭该功能"),
				changan.switch ("无后-64-bit" ,
				function ()
	
				end,
				function ()
					
				end,
				"辅助你圧枪达成无后座效果"),
				
				changan.switch ("防抖-64-bit" ,
				function ()

				end,
				function ()
					
				end,
				"辅助你压枪达成防抖效果"),
				changan.switch ("瞬击-64-bit" ,
				function ()

				end,
				function ()
					
				end,
				"子弹瞬间到达目标达到瞬击效果"),
				changan.switch ("手持聚点-64-bit" ,
				function ()		


				end,
				function ()
					
				end,
				"子弹聚集达到聚点效果"),
				changan.switch ("聚点-64-bit" ,
				function ()

				end,
				function ()
					
				end,
				"子弹聚集达到聚点效果"),
				changan.switch ("除雾-64-bit" ,
				function ()

				end,
				function ()
					
				end,
				"可以除掉五图七图辐射区的雾"),
				changan.switch ("广角(动)-64-bit" ,
				function ()				

				end,
				function ()
					
				end,
				"放大视角达到广角效果"),

				
				
				
						

}, {
wyylog

		}, {
changan.radio({--单选
    {"防闪退 [登录界面开]",
     function()
     
     end
     },{
	"防环境 [登录界面开]" ,
	 function ()
						
	 end
	},{
	"防行为 [大厅界面开]" ,
	 function ()
						
	 end
	},{
	 "防人工 [大厅界面开]" ,
	 function ()
						
	 end
	}}),
					changan.box({"宝物箱子",

}),
			--changan.switch("6"),
			changan.button("退出",function()
				window:removeView(floatWindow)
				luajava.setFloatingWindowHide(false)
				luajava.newThread(function() os.exit() end):start()
				tuichu=1
				end),
		}, {
--第五页，没有写菜单标题所以不显示

		},{
			
		},{
			
		},{
			
		},{
			
		},{
			
		},{
			
		},{
			
		}


	})
--配置表添加表即可加页数，需要与上边菜单标题数对应



huiz()
--draw.text('.', -9200,-9200)

显示 = 1
while true do
if tuichu == 1 then break end
jianting3(qiehuan)
gg.sleep(120)
end
luajava.setFloatingWindowHide(false)

local function invoke()
return window:removeView(floatWindow)
end
luajava.post(invoke)
luajava.setFloatingWindowHide(false)