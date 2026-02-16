-- Youtube: Scriptyyz
-- Key System + Escape Tsunami For Brainrots

local CorrectKey = "etfb2026" 
local KeyLink = "https://link-center.net/1377384/bewSPosAvKRt"

local KeyGui = Instance.new("ScreenGui")
local KeyFrame = Instance.new("Frame")
local KeyTitle = Instance.new("TextLabel")
local KeyInput = Instance.new("TextBox")
local CheckBtn = Instance.new("TextButton")
local GetKeyBtn = Instance.new("TextButton")

KeyGui.Parent = game.CoreGui
KeyGui.Name = "ScriptyyzKeySystem"

-- Glavni okvir
KeyFrame.Name = "KeyFrame"
KeyFrame.Parent = KeyGui
KeyFrame.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
KeyFrame.Position = UDim2.new(0.5, -125, 0.5, -100)
KeyFrame.Size = UDim2.new(0, 250, 0, 200)
KeyFrame.Active = true

local function makeDraggable(obj)
    local dragging, dragInput, dragStart, startPos
    obj.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = true
            dragStart = input.Position
            startPos = obj.Position
        end
    end)
    obj.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement then dragInput = input end
    end)
    game:GetService("UserInputService").InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            local delta = input.Position - dragStart
            obj.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        end
    end)
    game:GetService("UserInputService").InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then dragging = false end
    end)
end
makeDraggable(KeyFrame)

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

GetKeyBtn.MouseButton1Click:Connect(function()
    if setclipboard then
        setclipboard(KeyLink)
        GetKeyBtn.Text = "Link Copied!"
        task.wait(2)
        GetKeyBtn.Text = "Get Key (Copy Link)"
    end
end)

