local arr = {"菠萝", "芒果", "石榴", "葡萄", "苹果", "橙子", "西瓜", "菠萝", "芒果", "石榴", "葡萄", "苹果", "橙子", "西瓜", "菠萝", "芒果", "石榴", "葡萄", "苹果", "橙子", "西瓜"}

local adapter = ArrayAdapter(context, android.R.layout.simple_list_item_1, arr)

local listView = ListView(context)
listView:setAdapter(adapter)

luajava.setInterface(listView, 'setOnItemClickListener', function(parent, view, position, id)
	-- 当前回调函数属于main线程，不可执行堵塞代码，否则异常，如有需要可以使用多线程

	luajava.startThread(function()
		-- java的初始顺序和lua的不一样，需要修复，+1
		local fix_position = position + 1
		gg.alert2('你点击了', arr[fix_position])

	end)
end)

local alert = gg.newAlert('你要买什么水果？')
alert:setView(listView)
gg.showAlert(alert)