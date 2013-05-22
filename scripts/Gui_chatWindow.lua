require('scripts/Gui')
require('scripts/Colors')

ChatWindow = GUI:new{ anim8 = require ('scripts/anim8'), g = {}, animation = {}, x = 300,y = 100, closeButtonRect={},clicking=false,canDraw = true, textTable={}}


function ChatWindow:setup()
	ChatScreenImage = love.graphics.newImage("images/Gui/dialog_box.png")
	
	self.x = 0
	self.y = love.graphics.getHeight() - ChatScreenImage:getHeight() - 32 -- 32 is a temp number will be using the height of the hotbar once it is there

	self:addText("Legend of Ratnor","System",base_Color )
	-- self:addText("This game will be EPIC" ,"System",base_Color)
	-- self:addText("Drink Plenty of water" ,"System",base_Color)
	-- self:addText("And try not to die!" ,"System",base_Color)
	
end

--need to unhardcode number so things can move around

function ChatWindow:draw()
	if self.canDraw	== true then
		love.graphics.draw(ChatScreenImage, self.x, self.y )
	--draw text
	
		local len = # self.textTable 
	
		local temp1 = 3
		local temp2 = 2
		local temp3 = 1
	
		
		if len == 1 then
			
			temp1 = 0
		end
		
		if len == 2 then
			
			temp1 = 1
			temp2 = 0
		end
		
		if len == 3 then
			
			temp1 = 2
			temp2 = 1
			temp3 = 0
		end
		
		if len == 4 then
			
			temp1 = 3
			temp2 = 2
			temp3 = 1
		end
		
		--love.graphics.setColor(Color_Blue)
		
		love.graphics.setColor(self.textTable[len-temp1][3])
		love.graphics.print(self.textTable[len-temp1][2]..": " .. self.textTable[len-temp1][1], self.x + 10,self.y + 10)
		
		if len > 2 then
		love.graphics.setColor(self.textTable[len-temp2][3])
		love.graphics.print(self.textTable[len-temp2][2]..": " .. self.textTable[len-temp2][1], self.x + 10,self.y + 30)
		end
		
		if len > 3 then
		love.graphics.setColor(self.textTable[len-temp3][3])
		love.graphics.print(self.textTable[len-temp3][2]..": " .. self.textTable[len-temp3][1], self.x + 10,self.y + 50)
		end
		
		if len > 4 then
		love.graphics.setColor(self.textTable[len][3])
		love.graphics.print(self.textTable[len][2]..": " .. self.textTable[len][1], self.x + 10,self.y + 70)
		end
	end
		love.graphics.setColor(base_Color)
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