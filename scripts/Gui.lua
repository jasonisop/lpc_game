--gui for the game

GUI = {display = {}}

function GUI:new (o)
	o = o or {}
	setmetatable(o, self)
    self.__index = self
    return o
end

--adds GUI to display holder
function GUI:addGui(v)
end

--removes GUI from display holder
function GUI:removeGui(v)
end 