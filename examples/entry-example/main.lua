require "entry"

local splash=false
local splashtext=""
local count=0

function love.load()
  font = love.graphics.newFont("Montserrat-Regular.ttf", 36)
  e = Entry:new({font=font,text="",x=15,y=80,xpad=10,ypad=10,visible=true,focus=true})
  e.fn=function() 
    splash=true
    splashtext=e.text
    e.text=""
    count=30
  end
end

function love.textinput(t) e.text=e.text .. t end

function love.update(dt)
  count=count - 1
  if count<0 then splash=false end
end

function love.draw()
  e:draw()
  if splash then
    love.graphics.print(splashtext,300,300)
  end
end

function love.keypressed(key, scancode, isrepeat)
  if key == "escape" then love.event.quit() end
  e:keypressed(key)
end
