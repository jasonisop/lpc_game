require ('scripts/Map')

Outside = Map:new{ mapfile = "Outside.tmx"}

function Outside:load()
	chatWindow:addText("loading map...","System",Color_Crimson )

	Game:removeEnemys()
	self.respawn()  												--respawns enemies and items if it can
	tilemap = loader.load(self.mapfile)
	local pos = tilemap:drawPosition( tilemap.ol["Object1"] )
	table.insert(tilemap.drawList, pos, drawInLayer) 						-- draws objects in that layer
	layer = tilemap.tl["Ground"]
	global.mapWidth =  tilemap.width * 32	
	global.mapHeight = tilemap.height* 32	
	camera:setBounds(0, 0, global.mapWidth - global.width , global.mapHeight - global.height )
 end

--might add tiles that state that its a door and where they connect too
--this would make map builiding easy on the coding side also have the enemies created that way as well.
function Outside:checkTile(x,y)
	--To enter the house
	if x == 13 and y == 13 then	
		
		player:setLocation(13,12,"up")
		Game.currentMap = 2
		
		Game.mapList[Game.currentMap]:load()--loads in the new map
	end
end
