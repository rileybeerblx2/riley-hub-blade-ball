-- Brought to you by Mayavired on youtube!!
-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
Frame.BackgroundTransparency = 0.500
Frame.Position = UDim2.new(0.858712733, 0, 0.0237762257, 0)
Frame.Size = UDim2.new(0.129513338, 0, 0.227972031, 0)

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 1.000
TextButton.Size = UDim2.new(1, 0, 1, 0)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "ToggleUI"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 50.000
TextButton.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextStrokeTransparency = 0.000
TextButton.TextWrapped = true
TextButton.MouseButton1Down:Connect(function()
	game:GetService("VirtualInputManager"):SendKeyEvent(true, "K" , false , game)
end)

UITextSizeConstraint.Parent = TextButton
UITextSizeConstraint.MaxTextSize = 30


local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Riley Hub V3 (Blade Ball)",
   LoadingTitle = "Riley Hub V3",
   LoadingSubtitle = "Made By Riley",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Riley Hub V3"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Riley Hub V3 Key System",
      Subtitle = "Riley Hub V3 Key System",
      Note = "Key: RileyRay2024",
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"RileyRay2024"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local Tab = Window:CreateTab("Auto Parry", 4483362458) -- Title, Image

local Section = Tab:CreateSection("Auto Parry")

Rayfield:Notify({
   Title = "Riley Hub V3 Has Been Loaded!",
   Content = "Enjoy Using Riley Hub V3 USE IT AT YOUR RISK!",
   Duration = 6.5,
   Image = 4483362458,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay!",
         Callback = function()
         print("Thanks For Using Riley Hub V3")
      end
   },
},
})

local Toggle = Tab:CreateToggle({
   Name = "Auto Player V1",
   CurrentValue = false,
   Flag = "Auto Player V1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   loadstring(game:HttpGet("https://raw.githubusercontent.com/Hosvile/Refinement/main/MC%3ABlade%20Ball%20Parry",true))()
   -- The variable (Value) is a boolean on whether the toggle is true or false
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Auto Parry V2",
   CurrentValue = false,
   Flag = "Auto Parry V2", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
  getgenv().config = getgenv().config or {
    hit_time = 0.75, -- // recommended 0.25 to 0.75 \ --
    
    mode = 'Always', -- // Hold , Toggle , Always \ --
    deflect_type = 'Remote', -- // Key Press , Remote \ --
    notifications = true,
    keybind = Enum.KeyCode.V
}
    
loadstring(game:HttpGet("https://raw.githubusercontent.com/Hosvile/Refinement/main/MC%3ABlade%20Ball%20Parry%20V4.0.0",true))()
end)
   -- The variable (Value) is a boolean on whether the toggle is true or false
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Auto Parry V3",
   CurrentValue = false,
   Flag = "Auto Parry V3", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   -- Auto Parry Only!
local services = setmetatable({}, { __index = function(self, key)
    local service = game:GetService(key)
    self[key] = service
    return service
end })

local Players = services.Players
local Workspace = services.Workspace

local client = Players.LocalPlayer

local ballsFolder = Workspace.Balls

local Util = {}
do
    shared.Util = Util

    function Util.getBalls()
        local realBall, otherBall

        for i = 1, #ballsFolder:GetChildren() do
            local ball = ballsFolder:GetChildren()[i]
            if not ball:IsA("BasePart") then continue end

            local isRealBall = ball:GetAttribute("realBall")
            if isRealBall == nil then continue end

            if isRealBall then
                realBall = ball
            else
                otherBall = ball
            end

            if realBall and otherBall then break end
        end

        return realBall, otherBall
    end

    function Util.isHunting()
        local realBall = Util.getBalls()
        if not realBall then return false end

        local target = realBall:GetAttribute("target")
        if not target then return false end

        return target == client.Name
    end
end

ballsFolder.ChildAdded:Connect(function()
    print('------------------- Ball Spawned -------------------')

    task.wait(1.5)

    local realBall, fakeBall

    for i = 1, #ballsFolder:GetChildren() do
        local ball = ballsFolder:GetChildren()[i]
        if not ball:IsA("BasePart") then continue end

        local currentSpeed = ball.Velocity.Magnitude
        if currentSpeed == 0 then
            realBall = ball
        else
            fakeBall = ball
        end

        if realBall and fakeBall then break end
    end

    if realBall then
        local usedRemote = false
        local lastPosition = realBall.Position
        local lastVelocity = fakeBall.Velocity

        realBall:GetPropertyChangedSignal("Position"):Connect(function()
            if not Util.isHunting() then return end

            local playerPosition = client.Character and client.Character.PrimaryPart and client.Character.PrimaryPart.Position
            if not playerPosition then return end

            local currentSpeed = fakeBall and fakeBall.Velocity.Magnitude or 0

            local predictedPosition = lastPosition + lastVelocity
            local predictedDistance = (predictedPosition - playerPosition).Magnitude

            lastPosition = realBall.Position
            lastVelocity = realBall.Velocity

            local timeToReachPlayer = predictedDistance / (currentSpeed == 0 and 1 or currentSpeed)
            print(timeToReachPlayer)

            if timeToReachPlayer <= 0.3 and not usedRemote then
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9e9):WaitForChild("ParryButtonPress"):Fire()
                task.wait(0.1)
                usedRemote = true
            elseif timeToReachPlayer > 0.4 then
                usedRemote = false
            end
        end)
    end
end)
wait(1)
local NofiticationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/Nadir3709/Notification/main/NotificationHolder"))()
local Nofitication = loadstring(game:HttpGet("https://raw.githubusercontent.com/Nadir3709/Notification/main/Notification"))()

