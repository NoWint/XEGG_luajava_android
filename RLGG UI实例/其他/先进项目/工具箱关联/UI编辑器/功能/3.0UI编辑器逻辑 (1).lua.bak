-- =============================================
-- RLGG UI 编辑器完整版 v2.1
-- 支持：LinearLayout/FrameLayout/Button/EditText/Switch/ViewPager
-- =============================================

local UIEditor = {
    _VERSION = "2.1",
    _CONTROLS = {
        layouts = {
            {
                type = "LinearLayout",
                name = "线性布局",
                icon = "⬅➡",
                properties = {
                    orientation = {
                        type = "choice",
                        options = {"vertical", "horizontal"},
                        default = "vertical"
                    },
                    gravity = {
                        type = "multi",
                        options = {"left", "center", "right", "top", "bottom"},
                        default = "left|top"
                    },
                    weightSum = {
                        type = "number", 
                        default = 1,
                        min = 0,
                        max = 10
                    }
                }
            },
            {
                type = "FrameLayout",
                name = "帧布局",
                icon = "🖼",
                properties = {
                    foregroundGravity = {
                        type = "choice",
                        options = {"left", "center", "right"},
                        default = "center"
                    }
                }
            }
        },
        widgets = {
            {
                type = "Button",
                name = "按钮",
                icon = "🆗",
                properties = {
                    text = {
                        type = "text",
                        default = "按钮",
                        maxLength = 20
                    },
                    textSize = {
                        type = "number",
                        default = 14,
                        min = 8,
                        max = 32
                    },
                    textColor = {
                        type = "color",
                        default = "#FFFFFFFF"
                    },
                    onClick = {
                        type = "function",
                        default = "function() gg.toast('点击事件') end"
                    }
                }
            },
            {
                type = "EditText",
                name = "输入框",
                icon = "📝",
                properties = {
                    hint = {
                        type = "text",
                        default = "请输入内容",
                        maxLength = 50
                    },
                    inputType = {
                        type = "choice",
                        options = {"text", "number", "password"},
                        default = "text"
                    },
                    textSize = {
                        type = "number",
                        default = 14,
                        min = 8,
                        max = 32
                    }
                }
            },
            {
                type = "Switch",
                name = "开关",
                icon = "🔘",
                properties = {
                    textOn = {
                        type = "text",
                        default = "开",
                        maxLength = 4
                    },
                    textOff = {
                        type = "text",
                        default = "关",
                        maxLength = 4
                    },
                    checked = {
                        type = "boolean",
                        default = false
                    }
                }
            },
            {
                type = "ViewPager",
                name = "滑动视图",
                icon = "📑",
                properties = {
                    pageMargin = {
                        type = "number",
                        default = 0,
                        min = 0,
                        max = 100
                    },
                    offscreenPageLimit = {
                        type = "number",
                        default = 1,
                        min = 1,
                        max = 5
                    }
                }
            }
        }
    }
}

function UIEditor:new(config)
    local obj = {
        currentLayout = nil,
        config = {
            outputPath = "/sdcard/RLGG_UI/",
            defaultFile = "ui_layout.lua",
            theme = {
                primaryColor = "#FF2196F3",
                backgroundColor = "#FF303030",
                textColor = "#FFFFFFFF"
            }
        },
        history = {}
    }
    
    -- 合并配置
    if config then
        for k, v in pairs(config) do
            if type(v) == "table" then
                obj.config[k] = obj.config[k] or {}
                for sk, sv in pairs(v) do
                    obj.config[k][sk] = sv
                end
            else
                obj.config[k] = v
            end
        end
    end
    
    setmetatable(obj, self)
    self.__index = self
    return obj
end

-- 核心方法：生成默认属性
function UIEditor:getDefaultProperties(propertiesDef)
    local defaults = {}
    for propName, propDef in pairs(propertiesDef) do
        if propDef.default ~= nil then
            defaults[propName] = propDef.default
        else
            -- 根据类型生成默认值
            if propDef.type == "choice" then
                defaults[propName] = propDef.options[1]
            elseif propDef.type == "multi" then
                defaults[propName] = table.concat(propDef.options, "|")
            elseif propDef.type == "number" then
                defaults[propName] = 0
            elseif propDef.type == "boolean" then
                defaults[propName] = false
            else
                defaults[propName] = ""
            end
        end
    end
    return defaults
end

function UIEditor:start()
    self:initWorkspace()
    self:showMainMenu()
end

function UIEditor:initWorkspace()
    if not file.checkDir(self.config.outputPath) then
        gg.alert("无法创建输出目录："..self.config.outputPath)
        os.exit()
    end
    gg.toast("工作区初始化完成")
end

function UIEditor:showMainMenu()
    while true do
        local choice = gg.choice({
            "📐 创建新布局",
            "✏️ 编辑当前布局",
            "🧩 添加组件",
            "👀 实时预览",
            "💾 生成代码",
            "⚙️ 编辑器设置",
            "🚪 退出"
        }, nil, "RLGG UI编辑器 v"..self._VERSION)

        if choice == 1 then
            self:createNewLayout()
        elseif choice == 2 then
            self:editCurrentLayout()
        elseif choice == 3 then
            self:addComponent()
        elseif choice == 4 then
            self:previewUI()
        elseif choice == 5 then
            self:generateCode()
        elseif choice == 6 then
            self:showSettings()
        elseif choice == 7 then
            break
        end
    end
end

