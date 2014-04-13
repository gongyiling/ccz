require "extern"

Map = class("Map", 
function(fileName) 
    return CCTMXTiledMap:create(fileName)
end
)
