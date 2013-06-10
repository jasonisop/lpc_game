require('scripts/Gui')
require('scripts/Colors')

ChatWindow = GUI:new{ anim8 = require ('scripts/anim8'), g = {}, animation = {}, x = 300,y = 100, closeButtonRect={},clicking=false,canDraw = true, textTable={}}


function ChatWindow:setup()
	ChatScreenImage = love.graphics.newImage("images/Gui/dialog_box.png")
	
	self.x = 0
	self.y = love.graphics.getHeight() - ChatScreenImage:getHeight() - 32 -- 32 is a temp number will be using the height of the hotbar once it is there

	self:addText("Legend of Rathnor","System:",base_Color )
	 self:addText(" " ,"",base_Color)
	 self:addText(" " ,"",base_Color)
	 self:addText(" " ,"",base_Color)
	
end

--need to unhardcode number so things can move around
function ChatWindow:draw()
	if self.canDraw	== true then
		love.graphics.draw(ChatScreenImage,self.x, self.y )

		local len = # self.textTable 
		
		love.graphics.setColor(self.textTable[len-3][3])
		love.graphics.print(self.textTable[len-3][2].." " .. self.textTable[len-3][1], self.x + 10,self.y + 10)
		
		love.graphics.setColor(self.textTable[len-2][3])
		love.graphics.print(self.textTable[len-2][2].." " .. self.textTable[len-2][1], self.x + 10,self.y + 30)
		
		love.graphics.setColor(self.textTable[len-1][3])
		love.graphics.print(self.textTable[len-1][2].." " .. self.textTable[len-1][1], self.x + 10,self.y + 50)
		
		love.graphics.setColor(self.textTable[len][3])
		love.graphics.print(self.textTable[len][2].." " .. self.textTable[len][1], self.x + 10,self.y + 70)
	end
		love.graphics.setColor(base_Color) --return to using the base color
end

--40chars long for chat window
function ChatWindow:addText(SpeakerText,Speaker,color)
	table.insert(self.textTable, {SpeakerText,Speaker,color} )
end


function ChatWindow:setDraw(v)
	self.canDraw = v
end
function ChatWindow:getDraw()
	return self.canDraw
end

function ChatWindow:update(dt)
	
end

function ChatWindow:mousereleased(x, y, button)
	
end

function ChatWindow:mousepressed(x, y, button)
	
end