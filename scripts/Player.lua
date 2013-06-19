--New Player Class
Player = {	name 			= "Hero", 		--Player name set in char builder
			class 			= "", 			--Player class set in char builder
			race 			= "human",		--Player race set in char builder
			speed 			= 160, 			--how fast the player moves this should also effect the camera  keep to power of 2
			health 			= 10, 			--players  current heath
			startingHealth 	= 10,			--players heath when starting the game
			mana 			= 10, 			--players current mana
			startingMana 	= 10, 			--players mana when starting the game
			x 				= 100, 			--players  x location on the screen
			y 				= 100, 			--players y location on the screen
			tileX 			= 0, 			-- the tileX that the player is on on the tilemap
			tileY 			= 0,			--the tileY that the player is on on the tilemap
			noWalk 			= false, 		--if the player can move
			animating 		= true, 		--If the player is animating
			animstarted 	= false, 		--used to keep from overriding animation
			facing 			= "down", 		--what direction the player is looking
			up 				= false, 		--used for camera
			down 			= false, 		--used for camera
			left 			= false, 		--used for camera
			right 			= false,  		--used for camera
			canMove 		= true, 		-- if the player can move
			dead 			= false, 		--the player is dead
			dying 			= false,		--the player is dying used for death animation
			weaponDamage 	= 1, 			--damage that the weapon does
			weaponType		= "Punch", 		--type of weapon 
			equiped 		= {}, 			--what items the player has on
			inventory 		= {}, 			--all the items the player has
			quests 			= {}, 			--table holding the players quests
			stats 			= {}, 			--table holding the stats for the player 
			spells 			= {}, 			--table to hold spells for the player
			skills 			= {}, 			--table to hold skills for the player
			anim8 			= require ('scripts/anim8'),   --all for animating the player and setting up what items visible show on him
			g 			= {}, 	animation 			= {},	image 			= "", 	
			gBEHIND		= {}, 	animationBEHIND 	= {},	imageBEHIND 	= "",
			gBELT 		= {}, 	animationBELT 		= {},	imageBELT 		= "",
			gFEET 		= {},	animationFEET 		= {},	imageFEET 		= "",
			gHANDS 		= {},	animationHANDS 		= {},	imageHANDS 		= "",			 		
			gHEAD 		= {},	animationHEAD 		= {},	imageHEAD 		= "",			
			gLEGS 		= {}, 	animationLEGS 		= {},	imageLEGS 		= "",
			gTORSO 		= {},	animationTORSO 		= {},	imageTORSO 		= "",
			gWEAPON 	= {},	animationWEAPON 	= {},	imageWEAPON 	= "",
			gSHEILD 	= {},	animationSHEILD 	= {},	imageSHEILD		= "", 
			gARMS 		= {}, 	animationARMS 		= {},	imageARMS		= "",		 			 				 		 			  			
			gSHOULDERS 	= {},	animationSHOULDERS 	= {},	imageSHOULDERS	= "",

			--needs to set up items with item lists/name
			itmBODY			="male_walkcycle.png",
			itmBEHIND 		="",
			itmBELT			="BELT_leather.png",
			itmFEET			="FEET_shoes_brown.png",
			itmHANDS		="",
			itmHEAD			="HEAD_hair_blonde.png",
			itmHelm			="",
			itmLEGS 		="LEGS_pants_greenish.png",
			itmTORSO 		="TORSO_leather_armor_torso.png",	
			itmWEAPON 		="WEAPON_dagger.png",
			itmSHEILD 		="WEAPON_shield_cutout_body.png",
			itmARMS 		="TORSO_leather_armor_bracers.png",		 			 				 		 			  			
			itmSHOULDERS	="TORSO_leather_armor_shoulders.png"			
			}

-- im not sure im going to be needing more then one player 		
function Player:new (o)
	o = o or {}
	setmetatable(o, self)
    self.__index = self
    return o
end			
			
function Player:getHealth()
	return self.health
end

function Player:setHealth(v)
end

function Player:getMana()
	return self.mana
end

function Player:setMana(v)
	self.mana = v
end

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
			
function Player:getSpeed()
	return self.speed
end

function Player:setSpeed(v)
	self.speed = v
end	

function Player:getFacing()
	return self.facing
end

function Player:setFacing(v)
	self.facing = v
end		

--New player setup
function Player:setUp()
	--set up the players stats to random numbers
	self:setStats()
--	self.inventory[1] = HealthPotion:new()
	-- set up remaining stats based on equiped  items
end

function Player:setStats()
	--roll 6 sets of stats, using 4D6 and droping the lowest one (DieType,NumberDie,NumberDrop,NumberStats)
	self.stats =   {STR 		= diceroller:RollStat(6,4,1,1), 
					DEX 		= diceroller:RollStat(6,4,1,1), 
					CON 		= diceroller:RollStat(6,4,1,1),
					INT 		= diceroller:RollStat(6,4,1,1), 
					WIS 		= diceroller:RollStat(6,4,1,1), 
					CHA 		= diceroller:RollStat(6,4,1,1),
					ATTACK 		= {10}, 
					RANGEATTACK = {10}, 
					DEFENSE 	= {5}	
					}
end

function Player:getStat(v)
	--stat name is v [1] is value of that stat 
	return self.stats[v][1]
end

function Player:setAttack()

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

--function moves player to a tile
function Player:setLocation(tX,tY,facing)
	self.facing = facing
	self.tileX 	= tX
	self.tileY 	= tY
	self.x 		= self.tileX * Game.tileSize
	self.y 		= self.tileY * Game.tileSize
end

function Player:moveTile(tX,tY)
	local tile = layer.tileData(self.tileX + tX, self.tileY + tY)
	
	--checks for collision currently only nil work as no tile is set  as obstacle
	if tile == nil then return end
	if tile.properties.obstacle then return end

	-- Otherwise change the guy's tile
	self.tileX = self.tileX + tX
	self.tileY = self.tileY + tY
		
	--have the map check if we hit anything here this is what triggers map changes ect... 
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
	if Game.player_Health == 0 and self.dead == false then
		self.canMove = false
		--run a death function
		Player:setAnimation(self.facing,"deathSpin")
	end
