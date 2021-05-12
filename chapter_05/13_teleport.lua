local teleportPart = script.Parent --Teleport Part 변수에 담기

-- teleport 함수 : 플레이어 캐릭터를 순간이동하는 함수
local function teleport(otherPart)
	
    local character = otherPart.Parent -- 플레이어 캐릭터 변수에 담기
    local humanoid = character:FindFirstChildOfClass("Humanoid") -- 플레이어 케릭터에서 Humanoid Class 담기
        
    local destination = game.Workspace.Destination -- Desticatin Part 변수에 담기
    destination.Anchored = true -- Destination Part 위치 고정
    destination.CanCollide = false -- Destination Part CanCollide 기능 끄기
    destination.Transparency = 1 -- Destination Part 안 보이게 투명화 하기
        
    if humanoid  then -- 플레이어 캐릭터에 Humanoid Class가 있으면 아래 코드 실행
        humanoid.RootPart.CFrame = CFrame.new(destination.Position) -- 플에이어 캐릭터의 좌표를 Destination 좌표로 바꾸기
    end
end

teleportPart.Touched:Connect(teleport) -- Teleport Part에 플레이어 캐릭터가 닿으면 teleport 함수 실행
