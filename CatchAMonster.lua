-- [[ CUSTOM KEY SYSTEM + MAIN SCRIPT BY SCRIPTYYZ ]] --

local CorrectKey = "catchamonster2026" 
local KeyLink = "https://link-target.net/1377384/z3FIqTyVboH4"

local KeyGui = Instance.new("ScreenGui")
local KeyFrame = Instance.new("Frame")
local KeyTitle = Instance.new("TextLabel")
local KeyInput = Instance.new("TextBox")
local CheckBtn = Instance.new("TextButton")
local GetKeyBtn = Instance.new("TextButton")

KeyGui.Parent = game.CoreGui
KeyGui.Name = "ScriptyyzKeySystem"

-- Key System GUI Setup
KeyFrame.Name = "KeyFrame"
KeyFrame.Parent = KeyGui
KeyFrame.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
KeyFrame.Position = UDim2.new(0.5, -125, 0.5, -100)
KeyFrame.Size = UDim2.new(0, 250, 0, 200)
KeyFrame.Active = true
KeyFrame.Draggable = true
Instance.new("UICorner", KeyFrame).CornerRadius = UDim.new(0, 15)

KeyTitle.Parent = KeyFrame
KeyTitle.Size = UDim2.new(1, 0, 0, 45)
KeyTitle.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
KeyTitle.Text = "Key System"
KeyTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyTitle.Font = Enum.Font.GothamBold
KeyTitle.TextSize = 14
Instance.new("UICorner", KeyTitle).CornerRadius = UDim.new(0, 15)

KeyInput.Parent = KeyFrame
KeyInput.Position = UDim2.new(0, 25, 0, 65)
KeyInput.Size = UDim2.new(0, 200, 0, 35)
KeyInput.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
KeyInput.Text = ""
KeyInput.PlaceholderText = "Enter Key..."
KeyInput.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyInput.Font = Enum.Font.GothamBold
KeyInput.TextSize = 12
Instance.new("UICorner", KeyInput).CornerRadius = UDim.new(0, 8)

CheckBtn.Parent = KeyFrame
CheckBtn.Position = UDim2.new(0, 25, 0, 110)
CheckBtn.Size = UDim2.new(0, 200, 0, 35)
CheckBtn.BackgroundColor3 = Color3.fromRGB(50, 150, 50)
CheckBtn.Text = "Check Key"
CheckBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
CheckBtn.Font = Enum.Font.GothamBold
CheckBtn.TextSize = 12
Instance.new("UICorner", CheckBtn).CornerRadius = UDim.new(0, 8)

GetKeyBtn.Parent = KeyFrame
GetKeyBtn.Position = UDim2.new(0, 25, 0, 155)
GetKeyBtn.Size = UDim2.new(0, 200, 0, 30)
GetKeyBtn.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
GetKeyBtn.Text = "Get Key (Copy Link)"
GetKeyBtn.TextColor3 = Color3.fromRGB(200, 200, 200)
GetKeyBtn.Font = Enum.Font.GothamBold
GetKeyBtn.TextSize = 11
Instance.new("UICorner", GetKeyBtn).CornerRadius = UDim.new(0, 8)

-- Copy Link Logic
GetKeyBtn.MouseButton1Click:Connect(function()
    if setclipboard then
        setclipboard(KeyLink)
        GetKeyBtn.Text = "Link Copied!"
        task.wait(2)
        GetKeyBtn.Text = "Get Key (Copy Link)"
    else
        GetKeyBtn.Text = "Clipboard not supported"
    end
end)

