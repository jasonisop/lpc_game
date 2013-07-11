--[[
	this class stores all the items in the game in one place this is NOT the players inventory 
	
]]


--add all the items requires here
--require("scripts/itemscripts/HeathPotion")



Item = {		itemId 			= 0000,															--this is the item id used in place of name
				itemName 		= "New Item", 													--item name used in place of id
				itemImage 		= love.graphics.newImage( "images/Icons/healthPotion.png"), 	--image
				stackable 		= false, 														--if there can be more then 1 of the item in a slot
				stackAmount 	= 0, 															--how many you can stack if you can stack them
				destroyUse 		= false, 														--if the item is destroyed upon use or not
				itemType 		= "worn",														--the type of item(Weapons,consumable,wearable)
				questItem		=false,															--if this is a item used in a quest
				value 			= 0, 															--the value of the item, currently there is no money system in place
				weight 			= 0, 															--how much the item weighs, needed if we use a weight system
				nodrop 			= false, 														--if you can drop/destroy item or not
				uses 			= 0, 															--how many times you can use the item 
				itemDiscription = "", 															--discription of the item
				reuseTime 		= 5,															--time in seconds before you can use the item again
				reuseCurrent 	= 0, 															--NOT SURE!!!!!!!
				randomLoot		= true,															--if this item can be added as random loot
				effect			= {}				--will need to have an effects system to know what does what
			}

function Item:new (o)
	o = o or {}
	setmetatable(o, self)
    self.__index = self
    return o
end

function Item:use( )
	--check if item is usable and if so run its effect.
end

function Item:getName()

	return self.itemName
end	

--used for testing saving--
function Item:getAll()
	return { 	self.itemId, 
				self.itemName, 
				self.itemImage, 
				self.stackable, 
				self.stackAmount, 
				self.destroyUse, 
				self.itemType, 
				self.questItem,
				self.value,
				self.weight,
				self.weight,
				self.nodrop,
				self.uses,
				self.itemDiscription,
				self.reuseTime,
				self.reuseCurrent,
				self.randomLoot,
				self.effect
			}

end

