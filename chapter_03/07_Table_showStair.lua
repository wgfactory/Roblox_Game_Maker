local switchStair = script.Parent

local onColor = Color3.fromRGB(0, 255, 255)
local offColor = Color3.fromRGB(255, 255, 0)
local stairColor = Color3.fromRGB(0, 0, 255)

switchStair.Color = offColor

local stair_1 = game.Workspace.Stair.Stair_1
local stair_2 = game.Workspace.Stair.Stair_2
local stair_3 = game.Workspace.Stair.Stair_3
local stair_4 = game.Workspace.Stair.Stair_4

local stairArray = {stair_1, stair_2, stair_3, stair_4}

local function showStair()
    for i=1, #stairArray do
        switchStair.Color = onColor
        stairArray[i].Color = stairColor
        stairArray[i].CanCollide = true
        stairArray[i].Transparency = 0
        wait(2)
    end

    wait(3)

    for i = #stairArray, 1, -1 do
        stairArray[i].CanCollide = false
        stairArray[i].Transparency = 1
        wait(2)
    end
    switchStair.Color = offColor
end

switchStair.Touched:Connect(showStair)
