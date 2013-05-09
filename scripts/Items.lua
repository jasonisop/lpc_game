--[[
	this class stores all the items in the game in one place this is NOT the players inventory 
	
]]


--add all the items requires here
require("scripts/itemscripts/HeathPotion")



Items = {container ={} }

function Items:new (o)
	o = o or {}
	setmetatable(o, self)
    self.__index = self
    return o
end

function Items:registerItems(...)
	for k, item in ipairs(arg)do
	table.insert(self.container,item) 
	end
end

function Items:getDiscription(itemId)

	for k, item in ipairs(self.container)do	
		
		if item.itemId == itemId then
			return item.itemDiscription
		end
	end
end

function Items:addAndRegister()
	
end
