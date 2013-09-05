--Splash.png

SplashScreen = GUI:new()

function SplashScreen:setup()
	--leaving this as Games for now
	splashImage = love.graphics.newImage("images/".. "Splash.png")
end

function SplashScreen:draw()
	--centers the logo --p>> Now centered vertically; hardcode this for speed?
  love.graphics.draw(splashImage, 200 , 49)
  --[=[
  love.graphics.draw(splashImage, Game.width / 2 - splashImage:getWidth() /2 ,0 )
  love.graphics.print( "Horz Center at " ..tostring(Game.width / 2 - splashImage:getWidth() /2).."\nVertical Center at " ..tostring(Game.height / 2 - splashImage:getHeight() /2 ),0,0)
	--]=] --old splash delete if you want
end