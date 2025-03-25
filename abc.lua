--SB PUHLASH
if game.PlaceId == 6403373529 or game.PlaceId == 124596094333302 or game.PlaceId == 11520107397 or game.PlaceId == 9015014224 then

    local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

    local safeport = Instance.new("Part", Workspace)
    safeport.Name = "SafePort15"
    safeport.Size = Vector3.new(200, 10, 200) 
    safeport.Transparency = 0.5 
    safeport.CanCollide = true
    safeport.Anchored = true
    safeport.CFrame = CFrame.new(2457.6001, 229.365677, -4558.22363, -0.999834299, 0.000101457415, 0.0182033889, 3.8126462e-08, 0.999984503, -0.00557136489, -0.018203672, -0.00557044102, -0.999818802)
    local decal = Instance.new("Decal", safeport)
    decal.Face = "Top"
    decal.Texture = "rbxassetid://17047840821"

local Window = Rayfield:CreateWindow({
    Name = "SB HUB",
    Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
    LoadingTitle = "Loading Hub",
    LoadingSubtitle = "by Kykyryz0B",
    Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes
 
    DisableRayfieldPrompts = false,
    DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface
 
    ConfigurationSaving = {
       Enabled = false,
       FolderName = nil, -- Create a custom folder for your hub/game
       FileName = "Big Hub"
    },
 
    Discord = {
       Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
       Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
 
    KeySystem = true, -- Set this to true to use our key system
    KeySettings = {
       Title = "KEY",
       Subtitle = "Key System",
       Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
       FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
       SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = {"1488"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
})

local Tab = Window:CreateTab("Badge", 7733673987) -- Title, Image

local Section = Tab:CreateSection("Bob Farm")

local Button = Tab:CreateButton({
    Name = "Bob farm (50 clons)",
    Callback = function()
		if not game:IsLoaded() then
            game.Loaded:Wait()
       end
if  game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2125950512) then
    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Nice!",Text = "Congratulations, you got bob ;)" ,Duration = 1000, Icon = "rbxthumb://type=Asset&id=9649923610&w=150&h=150",Button1 = "OK"})
    fireclickdetector(game:GetService("Workspace").Lobby.bob.ClickDetector)
    return 
end
       local RepeatTime = 750000 -- Make the number smaller if your executor can't handle the lag 
       fireclickdetector(game:GetService("Workspace").Lobby.Replica.ClickDetector)
       wait(.5)
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Lobby.Teleport1.CFrame
       task.wait(.3)
       for i = 1, RepeatTime do
            game:GetService("ReplicatedStorage").Duplicate:FireServer(unpack({[1] = true}))
       end
       wait(1.4)
       --[[Credit to giang for serverhop script]]--
       local serverList = {}
       for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
           if v.playing and type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId then
               serverList[#serverList + 1] = v.id
           end
       end
       if #serverList > 0 then
           game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, serverList[math.random(1, #serverList)])
       end
    end,
})

local Button = Tab:CreateButton({
    Name = "Bob farm with time stop (7500 clons ~)",
    Callback = function()
        for i = 1, 75000 do
            game:GetService("ReplicatedStorage").Duplicate:FireServer(unpack({[1] = true}))
    end
end,
})

local Section = Tab:CreateSection("Farm Gloves")

getgenv().time = false

local Togletime = Tab:CreateToggle({
    Name = "Reset time",
    Default = false
    Callback = function(Value)
        if Value then
            getgenv().time = true
        else
            getgenv().time = false
        end
    end,
})

local ParagraphTime = Tab:CreateParagraph({Title = "Time:", Content = "0"})

time1 = 0

local Button = Tab:CreateButton({
    Name = "Fish Farm",
    Callback = function()
        if not game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2130032297) then
            if game:GetService("Players").LocalPlayer.leaderstats.Glove.Value == "ZZZZZZZ" then
                if game.Players.LocalPlayer.Character:FindFirstChild("entered") then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2461.50464, 243.291565, -4546.78467, 0.966821849, -0.00649187574, 0.255369186, -1.00234743e-09, 0.999677002, 0.0254133251, -0.255451679, -0.0245701578, 0.966509581)
                    game:GetService("ReplicatedStorage").ZZZZZZZSleep:FireServer()
                    for i = 1,3600 do
                        time1 = time1 + 1
                        ParagraphTime:Set({Title = "Time:", Content = time1})
                        if getgenv().time == true then
                            Togletime:Set(false)
                            getgenv().time = false
                            time1 = 0
                        end
                    wait(1)
                    end
                else
                    Rayfield:Notify({
                        Title = "Error!",
                        Content = "Enter arena ⛔️",
                        Duration = 6.5,
                        Image = 7733658504,
                    })
                end
            else
                Rayfield:Notify({
                    Title = "Error!",
                    Content = "Need ZZZZZ glove ⛔️",
                    Duration = 6.5,
                    Image = 7733658504,
                })
            end
        else
            Rayfield:Notify({
                Title = "Error!",
                Content = "You have this glove ⛔️",
                Duration = 6.5,
                Image = 7733658504,
            })
        end
    end,
 })

 local Button = Tab:CreateButton({
    Name = "Voody Farm",
    Callback = function()
        if not game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2130032297) then
            if game:GetService("Players").LocalPlayer.leaderstats.Glove.Value == "Ghost" then
                if game.Players.LocalPlayer.Character:FindFirstChild("entered") then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2461.50464, 243.291565, -4546.78467, 0.966821849, -0.00649187574, 0.255369186, -1.00234743e-09, 0.999677002, 0.0254133251, -0.255451679, -0.0245701578, 0.966509581)
                    game.ReplicatedStorage.Ghostinvisibilityactivated:FireServer()
                    for i = 1,3600 do
                        time1 = time1 + 1
                        ParagraphTime:Set({Title = "Time:", Content = time1})
                        if getgenv().time == true then
                            Togletime:Set(false)
                            getgenv().time = false
                            time1 = 0
                        end
                    wait(1)
                    end
                else
                    Rayfield:Notify({
                        Title = "Error!",
                        Content = "Enter arena ⛔️",
                        Duration = 6.5,
                        Image = 7733658504,
                    })
                end
            else
                Rayfield:Notify({
                    Title = "Error!",
                    Content = "Need Ghoust glove ⛔️",
                    Duration = 6.5,
                    Image = 7733658504,
                })
            end
        else
            Rayfield:Notify({
                Title = "Error!",
                Content = "You have this glove ⛔️",
                Duration = 6.5,
                Image = 7733658504,
            })
        end
    end,
 })

 local Button = Tab:CreateButton({
    Name = "Voody + Fish Farm",
    Callback = function()
            if game:GetService("Players").LocalPlayer.leaderstats.Glove.Value == "Ghost" then
                if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil then
                    game.ReplicatedStorage.Ghostinvisibilityactivated:FireServer()
                    fireclickdetector(workspace.Lobby["ZZZZZZZ"].ClickDetector)
                    wait(0.2)
                    repeat task.wait() until game.Players.LocalPlayer.Character
                    if not game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                    repeat task.wait()
                    firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
                    firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)
                    until game.Players.LocalPlayer.Character:FindFirstChild("entered")
                    end
                    wait(0.2)
                    wait(0.2)
                    game:GetService("ReplicatedStorage").ZZZZZZZSleep:FireServer()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2461.50464, 243.291565, -4546.78467, 0.966821849, -0.00649187574, 0.255369186, -1.00234743e-09, 0.999677002, 0.0254133251, -0.255451679, -0.0245701578, 0.966509581)
                    for i = 1,3600 do
                        time1 = time1 + 1
                        ParagraphTime:Set({Title = "Time:", Content = time1})
                        if getgenv().time == true then
                            Togletime:Set(false)
                            getgenv().time = false
                            time1 = 0
                        end
                    wait(1)
                    end
                else
                    Rayfield:Notify({
                        Title = "Error!",
                        Content = "Dont enter arena ⛔️",
                        Duration = 6.5,
                        Image = 7733658504,
                    })
                end
            else
                Rayfield:Notify({
                    Title = "Error!",
                    Content = "Need Ghoust glove ⛔️",
                    Duration = 6.5,
                    Image = 7733658504,
                })
            end
    end,
 })

 local Button = Tab:CreateButton({
    Name = "SafePort",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2461.50464, 243.291565, -4546.78467, 0.966821849, -0.00649187574, 0.255369186, -1.00234743e-09, 0.999677002, 0.0254133251, -0.255451679, -0.0245701578, 0.966509581)
    end,
 })

 Tab:CreateToggle({
    Name = "Brick Farm",
    Default = false,
    Callback = function(Value)
        getgenv().brick = Value
        while getgenv().brick do
            game:GetService("ReplicatedStorage").lbrick:FireServer()
            game:GetService("Players").LocalPlayer.PlayerGui.BRICKCOUNT.ImageLabel.TextLabel.Text = game:GetService("Players").LocalPlayer.PlayerGui.BRICKCOUNT.ImageLabel.TextLabel.Text + 1
            wait(1.5)
            end
        end,
    })

