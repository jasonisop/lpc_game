--Map class

Map = { mapfile = "" }
Map.currentMap = 1

tilemap = {}
layer = {}
loader = require("scripts/AdvTiledLoader.Loader")
loader.path = "maps/"
loader.useSpriteBatch = true
--this should render player and enemys needs renamed also this is a Game function why is it in map
function drawInLayer()
	for k,enemy in ipairs(enemyHolder.container[Game.currentMap]) do enemy:draw() end
	player:draw()
end

function Map:new (o)
	o = o or {}
	setmetatable(o, self)
    self.__index = self
    return o
end

--function for respawning enemies or other objects(treasure chests)
function Map:respawn()
	for k,enemy in ipairs(enemyHolder.container[Game.currentMap]) 
		do enemy:respawn() 
	end
end

function Map:update(dt)
	if(enemyHolder.container[Game.currentMap])then
		for k,enemy in ipairs(enemyHolder.container[Game.currentMap]) do enemy:update(dt) end
	end
end

function Map:draw()
	--local ftx, fty = math.floor(camera:getX()), math.floor( camera:getY())
	local ftx, fty = camera:getX(), camera:getY()
	tilemap:autoDrawRange(-ftx , -fty  , 1 , 32) 
	tilemap:draw() 
end
		  

