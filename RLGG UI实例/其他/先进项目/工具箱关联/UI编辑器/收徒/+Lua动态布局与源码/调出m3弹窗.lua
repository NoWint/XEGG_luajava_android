baseWindow=require 'floatingWindowManager2'
context = baseWindow:getContext()
local dialogBuilder = MaterialAlertDialogBuilder(context)
:setTitle('MaterialAlertDialogBuilder')
:setMessage("消息内容")
:setPositiveButton('确定')
luajava.showAlert(dialogBuilder)

baseWindow=require 'floatingWindowManager2'
context = baseWindow:getContext()
view={
	LinearLayout,
}
local dialogBuilder = MaterialAlertDialogBuilder(context)
:setTitle('MaterialAlertDialogBuilder')
:setView(luajava.loadlayout(view))
:setPositiveButton('确定')
    luajava.showAlert(dialogBuilder)

Snackbar:make(view,text,Snackbar.LENGTH_SHORT):show()


function Yunzhu.alertDialog(title,text)
    context = baseWindow:getContext()
    view={
    	LinearLayout,
    }
local dialogBuilder = MaterialAlertDialogBuilder(context)
        :setTitle(title)
        :setMessage(text)
        :setView(luajava.loadlayout(view))
        :setPositiveButton('确定')
        luajava.showAlert(dialogBuilder)
end
changan.alertDialog(填标题,这里填提升的内容)