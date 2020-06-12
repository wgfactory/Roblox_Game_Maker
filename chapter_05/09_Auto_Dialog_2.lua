local ChatService = game:GetService("Chat") --Chat Service 가져오기
local npc = script.Parent -- NPC 변수에 담기 

local head = npc.Head -- NPC의 Head Part 변수에 담기 
local click = npc.ClickDetector -- ClickerDetector 변수에 담기
 
local dialogue = {"안녕하세요? 반갑습니다.^^", "전생에 당신은 전설의 용사였습니다.", "대마왕이 부활했습니다!!", "용사여!! 어서 깨어나세요!!"} -- dialog 배열 선언 
local index = 1 -- index 초기값 1

local function speak() -- speak 함수 선언
    local talk = dialogue[index] --dialog 배열에 대사 담기 
    ChatService:Chat(head, talk) -- Chat Service를 이용한 NPC 대사 구현(위치 : Head, 대사 : dialog배역)
    
    if index == #dialogue then -- index가 dialogue 배열의 크기와 같으면 아래 코드 실행
        index = 1              -- index를 1로 초기화 
    else                       -- 그 이외에 나머지(index가 #dialogue 길이와 같지 않은 경우)
        index = index + 1      -- index를 1 증가
    end
end
 
click.MouseClick:Connect(speak) -- ClickDetector가 마우스 클릭을 감지하면 speak함수 실행