end

function Player:getCanMove() 
	return self.canMove
end

--function for setting animations, changes sprite sheets based on animation needs and worn items
function Player:setAnimation(facing,animationType)
	--Game.checkIdle = false
	self.facing = facing
	
		Player:setImage("male_walkcycle.png")
		Player:setImageHEAD("Chars/png/walkcycle/"..self.itmHEAD )
		Player:setImageTORSO("Chars/png/walkcycle/"..self.itmTORSO)
		Player:setImageLEGS("Chars/png/walkcycle/"..self.itmLEGS)
		Player:setImageBELT("Chars/png/walkcycle/"..self.itmBELT)
		Player:setImageFEET("Chars/png/walkcycle/"..self.itmFEET)
Player:setImageWEAPON("Chars/png/walkcycle/"..self.itmHEAD)               --somethin wrong here should be set to a blank image here 
		Player:setImageSHEILD("Chars/png/walkcycle/"..self.itmSHEILD)
		Player:setImageARMS("Chars/png/walkcycle/"..self.itmARMS)
		Player:setImageSHOULDERS("Chars/png/walkcycle/"..self.itmSHOULDERS)
	
	
	if animationType == "walk"  and player.dead == false and self.canMove == true then
		
		if 	 	self.facing == "up" then 	self.animation 			= self.anim8.newAnimation('loop', self.g('2-9,1'), 0.1)
											self.animationHEAD 		= self.anim8.newAnimation('loop', self.gHEAD('2-9,1'), 0.1)
											self.animationTORSO 	= self.anim8.newAnimation('loop', self.gTORSO('2-9,1'), 0.1)
											self.animationLEGS 		= self.anim8.newAnimation('loop', self.gLEGS('2-9,1'), 0.1)
											self.animationBELT 		= self.anim8.newAnimation('loop', self.gBELT('2-9,1'), 0.1)
											self.animationFEET 		= self.anim8.newAnimation('loop', self.gFEET('2-9,1'), 0.1)
											self.animationWEAPON 	= self.anim8.newAnimation('loop', self.gWEAPON('2-9,1'), 0.1)
											self.animationSHEILD 	= self.anim8.newAnimation('loop', self.gSHEILD('2-9,1'), 0.1)
											self.animationARMS 		= self.anim8.newAnimation('loop', self.gARMS('2-9,1'), 0.1)
											self.animationSHOULDERS = self.anim8.newAnimation('loop', self.gSHOULDERS('2-9,1'), 0.1)
		elseif  self.facing == "left" then 	self.animation 			= self.anim8.newAnimation('loop', self.g('2-9,2'), 0.1)
											self.animationHEAD 		= self.anim8.newAnimation('loop', self.gHEAD('2-9,2'), 0.1)
											self.animationTORSO 	= self.anim8.newAnimation('loop', self.gTORSO('2-9,2'), 0.1)
											self.animationLEGS 		= self.anim8.newAnimation('loop', self.gLEGS('2-9,2'), 0.1)
											self.animationBELT 		= self.anim8.newAnimation('loop', self.gBELT('2-9,2'), 0.1)
											self.animationFEET 		= self.anim8.newAnimation('loop', self.gFEET('2-9,2'), 0.1)
											self.animationWEAPON 	= self.anim8.newAnimation('loop', self.gWEAPON('2-9,2'), 0.1)
											self.animationSHEILD 	= self.anim8.newAnimation('loop', self.gSHEILD('2-9,2'), 0.1)
											self.animationARMS 		= self.anim8.newAnimation('loop', self.gARMS('2-9,2'), 0.1)
											self.animationSHOULDERS = self.anim8.newAnimation('loop', self.gSHOULDERS('2-9,2'), 0.1)
		elseif  self.facing == "down" then 	self.animation 			= self.anim8.newAnimation('loop', self.g('2-9,3'), 0.1)
											self.animationHEAD 		= self.anim8.newAnimation('loop', self.gHEAD('2-9,3'), 0.1)
											self.animationTORSO 	= self.anim8.newAnimation('loop', self.gTORSO('2-9,3'), 0.1)
											self.animationLEGS 		= self.anim8.newAnimation('loop', self.gLEGS('2-9,3'), 0.1)
											self.animationBELT 		= self.anim8.newAnimation('loop', self.gBELT('2-9,3'), 0.1)
											self.animationFEET 		= self.anim8.newAnimation('loop', self.gFEET('2-9,3'), 0.1)
											self.animationWEAPON 	= self.anim8.newAnimation('loop', self.gWEAPON('2-9,3'), 0.1)
											self.animationSHEILD 	= self.anim8.newAnimation('loop', self.gSHEILD('2-9,3'), 0.1)
											self.animationARMS 		= self.anim8.newAnimation('loop', self.gARMS('2-9,3'), 0.1)
											self.animationSHOULDERS = self.anim8.newAnimation('loop', self.gSHOULDERS('2-9,3'), 0.1)
											
		elseif  self.facing == "right" then self.animation 			= self.anim8.newAnimation('loop', self.g('2-9,4'), 0.1)
											self.animationHEAD 		= self.anim8.newAnimation('loop', self.gHEAD('2-9,4'), 0.1)
											self.animationTORSO 	= self.anim8.newAnimation('loop', self.gTORSO('2-9,4'), 0.1)
											self.animationLEGS 		= self.anim8.newAnimation('loop', self.gLEGS('2-9,4'), 0.1)
											self.animationBELT 		= self.anim8.newAnimation('loop', self.gBELT('2-9,4'), 0.1)
											self.animationFEET 		= self.anim8.newAnimation('loop', self.gFEET('2-9,4'), 0.1)
											self.animationWEAPON 	= self.anim8.newAnimation('loop', self.gWEAPON('2-9,4'), 0.1)
											self.animationSHEILD 	= self.anim8.newAnimation('loop', self.gSHEILD('2-9,4'), 0.1)
											self.animationARMS 		= self.anim8.newAnimation('loop', self.gARMS('2-9,4'), 0.1)
											self.animationSHOULDERS = self.anim8.newAnimation('loop', self.gSHOULDERS('2-9,4'), 0.1)
		end
	end
	
	if animationType == "stand" and player.dead == false and self.canMove == true then
		
		if 	 	self.facing == "up" then 	self.animation 			= self.anim8.newAnimation('loop', self.g('1-1,1'), 0.1)
											self.animationHEAD 		= self.anim8.newAnimation('loop', self.gHEAD('1-1,1'), 0.1)
											self.animationTORSO 	= self.anim8.newAnimation('loop', self.gTORSO('1-1,1'), 0.1)
											self.animationLEGS 		= self.anim8.newAnimation('loop', self.gLEGS('1-1,1'), 0.1)
											self.animationBELT 		= self.anim8.newAnimation('loop', self.gBELT('1-1,1'), 0.1)
											self.animationFEET 		= self.anim8.newAnimation('loop', self.gFEET('1-1,1'), 0.1)
											self.animationWEAPON 	= self.anim8.newAnimation('loop', self.gWEAPON('1-1,1'), 0.1)
											self.animationSHEILD 	= self.anim8.newAnimation('loop', self.gSHEILD('1-1,1'), 0.1)
											self.animationARMS 		= self.anim8.newAnimation('loop', self.gARMS('1-1,1'), 0.1)
											self.animationSHOULDERS = self.anim8.newAnimation('loop', self.gSHOULDERS('1-1,1'), 0.1)
		elseif  self.facing == "left" then 	self.animation 			= self.anim8.newAnimation('loop', self.g('1-1,2'), 0.1)
											self.animationHEAD 		= self.anim8.newAnimation('loop', self.gHEAD('1-1,2'), 0.1)
											self.animationTORSO 	= self.anim8.newAnimation('loop', self.gTORSO('1-1,2'), 0.1)
											self.animationLEGS 		= self.anim8.newAnimation('loop', self.gLEGS('1-1,2'), 0.1)
											self.animationBELT 		= self.anim8.newAnimation('loop', self.gBELT('1-1,2'), 0.1)
											self.animationFEET 		= self.anim8.newAnimation('loop', self.gFEET('1-1,2'), 0.1)
											self.animationWEAPON 	= self.anim8.newAnimation('loop', self.gWEAPON('1-1,2'), 0.1)
											self.animationSHEILD 	= self.anim8.newAnimation('loop', self.gSHEILD('1-1,2'), 0.1)
											self.animationARMS 		= self.anim8.newAnimation('loop', self.gARMS('1-1,2'), 0.1)
											self.animationSHOULDERS = self.anim8.newAnimation('loop', self.gSHOULDERS('1-1,2'), 0.1)
		elseif  self.facing == "down" then 	self.animation 			= self.anim8.newAnimation('loop', self.g('1-1,3'), 0.1)
											self.animationHEAD 		= self.anim8.newAnimation('loop', self.gHEAD('1-1,3'), 0.1)
											self.animationTORSO 	= self.anim8.newAnimation('loop', self.gTORSO('1-1,3'), 0.1)
											self.animationLEGS 		= self.anim8.newAnimation('loop', self.gLEGS('1-1,3'), 0.1)
											self.animationBELT 		= self.anim8.newAnimation('loop', self.gBELT('1-1,3'), 0.1)
											self.animationFEET 		= self.anim8.newAnimation('loop', self.gFEET('1-1,3'), 0.1)
											self.animationWEAPON 	= self.anim8.newAnimation('loop', self.gWEAPON('1-1,3'), 0.1)
											self.animationSHEILD 	= self.anim8.newAnimation('loop', self.gSHEILD('1-1,3'), 0.1)
											self.animationARMS 		= self.anim8.newAnimation('loop', self.gARMS('1-1,3'), 0.1)
											self.animationSHOULDERS = self.anim8.newAnimation('loop', self.gSHOULDERS('1-1,3'), 0.1)
		elseif  self.facing == "right" then self.animation 			= self.anim8.newAnimation('loop', self.g('1-1,4'), 0.1)
											self.animationHEAD 		= self.anim8.newAnimation('loop', self.gHEAD('1-1,4'), 0.1)
											self.animationTORSO 	= self.anim8.newAnimation('loop', self.gTORSO('1-1,4'), 0.1)
											self.animationLEGS 		= self.anim8.newAnimation('loop', self.gLEGS('1-1,4'), 0.1)
											self.animationBELT 		= self.anim8.newAnimation('loop', self.gBELT('1-1,4'), 0.1)
											self.animationFEET 		= self.anim8.newAnimation('loop', self.gFEET('1-1,4'), 0.1)
											self.animationWEAPON 	= self.anim8.newAnimation('loop', self.gWEAPON('1-1,4'), 0.1)
											self.animationSHEILD 	= self.anim8.newAnimation('loop', self.gSHEILD('1-1,4'), 0.1)
											self.animationARMS 		= self.anim8.newAnimation('loop', self.gARMS('1-1,4'), 0.1)
											self.animationSHOULDERS = self.anim8.newAnimation('loop', self.gSHOULDERS('1-1,4'), 0.1)
		end
	 end
	
	if animationType == "deathSpin" then
		self.animation 			= self.anim8.newAnimation('once', self.g('1,1', '1,2', '1,3', '1,4','1,1', '1,2', '1,3', '1,4' ),  0.2)
		self.animationHEAD 		= self.anim8.newAnimation('once', self.gHEAD('1,1', '1,2', '1,3', '1,4','1,1', '1,2', '1,3', '1,4' ),  0.2)
		self.animationTORSO 	= self.anim8.newAnimation('once', self.gTORSO('1,1', '1,2', '1,3', '1,4','1,1', '1,2', '1,3', '1,4' ),  0.2)
		self.animationLEGS 		= self.anim8.newAnimation('once', self.gLEGS('1,1', '1,2', '1,3', '1,4','1,1', '1,2', '1,3', '1,4' ),  0.2)
		self.animationBELT 		= self.anim8.newAnimation('once', self.gBELT('1,1', '1,2', '1,3', '1,4','1,1', '1,2', '1,3', '1,4' ),  0.2)
		self.animationFEET 		= self.anim8.newAnimation('once', self.gFEET('1,1', '1,2', '1,3', '1,4','1,1', '1,2', '1,3', '1,4' ),  0.2)
		self.animationWEAPON 	= self.anim8.newAnimation('once', self.gWEAPON('1,1', '1,2', '1,3', '1,4','1,1', '1,2', '1,3', '1,4' ),  0.2)
		self.animationSHEILD 	= self.anim8.newAnimation('once', self.gSHEILD('1,1', '1,2', '1,3', '1,4','1,1', '1,2', '1,3', '1,4' ),  0.2)
		self.animationARMS 		= self.anim8.newAnimation('once', self.gARMS('1,1', '1,2', '1,3', '1,4','1,1', '1,2', '1,3', '1,4' ),  0.2)
		self.animationSHOULDERS = self.anim8.newAnimation('once', self.gSHOULDERS('1,1', '1,2', '1,3', '1,4','1,1', '1,2', '1,3', '1,4' ),  0.2)
	end
	
	if animationType == "death" then
		chatWindow:addText("you have died","System",base_Color ) -- this really should be moved somewhere else
		--play death music
		Player:setImage("male_hurt.png")
		Player:setImageHEAD("Chars/png/hurt/"..self.itmHEAD)
		Player:setImageTORSO("Chars/png/hurt/"..self.itmTORSO)
		Player:setImageLEGS("Chars/png/hurt/"..self.itmLEGS)
		Player:setImageBELT("Chars/png/hurt/"..self.itmBELT)
		Player:setImageFEET("Chars/png/hurt/"..self.itmFEET)
		--Player:setImageWEAPON("Chars/png/hurt/WEAPON_shield_cutout_body.png")
		--Player:setImageSHEILD("Chars/png/hurt/WEAPON_shield_cutout_body.png")
		Player:setImageARMS("Chars/png/hurt/"..self.itmARMS)
		Player:setImageSHOULDERS("Chars/png/hurt/"..self.itmSHOULDERS)
				
		self.animation 			= self.anim8.newAnimation('once', self.g('1-6,1'), 0.1)
		self.animationHEAD 		= self.anim8.newAnimation('once', self.gHEAD('1-6,1'), 0.1)
		self.animationTORSO 	= self.anim8.newAnimation('once', self.gTORSO('1-6,1'), 0.1)
		self.animationLEGS 		= self.anim8.newAnimation('once', self.gLEGS('1-6,1'), 0.1)
		self.animationBELT 		= self.anim8.newAnimation('once', self.gBELT('1-6,1'), 0.1)
		self.animationFEET 		= self.anim8.newAnimation('once', self.gFEET('1-6,1'), 0.1)
	--	self.animationWEAPON 	= self.anim8.newAnimation('once', self.gWEAPON('1-6,1'), 0.1)
	--	self.animationSHEILD 	= self.anim8.newAnimation('once', self.gSHEILD('1-6,1'), 0.1)
		self.animationARMS 		= self.anim8.newAnimation('once', self.gARMS('1-6,1'), 0.1)
		self.animationSHOULDERS = self.anim8.newAnimation('once', self.gSHOULDERS('1-6,1'), 0.1)
				
	end
	
	if animationType =="attack" and  player.dead == false then
		-- need to switch to attack sheet
		Player:setImage("male_slash.png")
		Player:setImageHEAD("Chars/png/slash/"..self.itmHEAD)
		Player:setImageTORSO("Chars/png/slash/"..self.itmTORSO)
		Player:setImageLEGS("Chars/png/slash/"..self.itmLEGS)
		Player:setImageBELT("Chars/png/slash/"..self.itmBELT)
		Player:setImageFEET("Chars/png/slash/"..self.itmFEET)
		Player:setImageWEAPON("Chars/png/slash/"..self.itmWEAPON)
		Player:setImageSHEILD("Chars/png/slash/"..self.itmSHEILD)
		Player:setImageARMS("Chars/png/slash/"..self.itmARMS)
		Player:setImageSHOULDERS("Chars/png/slash/"..self.itmSHOULDERS)
		
		if 	 	self.facing == "up" then	self.animation 			= self.anim8.newAnimation('once', self.g('1-6,1', '3,1', '2,1', '1,1' ), 0.1)
											self.animationHEAD 		= self.anim8.newAnimation('once', self.gHEAD('1-6,1', '3,1', '2,1', '1,1' ), 0.1)
											self.animationTORSO 	= self.anim8.newAnimation('once', self.gTORSO('1-6,1', '3,1', '2,1', '1,1' ), 0.1)
											self.animationLEGS 		= self.anim8.newAnimation('once', self.gLEGS('1-6,1', '3,1', '2,1', '1,1' ), 0.1)
											self.animationBELT 		= self.anim8.newAnimation('once', self.gBELT('1-6,1', '3,1', '2,1', '1,1' ), 0.1)
											self.animationFEET 		= self.anim8.newAnimation('once', self.gFEET('1-6,1', '3,1', '2,1', '1,1' ), 0.1)
											self.animationWEAPON 	= self.anim8.newAnimation('once', self.gWEAPON('1-6,1', '3,1', '2,1', '1,1' ), 0.1)
											self.animationSHEILD 	= self.anim8.newAnimation('once', self.gSHEILD('1-6,1', '3,1', '2,1', '1,1' ), 0.1)
											self.animationARMS 		= self.anim8.newAnimation('once', self.gARMS('1-6,1', '3,1', '2,1', '1,1' ), 0.1)
											self.animationSHOULDERS = self.anim8.newAnimation('once', self.gSHOULDERS('1-6,1', '3,1', '2,1', '1,1' ), 0.1)
		elseif  self.facing == "left" then 	self.animation 			= self.anim8.newAnimation('once', self.g('1-6,2', '3,2', '2,2', '1,2' ), 0.1)
											self.animationHEAD 		= self.anim8.newAnimation('once', self.gHEAD('1-6,2', '3,2', '2,2', '1,2' ), 0.1)
											self.animationTORSO 	= self.anim8.newAnimation('once', self.gTORSO('1-6,2', '3,2', '2,2', '1,2' ), 0.1)
											self.animationLEGS 		= self.anim8.newAnimation('once', self.gLEGS('1-6,2', '3,2', '2,2', '1,2' ), 0.1)
											self.animationBELT 		= self.anim8.newAnimation('once', self.gBELT('1-6,2', '3,2', '2,2', '1,2' ), 0.1)
											self.animationFEET 		= self.anim8.newAnimation('once', self.gFEET('1-6,2', '3,2', '2,2', '1,2' ), 0.1)
											self.animationWEAPON 	= self.anim8.newAnimation('once', self.gWEAPON('1-6,2', '3,2', '2,2', '1,2' ), 0.1)
											self.animationSHEILD 	= self.anim8.newAnimation('once', self.gSHEILD('1-6,2', '3,2', '2,2', '1,2' ), 0.1)
											self.animationARMS 		= self.anim8.newAnimation('once', self.gARMS('1-6,2', '3,2', '2,2', '1,2' ), 0.1)
											self.animationSHOULDERS = self.anim8.newAnimation('once', self.gSHOULDERS('1-6,2', '3,2', '2,2', '1,2' ), 0.1)
		elseif  self.facing == "down" then 	self.animation 			= self.anim8.newAnimation('once', self.g('1-6,3', '3,3', '2,3', '1,3' ), 0.1)
											self.animationHEAD 		= self.anim8.newAnimation('once', self.gHEAD('1-6,3', '3,3', '2,3', '1,3' ), 0.1)
											self.animationTORSO 	= self.anim8.newAnimation('once', self.gTORSO('1-6,3', '3,3', '2,3', '1,3' ), 0.1)
											self.animationLEGS 		= self.anim8.newAnimation('once', self.gLEGS('1-6,3', '3,3', '2,3', '1,3' ), 0.1)
											self.animationBELT 		= self.anim8.newAnimation('once', self.gBELT('1-6,3', '3,3', '2,3', '1,3' ), 0.1)
											self.animationFEET 		= self.anim8.newAnimation('once', self.gFEET('1-6,3', '3,3', '2,3', '1,3' ), 0.1)
											self.animationWEAPON 	= self.anim8.newAnimation('once', self.gWEAPON('1-6,3', '3,3', '2,3', '1,3' ), 0.1)
											self.animationSHEILD 	= self.anim8.newAnimation('once', self.gSHEILD('1-6,3', '3,3', '2,3', '1,3' ), 0.1)
											self.animationARMS 		= self.anim8.newAnimation('once', self.gARMS('1-6,3', '3,3', '2,3', '1,3' ), 0.1)
											self.animationSHOULDERS = self.anim8.newAnimation('once', self.gSHOULDERS('1-6,3', '3,3', '2,3', '1,3' ), 0.1)
		elseif  self.facing == "right" then self.animation 			= self.anim8.newAnimation('once', self.g('1-6,4', '3,4', '2,4', '1,4' ), 0.1)
											self.animationHEAD 		= self.anim8.newAnimation('once', self.gHEAD('1-6,4', '3,4', '2,4', '1,4' ), 0.1)
											self.animationTORSO 	= self.anim8.newAnimation('once', self.gTORSO('1-6,4', '3,4', '2,4', '1,4' ), 0.1)
											self.animationLEGS 		= self.anim8.newAnimation('once', self.gLEGS('1-6,4', '3,4', '2,4', '1,4' ), 0.1)
											self.animationBELT 		= self.anim8.newAnimation('once', self.gBELT('1-6,4', '3,4', '2,4', '1,4' ), 0.1)
											self.animationFEET 		= self.anim8.newAnimation('once', self.gFEET('1-6,4', '3,4', '2,4', '1,4' ), 0.1)
											self.animationWEAPON 	= self.anim8.newAnimation('once', self.gWEAPON('1-6,4', '3,4', '2,4', '1,4' ), 0.1)
											self.animationSHEILD 	= self.anim8.newAnimation('once', self.gSHEILD('1-6,4', '3,4', '2,4', '1,4' ), 0.1)
											self.animationARMS 		= self.anim8.newAnimation('once', self.gARMS('1-6,4', '3,4', '2,4', '1,4' ), 0.1)
											self.animationSHOULDERS = self.anim8.newAnimation('once', self.gSHOULDERS('1-6,4', '3,4', '2,4', '1,4' ), 0.1)
		end
	 end
	 
	 if animationType =="spell" and player.dead == false then
		Player:setImage("male_spellcast.png")
		Player:setImageHEAD("Chars/png/spellcast/"..self.itmHEAD)
		Player:setImageTORSO("Chars/png/spellcast/"..self.itmTORSO)
		Player:setImageLEGS("Chars/png/spellcast/"..self.itmLEGS)
		Player:setImageBELT("Chars/png/spellcast/"..self.itmBELT)
		Player:setImageFEET("Chars/png/spellcast/"..self.itmFEET)
		Player:setImageWEAPON("Chars/png/spellcast/"..self.itmWEAPON)
		--Player:setImageSHEILD("Chars/png/spellcast/WEAPON_shield_cutout_body.png")
		Player:setImageARMS("Chars/png/spellcast/"..self.itmARMS)
		Player:setImageSHOULDERS("Chars/png/spellcast/"..self.itmSHOULDERS)

		if 		self.facing == "up" then	self.animation 			= self.anim8.newAnimation('once', self.g('1-7,1', '4,1', '3,1', '2,1', '1,1' ), 0.1)
											self.animationHEAD 		= self.anim8.newAnimation('once', self.gHEAD('1-7,1', '4,1', '3,1', '2,1', '1,1' ), 0.1)
											self.animationTORSO 	= self.anim8.newAnimation('once', self.gTORSO('1-7,1', '4,1', '3,1', '2,1', '1,1' ), 0.1)
											self.animationLEGS 		= self.anim8.newAnimation('once', self.gLEGS('1-7,1', '4,1', '3,1', '2,1', '1,1' ), 0.1)
											self.animationBELT 		= self.anim8.newAnimation('once', self.gBELT('1-7,1', '4,1', '3,1', '2,1', '1,1' ), 0.1)
											self.animationFEET 		= self.anim8.newAnimation('once', self.gFEET('1-7,1', '4,1', '3,1', '2,1', '1,1' ), 0.1)
											self.animationWEAPON 	= self.anim8.newAnimation('once', self.gWEAPON('1-7,1', '4,1', '3,1', '2,1', '1,1' ), 0.1)
											self.animationSHEILD 	= self.anim8.newAnimation('once', self.gSHEILD('1-7,1', '4,1', '3,1', '2,1', '1,1' ), 0.1)
											self.animationARMS 		= self.anim8.newAnimation('once', self.gARMS('1-7,1', '4,1', '3,1', '2,1', '1,1' ), 0.1)
											self.animationSHOULDERS = self.anim8.newAnimation('once', self.gSHOULDERS('1-7,1', '4,1', '3,1', '2,1', '1,1' ), 0.1)
		elseif  self.facing == "left" then 	self.animation 			= self.anim8.newAnimation('once', self.g('1-7,2', '4,2', '3,2', '2,2', '1,2' ), 0.1)
											self.animationHEAD 		= self.anim8.newAnimation('once', self.gHEAD('1-7,2', '4,2', '3,2', '2,2', '1,2' ), 0.1)
											self.animationTORSO 	= self.anim8.newAnimation('once', self.gTORSO('1-7,2', '4,2', '3,2', '2,2', '1,2' ), 0.1)
											self.animationLEGS 		= self.anim8.newAnimation('once', self.gLEGS('1-7,2', '4,2', '3,2', '2,2', '1,2' ), 0.1)
											self.animationBELT 		= self.anim8.newAnimation('once', self.gBELT('1-7,2', '4,2', '3,2', '2,2', '1,2' ), 0.1)
											self.animationFEET 		= self.anim8.newAnimation('once', self.gFEET('1-7,2', '4,2', '3,2', '2,2', '1,2' ), 0.1)
											self.animationWEAPON 	= self.anim8.newAnimation('once', self.gWEAPON('1-7,2', '4,2', '3,2', '2,2', '1,2' ), 0.1)
											self.animationSHEILD 	= self.anim8.newAnimation('once', self.gSHEILD('1-7,2', '4,2', '3,2', '2,2', '1,2' ), 0.1)
											self.animationARMS 		= self.anim8.newAnimation('once', self.gARMS('1-7,2', '4,2', '3,2', '2,2', '1,2' ), 0.1)
											self.animationSHOULDERS = self.anim8.newAnimation('once', self.gSHOULDERS('1-7,2', '4,2', '3,2', '2,2', '1,2' ), 0.1)
		elseif  self.facing == "down" then 	self.animation 			= self.anim8.newAnimation('once', self.g('1-7,3', '4,3', '3,3', '2,3', '1,3' ), 0.1)
											self.animationHEAD 		= self.anim8.newAnimation('once', self.gHEAD('1-7,3', '4,3', '3,3', '2,3', '1,3' ), 0.1)
											self.animationTORSO 	= self.anim8.newAnimation('once', self.gTORSO('1-7,3', '4,3', '3,3', '2,3', '1,3' ), 0.1)
											self.animationLEGS 		= self.anim8.newAnimation('once', self.gLEGS('1-7,3', '4,3', '3,3', '2,3', '1,3' ), 0.1)
											self.animationBELT 		= self.anim8.newAnimation('once', self.gBELT('1-7,3', '4,3', '3,3', '2,3', '1,3' ), 0.1)
											self.animationFEET 		= self.anim8.newAnimation('once', self.gFEET('1-7,3', '4,3', '3,3', '2,3', '1,3' ), 0.1)
											self.animationWEAPON 	= self.anim8.newAnimation('once', self.gWEAPON('1-7,3', '4,3', '3,3', '2,3', '1,3' ), 0.1)
											self.animationSHEILD 	= self.anim8.newAnimation('once', self.gSHEILD('1-7,3', '4,3', '3,3', '2,3', '1,3' ), 0.1)
											self.animationARMS 		= self.anim8.newAnimation('once', self.gARMS('1-7,3', '4,3', '3,3', '2,3', '1,3' ), 0.1)
											self.animationSHOULDERS = self.anim8.newAnimation('once', self.gSHOULDERS('1-7,3', '4,3', '3,3', '2,3', '1,3' ), 0.1)
		elseif  self.facing == "right" then self.animation 			= self.anim8.newAnimation('once', self.g('1-7,4', '4,4', '3,4', '2,4', '1,4' ), 0.1)
											self.animationHEAD 		= self.anim8.newAnimation('once', self.gHEAD('1-7,4', '4,4', '3,4', '2,4', '1,4' ), 0.1)
											self.animationTORSO 	= self.anim8.newAnimation('once', self.gTORSO('1-7,4', '4,4', '3,4', '2,4', '1,4' ), 0.1)
											self.animationLEGS 		= self.anim8.newAnimation('once', self.gLEGS('1-7,4', '4,4', '3,4', '2,4', '1,4' ), 0.1)
											self.animationBELT 		= self.anim8.newAnimation('once', self.gBELT('1-7,4', '4,4', '3,4', '2,4', '1,4' ), 0.1)
											self.animationFEET 		= self.anim8.newAnimation('once', self.gFEET('1-7,4', '4,4', '3,4', '2,4', '1,4' ), 0.1)
											self.animationWEAPON 	= self.anim8.newAnimation('once', self.gWEAPON('1-7,4', '4,4', '3,4', '2,4', '1,4' ), 0.1)
											self.animationSHEILD 	= self.anim8.newAnimation('once', self.gSHEILD('1-7,4', '4,4', '3,4', '2,4', '1,4' ), 0.1)
											self.animationARMS 		= self.anim8.newAnimation('once', self.gARMS('1-7,4', '4,4', '3,4', '2,4', '1,4' ), 0.1)
											self.animationSHOULDERS = self.anim8.newAnimation('once', self.gSHOULDERS('1-7,4', '4,4', '3,4', '2,4', '1,4' ), 0.1)
		end
	 end 