local Section = Tab:CreateSection("Frostbite")

local Button = Tab:CreateButton({
    Name = "Frosbite",
    Callback = function()
        if not game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 1286358044443937) then
            local teleportFunc = queueonteleport or queue_on_teleport or syn and syn.queue_on_teleport
            if teleportFunc then
                teleportFunc([[
                    if not game:IsLoaded() then
                        game.Loaded:Wait()
                    end
                    repeat wait() until game.Players.LocalPlayer
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-554, 177, 56)
                    wait(0.7)
                    for i,v in ipairs(game:GetService("Workspace"):GetDescendants()) do
                        if v.ClassName == "ProximityPrompt" then
                            v.HoldDuration = 0
                        end
                    end
                    wait(0.5)
                    for i,v in ipairs(game:GetService("Workspace"):GetDescendants()) do
                        if v.ClassName == "ProximityPrompt" then
                            fireproximityprompt(v)
                        end
                    end
                ]])
            end
            game:GetService("TeleportService"):Teleport(17290438723)
        else
            Rayfield:Notify({
                Title = "Error!",
                Content = "You have this glove ⛔️",
                Duration = 6.5,
                Image = 7733658504,
            })
        end
    end,
}) 

local Section = Tab:CreateSection("Psycho")

local Button = Tab:CreateButton({
    Name = "psycho",
    Callback = function()
        if not game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2145165421) then
            if game.Players.LocalPlayer.Character:FindFirstChild("enteredRepressedMems") then
                OGL = game.Workspace.RepressedMemoriesMap.Psychokinesis.Triggers.StartPsychoEvent.CFrame
                OGL1 = game.Workspace.RepressedMemoriesMap.Psychokinesis.Triggers.StopPsychoEvent.CFrame
                wait(0.5)
                game.Workspace.RepressedMemoriesMap.Psychokinesis.Triggers.StartPsychoEvent.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                wait(2.5)
                game.Workspace.RepressedMemoriesMap.Psychokinesis.Triggers.StartPsychoEvent.CFrame = OGL
                wait(2.5)
                game.Workspace.RepressedMemoriesMap.Psychokinesis.Triggers.StopPsychoEvent.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                wait(2.5)
                game.Workspace.RepressedMemoriesMap.Psychokinesis.Triggers.StopPsychoEvent.CFrame = OGL1
                wait(2.5)
                fireclickdetector(workspace.RepressedMemoriesMap.Psychokinesis.Triggers.Psycho.ClickDetector)
            end
        else
            Rayfield:Notify({
                Title = "Error!",
                Content = "You have this glove ⛔️",
                Duration = 6.5,
                Image = 7733658504,
            })
        end
    end,
})

local Section = Tab:CreateSection("Retro")

local Button = Tab:CreateButton({
    Name = "Retro",
    Callback = function()
        if not game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2149637240) then
            if workspace.Retro.Map.RetroObbyMap then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.FinishDoor_Retro.Part.CFrame
            else
                Rayfield:Notify({
                    Title = "Error!",
                    Content = "You aint parkur ⛔️",
                    Duration = 6.5,
                    Image = 7733658504,
                })
            end
        else
            Rayfield:Notify({
                Title = "Error!",
                Content = "You have this glove ⛔️",
                Duration = 6.5,
                Image = 7733658504,
            })
        end
    end,
})

local Section = Tab:CreateSection("Admin")

local Button = Tab:CreateButton({
    Name = "Admin",
    Callback = function()
        if not game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 1840188608156642) then
            if game:GetService("ReplicatedStorage").Assets.Retro then
                game.ReplicatedStorage.Assets.Retro.Parent = workspace
                wait(1.5)
                fireclickdetector(workspace.Retro.Map.RetroObbyMap:GetChildren()[5].StaffApp.Button.ClickDetector)
            else
                fireclickdetector(workspace.Retro.Map.RetroObbyMap:GetChildren()[5].StaffApp.Button.ClickDetector)
            end
        else
            Rayfield:Notify({
                Title = "Error!",
                Content = "You have this glove ⛔️",
                Duration = 6.5,
                Image = 7733658504,
            })
        end
    end,
})

