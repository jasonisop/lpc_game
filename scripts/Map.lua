--Map class

Map = { mapfile = "" }
Map.currentMap = 1

tilemap = {}
layer = {}

loader = require "scripts/sti"



function Map:new (o)
	o = o or {}
	setmetatable(o, self)
    self.__index = self
    return o
end

--function for re spawning enemies or other objects(treasure chests)
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

