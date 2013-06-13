--New Player Class
Player = {	name 			= "Hero", 		--Player name set in char builder
			class 			= "", 			--Player class set in char builder
			race 			= "human",		--Player race set in char builder
			speed 			= 150, 			--how fast the player moves
			health 			= 10, 			--players  current heath
			startingHealth 	= 10,			--players heath when starting the game
			mana 			= 10, 			--players current mana
			startingWater 	= 10, 			--players water when starting the game
			x 				= 100, 			--players  x location on the screen
			y 				= 100, 			--players y location on the screen
			tileX 			= 0, 			-- the tileX that the player is on on the tilemap
			tileY 			= 0,			--the tileY that the player is on on the tilemap
			noWalk 			= false, 		--if the player can move
			animating 		= true, 		--If the player is animating
			animstarted 	= false, 		--used to keep from overriding animation
			facing 			= "down", 		--what direction the player is looking
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
			itmHelm			="",
			itmLEGS 		="LEGS_pants_greenish.png",
			itmTORSO 		="TORSO_leather_armor_torso.png",	
			itmWEAPON 		="WEAPON_dagger.png",
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
			