end

--called when key is released
function Player:keyreleased(k)
	
	if k == "up" or k== "w" then
		self.up 		= false
		self.animating 	= false
	end
		
	if k == "down" or k== "s" then
		self.down 		= false
		self.animating 	= false
	end	
		
	if k == "left" or k== "a" then
		self.left 		= false
		self.animating 	= false
	end
		
	if k == "right" or k== "d" then
		self.right 		= false
		self.animating 	= false
	end	
	
	-- test if any movment buttons are down if none are go to stand animation
	if self.up == false and self.down == false and self.left == false and self.right == false then
		--should try and set up a idle animation
		self:setAnimation(self.facing,"stand")
	end
	
end

function Player:keypressed(k)

	self.up		= false
	self.down	= false
	self.left	= false
	self.right	= false
		
		if self.up == true or self.down == true or self.right == true or self.left == true 	then	--Why am i testing this and not doing any thing with it?
		
		else
			if k == "up" or k== "w" then
				self.up 		= true
				self:setAnimation("up","walk")
				self.animating 	= true 
			end
				
			if k == "down" or k== "s" then
				self.down 		= true
				self:setAnimation("down","walk")
				self.animating 	= true
			end	
					
			if k == "left" or k== "a" then
				self.left 		= true
				self:setAnimation("left","walk")
				self.animating 	= true
			end
					
			if k == "right" or k== "d" then
				self.right 		= true
				self:setAnimation("right","walk")
				self.animating 	= true
			end	
		end	

	if k == " " then
		self:setAnimation(self.facing,"attack")
		self.animating 	= true
		--check if there is something there(enemy) and deal it damage
		self:attack()
	end	
	
	if k == "p" then
		self:setAnimation(self.facing,"spell")
		self.animating 	= true
	end	

	--testing function  its a telaporter or somethin like that
	if k == "g" and player.dead == false then
		testTemp = 	HealthPotion:new()
		inventoryscreen:addItemToSlot( 1, "Why does it say im a slot?" )
		self:setLocation(5,5,"down")
	end	
