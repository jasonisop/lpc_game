--[[
	notes need to disable keyboard commands while maps are loading
	also need to set up a file to set up all the maps to clean up main
	
	needs battle screens
]]

require('scripts/Player')
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

--list of maps should be moved somewhere else
require('scripts/mapscripts/Inside2')
require('scripts/mapscripts/Outside')

--datasaving and loading
jupiter = require ('scripts/jupiter')
--gameData = {_fileName = "gameSave.txt", Game}
--success = jupiter.save(gameData)
--GameTemp = jupiter.load("gameSave.txt")
--Game.currentMap = GameTemp[1].currentMap

--sets a container to store Game stuff
Game = {}
Game.currentMap = 1						--the map id of the current map
Game.mapList = {}						--holds all the maps
Game.enemies = {}						--holds all enemies on the map
Game.state = 'splash' 					--game states  (play, pause, menu, loading, battle) 
Game.tileSize = 32						--sets tileSize to 32 this is defualt size but can be changed based on map	
Game.mapWidth =  0						--gets set on map load
Game.mapHeight = 0						--gets set on map load
Game.player_Health = 10					--TEMP					
Game.player_Water = 7					--TEMP
Game.width = love.graphics.getWidth() 	--width of the screen
Game.height = love.graphics.getHeight()	--height of the screen
Game.compainions ="" 					--may be used to hold the players compainion NPC's
Game.idle = false						--used to see if game has be idle for a while
Game.checkIdle = false					--used to see if game has be idle for a while

function Game:registerEnemys(...)
	local arg = {...}
	for k,enemy in ipairs(arg) do table.insert(Game.enemies,enemy) end
end

function Game:removeEnemys()
	for k,enemy in ipairs(Game.enemies) do table.remove(Game.enemies,k) end
	Game.enemies = nil
	Game.enemies = {}
end

function Game:registerMap(...)
	local arg = {...}
	for k,map in ipairs(arg) do table.insert(Game.mapList,map) end
end

local OutsideMap = Outside:new()
local InsideMap = Inside2:new()

Game:registerMap(OutsideMap,InsideMap)

-- should make these part of the game object should also combine Game {}   and game{}
--create a new player and starts the player on the starting tile of 10 - 14
player = Player:new{x=10*Game.tileSize,y=14*Game.tileSize}

splashScreen 	= SplashScreen:new()
playerHud 		= PlayerHud:new() 
chatWindow 		= ChatWindow:new()
hotbar 			= Hotbar:new()
characterScreen	= CharacterScreen:new()
diceroller 		= DiceRoller:new()
inventoryscreen = InventoryScreen:new()
menu 			= Menu:new()
soundManager	= SoundManager:new()

-- set up the game and run  all the setups
function love.load()
	cron = require 'scripts/cron'
	normalCron = cron.every(1, heartBeats)
	fastCron = cron.every(.5, fastHeartBeats)
	slowCron = cron.every(8, slowHeartBeats)

	--load the firstmap
	Game.mapList[Game.currentMap]:load()
		
   	--places the players on tile 5 5 to start
	player:setAnimation("down","stand")
	player:setLocation(5,5,"down")
	
	--creates a image based font to use
	font = love.graphics.newImageFont("images/imagefont.png",
    " abcdefghijklmnopqrstuvwxyz" ..
    "ABCDEFGHIJKLMNOPQRSTUVWXYZ0" ..
    "123456789.,!?-+/():;%&`'*#=[]\"")
	love.graphics.setFont(font) -- Sets the font to the image based one
	
	splashScreen:setup()
	--sets up the player hud
    playerHud:setup()
	chatWindow:setup()
	hotbar:setup()
	characterScreen:setup()
	inventoryscreen:setup()
	menu:setup()
	
	diceroller:setSeed()

	--needs moved to player creation screen.
	player:setStats()
	soundManager.TestSound()
end

function slowHeartBeats()
	--just temp for now needs better controll
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
	soundManager:update(dt)
	chatWindow:update(dt)
	player:update(dt)
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

function math.clamp(x, min, max)
	return x < min and min or (x > max and max or x)
end
