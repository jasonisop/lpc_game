--[[
	the Player class 
		
--]]


Player = {	health = 10,startingHealth = 10,water = 10,startingWater = 10, name ="Brandon", speed = 150, enemyType = "basic", facing = "down", x = 100, y = 100, tileX = 0, tileY = 0,
			noWalk = false ,animating = true , up = false, down = false  , left = false , right = false, 	canMove = true, animstarted = false, dead = false, 
			dying = false, weaponDamage = 1, weaponType="Punch", equiped = {} ,inventory = {}, quests = {}, stats ={},

			anim8 = require ('luascripts/anim8'),   
			g = {}, 			animation = {},				image = "", 	
			gBEHIND = {}, 		animationBEHIND = {},		imageBEHIND = "",
			gBELT = {}, 		animationBELT = {}, 		imageBELT = "",
			gFEET = {},			animationFEET = {},			imageFEET = "",
			gHANDS = {},		animationHANDS = {},		imageHANDS = "",			 		
			gHEAD = {},			animationHEAD = {},			imageHEAD = "",			
			gLEGS = {}, 		animationLEGS = {},			imageLEGS = "",
			gTORSO = {},		animationTORSO = {},		imageTORSO = "",
			gWEAPON = {},		animationWEAPON = {},		imageWEAPON = "",
			gSHEILD = {},		animationSHEILD = {},		imageSHEILD= "", 
			gARMS = {}, 		animationARMS = {},			imageARMS= "",		 			 				 		 			  			
			gSHOULDERS = {},	animationSHOULDERS = {},	imageSHOULDERS= "",	  	  	    		
				 		 	 	  	 		 	 					
			}

			

function Player:new (o)
	o = o or {}
	setmetatable(o, self)
    self.__index = self
    return o
end

------------------- getters/setters----------------
function Player:getHealth()
	return self.health
end
function Player:setHealth(v)
end

function Player:getWater()
	return self.water
end
function Player:setWater(v)
	self.water = v
end

--get and set tile x and y
function Player:setTileX(v)
	self.tileX = v
end
function Player:getTileX()
	return self.tileX
end
function Player:setTileY(v)
	self.tileY = v
end
function Player:getTileY()
	return self.tileY
end
 
 
--get and set player x and y
function Player:setX(v)
	self.x = v
end
function Player:getX()
	return self.x
end
function Player:setY(v)
	self.y = v
end
function Player:getY()
	return self.y
end

--get and set speed
function Player:getSpeed()
	return self.speed
end
function Player:setSpeed(v)
	self.speed = v
end

--get and set facing
function Player:getFacing()
	return self.facing
end
function Player:setFacing(v)
	self.facing = v
end
------------------- end of getters/setters----------
function Player:setUp()

	--set up the players stats to random numbers
	self:setStats()
	
	--add the starting items to the players inventory
	
	inventory[1] = HealthPotion:new()

	-- set up remaining stats based on equiped  items
	
end


function Player:setStats()
	--roll 6 sets of stats, using 4D6 and droping the lowest one (DieType,NumberDie,NumberDrop,NumberStats)
	self.stats =   {STR = diceroller:RollStat(6,4,1,1), DEX = diceroller:RollStat(6,4,1,1), CON = diceroller:RollStat(6,4,1,1),
					INT = diceroller:RollStat(6,4,1,1), WIS = diceroller:RollStat(6,4,1,1), CHA = diceroller:RollStat(6,4,1,1),
					ATTACK = {1}, RANGEATTACK = {1}, DEFENSE = {1}	}
end

function Player:getStat(v)
--stat name is v [1] is value of that stat 
return self.stats[v][1]
end

function Player:setAttack()
	--loop thru the equiped table and add up all attack bonus
	local tempCount = 0
	-- for k,item ipairs(self.equiped ) do
	
	-- end
	
end
function Player:setDefense()

end

function Player:addItem(itemId)
end
function Player:removeItem(ItemId)
end
function Player:addToInventory(v,amount)
end

function Player:addQuestion(questId)
end
function Player:removeQuest(questId)
end


function Player:changeWeapon(v)
	self.weaponType = v
end

function Player:setLocation(tX,tY,facing)
	self.facing = facing
	
	self.tileX = tX
	self.tileY = tY
	
	self.x = self.tileX * 32
	self.y = self.tileY * 32
	
	--reset the camera
	Game.mapList[Game.currentMap]:setCameraWindow(self.x, self.y)
