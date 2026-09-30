local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/HiHiHiLOLOL/--/refs/heads/main/CaiSe.lua"))()
local window = library:new("海啸")
local bin = library:section("信息",true)
bin:Label("个人使用")
bin:Label("可传播少数人")
local bin1 = bin:section("设置",true)
        bin1:Toggle("移除UI辉光", "", false, function(state)
            if state then
                game:GetService("CoreGui")["frosty is cute"].Main.DropShadowHolder.Visible = false
            else
                game:GetService("CoreGui")["frosty is cute"].Main.DropShadowHolder.Visible = true
            end
    end)


        bin1:Toggle("彩虹UI", "", false, function(state)
            if state then
                game:GetService("CoreGui")["frosty is cute"].Main.Style = "DropShadow"
            else
                game:GetService("CoreGui")["frosty is cute"].Main.Style = "Custom"
            end
    end)

    
        bin1:Button("摧毁GUI",function()
                game:GetService("CoreGui")["frosty is cute"]:Destroy()
    end)
--[[
        bin:Slider("步行速度", "WalkSpeed", game.Players.LocalPlayer.Character.Humanoid.WalkSpeed, 16, 1000, false, function(Speed)
  
    end)       


        bin:Textbox("快速跑步（死后重置）建议用2", "tpwalking", "输入", function(king)

    end)





        bin:Dropdown("选择方向", 'DirectionDropdown', directionDropdown, function(v)

    end) ]]