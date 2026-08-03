--loadstring(game:HttpGet("https://raw.githubusercontent.com/tiaow/--/main/DM.lua"))()
local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/ChinaQY/-/Main/UI"))()

local LodingComplet = false


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

local function GDNotice(a:string ,s:string ,d:number )

if LodingComplet == true then

OrionLib:MakeNotification({
    Name = a,
    Content = s,
    Time = d
    })

local Sound = Instance.new("Sound")
    Sound.SoundId = "rbxassetid://4590662766"
    Sound.Parent = game:GetService("SoundService")
    Sound.Volume = 5
    Sound:Play()
    Sound.Ended:Wait()
    Sound:Destroy()

end
end


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
local ESP = Window:MakeTab({
    Name = "显示",
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
    Default = "",
    TextDisappear = true,
    Callback = function(v)
    local TheVB2 = tonumber(v)
if TheVB2 <= 0 then
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
elseif TheVB2 >= 1 then
SF = TheVB2
print(SF)
OrionLib:MakeNotification({
        Name = "提示",
        Content = "设置成功，值：" .. SF ,
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

local SJu = game.Workspace.CurrentCamera.FieldOfView
PLR:AddTextbox({
    Name = "视界",
    Default = "",
    TextDisappear = true,
    Callback = function(v)
   local  TheV1 = tonumber(v)
if TheV1 <= 0 then
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
elseif TheV1 >= 1 and TheV1 <= 120 then
SJu = TheV1
print(SJu)
OrionLib:MakeNotification({
        Name = "提示",
        Content = "设置成功，值：" .. SJu ,
        Time = 2.5 })

        local Sound = Instance.new("Sound")
        Sound.SoundId = "rbxassetid://4590662766"
        Sound.Parent = game:GetService("SoundService")
        Sound.Volume = 5
        Sound:Play()
        Sound.Ended:Wait()
        Sound:Destroy()
elseif TheV1 > 120 then
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


local TOF = nil
local BName = "JNTM"
local TName = "NGM"

local function ESSSP(v)

if not v:FindFirstChild(BName) then
if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v:FindFirstChild("Head") then

local BbG = Instance.new("BillboardGui")
BbG.Parent = v
BbG.AlwaysOnTop = true
BbG.Adornee = v.Head
BbG.Enabled = true
BbG.ExtentsOffset = Vector3.new(0,3,0)
BbG.Size = UDim2.new(0,1,0,1)
BbG.Name = BName

local TeBo = Instance.new("TextBox")
TeBo.Size = UDim2.new(0,1,0,1)
TeBo.BackgroundTransparency = 1

spawn(function() while task.wait() do
TeBo.Text = BbG.Parent.Humanoid.Health .. "/" .. BbG.Parent.Humanoid.MaxHealth
end
end)

TeBo.BorderSizePixel = 0
TeBo.TextColor3 = Color3.new(0,1,0)
TeBo.TextSize = 30
TeBo.TextStrokeTransparency = 0
TeBo.TextStrokeColor3 = Color3.new(0,0,0)
TeBo.Parent = BbG
TeBo.Name = TName

spawn(function() while task.wait(0.01) do
if TOF == false then
BbG:Destroy()


end
end

end
end
end)
end





local DXM = "无"
ESP:AddParagraph("选择Esp对象","LoL")
ESP:AddDropdown({
    Name = "选择对象",
    Default = "无",
    Options = {"无","友方","敌方","全部"},
    Save = false,
    Callback = function(v)
    DXM = v
    GDNotice("提示","已经选择" .. DXM ,3)
        print("选中：", DXM)
    end
})


ESP:AddToggle({
    Name = "开启HP显示",
    Default = false,
    Callback = function(v)
 TOF = v
if TOF == true then
GDNotice("提示","已经开启",3)
spawn(function()
for _ , sa in workspace.Units.Blue:GetChildren() do
ESSSP(sa)
end
end
spawn(function()

for _ , sa in workspace.Units.Red:GetChildren() do
ESSSP(sa)
end
end

elseif TOF == false then
GDNotice("提示","已经关闭",3)


end
end})               


workspace.Units.Blue.ChildAdded:Connect(function(v)

if TOF == true then
if DXM == "友方" or DXM == "全部" then

ESSSP(v)


end
end
end)

workspace.Units.Red.ChildAdded:Connect(function(v)

if TOF == true then
if DXM == "敌方" or DXM == "全部" then

ESSSP(v)
end
end
end)

LodingComplet = true
GDNotice("提示","加载完成",3)
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