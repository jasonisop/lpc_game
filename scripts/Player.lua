--[[
	the Player class 
		
--]]

Player = {	name 			= "Hero", 		--Player name set in char builder
			class 			= "", 			--Player class set in char builder
			race 			= "human",		--Player race set in char builder
			speed 			= 150, 			--how fast the player moves
			camSpeed 		= 150, 			--speed that that camera moves on the tilemap
			health 			= 10, 			--players  current heath
			startingHealth 	= 10,			--players heath when starting the game
			water 			= 10, 			--players current water
			startingWater 	= 10, 			--players water when starting the game
			enemyType 		= "basic", 		--Not sure**** i think brought over from enemy class
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

			itmBODY			="male_walkcycle.png",
			itmBEHIND 		="",
			itmBELT			="BELT_leather.png",
			itmFEET			="FEET_shoes_brown.png",
			itmHANDS		="",
			itmHEAD			="HEAD_hair_blonde.png",
			itmLEGS 		="LEGS_pants_greenish.png",
			itmTORSO 		="TORSO_leather_armor_torso.png",	
			itmWEAPON 		="",
			itmSHEILD 		="WEAPON_shield_cutout_body.png",
			itmARMS 		="TORSO_leather_armor_bracers.png",		 			 				 		 			  			
			itmSHOULDERS	="TORSO_leather_armor_shoulders.png"			
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
	--loop thru the equiped table and add up all attack bonus
	local tempCount = 0
	
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
	self.tileX 	= tX
	self.tileY 	= tY
	self.x 		= self.tileX * 32
	self.y 		= self.tileY * 32
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
	--- need way to set image to what the player is reallly wearing. also need to switch from using multi char sprites to one large one.
	
	self.facing = facing
	
		Player:setImage("male_walkcycle.png")
		Player:setImageHEAD("Chars/png/walkcycle/"..self.itmHEAD )
		Player:setImageTORSO("Chars/png/walkcycle/"..self.itmTORSO)
		Player:setImageLEGS("Chars/png/walkcycle/"..self.itmLEGS)
		Player:setImageBELT("Chars/png/walkcycle/"..self.itmBELT)
		Player:setImageFEET("Chars/png/walkcycle/"..self.itmFEET)
			Player:setImageWEAPON("Chars/png/walkcycle/"..self.itmHEAD) --somethin wrong here
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
		-- Player:setImage("male_walkcycle.png")
		-- Player:setImageHEAD("Chars/png/walkcycle/HEAD_hair_blonde.png")
		-- Player:setImageTORSO("Chars/png/walkcycle/TORSO_leather_armor_torso.png")
		-- Player:setImageLEGS("Chars/png/walkcycle/LEGS_pants_greenish.png")
		-- Player:setImageBELT("Chars/png/walkcycle/BELT_leather.png")
		-- Player:setImageFEET("Chars/png/walkcycle/FEET_shoes_brown.png")
		-- Player:setImageWEAPON("Chars/png/walkcycle/WEAPON_shield_cutout_body.png")
		-- Player:setImageSHEILD("Chars/png/walkcycle/WEAPON_shield_cutout_body.png")
		-- Player:setImageARMS("Chars/png/walkcycle/TORSO_leather_armor_bracers.png")
		-- Player:setImageSHOULDERS("Chars/png/walkcycle/TORSO_leather_armor_shoulders.png")
		
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
		chatWindow:addText("you have died" )
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
		Player:setImageBELT("Chars/png/slash/"..self.itmHEAD)
		Player:setImageFEET("Chars/png/slash/"..self.itmHEAD)
		Player:setImageWEAPON("Chars/png/slas"..self.itmHEAD)
		Player:setImageSHEILD("Chars/png/slash/"..self.itmHEAD)
		Player:setImageARMS("Chars/png/slash/"..self.itmHEAD)
		Player:setImageSHOULDERS("Chars/png/slash/"..self.itmHEAD)
		
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
		Player:setImageHEAD("Chars/png/spellcast/HEAD_hair_blonde.png")
		Player:setImageTORSO("Chars/png/spellcast/TORSO_leather_armor_torso.png")
		Player:setImageLEGS("Chars/png/spellcast/LEGS_pants_greenish.png")
		Player:setImageBELT("Chars/png/spellcast/BELT_leather.png")
		Player:setImageFEET("Chars/png/spellcast/FEET_shoes_brown.png")
		Player:setImageWEAPON("Chars/png/spellcast/LEGS_pants_greenish.png")
		Player:setImageSHEILD("Chars/png/spellcast/WEAPON_shield_cutout_body.png")
		Player:setImageARMS("Chars/png/spellcast/TORSO_leather_armor_bracers.png")
		Player:setImageSHOULDERS("Chars/png/spellcast/TORSO_leather_armor_shoulders.png")

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
	
	if k == "up" then
		self.up 		= false
		self.animating 	= false
	end
		
	if k == "down" then
		self.down 		= false
		self.animating 	= false
	end	
		
	if k == "left" then
		self.left 		= false
		self.animating 	= false
	end
		
	if k == "right" then
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
		
		if self.up == true or self.down == true or self.right == true or self.left == true 	then	
		
		else
			if k == "up" then
				self.up 		= true
				self:setAnimation("up","walk")
				self.animating 	= true 
			end
				
			if k == "down" then
				self.down 		= true
				self:setAnimation("down","walk")
				self.animating 	= true
			end	
					
			if k == "left" then
				self.left 		= true
				self:setAnimation("left","walk")
				self.animating 	= true
			end
					
			if k == "right" then
				self.right 		= true
				self:setAnimation("right","walk")
				self.animating 	= true
			end	
		end	

	--add in other key presses for attack and cast ect...
		--testing
	if k == "a" then
		self:setAnimation(self.facing,"attack")
		self.animating 	= true
		--check if there is something there(enemy) and deal it damage
		self:attack()
	end	
	if k == "p" then
		self:setAnimation(self.facing,"spell")
		self.animating 	= true
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
	local camera_up 	= false
	local camera_down 	= false
	local camera_left 	= false
	local camera_right 	= false	
	self.speed 			= 150
	
	
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
			
		--check if this will bring us to a no walk tile
		tempY = self.y - self.speed * dt 
			
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
				camera_up = false
				global.ty = global.ty + self.camSpeed * dt 
			else
				camera_up = true
				--self.speed = 0
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
				camera_down = false
				global.ty = global.ty - self.camSpeed * dt
			else
				camera_down = true
				self.speed = 0
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
				camera_left = false
				global.tx = global.tx + self.camSpeed *dt	
			else
				camera_left = true
				self.speed = 0
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
				camera_right = false
				global.tx = global.tx - self.camSpeed *dt 
			else
				camera_right = true
				self.speed = 0
			end
		end
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

	-- love.graphics.print(self.name, self.x - 20 , self.y - 30)

end