end

function Player:moveTile(tX,tY)
	local tile = layer.tileData(self.tileX + tX, self.tileY + tY)
	if tile == nil then return end
	if tile.properties.obstacle then return end
	-- Otherwise change the guy's tile
	
	self.tileX = self.tileX + tX
	self.tileY = self.tileY + tY
	
	--have the map check if we hit anything here
	Game.mapList[Game.currentMap]:checkTile(self.tileX,self.tileY)
end

function Player:checkTile(tX,tY)
	
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
	
	
	
	for k,enemy in ipairs(enemyHolder.container[Game.currentMap]) do	
		if enemy:getTileX() == self.tileX + tX and enemy:getTileY() == self.tileY + tY and enemy:getDeath() == false then
			self.noWalk = true 
		return
		end
	end
	
	self.noWalk = false

end

--gets called every second currently
function Player:heartBeat()
	
	--see if the player is alive
	if global.player_Health == 0 and self.dead == false then
		self.canMove = false
		--run a death function
		Player:setAnimation(self.facing,"deathSpin")
	end
	
	
end

function Player:getCanMove() 
return self.canMove
end

function Player:setAnimation(facing,animationType)
	self.facing = facing
	
	if animationType == "walk"  and player.dead == false and self.canMove == true then
		
		Player:setImage("male_walkcycle.png")
		Player:setImageHEAD("Chars/png/walkcycle/HEAD_hair_blonde.png")
		Player:setImageTORSO("Chars/png/walkcycle/TORSO_leather_armor_torso.png")
		Player:setImageLEGS("Chars/png/walkcycle/LEGS_pants_greenish.png")
		
		if 	 	self.facing == "up" then 	self.animation = self.anim8.newAnimation('loop', self.g('2-9,1'), 0.1)
											self.animationHEAD = self.anim8.newAnimation('loop', self.gHEAD('2-9,1'), 0.1)
											self.animationTORSO = self.anim8.newAnimation('loop', self.gTORSO('2-9,1'), 0.1)
											self.animationLEGS = self.anim8.newAnimation('loop', self.gLEGS('2-9,1'), 0.1)
		elseif  self.facing == "left" then 	self.animation = self.anim8.newAnimation('loop', self.g('2-9,2'), 0.1)
											self.animationHEAD = self.anim8.newAnimation('loop', self.gHEAD('2-9,2'), 0.1)
											self.animationTORSO = self.anim8.newAnimation('loop', self.gTORSO('2-9,2'), 0.1)
											self.animationLEGS = self.anim8.newAnimation('loop', self.gLEGS('2-9,2'), 0.1)
		elseif  self.facing == "down" then 	self.animation = self.anim8.newAnimation('loop', self.g('2-9,3'), 0.1)
											self.animationHEAD = self.anim8.newAnimation('loop', self.gHEAD('2-9,3'), 0.1)
											self.animationTORSO = self.anim8.newAnimation('loop', self.gTORSO('2-9,3'), 0.1)
											self.animationLEGS = self.anim8.newAnimation('loop', self.gLEGS('2-9,3'), 0.1)
		elseif  self.facing == "right" then self.animation = self.anim8.newAnimation('loop', self.g('2-9,4'), 0.1)
											self.animationHEAD = self.anim8.newAnimation('loop', self.gHEAD('2-9,4'), 0.1)
											self.animationTORSO = self.anim8.newAnimation('loop', self.gTORSO('2-9,4'), 0.1)
											self.animationLEGS = self.anim8.newAnimation('loop', self.gLEGS('2-9,4'), 0.1)
		end
	end
	
	if animationType =="stand"  and player.dead == false  and self.canMove == true  then
		Player:setImage("male_walkcycle.png")
		Player:setImageHEAD("Chars/png/walkcycle/HEAD_hair_blonde.png")
		Player:setImageTORSO("Chars/png/walkcycle/TORSO_leather_armor_torso.png")
		Player:setImageLEGS("Chars/png/walkcycle/LEGS_pants_greenish.png")
		
		if 	 	self.facing == "up" then 	self.animation = self.anim8.newAnimation('loop', self.g('1-1,1'), 0.1)
											self.animationHEAD = self.anim8.newAnimation('loop', self.gHEAD('1-1,1'), 0.1)
											self.animationTORSO = self.anim8.newAnimation('loop', self.gTORSO('1-1,1'), 0.1)
											self.animationLEGS = self.anim8.newAnimation('loop', self.gLEGS('1-1,1'), 0.1)
		elseif  self.facing == "left" then 	self.animation = self.anim8.newAnimation('loop', self.g('1-1,2'), 0.1)
											self.animationHEAD = self.anim8.newAnimation('loop', self.gHEAD('1-1,2'), 0.1)
											self.animationTORSO = self.anim8.newAnimation('loop', self.gTORSO('1-1,2'), 0.1)
											self.animationLEGS = self.anim8.newAnimation('loop', self.gLEGS('1-1,2'), 0.1)
		elseif  self.facing == "down" then 	self.animation = self.anim8.newAnimation('loop', self.g('1-1,3'), 0.1)
											self.animationHEAD = self.anim8.newAnimation('loop', self.gHEAD('1-1,3'), 0.1)
											self.animationTORSO = self.anim8.newAnimation('loop', self.gTORSO('1-1,3'), 0.1)
											self.animationLEGS = self.anim8.newAnimation('loop', self.gLEGS('1-1,3'), 0.1)
		elseif  self.facing == "right" then self.animation = self.anim8.newAnimation('loop', self.g('1-1,4'), 0.1)
											self.animationHEAD = self.anim8.newAnimation('loop', self.gHEAD('1-1,4'), 0.1)
											self.animationTORSO = self.anim8.newAnimation('loop', self.gTORSO('1-1,4'), 0.1)
											self.animationLEGS = self.anim8.newAnimation('loop', self.gLEGS('1-1,4'), 0.1)
		end
	 end
	
	if animationType == "deathSpin" then
		self.animation = self.anim8.newAnimation('once', self.g('1,1', '1,2', '1,3', '1,4','1,1', '1,2', '1,3', '1,4' ),  0.2)
	end
	
	if animationType == "death" then
		chatWindow:addText("you have died" )
		--play death music
		Player:setImage("male_hurt.png")
		self.animation = self.anim8.newAnimation('once', self.g('1-6,1'), 0.1)
	end
	
	if animationType =="attack" and  player.dead == false then
		-- need to switch to attack sheet
		Player:setImage("male_slash.png")
		if 	 	self.facing == "up" then	self.animation = self.anim8.newAnimation('once', self.g('1-6,1', '3,1', '2,1', '1,1' ), 0.1)
		elseif  self.facing == "left" then 	self.animation = self.anim8.newAnimation('once', self.g('1-6,2', '3,2', '2,2', '1,2' ), 0.1)
		elseif  self.facing == "down" then 	self.animation = self.anim8.newAnimation('once', self.g('1-6,3', '3,3', '2,3', '1,3' ), 0.1)
		elseif  self.facing == "right" then self.animation = self.anim8.newAnimation('once', self.g('1-6,4', '3,4', '2,4', '1,4' ), 0.1)
		end
	 end
	 
	 if animationType =="spell" and player.dead == false then
		Player:setImage("male_spellcast.png")
		if 	 	self.facing == "up" then	self.animation = self.anim8.newAnimation('once', self.g('1-7,1', '4,1', '3,1', '2,1', '1,1' ), 0.1)
		elseif  self.facing == "left" then 	self.animation = self.anim8.newAnimation('once', self.g('1-7,2', '4,2', '3,2', '2,2', '1,2' ), 0.1)
		elseif  self.facing == "down" then 	self.animation = self.anim8.newAnimation('once', self.g('1-7,3', '4,3', '3,3', '2,3', '1,3' ), 0.1)
		elseif  self.facing == "right" then self.animation = self.anim8.newAnimation('once', self.g('1-7,4', '4,4', '3,4', '2,4', '1,4' ), 0.1)
		end
	 end 
	
