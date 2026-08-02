--loadstring(game:HttpGet("https://raw.githubusercontent.com/tiaow/--/main/DM.lua"))()
local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/ChinaQY/-/Main/UI"))()



OrionLib:MakeNotification({
    Name = "提示",
    Content = "启动中",
    Time = 2.5 })

local Sound = Instance.new("Sound")
    Sound.SoundId = "rbxassetid://4590662766"
    Sound.Parent = game:GetService("SoundService")
    Sound.Volume = 5
    Sound:Play()
    Sound.Ended:Wait()
    Sound:Destroy()

local Window = OrionLib:MakeWindow({Name = "DW脚本", HidePremium = false, SaveConfig = false, IntroText = "Dump Wars", ConfigFolder = "脚本"})

local XingX = Window:MakeTab({
    Name = "信息",
    Icon = "rbxassetid://4483345998",   --推荐rbxassetid://4483345998
    PremiumOnly = false
})

XingX:AddParagraph("作者：","Idk")
XingX:AddLabel("应该不会ban（maybe）")
XingX:AddButton({
    Name = "关闭脚本（不是隐藏）",
    Callback = function()
    OrionLib:Destroy()
end})

--[[
Tab:AddTextbox({
    Name = "输入",
    Default = "",
    TextDisappear = true,
    Callback = function()

end})
]]

local Tab = Window:MakeTab({
    Name = "主要",
    Icon = "rbxassetid://4483345998",   --推荐rbxassetid://4483345998
    PremiumOnly = false
})
local PLR = Window:MakeTab({
    Name = "玩家",
    Icon = "rbxassetid://4483345998",   --推荐rbxassetid://4483345998
    PremiumOnly = false
})




local PG = game:GetService("Players").LocalPlayer.PlayerGui

Tab:AddButton({
    Name = "让章节按钮显示",
    Callback = function()
    if game:GetService("Players").LocalPlayer.PlayerGui.MainGui.StageSelectionUI.Right_Button then
    game:GetService("Players").LocalPlayer.PlayerGui.MainGui.StageSelectionUI.Right_Button.Visible = true    
    
        OrionLib:MakeNotification({
        Name = "提示",
        Content = "已显示",
        Time = 2.5 })

        local Sound = Instance.new("Sound")
        Sound.SoundId = "rbxassetid://4590662766"
        Sound.Parent = game:GetService("SoundService")
        Sound.Volume = 5
        Sound:Play()
        Sound.Ended:Wait()
        Sound:Destroy()
    else
        OrionLib:MakeNotification({
        Name = "提示",
        Content = "你这是Dump Wars吗？",
        Time = 2.5 })

        local Sound = Instance.new("Sound")
        Sound.SoundId = "rbxassetid://4590662766"
        Sound.Parent = game:GetService("SoundService")
        Sound.Volume = 5
        Sound:Play()
        Sound.Ended:Wait()
        Sound:Destroy()
    
    end
    
end})

Tab:AddButton({
    Name = "基地技能无冷却",
    Callback = function()
    if game:GetService("ReplicatedStorage").Modules:FindFirstChild("StatueConfig") then
        print("_____________________________________")
        local A  =  require(game:GetService("ReplicatedStorage").Modules.StatueConfig)
            for s , b in A do
               if rawget(b,"AbilityCooldown") then
                rawset(b,"AbilityCooldown" , 0)
                print(s)
                else
                print(s,b)
                end
            end
                
                
        
        OrionLib:MakeNotification({
        Name = "提示",
        Content = "修改成功",
        Time = 2.5 })

        local Sound = Instance.new("Sound")
        Sound.SoundId = "rbxassetid://4590662766"
        Sound.Parent = game:GetService("SoundService")
        Sound.Volume = 5
        Sound:Play()
        Sound.Ended:Wait()
        Sound:Destroy()

    else
            OrionLib:MakeNotification({
            Name = "提示",
            Content = "没找到是和异味",
            Time = 2.5 })

            local Sound = Instance.new("Sound")
            Sound.SoundId = "rbxassetid://4590662766"
            Sound.Parent = game:GetService("SoundService")
            Sound.Volume = 5
            Sound:Play()
            Sound.Ended:Wait()
            Sound:Destroy()
    end
end})

