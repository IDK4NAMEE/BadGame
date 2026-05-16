local g3d = require "g3d"
local anim8 = require "anim8/anim8"
local bump = require "bump-3dpd"
-- require "ui" 
require "info"
require "texture"
require "camera"
require "collision"
require "state"
require "mainmenu"
l = love

function l.load()
    
    camera:load()
    collision:load()
    texture:load()
    state:load()
    mainmenu:load()
    
end

function l.mousemoved(x, y, dx, dy)
    camera:mouse(x, y, dx, dy)
end

function l.update(dt)
    
    if gstate == "mm" then
        mainmenu:update()    
    elseif gstate == "g" then 
        info:update(dt)
        collision:update(dt)
        camera:update(dt)
    end

end

function l.draw()
    
    if gstate == "mm" then
        mainmenu:draw()
    elseif gstate == "g" then
        info:draw()
        texture:draw()
    end
    
end



function l.keypressed(key)
    if key == "escape" then
        l.event.quit()
    end
    
    if key == "f" then
        fullscreen = not fullscreen
        if fullscreen then
            l.window.setFullscreen(true)
        else
            l.window.setFullscreen(false)
        end
    elseif pstate == "stand" then
        if gstate == "g" then
            if key == "c" then
                if crouch == "toggle" then
                    crouch = "hold"
                elseif crouch == "hold" then
                    crouch = "toggle"
                end
            end
        else
        end
    end
end