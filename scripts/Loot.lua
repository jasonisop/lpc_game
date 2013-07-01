--[[
	Loot class for loot boxe's or any thing else that gives rewards will need to tie-in with inventory/character sheet
	
	


--]]

Loot = { 
		exp 		= 0,
		items 		= {},
		chest		= false,
		chestType 	= "",

		}


function Loot:new (o)
	o = o or {}
	setmetatable(o, self)
    self.__index = self
    return o
end

function Loot:update(dt)
end

function Loot:draw()
end	

function Loot:mousereleased(x, y, button)
end

function Loot:mousepressed(x, y, button)
end

