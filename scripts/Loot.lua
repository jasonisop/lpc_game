--[[
	Loot class for loot boxe's or any thing else that gives rewards will need to tie-in with inventory/character sheet
	
	


--]]

Loot = { 
		exp 		= 0, 			--amount of exp to add to the player
		items 		= {},			--holds any items in the chest
		chest	 	= false,		--if there is a phyical object to spawn
		chestType 	= "",			--what type of object to spawn
		looted		= false,		--if this has be looted allready
		respawn		= false,		--if you can respawn
		respawnTime = 120,  		--this is time in seconds

		}


function Loot:new (o)
	o = o or {}
	setmetatable(o, self)
    self.__index = self
    return o
end

function Loot:update(dt)
end

--will draw a loot chest or what ever object the loot is if there is one. also will need to draw the loot gui window, or add a loot window to inventory
function Loot:draw()
end	

function Loot:mousereleased(x, y, button)
end

function Loot:mousepressed(x, y, button)
end

function Loot:award()
	
	--check if this has been looted before
	if self.looted == false then

	end

end

