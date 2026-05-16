local g3d = require "g3d"
require "collision"
require "info"
require "state"
l = love

camera = {}

function camera:load()

    crouch = "hold"
    pstate = "stand"
    cpos = g3d.camera.position[3] - 0.5
    spos = g3d.camera.position[3]
    
    
end

function camera:mouse(x, y, dx, dy)

    if gstate == "g" then
        g3d.camera.firstPersonLook(dx, dy)
    else
    end

end


function camera:update(dt)

    if grounded then

        space = l.keyboard.isDown("space") 
    
        if space then
             
        end
    
        lshift = l.keyboard.isDown("lshift")
    
    
    
        if crouch == "toggle" then
            if lshift and not notdown then
                stand = not stand
        
                if not stand then
                    g3d.camera.position[3] = g3d.camera.position[3] + 0.5
                    pstate = "stand"
                else
                    g3d.camera.position[3] = g3d.camera.position[3] - 0.5
                    pstate = "crouch"
                end
        
                g3d.camera.updateViewMatrix()
                g3d.camera.lookInDirection()
            end
        else
            if lshift then
                g3d.camera.position[3] = cpos
                pstate = "crouch"
            end
            if pstate == "crouch" and not lshift then
                g3d.camera.position[3] = spos
                pstate = "stand"
            end
            
            g3d.camera.updateViewMatrix()
            g3d.camera.lookInDirection()
        end
        notdown = lshift
    end
    
    fdist = nil
    fp = {
        x = nil,
        y = nil,
        z = nil
    }
    
    ra = -1
    
    wirx, wiry, wirz, wird = TestingGround:rayIntersection(0, 0, g3d.camera.position[3], 0, 0, ra)
   
    if wirz then
        fp.x, fp.y, fp.z = wirx, wiry, wirz
        fdist = g3d.camera.position[3] - wirz
    else
        fp.x, fp.y, fp.z = nil, nil, nil
        fdist = nil    
    end

end

return camera
