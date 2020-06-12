local redBall = game.Workspace.SignalLight.RedBall
local orangeBall = game.Workspace.SignalLight.OrangeBall
local greenBall = game.Workspace.SignalLight.GreenBall

local offColor = Color3.fromRGB(0,0,0)

local redBallOn = Color3.fromRGB(255, 0, 0)
local orangeBallOn = Color3.fromRGB(255, 170, 0)
local greenBallOn = Color3.fromRGB(0, 255, 0)

while true do
    redBall.Color = redBallOn
    orangeBall.Color = offColor
    greenBall.Color = offColor
    wait(5)
	
    redBall.Color = offColor
    orangeBall.Color = orangeBallOn
    wait(2)

    orangeBall.Color = offColor
    greenBall.Color = greenBallOn
    wait(5)
end
