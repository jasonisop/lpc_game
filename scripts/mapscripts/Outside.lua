require ('scripts/Map')

Outside = Map:new{ mapfile = "Outside.tmx"}

local loader = require("scripts/AdvTiledLoader.Loader")
loader.path = "maps/"
loader.useSpriteBatch = true
function Outside:load()
	chatWindow:addText("Testing...","System",Color_Blue )
	tilemap = loader.load(self.mapfile)
	
	--respawns enemies and items if it can
	self.respawn()
	
	--function to set player to be drawn on that layer
	local pos = tilemap:drawPosition( tilemap.ol["Object1"] )
	table.insert(tilemap.drawList, pos, test)
	
	layer = tilemap.tl["Ground"]
	
	global.mapWidth =  tilemap.width * 32	
	global.mapHeight = tilemap.height* 32	
 end

-- this function will over-ride the one in Map
function Outside:checkTile(x,y)
	--To enter the house
	if x == 13 and y == 13 then	
		chatWindow:addText("loading map...","System",Color_Crimson )
		player:setLocation(13,12,"up")
		Game.currentMap = 2
		
		Game.mapList[Game.currentMap]:load()--loads in the new map
		Game.mapList[Game.currentMap]:setCameraWindow(13, 12)
	end
end
