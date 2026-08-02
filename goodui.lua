local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/ChinaQY/-/Main/UI"))()

if game.Players.LocalPlayer.Name == "AQ14ABS" or game.Players.LocalPlayer.Name == "edc12363" or game.Players.LocalPlayer.Name == "onygfvjop" or game.Players.LocalPlayer.Name == "ah_kdj3" or game.Players.LocalPlayer.Name == "luoyang100616" or game.Players.LocalPlayer.Name == "hdjdje675" or game.Players.LocalPlayer.Name == "qazwsxuruu" or game.Players.LocalPlayer.Name == "ADCZ4xx"
or game.Players.LocalPlayer.Name == "hjcjb96" or game.Players.LocalPlayer.Name == "TM5418888" or game.Players.LocalPlayer.Name == "codm656558" then
    game.Players.LocalPlayer:Kick("Exploiting😂")
else

OrionLib:MakeNotification({
    Name = "脚本中心",
    Content = "脚本启动中",
    Time = 2.5 })

local Sound = Instance.new("Sound")
    Sound.SoundId = "rbxassetid://4590662766"
    Sound.Parent = game:GetService("SoundService")
    Sound.Volume = 5
    Sound:Play()
    Sound.Ended:Wait()
    Sound:Destroy()

local Window = OrionLib:MakeWindow({Name = "脚本中心", HidePremium = false, SaveConfig = false, IntroText = "脚本中心", ConfigFolder = "脚本中心"})

local Tab = Window:MakeTab({
    Name = "公告",
    Icon = "rbxassetid://14250466898",
    PremiumOnly = false
})

Tab:AddParagraph("作者","情云")
Tab:AddLabel("此脚本为缝合")
Tab:AddLabel("此脚本完全免费禁止倒卖")
Tab:AddLabel("QQ群 : 834856433")
Tab:AddLabel("DC群组 : https://discord.gg/KxZX9pP6vh")

local Tab = Window:MakeTab({
    Name = "通用功能",
    Icon = "rbxassetid://14250466898",
    PremiumOnly = false
})

Tab:AddToggle({
    Name = "大运",
    Default = false,
    Callback = function(Value)
    if Value then
        local Car = game:GetObjects("rbxassetid://78896584994504")[1]
        Car.car.CanCollide = false
        Car.Parent = workspace
        spawn(function()
            ToggleCar = game:GetService("RunService").RenderStepped:Connect(function()
                Car.car:PivotTo(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame * CFrame.new(1.3, 0, 1.6))
            end)
        end)
    else
        if ToggleCar then
            ToggleCar:Disconnect()
            Car:Destroy()
        end
    end
end})

Tab:AddButton({
    Name = "IY Dex修复版",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
end})
Tab:AddButton({
     "IY Dex修复版",
    function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
end})
Tab:AddTextbox({
    Name = "移动速度 ( 部分服务器没效果 )",
    Default = "",
    TextDisappear = true,
    Callback = function(Value)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
end})

OrionLib:Init()
end