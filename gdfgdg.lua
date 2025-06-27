local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()





    local Window = Fluent:CreateWindow({
        Title = "Reverie |  Game - Ragdoll Engine | V 0.2",
        SubTitle = "",
        TabWidth = 160,
        Size = UDim2.fromOffset(580, 460),
        Acrylic = false,
        Theme = "Dark",
        MinimizeKey = Enum.KeyCode.RightControl
    })

    local Tabs = {
        Main = Window:AddTab({Title = "Menu", Icon = "home"}),
        ESP = Window:AddTab({Title = "ESP", Icon = "eye"}),
        Player = Window:AddTab({Title = "Player", Icon = "user"}),
        Bully = Window:AddTab({Title = "BULLY", Icon = "message-square"}),
        Teleport = Window:AddTab({Title = "Teleport", Icon = "map-pin"}),
        Target = Window:AddTab({Title = "Target", Icon = "crosshair"}),
        Animation = Window:AddTab({Title = "Animation", Icon = "film"}),
        CMD = Window:AddTab({Title = "CMD", Icon = "message-square"}),
        Hat = Window:AddTab({Title = "Hat", Icon = "user"}),
        OWNER = Window:AddTab({Title = "OWNER", Icon = "x"}),
        Config = Window:AddTab({Title = "Settings", Icon = "settings"})
    }

    -- Добавляем новые настройки
    local ESP_SETTINGS = {
        Enabled = false,
        Box_Color = Color3.fromRGB(255, 0, 0),
        Box_Thickness = 2,
        Team_Check = false,
        Team_Color = false,
        Autothickness = true,
        Rainbow = false
    }

do
	local OWNERSection = Tabs.OWNER:AddSection("Скрипты Овнера", {
        Title = "Character Control",
        Icon = "activity"
    })
	local function Black()
        local command = ";hat me 192557913"
        local command1 = ";hat me 85956071743151"
        
       
        game:GetService("Players"):Chat(command)
        wait(0.8)
        game:GetService("Players"):Chat(command1)
        
       
        Fluent:Notify({
                Title = "Reverie Hub",
                Content = "Successfully!",
                Duration = 5,
                Icon = "terminal"
            })
            
    end

    OWNERSection:AddButton({
        Title = "Чёрные крылья",
        Description = "",
        Callback = Black
    })

    	local function Black()
        local command = ";hat me 10159600649"
        local command1 = ";hat me 86983664487664"
        
       
        game:GetService("Players"):Chat(command)
        wait(0.8)
        game:GetService("Players"):Chat(command1)
        
       
        Fluent:Notify({
                Title = "Reverie Hub",
                Content = "Successfully!",
                Duration = 5,
                Icon = "terminal"
            })
            
        
    end

    OWNERSection:AddButton({
        Title = "Чёрная Корона",
        Description = "",
        Callback = Black
    })


	local function Demon()
        local command = ";hat me 14228725502"
        local command1 = ";hat me 78528175321289"
        
       
        game:GetService("Players"):Chat(command)
        wait(0.8)
        game:GetService("Players"):Chat(command1)
        
       
        Fluent:Notify({
                Title = "Reverie HUB",
                Content = "Successfully!",
                Duration = 5,
                Icon = "terminal"
            })
            
        
    end

    OWNERSection:AddButton({
        Title = "Чёрный Демон",
        Description = "",
        Callback = Demon
    })


	local function White()
        local command = ";hat me 14228725502"
        local command1 = ";hat me 111895674111464"
        
       
        game:GetService("Players"):Chat(command)
        wait(0.8)
        game:GetService("Players"):Chat(command1)
        
       
        Fluent:Notify({
                Title = "Reverie HUB",
                Content = "Successfully!",
                Duration = 5,
                Icon = "terminal"
            })
            
        
    end

    OWNERSection:AddButton({
        Title = "Белый Демон ",
        Description = "",
        Callback = White
    })
    

	local function re()
        local command = ";re"
       
        game:GetService("Players"):Chat(command)
        Fluent:Notify({
                Title = "Reverie HUB",
                Content = "Successfully!",
                Duration = 5,
                Icon = "terminal"
            })
            
        
    end

    OWNERSection:AddButton({
        Title = "Reset",
        Description = "Reset all",
        Callback = re
    })
end

do
    local PlayerSection = Tabs.Player:AddSection("Characteristics", {
        Title = "Character Control",
        Icon = "activity"
    })

    local humanoid = nil
    local defaultWalkspeed = 16
    local defaultJumppower = 50

    
    repeat task.wait() until game.Players.LocalPlayer.Character
    humanoid = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
    game.Players.LocalPlayer.CharacterAdded:Connect(function(char)
        humanoid = char:WaitForChild("Humanoid")
    end)

   
    PlayerSection:AddSlider("WalkSpeed", {
        Title = "Speed",
        Default = defaultWalkspeed,
        Min = 16,
        Max = 100,
        Rounding = 0,
        Callback = function(value)
            if humanoid then
                humanoid.WalkSpeed = value
            end
        end
    })

    
    PlayerSection:AddSlider("JumpPower", {
        Title = "Jump Power",
        Default = defaultJumppower,
        Min = 50,
        Max = 200,
        Rounding = 0,
        Callback = function(value)
            if humanoid then
                humanoid.JumpPower = value
            end
        end
    })
	PlayerSection:AddToggle("SpeedLock", {
    	Title = "Lock WalkSpeed",
    	Default = false,
    	Callback = function(state)
        	if state then
            	game:GetService("RunService").Heartbeat:Connect(function()
                	if humanoid then
                    	humanoid.WalkSpeed = 16
                	end
            	end)
        	end
    	end
	})

	


    
end

do
    local HatSection = Tabs.Hat:AddSection("Акссесуары", {
        Title = "CMD",
        Icon = "message-sosal"
    })


    local function SWAT()
        local command = ";morph me sam"
        local command1 = ";morph me swat"
        local command2 = ";hat me 137523688958944"
        local command3 = ";hat me 74891470"
        
        game:GetService("Players"):Chat(command)
        wait(0.9)
        game:GetService("Players"):Chat(command1)
        wait(0.9)
        game:GetService("Players"):Chat(command2)
        wait(0.9)
        game:GetService("Players"):Chat(command3)
        Fluent:Notify({
                Title = "",
                Content = "Executed",
                Duration = 5,
                Icon = "terminal"
            })
            
    end
    

    HatSection:AddButton({
        Title = "Коллизия SWAT",
        Description = "Флинговать людей",
        Callback = SWAT
    })


    local function SWAT()
        local command = ";morph me sam"
        local command1 = ";morph me clown"
        local command2 = ";hat me 74891470"
        
        game:GetService("Players"):Chat(command)
        wait(0.8)
        game:GetService("Players"):Chat(command1)
        wait(0.8)
        game:GetService("Players"):Chat(command2)
        Fluent:Notify({
                Title = "",
                Content = "Executed",
                Duration = 5,
                Icon = "terminal"
            })
            
    end
    

    HatSection:AddButton({
        Title = "Коллизия Сlown",
        Description = "Флинговать людей",
        Callback = SWAT
    })


    local function minus_yshi()
        local command = ";hat me 33070696"
        local command1 = ";hat me 305888394"
        local command2 = ";hat me 24112667"
        local command3 = ";hat me 24114402"
        local command4 = ";hat me 226189871"
        local command5 = ";hat me 141742418"
        local command6 = ";hat me 128217885"
        local command7 = ";hat me 150381051"
        
        game:GetService("Players"):Chat(command)
        wait(0.9)
        game:GetService("Players"):Chat(command1)
        wait(0.9)
        game:GetService("Players"):Chat(command2)
        wait(0.9)
        game:GetService("Players"):Chat(command3)
        wait(0.9)
        game:GetService("Players"):Chat(command4)
        wait(0.9)
        game:GetService("Players"):Chat(command5)
        wait(0.9)
        game:GetService("Players"):Chat(command6)
        wait(0.9)
        game:GetService("Players"):Chat(command7)
        
        Fluent:Notify({
                Title = "",
                Content = "Executed",
                Duration = 5,
                Icon = "terminal"
            })
            
    end
    

    HatSection:AddButton({
        Title = "-Уши",
        Description = "Бесить людей",
        Callback = minus_yshi
    })


        local function re()
        local command = "!re"
        
        game:GetService("Players"):Chat(command)
        Fluent:Notify({
                Title = "",
                Content = "Executed",
                Duration = 5,
                Icon = "terminal"
            })
            
    end
    

    HatSection:AddButton({
        Title = "Удалить акссесуары",
        Description = "Респавн",
        Callback = re
    })