function UIEditor:createNewLayout()
    local layoutTypes = {}
    for _, layout in ipairs(self._CONTROLS.layouts) do
        table.insert(layoutTypes, layout.icon.." "..layout.name)
    end

    local choice = gg.choice(layoutTypes, nil, "选择布局类型")
    if choice then
        local layoutDef = self._CONTROLS.layouts[choice]
        self.currentLayout = {
            type = layoutDef.type,
            children = {},
            properties = self:getDefaultProperties(layoutDef.properties),
            metadata = {
                created = os.date("%Y-%m-%d %H:%M:%S"),
                modified = os.date("%Y-%m-%d %H:%M:%S")
            }
        }
        gg.toast(layoutDef.name.."创建成功")
    end
end

function UIEditor:addComponent()
    if not self.currentLayout then
        gg.alert("请先创建布局")
        return
    end

    local widgetList = {}
    for _, widget in ipairs(self._CONTROLS.widgets) do
        table.insert(widgetList, widget.icon.." "..widget.name)
    end

    local choice = gg.choice(widgetList, nil, "添加组件")
    if choice then
        local widgetDef = self._CONTROLS.widgets[choice]
        local newComponent = {
            type = widgetDef.type,
            properties = self:getDefaultProperties(widgetDef.properties),
            metadata = {
                position = #self.currentLayout.children + 1,
                added = os.date("%Y-%m-%d %H:%M:%S")
            }
        }
        self:editComponentProperties(newComponent, widgetDef.properties)
        table.insert(self.currentLayout.children, newComponent)
        gg.toast(widgetDef.name.."添加成功")
    end
end

function UIEditor:editComponentProperties(component, propertiesDef)
    while true do
        local propNames = {}
        for name, _ in pairs(propertiesDef) do
            table.insert(propNames, name)
        end
        table.insert(propNames, "返回")

        local choice = gg.choice(propNames, nil, "编辑属性 - "..component.type)
        if not choice or propNames[choice] == "返回" then
            break
        end

        local propName = propNames[choice]
        local propDef = propertiesDef[propName]
        local currentValue = component.properties[propName]

        if propDef.type == "choice" then
            local newChoice = gg.choice(propDef.options, nil, "选择"..propName)
            if newChoice then
                component.properties[propName] = propDef.options[newChoice]
            end
        elseif propDef.type == "multi" then
            local choices = gg.multiChoice(propDef.options, nil, "选择"..propName)
            if choices then
                local selected = {}
                for i, v in ipairs(choices) do
                    if v then table.insert(selected, propDef.options[i]) end
                end
                component.properties[propName] = table.concat(selected, "|")
            end
        elseif propDef.type == "boolean" then
            component.properties[propName] = not component.properties[propName]
            gg.toast(propName.."设置为："..tostring(component.properties[propName]))
        else
            local inputType = "text"
            if propDef.type == "number" then inputType = "number" end
            local result = gg.prompt({"输入"..propName}, {tostring(currentValue)}, {inputType})
            if result then
                component.properties[propName] = propDef.type == "number" and tonumber(result[1]) or result[1]
            end
        end
    end
end

function UIEditor:generateCode()
    if not self.currentLayout then
        gg.alert("请先创建布局")
        return
    end

    local code = {
        "local luajava = require('luajava')",
        "return function(context)",
        "    return luajava.loadlayout({"
    }

    -- 生成布局属性
    table.insert(code, "        "..self.currentLayout.type..",")
    for prop, value in pairs(self.currentLayout.properties) do
        table.insert(code, self:_formatProperty(prop, value, 8))
    end

    -- 生成子组件
    for _, child in ipairs(self.currentLayout.children) do
        table.insert(code, "        {")
        table.insert(code, "            "..child.type..",")
        for prop, value in pairs(child.properties) do
            table.insert(code, self:_formatProperty(prop, value, 12))
        end
        table.insert(code, "        },")
    end

    table.insert(code, "    }, nil, context)")
    table.insert(code, "end")

    return table.concat(code, "\n")
end

function UIEditor:_formatProperty(prop, value, indent)
    local spaces = string.rep(" ", indent)
    if prop == "onClick" then
        return spaces..string.format('onClick = %s,', value)
    elseif prop == "background" then
        if value:match("^#") then
            return spaces..string.format('background = "%s",', value)
        else
            return spaces..string.format('background = luajava.getDrawable("%s"),', value)
        end
    elseif prop == "textColor" then
        return spaces..string.format('textColor = "%s",', value)
    else
        return spaces..string.format('%s = "%s",', prop, tostring(value))
    end
end

function UIEditor:previewUI()
    local code = self:generateCode()
    if not code then return end

    local tempFunc, err = load(code)
    if not tempFunc then
        gg.alert("预览失败：\n"..err)
        return
    end

    callAsyncTask(function()
        local view = tempFunc()
        gg.showAlert(view)
    end)
end

function UIEditor:save()
    local filename = gg.prompt({"输入保存文件名"}, {self.config.defaultFile}, {"text"})[1]
    if not filename then return end

    local path = self.config.outputPath..filename
    local code = self:generateCode()
    
    if file.write(path, code) then
        gg.toast("保存成功："..path)
        return true
    else
        gg.alert("保存失败，请检查路径权限")
        return false
    end
end

-- =============================================
-- 初始化并使用编辑器
-- =============================================
local config = {
    outputPath = "/sdcard/MyAppUI/",
    theme = {
        primaryColor = "#FF4CAF50",
        backgroundColor = "#FF212121",
        textColor = "#FFB0BEC5"
    }
}

local editor = UIEditor:new(config)
editor:start()