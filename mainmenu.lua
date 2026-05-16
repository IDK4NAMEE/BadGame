local g3d = require "g3d"
l = love

mainmenu = {}

function mainmenu:load()
end

function mainmenu:update()

    win = {
        x = l.graphics.getWidth(),
        y = l.graphics.getHeight()
    }

end

function mainmenu:draw()

    l.graphics.setColor(0.1, 0.1, 0.1)
    l.graphics.rectangle("fill", 0, 0, win.x, win.y)

    l.graphics.setColor(1, 1, 1)
end
    
return mainmenu