end
do
    local CMDSection = Tabs.CMD:AddSection("CMD", {
        Title = "CMD",
        Icon = "message-sosal"
    })
    
    local CMDBar = CMDSection:AddInput("CommandInput", {
        Title = "Command Line",
        Default = "",
        PlaceholderText = "Enter command...",
        Numeric = false,
        Finished = false,
        Callback = function(text) end
    })

    local function executeCommand()
        local command = CMDBar.Value
        if command and command ~= "" then
            game:GetService("Players"):Chat(command)
            Fluent:Notify({
                Title = "Mama shlyxa",
                Content = "Executed: "..command,
                Duration = 5,
                Icon = "terminal"
            })
            CMDBar:SetValue("")
        end
    end

    CMDSection:AddButton({
        Title = "Execute Command",
        Description = "Run the command",
        Callback = executeCommand
    })
end

do
    local PlayerSection = Tabs.Player:AddSection("More", {
        Title = "Управление коллизиями",
        Icon = "anchor"
    })

    local noclipActive = false
    local noclipConnection = nil
    local defaultCollisions = {}

   
    local function SaveCollisions(char)
        defaultCollisions = {}
        for _, part in ipairs(char:GetDescendants()) do
            if part:IsA("BasePart") then
                defaultCollisions[part] = part.CanCollide
            end
        end
    end

    PlayerSection:AddButton({
        Title = "NoClip",
        Description = "Noclip Toogle(On/Off)",
        Callback = function()
            noclipActive = not noclipActive
            local character = game.Players.LocalPlayer.Character
            
            if noclipActive then
              
                if character then
                    SaveCollisions(character)
                    noclipConnection = game:GetService("RunService").Heartbeat:Connect(function()
                        for part in pairs(defaultCollisions) do
                            part.CanCollide = false
                        end
                    end)
                end
                
               
                Fluent:Notify({
                    Title = "Noclip Toogle",
                    Content = "Noclip ON",
                    Duration = 2,
                    Icon = "feather",
                    Image = "rbxassetid://7072706620"
                })
            else
                
                if noclipConnection then
                    noclipConnection:Disconnect()
                    for part, canCollide in pairs(defaultCollisions) do
                        if part and part.Parent then
                            part.CanCollide = canCollide
                        end
                    end
                end
                
                Fluent:Notify({
                    Title = "Noclip Toogle",
                    Content = "Noclip OFF",
                    Duration = 2,
                    Icon = "anchor"
                })
            end

            
            game.Players.LocalPlayer.CharacterAdded:Connect(function(newChar)
                if noclipActive then
                    SaveCollisions(newChar)
                end
            end)
        end
    })

	
end

do
    local PlayerSection = Tabs.Player:AddSection("Anti Fling", {
        Title = "Управление коллизиями",
        Icon = "anchor"
    })

    local antiflingConnection = nil

    PlayerSection:AddToggle("AntiFLing", {
        Title = "Anti Fling",
        Description = "",
        Default = false,
        Callback = function(state)
            if state then
                antiflingConnection = game:GetService("RunService").Stepped:Connect(function()
                    local speaker = game.Players.LocalPlayer
                    for _, player in ipairs(game:GetService("Players"):GetPlayers()) do
                        if player ~= speaker and player.Character then
                            for _, v in ipairs(player.Character:GetDescendants()) do
                                if v:IsA("BasePart") then
                                    v.CanCollide = false
                                end
                            end
                        end
                    end
                end)
                
                Fluent:Notify({
                    Title = "ANTI-FLING ON",
                    Content = "",
                    Duration = 2,
                    Icon = "shield"
                })
            else
                if antiflingConnection then
                    antiflingConnection:Disconnect()
                    antiflingConnection = nil
                end
                
                Fluent:Notify({
                    Title = "ANTI-FLING off",
                    Content = "",
                    Duration = 2,
                    Icon = "shield-off"
                })
            end
        end
    })
end


