local key = "y" -- the toxic key
_G.Toxic = false

local words = 
	{
		"NO WAY IM GONNA GET BANNED1!!!!!11!1 😥😥😥😥😥",
		"OMG SO SCARED!1!1!11!",
		"'clipped' 🤓",
		"😱😱😱😱😱😱😱",
		"im shivering 💀",
		"LOL KEEP CRYING",
		"cope",
		"no way im gonna cry now",
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
