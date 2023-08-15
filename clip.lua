local key = "=" -- the toxic key
_G.Toxic = false

local words = 
	{
		"omg so scared😱😱😱",
  }

local player = game:GetService("Players").LocalPlayer
local mouse = player:GetMouse()

local event = game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest")

mouse.KeyDown:Connect(function(keybind)
	if _G.Toxic == false then
		if keybind == key then
			event:FireServer(words[math.random(#words)], "All")
		end
	end
end)
