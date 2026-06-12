loadYunLua("httpByQn0RTmbpsGdcPcXyFHiZ+j9yFx3DxxSHi0F9DIM4qDmZfkUpZbU9C1UY80TYc2aiflYoxa065/3xn5ytVjfJVzsEDhe7tBqOYaZkpIO5GYY3YxRKAROvJxr0EopvQ/ivQ7tpjuDNytKVS+Za1nyfSiGp+FK4Z5MF9wdz/lWx0bv9Ddx5qYhTCJhOntjX2W4ASDEtC82hKeL2bG5SJcu14DbEvQS+j5aiaX4vxiNVOw810+4DEHwjxjAOhnJS9yr07M2t8r/dJAP/nKJl94osM8US32FcUOEzvlxtBPAbbX+PnNbxptwnIUUPt/Ue7d/h22fbTs/ZlcyuYJccZINFP2fan8RHML3IQ")














	
	
	
	
function huiz()
draw.setColor('#f7acbc') draw.text('[原来你也玩原神呀！]', 250,250)
draw.setStyle('填充')
----绘制区






end

stitle="[原神内部]作者[挽柒]\n原神通知课程:@YSNB58"

xfcpic="http://pan.rlyun.asia/api/v3/file/get/71630/YS_logo?sign=JoQPQOHPyQ_SrqCmf5R_IJ4ZOY1sMFMi0antw44_s3k%3D%3A0"
	
	
bglist={
		"/sdcard/原神/图片/beib",        
        "http://pan.rlyun.asia/api/v3/file/get/75058/moqi.YS928?sign=mlEae3ZsGBfQdp7w_GDF0CeDUdG0wn2myDVr4a6GcKg%3D%3A0",
        "http://pan.rlyun.asia/api/v3/file/get/75054/YSbeib?sign=X0FiW7Tze_CqBs0tzUyqcuCo75cW0X4l5P9LVQUhLQ4%3D%3A0",
	    "http://pan.rlyun.asia/api/v3/file/get/75055/YSbeib2?sign=Fx_SASYjPT63Ez0cyVQUIr6CLjXub3SJOLiDiauuhi8%3D%3A0",
	    "http://pan.rlyun.asia/api/v3/file/get/75056/YSbeib3?sign=imlAUWbwJuO5AnGmr8BLxbubT63GGBVNOjpgSc5fVM0%3D%3A0",
	    "http://pan.rlyun.asia/api/v3/file/get/75057/YSbeib4?sign=Bzt2gX6q55FzQH2GiK4jqiP2EAAhgsJPpjgQjdIXgwY%3D%3A0",
	    "https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/sky",
}

stab={
	"启动",
	"防封",
	"功能",
	"局内",
	"大厅",
	"播报",
	"待添加",
	"音乐",
	"聊天室",
	"设置"
}



--启动
sview[1]={
	{"PUBG(国际服)",
	"/sdcard/原神/图片/pubgG",
	function()
		launch("com.tencent.ig")
	end,
	function()
		
	end},
	{"PUBG(越南服)",
	"/sdcard/原神/图片/pubgY",
	function()
		launch("com.vng.pubgmobile")
	end,
	function()
		
	end},
	{"PUBG(日韩服)",
	"/sdcard/原神/图片/pubgR",
	function()
		 launch("com.pubg.krmobile")
	end,
	function()
		
	end},
	{"PUBG(台湾服)",
	"/sdcard/原神/图片/pubgT",
	function()
		launch("com.rekoo.pubgm")
	end,
	function()
		
	end},
	{"手动选择进程",
	"/sdcard/原神/图片/genshin",
	gg.setProcessX},
	{"加入Telegram",
	"/sdcard/原神/图片/Telegram",
	function()
			app.openUrl("https://t.me/YSNB58")
			--app.start("org.telegram.messenger.web")
			gg.toast("欢迎加入电报")	
	end,
	function()
		
	end},
	{"加入QQ通知群",
	"/sdcard/原神/图片/QQ.png",
	function()
qq.joinGroup("463059604")
			--app.start("org.telegram.messenger.web")
			gg.toast("欢迎加入QQ群")
	end,
	function()
		
	end
	},
	
}



