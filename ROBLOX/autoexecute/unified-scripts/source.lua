-- DO NOT EXECUTE THIS FILE ALONE. INSTEAD, EXECUTE THE LOADER!!!!
-- https://raw.githubusercontent.com/slash1div/slash1div/main/ROBLOX/autoexecute/unified-loader.lua
-- DO NOT EXECUTE THIS FILE ALONE. INSTEAD, EXECUTE THE LOADER!!!!
-- https://raw.githubusercontent.com/slash1div/slash1div/main/ROBLOX/autoexecute/unified-loader.lua
-- DO NOT EXECUTE THIS FILE ALONE. INSTEAD, EXECUTE THE LOADER!!!!
-- https://raw.githubusercontent.com/slash1div/slash1div/main/ROBLOX/autoexecute/unified-loader.lua
-- DO NOT EXECUTE THIS FILE ALONE. INSTEAD, EXECUTE THE LOADER!!!!
-- https://raw.githubusercontent.com/slash1div/slash1div/main/ROBLOX/autoexecute/unified-loader.lua
-- DO NOT EXECUTE THIS FILE ALONE. INSTEAD, EXECUTE THE LOADER!!!!
-- https://raw.githubusercontent.com/slash1div/slash1div/main/ROBLOX/autoexecute/unified-loader.lua
-- DO NOT EXECUTE THIS FILE ALONE. INSTEAD, EXECUTE THE LOADER!!!!
-- https://raw.githubusercontent.com/slash1div/slash1div/main/ROBLOX/autoexecute/unified-loader.lua
-- DO NOT EXECUTE THIS FILE ALONE. INSTEAD, EXECUTE THE LOADER!!!!
-- https://raw.githubusercontent.com/slash1div/slash1div/main/ROBLOX/autoexecute/unified-loader.lua
-- DO NOT EXECUTE THIS FILE ALONE. INSTEAD, EXECUTE THE LOADER!!!!

-- Chat text properties.
local mainloaderprop = {
    Color = Color3.new(1,1,0);
    Font = Enum.Font.SourceSansItalic;
    TextSize = 16;
}

-- Sending the information text.
if _G.sendinfotext == true then
	mainloaderprop.Text = "[Translator] To send messages in a language, say > followed by the target language/language code, e.g.: >ru or >russian. To disable (go back to original language), say >d."
	game:GetService('StarterGui'):SetCore("ChatMakeSystemMessage", mainloaderprop)
	mainloaderprop.Text = " "
	game:GetService('StarterGui'):SetCore("ChatMakeSystemMessage", mainloaderprop)
	mainloaderprop.Text = "[ChatEmojis] To select emojis, type : then select emojis with the up and down arrow keys. To send the emoji, hit right shift."
	game:GetService('StarterGui'):SetCore("ChatMakeSystemMessage", mainloaderprop)
end


-- Loading the scripts
if _G.darkchat == true then
	loadstring(game:HttpGet("https://raw.githubusercontent.com/slash1div/slash1div/main/ROBLOX/autoexecute/unified-scripts/DarkChat.lua", true))()
end

if _G.unfocusoptimizer == true then
	loadstring(game:HttpGet("https://raw.githubusercontent.com/slash1div/slash1div/main/ROBLOX/autoexecute/unified-scripts/UnfocusOptimizer.lua", true))()
end

if _G.useadminscript == true then
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end

if _G.graphicsenhancer == true then
    loadstring(game:HttpGet('https://raw.githubusercontent.com/slash1div/slash1div/main/ROBLOX/autoexecute/unified-scripts/GraphicsEnhancer.lua'))()
end

if _G.fpsbooster == true then
    loadstring(game:HttpGet('https://raw.githubusercontent.com/slash1div/slash1div/main/ROBLOX/autoexecute/unified-scripts/FPSBooster.lua'))()
end

loadstring(game:HttpGet("https://raw.githubusercontent.com/slash1div/slash1div/main/ROBLOX/autoexecute/unified-scripts/AutoTranslate.lua", true))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/slash1div/slash1div/main/ROBLOX/autoexecute/unified-scripts/DiscordEmojis.lua", true))()
