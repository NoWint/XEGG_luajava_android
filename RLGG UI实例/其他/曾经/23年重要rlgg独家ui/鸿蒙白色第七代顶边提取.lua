function getButtonBG()
local selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, getVerticalBG({0x34000400,0x34000400},15))
selector:addState({
	-android.R.attr.state_pressed
}, getVerticalBG({0xFFFFFFFF,0xFFFFFFFF},15))
return selector
end
function getVerticalBG(gtvb1,gtvb3,gtvb4,gtvb5)
if not gtvb4 then gtvb4 = 0 gtvb5 = 0xff000000 end
local jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(gtvb3)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors(gtvb1)
jianbians:setStroke(gtvb4,gtvb5)--边框宽度和颜色
return jianbians
end
function getCorner(gtvb1,gtvb3,gtvb4,gtvb5,g1,g2,g3,g4)
if not gtvb4 then gtvb4 = 0 gtvb5 = 0xff000000 end
local jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(gtvb3)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors(gtvb1)
jianbians:setStroke(gtvb4,gtvb5)--边框宽度和颜色
jianbians:setCornerRadii({g1,g1,g2,g2,g3,g3,g4,g4})
return jianbians
end
dingbian = luajava.loadlayout({
FrameLayout,
	id = "dingbian",
	visibility = "visible",
	layout_gravity="top",
	layout_width = "match_parent",
	layout_height = "35dp",
	orientation = "vertical",
	background = getCorner({0xFFFFFFFF,0xFFFFFFFF,0xFFFFFFFF,0xFFFFFFFF},30,0,0xff0097FF,30,30,0,0),
	{
	LinearLayout ,
	layout_width = '80dp' ,
	id="hengt",
	layout_gravity="center",
	layout_height = "35dp" ,
	gravity = "center_vertical" ,
	onClick = function ()  end,
	background = getButtonBG(),
	onTouch=hanshu,
	    {LinearLayout,
		visibility = "visible",
		background=luajava.loadlayout {
      	GradientDrawable,
     	color = "0xff004EFF",
     	cornerRadius = 38
        },
		padding="10dp",
		layout_gravity="center",
		layout_width="65dp",
		layout_height = "5.5dp",
		layout_marginLeft="5dp",
		layout_marginRight="5dp",
		onTouch=hanshu,
		}},
		{LinearLayout,
		visibility = "visible",
		background = getCorner({0xFFFFFFFF,0xFFFFFFFF,0xFFFFFFFF,0xFFFFFFFF},30,0,0xff0097FF,20,20,0,0),
		layout_height="35dp",
		layout_width="60dp",
		layout_marginLeft="1dp",
		layout_marginRight="match_parent",
		layout_gravity="left|center",
		{LinearLayout,
		visibility = "visible",
		id="fangda",
		background="https://wp.td88.cyou/view.php/81aab41bccfc0bd84fa6c684b7fb2ca3.png",
		padding="10dp",
		layout_marginLeft="5dp",
		layout_gravity="left|center",
		layout_height="20dp",
		layout_width="20dp",
		onClick= function()
		vibra:vibrate(9)
		fdk=mainLayoutParams.width
		fdg=mainLayoutParams.height
		gg.sleep(100)
		toast("已放大")
		mainLayoutParams.width=device.getWidth()
		mainLayoutParams.height=device.getHeight()-140
		fangda:setVisibility(View.GONE)
		suoxiao:setVisibility(View.VISIBLE)
    	window:updateViewLayout(floatWindow, mainLayoutParams)
    	end, 
		onTouch=hanshu,
		},
		{LinearLayout,
		visibility = "gone",
		id="suoxiao",
		background="https://wp.td88.cyou/view.php/8155907852eedb81289f58936823a43f.png",
		padding="10dp",
		layout_marginLeft="5dp",
		layout_gravity="left|center",
		layout_height="20dp",
		layout_width="20dp",
		onClick= function() 
		vibra:vibrate(9)
		gg.toast("已缩小")
		mainLayoutParams.width=fdk
		mainLayoutParams.height=fdg
		suoxiao:setVisibility(View.GONE)
		fangda:setVisibility(View.VISIBLE)
    	window:updateViewLayout(floatWindow, mainLayoutParams)
    	end, 
		onTouch=hanshu,
		},
		{LinearLayout,
		visibility = "visible",
		background="https://wp.td88.cyou/view.php/0754d639ce764f633067cfc2bab49c8f.png",
		padding="10dp",
		layout_marginLeft="14dp",
		layout_gravity="left|center",
		layout_height="20dp",
		layout_width="20dp",
		onClick= function() 
		vibra:vibrate(9)
		gfz=mainLayoutParams.width
		kfz=mainLayoutParams.height
		mainLayoutParams.height=gfz
    	mainLayoutParams.width=kfz
    	window:updateViewLayout(floatWindow, mainLayoutParams)
    	end, 
		onTouch=hanshu,
		}
		},
		{LinearLayout,
		visibility = "visible",
		background = getCorner({0xFFFFFFFF,0xFFFFFFFF,0xFFFFFFFF,0xFFFFFFFF},30,0,0xff0097FF,20,20,0,0),
		layout_height="35dp",
		layout_width="60dp",
		layout_marginLeft="match_parent",
		layout_marginRight="1dp",
		layout_gravity="right|center",
		{LinearLayout,
		visibility = "visible",
		id="suofk",
		background="https://wp.td88.cyou/view.php/7fb71338e306eea74ab65a129de1a803.png",
		padding="10dp",
		layout_marginLeft="match_parent",
		layout_gravity="right|center",
		layout_marginRight="14dp",
		layout_height="20dp",
		layout_width="20dp",
		onClick= function() 
		vibra:vibrate(9)
		gg.toast("UI缩放已锁定")
		缩放=1 
		suofk:setVisibility(View.GONE)
		suofg:setVisibility(View.VISIBLE)
		jiaobiao.onTouch=hanshu
		end, 
		onTouch=hanshu,
		},
		{LinearLayout,
		visibility = "gone",
		id="suofg",
		background="https://wp.td88.cyou/view.php/e131c24e666b1b4a3e91e5877361e8ae.png",
		padding="10dp",
		layout_marginLeft="match_parent",
		layout_gravity="right|center",
		layout_marginRight="14dp",
		layout_height="20dp",
		layout_width="20dp",
		onClick= function() 
		vibra:vibrate(9)
		gg.toast("UI缩放已开启")
		缩放=nil 
		suofg:setVisibility(View.GONE)
		suofk:setVisibility(View.VISIBLE)
		jiaobiao.onTouch=suofang
		end, 
		onTouch=hanshu,
		},	
	{LinearLayout,
		visibility = "visible",
		background="https://wp.td88.cyou/view.php/636f6753bb73b262495946dfea32f6b2.png",
		padding="10dp",
		layout_marginLeft="match_parent",
		layout_gravity="right|center",
		layout_marginRight="5dp",
		layout_height="20dp",
		layout_width="20dp",
		onClick= function() vibra:vibrate(9) 隐藏() end, 
		onTouch=hanshu,
		}
		}
})