local switch = script.Parent -- Swit Part를 part 변수에 담기
local switchPressed = false -- debounce Control 변수

function FireSwitch(player) -- FireSwitch 함수 정의
    local character = player.Parent -- chracter변수에 player담기
    local humanoid = character:FindFirstChild("Humanoid") -- player가 “Humanoid”인지 판별
        
    if humanoid ~= nil then -- 첫번째 if문 조건
        if not switchPressed then -- 두번째 if문 조건
            switchPressed = true -- switchPressed를 true로 변경
            local fire = Instance.new("Fire") -- fire 변수에 Fire 담기
            local light = Instance.new("PointLight") -- light 변수에 PointLight 담기
            fire.Parent = game.Workspace.FireBowl.Bowl.Fire -- Fire Part에 불 붙이기
            light.Parent = game.Workspace.FireBowl.Bowl -- Bowl Part에 PointLight 붙이기
        end
    end
	
end

switch.Touched:Connect(FireSwitch)
