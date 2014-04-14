require "map"

cclog = function(...)
    print(string.format(...))
end

-- for CCLuaEngine traceback
function __G__TRACKBACK__(msg)
    cclog("----------------------------------------")
    cclog("LUA ERROR: " .. tostring(msg) .. "\n")
    cclog(debug.traceback())
    cclog("----------------------------------------")
end

function main()
	cclog("here")
    scene = CCScene:create()
    map = Map.new("1.tmx")
    scene:addChild(map)
    cclog("here")
    CCDirector:sharedDirector():runWithScene(scene)
end

xpcall(main, __G__TRACKBACK__)
