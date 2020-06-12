-- onPlayerJoin 함수 : 점수 담는 공간을 만드는 함수
local function onPlayerJoin(player) -- 함수정의
    local leaderstats = Instance.new("Folder") -- 새로운 폴더 만들기
    leaderstats.Name = "leaderstats"           -- 폴더 이름 변경 'leaderstsats'
    leaderstats.Parent = player                -- 폴더의 Parent를 player로 지정
        
    --표시할 점수 항목 만들기
    local points = Instance.new("IntValue") -- 정수(Int)타잎의 값 만들기
    points.Name = "Points"                  -- 이름을 'Points'로 변경
    points.Value = 0                        -- Points의 초기 값 지정(=0)
    points.Parent = leaderstats             -- Points의 Parent를 leaderstats 폴더로 지정
     
    local items= Instance.new("IntValue") -- 정수(Int)타잎의 값 만들기
    items.Name = "Items"                  -- 이름을 'Items'로 변경
    items.Value = 0                       -- Items의 초기 값 지정(=0)
    items.Parent = leaderstats            -- Items의 Parent를 leaderstats 폴더로 지정
     
    local spaces = Instance.new("IntValue") -- 정수(Int)타잎의 값 만들기
    spaces.Name = "Spaces"                  -- 이름을 'Spaces'로 변경
    spaces.Value = 0                        -- Spaces의 초기 값 지정(=0)
    spaces.Parent = leaderstats             -- Spaces의 Parent를 leaderstats 폴더로 지정
end
     
game.Players.PlayerAdded:Connect(onPlayerJoin) -- Player가 게임에 들어오면 onPlayerJoin 함수 실행
    
