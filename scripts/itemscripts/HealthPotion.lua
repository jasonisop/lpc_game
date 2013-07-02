--[[setup the item make all other items in same fasion
	all items need the following
	itemName = string
	itemId = number
	itemDiscription = string
	stackable = boolean
	stackAmound = number
	destroyUse = boolean
	itemType = string  (  consume chest head legs feet (weapon types) )
	value = number 
	weight = number
	nodrop = boolean
	uses = number
	reuseTime = number  - in seconds
	reuseCurrent = number must be 0 this is to keep track of reuse time
	itemImage =  string  -still need to work on this part im guessing a string with only the exact image
--]]

HealthPotion = {itemId 			= 0001,															--this is the item id used in place of name
				itemName 		= "HealthPotion", 												--item name used in place of id
				itemImage 		= love.graphics.newImage( "images/Icons/healthPotion.png"), 	--image
				stackable 		= true, 														--if there can be more then 1 of the item in a slot
				stackAmound 	= 5, 															--how many you can stack if you can stack them
				destroyUse 		= true, 														--if the item is destroyed upon use or not
				itemType 		= "consume",													--the type of item(Weapons,consumable,wearable)
				value 			= 0, 															--the value of the item, currently there is no money system in place
				weight 			= 0, 															--how much the item weighs, needed if we use a weight system
				nodrop 			= false, 														--if you can drop/destroy item or not
				uses 			= 1, 															--how many times you can use the item 
				itemDiscription = "", 															--discription of the item
				reuseTime 		= 5,															--time in seconds before you can use the item again
				reuseCurrent 	= 0, 															--NOT SURE!!!!!!!
				x 				= 0, 															--x location in the inventory? maybe im not sure
				y 				= 0, 															--y location in the inventory? maybe im not sure
				dragging 		= { active = false, diffX = 0, diffY = 0 },						--table for holding draging info
				width 			= 32, 															--width of the item? guessing for inventory screen.
				height 			= 32, 															--height of the item? guessing for inventory screen.
				currentSlot 	= 0,															--current slot in the inventory that the item is in
				healAmount 		= 2,															--Ammount to heal - this is spcific to this item should change this to an effect 
				randomLoot		= true,															--if this item can be added as random loot
				}

function HealthPotion:new (o)
	o = o or {}
	setmetatable(o, self)
    self.__index = self
    return o
end

-- every item should have all the same functions even if it does nothing
function HealthPotion:use()
	--only works if reuse is at 0
	if self.reuseCurrent == 0 then
		--this item when used will heal the player
		player:setHealth(player:getHealth() + self.healAmount )
		self.reuseCurrent = self.reuseTime
	end
end

--if the item was some that can be put on
function HealthPotion:equip()
--have the chat say you cant wear this
end
--removing something worn
function HealthPotion:dequip()

end

--removes the item from the players inventory
function HealthPotion:trash()
--need to add this function 
--	player:removeItem(self.id)
end

--for drawing the item on the gui
function HealthPotion:draw()
	love.graphics.draw(self.itemImage,self.x,self.y )
end

function HealthPotion:getName(v)
	return self.itemName
end

function HealthPotion:getX()
	return self.x
end

function HealthPotion:setX(v)
	self.x = v
end

function HealthPotion:getY()
	return self.y
end

function HealthPotion:setY(v)
	self.y = v
end


--function gets called from main to time reuse
function HealthPotion:heartBeat()
	
	if self.reuseCurrent < 0 then
		self.reuseCurrent = self.reuseCurrent - 1
	end

end

function HealthPotion:mousepressed(x, y, button)
	if button == "l"
	  and x > self.x and x < self.x + self.width
	  and y > self.y and y < self.y + self.height
	then
		self.dragging.active = true
		self.dragging.diffX = x - self.x
		self.dragging.diffY = y - self.y
	end

end

function HealthPotion:mousereleased(x, y, button)

end

--function is to time re-use 
function HealthPotion:update(dt)
 if self.dragging.active then
    self.x = love.mouse.getX() - self.dragging.diffX
    self.y = love.mouse.getY() - self.dragging.diffY
  end
end

function HealthPotion:draw()
love.graphics.draw(itemImage,self.x, self.y )
end