local Section = Tab:CreateSection("Mouse Glove")

local Button = Tab:CreateButton({
    Name = "Mouse",
    Callback = function()
        if not game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2146300368310575) then
            if game:GetService("Players").LocalPlayer.leaderstats.Glove.Value == "el gato" then
                if game.Players.LocalPlayer.Character:FindFirstChild("entered") then
                    fireclickdetector(workspace.Cheese.ClickDetector)
                else
                    Rayfield:Notify({
                        Title = "Error!",
                        Content = "Enter arena ⛔️",
                        Duration = 6.5,
                        Image = 7733658504,
                    })
                end
            else
                Rayfield:Notify({
                    Title = "Error!",
                    Content = "Need el gato glove ⛔️",
                    Duration = 6.5,
                    Image = 7733658504,
                })
            end
        else
            Rayfield:Notify({
                Title = "Error!",
                Content = "You have this glove ⛔️",
                Duration = 6.5,
                Image = 7733658504,
            })
        end
    end,
})

local Section = Tab:CreateSection("TP Brazil + Brazil badge")

local Button = Tab:CreateButton({
    Name = "Brazil",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Lobby.brazil.portal.CFrame
    end,
})

local Section = Tab:CreateSection("Ice Skate")

local Button = Tab:CreateButton({
    Name = "Ice Skate",
    Callback = function()
        if not game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2906002612987222) then
            local args = {
                [1] = "Freeze"
            }
            
            game:GetService("ReplicatedStorage").IceSkate:FireServer(unpack(args))
        else 
            Rayfield:Notify({
                Title = "Error!",
                Content = "You have this glove ⛔️",
                Duration = 6.5,
                Image = 7733658504,
            })
        end
    end,
})

local Section = Tab:CreateSection("Maze Glove")

local Button = Tab:CreateButton({
    Name = "Elude",
    Callback = function()
        if not game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2129871858) then
            local teleportFunc = queueonteleport or queue_on_teleport or syn and syn.queue_on_teleport
            if teleportFunc then
                teleportFunc([[
                    if not game:IsLoaded() then
                        game.Loaded:Wait()
                    end
                    repeat wait() until game.Players.LocalPlayer
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-193.290787, 7.39999914, -130.307114, 0.454088956, 1.82432505e-08, 0.890956342, -2.14201332e-08, 1, -9.55894652e-09, -0.890956342, -1.4743792e-08, 0.454088956)
                    wait(1)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(84.8454437, 7.39999914, -201.827698, 0.694604456, -5.9176017e-08, 0.719391882, 4.9516661e-08, 1, 3.44478792e-08, -0.719391882, 1.16942349e-08, 0.694604456)
                    wait(1)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(218.528198, 7.39999914, 83.4171371, 0.655885577, 5.49275381e-09, 0.754860282, -1.8204565e-08, 1, 8.54112692e-09, -0.754860282, -1.9343906e-08, 0.655885577)
                    wait(1)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(104.568184, 10.5492659, 194.721115, 0.990249932, -0.136891961, 0.0258003082, -0.0024311184, 0.168200076, 0.9857499, -0.139280856, -0.976201475, 0.166227311)
                    wait(2)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-502.335632, 14.2279472, -179.596512, 1, 0, 0, 0, -0.965929747, 0.258804798, 0, -0.258804798, -0.965929747)
                ]])
            end
            game:GetService("TeleportService"):Teleport(11828384869)
        else 
            Rayfield:Notify({
                Title = "Error!",
                Content = "You have this glove ⛔️",
                Duration = 6.5,
                Image = 7733658504,
            })
        end
    end,
})

local Button = Tab:CreateButton({
    Name = "Counter",
    Callback = function()
        if not game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2146130728) then
            local teleportFunc = queueonteleport or queue_on_teleport or syn and syn.queue_on_teleport
            if teleportFunc then
                teleportFunc([[
                    if not game:IsLoaded() then
                        game.Loaded:Wait()
                    end
                    repeat wait() until game.Players.LocalPlayer
                    wait(3)
                    Time = 121
                    fireclickdetector(game.Workspace.CounterLever.ClickDetector)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,100,0)
                    wait(0.2)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
                    for i = 1,Time do
                        Time = Time - 1
                        game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Error",Text = "You wait time [ "..Time.." ] receive.",Icon = "rbxassetid://7733658504",Duration = 1})
                    wait(1)
                    end
                    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
                    wait(0.5)
                    for i,v in pairs(workspace.Maze:GetDescendants()) do
                        if v:IsA("ClickDetector") then
                            fireclickdetector(v)
                        end
                    end
                ]])
            end
            game:GetService("TeleportService"):Teleport(11828384869)
        else 
            Rayfield:Notify({
                Title = "Error!",
                Content = "You have this glove ⛔️",
                Duration = 6.5,
                Image = 7733658504,
            })
        end
    end,
})

