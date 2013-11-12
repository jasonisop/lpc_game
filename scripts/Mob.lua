local Mob	= 	{	name = "Mobile Object",
					tileX = 0,
					tileY = 0,
				}

function Mob:new( o)
		o = o or {}
		setmetatable(o, self)
	    self.__index = self
	    return o
	end

function Mob:update(dt)
end


function Mob:draw()
	love.graphics.print( self.name, 10, 10 )
end


return Mob