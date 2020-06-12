local walkSpeed = script.Parent --WalkSeedUp Part 변수에 담기

function touchTrigger(otherPart) --touchTrigger 함수 정의
	local character = otherPart.Parent --Touch된 Part 변수에 담기 
	local humanoid = character:FindFirstChildOfClass("Humanoid") --Touch된 Part의 Humanoid 속성 변수에 담기
	
	if humanoid and humanoid.WalkSpeed <= 16 then -- Humanoid속성있고 Humanoid WalkSeed 속성이 16보다 작거나 같으면 아래 실행
		humanoid.WalkSpeed = 32 --WalkSeed를 32로 변경
		wait(10) --10초 기다림
		humanoid.WalkSpeed = 16 --WalkSeed를 16으로 변경
	end
end

walkSpeed.Touched:Connect(touchTrigger) --WalkSpeedUp Part에 Touch Event가 생기면 touchTrigger 함수 실행