local Button = Tab:CreateButton({
    Name = "Counter + Elude",
    Callback = function()
        local teleportFunc = queueonteleport or queue_on_teleport or syn and syn.queue_on_teleport
        if teleportFunc then
            teleportFunc([[
                if not game:IsLoaded() then
                    game.Loaded:Wait()
                end
                repeat wait() until game.Players.LocalPlayer
                wait(3)
                Time = 121
                fireclickdetector(game.Workspace.CounterLever.ClickDetector)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,100,0)
                wait(0.2)
                game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
                for i = 1,Time do
                    Time = Time - 1
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Error",Text = "You wait time [ "..Time.." ] receive.",Icon = "rbxassetid://7733658504",Duration = 1})
                wait(1)
                end
                game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
                wait(0.5)
                firetouchinterest(game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart"), game.Workspace.Ruins.Elude.Glove, 0)
                firetouchinterest(game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart"), game.Workspace.Ruins.Elude.Glove, 1)
                for i,v in pairs(workspace.Maze:GetDescendants()) do
                    if v:IsA("ClickDetector") then
                        fireclickdetector(v)
                    end
                end
            ]])
        end
        game:GetService("TeleportService"):Teleport(11828384869)
    end,
})

elseif game.PlaceId == 7234087065 then 

    local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

    local Window = Rayfield:CreateWindow({
        Name = "Brazil HUB",
        Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
        LoadingTitle = "Loading Hub",
        LoadingSubtitle = "by Kykyryz0B",
        Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes
     
        DisableRayfieldPrompts = false,
        DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface
     
        ConfigurationSaving = {
           Enabled = false,
           FolderName = nil, -- Create a custom folder for your hub/game
           FileName = "Big Hub"
        },
     
        Discord = {
           Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
           Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
           RememberJoins = true -- Set this to false to make them join the discord every time they load it up
        },
     
        KeySystem = true, -- Set this to true to use our key system
        KeySettings = {
           Title = "Key",
           Subtitle = "Key System",
           Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
           FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
           SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
           GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
           Key = {"1488"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
        }
    })

local Tab = Window:CreateTab("Badge", 7733673987)

local Section = Tab:CreateSection("Boxer")

local Button = Tab:CreateButton({
    Name = "Boxer",
    Callback = function()
        if not game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 1223765330375569) then
            OGL1 = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            wait(1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4235.0835, 3505.24976, 266.992554, -0.0663542375, -3.06375227e-08, 0.997796118, -4.0891809e-08, 1, 2.79858554e-08, -0.997796118, -3.89447052e-08, -0.0663542375)
            wait(0.5)
            fireclickdetector(workspace.BoxingGloves.ClickDetector)
            wait(1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OGL1
        else 
            Rayfield:Notify({
                Title = "Error!",
                Content = "You have this glove ⛔️",
                Duration = 6.5,
                Image = 7733658504,
            })
        end
    end,
})

local Section = Tab:CreateSection("Untitled Tag Glove")

local Button = Tab:CreateButton({
    Name = "Untitled Tag Glove",
    Callback = function()
        if not game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2223110832777636) then
            game:GetService("TeleportService"):Teleport(115782629143468)
        else 
            Rayfield:Notify({
                Title = "Error!",
                Content = "You have this glove ⛔️",
                Duration = 6.5,
                Image = 7733658504,
            })
        end
    end,
})

local Section = Tab:CreateSection("Fan Glove Elements")

local Button = Tab:CreateButton({
    Name = "Teleport TO NPC Clown",
    Callback = function()
        if not game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2657379023348335) then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(206.991394, 6.67118549, 222.100616, 0.999987483, -8.80418725e-08, 0.00500492798, 8.80245423e-08, 1, 3.68343533e-09, -0.00500492798, -3.24283289e-09, 0.999987483)
        else 
            Rayfield:Notify({
                Title = "Error!",
                Content = "You have this glove ⛔️",
                Duration = 6.5,
                Image = 7733658504,
            })
        end
    end,
})

local Button = Tab:CreateButton({
    Name = "Teleport TO Key",
    Callback = function()
        if not game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2657379023348335) then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(244.888947, -265.000031, -375.826843, 0.754615486, -1.01113748e-08, 0.656167269, 3.30820094e-10, 1, 1.50292969e-08, -0.656167269, -1.11242668e-08, 0.754615486)
        else 
            Rayfield:Notify({
                Title = "Error!",
                Content = "You have this glove ⛔️",
                Duration = 6.5,
                Image = 7733658504,
            })
        end
    end,
})

local Button = Tab:CreateButton({
    Name = "Teleport TO DOG",
    Callback = function()
        if not game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2657379023348335) then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-226.736252, 2.99999976, 213.590347, -0.913860381, -6.91064939e-09, 0.406028628, -8.42723136e-09, 1, -1.94731031e-09, -0.406028628, -5.20126697e-09, -0.913860381)
        else 
            Rayfield:Notify({
                Title = "Error!",
                Content = "You have this glove ⛔️",
                Duration = 6.5,
                Image = 7733658504,
            })
        end
    end,
})

local Section = Tab:CreateSection("Metaverse Glove Element")

local Button = Tab:CreateButton({
    Name = "Teleport TO NPC",
    Callback = function()
        if not game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 1060832194529561) then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-509.50769, 16.0967007, 157.790527, -0.965311885, 1.06926187e-07, -0.261099488, 9.8137356e-08, 1, 4.66987871e-08, 0.261099488, 1.94552836e-08, -0.965311885)
        else 
            Rayfield:Notify({
                Title = "Error!",
                Content = "You have this glove ⛔️",
                Duration = 6.5,
                Image = 7733658504,
            })
        end
    end,
})

local Button = Tab:CreateButton({
    Name = "Teleport TO Orb",
    Callback = function()
        if not game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 1060832194529561) then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(250.436249, 93.9998093, -453.417572, 0.996931732, 1.13179723e-08, 0.0782756507, -6.00491212e-09, 1, -6.81116674e-08, -0.0782756507, 6.74326444e-08, 0.996931732)
        else 
            Rayfield:Notify({
                Title = "Error!",
                Content = "You have this glove ⛔️",
                Duration = 6.5,
                Image = 7733658504,
            })
        end
    end,
})

