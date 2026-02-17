task.wait(10)
print("Script Ready")
print("Loading Script...")

---Player
local PlayerService = game:GetService("Players")
local Player = game.Players.LocalPlayer
local Character = Player.Character or Player.CharacterAdded:Wait()
local Humanoid = Player.Character:WaitForChild("Humanoid")
local Hrp = Player.Character:WaitForChild("HumanoidRootPart")

---Serveice 
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local UserInputService = game:GetService("UserInputService")
local RunsService = game:GetService("RunService")
local TeleportService = game:GetService("TeleportService")


-- Clean old GUI
local success, err = pcall(function()
	local oldGui = game.CoreGui:FindFirstChild("NastyGui")
	if oldGui then
		oldGui:Destroy()
	end
end)

if not success then
	warn("Failed to clean old GUI:", err)
end



---Create ScreenGui

local NastyGui = Instance.new("ScreenGui")
NastyGui.Name = "NastyGui"
NastyGui.ResetOnSpawn = false
NastyGui.Parent = Player:WaitForChild("PlayerGui")


--Utilitys

local Amendies = {
	Noclip = false,
	RainbowSlap = nil,
	Huge_Slap = nil,
	Inf = false
	
	
}


---GetSlaps
task.spawn(function()
	while Amendies.RainbowSlap == nil or Amendies.Huge_Slap == nil do
		task.wait(30)
	   task.spawn(function()
			for _, player in ipairs(game.Players:GetChildren()) do
				local Bag = player:FindFirstChild("Backpack")

				for _, tool in ipairs(Bag:GetChildren()) do
					if tool:IsA("Tool") and tool.Name == "RainbowSlap" then
						local id = tool:WaitForChild("id")

						if id then
							id:Destroy()
						end
						Amendies.RainbowSlap = tool
						break
					elseif tool:IsA("Tool") and tool.Name == "DefaultSlap" then
						local id = tool:WaitForChild("id")
						
						if id then
							id:Destroy()
						end
						Amendies.Huge_Slap = tool
						break
					end
				end
			end
	   end)
	end
end)




-- Generated using RoadToGlory's Converter v1.1 (RoadToGlory#9879)

-- Instances:
local Converted = {
	["_Nasty_Gui"] = Instance.new("Frame");
	["_Open_CloseFrame"] = Instance.new("Frame");
	["_UICorner Open"] = Instance.new("UICorner");
	["_UIGradient Open"] = Instance.new("UIGradient");
	["_UIStroke Open"] = Instance.new("UIStroke");
	["_UIGradient Open1"] = Instance.new("UIGradient");
	["_UIAspectRatioConstraint"] = Instance.new("UIAspectRatioConstraint");
	["_Drag_Open"] = Instance.new("UIDragDetector");
	["_Open/Closebtn"] = Instance.new("TextButton");
	["_Get_Player"] = Instance.new("TextButton");
	["_Main_Frame"] = Instance.new("Frame");
	["_UICorner"] = Instance.new("UICorner");
	["_UIStroke"] = Instance.new("UIStroke");
	["_Menu Display"] = Instance.new("Frame");
	["_Enable Main Frame"] = Instance.new("TextButton");
	["_UICorner1"] = Instance.new("UICorner");
	["_Enable Misc Frame"] = Instance.new("TextButton");
	["_UICorner2"] = Instance.new("UICorner");
	["_Enable Tool Frame"] = Instance.new("TextButton");
	["_UICorner3"] = Instance.new("UICorner");
	["_Enable Other Frame"] = Instance.new("TextButton");
	["_UICorner4"] = Instance.new("UICorner");
	["_Main"] = Instance.new("Frame");
	["_WelcomeFrame"] = Instance.new("Frame");
	["_Welcome"] = Instance.new("ImageLabel");
	["_NastWord"] = Instance.new("TextLabel");
	["_UICorner5"] = Instance.new("UICorner");
	["_Main title"] = Instance.new("TextLabel");
	["_Auto Huge"] = Instance.new("Frame");
	["_Huge Title"] = Instance.new("TextLabel");
	["_EnterPlayerName"] = Instance.new("TextBox");
	["_No Clip Frame"] = Instance.new("Frame");
	["_Noclip"] = Instance.new("TextButton");
	["_Shop Or Rejoin"] = Instance.new("Frame");
	["_Rj"] = Instance.new("TextButton");
	["_SeverHop"] = Instance.new("TextButton");
	["_AntiGamepaused"] = Instance.new("Frame");
	["_GamePaused"] = Instance.new("TextButton");
	["_Tools"] = Instance.new("Frame");
	["_UICorner6"] = Instance.new("UICorner");
	["_Tool_Title"] = Instance.new("TextLabel");
	["_Water Slap"] = Instance.new("Frame");
	["_Title Water Slap"] = Instance.new("TextLabel");
	["_UICorner7"] = Instance.new("UICorner");
	["_GetWaterSlap"] = Instance.new("TextButton");
	["_UICorner8"] = Instance.new("UICorner");
	["_GoldenSlap"] = Instance.new("Frame");
	["_GoldenSlapTitle"] = Instance.new("TextLabel");
	["_UICorner9"] = Instance.new("UICorner");
	["_GetGoldenSlap"] = Instance.new("TextButton");
	["_UICorner10"] = Instance.new("UICorner");
	["_Strong Slap"] = Instance.new("Frame");
	["_TitleStrongSlap"] = Instance.new("TextLabel");
	["_UICorner11"] = Instance.new("UICorner");
	["_GetStrongSlap"] = Instance.new("TextButton");
	["_UICorner12"] = Instance.new("UICorner");
	["_Rainbow Slap"] = Instance.new("Frame");
	["_Rainbow title"] = Instance.new("TextLabel");
	["_UICorner13"] = Instance.new("UICorner");
	["_Get RainbowSlap"] = Instance.new("TextButton");
	["_UICorner14"] = Instance.new("UICorner");
	["_Misc"] = Instance.new("Frame");
	["_UICorner15"] = Instance.new("UICorner");
	["_Misc Title"] = Instance.new("TextLabel");
	["_Walkspeed"] = Instance.new("Frame");
	["_Walkspeed Title"] = Instance.new("TextLabel");
	["_Walkspeed Box"] = Instance.new("TextBox");
	["_UICorner16"] = Instance.new("UICorner");
	["_Reset"] = Instance.new("Frame");
	["_Rest Title"] = Instance.new("TextLabel");
	["_Reset Char"] = Instance.new("TextButton");
	["_InfitJump"] = Instance.new("Frame");
	["_InfiteJump"] = Instance.new("TextLabel");
	["_Enable InfiteJump"] = Instance.new("TextButton");
	["_Jump Height"] = Instance.new("Frame");
	["_JumpHeight_ttile"] = Instance.new("TextLabel");
	["_JumpAmountextbox"] = Instance.new("TextBox");
	["_UICorner17"] = Instance.new("UICorner");
	["_Title Frame"] = Instance.new("Frame");
	["_Ttilte Text"] = Instance.new("TextLabel");
	["_UIGradient_Title"] = Instance.new("UIGradient");
	["_UICorner Ttitle"] = Instance.new("UICorner");
	["_Other"] = Instance.new("Frame");
	["_Coming_Soon"] = Instance.new("TextLabel");
	["_UIAspectRatioConstraint1"] = Instance.new("UIAspectRatioConstraint");
	["_Drag_Main"] = Instance.new("UIDragDetector");
	["_UIAspectRatioConstraint2"] = Instance.new("UIAspectRatioConstraint");
	["_UIAspectRatioConstraint3"] = Instance.new("UIAspectRatioConstraint");
}

