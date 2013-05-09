require('scripts/Gui')

CharacterScreen = GUI:new{ anim8 = require ('scripts/anim8'), g = {}, animation = {}, x = 200,y = 100, closeButtonRect={},clicking=false,canDraw = false}


function CharacterScreen:setup()
	CharacterScreenImage = love.graphics.newImage("images/Gui/character.png")
	CharacterScreenOverImage = love.graphics.newImage("images/Gui/character_overlay.png")
	CharacterScreenCloseImage = love.graphics.newImage("images/Gui/button_x.png")
	
	self.g = self.anim8.newGrid(24,24, CharacterScreenCloseImage:getWidth(),CharacterScreenCloseImage:getHeight())
	self.animation = self.anim8.newAnimation('loop', self.g('1-1,1'), 0.4)
	self.closeButtonRect = {x = self.x + CharacterScreenImage:getWidth() - CharacterScreenCloseImage:getWidth() - 18 , y = self.y + 5, width = 24, height = 24}
	
end

--need to unhardcode number so things can move around

function CharacterScreen:draw()
	if self.canDraw	== true then
		--love.graphics.print( "Character", self.x +20, self.y + 10)
		self.animation:draw(CharacterScreenCloseImage, self.x + CharacterScreenImage:getWidth() - CharacterScreenCloseImage:getWidth() - 18, self.y + 5  )
		love.graphics.draw(CharacterScreenImage,self.x, self.y )
		love.graphics.draw(CharacterScreenOverImage,self.x, self.y )

		local padY = 15
		local padX = 160
		
		love.graphics.print("Attack "..tostring(player:getStat("ATTACK")), self.x +20, self.y + 20+padY)
		love.graphics.print("Defense "..tostring(player:getStat("DEFENSE")), self.x  +20, self.y + 40+padY)
		
		love.graphics.print("STR "..tostring(player:getStat("STR")), self.x + padX, self.y + 20+padY)
		love.graphics.print("CON "..tostring(player:getStat("CON")), self.x + padX, self.y + 40+padY)
		love.graphics.print("DEX "..tostring(player:getStat("DEX")), self.x + padX, self.y + 60+padY)
		love.graphics.print("INT "..tostring(player:getStat("INT")), self.x + padX, self.y + 80+padY)
		love.graphics.print("WIS "..tostring(player:getStat("WIS")), self.x + padX, self.y + 100+padY)
		love.graphics.print("CHA "..tostring(player:getStat("CHA")), self.x + padX, self.y + 120+padY)
		
	end
end

function CharacterScreen:setDraw(v)
	self.canDraw = v
end
function CharacterScreen:getDraw()
	return self.canDraw
end

function CharacterScreen:update(dt)
	local x, y = love.mouse.getPosition()
	if  x > self.closeButtonRect.x and x < self.closeButtonRect.x + self.closeButtonRect.width
	and y > self.closeButtonRect.y and y < self.closeButtonRect.y + self.closeButtonRect.height and self.clicking == false then
		
	self.animation = self.anim8.newAnimation('loop', self.g('1-1,3'), 0.4)

	elseif self.clicking == false then
	self.animation = self.anim8.newAnimation('loop', self.g('1-1,1'), 0.4)
	end
	
	self.animation:update(dt)
end
function CharacterScreen:mousereleased(x, y, button)
	self.clicking = false
	if  button == "l" and x > self.closeButtonRect.x and x < self.closeButtonRect.x + self.closeButtonRect.width
	and y > self.closeButtonRect.y and y < self.closeButtonRect.y + self.closeButtonRect.height then
		self.canDraw = false
	end
end

function CharacterScreen:mousepressed(x, y, button)
	self.clicking = true
	if  button == "l" and x > self.closeButtonRect.x and x < self.closeButtonRect.x + self.closeButtonRect.width
	and y > self.closeButtonRect.y and y < self.closeButtonRect.y + self.closeButtonRect.height then
		self.animation = self.anim8.newAnimation('loop', self.g('1-1,4'), 0.4)
	end
end