-- Poropotroco
-- by Vico

-- BIBLIOTECAS --
-- G3D
local g3d = require "libraries/g3d"
-- JSON
local json = require "libraries/json"

-- Modelo de Cubo
local cube_verts = {
	-- top
	{0,1,1, 0,0},
	{0,0,1, 0,1},
	{1,1,1, 1,0},
	
	{0,0,1, 0,1},
	{1,0,1, 1,1},
	{1,1,1, 1,0},

	-- bottom
	{0,0,0, 1,0},
	{0,1,0, 1,1},
	{1,1,0, 0,1},

	{1,0,0, 0,0},
	{0,0,0, 1,0},
	{1,1,0, 0,1},

	-- side 1
	{0,0,1, 0,0},
	{0,0,0, 0,1},
	{1,0,1, 1,0},

	{0,0,0, 0,1},
	{1,0,0, 1,1},
	{1,0,1, 1,0},

	-- side 2
	{0,1,0, 1,1},
	{0,1,1, 1,0},
	{1,1,1, 0,0},

	{1,1,0, 0,1},
	{0,1,0, 1,1},
	{1,1,1, 0,0},

	-- side 3
	{0,0,0, 1,1},
	{0,0,1, 1,0},
	{0,1,1, 0,0},

	{0,1,0, 0,1},
	{0,0,0, 1,1},
	{0,1,1, 0,0},

	-- side 4
	{1,0,1, 0,0},
	{1,0,0, 0,1},
	{1,1,1, 1,0},

	{1,0,0, 0,1},
	{1,1,0, 1,1},
	{1,1,1, 1,0},
};

-- Modelo 3D
local dirt = g3d.newModel(cube_verts, "assets/textures/blocks/missingno.png", {0,0,0});
local dirt2 = g3d.newModel(cube_verts, "assets/textures/blocks/missingno.png", {1,0,0});

local timer = 0;

-- debug
local canvas = love.graphics.newCanvas(love.graphics.getDimensions());
function love.draw()
	love.graphics.setCanvas({canvas,depth=true});
	love.graphics.clear()
    love.graphics.print("Hello World", 400, 300)
	dirt:draw();
	dirt2:draw();
	love.graphics.setCanvas();
	love.graphics.draw(canvas);
end

function love.update(dt)
	timer = timer + dt;
	g3d.camera.firstPersonMovement(dt);
    if love.keyboard.isDown "escape" then
        love.event.push "quit";
    end
end

function love.mousemoved(x,y, dx,dy)
    g3d.camera.firstPersonLook(dx,dy);
end