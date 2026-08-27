wait(2)

local DialogueFrame = Instance.new("ScreenGui")
DialogueFrame.Name = "DialogueFrame"
DialogueFrame.Parent  = game:GetService("Players").LocalPlayer.PlayerGui
DialogueFrame.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
DialogueFrame.IgnoreGuiInset = true



local Main = Instance.new("Frame")
Main.Visible = false
Main.Name = "Main"
Main.Parent = DialogueFrame
Main.Active = false
Main.AnchorPoint = Vector2.new(0.5, 1)
Main.AutomaticSize = Enum.AutomaticSize.None
Main.BackgroundColor3 = Color3.new(0, 0, 0)
Main.BackgroundTransparency = 0.5
Main.BorderColor3 = Color3.new(0, 0, 0)
Main.BorderMode = Enum.BorderMode.Outline
Main.BorderSizePixel = 0
Main.InputSink = Enum.InputSink.None
Main.Interactable = true
Main.LayoutOrder = 0
Main.Position = UDim2.new(0.5, 0, 0.925, 0)
Main.Rotation = 0
Main.Size = UDim2.new(0.416, 0, 0.171, 0)
Main.SizeConstraint = Enum.SizeConstraint.RelativeXY
Main.Style = Enum.FrameStyle.Custom
Main.Visible = true
Main.ZIndex = 2
Main.ClipsDescendants = false

local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
UIAspectRatioConstraint.Parent = Main
UIAspectRatioConstraint.AspectRatio = 3.782
UIAspectRatioConstraint.AspectType = Enum.AspectType.FitWithinMaxSize
UIAspectRatioConstraint.DominantAxis = Enum.DominantAxis.Width


local UIStroke = Instance.new("UIStroke")
UIStroke.Parent = Main
UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
UIStroke.BorderOffset = UDim.new(0,0)
UIStroke.BorderStrokePosition = Enum.BorderStrokePosition.Outer
UIStroke.Color = Color3.new(0,0,0)
UIStroke.LineJoinMode = Enum.LineJoinMode.Bevel
UIStroke.StrokeSizingMode = Enum.StrokeSizingMode.FixedSize
UIStroke.Thickness = 2.409
UIStroke.Transparency = 0.25
UIStroke.ZIndex = 1


local Portrait = Instance.new("Frame")
Portrait.Name = "Portrait"
Portrait.Parent = Main
Portrait.AutomaticSize = Enum.AutomaticSize.None
Portrait.BackgroundColor3 = Color3.fromRGB(25,25,25)
Portrait.BackgroundTransparency = 0
Portrait.BorderColor3 = Color3.new(0,0,0)
Portrait.BorderMode = Enum.BorderMode.Outline
Portrait.BorderSizePixel = 0
Portrait.Interactable = true
Portrait.LayoutOrder = 0
Portrait.Position = UDim2.new(0.028, 0, -0.164, 0)
Portrait.Rotation = 0
Portrait.Size = UDim2.new(0.24, 0, 0.909, 0)
Portrait.SizeConstraint = Enum.SizeConstraint.RelativeXY
Portrait.Style = Enum.FrameStyle.Custom
Portrait.Visible = true
Portrait.ZIndex = 2

local UIGradient = Instance.new("UIGradient")
UIGradient.Name = "UIGradient"
UIGradient.Parent = Portrait
UIGradient.Enabled = true
UIGradient.Offset = Vector2.new(0, 0)
UIGradient.Rotation = 90
UIGradient.Scale = 1
UIGradient.Color = ColorSequence.new({
	ColorSequenceKeypoint.new(0, Color3.new(1, 1, 1)),
	ColorSequenceKeypoint.new(1, Color3.new(1, 1, 1)),
	ColorSequenceKeypoint.new(1, Color3.new(0, 0, 0))
})
UIGradient.Transparency = NumberSequence.new({
	NumberSequenceKeypoint.new(0, 0.4125),
	NumberSequenceKeypoint.new(0.159322, 0),
	NumberSequenceKeypoint.new(0.210169, 0),
	NumberSequenceKeypoint.new(1, 0.44375)
})



