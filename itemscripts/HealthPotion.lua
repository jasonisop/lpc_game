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

HealthPotion = {healAmount = 2,itemId = 0001 ,itemName = "HealthPotion", itemImage = love.graphics.newImage( "images/Icons/healthPotion.png"), stackable = true, stackAmound = 5, destroyUse = true, itemType ="consume",
				value = 0, weight = 0, nodrop = false, uses = 1, itemDiscription = "", reuseTime = 5 ,reuseCurrent = 0, x = 0 , y = 0, dragging = { active = false, diffX = 0, diffY = 0 } ,
				width = 32, height = 32, currentSlot = 0}

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
		player:setHealth(player:getHealth + self.healAmount )
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

end













