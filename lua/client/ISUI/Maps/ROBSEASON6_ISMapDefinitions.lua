require 'Maps/ISMapDefinitions'

local MINZ = 0
local MAXZ = 24

local function overlayPNG(mapUI, x, y, scale, layerName, tex, alpha)
    local texture   = getTexture(tex)
    if not texture then return end
    local mapAPI    = mapUI.javaObject:getAPIv1()
    local styleAPI  = mapAPI:getStyleAPI()
    local layer     = styleAPI:newTextureLayer(layerName)
    layer:setMinZoom(MINZ)
    layer:addFill(MINZ, 255, 255, 255, (alpha or 1.0) * 255)
    layer:addTexture(MINZ, tex)
    layer:setBoundsInSquares(x, y, x+texture:getWidth() * scale, y +texture:getHeight() * scale)
end

local PaperX1 = 10
local PaperY1 = 10

local PaperX2 = 1003
local PaperY2 = 1255


LootMaps.Init.Providence_Currency = function(mapUI)
    local mapAPI = mapUI.javaObject:getAPIv1()
    MapUtils.initDirectoryMapData(mapUI, 'media/maps/Muldraugh, KY')
    MapUtils.initDefaultStyleV1(mapUI)
    mapAPI:setBoundsInSquares(PaperX1, PaperY1, 528.0, 318.0)
    overlayPNG(mapUI, PaperX1, PaperY1, 1.0, "lootMapPNG", "media/ui/LootableMaps/Providence_Currency.png", 1.0)
end

LootMaps.Init.Providence_Map = function(mapUI)
    local mapAPI = mapUI.javaObject:getAPIv1()
    MapUtils.initDirectoryMapData(mapUI, 'media/maps/Muldraugh, KY')
    MapUtils.initDefaultStyleV1(mapUI)
    mapAPI:setBoundsInSquares(PaperX1, PaperY1, 770.0, 710.0)
    overlayPNG(mapUI, PaperX1, PaperY1, 1.0, "lootMapPNG", "media/ui/LootableMaps/Providence_Map.png", 1.0)
end

LootMaps.Init.Providence_gold_bar = function(mapUI)
    local mapAPI = mapUI.javaObject:getAPIv1()
    MapUtils.initDirectoryMapData(mapUI, 'media/maps/Muldraugh, KY')
    MapUtils.initDefaultStyleV1(mapUI)
    mapAPI:setBoundsInSquares(PaperX1, PaperY1, 125.0, 235.0)
    overlayPNG(mapUI, PaperX1, PaperY1, 1.0, "lootMapPNG", "media/ui/LootableMaps/Providence_gold_bar.png", 1.0)
end

LootMaps.Init.Providence_artilleryshell = function(mapUI)
    local mapAPI = mapUI.javaObject:getAPIv1()
    MapUtils.initDirectoryMapData(mapUI, 'media/maps/Muldraugh, KY')
    MapUtils.initDefaultStyleV1(mapUI)
    mapAPI:setBoundsInSquares(PaperX1, PaperY1, 350.0, 615.0)
    overlayPNG(mapUI, PaperX1, PaperY1, 1.0, "lootMapPNG", "media/ui/LootableMaps/Providence_artilleryshell.png", 1.0)
end