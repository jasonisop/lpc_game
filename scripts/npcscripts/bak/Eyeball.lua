Eyeball = {	health 			= 10, 
			startHealth 	= 0, 
			name 			= "", 
			image 			= "", 
			speed 			= 150, 
			enemyType 		= "basic", 
			facing 			= "down", 
			x 				= 100, 
			y 				= 100, 
			tileX 			= 0, 
			tileY 			= 0, 
			g 				= {}, 
			anim8 			= require ('scripts/anim8'), 
			animation 		= {}, 
			noWalk 			= false,
			animating 		= true, 
			up 				= false, 
			down 			= false, 
			left 			= false, 
			right 			= false, 
			canRespawn 		= false, 
			dead 			= false, 
			visionDistance 	= 5,
			hate	 		= 0,
			attackOnSight 	= true,
			randomMove 		= false,
			loot 			= "",				--will need a loot setup
			rect			= {}
			}

function Eyeball:new (o)
	o = o or {}
	setmetatable(o, self)
    self.__index = self
    return o
end

function Eyeball:randomMovement()
	if self.randomMove == true then
		self:moveTile(self.tileX , self.tileY+1)
	end
end

--might rename to heartbeat
function Eyeball:checkForPlayer()
	local tempX = 0
	local tempY = 0

	--visionDistance 
	
	--this is for if the player is in the next cell
	if 	 	self.facing == "up" 	then	tempY = -1
	elseif  self.facing == "down" 	then 	tempY = 1
	elseif  self.facing == "left" 	then	tempX = -1
	elseif  self.facing == "right" 	then 	tempX = 1
	end
	
	-- Get  a cone of tiles in the direction enemy is facing and check if there is a player in it if so move towards the player if attack on sight is true
	if	attackOnSight== true then
		
	end
	
	if	player:getTileX() == self.tileX + tempX and player:getTileY() ==  self.tileY + tempY  and self.dead == false then
		--Will need to change this to an attack not just a auto hit
		Game.player_Health = Game.player_Health - 1
	end
end

function Eyeball:setup()
	-- Can have some randomizing done here such as health, attack, defence ect...
		
	self.startHealth = self.health
end
--get and set tile x and y
function Eyeball:setTileX(v)
	self.tileX = v
end

function Eyeball:getTileX()
	return self.tileX
end

function Eyeball:setTileY(v)
	self.tileY = v
end

function Eyeball:getTileY()
	return self.tileY
end

function Eyeball:getDeath()
	return self.dead
end

function Eyeball:getRespawn()
	return self.canRespawn
end

--get and set player x and y
function Eyeball:setX(v)
	self.x = v
end

function Eyeball:getX()
	return self.x
end

function Eyeball:setY(v)
	self.y = v
end

function Eyeball:getY()
	return self.y
end

function Eyeball:setName (v)
      self.name = v
end
function Eyeball:getName()
	return self.name
end

function Eyeball:setHealth (v)
      self.health = v
end
function Eyeball:getHealth()
	return self.health
end
--get and set speed
function Eyeball:getSpeed()
	return self.speed
end

function Eyeball:setSpeed(v)
	self.speed = v
end
--get and set facing
function Eyeball:getFacing()
	return self.facing
end

function Eyeball:setFacing(v)
	self.facing = v
end

function Eyeball:setLocation(tX,tY,facing)
	self.facing = facing
	self.tileX 	= tX
	self.tileY 	= tY
	self.x 		= self.tileX * 32
	self.y 		= self.tileY * 32
end

function Eyeball:moveTile(tX,tY)
	local tile = layer.tileData(self.tileX + tX, self.tileY + tY)
	if tile == nil then return end
	if tile.properties.obstacle then return end
	-- Otherwise change the guy's tile
	self.tileX = self.tileX + tX
	self.tileY = self.tileY + tY
	--have the map check if we hit anything here
	Game.mapList[Game.currentMap]:checkTile(self.tileX,self.tileY)
end

function Eyeball:checkTile(tX,tY)
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

function Eyeball:setAnimation(facing,animationType)
	self.facing = facing
	
	if animationType == "walk" then
		
		Eyeball:setImage("Monster/eyeball.png")
	
		if 	 	self.facing == "up" 	then 	self.animation = self.anim8.newAnimation('loop', self.g('1-3,1'), 0.4)
		elseif  self.facing == "left" 	then 	self.animation = self.anim8.newAnimation('loop', self.g('1-3,2'), 0.4)
		elseif  self.facing == "down" 	then 	self.animation = self.anim8.newAnimation('loop', self.g('1-3,3'), 0.4)
		elseif  self.facing == "right" 	then 	self.animation = self.anim8.newAnimation('loop', self.g('1-3,4'), 0.4)
		end
	end
	
	if animationType =="stand" then
		Eyeball:setImage("Monster/eyeball.png")
		
		if 	 	self.facing == "up" 	then 	self.animation = self.anim8.newAnimation('loop', self.g('1-1,1'), 0.1)
		elseif  self.facing == "left" 	then 	self.animation = self.anim8.newAnimation('loop', self.g('1-1,2'), 0.1)
		elseif  self.facing == "down" 	then 	self.animation = self.anim8.newAnimation('loop', self.g('1-1,3'), 0.1)
		elseif  self.facing == "right" 	then 	self.animation = self.anim8.newAnimation('loop', self.g('1-1,4'), 0.1)
		end
	 end
end


function Eyeball:mousepressed(x, y, button)
	--chatWindow:addText("Eyeball Pressed","System",Color_Crimson )
end

function Eyeball:mousereleased(x, y, button)
	--chatWindow:addText("Eyeball released","System",Color_Crimson )
end

--set the image
function Eyeball:setImage(v)	
	self.image 	= love.graphics.newImage("images/".. v)
	self.g	 	= self.anim8.newGrid(32,38, self.image:getWidth(),self.image:getHeight())
end

function Eyeball:update(dt)
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
	end

	if self.animating == false then
		self:setAnimation(self.facing,"walk")
	end
	
	 self.animation:update(dt)
end

function Eyeball:respawn()
	if self.dead == true then
		if self.canRespawn then
			self.health = self.startHealth
			self.dead = false
		end
	end
end

function Eyeball:draw()
	--the off set is to correctly place the player
	if self.dead == false then
		self.animation:draw(self.image, self.x  , self.y  )
		
		local Len = string.len(self.name .." " ..tostring(self.healthDiscription))
		love.graphics.print( self.name .." " ..tostring(self.healthDiscription), self.x - Len * 5 , self.y -10)
	end
end
