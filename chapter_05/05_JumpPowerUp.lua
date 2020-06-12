local jumpPowerUP = script.Parent -- JumpPowerUp Part 변수에 담기

function jumpTrigger(player) -- jumpTrigger 함수 정의
local character = player.Parent -- player 변수에 담기
local humanoid = character:FindFirstChildOfClass("Humanoid") -- player에 Humanoid 속성 humanoid변수에 담기
	
if humanoid and humanoid.JumpPower <=50 then -- humanoid가 있고 humanoid의 JumpPower가 50보다 작거나 같으면
    humanoid.JumpPower = 500 -- JumpPower 500으로 변경
    wait(5) -- 5초 기다리기
    humanoid.JumpPower = 50 -- JumpPower 초기값(=50)으로 변경
    end
end

jumpPowerUP.Touched:Connect(jumpTrigger) -- JumpPowerUp Part에 캐릭터가 닿으면 jumpTrigger 함수 실행
