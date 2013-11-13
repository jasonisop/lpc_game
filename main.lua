--[[



--]]

local Game 		= require('scripts/Game')
local Camera 	= require('scripts/Camera')


-- set up the game and run  all the setups
function love.load()
	
	Camera:setBounds(0, 0, Game.screenWidth, Game.screenHeight)
	Game.load()

	
	local font = love.graphics.newImageFont("images/imagefont.png",
    " abcdefghijklmnopqrstuvwxyz" ..
    "ABCDEFGHIJKLMNOPQRSTUVWXYZ0" ..
    "123456789.,!?-+/():;%&`'*#=[]\"")
	love.graphics.setFont(font) -- Sets the font to the image based one

	Camera:scale(2)				--sets camera scale .5 is twice as big
	
end

function love.update(dt)
	Game.update(dt)
	
	--update the camera 
	Camera:setPosition(0 , 0)
	--Camera:setPosition(player:getX() - Game.width  / 2, player:getY() - Game.height  / 2)
end		

function love.mousepressed(x, y, button)
	Game.mousepressed(x, y, button)
end

function love.mousereleased(x, y, button)
	Game.mousereleased(x, y, button)
end

function love.keypressed(k)
	Game.keypressed(k)
end

function love.keyreleased(k)
	Game.keyreleased(k)
end

function love.draw()
	
	Camera:set()
	
	Game.draw()
	
	Camera:unset()

love.graphics.print( Camera.scaleX, 10, 50 )

end



-------------------------------
-------------------------------
function math.clamp(x, min, max)
	return x < min and min or (x > max and max or x)
end
