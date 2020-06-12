local timeControl = game.Lighting
local timeVal = 12

local brick = game.Workspace.ShiningBrick

while true do
    timeControl.ClockTime = timeVal
    print(timeVal)
    wait(2)

    if timeVal == 25 then
        timeVal = 0
    end

    if timeVal > 18 then
        brick.Material = "Neon"
    elseif timeVal < 7 then
        brick.Material = "Neon"
    else
        brick.Material = "Plastic"
    end
        
    timeVal = timeVal + 1
end
