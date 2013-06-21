--Sound Class

require('scripts/TEsound')




SoundManager = {MusicPlaylist 	= {},
				SoundFxPlaylists = {},
				BattlePlaylist	= {},
				}	

function SoundManager:new (o)
	o = o or {}
	setmetatable(o, self)
    self.__index = self
    return o
end

--testing function
function SoundManager:TestSound()
	TEsound.playLooping("audio/music/Soliloquy_1.ogg","Music",12,1,1)
end


function SoundManager:playSoundFx(v)
	--get what soundFx to play 
	--get the tag for the  soundFx
	--get the volume for the soundFx
	-- if a function needs called at the end get what function to call
	
	TEsound.play(soundFx,Tag,Volume,Function) 
end

function SoundManager:playMusic(v)
end

function SoundManager:stopAll()
end

function SoundManager:addMusic(v)
end

function SoundManager:addEffect(v)
end

function SoundManager:getMusicPlaylist()
	return self.MusicPlaylist
end

function SoundManager:update(dt)
	
	TEsound.cleanup()
	
end