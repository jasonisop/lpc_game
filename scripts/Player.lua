
local Mob = require('scripts/Mob')



local Player = Mob:new{name = 'Player'} 	--This way it overides the generic mob class name along with any others that you want changed
--local Player = Mob:new()					--This way the players name will keep mob class generic name



--functions that are specific to the Player class




return Player