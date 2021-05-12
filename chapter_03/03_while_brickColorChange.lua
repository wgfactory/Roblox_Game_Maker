local colorBlock = game.Workspace.ColorPart2  -- colorBlock변수에 ColorPart2 담기

local red = Color3.fromRGB(255,0,0)  --red 변수에 빨간색 담기
local green = Color3.fromRGB(0,255,0)  --green 변수에 초록색 담기
local blue = Color3.fromRGB(0,0,255)  --blue 변수에 파란색 담기

while true do  --while문 설정 조건은 항상 참(true)/ 무한히 반복하기
    colorBlock.Color = red  --ColorPart2의 색상을 빨간색으로 변경
    wait(1)                  --1초 쉬기
    colorBlock.Color = green  --ColorPart2의 색상을 초록색으로 변경
    wait(1)                  --1초 쉬기
    colorBlock.Color = blue  --ColorPart2의 색상을 파란색으로 변경
    wait(1)                  --1초 쉬기
end
