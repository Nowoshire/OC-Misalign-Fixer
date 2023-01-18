print("::NAA:: -- Auto-Align by Nowoshire - No more .998s!")
local lp = game:GetService("Players").LocalPlayer
-- Create the GUIObjects
local function sgparent()
	local success = pcall(function()
		gethui()
	end)
	if success == true then
		warn("::NAA:: -- Nowoshire's Auto-Aligner loaded with supported gethui() method!")
		return gethui()
	else 
		warn("::NAA:: -- gethui() not supported!")
		success = pcall(function()
			game:GetService("CoreGui")()
		end)
		if success == true then
			return game:GetService("CoreGui")
		else 
			warn("::NAA:: -- Lacking permission 1, using PlayerGui; YOU MAY BE VULNERABLE TO DETECTION!")
			return lp.PlayerGui
		end
	end
end

lp.PlayerGui.LocalOutput:Fire("Nowoshire's Auto Aligner loaded successfully!", Color3.fromRGB(50, 255, 255))

local sg = Instance.new("ScreenGui", sgparent())
sg.Name = "Auto-Aligner"
sg.ResetOnSpawn = false
sg.Enabled = true

local Container = Instance.new("Frame", sg)
Container.Name = "Container"
Container.BackgroundTransparency = 0
Container.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Container.BorderSizePixel = 0
Container.Position = UDim2.new(0.2, 0, 0.4, 0)
Container.Size = UDim2.new(0.11, 0, 0.3, 0)

local RectConstraint = Instance.new("UIAspectRatioConstraint", Container)
RectConstraint.AspectRatio = 1.4
RectConstraint.AspectType = Enum.AspectType.ScaleWithParentSize

local purpleborder = Instance.new("UIStroke", Container)
purpleborder.Name = "purpleborder"
purpleborder.Color = Color3.fromRGB(40, 0, 100)
purpleborder.Thickness = 2.5
purpleborder.Transparency = 0.3

local transpgrad = Instance.new("UIGradient", purpleborder)
transpgrad.Name = "transpgrad"
transpgrad.Rotation = 50
transpgrad.Transparency = NumberSequence.new{
	NumberSequenceKeypoint.new(0, 0),
	NumberSequenceKeypoint.new(0.2, 0.4),
	NumberSequenceKeypoint.new(1, 0.9)
}

local Frame = Instance.new("Frame", Container)
Frame.AnchorPoint = Vector2.new(0, 1)
Frame.BackgroundTransparency = 1
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0, 0, 1, 0)
Frame.Size = UDim2.new(1, 0, 0.87, 0)

local UIListLayout = Instance.new("UIListLayout", Frame)
UIListLayout.Padding = UDim.new(0, 6)
UIListLayout.FillDirection = Enum.FillDirection.Vertical
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center

local alignbf = Instance.new("Frame", Frame)
alignbf.Name = "alignbf"
alignbf.BackgroundColor3 = Color3.fromRGB(70,70,70)
alignbf.BorderSizePixel = 0
alignbf.LayoutOrder = 1
alignbf.Size = UDim2.new(0.7, 0, 0.16, 0)

local color = Instance.new("Frame", alignbf)
color.Name = "color"
color.BackgroundColor3 = Color3.fromRGB(220, 0, 0)
color.BorderSizePixel = 0
color.Position = UDim2.new(0, 0, 1, 0)
color.Size = UDim2.new(1, 0, 0.12, 0)

local alignb = Instance.new("TextButton", alignbf)
alignb.Name = "alignb"
alignb.AnchorPoint = Vector2.new(0, 0.5)
alignb.BackgroundTransparency = 1
alignb.BorderSizePixel = 0
alignb.Position = UDim2.new(0, 0, 0.5, 0)
alignb.Size = UDim2.new(1, 0, 0.9, 9)
alignb.FontFace = Font.new("rbxasset://fonts/families/Jura.json", Enum.FontWeight.Medium)
alignb.LineHeight = 1.2
alignb.Text = "Align Parts"
alignb.TextColor3 = Color3.fromRGB(255, 255, 255)
alignb.TextScaled = true

local alignsbf = Instance.new("Frame", Frame)
alignsbf.Name = "alignsbf"
alignsbf.BackgroundColor3 = Color3.fromRGB(70,70,70)
alignsbf.BorderSizePixel = 0
alignsbf.LayoutOrder = 2
alignsbf.Size = UDim2.new(0.7, 0, 0.16, 0)