end


--attack function this should be  change to more oldschool rpg style
function Player:attack()
	--check for enemy and that your facing it
	local tX = 0
	local tY = 0
	
	if player.facing == "up" 	then tY	= -1 end
	if player.facing == "down" 	then tY = 1	 end
	if player.facing == "left" 	then tX = -1 end
	if player.facing == "right" then tX = 1  end

	-- currently it does 1 damage as punch is the only weapon we have
	for k,enemy in ipairs(enemyHolder.container[Game.currentMap]) do	
		if enemy:getTileX() == self.tileX + tX and enemy:getTileY() == self.tileY + tY and enemy:getDeath() == false then
			--do some fancy math and see if the hit really does hit and if it does any damage
			-- roll 1d100  if that is under the attack stat - the defence stat of enemy then it is a hit.
			atkRoll = diceroller:Roll(100,1)
			chatWindow:addText("attack roll ".. atkRoll ,"System",base_Color)
			
			--if atkRoll
			
			enemy:setHealth(enemy:getHealth() - self.weaponDamage)	
		--	chatWindow:addText("you hit ".. enemy:getName() ,"System",base_Color)
			return
		end
	end
end
		

--set the images
function Player:setImage(v)	
	self.image 	= love.graphics.newImage("images/".. v)
	self.g 		= self.anim8.newGrid(64,64, self.image:getWidth(),self.image:getHeight())
