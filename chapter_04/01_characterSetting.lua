local playerID = script.Parent
local hum = playerID:FindFirstChildWhichIsA("Humanoid")

function lavaDamage(character)
    local playerID = script.Parent
    local hum = playerID:FindFirstChildWhichIsA("Humanoid")
    if hum.FloorMaterial ~= nil then
            local condition = true
            while condition do
                if hum.FloorMaterial.Name == "CrackedLava" then
                    hum.Health =  hum.Health - 1
                    wait(1)
                else
                    condition = false
                end
            end
        end
    end

function springHeal(character)
    local playerID = script.Parent
    local hum = playerID:FindFirstChildWhichIsA("Humanoid")
    hum.Health = hum.Health + 1
end


hum.Running:Connect(lavaDamage)

hum.Swimming:Connect(springHeal)
