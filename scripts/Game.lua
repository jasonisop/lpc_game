local Game = 	{	Mobs	= {}, --table holds all mobil objects(enemies, pc's, ect...)
					Map 	= require ('scripts/Map'),
				}	


	local player = require ('scripts/Player')
	
	function Game:addMob( mob )
		table.insert( self.Mobs, mob )
	end
	
	function Game:removeMob(mobId)
		--find the mob with this id and remove it from the table
	end

	function Game:removeAllMobs( )
		-- remove all mobs in the table, use for when reseting the game
	end

	function  Game:load()
		Game:addMob(player)
	end

	function Game:update(dt)
		--will need tests for what game state it is in
		for k,mob in ipairs( Game.Mobs ) do mob:update(dt) end
	end

	function Game:mousepressed(x,y, button)
	end
	
	function Game:mousereleased(x, y, button)
	end

	function Game:keypressed(k)
		
	end

	function Game:keyreleased(k)
	end

	function Game:draw()
		for k,mob in ipairs( Game.Mobs ) do mob:draw() end
	end

return Game