require "entry"

local splash=false
local splashtext=""
local count=0

function love.load()
  love.keyboard.setTextInput( true )
  font = love.graphics.newFont("Montserrat-Regular.ttf", 24)
  e = Entry:new({font=font,text="",x=15,y=30,xpad=10,ypad=10,visible=true,focus=true})
  e.fn=function() 
    splash=true
    splashtext="function e.fn() rcvd: "..e.text
    e.text=""
    count=90
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
    love.graphics.print(splashtext,300,35) -- 35 to match 30+ypad/2 in entry.lua
  end
end

function love.keypressed(key, scancode, isrepeat)
  if key == "escape" then love.event.quit() end
  e:keypressed(key)
end
