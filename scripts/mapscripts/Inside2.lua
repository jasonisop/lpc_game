require ('scripts/Map')


Inside2 = Map:new{ mapfile = "Inside2.tmx"}

local loader = require("scripts/AdvTiledLoader.Loader")
loader.path = "maps/"
loader.useSpriteBatch = true
function Inside2:load()
	Game:removeEnemys()
	tilemap = loader.load(self.mapfile)

	--function to set player to be drawn on that layer
	local pos = tilemap:drawPosition( tilemap.ol["Object1"] )
	table.insert(tilemap.drawList, pos, test)
	
	layer = tilemap.tl["Ground"]
	
	global.mapWidth =  tilemap.width * 32	
	global.mapHeight = tilemap.height* 32	
	
 end

 function Inside2:checkTile(x,y)
	--To exit the house
	if x == 13 and y == 13 then	
		chatWindow:addText("loading map...","System",Color_Crimson )
		player:setLocation(13,14,"down")
		--player:setLocation(50,50,"down")
		Game.currentMap = 1
				
		Game.mapList[Game.currentMap]:load()--loads in the new map
		Game.mapList[Game.currentMap]:setCameraWindow(13, 14) --
		--Game.mapList[Game.currentMap]:setCameraWindow(50, 50)
	end
end