end

function Player:setImageBEHIND(v)	
	self.imageBEHIND	= love.graphics.newImage("images/".. v)
	self.gBEHIND 		= self.anim8.newGrid(64,64, self.imageBEHIND:getWidth(),self.imageBEHIND:getHeight())
end

function Player:setImageBELT(v)	
	self.imageBELT 	= love.graphics.newImage("images/".. v)
	self.gBELT 		= self.anim8.newGrid(64,64, self.imageBELT:getWidth(),self.imageBELT:getHeight())
end

function Player:setImageFEET(v)	
	self.imageFEET	= love.graphics.newImage("images/".. v)
	self.gFEET 		= self.anim8.newGrid(64,64, self.imageFEET:getWidth(),self.imageFEET:getHeight())
end

function Player:setImageHANDS(v)	
	self.imageHANDS = love.graphics.newImage("images/".. v)
	self.gHANDS 	= self.anim8.newGrid(64,64, self.imageHANDS:getWidth(),self.imageHANDS:getHeight())
end

function Player:setImageHEAD(v)	
	self.imageHEAD 	= love.graphics.newImage("images/".. v)
	self.gHEAD 		= self.anim8.newGrid(64,64, self.imageHEAD:getWidth(),self.imageHEAD:getHeight())
end

function Player:setImageLEGS(v)	
	self.imageLEGS 	= love.graphics.newImage("images/".. v)
	self.gLEGS 		= self.anim8.newGrid(64,64, self.imageLEGS:getWidth(),self.imageLEGS:getHeight())