elseif game.PlaceId == 115782629143468 then

    local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

    local Window = Rayfield:CreateWindow({
        Name = "TOH HUB",
        Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
        LoadingTitle = "Loading Hub",
        LoadingSubtitle = "by Kykyryz0B",
        Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes
     
        DisableRayfieldPrompts = false,
        DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface
     
        ConfigurationSaving = {
           Enabled = false,
           FolderName = nil, -- Create a custom folder for your hub/game
           FileName = "Big Hub"
        },
     
        Discord = {
           Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
           Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
           RememberJoins = true -- Set this to false to make them join the discord every time they load it up
        },
     
        KeySystem = true, -- Set this to true to use our key system
        KeySettings = {
           Title = "Key",
           Subtitle = "Key System",
           Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
           FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
           SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
           GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
           Key = {"1488"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
        }
    })

    local Tab = Window:CreateTab("Badge", 7733673987)

local Section = Tab:CreateSection("Get glove")

local Button = Tab:CreateButton({
    Name = "Get glove",
    Callback = function()
        if not game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2223110832777636) then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(31, 188, -1.90734863e-06, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        else 
            Rayfield:Notify({
                Title = "Error!",
                Content = "You have this glove ⛔️",
                Duration = 6.5,
                Image = 7733658504,
            })
        end
    end,
})

elseif game.PlaceId == 13833961666 then

    local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

    local Window = Rayfield:CreateWindow({
        Name = "Bob boss fight HUB",
        Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
        LoadingTitle = "Loading Hub",
        LoadingSubtitle = "by Kykyryz0B",
        Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes
     
        DisableRayfieldPrompts = false,
        DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface
     
        ConfigurationSaving = {
           Enabled = false,
           FolderName = nil, -- Create a custom folder for your hub/game
           FileName = "Big Hub"
        },
     
        Discord = {
           Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
           Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
           RememberJoins = true -- Set this to false to make them join the discord every time they load it up
        },
     
        KeySystem = true, -- Set this to true to use our key system
        KeySettings = {
           Title = "Key",
           Subtitle = "Key System",
           Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
           FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
           SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
           GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
           Key = {"1488"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
        }
    })

    local Tab = Window:CreateTab("Combat", 1)

    local Toggle = Tab:CreateToggle({
        Name = "AUTO SLAP BIG BOB ASS",
        CurrentValue = false,
        Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            getgenv().autoslapboba = Value
            while getgenv().autoslapboba do
                workspace:WaitForChild("bobBoss"):WaitForChild("DamageEvent"):FireServer()
            task.wait(0.1)
            end
        end,
     })

     local Toggle = Tab:CreateToggle({
        Name = "AUTO SLAP MINI BOBS maybe players",
        CurrentValue = false,
        Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            getgenv().slapminiboba = Value
            while getgenv().slapminiboba do
                    if game.Players.LocalPlayer.leaderstats.Glove.Value == "Reaper" then
                        for _, v in ipairs(workspace:GetDescendants()) do
                            if v.Name == "BobClone" then
                                game:GetService("ReplicatedStorage").ReaperHit:FireServer(v:FindFirstChild("HumanoidRootPart"))
                            end
                        end
                    elseif game.Players.LocalPlayer.leaderstats.Glove.Value == "Killstreak" then
                        for _, v in ipairs(workspace:GetDescendants()) do
                            if v.Name == "BobClone" then
                                game:GetService("ReplicatedStorage").KSHit:FireServer(v:FindFirstChild("HumanoidRootPart"))
                            end
                        end
                    elseif game.Players.LocalPlayer.leaderstats.Glove.Value == "God's Hand" then
                        for _, v in ipairs(workspace:GetDescendants()) do
                            if v.Name == "BobClone" then
                                game:GetService("ReplicatedStorage").Godshand:FireServer(v:FindFirstChild("HumanoidRootPart"))
                            end
                        end
                    elseif game.Players.LocalPlayer.leaderstats.Glove.Value == "Tycoon" then
                        for _, v in ipairs(workspace:GetDescendants()) do
                            if v.Name == "BobClone" then
                                game:GetService("ReplicatedStorage").GeneralHit:FireServer(v:FindFirstChild("HumanoidRootPart"))
                            end
                        end
                    elseif game.Players.LocalPlayer.leaderstats.Glove.Value == "Default" then
                        for _, v in ipairs(game.Players:GetPlayers()) do
                            if v ~= game.Players.LocalPlayer and v.Character then
                                if v.Character:FindFirstChild("Ragdolled").Value == false then
                                    game.GetService("ReplicatedStorage").b:FireServer(v.Character:FindFirstChild("HumanoidRootPart"))
                                end
                            end
                        end
                    end
            task.wait(0.25)
            end
        end,
     })

     local Button = Tab:CreateButton({
        Name = "1 slap mini bobs",
        Callback = function()
            if game.Players.LocalPlayer.leaderstats.Glove.Value == "Reaper" then
                for _, v in ipairs(workspace:GetDescendants()) do
                    if v.Name == "BobClone" then
                        game:GetService("ReplicatedStorage").ReaperHit:FireServer(v:FindFirstChild("HumanoidRootPart"))
                    end
                end
            elseif game.Players.LocalPlayer.leaderstats.Glove.Value == "Killstreak" then
                for _, v in ipairs(workspace:GetDescendants()) do
                    if v.Name == "BobClone" then
                        game:GetService("ReplicatedStorage").KSHit:FireServer(v:FindFirstChild("HumanoidRootPart"))
                    end
                end
            elseif game.Players.LocalPlayer.leaderstats.Glove.Value == "God's Hand" then
                for _, v in ipairs(workspace:GetDescendants()) do
                    if v.Name == "BobClone" then
                        game:GetService("ReplicatedStorage").Godshand:FireServer(v:FindFirstChild("HumanoidRootPart"))
                    end
                end
            elseif game.Players.LocalPlayer.leaderstats.Glove.Value == "Tycoon" then
                for _, v in ipairs(workspace:GetDescendants()) do
                    if v.Name == "BobClone" then
                        game:GetService("ReplicatedStorage").GeneralHit:FireServer(v:FindFirstChild("HumanoidRootPart"))
                    end
                end
            end
        end,
    })

     local Tab = Window:CreateTab("Misc", 1)

     local Toggle = Tab:CreateToggle({
        Name = "Auto tycoon",
        CurrentValue = false,
        Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            getgenv().autotyconbobboossing = Value
            while getgenv().autotyconbobboossing do
                    for i,v in pairs(workspace:GetDescendants()) do
                        if v.Name == "Click" and v:FindFirstChild("ClickDetector") then
                            fireclickdetector(v.ClickDetector)
                        end
                    end
            task.wait(0.2)
            end
        end,
     })

     local Tab = Window:CreateTab("Antis", 1)

     local Toggle = Tab:CreateToggle({
        Name = "Anti void",
        CurrentValue = false,
        Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            if Value then
                local block = Instance.new("Part")
                block.Name = "Anti Void Bob"
                block.Size = Vector3.new(2500, 16, 1140) 
                block.Transparency = 0.4
                block.CanCollide = true 
                block.Anchored = true 
                block.Position = Vector3.new(0, -8, -43, 1, 0, 0, 0, 1, 0, 0, 0, 1)
                block.Parent = game.Workspace
            else
                local block = game.Workspace:FindFirstChild("Anti Void Bob")
                if block then
                    block:Destroy()
                end
            end
        end,
     })

     local Toggle = Tab:CreateToggle({
        Name = "Anti RIngs",
        CurrentValue = false,
        Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            getgenv().antiringsbob = Value
            while getgenv().antiringsbob do
                    local ring = game.Workspace:FindFirstChild("Ring")
                    if ring then
                        ring:Destroy()
                    end
            task.wait(0.2)
            end    
        end,
     })

     local Toggle = Tab:CreateToggle({
        Name = "Anti Ragdoll",
        CurrentValue = false,
        Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            getgenv().antiragdoldr = Value
            if getgenv().antiragdoldr == false then
                game.Players.LocalPlayer.Character.Torso.Anchored = false
            end
            while getgenv().antiragdoldr do
                if game.Players.LocalPlayer.Character:WaitForChild("Ragdolled").Value == true then
                    repeat task.wait() game.Players.LocalPlayer.Character.Torso.Anchored = true
                    until game.Players.LocalPlayer.Character:WaitForChild("Ragdolled").Value == false
                    game.Players.LocalPlayer.Character.Torso.Anchored = false
                end
            task.wait()
            end
        end,
     })

     local Toggle = Tab:CreateToggle({
        Name = "Remove small meteors",
        CurrentValue = false,
        Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            _G.AutoRemoveSmallMeteors = Value
            while _G.AutoRemoveSmallMeteors do
                if game:GetService("Players").LocalPlayer.PlayerScripts.VFXListener:FindFirstChild("SmallMeteorVFX") then
                    game:GetService("Players").LocalPlayer.PlayerScripts.VFXListener.SmallMeteorVFX:Destroy()
                end
            task.wait()
            end
        end,
     })

     local Toggle = Tab:CreateToggle({
        Name = "Remove big meteor",
        CurrentValue = false,
        Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            _G.AutoRemoveBigMeteors = Value
            while _G.AutoRemoveBigMeteors do
                if game:GetService("Players").LocalPlayer.PlayerScripts.VFXListener:FindFirstChild("BigExplosion") then
                    game:GetService("Players").LocalPlayer.PlayerScripts.VFXListener.BigExplosion:Destroy()
                end
            task.wait()
            end
        end,
     })

     local Toggle = Tab:CreateToggle({
        Name = "ANTI VFX (SMALL AND BIG METEORS)",
        CurrentValue = false,
        Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            if Value then
                game.Players.LocalPlayer.PlayerScripts:FindFirstChild("VFXListener").Parent = game.ReplicatedStorage
            else
                game.ReplicatedStorage.VFXListener.Parent = game.Players.LocalPlayer.PlayerScripts
            end
        end,
     })

    elseif game.PlaceId == 18550498098 then

        local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

    local safeport = Instance.new("Part", Workspace)
    safeport.Name = "SafePort15"
    safeport.Size = Vector3.new(2000, 10, 2000) 
    safeport.Transparency = 0.5 
    safeport.CanCollide = true
    safeport.Anchored = true
    safeport.CFrame = CFrame.new(595, 120, -330)

    local Window = Rayfield:CreateWindow({
        Name = "Guid boss HUB",
        Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
        LoadingTitle = "Loading Hub",
        LoadingSubtitle = "by Kykyryz0B",
        Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes
     
        DisableRayfieldPrompts = false,
        DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface
     
        ConfigurationSaving = {
           Enabled = false,
           FolderName = nil, -- Create a custom folder for your hub/game
           FileName = "Big Hub"
        },
     
        Discord = {
           Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
           Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
           RememberJoins = true -- Set this to false to make them join the discord every time they load it up
        },
     
        KeySystem = true, -- Set this to true to use our key system
        KeySettings = {
           Title = "Key",
           Subtitle = "Key System",
           Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
           FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
           SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
           GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
           Key = {"1488"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
        }
    })

    local Tab = Window:CreateTab("Combat", "rewind")

    local Section = Tab:CreateSection("Auto Slap")

    local Toggle = Tab:CreateToggle({
        Name = "Auto Slap Guied",
        CurrentValue = false,
        Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            getgenv().autoslapguide = Value
            while getgenv().autoslapguide do
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Lantern") then 
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.Lantern) 
                end
                if game.Players.LocalPlayer.Character:FindFirstChild("Lantern") then 
                    ----
                end
                for i,v in pairs(game.workspace:GetChildren()) do
                    if v.Name == "GuideNPC" and v:FindFirstChild("HumanoidRootPart") then
                        game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):Activate()
                        local args = {
                            [1] = "Hit",
                            [2] = v.HumanoidRootPart
                        }
                
                        game.Players.LocalPlayer.Character.Lantern.Network:FireServer(unpack(args))
                    end
                end
            task.wait()
            end
        end,
    })

    local Toggle = Tab:CreateToggle({
        Name = "Auto Slap Replica",
        CurrentValue = false,
        Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            getgenv().autoslapreplicanpc = Value
            while getgenv().autoslapreplicanpc do
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Lantern") then 
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.Lantern) 
                end
                if game.Players.LocalPlayer.Character:FindFirstChild("Lantern") then 
                    ----
                end
                for i,v in pairs(game.workspace:GetChildren()) do
                    if v.Name == "ReplicaNPC" and v:FindFirstChild("HumanoidRootPart") then
                        game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):Activate()
                        local args = {
                            [1] = "Hit",
                            [2] = v.HumanoidRootPart
                        }
                    
                        game.Players.LocalPlayer.Character.Lantern.Network:FireServer(unpack(args))
                    end
                end
            task.wait()
            end
        end,
     })

     local Toggle = Tab:CreateToggle({
        Name = "Auto Slap Track",
        CurrentValue = false,
        Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            getgenv().autoslaptrack = Value
            while getgenv().autoslaptrack do
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Lantern") then 
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.Lantern) 
                end
                if game.Players.LocalPlayer.Character:FindFirstChild("Lantern") then 
                    ----
                end
                for i,v in pairs(game.workspace:GetChildren()) do
                    if v.Name == "TrackGloveMissile" then
                        game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):Activate()
                        local args = {
                            [1] = "Hit",
                            [2] = v
                        }
                
                        game.Players.LocalPlayer.Character.Lantern.Network:FireServer(unpack(args))
                    end
                end
            task.wait()
            end
        end,
     })

     local Toggle = Tab:CreateToggle({
        Name = "Auto Slap Golem",
        CurrentValue = false,
        Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            getgenv().autoslapgolem = Value
            while getgenv().autoslapgolem do
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Lantern") then 
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.Lantern) 
                end
                if game.Players.LocalPlayer.Character:FindFirstChild("Lantern") then 
                    ----
                end
                for i,v in pairs(game.workspace:GetChildren()) do
                    if v.Name == "golem" and v:FindFirstChild("Hitbox") then
                        game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):Activate()
                        local args = {
                            [1] = "Hit",
                            [2] = v.Hitbox
                        }
                
                        game.Players.LocalPlayer.Character.Lantern.Network:FireServer(unpack(args))
                    end
                end
            task.wait()
            end
        end,
    })

    local Tab = Window:CreateTab("Misc", "rewind")

    local Button = Tab:CreateButton({
       Name = "Get 4 hp",
       Callback = function()
           ogl = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3271.42334, -218.088181, 822.746155, -0.994649589, 0.00018143536, 0.103305899, -8.53231885e-09, 0.99999845, -0.00175637181, -0.103306055, -0.00174697535, -0.994648099)
           wait(0.5)
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = ogl
       end,
    })

    local Button = Tab:CreateButton({
       Name = "Get Regeneration",
       Callback = function()
           ogl = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3286.16675, -67.2077789, 823.898865, -0.98922509, -0.00276089297, 0.146376535, 9.32137123e-09, 0.99982214, 0.0188582912, -0.146402568, 0.0186550952, -0.989049196)
           wait(0.5)
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = ogl
       end,
    })

    local Button = Tab:CreateButton({
       Name = "Tp safeport",
       Callback = function()
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(595, 122, -330)
       end,
    })

    local Button = Tab:CreateButton({
       Name = "Tp to lever",
       Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3267.97485, -72.9661789, 823.711304, -0.00727955392, 0.085996896, -0.996268809, 8.27937185e-09, 0.996295214, 0.0859991759, 0.999973476, 0.000626027409, -0.00725258561)
       end,
    })

