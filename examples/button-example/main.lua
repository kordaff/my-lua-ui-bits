require "entry"   require "button"
function love.load()
  font = love.graphics.newFont("Montserrat-Regular.ttf", 36)
  b2 = Button:new( {x=15,y=250,name="---",font=font,visible=true } )
  e = Entry:new({font=font,text="",x=15,y=80,xpad=10,ypad=10,visible=true,focus=true})
  e.fn=function() b2.name=e.text e.text="" end
end
function love.textinput(t) e.text=e.text .. t end
function love.draw() b2:draw() e:draw() end
function love.keypressed(key, scancode, isrepeat)
  if key == "escape" then love.event.quit() end
  e:keypressed(key)
end
