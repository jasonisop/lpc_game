
require('scripts/Game')
--require('scripts/mapscripts/Outside')

-- set up the game and run  all the setups
function love.load()

	
	love.graphics.translate(0, 0)  --THIS WAS REALLY DUMB TO HAVE TO ADD TO ALLOW THE MAP TO TRANSLATE
	
	cron = require 'scripts/cron'
	normalCron = cron.every(1, heartBeats)
	fastCron = cron.every(.5, fastHeartBeats)
	slowCron = cron.every(8, slowHeartBeats)
	
	--creates a image based font to use
	font = love.graphics.newImageFont("images/imagefont.png",
    " abcdefghijklmnopqrstuvwxyz" ..
    "ABCDEFGHIJKLMNOPQRSTUVWXYZ0" ..
    "123456789.,!?-+/():;%&`'*#=[]\"")
	love.graphics.setFont(font) -- Sets the font to the image based one
	
	--game
	Game = Game:new()
	Game.diceroller:setSeed()
	Game.splashScreen:setup()
	Game.chatWindow:setup()
	Game.hotbar:setup()
	Game.playerHud:setup()
	
	Game.player:setup()
	
--	Game:registerMap(OutsideMap)	--Game:registerMap(OutsideMap,InsideMap)
	
end


function slowHeartBeats()
	--just temp for now needs better control
	if Game.state == 'splash' then
		Game.state = 'play'
	end
	
end


function fastHeartBeats()
 
 
 --Game.chatWindow:addText("1234567890123456789012345678901234567890" ,"System",Color_Crimson)
 --Game.chatWindow:addText("Color_Blue" ,"System",Color_Blue)
 --Game.chatWindow:addText("Color_Yellow" ,"System",Color_Yellow)
 --Game.chatWindow:addText("Color_Emerald" ,"System",Color_Emerald)


end


--this function controls timed events such as any heartbeats use as sparingly as possible
function heartBeats()
	
	Game.player:heartBeat()
end


-- main game loop  currently 
function love.update(dt)
	cron.update(dt)
	Game.player:update(dt)
	Game.playerHud:update(dt)
	
end		


function love.mousepressed(x, y, button)
--	characterScreen:mousepressed(x,y,button)
end


function love.mousereleased(x, y, button)

end


function love.keypressed(k)
-- used to pass keys to move player
	Game.player:keypressed(k)
-- need to remap cast animation
end


function love.keyreleased(k)
	Game.player:keyreleased(k)
end


function love.draw()
	
	
	if Game.state == 'splash' then	--at the start of the game load a splash screen then have it go away and show the menu
		Game.splashScreen:draw()
		else	
		
		Game.map:draw()
		Game.player:draw()
		
		Game.chatWindow:draw()
		Game.hotbar:draw()
		Game.playerHud:draw()

	end	
end



--move this to a utilities class at some point
function math.clamp(x, min, max)
	return x < min and min or (x > max and max or x)
end

