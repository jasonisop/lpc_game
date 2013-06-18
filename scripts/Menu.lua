
Menu = GUI:new{	saves = {},
				anim8 = require ('scripts/anim8'), 
				g = {}, 
				animation = {},
				playRect = {},
				newRect = {},
				optionsRect = {},
				loadRect = {},
				clicking = false,
				canDraw = false,
				}

function Menu:setup()
	--load in the file and look for save data, depending on data thats what buttons show. I think some nice image buttons will be good
	-- new, load, save, options
	menuBackground = love.graphics.newImage("images/".. "menuBackground.png")

	-- newButtonImage = love.graphics.newImage("images/Gui/button_x.png")
	-- loadButtonImage = love.graphics.newImage("images/Gui/button_x.png")
	-- saveButtonImage = love.graphics.newImage("images/Gui/button_x.png")
	-- optionsButtonImage = love.graphics.newImage("images/Gui/button_x.png")
	-- exitButtonImage = love.graphics.newImage("images/Gui/button_x.png")
		
	
	-- self.g = self.anim8.newGrid(24,24, CharacterScreenCloseImage:getWidth(),CharacterScreenCloseImage:getHeight())
	-- self.animation = self.anim8.newAnimation('loop', self.g('1-1,1'), 0.4)
	-- self.closeButtonRect = {x = self.x + CharacterScreenImage:getWidth() - CharacterScreenCloseImage:getWidth() - 18 , y = self.y + 5, width = 24, height = 24}
	
	
end


function Menu:saveGame()
end
function Menu:loadGame()
end
function Menu:newGame()
end


function Menu:update(dt)
	local x, y = love.mouse.getPosition()
	
	--self.animation:update(dt)
end

function Menu:mousereleased(x, y, button)
end

function Menu:mousepressed(x, y, button)
end

function Menu:draw()
	love.graphics.draw(menuBackground, 0 ,0 )
end