--Splash.png

SplashScreen = GUI:new()

function SplashScreen:setup()
	--leaving this as globals for now
	splashImage = love.graphics.newImage("images/".. "Splash.png")
end

function SplashScreen:draw()
	love.graphics.draw(splashImage, global.width / 2 - splashImage:getWidth() /2 ,0 )
end