-- the game class
--[[ Notes
		

	
--]]

require('scripts/Player')
require('scripts/Gui_playerHud')
require('scripts/Gui_chatWindow')
require('scripts/Gui_hotbar')
require('scripts/Gui_characterScreen')
require('scripts/Gui_inventoryScreen')
require('scripts/DiceRoller')
--require('scripts/Enemy')
require('scripts/Camera')
require('scripts/Splash')
require('scripts/Menu')
require('scripts/SoundManager')

local sti = require "scripts/sti"

Game = {	currentMap 		= 1,												--the map id of the current map
			mapList 		= {},												--holds all the map names, may hold other information about the map
			map 			= sti("maps/Outside.lua"),									--actual map we load the outside map intially will make a map to use as a background image to use 
			enemies 		= {},												--holds all enemies on the map
			state 			= 'splash', 										--game states  (play, pause, menu, loading, battle) 
			tileSize 		= 32,												--sets tileSize to 32 this is default size but can be changed based on map	
			mapWidth 		= 0,												--gets set on map load
			mapHeight 		= 0,												--gets set on map load
			player_Health 	= 10,												--TEMP					
			player_Water 	= 7,												--TEMP
			width 			= love.graphics.getWidth(), 						--width of the screen
			height 			= love.graphics.getHeight(),						--height of the screen
			compainions 	= "", 												--may be used to hold the players companion NPC's
			idle 			= false,											--used to see if game has be idle for a while
			checkIdle 		= false,											--used to see if game has be idle for a while
			player			= Player:new{x=10*32,y=14*32},						--player class
			splashScreen 	= SplashScreen:new(),								--splash screen will also show starting credits
			playerHud 		= PlayerHud:new(), 									
			chatWindow 		= ChatWindow:new(),
			hotbar 			= Hotbar:new(),
			characterScreen	= CharacterScreen:new(),
			diceroller 		= DiceRoller:new(),
			inventoryscreen = InventoryScreen:new(),
			menu 			= Menu:new(),
			soundManager	= SoundManager:new()
			
		}



--Game:registerMap(OutsideMap,InsideMap)		

function Game:new (o)
	o = o or {}
	setmetatable(o, self)
    self.__index = self
							--might need to run a init function here
    return o
end				



function: Game:ChangeMap(mapid)
	self.map = sti(self.mapList[mapid])
end


-----Older functions

function Game:registerEnemys(...)
--	local arg = {...}
--	for k,enemy in ipairs(arg) do table.insert(self.enemies,enemy) end
end

function Game:removeEnemys()
--	for k,enemy in ipairs(Game.enemies) do table.remove(self.enemies,k) end
--	self.enemies = nil
--	self.enemies = {}
end

function Game:registerMap(...)
	local arg = {...}
	for k,map in ipairs(arg) do table.insert(self.mapList,map) end
end