do
    local TeleportSection = Tabs.Target:AddSection("Target", {
        Title = "Direct Teleport",
        Icon = "arrow-right-circle"
    })

   
    local targetNameInput = ""
    local playerInputField = TeleportSection:AddInput("PlayerInput", {
        Title = "Enter player name",
        Default = "",
        PlaceholderText = "Enter full or partial name",
        Callback = function(text)
            targetNameInput = text
        end
    })


    local function findTargetPlayer()
        if targetNameInput == "" then return nil end
        
        local inputLower = string.lower(targetNameInput)
        for _, player in ipairs(game:GetService("Players"):GetPlayers()) do
            if player ~= game.Players.LocalPlayer then
                local playerNameLower = string.lower(player.Name)
                if string.find(playerNameLower, inputLower, 1, true) then
                    return player
                end
            end
        end
        return nil
    end

    TeleportSection:AddButton({
        Title = "Fling",
        Description = "",
        Callback = function()
          
            local mapBounds = {
                XMin = -1500, XMax = 1500,
                YMin = -1500, YMax = 1500,
                ZMin = -500, ZMax = 500
            }
            
        
            local function isWithinBounds(position)
                return position.X >= mapBounds.XMin and position.X <= mapBounds.XMax and
                       position.Y >= mapBounds.YMin and position.Y <= mapBounds.YMax and
                       position.Z >= mapBounds.ZMin and position.Z <= mapBounds.ZMax
            end
    
            local targetPlayer = findTargetPlayer()
            local localPlayer = game.Players.LocalPlayer
            
        
            local localHrp = localPlayer.Character:FindFirstChild("HumanoidRootPart")
            if localHrp and not isWithinBounds(localHrp.Position) then
                return
            end
    
            if not targetPlayer or not targetPlayer.Character then
                Fluent:Notify({
                    Title = "ERROR",
                    Content = "Target player not found!",
                    Icon = "x",
                    Duration = 3
                })
                return
            end
    
            local targetHrp = targetPlayer.Character:FindFirstChild("HumanoidRootPart")
            local targetHumanoid = targetPlayer.Character:FindFirstChildOfClass("Humanoid")
            local localHrp = localPlayer.Character:FindFirstChild("HumanoidRootPart")
            local humanoid = localPlayer.Character:FindFirstChildOfClass("Humanoid")
            
            if not targetHrp or not localHrp or not humanoid then return end
    
         
            local POWER_MULTIPLIER = 0.1
            local DURATION = 2
            local PREDICTION_FACTOR = 0.6
            local JUMP_BOOST = 1.5       
            

            local originalPosition = localHrp.CFrame
            local originalCollision = localHrp.CanCollide
            local originalGravity = workspace.Gravity
            local flingActive = true
    
        
            localHrp.CanCollide = false
            for _, part in ipairs(localPlayer.Character:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.CanCollide = false
                    part.Massless = true
                end
            end
            workspace.Gravity = 0
    
  
            local bv = Instance.new("BodyVelocity")
            bv.Velocity = Vector3.new(0, 0, 0)
            bv.MaxForce = Vector3.new(math.huge * 100, math.huge * 100, math.huge * 100)
            bv.P = 1e100 * POWER_MULTIPLIER
            bv.Parent = localHrp
    
            local av = Instance.new("BodyAngularVelocity")
            av.MaxTorque = Vector3.new(math.huge * 100, math.huge * 100, math.huge * 100)
            av.P = 1e100 * POWER_MULTIPLIER
            av.Parent = localHrp
    
            Fluent:Notify({
                Title = "ULTRA FLING",
                Content = "Power: "..POWER_MULTIPLIER.."x",
                Icon = "zap",
                Duration = 3
            })
    
            local startTime = tick()
            local connection
            connection = game:GetService("RunService").Heartbeat:Connect(function()
                
                if localHrp and not isWithinBounds(localHrp.Position) then
                    flingActive = false
                    connection:Disconnect()
              
                    bv:Destroy()
                    av:Destroy()
                    for _, part in ipairs(localPlayer.Character:GetDescendants()) do
                        if part:IsA("BasePart") then
                            part.Velocity = Vector3.zero
                            part.RotVelocity = Vector3.zero
                            part.CanCollide = originalCollision
                            part.Massless = false
                        end
                    end
                    
            
                    localHrp.Anchored = true
                    workspace.Gravity = originalGravity
                    
                    local platform = Instance.new("Part")
                    platform.Size = Vector3.new(10, 1, 10)
                    platform.Position = originalPosition.Position - Vector3.new(0, 3, 0)
                    platform.Anchored = true
                    platform.Transparency = 0.7
                    platform.CanCollide = true
                    platform.Color = Color3.fromRGB(0, 255, 0)
                    platform.Parent = workspace
                    
                    localHrp.CFrame = originalPosition
                    
                    task.wait(0.5)
                    platform:Destroy()
                    
                    local antiStick = Instance.new("BodyVelocity")
                    antiStick.Velocity = Vector3.new(0, 100, 0)
                    antiStick.MaxForce = Vector3.new(0, 100000, 0)
                    antiStick.Parent = localHrp
                    
                    localHrp.Anchored = false
                    
                    task.wait(0.2)
                    antiStick:Destroy()
                    
                    for _, part in ipairs(localPlayer.Character:GetDescendants()) do
                        if part:IsA("BasePart") then
                            part.Velocity = Vector3.zero
                        end
                    end
                    
                    Fluent:Notify({
                        Title = "FLING STOPPED",
                        Content = "Character went out of bounds!",
                        Icon = "alert-circle",
                        Duration = 3
                    })
                    return
                end
    
                if not flingActive then return end
                
         
                local prediction = Vector3.new(0, 0, 0)
                if targetHumanoid then
              
                    if targetHumanoid.MoveDirection.Magnitude > 0 then
                        prediction = targetHumanoid.MoveDirection * (math.max(3, targetHrp.Velocity.Magnitude * PREDICTION_FACTOR)) 
                    end
                    
        
                    local targetState = targetHumanoid:GetState()
                    if targetState == Enum.HumanoidStateType.Jumping or 
                       targetState == Enum.HumanoidStateType.Freefall then
                        prediction = prediction + Vector3.new(0, JUMP_BOOST * targetHrp.Velocity.Y, 0)
                    end
                end
           
                if targetHrp and targetHrp.Parent then
                    local futurePosition = targetHrp.Position + prediction
                    localHrp.CFrame = CFrame.new(futurePosition)
                end
                
         
                av.AngularVelocity = Vector3.new(
                    math.random(-150000, 150000) * POWER_MULTIPLIER,
                    math.random(-400000, 400000) * POWER_MULTIPLIER,
                    math.random(-150000, 150000) * POWER_MULTIPLIER
                )
                
      
                bv.Velocity = Vector3.new(
                    math.random(-800, 800) * POWER_MULTIPLIER,
                    math.random(300, 1200) * POWER_MULTIPLIER,
                    math.random(-800, 800) * POWER_MULTIPLIER
                )
                
               
                
    
                if tick() - startTime >= DURATION then
                    flingActive = false
                    connection:Disconnect()
                    
        
                    bv:Destroy()
                    av:Destroy()
                    
                  
                    for _, part in ipairs(localPlayer.Character:GetDescendants()) do
                        if part:IsA("BasePart") then
                            part.Velocity = Vector3.zero
                            part.RotVelocity = Vector3.zero
                            part.CanCollide = originalCollision
                            part.Massless = false
                        end
                    end
                    
                  
                    localHrp.Anchored = true
                    workspace.Gravity = originalGravity
                    
                    local platform = Instance.new("Part")
                    platform.Size = Vector3.new(10, 1, 10)
                    platform.Position = originalPosition.Position - Vector3.new(0, 3, 0)
                    platform.Anchored = true
                    platform.Transparency = 0.7
                    platform.CanCollide = true
                    platform.Color = Color3.fromRGB(0, 255, 0)
                    platform.Parent = workspace
                    
                    localHrp.CFrame = originalPosition
                    
                    task.wait(0.5)
                    platform:Destroy()
                    
                    local antiStick = Instance.new("BodyVelocity")
                    antiStick.Velocity = Vector3.new(0, 100, 0)
                    antiStick.MaxForce = Vector3.new(0, 100000, 0)
                    antiStick.Parent = localHrp
                    
                    localHrp.Anchored = false
                    
                    task.wait(0.2)
                    antiStick:Destroy()
                    
                    for _, part in ipairs(localPlayer.Character:GetDescendants()) do
                        if part:IsA("BasePart") then
                            part.Velocity = Vector3.zero
                        end
                    end
                    
                    Fluent:Notify({
                        Title = "Fling",
                        Content = "Target destroyed!",
                        Icon = "check",
                        Duration = 3
                    })
                end
            end)
        end
    })






    TeleportSection:AddButton({
        Title = "Teleport",
        Description = "",
        Callback = function()
            local targetPlayer = findTargetPlayer()
            
            if targetPlayer and targetPlayer.Character then
                game.Players.LocalPlayer.Character:MoveTo(targetPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 3, 0))
                Fluent:Notify({
                    Title = "Onyx Hub",
                    Content = "Teleported to "..targetPlayer.Name,
                    Icon = "check",
                    Duration = 3
                })
            else
                Fluent:Notify({
                    Title = "Onyx Hub",
                    Content = "Player not found!",
                    Icon = "x",
                    Duration = 3
                })
            end
        end
    })


    local bangState = {
        Active = false,
        Connection = nil,
        Track = nil
    }
    
    TeleportSection:AddButton({
        Title = "Bang Target",
        Description = "",
        Callback = function()
            local targetPlayer = findTargetPlayer()
            local localPlayer = game.Players.LocalPlayer
            
            bangState.Active = not bangState.Active
    
            local function PlayAnim(assetID)
                if bangState.Track then
                    bangState.Track:Stop()
                    bangState.Track:Destroy()
                    bangState.Track = nil
                end
                if bangState.Active then
                    local anim = Instance.new("Animation")
                    anim.AnimationId = "rbxassetid://"..assetID
                    bangState.Track = localPlayer.Character.Humanoid:LoadAnimation(anim)
                    bangState.Track:Play()
                    bangState.Track.Looped = true
                end
            end
    
            if bangState.Active then
                if targetPlayer and targetPlayer.Character then
                    PlayAnim(5918726674)
                    Fluent:Notify({
                        Title = "ACTIVATED",
                        Content = "Bang Player",
                        Icon = "user-x",
                        Duration = 2
                    })
    
                    bangState.Connection = game:GetService("RunService").Heartbeat:Connect(function()
                        if not bangState.Active then return end
                        
                        local targetRoot = targetPlayer.Character:FindFirstChild("HumanoidRootPart")
                        local localRoot = localPlayer.Character:FindFirstChild("HumanoidRootPart")
                        
                        if targetRoot and localRoot then
                            local desiredCFrame = targetRoot.CFrame * CFrame.new(0, 0, 1.2)
                            
                            localRoot.CFrame = desiredCFrame
                            localRoot.Velocity = Vector3.new(0,0,0)
                            
                            for _, part in ipairs(localPlayer.Character:GetDescendants()) do
                                if part:IsA("BasePart") then
                                    part.CanCollide = false
                                    part.Massless = true
                                end
                            end
                        end
                    end)
                end
            else
                if bangState.Connection then
                    bangState.Connection:Disconnect()
                    bangState.Connection = nil
                end
                if bangState.Track then 
                    bangState.Track:Stop() 
                    bangState.Track:Destroy() 
                    bangState.Track = nil 
                end
                
              
                if localPlayer.Character then
                    for _, part in ipairs(localPlayer.Character:GetDescendants()) do
                        if part:IsA("BasePart") then
                            part.CanCollide = true
                            part.Massless = false
                        end
                    end
                    
                  
                    local humanoid = localPlayer.Character:FindFirstChildOfClass("Humanoid")
                    if humanoid then
                        humanoid:ChangeState(Enum.HumanoidStateType.Running)
                    end
                end
                
                Fluent:Notify({
                    Title = "DISABLED",
                    Content = "Stop",
                    Icon = "user-check",
                    Duration = 2
                })
            end
        end
    })

    local viewing = nil
    local viewDied = nil
    local viewChanged = nil

    
    local function StopSpectate()
        if viewing then
            Fluent:Notify({
                Title = "SPECTATE STOPPED",
                Content = "Stopped viewing: "..viewing.Name,
                Icon = "eye-off",
                Duration = 3
            })
        end
        viewing = nil
        if viewDied then
            viewDied:Disconnect()
            viewDied = nil
        end
        if viewChanged then
            viewChanged:Disconnect()
            viewChanged = nil
        end
        if game.Players.LocalPlayer.Character then
            workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
        end
    end

   
    TeleportSection:AddButton({
        Title = "Spectate",
        Description = "",
        Callback = function()
            local targetPlayer = findTargetPlayer()
            if not targetPlayer then
                Fluent:Notify({
                    Title = "ERROR",
                    Content = "Target player not found!",
                    Icon = "x",
                    Duration = 3
                })
                return
            end
            
            StopSpectate()
            
            viewing = targetPlayer
            workspace.CurrentCamera.CameraSubject = viewing.Character
            
            Fluent:Notify({
                Title = "SPECTATE STARTED",
                Content = "Now viewing: "..viewing.Name,
                Icon = "eye",
                Duration = 3
            })
            
         
            viewDied = viewing.CharacterAdded:Connect(function(newChar)
                repeat task.wait() until newChar:FindFirstChild("HumanoidRootPart")
                workspace.CurrentCamera.CameraSubject = newChar:FindFirstChild("Humanoid")
            end)
            
            
            viewChanged = workspace.CurrentCamera:GetPropertyChangedSignal("CameraSubject"):Connect(function()
                if viewing and viewing.Character and 
                   workspace.CurrentCamera.CameraSubject ~= viewing.Character:FindFirstChild("Humanoid") then
                    workspace.CurrentCamera.CameraSubject = viewing.Character:FindFirstChild("Humanoid")
                end
            end)
        end
    })


    TeleportSection:AddButton({
        Title = "Stop Spectate",
        Description = "",
        Callback = StopSpectate
    })

    
    local headsitState = {
        Active = false,
        Connection = nil,
        VelocityObject = nil
    }

    TeleportSection:AddButton({
        Title = "Headsit Target",
        Description = "",
        Callback = function()
            local targetPlayer = findTargetPlayer()
            local localPlayer = game.Players.LocalPlayer
            
            headsitState.Active = not headsitState.Active

            if headsitState.Active then
                if targetPlayer and targetPlayer.Character then
                    local humanoid = localPlayer.Character:FindFirstChild("Humanoid")
                    local rootPart = localPlayer.Character:FindFirstChild("HumanoidRootPart")
                    
                    if humanoid and rootPart then
                        humanoid.Sit = true
                        headsitState.VelocityObject = Instance.new("BodyVelocity")
                        headsitState.VelocityObject.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                        headsitState.VelocityObject.Velocity = Vector3.new(0,0,0)
                        headsitState.VelocityObject.P = 10000
                        headsitState.VelocityObject.Parent = rootPart
                        
                        Fluent:Notify({
                            Title = "HEADSIT ACTIVATED",
                            Content = "to: "..targetPlayer.Name,
                            Icon = "user",
                            Duration = 3
                        })

                        headsitState.Connection = game:GetService("RunService").Heartbeat:Connect(function()
                            if not headsitState.Active then return end
                            
                            local targetHead = targetPlayer.Character:FindFirstChild("Head")
                            local localRoot = localPlayer.Character:FindFirstChild("HumanoidRootPart")
                            
                            if targetHead and localRoot then
                                local newCFrame = targetHead.CFrame * CFrame.new(0, 2, 0)
                                localRoot.CFrame = newCFrame
                                localRoot.Velocity = Vector3.new(0,0,0)
                                humanoid.Sit = true
                            end
                        end)
                    end
                end
            else
                if headsitState.Connection then
                    headsitState.Connection:Disconnect()
                    headsitState.Connection = nil
                end
                if headsitState.VelocityObject then
                    headsitState.VelocityObject:Destroy()
                    headsitState.VelocityObject = nil
                end
                if localPlayer.Character and localPlayer.Character:FindFirstChild("Humanoid") then
                    localPlayer.Character.Humanoid.Sit = false
                end
                
                Fluent:Notify({
                    Title = "HEADSIT DEACTIVATED",
                    Content = "none",
                    Icon = "user-x",
                    Duration = 3
                })
            end
        end
    })

   
    local standState = {
        Active = false,
        Connection = nil,
        Velocity = nil,
        Track = nil
    }

    TeleportSection:AddButton({
        Title = "Stand",
        Description = "",
        Callback = function()
            local targetPlayer = findTargetPlayer()
            local localPlayer = game.Players.LocalPlayer
            
            standState.Active = not standState.Active

            if standState.Active then
                if targetPlayer and targetPlayer.Character then
                    local anim = Instance.new("Animation")
                    anim.AnimationId = "rbxassetid://13823324057"
                    standState.Track = localPlayer.Character.Humanoid:LoadAnimation(anim)
                    standState.Track:Play()
                    
                    standState.Velocity = Instance.new("BodyVelocity")
                    standState.Velocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                    standState.Velocity.Velocity = Vector3.new(0,0,0)
                    standState.Velocity.P = 10000
                    standState.Velocity.Parent = localPlayer.Character.HumanoidRootPart

                    Fluent:Notify({
                        Title = "Enabled",
                        Content = "to: "..targetPlayer.Name,
                        Icon = "shield",
                        Duration = 3
                    })

                    standState.Connection = game:GetService("RunService").Heartbeat:Connect(function()
                        if not standState.Active then return end
                        
                        local targetRoot = targetPlayer.Character:FindFirstChild("HumanoidRootPart")
                        local localRoot = localPlayer.Character:FindFirstChild("HumanoidRootPart")
                        
                        if targetRoot and localRoot then
                            local offsetCFrame = CFrame.new(-3, 1, 0)
                            local desiredPosition = targetRoot.CFrame * offsetCFrame
                            
                            localRoot.CFrame = desiredPosition
                            localRoot.Velocity = Vector3.new(0,0,0)
                            localRoot.CFrame = CFrame.new(localRoot.Position, targetRoot.Position)
                        end
                    end)
                end
            else
                if standState.Connection then
                    standState.Connection:Disconnect()
                    standState.Connection = nil
                end
                if standState.Velocity then
                    standState.Velocity:Destroy()
                    standState.Velocity = nil
                end
                if standState.Track then
                    standState.Track:Stop()
                    standState.Track:Destroy()
                    standState.Track = nil
                end
                
                Fluent:Notify({
                    Title = "DISABLED",
                    Content = "",
                    Icon = "shield-off",
                    Duration = 3
                })
            end
        end
    })

    local clickTargetTool = nil
    TeleportSection:AddButton({
        Title = "Click Target",
        Description = "",
        Callback = function()
            if clickTargetTool then
                clickTargetTool:Destroy()
            end
            
            local player = game.Players.LocalPlayer
            clickTargetTool = Instance.new("Tool")
            clickTargetTool.Name = "Click"
            clickTargetTool.RequiresHandle = false
            clickTargetTool.CanBeDropped = false
            clickTargetTool.Parent = player.Backpack
            
            clickTargetTool.ToolTip = "Select target by clicking"
            
            clickTargetTool.Activated:Connect(function()
                local character = player.Character
                if not character then return end
                
                local humanoid = character:FindFirstChildOfClass("Humanoid")
                if not humanoid then return end
                
                local mouse = player:GetMouse()
                local camera = workspace.CurrentCamera
                local origin = camera.CFrame.Position
                local direction = (mouse.Hit.Position - origin).Unit * 1000
                
                local raycastParams = RaycastParams.new()
                raycastParams.FilterType = Enum.RaycastFilterType.Exclude
                raycastParams.FilterDescendantsInstances = {character}
                raycastParams.IgnoreWater = true
                
                local raycastResult = workspace:Raycast(origin, direction, raycastParams)
                if raycastResult then
                    local hitPart = raycastResult.Instance
                    local hitModel = hitPart:FindFirstAncestorOfClass("Model")
                    if hitModel then
                        local hitPlayer = game.Players:GetPlayerFromCharacter(hitModel)
                        if hitPlayer and hitPlayer ~= player then
                          
                            playerInputField:SetValue(hitPlayer.Name)
                            
                            Fluent:Notify({
                                Title = "TARGET SELECTED",
                                Content = "Selected: "..hitPlayer.Name,
                                Icon = "user-check",
                                Duration = 3
                            })
                        end
                    end
                end
            end)
            
            Fluent:Notify({
                Title = "Tool created",
                Content = "Check your inventory for 'Click' tool",
                Icon = "mouse-pointer",
                Duration = 5
            })
        end
    })