end

function Player:setImageTORSO(v)	
	self.imageTORSO = love.graphics.newImage("images/".. v)
	self.gTORSO 	= self.anim8.newGrid(64,64, self.imageTORSO:getWidth(),self.imageTORSO:getHeight())
end

function Player:setImageWEAPON(v)	
	self.imageWEAPON	= love.graphics.newImage("images/".. v)
	self.gWEAPON 		= self.anim8.newGrid(64,64, self.imageWEAPON:getWidth(),self.imageWEAPON:getHeight())
end

function Player:setImageSHEILD(v)	
	self.imageSHEILD 	= love.graphics.newImage("images/".. v)
	self.gSHEILD 		= self.anim8.newGrid(64,64, self.imageSHEILD:getWidth(),self.imageSHEILD:getHeight())
end

function Player:setImageARMS(v)	
	self.imageARMS 		= love.graphics.newImage("images/".. v)
	self.gARMS 			= self.anim8.newGrid(64,64, self.imageARMS:getWidth(),self.imageARMS:getHeight())
end

function Player:setImageSHOULDERS(v)	
	self.imageSHOULDERS = love.graphics.newImage("images/".. v)
	self.gSHOULDERS 	= self.anim8.newGrid(64,64, self.imageSHOULDERS:getWidth(),self.imageSHOULDERS:getHeight())
