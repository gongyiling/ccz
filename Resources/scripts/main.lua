require "map"

cclog = function(...)
    io.stderr:write(string.format(...))
end

-- for CCLuaEngine traceback
function __G__TRACKBACK__(msg)
    cclog("----------------------------------------")
    cclog("LUA ERROR: " .. tostring(msg) .. "\n")
    cclog(debug.traceback())
    cclog("----------------------------------------")
end

function main()
    scene = CCScene:create()
    map = Map.new("1.tmx")
    scene:addChild(map)
    CCDirector:sharedDirector():runWithScene(scene)
end

xpcall(main, __G__TRACKBACK__)