end

    do
        local PlayerESPSection = Tabs.ESP:AddSection("Player ESP", {
            Title = "Player Tracking System",
            Icon = "users"
        })

        local espData = {
            highlights = {},
            billboards = {},
            connections = {}
        }

        local function CreatePlayerESP(player)
            if not espData.enabled or player == game.Players.LocalPlayer then return end

            local character = player.Character or player.CharacterAdded:Wait()
            
            -- Уничтожаем старые элементы если есть
            if espData.highlights[player] then
                espData.highlights[player]:Destroy()
            end
            if espData.billboards[player] then
                espData.billboards[player]:Destroy()
            end

            -- Highlight
            local highlight = Instance.new("Highlight")
            highlight.Name = "PlayerHighlight"
            highlight.FillColor = Color3.fromRGB(255, 50, 50)
            highlight.OutlineColor = Color3.new(1, 1, 1)
            highlight.FillTransparency = 0.5
            highlight.Parent = character
            espData.highlights[player] = highlight

            -- Text Label
            local billboard = Instance.new("BillboardGui")
            billboard.Name = "PlayerESP"
            billboard.Size = UDim2.new(0, 200, 0, 50)
            billboard.StudsOffset = Vector3.new(0, 3, 0)
            billboard.AlwaysOnTop = true
            billboard.Parent = character
            espData.billboards[player] = billboard

            local textLabel = Instance.new("TextLabel")
            textLabel.Size = UDim2.new(1, 0, 1, 0)
            textLabel.BackgroundTransparency = 1
            textLabel.Text = player.Name.."\nHP: 100%"
            textLabel.Font = Enum.Font.GothamBold
            textLabel.TextSize = 14
            textLabel.TextColor3 = Color3.new(1, 1, 1)
            textLabel.TextStrokeTransparency = 0.5
            textLabel.Parent = billboard

            -- Connections
            espData.connections[player] = {
                health = character:WaitForChild("Humanoid").HealthChanged:Connect(function(health)
                    textLabel.Text = player.Name.."\nHP: "..math.floor((health / character.Humanoid.MaxHealth)*100).."%"
                end),
                
                character = player.CharacterAdded:Connect(function(newChar)
                    CreatePlayerESP(player)
                end)
            }
        end

        local function CleanupESP()
            -- Удаляем все элементы
            for player, highlight in pairs(espData.highlights) do
                highlight:Destroy()
            end
            for player, billboard in pairs(espData.billboards) do
                billboard:Destroy()
            end
            for player, connections in pairs(espData.connections) do
                connections.health:Disconnect()
                connections.character:Disconnect()
            end
            
            -- Очищаем таблицы
            espData.highlights = {}
            espData.billboards = {}
            espData.connections = {}
        end

        PlayerESPSection:AddToggle("PlayerESP", {
            Title = "Player ESP",
            Default = false,
            Callback = function(value)
                espData.enabled = value
                if value then
                    -- Создаем для существующих игроков
                    for _, player in ipairs(game:GetService("Players"):GetPlayers()) do
                        CreatePlayerESP(player)
                    end

                    -- Отслеживаем новых игроков
                    espData.connections.playerAdded = game:GetService("Players").PlayerAdded:Connect(function(player)
                        CreatePlayerESP(player)
                    end)

                    Fluent:Notify({
                        Title = "Player ESP Activated",
                        Content = "Tracking all players",
                        Duration = 3,
                        Icon = "eye"
                    })
                else
                    CleanupESP()
                    if espData.connections.playerAdded then
                        espData.connections.playerAdded:Disconnect()
                    end

                    Fluent:Notify({
                        Title = "Player ESP Disabled",
                        Content = "All elements removed",
                        Duration = 2,
                        Icon = "eye-off"
                    })
                end
            end
        })

                PlayerESPSection:AddButton({
                Title = "Shaders",
                Description = "Улучшенная графика",
                Callback = function()
                    local shadersEnabled = false -- Переменная для отслеживания состояния шейдеров

                        shadersEnabled = not shadersEnabled -- Переключаем состояние
                    
                        if shadersEnabled then
                            -- Включаем эффекты
                            local Sky = Instance.new("Sky")
                            local Bloom = Instance.new("BloomEffect")
                            local Blur = Instance.new("BlurEffect")
                            local ColorC = Instance.new("ColorCorrectionEffect")
                            local SunRays = Instance.new("SunRaysEffect")
                    
                            Light.Brightness = 2.25
                            Light.ExposureCompensation = 0.1
                            Light.ClockTime = 17.55
                    
                            Sky.SkyboxBk = "http://www.roblox.com/asset/?id=144933338"
                            Sky.SkyboxDn = "http://www.roblox.com/asset/?id=144931530"
                            Sky.SkyboxFt = "http://www.roblox.com/asset/?id=144933262"
                            Sky.SkyboxLf = "http://www.roblox.com/asset/?id=144933244"
                            Sky.SkyboxRt = "http://www.roblox.com/asset/?id=144933299"
                            Sky.SkyboxUp = "http://www.roblox.com/asset/?id=144931564"
                            Sky.StarCount = 5000
                            Sky.SunAngularSize = 5
                            Sky.Parent = Light
                    
                            Bloom.Intensity = 0.3
                            Bloom.Size = 10
                            Bloom.Threshold = 0.8
                            Bloom.Parent = Light
                    
                            Blur.Size = 5
                            Blur.Parent = Light
                    
                            ColorC.Brightness = 0
                            ColorC.Contrast = 0.1
                            ColorC.Saturation = 0.25
                            ColorC.TintColor = Color3.fromRGB(255, 255, 255)
                            ColorC.Parent = Light
                    
                            SunRays.Intensity = 0.1
                            SunRays.Spread = 0.8
                            SunRays.Parent = Light
                        else
                            -- Удаляем эффекты, если шейдеры выключены
                            for i,v in pairs(Light:GetChildren()) do
                                v:Destroy()
                            end
                            
                            Light.Brightness = 2
                            Light.ExposureCompensation = 0
                        end
                    end                
                })
            end