end

--called when key is released
function Player:keyreleased(k)
	if k == "up" then
		self.up = false
		self.animating = false
	end
		
	if k == "down" then
		self.down = false
		self.animating = false
	end	
		
	if k == "left" then
		self.left = false
		self.animating = false
	end
		
	if k == "right" then
		self.right = false
		self.animating = false
	end	
end

function Player:keypressed(k)

	self.up=false
	self.down=false
	self.left=false
	self.right=false
	
	
		if self.up == true or self.down == true or self.right == true or self.left == true 	then	
		
		else
			if k == "up" then
				self.up = true
				self:setAnimation("up","walk")
				self.animating = true 
			end
				
			if k == "down" then
				self.down = true
				self:setAnimation("down","walk")
				self.animating = true
			end	
					
			if k == "left" then
				self.left = true
				self:setAnimation("left","walk")
				self.animating = true
					
			end
					
			if k == "right" then
				self.right = true
				self:setAnimation("right","walk")
				self.animating = true
			end	
				
		end	

	--add in other key presses for attack and cast ect...
		--testing
	if k == "a" then
		self:setAnimation(self.facing,"attack")
		self.animating = true
		--check if there is something there(enemy) and deal it damage
		self:attack()
	end	
	if k == "p" then
		self:setAnimation(self.facing,"spell")
		self.animating  = true
	end	
	--testing function  its a telaporter
	
	if k == "g" and player.dead == false then
		self:setLocation(5,5,"down")
	end	
	
	
