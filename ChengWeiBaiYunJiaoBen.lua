
local Players = game:GetService("Players")
local PID = Players:GetUserIdFromNameAsync("furry28852")

local desc = Players:GetHumanoidDescriptionFromUserId(PID)

local model =  Players:CreateHumanoidModelFromDescription(desc, Enum.HumanoidRigType.R6)

model:SetPrimaryPartCFrame(CFrame.new(0,5,0))
model.Parent = workspace

local CHG = game:GetService("Players") .LocalPlayer.Character

for _ , q in CHG:GetChildren() do

if q:IsA("Accessory") or q:IsA("CharacterMesh") or q:IsA("BodyColors") or q:IsA("Shirt") or q:IsA("Pants") then
q:Destroy()

elseif q:FindFirstChild("face") and q:FindFirstChildOfClass("Decal") then
q.face:Destroy()

elseif q:FindFirstChild("Mesh") and q: FindFirstChildOfClass("SpecialMesh") then
q.Mesh:Destroy()

end
end




for _ , a in model:GetChildren() do

if a:IsA("BodyColors") then
a.Parent = game:GetService("Players") .LocalPlayer.Character


elseif a:IsA("Accessory") then
local Ha = a.Handle.AccessoryWeld.Part1.Name
a.Handle.AccessoryWeld.Part1  =  game:GetService("Players") .LocalPlayer.Character[Ha]
a.Parent = game:GetService("Players") .LocalPlayer.Character


elseif a:IsA("Shirt") then
a.Parent = game:GetService("Players") .LocalPlayer.Character


elseif a:IsA("Pants") then
a.Parent = game:GetService("Players") .LocalPlayer.Character


elseif a:IsA("ShirtGraphic") then
a.Parent = game:GetService("Players") .LocalPlayer.Character

elseif a.Name == "Head" then

if a:FindFirstChild("face") and a:FindFirstChildOfClass("Decal") then
a.face.Parent = game:GetService("Players") .LocalPlayer.Character.Head
end

if a:FindFirstChild("Mesh") and a:FindFirstChildOfClass("SpecialMesh") then
a.Mesh.Parent = game:GetService("Players") .LocalPlayer.Character.Head
end


elseif  a:IsA("CharacterMesh") then
a.Parent = game:GetService("Players") .LocalPlayer.Character

end
end

wait(1)

model:Destroy()