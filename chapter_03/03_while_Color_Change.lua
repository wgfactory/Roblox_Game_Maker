local colorBlock = game.Workspace.ColorPart2

local red = Color3.fromRGB(255, 0, 0)
local green = Color3.fromRGB(0, 255, 0)
local blue = Color3.fromRGB(0, 0, 255)

while true do
    colorBlock.Color = red
    wait(1)
    colorBlock.Color = green
    wait(1)
    colorBlock.Color = blue
    wait(1)
end
