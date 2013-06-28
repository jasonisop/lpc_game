--[[
	Class for storing at keeping track of all the enemies

--]]

require('scripts/npcscripts/Bat')
require('scripts/npcscripts/Eyeball')

Enemy = { container = {} }

function Enemy:new (o)
	o = o or {}
	setmetatable(o, self)
    self.__index = self
	return o
end

function Enemy:registerEnemy(mapId , ... )
	
	self.container[mapId]= {}
	for k,enemy in ipairs(arg) do 
		table.insert(self.container[mapId],enemy) 
		enemy:setLocation(enemy:getTileX(),enemy:getTileY(),enemy:getFacing())
		enemy:setAnimation(enemy:getFacing(),"walk")
		enemy:setup()
	end
end

--will remove any enemy from the holder
function Enemy:removeEnemy()

end

--this might go in the npc heartbeat 
function Enemy:findTarget()

end

--create the instance
enemyHolder = Enemy:new()

--- generic enemies for outside map
local bat = Bat:new{name = "bat", tileX = 4,tileY = 4,facing = "left",canRespawn = true, respawnTime = 5}
local eyeball = Eyeball:new{health = 5,name = "eyeball",tileX = 6, tileY = 6, canRespawn = false}

--generic enemies for ____ map
local bat2 = Bat:new{name = "bat", tileX = 4,tileY = 4,facing = "left",canRespawn = false, respawnTime = 5,dead=true}
local eyeball2 = Eyeball:new{health = 5,name = "eyeball",tileX = 6, tileY = 6, canRespawn = false,dead = true}

--must register every map

--outside map
enemyHolder:registerEnemy(1, bat,eyeball)
--inside map
enemyHolder:registerEnemy(2,nil)
