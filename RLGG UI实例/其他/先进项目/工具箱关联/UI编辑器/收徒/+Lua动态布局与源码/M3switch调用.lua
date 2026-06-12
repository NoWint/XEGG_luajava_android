function Yunzhu.switch(name,func1,func2,miaoshu)
  if not checkbg then
    checkbga = getVerticalBG({0xffE4E4E4,0xffE4E4E4},360)
    checkbg = getVerticalBG({0xff006dff,0xff006dff},360)
    switchbg1 = getVerticalBG({0xff000000,0xff000000},360,4,0x00ffffff)
    switchbg2 = getVerticalBG({0xff000000,0xff000000},360,4,0x00ffffff)
  end
  nid = name..guid()
  local func = 开关3(name,func1,func2,nid)
  if not name then name = "未设置" end
  switches["1s"..nid] = luajava.loadlayout {
    FrameLayout,
    layout_width = '40dp',
    layout_height = '20dp',
    gravity = "center_vertical",
    {
      LinearLayout,
      layout_gravity = "left|center_vertical",
      id = luajava.newId(nid.."k"),
      background = switchbg1,
      onClick = function() luajava.newThread(function() func() end):start() end,
      layout_width = '20dp',
      layout_height = '20dp',

    },
  }
  switches["2s"..nid] = luajava.loadlayout {
    FrameLayout,
    onClick = function() luajava.newThread(function() func() end):start() end,
    layout_width = '40dp',
    layout_height = '20dp',
    gravity = "center_vertical",
    {
      LinearLayout,
      visibility = "gone",
      layout_gravity = "right|center_vertical",
      id = luajava.newId(nid.."g"),
      background = switchbg2,
      onClick = function() luajava.newThread(function() func() end):start() end,
      layout_width = '20dp',
      layout_height = '20dp',


    }
  }
  rest = luajava.loadlayout({
    LinearLayout,
    layout_width = 'match_parent',
    layout_height = "47dp",
    gravity = "center",
   
    {
      LinearLayout,
      layout_width = 'match_parent',
      layout_height = "40dp",
      layout_gravity = "center",
      gravity = "center",
      layout_marginRight = "4dp",
      layout_marginLeft = "4dp",
      elevation='2dp',
      background = luajava.loadlayout {
        GradientDrawable ,
        color = 主题色[3] ,
        cornerRadius = 17
        } ,padding = {
        "0dp","0dp","6dp","0dp"
      },
      {
				LinearLayout,
				layout_width = 'match_parent',
				layout_height = 'match_parent',
				orientation = 'vertical',
				
				{
					MaterialSwitch,
				id=nid,
					layout_width = 'match_parent',
					layout_height = 'wrap_content',
					text = name,
					Typeface=font,
					textSize = "13sp",
       -- setTrackTintList('0xff000000'),
--mddd3:setTrackTintList(ColorStateList({{android.R.attr.state_checked},{}},{0xff2000ff,0xffd7d7d7})),
---setThumbTintList('0xff000000'),

        layout_marginLeft = "10dp",
        layout_weight = 1,
        textColor = "0xffffffff",
        --setThumbTintList='0xff000000',
        onClick = function() luajava.newThread(function() func() end):start() end,
        
		},
			
		
			}}
  })
  


  
  return rest
end