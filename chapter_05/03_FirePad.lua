local firePad = script.Parent --FirePad Part 변수에 담기 
local padPressed = false -- Debounce Control 변수(초기값 : false)

function FireEffect(otherPart) --FireEffect 함수 정의
	local character = otherPart.Parent -- otherPart를 character변수에 담기
	local humanoid = character:FindFirstChild("Humanoid") --otherPart에 "Humanoid" 객체가 있는지 확인

    if humanoid ~= nil then -- humanoid에 값이 있으면 아래 코드 실행
        if not padPressed then -- Debounce Control 변수가 참(=true)이 아니면(거짓이면) 아래코드 실행
            padPressed = true --Debounce Control 변수의 값을 참(=true)로 변경
            
            local fire = Instance.new('Fire') -- Fire Effect를 fire변수에 담기
            fire.Parent = otherPart -- otherPart에 Fire Effect적용
            fire.Heat = 15 -- Fire Effect의 Heat를 15로 변경
            fire.Size = 15 -- Fire Effect의 Size를 15로 변경
        end
    end
end

firePad.Touched:Connect(FireEffect) --FirePad에 Touch Event가 발생하면 FireEffect 함수 실행
