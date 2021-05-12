local switchStair = script.Parent  --switchStair변수에 Switch 파트 담기

local onColor = Color3.fromRGB(0,255,255)  --onColor에 청록색 담기
local offColor = Color3.fromRGB(255,255,0) --offColor에 노란색 담기
local stairColor = Color3.fromRGB(0,0,255) --onColor에 파란색 담기

switchStair.Color = offColor  --Switch 파트의 색상을 노란색으로 변경

local stair_1 = game.Workspace.Stair.Stair_1  --stair_1변수에 Stair_1파트 담기
local stair_2 = game.Workspace.Stair.Stair_2  --stair_2변수에 Stair_2파트 담기
local stair_3 = game.Workspace.Stair.Stair_3  --stair_3변수에 Stair_3파트 담기
local stair_4 = game.Workspace.Stair.Stair_4  --stair_4변수에 Stair_4파트 담기

local stairArray = {stair_1, stair_2, stair_3, stair_4}  --stairArray 배열에 Stair_1, Stair_2, Stair_3, Stair_4 파트 담기

local function showStair()  --showStair 함수 만들기
    for i=1, #stairArray do  --for문 설정, 변수 i가 1부터 stairArray 배열의 크기까지 1씩 증가
        switchStair.Color = onColor  --Switch 파트의 색상을 청록색으로 변경
        stairArray[i].Color = stairColor  --stairArray배열의 i번째 파트의 색상을 파란색으로 변경
        stairArray[i].CanCollide = true  --stairArray 배열의 i번째 파트의 충돌 가능(CanCollide) 켜기
        stairArray[i].Transparency = 0  --stairArray 배열의 i번째 파트의 투명도 0으로 변경
        wait(2)  --2초 쉬기
    end

    wait(3)  --3c초 쉬기

    for i = #stairArray, 1, -1 do  --for문 설정, 변수 i가 stairArray 배열의 크기부터 1까지 1씩 감소
        stairArray[i].CanCollide = false  --stairArray 배열의 i번째 파트의 충돌 가능(CanCollide) 끄기
        stairArray[i].Transparency = 1  --stairArray 배열의 i번째 파트의 투명도 1로 변경
        wait(2) --2초 쉬기
    end

    switchStair.Color = offColor  --Switch 파트의 색상을 노란색으로 변경

end

switchStair.Touched:Connect(showStair)  --Switch 파트에 무언가 닿으면(Touched) showStair함수 실행(Connect(showStair))
