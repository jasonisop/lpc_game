Bat = {	health 				= 10,
		startHealth 		= 0, 
		name 				= "", 
		image 				= "", 
		speed 				= 150, 
		enemyType 			= "basic", 
		facing 				= "down", 
		x 					= 100, 
		y 					= 100, 
		tileX 				= 0, 
		tileY 				= 0, 
		g 					= {}, 
		anim8 				= require ('scripts/anim8'), 
		animation 			= {}, 
		noWalk 				= false,
		animating 			= true, 
		up 					= false, 
		down 				= false, 
		left 				= false, 
		right 				= false, 
		canRespawn		 	= true, 
		dead 				= false,
		deathProcessed		= false;
		healthDiscription	= "Healthy", 
		randomMove			= true,
		loot 				=""				--will need a loot setup
		}

function Bat:new (o)
	o = o or {}
	setmetatable(o, self)
    self.__index = self
    return o
end

function Bat:randomMovement()
	local tempX = 0
	local tempY = 0
	if self.randomMove == true then
	local randface =	math.random(0, 4)
			
		if 	 	randface 	== 0 	then	
			tempY = -1
			self.facing	= "up" 
		elseif  randface	== 1 	then 	
			tempY = 1
			self.facing	= "down" 
		elseif  randface	== 2 	then	
			tempX = -1
			self.facing	= "left" 
		elseif  randface 	== 3 	then 	
			tempX = 1
			self.facing	= "right" 
		end
		self:setAnimation(self.facing,"walk")
		self:moveTile(tempX , tempY)
	end
end
--might rename to heartbeat
function Bat:checkForPlayer()
	local tempX = 0
	local tempY = 0
	
	if 	 	self.facing	== "up" 	then	tempY = -1
	elseif  self.facing	== "down" 	then 	tempY = 1
	elseif  self.facing	== "left" 	then	tempX = -1
	elseif  self.facing == "right" 	then 	tempX = 1
	end
				
	if	player:getTileX() == self.tileX + tempX and player:getTileY() ==  self.tileY + tempY and self.dead == false then
		global.player_Health = global.player_Health - 1
	end
end

--leaving this incase its needed
function Bat:setup()
	self.startHealth = self.health
end

--get and set tile x and y
function Bat:setTileX(v)
	self.tileX = v
end

function Bat:getTileX()
	return self.tileX
end

function Bat:setTileY(v)
	self.tileY = v
end

function Bat:getTileY()
	return self.tileY
end

function Bat:getDeath()
	return self.dead
end

function Bat:getRespawn()
	return self.canRespawn
end
--get and set player x and y
function Bat:setX(v)
	self.x = v
end

function Bat:getX()
	return self.x
end

function Bat:setY(v)
	self.y = v
end

function Bat:getY()
	return self.y
end

function Bat:setName (v)
      self.name = v
end

function Bat:getName()
	return self.name
end

function Bat:setHealth (v)
      self.health = v
end
function Bat:getHealth()
	return self.health
end
--get and set speed
function Bat:getSpeed()
	return self.speed
end

function Bat:setSpeed(v)
	self.speed = v
end
--get and set facing
function Bat:getFacing()
	return self.facing
end
function Bat:setFacing(v)
	self.facing = v
end

function Bat:setLocation(tX,tY,facing)
	self.facing = facing
	self.tileX 	= tX
	self.tileY 	= tY
	self.x 		= self.tileX * 32
	self.y 		= self.tileY * 32
end

function Bat:moveTile(tX,tY)
	local tile = layer.tileData(self.tileX + tX, self.tileY + tY)
	if tile == nil then return end
	if tile.properties.obstacle then return end
	-- Otherwise change the guy's tile
	self.tileX = self.tileX + tX
	self.tileY = self.tileY + tY
	self.x 		= self.tileX * 32
	self.y 		= self.tileY * 32
	--have the map check if we hit anything here
-- Game.mapList[Game.currentMap]:checkTile(self.tileX,self.tileY)
end