end


function Player:update(dt)

	local tempY 		= 0
	local tempX 		= 0
		
	if self.up == false and self.down == false and self.right == false and self.left == false	then	
		if love.keyboard.isDown( "up" ) then
			self.up 		= true
			self:setAnimation("up","walk")
			self.animating 	= true
		elseif love.keyboard.isDown( "down" ) then
			self.down 		= true
			self:setAnimation("down","walk")
			self.animating 	= true
		elseif love.keyboard.isDown( "left" ) then
			self.left	 	= true
			self:setAnimation("left","walk")
			self.animating 	= true
		elseif love.keyboard.isDown( "right" ) then
			self.right 		= true
			self:setAnimation("right","walk")
			self.animating 	= true
		end
	end
	
	--up
	if self.up and self.canMove then	
		self.animating = true
		tempY = self.y - self.speed * dt 
		if tempY/Game.tileSize <= self.tileY -1 then
			self:checkTile(0,-1)
			if self.noWalk then 
				self.animating = false
			else
				self.y = tempY
				self:moveTile(0,-1)
			end	
		else
			self.y = tempY
		end
	end	

	---down	
	if self.down and self.canMove then	
		self.animating = true
		tempY = self.y  + self.speed * dt
		if tempY/Game.tileSize >= self.tileY  then
			self:checkTile(0,1)
			if self.noWalk then 
				self.animating = false
			else
				self.y = tempY
				self:moveTile(0,1)
			end	
		else
			self.y = tempY
		end
	end	

	--left
	if self.left and self.canMove then	
		self.animating = true
		tempX = self.x  - self.speed * dt 
		if tempX/Game.tileSize <= self.tileX  then
			self:checkTile(-1,0)
			if self.noWalk then 
				self.animating = false
			else
				self.x = tempX
				self:moveTile(-1,0)
			end	
		else
			self.x = tempX
		end
	end	

	--right
	if self.right and self.canMove then	
		self.animating = true
		tempX = self.x  + self.speed * dt 
		if tempX/Game.tileSize >= self.tileX + 1 then
			self:checkTile(1,0)
			if self.noWalk then 
				self.animating = false
			else
				self.x = tempX
				self:moveTile(1,0)
			end	
		else
			self.x = tempX
		end
	end	
	
	if self.animating == false then
	Game.checkIdle = true
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
	--animation updateblock
	self.animation:update(dt)
	self.animationHEAD:update(dt)
	self.animationTORSO:update(dt)
	self.animationLEGS:update(dt)
	self.animationBELT:update(dt)
	self.animationFEET:update(dt)
	self.animationWEAPON:update(dt)
	self.animationSHEILD:update(dt)
	self.animationARMS:update(dt)
	self.animationSHOULDERS:update(dt)	
	--self.animationHANDS:update(dt)
	--self.animationBEHIND:update(dt)
