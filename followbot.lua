local key = "u" -- the toxic key
_G.Toxic = false

local words = 
	{
		"⚠️ Follow Bot ⚠️ (Beta),
		"Type !stop to stop following.",
		"Type !target to follow another target.",
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
