


Effect = 				{ 					
							type 		= "",				--what kind of effect is it heal harm buff de-buff root 
							target		= "",
							ammount 	= 0,		
							duration	= 0,
						}


local SpellEffects = 	{ 									--table to hold effect types 
							"WATERBREATHING"				--able to breath under water
							"LEVITATE"						--able to walk over pits 
							"PARALYSIS"						--un able to move, attack, or cast spells
							"ROOT"							--un able to move
							"RESURRECTION"					--brings back the dead
							"STUN"							--un able to attak or cash spells
							"SLEEP"							--fall asleep
							"CHARM"							--turn into an friend
							"INTERRUPT"						--stop a spell being cast
							"BANISH"						--removes a summoned monster or ally
							"SUMMONMONSTER"					--summons a monster
							"SUMMONALLY"					--summons a friend
						}							

local DamageTypes = 	{										--table to hold damage types
							"FIRE",	
							"COLD",	
							"POISON",	
							"DISEASE",	
							"ACID",	
							"ELECTRICAL",	
							"MAGICAL",
							"SLASHING",	
							"IMPACT",	
							"PIERCING",	
							"CLEAVE",	
							"PUMMEL",	
							"PIERCING",	
							"CLAWS",	
							"CRITICAL",	
							"PHYSICAL",	
							"DRAIN",
							"UNSTOPPABLE",
						}

local ResistanceTypes = {									--table to old resistance types
							"PHYSICAL"	
							"MAGICAL"	
							"FIRE"	
							"COLD"	
							"POISON"	
							"DISEASE"	
							"ACID"	
							"ELECTRICAL"	
							"UNSTOPPABLE"	
						}

function Effect:new (o)
	o = o or {}
	setmetatable(o, self)
    self.__index = self
    return o
end