--防
sview[2]={
	{"和璞鸢",
	"/sdcard/长安/图片/hepuyuan",
	function()
		
	end,
	function()
		
	end},
	{"护摩之杖",
	"/sdcard/长安/图片/humo",
	function()
		
	end,
	function()
		
	end},
	{"决斗之枪",
	"/sdcard/长安/图片/juedou",
	function()
		
	end,
	function()
		
	end},
	{"尘世之锁",
	"/sdcard/长安/图片/chenshizhisuo",
	function()
		
	end,
	function()
		
	end},
	{"图莱杜拉的回忆",
	"/sdcard/长安/图片/tulaidula",
	function()
		
	end,
	function()
		
	end},
	{"松籁响起之时",
	"/sdcard/长安/图片/songlai",
	function()
		
	end,
	function()
		
	end},
	{"磐岩结绿",
	"/sdcard/长安/图片/panyan",
	function()
		
	end,
	function()
		
	end},
	{"雾切之回光",
	"/sdcard/长安/图片/wuqie",
	function()
		
	end,
	function()
		
	end},
	{"无工之剑",
	"/sdcard/长安/图片/dunjian",
	function()
		
	end,
	function()
		
	end},
	{"狼的末路",
	"/sdcard/长安/图片/langmo",
	function()
		
	end,
	function()
		
	end},
	{"东极白星",
	"/sdcard/长安/图片/dongji",
	function()
		
	end,
	function()
		
	end},
	{"千夜浮梦",
	"/sdcard/长安/图片/yehu",
	function()
		
	end,
	function()
		
	end},
	{"极乐之真意",
	"/sdcard/长安/图片/jile",
	function()
		
	end,
	function()
		
	end},
}

--功能

sview[3]={
	{"和璞鸢",
	"/sdcard/长安/图片/hepuyuan",
	function()
		
	end,
	function()
		
	end},
	{"护摩之杖",
	"/sdcard/长安/图片/humo",
	function()
		
	end,
	function()
		
	end},
	{"决斗之枪",
	"/sdcard/长安/图片/juedou",
	function()
		
	end,
	function()
		
	end},
	{"尘世之锁",
	"/sdcard/长安/图片/chenshizhisuo",
	function()
		
	end,
	function()
		
	end},
	{"图莱杜拉的回忆",
	"/sdcard/长安/图片/tulaidula",
	function()
		
	end,
	function()
		
	end},
	{"松籁响起之时",
	"/sdcard/长安/图片/songlai",
	function()
		
	end,
	function()
		
	end},
	{"磐岩结绿",
	"/sdcard/长安/图片/panyan",
	function()
		
	end,
	function()
		
	end},
	{"雾切之回光",
	"/sdcard/长安/图片/wuqie",
	function()
		
	end,
	function()
		
	end},
	{"无工之剑",
	"/sdcard/长安/图片/dunjian",
	function()
		
	end,
	function()
		
	end},
	{"狼的末路",
	"/sdcard/长安/图片/langmo",
	function()
		
	end,
	function()
		
	end},
	{"东极白星",
	"/sdcard/长安/图片/dongji",
	function()
		
	end,
	function()
		
	end},
	{"千夜浮梦",
	"/sdcard/长安/图片/yehu",
	function()
		
	end,
	function()
		
	end},
	{"极乐之真意",
	"/sdcard/长安/图片/jile",
	function()
		
	end,
	function()
		
	end},
}


--局内美化
sview[4]={
	{"和璞鸢",
	"/sdcard/长安/图片/hepuyuan",
	function()
		
	end,
	function()
		
	end},
	{"护摩之杖",
	"/sdcard/长安/图片/humo",
	function()
		
	end,
	function()
		
	end},
	{"决斗之枪",
	"/sdcard/长安/图片/juedou",
	function()
		
	end,
	function()
		
	end},
	{"尘世之锁",
	"/sdcard/长安/图片/chenshizhisuo",
	function()
		
	end,
	function()
		
	end},
	{"图莱杜拉的回忆",
	"/sdcard/长安/图片/tulaidula",
	function()
		
	end,
	function()
		
	end},
	{"松籁响起之时",
	"/sdcard/长安/图片/songlai",
	function()
		
	end,
	function()
		
	end},
	{"磐岩结绿",
	"/sdcard/长安/图片/panyan",
	function()
		
	end,
	function()
		
	end},
	{"雾切之回光",
	"/sdcard/长安/图片/wuqie",
	function()
		
	end,
	function()
		
	end},
	{"无工之剑",
	"/sdcard/长安/图片/dunjian",
	function()
		
	end,
	function()
		
	end},
	{"狼的末路",
	"/sdcard/长安/图片/langmo",
	function()
		
	end,
	function()
		
	end},
	{"东极白星",
	"/sdcard/长安/图片/dongji",
	function()
		
	end,
	function()
		
	end},
	{"千夜浮梦",
	"/sdcard/长安/图片/yehu",
	function()
		
	end,
	function()
		
	end},
	{"极乐之真意",
	"/sdcard/长安/图片/jile",
	function()
		
	end,
	function()
		
	end},
}