elseif game.PlaceId == 97220865182663 then

    local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

    local Window = Rayfield:CreateWindow({
        Name = "Mouse HUB",
        Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
        LoadingTitle = "Loading Hub",
        LoadingSubtitle = "by Kykyryz0B",
        Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes
     
        DisableRayfieldPrompts = false,
        DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface
     
        ConfigurationSaving = {
           Enabled = false,
           FolderName = nil, -- Create a custom folder for your hub/game
           FileName = "Big Hub"
        },
     
        Discord = {
           Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
           Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
           RememberJoins = true -- Set this to false to make them join the discord every time they load it up
        },
     
        KeySystem = true, -- Set this to true to use our key system
        KeySettings = {
           Title = "Key",
           Subtitle = "Key System",
           Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
           FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
           SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
           GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
           Key = {"1488"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
        }
    })

    local Tab = Window:CreateTab("Combat", "rewind")

    local Section = Tab:CreateSection("Get Glove Mouse")

    local Button = Tab:CreateButton({
        Name = "Get",
        Callback = function()
            if not game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2146300368310575) then
                if workspace.Game.Buildings.City:FindFirstChild("City") == nil then
                    game:GetService("ReplicatedStorage").Remotes.PlaceBuilding:FireServer("City", Vector3.new(3.125, 43.4450798034668, -57.1875), 0)
                end
                
                while task.wait() do
                    if workspace.Game.Enemies:FindFirstChild("Rat") and workspace.Game.Enemies.Rat:FindFirstChildWhichIsA("Humanoid") then
                        if workspace.Game.Enemies.Rat.Humanoid.Health ~= 0 then
                            workspace.Game.Enemies.Rat.Humanoid.Health = 0 -- I tested and this method is faster than firing remotes
                        end
                    end
                    game:GetService("ReplicatedStorage").Remotes.UnlockGloveWithOrbs:FireServer()
                end
            else
                Rayfield:Notify({
                    Title = "Error!",
                    Content = "You have this glove ⛔️",
                    Duration = 6.5,
                    Image = 7733658504,
                })
            end
        end,
    })

