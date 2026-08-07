local StarterGui = game:GetService("StarterGui")
local HeHe = loadstring(game:HttpGet("https://raw.githubusercontent.com/HiHiHiLOLOL/whiteName/refs/heads/main/TheVP1.lua"))()
local TF = nil

for _ , v in HeHe do
print(v)
if v == game:GetService("Players").LocalPlayer.Name then
TF = true
end
end

if TF == true then
if game.PlaceId ~= 71895508397153 and game.PlaceId ~= 18687417158 then
local Players = game:GetService("Players")

local desc = Players:GetHumanoidDescriptionFromUserId(7427426990)
local model = Players:CreateHumanoidModelFromDescription(desc, Enum.HumanoidRigType.R6)

model:SetPrimaryPartCFrame(CFrame.new(0,5,0))
model.Parent = workspace

local CHG = game:GetService("Players").LocalPlayer.Character

for _ , q in CHG:GetChildren() do

if q:IsA("Accessory") or q:IsA("CharacterMesh") or q:IsA("BodyColors") or q:IsA("Shirt") or q:IsA("Pants") then
q:Destroy()

elseif q:FindFirstChild("face") and q:FindFirstChildOfClass("Decal") then
q.face:Destroy()

elseif q:FindFirstChild("Mesh") and q:FindFirstChildOfClass("SpecialMesh") then
q.Mesh:Destroy()

end
end




for _ , a in model:GetChildren() do

if a:IsA("BodyColors") then
a.Parent = game:GetService("Players").LocalPlayer.Character


elseif a:IsA("Accessory") then
local Ha = a.Handle.AccessoryWeld.Part1.Name
a.Handle.AccessoryWeld.Part1  =  game:GetService("Players").LocalPlayer.Character[Ha]
a.Parent = game:GetService("Players").LocalPlayer.Character


elseif a:IsA("Shirt") then
a.Parent = game:GetService("Players").LocalPlayer.Character


elseif a:IsA("Pants") then
a.Parent = game:GetService("Players").LocalPlayer.Character


elseif a:IsA("ShirtGraphic") then
a.Parent = game:GetService("Players").LocalPlayer.Character

elseif a.Name == "Head" then

if a:FindFirstChild("face") and a:FindFirstChildOfClass("Decal") then
a.face.Parent = game:GetService("Players").LocalPlayer.Character.Head
end

if a:FindFirstChild("Mesh") and a:FindFirstChildOfClass("SpecialMesh") then
a.Mesh.Parent = game:GetService("Players").LocalPlayer.Character.Head
end


elseif  a:IsA("CharacterMesh") then
a.Parent = game:GetService("Players").LocalPlayer.Character

end
end

wait(1)

model:Destroy()


else
StarterGui:SetCore("SendNotification", {
    Title = "提示",
    Text = "不能在该服务器使用",
    Duration = 3, 
    Icon = "" 
})
end
else
StarterGui:SetCore("SendNotification", {
    Title = "提示",
    Text = "无白名单",
    Duration = 3, 
    Icon = "" 
})

end
