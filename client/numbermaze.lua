local open = false

RegisterNUICallback("maze-callback", function(data, cb)
	SetNuiFocus(false, false)
    
    open = false

    cb("ok")
end)

local function Maze(cb, speed)
    local _speed = speed and tonumber(speed) or 10

    if not open then
        Callback = callback
        open = true

        SetNuiFocus(true, true)
        SendNUIMessage({
            action = "maze-start",
            speed = _speed
        })

        local result = Citizen.Await(p)

        cb(result)
    end
end
exports("Maze", Maze)