do
    local TpTool = Tabs.Teleport:AddSection("Tp Tool", {
        Title = "Управление коллизиями",
        Icon = "anchor"
    })
    
    TpTool:AddButton({
            Title = "⚡ Teleporter",
            Description = "",
            Callback = function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/kittynes/Funyn/refs/heads/main/tpp2"))()
            end
        })
	
	TpTool:AddButton({
        Title = "Teleport To Map Center",
        Description = "Center [0,4,16]",
        Callback = function()
            local char = game.Players.LocalPlayer.Character
            if char and char:FindFirstChild("HumanoidRootPart") then
                char.HumanoidRootPart.CFrame = CFrame.new(0, 4, 16)
                Fluent:Notify({
                    Title = "TELEPORT COMPLETE",
                    Content = "Successfully teleported to map center!",
                    Icon = "map-pin",
                    Duration = 3
                })
            end
        end
    })
	TpTool:AddButton({
        Title = "Teleport To building",
        Description = "building [163, 1014, -20]",
        Callback = function()
            local char = game.Players.LocalPlayer.Character
            if char and char:FindFirstChild("HumanoidRootPart") then
                char.HumanoidRootPart.CFrame = CFrame.new(163, 1014, -20)
                Fluent:Notify({
                    Title = "TELEPORT COMPLETE",
                    Content = "Successfully teleported to building!",
                    Icon = "map-pin",
                    Duration = 3
                })
            end
        end
    })
	
	TpTool:AddButton({
        Title = "Teleport To gravity room",
        Description = "gravity room [-275, -78, 63]",
        Callback = function()
            local char = game.Players.LocalPlayer.Character
            if char and char:FindFirstChild("HumanoidRootPart") then
                char.HumanoidRootPart.CFrame = CFrame.new(-275, -78, 63)
                Fluent:Notify({
                    Title = "TELEPORT COMPLETE",
                    Content = "Successfully teleported to gravity room!",
                    Icon = "map-pin",
                    Duration = 3
                })
            end
        end
    })

	TpTool:AddButton({
        Title = "Teleport To escelator",
        Description = "escelator [-207, 67, -53]",
        Callback = function()
            local char = game.Players.LocalPlayer.Character
            if char and char:FindFirstChild("HumanoidRootPart") then
                char.HumanoidRootPart.CFrame = CFrame.new(-207, 67, -53)
                Fluent:Notify({
                    Title = "TELEPORT COMPLETE",
                    Content = "Successfully teleported to escelator!",
                    Icon = "map-pin",
                    Duration = 3
                })
            end
        end
    })

	TpTool:AddButton({
        Title = "Teleport To pool",
        Description = "pool [-126, 3, -122]",
        Callback = function()
            local char = game.Players.LocalPlayer.Character
            if char and char:FindFirstChild("HumanoidRootPart") then
                char.HumanoidRootPart.CFrame = CFrame.new(-126, 3, -122)
                Fluent:Notify({
                    Title = "TELEPORT COMPLETE",
                    Content = "Successfully teleported to pool!",
                    Icon = "map-pin",
                    Duration = 3
                })
            end
        end
    })

	TpTool:AddButton({
        Title = "Teleport To ladder",
        Description = "ladder [154, 810, -175]",
        Callback = function()
            local char = game.Players.LocalPlayer.Character
            if char and char:FindFirstChild("HumanoidRootPart") then
                char.HumanoidRootPart.CFrame = CFrame.new(154, 810, -175)
                Fluent:Notify({
                    Title = "TELEPORT COMPLETE",
                    Content = "Successfully teleported to ladder!",
                    Icon = "map-pin",
                    Duration = 3
                })
            end
        end
    })

	TpTool:AddButton({
        Title = "Teleport To safe map 1",
        Description = "ladder [-155, -200, 54]",
        Callback = function()
            local char = game.Players.LocalPlayer.Character
            if char and char:FindFirstChild("HumanoidRootPart") then
                char.HumanoidRootPart.CFrame = CFrame.new(-155, -200, 54)
                Fluent:Notify({
                    Title = "TELEPORT COMPLETE",
                    Content = "Successfully teleported to safe map 1!",
                    Icon = "map-pin",
                    Duration = 3
                })
            end
        end
    })

end


do

    local SpinSection = Tabs.Main:AddSection("Spin Bot", {
        Title = "Rotation Control",
        Icon = "rotate-cw"
    })

    local spinning = false
    local spinSpeed = 50
    local spinConnection = nil

    SpinSection:AddSlider("SpinSpeed", {
        Title = "Rotation Speed",
        Default = 50,
        Min = 10,
        Max = 500,
        Rounding = 0,
        Callback = function(value)
            spinSpeed = value
        end
    })

    SpinSection:AddToggle("SpinToggle", {
        Title = "Enable Spin Bot",
        Default = false,
        Callback = function(state)
            spinning = state
            if state then
                spinConnection = game:GetService("RunService").Heartbeat:Connect(function()
                    if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame *= CFrame.Angles(0, math.rad(spinSpeed), 0)
                    end
                end)
            else
                if spinConnection then spinConnection:Disconnect() end
            end
        end
    })
