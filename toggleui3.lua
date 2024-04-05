local MainUI = script.Parent.Parent.Parent.MainFrame
local HideBTN = script.Parent.Parent.TextButton
local ShowBTN = script.Parent.Parent.Parent.ShowUI.TextButton
local ShowFrame = script.Parent.Parent.Parent.ShowUI


HideBTN.MouseButton1Click:Connect(function()
	MainUI:TweenPosition(UDim2.new(-0.340,0, 0.139, 0))
	ShowFrame:TweenPosition(UDim2.new(0, 0, 0.139, 0))
	
end)


ShowBTN.MouseButton1Click:Connect(function()
	MainUI:TweenPosition(UDim2.new(0.336,0, 0.139, 0))
	ShowFrame:TweenPosition(UDim2.new(-1, 0, 0.139, 0))
	
end)



-- Pos: 2 ShowUI
--{0, 0},{0.139, 0}

-- Pos: 1 ShowUI

-- {-1, 0},{0.139, 0}


--  Pos: 1 Main UI
-- {0.336, 0},{0.139, 0}


-- Pos: 2 Main UI
--{-0.4, 0},{0.139, 0}
