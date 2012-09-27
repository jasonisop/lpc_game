--datasaving and loading
jupiter = require ('luascripts/jupiter')
Database = {}

function Database:new (o)
	o = o or {}
	setmetatable(o, self)
    self.__index = self
	return o
end


--function will list of all saved games
function Database:listGames()
	gamelist = jupiter.load("gameList.txt")
end

function Database:saveGame()

--gameData = {_fileName = "gameSave.txt", Game}
--success = jupiter.save(gameData)
end

function Database:loadGame()

--GameTemp = jupiter.load("gameSave.txt")
--Game.currentMap = GameTemp[1].currentMap
end




