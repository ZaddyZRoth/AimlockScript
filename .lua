local WindowTable = {}

local TweenService = game:GetService("TweenService")

function WindowTable:CreateWindow(Name)
    local Comet = Instance.new("ScreenGui")
    local MainFrame = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local SideBar = Instance.new("Frame")
    local sideCorner = Instance.new("UICorner")
    local allTabs = Instance.new("Frame")
    local tabListing = Instance.new("UIListLayout")
    local allPages = Instance.new("Frame")
    local mainCorner = Instance.new("UICorner")
    local topBar = Instance.new("Frame")
    local topBarCorner = Instance.new("UICorner")
    local TextLabel = Instance.new("TextLabel")
    local power_settings_new = Instance.new("ImageButton")
    local TextButton_2 = Instance.new("TextButton")
    local coverCorner = Instance.new("Frame")

    Comet.Name = "Comet"
    Comet.Parent = game.CoreGui
    Comet.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    Comet.ResetOnSpawn = false

    MainFrame.Name = "MainFrame"
    MainFrame.Parent = Comet
    MainFrame.BackgroundColor3 = Color3.fromRGB(30, 31, 36)
    MainFrame.BorderSizePixel = 0
    MainFrame.Position = UDim2.new(0.0248640236, 0, 0.334155351, 0)
    MainFrame.Size = UDim2.new(0, 461, 0, 264)
    MainFrame.Active = true
    MainFrame.Draggable = true

    UICorner.CornerRadius = UDim.new(0, 3)
    UICorner.Parent = MainFrame

    SideBar.Name = "SideBar"
    SideBar.Parent = MainFrame
    SideBar.BackgroundColor3 = Color3.fromRGB(40, 41, 46)
    SideBar.BorderColor3 = Color3.fromRGB(30, 31, 36)
    SideBar.BorderSizePixel = 0
    SideBar.Position = UDim2.new(0, 0, 0.149914026, 0)
    SideBar.Size = UDim2.new(0, 112, 0, 220)

    sideCorner.CornerRadius = UDim.new(0, 3)
    sideCorner.Name = "sideCorner"
    sideCorner.Parent = SideBar

    allTabs.Name = "allTabs"
    allTabs.Parent = SideBar
    allTabs.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    allTabs.BackgroundTransparency = 1.000
    allTabs.Position = UDim2.new(0.0535714291, 0, 0.0273128282, 0)
    allTabs.Size = UDim2.new(0, 100, 0, 212)

    tabListing.Name = "tabListing"
    tabListing.Parent = allTabs
    tabListing.SortOrder = Enum.SortOrder.LayoutOrder
    tabListing.Padding = UDim.new(0, 2)

    coverCorner.Name = "coverCorner"
    coverCorner.Parent = SideBar
    coverCorner.BackgroundColor3 = Color3.fromRGB(40, 41, 46)
    coverCorner.BorderSizePixel = 0
    coverCorner.Position = UDim2.new(0.946428597, 0, 0, 0)
    coverCorner.Size = UDim2.new(0, 6, 0, 220)

    allPages.Name = "allPages"
    allPages.Parent = MainFrame
    allPages.BackgroundColor3 = Color3.fromRGB(40, 41, 46)
    allPages.Position = UDim2.new(0.262472898, 0, 0.149914026, 0)
    allPages.Size = UDim2.new(0, 332, 0, 220)

    mainCorner.CornerRadius = UDim.new(0, 3)
    mainCorner.Name = "mainCorner"
    mainCorner.Parent = allPages

    topBar.Name = "topBar"
    topBar.Parent = MainFrame
    topBar.BackgroundColor3 = Color3.fromRGB(40, 41, 46)
    topBar.BorderColor3 = Color3.fromRGB(40, 41, 46)
    topBar.Position = UDim2.new(0.0130151846, 0, 0.0230769534, 0)
    topBar.Size = UDim2.new(0, 447, 0, 25)

    topBarCorner.CornerRadius = UDim.new(0, 3)
    topBarCorner.Name = "topBarCorner"
    topBarCorner.Parent = topBar

    TextLabel.Parent = topBar
    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BackgroundTransparency = 1.000
    TextLabel.Position = UDim2.new(0.0156599544, 0, 0, 0)
    TextLabel.Size = UDim2.new(0, 403, 0, 25)
    TextLabel.Font = Enum.Font.Gotham
    TextLabel.Text = Name
    TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.TextSize = 20.000
    TextLabel.TextXAlignment = Enum.TextXAlignment.Left

    power_settings_new.Name = "power_settings_new"
    power_settings_new.Parent = topBar
    power_settings_new.Active = false
    power_settings_new.BackgroundTransparency = 1.000
    power_settings_new.LayoutOrder = 18
    power_settings_new.Position = UDim2.new(0.94292295, 0, 0, 0)
    power_settings_new.Selectable = false
    power_settings_new.Size = UDim2.new(0, 25, 0, 25)
    power_settings_new.ZIndex = 2
    power_settings_new.Image = "rbxassetid://3926305904"
    power_settings_new.ImageRectOffset = Vector2.new(44, 364)
    power_settings_new.ImageRectSize = Vector2.new(36, 36)

    TextButton_2.Parent = power_settings_new
    TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextButton_2.BackgroundTransparency = 1.000
    TextButton_2.Position = UDim2.new(-0.264876723, 0, 0, 0)
    TextButton_2.Size = UDim2.new(0, 37, 0, 25)
    TextButton_2.Font = Enum.Font.SourceSans
    TextButton_2.Text = " "
    TextButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextButton_2.TextSize = 30.000
    TextButton_2.MouseButton1Click:Connect(function()
        script.Parent.Parent.Parent.Parent.MainFrame.Visible = false
    end)

    local pagesFolder = Instance.new("Folder")

    pagesFolder.Name = "pagesFolder"
    pagesFolder.Parent = allPages

    local TabHandler = {}


    function TabHandler:CreateTab(tabname)
        tabname = tabname or "New Tab"
        local tabButton = Instance.new("TextButton")
        local tabCorner = Instance.new("UICorner")
        local newPage = Instance.new("ScrollingFrame")
        local elementsListing = Instance.new("UIListLayout")

        local elementPadding = Instance.new("UIPadding")

        elementPadding.Name = "elementPadding"
        elementPadding.Parent = newPage
        elementPadding.PaddingRight = UDim.new(0, 5)
        elementPadding.PaddingTop = UDim.new(0, 5)

        tabButton.Name = "tabButton"
        tabButton.Parent = allTabs
        tabButton.BackgroundColor3 = Color3.fromRGB(85, 85, 255)
        tabButton.Size = UDim2.new(0, 100, 0, 28)
        tabButton.Font = Enum.Font.Gotham
        tabButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        tabButton.TextSize = 16.000
        tabButton.AutoButtonColor = false
        tabButton.MouseButton1Click:Connect(function()
            for i,v in next, pagesFolder:GetChildren() do
                v.Visible = false
            end
            newPage.Visible = true


            for i,v in next, allTabs:GetChildren() do
                if v:IsA("TextButton") then 
                    TweenService:Create(v, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                        BackgroundColor3 = Color3.fromRGB(57, 57, 176)

                    }):Play()
            end
        end

        TweenService:Create(tabButton, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundColor3 = Color3.fromRGB(85, 85, 255)}):Play() end)

        tabCorner.CornerRadius = UDim.new(0, 3)
        tabCorner.Name = "tabCorner"
        tabCorner.Parent = tabButton

        newPage.Name = "newPage"
        newPage.Parent = allPages
        newPage.Active = true
        newPage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        newPage.BackgroundTransparency = 1.000
        newPage.Position = UDim2.new(0.0210843366, 0, 0, 0)
        newPage.Size = UDim2.new(0, 325, 0, 220)
        newPage.ScrollBarThickness = 5
        newPage.Visible = false
        newPage.ZIndex = 99

        elementsListing.Name = "elementsListing"
        elementsListing.Parent = newPage
        elementsListing.SortOrder = Enum.SortOrder.LayoutOrder
        elementsListing.Padding = UDim.new(0, 5)

        local ElementHandler = {}

        function ElementHandler:CreateButton(btntext, callback)
            btntext = btntext or "Text Button"
            callback = callback or function() end

            local TextButton = Instance.new("TextButton")
            local textbuttonCorner = Instance.new("UICorner")

            TextButton.Parent = newPage
            TextButton.BackgroundColor3 = Color3.fromRGB(50, 51, 56)
            TextButton.Position = UDim2.new(0, 0, 0.0227272734, 0)
            TextButton.Size = UDim2.new(0, 315, 0, 30)
            TextButton.Font = Enum.Font.Gotham
            TextButton.Text = btntext
            TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextButton.TextSize = 17.000
            TextButton.ZIndex = 1 
            TextButton.MouseButton1Click:Connect(function()
                callback()
            end)

            textbuttonCorner.CornerRadius = UDim.new(0, 3)
            textbuttonCorner.Name = "textbuttonCorner"
            textbuttonCorner.Parent = TextButton
                
            end

            function ElementHandler:CreateToggle(togInfo, callback)
                togInfo = togInfo or "Toggle"
                callback = callback or function() end


                local toggleButton = Instance.new("TextButton")
                local toggleButtonCover = Instance.new("UICorner")
                local toggle = Instance.new("Frame")
                local toggleCorner = Instance.new("UICorner")
                local toggleInfo = Instance.new("TextLabel")

                toggleButton.Name = "toggleButton"
                toggleButton.Parent = newPage
                toggleButton.BackgroundColor3 = Color3.fromRGB(50, 51, 56)
                toggleButton.Position = UDim2.new(0, 0, 0.181818187, 0)
                toggleButton.Size = UDim2.new(0, 315, 0, 30)
                toggleButton.Font = Enum.Font.Gotham
                toggleButton.Text = ""
                toggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
                toggleButton.TextSize = 17.000

                toggleButtonCover.CornerRadius = UDim.new(0, 3)
                toggleButtonCover.Name = "toggleButtonCover"
                toggleButtonCover.Parent = toggleButton

                toggle.Name = "toggle"
                toggle.Parent = toggleButton
                toggle.BackgroundColor3 = Color3.fromRGB(57, 57, 176)
                toggle.BorderSizePixel = 0
                toggle.Position = UDim2.new(0.0222222228, 0, 0.13333334, 0)
                toggle.Size = UDim2.new(0, 22, 0, 22)

                toggleCorner.CornerRadius = UDim.new(0, 5)
                toggleCorner.Name = "toggleCorner"
                toggleCorner.Parent = toggle

                toggleInfo.Name = "toggleInfo"
                toggleInfo.Parent = toggleButton
                toggleInfo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                toggleInfo.BackgroundTransparency = 1.000
                toggleInfo.Position = UDim2.new(0.149206355, 0, 0, 0)
                toggleInfo.Size = UDim2.new(0, 227, 0, 30)
                toggleInfo.Font = Enum.Font.Gotham
                toggleInfo.Text = togInfo
                toggleInfo.TextColor3 = Color3.fromRGB(255, 255, 255)
                toggleInfo.TextSize = 20.000

                local tog = false

                toggleButton.MouseButton1Click:Connect(function()
                    tog = not tog
                    callback(tog)
                    if tog then
                        game.TweenService:Create(toggle, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                            BackgroundColor3 = Color3.fromRGB(85, 85, 255)
                        }):Play()
                    else
                        game.TweenService:Create(toggle, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                            BackgroundColor3 = Color3.fromRGB(57, 57, 176)
                        }):Play()
                    end
                end) 
            end
            
            return ElementHandler
        end
        return TabHandler
    end

return WindowTable
