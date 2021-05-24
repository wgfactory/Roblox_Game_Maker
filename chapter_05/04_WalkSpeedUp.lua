local walkSpeed = script.Parent  --WalkSeedUp 파트 변수에 담기

function touchTrigger(otherPart)  --touchTrigger 함수 정의
    local character = otherPart.Parent  --WalkSpeedUp파트에 닿은 물체를 변수에 담기 
    local humanoid = character:FindFirstChildOfClass("Humanoid")  --WalkSpeedUp 파트에 닿은 물체의 속성중  Humanoid 속성을 찾아서 변수에 담기
    if humanoid and humanoid.WalkSpeed <= 16 then  -- Humanoid속성있고 Humanoid WalkSeed 속성이 16보다 작거나 같으면 아래 실행
        humanoid.WalkSpeed = 32 --WalkSpeed를 32로 변경
        wait(10) --10초 기다림
        humanoid.WalkSpeed = 16 --WalkSpeed를 16으로 변경
    end
end

walkSpeed.Touched:Connect(touchTrigger) --WalkSpeedUp 파트에 캐릭터가 닿으면 touchTrigger 함수 실행
