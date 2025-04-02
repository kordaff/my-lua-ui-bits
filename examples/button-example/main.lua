require "button"

function love.load()
  font = love.graphics.newFont("Montserrat-Regular.ttf", 36)
  b2 = Button:new( {x=250,y=50,name="this is a button",font=font,visible=true } )
end

function love.draw() 
  b2:draw() 
end

function love.keypressed(key, scancode, isrepeat)
  if key == "escape" then love.event.quit() end
end
