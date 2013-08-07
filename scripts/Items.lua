--[[
	this class stores all the items in the game in one place this is NOT the players inventory 


	will need to have tables in the database for random item creation

	RARITY chance of getting the item will add to stats of the item game should not generate artifacts
	common 74%, uncommon 20%, rare 5%, legandary 1%, artifact 

	QUALITY what shape the item is in will effect stats of the item and value
	broken 10% -75% to all stats, worn 20% -2% to all stats, normal 55%, fine 10% +2% to all stats, pristine 5% + 5%to all stats

	MATERIAL what the item is made of depends on the type of item. 
	wood(will have a few kinds), bone, crystal, copper, silver, gold, mithril, iron, steel, gemstones(a few kinds)

	TYPE
	ring, wand, potion, scroll, armor(few types), weapon(few types), misc(artwork or magic items ) 

	EFFECTS
	stat buffs, damage buffs(any damage type), spellcasting


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
				questItem		= false,														--if this is a item used in a quest
				value 			= 0, 															--the value of the item, currently there is no money system in place
				weight 			= 0, 															--how much the item weighs, needed if we use a weight system
				nodrop 			= false, 														--if you can drop/destroy item or not
				uses 			= 0, 															--how many times you can use the item 
				itemDiscription = "", 															--discription of the item
				reuseTime 		= 5,															--time in seconds before you can use the item again
				reuseCurrent 	= 0, 															--NOT SURE!!!!!!!
				randomLoot		= true,															--if this item can be added as random loot
				effect			= {}															--will need to have an effects system to know what does what
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

function Item:createItem(itemSpecs)
	local itemTable = itemSpecs

	--[[
		itemTable.archType = array of allowed item archTypes If blank random type unless specific item is chosen such as "dagger"
		itemTable.type = array of allowed types of items  so if you want a dagger, spear, or longbow you would set archType to weapon, and type to those 3
		itemTable.rarity = array of allowed rarities
		itemTable.quality = array of allowed qualities note that some rarity levels will have limits on quality and will overide this!
		itmeTable.numMats = number of allowed materials if blank will be random 1-3 depending on item type and type will overide if needed
		itemTable.materials = array of allowed material 
		
	--]]

--find out what kind of item 
  decideItemType(diceroller:Roll(100,1))

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