local color0 = Instance.new("Frame", alignsbf)
color0.Name = "color"
color0.BackgroundColor3 = Color3.fromRGB(220, 0, 0)
color0.BorderSizePixel = 0
color0.Position = UDim2.new(0, 0, 1, 0)
color0.Size = UDim2.new(1, 0, 0.12, 0)

local alignsb = Instance.new("TextButton", alignsbf)
alignsb.Name = "alignsb"
alignsb.AnchorPoint = Vector2.new(0, 0.5)
alignsb.BackgroundTransparency = 1
alignsb.BorderSizePixel = 0
alignsb.Position = UDim2.new(0, 0, 0.5, 0)
alignsb.Size = UDim2.new(1, 0, 0.9, 9)
alignsb.FontFace = Font.new("rbxasset://fonts/families/Jura.json", Enum.FontWeight.Medium)
alignsb.LineHeight = 1.2
alignsb.Text = "Align Selected"
alignsb.TextColor3 = Color3.fromRGB(255, 255, 255)
alignsb.TextScaled = true

local roundv = Instance.new("Frame", Frame)
roundv.Name = "roundv"
roundv.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
roundv.BorderSizePixel = 0
roundv.LayoutOrder = 3
roundv.Size = UDim2.new(0.7, 0, 0.16, 0)

local TextBox = Instance.new("TextBox", roundv)
TextBox.AnchorPoint = Vector2.new(1, 0.5)
TextBox.BackgroundColor3 = Color3.fromRGB(85, 85, 85)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(1, 0, 0.5, 0)
TextBox.Size = UDim2.new(0.5, 0, 0.9, 0)
TextBox.FontFace = Font.new("rbxasset://fonts/families/Jura.json", Enum.FontWeight.Medium)
TextBox.PlaceholderText = "0.005"
TextBox.Text = "0.005"
TextBox.TextColor3 = Color3.fromRGB(0, 200, 200)
TextBox.TextScaled = true

local TextLabel = Instance.new("TextLabel", roundv)
TextLabel.AnchorPoint = Vector2.new(0, 0.5)
TextLabel.BackgroundTransparency = 1
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0, 5, 0.5, 0)
TextLabel.Size = UDim2.new(0.4, 0, 0.9, 0)
TextLabel.FontFace = Font.new("rbxasset://fonts/families/Jura.json", Enum.FontWeight.Medium)
TextLabel.Text = "Offset"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true

local banner = Instance.new("TextLabel", Frame)
banner.Name = "banner"
banner.AnchorPoint = Vector2.new(0.5, 0)
banner.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
banner.BorderSizePixel = 0
banner.LayoutOrder = 0
banner.RichText = true
banner.Size = UDim2.new(0.7, 0, 0.25, 0)
banner.FontFace = Font.new("rbxasset://fonts/families/Jura.json", Enum.FontWeight.Bold)
banner.Text = 'Auto Aligner<br/><font color="rgb(200,200,200)"><font size="5">- By Nowoshire</font></font>'
banner.TextColor3 = Color3.fromRGB(255, 255, 255)
banner.TextScaled = true

local parttypeframe = Instance.new("Frame", Container)
parttypeframe.Name = "parttypeframe"
parttypeframe.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
parttypeframe.BorderSizePixel = 0
parttypeframe.Position = UDim2.new(0, 0, 0, 0)
parttypeframe.Size = UDim2.new(0.8, 0, 1, 0)
parttypeframe.Visible = false
parttypeframe.ZIndex = 0

local purpleborder1 = Instance.new("UIStroke", parttypeframe)
purpleborder1.Name = "purpleborder"
purpleborder1.Color = Color3.fromRGB(40, 0, 100)
purpleborder1.Thickness = 2.5
purpleborder1.Transparency = 0.3

local transpgrad1 = Instance.new("UIGradient", purpleborder1)
transpgrad1.Name = "transpgrad"
transpgrad1.Rotation = 130
transpgrad1.Transparency = NumberSequence.new{
	NumberSequenceKeypoint.new(0, 0),
	NumberSequenceKeypoint.new(0.2, 0.4),
	NumberSequenceKeypoint.new(1, 0.9)
}

local ScrollingFrame = Instance.new("ScrollingFrame", parttypeframe)
ScrollingFrame.AnchorPoint = Vector2.new(0, 1)
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0, 0, 1, 0)
ScrollingFrame.Size = UDim2.new(1, 0, 0.75, 0)
ScrollingFrame.ZIndex = 0
ScrollingFrame.AutomaticCanvasSize = Enum.AutomaticSize.XY
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 2.4, 0)
ScrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(20, 20, 20)
ScrollingFrame.ScrollBarThickness = 10

