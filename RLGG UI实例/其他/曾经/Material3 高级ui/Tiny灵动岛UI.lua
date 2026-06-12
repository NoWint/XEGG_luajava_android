
loadYunLua('httpByQn0RTmbpsGdcPcXyFHiZ+j9yFx3DxxSkhAF7365IpTfJLgFcN4Pn8VMAs/N0I6/ieoXPoRl5J8bVfBY/1DVP6dDeVQPyi//DpylxjExSxWrU8rGTB3tJwxInTUnitf7cE4vqtd8jBRvwI3twPhpWAfWLev/ytt3gg9Hm3h7lxf7w8wSCMNaOWEMjWxyqSjhPKz0m7JiePZ5')

function huiz()
end
muby=850
--初始宽度
mubx=1350
--初始高度
stab = {
  "防封",
  "功能",
  "美化",
  "音乐",
  "设置"
}

---模板由云烛制作
---已全部引入materialDesign UI组件库内容
---完全免费 tiny群号818963998
--下面是自定义主题色 有紫 粉 橙 蓝四种颜色
--记得要放配置
--Yunzhu.ThemePink()
--Yunzhu.ThemePurple()
Yunzhu.ThemeOrange()
--Yunzhu.ThemeBlue()

xfcpic="/sdcard/云烛/图片/arlogo"

创建页面('防封',
	{
	Yunzhu.button('选择进程',gg.setProcessX),
	Yunzhu.switch("退出",function()
      退出UI()
    end,function() end),
--    Yunzhu.seek("拉条例子","ltlz",1,100,1),--名字，变量名字，最小，最大，初始
    Yunzhu.button("启动音乐",function()
     Snackbar:make(ckou,"加载成功 已完成操作✅",Snackbar.LENGTH_SHORT):setBackgroundTint("0xff161616"):show()
     
     end),
    	Yunzhu.check({
				{
					"套娃",
					function()
					--Yunzhu.alertViewDialog("布局套娃","Yunzhu.switch(    '摇一摇隐藏UI',   function()      摇一摇=true    end,    function()      摇一摇=false    end),")
						
					end,
					function()
					gg.alert("关")
						
					end
				}, {
					"例子",
					function()
						
					end,
					function()
						
					end
				},{
					"例子",
					function()
						
					end,
					function()
						
					end
				},{
					"例子",
					function()
						
					end,
					function()
						
					end
				},
				
				
			}),
			
		
    Yunzhu.switch(
    '音量键隐藏UI',
    function()
 --   Snackbar:make(view,text,Snackbar.LENGTH_SHORT):show()
    Snackbar:make(ckou,"加载成功 已完成操作✅",Snackbar.LENGTH_SHORT):setBackgroundTint("0xff161616"):show()
      音量键=true
    end,
    function()
      音量键=false
    end),
    Yunzhu.switch(
    '摇一摇隐藏UI',
    function()
    Snackbar:make(ckou,"加载成功 已完成操作✅",Snackbar.LENGTH_SHORT):setBackgroundTint("0xff161616"):show()
      摇一摇=true
    end,
    function()
      摇一摇=false
    end),
	
})

创建页面('功能',
	{
	Yunzhu.button('选择进程',gg.setProcessX),
	Yunzhu.switch(
		"防封1",
		function()
			
		end,
		function()
			
		end),
	Yunzhu.switch(
		"防封2",
		function()
			
		end,
		function()
			
		end),
	
	
})

--创建页面配置


Yunzhu.menu(
{
  {
  Yunzhu.text("Material UI",主题色[2],"18sp"),
  
  Yunzhu.text("Powered by Yunzhu",主题色[2],"10sp"),
  
  Yunzhu.switch(
					"防封菜单",
					function()
						打开页面('防封')
					end,
					function()
						关闭页面('防封')
					end),
  Yunzhu.switch(
					"功能菜单",
					function()
					
						打开页面('功能')
					end,
					function()
						关闭页面('功能')
					end),
    Yunzhu.switch("退出",function()
      退出UI()
    end,function() end),
    Yunzhu.seek("拉条例子","ltlz",1,100,1),--名字，变量名字，最小，最大，初始
    Yunzhu.button("启动音乐",function()
     Snackbar:make(ckou,"加载成功 已完成操作✅",Snackbar.LENGTH_SHORT):setBackgroundTint("0xff161616"):show()
     
     
     end),
    	Yunzhu.check({
				{
					"套娃",
					function()
					--Yunzhu.alertViewDialog("布局套娃","Yunzhu.switch(    '摇一摇隐藏UI',   function()      摇一摇=true    end,    function()      摇一摇=false    end),")
						
					end,
					function()
					gg.alert("关")
						
					end
				}, {
					"例子",
					function()
						
					end,
					function()
						
					end
				},{
					"例子",
					function()
						
					end,
					function()
						
					end
				},{
					"例子",
					function()
						
					end,
					function()
						
					end
				},
				
				
			}),
			
			
    Yunzhu.box({
	"box3示例",
	Yunzhu.switch("开关",function() gg.alert("开") end,function() gg.alert("关") end),
	Yunzhu.switch("开关",function() gg.alert("开") end,function() gg.alert("关") end),
	Yunzhu.switch("开关",function() gg.alert("开") end,function() gg.alert("关") end),
	Yunzhu.switch("开关",function() gg.alert("开") end,function() gg.alert("关") end),
	}),
    Yunzhu.switch(
    '音量键隐藏UI',
    function()
 --   Snackbar:make(view,text,Snackbar.LENGTH_SHORT):show()
    Snackbar:make(ckou,"加载成功 已完成操作✅",Snackbar.LENGTH_SHORT):setBackgroundTint("0xff161616"):show()
      音量键=true
    end,
    function()
      音量键=false
    end),
    Yunzhu.switch(
    '摇一摇隐藏UI',
    function()
    Snackbar:make(ckou,"加载成功 已完成操作✅",Snackbar.LENGTH_SHORT):setBackgroundTint("0xff161616"):show()
      摇一摇=true
    end,
    function()
      摇一摇=false
    end),
    
    particle3(),
    }, {
   
    
    
    
    }, {
    YZqiuti,
    }, {
    
    }, {

    },{
    Yunzhu.switch("退出",function() end,function() end),
    },{

    },{

    },{

    },{

    },{

    },{

  }
})