local function Notify(Title, Text, Time)
    Nofitication:Notify(
        {Title = Title, Description = Text},
        {OutlineColor = Color3.fromRGB(100, 100, 100),Time = Time or 5, Type = "default"} --[[default, option, image]]
    )
end
Notify("Notification", "Auto Parry Actived!")
   -- The variable (Value) is a boolean on whether the toggle is true or false
   end,
})

local Tab = Window:CreateTab("Auto Spam & Auto Detect", 4483362458) -- Title, Image

local Section = Tab:CreateSection("Auto Spam & Auto Detect")

local Toggle = Tab:CreateToggle({
   Name = "Auto Spam V1",
   CurrentValue = false,
   Flag = "Auto Spam V1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   loadstring(game:HttpGet("https://raw.githubusercontent.com/DonGabrielle/AutoDetectV4/main/MainBalls"))()
   -- The variable (Value) is a boolean on whether the toggle is true or false
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Auto Spam V2",
   CurrentValue = false,
   Flag = "Auto Spam V2", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   loadstring(game:HttpGet("https://pastebin.com/raw/t2391h1A"))()
   -- The variable (Value) is a boolean on whether the toggle is true or false
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Auto Detect V1",
   CurrentValue = false,
   Flag = "Auto Detect V1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   loadstring(game:HttpGet(('https://pastebin.com/raw/HPNBFGSf'),true))()
   -- The variable (Value) is a boolean on whether the toggle is true or false
   end,
})

local Tab = Window:CreateTab("Aim & Spam", 4483362458) -- Title, Image

local Section = Tab:CreateSection("Aim & Spam")

local Button = Tab:CreateButton({
   Name = "Hold To Spam",
   Callback = function()
  getgenv().SpamSpeed = 9
loadstring(game:HttpGet("https://raw.githubusercontent.com/Hosvile/Refinement/main/MC%3ABlade%20Ball%20Spam",true))()
   end,
})  

local Toggle = Tab:CreateToggle({
   Name = "Aiming Mechanism",
   CurrentValue = false,
   Flag = "Aiming Mechanism", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   loadstring(game:HttpGet("https://raw.githubusercontent.com/Hosvile/Refinement/main/M%3ABlade%20Ball%20Mechanism",true))()
   -- The variable (Value) is a boolean on whether the toggle is true or false
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Auto Clash",
   CurrentValue = false,
   Flag = "Auto Clash", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
 loadstring(game:HttpGet("https://pastebin.com/raw/t2391h1A"))()
   -- The variable (Value) is a boolean on whether the toggle is true or false
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Auto Clash V2",
   CurrentValue = false,
   Flag = "Auto Clash V2", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   loadstring(game:HttpGet("https://raw.githubusercontent.com/datshort1/datmodhub/main/AutoClash"))()
   -- The variable (Value) is a boolean on whether the toggle is true or false
   end,
})

local Tab = Window:CreateTab("Auto Parry V3 & V4", 4483362458) -- Title, Image

local Section = Tab:CreateSection("Auto Parry V3 & V4")

local Button = Tab:CreateButton({
   Name = "Auto Parry V3",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/Code4Zaaa/X7Project/main/Game/AutoParryOnly",true))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Auto Parry V4",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/1f0yt/community/main/autoparrybest"))()
   end,
})  