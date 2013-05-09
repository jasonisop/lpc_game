--datasaving and loading
--saving will be based char name files will be named  playerName_filename.txt

jupiter = require ('scripts/jupiter')
Database = {}

function Database:new (o)
	o = o or {}
	setmetatable(o, self)
    self.__index = self
	return o
end


--function will list of all saved games
function Database:listGames()
	--gamelist holds all player names
	gamelist = jupiter.load("gameList.txt")
end

function Database:saveGame()
--save the player data 
	playerData = {_fileName = player.name .."_PlayerData.txt", player}
	success = jupiter.save(playerData)

--save the game data
	gameData = {_fileName = player.name .."_GameData.txt", Game}
	success = jupiter.save(gameData)
	
--save npc data
	--not sure if im going to be saving this or just letting it reset may just  save "boss" npc's

--gameData = {_fileName = "gameSave.txt", Game}
--success = jupiter.save(gameData)
end

function Database:loadGame()
--Nested tables are stored in a logical format similar to that of lua syntax: table.index.subIndex.nIndex=value

	GameTemp = jupiter.load(player.name .."_GameData.txt")
	Game.currentMap = GameTemp[1].currentMap
	
end




