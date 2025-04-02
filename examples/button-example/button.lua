Button = { visible=false, textcolor ={1,1,1,1} } 

function Button:new (o)
  o = o or {}
  self.__index = self
  setmetatable(o, self)
  return o
end

function Button:setvisible (v) self.visible = v end

function Button:setx (v) 
	self.x=v 
	self.newMax=self.font:getWidth(self.name)
	if self.newMax > maxButtonWidth then 
		maxButtonWidth=self.newmax 
	end
end

function Button:sety (v) self.y=v end

function Button:setname (v) self.name = v end

function Button:fn (v)
  if type(v) ~= 'function' then
    error ("expected a function in v")
  end
  self.fn = v
end

function Button:draw ()
  if not self.visible then return end
  love.graphics.setColor(self.textcolor)
  love.graphics.setFont(self.font)
  love.graphics.print(self.name, self.x, self.y)
  xx = self.font:getWidth(self.name)
  yy = self.font:getHeight(self.name)
  love.graphics.rectangle("line", self.x, self.y, xx+4, yy+4)
end

