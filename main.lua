--[[
	notes need to disable keyboard commands while maps are loading
	also need to set up a file to set up all the maps to clean up main
	
	needs battle screens
]]

require('scripts/Game')
--require('scripts/Player')
require('scripts/Gui_playerHud')
require('scripts/Gui_chatWindow')
require('scripts/Gui_hotbar')
require('scripts/Gui_characterScreen')
require('scripts/Gui_inventoryScreen')
require('scripts/DiceRoller')
require('scripts/Enemy')
require('scripts/Camera')
require('scripts/Splash')
require('scripts/Menu')
require('scripts/SoundManager')
require('scripts/Items')

--list of maps should be moved somewhere else
require('scripts/mapscripts/Inside2')
require('scripts/mapscripts/Outside')

diceroller = DiceRoller:new()
chatWindow = ChatWindow:new()
playerHud = PlayerHud:new()
hotbar =  Hotbar:new()
characterScreen = CharacterScreen:new()
inventoryscreen = InventoryScreen:new()


-- set up the game and run  all the setups
function love.load()
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
	
--	splashScreen:setup()
		
	--database:setup()
	
	diceroller:setSeed()


--	soundManager.TestSound() --needs removed	
	
	chatWindow:setup()
	
	--game
	Game = Game:new()
	--needs moved to player creation screen.
	Game.player:setStats()
	Game.registerMap(OutsideMap,InsideMap)	
	
	--load the firstmap
--	Game.mapList[Game.currentMap]:load()   	--	Game.mapList[Game.currentMap]:load()  
	
	--sets up the player hud
    playerHud:setup()
	
	hotbar:setup()
	characterScreen:setup()
	inventoryscreen:setup()
--	menu:setup()
	--places the players on tile 5 5 to start
--	player:setAnimation("down","stand")
--	player:setLocation(5,5,"down")
end


function slowHeartBeats()
	--just temp for now needs better control
	if Game.state == 'splash' then
		Game.state = 'play'
	end
	
	for k,enemy in ipairs(enemyHolder.container[Game.currentMap]) 
		do enemy:randomMovement()
	end
	
end

function fastHeartBeats()
--chatWindow:addText("Fast Heart Beat " ,"System",base_Color)
end

--this function controls timed events such as any heartbeats use as sparingly as possible
function heartBeats()
	
	for k,enemy in ipairs(enemyHolder.container[Game.currentMap]) 
		do enemy:checkForPlayer() 
	end

	player:heartBeat()
end

-- main game loop  currently 
function love.update(dt)
--	soundManager:update(dt)
	chatWindow:update(dt)
	Game.player:update(dt)
	cron.update(dt)
	playerHud:update(dt)
	characterScreen:update(dt)

	menu:update(dt)
	hotbar:update(dt)
	inventoryscreen:update(dt)
	for k,map in ipairs(Game.mapList) do Game.mapList[k]:update(dt) end
	camera:setPosition(player:getX() - Game.width  / 2, player:getY() - Game.height  / 2) --might move this to end of player update 
end		

function love.mousepressed(x, y, button)
	for k,enemy in ipairs(enemyHolder.container[Game.currentMap]) do enemy:mousepressed(x, y, button) end
	

	characterScreen:mousepressed(x,y,button)
	chatWindow:mousepressed(x,y,button)
	inventoryscreen:mousepressed(x,y,button)
	menu:mousepressed(x,y,button)
end

function love.mousereleased(x, y, button)
	for k,enemy in ipairs(enemyHolder.container[Game.currentMap]) do enemy:mousereleased(x, y, button) end

	characterScreen:mousereleased(x, y, button)
	chatWindow:mousereleased(x,y,button)
	inventoryscreen:mousereleased(x,y,button)
	menu:mousereleased(x,y,button)
end

function love.keypressed(k)
	player:keypressed(k)
	-- need to remap cast animation
	if k == "c" then
		if characterScreen:getDraw() == false then
			characterScreen:setDraw(true)
			inventoryscreen:setDraw(true)
		else
			characterScreen:setDraw(false)
			inventoryscreen:setDraw(false)
		end
	end
end

function love.keyreleased(k)
	player:keyreleased(k)
end

function love.draw()
		
	if 	Game.state == 'play' then 
		camera:set()
			Game.mapList[Game.currentMap]:draw() 
		camera:unset()
		
		playerHud:draw()
		chatWindow:draw()
		hotbar:draw()
		characterScreen:draw()
		inventoryscreen:draw()
	elseif Game.state == 'pause' then	
	elseif Game.state == 'menu' then
		menu:draw()
	elseif Game.state == 'loading' then	
	elseif Game.state == 'battle' then	
	elseif Game.state == 'splash' then	--at the start of the game load a splash screen then have it go away and show the menu
		splashScreen:draw()
	end	
end

--this should render player and enemies 
function drawInLayer()
	for k,enemy in ipairs(enemyHolder.container[Game.currentMap])
		do enemy:draw() 
	end
	player:draw()
end

function math.clamp(x, min, max)
	return x < min and min or (x > max and max or x)
end

--end mass comment
