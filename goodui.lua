local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/ChinaQY/-/Main/UI"))()



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
    Name = "标签名",
    Icon = "",   --推荐rbxassetid://4483345998
    PremiumOnly = false
})

Tab:AddParagraph("标题","正文")
Tab:AddLabel("正文")




Tab:AddToggle({
    Name = "开关",
    Default = false,
    Callback = function()
    
end})

Tab:AddButton({
    Name = "按钮",
    Callback = function()

end})

Tab:AddTextbox({
    Name = "输入",
    Default = "",
    TextDisappear = true,
    Callback = function()

end})
Tab:AddDropdown({
    Name = "模式选择",
    Default = "模式1",
    Options = {"模式1","模式2","模式3"},
    Save = true,
    Callback = function(selected)
        print("选中：", selected)
    end
})


