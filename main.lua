--[[
	notes need to disable keyboard commands while maps are loading
	also need to set up a file to set up all the maps to clean up main
	
]]

require('luascripts/Player')
require('luascripts/Gui_playerHud')
require('luascripts/Gui_chatWindow')
require('luascripts/Gui_characterScreen')
require('luascripts/Gui_inventoryScreen')

require('luascripts/DiceRoller')
require ('luascripts/Enemy')





--datasaving and loading
jupiter = require ('luascripts/jupiter')
--gameData = {_fileName = "gameSave.txt", Game}
--success = jupiter.save(gameData)
--GameTemp = jupiter.load("gameSave.txt")
--Game.currentMap = GameTemp[1].currentMap


--sets a container to store stuff
Game = {}
Game.currentMap = 1
Game.enemies = {}
Game.mapList = {}


function Game:registerEnemys(...)
for k,enemy in ipairs(arg) do table.insert(Game.enemies,enemy) end
end
function Game:removeEnemys()
	for k,enemy in ipairs(Game.enemies) do table.remove(Game.enemies,k) end
	Game.enemies = nil
	Game.enemies = {}
end

function Game:registerMap(...)
	for k,map in ipairs(arg) do table.insert(Game.mapList,map) end
end



--list of maps should be moved somewhere else
require('mapscripts/Inside2')
require('mapscripts/Outside')

local OutsideMap = Outside:new()
local InsideMap = Inside2:new()

Game:registerMap(OutsideMap,InsideMap)





--global vars to make things easy
global = {}
global.tx = 0 -- X translation of the screen
global.ty = 0 -- Y translation of the screen
global.tileSize = 32
global.mapWidth =  0	
global.mapHeight = 0	
global.cameraTileLimit=10
--this ones for testing will be changed to use the players when done
global.player_Health = 10
global.player_Water = 7
global.temp = nil

player = Player:new{x=10*32,y=14*32}

playerHud = PlayerHud:new() 
chatWindow = ChatWindow:new()
characterScreen = CharacterScreen:new()
diceroller = DiceRoller:new()
inventoryscreen = InventoryScreen:new()





function love.load()
	
	cron = require 'luascripts/cron'
	id = cron.every(1, temps)

	--load the firstmap
	Game.mapList[Game.currentMap]:load()
   
	
	
	player:setAnimation("down","stand")
	--places the players on tile 5 5 to start
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
	characterScreen:setup()
	inventoryscreen:setup()
	diceroller:setSeed()
	
--	global.temp = tostring(diceroller:Roll(6,2))
	player:setStats()
--	global.temp = 	"STR "..tostring(player:getStat("STR")).." CON "..tostring(player:getStat("CON")).." INT "..tostring(player:getStat("INT"))..
--					" DEX "..tostring(player:getStat("DEX")).." WIS "..tostring(player:getStat("WIS")).." CHA "..tostring(player:getStat("CHA"))


end


function temps()
	-- for k,enemy in ipairs(Game.enemies) do 
		-- Game.enemies[k]:checkForPlayer()
	-- end
	for k,enemy in ipairs(enemyHolder.container[Game.currentMap]) do enemy:checkForPlayer() end
	player:heartBeat()
	
end

function love.update(dt)
	
	player:update(dt)
	
	cron.update(dt)
	playerHud:update(dt)
	characterScreen:update(dt)
	chatWindow:update(dt)
	inventoryscreen:update(dt)
	for k,map in ipairs(Game.mapList) do Game.mapList[k]:update(dt) end
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
	
	--testing my diceroller
	-- if k == "r" then
		-- local statsTable = diceroller:RollStat(6,4,1,6)
			-- global.temp  =""
		-- for k,stat in ipairs(statsTable) do 
			-- global.temp = global.temp .. tostring(stat)
			-- if k ~= 6 then
				-- global.temp  = global.temp ..","
			-- end
		-- end
	-- end
	
end

function love.keyreleased(k)
	player:keyreleased(k)
end

function love.draw()
	for k,map in ipairs(Game.mapList) do Game.mapList[k]:draw() end	

	playerHud:draw()
	chatWindow:draw()
	characterScreen:draw()
	inventoryscreen:draw()
	--love.graphics.draw(global.temp, 300, 10)
	--love.graphics.print(tostring(love.filesystem.exists( "mains.lua" )), 300,10)
end

