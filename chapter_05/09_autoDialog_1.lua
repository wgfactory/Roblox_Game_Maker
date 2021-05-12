local ChatService = game:GetService("Chat") --Chat Service 가져오기
local npc = script.Parent -- NPC 변수에 담기 

local head = npc.Head -- NPC의 Head Part 변수에 담기 
local click = npc.ClickDetector -- ClickerDetector 변수에 담기
 
local dialogue= {} -- dialog 배열 선언 
 
local function speak() -- speak 함수 선언
    local dialogue = "안녕하세요? 반갑습니다. ^^" --dialog 배열에 대사 담기 
    ChatService:Chat(head, dialogue) -- Chat Service를 이용한 NPC 대사 구현(위치 : Head, 대사 : dialog배역)
end
 
click.MouseClick:Connect(speak) -- ClickDetector가 마우스 클릭을 감지하면 speak함수 실행
