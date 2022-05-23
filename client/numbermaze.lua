local open = false

RegisterNUICallback('numbermaze-callback', function(data, cb)
	SetNuiFocus(false, false)
    Callbackk(data.success)
    open = false
    cb('ok')
end)

function Maze(callback, speed)
    if not open then
        Callbackk = callback
        open = true
        SendNUIMessage({
            action = "numbermaze-start",
            speed = speed,
        })
        SetNuiFocus(true, true)
    end
end

exports("Maze", Maze)