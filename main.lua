local main = Instance.new("ScreenGui", game.Players.LocalPlayer.PlayerGui)
local frame = Instance.new("Frame", main)
local editor = Instance.new("TextBox", frame)
local banner = Instance.new("Frame", frame)
local title = Instance.new("TextLabel", banner)
local execute = Instance.new("TextButton", frame)
local clear = Instance.new("TextButton", frame)

main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

frame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
frame.BackgroundTransparency = 0.5
frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
frame.BorderSizePixel = 0
frame.Position = UDim2.new(0, 0, 0.192, 0)
frame.Size = UDim2.new(0, 532, 0, 352)
frame.Archivable = true
frame.Draggable = true
frame.Active = true

editor.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
editor.BackgroundTransparency = 0.5
editor.BorderColor3 = Color3.fromRGB(0, 0, 0)
editor.BorderSizePixel = 0
editor.Position = UDim2.new(0.013, 0, 0.119, 0)
editor.Size = UDim2.new(0, 518, 0, 246)
editor.Font = Enum.Font.Code
editor.MultiLine = true
editor.Text = ""
editor.TextColor3 = Color3.fromRGB(255, 255, 255)
editor.TextSize = 16
editor.TextWrapped = true
editor.TextXAlignment = Enum.TextXAlignment.Left
editor.TextYAlignment = Enum.TextYAlignment.Top

banner.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
banner.BackgroundTransparency = 0.5
banner.BorderColor3 = Color3.fromRGB(0, 0, 0)
banner.BorderSizePixel = 0
banner.Size = UDim2.new(0, 532, 0, 34)

title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 1
title.BorderColor3 = Color3.fromRGB(0, 0, 0)
title.BorderSizePixel = 0
title.Position = UDim2.new(0.011, 0, 0, 0)
title.Size = UDim2.new(0, 77, 0, 34)
title.Font = Enum.Font.FredokaOne
title.Text = "MC8 v1.6"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextSize = 19

execute.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
execute.BackgroundTransparency = 0.5
execute.BorderColor3 = Color3.fromRGB(0, 0, 0)
execute.BorderSizePixel = 0
execute.Position = UDim2.new(0.013, 0, 0.859, 0)
execute.Size = UDim2.new(0, 148, 0, 36)
execute.Font = Enum.Font.FredokaOne
execute.Text = "Execute"
execute.TextColor3 = Color3.fromRGB(255, 255, 255)
execute.TextSize = 35

execute.MouseButton1Click:Connect(function()
	loadstring(editor.Text)()
end)

clear.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
clear.BackgroundTransparency = 0.5
clear.BorderColor3 = Color3.fromRGB(0, 0, 0)
clear.BorderSizePixel = 0
clear.Position = UDim2.new(0.708, 0, 0.859, 0)
clear.Size = UDim2.new(0, 148, 0, 36)
clear.Font = Enum.Font.FredokaOne
clear.Text = "Clear"
clear.TextColor3 = Color3.fromRGB(255, 255, 255)
clear.TextSize = 35

clear.MouseButton1Click:Connect(function()
	editor.Text = ""
end)