end

function Player:attack()
	--check for enemy and that your facing it
	local tX = 0
	local tY = 0
	
	if player.facing == "up" then  tY = -1 end
	if player.facing == "down" then tY  = 1 end
	if player.facing == "left" then tX = -1  end
	if player.facing == "right" then tX = 1  end

	-- currently it does 1 damage as punch is the only weapon we have
	for k,enemy in ipairs(enemyHolder.container[Game.currentMap]) do	
		if enemy:getTileX() == self.tileX + tX and enemy:getTileY() == self.tileY + tY and enemy:getDeath() == false then
		 enemy:setHealth(enemy:getHealth() - self.weaponDamage)	
		 chatWindow:addText("you hit ".. enemy:getName() ,"System",base_Color)
		return
		end
	end
	
end
		

--set the images
function Player:setImage(v)	
	self.image = love.graphics.newImage("images/".. v)
	self.g = self.anim8.newGrid(64,64, self.image:getWidth(),self.image:getHeight())
end

function Player:setImageBEHIND(v)	
	self.imageBEHIND = love.graphics.newImage("images/".. v)
	self.gBEHIND = self.anim8.newGrid(64,64, self.imageBEHIND:getWidth(),self.imageBEHIND:getHeight())
end

function Player:setImageBELT(v)	
	self.imageBELT = love.graphics.newImage("images/".. v)
	self.gBELT = self.anim8.newGrid(64,64, self.imageBELT:getWidth(),self.imageBELT:getHeight())
end

function Player:setImageFEET(v)	
	self.imageFEET = love.graphics.newImage("images/".. v)
	self.gFEET = self.anim8.newGrid(64,64, self.imageFEET:getWidth(),self.imageFEET:getHeight())
end

function Player:setImageHANDS(v)	
	self.imageHANDS = love.graphics.newImage("images/".. v)
	self.gHANDS = self.anim8.newGrid(64,64, self.imageHANDS:getWidth(),self.imageHANDS:getHeight())
end

function Player:setImageHEAD(v)	
	self.imageHEAD = love.graphics.newImage("images/".. v)
	self.gHEAD = self.anim8.newGrid(64,64, self.imageHEAD:getWidth(),self.imageHEAD:getHeight())
end

function Player:setImageLEGS(v)	
	self.imageLEGS = love.graphics.newImage("images/".. v)
	self.gLEGS = self.anim8.newGrid(64,64, self.imageLEGS:getWidth(),self.imageLEGS:getHeight())
end

function Player:setImageTORSO(v)	
	self.imageTORSO = love.graphics.newImage("images/".. v)
	self.gTORSO = self.anim8.newGrid(64,64, self.imageTORSO:getWidth(),self.imageTORSO:getHeight())
end
function Player:setImageWEAPON(v)	
	self.imageWEAPON = love.graphics.newImage("images/".. v)
	self.gWEAPON = self.anim8.newGrid(64,64, self.imageWEAPONG:getWidth(),self.imageTORSO:getHeight())
end