-- Properties:
Converted["_WelcomeFrame"].BackgroundColor3 = Color3.fromRGB(52.00000450015068, 52.00000450015068, 52.00000450015068)
Converted["_WelcomeFrame"].BackgroundTransparency = 1
Converted["_WelcomeFrame"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_WelcomeFrame"].BorderSizePixel = 0
Converted["_WelcomeFrame"].Position = UDim2.new(0, 0, 0.32149902, 0)
Converted["_WelcomeFrame"].Size = UDim2.new(1, 0, 0.44970414, 0)
Converted["_WelcomeFrame"].Name = "WelcomeFrame"
Converted["_WelcomeFrame"].Parent = NastyGui

Converted["_Welcome"].Image = "rbxassetid://101949071065233"
--Converted["_Welcome"].ImageContent = Content
Converted["_Welcome"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Welcome"].BackgroundTransparency = 1
Converted["_Welcome"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Welcome"].BorderSizePixel = 0
Converted["_Welcome"].Position = UDim2.new(0.465306133, 0, 0.154209465, 0)
Converted["_Welcome"].Size = UDim2.new(0.209183678, 0, 0.842105269, 0)
Converted["_Welcome"].Name = "Welcome"
Converted["_Welcome"].Parent = Converted["_WelcomeFrame"]

Converted["_NastWord"].Font = Enum.Font.Unknown
Converted["_NastWord"].Text = "Welcome Nasty 👅🍊💦"
Converted["_NastWord"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_NastWord"].TextScaled = true
Converted["_NastWord"].TextSize = 14
Converted["_NastWord"].TextWrapped = true
Converted["_NastWord"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_NastWord"].BackgroundTransparency = 1
Converted["_NastWord"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_NastWord"].BorderSizePixel = 0
Converted["_NastWord"].Position = UDim2.new(0.473469377, 0, 0.324561417, 0)
Converted["_NastWord"].Size = UDim2.new(0.10204082, 0, 0.219298244, 0)
Converted["_NastWord"].Name = "NastWord"
Converted["_NastWord"].Parent = Converted["_WelcomeFrame"]

Converted["_UIAspectRatioConstraint3"].AspectRatio = 4.298245429992676
Converted["_UIAspectRatioConstraint3"].Parent = Converted["_WelcomeFrame"]

task.wait(5)
Converted["_WelcomeFrame"].Visible = false

Converted["_Nasty_Gui"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Nasty_Gui"].BackgroundTransparency = 1
Converted["_Nasty_Gui"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Nasty_Gui"].BorderSizePixel = 0
Converted["_Nasty_Gui"].Size = UDim2.new(1, 0, 1, 0)
Converted["_Nasty_Gui"].Name = "Nasty_Gui"
Converted["_Nasty_Gui"].Parent = NastyGui

Converted["_Open_CloseFrame"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Open_CloseFrame"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Open_CloseFrame"].BorderSizePixel = 0
Converted["_Open_CloseFrame"].Position = UDim2.new(0.021428572, 9, 0.346153855, 4)
Converted["_Open_CloseFrame"].Size = UDim2.new(0.0551020391, 0, 0.0886287615, 0)
Converted["_Open_CloseFrame"].Name = "Open_CloseFrame"
Converted["_Open_CloseFrame"].Parent = Converted["_Nasty_Gui"]

Converted["_UICorner Open"].CornerRadius = UDim.new(1, 0)
Converted["_UICorner Open"].Name = "UICorner Open"
Converted["_UICorner Open"].Parent = Converted["_Open_CloseFrame"]

Converted["_UIGradient Open"].Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(11.000000294297934, 11.000000294297934, 11.000000294297934)),
	ColorSequenceKeypoint.new(0.34602075815200806, Color3.fromRGB(11.000000294297934, 1.0000000591389835, 2.000000118277967)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 38.0000015348196))
}
Converted["_UIGradient Open"].Name = "UIGradient Open"
Converted["_UIGradient Open"].Parent = Converted["_Open_CloseFrame"]

Converted["_UIStroke Open"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke Open"].Thickness = 2
Converted["_UIStroke Open"].Name = "UIStroke Open"
Converted["_UIStroke Open"].Parent = Converted["_Open_CloseFrame"]

Converted["_UIGradient Open1"].Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 3.000000058673322, 41.00000135600567)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(12.000000234693289, 12.000000234693289, 12.000000234693289))
}
Converted["_UIGradient Open1"].Name = "UIGradient Open"
Converted["_UIGradient Open1"].Parent = Converted["_UIStroke Open"]

Converted["_UIAspectRatioConstraint"].AspectRatio = 1.0188679695129395
Converted["_UIAspectRatioConstraint"].Parent = Converted["_Open_CloseFrame"]

Converted["_Drag_Open"].Name = "Drag_Open"
Converted["_Drag_Open"].Parent = Converted["_Open_CloseFrame"]

Converted["_Open/Closebtn"].Font = Enum.Font.FredokaOne
Converted["_Open/Closebtn"].Text = "Open"
Converted["_Open/Closebtn"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Open/Closebtn"].TextScaled = true
Converted["_Open/Closebtn"].TextSize = 14
Converted["_Open/Closebtn"].TextWrapped = true
Converted["_Open/Closebtn"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Open/Closebtn"].BackgroundTransparency = 1
Converted["_Open/Closebtn"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Open/Closebtn"].BorderSizePixel = 0
Converted["_Open/Closebtn"].Size = UDim2.new(1, 0, 1, 0)
Converted["_Open/Closebtn"].Name = "Open/Closebtn"
Converted["_Open/Closebtn"].Parent = Converted["_Open_CloseFrame"]

Converted["_Main_Frame"].BackgroundColor3 = Color3.fromRGB(47.0000009983778, 47.0000009983778, 47.0000009983778)
Converted["_Main_Frame"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Main_Frame"].BorderSizePixel = 0
Converted["_Main_Frame"].Position = UDim2.new(0.439168036, -21, 0.172669575, 4)
Converted["_Main_Frame"].Size = UDim2.new(0.365306109, 0, 0.625418067, 0)
Converted["_Main_Frame"].Name = "Main_Frame"
Converted["_Main_Frame"].Parent = Converted["_Nasty_Gui"]

Converted["_UICorner"].Parent = Converted["_Main_Frame"]

Converted["_UIStroke"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke"].Thickness = 2
Converted["_UIStroke"].Parent = Converted["_Main_Frame"]

Converted["_Menu Display"].BackgroundColor3 = Color3.fromRGB(124.00000780820847, 124.00000780820847, 124.00000780820847)
Converted["_Menu Display"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Menu Display"].BorderSizePixel = 0
Converted["_Menu Display"].Position = UDim2.new(0, 0, 0.085561499, 0)
Converted["_Menu Display"].Size = UDim2.new(1, 0, 0.0989304781, 0)
Converted["_Menu Display"].Name = "Menu Display"
Converted["_Menu Display"].Parent = Converted["_Main_Frame"]

Converted["_Enable Main Frame"].Font = Enum.Font.FredokaOne
Converted["_Enable Main Frame"].Text = "Main"
Converted["_Enable Main Frame"].TextColor3 = Color3.fromRGB(248.00001561641693, 248.00001561641693, 248.00001561641693)
Converted["_Enable Main Frame"].TextSize = 14
Converted["_Enable Main Frame"].BackgroundColor3 = Color3.fromRGB(47.0000009983778, 47.0000009983778, 47.0000009983778)
Converted["_Enable Main Frame"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Enable Main Frame"].BorderSizePixel = 0
Converted["_Enable Main Frame"].Position = UDim2.new(0.0363128483, 0, 0.0810810775, 0)
Converted["_Enable Main Frame"].Size = UDim2.new(0.159217879, 0, 0.810810804, 0)
Converted["_Enable Main Frame"].Name = "Enable Main Frame"
Converted["_Enable Main Frame"].Parent = Converted["_Menu Display"]

Converted["_UICorner1"].Parent = Converted["_Enable Main Frame"]

Converted["_Enable Misc Frame"].Font = Enum.Font.FredokaOne
Converted["_Enable Misc Frame"].Text = "Misc"
Converted["_Enable Misc Frame"].TextColor3 = Color3.fromRGB(248.00001561641693, 248.00001561641693, 248.00001561641693)
Converted["_Enable Misc Frame"].TextSize = 14
Converted["_Enable Misc Frame"].BackgroundColor3 = Color3.fromRGB(47.0000009983778, 47.0000009983778, 47.0000009983778)
Converted["_Enable Misc Frame"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Enable Misc Frame"].BorderSizePixel = 0
Converted["_Enable Misc Frame"].Position = UDim2.new(0.265363127, 0, 0.0810810775, 0)
Converted["_Enable Misc Frame"].Size = UDim2.new(0.159217879, 0, 0.810810804, 0)
Converted["_Enable Misc Frame"].Name = "Enable Misc Frame"
Converted["_Enable Misc Frame"].Parent = Converted["_Menu Display"]

Converted["_UICorner2"].Parent = Converted["_Enable Misc Frame"]

Converted["_Enable Tool Frame"].Font = Enum.Font.FredokaOne
Converted["_Enable Tool Frame"].Text = "Tool"
Converted["_Enable Tool Frame"].TextColor3 = Color3.fromRGB(248.00001561641693, 248.00001561641693, 248.00001561641693)
Converted["_Enable Tool Frame"].TextSize = 14
Converted["_Enable Tool Frame"].BackgroundColor3 = Color3.fromRGB(47.0000009983778, 47.0000009983778, 47.0000009983778)
Converted["_Enable Tool Frame"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Enable Tool Frame"].BorderSizePixel = 0
Converted["_Enable Tool Frame"].Position = UDim2.new(0.494413406, 0, 0.0810810775, 0)
Converted["_Enable Tool Frame"].Size = UDim2.new(0.159217879, 0, 0.810810804, 0)
Converted["_Enable Tool Frame"].Name = "Enable Tool Frame"
Converted["_Enable Tool Frame"].Parent = Converted["_Menu Display"]

Converted["_UICorner3"].Parent = Converted["_Enable Tool Frame"]

Converted["_Enable Other Frame"].Font = Enum.Font.FredokaOne
Converted["_Enable Other Frame"].Text = "Other"
Converted["_Enable Other Frame"].TextColor3 = Color3.fromRGB(248.00001561641693, 248.00001561641693, 248.00001561641693)
Converted["_Enable Other Frame"].TextSize = 14
Converted["_Enable Other Frame"].BackgroundColor3 = Color3.fromRGB(47.0000009983778, 47.0000009983778, 47.0000009983778)
Converted["_Enable Other Frame"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Enable Other Frame"].BorderSizePixel = 0
Converted["_Enable Other Frame"].Position = UDim2.new(0.748603344, 0, 0.0810810775, 0)
Converted["_Enable Other Frame"].Size = UDim2.new(0.159217879, 0, 0.810810804, 0)
Converted["_Enable Other Frame"].Name = "Enable Other Frame"
Converted["_Enable Other Frame"].Parent = Converted["_Menu Display"]

Converted["_UICorner4"].Parent = Converted["_Enable Other Frame"]

Converted["_Main"].BackgroundColor3 = Color3.fromRGB(47.0000009983778, 47.0000009983778, 47.0000009983778)
Converted["_Main"].BackgroundTransparency = 1
Converted["_Main"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Main"].BorderSizePixel = 0
Converted["_Main"].Position = UDim2.new(0, 0, 0.184491977, 0)
Converted["_Main"].Size = UDim2.new(1, 0, 0.79411763, 0)
Converted["_Main"].Name = "Main"
Converted["_Main"].Parent = Converted["_Main_Frame"]

Converted["_UICorner5"].Parent = Converted["_Main"]

Converted["_Main title"].Font = Enum.Font.FredokaOne
Converted["_Main title"].Text = "Main"
Converted["_Main title"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Main title"].TextScaled = true
Converted["_Main title"].TextSize = 14
Converted["_Main title"].TextWrapped = true
Converted["_Main title"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Main title"].BackgroundTransparency = 1
Converted["_Main title"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Main title"].BorderSizePixel = 0
Converted["_Main title"].Position = UDim2.new(0.195530728, 0, 0, 0)
Converted["_Main title"].Size = UDim2.new(0.558659196, 0, 0.0909090936, 0)
Converted["_Main title"].Name = "Main title"
Converted["_Main title"].Parent = Converted["_Main"]

Converted["_Auto Huge"].BackgroundColor3 = Color3.fromRGB(17.00000088661909, 17.00000088661909, 17.00000088661909)
Converted["_Auto Huge"].BackgroundTransparency = 0.699999988079071
Converted["_Auto Huge"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Auto Huge"].BorderSizePixel = 0
Converted["_Auto Huge"].Position = UDim2.new(0, 0, 0.0852458999, 0)
Converted["_Auto Huge"].Size = UDim2.new(1, 0, 0.158249155, 0)
Converted["_Auto Huge"].Name = "Auto Huge"
Converted["_Auto Huge"].Parent = Converted["_Main"]

Converted["_Get_Player"].Font = Enum.Font.SourceSans
Converted["_Get_Player"].Active = true
Converted["_Get_Player"].Text = ""
Converted["_Get_Player"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Get_Player"].TextSize = 14
Converted["_Get_Player"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Get_Player"].BackgroundTransparency = 1
Converted["_Get_Player"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Get_Player"].BorderSizePixel = 0
Converted["_Get_Player"].Size = UDim2.new(0.494413316, 0, 1, 0)
Converted["_Get_Player"].Name = "Get_Player"
Converted["_Get_Player"].Parent = Converted["_Auto Huge"]


Converted["_Huge Title"].Font = Enum.Font.GrenzeGotisch
Converted["_Huge Title"].Text = "Huge Player"
Converted["_Huge Title"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Huge Title"].TextScaled = true
Converted["_Huge Title"].TextSize = 14
Converted["_Huge Title"].TextWrapped = true
Converted["_Huge Title"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Huge Title"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Huge Title"].BackgroundTransparency = 1
Converted["_Huge Title"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Huge Title"].BorderSizePixel = 0
Converted["_Huge Title"].Position = UDim2.new(0, 0, 0.0374470167, 0)
Converted["_Huge Title"].Size = UDim2.new(0.449720681, 0, 0.893617034, 0)
Converted["_Huge Title"].Name = "Huge Title"
Converted["_Huge Title"].Parent = Converted["_Auto Huge"]

Converted["_EnterPlayerName"].Font = Enum.Font.GrenzeGotisch
Converted["_EnterPlayerName"].PlaceholderText = "Enter Player Name"
Converted["_EnterPlayerName"].Text = ""
Converted["_EnterPlayerName"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_EnterPlayerName"].TextSize = 14
Converted["_EnterPlayerName"].BackgroundColor3 = Color3.fromRGB(54.00000438094139, 54.00000438094139, 54.00000438094139)
Converted["_EnterPlayerName"].BackgroundTransparency = 1
Converted["_EnterPlayerName"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_EnterPlayerName"].BorderSizePixel = 0
Converted["_EnterPlayerName"].Position = UDim2.new(0.441340774, 0, 0.0212765951, 0)
Converted["_EnterPlayerName"].Size = UDim2.new(0.558659196, 0, 1.06382978, 0)
Converted["_EnterPlayerName"].Name = "EnterPlayerName"
Converted["_EnterPlayerName"].Parent = Converted["_Auto Huge"]

Converted["_No Clip Frame"].BackgroundColor3 = Color3.fromRGB(17.00000088661909, 17.00000088661909, 17.00000088661909)
Converted["_No Clip Frame"].BackgroundTransparency = 0.699999988079071
Converted["_No Clip Frame"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_No Clip Frame"].BorderSizePixel = 0
Converted["_No Clip Frame"].Position = UDim2.new(0, 0, 0.285245895, 0)
Converted["_No Clip Frame"].Size = UDim2.new(1, 0, 0.158249155, 0)
Converted["_No Clip Frame"].Name = "No Clip Frame"
Converted["_No Clip Frame"].Parent = Converted["_Main"]

Converted["_Noclip"].Font = Enum.Font.GrenzeGotisch
Converted["_Noclip"].Text = "Noclip"
Converted["_Noclip"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Noclip"].TextScaled = true
Converted["_Noclip"].TextSize = 14
Converted["_Noclip"].TextWrapped = true
Converted["_Noclip"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Noclip"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Noclip"].BackgroundTransparency = 1
Converted["_Noclip"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Noclip"].BorderSizePixel = 0
Converted["_Noclip"].Size = UDim2.new(1, 0, 1, 0)
Converted["_Noclip"].Name = "Noclip"
Converted["_Noclip"].Parent = Converted["_No Clip Frame"]

Converted["_Shop Or Rejoin"].BackgroundColor3 = Color3.fromRGB(17.00000088661909, 17.00000088661909, 17.00000088661909)
Converted["_Shop Or Rejoin"].BackgroundTransparency = 0.699999988079071
Converted["_Shop Or Rejoin"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Shop Or Rejoin"].BorderSizePixel = 0
Converted["_Shop Or Rejoin"].Position = UDim2.new(0, 0, 0.498360664, 0)
Converted["_Shop Or Rejoin"].Size = UDim2.new(1, 0, 0.158249155, 0)
Converted["_Shop Or Rejoin"].Name = "Shop Or Rejoin"
Converted["_Shop Or Rejoin"].Parent = Converted["_Main"]

Converted["_Rj"].Font = Enum.Font.GrenzeGotisch
Converted["_Rj"].Text = "Rejojn"
Converted["_Rj"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Rj"].TextScaled = true
Converted["_Rj"].TextSize = 14
Converted["_Rj"].TextWrapped = true
Converted["_Rj"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Rj"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Rj"].BackgroundTransparency = 1
Converted["_Rj"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Rj"].BorderSizePixel = 0
Converted["_Rj"].Size = UDim2.new(0.357541889, 0, 1.06382978, 0)
Converted["_Rj"].Name = "Rj"
Converted["_Rj"].Parent = Converted["_Shop Or Rejoin"]

Converted["_SeverHop"].Font = Enum.Font.GrenzeGotisch
Converted["_SeverHop"].Text = "SeverHop"
Converted["_SeverHop"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_SeverHop"].TextScaled = true
Converted["_SeverHop"].TextSize = 14
Converted["_SeverHop"].TextWrapped = true
Converted["_SeverHop"].TextXAlignment = Enum.TextXAlignment.Right
Converted["_SeverHop"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_SeverHop"].BackgroundTransparency = 1
Converted["_SeverHop"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_SeverHop"].BorderSizePixel = 0
Converted["_SeverHop"].Position = UDim2.new(0.558659196, 0, -0.0638297871, 0)
Converted["_SeverHop"].Size = UDim2.new(0.441340774, 0, 1.06382978, 0)
Converted["_SeverHop"].Name = "SeverHop"
Converted["_SeverHop"].Parent = Converted["_Shop Or Rejoin"]

Converted["_AntiGamepaused"].BackgroundColor3 = Color3.fromRGB(17.00000088661909, 17.00000088661909, 17.00000088661909)
Converted["_AntiGamepaused"].BackgroundTransparency = 0.699999988079071
Converted["_AntiGamepaused"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_AntiGamepaused"].BorderSizePixel = 0
Converted["_AntiGamepaused"].Position = UDim2.new(0, 0, 0.724590182, 0)
Converted["_AntiGamepaused"].Size = UDim2.new(1, 0, 0.158249155, 0)
Converted["_AntiGamepaused"].Name = "AntiGamepaused"
Converted["_AntiGamepaused"].Parent = Converted["_Main"]

Converted["_GamePaused"].Font = Enum.Font.GrenzeGotisch
Converted["_GamePaused"].Text = "Anti GamePaused"
Converted["_GamePaused"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_GamePaused"].TextScaled = true
Converted["_GamePaused"].TextSize = 14
Converted["_GamePaused"].TextWrapped = true
Converted["_GamePaused"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_GamePaused"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_GamePaused"].BackgroundTransparency = 1
Converted["_GamePaused"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_GamePaused"].BorderSizePixel = 0
Converted["_GamePaused"].Size = UDim2.new(1, 0, 1, 0)
Converted["_GamePaused"].Name = "GamePaused"
Converted["_GamePaused"].Parent = Converted["_AntiGamepaused"]

Converted["_Tools"].BackgroundColor3 = Color3.fromRGB(47.0000009983778, 47.0000009983778, 47.0000009983778)
Converted["_Tools"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Tools"].BorderSizePixel = 0
Converted["_Tools"].Position = UDim2.new(0, 0, 0.184491977, 0)
Converted["_Tools"].Size = UDim2.new(1, 0, 0.815508008, 0)
Converted["_Tools"].Visible = false
Converted["_Tools"].Name = "Tools"
Converted["_Tools"].Parent = Converted["_Main_Frame"]

Converted["_UICorner6"].Parent = Converted["_Tools"]

Converted["_Tool_Title"].Font = Enum.Font.FredokaOne
Converted["_Tool_Title"].Text = "Tools"
Converted["_Tool_Title"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Tool_Title"].TextScaled = true
Converted["_Tool_Title"].TextSize = 14
Converted["_Tool_Title"].TextWrapped = true
Converted["_Tool_Title"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Tool_Title"].BackgroundTransparency = 1
Converted["_Tool_Title"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Tool_Title"].BorderSizePixel = 0
Converted["_Tool_Title"].Position = UDim2.new(0.189944133, 0, 0, 0)
Converted["_Tool_Title"].Size = UDim2.new(0.600558639, 0, 0.0524590164, 0)
Converted["_Tool_Title"].Name = "Tool_Title"
Converted["_Tool_Title"].Parent = Converted["_Tools"]

Converted["_Water Slap"].BackgroundColor3 = Color3.fromRGB(62.00000390410423, 62.00000390410423, 62.00000390410423)
Converted["_Water Slap"].BackgroundTransparency = 0.699999988079071
Converted["_Water Slap"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Water Slap"].BorderSizePixel = 0
Converted["_Water Slap"].Position = UDim2.new(0, 0, 0.0885245875, 0)
Converted["_Water Slap"].Size = UDim2.new(1, 0, 0.101639345, 0)
Converted["_Water Slap"].Name = "Water Slap"
Converted["_Water Slap"].Parent = Converted["_Tools"]

Converted["_Title Water Slap"].Font = Enum.Font.GrenzeGotisch
Converted["_Title Water Slap"].Text = "Water Slap"
Converted["_Title Water Slap"].TextColor3 = Color3.fromRGB(0, 85.0000025331974, 255)
Converted["_Title Water Slap"].TextScaled = true
Converted["_Title Water Slap"].TextSize = 14
Converted["_Title Water Slap"].TextWrapped = true
Converted["_Title Water Slap"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Title Water Slap"].BackgroundColor3 = Color3.fromRGB(0, 170.0000050663948, 255)
Converted["_Title Water Slap"].BackgroundTransparency = 1
Converted["_Title Water Slap"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Title Water Slap"].BorderSizePixel = 0
Converted["_Title Water Slap"].Position = UDim2.new(0, 0, 0.107103981, 0)
Converted["_Title Water Slap"].Size = UDim2.new(0.494413406, 0, 0.90322578, 0)
Converted["_Title Water Slap"].Name = "Title Water Slap"
Converted["_Title Water Slap"].Parent = Converted["_Water Slap"]

Converted["_UICorner7"].Parent = Converted["_Title Water Slap"]

Converted["_GetWaterSlap"].Font = Enum.Font.GrenzeGotisch
Converted["_GetWaterSlap"].Text = "Get"
Converted["_GetWaterSlap"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_GetWaterSlap"].TextScaled = true
Converted["_GetWaterSlap"].TextSize = 14
Converted["_GetWaterSlap"].TextWrapped = true
Converted["_GetWaterSlap"].BackgroundColor3 = Color3.fromRGB(56.0000042617321, 56.0000042617321, 56.0000042617321)
Converted["_GetWaterSlap"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_GetWaterSlap"].BorderSizePixel = 0
Converted["_GetWaterSlap"].Position = UDim2.new(0.553072631, 0, 0, 0)
Converted["_GetWaterSlap"].Size = UDim2.new(0.446927339, 0, 1, 0)
Converted["_GetWaterSlap"].Name = "GetWaterSlap"
Converted["_GetWaterSlap"].Parent = Converted["_Water Slap"]

Converted["_UICorner8"].Parent = Converted["_GetWaterSlap"]

Converted["_GoldenSlap"].BackgroundColor3 = Color3.fromRGB(62.00000390410423, 62.00000390410423, 62.00000390410423)
Converted["_GoldenSlap"].BackgroundTransparency = 0.699999988079071
Converted["_GoldenSlap"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_GoldenSlap"].BorderSizePixel = 0
Converted["_GoldenSlap"].Position = UDim2.new(0, 0, 0.285245895, 0)
Converted["_GoldenSlap"].Size = UDim2.new(1, 0, 0.101639345, 0)
Converted["_GoldenSlap"].Name = "GoldenSlap"
Converted["_GoldenSlap"].Parent = Converted["_Tools"]

Converted["_GoldenSlapTitle"].Font = Enum.Font.GrenzeGotisch
Converted["_GoldenSlapTitle"].Text = "Golden Slap"
Converted["_GoldenSlapTitle"].TextColor3 = Color3.fromRGB(255, 255, 0)
Converted["_GoldenSlapTitle"].TextScaled = true
Converted["_GoldenSlapTitle"].TextSize = 14
Converted["_GoldenSlapTitle"].TextWrapped = true
Converted["_GoldenSlapTitle"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_GoldenSlapTitle"].BackgroundColor3 = Color3.fromRGB(0, 170.0000050663948, 255)
Converted["_GoldenSlapTitle"].BackgroundTransparency = 1
Converted["_GoldenSlapTitle"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_GoldenSlapTitle"].BorderSizePixel = 0
Converted["_GoldenSlapTitle"].Position = UDim2.new(0, 0, -0.021928357, 0)
Converted["_GoldenSlapTitle"].Size = UDim2.new(0.494413406, 0, 0.90322578, 0)
Converted["_GoldenSlapTitle"].Name = "GoldenSlapTitle"
Converted["_GoldenSlapTitle"].Parent = Converted["_GoldenSlap"]

Converted["_UICorner9"].Parent = Converted["_GoldenSlapTitle"]

Converted["_GetGoldenSlap"].Font = Enum.Font.GrenzeGotisch
Converted["_GetGoldenSlap"].Text = "Get"
Converted["_GetGoldenSlap"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_GetGoldenSlap"].TextScaled = true
Converted["_GetGoldenSlap"].TextSize = 14
Converted["_GetGoldenSlap"].TextWrapped = true
Converted["_GetGoldenSlap"].BackgroundColor3 = Color3.fromRGB(56.0000042617321, 56.0000042617321, 56.0000042617321)
Converted["_GetGoldenSlap"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_GetGoldenSlap"].BorderSizePixel = 0
Converted["_GetGoldenSlap"].Position = UDim2.new(0.553072631, 0, 0, 0)
Converted["_GetGoldenSlap"].Size = UDim2.new(0.446927339, 0, 1, 0)
Converted["_GetGoldenSlap"].Name = "GetGoldenSlap"
Converted["_GetGoldenSlap"].Parent = Converted["_GoldenSlap"]

Converted["_UICorner10"].Parent = Converted["_GetGoldenSlap"]

Converted["_Strong Slap"].BackgroundColor3 = Color3.fromRGB(62.00000390410423, 62.00000390410423, 62.00000390410423)
Converted["_Strong Slap"].BackgroundTransparency = 0.699999988079071
Converted["_Strong Slap"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Strong Slap"].BorderSizePixel = 0
Converted["_Strong Slap"].Position = UDim2.new(0, 0, 0.478688538, 0)
Converted["_Strong Slap"].Size = UDim2.new(1, 0, 0.101639345, 0)
Converted["_Strong Slap"].Name = "Strong Slap"
Converted["_Strong Slap"].Parent = Converted["_Tools"]

Converted["_TitleStrongSlap"].Font = Enum.Font.GrenzeGotisch
Converted["_TitleStrongSlap"].Text = "Gaint Slap"
Converted["_TitleStrongSlap"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TitleStrongSlap"].TextScaled = true
Converted["_TitleStrongSlap"].TextSize = 14
Converted["_TitleStrongSlap"].TextWrapped = true
Converted["_TitleStrongSlap"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_TitleStrongSlap"].BackgroundColor3 = Color3.fromRGB(0, 170.0000050663948, 255)
Converted["_TitleStrongSlap"].BackgroundTransparency = 1
Converted["_TitleStrongSlap"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TitleStrongSlap"].BorderSizePixel = 0
Converted["_TitleStrongSlap"].Position = UDim2.new(0, 0, -0.021928357, 0)
Converted["_TitleStrongSlap"].Size = UDim2.new(0.424580991, 0, 0.90322578, 0)
Converted["_TitleStrongSlap"].Name = "TitleStrongSlap"
Converted["_TitleStrongSlap"].Parent = Converted["_Strong Slap"]

Converted["_UICorner11"].Parent = Converted["_TitleStrongSlap"]

Converted["_GetStrongSlap"].Font = Enum.Font.GrenzeGotisch
Converted["_GetStrongSlap"].Text = "Get"
Converted["_GetStrongSlap"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_GetStrongSlap"].TextScaled = true
Converted["_GetStrongSlap"].TextSize = 14
Converted["_GetStrongSlap"].TextWrapped = true
Converted["_GetStrongSlap"].BackgroundColor3 = Color3.fromRGB(56.0000042617321, 56.0000042617321, 56.0000042617321)
Converted["_GetStrongSlap"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_GetStrongSlap"].BorderSizePixel = 0
Converted["_GetStrongSlap"].Position = UDim2.new(0.553072631, 0, 0, 0)
Converted["_GetStrongSlap"].Size = UDim2.new(0.446927339, 0, 1, 0)
Converted["_GetStrongSlap"].Name = "GetStrongSlap"
Converted["_GetStrongSlap"].Parent = Converted["_Strong Slap"]

Converted["_UICorner12"].Parent = Converted["_GetStrongSlap"]

Converted["_Rainbow Slap"].BackgroundColor3 = Color3.fromRGB(62.00000390410423, 62.00000390410423, 62.00000390410423)
Converted["_Rainbow Slap"].BackgroundTransparency = 0.699999988079071
Converted["_Rainbow Slap"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Rainbow Slap"].BorderSizePixel = 0
Converted["_Rainbow Slap"].Position = UDim2.new(0, 0, 0.662295103, 0)
Converted["_Rainbow Slap"].Size = UDim2.new(1, 0, 0.101639345, 0)
Converted["_Rainbow Slap"].Name = "Rainbow Slap"
Converted["_Rainbow Slap"].Parent = Converted["_Tools"]

Converted["_Rainbow title"].Font = Enum.Font.GrenzeGotisch
Converted["_Rainbow title"].Text = "RainBow Slap"
Converted["_Rainbow title"].TextColor3 = Color3.fromRGB(248.00001561641693, 38.0000015348196, 255)
Converted["_Rainbow title"].TextScaled = true
Converted["_Rainbow title"].TextSize = 14
Converted["_Rainbow title"].TextWrapped = true
Converted["_Rainbow title"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Rainbow title"].BackgroundColor3 = Color3.fromRGB(0, 170.0000050663948, 255)
Converted["_Rainbow title"].BackgroundTransparency = 1
Converted["_Rainbow title"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Rainbow title"].BorderSizePixel = 0
Converted["_Rainbow title"].Position = UDim2.new(0, 0, -0.021928357, 0)
Converted["_Rainbow title"].Size = UDim2.new(0.424580991, 0, 0.90322578, 0)
Converted["_Rainbow title"].Name = "Rainbow title"
Converted["_Rainbow title"].Parent = Converted["_Rainbow Slap"]

Converted["_UICorner13"].Parent = Converted["_Rainbow title"]

Converted["_Get RainbowSlap"].Font = Enum.Font.GrenzeGotisch
Converted["_Get RainbowSlap"].Text = "Get"
Converted["_Get RainbowSlap"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Get RainbowSlap"].TextScaled = true
Converted["_Get RainbowSlap"].TextSize = 14
Converted["_Get RainbowSlap"].TextWrapped = true
Converted["_Get RainbowSlap"].BackgroundColor3 = Color3.fromRGB(56.0000042617321, 56.0000042617321, 56.0000042617321)
Converted["_Get RainbowSlap"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Get RainbowSlap"].BorderSizePixel = 0
Converted["_Get RainbowSlap"].Position = UDim2.new(0.553072631, 0, 0, 0)
Converted["_Get RainbowSlap"].Size = UDim2.new(0.446927339, 0, 1, 0)
Converted["_Get RainbowSlap"].Name = "Get RainbowSlap"
Converted["_Get RainbowSlap"].Parent = Converted["_Rainbow Slap"]

Converted["_UICorner14"].Parent = Converted["_Get RainbowSlap"]

Converted["_Misc"].BackgroundColor3 = Color3.fromRGB(47.0000009983778, 47.0000009983778, 47.0000009983778)
Converted["_Misc"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Misc"].BorderSizePixel = 0
Converted["_Misc"].Position = UDim2.new(0, 0, 0.184491977, 0)
Converted["_Misc"].Size = UDim2.new(1, 0, 0.815508008, 0)
Converted["_Misc"].Visible = false
Converted["_Misc"].Name = "Misc"
Converted["_Misc"].Parent = Converted["_Main_Frame"]

Converted["_UICorner15"].Parent = Converted["_Misc"]

Converted["_Misc Title"].Font = Enum.Font.FredokaOne
Converted["_Misc Title"].Text = "Misc"
Converted["_Misc Title"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Misc Title"].TextScaled = true
Converted["_Misc Title"].TextSize = 14
Converted["_Misc Title"].TextWrapped = true
Converted["_Misc Title"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Misc Title"].BackgroundTransparency = 1
Converted["_Misc Title"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Misc Title"].BorderSizePixel = 0
Converted["_Misc Title"].Position = UDim2.new(0.195530728, 0, 0, 0)
Converted["_Misc Title"].Size = UDim2.new(0.558659196, 0, 0.0524590164, 0)
Converted["_Misc Title"].Name = "Misc Title"
Converted["_Misc Title"].Parent = Converted["_Misc"]

Converted["_Walkspeed"].BackgroundColor3 = Color3.fromRGB(13.00000112503767, 13.00000112503767, 13.00000112503767)
Converted["_Walkspeed"].BackgroundTransparency = 0.800000011920929
Converted["_Walkspeed"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Walkspeed"].BorderSizePixel = 0
Converted["_Walkspeed"].Position = UDim2.new(0, 0, 0.0754098371, 0)
Converted["_Walkspeed"].Size = UDim2.new(1, 0, 0.186885253, 0)
Converted["_Walkspeed"].Name = "Walkspeed"
Converted["_Walkspeed"].Parent = Converted["_Misc"]

Converted["_Walkspeed Title"].Font = Enum.Font.GrenzeGotisch
Converted["_Walkspeed Title"].Text = "Walkspeed"
Converted["_Walkspeed Title"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Walkspeed Title"].TextScaled = true
Converted["_Walkspeed Title"].TextSize = 14
Converted["_Walkspeed Title"].TextWrapped = true
Converted["_Walkspeed Title"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Walkspeed Title"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Walkspeed Title"].BackgroundTransparency = 1
Converted["_Walkspeed Title"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Walkspeed Title"].BorderSizePixel = 0
Converted["_Walkspeed Title"].Position = UDim2.new(0, 0, 0.157894731, 0)
Converted["_Walkspeed Title"].Size = UDim2.new(0.340782136, 0, 0.684210479, 0)
Converted["_Walkspeed Title"].Name = "Walkspeed Title"
Converted["_Walkspeed Title"].Parent = Converted["_Walkspeed"]

Converted["_Walkspeed Box"].Font = Enum.Font.SourceSans
Converted["_Walkspeed Box"].PlaceholderText = "Enter Speed Amount"
Converted["_Walkspeed Box"].Text = ""
Converted["_Walkspeed Box"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Walkspeed Box"].TextSize = 14
Converted["_Walkspeed Box"].BackgroundColor3 = Color3.fromRGB(45.00000111758709, 45.00000111758709, 45.00000111758709)
Converted["_Walkspeed Box"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Walkspeed Box"].BorderSizePixel = 0
Converted["_Walkspeed Box"].Position = UDim2.new(0.377094984, 0, 0.19298245, 0)
Converted["_Walkspeed Box"].Size = UDim2.new(0.622905016, 0, 0.719298184, 0)
Converted["_Walkspeed Box"].Name = "Walkspeed Box"
Converted["_Walkspeed Box"].Parent = Converted["_Walkspeed"]

Converted["_UICorner16"].Parent = Converted["_Walkspeed Box"]

Converted["_Reset"].BackgroundColor3 = Color3.fromRGB(13.00000112503767, 13.00000112503767, 13.00000112503767)
Converted["_Reset"].BackgroundTransparency = 0.800000011920929
Converted["_Reset"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Reset"].BorderSizePixel = 0
Converted["_Reset"].Position = UDim2.new(0, 0, 0.291803271, 0)
Converted["_Reset"].Size = UDim2.new(1, 0, 0.186885253, 0)
Converted["_Reset"].Name = "Reset"
Converted["_Reset"].Parent = Converted["_Misc"]

Converted["_Rest Title"].Font = Enum.Font.GrenzeGotisch
Converted["_Rest Title"].Text = "Reset Character"
Converted["_Rest Title"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Rest Title"].TextScaled = true
Converted["_Rest Title"].TextSize = 14
Converted["_Rest Title"].TextWrapped = true
Converted["_Rest Title"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Rest Title"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Rest Title"].BackgroundTransparency = 1
Converted["_Rest Title"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Rest Title"].BorderSizePixel = 0
Converted["_Rest Title"].Position = UDim2.new(0, 0, 0.157894731, 0)
Converted["_Rest Title"].Size = UDim2.new(0.784916222, 0, 0.684210479, 0)
Converted["_Rest Title"].Name = "Rest Title"
Converted["_Rest Title"].Parent = Converted["_Reset"]

Converted["_Reset Char"].Font = Enum.Font.GrenzeGotisch
Converted["_Reset Char"].Text = ""
Converted["_Reset Char"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Reset Char"].TextScaled = true
Converted["_Reset Char"].TextSize = 14
Converted["_Reset Char"].TextWrapped = true
Converted["_Reset Char"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Reset Char"].BackgroundTransparency = 1
Converted["_Reset Char"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Reset Char"].BorderSizePixel = 0
Converted["_Reset Char"].Position = UDim2.new(0, 0, 0.0526315793, 0)
Converted["_Reset Char"].Size = UDim2.new(0.997206688, 0, 0.877192914, 0)
Converted["_Reset Char"].Name = "Reset Char"
Converted["_Reset Char"].Parent = Converted["_Reset"]

Converted["_InfitJump"].BackgroundColor3 = Color3.fromRGB(13.00000112503767, 13.00000112503767, 13.00000112503767)
Converted["_InfitJump"].BackgroundTransparency = 0.800000011920929
Converted["_InfitJump"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_InfitJump"].BorderSizePixel = 0
Converted["_InfitJump"].Position = UDim2.new(0, 0, 0.767213106, 0)
Converted["_InfitJump"].Size = UDim2.new(1, 0, 0.186885253, 0)
Converted["_InfitJump"].Name = "InfitJump"
Converted["_InfitJump"].Parent = Converted["_Misc"]

Converted["_InfiteJump"].Font = Enum.Font.GrenzeGotisch
Converted["_InfiteJump"].Text = "Infinte Jump"
Converted["_InfiteJump"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_InfiteJump"].TextScaled = true
Converted["_InfiteJump"].TextSize = 14
Converted["_InfiteJump"].TextWrapped = true
Converted["_InfiteJump"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_InfiteJump"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_InfiteJump"].BackgroundTransparency = 1
Converted["_InfiteJump"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_InfiteJump"].BorderSizePixel = 0
Converted["_InfiteJump"].Position = UDim2.new(0, 0, 0.157894731, 0)
Converted["_InfiteJump"].Size = UDim2.new(0.472067028, 0, 0.684210479, 0)
Converted["_InfiteJump"].Name = "InfiteJump"
Converted["_InfiteJump"].Parent = Converted["_InfitJump"]

Converted["_Enable InfiteJump"].Font = Enum.Font.SourceSans
Converted["_Enable InfiteJump"].Text = ""
Converted["_Enable InfiteJump"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Enable InfiteJump"].TextSize = 14
Converted["_Enable InfiteJump"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Enable InfiteJump"].BackgroundTransparency = 1
Converted["_Enable InfiteJump"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Enable InfiteJump"].BorderSizePixel = 0
Converted["_Enable InfiteJump"].Size = UDim2.new(1, 0, 1, 0)
Converted["_Enable InfiteJump"].Name = "Enable InfiteJump"
Converted["_Enable InfiteJump"].Parent = Converted["_InfitJump"]

Converted["_Jump Height"].BackgroundColor3 = Color3.fromRGB(13.00000112503767, 13.00000112503767, 13.00000112503767)
Converted["_Jump Height"].BackgroundTransparency = 0.800000011920929
Converted["_Jump Height"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Jump Height"].BorderSizePixel = 0
Converted["_Jump Height"].Position = UDim2.new(0, 0, 0.498360664, 0)
Converted["_Jump Height"].Size = UDim2.new(1, 0, 0.186885253, 0)
Converted["_Jump Height"].Name = "Jump Height"
Converted["_Jump Height"].Parent = Converted["_Misc"]

Converted["_JumpHeight_ttile"].Font = Enum.Font.GrenzeGotisch
Converted["_JumpHeight_ttile"].Text = "Jump Height"
Converted["_JumpHeight_ttile"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_JumpHeight_ttile"].TextScaled = true
Converted["_JumpHeight_ttile"].TextSize = 14
Converted["_JumpHeight_ttile"].TextWrapped = true
Converted["_JumpHeight_ttile"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_JumpHeight_ttile"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_JumpHeight_ttile"].BackgroundTransparency = 1
Converted["_JumpHeight_ttile"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_JumpHeight_ttile"].BorderSizePixel = 0
Converted["_JumpHeight_ttile"].Position = UDim2.new(0, 0, 0.157894731, 0)
Converted["_JumpHeight_ttile"].Size = UDim2.new(0.340782136, 0, 0.684210479, 0)
Converted["_JumpHeight_ttile"].Name = "JumpHeight_ttile"
Converted["_JumpHeight_ttile"].Parent = Converted["_Jump Height"]

Converted["_JumpAmountextbox"].Font = Enum.Font.SourceSans
Converted["_JumpAmountextbox"].PlaceholderText = "Enter Jump Amount"
Converted["_JumpAmountextbox"].Text = ""
Converted["_JumpAmountextbox"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_JumpAmountextbox"].TextSize = 14
Converted["_JumpAmountextbox"].BackgroundColor3 = Color3.fromRGB(45.00000111758709, 45.00000111758709, 45.00000111758709)
Converted["_JumpAmountextbox"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_JumpAmountextbox"].BorderSizePixel = 0
Converted["_JumpAmountextbox"].Position = UDim2.new(0.377094984, 0, 0.19298245, 0)
Converted["_JumpAmountextbox"].Size = UDim2.new(0.622905016, 0, 0.719298184, 0)
Converted["_JumpAmountextbox"].Name = "JumpAmountextbox"
Converted["_JumpAmountextbox"].Parent = Converted["_Jump Height"]

Converted["_UICorner17"].Parent = Converted["_JumpAmountextbox"]

Converted["_Title Frame"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title Frame"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Title Frame"].BorderSizePixel = 0
Converted["_Title Frame"].Size = UDim2.new(1, 0, 0.085561499, 0)
Converted["_Title Frame"].Name = "Title Frame"
Converted["_Title Frame"].Parent = Converted["_Main_Frame"]

Converted["_Ttilte Text"].Font = Enum.Font.GrenzeGotisch
Converted["_Ttilte Text"].Text = " A nasty Project"
Converted["_Ttilte Text"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Ttilte Text"].TextScaled = true
Converted["_Ttilte Text"].TextSize = 14
Converted["_Ttilte Text"].TextWrapped = true
Converted["_Ttilte Text"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Ttilte Text"].BackgroundTransparency = 1
Converted["_Ttilte Text"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Ttilte Text"].BorderSizePixel = 0
Converted["_Ttilte Text"].Position = UDim2.new(0, 0, -0.0280747414, 0)
Converted["_Ttilte Text"].Size = UDim2.new(1, 0, 1, 0)
Converted["_Ttilte Text"].Name = "Ttilte Text"
Converted["_Ttilte Text"].Parent = Converted["_Title Frame"]

Converted["_UIGradient_Title"].Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(22.000000588595867, 22.000000588595867, 22.000000588595867)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(81.00000277161598, 81.00000277161598, 81.00000277161598))
}
Converted["_UIGradient_Title"].Name = "UIGradient_Title"
Converted["_UIGradient_Title"].Parent = Converted["_Title Frame"]

Converted["_UICorner Ttitle"].Name = "UICorner Ttitle"
Converted["_UICorner Ttitle"].Parent = Converted["_Title Frame"]

Converted["_Other"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Other"].BackgroundTransparency = 1
Converted["_Other"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Other"].BorderSizePixel = 0
Converted["_Other"].Position = UDim2.new(0, 0, 0.184491977, 0)
Converted["_Other"].Size = UDim2.new(1, 0, 0.815508008, 0)
Converted["_Other"].Visible = false
Converted["_Other"].Name = "Other"
Converted["_Other"].Parent = Converted["_Main_Frame"]

Converted["_Coming_Soon"].Font = Enum.Font.FredokaOne
Converted["_Coming_Soon"].Text = "More Coming Soon......."
Converted["_Coming_Soon"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Coming_Soon"].TextScaled = true
Converted["_Coming_Soon"].TextSize = 14
Converted["_Coming_Soon"].TextWrapped = true
Converted["_Coming_Soon"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Coming_Soon"].BackgroundTransparency = 1
Converted["_Coming_Soon"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Coming_Soon"].BorderSizePixel = 0
Converted["_Coming_Soon"].Position = UDim2.new(0, 0, 0.27868852, 0)
Converted["_Coming_Soon"].Size = UDim2.new(1, 0, 0.163934425, 0)
Converted["_Coming_Soon"].Name = "Coming_Soon"
Converted["_Coming_Soon"].Parent = Converted["_Other"]

Converted["_UIAspectRatioConstraint1"].AspectRatio = 0.9572192430496216
Converted["_UIAspectRatioConstraint1"].Parent = Converted["_Main_Frame"]

Converted["_Drag_Main"].DragUDim2 = UDim2.new(0, -21, 0, 4)
Converted["_Drag_Main"].Name = "Drag_Main"
Converted["_Drag_Main"].Parent = Converted["_Main_Frame"]

Converted["_UIAspectRatioConstraint2"].AspectRatio = 1.6387959718704224
Converted["_UIAspectRatioConstraint2"].Parent = Converted["_Nasty_Gui"]


---Functios
Converted["_Open/Closebtn"].MouseButton1Click:Connect(function()
	Converted["_Main_Frame"].Visible = not Converted["_Main_Frame"].Visible
end)


Converted["_Enable Main Frame"].MouseButton1Click:Connect(function()
	Converted["_Main"].Visible = true
	Converted["_Tools"].Visible = false
	Converted["_Other"].Visible = false
	Converted["_Misc"].Visible = false
end)
Converted["_Enable Tool Frame"].MouseButton1Click:Connect(function()
	Converted["_Main"].Visible = false
	Converted["_Tools"].Visible = true
	Converted["_Other"].Visible = false
	Converted["_Misc"].Visible = false
end)
Converted["_Enable Misc Frame"].MouseButton1Click:Connect(function()
	Converted["_Main"].Visible = false
	Converted["_Tools"].Visible = false
	Converted["_Other"].Visible = false
	Converted["_Misc"].Visible = true
end)
Converted["_Enable Other Frame"].MouseButton1Click:Connect(function()
	Converted["_Main"].Visible = false
	Converted["_Tools"].Visible = false
	Converted["_Other"].Visible = true
	Converted["_Misc"].Visible = false
end)


local function GetTool(ToolName)
	
	if ToolName == "Slap_Water" then
		local args = {
			buffer.fromstring("\003\t\000SlapWater")
		}
		game:GetService("ReplicatedStorage"):WaitForChild("ByteNetReliable"):FireServer(unpack(args))
		
	elseif ToolName == "GoldenSlap" then
		
		local args = {
			buffer.fromstring("\003\n\000SlapGolden")
		}
		game:GetService("ReplicatedStorage"):WaitForChild("ByteNetReliable"):FireServer(unpack(args))
		
	elseif ToolName == "Huge_Slap" then
		if Amendies.Huge_Slap and Amendies.Huge_Slap ~= nil then
			local Clt = Amendies.Huge_Slap:Clone()
			Clt.Parent = game.Players.LocalPlayer.Backpack
			local HugeConnection

			if not HugeConnection then
				HugeConnection = Player.CharacterAdded:Connect(function()
					if Amendies.Huge_Slap then
						local Clt = Amendies.Huge_Slap:Clone()
						Clt.Parent = Player.Backpack
					end
				end)
			end

		end
	
	elseif ToolName == "Rainbow_Slap" then
		if Amendies.RainbowSlap and Amendies.RainbowSlap ~= nil then
			local Clt = Amendies.RainbowSlap:Clone()
			Clt.Parent = game.Players.LocalPlayer.Backpack
			local HugeConnection

			if not HugeConnection then
				HugeConnection = Player.CharacterAdded:Connect(function()
					if Amendies.RainbowSlap then
						local Clt = Amendies.RainbowSlap:Clone()
						Clt.Parent = Player.Backpack
					end
				end)
			end

		end
	
	end
end

local function SetState(state:string ,Amount:number)
	if state =="Walkspeed" then
		Amount = tonumber(Amount)
		Humanoid.WalkSpeed = Amount
	elseif state == "Jump Height" then
		Amount = tonumber(Amount)
		Humanoid.JumpHeight = Amount
		Humanoid.JumpPower = Amount

	elseif state == "INF" then

		Amendies.Inf = not Amendies.Inf


		UserInputService.JumpRequest:Connect(function()
			if Amendies.Inf == true then
				if Humanoid then Humanoid:ChangeState("Jumping") end
			end
		end)

	elseif state == "Reset_Char" then
		Player:LoadCharacter()
	end
end


local function Noclip()
	Amendies.Noclip = not Amendies.Noclip
	
	if Character then
		for _,p in pairs(Character:GetDescendants()) do
			if Amendies.Noclip == true then
				if p:IsA("BasePart") then p.CanCollide = false end
			else
				if p:IsA("BasePart") then p.CanCollide = true end
			end

		end
	end
end


local function Rejoin()
	pcall(function()
		TeleportService:Teleport(game.PlaceId, Player)
	end)
end

-- 1. Define functions FIRST
local function HugPlayer(Victim)
	local player = game.Players.LocalPlayer
	local character = player.Character
	if not character or not Victim.Character then return end

	local Hrp = character:FindFirstChild("HumanoidRootPart")
	local Victim_Hrp = Victim.Character:FindFirstChild("HumanoidRootPart")

	if Victim_Hrp and Hrp then
		print("Executing Hug on:", Victim.Name)
		local Oldpos = Hrp.CFrame -- Use CFrame for better reliability

		-- Teleport to victim
		Hrp.CFrame = Victim_Hrp.CFrame

		-- ByteNet Packet
		local packet = "\028\004\000Hug1\r\000" .. Victim.Name
		local args = { buffer.fromstring(packet) }

		game:GetService("ReplicatedStorage")
			:WaitForChild("ByteNetReliable")
			:FireServer(unpack(args))

		-- Small delay helps prevent rubber-banding
		task.wait(0.1) 
		Hrp.CFrame = Oldpos
	end
end



---tool
Converted["_GetWaterSlap"].MouseButton1Click:Connect(function()
	GetTool("Slap_Water")
end)
Converted["_GetGoldenSlap"].MouseButton1Click:Connect(function()
	GetTool("GoldenSlap")
end)
Converted["_GetStrongSlap"].MouseButton1Click:Connect(function()
	GetTool("Huge_Slap")
end)
Converted["_Get RainbowSlap"].MouseButton1Click:Connect(function()
	GetTool("Rainbow_Slap")
end)


 -------Misc
Converted["_Walkspeed Box"].FocusLost:Connect(function()
	SetState("Walkspeed", Converted["_Walkspeed Box"].Text)
end)
Converted["_JumpAmountextbox"].FocusLost:Connect(function()
	SetState("Jump Height", Converted["_JumpAmountextbox"].Text)
end)
Converted["_Enable InfiteJump"].MouseButton1Click:Connect(function()
	SetState("INF", nil)
end)
Converted["_Reset Char"].MouseButton1Click:Connect(function()
	if Player.Character and Player.Character:FindFirstChildOfClass("Humanoid") then
		Player.Character:FindFirstChildOfClass("Humanoid").Health = 0
	end
end)


---Main
Converted["_Noclip"].MouseButton1Click:Connect(Noclip)
Converted["_Rj"].MouseButton1Click:Connect(Rejoin)
Converted["_SeverHop"].MouseButton1Click:Connect(Rejoin)


Converted["_Get_Player"].MouseButton1Click:Connect(function()
	print("Button Clicked!") -- Debug step 1

	local input = Converted["_EnterPlayerName"].Text
	print("Searching for:", input)

	if input == "" or #input < 2 then 
		warn("Please type at least 2 letters of a name!")
		return 
	end
	
	local Victim = nil
	for _, p in pairs(game.Players:GetPlayers()) do
		if string.lower(p.Name):sub(1, #input) == string.lower(input) then
			Victim = p
			break
		end
	end

	if Victim then
		print("Target Found:", Victim.Name)
		HugPlayer(Victim)
	else
		warn("No player found matching: " .. input)
	end
end)

Converted["_GamePaused"].MouseButton1Click:Connect(function()
	print("Attempting to bypass pause...")

	local success, err = pcall(function()
		-- This will almost always fail in a standard LocalScript
		game:GetService("CoreGui").RobloxGui["CoreScripts/NetworkPause"]:Destroy()
	end)

	if success then
		print("Successfully removed pause UI.")
	else
		warn("Permission Denied: You cannot delete CoreGui elements from a LocalScript.")
		print("Technical Error:", err)
	end
end)
