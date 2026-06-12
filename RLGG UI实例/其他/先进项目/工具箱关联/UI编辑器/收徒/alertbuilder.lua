baseWindow=require 'floatingWindowManager2'
context = baseWindow:getContext()
view={
	LinearLayout,
}
local dialogBuilder = MaterialAlertDialogBuilder(context)
:setTitle('灵动岛预览')
:setView(luajava.loadlayout(

这里是你需要的view

))
:setPositiveButton('我已知晓')
    luajava.showAlert(dialogBuilder)