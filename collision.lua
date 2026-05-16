local g3d = require "g3d"
l = love
require "texture"

collision = {}

function collision:load()

    grounded = true

    Mapx = 0
    Mapy = 0
    Mapz = -2

    Hbox = {
        x = 0,
        y = 0,
        z = 0,
        r = 5,
        yvel = 0,
        xvel = 0,
        zvel = 0,
        H = 2
    }
       
    Grav = 1
    
end

function collision:update(dt)
    
    
    
    if grounded then
        g3d.camera.firstPersonMovement(dt)
        g3d.camera.position[3] = g3d.camera.position[3]
    else
        g3d.camera.position[3] = g3d.camera.position[3] - Grav * dt
        g3d.camera.updateViewMatrix()
        g3d.camera.lookInDirection()
    end

    distX = Mapx - g3d.camera.position[2]
    distY = Mapy - g3d.camera.position[1]

    --[[if distX >= 0 then
        if distX > Mapx then 
            grounded = false
        end
    else
    
    end]]
     
end

return collision
