--SB PUHLASH
if os.date

if game.PlaceId == 6403373529 then

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
 
    KeySystem = false, -- Set this to true to use our key system
    KeySettings = {
       Title = "Untitled",
       Subtitle = "Key System",
       Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
       FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
       SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
})

local Tab = Window:CreateTab("Badge", 7733673987) -- Title, Image

local Section = Tab:CreateSection("Farm Gloves")

local ParagraphTime = Tab:CreateParagraph({Title = "Time:", Content = "0"})

time1 = 0

local Button = Tab:CreateButton({
    Name = "Fish Farm",
    Callback = function()
        if game:GetService("Players").LocalPlayer.leaderstats.Glove.Value == "ZZZZZZZ" then
            if game.Players.LocalPlayer.Character:FindFirstChild("entered") then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2461.50464, 243.291565, -4546.78467, 0.966821849, -0.00649187574, 0.255369186, -1.00234743e-09, 0.999677002, 0.0254133251, -0.255451679, -0.0245701578, 0.966509581)
                game:GetService("ReplicatedStorage").ZZZZZZZSleep:FireServer()
                for i = 1,3600 do
                    time1 = time1 + 1
                    ParagraphTime:Set({Title = "Time:", Content = time1})
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
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-61.4113426, 4.67113781, -45.0443306, -0.0143145993, 0.00252397754, -0.999894321, -7.96703534e-06, 0.999996841, 0.00252435054, 0.99989748, 4.41164557e-05, -0.014314536)
                    wait(0.3)
                    workspace.CounterLever.ClickDetector.MaxActivationDistance = 1000
                    fireclickdetector(workspace.CounterLever.ClickDetector)
                    wait(1)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(15.2456455, 4.49108553, -233.529053, -0.631848156, -0.00334048411, 0.775085032, -1.25992265e-05, 0.999990761, 0.00429952005, -0.775092185, 0.00270687975, -0.631842375)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 2 minutes and 1 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 2 minutes to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 1 minutes and 59 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 1 minutes and 58 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 1 minutes and 57 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 1 minutes and 56 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 1 minutes and 55 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 1 minutes and 54 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 1 minutes and 53 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 1 minutes and 52 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 1 minutes and 51 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 1 minutes and 50 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 1 minutes and 49 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 1 minutes and 48 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 1 minutes and 47 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 1 minutes and 46 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 1 minutes and 45 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 1 minutes and 44 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 1 minutes and 43 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 1 minutes and 42 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 1 minutes and 41 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 1 minutes and 40 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 1 minutes and 39 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 1 minutes and 38 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 1 minutes and 37 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 1 minutes and 36 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 1 minutes and 35 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 1 minutes and 34 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 1 minutes and 33 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 1 minutes and 32 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 1 minutes and 31 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 1 minutes and 30 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 1 minutes and 29 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 1 minutes and 28 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 1 minutes and 27 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 1 minutes and 26 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 1 minutes and 25 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 1 minutes and 24 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 1 minutes and 23 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 1 minutes and 22 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 1 minutes and 21 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 1 minutes and 20 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 1 minutes and 19 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 1 minutes and 18 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 1 minutes and 17 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 1 minutes and 16 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 1 minutes and 15 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 1 minutes and 14 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 1 minutes and 13 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 1 minutes and 12 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 1 minutes and 11 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 1 minutes and 10 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 1 minutes and 9 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 1 minutes and 8 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 1 minutes and 7 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 1 minutes and 6 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 1 minutes and 5 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 1 minutes and 4 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 1 minutes and 3 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 1 minutes and 2 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 1 minutes and 1 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 1 minutes to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 59 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 58 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 57 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 56 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 55 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 54 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 53 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 52 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 51 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 50 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 49 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 48 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 47 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 46 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 45 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 44 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 43 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 42 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 41 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 40 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 39 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 38 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 37 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 36 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 35 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 34 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 33 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 32 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 31 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 30 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 29 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 28 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 27 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 26 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 25 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 24 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 23 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 22 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 21 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 20 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 19 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 18 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 17 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 16 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 15 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 14 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 13 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 12 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 11 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 10 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 9 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 8 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 7 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 6 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 5 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 4 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 3 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 2 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wait",Text = "You wait 1 second to receive.",Icon = "rbxassetid://7733656100",Duration = 0.1})
                    wait(1)
                    for i,k in ipairs(workspace.Maze:GetChildren()) do
                        if k.Name == "Part" and k:FindFirstChild("ClickDetector") then
                            k.ClickDetector.MaxActivationDistance = 1000
                            fireclickdetector(k.ClickDetector)
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
     
        KeySystem = false, -- Set this to true to use our key system
        KeySettings = {
           Title = "Untitled",
           Subtitle = "Key System",
           Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
           FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
           SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
           GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
           Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
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
     
        KeySystem = false, -- Set this to true to use our key system
        KeySettings = {
           Title = "Untitled",
           Subtitle = "Key System",
           Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
           FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
           SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
           GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
           Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
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
     
        KeySystem = false, -- Set this to true to use our key system
        KeySettings = {
           Title = "Untitled",
           Subtitle = "Key System",
           Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
           FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
           SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
           GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
           Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
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
     
        KeySystem = false, -- Set this to true to use our key system
        KeySettings = {
           Title = "Untitled",
           Subtitle = "Key System",
           Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
           FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
           SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
           GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
           Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
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



end
