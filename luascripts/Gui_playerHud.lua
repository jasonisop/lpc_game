require('luascripts/Gui')



PlayerHud = GUI:new()


function PlayerHud:setup()
	--leaving this as globals for now
	heartImage = love.graphics.newImage("images/".. "heart_full_16x16.png")
	halfHeartImage = love.graphics.newImage("images/".. "heart_half_16x16.png")
	emptyHeartImage = love.graphics.newImage("images/".. "heart_empty_16x16.png")
	
	waterImage = love.graphics.newImage("images/".. "bottleFull.png")
	halfWaterImage = love.graphics.newImage("images/".. "bottleHalf.png")
	emptyWaterImage = love.graphics.newImage("images/".. "bottleEmpty.png")
	
	heartHolder = {}
	waterHolder = {}
	
	--temp testing
	potheal = HealthPotion:new()
end

function PlayerHud:draw()
	for i,v in ipairs(heartHolder) do  	
			 love.graphics.draw(heartHolder[i], i * 20 ,10 )
	end
	
		for i,v in ipairs(waterHolder) do  	
			 love.graphics.draw(waterHolder[i], i * 20 ,30 )
	end
	 love.graphics.print("Current FPS: "..tostring(love.timer.getFPS( )), 150, 10)
	 
	 
end

function PlayerHud:update(dt)
for i,v in ipairs(heartHolder ) do  	
			heartHolder[i]=nil
		--	table.remove(heartHolder,i)
	end
	if global.player_Health == 10 then
	table.insert(heartHolder ,heartImage)
	table.insert(heartHolder ,heartImage)
	table.insert(heartHolder ,heartImage)
	table.insert(heartHolder ,heartImage)
	table.insert(heartHolder ,heartImage)	
	end
	
	if global.player_Health == 9 then
	table.insert(heartHolder,heartImage)
	table.insert(heartHolder,heartImage)
	table.insert(heartHolder ,heartImage)
	table.insert(heartHolder ,heartImage)
	table.insert(heartHolder ,halfHeartImage)	
	end
	
	if global.player_Health == 8 then
	table.insert(heartHolder ,heartImage)
	table.insert(heartHolder ,heartImage)
	table.insert(heartHolder ,heartImage)
	table.insert(heartHolder ,heartImage)
	table.insert(heartHolder ,emptyHeartImage)	
	end
	
	if global.player_Health == 7 then
	table.insert(heartHolder ,heartImage)
	table.insert(heartHolder ,heartImage)
	table.insert(heartHolder ,heartImage)
	table.insert(heartHolder ,halfHeartImage)
	table.insert(heartHolder ,emptyHeartImage)	
	end
	
	if global.player_Health == 6 then
	table.insert(heartHolder ,heartImage)
	table.insert(heartHolder ,heartImage)
	table.insert(heartHolder ,heartImage)
	table.insert(heartHolder ,emptyHeartImage)
	table.insert(heartHolder ,emptyHeartImage)	
	end
	
	if global.player_Health == 5 then
	table.insert(heartHolder ,heartImage)
	table.insert(heartHolder ,heartImage)
	table.insert(heartHolder ,halfHeartImage)
	table.insert(heartHolder ,emptyHeartImage)
	table.insert(heartHolder ,emptyHeartImage)	
	end

	if global.player_Health == 4 then
	table.insert(heartHolder ,heartImage)
	table.insert(heartHolder ,heartImage)
	table.insert(heartHolder ,emptyHeartImage)
	table.insert(heartHolder ,emptyHeartImage)
	table.insert(heartHolder ,emptyHeartImage)	
	end
		
	if global.player_Health == 3 then
	table.insert(heartHolder ,heartImage)
	table.insert(heartHolder ,halfHeartImage)
	table.insert(heartHolder ,emptyHeartImage)
	table.insert(heartHolder ,emptyHeartImage)
	table.insert(heartHolder ,emptyHeartImage)	
	end

	if global.player_Health == 2 then
	table.insert(heartHolder ,heartImage)
	table.insert(heartHolder ,emptyHeartImage)
	table.insert(heartHolder ,emptyHeartImage)
	table.insert(heartHolder ,emptyHeartImage)
	table.insert(heartHolder ,emptyHeartImage)	
	end

	if global.player_Health == 1 then
	table.insert(heartHolder ,halfHeartImage)
	table.insert(heartHolder ,emptyHeartImage)
	table.insert(heartHolder ,emptyHeartImage)
	table.insert(heartHolder ,emptyHeartImage)
	table.insert(heartHolder ,emptyHeartImage)	
	end

	if global.player_Health <= 0 then
	table.insert(heartHolder ,emptyHeartImage)
	table.insert(heartHolder ,emptyHeartImage)
	table.insert(heartHolder ,emptyHeartImage)
	table.insert(heartHolder ,emptyHeartImage)
	table.insert(heartHolder ,emptyHeartImage)	
	end
