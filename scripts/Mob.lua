local Mob	= 	{	name			= "Mobile Object",
					class 			= "", 			
					race 			= "",		
					speed 			= 160, 			--how fast the Mob moves this should also effect the camera  keep to power of 2
					currentHealth	= 10, 			--Mob current heath
					startingHealth 	= 10,			--Mob heath when starting the game
					CurrentMana		= 10, 			--Mob current mana
					startingMana 	= 10, 			--Mob mana when starting the game
					x 				= 100, 			--Mob  x location on the screen
					y 				= 100, 			--Mob y location on the screen
					tileX 			= 0, 			-- the tileX that the Mob is on on the tilemap
					tileY 			= 0,			--the tileY that the Mob is on on the tilemap
					canMove 		= true, 		-- if the Mob can move
					dead 			= false, 		--the Mob is dead
					dying 			= false,		--the Mob is dying used for death animation
					weaponDamage 	= 1, 			--damage that the weapon does
					weaponType		= "Punch", 		--type of weapon 
					equiped 		= {}, 			--what items the Mob has on
					inventory 		= {}, 			--all the items the Mob has
					quests 			= {}, 			--table holding the Mob quests
					stats 			= {}, 			--table holding the stats for the Mob 
					spells 			= {}, 			--table to hold spells for the Mob
					skills 			= {}, 			--table to hold skills for the Mob


---------------------------------------------------NEED TO CHECK IF THIS WILL BE NEEDED-----------					
--------------------------------------------------------------------------------------------------
					up 				= false, 		--used for camera	NEED TO CHECK ON THIS
					down 			= false, 		--used for camera
					left 			= false, 		--used for camera
					right 			= false,  		--used for camera
--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------



-----------------------------------------------------This is used for animations this needs changed
---------------------------------------------------------------------------------------------------
					noWalk 			= false, 		--if the Mob can move
					animating 		= true, 		--If the Mob is animating
					animstarted 	= false, 		--used to keep from overriding animation
					facing 			= "down", 		--what direction the Mob is looking
					anim8 			= require ('scripts/anim8'),   --all for animating the Mob and setting up what items visible show on him
					gBODY		= {}, 	animationBODY		= {},	imageBODY		= "", 	
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
					itmSHOULDERS	="TORSO_leather_armor_shoulders.png",	

				}


function Mob:new( o)
		o = o or {}
		setmetatable(o, self)
	    self.__index = self
	    return o
	end

function Mob:update(dt)
end


--this function is used to place the Mob in the correct layer of the tilemap.
function Mob:placeInLayer()
end


function Mob:draw()
	love.graphics.print( self.name, 10, 10 )
end


return Mob