local zombie = game.Workspace["Drooling Zombie"] -- Zombie를 변수에 담기
local humanoid = zombie.Humanoid -- 좀비의 휴모노이드 속성 담기
 

local pointA = game.Workspace.BlueFlagSet -- Blue 깃발 변수에 담기 
local pointB = game.Workspace.RedFlagSet -- Red 깃발 변수에 담기

local nextPoint = pointA -- 다음 이동 지점을 알려주기 위한 변수 설정

local PATROL_DELAY = 2 -- 변수로 지체시간 2초로 설정
 
while wait(PATROL_DELAY) do -- 반복 동작 만들기
    humanoid:MoveTo(nextPoint.PrimaryPart.Position) -- 다음 위치 변수로 이동
    humanoid.MoveToFinished:wait() -- 목적지 도착 후 잠시 기다리기
        
    if nextPoint == pointA then -- 조건문 시작 nextPoint가 PointA와 같으면 아래 코드 실행
        nextPoint = pointB -- nextPoint를 PointB로 변경
    else -- if문 조건이 거짓이면(=nextPoint가 PointB이면
        nextPoint = pointA -- nextPoint를 PointA로 변경
    end
end