local UIListLayout1 = Instance.new("UIListLayout", ScrollingFrame)
UIListLayout1.Padding = UDim.new(0, 8)
UIListLayout1.FillDirection = Enum.FillDirection.Vertical
UIListLayout1.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout1.SortOrder = Enum.SortOrder.Name
UIListLayout1.VerticalAlignment = Enum.VerticalAlignment.Top

-- Buttons for part types will be created in parttypeframe.ScrollingFrame
local DisabledPartTypes = {}

for _, parttype in pairs(game.Workspace.Obbies:FindFirstChild("Items", true):GetChildren()) do
	if parttype:IsA("Folder") then
		local parttypebutton = Instance.new("TextButton", ScrollingFrame)
		parttypebutton.Name = parttype.Name
		parttypebutton.AnchorPoint = Vector2.new(0, 0.5)
		parttypebutton.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
		parttypebutton.BorderSizePixel = 0
		parttypebutton.Size = UDim2.new(0.75, 0, 0.18, 0)
		parttypebutton.ZIndex = 0
		parttypebutton.FontFace = Font.new("rbxasset://fonts/families/Jura.json", Enum.FontWeight.Medium)
		parttypebutton.LineHeight = 1.2
		parttypebutton.Text = parttype.Name
		parttypebutton.TextColor3 = Color3.fromRGB(255, 255, 255)
		parttypebutton.TextScaled = true

		local color2 = Instance.new("Frame", parttypebutton)
		color2.Name = "color"
		color2.BackgroundColor3 = Color3.fromRGB(0, 220, 0)
		color2.BorderSizePixel = 0
		color2.Position = UDim2.new(0, 0, 1, 0)
		color2.Size = UDim2.new(1, 0, 0.15, 0)
		color2.ZIndex = 0

		parttypebutton.Activated:Connect(function ()
			if not table.find(DisabledPartTypes, parttypebutton.Name) then
				table.insert(DisabledPartTypes, parttypebutton.Name)
				color2.BackgroundColor3 = Color3.fromRGB(220, 0, 0)
			else
				table.remove(DisabledPartTypes, table.find(DisabledPartTypes, parttypebutton.Name))
				color2.BackgroundColor3 = Color3.fromRGB(0, 220, 0)
			end
		end)
	end
end

local title = Instance.new("TextLabel", parttypeframe)
title.Name = "title"
title.AnchorPoint = Vector2.new(0.5, 0)
title.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
title.BorderSizePixel = 0
title.Position = UDim2.new(0.5, 0, 0.05, 0)
title.Size = UDim2.new(0.7, 0, 0.15, 0)
title.ZIndex = 0
title.FontFace = Font.new("rbxasset://fonts/families/Jura.json", Enum.FontWeight.Bold)
title.Text = "Part Type Filter"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextScaled = true

local UICorner = Instance.new("UICorner", Frame)
UICorner.CornerRadius = UDim.new(0, 8)

local buttons = Instance.new("Frame", Container)
buttons.Name = "buttons"
buttons.AnchorPoint = Vector2.new(1, 0)
buttons.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
buttons.BorderSizePixel = 0
buttons.Position = UDim2.new(1, 0, 0, 0)
buttons.Size = UDim2.new(0.2, 0, 0.2, 0)

local RectConstraint0 = Instance.new("UIAspectRatioConstraint", buttons)
RectConstraint0.AspectRatio = 2
RectConstraint0.AspectType = Enum.AspectType.ScaleWithParentSize

local close = Instance.new("ImageButton", buttons)
close.Name = "close"
close.AnchorPoint = Vector2.new(1, 0)
close.BackgroundTransparency = 1
close.BorderSizePixel = 0
close.Position = UDim2.new(1, 0, 0, 0)
close.Size = UDim2.new(0.5, 0, 1, 0)
close.Visible = true
close.Image = "rbxassetid://11907054176"

local minimize = Instance.new("ImageButton", buttons)
minimize.Name = "minimize"
minimize.AnchorPoint = Vector2.new(0, 0)
minimize.BackgroundTransparency = 1
minimize.BorderSizePixel = 0
minimize.Position = UDim2.new(0, 0, 0, 0)
minimize.Size = UDim2.new(0.5, 0, 1, 0)
minimize.Visible = true
minimize.Image = "rbxassetid://11907053864"

