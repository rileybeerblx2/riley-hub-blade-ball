local frame = script.Parent.Parent.Frame

script.Parent.MouseButton1Click:Connect(function()
 frame.Visible = true
end)

Close GUI LocalScript:
local frame = script.Parent.Parent

script.Parent.MouseButton1Click:Connect(function()
 frame.Visible = false
end)