function Player:update(dt)

	local tempY = 0
	local tempX = 0
	
	if self.up == false and self.down == false and self.right == false and self.left == false	then	
		if love.keyboard.isDown( "up" ) then
			self.up = true
			self:setAnimation("up","walk")
			self.animating = true
		elseif love.keyboard.isDown( "down" ) then
			self.down = true
			self:setAnimation("down","walk")
			self.animating = true
		elseif love.keyboard.isDown( "left" ) then
			self.left = true
			self:setAnimation("left","walk")
			self.animating = true
		elseif love.keyboard.isDown( "right" ) then
			self.right = true
			self:setAnimation("right","walk")
			self.animating = true
		end
	end
	
	
	--up
	if self.up and self.canMove then	
				
			self.animating = true
			
			--check if this will bring us to a no walk tile
			tempY = self.y  - self.speed * dt 
			
			if tempY/global.tileSize <= self.tileY -1 then
				
				self:checkTile(0,-1)
				
				if self.noWalk then 
					self.animating = false
				else
					self.y = tempY
					self:moveTile(0,-1)
				end	
			else
				self.y = tempY
				-- this was moved for camera
				if love.keyboard.isDown("up") and global.ty <= 0 and self.y <= global.mapHeight - (global.tileSize * global.cameraTileLimit ) then 
					--camera_up = false
					global.ty = global.ty + self.speed * dt 
					else
					--camera_up = true
				end
			end
		end	
	
	---down	
	if self.down and self.canMove then	
			self.animating = true
			--check if this will bring us to a no walk tile
			tempY = self.y  + self.speed * dt 
			
			if tempY/global.tileSize >= self.tileY  then
				
				self:checkTile(0,1)
				
				if self.noWalk then 
					self.animating = false
				else
					self.y = tempY
					self:moveTile(0,1)
				end	
			else
				self.y = tempY
				-- this was moved for camera
				if love.keyboard.isDown("down") and global.ty >=  -global.mapHeight + love.graphics.getHeight()  and self.y >= 0 + (global.tileSize * global.cameraTileLimit )   then 
					--camera_down = false
					global.ty = global.ty - self.speed * dt
				else
					--camera_down = true
				end
			end
		end	

		--left
		if self.left and self.canMove then	
			self.animating = true
			--check if this will bring us to a no walk tile
			tempX = self.x  - self.speed * dt 
			
			if tempX/global.tileSize <= self.tileX  then
				
				self:checkTile(-1,0)
				
				if self.noWalk then 
					self.animating = false
				else
					self.x = tempX
					self:moveTile(-1,0)
				end	
			else
				self.x = tempX
				-- this was moved for camera
				if love.keyboard.isDown("left") and global.tx  <= 0 and self.x <= global.mapWidth - (global.tileSize * global.cameraTileLimit ) then 
					--camera_left = false
					global.tx = global.tx + self.speed *dt	
				else
					--camera_left = true
				end
			end
		end	
		
		--right
		if self.right and self.canMove then	
			self.animating = true
			tempX = self.x  + self.speed *dt 
			
			if tempX/global.tileSize >= self.tileX + 1 then
				
				self:checkTile(1,0)
				
				if self.noWalk then 
					self.animating = false
				else
					self.x = tempX
					self:moveTile(1,0)
				end	
			else
				self.x = tempX
				
				if love.keyboard.isDown("right") and global.tx >=  -global.mapWidth  +love.graphics.getWidth() and self.x >= 0 + (global.tileSize * global.cameraTileLimit )  then 
					--camera_right = false
					global.tx = global.tx - self.speed *dt 
				else
					--camera_right = true
				end
			end
		end	
		
		if self.animating == false  then
			self:setAnimation(self.facing,"stand")
		end
		
		--need to make a function for all this crap
		if self.canMove == false and self.animstarted == false then 
		self:setAnimation(self.facing,"deathSpin")
		self.animstarted = true
		self.animating  = true
		end
		
		if self.animstarted and self.animation:getFrame() == 8 and self.dead == false then
			self.dead = true
			self:setAnimation(self.facing,"death")
		end
		
	self.animation:update(dt)
	self.animationHEAD:update(dt)
	self.animationTORSO:update(dt)
	self.animationLEGS:update(dt)
end


function Player:draw()
	--the off set is to correctly place the player
	self.animation:draw(self.image, self.x -32  , self.y -28 )
	self.animationHEAD:draw(self.imageHEAD, self.x -32  , self.y -28 )
	self.animationTORSO:draw(self.imageTORSO, self.x -32  , self.y -28 )
	self.animationLEGS:draw(self.imageLEGS, self.x -32  , self.y -28 )
	--love.graphics.print(self.name, self.x , self.y - 30)
end



