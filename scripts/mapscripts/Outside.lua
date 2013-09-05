--Where is this outside???

require ('scripts/Map')

Outside = Map:new{ mapfile = "Outside.tmx"}

function Outside:load()
	chatWindow:addText("loading map...","System",Color_Crimson )

	Game:removeEnemys()
	self.respawn()  												--re spawns enemies and items if it can
	tilemap = loader.load(self.mapfile)
	local pos = tilemap:drawPosition( tilemap.ol["Object1"] )
	table.insert(tilemap.drawList, pos, drawInLayer) 						-- draws objects in that layer
	layer = tilemap.tl["Ground"]
	Game.mapWidth 	=  tilemap.width * 32	
	Game.mapHeight 	= tilemap.height* 32	
	camera:setBounds(0, 0, Game.mapWidth - Game.width , Game.mapHeight - Game.height )

	chatWindow:addText( #tilemap.properties ,"System",Color_Crimson )
	--for key,value in pairs(tilemap.properties) do 
		--print(key,value) 
	--end	
	
 end

--might add tiles that state that its a door and where they connect too
--this would make map building easy on the coding side also have the enemies created that way as well.
-- SOMETHING IS VERY LAGGY HERE?? 3secs to enter small house? Can we cache it beforehand??
function Outside:checkTile(x,y)
	--To enter the house
	if x == 13 and y == 13 then	
		
		player:setLocation(13,12,"up")
		Game.currentMap = 2
		Game.mapList[Game.currentMap]:load()--loads in the new map
	end
end
