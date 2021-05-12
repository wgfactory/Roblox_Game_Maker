local redBall = game.Workspace.SignalLight.RedBall  --redBall 변수에 RedBall 파트 담기
local orangeBall = game.Workspace.SignalLight.OrangeBall  --orangeBall 변수에 OrangeBall 파트 담기
local greenBall = game.Workspace.SignalLight.GreenBall  --greenBall 변수에 GreenBall 파트 담기

local offColor = Color3.fromRGB(0,0,0)  --offColor에 검은색 담기

local redBallOn = Color3.fromRGB(255,0,0)  --redBallOn 변수에 빨간색 담기
local orangeBallOn = Color3.fromRGB(255,170,0)  --orangeBallOn 변수에 주황색 담기
local greenBallOn = Color3.fromRGB(0,255,0)  --greenBallOn 변수에 초록색 담기

while true do  --while문 설정, 조건은 항상 참(true) / 무한히 반복하기
    redBall.Color = redBallOn  -- RedBall 파트 색상을 빨간 색으로 변경
    orangeBall.Color = offColor  --OrangeBall 파트 색상을 검은색으로 변경
    greenBall.Color = offColor  --GreenBall 파트 색상을 검은색으로 변경
    wait(5)                      --5초 쉬기
    
    redBall.Color = offColor  --RedBall 파트 색상을 검은색으로 변경
    orangeBall.Color = orangeBallOn  --OrangeBall 파트 색상을 주황색으로 변경
    wait(2)                    --2초 쉬기

    orangeBall.Color = offColor  --OrangeBall 파트 색상을 검은색으로 변경
    greenBall.Color = greenBallOn  --GreenBall 파트 색상을 초록색으로 변경
    wait(5)                        --5초 쉬기

end
