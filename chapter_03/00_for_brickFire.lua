local fire = game.Workspace.ColorPart.Fire -- fire 변수에 ColorPar의 불 효과 담기

for count = 0, 10, 1 do -- for문 설정, count변수가 0부터 10까지 1씩 증가
    fire.Size = 30 -- 불 효과의 크기를 최대 크기(30)로 변경
    fire.Heat = 25 -- 불 효과의 히트를 최대 크기(25)로 변경
    wait(2)        -- 2초 쉬기
    fire.Size = 5 -- 불 효과의 크기를 5로 변경
    fire.Heat = 5 -- 불 효과의 히트를 5로 변경
    wait(2)        -- 2초 쉬기
end
