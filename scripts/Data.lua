--datasaving and loading
--saving will be based char name files will be named  playerName_filename.txt
--things that need saved
--[[
	NPC's(stats, location)
	Maps(any placed objects)
	Player(stats, quests, inventory, npc dialog )
	
--]]





Database = {	gameList 	= {},	--list of all the full saves  files are named by  "Playername_Date.save"
				
				questsList 	= {}, 	--list of all the quests file names
				npcList		= {},	--list of all the npc file names
				itemList	= {},	--list of every item in the game all loaded from one file

				jupiter 	= require ('scripts/jupiter')

			}

function Database:new (o)
	o = o or {}
	setmetatable(o, self)
    self.__index = self
	return o
end

function Database:listGames()
	self.gameList = self.jupiter.load("gameList.save")
	return self.gameList
end


function Database:saveQuests( o )
end

function Database:loadQuests( )
	self.questsList = self.jupiter.load("questList.save")
end

function Database:loadNPC( )
	self.npcList = self.jupiter.load("npcList.save")
end



--------------------------------------------------------
--unsure of function below this line
--------------------------------------------------------

function Database:saveGame()
--save the player data  should we append time to allow for multi saves
	playerData = {_fileName = player.name .."_PlayerData.txt", player}
	success = self.jupiter.save(playerData)

--save the game data
	gameData = {_fileName = player.name .."_GameData.txt", Game}
	success = self.jupiter.save(gameData)
	
--save npc data
	--not sure if im going to be saving this or just letting it reset may just  save "boss" npc's

--gameData = {_fileName = "gameSave.txt", Game}
--success = jupiter.save(gameData)
end

function Database:loadGame()
--Nested tables are stored in a logical format similar to that of lua syntax: table.index.subIndex.nIndex=value

	GameTemp = self.jupiter.load(player.name .."_GameData.txt")
	Game.currentMap = GameTemp[1].currentMap
	
end