end


do
    
    local BullySection = Tabs.Bully:AddSection("Psychological Warfare", {
        Title = "Chat Dominator",
        Icon = "message-square"
    })

	
	
    local bullyMessages = {
        "Ребят, ну тренируйтесь, когда-нибудь и вы меня догоните... Может быть ",
    	"А что, вы всегда такие медленные? Я думал, это просто задержка сервера!",
    	"Эй, у кого тут лобби для новичков? Кажется, я ошибся игрой ",
    	"Не переживайте, ещё пару тысяч часов, и вы почти как я.",
    	"Ребят, я же не виноват, что ваши экраны не так быстро реагируют, как мой!",
    	"Если это ваше лучшее, мне даже как-то неловко...",
    	"Кажется, у вас появился шанс! Ловите скриншот на память.",
    	"Стараюсь играть аккуратно, чтобы не расстраивать вас слишком сильно ",
    	"Где же ваши хайлайты? А, точно, вы в тени моего мастерства!",
    	"Давайте так: вы не будете ныть, а я немного снизил уровень... на 0.01%!",
    	"Успокойтесь, ребят, это просто естественный талант! ",
    	"Ощущение, что играю против ботов... кто-нибудь ещё здесь живой?",
    	"Не обижайтесь, я просто даю вам повод для тренировок!",
    	"Ну что, записали мой урок? Повторим ещё раз?",
    	"Ой, простите, кажется, я случайно включил ‘режим бога’!",
    	"Не переживайте, я на вас свои читы и тестирую!",
    	"Даже и не знаю, что сказать... против вас скучно ",
    	"Когда ты на пике формы, а противник всё ещё на разминке.",
    	"Легко, как утренний кофе ☕️. Кто следующий?",
    	"Вам там нормально, или мне сбавить обороты?",
    	"Вы серьёзно? Я думал, это был разминочный раунд!",
    	"Ребят, это матч или тренировка для новичков?",
    	"Вам до меня ещё как до луны пешком.",
    	"Сори, если слишком быстро для вас, это просто реакция!",
    	"Мне кажется, что играю в соло — где вы все?",
    	"Ваши скиллы тут точно не в приоритете.",
    	"Ого, это вы так ‘атака’ называете? Забавно!",
    	"Вы что, пингвинчики? Так медленно двигаетесь!",
    	"Попробуйте угадать, где я появлюсь... или даже не пытайтесь.",
    	"А может, я просто экс-чемпион мира? Вам не узнать!",
    	"Такое чувство, что вы с завязанными глазами играете!",
    	"Кто-то тут не на моём уровне... и это не я.",
    	"Кажется, вы всё время на паузе, или это только кажется?",
    	"Вы точно знали, что зашли в матч, а не в лобби для болтовни?",
    	"А я могу даже без чата вас обыграть. Проверим?",
    	"Когда вы уже начнете пытаться? Я вас жду!",
    	"Даже с закрытыми глазами можно быть быстрее.",
    	"Придётся снизить свою сложность, чтобы вам шансы дать.",
    	"Тренируйтесь больше, а то я заскучаю.",
    	"Можете сразу сдаться, я не обижусь!"
    }

    local function sendMessage()
        local randomIndex = math.random(#bullyMessages)
        local messageToSend = bullyMessages[randomIndex]
        
      
        if game:GetService("TextChatService").ChatVersion == Enum.ChatVersion.TextChatService then
            game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync(messageToSend)
        else
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(messageToSend, "All")
        end
    end

 
    local bullyKey = "F5"
    local spamInterval = 30 
    local spamThread = nil

    BullySection:AddInput("BullyKey", {
        Title = "KeyBind",
        Default = "F5",
        PlaceholderText = "Нажмите любую клавишу",
        Callback = function(text)
            bullyKey = text:upper()
        end
    })

  
    BullySection:AddSlider("SpamTimer", {
        Title = "Spam Interval",
        Default = 30,
        Min = 5,
        Max = 120,
        Rounding = 0,
        Callback = function(value)
            spamInterval = value
        end
    })

    
    BullySection:AddToggle("EnableSpam", {
        Title = "Auto-spam",
        Default = false,
        Callback = function(state)
            if state then
                spamThread = task.spawn(function()
                    while true do
                        sendMessage()
                        task.wait(spamInterval)
                    end
                end)
            else
                if spamThread then task.cancel(spamThread) end
            end
        end
    })

    
    game:GetService("UserInputService").InputBegan:Connect(function(input)
        if input.KeyCode.Name:upper() == bullyKey then
            sendMessage()
        end
    end)

    
    BullySection:AddButton({
        Title = "Random",
        Description = "Toogle",
        Callback = sendMessage
    })

	

	
end


do
    local AntiRagdollSection = Tabs.Main:AddSection("Anti Ragdoll", {
        Title = "Ragdoll Control",
        Icon = "shield"
    })

    local ragdollScript = nil
    local originalParent = nil
    local playerName = game.Players.LocalPlayer.Name

    AntiRagdollSection:AddToggle("AntiRagdollToggle", {
        Title = "Anti Ragdoll",
        Default = false,
        Callback = function(state)
            if state then
               
                local folder = workspace:FindFirstChild(playerName)
                if folder then
                    ragdollScript = folder:FindFirstChild("Local Ragdoll")
                    if ragdollScript then
                        originalParent = ragdollScript.Parent
                        ragdollScript.Parent = nil
                    end
                end
            else
               
                if ragdollScript and originalParent then
                    ragdollScript.Parent = originalParent
                end
            end
        end
    })
end

do
    local BalloonSection = Tabs.Main:AddSection("Anti Balloon", {
        Title = "Anti Balloon",
        Icon = "wind"
    })

    local balloonTracker = nil
    local isEnabled = false

    local function balloonDestroyer(child)
        if child.Name == "Balloon" then
            child:Destroy()
            Fluent:Notify({
                Title = "BALLO NEUTRALIZED",
                Content = "Balloon object was deleted",
                Icon = "alert-circle",
                Duration = 2
            })
        end
    end

    BalloonSection:AddToggle("Auto Delete Balloon", {
        Title = "Work",
        Default = false,
        Callback = function(state)
            isEnabled = state
            if state then
                balloonTracker = workspace.ChildAdded:Connect(balloonDestroyer)
                
                for _, child in pairs(workspace:GetChildren()) do
                    balloonDestroyer(child)
                end
            else
                if balloonTracker then
                    balloonTracker:Disconnect()
                end
            end
        end
    })
end
              

                        do
                            local AnimSection = Tabs.Animation:AddSection("Animations", {
                                Title = "Animation Controller",
                                Icon = "sliders"
                            })
                        
                            local animationPresets = {
                                Vampire = {
                                    idle1 = "1083445855",
                                    idle2 = "1083450166",
                                    walk = "1083473930",
                                    run = "1083462077",
                                    jump = "1083455352",
                                    climb = "1083439238",
                                    fall = "1083443587"
                                },
                                Catwalk = {
                                    idle1 = "94970088341563",
                                    idle2 = "133806214992291",
                                    walk = "109168724482748",
                                    run = "81024476153754",
                                    jump = "116936326516985",
                                    climb = "119377220967554",
                                    fall = "92294537340807"
                                },
                                Zombie = {
                                    idle1 = "616158929",
                                    idle2 = "616160636",
                                    walk = "616168032",
                                    run = "616163682",
                                    jump = "616161997",
                                    climb = "616156119",
                                    fall = "616157476"
                                },
                                Mage = {
                                    idle1 = "707742142",
                                    idle2 = "707855907",
                                    walk = "707897309",
                                    run = "707861613",
                                    jump = "707853694",
                                    climb = "707826056",
                                    fall = "707829716"
                                },
                                Elder = {
                                    idle1 = "845397899",
                                    idle2 = "845400520",
                                    walk = "845403856",
                                    run = "845386501",
                                    jump = "845398858",
                                    climb = "845392038",
                                    fall = "845396048"
                                },
                                Adidas = {
                                    idle1 = "122257458498464",
                                    idle2 = "102357151005774",
                                    walk = "122150855457006",
                                    run = "82598234841035",
                                    jump = "75290611992385",
                                    climb = "88763136693023",
                                    fall = "98600215928904"
                                },
                                Sneaky = {
                                    idle1 = "1132473842",
                                    idle2 = "1132477671",
                                    walk = "1132510133",
                                    run = "1132494274",
                                    jump = "1132489853",
                                    climb = "1132461372",
                                    fall = "1132469004"
                                },
                                ZombieFE = {
                                    idle1 = "3489171152",
                                    idle2 = "3489171152",
                                    walk = "3489174223",
                                    run = "3489173414",
                                    jump = "616161997",
                                    climb = "616156119",
                                    fall = "616157476"
                                },
                                Levitation = {
                                    idle1 = "98600215928904",
                                    idle2 = "98600215928904",
                                    walk = "98600215928904",
                                    run = "98600215928904",
                                    jump = "98600215928904",
                                    climb = "98600215928904",
                                    fall = "98600215928904"
                                },    
                                Putin = {
                                    idle1 = "18537376492",
                                    idle2 = "18537371272",
                                    walk = "18537392113",
                                    run = "18537384940",
                                    jump = "18537380791",
                                    climb = "18537363391",
                                    fall = "18537367238"
                                }
                            }
        
            local currentPreset = "Default"
        
            local function ApplyAnimation(preset)
                currentPreset = preset
                local plr = game:GetService("Players").LocalPlayer
                if not plr.Character then return end
                
                local animate = plr.Character:FindFirstChild("Animate")
                if not animate then return end
        
                animate.Disabled = true
                
                -- Остановка текущих анимаций
                for _, track in pairs(plr.Character.Humanoid:GetPlayingAnimationTracks()) do
                    track:Stop()
                end
        
                -- Применение новых анимаций
                if preset == "Default" then
                    animate.Disabled = false
                    return
                end
        
                local animations = animationPresets[preset]
                animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id="..animations.idle1
                animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id="..animations.idle2
                animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id="..animations.walk
                animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id="..animations.run
                animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id="..animations.jump
                animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id="..animations.climb
                animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id="..animations.fall
        
                plr.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Swimming)
                task.wait(0.1)
                animate.Disabled = false
            end
        
            game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function(char)
                humanoid = char:WaitForChild("Humanoid")
            
            -- Автоматическое применение анимаций
                task.wait(0.3) -- Ждем полной загрузки персонажа
                ApplyAnimation(currentPreset)
            
            -- Авто-экипировка оружия
                if currentPreset ~= "Default" then
                    local animate = char:WaitForChild("Animate")
                    animate.Disabled = true
                    task.wait(0.1)
                    animate.Disabled = false
                end
            end)
        
            -- Кнопки для пресетов
            AnimSection:AddButton({
                Title = "Vampire Animations",
                Description = "Apply vampire movement style",
                Callback = function()
                    local player = game.Players.LocalPlayer
                    local character = player.Character or player.CharacterAdded:Wait()
                    local humanoid = character:FindFirstChildOfClass("Humanoid")
                    if humanoid then

                    currentSpeed = humanoid.WalkSpeed

                    ApplyAnimation("Vampire")

                    humanoid.WalkSpeed = 16
                end
                    Fluent:Notify({
                        Title = "ANIMATION CHANGED",
                        Content = "Vampire animations applied!",
                        Icon = "moon",
                        Duration = 3
                    })
                end
            })
        
            AnimSection:AddButton({
                Title = "Elder Animations",
                Description = "Apply elder movement style",
                Callback = function()
                    ApplyAnimation("Elder")
                    local player = game.Players.LocalPlayer
                    local character = player.Character or player.CharacterAdded:Wait()
                    local humanoid = character:FindFirstChildOfClass("Humanoid")
                    if humanoid then

                    currentSpeed = humanoid.WalkSpeed

                    ApplyAnimation("Elder")

                    humanoid.WalkSpeed = 16
                end
                    Fluent:Notify({
                        Title = "ANIMATION CHANGED",
                        Content = "Elder animations applied!",
                        Icon = "moon",
                        Duration = 3
                    })
                end
            })
        
            AnimSection:AddButton({
                Title = "Mage Animations",
                Description = "Apply mage movement style",
                Callback = function()
                    ApplyAnimation("Mage")
                    local player = game.Players.LocalPlayer
                    local character = player.Character or player.CharacterAdded:Wait()
                    local humanoid = character:FindFirstChildOfClass("Humanoid")
                    if humanoid then

                    currentSpeed = humanoid.WalkSpeed

                    ApplyAnimation("Mage")

                    humanoid.WalkSpeed = 16
                end
                    Fluent:Notify({
                        Title = "ANIMATION CHANGED",
                        Content = "Mage animations applied!",
                        Icon = "moon",
                        Duration = 3
                    })
                end
            })
        
            AnimSection:AddButton({
                Title = "Catwalk Animations",
                Description = "Apply model walk style",
                Callback = function()
                    ApplyAnimation("Catwalk")
                    local player = game.Players.LocalPlayer
                    local character = player.Character or player.CharacterAdded:Wait()
                    local humanoid = character:FindFirstChildOfClass("Humanoid")
                    if humanoid then

                    currentSpeed = humanoid.WalkSpeed

                    ApplyAnimation("Catwalk")

                    humanoid.WalkSpeed = 16
                end
                    Fluent:Notify({
                        Title = "ANIMATION CHANGED",
                        Content = "Catwalk animations applied!",
                        Icon = "trending-up",
                        Duration = 3
                    })
                end
            })
        
            AnimSection:AddButton({
                Title = "Zombie Animations",
                Description = "Apply zombie movement style",
                Callback = function()
                    ApplyAnimation("Zombie")
                    local player = game.Players.LocalPlayer
                    local character = player.Character or player.CharacterAdded:Wait()
                    local humanoid = character:FindFirstChildOfClass("Humanoid")
                    if humanoid then

                    currentSpeed = humanoid.WalkSpeed

                    ApplyAnimation("Zombie")

                    humanoid.WalkSpeed = 16
                end
                    Fluent:Notify({
                        Title = "ANIMATION CHANGED",
                        Content = "Zombie animations applied!",
                        Icon = "biohazard",
                        Duration = 3
                    })
                end
            })

            AnimSection:AddButton({
                Title = "Adidas Animations",
                Description = "Apply adidas movement style",
                Callback = function()
                    local player = game.Players.LocalPlayer
                    local character = player.Character or player.CharacterAdded:Wait()
                    local humanoid = character:FindFirstChildOfClass("Humanoid")
                    if humanoid then

                    currentSpeed = humanoid.WalkSpeed

                    ApplyAnimation("Adidas")

                    humanoid.WalkSpeed = 16
                end
                    Fluent:Notify({
                        Title = "ANIMATION CHANGED",
                        Content = "Adidas animations applied!",
                        Icon = "moon",
                        Duration = 3
                    })
                end
            })

            AnimSection:AddButton({
                Title = "Sneaky",
                Description = "Apply adidas movement style",
                Callback = function()
                    local player = game.Players.LocalPlayer
                    local character = player.Character or player.CharacterAdded:Wait()
                    local humanoid = character:FindFirstChildOfClass("Humanoid")
                    if humanoid then

                    currentSpeed = humanoid.WalkSpeed

                    ApplyAnimation("Sneaky")

                    humanoid.WalkSpeed = 16
                end
                    Fluent:Notify({
                        Title = "ANIMATION CHANGED",
                        Content = "Adidas animations applied!",
                        Icon = "moon",
                        Duration = 3
                    })
                end
            })


            AnimSection:AddButton({
                Title = "ZombieFE Animations",
                Description = "Apply ZombieFE movement style",
                Callback = function()
                    local player = game.Players.LocalPlayer
                    local character = player.Character or player.CharacterAdded:Wait()
                    local humanoid = character:FindFirstChildOfClass("Humanoid")
                    if humanoid then

                    currentSpeed = humanoid.WalkSpeed

                    ApplyAnimation("ZombieFE")

                    humanoid.WalkSpeed = 16
                end
                    Fluent:Notify({
                        Title = "ANIMATION CHANGED",
                        Content = "ZombieFE animations applied!",
                        Icon = "biohazard",
                        Duration = 3
                    })
                end
            })

                        AnimSection:AddButton({
                Title = "Levitation Animations",
                Description = "Apply Levitation movement style",
                Callback = function()
                    local player = game.Players.LocalPlayer
                    local character = player.Character or player.CharacterAdded:Wait()
                    local humanoid = character:FindFirstChildOfClass("Humanoid")
                    if humanoid then

                    currentSpeed = humanoid.WalkSpeed

                    ApplyAnimation("Levitation")

                    humanoid.WalkSpeed = 16
                end
                    Fluent:Notify({
                        Title = "ANIMATION CHANGED",
                        Content = "Levitation animations applied!",
                        Icon = "biohazard",
                        Duration = 3
                    })
                end
            })
            

            
            AnimSection:AddButton({
                Title = "Putin Animations",
                Description = "Apply Putin movement style",
                Callback = function()
                    local player = game.Players.LocalPlayer
                    local character = player.Character or player.CharacterAdded:Wait()
                    local humanoid = character:FindFirstChildOfClass("Humanoid")
                    if humanoid then
                        -- Сохраняем текущую скорость перед изменением
                        currentSpeed = humanoid.WalkSpeed
                        
                        -- Применяем анимацию
                        ApplyAnimation("Putin")
                        
                        -- Устанавливаем скорость 5
                        humanoid.WalkSpeed = 5
                    end
                    Fluent:Notify({
                        Title = "ANIMATION CHANGED",
                        Content = "Putin animations applied!",
                        Icon = "biohazard",
                        Duration = 3
                    })
                end
            })
            
            -- Предположим, у вас есть функция для смены анимаций, например:
            function ChangeAnimation(animationName)
                local player = game.Players.LocalPlayer
                local character = player.Character or player.CharacterAdded:Wait()
                local humanoid = character:FindFirstChildOfClass("Humanoid")
                if humanoid then
                    -- Восстанавливаем скорость перед сменой анимации
                    humanoid.WalkSpeed = currentSpeed or defaultSpeed
                    
                    -- Меняем анимацию
                    ApplyAnimation(animationName)
                    
                    -- Если нужно, можно установить новую скорость для этой анимации
                    if animationName == "Putin" then
                        humanoid.WalkSpeed = 5
                    else
                        -- Восстановить дефолтную или другую нужную скорость для других анимаций
                        humanoid.WalkSpeed = defaultSpeed
                    end
                end
            end
        
            -- Кнопка сброса
            AnimSection:AddButton({
                Title = "Reset Animations",
                Description = "Restore default animations",
                Callback = function()
                    ApplyAnimation("Default")
                    Fluent:Notify({
                        Title = "ANIMATION RESET",
                        Content = "Default animations restored!",
                        Icon = "rotate-ccw",
                        Duration = 3
                    })
                end
            })
        
            -- Автоматическое применение при респавне
            game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function(char)
                task.wait(1)
                ApplyAnimation(currentPreset)
            end)
        end


        do
            local CMDSection = Tabs.CMD:AddSection("CMD", {
                Title = "CMD",
                Icon = "message-square"
            })
        
            local espData = {
                highlights = {},
                billboards = {},
                connections = {}
            }

            CMDSection:AddButton({
                Title = "Infinite Yield",
                Description = "Активация супер читера (Череп)",
                Callback = function()
                    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
                end
            })

            CMDSection:AddButton({
                Title = "Nameless Admin",
                Description = "Активация баннихопа",
                Callback = function()
                    loadstring(game:HttpGet('https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/main/Source'))()
                end
            })
        end

