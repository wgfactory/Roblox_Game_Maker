local colorPart = game.Workspace.ColorPart
local fire = game.Workspace.ColorPart.Fire

local red = Color3.fromRGB(255,0,0)
local green = Color3.fromRGB(0,255,0)
local blue = Color3.fromRGB(0,0,255)

for count = 0, 10, 1 do
    colorPart.Color = red
    fire.Color = red
    fire.Size = 50
    fire.Heat = 50
    wait(1)

    colorPart.Color = green
    fire.Color = green
    fire.Size = 25
    fire.Heat = 25
    wait(1)

    colorPart.Color = blue
    fire.Color = blue
    fire.Size = 5
    fire.Heat = 5
    wait(1)
end

