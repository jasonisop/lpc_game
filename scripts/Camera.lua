local Camera = {}
Camera._x = 0
Camera._y = 0
Camera.scaleX = 1
Camera.scaleY = 1
Camera.rotation = 0
 
function Camera:set()
  love.graphics.push()
  love.graphics.rotate(-self.rotation)
  love.graphics.scale(1 / self.scaleX, 1 / self.scaleY)
  love.graphics.translate(-self._x, -self._y)
end
 
function Camera:unset()
  love.graphics.pop()
end
 
function Camera:move(dx, dy)
  self._x = self._x + (dx or 0)
  self._y = self._y + (dy or 0)
end
 
function Camera:rotate(dr)
  self.rotation = self.rotation + dr
end
 
function Camera:scale(sx, sy)
  sx = sx or 1
  self.scaleX = self.scaleX * sx
  self.scaleY = self.scaleY * (sy or sx)
end
 
function Camera:setX(value)
  if self._bounds then
    self._x = math.clamp(value, self._bounds.x1, self._bounds.x2)
  else
    self._x = value
  end
end
 
function Camera:setY(value)
  if self._bounds then
    self._y = math.clamp(value, self._bounds.y1, self._bounds.y2)
  else
    self._y = value
  end
end
 
function Camera:setPosition(x, y)
  if x then self:setX(x) end
  if y then self:setY(y) end
end
 
function Camera:setScale(sx, sy)
  self.scaleX = sx or self.scaleX
  self.scaleY = sy or self.scaleY
end
 
function Camera:getBounds()
  return unpack(self._bounds)
end
 
function Camera:setBounds(x1, y1, x2, y2)
  self._bounds = { x1 = x1, y1 = y1, x2 = x2, y2 = y2 }
end
return Camera