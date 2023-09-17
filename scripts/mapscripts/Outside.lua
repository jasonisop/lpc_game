--require ('scripts/Map')

local sti = require "scripts/sti"

 sti = sti(Outside.lua)

function Outside:load()
	
	Game.chatWindow:addText("loading map...","System",Color_Crimson )
	
 end



function Outside:update(dt)

end



function Outside:draw()
	
end


--might add tiles that state that its a door and where they connect too
--this would make map building easy on the coding side also have the enemies created that way as well.
function Outside:checkTile(x,y)
	--To enter the house
--	if x == 13 and y == 13 then	
		
--		player:setLocation(13,12,"up")
--		Game.currentMap = 2
		
--		Game.mapList[Game.currentMap]:load()--loads in the new map
--	end
end
