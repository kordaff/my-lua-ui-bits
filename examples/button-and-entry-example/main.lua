require "entry"
require "button"

function love.load()
  font = love.graphics.newFont("Montserrat-Regular.ttf", 36)
  b = Button:new( { x=15, y=250, name=" ", font=font, visible=true } )
  e = Entry:new( { font=font, text="", x=15, y=80, visible=true } )
  e.fn=function() b.name=e.text e.text="" end
end

-- send all text input to the entry widget
function love.textinput(t) e.text=e.text .. t end

-- draw the entry and button widgets everyframe
function love.draw()
  b:draw()
  e:draw()
end

function love.keypressed(key, scancode, isrepeat)
  if key == "escape" then love.event.quit() end
  e:keypressed(key)
end
