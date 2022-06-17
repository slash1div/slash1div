--[[
    Dark Chat Bubbles
    Idk who made it, but it works good.
--]]

local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")
local BubbleChatUI = PlayerGui:WaitForChild("BubbleChat")
BubbleChatUI.DescendantAdded:Connect(function(Descendant)
if Descendant:IsA("ImageLabel") then
Descendant.ImageColor3 = Color3.fromRGB(59, 59, 59)
elseif Descendant:IsA("TextLabel") then
Descendant.TextColor3 = Color3.new(1,1,1)
end
end)
