local playerID = script.Parent  --playerID 변수에 플레이어 캐릭터 담기
local hum = playerID:FindFirstChildWhichIsA("Humanoid")  --hum 변수에 플레이어의 차일드(child)중 “Humanoid”속성 담기

function lavaDamage(character) --lavaDamage 함수 선언, lavaDamage는 캐릭터가 용암지대를 밟으면 조금씩 피해를 입힘

        if hum.FloorMaterial ~= nil then --if문 선언, 조건은 캐릭터가 지면을 밟고 있으면 참

            local condition = true --condition 변수에 참(=true)값 담기

            while condition do --condition 변수의 값이 참이면 while문 실행
                if hum.FloorMaterial.Name == "CrackedLava" then --if문 선언, 캐릭터가 밟고 있는 지면의 이름이 “Crackedlava’와 같으면 참
                    hum.Health =  hum.Health - 1 --플레이어의 체력에 1씩 피해를 입힘
                    wait(1)  --1초 기다리기
                else  --if문의 조건과 다른 상황일때 아래 코드 실행
                    condition = false  --condition 변수에 거짓(false)입력
                end
            end
        end
end

function springHeal(character) --springHeal 함수 선언, 캐릭터가 샘물에 들어가면 체력이 1씩 회복
    hum.Health = hum.Health + 1  --캐릭터가 샘물에 들어가면 체력이 1씩 회복
end

hum.Running:Connect(lavaDamage)  --캐릭터가 이동(=Running)하면 lavaDamage실행

hum.Swimming:Connect(springHeal)  --캐릭터가 수영(=Swimming)하면 springHeal실행