local CH = game:GetService("Players").LocalPlayer.Character
Tab:AddButton({
    Name = "改变摄像头（不可逆）",
    Callback = function()
   
workspace.Camera:Destroy()
wait(0.5)
workspace.Camera.CameraSubject = CH.Humanoid
workspace.Camera.CameraType = Enum.CameraType.Track
CH.Humanoid.WalkSpeed = 16
for _ , v in workspace.SpawnBox:GetChildren() do
if v.Name == "Part" then
v.Transparency = 0.5
v.CanCollide = false
elseif v.Name == "SpawnLocation" then
v.Transparency = 0
end
end
end})

 local SF = game:GetService("Players").LocalPlayer.CameraMaxZoomDistance
PLR:AddTextbox({
    Name = "缩放距离",
    Default = "随便",
    TextDisappear = true,
    Callback = function(v)
if v <= 0 then
        OrionLib:MakeNotification({
        Name = "提示",
        Content = "没这么随便（必须大于0）",
        Time = 2.5 })

        local Sound = Instance.new("Sound")
        Sound.SoundId = "rbxassetid://4590662766"
        Sound.Parent = game:GetService("SoundService")
        Sound.Volume = 5
        Sound:Play()
        Sound.Ended:Wait()
        Sound:Destroy()
elseif v >= 1 then
SF = v
print(SF)
end
end})

local SJu = game.Workspace.CurrentCamera.FieldOfView
PLR:AddTextbox({
    Name = "视界",
    Default = "随便",
    TextDisappear = true,
    Callback = function(v)
if v <= 0 then
        OrionLib:MakeNotification({
        Name = "提示",
        Content = "没这么随便（必须大于0）",
        Time = 2.5 })

        local Sound = Instance.new("Sound")
        Sound.SoundId = "rbxassetid://4590662766"
        Sound.Parent = game:GetService("SoundService")
        Sound.Volume = 5
        Sound:Play()
        Sound.Ended:Wait()
        Sound:Destroy()
elseif v >= 1 and v <= 120 then
SJu = v
print(SF)

elseif v > 120 then
SJu = 120
OrionLib:MakeNotification({
        Name = "提示",
        Content = "你输入的值大于120，最大值是120，自动改为120",
        Time = 4 })

        local Sound = Instance.new("Sound")
        Sound.SoundId = "rbxassetid://4590662766"
        Sound.Parent = game:GetService("SoundService")
        Sound.Volume = 5
        Sound:Play()
        Sound.Ended:Wait()
        Sound:Destroy()
end
end})



PLR:AddButton({
    Name = "飞行",
    Callback = function()
   
loadstring(game:HttpGet'https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt')()
end})               

PLR:AddButton({
    Name = "碰到就飞脚本",
    Callback = function()
 loadstring(game:HttpGet("https://raw.githubusercontent.com/0Ben1/fe./main/Fling%20GUI"))()  

end})               

PLR:AddButton({
    Name = "铁拳甩飞脚本",
    Callback = function()
 loadstring(game:HttpGet('https://raw.githubusercontent.com/0Ben1/fe/main/obf_rf6iQURzu1fqrytcnLBAvW34C9N55kS9g9G3CKz086rC47M6632sEd4ZZYB0AYgV.lua.txt'))()
end})  

spawn(function() while task.wait() do 
game:GetService("Players").LocalPlayer.CameraMaxZoomDistance = SF 
game.Workspace.CurrentCamera.FieldOfView = SJu
end
end)
--[[
Tab:AddTextbox({
    Name = "输入",
    Default = "",
    TextDisappear = true,
    Callback = function()

end})

]]
--[[
Tab:AddToggle({
    Name = "开关",
    Default = false,
    Callback = function()
    
end})
]]