-- Main Script Activation
local function StartMainScript()
    local LP = game:GetService("Players").LocalPlayer
    local VIM = game:GetService("VirtualInputManager")
    local UIS = game:GetService("UserInputService")
    local RS = game:GetService("RunService")

    _G.AutoAttack = false
    _G.AutoCatch = false
    _G.FlySpeed = 50
    _G.Flying = false

    local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
    local MainFrame = Instance.new("Frame", ScreenGui)
    MainFrame.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
    MainFrame.Position = UDim2.new(0.1, 0, 0.4, 0)
    MainFrame.Size = UDim2.new(0, 250, 0, 245)
    MainFrame.Active = true
    MainFrame.Draggable = true
    Instance.new("UICorner", MainFrame).CornerRadius = UDim.new(0, 15)

    local Title = Instance.new("TextLabel", MainFrame)
    Title.Size = UDim2.new(1, 0, 0, 45)
    Title.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    Title.Text = "Youtube: Scriptyyz"
    Title.TextColor3 = Color3.new(1, 1, 1)
    Title.Font = Enum.Font.GothamBold
    Title.TextSize = 16
    Instance.new("UICorner", Title).CornerRadius = UDim.new(0, 15)

    local Container = Instance.new("ScrollingFrame", MainFrame)
    Container.Position = UDim2.new(0, 10, 0, 50)
    Container.Size = UDim2.new(1, -20, 1, -80)
    Container.BackgroundTransparency = 1
    Container.ScrollBarThickness = 0
    Instance.new("UIListLayout", Container).Padding = UDim.new(0, 6)

    local Footer = Instance.new("TextLabel", MainFrame)
    Footer.Size = UDim2.new(1, 0, 0, 25)
    Footer.Position = UDim2.new(0, 0, 1, -25)
    Footer.BackgroundTransparency = 1
    Footer.Text = "Catch a Monster"
    Footer.TextColor3 = Color3.fromRGB(200, 200, 200)
    Footer.Font = Enum.Font.GothamBold
    Footer.TextSize = 11

    local function createToggle(txt, callback)
        local btn = Instance.new("TextButton", Container)
        btn.Size = UDim2.new(1, 0, 0, 35)
        btn.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        btn.Text = txt .. ": OFF"
        btn.TextColor3 = Color3.new(1, 1, 1)
        btn.Font = Enum.Font.GothamBold
        btn.TextSize = 14
        Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 8)
        local s = false
        btn.MouseButton1Click:Connect(function()
            s = not s
            btn.Text = txt .. (s and ": ON" or ": OFF")
            btn.TextColor3 = s and Color3.new(0, 1, 0) or Color3.new(1, 1, 1)
            callback(s)
        end)
    end

    local function createSlider(txt, min, max, callback)
        local sliderBtn = Instance.new("Frame", Container)
        sliderBtn.Size = UDim2.new(1, 0, 0, 35)
        sliderBtn.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        Instance.new("UICorner", sliderBtn).CornerRadius = UDim.new(0, 8)
        local label = Instance.new("TextLabel", sliderBtn)
        label.Size = UDim2.new(1, 0, 1, 0)
        label.BackgroundTransparency = 1
        label.Text = txt .. ": " .. min
        label.TextColor3 = Color3.new(1, 1, 1)
        label.Font = Enum.Font.GothamBold
        label.TextSize = 14
        label.ZIndex = 2
        local fill = Instance.new("Frame", sliderBtn)
        fill.Size = UDim2.new(0, 0, 1, 0)
        fill.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
        Instance.new("UICorner", fill).CornerRadius = UDim.new(0, 8)
        local drg = false
        local function move()
            local percent = math.clamp((UIS:GetMouseLocation().X - sliderBtn.AbsolutePosition.X) / sliderBtn.AbsoluteSize.X, 0, 1)
            fill.Size = UDim2.new(percent, 0, 1, 0)
            local v = math.floor(min + (max - min) * percent)
            label.Text = txt .. ": " .. v
            callback(v)
        end
        sliderBtn.InputBegan:Connect(function(i) if i.UserInputType == Enum.UserInputType.MouseButton1 then drg = true move() end end)
        UIS.InputEnded:Connect(function(i) if i.UserInputType == Enum.UserInputType.MouseButton1 then drg = false end end)
        RS.RenderStepped:Connect(function() if drg then move() end end)
    end

    createToggle("Fly", function(v) _G.Flying = v end)
    createSlider("Fly Speed", 0, 250, function(v) _G.FlySpeed = v end)
    createToggle("Auto Attack", function(v) _G.AutoAttack = v end)
    createToggle("Instant Catch", function(v) _G.AutoCatch = v end)

    task.spawn(function()
        local BV, BG = Instance.new("BodyVelocity"), Instance.new("BodyGyro")
        BV.MaxForce, BG.MaxTorque = Vector3.new(1e8, 1e8, 1e8), Vector3.new(1e8, 1e8, 1e8)
        RS.RenderStepped:Connect(function()
            if _G.Flying and LP.Character and LP.Character:FindFirstChild("HumanoidRootPart") then
                local hrp = LP.Character.HumanoidRootPart
                BV.Parent, BG.Parent = hrp, hrp
                BG.CFrame = workspace.CurrentCamera.CFrame
                local dir = Vector3.new(0,0,0)
                if UIS:IsKeyDown(Enum.KeyCode.W) then dir = dir + workspace.CurrentCamera.CFrame.LookVector end
                if UIS:IsKeyDown(Enum.KeyCode.S) then dir = dir - workspace.CurrentCamera.CFrame.LookVector end
                if UIS:IsKeyDown(Enum.KeyCode.A) then dir = dir - workspace.CurrentCamera.CFrame.RightVector end
                if UIS:IsKeyDown(Enum.KeyCode.D) then dir = dir + workspace.CurrentCamera.CFrame.RightVector end
                if UIS:IsKeyDown(Enum.KeyCode.Space) then dir = dir + Vector3.new(0,1,0) end
                if UIS:IsKeyDown(Enum.KeyCode.LeftControl) then dir = dir - Vector3.new(0,1,0) end
                BV.Velocity = dir * _G.FlySpeed
            else
                BV.Parent, BG.Parent = nil, nil
            end
        end)
    end)

    task.spawn(function()
        while task.wait(0.2) do
            if _G.AutoAttack and LP.Character:FindFirstChild("HumanoidRootPart") then
                local hrp = LP.Character.HumanoidRootPart
                for _, m in pairs(workspace.Monsters:GetChildren()) do
                    if m:IsA("Part") and (hrp.Position - m.Position).Magnitude < 30 then
                        local pos, vis = workspace.CurrentCamera:WorldToViewportPoint(m.Position)
                        if vis then
                            VIM:SendMouseButtonEvent(pos.X, pos.Y, 0, true, game, 1)
                            task.wait(0.05)
                            VIM:SendMouseButtonEvent(pos.X, pos.Y, 0, false, game, 1)
                        end
                        break
                    end
                end
            end
        end
    end)

    task.spawn(function()
        local myId = "CatchPlayerId_" .. LP.UserId
        while task.wait(0.1) do
            if _G.AutoCatch then
                for _, m in pairs(workspace.Monsters:GetChildren()) do
                    if m:GetAttribute(myId) then
                        VIM:SendKeyEvent(true, Enum.KeyCode.E, false, game)
                        task.wait(0.05)
                        VIM:SendKeyEvent(false, Enum.KeyCode.E, false, game)
                    end
                end
            end
        end
    end)
end

-- Check Key Logic
CheckBtn.MouseButton1Click:Connect(function()
    if KeyInput.Text == CorrectKey then
        CheckBtn.Text = "Correct! Loading..."
        CheckBtn.BackgroundColor3 = Color3.fromRGB(0, 200, 0)
        task.wait(1)
        KeyGui:Destroy()
        StartMainScript()
    else
        CheckBtn.Text = "Wrong Key!"
        CheckBtn.BackgroundColor3 = Color3.fromRGB(150, 50, 50)
        task.wait(1.5)
        CheckBtn.Text = "Check Key"
        CheckBtn.BackgroundColor3 = Color3.fromRGB(50, 150, 50)
    end
end)
