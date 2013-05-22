require('scripts/Gui')
require('scripts/Colors')

Hotbar = GUI:new{ anim8 = require ('scripts/anim8'), g = {}, animation = {}, x = 300,y = 100, closeButtonRect={},clicking=false,canDraw = true, textTable={}}


function Hotbar:setup()
	HotbarImage = love.graphics.newImage("images/Gui/hotbar.png")
	
	self.x = 0
	self.y = love.graphics.getHeight() - HotbarImage:getHeight()


	
end

--need to unhardcode number so things can move around

function Hotbar:draw()
	if self.canDraw	== true then
		love.graphics.draw(HotbarImage,self.x, self.y )
	end	
end




function Hotbar:setDraw(v)
	self.canDraw = v
end
function Hotbar:getDraw()
	return self.canDraw
end

function Hotbar:update(dt)
	
end

function Hotbar:mousereleased(x, y, button)
	
end

function Hotbar:mousepressed(x, y, button)
	
end