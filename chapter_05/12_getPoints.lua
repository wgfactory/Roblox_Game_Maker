local pointPart = script.Parent -- apple파트를 변수에 담기

local applePoints = 30 -- 획득 점수 변수에 담기

local Players = game:GetService("Players") -- "Player" Service 변수에 담기

-- givePoints 함수 : 점수를 획득하는 함수 
local function givePoints(player)
	
    local playerStats = player:WaitForChild("leaderstats") -- Player의 "leaderstats"폴더를 변수에 담기
    local playerPoints = playerStats:WaitForChild("Points") -- leaderstats의 "Points"를 변수에 담기
    
    playerPoints.Value = playerPoints.Value + applePoints -- 점수 획득
        
    pointPart:Destroy() -- 점수를 획득한 후 아이템 사라지게 하기
        
    local playerCharacter = player.Character -- 플레이어 캐릭터 변수에 담기
    local particle = Instance.new("ParticleEmitter") -- ParticleEmitter Effect 변수에 담기
    particle.Parent = playerCharacter:WaitForChild("Head") -- ParticleEmitter Effect를 플레이어 캐릭터 머리에 적용
    wait(1)                                                -- 1초 기다리기
    particle:Destroy()                                     -- ParticleEmitter Effect 없애기
    
    end
    
    -- partTouch 함수 : 사과와 플레이어의 Touch Event 함수
    local function partTouched(otherPart)
        
    local player = game.Players:GetPlayerFromCharacter(otherPart.Parent) -- 플레이어 변수에 담기
    if player then -- player에 값이 있으면 아래 코드 실행
        givePoints(player) -- givePoint 함수 실행
    end
end
 
pointPart.Touched:Connect(partTouched) -- 사과 아이템에 Touch Event가 있으면 partTouch 함수 실행
