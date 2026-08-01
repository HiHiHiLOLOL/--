--loadstring(game:HttpGet("https://raw.githubusercontent.com/tiaow/--/main/DM.lua"))()

local library = loadstring(game:HttpGet("https://github.com/tiaow/gb/blob/0fdfacbd511b7b5c38c830401f76664d3f8bfb7d/%E5%BD%A9%E8%89%B2ui"))()
local window = library:new("DW")

local Xing = window:Tab("信息",'')
local Main = window:Tab("主要",'')

Xing1:Label("作者:idk")
 Xing1:Label("应该不会ban（maybe）")

local Xing2 = Xing:section("设置",true)
        Xing2:Toggle("移除UI辉光", "", false, function(state)
            if state then
                game:GetService("CoreGui")["frosty is cute"].Main.DropShadowHolder.Visible = false
            else
                game:GetService("CoreGui")["frosty is cute"].Main.DropShadowHolder.Visible = true
            end
    end)


        Xing2:Toggle("彩虹UI", "", false, function(state)
            if state then
                game:GetService("CoreGui")["frosty is cute"].Main.Style = "DropShadow"
            else
                game:GetService("CoreGui")["frosty is cute"].Main.Style = "Custom"
            end
    end)

    
        Xing2:Button("摧毁GUI",function()
                game:GetService("CoreGui")["frosty is cute"]:Destroy()
    end)

local Ma = Mian:section("huh",true)
Ma:Button("现实章节按钮",function()
game:GetService("Players").LocalPlayer.PlayerGui.MainGui.StageSelectionUI.Right_Button.Visible = true
end)

Ma:Button("基地无冷却",function()
print("_____________________________________")
local A  =  require(game:GetService("ReplicatedStorage").Modules.StatueConfig)
local Noob = rawget(A , "Noob Tube" )
for s , b in A do
rawset(b ,"AbilityCooldown" , 0)
print(s,b)
end
print(Noob)
rawset(Noob, "AbilityCooldown" ,0)
end)
