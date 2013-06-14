require ('scripts/Map')

Outside = Map:new{ mapfile = "Outside.tmx"}

local loader = require("scripts/AdvTiledLoader.Loader")
loader.path = "maps/"
loader.useSpriteBatch = true

function Outside:load()
--	chatWindow:addText("Testing...","System",Color_Blue )
	tilemap = loader.load(self.mapfile)
	
	--respawns enemies and items if it can
	self.respawn()
	
	--function to set player to be drawn on that layer
	local pos = tilemap:drawPosition( tilemap.ol["Object1"] )
	table.insert(tilemap.drawList, pos, test) -- test is in map.lua this needs re-named
	
	layer = tilemap.tl["Ground"]
	
	global.mapWidth =  tilemap.width * 32	
	global.mapHeight = tilemap.height* 32	
		-- setting up my new camera	might need moved to map load function
	camera:setBounds(0, 0, global.mapWidth - global.width , global.mapHeight - global.height )
	
 end

--might add tiles that state that its a door and where they connect too
--this would make map builiding easy on the coding side also have the enemies created that way as well.
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