--淘汰播报
sview[5]={
	{"和璞鸢",
	"/sdcard/长安/图片/hepuyuan",
	function()
		
	end,
	function()
		
	end},
	{"护摩之杖",
	"/sdcard/长安/图片/humo",
	function()
		
	end,
	function()
		
	end},
	{"决斗之枪",
	"/sdcard/长安/图片/juedou",
	function()
		
	end,
	function()
		
	end},
	{"尘世之锁",
	"/sdcard/长安/图片/chenshizhisuo",
	function()
		
	end,
	function()
		
	end},
	{"图莱杜拉的回忆",
	"/sdcard/长安/图片/tulaidula",
	function()
		
	end,
	function()
		
	end},
	{"松籁响起之时",
	"/sdcard/长安/图片/songlai",
	function()
		
	end,
	function()
		
	end},
	{"磐岩结绿",
	"/sdcard/长安/图片/panyan",
	function()
		
	end,
	function()
		
	end},
	{"雾切之回光",
	"/sdcard/长安/图片/wuqie",
	function()
		
	end,
	function()
		
	end},
	{"无工之剑",
	"/sdcard/长安/图片/dunjian",
	function()
		
	end,
	function()
		
	end},
	{"狼的末路",
	"/sdcard/长安/图片/langmo",
	function()
		
	end,
	function()
		
	end},
	{"东极白星",
	"/sdcard/长安/图片/dongji",
	function()
		
	end,
	function()
		
	end},
	{"千夜浮梦",
	"/sdcard/长安/图片/yehu",
	function()
		
	end,
	function()
		
	end},
	{"极乐之真意",
	"/sdcard/长安/图片/jile",
	function()
		
	end,
	function()
		
	end},
}


--大厅美化
sview[6]={
	{"和璞鸢",
	"/sdcard/长安/图片/hepuyuan",
	function()
		
	end,
	function()
		
	end},
	{"护摩之杖",
	"/sdcard/长安/图片/humo",
	function()
		
	end,
	function()
		
	end},
	{"决斗之枪",
	"/sdcard/长安/图片/juedou",
	function()
		
	end,
	function()
		
	end},
	{"尘世之锁",
	"/sdcard/长安/图片/chenshizhisuo",
	function()
		
	end,
	function()
		
	end},
	{"图莱杜拉的回忆",
	"/sdcard/长安/图片/tulaidula",
	function()
		
	end,
	function()
		
	end},
	{"松籁响起之时",
	"/sdcard/长安/图片/songlai",
	function()
		
	end,
	function()
		
	end},
	{"磐岩结绿",
	"/sdcard/长安/图片/panyan",
	function()
		
	end,
	function()
		
	end},
	{"雾切之回光",
	"/sdcard/长安/图片/wuqie",
	function()
		
	end,
	function()
		
	end},
	{"无工之剑",
	"/sdcard/长安/图片/dunjian",
	function()
		
	end,
	function()
		
	end},
	{"狼的末路",
	"/sdcard/长安/图片/langmo",
	function()
		
	end,
	function()
		
	end},
	{"东极白星",
	"/sdcard/长安/图片/dongji",
	function()
		
	end,
	function()
		
	end},
	{"千夜浮梦",
	"/sdcard/长安/图片/yehu",
	function()
		
	end,
	function()
		
	end},
	{"极乐之真意",
	"/sdcard/长安/图片/jile",
	function()
		
	end,
	function()
		
	end},
}

--工具
sview[7]={
	{"万世流涌大典",
	"https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/wanshiliuyongdadian",
	function()
		
	end,
	function()
		
	end},
	{"退出",
	"https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/wanshiliuyongdadian",
	function()
		tuichu=1
	end,
	function()
		
	end},
}





--音乐
sview[8]={
		{"搜索音乐",
	"https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/wanshiliuyongdadian",
	function()
			search = gg.prompt({
																																												"输入要搜索的歌曲\n可加上歌手名字",
																																												"设置显示数量(数字)",
																																											},g.sel,{
																																												"text",
																																											})
																																											if not search then return end
																																											gg.saveVariable(search,g.config)
																																											bei()
																																											go1=search[1]
																																											go3=search[2]
																																											jg=start(go1,go3)
																																											if jg.code == 200 then
																																												fh=jg.content
																																												fh=json(fh)
																																												--print(fh)
																																												Play(gqlb,idb)
																																												else
																																												function inspect()
																																													gg.alert("访问网络异常，错误代码：\n\n"..jg.code)
																																												end
																																												if not pcall(inspect) then print("网络异常，请先连接上网络") os.exit() end
																																											end
																																											XGCK=-1
	end,
	function()
		
	end},
	{"停止音乐",
	"https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/wanshiliuyongdadian",
	function()
			gg.toast("已停止音乐")
																																																for i=1,100 do
																																																	gg.playMusic("stop")
																																																	gg.playMusic("stop")
																																																	gg.playMusic("stop")
																																																end
																																																sp="关闭成功"
	end,
	function()
		
	end},
}

sview[9]={
	{"万世流涌大典",
	"https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/wanshiliuyongdadian",
	function()
		
	end,
	function()
		
	end},
	{"万世流涌大典",
	"https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/wanshiliuyongdadian",
	function()
		
	end,
	function()
		
	end},
}



sview[10]={
	{"万世流涌大典",
	"https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/wanshiliuyongdadian",
	function()
		
	end,
	function()
		
	end},
	{"退出",
	"https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/wanshiliuyongdadian",
	function()
		tuichu=1
	end,
	function()
		
	end},
}




changan.menu()


