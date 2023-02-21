local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("Example Title", "DarkTheme") 
--[[
== ALL THEMES ==
LightTheme
DarkTheme
GrapeTheme
BloodTheme
Ocean
Midnight
Sentinel
Synapse
]]
local Tab1 = Window:NewTab("Tab 1")

Tab1:NewLabel("This is Tab 1")

Tab1:NewButton("Example Button", "This is a Button", function()
    print("Clicked")
end)

Tab1:NewToggle("Example Toggle", "This is a Toggle", function(state)
    if state then
        print("Toggle On")
    else
        print("Toggle Off")
    end
end)


local Tab2 = Window:NewTab("Tab 2")

Tab2:NewLabel("This is Tab 2")

Tab2:NewSlider("Example Slider", "This is a Slider", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    print(s)
end)

Tab2:NewTextBox("Example Text Box", "This is a Text Box", function(txt)
	print(txt)
end)

Tab2:NewKeybind("Example Keybind", "This Is A Keybind", Enum.KeyCode.F, function()
	print("You just clicked the Keybind")
end)

Section:NewDropdown("Example Dropdown", "This is a Dropdown, Pick A Food", {"Pizza", "Burgers", "Hotdogs"}, function(currentOption)
    print(currentOption)
end)

local UITab = Window:NewTab("UI")

UITab:NewColorPicker("Example Color Picker", "This is a Color Picker", Color3.fromRGB(0,0,0), function(color)
    print(color)
    -- Second argument is the default color
end

UITab:NewKeybind("Example UI Toggle", "Keybind To Toggle The UI", Enum.KeyCode.F, function()
	Library:ToggleUI()
end)
