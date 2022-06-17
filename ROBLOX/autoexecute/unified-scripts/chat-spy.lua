-- Made by xaxa420, Fixed by me (slash1div)
--    https://v3rmillion.net/showthread.php?tid=1074147

local Players, SGui = game:GetService("Players"), game:GetService("StarterGui");
local Client, NColor3, UD, UD2 = Players.LocalPlayer, Color3.new, UDim.new, UDim2.new

getgenv().ShowHiddenMsg = function(T)
   SGui:SetCore("ChatMakeSystemMessage", {
       Text = T;
       Color = Color3.new(.5,1,0); -- https://www.rapidtables.com/web/color/RGB_Color.html if you want to change the color of the hidden msg's
       Font = Enum.Font.SourceSansItalic;
       TextSize = 16;
   })
end
getgenv().Spy = function(Target)
   Target.Chatted:Connect(function(Msg)
       if string.sub(Msg, 1,2) == "/e" or string.sub(Msg,1,2) == "/w"  or string.sub(Msg,1,2) == "/t" or string.sub(Msg,1,8) == "/console" or string.sub(Msg,1,5) == "/team" or string.sub(Msg,1,8) == "/whisper" then
           ShowHiddenMsg("(CSPY) ".."["..tostring(Target).."]: "..Msg)
       end
   end)
end

local GP = Players:GetPlayers()
for i = 1, #GP do
   local Plr = GP[i]
   if tostring(Plr) then
       Spy(Plr)
   end
end
Players.PlayerAdded:Connect(function(P)
   if tostring(P) then
       Spy(P)
   end
end)