local UIStroke = Instance.new("UIStroke")
UIStroke.Name = "UIStroke"
UIStroke.Parent = Portrait
UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
UIStroke.BorderStrokePosition = Enum.BorderStrokePosition.Outer
UIStroke.Color = Color3.new(0, 0, 0)
UIStroke.LineJoinMode = Enum.LineJoinMode.Bevel
UIStroke.StrokeSizingMode = Enum.StrokeSizingMode.FixedSize
UIStroke.Thickness = 2.409
UIStroke.Transparency = 0.1
UIStroke.ZIndex = 1
UIStroke.Enabled = true

local ImageLabel1 = Instance.new("ImageLabel")
ImageLabel1.Name = "ImageLabel"
ImageLabel1.BackgroundColor3 = Color3.fromRGB(25,25,25)
ImageLabel1.BackgroundTransparency = 1
ImageLabel1.BorderColor3 = Color3.new(0,0,0)
ImageLabel1.Parent = Portrait
ImageLabel1.Size = UDim2.new(1, 0, 1, 0)
ImageLabel1.ImageColor3 = Color3.new(1,1,1)
ImageLabel1.Image = "rbxassetid://104852837184704"


local ImageLabel = Instance.new("ImageLabel")
ImageLabel.Name = "ImageLabel"
ImageLabel.Parent = Main
ImageLabel.Size = UDim2.new(1, 0, 1, 0)
ImageLabel.Position = UDim2.new(0, 0, 0, 0)
ImageLabel.Image = "rbxassetid://17497141137"
ImageLabel.ImageColor3 = Color3.new(1,1,1)
ImageLabel.ImageTransparency = 0.8
ImageLabel.ScaleType = Enum.ScaleType.Tile
ImageLabel.TileSize = UDim2.new(0,25,0,25)
ImageLabel.SliceCenter = Rect.new(0,0,0,0)
ImageLabel.SliceScale = 1
ImageLabel.Interactable = true
ImageLabel.Visible = true
ImageLabel.ZIndex = 1
ImageLabel.BackgroundTransparency = 1
ImageLabel.BorderSizePixel = 0
ImageLabel.SelectionBehaviorDown = Enum.SelectionBehavior.Escape
ImageLabel.SelectionBehaviorLeft = Enum.SelectionBehavior.Escape
ImageLabel.SelectionBehaviorRight = Enum.SelectionBehavior.Escape
ImageLabel.SelectionBehaviorUp = Enum.SelectionBehavior.Escape
ImageLabel.AutoLocalize = true

local UIGradient = Instance.new("UIGradient")
UIGradient.Name = "UIGradient"
UIGradient.Parent = ImageLabel
UIGradient.Enabled = true
UIGradient.Offset = Vector2.new(0, 0)
UIGradient.Rotation = 90
UIGradient.Scale = 1
UIGradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.new(1, 1, 1)),
    ColorSequenceKeypoint.new(0.5, Color3.new(1, 1, 1)),
    ColorSequenceKeypoint.new(1, Color3.new(0, 0, 0))
})
UIGradient.Transparency = NumberSequence.new({
    NumberSequenceKeypoint.new(0, 1),
    NumberSequenceKeypoint.new(0.60339, 0.6625),
    NumberSequenceKeypoint.new(0.881356, 0.375),
    NumberSequenceKeypoint.new(1, 0)
})




local CharacterName = Instance.new("TextLabel")

CharacterName.Font = Enum.Font.Cartoon
CharacterName.Name = "CharacterName"
CharacterName.Parent = Main
CharacterName.AnchorPoint = Vector2.new(0.5, 0.5)
CharacterName.Size = UDim2.new(0.361, 0, 0.185, 0)
CharacterName.Position = UDim2.new(0.148, 0, 0.873, 0)
CharacterName.BorderColor3 = Color3.new(0,0,0)
CharacterName.BackgroundTransparency = 1
CharacterName.BorderSizePixel = 0
CharacterName.Interactable = true
CharacterName.Visible = true
CharacterName.ZIndex = 1
CharacterName.Text = "MrDoomBringer"
CharacterName.TextColor3 = Color3.new(1, 1, 1)
CharacterName.TextScaled = true
CharacterName.TextSize = 20
CharacterName.TextTransparency = 0
CharacterName.TextWrapped = true
CharacterName.TextXAlignment = Enum.TextXAlignment.Center
CharacterName.TextYAlignment = Enum.TextYAlignment.Center
CharacterName.TextStrokeTransparency = 1
CharacterName.AutoLocalize = true

