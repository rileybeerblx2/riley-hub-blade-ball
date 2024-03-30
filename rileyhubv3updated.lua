local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Riley Hub V3" .. Fluent.Version,
    SubTitle = "Created By Riley",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})

--Fluent provides Lucide Icons https://lucide.dev/icons/ for the tabs, icons are optional
local Tabs = {
    Main = Window:AddTab({ Title = "Auto Parry", Icon = "home" }),
}

Fluent:Notify({
        Title = "Riley Hub V3",
        Content = "Enjoy Using The Script!",
        SubContent = "riley", -- Optional
        Duration = 5 -- Set to nil to make the notification not disappear
    })

Tabs.Main:AddButton({
        Title = "Auto Parry",
        Description = "A Powerful Auto Parry",
        Callback = function()
            Window:Dialog({
                Title = "Execute Auto Parry?",
                Content = "Auto Parry (Forcefield)",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/rileybeerblx2/riley-hub-blade-ball/main/autoparryv5.lua"))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })

Tabs.Main:AddButton({
        Title = "Auto Parry V2",
        Description = "A Powerful Auto Parry",
        Callback = function()
            Window:Dialog({
                Title = "Execute Auto Parry V2?",
                Content = "Auto Parry V2",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/rileybeerblx2/riley-hub-blade-ball/main/autoparryv4.lua"))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })

--Fluent provides Lucide Icons https://lucide.dev/icons/ for the tabs, icons are optional
local Tabs = {
    Main = Window:AddTab({ Title = "Aim & Stuff", Icon = "moon" }),
}

Tabs.Main:AddButton({
        Title = "Auto Detect V1",
        Description = "Anti Bypassed So The Anticheat Wont Detect You",
        Callback = function()
            Window:Dialog({
                Title = "Execute Auto Detect V1?",
                Content = "Auto Detect",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            loadstring(game:HttpGet(('https://pastebin.com/raw/HPNBFGSf'),true))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })

Tabs.Main:AddButton({
        Title = "Auto Spam V2",
        Description = "It Will Spam The Ball",
        Callback = function()
            Window:Dialog({
                Title = "Execute Auto Spam V2?",
                Content = "Auto Spam V2",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            loadstring(game:HttpGet("https://pastebin.com/raw/t2391h1A"))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })

--Fluent provides Lucide Icons https://lucide.dev/icons/ for the tabs, icons are optional
local Tabs = {
    Main = Window:AddTab({ Title = "Aim & Clash", Icon = "cloud-moon" }),
}

Tabs.Main:AddButton({
        Title = "Aiming Mechanism",
        Description = "For Better Aim At The Ball",
        Callback = function()
            Window:Dialog({
                Title = "Execute Aiming Mechanism?",
                Content = "aim",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/Hosvile/Refinement/main/M%3ABlade%20Ball%20Mechanism",true))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })

Tabs.Main:AddButton({
        Title = "Auto Clash",
        Description = "When Standoff To Clash At Players",
        Callback = function()
            Window:Dialog({
                Title = "Execute Auto Clash?",
                Content = "clash",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            loadstring(game:HttpGet("https://pastebin.com/raw/t2391h1A"))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })

Tabs.Main:AddButton({
        Title = "Auto Clash V2",
        Description = "When Standoff To Clash At Players",
        Callback = function()
            Window:Dialog({
                Title = "Execute Auto Clash V2?",
                Content = "clash",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/datshort1/datmodhub/main/AutoClash"))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })

Fluent:Notify({
        Title = "Riley Hub V3",
        Content = "Made By RileyBeeRBLX",
        SubContent = "bladeball", -- Optional
        Duration = 5 -- Set to nil to make the notification not disappear
    })
