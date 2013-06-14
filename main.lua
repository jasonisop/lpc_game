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

--datasaving and loading
jupiter = require ('scripts/jupiter')
--gameData = {_fileName = "gameSave.txt", Game}
--success = jupiter.save(gameData)
--GameTemp = jupiter.load("gameSave.txt")
--Game.currentMap = GameTemp[1].currentMap


--sets a container to store stuff
--game states  (play, pause, menu, loading, battle) 
Game = {}
Game.currentMap = 1
Game.enemies = {}
Game.mapList = {}
Game.state = 'play'


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


--list of maps should be moved somewhere else
require('scripts/mapscripts/Inside2')
require('scripts/mapscripts/Outside')

local OutsideMap = Outside:new()
local InsideMap = Inside2:new()

Game:registerMap(OutsideMap,InsideMap)


--global vars to make things easy might move this to the Game global
global = {}
global.tx = 0 -- X translation of the screen
global.ty = 0 -- Y translation of the screen
global.tileSize = 32
global.mapWidth =  0	
global.mapHeight = 0	
global.cameraTileLimit=10
global.compainions ="" -- will store any npc companions that the player picks up
--this ones for testing will be changed to use the players when done
global.player_Health = 10
global.player_Water = 7
global.temp = nil
--global.width = love.graphics.getWidth()
--global.height = love.graphics.getHeight()


--create a new player and starts the player on the starting tile of 10 - 14
player = Player:new{x=10*global.tileSize,y=14*global.tileSize}

playerHud = PlayerHud:new() 
chatWindow = ChatWindow:new()
hotbar = Hotbar:new()
characterScreen = CharacterScreen:new()
diceroller = DiceRoller:new()
inventoryscreen = InventoryScreen:new()


-- set up the game and run  all the setups
function love.load()
	cron = require 'scripts/cron'
	normalCron = cron.every(1, heartBeats)
	fastCron = cron.every(.5, fastHeartBeats)
	slowCron = cron.every(2, slowHeartBeats)

	-- setting up my new camera	
	global.width = love.graphics.getWidth()
	global.height = love.graphics.getHeight()
	camera:setBounds(0, 0, global.width, global.height)
	
	
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
	
	--sets up the player hud
    playerHud:setup()
	chatWindow:setup()
	hotbar:setup()
	characterScreen:setup()
	inventoryscreen:setup()
	diceroller:setSeed()

	--needs moved to player creation screen.
	player:setStats()

end

function slowHeartBeats()
--chatWindow:addText("Slow Heart Beat " ,"System",base_Color)
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
	player:update(dt)
	cron.update(dt)
	playerHud:update(dt)
	characterScreen:update(dt)
	chatWindow:update(dt)
	hotbar:update(dt)
	inventoryscreen:update(dt)
	for k,map in ipairs(Game.mapList) do Game.mapList[k]:update(dt) end
	
--	camera:setPosition(player:getX() - global.width / 2, player:getY() - global.height / 2)
	
end		

function love.mousepressed(x, y, button)
	for k,enemy in ipairs(enemyHolder.container[Game.currentMap]) do enemy:mousepressed(x, y, button) end
	characterScreen:mousepressed(x,y,button)
	chatWindow:mousepressed(x,y,button)
	inventoryscreen:mousepressed(x,y,button)
end

function love.mousereleased(x, y, button)
	characterScreen:mousereleased(x, y, button)
	chatWindow:mousereleased(x,y,button)
	inventoryscreen:mousereleased(x,y,button)
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
	--camera:set()
	
	for k,map in ipairs(Game.mapList) do 
		Game.mapList[k]:draw() 
	end	
	--camera:unset()
	
	
	playerHud:draw()
	chatWindow:draw()
	hotbar:draw()
	characterScreen:draw()
	inventoryscreen:draw()
	

	--love.graphics.draw(global.temp, 300, 10)
	--love.graphics.print(tostring(love.filesystem.exists( "mains.lua" )), 300,10)
end

function math.clamp(x, min, max)
  return x < min and min or (x > max and max or x)
end
