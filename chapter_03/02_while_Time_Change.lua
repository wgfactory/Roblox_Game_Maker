local timeControl = game.Lighting  -- timeControl변수에 조명(Lighting) 속성 담기
local timeVal = 12  -- timeVal변수에 12 담기

while true do  -- while문 설정 조건을 true로 고정(무한히 반복)
    timeControl.ClockTime = timeVal  -- 조명 속성의 현재 시간의 값을 timeVal 값으로 입력 하기 
    print(timeVal)  -- timeVal 값 출력
    wait(2)          -- 2초 쉬기
    timeVal = timeVal + 1  -- timeVal에 1을 더한 후 timeVal 변수에 저장

    if timeVal == 25 then -- if문 설정, timeVal 값이 25와 같으면 참
        timeVal = 0  -- timeVal 변수에 0을 저장
    end

end
