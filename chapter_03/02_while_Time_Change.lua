local timeControl = game.Lighting
local timeVal = 12

while true do

	timeControl.ClockTime = timeVal
	print(timeVal)
	wait(2)
	timeVal = timeVal + 1
	
	if timeVal == 25 then
		timeVal = 0
	end
end
