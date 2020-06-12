local trapMine = script.Parent -- TrapMine 변수에 담기

function trapTrigger(player) -- trapTrigger 함수 정의
    local character = player.Parent -- player 캐릭터 함수에 담기
    local humanoid = character:FindFirstChild("Humanoid") -- 캐릭터에 Humanoid 속성 찾기
    if humanoid ~= nil then -- 조건문 TrapMine Part에 닿은 물체에 "Humanoid"가 있으면(= Not Nil) 아래 코드 실행
        humanoid.Health = 0 -- Humanoid의 체력 0으로 만들기
    end
end

trapMine.Touched:Connect(trapTrigger) -- TrapMine Part에 Touch Event가 일어나면 trapTrigger 실행
