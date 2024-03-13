local Library = loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()

local PhantomForcesWindow = Library:NewWindow("Riley Hub (Blade Ball V2)")

local Bladeball = PhantomForcesWindow:NewSection("Blade Ball V2")

Bladeball:CreateToggle("Auto Parry", function()loadstring(game:HttpGet("https://raw.githubusercontent.com/Hosvile/Refinement/main/MC%3ABlade%20Ball%20Parry",true))()
  end)

Bladeball:CreateToggle("Auto Parry V2", function()getgenv().config = getgenv().config or {
    hit_time = 0.75, -- // recommended 0.25 to 0.75 \ --
    
    mode = 'Always', -- // Hold , Toggle , Always \ --
    deflect_type = 'Remote', -- // Key Press , Remote \ --
    notifications = true,
    keybind = Enum.KeyCode.V
}
    
loadstring(game:HttpGet("https://raw.githubusercontent.com/Hosvile/Refinement/main/MC%3ABlade%20Ball%20Parry%20V4.0.0",true))()
end)

Bladeball:CreateButton("Auto Parry V3", function()loadstring(game:HttpGet("https://raw.githubusercontent.com/1f0yt/community/main/autoparrybest"))()
end)

Bladeball:CreateToggle("Auto Spam V1", function()loadstring(game:HttpGet("https://raw.githubusercontent.com/DonGabrielle/AutoDetectV4/main/MainBalls"))()
end)

Bladeball:CreateToggle("Auto Spam V2", function()loadstring(game:HttpGet("https://pastebin.com/raw/t2391h1A"))()
end)

Bladeball:CreateToggle("Auto Detect V1", function ()loadstring(game:HttpGet(('https://pastebin.com/raw/HPNBFGSf'),true))()
end)

local Bladeball = PhantomForcesWindow:NewSection("Aim & Spam")

Bladeball:CreateButton("Hold To Spam",
function()getgenv().SpamSpeed = 9
loadstring(game:HttpGet("https://raw.githubusercontent.com/Hosvile/Refinement/main/MC%3ABlade%20Ball%20Spam",true))()
  end) 

Bladeball:CreateToggle("Aiming Mechanism", 
function()loadstring(game:HttpGet("https://raw.githubusercontent.com/Hosvile/Refinement/main/M%3ABlade%20Ball%20Mechanism",true))()
  end)

Bladeball:CreateToggle("Auto Clash", 
function()loadstring(game:HttpGet("https://pastebin.com/raw/t2391h1A"))()
 end)

Bladeball:CreateToggle("Auto Clash V2", function()loadstring(game:HttpGet("https://raw.githubusercontent.com/datshort1/datmodhub/main/AutoClash"))()
end)

local Bladeball = PhantomForcesWindow:NewSection("Auto Parry V3 & Other")

Bladeball:CreateButton("Auto Parry V3", function()loadstring(game:HttpGet("https://raw.githubusercontent.com/Code4Zaaa/X7Project/main/Game/AutoParryOnly",true))()
  end)
