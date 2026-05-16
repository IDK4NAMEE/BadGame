local g3d = require "g3d"
local anim8 = require "anim8/anim8"
l = love

ui = {}

function ui:load()

    Arms = l.graphics.newImage("assets/handSprites.png")
    Grid = anim8.newGrid(335, 185, Arms:getWidth(), Arms:getHeight())
    
    anims = anim8.newAnimation( Grid('1-3', '1'), 0.3)
    
end

function ui:update(dt)

    anims:update(dt)

end

function ui:draw()

    anims:draw(Arms,)

end
