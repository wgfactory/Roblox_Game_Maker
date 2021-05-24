local colorBlock = game.Workspace.ColorPart -- colorBlock 변수에 ColorPart 담기

local red = Color3.fromRGB(255 ,0, 0) -- red 변수에 빨간색 담기
local green = Color3.fromRGB(0, 255, 0) -- green 변수에 초록색 담기
local blue = Color3.fromRGB(0, 0, 255) -- blue 변수에 파란색 담기

for count = 0, 10, 1 do -- for문 설정, count변수가 0부터 10까지 1씩 증가
    colorBlock.Color = red -- ColorPart의 색상을 빨간색으로 변경
    wait(1)                 -- 1초 쉬기
    colorBlock.Color = green -- ColorPart의 색상을 초록색으로 변경
    wait(1)                 -- 1초 쉬기
    colorBlock.Color = blue -- ColorPart의 색상을 파란색으로 변경
    wait(1)                 -- 1초 쉬기
end