local minbuttons = Instance.new("Frame", Container)
minbuttons.Name = "minbuttons"
minbuttons.AnchorPoint = Vector2.new(1, 0)
minbuttons.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
minbuttons.BorderSizePixel = 0
minbuttons.Position = UDim2.new(1, 0, 0, 0)
minbuttons.Size = UDim2.new(0.2, 0, 0.2, 0)
minbuttons.Visible = false

local RectConstraint1 = Instance.new("UIAspectRatioConstraint", minbuttons)
RectConstraint1.AspectRatio = 2
RectConstraint1.AspectType = Enum.AspectType.ScaleWithParentSize

local close1 = Instance.new("ImageButton", minbuttons)
close1.Name = "close"
close1.AnchorPoint = Vector2.new(1, 0)
close1.BackgroundTransparency = 1
close1.BorderSizePixel = 0
close1.Position = UDim2.new(1, 0, 0, 0)
close1.Size = UDim2.new(0.5, 0, 1, 0)
close1.Image = "rbxassetid://11907054176"

local expand = Instance.new("ImageButton", minbuttons)
expand.Name = "expand"
expand.AnchorPoint = Vector2.new(0, 0)
expand.BackgroundTransparency = 1
expand.BorderSizePixel = 0
expand.Position = UDim2.new(0, 0, 0, 0)
expand.Size = UDim2.new(0.5, 0, 1, 0)
expand.Image = "rbxassetid://11907965976"

local alignptb = Instance.new("ImageButton", Container)
alignptb.Name = "alignptb"
alignptb.AnchorPoint = Vector2.new(0.5, 0.5)
alignptb.BackgroundTransparency = 1
alignptb.BorderSizePixel = 0
alignptb.Position = UDim2.new(1, -8, 0.5, 0)
alignptb.Size = UDim2.new(0.13, 0, 0.13, 0)
alignptb.SizeConstraint = Enum.SizeConstraint.RelativeXX
alignptb.Image = "rbxassetid://6993462605"

-- Dragger
local UIS = game:GetService('UserInputService')
local frame = sg.Container
local dragToggle = nil
local dragSpeed = 0.4
local dragStart = nil
local startPos = nil

local function updateInput(input)
	local delta = input.Position - dragStart
	local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
		startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	--game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
	frame.Position = position
end

local tween1 = game:GetService('TweenService'):Create(transpgrad, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Rotation = 230})
local tween2 = game:GetService('TweenService'):Create(transpgrad, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Rotation = 50})
frame.InputBegan:Connect(function(input)
	if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
		dragToggle = true
		dragStart = input.Position
		startPos = frame.Position
		tween1:Play()
		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragToggle = false
				tween2:Play()
			end
		end)
	end
end)

UIS.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		if dragToggle then
			updateInput(input)
		end
	end
end)

-- Align PartType Button (open menu)
local menutoggle = false
local caninteract = true
local animduration = 0.2
local opentween = game:GetService('TweenService'):Create(parttypeframe, TweenInfo.new(animduration, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Position = UDim2.new(1, 8, 0, 0)})
local closetween = game:GetService('TweenService'):Create(parttypeframe, TweenInfo.new(animduration, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Position = UDim2.new(0, 0, 0, 0)})
alignptb.Activated:Connect(function ()
	if menutoggle == false and caninteract == true then
		menutoggle = true
		alignptb.Rotation = 180
		parttypeframe.Visible = true
		opentween:Play()
	elseif caninteract == true then
		menutoggle = false
		alignptb.Rotation = 0
		closetween:Play()
		task.wait(animduration)
		parttypeframe.Visible = false
	end
end)

-- Close and Minimize Buttons
close.Activated:Connect(function()
	sg:Destroy()
	script:Destroy()
end)
close1.Activated:Connect(function()
	sg:Destroy()
	script:Destroy()
end)

local as = buttons.AbsoluteSize
minimize.Activated:Connect(function()
	if caninteract == true then
		caninteract = false
		Frame.Visible = false
		buttons.Visible = false
		minbuttons.Visible = true
		alignptb.Visible = false
		if menutoggle == true then
			menutoggle = false
			alignptb.Rotation = 0
			closetween:Play()
			task.wait(animduration)
			parttypeframe.Visible = false
			task.wait(0.1)
		end
		game:GetService('TweenService'):Create(Container, TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Size = UDim2.new(0, buttons.AbsoluteSize.X + 10, 0, buttons.AbsoluteSize.Y + 10)}):Play()
		minbuttons.Size = UDim2.new(0, as.X, 0, as.Y)
		game:GetService('TweenService'):Create(minbuttons, TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {AnchorPoint = Vector2.new(0.5, 0.5)}):Play()
		game:GetService('TweenService'):Create(minbuttons, TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Position = UDim2.new(0.5, 0, 0.5, 0)}):Play()
		task.wait(0.5)
		caninteract = true
	end