local UIStroke = Instance.new("UIStroke")
UIStroke.Name = "UIStroke"
UIStroke.Parent = CharacterName
UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
UIStroke.BorderStrokePosition = Enum.BorderStrokePosition.Outer
UIStroke.Color = Color3.new(0, 0, 0)
UIStroke.LineJoinMode = Enum.LineJoinMode.Round
UIStroke.StrokeSizingMode = Enum.StrokeSizingMode.FixedSize
UIStroke.Thickness = 1.205
UIStroke.Transparency = 0.5
UIStroke.ZIndex = 1
UIStroke.Enabled = true

local TextFrame = Instance.new("TextLabel")
TextFrame.Name = "TextFrame"
TextFrame.Parent = Main
TextFrame.Size = UDim2.new(0.695, 0, 0.873, 0)
TextFrame.Position = UDim2.new(0.291, 0, 0.064, 0)
TextFrame.BackgroundTransparency = 1
TextFrame.BorderSizePixel = 0
TextFrame.Interactable = true
TextFrame.Visible = true
TextFrame.ZIndex = 1
TextFrame.Text = "YOU'RE GETTING..."
TextFrame.TextColor3 = Color3.new(1,1,1)
TextFrame.BorderColor3 = Color3.new(0,0,0)
TextFrame.TextScaled = true
TextFrame.RichText = true
TextFrame.TextSize = 24
TextFrame.TextTransparency = 0
TextFrame.TextWrapped = true
TextFrame.TextXAlignment = Enum.TextXAlignment.Left
TextFrame.TextYAlignment = Enum.TextYAlignment.Top
TextFrame.TextStrokeColor3 = Color3.new(0,0,0)
TextFrame.TextStrokeTransparency = 1
TextFrame.AutoLocalize = true
TextFrame.Font = Enum.Font.Cartoon

local UIStroke = Instance.new("UIStroke")
UIStroke.Name = "UIStroke"
UIStroke.Parent = TextFrame
UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
UIStroke.BorderStrokePosition = Enum.BorderStrokePosition.Outer
UIStroke.Color = Color3.new(0, 0, 0)
UIStroke.LineJoinMode = Enum.LineJoinMode.Round
UIStroke.StrokeSizingMode = Enum.StrokeSizingMode.FixedSize
UIStroke.Thickness = 1.205
UIStroke.Transparency = 0.5
UIStroke.ZIndex = 1
UIStroke.Enabled = true 


local v_u_4 = Main
local v_u_5 = game:GetService("SoundService")

-- 加载音效
local sart = Instance.new("Sound")
sart.SoundId = "rbxassetid://12222152"
sart.Parent = v_u_5

local by = Instance.new("Sound")
by.SoundId = "rbxassetid://12221990"
by.Parent = v_u_5

function PopOut()
    sart:Play()
    v_u_4.Visible = true
    v_u_4:TweenPosition(UDim2.new(0.5, 0, 0.838, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Back, 0.65, true)
end

function Typewrite(p7,time)
    for v8 = 1, #p7 do
        TextFrame.Text = string.sub(p7, 1, v8)
        task.wait(time / #p7)
    end
end

function PopIn()
    by:Play()
    v_u_4:TweenPosition(UDim2.new(0.5, 0, 0.925, 0), Enum.EasingDirection.In, Enum.EasingStyle.Back, 0.5, true)
    task.wait(0.5)
    v_u_4.Visible = false
    DialogueFrame:Destroy()
end


function Notice(text,name,PId,time,waitingtime)
  
    CharacterName.Text = name
      ImageLabel1.Image = PId
     PopOut()

     Typewrite(text,time)
      wait(waitingtime)
      PopIn()

      by:Destroy()
       sart:Destroy()
end
--[[
Notice("古比这🤔，古比那，😍古比服务器😜，古比局域网，😘古比无线网🤑，古比内存😏，古比牛排😛，古比火腿😋，来源日本的亚洲古比产品🤩，我与伙伴化身古比狂欢😇，所有的古比都嗨到不行了🤫","kreekcraft","rbxassetid://7345286522",15,1)
]]