elseif game.PlaceId == 136005148166028 then

    local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

    local Window = Rayfield:CreateWindow({
        Name = "Day in The Life of a Small Roblox Developer HUB",
        Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
        LoadingTitle = "Loading Hub",
        LoadingSubtitle = "by Kykyryz0B",
        Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes
     
        DisableRayfieldPrompts = false,
        DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface
     
        ConfigurationSaving = {
           Enabled = false,
           FolderName = nil, -- Create a custom folder for your hub/game
           FileName = "Big Hub"
        },
     
        Discord = {
           Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
           Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
           RememberJoins = true -- Set this to false to make them join the discord every time they load it up
        },
     
        KeySystem = true, -- Set this to true to use our key system
        KeySettings = {
           Title = "Key",
           Subtitle = "Key System",
           Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
           FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
           SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
           GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
           Key = {"1488"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
        }
    })

    local Tab = Window:CreateTab("Combat", "rewind")

    local Section = Tab:CreateSection("Get Glove ")

    local Button = Tab:CreateButton({
        Name = "Get",
        Callback = function()
            if not game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 1060832194529561) then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-80.5410309, 26.9999981, 41.5247803, 0.179412335, -4.59451721e-09, 0.983773947, 4.71961192e-10, 1, 4.58422544e-09, -0.983773947, -3.58163499e-10, 0.179412335)
                wait()
                fireclickdetector(workspace.Kitchen.Fridge.HitBox.ClickDetector)
                wait()
                fireclickdetector(workspace.Kitchen.Fridge.GrantAward.ClickDetector)
                wait()
                fireclickdetector(workspace.Microwave.HitBox.ClickDetector)
                wait(8)
                game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.Brewzucki)
                game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):Activate()
                wait(2)
                game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
                wait()
                for i,v in ipairs(workspace.Traps:GetChildren()) do
                	if v.Name == "BearTrap" then
                		v.HitBox.ClickDetector.MaxActivationDistance = 10000
                		fireclickdetector(v.HitBox.ClickDetector)
                	end
                end
                wait(2)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6.98906517, 8.99999809, 125.042122, -0.999800026, 2.74016781e-10, -0.0199987348, 2.74087475e-10, 1, -7.93911811e-13, 0.0199987348, -6.27515531e-12, -0.999800026)
                wait()
                fireclickdetector(workspace.BasementTable.HitBox.ClickDetector)
                wait(1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-43.4871674, 21.9999981, 27.039463, 0.0252009928, 2.89426523e-13, 0.999682426, -1.39311322e-14, 1, -2.8916729e-13, -0.999682426, -6.6394055e-15, 0.0252009928)
                wait(0.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-59.046196, 27.2399998, 27.1078396, -0.861794293, 2.47416748e-14, -0.507257879, 2.16106802e-14, 1, 1.20603609e-14, 0.507257879, -5.68638152e-16, -0.861794293)
                wait()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(workspace.ComputerChair.Seat.CFrame)
                game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Error",Text = "БЛЯ САМ ДЕЛАЙ ДАЛЬШЕ Я УСТАЛ",Icon = "rbxassetid://7733658504",Duration = 10})
            else
                Rayfield:Notify({
                    Title = "Error!",
                    Content = "You have this glove ⛔️",
                    Duration = 6.5,
                    Image = 7733658504,
                })
            end
        end,
    })    

