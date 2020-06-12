local part = script.Parent -- Block Part를 part 변수에 담기
local fire = Instance.new("Fire") -- Fire Class를 fire 변수에 담기
fire.Parent = part -- Fire Class를 Block Part에 Child로 지정 하여 구현

fire.Size = 15 -- Fire Instance의 Size 속성 변경
fire.Heat = 15 -- Fire Instance의 Heat 속성 변경
fire.Color = Color3.fromRGB(0,0,255) -- Fire Instance의 색상 변경(파란색)
