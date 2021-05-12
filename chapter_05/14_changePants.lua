-- 터치 시 의상을 교체하기
local changePart = script.Parent  -- changePart 변수에 파트 담기

local function replaceClothes(otherPart) -- replaceClothe 함수 정의
    local character = otherPart.Parent  -- character변수에 캐릭터 담기
    if character then  -- character 변수에 값이 있으면 아래 실행
        local shirt = character:FindFirstChildOfClass("Shirt")  -- 셔츠가 있는지 찾아보기
        local pants = character:FindFirstChildOfClass("Pants")  -- 바지가 있는지 찾아보기

        if not shirt then -- 없으면 바지와 셔츠 새로 만들기
            shirt = Instance.new("Shirt", character)
        end 

        if not pants then 
            pants = Instance.new("Pants", character)
        end
-- 샘플로 제공된 템플릿 이미지를 업로드하고 id를 복사해서 테스트
-- 아래 코드는 수정 셔츠와 바지 선택
        pants.PantsTemplate = "[바지 아이디]"
        end
end

changePart.Touched:Connect(replaceClothes) -- 터치되면 replaceClothes 함수 호출
