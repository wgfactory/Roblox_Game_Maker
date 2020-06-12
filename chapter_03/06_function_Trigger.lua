local trigger = script.Parent
local bridge = game.Workspace.Bridge

local onColor = Color3.fromRGB(0, 255, 0)
local offColor = Color3.fromRGB(255, 0, 0)

trigger.Color = offColor

local function showBridge()
    trigger.Color = onColor
    bridge.Transparency = 0.8
    bridge.CanCollide = true

    wait(5)

    trigger.Color = offColor
    bridge.Transparency = 1
    bridge.CanCollide = false
end

trigger.Touched:Connect(showBridge)
