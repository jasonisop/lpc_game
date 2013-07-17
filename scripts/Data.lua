--[[

	datasaving and loading
	saving will be based char name files will be named  playerName_filename.txt
	things that need saved

	NPC's(stats, location)
	Maps(any placed objects)
	Player(stats, quests, inventory, npc dialog )
	
--]]




require("lsqlite3")

Database = {
				gameList 	= {},	--list of all the full saves  files are named by  "Playername_Date.save"
				questsList 	= {}, 	--list of all the quests file names
				npcList		= {},	--list of all the npc file names
				itemList	= {},	--list of every item in the game all loaded from one file
				db 			= {},	--datbase refrence
			}

function Database:new (o)
	o = o or {}
	setmetatable(o, self)
    self.__index = self
	return o
end

function Database:setup( )
	--
	--love.filesystem.setIdentity("lsqlite3_test")

	--checks and copies over the database if it doesnt exist
	local e = love.filesystem.exists( "data.dat" )

 	if e == false then
		love.filesystem.write("data.dat", love.filesystem.read("db.dat"))
 		chatWindow:addText("database Created" ,"System",base_Color)
 	end
end	

----------------------
	--this is just test code will be moved later on	
--	db = sqlite3.open(love.filesystem.getSaveDirectory() .. '/data.dat')

--	test = {}

--	for a in db:nrows('SELECT * FROM test') do
--	  for i,v in pairs(a) do
--	    table.insert(test, string.format("%s => %s", i, v))
--	  end
--	end

--	db:close()
--	msg = table.concat(test, "\n")
--  chatWindow:addText(msg ,"System",base_Color)

--use database from FLASH RPG GAME.

function Database:listGames()
	--open the datbase
	self.db = sqlite3.open(love.filesystem.getSaveDirectory() .. '/data.dat')

	for a in db:nrows('SELECT game_name FROM games') do
		for i,v in pairs(a) do
	    	table.insert(gameList, string.format("%s => %s", i, v))
		end
	end

	--close the connection to the database
	db:close()
end


function Database:saveGame()
end

function Database:loadGame()
end


function Database:saveQuests( )
end

function Database:loadQuest( )

end

function Database:loadNPC( )

end

function Database:loadItem(  )
end






