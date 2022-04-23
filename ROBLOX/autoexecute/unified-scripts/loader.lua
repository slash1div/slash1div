--[[
	Some scripts are optional. They're listed below if they are.
    This file is supposed to be put into your autoexecute folder.
    If this is in your scripts folder, make sure to move it there.
    For a full list of scripts, check here: https://github.com/slash1div/slash1div/tree/main/ROBLOX/autoexecute/unified-scripts
				-- slashdiv
--]]

_G.sendinfotext = true -- Puts info text into chat when you join.
_G.darkchat = true -- Makes bubble chat black.
_G.unfocusoptimizer = true -- Reduces CPU and GPU usage when Roblox is unfocused. It also leaves a white screen when doing so.
_G.useadminscript = false -- Executes Infinite Yeild. Would use CMDX but it's pretty dead.
_G.graphicsenhancer = false -- Enhances graphics w/ lag. Recommended to be set as false.
_G.fpsbooster = false -- Gives more FPS by decreasing graphics HEAVILY. Recommended to be set as false.

-------

if syn then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/slash1div/slash1div/main/ROBLOX/autoexecute/unified-scripts/source.lua", true))()
else
    game.Players.LocalPlayer:Kick("Not using S^X!")
end
