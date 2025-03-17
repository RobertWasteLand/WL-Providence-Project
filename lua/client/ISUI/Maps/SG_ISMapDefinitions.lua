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


LootMaps.Init.SOPCurrency = function(mapUI)
    local mapAPI = mapUI.javaObject:getAPIv1()
    MapUtils.initDirectoryMapData(mapUI, 'media/maps/Muldraugh, KY')
    MapUtils.initDefaultStyleV1(mapUI)
    mapAPI:setBoundsInSquares(PaperX1, PaperY1, 528.0, 318.0)
    overlayPNG(mapUI, PaperX1, PaperY1, 1.0, "lootMapPNG", "media/ui/LootableMaps/SOPCurrency.png", 1.0)
end