end

function Player:draw()
	--the off set is to correctly place the player
	self.animation			:draw(self.image, 			self.x -32  , self.y -28 )
	self.animationHEAD		:draw(self.imageHEAD, 		self.x -32  , self.y -28 )
	self.animationTORSO		:draw(self.imageTORSO, 		self.x -32  , self.y -28 )
	self.animationLEGS		:draw(self.imageLEGS,		self.x -32  , self.y -28 )
	self.animationBELT		:draw(self.imageBELT, 		self.x -32  , self.y -28 )
	self.animationFEET		:draw(self.imageFEET, 		self.x -32  , self.y -28 )
	self.animationWEAPON	:draw(self.imageWEAPON, 	self.x -32  , self.y -28 )
	self.animationARMS		:draw(self.imageARMS, 		self.x -32  , self.y -28 )
	self.animationSHOULDERS	:draw(self.imageSHOULDERS,	self.x -32  , self.y -28 )
	self.animationSHEILD	:draw(self.imageSHEILD, 	self.x -32  , self.y -28 )
	--self.animationHANDS:draw(self.imageLEGS, self.x -32  , self.y -28 )
	--self.animationBEHIND:draw(self.imageLEGS, self.x -32  , self.y -28 )

	--love.graphics.print(self.name, self.x - 20 , self.y - 30)
end






			