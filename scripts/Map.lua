local Map = { 	mapfile 	= "",
				currentMap 	= 1,
				tilemap 	= {},
				layer 		= {},
				loader 		=  require("scripts/AdvTiledLoader.Loader"),
			}
	
	function Map:new (o)
		o = o or {}
		setmetatable(o, self)
	    self.__index = self
	    return o
	end

	function Map:load()
		loader.path = "maps/"
		loader.useSpriteBatch = true
	end	

	function Map:update(dt)
	end
	
	function Map:draw()
		local ftx, fty = camera:getX(), camera:getY()
		self.tilemap:autoDrawRange(-ftx , -fty  , 1 , 32) 
		self.tilemap:draw() 
	end	

return Map








--[[
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
--		  
--]]
