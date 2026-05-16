local g3d = require "g3d"
local anim8 = require "anim8/anim8"
-- require "ui"
l = love

texture = {}

function texture:load()

    grass = l.graphics.newImage("assets/Grass.png")
    grass:setWrap("repeat", "repeat")

    TestingGround = g3d.newModel("assets/TileFloor.obj", grass, {Mapx, Mapy, Mapz}, {math.rad(90), 0, 0})
    Skybox = g3d.newModel("assets/cube.obj", "assets/Skybox.png", nil, nil, {500, 500, 500})
  
end

function texture:draw()

    TestingGround:draw()
    Skybox:draw()

end