elseif game.PlaceId == 16034567693 then

    local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

    local Window = Rayfield:CreateWindow({
        Name = "я одмэн HUB",
        Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
        LoadingTitle = "Loading Hub",
        LoadingSubtitle = "by Kykyryz0B",
        Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes
     
        DisableRayfieldPrompts = false,
        DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface
     
        ConfigurationSaving = {
           Enabled = false,
           FolderName = nil, -- Create a custom folder for your hub/game
           FileName = "Big Hub"
        },
     
        Discord = {
           Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
           Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
           RememberJoins = true -- Set this to false to make them join the discord every time they load it up
        },
     
        KeySystem = true, -- Set this to true to use our key system
        KeySettings = {
           Title = "Key",
           Subtitle = "Key System",
           Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
           FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
           SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
           GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
           Key = {"1488"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
        }
    })

    local Tab = Window:CreateTab("Combat", "rewind")

    local ParagraphTime = Tab:CreateParagraph({Title = "Time:", Content = "0"})

time1 = 0

local Button = Tab:CreateButton({
    Name = "Admin",
    Callback = function()
        if not game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 1840188608156642) then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(502, 76, 59)
task.wait(6)
if getconnections then
for i,v in next, getconnections(game.Players.LocalPlayer.Idled) do
v:Disable() 
end
end
for i = 1,3600 do
    time1 = time1 + 1
    ParagraphTime:Set({Title = "Time:", Content = time1})
wait(1)
end
        else
            Rayfield:Notify({
                Title = "Error!",
                Content = "You have this glove ⛔️",
                Duration = 6.5,
                Image = 7733658504,
            })
        end
    end,
 })

elseif game.PlaceId == 118650724506449 then

    local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

    local Window = Rayfield:CreateWindow({
        Name = "КРЫЛАТЫЙ СНОУ ПИП HUB",
        Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
        LoadingTitle = "Loading Hub",
        LoadingSubtitle = "by Kykyryz0B",
        Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes
     
        DisableRayfieldPrompts = false,
        DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface
     
        ConfigurationSaving = {
           Enabled = false,
           FolderName = nil, -- Create a custom folder for your hub/game
           FileName = "Big Hub"
        },
     
        Discord = {
           Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
           Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
           RememberJoins = true -- Set this to false to make them join the discord every time they load it up
        },
     
        KeySystem = true, -- Set this to true to use our key system
        KeySettings = {
           Title = "Key",
           Subtitle = "Key System",
           Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
           FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
           SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
           GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
           Key = {"1488"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
        }
    })

    local Tab = Window:CreateTab("Combat", "rewind")

    local Button = Tab:CreateButton({
        Name = "Get",
        Callback = function()
    firetouchinterest(game.Players.LocalPlayer.Character.Head, workspace.rooms["room exit"].EXIT, 0)
firetouchinterest(game.Players.LocalPlayer.Character.Head, workspace.rooms["room exit"].EXIT, 1)
end,
})

elseif game.PlaceId == 92516899071319 then
    
    local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

    local Window = Rayfield:CreateWindow({
        Name = "ПОДУШКИ HUB",
        Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
        LoadingTitle = "Loading Hub",
        LoadingSubtitle = "by Kykyryz0B",
        Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes
     
        DisableRayfieldPrompts = false,
        DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface
     
        ConfigurationSaving = {
           Enabled = false,
           FolderName = nil, -- Create a custom folder for your hub/game
           FileName = "Big Hub"
        },
     
        Discord = {
           Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
           Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
           RememberJoins = true -- Set this to false to make them join the discord every time they load it up
        },
     
        KeySystem = true, -- Set this to true to use our key system
        KeySettings = {
           Title = "Key",
           Subtitle = "Key System",
           Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
           FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
           SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
           GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
           Key = {"1488"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
        }
    })

    local Tab = Window:CreateTab("Combat", "rewind")

    Tab:CreateToggle({
        Name = "Farm подушки",
        Default = false,
        Callback = function(Value)
            _G.AutoCollectPillow = Value
            while _G.AutoCollectPillow do
            for i,v in pairs(game.Workspace.map:GetChildren()) do
                if v.Name == "Meshes/pillow1" and v:FindFirstChild("ClickDetector") then
                    fireclickdetector(v:FindFirstChild("ClickDetector"))
                    end
                end
            task.wait()
            end
                end
            }) 

        elseif game.PlaceId == 98726100529621 then

            local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

            local Window = Rayfield:CreateWindow({
                Name = "Hexa HUB",
                Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
                LoadingTitle = "Loading Hub",
                LoadingSubtitle = "by Kykyryz0B",
                Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes
             
                DisableRayfieldPrompts = false,
                DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface
             
                ConfigurationSaving = {
                   Enabled = false,
                   FolderName = nil, -- Create a custom folder for your hub/game
                   FileName = "Big Hub"
                },
             
                Discord = {
                   Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
                   Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
                   RememberJoins = true -- Set this to false to make them join the discord every time they load it up
                },
             
                KeySystem = true, -- Set this to true to use our key system
                KeySettings = {
                   Title = "Key",
                   Subtitle = "Key System",
                   Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
                   FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
                   SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
                   GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
                   Key = {"1488"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
                }
            })

            local Tab = Window:CreateTab("Combat", "rewind")

            Tab:CreateButton({
                Name = "Get",
                Callback = function()
                    if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and workspace:FindFirstChild("Part I") then
                        workspace["Part I"].Obby["end"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                        wait(10.5)
                        repeat task.wait(1)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(97, 14, 644)
                        until workspace["Part 2"]:FindFirstChild("Portal")
                        task.wait(2.5)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["Part 2"].Portal.CFrame
                        wait(9.5)
                        workspace["Part 3"].TpToNext.HitBox.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                        if fireclickdetector then
                        fireclickdetector(workspace["Part 3"].TpToNext.HitBox:FindFirstChild("Click"))
                        end
                        repeat task.wait() until workspace:FindFirstChild("Part 4")
                        wait(7)
                        workspace["Part 4"].TPPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                        wait(7)
                        workspace["Part 5"].Glove.Hitbox.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                        if fireclickdetector then
                        fireclickdetector(workspace["Part 5"].Glove.Hitbox:FindFirstChild("Click"))
                        end
                        repeat task.wait() until workspace:FindFirstChild("Finale") and workspace.Finale:FindFirstChild("Reward")
                        wait(7)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Finale.Reward.Hitbox.CFrame
                        if fireclickdetector then
                        fireclickdetector(workspace.Finale.Reward.Hitbox:FindFirstChild("Click"))
                        end
                    end
            })

end