-- FUNKCIJA ZA UCITAVANJE GLAVNE SKRIPTE
local function LoadMainScript()
    local ScreenGui = Instance.new("ScreenGui")
    local MainFrame = Instance.new("Frame")
    local Title = Instance.new("TextLabel")
    local MinimizeBtn = Instance.new("TextButton")
    local Footer = Instance.new("TextLabel")
    local Container = Instance.new("Frame")
    local UIListLayout = Instance.new("UIListLayout")

    local Players = game:GetService("Players")
    local RunService = game:GetService("RunService")
    local UserInputService = game:GetService("UserInputService")
    local workspace = game:GetService("Workspace")
    local player = Players.LocalPlayer
    local camera = workspace.CurrentCamera

    ScreenGui.Parent = game.CoreGui
    MainFrame.Parent = ScreenGui
    MainFrame.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
    MainFrame.Position = UDim2.new(0.1, 0, 0.4, 0)
    MainFrame.Size = UDim2.new(0, 250, 0, 240)
    MainFrame.Active = true
    Instance.new("UICorner", MainFrame).CornerRadius = UDim.new(0, 15)

    -- Draggable naslov za glavni GUI
    local function makeMainDraggable(obj, target)
        local dragging, dragInput, dragStart, startPos
        obj.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                dragging = true
                dragStart = input.Position
                startPos = target.Position
            end
        end)
        obj.InputChanged:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseMovement then dragInput = input end
        end)
        UserInputService.InputChanged:Connect(function(input)
            if input == dragInput and dragging then
                local delta = input.Position - dragStart
                target.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
            end
        end)
        UserInputService.InputEnded:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then dragging = false end
        end)
    end

    Title.Parent = MainFrame
    Title.Size = UDim2.new(1, 0, 0, 45)
    Title.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    Title.Text = "Youtube: Scriptyyz"
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.Font = Enum.Font.GothamBold
    Title.TextSize = 16
    Instance.new("UICorner", Title).CornerRadius = UDim.new(0, 15)
    makeMainDraggable(Title, MainFrame)

    MinimizeBtn.Parent = MainFrame
    MinimizeBtn.Size = UDim2.new(0, 30, 0, 30)
    MinimizeBtn.Position = UDim2.new(1, -35, 0, 7)
    MinimizeBtn.BackgroundTransparency = 1 
    MinimizeBtn.Text = "▼"
    MinimizeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    MinimizeBtn.Font = Enum.Font.GothamBold
    MinimizeBtn.TextSize = 18

    local minimized = false
    MinimizeBtn.MouseButton1Click:Connect(function()
        minimized = not minimized
        MainFrame:TweenSize(minimized and UDim2.new(0, 250, 0, 45) or UDim2.new(0, 250, 0, 240), "Out", "Quart", 0.3, true)
        Container.Visible = not minimized
        Footer.Visible = not minimized
        MinimizeBtn.Text = minimized and "▲" or "▼"
    end)

    Footer.Parent = MainFrame
    Footer.Size = UDim2.new(1, 0, 0, 25)
    Footer.Position = UDim2.new(0, 0, 1, -25)
    Footer.BackgroundTransparency = 1
    Footer.Text = "Escape Tsunami For Brainrots"
    Footer.TextColor3 = Color3.fromRGB(200, 200, 200)
    Footer.Font = Enum.Font.GothamBold
    Footer.TextSize = 11

    Container.Parent = MainFrame
    Container.Position = UDim2.new(0, 10, 0, 55)
    Container.Size = UDim2.new(1, -20, 0, 150)
    Container.BackgroundTransparency = 1
    UIListLayout.Parent = Container
    UIListLayout.Padding = UDim.new(0, 8)

    local function createToggle(txt, callback)
        local btn = Instance.new("TextButton", Container)
        btn.Size = UDim2.new(1, 0, 0, 35)
        btn.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        btn.Text = txt .. ": OFF"
        btn.TextColor3 = Color3.fromRGB(255, 255, 255)
        btn.Font = Enum.Font.GothamBold
        btn.TextSize = 14
        Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 8)
        local enabled = false
        btn.MouseButton1Click:Connect(function()
            enabled = not enabled
            btn.Text = txt .. (enabled and ": ON" or ": OFF")
            btn.BackgroundColor3 = enabled and Color3.fromRGB(50, 150, 50) or Color3.fromRGB(30, 30, 30)
            callback(enabled)
        end)
    end

    local function createSlider(txt, min, max, callback)
        local sliderFrame = Instance.new("Frame", Container)
        sliderFrame.Size = UDim2.new(1, 0, 0, 35)
        sliderFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        Instance.new("UICorner", sliderFrame).CornerRadius = UDim.new(0, 8)
        local label = Instance.new("TextLabel", sliderFrame)
        label.Size = UDim2.new(1, 0, 1, 0)
        label.BackgroundTransparency = 1
        label.Text = txt .. ": " .. min
        label.TextColor3 = Color3.fromRGB(255, 255, 255)
        label.Font = Enum.Font.GothamBold
        label.TextSize = 14
        label.ZIndex = 2
        local fill = Instance.new("Frame", sliderFrame)
        fill.Size = UDim2.new(0, 0, 1, 0)
        fill.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
        Instance.new("UICorner", fill).CornerRadius = UDim.new(0, 8)
        local sliderDragging = false
        local function move()
            local mousePos = UserInputService:GetMouseLocation().X
            local percent = math.clamp((mousePos - sliderFrame.AbsolutePosition.X) / sliderFrame.AbsoluteSize.X, 0, 1)
            fill.Size = UDim2.new(percent, 0, 1, 0)
            local val = math.floor(min + (max - min) * percent)
            label.Text = txt .. ": " .. val
            callback(val)
        end
        sliderFrame.InputBegan:Connect(function(i) if i.UserInputType == Enum.UserInputType.MouseButton1 then sliderDragging = true move() end end)
        UserInputService.InputEnded:Connect(function(i) if i.UserInputType == Enum.UserInputType.MouseButton1 then sliderDragging = false end end)
        RunService.RenderStepped:Connect(function() if sliderDragging then move() end end)
    end

    -- FEATURES
    local flySpeed, flying = 50, false
    createSlider("Fly Speed", 16, 500, function(v) flySpeed = v end)
    createToggle("Fly", function(state)
        flying = state
        local char = player.Character
        local root = char and char:FindFirstChild("HumanoidRootPart")
        if flying and root then
            local bv = Instance.new("BodyVelocity", root)
            bv.MaxForce = Vector3.new(1,1,1) * math.huge
            local bg = Instance.new("BodyGyro", root)
            bg.MaxTorque = Vector3.new(1,1,1) * math.huge
            task.spawn(function()
                while flying do
                    local dir = Vector3.new(0,0,0)
                    if UserInputService:IsKeyDown(Enum.KeyCode.W) then dir = dir + camera.CFrame.LookVector end
                    if UserInputService:IsKeyDown(Enum.KeyCode.S) then dir = dir - camera.CFrame.LookVector end
                    if UserInputService:IsKeyDown(Enum.KeyCode.A) then dir = dir - camera.CFrame.RightVector end
                    if UserInputService:IsKeyDown(Enum.KeyCode.D) then dir = dir + camera.CFrame.RightVector end
                    if UserInputService:IsKeyDown(Enum.KeyCode.Space) then dir = dir + Vector3.new(0,1,0) end
                    if UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) then dir = dir + Vector3.new(0,-1,0) end
                    bv.Velocity = dir * flySpeed
                    bg.CFrame = camera.CFrame
                    task.wait()
                end
                bv:Destroy() bg:Destroy()
            end)
        end
    end)

    local isGodmode, ghostClone, connection, noclipConn = false, nil, nil, nil
    local function cleanup()
        isGodmode = false
        if connection then connection:Disconnect() connection = nil end
        if noclipConn then noclipConn:Disconnect() noclipConn = nil end
        local char = player.Character
        if char then
            local root = char:FindFirstChild("HumanoidRootPart")
            if ghostClone and root then root.CFrame = ghostClone.HumanoidRootPart.CFrame * CFrame.new(0, 2, 0) end
            char.Humanoid.PlatformStand = false
            camera.CameraSubject = char.Humanoid
        end
        if ghostClone then ghostClone:Destroy() ghostClone = nil end
    end

    createToggle("Godmode", function(state)
        isGodmode = state
        local char = player.Character
        if not char then return end
        local root = char:FindFirstChild("HumanoidRootPart")
        local hum = char:FindFirstChild("Humanoid")
        if isGodmode and root and hum then
            char.Archivable = true
            ghostClone = char:Clone()
            ghostClone.Parent = workspace
            char.Archivable = false
            for _, v in pairs(ghostClone:GetDescendants()) do if v:IsA("BasePart") then v.Transparency = 0.5 v.CanCollide = true end end
            hum.PlatformStand = true
            camera.CameraSubject = ghostClone.Humanoid
            noclipConn = RunService.Stepped:Connect(function()
                if isGodmode and char then for _, v in pairs(char:GetDescendants()) do if v:IsA("BasePart") then v.CanCollide = false end end end
            end)
            connection = RunService.Heartbeat:Connect(function()
                if ghostClone and char:FindFirstChild("HumanoidRootPart") then
                    ghostClone.Humanoid:Move(hum.MoveDirection)
                    ghostClone.Humanoid.Jump = hum.Jump
                    root.CFrame = ghostClone.HumanoidRootPart.CFrame * CFrame.new(0, -10, 0)
                    root.AssemblyLinearVelocity = Vector3.zero
                else cleanup() end
            end)
        else cleanup() end
    end)

    createToggle("Instant Interact", function(state)
        for _, v in pairs(workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") then v.HoldDuration = state and 0 or 1 end
        end
    end)
end

-- LOGIKA PROVERE
CheckBtn.MouseButton1Click:Connect(function()
    if KeyInput.Text == CorrectKey then
        CheckBtn.Text = "Correct! Loading..."
        CheckBtn.BackgroundColor3 = Color3.fromRGB(0, 200, 0)
        task.wait(1)
        KeyGui:Destroy()
        LoadMainScript()
    else
        CheckBtn.Text = "Wrong Key!"
        CheckBtn.BackgroundColor3 = Color3.fromRGB(150, 50, 50)
        task.wait(1.5)
        CheckBtn.Text = "Check Key"
        CheckBtn.BackgroundColor3 = Color3.fromRGB(50, 150, 50)
    end
end)
