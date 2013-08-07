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
-- Item does the creation of the items

Item = {}

--[[
function Item:new (o)
	o = o or {}
	setmetatable(o, self)
    self.__index = self
    return o
end
--]]


function Item:createItem(itemSpecs)
	
		itemTable.archType = array of allowed item archTypes If blank random type unless specific item is chosen such as "dagger"
		itemTable.type = array of allowed types of items  so if you want a dagger, spear, or longbow you would set archType to weapon, and type to those 3
		itemTable.rarity = array of allowed rarities
		itemTable.quality = array of allowed qualities note that some rarity levels will have limits on quality and will overide this!
		itmeTable.numMats = number of allowed materials if blank will be random 1-3 depending on item type and type will overide if needed
		itemTable.materials = array of allowed material 




--find out what kind of item 
  decideItemType(diceroller:Roll(100,1))
end
