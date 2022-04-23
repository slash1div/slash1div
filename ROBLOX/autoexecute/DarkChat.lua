repeat game:GetService("RunService").RenderStepped:Wait() until game:IsLoaded()
local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local Chat = game:GetService("Chat")
local ChatSettings = require(Chat:WaitForChild("ClientChatModules"):WaitForChild("ChatSettings"))
local ChatGui = Player:WaitForChild("PlayerGui"):WaitForChild("BubbleChat")
ChatGui.DescendantAdded:Connect(function(ChatElement) -- OnBubbleChatDraw
    if ChatElement.Name == "ChatBubble" then
        ChatElement.ImageColor3 = Color3.fromRGB(30, 30, 30)
    elseif ChatElement.Name == "ChatBubbleTail" then
        ChatElement.ImageColor3 = Color3.fromRGB(30, 30, 30)
    elseif ChatElement.Name == "BubbleText" then
        ChatElement.TextColor3 = Color3.fromRGB(255, 255, 255)
    elseif ChatElement.Name == "SmallTalkBubble" then
        ChatElement.ImageColor3 = Color3.fromRGB(30, 30, 30)
    end
end)