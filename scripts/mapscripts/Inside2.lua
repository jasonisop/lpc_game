require ('scripts/Map')

Inside2 = Map:new{ mapfile = "Inside2.tmx"}

function Inside2:load()
	chatWindow:addText("loading map...","System",Color_Crimson )
	Game:removeEnemys()
	self.respawn()  
	tilemap = loader.load(self.mapfile)
	local pos = tilemap:drawPosition( tilemap.ol["Object1"] )
	table.insert(tilemap.drawList, pos, drawInLayer) 						-- draws objects in that layer
	layer = tilemap.tl["Ground"]
	Game.mapWidth =  tilemap.width * 32	
	Game.mapHeight = tilemap.height* 32	
	camera:setBounds(0, 0, Game.mapWidth - Game.width , Game.mapHeight - Game.height )
 end

 function Inside2:checkTile(x,y)
	--To exit the house
	if x == 13 and y == 13 then	
		player:setLocation(13,14,"down")
		Game.currentMap = 1
		Game.mapList[Game.currentMap]:load()--loads in the new map
	end
end
