-- Youtube: Scriptyyz
-- Key System + Draw A Raft Script

local CorrectKey = "drawaraft2026" -- Tvoj ključ
local KeyLink = "https://link-center.net/1377384/msSgJTMI8rQ7" -- Tvoj link

local KeyGui = Instance.new("ScreenGui")
local KeyFrame = Instance.new("Frame")
local KeyTitle = Instance.new("TextLabel")
local KeyInput = Instance.new("TextBox")
local CheckBtn = Instance.new("TextButton")
local GetKeyBtn = Instance.new("TextButton")

KeyGui.Parent = game.CoreGui
KeyGui.Name = "ScriptyyzKeySystem"

-- Key System UI Setup
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

-- Funkcije za gumbe
GetKeyBtn.MouseButton1Click:Connect(function()
    if setclipboard then
        setclipboard(KeyLink)
        GetKeyBtn.Text = "Link Copied!"
        task.wait(2)
        GetKeyBtn.Text = "Get Key (Copy Link)"
    end
end)

--- MAIN SCRIPT FUNCTION ---
local function LoadMainScript()
    -- OVDE IDE TVOJA FINALNA SKRIPTA SA STRELICOM I SVIM FUNKCIJAMA
    local ScreenGui = Instance.new("ScreenGui")
    local MainFrame = Instance.new("Frame")
    local Title = Instance.new("TextLabel")
    local MinimizeBtn = Instance.new("TextButton")
    local Footer = Instance.new("TextLabel")
    local Container = Instance.new("ScrollingFrame")
    local UIListLayout = Instance.new("UIListLayout")

    local spawnCF = CFrame.new(-7208.8833, 9.79997635, -62.1530075)
    local endWaterCF = CFrame.new(9222.9873, -5.31885481, -53.2119141)

    ScreenGui.Parent = game.CoreGui
    MainFrame.Parent = ScreenGui
    MainFrame.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
    MainFrame.Position = UDim2.new(0.1, 0, 0.4, 0)
    MainFrame.Size = UDim2.new(0, 250, 0, 235)
    MainFrame.Active = true
    MainFrame.Draggable = true
    Instance.new("UICorner", MainFrame).CornerRadius = UDim.new(0, 15)

    Title.Parent = MainFrame
    Title.Size = UDim2.new(1, 0, 0, 45)
    Title.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    Title.Text = "Youtube: Scriptyyz"
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.Font = Enum.Font.GothamBold
    Title.TextSize = 16
    Instance.new("UICorner", Title).CornerRadius = UDim.new(0, 15)

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
        MainFrame:TweenSize(minimized and UDim2.new(0, 250, 0, 45) or UDim2.new(0, 250, 0, 235), "Out", "Quart", 0.3, true)
        Container.Visible = not minimized
        Footer.Visible = not minimized
        MinimizeBtn.Text = minimized and "▲" or "▼"
    end)

    Footer.Parent = MainFrame
    Footer.Size = UDim2.new(1, 0, 0, 25)
    Footer.Position = UDim2.new(0, 0, 1, -25)
    Footer.BackgroundTransparency = 1
    Footer.Text = "Draw A Raft & Set Sail"
    Footer.TextColor3 = Color3.fromRGB(200, 200, 200)
    Footer.Font = Enum.Font.GothamBold
    Footer.TextSize = 11

    Container.Parent = MainFrame
    Container.Position = UDim2.new(0, 10, 0, 50)
    Container.Size = UDim2.new(1, -20, 1, -80)
    Container.BackgroundTransparency = 1
    Container.ScrollBarThickness = 0

    UIListLayout.Parent = Container
    UIListLayout.Padding = UDim.new(0, 6)

    local function createButton(txt, callback)
        local btn = Instance.new("TextButton", Container)
        btn.Size = UDim2.new(1, 0, 0, 35)
        btn.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        btn.Text = txt
        btn.TextColor3 = Color3.fromRGB(255, 255, 255)
        btn.Font = Enum.Font.GothamBold
        btn.TextSize = 14
        Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 8)
        btn.MouseButton1Click:Connect(callback)
        return btn
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
        label.TextColor3 = Color3.fromRGB(255, 255, 255)
        label.Font = Enum.Font.GothamBold
        label.TextSize = 14
        label.ZIndex = 2
        local fill = Instance.new("Frame", sliderBtn)
        fill.Size = UDim2.new(0, 0, 1, 0)
        fill.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
        fill.BorderSizePixel = 0
        Instance.new("UICorner", fill).CornerRadius = UDim.new(0, 8)
        local dragging = false
        local function move()
            local mousePos = game:GetService("UserInputService"):GetMouseLocation().X
            local percent = math.clamp((mousePos - sliderBtn.AbsolutePosition.X) / sliderBtn.AbsoluteSize.X, 0, 1)
            fill.Size = UDim2.new(percent, 0, 1, 0)
            local val = math.floor(min + (max - min) * percent)
            label.Text = txt .. ": " .. val
            callback(val)
        end
        sliderBtn.InputBegan:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseButton1 then dragging = true move() end end)
        game:GetService("UserInputService").InputEnded:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseButton1 then dragging = false end end)
        game:GetService("RunService").RenderStepped:Connect(function() if dragging then move() end end)
    end

    createButton("Instant Win", function()
        local target = workspace:FindFirstChild("Endzone") and workspace.Endzone:FindFirstChild("EndzoneHitbox")
        if target then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = target.CFrame
            task.wait(0.3)
            keypress(Enum.KeyCode.E)
            task.wait(0.1)
            keyrelease(Enum.KeyCode.E)
        end
    end)

    local autoCashLoop = false
    local acBtn = createButton("Auto Cash: OFF", function() end)
    acBtn.MouseButton1Click:Connect(function()
        autoCashLoop = not autoCashLoop
        acBtn.Text = autoCashLoop and "Auto Cash: ON" or "Auto Cash: OFF"
        if autoCashLoop then
            task.spawn(function()
                while autoCashLoop do
                    local hrp = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                    if hrp then
                        hrp.CFrame = endWaterCF
                        task.wait(0.8)
                        if not autoCashLoop then break end
                        hrp.CFrame = spawnCF
                        task.wait(0.5)
                    end
                    task.wait(0.05)
                end
            end)
        end
    end)

    createSlider("Walkspeed", 16, 250, function(v)
        if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
        end
    end)
end

-- Login Logic
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
