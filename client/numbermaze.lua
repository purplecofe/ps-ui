local open = false
local p = nil

RegisterNUICallback('maze-callback', function(data, cb)
	SetNuiFocus(false, false)
    p:resolve(data.success)
    p = nil
    open = false
    cb('ok')
end)

local function Maze(callback, speed)
    if not open then
        p = promise.new()
        open = true
        SendNUIMessage({
            action = "maze-start",
            speed = speed,
        })
        SetNuiFocus(true, true)
        callback = Citizen.Await(p)
    end
end

exports("Maze", Maze)