local variables = {
     Enabled = _G.Enabled,
     Player = _G.Player
}

local function Notification(args)
	local main = Instance.new("ScreenGui", game.Players.LocalPlayer.PlayerGui)
	local Launch = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Title = Instance.new("TextLabel")
local Content = Instance.new("TextLabel")

Launch.Name = "Launch"
Launch.Parent = main
Launch.BackgroundColor3 = Color3.fromRGB(22, 15, 41)
Launch.BackgroundTransparency = 0.540
Launch.Position = UDim2.new(0.402996838, 0, 0.0371567048, 0)
Launch.Size = UDim2.new(0.194006309, 0, 0.171243936, 0)

UICorner.CornerRadius = UDim.new(0.0700000003, 0)
UICorner.Parent = Launch

Title.Name = "Title"
Title.Parent = Launch
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Position = UDim2.new(0.0416802578, 0, 0, 0)
Title.Size = UDim2.new(0.914634168, 0, 0.528301895, 0)
Title.Font = Enum.Font.SourceSans
Title.Text = args.title
Title.TextColor3 = Color3.fromRGB(191, 205, 224)
Title.TextSize = 27.000
Title.TextTransparency = 0.340
Title.TextWrapped = true
Title.TextXAlignment = Enum.TextXAlignment.Left

Content.Name = "Content"
Content.Parent = Launch
Content.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Content.BackgroundTransparency = 1.000
Content.Position = UDim2.new(0.0416802578, 0, 0.504464269, 0)
Content.Size = UDim2.new(0.914634168, 0, 0.528301895, 0)
Content.Font = Enum.Font.SourceSans
Content.Text = args.content
Content.TextColor3 = Color3.fromRGB(191, 205, 224)
Content.TextSize = 20.000
Content.TextWrapped = true
Content.TextXAlignment = Enum.TextXAlignment.Left
return main
end

while wait(0) do
	if not (workspace:FindFirstChild(Player)) then
		Notification({
		  title = 'Could not find player.'
		  content = 'Could not find the player: '..tostring(Player)..', make sure you typed it in correctly.'
		})
		task.wait(4)
		Notification:Delete()
	end
	local plr = workspace[Player]
	game.Players.LocalPlayer.Character.Humanoid:MoveTo(Player.HumanoidRootPart.Position, Player.HumanoidRootPart)
end
