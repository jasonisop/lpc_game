--this is for setting up a FATE player


Player = 	{
				name 	= "",	
				aspects	= {},	--chosen by player, can effect random quests to help keep the player into the stories
				stunts	= {},
				skills	= {},
				karma	= 0,
			}


function Player:new (o)
	o = o or {}
	setmetatable(o, self)
    self.__index = self
    return o
end	


function Player:addAspect(aspect)
	table.insert(self.aspects,aspect)
end

function Player:useAspect(aspect)
end	