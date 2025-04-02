Entry = { visible=false,textcolor={1,1,1,1},focus=false,font="",tmptext="type in here",text=" " } 

function Entry:new (o)
  o = o or {}
  self.__index = self
  setmetatable(o, self)
  return o
end

function Entry:fn (v)
  print ("rcvd: ",v)
  self.text=""
end

function Entry:draw ()
  if not self.visible then
    return   
  end
  local drawtext=""
  if self.text == "" then
    drawtext=self.tmptext -- nothing entered, so draw self.tmptext
  else
    drawtext=self.text
  end
  rectWidth=self.font:getWidth(drawtext)+self.xpad
  rectHeight=self.font:getHeight(drawtext)+self.ypad
  love.graphics.setColor(0,0,1,1)
  love.graphics.rectangle("fill",self.x,self.y,rectWidth,rectHeight)

  love.graphics.setFont(self.font)
  love.graphics.setColor(self.textcolor)
  love.graphics.print(drawtext, self.x+self.xpad/2 , self.y+self.ypad/2 )
end

function Entry:keypressed(key)
  if key == "space" then 
    self.text = self.text .. " "
    return
  end
  if key == "backspace" then
    e:backspace()
    return
  end
  if key == "return" then
    self:fn(self.text)
    return
  end
end

function Entry:backspace()
  self.text=self.text:sub(1,-2)
end

