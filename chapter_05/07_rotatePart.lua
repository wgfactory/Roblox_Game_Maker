local rotatePart = script.Parent -- RotatePart를 변수에 담기

rotatePart.Anchored = true --  RotatePart 위치 고정

while true do --회전 반복문 시작
	rotatePart.CFrame = rotatePart.CFrame * CFrame.fromEulerAnglesXYZ(0.1, 0.1, 0.1) -- Part를 회전 시키기
	wait()
end
