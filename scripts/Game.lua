local Game = {	state = 'splash',
				player = require('scripts/Player'),

		 	}	

	function  Game:load()
		--loop thru Game and load all

	end

	function Game:update(dt)
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
		 love.graphics.print('Hello World! this is the start of Game 2.0', 400, 300)
	end

return Game