
local Game = require('scripts/Game')




-- set up the game and run  all the setups
function love.load()

	Game.load()
	
	local font = love.graphics.newImageFont("images/imagefont.png",
    " abcdefghijklmnopqrstuvwxyz" ..
    "ABCDEFGHIJKLMNOPQRSTUVWXYZ0" ..
    "123456789.,!?-+/():;%&`'*#=[]\"")
	love.graphics.setFont(font) -- Sets the font to the image based one

end

function love.update(dt)
	Game.update(dt)
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
	Game.draw()
end


function math.clamp(x, min, max)
	return x < min and min or (x > max and max or x)
end
