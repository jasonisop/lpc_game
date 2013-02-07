require('luascripts/Gui')
require ('itemscripts/HealthPotion')	
InventoryScreen = GUI:new{ 	anim8 = require ('luascripts/anim8'), g = {}, animation = {}, x = 500,y = 100, closeButtonRect={},clicking=false,canDraw = false, 
							CharacterScreenCloseImage = love.graphics.newImage("images/Gui/button_x.png"), slots = {} }


function InventoryScreen:setup()
	InventoryScreenImage = love.graphics.newImage("images/Gui/inventory.png")
	InventoryScreenOverImage = love.graphics.newImage("images/Gui/inventory_overlay.png")
		
	self.g = self.anim8.newGrid(24,24, self.CharacterScreenCloseImage:getWidth(),self.CharacterScreenCloseImage:getHeight())
	self.animation = self.anim8.newAnimation('loop', self.g('1-1,1'), 0.4)
	self.closeButtonRect = {x = self.x + InventoryScreenImage:getWidth() - self.CharacterScreenCloseImage:getWidth() - 18 , y = self.y + 5, width = 24, height = 24}
	
	--setup the slots 7 rows of 5          25   56
	local numSlots = 35
	local slotCount = 0
	local rowCount = 0
	
	
	 for i = 1, numSlots do
	
		--self.slots[i]={x = slotCount * 32 +25 ,y = rowCount * 32 + 56 , height = 32, width = 32 ,filled = false, item={} }
		self.slots[i]={x = slotCount * 32 +25 ,y = rowCount * 32 + 56 , height = 32, width = 32 ,filled = false, item = {} }
		slotCount = slotCount + 1
		
		if slotCount == 5 then
			rowCount = rowCount + 1
			slotCount = 0
		end
	
	end
	
end

function InventoryScreen:draw()
	if self.canDraw	== true then
		self.animation:draw(self.CharacterScreenCloseImage, self.x + InventoryScreenImage:getWidth() - self.CharacterScreenCloseImage:getWidth() - 18, self.y + 5  )
		love.graphics.draw(InventoryScreenImage,self.x, self.y )
			
		--loop thru slot items and render	
		-- for i, slot in ipairs(self.slots) do 
				-- self.slot.item:draw()
		-- end	
	
		--self.slots[1].item.draw()
	
		love.graphics.draw(InventoryScreenOverImage,self.x, self.y )
			
	end
end

function InventoryScreen:setDraw(v)
	self.canDraw = v
end
function InventoryScreen:getDraw()
	return self.canDraw
end

function InventoryScreen:addItemToSlot(item,slot)
	self.slots[slot].item = item
end


function InventoryScreen:update(dt)
	local x, y = love.mouse.getPosition()
	if  x > self.closeButtonRect.x and x < self.closeButtonRect.x + self.closeButtonRect.width
	and y > self.closeButtonRect.y and y < self.closeButtonRect.y + self.closeButtonRect.height and self.clicking == false then
		
	self.animation = self.anim8.newAnimation('loop', self.g('1-1,3'), 0.4)

	elseif self.clicking == false then
	self.animation = self.anim8.newAnimation('loop', self.g('1-1,1'), 0.4)
	end
	
	self.animation:update(dt)
end

function InventoryScreen:mousereleased(x, y, button)
	self.clicking = false
	-----------this is for clicking the close button
	if  button == "l" and x > self.closeButtonRect.x and x < self.closeButtonRect.x + self.closeButtonRect.width
	and y > self.closeButtonRect.y and y < self.closeButtonRect.y + self.closeButtonRect.height then
		self.canDraw = false
	end
	------------------------------------------
	
	
	
end

function InventoryScreen:mousepressed(x, y, button)
	self.clicking = true
	-----------this is for clicking the close button
	if  button == "l" and x > self.closeButtonRect.x and x < self.closeButtonRect.x + self.closeButtonRect.width
	and y > self.closeButtonRect.y and y < self.closeButtonRect.y + self.closeButtonRect.height then
		self.animation = self.anim8.newAnimation('loop', self.g('1-1,4'), 0.4)
	end
	---------------------------------------------------
	

	
	
	
	
end