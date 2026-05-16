local g3d = require "g3d"
require "collision"
l = love

info = {}

function info:load()
  
  xpos = 0
  ypos = 0
  zpos = 0
  xcam = 0
  ycam = 0
  zcam = 0
  
end

function info:update(dt)

  xpos = g3d.camera.position[1]
  ypos = g3d.camera.position[2]
  zpos = g3d.camera.position[3]
  xcam = g3d.camera.target[1]
  ycam = g3d.camera.target[2]
  zcam = g3d.camera.target[3]
  
end

function info:draw()

    l.graphics.print("x: " .. xpos, 10, 10)
    l.graphics.print("y: " .. ypos, 10, 30)
    l.graphics.print("z: " .. zpos, 10, 50)
    l.graphics.print("xa: " .. xcam, 10, 70)
    l.graphics.print("ya: " .. ycam, 10, 90)
    l.graphics.print("za: " .. zcam, 10, 110)
    l.graphics.print("distX: " .. distX, 10, 130)
    l.graphics.print("distY: " .. distY, 10, 150)
    l.graphics.print("fdist: " .. fdist, 10, 170)

end