function Bat:checkTile(tX,tY)
	
	local tile = layer.tileData(self.tileX + tX, self.tileY + tY)
	-- If the tile doesn't exist or is an obstacle then exit the function
	if tile == nil then 
		self.noWalk = true 
		return 
	end
	
	if tile.properties.obstacle then 
		self.noWalk = true 
		return 
	end

	self.noWalk = false
end


function Bat:setAnimation(facing,animationType)
	self.facing = facing
	
	if animationType == "walk" then
		
		Bat:setImage("bat.png")
	
		if 	 	self.facing == "up" then 	self.animation = self.anim8.newAnimation('loop', self.g('1-3,1'), 0.4)
		elseif  self.facing == "left" then 	self.animation = self.anim8.newAnimation('loop', self.g('1-3,2'), 0.4)
		elseif  self.facing == "down" then 	self.animation = self.anim8.newAnimation('loop', self.g('1-3,3'), 0.4)
		elseif  self.facing == "right" then self.animation = self.anim8.newAnimation('loop', self.g('1-3,4'), 0.4)
		end
	end
	
	if animationType =="stand" then
		Bat:setImage("bat.png")
		
		if 	 	self.facing == "up" then 	self.animation = self.anim8.newAnimation('loop', self.g('1-1,1'), 0.1)
		elseif  self.facing == "left" then 	self.animation = self.anim8.newAnimation('loop', self.g('1-1,2'), 0.1)
		elseif  self.facing == "down" then 	self.animation = self.anim8.newAnimation('loop', self.g('1-1,3'), 0.1)
		elseif  self.facing == "right" then self.animation = self.anim8.newAnimation('loop', self.g('1-1,4'), 0.1)
		end
	 end
end

--called when key is released
function Bat:keyreleased(k)

end

function Bat:keypressed(k)
	
end
function Bat:mousepressed(x, y, button)
	--if you right click on a enemy
	-- if button == "l" and x - global.tx > self.x and x - global.tx < self.x + 32 and y - global.ty > self.y and y - global.ty < self.y + 32 then
	-- chatWindow:show(true)
	-- end
end

--set the image
function Bat:setImage(v)	
	self.image = love.graphics.newImage("images/".. v)
	self.g = self.anim8.newGrid(32,32, self.image:getWidth(),self.image:getHeight())
end

function Bat:update(dt)
--could move this to improve performance
	if self.health == 10 then
		self.healthDiscription = "Healthy"
	end
	if self.health == 9 then
		self.healthDiscription = "Healthy"
	end
	if self.health == 8 then
		self.healthDiscription = "Wounded"
	end
	if self.health == 7 then
		self.healthDiscription = "Wounded"
	end
		if self.health == 6 then
		self.healthDiscription = "Wounded"
	end
	if self.health == 5 then
		self.healthDiscription = "Wounded"
	end
	if self.health ==  4 then
		self.healthDiscription = "Hurting"
	end
	if self.health == 3 then
		self.healthDiscription = "Hurting"
	end
	
	if self.health == 2 then
		self.healthDiscription = "Near Death"
	end
	if self.health == 1 then
		self.healthDiscription = "Near Death"
	end
	

	if self.health == 0 then
		self.dead = true
		
		if self.dead and self.deathProcessed == false then
			self.deathProcessed = true
			chatWindow:addText("Was killed", "bat", Color_Yellow )
		end
	end

	if self.animating == false then
		self:setAnimation(self.facing,"walk")
	end
	
	 self.animation:update(dt)
	
end

function Bat:respawn()
	if self.dead == true then
		if self.canRespawn then
			self.health = self.startHealth
			self.dead = false
			self.deathProcessed = false
		end
	end
end

function Bat:draw()
	--the off set is to correctly place the enemy
	if self.dead == false then
		self.animation:draw(self.image, self.x  , self.y  )
		
		local Len = string.len(self.name .." " ..tostring(self.healthDiscription))
		love.graphics.print( self.name .." " ..tostring(self.healthDiscription), self.x - Len * 5 , self.y -10)
	end

	
end