---------------------------------	
	for i,v in ipairs(waterHolder ) do  	
			waterHolder[i]=nil
		--	table.remove(heartHolder,i)
	end
	if global.player_Water == 10 then
	table.insert(waterHolder ,waterImage)
	table.insert(waterHolder ,waterImage)
	table.insert(waterHolder ,waterImage)
	table.insert(waterHolder ,waterImage)
	table.insert(waterHolder ,waterImage)	
	end
	
	if global.player_Water == 9 then
	table.insert(waterHolder,waterImage)
	table.insert(waterHolder,waterImage)
	table.insert(waterHolder ,waterImage)
	table.insert(waterHolder ,waterImage)
	table.insert(waterHolder ,halfWaterImage)	
	end
	
	if global.player_Water == 8 then
	table.insert(waterHolder ,waterImage)
	table.insert(waterHolder ,waterImage)
	table.insert(waterHolder ,waterImage)
	table.insert(waterHolder ,waterImage)
	table.insert(waterHolder ,emptyWaterImage)	
	end
	
	if global.player_Water == 7 then
	table.insert(waterHolder ,waterImage)
	table.insert(waterHolder ,waterImage)
	table.insert(waterHolder ,waterImage)
	table.insert(waterHolder ,halfWaterImage)
	table.insert(waterHolder ,emptyWaterImage)	
	end
	
	if global.player_Water == 6 then
	table.insert(waterHolder ,waterImage)
	table.insert(waterHolder ,waterImage)
	table.insert(waterHolder ,waterImage)
	table.insert(waterHolder ,emptyWaterImage)
	table.insert(waterHolder ,emptyWaterImage)	
	end
	
	if global.player_Water == 5 then
	table.insert(waterHolder ,waterImage)
	table.insert(waterHolder ,waterImage)
	table.insert(waterHolder ,halfWaterImage)
	table.insert(waterHolder ,emptyWaterImage)
	table.insert(waterHolder ,emptyWaterImage)	
	end

	if global.player_Water == 4 then
	table.insert(waterHolder ,waterImage)
	table.insert(waterHolder ,waterImage)
	table.insert(waterHolder ,emptyWaterImage)
	table.insert(waterHolder ,emptyWaterImage)
	table.insert(waterHolder ,emptyWaterImage)	
	end
		
	if global.player_Water == 3 then
	table.insert(waterHolder ,waterImage)
	table.insert(waterHolder ,halfWaterImage)
	table.insert(waterHolder ,emptyWaterImage)
	table.insert(waterHolder ,emptyWaterImage)
	table.insert(waterHolder ,emptyWaterImage)	
	end

	if global.player_Water == 2 then
	table.insert(waterHolder ,waterImage)
	table.insert(waterHolder ,emptyWaterImage)
	table.insert(waterHolder ,emptyWaterImage)
	table.insert(waterHolder ,emptyWaterImage)
	table.insert(waterHolder ,emptyWaterImage)	
	end

	if global.player_Water == 1 then
	table.insert(waterHolder ,halfWaterImage)
	table.insert(waterHolder ,emptyWaterImage)
	table.insert(waterHolder ,emptyWaterImage)
	table.insert(waterHolder ,emptyWaterImage)
	table.insert(waterHolder ,emptyWaterImage)	
	end

	if global.player_Water <= 0 then
	table.insert(waterHolder ,emptyWaterImage)
	table.insert(waterHolder ,emptyWaterImage)
	table.insert(waterHolder ,emptyWaterImage)
	table.insert(waterHolder ,emptyWaterImage)
	table.insert(waterHolder ,emptyWaterImage)	
	end
	

end
