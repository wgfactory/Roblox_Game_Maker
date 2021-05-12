local trigger = script.Parent  --trigger 변수에 Trigger 파트 담기
local bridge = game.Workspace.Bridge  --bridge변수에 Bridge 파트 담기

local onColor = Color3.fromRGB(0,255,0) --onColor에 초록색 담기
local offColor = Color3.fromRGB(255,0,0)  --offColor에 빨간색 담기

trigger.Color = offColor  --Trigger 파트의 색상을 초록색으로 변경

local function showBridge() --showBridge 함수 만들기
    trigger.Color = onColor  --Trigger 파트의 색상을 초록색으로 변경 
    bridge.CanCollide=true  --Bridge 파트의 충돌 가능 켜기
    bridge.Transparency = 0.8  --Bridge 파트의 투명도를 0.8로 변경
    wait(5)                     --5초 기다리기

    trigger.Color = offColor  --Trigger 파트의 색상을 빨간색으로 변경
    bridge.CanCollide=false  --Bridge 파트의 충돌 가능 끄기
    bridge.Transparency = 1  --Bridge 파트의 투명도를 1로 변경
end

trigger.Touched:Connect(showBridge) --Trigger 파트에 무언가 닿으면(Touched) showBridge 함수 실행(Connect(showBridge))