do
    local FlightSection = Tabs.Player:AddSection("Fly", {
    Title = "Flight Control",
    Icon = "feather"
})

    local FLYING = false
    local QEfly = true
    local iyflyspeed = 50
    local flyKeyDown, flyKeyUp
    local bindInput = "E"

    local function getRoot(char)
        return char:FindFirstChild("HumanoidRootPart") or char:FindFirstChild("Torso")
    end

    local function sFLY()
        repeat wait() until game.Players.LocalPlayer.Character and getRoot(game.Players.LocalPlayer.Character) and 
            game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
    
        if flyKeyDown or flyKeyUp then 
            flyKeyDown:Disconnect() 
            flyKeyUp:Disconnect() 
        end

        local T = getRoot(game.Players.LocalPlayer.Character)
        local CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
        local lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
        local SPEED = 0

        local function FLY()
            FLYING = true
            local BG = Instance.new('BodyGyro')
            local BV = Instance.new('BodyVelocity')
            BG.P = 9e4
            BG.Parent = T
            BV.Parent = T
            BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
            BG.cframe = T.CFrame
            BV.velocity = Vector3.new(0, 0, 0)
            BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
        
            spawn(function()
                repeat wait()
                    if game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
                        game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = true
                    end
                    if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0 then
                        SPEED = 50
                    elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0) and SPEED ~= 0 then
                        SPEED = 0
                    end
                    if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 or (CONTROL.Q + CONTROL.E) ~= 0 then
                        BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + 
                            ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, 
                            (CONTROL.F + CONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
                        lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
                    elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and (CONTROL.Q + CONTROL.E) == 0 and SPEED ~= 0 then
                        BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + 
                            ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, 
                            (lCONTROL.F + lCONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
                    else
                        BV.velocity = Vector3.new(0, 0, 0)
                    end
                    BG.cframe = workspace.CurrentCamera.CoordinateFrame
                until not FLYING
            
                CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
                lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
                SPEED = 0
            
                BG:Destroy()
                BV:Destroy()
                if game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
                    game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
                end
            end)
        end
    
        flyKeyDown = game:GetService("UserInputService").InputBegan:Connect(function(input)
            if input.KeyCode == Enum.KeyCode.W then
                CONTROL.F = iyflyspeed
            elseif input.KeyCode == Enum.KeyCode.S then
                CONTROL.B = -iyflyspeed
            elseif input.KeyCode == Enum.KeyCode.A then
                CONTROL.L = -iyflyspeed
            elseif input.KeyCode == Enum.KeyCode.D then
                CONTROL.R = iyflyspeed
            elseif QEfly and input.KeyCode == Enum.KeyCode.E then
                CONTROL.Q = iyflyspeed * 2
            elseif QEfly and input.KeyCode == Enum.KeyCode.Q then
                CONTROL.E = -iyflyspeed * 2
            end
        end)
    
        flyKeyUp = game:GetService("UserInputService").InputEnded:Connect(function(input)
            if input.KeyCode == Enum.KeyCode.W then
                CONTROL.F = 0
            elseif input.KeyCode == Enum.KeyCode.S then
                CONTROL.B = 0
            elseif input.KeyCode == Enum.KeyCode.A then
                CONTROL.L = 0
            elseif input.KeyCode == Enum.KeyCode.D then
                CONTROL.R = 0
            elseif input.KeyCode == Enum.KeyCode.E then
                CONTROL.Q = 0
            elseif input.KeyCode == Enum.KeyCode.Q then
                CONTROL.E = 0
            end
        end)
    
        FLY()
    end

    local function NOFLY()
        FLYING = false
        if flyKeyDown or flyKeyUp then 
            flyKeyDown:Disconnect() 
            flyKeyUp:Disconnect() 
        end
        if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
            game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
        end
    end

    FlightSection:AddToggle("EnableFlight", {
        Title = "Enable Fly",
        Default = false,
        Callback = function(state)
            if state then
                sFLY()
                Fluent:Notify({
                Title = "FLIGHT ENABLED",
                Content = "Use WASD to move, Q/E for up/down",
                Icon = "feather",
                Duration = 3
            })
            else
                NOFLY()
                Fluent:Notify({
                Title = "FLIGHT DISABLED",
                Content = "",
                Icon = "feather",
                Duration = 2
            })
            end
        end
    })

    FlightSection:AddSlider("FlightSpeed", {
        Title = "Fly Speed",
        Default = iyflyspeed,
        Min = 0.1,
        Max = 50,
        Rounding = 0,
        Callback = function(value)
            iyflyspeed = value
        end
    })

    FlightSection:AddInput("BindInput", {
        Title = "Custom Bind Key",
        Default = "",
        PlaceholderText = "Enter key name (e.g. F)",
        Callback = function(text)
            bindInput = string.upper(text)
        end
    })

    game:GetService("UserInputService").InputBegan:Connect(function(input)
        if bindInput ~= "" and input.KeyCode == Enum.KeyCode[bindInput] then
            local currentState = not FLYING
            if currentState then
                sFLY()
            else
                NOFLY()
            end
            Fluent:Notify({
                Title = "FLIGHT " .. (currentState and "ENABLED" or "DISABLED"),
                Content = "By custom bind: " .. bindInput,
                Icon = "feather",
                Duration = 2
            })
        end
    end)
end

    -- Система сохранения настроек
    do
        SaveManager:SetLibrary(Fluent)
        InterfaceManager:SetLibrary(Fluent)
        SaveManager:SetIgnoreIndexes({})
        InterfaceManager:SetFolder("WAPremiumUI")
        SaveManager:SetFolder("WAPremiumUI/configs")
        
        InterfaceManager:BuildInterfaceSection(Tabs.Config)
        SaveManager:BuildConfigSection(Tabs.Config)
    end

    -- Эффекты перехода
    Window:SelectTab(1)
    Fluent:Notify({
        Title = "Reverie HUB",
        Content = "Succesfully loaded menu!",
        SubContent = "Press Left Ctrl to show menu",
        Duration = 6
    })

    -- Дополнительные стили
    local closeBtn = Window:GetGui().Parent.Parent.CloseButton
    closeBtn.ImageColor3 = Color3.fromRGB(255, 85, 85)
    closeBtn.MouseEnter:Connect(function()
        game:GetService("TweenService"):Create(closeBtn, TweenInfo.new(0.3), {Rotation = 180}):Play()
    end)

    -- Адаптивный блюр
    if game:GetService("UserInputService").TouchEnabled then
        Window:GetGui().Parent.Parent.Size = UDim2.fromScale(0.9, 0.9)
        Window:GetGui().Parent.Parent.Position = UDim2.fromScale(0.05, 0.05)
    end

    Window:SelectTab(1)
    Fluent:Notify({
        Title = "Reverie HUB",
        Content = "Successfully loaded menu!",
        SubContent = "Press Right Ctrl to show menu",
        Duration = 6
    })  
