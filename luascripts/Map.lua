--Map class


Map = { mapfile = "" }
Map.currentMap = 1

-- local loader = require("AdvTiledLoader.Loader")
-- loader.path = "maps/"

tilemap = {}
layer = {}


--this should render player and enemys
function test()
	
	--for k,enemy in ipairs(Game.enemies) do enemy:draw() end
	for k,enemy in ipairs(enemyHolder.container[Game.currentMap]) do enemy:draw() end

	player:draw()
end

function Map:new (o)
	o = o or {}
	setmetatable(o, self)
    self.__index = self
    return o
end


function Map:setCameraWindow(x, y)
	if x >= love.graphics.getWidth()/2 then
		
		if (x + love.graphics.getWidth()/2) * -1 <= -global.mapWidth  +love.graphics.getWidth() then
			global.tx = -global.mapWidth + love.graphics.getWidth()
		else
			global.tx = (x + love.graphics.getWidth()/2) * -1
		end
	else
	 	global.tx = 0
	end
	
	if y >= love.graphics.getHeight()/2 then
		
		if (y + love.graphics.getHeight()/2) * -1 <= -global.mapHeight  +love.graphics.getHeight() then
			global.ty = -global.mapHeight + love.graphics.getHeight()
		else
			global.ty = (y + love.graphics.getHeight()/2) * -1
		end
	else
	 	global.ty = 0
	end
end

function Map:checkTile(x,y)

end

function Map:update(dt)
	
	--for k,enemy in ipairs(Game.enemies) do enemy:update(dt) end
	if(enemyHolder.container[Game.currentMap])then
	for k,enemy in ipairs(enemyHolder.container[Game.currentMap]) do enemy:update(dt) end
	end
	
end

function Map:draw()
-- Set sprite batches if they are different than the settings.

	-- Scale and translate the game screen for map drawing
	local ftx, fty = math.floor(global.tx), math.floor(global.ty)
	love.graphics.push()
	love.graphics.translate(ftx, fty)

	-- Limit the draw range 
	-- if global.limitDrawing then 
		-- tilemap:autoDrawRange(ftx, fty, 1, -100) 
	-- else 
	tilemap:autoDrawRange(ftx +2, fty+2, 1, 0) 
	--end
	
	tilemap:draw() 
	
			
	
	-- Reset the scale and translation.
	love.graphics.pop()
end
		  

