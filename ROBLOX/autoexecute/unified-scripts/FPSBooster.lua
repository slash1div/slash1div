--[[
  Made by w a e
  Decreases graphics.
  https://v3rmillion.net/showthread.php?tid=1016398
--]]

-- < Services > --
local Lighting = game:GetService("Lighting")
local NetworkSettings = settings():GetService("NetworkSettings")
local RenderSettings = settings():GetService("RenderSettings")
local GameSettings = settings():GetService("GameSettings")
local UserGameSettings = UserSettings():GetService("UserGameSettings")
-- < Variables > --
local Closure = newcclosure or function(Function) return Function end
local SetProperty = sethiddenproperty or set_hidden_property or set_hidden_prop or function(Instance, Property, Value) pcall(Closure(function() Instance[Property] = Value end)) end
local GetProperty = gethiddenproperty or get_hidden_property or get_hidden_prop or function(Instance, Property) pcall(Closure(function() return Instance[Property] or nil end)) end
local Configuration = {
QualityLevel = Enum.QualityLevel.Level01, -- Upto Level21
SavedQualityLevel = Enum.SavedQualitySetting.QualityLevel1, -- Upto QualityLevel10
LightingTechnology = Enum.Technology.Legacy,
ModelLevelOfDetail = Enum.ModelLevelOfDetail.Disabled,
InterpolationThrottlingMode = Enum.InterpolationThrottlingMode.Disabled,
MeshPartDetailLevel = Enum.MeshPartDetailLevel.Level01,
MeshPartHeads = Enum.MeshPartHeads.Disabled,
EagerBulkExecution = false, -- Rendering budget limit
GlobalShadows = false, -- Shadows off
TerrainDecoration = false, -- Grass off
IncomingReplicationLag = -1000, -- lagn't
HasEverUsedVR = true, -- funni
VREnabled = true -- funni
}

spawn(Closure(function()
SetProperty(UserGameSettings, "SavedQualityLevel", Configuration["SavedQualityLevel"])
SetProperty(UserGameSettings, "HasEverUsedVR", Configuration["HasEverUsedVR"])
SetProperty(UserGameSettings, "VREnabled", Configuration["VREnabled"])
SetProperty(RenderSettings, "QualityLevel", Configuration["QualityLevel"])
SetProperty(RenderSettings, "MeshPartDetailLevel", Configuration["MeshPartDetailLevel"])
SetProperty(RenderSettings, "EagerBulkExecution", Configuration["EagerBulkExecution"])
SetProperty(NetworkSettings, "IncomingReplicationLag", Configuration["IncomingReplicationLag"])
SetProperty(Lighting, "GlobalShadows", Configuration["GlobalShadows"])
SetProperty(Lighting, "Technology", Configuration["LightingTechnology"])
SetProperty(workspace.Terrain, "Decoration", Configuration["TerrainDecoration"])
SetProperty(workspace, "LevelOfDetail", Configuration["ModelLevelOfDetail"])
SetProperty(workspace, "MeshPartHeads", Configuration["MeshPartHeads"])
SetProperty(workspace, "InterpolationThrottling", Configuration["InterpolationThrottlingMode"])
if syn then pcall(function() setfpscap(999) end) end
end))