end)

local ogsize0 = Container.Size
local ogsize1 = minbuttons.Size
expand.Activated:Connect(function()
	if caninteract == true then
		caninteract = false
		Frame.Visible = true
		buttons.Visible = true
		minbuttons.Visible = false
		alignptb.Visible = true
		game:GetService('TweenService'):Create(Container, TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Size = ogsize0}):Play()
		minbuttons.Size = UDim2.new(ogsize1.X, 0, ogsize1.Y, 0)
		minbuttons.AnchorPoint = Vector2.new(1, 0)
		minbuttons.Position = UDim2.new(1, 0, 0, 0)
		task.wait(0.5)
		caninteract = true
	end
end)

-- Align Parts script
local debounce = false
local function align (mode)
	if debounce == false then
		debounce = true
		if mode == 0 then
			color.BackgroundColor3 = Color3.fromRGB(220, 220, 0)
		else
			color0.BackgroundColor3 = Color3.fromRGB(220, 220, 0)
		end
		-- Sanity Checks.
		if typeof(tonumber(TextBox.Text)) ~= "number" 
		or typeof(tonumber(TextBox.Text)) == "number" and tonumber(TextBox.Text) < 0.002 then return end

		-- Return an editable obby
		local function editable_obby (list)
			if (lp.PlayerGui:FindFirstChild("CurrentObby").Value == nil or lp.PlayerGui:FindFirstChild("CurrentObby").Value.Name == lp.Name) and lp.PlayerGui:FindFirstChild("CanEdit").Value == true then
				return lp.Name
			elseif lp.PlayerGui:FindFirstChild("CanEdit").Value == false then
				return nil
			end
			for _, whitelisted in pairs(list) do
				if whitelisted == lp.PlayerGui:FindFirstChild("CurrentObby").Value.Name then
					return lp.PlayerGui:FindFirstChild("CurrentObby").Value.Name
				end
			end
			return lp.Name
		end

		local obby = editable_obby(game:GetService("ReplicatedStorage").Events.GetWhitelists:InvokeServer())
		if obby == nil then
			color.BackgroundColor3 = Color3.fromRGB(220, 0, 0)
			warn("::NAA:: -- No obby to align parts in.")
			return
		end

		-- Align Parts in obby.
		print("::NAA:: -- Aligning Parts in "..obby.."'s Obby.")

		local selected = {}
		-- Create table of selected parts.
		for _, selection in pairs(lp.PlayerGui.Edit.LocalScript:GetChildren()) do
			if selection.Name == "BoxSelection" and selection.Adornee ~= nil then
				table.insert(selected, selection.Adornee)
			end
		end

		local function selectedcheck (part)
			if table.find(selected, part) then
				return true
			else
				return false
			end
		end

		if lp.PlayerGui.IsEditing.Value == true and #selected > 0 then
			lp.PlayerGui.StopEditing:Fire()
			lp.PlayerGui.LocalOutput:Fire("Exiting Edit Mode to align selected parts.", Color3.fromRGB(255, 120, 0))
			repeat
				task.wait()
			until lp.PlayerGui.IsEditing.Value == false
		end

		for _, PartTypeFolder in pairs(game.Workspace.Obbies[obby].Items:GetChildren()) do
			if PartTypeFolder:IsA("Folder") and not table.find(DisabledPartTypes, PartTypeFolder.Name) then
				local MovePartTable = {[1] = {}}
				for _, part in pairs(PartTypeFolder:GetChildren()) do
					if part:IsA("BasePart") and mode == 0 or part:IsA("BasePart") and mode == 1 and selectedcheck(part) == true then
						if math.round(part.Position.X/TextBox.Text)*TextBox.Text ~= part.Position.X 
						or math.round(part.Position.Y/TextBox.Text)*TextBox.Text ~= part.Position.Y
						or math.round(part.Position.Z/TextBox.Text)*TextBox.Text ~= part.Position.Z then
							table.insert(MovePartTable[1], {
								[1] = part,
								[2] = CFrame.new(Vector3.new(
									math.round(part.Position.X/TextBox.Text)*TextBox.Text,
									math.round(part.Position.Y/TextBox.Text)*TextBox.Text,
									math.round(part.Position.Z/TextBox.Text)*TextBox.Text))*CFrame.Angles(math.rad(part.Rotation.X), math.rad(part.Rotation.Y), math.rad(part.Rotation.Z)),
								[3] = part.Size
							})
							if part.Name == "Moving Part" then -- Additional data for moving parts
								table.insert(MovePartTable[1][#MovePartTable[1]], {
									[1] = Vector3.new(
										math.round(part.m1.Value.X/TextBox.Text)*TextBox.Text,
										math.round(part.m1.Value.Y/TextBox.Text)*TextBox.Text,
										math.round(part.m1.Value.Z/TextBox.Text)*TextBox.Text),
									[2] = Vector3.new(
										math.round(part.m2.Value.X/TextBox.Text)*TextBox.Text,
										math.round(part.m2.Value.Y/TextBox.Text)*TextBox.Text,
										math.round(part.m2.Value.Z/TextBox.Text)*TextBox.Text)
								})
							end
						end
					elseif part.Parent.Name == "Special" and part:IsA("Model") and part:FindFirstChild(part.Name) then -- Different handling for Special Cart Tracks and potentially other stuff, which are models.
						table.insert(MovePartTable[1], {
							[1] = part:FindFirstChild(part.Name),
							[2] = CFrame.new(Vector3.new(
								math.round(part:FindFirstChild(part.Name).Position.X/TextBox.Text)*TextBox.Text,
								math.round(part:FindFirstChild(part.Name).Position.Y/TextBox.Text)*TextBox.Text,
								math.round(part:FindFirstChild(part.Name).Position.Z/TextBox.Text)*TextBox.Text))*CFrame.Angles(math.rad(part:FindFirstChild(part.Name).Rotation.X), math.rad(part:FindFirstChild(part.Name).Rotation.Y), math.rad(part:FindFirstChild(part.Name).Rotation.Z)),
							[3] = part:FindFirstChild(part.Name).Size
						})
					end
				end

				local function sses(pluralword) -- Truss(es)!!!
					if string.lower(string.sub(pluralword, string.len(pluralword)-1)) == "ss" then
						return pluralword.."es"
					else
						return pluralword
					end 
				end
				
				if #MovePartTable[1] > 0 then
					game:GetService("ReplicatedStorage").Events.MoveObject:InvokeServer(unpack(MovePartTable))
					print("::NAA:: -- Aligned "..#MovePartTable[1],sses(PartTypeFolder.Name))
				else
					print("::NAA:: -- No misaligned "..sses(PartTypeFolder.Name).." to align")
				end
			end
		end
		if mode == 0 then
			color.BackgroundColor3 = Color3.fromRGB(0, 220, 0)
		else
			color0.BackgroundColor3 = Color3.fromRGB(0, 220, 0)
		end
		lp.PlayerGui.LocalOutput:Fire("Finished aligning parts!", Color3.fromRGB(0, 200, 0))
		task.wait(1)
		color.BackgroundColor3 = Color3.fromRGB(220, 0, 0)
		color0.BackgroundColor3 = Color3.fromRGB(220, 0, 0)
		debounce = false
	end
end

alignb.Activated:Connect(function ()
	align(0)
end)
alignsb.Activated:Connect(function ()
	align(1)
end)

-- TextBox input thing
TextBox.FocusLost:Connect(function ()
	if typeof(tonumber(TextBox.Text)) == "number" and tonumber(TextBox.Text) >= 0.001 then
		TextBox.Text = tonumber(TextBox.Text)
		TextBox.PlaceholderText = TextBox.Text
	elseif typeof(tonumber(TextBox.Text)) == "number" and tonumber(TextBox.Text) < 0.001 then
		TextBox.Text = 0.001
		TextBox.PlaceholderText = TextBox.Text
	else
		TextBox.Text = TextBox.PlaceholderText
	end
end)

-- Funky Scroll Effect
ScrollingFrame:GetPropertyChangedSignal("CanvasPosition"):Connect(function ()
	transpgrad1.Rotation = 130 * (1 + ScrollingFrame.CanvasPosition.Y/(ScrollingFrame.AbsoluteSize.Y*ScrollingFrame.CanvasSize.Y.Scale))
end)
