local timeControl = game.Lighting  --timeControl변수에 조명(Lighting) 속성 담기
local timeVal = 12 --timeVal변수에 12 담기

local brick = game.Workspace.ShiningBrick  --brick변수에 ShiningBrick 파트 담기

while true do  --while문 설정 조건을 참(true)로 고정, 무한히 반복
    timeControl.ClockTime = timeVal  --현재 시간을 timeVal 값으로 변경
    print(timeVal)  --timeVal에 저장된 값 출력
    wait(2)  --2초 쉬기

    if timeVal == 25 then  --if문 설정 조건 - timeVal이 25와 같으면 참
        timeVal = 0  --조건이 참이면 timeVal의 값을 0으로 변경
    end

    if timeVal > 18 then  --if문 설정 조건1 - timeVal이 18보다 크면 참
        brick.Material = "Neon"  --조건1이 참이면 ShiningPart의 재질(Material)을 네온(Neon)으로 변경
    elseif timeVal < 7 then  --elseif문 설정 조건2- timeVal이 7보다 작으면 참

        brick.Material = "Neon"  --조건2이 참이면 ShiningPart의 재질(Material)을 네온(Neon)으로 변경
    else
        brick.Material = "Plastic"  --조건1과 조건2가 모두 거짓이면 ShiningPart의 재질(Material)을 플라스틱(Plastic)으로 변경
    end
    
timeVal = timeVal + 1  --timeVal의 값에 1을 더한 후 timeVal변수에 저장
end
