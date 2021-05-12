local part = script.Parent -- 블록 파트를 part 변수에 담기
local fire = Instance.new("Fire") -- 불(=Fire) 효과를 fire 변수에 담기
fire.Parent = part -- 불(=Fire) 효과의 부모(Parent)를 블록 파트로 지정
fire.Size = 15 -- 불 효과의 크기(Size) 변경
fire.Heat = 15 -- 불 효과의 히트(Heat) 변경
fire.Color = Color3.fromRGB(0,0,255)  -- 불 효과의 색상 변경(파란색)
